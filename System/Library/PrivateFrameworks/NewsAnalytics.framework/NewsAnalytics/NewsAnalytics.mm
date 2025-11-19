id Assembly.init()()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR___NYAssembly_assemblies;
  sub_217A47BA8();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_217D98100;
  v4 = type metadata accessor for DebugAssembly();
  v5 = swift_allocObject();
  *(v3 + 56) = v4;
  *(v3 + 64) = sub_217A47C88(qword_2811C76F0, type metadata accessor for DebugAssembly);
  *(v3 + 32) = v5;
  v6 = type metadata accessor for FactoryAssembly();
  v7 = swift_allocObject();
  *(v3 + 96) = v6;
  *(v3 + 104) = sub_217A47C88(qword_2811C6818, type metadata accessor for FactoryAssembly);
  *(v3 + 72) = v7;
  v8 = type metadata accessor for HeartbeatAssembly();
  v9 = swift_allocObject();
  *(v3 + 136) = v8;
  *(v3 + 144) = sub_217A47C88(qword_2811C4588, type metadata accessor for HeartbeatAssembly);
  *(v3 + 112) = v9;
  v10 = type metadata accessor for TrackerAssembly();
  v11 = swift_allocObject();
  *(v3 + 176) = v10;
  *(v3 + 184) = sub_217A47C88(&qword_2811C6068, type metadata accessor for TrackerAssembly);
  *(v3 + 152) = v11;
  *&v0[v2] = v3;
  v13.receiver = v0;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, sel_init);
}

void sub_217A47BA8()
{
  if (!qword_2811BC440)
  {
    sub_217A47C00();
    v0 = sub_217D89D0C();
    if (!v1)
    {
      atomic_store(v0, &qword_2811BC440);
    }
  }
}

unint64_t sub_217A47C00()
{
  result = qword_2811BCF78[0];
  if (!qword_2811BCF78[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_2811BCF78);
  }

  return result;
}

uint64_t sub_217A47C88(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_217A47D50()
{
  v0 = sub_217D88AEC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = &v7[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217D88B1C();
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  sub_217D88EAC();
  (*(v1 + 104))(v4, *MEMORY[0x277D6CB30], v0);
  sub_217D88D2C();
  (*(v1 + 8))(v4, v0);
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
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

uint64_t sub_217A47F38()
{
  sub_217D88AFC();
  type metadata accessor for ChannelDataFactory();
  sub_217D88CEC();

  sub_217D88AFC();
  type metadata accessor for ScienceDataFactory();
  sub_217D88CEC();
}

uint64_t sub_217A4803C()
{
  v0 = sub_217D88D5C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217D88AFC();
  sub_217A481CC(0, &qword_2811BF250);
  sub_217D88CFC();

  (*(v1 + 104))(v4, *MEMORY[0x277D6CF00], v0);
  sub_217D88A7C();

  (*(v1 + 8))(v4, v0);
  sub_217D88B0C();
  sub_217D88CDC();
}

uint64_t sub_217A481CC(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_217A4822C(uint64_t a1)
{
  v2 = sub_217D88AEC();
  v3 = *(v2 - 8);
  v55 = v2;
  v56 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v53 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_217D88D5C();
  v58 = *(v50 - 8);
  v6 = *(v58 + 64);
  MEMORY[0x28223BE20](v50);
  v49 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_217D88E3C();
  v9 = *(v8 - 8);
  v10 = v9[8];
  MEMORY[0x28223BE20](v8);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217D88AFC();
  sub_217D88CFC();

  v13 = *MEMORY[0x277D6CF70];
  v14 = v9[13];
  v14(v12, v13, v8);
  sub_217D88A4C();

  v15 = v9[1];
  v15(v12, v8);
  sub_217D88AFC();
  sub_217D88CFC();

  v14(v12, v13, v8);
  sub_217D88A4C();

  v15(v12, v8);
  sub_217D88AFC();
  sub_217D87FEC();
  sub_217D88CEC();

  v16 = v58;
  v18 = v58 + 104;
  v17 = *(v58 + 104);
  v19 = v49;
  v20 = v50;
  v21 = *MEMORY[0x277D6CF10];
  v17(v49);
  sub_217D88A7C();

  v22 = *(v16 + 8);
  v22(v19, v20);
  sub_217D88AFC();
  type metadata accessor for AppSessionObserver();
  sub_217D88CEC();

  sub_217D88A6C();

  v54 = v21;
  v51 = v17;
  (v17)(v19, v21, v20);
  v52 = v18;
  sub_217D88A7C();

  v57 = v22;
  v22(v19, v20);
  v58 = v16 + 8;
  sub_217D88AFC();
  sub_217D8815C();
  sub_217D88CEC();

  (v17)(v19, v21, v20);
  sub_217D88A7C();

  v22(v19, v20);
  sub_217D88B0C();
  type metadata accessor for FlushAnalyticsBatchesStartupTask();
  sub_217D88CEC();

  sub_217D88B1C();
  __swift_project_boxed_opaque_existential_1(v59, v60);
  sub_217D88CCC();
  v47 = *MEMORY[0x277D6CB30];
  v23 = v55;
  v24 = v56;
  v25 = *(v56 + 104);
  v45 = v56 + 104;
  v46 = v25;
  v26 = v53;
  (v25)(v53);
  sub_217D88D2C();
  v27 = *(v24 + 8);
  v56 = v24 + 8;
  v44 = v27;
  v27(v26, v23);
  __swift_destroy_boxed_opaque_existential_1(v59);
  sub_217D88AFC();
  sub_217D88CFC();

  v28 = v54;
  v29 = v51;
  (v51)(v19, v54, v20);
  sub_217D88A7C();

  v57(v19, v20);
  sub_217D88AFC();
  sub_217A481CC(0, qword_2811BD4F8);
  sub_217D88CFC();

  sub_217D88AFC();
  sub_217A481CC(0, &qword_2811C8430);
  sub_217D88CFC();

  sub_217D88AFC();
  sub_217A481CC(0, &qword_2811BEE08);
  sub_217D88CFC();

  sub_217D88AFC();
  sub_217A481CC(0, &unk_2811C8420);
  sub_217D88CFC();

  v29(v19, v28, v20);
  sub_217D88A7C();

  v30 = v57;
  v57(v19, v20);
  sub_217D88AFC();
  sub_217D886DC();
  sub_217D88CFC();

  v31 = v28;
  v32 = v29;
  v29(v19, v31, v20);
  sub_217D88A7C();

  v30(v19, v20);
  sub_217D88AFC();
  type metadata accessor for SessionObserver();
  sub_217D88CEC();

  sub_217D88A6C();

  v33 = *MEMORY[0x277D6CF00];
  v32(v19, v33, v20);
  sub_217D88A7C();

  v30(v19, v20);
  sub_217D88B0C();
  sub_217D883BC();
  sub_217D88CEC();

  sub_217D88A6C();

  v32(v19, v33, v20);
  sub_217D88A7C();

  v30(v19, v20);
  sub_217D88AFC();
  sub_217D8850C();
  sub_217D88CEC();

  v32(v19, v33, v20);
  sub_217D88A7C();

  v34 = v57;
  v57(v19, v20);
  sub_217D88AFC();
  sub_217D8895C();
  sub_217D88CEC();

  v32(v19, v33, v20);
  sub_217D88A7C();

  v34(v19, v20);
  sub_217D88AFC();
  sub_217A481CC(0, &qword_2811BF668);
  sub_217D88CFC();

  sub_217D88B0C();
  sub_217D885DC();
  sub_217D88CEC();

  sub_217D88B0C();
  sub_217D886BC();
  sub_217D88CEC();

  sub_217D88AFC();
  type metadata accessor for PortraitEventProcessor();
  sub_217D88CEC();

  sub_217D88B0C();
  type metadata accessor for ExternalAnalyticsEventProcessor();
  sub_217D88CEC();

  sub_217D88B0C();
  sub_217A481CC(0, &qword_2811C8A40);
  sub_217D88CFC();

  sub_217D88B0C();
  sub_217A481CC(0, qword_2811C8118);
  sub_217D88CFC();

  sub_217D88B0C();
  sub_217D8889C();
  sub_217D88CEC();

  sub_217D88B0C();
  sub_217A49558(0, &qword_2811C8930, &protocolRef_AAEndpointType);
  sub_217D88CEC();

  v48 = a1;
  sub_217D88B0C();
  type metadata accessor for SharedItemEventProcessor();
  sub_217D88CEC();

  sub_217D88B1C();
  __swift_project_boxed_opaque_existential_1(v59, v60);
  sub_217A481CC(0, &qword_2811BCF58);
  v35 = v53;
  v36 = v47;
  v37 = v55;
  v38 = v46;
  v46(v53, v47, v55);
  sub_217D88D3C();
  v39 = v44;
  v44(v35, v37);
  __swift_destroy_boxed_opaque_existential_1(v59);
  sub_217D88B1C();
  v43 = v61;
  __swift_project_boxed_opaque_existential_1(v59, v60);
  sub_217A481CC(0, &unk_2811BCF40);
  v38(v35, v36, v37);
  sub_217D88D3C();
  v39(v35, v37);
  __swift_destroy_boxed_opaque_existential_1(v59);
  sub_217D88AFC();
  sub_217A481CC(0, &unk_2811BDD18);
  sub_217D88CFC();

  sub_217D88B0C();
  sub_217A481CC(0, qword_2811BFDF0);
  sub_217D88CFC();

  sub_217D88B0C();
  sub_217A481CC(0, qword_2811C2F38);
  sub_217D88CFC();

  sub_217D88B0C();
  sub_217A481CC(0, &qword_2811BCF50);
  sub_217D88CFC();

  sub_217D88B0C();
  type metadata accessor for AnalyticsApplicationStateMonitor();
  sub_217D88CEC();

  v40 = v49;
  v41 = v50;
  (v51)(v49, v54, v50);
  sub_217D88A7C();

  return (v57)(v40, v41);
}

uint64_t sub_217A49558(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3 | 1;
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_217A495FC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A481CC(0, &qword_2811BEE08);
  result = sub_217D88ADC();
  if (v9[3])
  {
    v5 = type metadata accessor for RollingTimestampConfigurationProvider();
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    v8 = sub_217A4B320(v9, 15.0);
    a2[3] = v5;
    result = sub_217B7CF60(&qword_2811BD688, type metadata accessor for RollingTimestampConfigurationProvider);
    a2[4] = result;
    *a2 = v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_217A496E4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A49558(0, &unk_2811BCBD0, &protocolRef_FCNewsAppConfigurationManager);
  result = sub_217D88ACC();
  if (result)
  {
    v5 = [result possiblyUnfetchedAppConfiguration];
    swift_unknownObjectRelease();
    v6 = type metadata accessor for TimestampJitterFactory();
    result = swift_allocObject();
    result[2] = v5;
    a2[3] = v6;
    a2[4] = &off_2829BD768;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_217A497C0()
{
  v5 = "(";
  v6 = MEMORY[0x277D83410] + 64;
  v7 = MEMORY[0x277D83428] + 64;
  result = sub_217D8856C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8);
    swift_getTupleTypeLayout2();
    v8 = &v4;
    result = sub_217D87C9C();
    if (v3 <= 0x3F)
    {
      v9 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void sub_217A498C8()
{
  if (!qword_2811BCB70)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_217D89A1C();
    if (!v1)
    {
      atomic_store(v0, &qword_2811BCB70);
    }
  }
}

void sub_217A49940(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_217A4998C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_217A49A14@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = sub_217D883EC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_2811C8B90 != -1)
  {
    swift_once();
  }

  if (sub_217D87E1C())
  {
    if (qword_27CB9DB78 != -1)
    {
      swift_once();
    }

    sub_217CC7194();
    sub_217D87DCC();
    v9 = v17;
    if (qword_27CB9DB80 != -1)
    {
      swift_once();
    }

    sub_217D87DCC();
    v10 = v16[2];
    if (qword_27CB9DB88 != -1)
    {
      swift_once();
    }

    sub_217D87DCC();
    if (v9)
    {
      v11 = v16[1];
      *v8 = v10;
      v8[1] = v11;
      v12 = MEMORY[0x277CEAD48];
    }

    else
    {
      v12 = MEMORY[0x277CEAD50];
    }

    (*(v5 + 104))(v8, *v12, v4);
    return (*(v5 + 32))(a1, v8, v4);
  }

  else
  {
    v13 = v1[2];
    v14 = swift_unknownObjectRetain();

    return sub_217A49EDC(v14, a1);
  }
}

uint64_t sub_217A49CDC()
{
  v0 = sub_217D87EAC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - v6;
  (*(v1 + 104))(&v13 - v6, *MEMORY[0x277D6D098], v0);
  v8 = type metadata accessor for Settings.Analytics.Debugging.Jitter();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  (*(v1 + 16))(v5, v7, v0);
  v11 = sub_217D87E0C();
  result = (*(v1 + 8))(v7, v0);
  qword_2811C8B98 = v11;
  return result;
}

uint64_t type metadata accessor for Settings.Analytics.Debugging.Jitter()
{
  result = qword_2811C8B68;
  if (!qword_2811C8B68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_217A49EDC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_217D883EC();
  v16 = *(v4 - 8);
  v5 = *(v16 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (([a1 respondsToSelector_] & 1) != 0 && !objc_msgSend(a1, sel_isAnalyticsJitterEnabled))
  {
    swift_unknownObjectRelease();
    v13 = *MEMORY[0x277CEAD50];
    v14 = *(v16 + 104);

    return v14(a2, v13, v4);
  }

  else
  {
    if ([a1 respondsToSelector_])
    {
      [a1 analyticsJitterLowerBound];
      v9 = v8;
    }

    else
    {
      v9 = 0xC082C00000000000;
    }

    if ([a1 respondsToSelector_])
    {
      [a1 analyticsJitterUpperBound];
      v11 = v10;
    }

    else
    {
      v11 = 0x4082C00000000000;
    }

    swift_unknownObjectRelease();
    *v7 = v9;
    v7[1] = v11;
    (*(v16 + 104))(v7, *MEMORY[0x277CEAD48], v4);
    return (*(v16 + 32))(a2, v7, v4);
  }
}

void sub_217A4A0E0()
{
  if (!qword_2811C8458)
  {
    sub_217D8856C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2811C8458);
    }
  }
}

uint64_t sub_217A4A14C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A49558(0, &unk_2811BCBD0, &protocolRef_FCNewsAppConfigurationManager);
  result = sub_217D88ACC();
  if (result)
  {
    v5 = result;
    v6 = objc_allocWithZone(type metadata accessor for PrivacyValidationProvider());
    v7 = sub_217A4A234(v5);
    result = sub_217B7CF60(&qword_2811BF220, type metadata accessor for PrivacyValidationProvider);
    *a2 = v7;
    a2[1] = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_217A4A234(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_217D8844C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v24[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v12 = &v24[-v11];
  *&v2[OBJC_IVAR____TtC13NewsAnalytics25PrivacyValidationProvider_appConfigurationManager] = a1;
  v13 = [swift_unknownObjectRetain() possiblyUnfetchedAppConfiguration];
  sub_217A4A520(v13, v12);
  v14 = OBJC_IVAR____TtC13NewsAnalytics25PrivacyValidationProvider__privacyValidation;
  swift_beginAccess();
  (*(v6 + 16))(v10, v12, v5);
  sub_217A4B178(0, &qword_2811BCF38, MEMORY[0x277CEAD78], MEMORY[0x277D6CF18]);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = sub_217D88D7C();
  (*(v6 + 8))(v12, v5);
  *&v2[v14] = v18;
  swift_endAccess();
  v26.receiver = v2;
  v26.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v26, sel_init);
  v25 = v19;
  sub_217A4B1DC();
  v20 = v19;
  sub_217D88E2C();
  *(swift_allocObject() + 16) = v20;
  v21 = v20;
  v22 = sub_217D88D6C();
  sub_217D88DAC();

  swift_unknownObjectRelease();

  return v21;
}

uint64_t sub_217A4A4E8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_217A4A520@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_217D8847C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217D88A9C();
  if (sub_217D88A8C())
  {
    if (([a1 respondsToSelector_] & 1) == 0)
    {
      goto LABEL_13;
    }

    v9 = [a1 analyticsDenylistDescriptorsInternal];
    if (!v9)
    {
      goto LABEL_13;
    }

LABEL_11:
    v10 = v9;
    v11 = sub_217D896EC();

    v12 = *(v11 + 16);
    if (v12)
    {
      goto LABEL_14;
    }

LABEL_12:

    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  if (NFSeedBuild())
  {
    if ([a1 respondsToSelector_])
    {
      v9 = [a1 analyticsDenylistDescriptorsSeed];
      if (v9)
      {
        goto LABEL_11;
      }
    }
  }

  else if ([a1 respondsToSelector_])
  {
    v9 = [a1 analyticsDenylistDescriptorsPublic];
    if (v9)
    {
      goto LABEL_11;
    }
  }

LABEL_13:
  v11 = MEMORY[0x277D84F90];
  v12 = *(MEMORY[0x277D84F90] + 16);
  if (!v12)
  {
    goto LABEL_12;
  }

LABEL_14:
  v23[1] = a1;
  v24 = a2;
  v25 = MEMORY[0x277D84F90];
  sub_217A4AA54(0, v12, 0);
  v13 = v25;
  v14 = (v11 + 40);
  do
  {
    v15 = *(v14 - 1);
    v16 = *v14;

    sub_217D8846C();
    v25 = v13;
    v18 = *(v13 + 16);
    v17 = *(v13 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_217A4AA54(v17 > 1, v18 + 1, 1);
      v13 = v25;
    }

    *(v13 + 16) = v18 + 1;
    (*(v5 + 32))(v13 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v18, v8, v4);
    v14 += 2;
    --v12;
  }

  while (v12);

  a2 = v24;
LABEL_19:
  v19 = sub_217A4AA78(v13);
  swift_unknownObjectRelease();

  *a2 = v19;
  v20 = *MEMORY[0x277CEAD68];
  v21 = sub_217D8844C();
  return (*(*(v21 - 8) + 104))(a2, v20, v21);
}

size_t sub_217A4A818(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_217A4AA00(0, &qword_2811BC470, MEMORY[0x277CEAD80]);
  v10 = *(sub_217D8847C() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_217D8847C() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_217A4AA00(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_217D89D0C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

size_t sub_217A4AA54(size_t a1, int64_t a2, char a3)
{
  result = sub_217A4A818(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_217A4AA78(uint64_t a1)
{
  v2 = sub_217D8847C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = (MEMORY[0x28223BE20])();
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_217A4AC00(&qword_2811C8470);
  result = MEMORY[0x21CEACDC0](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_217A4AC44(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_217A4AC00(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_217D8847C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_217A4AC44(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_217D8847C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20]();
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_217A4AC00(&qword_2811C8470);
  v36 = a2;
  v13 = sub_217D894BC();
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
      sub_217A4AC00(&qword_2811C8468);
      v23 = sub_217D8950C();
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
    sub_217A4AEFC(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_217A4AEFC(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_217D8847C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20]();
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
    sub_217B98D58(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_217B99094();
      goto LABEL_12;
    }

    sub_217B992BC(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_217A4AC00(&qword_2811C8470);
  v15 = sub_217D894BC();
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
      sub_217A4AC00(&qword_2811C8468);
      v23 = sub_217D8950C();
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
  result = sub_217D89D9C();
  __break(1u);
  return result;
}

void sub_217A4B178(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_217A4B1DC()
{
  result = qword_2811BCC00;
  if (!qword_2811BCC00)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2811BCC00);
  }

  return result;
}

uint64_t sub_217A4B240()
{
  sub_217A4B178(0, &unk_2811BCF28, sub_217A4B1DC, MEMORY[0x277D6CF30]);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_217D88DDC();
}

uint64_t type metadata accessor for RollingTimestampConfigurationProvider()
{
  result = qword_2811BD670;
  if (!qword_2811BD670)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_217A4B320(uint64_t *a1, double a2)
{
  v3 = v2;
  v6 = sub_217D87C9C();
  v29 = *(v6 - 8);
  v30 = v6;
  v7 = *(v29 + 64);
  MEMORY[0x28223BE20]();
  v28 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_217D883EC();
  v9 = *(v27 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20]();
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_217D8856C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20]();
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217A498C8();
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v2 + 64) = v18;
  sub_217A4998C(a1, v2 + 16);
  *(v2 + 56) = a2;
  v20 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  (*(v19 + 8))(v20, v19);
  sub_217D883DC();
  v22 = v21;
  (*(v9 + 8))(v12, v27);
  v23 = v2 + OBJC_IVAR____TtC13NewsAnalytics37RollingTimestampConfigurationProvider_lastConfig;
  (*(v14 + 32))(v23, v17, v13);
  sub_217A4A0E0();
  *(v23 + *(v24 + 48)) = v22;
  v25 = v28;
  sub_217D87C8C();
  (*(v29 + 32))(v3 + OBJC_IVAR____TtC13NewsAnalytics37RollingTimestampConfigurationProvider_lastConfigRollDate, v25, v30);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_217A4B658(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t (*a13)(uint64_t, uint64_t, void *, void *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v21 = a13(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, v13, ObjectType);

  return v21;
}

char *sub_217A4B71C(uint64_t a1, uint64_t a2, void *a3, void *a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12, _BYTE *a13)
{
  ObjectType = swift_getObjectType();
  v19 = *a5;
  a13[OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_sessionStartSource] = 4;
  v20 = OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_sessionURLManager;
  sub_217A4BFDC(0, &unk_2811BCF60, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC78]);
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  *&a13[v20] = sub_217D88C7C();
  swift_unknownObjectWeakInit();
  v24 = &a13[OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_sceneSessionIdentifier];
  *v24 = 0;
  v24[1] = 0;
  *&a13[OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_sessionManager] = a1;
  v60 = a2;
  sub_217A4998C(a2, &a13[OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_aggregateStateModeProvider]);

  *&a13[OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_tracker] = sub_217D883AC();
  *&a13[OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_cloudContext] = a3;
  *&a13[OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_client] = a4;
  *&a13[OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_fsidProvider] = a6;
  v59 = v19;
  a13[OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_kind] = v19;
  v25 = a3;
  v26 = a4;
  swift_unknownObjectRetain();
  v27 = [v25 userInfo];
  v28 = [v27 onboardingVersionNumber];

  if (!v28)
  {
    sub_217A4E5C4(0, &qword_2811BCB90, 0x277CCABB0);
    v28 = sub_217D8989C();
  }

  *&a13[OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_onboardingVersion] = v28;
  sub_217A4C040(a7, &a13[OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_appExtensionCommunicator]);
  sub_217A4998C(a9, &a13[OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_tabiDataProvider]);
  sub_217A4998C(a10, &a13[OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_liveActivityCountDataProvider]);
  sub_217A4998C(a11, &a13[OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_userEmbeddingDataProvider]);
  v65.receiver = a13;
  v65.super_class = ObjectType;
  v29 = objc_msgSendSuper2(&v65, sel_init);
  v30 = *&v29[OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_sessionURLManager];
  type metadata accessor for SessionObserverURLHandler();
  v31 = swift_allocObject();
  *(v31 + 16) = a1;
  *&v64[0] = v31;
  sub_217A4C15C(&unk_2811BF210, type metadata accessor for SessionObserverURLHandler);

  sub_217D88C6C();

  v32 = OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_sessionManager;
  v33 = *&v29[OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_sessionManager];
  *(swift_allocObject() + 16) = v29;
  v34 = v29;
  sub_217D8833C();

  sub_217A4E670();
  v35 = *&v29[v32];
  *(swift_allocObject() + 16) = v34;
  v36 = v34;
  sub_217D8833C();

  v37 = [objc_opt_self() currentDevice];
  [v37 beginGeneratingDeviceOrientationNotifications];

  sub_217A4CAE8();
  v38 = objc_opt_self();
  v39 = [v38 defaultCenter];
  [v39 addObserver:v36 selector:sel_pushOrientationData name:*MEMORY[0x277D76878] object:0];

  sub_217A4CFDC();
  sub_217A4D798(a8);
  sub_217A4ECDC();
  v40 = *&v29[v32];
  sub_217D883AC();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_217D888FC();

  sub_217A4EEA4();
  v41 = [v38 defaultCenter];
  [v41 addObserver:v36 selector:sel_pushUserSubscriptionContextData name:*MEMORY[0x277D30C28] object:0];

  v42 = [v38 defaultCenter];
  [v42 addObserver:v36 selector:sel_pushUserSubscriptionContextData name:*MEMORY[0x277D30C38] object:0];

  sub_217A54954();
  sub_217A4DE10();
  SessionObserver.pushNotificationSettingsData()();
  result = [*&v36[OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_cloudContext] newsletterManager];
  if (result)
  {
    v44 = result;
    swift_unknownObjectRelease();
    [v44 addObserver_];
    swift_unknownObjectRelease();
    v45 = [v38 defaultCenter];
    v46 = sub_217D8951C();
    [v45 addObserver:v36 selector:sel_offerDidChange_ name:v46 object:0];

    sub_217A5083C();
    v47 = [v38 defaultCenter];
    v48 = sub_217D8985C();
    [v47 addObserver:v36 selector:sel_familySharingStatusDidChange_ name:v48 object:0];

    v49 = *&v29[v32];
    *(swift_allocObject() + 16) = v36;
    v50 = v36;
    sub_217D8833C();

    v51 = [v38 defaultCenter];
    [v51 addObserver:v50 selector:sel_contentSizeCategoryDidChange name:*MEMORY[0x277D76810] object:0];

    *(swift_allocObject() + 16) = v50;
    v52 = v50;
    sub_217D88E4C();

    if (v59)
    {
      v54 = a10;
      v53 = a7;
      v55 = a11;

      v56 = a9;
    }

    else
    {
      v57 = *&v52[OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_tracker];
      sub_217A4998C(a12, v64);
      v58 = swift_allocObject();
      sub_217A517E4(v64, v58 + 16);

      sub_217D888FC();

      sub_217D883CC();

      v54 = a10;
      v53 = a7;
      v56 = a9;
      v55 = a11;
    }

    __swift_destroy_boxed_opaque_existential_1(a12);
    __swift_destroy_boxed_opaque_existential_1(v55);
    __swift_destroy_boxed_opaque_existential_1(v54);
    __swift_destroy_boxed_opaque_existential_1(v56);
    sub_217A50680(v53);
    __swift_destroy_boxed_opaque_existential_1(v60);
    return v52;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_217A4BF5C()
{
  MEMORY[0x21CEADB40](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_217A4BF94()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

void sub_217A4BFDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_217A4C040(uint64_t a1, uint64_t a2)
{
  sub_217A4C0D4(0, &qword_2811BD5A0, sub_217A4E60C, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_217A4C0D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_217A4C15C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_217A4C1A4()
{
  v0 = MEMORY[0x277D84560];
  sub_217A4BFDC(0, &qword_2811BC430, MEMORY[0x277D6CCC0], MEMORY[0x277D84560]);
  v1 = *(sub_217D88CAC() - 8);
  v2 = *(v1 + 72);
  v20 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_217D8D8F0;
  sub_217A4BFDC(0, &qword_2811BC438, MEMORY[0x277D6CCA0], v0);
  v4 = sub_217D88C8C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_217DAC6A0;
  v9 = (v8 + v7);
  *v9 = 0x6E676961706D6163;
  *(v9 + 1) = 0xEB0000000064695FLL;
  v10 = *MEMORY[0x277D6CC80];
  v11 = *(v5 + 104);
  (v11)(v9, v10, v4);
  strcpy(&v9[v6], "campaign_type");
  *&v9[v6 + 14] = -4864;
  v11();
  v12 = &v9[2 * v6];
  *v12 = 0x6576697461657263;
  *(v12 + 1) = 0xEB0000000064695FLL;
  v11();
  v13 = &v9[3 * v6];
  *v13 = 0x724664656E65706FLL;
  *(v13 + 1) = 0xEA00000000006D6FLL;
  v11();
  v14 = &v9[4 * v6];
  *v14 = 0x6E656B6F7471;
  *(v14 + 1) = 0xE600000000000000;
  v11();
  v15 = &v9[5 * v6];
  *v15 = 0xD000000000000010;
  *(v15 + 1) = 0x8000000217DD0E70;
  v11();
  v16 = &v9[6 * v6];
  v17 = *MEMORY[0x277D30D60];
  *v16 = sub_217D8954C();
  v16[1] = v18;
  (v11)(v16, v10, v4);
  sub_217A4C508(MEMORY[0x277D84F90]);
  sub_217D88C9C();
  return v3;
}

unint64_t sub_217A4C508(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_217C2EF9C();
    v3 = sub_217D89ADC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_217C2E9BC(v5, v6);
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

unint64_t sub_217A4C604()
{
  result = qword_2811C04B8;
  if (!qword_2811C04B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C04B8);
  }

  return result;
}

unint64_t sub_217A4C65C()
{
  result = qword_2811C04C0;
  if (!qword_2811C04C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C04C0);
  }

  return result;
}

NewsAnalytics::ContentEnvironmentType __swiftcall ContentEnvironmentType.init(userDefaults:)(NSUserDefaults userDefaults)
{
  isa = userDefaults.super.isa;
  v3 = v1;
  v4 = [(objc_class *)userDefaults.super.isa stringForKey:*MEMORY[0x277D30960], userDefaults._container_];
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = v4;
  v6 = sub_217D8954C();
  v8 = v7;

  v9 = *MEMORY[0x277D30948];
  if (sub_217D8954C() == v6 && v10 == v8)
  {

    goto LABEL_10;
  }

  v12 = sub_217D89D4C();

  if (v12)
  {

LABEL_8:

LABEL_10:
    v14 = 1;
    goto LABEL_11;
  }

  v15 = *MEMORY[0x277D30968];
  if (sub_217D8954C() == v6 && v16 == v8)
  {

    v14 = 2;
    goto LABEL_11;
  }

  v18 = sub_217D89D4C();

  if (v18)
  {

    v14 = 2;
    goto LABEL_11;
  }

  v19 = *MEMORY[0x277D30950];
  if (sub_217D8954C() == v6 && v20 == v8)
  {

    v14 = 3;
    goto LABEL_11;
  }

  v22 = sub_217D89D4C();

  if (v22)
  {

    v14 = 3;
    goto LABEL_11;
  }

  v23 = *MEMORY[0x277D30970];
  if (sub_217D8954C() == v6 && v24 == v8)
  {
LABEL_28:

    v14 = 4;
    goto LABEL_11;
  }

  v25 = sub_217D89D4C();

  if (v25)
  {
    goto LABEL_30;
  }

  v26 = *MEMORY[0x277D30978];
  if (sub_217D8954C() == v6 && v27 == v8)
  {
    goto LABEL_28;
  }

  v28 = sub_217D89D4C();

  if (v28)
  {
    goto LABEL_30;
  }

  v29 = *MEMORY[0x277D30940];
  if (sub_217D8954C() == v6 && v30 == v8)
  {
    goto LABEL_28;
  }

  v31 = sub_217D89D4C();

  if (v31)
  {
    goto LABEL_30;
  }

  v32 = *MEMORY[0x277D30958];
  if (sub_217D8954C() == v6 && v33 == v8)
  {
    goto LABEL_28;
  }

  v34 = sub_217D89D4C();

  if (v34)
  {
    goto LABEL_30;
  }

  v35 = *MEMORY[0x277D30930];
  if (sub_217D8954C() == v6 && v36 == v8)
  {
    goto LABEL_28;
  }

  v37 = sub_217D89D4C();

  if (v37)
  {
LABEL_30:

    v14 = 4;
    goto LABEL_11;
  }

  v38 = *MEMORY[0x277D30938];
  if (sub_217D8954C() == v6 && v39 == v8)
  {

    goto LABEL_30;
  }

  v40 = sub_217D89D4C();

  if (v40)
  {
    v14 = 4;
  }

  else
  {
    v14 = 0;
  }

LABEL_11:
  *v3 = v14;
  return result;
}

void sub_217A4CA88()
{
  if (!qword_2811BC490)
  {
    sub_217D882DC();
    v0 = sub_217D89D0C();
    if (!v1)
    {
      atomic_store(v0, &qword_2811BC490);
    }
  }
}

void sub_217A4CAE8()
{
  sub_217A4CE7C();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = [Strong windowScene];

    if (v9)
    {
      v10 = [v9 interfaceOrientation];

      v11 = [objc_opt_self() currentDevice];
      v12 = [v11 orientation];
      v32 = v3;
      v13 = v12;

      if (v13 >= 7)
      {
        v14 = 0;
      }

      else
      {
        v14 = v13;
      }

      if (v10 >= 5)
      {
        v15 = 0;
      }

      else
      {
        v15 = 0x304020100uLL >> (8 * v10);
      }

      v28 = v15;
      v29 = v14;
      v31 = *(v0 + OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_sessionManager);
      sub_217D883AC();
      v33 = v14;
      v34 = v15;
      sub_217A4CA88();
      v27 = v16;
      v17 = sub_217D882DC();
      v18 = *(v17 - 8);
      v26 = *(v18 + 72);
      v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
      v20 = swift_allocObject();
      v25 = xmmword_217D8D8F0;
      *(v20 + 16) = xmmword_217D8D8F0;
      v21 = *MEMORY[0x277CEAD10];
      v30 = v2;
      v24 = *(v18 + 104);
      v24(v20 + v19, v21, v17);
      v23 = "ionState";
      sub_217A4CED8();
      sub_217D8890C();

      v33 = v29;
      v34 = v28;
      sub_217D880EC();
      v22 = swift_allocObject();
      *(v22 + 16) = v25;
      v24(v22 + v19, v21, v17);
      sub_217D8835C();

      (*(v32 + 8))(v6, v30);
    }
  }
}

void sub_217A4CE7C()
{
  if (!qword_2811C8A18)
  {
    sub_217A4CED8();
    v0 = sub_217D880FC();
    if (!v1)
    {
      atomic_store(v0, &qword_2811C8A18);
    }
  }
}

unint64_t sub_217A4CED8()
{
  result = qword_2811C65C0;
  if (!qword_2811C65C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C65C0);
  }

  return result;
}

unint64_t sub_217A4CF30()
{
  result = qword_2811C65B0;
  if (!qword_2811C65B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C65B0);
  }

  return result;
}

unint64_t sub_217A4CF88()
{
  result = qword_2811C65B8;
  if (!qword_2811C65B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C65B8);
  }

  return result;
}

uint64_t sub_217A4CFDC()
{
  sub_217A4D2B0(0, &qword_2811C8978, sub_217A4D314, MEMORY[0x277D83D88]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v18 - v3;
  sub_217A4D314();
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v5);
  v10 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v18 - v11;
  sub_217A4D474(v4);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    return sub_217A4D70C(v4);
  }

  v14 = *(v7 + 32);
  v14(v12, v4, v6);
  v15 = *(v0 + OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_sessionManager);
  (*(v7 + 16))(v10, v12, v6);
  v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v17 = swift_allocObject();
  v14((v17 + v16), v10, v6);
  sub_217D8833C();

  return (*(v7 + 8))(v12, v6);
}

uint64_t sub_217A4D228()
{
  sub_217A4D314();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void sub_217A4D2B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_217A4D314()
{
  if (!qword_2811C8980)
  {
    sub_217A4D370();
    v0 = sub_217D880FC();
    if (!v1)
    {
      atomic_store(v0, &qword_2811C8980);
    }
  }
}

unint64_t sub_217A4D370()
{
  result = qword_2811BD1E0;
  if (!qword_2811BD1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD1E0);
  }

  return result;
}

unint64_t sub_217A4D3C8()
{
  result = qword_2811BD1D0;
  if (!qword_2811BD1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD1D0);
  }

  return result;
}

unint64_t sub_217A4D420()
{
  result = qword_2811BD1D8;
  if (!qword_2811BD1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD1D8);
  }

  return result;
}

uint64_t sub_217A4D474@<X0>(uint64_t a1@<X8>)
{
  swift_getObjectType();
  v2 = sub_217D879DC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2811C8BB0 != -1)
  {
    swift_once();
  }

  sub_217A4D6B4();
  sub_217D87DCC();
  sub_217D879CC();
  sub_217A4EBC4();
  v7 = sub_217D8992C();
  v9 = v8;
  (*(v3 + 8))(v6, v2);

  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (v10)
  {
    v14[0] = v7;
    v14[1] = v9;
    sub_217A4D370();
    sub_217D880EC();
    sub_217A4D314();
    return (*(*(v11 - 8) + 56))(a1, 0, 1, v11);
  }

  else
  {
    sub_217A4D314();
    (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
  }
}

unint64_t sub_217A4D6B4()
{
  result = qword_2811C60C8;
  if (!qword_2811C60C8)
  {
    type metadata accessor for SessionObserver();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C60C8);
  }

  return result;
}

uint64_t sub_217A4D70C(uint64_t a1)
{
  sub_217A4D2B0(0, &qword_2811C8978, sub_217A4D314, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217A4D798(void *a1)
{
  swift_getObjectType();
  v3 = [a1 sportsOnboardingState] == 1;
  v4 = *(v1 + OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_sessionManager);
  v5 = sub_217D883AC();
  sub_217A4EC18(0, &qword_2811BCBF0, &qword_2811BCBF8, 0x277CE1FD0, sub_217A4EC98);
  sub_217D88E2C();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = 0;
  *(v6 + 32) = v3;

  v7 = sub_217D88D6C();
  sub_217D88DAC();

  sub_217D883AC();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = a1;

  v10 = a1;
  sub_217D888FC();
}

uint64_t sub_217A4D994()
{
  MEMORY[0x21CEADB40](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_217A4D9CC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_217A4DA0C()
{
  sub_217D8940C();
  sub_217D893FC();
  sub_217D893EC();

  sub_217D8936C();
  sub_217D8935C();
  v0 = sub_217D88E1C();

  return v0;
}

void sub_217A4DA94()
{
  if (!qword_2811C89A8)
  {
    sub_217A4F1E4();
    v0 = sub_217D880FC();
    if (!v1)
    {
      atomic_store(v0, &qword_2811C89A8);
    }
  }
}

unint64_t sub_217A4DAF4()
{
  result = qword_2811BEB88;
  if (!qword_2811BEB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BEB88);
  }

  return result;
}

unint64_t sub_217A4DB48()
{
  result = qword_2811BEB90;
  if (!qword_2811BEB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BEB90);
  }

  return result;
}

char *FCPurchaseController.purchaseSources.getter()
{
  if ([v0 isPaidSubscriberFromWeb])
  {
    v1 = sub_217B5AC1C(0, 1, 1, MEMORY[0x277D84F90]);
    v3 = *(v1 + 2);
    v2 = *(v1 + 3);
    if (v3 >= v2 >> 1)
    {
      v1 = sub_217B5AC1C((v2 > 1), v3 + 1, 1, v1);
    }

    *(v1 + 2) = v3 + 1;
    v1[v3 + 32] = 3;
  }

  else
  {
    v1 = MEMORY[0x277D84F90];
  }

  if ([v0 isPaidSubscriberFromNews])
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_217B5AC1C(0, *(v1 + 2) + 1, 1, v1);
    }

    v5 = *(v1 + 2);
    v4 = *(v1 + 3);
    if (v5 >= v4 >> 1)
    {
      v1 = sub_217B5AC1C((v4 > 1), v5 + 1, 1, v1);
    }

    *(v1 + 2) = v5 + 1;
    v1[v5 + 32] = 2;
  }

  if ([v0 isPaidSubscriberFromAppStore])
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_217B5AC1C(0, *(v1 + 2) + 1, 1, v1);
    }

    v7 = *(v1 + 2);
    v6 = *(v1 + 3);
    if (v7 >= v6 >> 1)
    {
      v1 = sub_217B5AC1C((v6 > 1), v7 + 1, 1, v1);
    }

    *(v1 + 2) = v7 + 1;
    v1[v7 + 32] = 1;
  }

  return v1;
}

void sub_217A4DD40()
{
  if (!qword_2811C89A0)
  {
    sub_217A4DD9C();
    v0 = sub_217D880FC();
    if (!v1)
    {
      atomic_store(v0, &qword_2811C89A0);
    }
  }
}

unint64_t sub_217A4DD9C()
{
  result = qword_2811BDCF0;
  if (!qword_2811BDCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BDCF0);
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

void sub_217A4DE10()
{
  v1 = *(v0 + OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_cloudContext);
  v2 = [v1 subscriptionController];
  if (!v2)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = v2;
  v4 = [v1 shortcutList];
  sub_217A54D60(v3, v4);

  v5 = [v1 subscriptionController];
  if (!v5)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = v5;
  sub_217A4DFD8(v5);

  v7 = [v1 subscriptionController];
  if (!v7)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v7;
  sub_217A4F918(v7);

  v9 = [v1 subscriptionController];
  if (!v9)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v10 = v9;
  [v9 addObserver_];

  v11 = [v1 shortcutList];
  [v11 addObserver_];
}

unint64_t sub_217A4DF64()
{
  result = qword_2811C8CB0;
  if (!qword_2811C8CB0)
  {
    sub_217D87B3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C8CB0);
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

uint64_t sub_217A4DFD8(void *a1)
{
  sub_217A55D7C(0, &qword_2811C89F8, sub_217A4E2BC);
  v24 = *(v3 - 8);
  v25 = v3;
  v4 = *(v24 + 64);
  MEMORY[0x28223BE20](v3);
  v22 = v17 - v5;
  sub_217A4F5C8(a1, &v28);
  v6 = v28;
  v21 = v28;
  v23 = *(v1 + OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_sessionManager);
  sub_217D883AC();
  v27 = v6;
  sub_217A4CA88();
  v20 = v7;
  v8 = sub_217D882DC();
  v9 = *(v8 - 8);
  v19 = *(v9 + 72);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  v18 = xmmword_217D8D8F0;
  *(v11 + 16) = xmmword_217D8D8F0;
  v12 = *MEMORY[0x277CEAD10];
  v13 = *(v9 + 104);
  v13(v11 + v10, v12, v8);
  v17[1] = "v48@0:8@16@24@32@40";
  sub_217A4E2BC();
  sub_217D8890C();

  v26 = v21;
  v14 = v22;
  sub_217D880EC();
  v15 = swift_allocObject();
  *(v15 + 16) = v18;
  v13(v15 + v10, v12, v8);
  sub_217D8835C();

  return (*(v24 + 8))(v14, v25);
}

unint64_t sub_217A4E2BC()
{
  result = qword_2811C3910;
  if (!qword_2811C3910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C3910);
  }

  return result;
}

uint64_t sub_217A4E310(void *a1)
{
  v2 = sub_217D8869C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = MEMORY[0x277D83D88];
  sub_217B7CE88(0, &qword_2811C8448, MEMORY[0x277CEADF8], MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v19 - v7;
  sub_217B7CE88(0, &qword_2811C8450, MEMORY[0x277CEADD8], v4);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v19 - v11;
  sub_217D8840C();
  sub_217D883FC();
  v13 = sub_217D885EC();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15 = sub_217D886DC();
  sub_217D88ADC();
  result = (*(*(v15 - 8) + 48))(v8, 1, v15);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_217D87FEC();
    v17 = sub_217D8824C();
    v18 = sub_217D8823C();
    v19[4] = v17;
    v19[5] = MEMORY[0x277CEACE0];
    v19[1] = v18;
    sub_217D8868C();
    return sub_217D87FCC();
  }

  return result;
}

uint64_t sub_217A4E5C4(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_217A4E60C()
{
  result = qword_2811BD5A8[0];
  if (!qword_2811BD5A8[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_2811BD5A8);
  }

  return result;
}

uint64_t sub_217A4E670()
{
  sub_217A4E88C();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_sessionManager);
  v15.super.isa = NewsCoreUserDefaults();
  ContentEnvironmentType.init(userDefaults:)(v15);
  sub_217A4E8E8();
  sub_217D880EC();
  sub_217A4CA88();
  v8 = sub_217D882DC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_217D8D8F0;
  (*(v9 + 104))(v12 + v11, *MEMORY[0x277CEAD10], v8);
  sub_217D8835C();

  return (*(v3 + 8))(v6, v2);
}

void sub_217A4E88C()
{
  if (!qword_2811C89C8)
  {
    sub_217A4E8E8();
    v0 = sub_217D880FC();
    if (!v1)
    {
      atomic_store(v0, &qword_2811C89C8);
    }
  }
}

unint64_t sub_217A4E8E8()
{
  result = qword_2811C04C8;
  if (!qword_2811C04C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C04C8);
  }

  return result;
}

uint64_t sub_217A4E93C()
{
  v0 = sub_217D87EAC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_217D87EBC();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  (*(v8 + 104))(v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D0A8]);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D090], v0);
  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  sub_217A4EB0C(0, &qword_2811C8A58);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  result = sub_217D87F2C();
  qword_2811C8BB8 = result;
  return result;
}

void sub_217A4EB0C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_217D87F1C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_217A4EB5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D2860](a1, a2, ObjectType, a6);
}

unint64_t sub_217A4EBC4()
{
  result = qword_2811BCEA0;
  if (!qword_2811BCEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BCEA0);
  }

  return result;
}

void sub_217A4EC18(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_217A4E5C4(255, a3, a4);
    a5(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v8)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_217A4ECDC()
{
  v1 = *&v0[OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_cloudContext];
  v2 = [v1 userInfo];
  v3 = *&v0[OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_sessionManager];
  sub_217D883AC();
  *(swift_allocObject() + 16) = v2;
  v4 = v2;
  sub_217D888EC();

  sub_217A4C040(&v0[OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_appExtensionCommunicator], v10);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v0;
  v6 = v10[1];
  *(v5 + 32) = v10[0];
  *(v5 + 48) = v6;
  *(v5 + 64) = v11;
  v7 = v4;
  v8 = v0;
  sub_217D8833C();

  v9 = [v1 userInfo];
  [v9 addObserver_];
}

uint64_t sub_217A4EE64()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_217A4EEA4()
{
  v1 = v0;
  sub_217A4DA94();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_cloudContext);
  result = [v8 purchaseController];
  if (result)
  {
    v10 = result;
    v31 = v7;
    v32 = v4;
    v33 = v3;
    v11 = [result isPaidSubscriber];

    result = [v8 purchaseController];
    if (result)
    {
      v12 = result;
      v13 = FCPurchaseController.purchaseSources.getter();
      v29 = v13;

      v30 = *(v1 + OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_sessionManager);
      sub_217D883AC();
      v34 = v11;
      v35 = v13;
      sub_217A4CA88();
      v28 = v14;
      v15 = sub_217D882DC();
      v16 = *(v15 - 8);
      v25 = v11;
      v17 = v16;
      v27 = *(v16 + 72);
      v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
      v19 = swift_allocObject();
      v26 = xmmword_217D8D8F0;
      *(v19 + 16) = xmmword_217D8D8F0;
      v20 = *MEMORY[0x277CEAD10];
      v21 = *(v17 + 104);
      v21(v19 + v18, v20, v15);
      v24 = "e";
      sub_217A4F1E4();
      sub_217D8890C();

      v34 = v25;
      v35 = v29;
      v22 = v31;
      sub_217D880EC();
      v23 = swift_allocObject();
      *(v23 + 16) = v26;
      v21(v23 + v18, v20, v15);
      sub_217D8835C();

      return (*(v32 + 8))(v22, v33);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_217A4F1E4()
{
  result = qword_2811BEB98;
  if (!qword_2811BEB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BEB98);
  }

  return result;
}

void sub_217A4F23C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = *(a5 + OBJC_IVAR____TtC13NewsAnalytics25PrivacyValidationProvider_appConfigurationManager);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = a3;
  v13[4] = a4;
  v13[5] = sub_217A6102C;
  v13[6] = v10;
  v15[4] = sub_217A60CCC;
  v15[5] = v13;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = sub_217A60C48;
  v15[3] = &block_descriptor;
  v14 = _Block_copy(v15);

  [v11 fetchAppConfigurationIfNeededWithCompletion_];
  _Block_release(v14);
}

uint64_t sub_217A4F3A4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_217A4F3DC()
{
  MEMORY[0x21CEADB40](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_217A4F414()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

unint64_t sub_217A4F460()
{
  result = qword_2811C4CE0;
  if (!qword_2811C4CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C4CE0);
  }

  return result;
}

unint64_t sub_217A4F4B4()
{
  result = qword_2811BCCA0;
  if (!qword_2811BCCA0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2811BCCA0);
  }

  return result;
}

unint64_t sub_217A4F51C()
{
  result = qword_2811C38F8;
  if (!qword_2811C38F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C38F8);
  }

  return result;
}

unint64_t sub_217A4F574()
{
  result = qword_2811C3900;
  if (!qword_2811C3900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C3900);
  }

  return result;
}

void sub_217A4F5C8(void *a1@<X0>, unint64_t a2@<X8>)
{
  v2 = a1;
  v4 = [a1 subscriptions];
  if (!v4)
  {

LABEL_40:
    LODWORD(v31) = 0;
    goto LABEL_41;
  }

  v5 = v4;
  sub_217A4F8CC();
  v6 = sub_217D896EC();

  if (v6 >> 62)
  {
LABEL_32:
    v7 = sub_217D89AAC();
    v36 = v2;
    if (v7)
    {
LABEL_4:
      v8 = 0;
      v2 = (v6 & 0xC000000000000001);
      v9 = MEMORY[0x277D84F98];
      v35 = a2;
      while (1)
      {
        a2 = v8;
        while (1)
        {
          if (v2)
          {
            v10 = MEMORY[0x21CEAD080](a2, v6);
          }

          else
          {
            if (a2 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_31;
            }

            v10 = *(v6 + 8 * a2 + 32);
          }

          v11 = v10;
          v8 = (a2 + 1);
          if (__OFADD__(a2, 1))
          {
            __break(1u);
LABEL_31:
            __break(1u);
            goto LABEL_32;
          }

          v12 = [v10 subscriptionOrigin];
          if (v9[2])
          {
            v13 = v12;
            v14 = sub_217D7ABB0(v12);
            if (v15)
            {
              break;
            }
          }

          ++a2;
          if (v8 == v7)
          {
            a2 = v35;
            goto LABEL_34;
          }
        }

        v16 = *(v9[7] + 8 * v14);
        v34 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_43;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v18 = sub_217D7ABB0(v13);
        v20 = v9[2];
        v21 = (v19 & 1) == 0;
        v22 = __OFADD__(v20, v21);
        v23 = v20 + v21;
        if (v22)
        {
          goto LABEL_44;
        }

        if (v9[3] >= v23)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v33 = v18;
            v28 = v19;
            sub_217BD3970();
            v19 = v28;
            v18 = v33;
          }
        }

        else
        {
          v32 = v19;
          sub_217BD36FC(v23, isUniquelyReferenced_nonNull_native);
          v18 = sub_217D7ABB0(v13);
          v25 = v24 & 1;
          v19 = v32;
          if ((v32 & 1) != v25)
          {
            goto LABEL_46;
          }
        }

        a2 = v35;
        if (v19)
        {
          *(v9[7] + 8 * v18) = v34;

          if (v8 != v7)
          {
            continue;
          }

          goto LABEL_34;
        }

        v9[(v18 >> 6) + 8] |= 1 << v18;
        *(v9[6] + 8 * v18) = v13;
        *(v9[7] + 8 * v18) = v34;

        v26 = v9[2];
        v22 = __OFADD__(v26, 1);
        v27 = v26 + 1;
        if (v22)
        {
          goto LABEL_45;
        }

        v9[2] = v27;
        if (v8 == v7)
        {
          goto LABEL_34;
        }
      }
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v36 = v2;
    if (v7)
    {
      goto LABEL_4;
    }
  }

  v9 = MEMORY[0x277D84F98];
LABEL_34:

  if (!v9[2] || (v29 = sub_217D7ABB0(3), (v30 & 1) == 0))
  {
LABEL_39:

    goto LABEL_40;
  }

  v31 = *(v9[7] + 8 * v29);

  if (v31 >= 0xFFFFFFFF80000000)
  {
    if (v31 <= 0x7FFFFFFF)
    {
LABEL_41:
      *a2 = v31;
      return;
    }

    __break(1u);
    goto LABEL_39;
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  type metadata accessor for FCSubscriptionOrigin(0);
  sub_217D89DAC();
  __break(1u);
}

unint64_t sub_217A4F8CC()
{
  result = qword_2811BCCA8;
  if (!qword_2811BCCA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2811BCCA8);
  }

  return result;
}

uint64_t sub_217A4F918(void *a1)
{
  sub_217A55D7C(0, &unk_2811C89B0, sub_217A4FBF8);
  v24 = *(v3 - 8);
  v25 = v3;
  v4 = *(v24 + 64);
  MEMORY[0x28223BE20](v3);
  v22 = v17 - v5;
  sub_217A4FCFC(a1, &v26);
  v6 = v26;
  v21 = v26;
  v23 = *(v1 + OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_sessionManager);
  sub_217D883AC();
  v26 = v6;
  sub_217A4CA88();
  v20 = v7;
  v8 = sub_217D882DC();
  v9 = *(v8 - 8);
  v19 = *(v9 + 72);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  v18 = xmmword_217D8D8F0;
  *(v11 + 16) = xmmword_217D8D8F0;
  v12 = *MEMORY[0x277CEAD10];
  v13 = *(v9 + 104);
  v13(v11 + v10, v12, v8);
  v17[1] = "v48@0:8@16@24@32@40";
  sub_217A4FBF8();
  sub_217D8890C();

  v14 = v22;
  v26 = v21;
  sub_217D880EC();
  v15 = swift_allocObject();
  *(v15 + 16) = v18;
  v13(v15 + v10, v12, v8);
  sub_217D8835C();

  return (*(v24 + 8))(v14, v25);
}

unint64_t sub_217A4FBF8()
{
  result = qword_2811BF688;
  if (!qword_2811BF688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BF688);
  }

  return result;
}

unint64_t sub_217A4FC50()
{
  result = qword_2811BF678;
  if (!qword_2811BF678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BF678);
  }

  return result;
}

unint64_t sub_217A4FCA8()
{
  result = qword_2811BF680;
  if (!qword_2811BF680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BF680);
  }

  return result;
}

uint64_t sub_217A4FCFC@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  v3 = [a1 cachedSubscribedTags];
  if (v3)
  {
    v4 = v3;
    sub_217A4F4B4();
    v5 = sub_217D896EC();
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_6;
    }

LABEL_29:
    v8 = MEMORY[0x277D84F90];
    goto LABEL_30;
  }

LABEL_28:
  v6 = sub_217D89AAC();
  if (!v6)
  {
    goto LABEL_29;
  }

LABEL_6:
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  do
  {
    v9 = v7;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x21CEAD080](v9, v5);
        v7 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v10 = *(v5 + 8 * v9 + 32);
        swift_unknownObjectRetain();
        v7 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }
      }

      v11 = [v10 asSports];
      if (v11)
      {
        break;
      }

      swift_unknownObjectRelease();
      ++v9;
      if (v7 == v6)
      {
        goto LABEL_30;
      }
    }

    v23 = a2;
    v12 = v11;
    v13 = swift_unknownObjectRetain();
    static TagData.obfuscated(tag:)(v13, v25);
    swift_unknownObjectRelease();
    v21 = v25[1];
    v22 = v25[0];
    v14 = [v12 topLevelGroupsTagIdentifiers];
    if (v14)
    {
      v15 = v14;
      v16 = sub_217D896EC();

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v16 = 0;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_217B5AE24(0, *(v8 + 2) + 1, 1, v8);
    }

    v18 = *(v8 + 2);
    v17 = *(v8 + 3);
    if (v18 >= v17 >> 1)
    {
      v8 = sub_217B5AE24((v17 > 1), v18 + 1, 1, v8);
    }

    *(v8 + 2) = v18 + 1;
    v19 = &v8[24 * v18];
    *(v19 + 4) = v22;
    *(v19 + 5) = v21;
    *(v19 + 6) = v16;
    a2 = v23;
  }

  while (v7 != v6);
LABEL_30:

  *a2 = v8;
  return result;
}

Swift::Void __swiftcall SessionObserver.pushNotificationSettingsData()()
{
  v1 = v0;
  sub_217A50520();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_cloudContext);
  v9 = [v8 subscriptionController];
  if (!v9)
  {
    __break(1u);
    goto LABEL_10;
  }

  v10 = v9;
  v11 = [v9 subscribedTagIDsWithNotificationsEnabled];

  if (!v11)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v44 = v7;
  v45 = v4;
  v43 = sub_217D896EC();

  v12 = NewsCoreUserDefaults();
  v13 = sub_217D8951C();
  LODWORD(v42) = [v12 BOOLForKey_];

  v14 = [v8 userInfo];
  v15 = [v14 newIssueNotificationsEnabled];

  v16 = [v8 userInfo];
  v17 = [v16 marketingNotificationsEnabled];

  v18 = [v8 userInfo];
  v19 = [v18 endOfAudioTrackNotificationsEnabled];

  v20 = [v8 newsletterManager];
  if (!v20)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v41 = v3;
  v21 = [v20 isSubscribed];
  swift_unknownObjectRelease();
  v22 = [v8 newsletterManager];
  if (!v22)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v23 = [v22 isOptedIntoIssues];
  swift_unknownObjectRelease();
  v24 = [v8 userInfo];
  v25 = [v24 puzzleNotificationsEnabled];

  *&v53 = v43;
  BYTE8(v53) = v15;
  BYTE9(v53) = v17;
  BYTE10(v53) = v19;
  BYTE11(v53) = v21;
  BYTE12(v53) = v23;
  BYTE13(v53) = v42;
  HIWORD(v53) = v25;
  sub_217A4C040(v1 + OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_appExtensionCommunicator, &v50);
  v26 = v51;
  if (v51)
  {
    v27 = v52;
    __swift_project_boxed_opaque_existential_1(&v50, v51);
    v48 = &type metadata for NotificationSettingsData;
    v49 = sub_217A5057C();
    v47 = v53;
    v28 = *(v27 + 8);
    sub_217A55A60(&v53, v46);
    v28(&v47, v26, v27);
    __swift_destroy_boxed_opaque_existential_1(&v47);
    __swift_destroy_boxed_opaque_existential_1(&v50);
  }

  else
  {
    sub_217A50680(&v50);
  }

  v43 = *(v1 + OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_sessionManager);
  sub_217D883AC();
  v50 = v53;
  sub_217A507D8(0, &qword_2811BC490, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v42 = v29;
  v30 = sub_217D882DC();
  v31 = *(v30 - 8);
  v40 = *(v31 + 72);
  v32 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v33 = swift_allocObject();
  v39 = xmmword_217D8D8F0;
  *(v33 + 16) = xmmword_217D8D8F0;
  v34 = *MEMORY[0x277CEAD10];
  v35 = *(v31 + 104);
  v35(v33 + v32, v34, v30);
  v38[1] = "sNotificationDigestModeEnabled";
  sub_217A5057C();
  sub_217D8890C();

  v50 = v53;
  v36 = v44;
  sub_217D880EC();
  v37 = swift_allocObject();
  *(v37 + 16) = v39;
  v35(v37 + v32, v34, v30);
  sub_217D8835C();

  (*(v45 + 8))(v36, v41);
}

void sub_217A50520()
{
  if (!qword_2811C89C0)
  {
    sub_217A5057C();
    v0 = sub_217D880FC();
    if (!v1)
    {
      atomic_store(v0, &qword_2811C89C0);
    }
  }
}

unint64_t sub_217A5057C()
{
  result = qword_2811BF7B8;
  if (!qword_2811BF7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BF7B8);
  }

  return result;
}

unint64_t sub_217A505D4()
{
  result = qword_2811BF7A0;
  if (!qword_2811BF7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BF7A0);
  }

  return result;
}

unint64_t sub_217A5062C()
{
  result = qword_2811BF7A8;
  if (!qword_2811BF7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BF7A8);
  }

  return result;
}

uint64_t sub_217A50680(uint64_t a1)
{
  sub_217A4C0D4(0, &qword_2811BD5A0, sub_217A4E60C, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_217A5070C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_217AE030C(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_217A50774(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_217A507D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_217A5083C()
{
  v1 = *&v0[OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_cloudContext];
  v2 = [objc_msgSend(v1 configurationManager)];
  result = swift_unknownObjectRelease();
  if (v2)
  {
    v4 = *&v0[OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_sessionManager];
    v5 = swift_allocObject();
    *(v5 + 16) = v0;
    *(v5 + 24) = v2;
    v6 = v0;
    swift_unknownObjectRetain();
    sub_217D8833C();
    swift_unknownObjectRelease();

    [objc_msgSend(v1 configurationManager)];

    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_217A5097C(uint64_t a1)
{
  v2 = [objc_opt_self() sharedApplication];
  v3 = [v2 preferredContentSizeCategory];

  v4 = *(a1 + OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_sessionManager);
  *(swift_allocObject() + 16) = v3;
  v5 = v3;
  sub_217D8833C();
}

uint64_t sub_217A50A4C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t SessionObserver.sessionDidStart(withSessionID:sourceApplication:url:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v79 = a1;
  v80 = a2;
  v81 = sub_217D87C9C();
  v78 = *(v81 - 8);
  v10 = *(v78 + 64);
  MEMORY[0x28223BE20](v81);
  v76 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_217D888BC();
  v75 = *(v77 - 8);
  v12 = *(v75 + 64);
  MEMORY[0x28223BE20](v77);
  v74 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217A619E0(0, &qword_2811C8A10, sub_217A61A40);
  v72 = *(v14 - 8);
  v73 = v14;
  v15 = *(v72 + 64);
  MEMORY[0x28223BE20](v14);
  v71 = &v68 - v16;
  v17 = MEMORY[0x277D83D88];
  sub_217A4BFDC(0, &qword_2811BCF10, MEMORY[0x277D6D700], MEMORY[0x277D83D88]);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v68 - v20;
  sub_217A4BFDC(0, &qword_2811C8CA0, MEMORY[0x277CC9260], v17);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v68 - v24;
  v26 = sub_217D87BAC();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v68 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217A61C54(a5, v25);
  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {
    sub_217A61CE8(v25, &qword_2811C8CA0, MEMORY[0x277CC9260]);
  }

  else
  {
    (*(v27 + 32))(v30, v25, v26);
    sub_217A4E5C4(0, &qword_2811BCB80, 0x277D86200);
    v31 = sub_217D898DC();
    sub_217A5070C(0, &qword_2811BC410, &qword_2811BC3E0, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
    v32 = swift_allocObject();
    v33 = v32;
    *(v32 + 16) = xmmword_217D9CB60;
    v34 = v6[OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_kind];
    v69 = a3;
    *&v70 = a4;
    v68 = v31;
    if (v34)
    {
      if (v34 == 1)
      {
        v35 = 0xE500000000000000;
        v36 = 0x6F69647561;
      }

      else
      {
        v36 = 0x7274656D656C6574;
        v35 = 0xE900000000000079;
      }
    }

    else
    {
      v35 = 0xE300000000000000;
      v36 = 7368801;
    }

    v37 = MEMORY[0x277D837D0];
    *(v32 + 56) = MEMORY[0x277D837D0];
    v38 = sub_217A62448();
    v33[8] = v38;
    v33[4] = v36;
    v33[5] = v35;
    v39 = sub_217D87B5C();
    v33[12] = v37;
    v33[13] = v38;
    v33[9] = v39;
    v33[10] = v40;
    sub_217D897FC();
    v41 = v68;
    sub_217D88E5C();

    v42 = *&v6[OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_sessionURLManager];
    sub_217C2EB94(MEMORY[0x277D84F90]);
    v43 = *MEMORY[0x277D6D6F8];
    v44 = sub_217D88EBC();
    v45 = *(v44 - 8);
    (*(v45 + 104))(v21, v43, v44);
    (*(v45 + 56))(v21, 0, 1, v44);
    sub_217D88C5C();

    sub_217A61CE8(v21, &qword_2811BCF10, MEMORY[0x277D6D700]);
    (*(v27 + 8))(v30, v26);
    a3 = v69;
    a4 = v70;
  }

  sub_217A62080(v6, a3, a4, &v82);
  v46 = v82;
  v47 = v83;
  sub_217A4E5C4(0, &qword_2811BCB80, 0x277D86200);
  v48 = sub_217D898DC();
  sub_217A5070C(0, &qword_2811BC410, &qword_2811BC3E0, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v49 = swift_allocObject();
  v50 = v49;
  *(v49 + 16) = xmmword_217D8D8F0;
  v51 = v6[OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_kind];
  v70 = xmmword_217D8D8F0;
  if (v51)
  {
    if (v51 == 1)
    {
      v52 = 0xE500000000000000;
      v53 = 0x6F69647561;
    }

    else
    {
      v53 = 0x7274656D656C6574;
      v52 = 0xE900000000000079;
    }
  }

  else
  {
    v52 = 0xE300000000000000;
    v53 = 7368801;
  }

  *(v49 + 56) = MEMORY[0x277D837D0];
  *(v49 + 64) = sub_217A62448();
  *(v50 + 32) = v53;
  *(v50 + 40) = v52;
  sub_217D897FC();
  sub_217D88E5C();

  if (v47)
  {
    v82 = v46;
    v83 = v47;
    sub_217A61A40();
    v54 = v71;
    sub_217D880EC();
    v55 = *&v6[OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_sessionManager];
    sub_217A4BFDC(0, &qword_2811BC490, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
    v56 = sub_217D882DC();
    v57 = *(v56 - 8);
    v58 = *(v57 + 72);
    v59 = (*(v57 + 80) + 32) & ~*(v57 + 80);
    v60 = swift_allocObject();
    *(v60 + 16) = v70;
    (*(v57 + 104))(v60 + v59, *MEMORY[0x277CEAD10], v56);
    sub_217D8835C();

    (*(v72 + 8))(v54, v73);
  }

  sub_217A624A0();
  v61 = *&v6[OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_sessionManager];
  *(swift_allocObject() + 16) = v6;
  v62 = v6;
  sub_217D8833C();

  v64 = v74;
  v63 = v75;
  v65 = v77;
  (*(v75 + 104))(v74, *MEMORY[0x277CEAE68], v77);
  v66 = v76;
  sub_217D87C8C();
  sub_217D8836C();
  (*(v78 + 8))(v66, v81);
  (*(v63 + 8))(v64, v65);
  sub_217D883AC();
  type metadata accessor for AppSessionResumeEvent(0);
  sub_217A4C15C(&qword_2811C1868, type metadata accessor for AppSessionResumeEvent);
  sub_217D8893C();
}

uint64_t sub_217A51470()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_217A514A8(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_217A520D0(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_217A5150C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_217B7CE88(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_217A51584(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A49558(0, &unk_2811BCBB8, &protocolRef_FCBundleSubscriptionManagerType);
  result = sub_217D88ACC();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = result;
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A4E5C4(0, &qword_2811BCC20, 0x277D31210);
  result = sub_217D88ACC();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v6 = result;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A4E5C4(0, &qword_2811BCBE8, 0x277D31330);
  result = sub_217D88ACC();
  if (result)
  {
    v8 = result;
    type metadata accessor for ChannelDataFactory();
    result = swift_allocObject();
    result[2] = v4;
    result[3] = v6;
    result[4] = v8;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_217A516A4(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A51780();
  result = sub_217D88ADC();
  if (v8)
  {
    v4 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_217A49558(0, &unk_2811BCBD0, &protocolRef_FCNewsAppConfigurationManager);
    result = sub_217D88ACC();
    if (result)
    {
      v5 = result;
      type metadata accessor for ScienceDataFactory();
      v6 = swift_allocObject();
      sub_217A517E4(&v7, v6 + 16);
      *(v6 + 56) = v5;
      return v6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_217A51780()
{
  result = qword_2811BCED8;
  if (!qword_2811BCED8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2811BCED8);
  }

  return result;
}

uint64_t sub_217A517E4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
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

void *NotificationReceiptReporter.init(log:contentType:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v48 = a2;
  v5 = sub_217D8873C();
  v50 = *(v5 - 8);
  v51 = v5;
  v6 = *(v50 + 64);
  MEMORY[0x28223BE20](v5);
  v49 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_217D8867C();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v60 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_217D8869C();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v59 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_217D886DC();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v58 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_217D880DC();
  v53 = *(v17 - 8);
  v18 = v53;
  v19 = *(v53 + 64);
  MEMORY[0x28223BE20](v17);
  v56 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_217D8839C();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v52 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_217D889DC();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = &v48 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2[5] = NewsCoreUserDefaults();
  v2[3] = a1;
  v29 = sub_217D88A3C();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  v61 = a1;
  v2[4] = sub_217D88A2C();
  (*(v25 + 104))(v28, *MEMORY[0x277D6C9A8], v24);

  sub_217D889EC();

  v57 = sub_217D883BC();
  v55 = dispatch_group_create();
  sub_217D8852C();
  v54 = sub_217D8851C();
  v62[0] = MEMORY[0x277D84F90];
  sub_217A52088(&unk_2811C8480, MEMORY[0x277CEAD38]);
  v32 = MEMORY[0x277CEAD38];
  v33 = MEMORY[0x277D83940];
  sub_217A520D0(0, &qword_2811BCE48, MEMORY[0x277CEAD38], MEMORY[0x277D83940]);
  sub_217A514A8(&qword_2811BCE40, &qword_2811BCE48, v32);
  sub_217D8997C();
  v34 = MEMORY[0x277CEAC90];
  sub_217A520D0(0, &qword_2811BC4A0, MEMORY[0x277CEAC90], MEMORY[0x277D84560]);
  v35 = *(v18 + 72);
  v36 = (*(v53 + 80) + 32) & ~*(v53 + 80);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_217D8EE60;
  sub_217D880CC();
  sub_217D880AC();
  sub_217D880BC();
  v62[0] = v37;
  sub_217A52088(&qword_2811C8A20, MEMORY[0x277CEAC90]);
  sub_217A520D0(0, &qword_2811BCE58, v34, v33);
  sub_217A514A8(&qword_2811BCE50, &qword_2811BCE58, v34);
  sub_217D8997C();
  v38 = sub_217D8830C();
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  sub_217D882FC();
  v41 = sub_217D883EC();
  v62[3] = v41;
  v62[4] = MEMORY[0x277CEAD58];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v62);
  (*(*(v41 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277CEAD50], v41);
  v43 = sub_217D887AC();
  v44 = *(v43 + 48);
  v45 = *(v43 + 52);
  swift_allocObject();
  sub_217D8879C();
  sub_217D886CC();
  sub_217D8868C();
  sub_217D8866C();
  v3[2] = sub_217D8832C();

  if (sub_217A52198())
  {
    sub_217D886BC();
    sub_217D8889C();
    v46 = [objc_opt_self() mainBundle];
    sub_217D8887C();
    sub_217D8865C();

    sub_217D8864C();
    sub_217D886AC();
    sub_217D8831C();

    sub_217D8841C();

    sub_217D8831C();
    sub_217D885DC();
    (*(v50 + 104))(v49, *MEMORY[0x277CEAE10], v51);
    sub_217D885CC();
    sub_217D8841C();
  }

  return v3;
}

uint64_t sub_217A52088(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_217A520D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_217A52198()
{
  sub_217A520D0(0, &qword_2811C8CA0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v48 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v42 - v5;
  v7 = sub_217D87BAC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v46 = &v42 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v45 = &v42 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v42 - v17;
  v19 = NewsCoreUserDefaults();
  v20 = sub_217D8951C();
  v21 = [v19 stringForKey_];

  if (!v21)
  {
    (*(v8 + 56))(v6, 1, 1, v7);
    goto LABEL_7;
  }

  v47 = v18;
  v44 = v12;
  sub_217D8954C();
  v49 = v0;

  sub_217D87B9C();
  v0 = v49;

  v22 = *(v8 + 48);
  if (v22(v6, 1, v7) == 1)
  {
LABEL_7:
    sub_217AE0580(v6, &qword_2811C8CA0, MEMORY[0x277CC9260], MEMORY[0x277D83D88], sub_217A520D0);
    v40 = *(v0 + 24);
    sub_217D897FC();
    sub_217D88E5C();

    return 0;
  }

  v23 = *(v8 + 32);
  v23(v47, v6, v7);
  v24 = sub_217D8951C();
  v25 = [v19 stringForKey_];

  if (v25)
  {
    v43 = v23;
    sub_217D8954C();

    v26 = v48;
    sub_217D87B9C();

    if (v22(v26, 1, v7) != 1)
    {
      v27 = v45;
      v28 = v43;
      v43(v45, v26, v7);
      EndpointEnvironment = FCDefaultsReadEndpointEnvironment();
      v30 = FCEndpointEnvironment.name.getter(EndpointEnvironment);
      v32 = v31;

      v33 = v46;
      v28(v46, v47, v7);
      v34 = v44;
      v28(v44, v27, v7);
      v35 = type metadata accessor for NotificationReceiptReporterEndpoint();
      v36 = *(v35 + 48);
      v37 = *(v35 + 52);
      v38 = swift_allocObject();
      *(v38 + 16) = v30;
      *(v38 + 24) = v32;
      v28((v38 + OBJC_IVAR____TtC13NewsAnalyticsP33_73410A717757B42F2A6F1BC37191285735NotificationReceiptReporterEndpoint_defaultURL), v33, v7);
      v28((v38 + OBJC_IVAR____TtC13NewsAnalyticsP33_73410A717757B42F2A6F1BC37191285735NotificationReceiptReporterEndpoint_notificationReceiptURL), v34, v7);
      return v38;
    }
  }

  else
  {
    v26 = v48;
    (*(v8 + 56))(v48, 1, 1, v7);
  }

  sub_217AE0580(v26, &qword_2811C8CA0, MEMORY[0x277CC9260], MEMORY[0x277D83D88], sub_217A520D0);
  v41 = *(v49 + 24);
  sub_217D897FC();
  sub_217D88E5C();

  (*(v8 + 8))(v47, v7);
  return 0;
}

uint64_t FCEndpointEnvironment.name.getter(uint64_t a1)
{
  if (a1 <= 4)
  {
    if (a1 > 1)
    {
      if (a1 == 2)
      {
        return 0x676E6967617473;
      }

      if (a1 == 3)
      {
        return 24945;
      }

      return 1953719668;
    }

    if (a1 == 1)
    {
      return 0x69746375646F7270;
    }

    return 0x6E776F6E6B6E75;
  }

  if (a1 > 6)
  {
    switch(a1)
    {
      case 7:
        return 0x786F62646E6173;
      case 8:
        return 0x316F6D6564;
      case 9:
        return 0x326F6D6564;
    }

    return 0x6E776F6E6B6E75;
  }

  if (a1 == 5)
  {
    return 0x3164756F6C6369;
  }

  else
  {
    return 0x6C65766564;
  }
}

uint64_t type metadata accessor for NotificationReceiptReporterEndpoint()
{
  result = qword_2811BD8D0;
  if (!qword_2811BD8D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_217A52890()
{
  result = sub_217D87BAC();
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

uint64_t sub_217A52980(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_217A529E8@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A481CC(0, &qword_27CBA0898);
  result = sub_217D88ADC();
  if (v6)
  {
    __swift_project_boxed_opaque_existential_1(v5, v6);
    *a2 = sub_217D88F6C() & 1;
    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t Tracker.chain(path:identifier:dynamicDataIdentifier:)(char *a1)
{
  v3 = *a1;
  EventPath.rawValue.getter();
  v1 = sub_217D8892C();

  return v1;
}

uint64_t EventPath.rawValue.getter()
{
  result = 0x7472656C61;
  switch(*v0)
  {
    case 1:
      return 0x656C6369747261;
    case 2:
    case 0x17:
      return 0xD000000000000014;
    case 3:
      return 0x6C63697472416E69;
    case 4:
      return 0x56656C6369747261;
    case 5:
    case 0xF:
      return 0xD000000000000016;
    case 6:
      return 0x676E696B61657262;
    case 7:
      v3 = 5;
      goto LABEL_46;
    case 8:
    case 0x1C:
    case 0x3A:
      return 0xD000000000000013;
    case 9:
      return 0x496C656E6E616863;
    case 0xA:
      return 0x6769536C69616D65;
    case 0xB:
      return 1684366694;
    case 0xC:
      return 0x7765695664656566;
    case 0xD:
      return 0x6E69776F6C6C6F66;
    case 0xE:
    case 0x1A:
    case 0x20:
    case 0x38:
    case 0x39:
      return 0xD000000000000011;
    case 0x10:
      return 0x6546756F59726F66;
    case 0x11:
      return 0x614D756F59726F66;
    case 0x12:
      return 0xD000000000000010;
    case 0x13:
      return 0x6F54756F59726F66;
    case 0x14:
      v2 = 1685217640;
      goto LABEL_29;
    case 0x15:
      return 0x79726F74736968;
    case 0x16:
      return 0x6575737369;
    case 0x18:
    case 0x2C:
    case 0x35:
      return 0xD000000000000012;
    case 0x19:
    case 0x1B:
    case 0x1D:
      return 0x656E697A6167616DLL;
    case 0x1E:
      return 0xD000000000000010;
    case 0x1F:
      return 0x697A6167614D796DLL;
    case 0x21:
      return 0x696C706552666470;
    case 0x22:
      return 0xD000000000000010;
    case 0x23:
      v3 = 9;
      goto LABEL_46;
    case 0x24:
      return 0xD000000000000010;
    case 0x25:
      return 0x6F4374726F706572;
    case 0x26:
      return 1953460082;
    case 0x27:
      return 0x6465766173;
    case 0x28:
      return 0x686372616573;
    case 0x29:
      return 0x6553686372616573;
    case 0x2A:
      return 0x6957646572616873;
    case 0x2B:
      v2 = 1952870259;
LABEL_29:
      result = v2 | 0x7779615000000000;
      break;
    case 0x2D:
      result = 0x456C616963657073;
      break;
    case 0x2E:
      result = 0xD000000000000010;
      break;
    case 0x2F:
      result = 0xD000000000000010;
      break;
    case 0x30:
      result = 0x64656546676174;
      break;
    case 0x31:
      result = 0x616C506F65646976;
      break;
    case 0x32:
      result = 0x6465626D45626577;
      break;
    case 0x33:
      result = 0x656D6F636C6577;
      break;
    case 0x34:
      result = 0x747241664F646E65;
      break;
    case 0x36:
      result = 0x6565466F69647561;
      break;
    case 0x37:
      result = 0xD000000000000010;
      break;
    case 0x3B:
      v3 = 10;
LABEL_46:
      result = v3 | 0xD000000000000010;
      break;
    case 0x3C:
      result = 0x656C7A7A7570;
      break;
    case 0x3D:
      result = 0x74756374726F6873;
      break;
    case 0x3E:
      result = 0x6E65746E49707061;
      break;
    case 0x3F:
      result = 0x657069636572;
      break;
    case 0x40:
      result = 0x6F42657069636572;
      break;
    case 0x41:
      result = 0x636552664F646E65;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_217A532C8()
{
  result = qword_2811C72C8;
  if (!qword_2811C72C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C72C8);
  }

  return result;
}

unint64_t sub_217A53320()
{
  result = qword_2811C72D0;
  if (!qword_2811C72D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C72D0);
  }

  return result;
}

id sub_217A53374(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D87FEC();
  result = sub_217D88ACC();
  if (result)
  {
    v3 = result;
    v4 = type metadata accessor for AppSessionObserver();
    v5 = objc_allocWithZone(v4);
    *&v5[OBJC_IVAR____TtC13NewsAnalytics18AppSessionObserver_appSessionManager] = v3;
    v6.receiver = v5;
    v6.super_class = v4;
    return objc_msgSendSuper2(&v6, sel_init);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_217A53408(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_217A49558(0, &qword_2811BCBC8, &protocolRef_NSSNewsAnalyticsSessionManager);
  result = sub_217D88ACC();
  if (result)
  {
    [result addAppSessionObserver_];

    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall AppSessionObserver.startAppSession(withUserIDReset:)(NSNumber withUserIDReset)
{
  [(objc_class *)withUserIDReset.super.super.isa BOOLValue];
  sub_217A535B4();
  v2 = sub_217D898DC();
  sub_217A53658(0, &qword_2811BC410, sub_217A53700);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_217D8D8F0;
  v4 = *(v1 + OBJC_IVAR____TtC13NewsAnalytics18AppSessionObserver_appSessionManager);
  v5 = sub_217D87FDC();
  v6 = MEMORY[0x277D839F0];
  *(v3 + 56) = MEMORY[0x277D839B0];
  *(v3 + 64) = v6;
  *(v3 + 32) = v5 & 1;
  sub_217D897FC();
  sub_217D88E5C();

  sub_217D87F8C();
}

unint64_t sub_217A535B4()
{
  result = qword_2811BCB80;
  if (!qword_2811BCB80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2811BCB80);
  }

  return result;
}

void sub_217A53600(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_217AE030C(255, a3);
    v4 = sub_217D89D0C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_217A53658(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_217D89D0C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_217A536AC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_217D89D0C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_217A53700()
{
  result = qword_2811BC3E0;
  if (!qword_2811BC3E0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2811BC3E0);
  }

  return result;
}

uint64_t sub_217A53764(uint64_t a1, void *a2)
{
  v2 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v3 = type metadata accessor for FlushAnalyticsBatchesStartupTask();
  result = sub_217D88ACC();
  if (result)
  {
    v5 = result;
    v6[3] = v3;
    v6[4] = sub_217B7CF60(&qword_2811C83C0, type metadata accessor for FlushAnalyticsBatchesStartupTask);
    v6[0] = v5;
    sub_217D88CBC();
    return __swift_destroy_boxed_opaque_existential_1(v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_217A5382C(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for AnalyticsApplicationStateMonitor();
  result = sub_217D88ACC();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = result;
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D8815C();
  result = sub_217D88ACC();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v6 = result;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D885DC();
  result = sub_217D88ACC();
  if (result)
  {
    v8 = result;
    type metadata accessor for FlushAnalyticsBatchesStartupTask();
    result = swift_allocObject();
    result[2] = v4;
    result[3] = v6;
    result[4] = v8;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_217A5391C(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D87FEC();
  result = sub_217D88ACC();
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D8889C();
  result = sub_217D88ACC();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A49558(0, &qword_2811C8930, &protocolRef_AAEndpointType);
  result = sub_217D88ACC();
  if (!result)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  sub_217D8815C();
  sub_217D8865C();
  v6 = sub_217D8864C();
  sub_217D87E5C();
  sub_217D87E4C();
  if (qword_2811C8BD8 != -1)
  {
    swift_once();
  }

  sub_217D87E3C();

  v7 = sub_217D8863C();

  sub_217D87E4C();
  if (qword_2811C8B30 != -1)
  {
    swift_once();
  }

  sub_217D87E3C();

  v8 = sub_217D8861C();

  sub_217D87E4C();
  if (qword_2811C8B78 != -1)
  {
    swift_once();
  }

  sub_217D87E3C();

  sub_217D8862C();

  v9 = sub_217D8878C();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  sub_217D8877C();
  return sub_217D8813C();
}

uint64_t sub_217A53BE8()
{
  v0 = sub_217D87EAC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_217D87EBC();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  (*(v8 + 104))(&v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D0A8]);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D090], v0);
  v13[15] = 0;
  sub_217A4EB0C(0, &qword_2811C8A50);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  result = sub_217D87F2C();
  qword_2811C8BE0 = result;
  return result;
}

uint64_t sub_217A53DB4()
{
  v0 = sub_217D87EAC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217A4EB0C(0, &qword_2811C8A48);
  v6[2] = 1;
  v6[3] = 50;
  v6[1] = 50;
  (*(v1 + 104))(v4, *MEMORY[0x277D6D090], v0);
  result = sub_217D87F0C();
  qword_2811C8B38 = result;
  return result;
}

uint64_t sub_217A53EF8()
{
  v0 = sub_217D87EAC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217A4EB0C(0, &qword_2811C8A48);
  v6[3] = 10;
  v6[2] = 5;
  v6[1] = 20;
  (*(v1 + 104))(v4, *MEMORY[0x277D6D090], v0);
  result = sub_217D87F0C();
  qword_2811C8B80 = result;
  return result;
}

uint64_t DynamicEndpoint.name.getter()
{
  v1 = *(v0 + 24);
  if (v1 <= 4)
  {
    if (v1 > 1)
    {
      if (v1 == 2)
      {
        return 0x676E6967617473;
      }

      if (v1 == 3)
      {
        return 24945;
      }

      return 1953719668;
    }

    if (v1 == 1)
    {
      return 0x69746375646F7270;
    }

    return 0x6E776F6E6B6E75;
  }

  if (v1 > 6)
  {
    switch(v1)
    {
      case 7:
        return 0x786F62646E6173;
      case 8:
        return 0x316F6D6564;
      case 9:
        return 0x326F6D6564;
    }

    return 0x6E776F6E6B6E75;
  }

  if (v1 == 5)
  {
    return 0x3164756F6C6369;
  }

  else
  {
    return 0x6C65766564;
  }
}

uint64_t sub_217A541D0()
{
  v1 = *v0;
  sub_217A55A08(0, &qword_2811BCF18, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  return sub_217D88DDC();
}

uint64_t sub_217A5424C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = *(a5 + 24);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_217A591D4;
  *(v10 + 24) = v8;

  sub_217D8814C();
}

uint64_t sub_217A54344()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_217A54380()
{
  sub_217A55EE0(319, &qword_2811BCE70, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_217A55EE0(319, &qword_2811BCCE8, MEMORY[0x277D84A28], MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_217A55EE0(319, &qword_2811BCD00, MEMORY[0x277D849A8], MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        sub_217A54548();
        if (v3 <= 0x3F)
        {
          sub_217A55EE0(319, &qword_2811C8438, MEMORY[0x277D839B0], MEMORY[0x277CEAE00]);
          if (v4 <= 0x3F)
          {
            sub_217A55EE0(319, &qword_2811C4038, &type metadata for AggregateStateMode, MEMORY[0x277D83D88]);
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

void sub_217A54548()
{
  if (!qword_2811BCD30)
  {
    sub_217A55EE0(255, &qword_2811BCD50, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    v0 = sub_217D898EC();
    if (!v1)
    {
      atomic_store(v0, &qword_2811BCD30);
    }
  }
}

uint64_t NotificationSettingsData.encode(to:)(void *a1)
{
  sub_217A548F0(0, &qword_2811BC5D0, MEMORY[0x277D84538]);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v20 - v7;
  v9 = *v1;
  v10 = *(v1 + 8);
  v20[5] = *(v1 + 9);
  v20[6] = v10;
  v11 = *(v1 + 10);
  v20[3] = *(v1 + 11);
  v20[4] = v11;
  v12 = *(v1 + 12);
  v20[1] = *(v1 + 13);
  v20[2] = v12;
  v20[0] = *(v1 + 14);
  v13 = *(v1 + 15);
  v14 = a1[3];
  v15 = a1[4];
  v16 = a1;
  v18 = v17;
  __swift_project_boxed_opaque_existential_1(v16, v14);
  sub_217A55ACC();

  sub_217D89E7C();
  v22 = v9;
  v21 = 0;
  sub_217A55F8C();
  sub_217A55FDC(&qword_2811BCD48);
  sub_217D89CAC();
  if (v2)
  {
  }

  else
  {

    LOBYTE(v22) = 1;
    sub_217D89C7C();
    LOBYTE(v22) = 2;
    sub_217D89C7C();
    LOBYTE(v22) = 3;
    sub_217D89C7C();
    LOBYTE(v22) = 4;
    sub_217D89C7C();
    LOBYTE(v22) = 5;
    sub_217D89C7C();
    LOBYTE(v22) = 6;
    sub_217D89C1C();
    LOBYTE(v22) = 7;
    sub_217D89C1C();
    LOBYTE(v22) = 8;
    sub_217D89C7C();
  }

  return (*(v5 + 8))(v8, v18);
}

void sub_217A548F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217A55ACC();
    v7 = a3(a1, &type metadata for NotificationSettingsData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

id sub_217A54954()
{
  v1 = *(v0 + OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_cloudContext);
  result = [v1 bundleSubscriptionManager];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = [result cachedSubscription];
  swift_unknownObjectRelease();
  _s13NewsAnalytics15SessionObserverC27bundleSubscriptionDidExpireyySo08FCBundleF0CF_0(v3);

  result = [v1 bundleSubscriptionManager];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  [result addObserver_];

  return swift_unknownObjectRelease();
}

uint64_t _s13NewsAnalytics15SessionObserverC27bundleSubscriptionDidExpireyySo08FCBundleF0CF_0(void *a1)
{
  sub_217A4DD40();
  v21 = *(v3 - 8);
  v22 = v3;
  v4 = *(v21 + 64);
  MEMORY[0x28223BE20](v3);
  v19 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  UserBundleSubscriptionContextData.init(bundleSubscription:)(a1, &v27);
  v20 = *(v1 + OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_sessionManager);
  sub_217D883AC();
  v23 = v27;
  v24 = v28;
  v25 = v29;
  v26 = v30;
  sub_217A4CA88();
  v18 = v6;
  v7 = sub_217D882DC();
  v8 = *(v7 - 8);
  v17 = *(v8 + 72);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_allocObject();
  v16 = xmmword_217D8D8F0;
  *(v10 + 16) = xmmword_217D8D8F0;
  v11 = *MEMORY[0x277CEAD10];
  v12 = *(v8 + 104);
  v12(v10 + v9, v11, v7);
  sub_217A4DD9C();
  sub_217D8890C();

  v23 = v27;
  v24 = v28;
  v25 = v29;
  v26 = v30;
  v13 = v19;
  sub_217D880EC();
  v14 = swift_allocObject();
  *(v14 + 16) = v16;
  v12(v14 + v9, v11, v7);
  sub_217D8835C();

  return (*(v21 + 8))(v13, v22);
}

unint64_t sub_217A54D08()
{
  result = qword_2811BDCE0;
  if (!qword_2811BDCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BDCE0);
  }

  return result;
}

id sub_217A54D60(void *a1, void *a2)
{
  sub_217A55D7C(0, &qword_2811C8A08, sub_217A55DDC);
  v26 = *(v5 - 8);
  v27 = v5;
  v6 = *(v26 + 64);
  MEMORY[0x28223BE20](v5);
  v25 = v20 - v7;
  result = [*(v2 + OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_cloudContext) purchaseController];
  if (result)
  {
    v9 = result;
    v10 = *(v2 + OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_fsidProvider);
    swift_unknownObjectRetain();
    sub_217A550D0(a1, a2, v9, v10, &v32);
    v24 = *(v2 + OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_sessionManager);
    sub_217D883AC();
    v28 = v32;
    v29 = v33;
    v30 = v34;
    v31 = v35;
    sub_217A4CA88();
    v23 = v11;
    v12 = sub_217D882DC();
    v13 = *(v12 - 8);
    v22 = *(v13 + 72);
    v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v15 = swift_allocObject();
    v21 = xmmword_217D8D8F0;
    *(v15 + 16) = xmmword_217D8D8F0;
    v16 = *MEMORY[0x277CEAD10];
    v17 = *(v13 + 104);
    v17(v15 + v14, v16, v12);
    v20[1] = "v48@0:8@16@24@32@40";
    sub_217A55DDC();
    sub_217D8890C();

    v28 = v32;
    v29 = v33;
    v30 = v34;
    v31 = v35;
    v18 = v25;
    sub_217D880EC();
    v19 = swift_allocObject();
    *(v19 + 16) = v21;
    v17(v19 + v14, v16, v12);
    sub_217D8835C();

    return (*(v26 + 8))(v18, v27);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_217A550D0(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, _DWORD *a5@<X8>)
{
  v75 = a4;
  v76 = a2;
  v72 = a5;
  v7 = sub_217D87B3C();
  v74 = *(v7 - 8);
  v8 = *(v74 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = a1;
  v11 = [a1 cachedSubscribedTags];
  if (v11)
  {
    v12 = v11;
    sub_217A4F4B4();
    v13 = sub_217D896EC();
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v81 = v10;
  v82 = v7;
  v73 = a3;
  if (v13 >> 62)
  {
    goto LABEL_98;
  }

  v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
  v15 = 0;
  v77 = 0;
  v78 = 0;
  v16 = v13 & 0xC000000000000001;
LABEL_7:
  while (2)
  {
    v17 = v15;
    do
    {
      if (v14 == v17)
      {
        goto LABEL_24;
      }

      if (v16)
      {
        v18 = MEMORY[0x21CEAD080](v17, v13);
        v15 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_92;
        }
      }

      else
      {
        if (v17 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_93;
        }

        v18 = *(v13 + 8 * v17 + 32);
        swift_unknownObjectRetain();
        v15 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
LABEL_92:
          __break(1u);
LABEL_93:
          __break(1u);
LABEL_94:
          __break(1u);
LABEL_95:
          __break(1u);
LABEL_96:
          __break(1u);
LABEL_97:
          __break(1u);
LABEL_98:
          v14 = sub_217D89AAC();
          goto LABEL_6;
        }
      }

      if ([v18 asChannel])
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v20 = __OFADD__(v78++, 1);
        if (!v20)
        {
          goto LABEL_7;
        }

        goto LABEL_107;
      }

      v19 = [v18 asTopic];
      swift_unknownObjectRelease();
      ++v17;
    }

    while (!v19);
    swift_unknownObjectRelease();
    v20 = __OFADD__(v77++, 1);
    if (!v20)
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_24:
  v21 = [v76 orderedShortcuts];
  v22 = v81;
  sub_217D897BC();
  sub_217A4DF64();
  v23 = v82;
  sub_217D8990C();
  if (v88)
  {
    v79 = 0;
    v80 = 0;
    while (1)
    {
      sub_217B2C754(&v87, v86);
      sub_217AE02B0(v86, v85);
      sub_217BB3B98();
      if (swift_dynamicCast())
      {
        v24 = v84;
        if ([v84 shortcutType])
        {
        }

        else
        {
          v25 = [v24 identifier];
          if (!v25)
          {
            sub_217D8954C();
            v25 = sub_217D8951C();
          }

          v26 = [v83 subscribedTagForTagID_];

          if (v26)
          {
            v27 = [v26 isSports];
            swift_unknownObjectRelease();

            if (v27)
            {
              v22 = v81;
              v23 = v82;
              if (__OFADD__(v79, 1))
              {
                goto LABEL_96;
              }

              ++v79;
            }

            else
            {
              v22 = v81;
              v23 = v82;
              if (__OFADD__(v80, 1))
              {
                goto LABEL_97;
              }

              ++v80;
            }
          }

          else
          {

            v22 = v81;
            v23 = v82;
          }
        }
      }

      __swift_destroy_boxed_opaque_existential_1(v86);
      sub_217D8990C();
      if (!v88)
      {
        goto LABEL_40;
      }
    }
  }

  v79 = 0;
  v80 = 0;
LABEL_40:

  (*(v74 + 8))(v22, v23);
  v28 = [v83 mutedTagIDs];
  if (v28)
  {
    v29 = v28;
    v82 = sub_217D896EC();
  }

  else
  {
    v82 = MEMORY[0x277D84F90];
  }

  v30 = &selRef_pushOrientationData;
  v31 = [v75 feldsparID];
  if (!v31)
  {
    LODWORD(v81) = 0;
    if (v14)
    {
      goto LABEL_47;
    }

    goto LABEL_65;
  }

  v32 = v31;
  v33 = sub_217D8954C();
  v35 = v34;

  *&v87 = v33;
  *(&v87 + 1) = v35;
  sub_217A4EBC4();
  v36 = sub_217D8994C();

  if (v36 < 0)
  {
    v20 = __OFSUB__(0, v36);
    v36 = -v36;
    if (v20)
    {
      goto LABEL_109;
    }
  }

  LODWORD(v81) = v36 % 100 < 94;
  if (!v14)
  {
LABEL_65:
    v38 = MEMORY[0x277D84F90];
    goto LABEL_66;
  }

LABEL_47:
  v37 = 0;
  v38 = MEMORY[0x277D84F90];
  do
  {
    v39 = v37;
    while (1)
    {
      if (v16)
      {
        v40 = MEMORY[0x21CEAD080](v39, v13);
        v37 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
          goto LABEL_94;
        }
      }

      else
      {
        if (v39 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_95;
        }

        v40 = *(v13 + 8 * v39 + 32);
        swift_unknownObjectRetain();
        v37 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
          goto LABEL_94;
        }
      }

      if (![v40 v30[46]])
      {
        break;
      }

      swift_unknownObjectRelease();
      ++v39;
      if (v37 == v14)
      {
        goto LABEL_66;
      }
    }

    v41 = [v40 identifier];
    v42 = sub_217D8954C();
    v44 = v43;

    swift_unknownObjectRelease();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v38 = sub_217B5AD14(0, *(v38 + 2) + 1, 1, v38);
    }

    v46 = *(v38 + 2);
    v45 = *(v38 + 3);
    if (v46 >= v45 >> 1)
    {
      v38 = sub_217B5AD14((v45 > 1), v46 + 1, 1, v38);
    }

    *(v38 + 2) = v46 + 1;
    v47 = &v38[16 * v46];
    *(v47 + 4) = v42;
    *(v47 + 5) = v44;
    v30 = &selRef_pushOrientationData;
  }

  while (v37 != v14);
LABEL_66:
  if (v78 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_100;
  }

  if (v78 > 0x7FFFFFFF)
  {
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v48 = v77;
  if (v77 < 0xFFFFFFFF80000000)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  if (v77 > 0x7FFFFFFF)
  {
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  v49 = [v83 portraitExcludedAutoFavoriteTagIDs];
  if (!v49)
  {
    goto LABEL_110;
  }

  v50 = v49;
  v51 = sub_217D896EC();

  v52 = v73;
  v53 = v82;
  if (v81)
  {

    v54 = v53;
  }

  else
  {
    v54 = 0;
  }

  if (v80 < 0xFFFFFFFF80000000)
  {
    goto LABEL_103;
  }

  if (v80 > 0x7FFFFFFF)
  {
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  if (v79 < 0xFFFFFFFF80000000)
  {
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  if (v79 > 0x7FFFFFFF)
  {
LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  v55 = [v52 allPurchasedTagIDs];
  if (!v55)
  {
    goto LABEL_83;
  }

  v56 = [v52 allPurchasedTagIDs];
  if (v56)
  {
    v57 = v56;

    v58 = sub_217D8973C();

    v59 = *(v58 + 16);
    if (!v59)
    {
      goto LABEL_84;
    }

    v60 = sub_217B5B63C(*(v58 + 16), 0);
    v61 = sub_217BB3A38(&v87, v60 + 4, v59, v58);
    sub_217BB3B90();
    if (v61 != v59)
    {
      __break(1u);
LABEL_83:

LABEL_84:

      v60 = MEMORY[0x277D84F90];
    }

    v62 = [v52 webAccessOptedInTagIDs];
    if (!v62)
    {
      swift_unknownObjectRelease();
      v66 = MEMORY[0x277D84F90];
      goto LABEL_91;
    }

    v63 = v62;
    v64 = sub_217D8973C();

    v65 = *(v64 + 16);
    if (!v65)
    {
      swift_unknownObjectRelease();

      v66 = MEMORY[0x277D84F90];
      v48 = v77;
      goto LABEL_91;
    }

    v66 = sub_217B5B63C(*(v64 + 16), 0);
    v67 = sub_217BB3A38(&v87, v66 + 4, v65, v64);
    sub_217BB3B90();
    v48 = v77;
    if (v67 == v65)
    {
      swift_unknownObjectRelease();
LABEL_91:

      v68 = v72;
      v69 = v79;
      *v72 = v78;
      v68[1] = v48;
      *(v68 + 1) = v38;
      *(v68 + 2) = v51;
      *(v68 + 3) = v60;
      *(v68 + 4) = v66;
      *(v68 + 5) = v54;
      v70 = v80;
      v68[12] = v69;
      v68[13] = v70;
      return;
    }

LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
  }

  __break(1u);
}

void sub_217A55A08(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_217A55ACC()
{
  result = qword_2811BF7D0[0];
  if (!qword_2811BF7D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811BF7D0);
  }

  return result;
}

unint64_t sub_217A55B38()
{
  result = qword_2811BF7C0;
  if (!qword_2811BF7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BF7C0);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

unint64_t sub_217A55B98()
{
  result = qword_2811BDCE8;
  if (!qword_2811BDCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BDCE8);
  }

  return result;
}

void UserBundleSubscriptionContextData.init(bundleSubscription:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 unprotectedSubscriptionState];
  if (v4 >= 4)
  {
    sub_217D89A9C();
    __break(1u);
  }

  else
  {
    v5 = v4;
    v6 = [a1 bundlePurchaseID];
    if (v6)
    {
      v7 = v6;
      v8 = sub_217D8954C();
      v10 = v9;
    }

    else
    {
      v8 = 0;
      v10 = 0;
    }

    v11 = [a1 isPurchaser];
    v12 = [a1 isAmplifyUser];
    v13 = [a1 servicesBundlePurchaseID];
    if (v13)
    {
      v14 = v13;
      v15 = sub_217D8954C();
      v17 = v16;
    }

    else
    {
      v15 = 0;
      v17 = 0;
    }

    v18 = 0x3030201u >> (8 * v5);
    v19 = [a1 isPaidBundleViaOfferActivated];

    *a2 = v18;
    *(a2 + 8) = v8;
    *(a2 + 16) = v10;
    *(a2 + 24) = v11;
    *(a2 + 25) = v12;
    *(a2 + 32) = v15;
    *(a2 + 40) = v17;
    *(a2 + 48) = v19;
  }
}

void sub_217A55D7C(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_217D880FC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_217A55DDC()
{
  result = qword_2811C4CF0;
  if (!qword_2811C4CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C4CF0);
  }

  return result;
}

unint64_t sub_217A55E38()
{
  result = qword_2811C4CE8;
  if (!qword_2811C4CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C4CE8);
  }

  return result;
}

void sub_217A55E90(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_217A55EE0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_217A55F38()
{
  result = qword_2811BF7C8;
  if (!qword_2811BF7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BF7C8);
  }

  return result;
}

void sub_217A55F8C()
{
  if (!qword_2811BCD50)
  {
    v0 = sub_217D8971C();
    if (!v1)
    {
      atomic_store(v0, &qword_2811BCD50);
    }
  }
}

uint64_t sub_217A55FDC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_217A55F8C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_217A5603C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_217CC4AC4(255, &qword_2811BCD50, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_217A560C0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_217D01FD8(255, &qword_2811BCD50);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for UserData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_217A561E8(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v3 = 0x734449676174;
    v4 = 0xD000000000000022;
    if (a1 == 2)
    {
      v4 = 0xD00000000000001ELL;
    }

    if (a1)
    {
      v3 = 0xD00000000000001DLL;
    }

    if (a1 <= 1u)
    {
      return v3;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v1 = 0xD00000000000001BLL;
    if (a1 == 7)
    {
      v1 = 0xD00000000000001CLL;
    }

    if (a1 == 6)
    {
      v1 = 0xD000000000000013;
    }

    if (a1 <= 5u)
    {
      return 0xD00000000000001ELL;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_217A5635C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for HeartbeatEventService();
  result = sub_217D88ACC();
  if (result)
  {
    v5 = result;
    result = sub_217A56968(&qword_2811C0FC8);
    *a2 = v5;
    a2[1] = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_217A56400()
{
  v0 = sub_217D88D5C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HeartbeatEventService();
  sub_217D88CEC();
  sub_217D88A5C();

  (*(v1 + 104))(v4, *MEMORY[0x277D6CF00], v0);
  sub_217D88A7C();

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_217A5656C(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A5664C();
  result = sub_217D88ACC();
  if (result)
  {
    v4 = result;
    v5 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_217A481CC(0, &qword_2811BDCD0);
    result = sub_217D88ADC();
    if (v7)
    {
      type metadata accessor for HeartbeatEventService();
      swift_allocObject();
      return sub_217A56698(v4, &v6);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_217A5664C()
{
  result = qword_2811BCCB0;
  if (!qword_2811BCCB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2811BCCB0);
  }

  return result;
}

uint64_t sub_217A56698(uint64_t a1, __int128 *a2)
{
  v15 = a1;
  v16 = a2;
  v14 = sub_217D8981C();
  v3 = *(v14 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(sub_217D8980C() - 8) + 64);
  MEMORY[0x28223BE20]();
  v8 = *(*(sub_217D88FAC() - 8) + 64);
  MEMORY[0x28223BE20]();
  v9 = sub_217A569F4();
  v13[0] = "ConditionsProvider";
  v13[1] = v9;
  sub_217D88F9C();
  v17 = MEMORY[0x277D84F90];
  sub_217A569AC(&unk_2811BCC58, 255, MEMORY[0x277D85230]);
  v10 = MEMORY[0x277D85230];
  sub_217A56914(0, &qword_2811BCD10, MEMORY[0x277D85230]);
  sub_217A56A40(&qword_2811BCD08, &qword_2811BCD10, v10);
  sub_217D8997C();
  (*(v3 + 104))(v6, *MEMORY[0x277D85260], v14);
  *(v2 + 64) = sub_217D8984C();
  v11 = v16;
  *(v2 + 16) = v15;
  sub_217A517E4(v11, v2 + 24);
  return v2;
}

void sub_217A56914(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_217D8971C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_217A56968(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HeartbeatEventService();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_217A569AC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_217A569F4()
{
  result = qword_2811BCC50;
  if (!qword_2811BCC50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2811BCC50);
  }

  return result;
}

uint64_t sub_217A56A40(unint64_t *a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_217A56914(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_217A56A90(uint64_t a1, uint64_t a2)
{
  result = sub_217A569AC(&qword_2811C0FD0, a2, type metadata accessor for HeartbeatEventService);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_217A56AE8(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_217A481CC(0, &qword_2811BCF58);
  result = sub_217D88ADC();
  if (v6)
  {
    sub_217A517E4(&v5, v7);
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    sub_217A56968(&qword_2811C0FD0);
    sub_217D88D0C();
    __swift_destroy_boxed_opaque_existential_1(&v5);
    return __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_217A56BD0(void *a1)
{
  sub_217A56F84();
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  MEMORY[0x28223BE20](v3);
  v29 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = 0;
  v37 = 0xE000000000000000;
  [a1 frame];
  v32 = v6;
  v33 = v7;
  v34 = v8;
  v35 = v9;
  type metadata accessor for CGRect(0);
  sub_217D89A8C();
  v10 = v36;
  v11 = v37;
  v26 = v37;
  v27 = v36;
  v28 = *(v1 + OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_sessionManager);
  sub_217D883AC();
  v32 = v10;
  v33 = v11;
  sub_217A4CA88();
  v25 = v12;
  v13 = sub_217D882DC();
  v14 = *(v13 - 8);
  v24 = *(v14 + 72);
  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v16 = swift_allocObject();
  v23 = xmmword_217D8D8F0;
  *(v16 + 16) = xmmword_217D8D8F0;
  v17 = *MEMORY[0x277CEAD10];
  v18 = *(v14 + 104);
  v18(v16 + v15, v17, v13);
  v22[1] = "v48@0:8@16@24@32^v40";
  sub_217A56FE0();
  sub_217D8890C();

  v32 = v27;
  v33 = v26;
  v19 = v29;
  sub_217D880EC();
  v20 = swift_allocObject();
  *(v20 + 16) = v23;
  v18(v20 + v15, v17, v13);
  sub_217D8835C();

  return (*(v30 + 8))(v19, v31);
}

void SessionObserver.window.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_217A56BD0(Strong);
    v5 = sub_217D8951C();
    [v4 addObserver:v1 forKeyPath:v5 options:1 context:0];

    sub_217A4CAE8();
  }
}

void sub_217A56F84()
{
  if (!qword_2811C8968)
  {
    sub_217A56FE0();
    v0 = sub_217D880FC();
    if (!v1)
    {
      atomic_store(v0, &qword_2811C8968);
    }
  }
}

unint64_t sub_217A56FE0()
{
  result = qword_2811C7E48;
  if (!qword_2811C7E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7E48);
  }

  return result;
}

unint64_t sub_217A57038()
{
  result = qword_2811C7E38;
  if (!qword_2811C7E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7E38);
  }

  return result;
}

unint64_t sub_217A57090()
{
  result = qword_2811C7E40;
  if (!qword_2811C7E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7E40);
  }

  return result;
}

unint64_t sub_217A5722C()
{
  result = qword_2811BCC40;
  if (!qword_2811BCC40)
  {
    type metadata accessor for NSKeyValueChangeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BCC40);
  }

  return result;
}

uint64_t sub_217A572CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_217A5731C()
{
  v1 = *v0;
  sub_217D8954C();
  sub_217D89E1C();
  sub_217D895CC();
  v2 = sub_217D89E3C();

  return v2;
}

void SessionObserver.observeValue(forKeyPath:of:change:context:)(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  if (!a2)
  {
LABEL_10:
    sub_217A575F8(a3, v22);
    v12 = v23;
    if (v23)
    {
      v13 = __swift_project_boxed_opaque_existential_1(v22, v23);
      v14 = *(v12 - 8);
      v15 = *(v14 + 64);
      MEMORY[0x28223BE20](v13);
      v17 = &v19 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v14 + 16))(v17);
      v18 = sub_217D89D2C();
      (*(v14 + 8))(v17, v12);
      __swift_destroy_boxed_opaque_existential_1(v22);
      if (!a4)
      {
LABEL_13:
        v21.receiver = v5;
        v21.super_class = ObjectType;
        objc_msgSendSuper2(&v21, sel_observeValueForKeyPath_ofObject_change_context_, a2, v18, a4, a5);

        swift_unknownObjectRelease();
        return;
      }
    }

    else
    {
      v18 = 0;
      if (!a4)
      {
        goto LABEL_13;
      }
    }

    type metadata accessor for NSKeyValueChangeKey(0);
    sub_217A5722C();
    a4 = sub_217D8947C();
    goto LABEL_13;
  }

  if ((a1 != 0x656D617266 || a2 != 0xE500000000000000) && (sub_217D89D4C() & 1) == 0)
  {
    a2 = sub_217D8951C();
    goto LABEL_10;
  }

  sub_217A575F8(a3, v22);
  if (v23)
  {
    sub_217A576B0();
    if (swift_dynamicCast())
    {
      sub_217A56BD0(v20);
    }
  }

  else
  {
    sub_217A576FC(v22);
  }
}

uint64_t sub_217A575F8(uint64_t a1, uint64_t a2)
{
  sub_217A5765C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_217A5765C()
{
  if (!qword_2811BC3D0)
  {
    v0 = sub_217D898EC();
    if (!v1)
    {
      atomic_store(v0, &qword_2811BC3D0);
    }
  }
}

unint64_t sub_217A576B0()
{
  result = qword_2811BCB88;
  if (!qword_2811BCB88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2811BCB88);
  }

  return result;
}

uint64_t sub_217A576FC(uint64_t a1)
{
  sub_217A5765C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217A5776C()
{
  sub_217A5796C();
  v1 = v0;
  v2 = *(v0 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v0);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217A57AD4();
  sub_217A4C0D4(0, &qword_2811BC490, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v6 = sub_217D882DC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_217D8D8F0;
  (*(v7 + 104))(v10 + v9, *MEMORY[0x277CEAD10], v6);
  sub_217A579D0();
  sub_217D8854C();

  return (*(v2 + 8))(v5, v1);
}

void sub_217A5796C()
{
  if (!qword_2811C8940)
  {
    sub_217A579D0();
    v0 = sub_217D880FC();
    if (!v1)
    {
      atomic_store(v0, &qword_2811C8940);
    }
  }
}

unint64_t sub_217A579D0()
{
  result = qword_2811BD3C0;
  if (!qword_2811BD3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD3C0);
  }

  return result;
}

unint64_t sub_217A57A28()
{
  result = qword_2811BD3B0;
  if (!qword_2811BD3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD3B0);
  }

  return result;
}

unint64_t sub_217A57A80()
{
  result = qword_2811BD3B8;
  if (!qword_2811BD3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD3B8);
  }

  return result;
}

uint64_t sub_217A57AD4()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_client);
  v3 = sub_217D8888C();
  v5 = v4;
  v6 = sub_217D8886C();
  v8 = v7;
  sub_217A4C040(v1 + OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_appExtensionCommunicator, v15);
  v9 = v16;
  if (v16)
  {
    v10 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    v14[3] = &type metadata for AppData;
    v14[4] = sub_217A579D0();
    v11 = swift_allocObject();
    v14[0] = v11;
    v11[2] = v3;
    v11[3] = v5;
    v11[4] = v6;
    v11[5] = v8;
    v12 = *(v10 + 8);

    v12(v14, v9, v10);
    __swift_destroy_boxed_opaque_existential_1(v14);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    sub_217A50680(v15);
  }

  v15[0] = v3;
  v15[1] = v5;
  v15[2] = v6;
  v16 = v8;
  sub_217A579D0();
  return sub_217D880EC();
}

uint64_t sub_217A57C34()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_217A57C80()
{
  sub_217A57E88();
  v1 = v0;
  v2 = *(v0 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v0);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217A57FE8();
  sub_217A4C0D4(0, &qword_2811BC490, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v6 = sub_217D882DC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_217D8D8F0;
  (*(v7 + 104))(v10 + v9, *MEMORY[0x277CEAD10], v6);
  sub_217A57EE4();
  sub_217D8854C();

  return (*(v2 + 8))(v5, v1);
}

void sub_217A57E88()
{
  if (!qword_2811C8970)
  {
    sub_217A57EE4();
    v0 = sub_217D880FC();
    if (!v1)
    {
      atomic_store(v0, &qword_2811C8970);
    }
  }
}

unint64_t sub_217A57EE4()
{
  result = qword_2811C7F88;
  if (!qword_2811C7F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7F88);
  }

  return result;
}

unint64_t sub_217A57F3C()
{
  result = qword_2811C7F78;
  if (!qword_2811C7F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7F78);
  }

  return result;
}

unint64_t sub_217A57F94()
{
  result = qword_2811C7F80;
  if (!qword_2811C7F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7F80);
  }

  return result;
}

void sub_217A57FE8()
{
  v0 = MEMORY[0x21CEAD550]();
  v22 = sub_217D8954C();
  v2 = v1;
  v3 = objc_opt_self();
  v4 = [v3 currentDevice];
  UIDevice.devicePlatform.getter(v34);

  v5 = v34[0];
  sub_217D88A9C();
  v6 = sub_217D88A8C();
  v7 = NSSNTPBAnalyticsOsVersionValue();
  v8 = sub_217D8954C();
  v10 = v9;
  v11 = [v3 currentDevice];
  v12 = [v11 na_buildVersion];

  if (v12)
  {
    if (v6)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    v14 = sub_217D8954C();
    v16 = v15;

    *&v30 = v22;
    *(&v30 + 1) = v2;
    LOBYTE(v31) = v5;
    BYTE1(v31) = v13;
    *(&v31 + 1) = v8;
    *&v32 = v10;
    *(&v32 + 1) = v14;
    v33 = v16;
    sub_217A4C040(v23 + OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_appExtensionCommunicator, v27);
    v17 = v28;
    if (v28)
    {
      v18 = v29;
      __swift_project_boxed_opaque_existential_1(v27, v28);
      v24[3] = &type metadata for DeviceData;
      v24[4] = sub_217A57EE4();
      v19 = swift_allocObject();
      v24[0] = v19;
      v20 = v31;
      *(v19 + 16) = v30;
      *(v19 + 32) = v20;
      *(v19 + 48) = v32;
      *(v19 + 64) = v33;
      v21 = *(v18 + 8);
      sub_217A61B90(&v30, v25);
      v21(v24, v17, v18);
      __swift_destroy_boxed_opaque_existential_1(v24);
      __swift_destroy_boxed_opaque_existential_1(v27);
    }

    else
    {
      sub_217A50680(v27);
    }

    v25[0] = v30;
    v25[1] = v31;
    v25[2] = v32;
    v26 = v33;
    sub_217A57EE4();
    sub_217D880EC();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_217A58240()
{
  v1 = v0[3];

  v2 = v0[6];

  v3 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t UIDevice.devicePlatform.getter@<X0>(char *a1@<X8>)
{
  v3 = [v1 systemName];
  v4 = sub_217D8954C();
  v6 = v5;

  v7 = v4 == 5459817 && v6 == 0xE300000000000000;
  if (v7 || (sub_217D89D4C() & 1) != 0)
  {

    v9 = 1;
  }

  else
  {
    v10 = v4 == 0x534F64615069 && v6 == 0xE600000000000000;
    if (v10 || (sub_217D89D4C() & 1) != 0)
    {

      v9 = 2;
    }

    else if (v4 == 0x534F63616DLL && v6 == 0xE500000000000000)
    {

      v9 = 3;
    }

    else
    {
      v12 = sub_217D89D4C();

      if (v12)
      {
        v9 = 3;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  *a1 = v9;
  return result;
}

uint64_t sub_217A583D8(uint64_t a1, void *a2)
{
  v3 = sub_217D87CCC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a2 adsUserID];
  if (v8)
  {
    v9 = v8;
    v10 = sub_217D8954C();
    v12 = v11;
  }

  else
  {
    sub_217D87CBC();
    v10 = sub_217D87CAC();
    v12 = v13;
    (*(v4 + 8))(v7, v3);
  }

  v20[0] = v10;
  v20[1] = v12;
  sub_217A50774(0, &qword_2811BC490, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v14 = sub_217D882DC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 72);
  v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_217D8D8F0;
  (*(v15 + 104))(v18 + v17, *MEMORY[0x277CEAD10], v14);
  sub_217A58624();
  sub_217D8820C();
}

unint64_t sub_217A58624()
{
  result = qword_2811C7FD0;
  if (!qword_2811C7FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7FD0);
  }

  return result;
}

unint64_t sub_217A5867C()
{
  result = qword_2811C7FB8;
  if (!qword_2811C7FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7FB8);
  }

  return result;
}

unint64_t sub_217A586D4()
{
  result = qword_2811C7FC0;
  if (!qword_2811C7FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7FC0);
  }

  return result;
}

id sub_217A58728(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_217A58F90();
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v71 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217A50774(0, &qword_2811C8C80, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v65 - v15;
  v17 = sub_217D87C9C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v73 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v65 - v23;
  MEMORY[0x28223BE20](v22);
  v72 = &v65 - v25;
  result = [a2 feldsparID];
  if (!result)
  {
    return result;
  }

  v68 = a4;
  v69 = v10;
  v70 = a1;
  v27 = result;
  v67 = sub_217D8954C();
  v66 = v28;

  v29 = [*(a3 + OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_onboardingVersion) integerValue];
  v30 = [a2 userStartDate];
  if (v30)
  {
    v31 = v30;
    sub_217D87C7C();

    v32 = *(v18 + 32);
    v32(v16, v24, v17);
    (*(v18 + 56))(v16, 0, 1, v17);
    v32(v72, v16, v17);
  }

  else
  {
    (*(v18 + 56))(v16, 1, 1, v17);
    sub_217D87C8C();
    if ((*(v18 + 48))(v16, 1, v17) != 1)
    {
      sub_217A5B548(v16, &qword_2811C8C80, MEMORY[0x277CC9578]);
    }
  }

  sub_217D87C2C();
  sub_217D87C1C();
  v33 = [a2 isUsingPlaceholderFSID];
  if (v29 <= 0)
  {
    v34 = 1;
  }

  else
  {
    v34 = 2;
  }

  result = sub_217D87C6C();
  v36 = v35 * 1000.0;
  if (COERCE__INT64(fabs(v35 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_27;
  }

  if (v36 <= -9.22337204e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v36 >= 9.22337204e18)
  {
LABEL_28:
    __break(1u);
    return result;
  }

  v37 = objc_opt_self();
  v38 = [v37 ageGroup];
  if (v38)
  {
    v39 = v38;
    v40 = [v38 intValue];
  }

  else
  {
    v40 = 0;
  }

  v41 = [v37 gender];
  if (v41)
  {
    v42 = v41;
    v43 = [v41 intValue];
  }

  else
  {
    v43 = 0;
  }

  v65 = v9;
  v44 = [objc_opt_self() sharedAccount];
  v45 = [v44 contentStoreFrontID];

  if (v45)
  {
    v46 = sub_217D8954C();
    v48 = v47;
  }

  else
  {
    v49 = *MEMORY[0x277D30CB8];
    v46 = sub_217D8954C();
    v48 = v50;
  }

  *&v79 = v67;
  *(&v79 + 1) = v66;
  LOBYTE(v80) = v33;
  BYTE1(v80) = v34;
  *(&v80 + 1) = v36;
  *&v81 = v40 | 0x3F80000000000000;
  *(&v81 + 1) = v43 | 0x3F80000000000000;
  *&v82 = v46;
  *(&v82 + 1) = v48;
  sub_217A4C040(v68, v76);
  v51 = v77;
  if (v77)
  {
    v52 = v78;
    __swift_project_boxed_opaque_existential_1(v76, v77);
    v74[3] = &type metadata for UserData;
    v74[4] = sub_217A58FEC();
    v53 = swift_allocObject();
    v74[0] = v53;
    v54 = v80;
    v53[1] = v79;
    v53[2] = v54;
    v55 = v82;
    v53[3] = v81;
    v53[4] = v55;
    v56 = *(v52 + 8);
    sub_217A6395C(&v79, v75);
    v56(v74, v51, v52);
    __swift_destroy_boxed_opaque_existential_1(v74);
    __swift_destroy_boxed_opaque_existential_1(v76);
  }

  else
  {
    sub_217A5B548(v76, &qword_2811BD5A0, sub_217A4E60C);
  }

  v57 = v65;
  v75[0] = v79;
  v75[1] = v80;
  v75[2] = v81;
  v75[3] = v82;
  sub_217A58FEC();
  v58 = v71;
  sub_217D880EC();
  sub_217A50774(0, &qword_2811BC490, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v59 = sub_217D882DC();
  v60 = *(v59 - 8);
  v61 = *(v60 + 72);
  v62 = (*(v60 + 80) + 32) & ~*(v60 + 80);
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_217D8D8F0;
  (*(v60 + 104))(v63 + v62, *MEMORY[0x277CEAD10], v59);
  sub_217D8854C();

  (*(v69 + 8))(v58, v57);
  v64 = *(v18 + 8);
  v64(v73, v17);
  return (v64)(v72, v17);
}

uint64_t sub_217A58F40()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 72);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

void sub_217A58F90()
{
  if (!qword_2811C8990)
  {
    sub_217A58FEC();
    v0 = sub_217D880FC();
    if (!v1)
    {
      atomic_store(v0, &qword_2811C8990);
    }
  }
}

unint64_t sub_217A58FEC()
{
  result = qword_2811BD258;
  if (!qword_2811BD258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD258);
  }

  return result;
}

unint64_t sub_217A59044()
{
  result = qword_2811BD248;
  if (!qword_2811BD248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD248);
  }

  return result;
}

unint64_t sub_217A5909C()
{
  result = qword_2811BD250;
  if (!qword_2811BD250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD250);
  }

  return result;
}

uint64_t sub_217A590F0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_217A59118()
{
  if (qword_2811C7888 != -1)
  {
    swift_once();
  }

  sub_217D897FC();
  sub_217D88E5C();

  return sub_217A592FC();
}

uint64_t sub_217A591DC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_217A59228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = [objc_opt_self() mainBundle];
  v6 = [v5 bundleIdentifier];

  if (v6)
  {
    sub_217D8954C();
  }

  sub_217A535B4();
  result = sub_217D898CC();
  *a4 = result;
  return result;
}

uint64_t sub_217A592FC()
{
  v1 = sub_217D88F7C();
  v50 = *(v1 - 8);
  v51 = v1;
  v2 = *(v50 + 64);
  MEMORY[0x28223BE20](v1);
  v48 = v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_217D88FAC();
  v47 = *(v49 - 8);
  v4 = *(v47 + 64);
  MEMORY[0x28223BE20](v49);
  v46 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_217D87BAC();
  v52 = *(v6 - 8);
  v7 = *(v52 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v9 = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v44 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v44 - v14;
  MEMORY[0x28223BE20](v13);
  v53 = v44 - v16;
  v17 = v0[2];
  v18 = [objc_msgSend(v17 appConfigurationManager)];
  swift_unknownObjectRelease();
  if (([v18 respondsToSelector_] & 1) == 0)
  {
    swift_unknownObjectRelease();
LABEL_11:
    if (qword_2811C7888 == -1)
    {
LABEL_12:
      sub_217D897FC();
LABEL_13:

      return sub_217D88E5C();
    }

LABEL_24:
    swift_once();
    goto LABEL_12;
  }

  v19 = [v18 foregroundHeartbeatEventEnabled];
  swift_unknownObjectRelease();
  if ((v19 & 1) == 0)
  {
    goto LABEL_11;
  }

  v20 = v0[6];
  v21 = v0[7];
  v45 = v0;
  __swift_project_boxed_opaque_existential_1(v0 + 3, v20);
  if (((*(v21 + 8))(v20, v21) & 1) == 0)
  {
    if (qword_2811C7888 == -1)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

  v22 = [objc_msgSend(v17 appConfigurationManager)];
  swift_unknownObjectRelease();
  if (([v22 respondsToSelector_] & 1) == 0)
  {
    swift_unknownObjectRelease();
    if (qword_2811C7888 != -1)
    {
      swift_once();
    }

    sub_217D897DC();
    goto LABEL_13;
  }

  v23 = [v22 appAnalyticsAppHeartbeatEndpointUrlForEnvironment_];
  swift_unknownObjectRelease();
  sub_217D87B8C();

  v24 = v52;
  v25 = v6;
  v44[0] = *(v52 + 32);
  (v44[0])(v53, v15, v6);
  if (qword_2811C7888 != -1)
  {
    swift_once();
  }

  v26 = qword_2811C7890;
  sub_217D897FC();
  v44[1] = v26;
  sub_217D88E5C();
  v28 = v24 + 16;
  v27 = *(v24 + 16);
  v27(v12, v53, v25);
  v27(v9, v12, v25);
  v29 = (*(v28 + 64) + 24) & ~*(v28 + 64);
  v30 = swift_allocObject();
  v31 = v45;
  *(v30 + 16) = v45;
  (v44[0])(v30 + v29, v12, v25);

  v32 = [objc_msgSend(v17 appConfigurationManager)];
  swift_unknownObjectRelease();
  if (([v32 respondsToSelector_] & 1) == 0)
  {
    v52 = *(v52 + 8);
    (v52)(v9, v25);
    swift_unknownObjectRelease();
    goto LABEL_22;
  }

  v33 = [v32 foregroundHeartbeatEventShouldUseQueue];
  swift_unknownObjectRelease();
  if (v33)
  {
    v52 = *(v52 + 8);
    (v52)(v9, v25);
LABEL_22:
    v44[0] = v25;
    sub_217D897FC();
    v35 = MEMORY[0x277D84F90];
    sub_217D88E5C();
    v36 = *(v31 + 64);
    v37 = swift_allocObject();
    *(v37 + 16) = sub_217A59D4C;
    *(v37 + 24) = v30;
    aBlock[4] = sub_217A590F0;
    aBlock[5] = v37;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_217A59D08;
    aBlock[3] = &block_descriptor_0;
    v38 = _Block_copy(aBlock);

    v39 = v46;
    sub_217D88F8C();
    v54 = v35;
    sub_217A569AC(&qword_2811BCF00, 255, MEMORY[0x277D85198]);
    v40 = MEMORY[0x277D85198];
    sub_217A56914(0, &qword_2811BCD60, MEMORY[0x277D85198]);
    sub_217A56A40(&qword_2811BCD58, &qword_2811BCD60, v40);
    v41 = v48;
    v42 = v51;
    sub_217D8997C();
    MEMORY[0x21CEACEB0](0, v39, v41, v38);
    _Block_release(v38);

    (*(v50 + 8))(v41, v42);
    (*(v47 + 8))(v39, v49);
    (v52)(v53, v44[0]);
  }

  sub_217D897FC();
  sub_217D88E5C();
  sub_217A59DB0(v31, v9);

  v43 = *(v52 + 8);
  v43(v9, v25);
  return (v43)(v53, v25);
}

uint64_t sub_217A59C0C()
{
  v1 = sub_217D87BAC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_217A59CD0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_217A59D08(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_217A59D4C()
{
  v1 = *(sub_217D87BAC() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_217A59DB0(v2, v3);
}

void sub_217A59DB0(uint64_t a1, uint64_t a2)
{
  v71 = a2;
  v3 = sub_217D8859C();
  v73 = *(v3 - 8);
  v74 = v3;
  v4 = *(v73 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_217D87CCC();
  v7 = *(v75 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v75);
  v68 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v57 - v11;
  v13 = sub_217D87C9C();
  v62 = *(v13 - 8);
  v63 = v13;
  v14 = *(v62 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v67 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v57 - v17;
  v19 = type metadata accessor for HeartbeatData();
  v20 = *(*(v19 - 1) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = (&v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v66 = type metadata accessor for HeartbeatEvent.Model(0);
  v23 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66);
  v25 = &v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2811C7888 != -1)
  {
    swift_once();
  }

  v26 = qword_2811C7890;
  sub_217D897FC();
  v70 = v26;
  sub_217D88E5C();
  v64 = sub_217A5A65C(a1);
  v65 = v27;
  v28 = [*(a1 + 16) userInfo];
  v29 = [v28 feldsparID];

  v72 = v6;
  v69 = v25;
  if (v29)
  {
    v59 = sub_217D8954C();
    v58 = v30;
  }

  else
  {
    v59 = 0;
    v58 = 0xE000000000000000;
  }

  v31 = v75;
  v32 = v7;
  sub_217D87C8C();
  sub_217D87CBC();
  v33 = sub_217D87CAC();
  v35 = v34;
  v36 = *(v32 + 8);
  v60 = v32 + 8;
  v61 = v36;
  v36(v12, v31);
  v37 = NSSNTPBAnalyticsOsVersionValue();
  v38 = sub_217D8954C();
  v40 = v39;
  v41 = [objc_opt_self() currentDevice];
  v42 = [v41 na_buildVersion];

  if (v42)
  {

    v43 = sub_217D8954C();
    v45 = v44;

    v46 = v58;
    *v22 = v59;
    v22[1] = v46;
    (*(v62 + 32))(v22 + v19[5], v18, v63);
    v47 = (v22 + v19[6]);
    *v47 = v33;
    v47[1] = v35;
    v48 = (v22 + v19[7]);
    *v48 = v38;
    v48[1] = v40;
    v49 = (v22 + v19[8]);
    *v49 = v43;
    v49[1] = v45;
    v50 = v69;
    sub_217A5AA4C(v22, v69);
    v51 = objc_opt_self();
    v52 = [v51 mainBundle];
    sub_217D8988C();

    sub_217D8889C();
    v53 = [v51 mainBundle];
    v54 = sub_217D8887C();
    sub_217D87C8C();
    v55 = v68;
    sub_217D87CBC();
    sub_217D87CAC();
    v61(v55, v75);
    v56 = v72;
    sub_217D8858C();
    sub_217A569AC(&qword_2811C6F08, 255, type metadata accessor for HeartbeatEvent.Model);
    sub_217D8857C();

    (*(v73 + 8))(v56, v74);
    sub_217A5AAB0(v50);
  }

  else
  {
    __break(1u);
  }
}

uint64_t type metadata accessor for HeartbeatData()
{
  result = qword_2811C7268;
  if (!qword_2811C7268)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_217A5A4FC()
{
  result = sub_217D87C9C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_217A5A59C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_217A5A5D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_217A5A65C(uint64_t *a1)
{
  v1 = *a1;
  sub_217D88A9C();
  v2 = sub_217D88A8C();
  result = 0;
  v4 = 0;
  if (v2)
  {
    if (qword_2811C8BA0 != -1)
    {
      swift_once();
    }

    sub_217A569AC(qword_2811C0FD8, v4, type metadata accessor for HeartbeatEventService);
    sub_217D87DCC();
    if (v5 == 1)
    {
      if (qword_2811C7888 != -1)
      {
        swift_once();
      }

      sub_217D897FC();
      sub_217D88E5C();
      return 0xD00000000000002BLL;
    }

    else
    {
      if (qword_2811C7888 != -1)
      {
        swift_once();
      }

      sub_217D897FC();
      sub_217D88E5C();
      return 0;
    }
  }

  return result;
}

uint64_t sub_217A5A850()
{
  v0 = sub_217D87EAC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_217D87EBC();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  (*(v8 + 104))(&v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D0A8]);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D090], v0);
  v13[15] = 0;
  sub_217A4EB0C(0, &qword_2811C8A50);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  result = sub_217D87F2C();
  qword_2811C8BA8 = result;
  return result;
}

uint64_t sub_217A5AA4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeartbeatData();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_217A5AAB0(uint64_t a1)
{
  v2 = type metadata accessor for HeartbeatEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_217A5AB34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217A5AD0C();
    v7 = a3(a1, &type metadata for HeartbeatEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217A5AB98(void *a1)
{
  sub_217A5AB34(0, &qword_2811BC790, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A5AD0C();
  sub_217D89E7C();
  type metadata accessor for HeartbeatData();
  sub_217A5AE10(&qword_2811C7278);
  sub_217D89CAC();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_217A5AD0C()
{
  result = qword_2811C6F20[0];
  if (!qword_2811C6F20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811C6F20);
  }

  return result;
}

unint64_t sub_217A5AD64()
{
  result = qword_2811C6F10;
  if (!qword_2811C6F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C6F10);
  }

  return result;
}

unint64_t sub_217A5ADBC()
{
  result = qword_2811C6F18;
  if (!qword_2811C6F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C6F18);
  }

  return result;
}

uint64_t sub_217A5AE10(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HeartbeatData();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t HeartbeatData.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217A5B0B0(0, &qword_2811BC7C8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v26[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A5B1AC();
  sub_217D89E7C();
  v12 = *v3;
  v13 = v3[1];
  v26[15] = 0;
  sub_217D89C6C();
  if (!v2)
  {
    v14 = type metadata accessor for HeartbeatData();
    v15 = v14[5];
    v26[14] = 1;
    sub_217D87C9C();
    sub_217A5B3A8(&qword_2811C8C90, MEMORY[0x277CC9578]);
    sub_217D89CAC();
    v16 = (v3 + v14[6]);
    v17 = *v16;
    v18 = v16[1];
    v26[13] = 2;
    sub_217D89C6C();
    v19 = (v3 + v14[7]);
    v20 = *v19;
    v21 = v19[1];
    v26[12] = 3;
    sub_217D89C6C();
    v22 = (v3 + v14[8]);
    v23 = *v22;
    v24 = v22[1];
    v26[11] = 4;
    sub_217D89C6C();
  }

  return (*(v7 + 8))(v10, v6);
}

void sub_217A5B0B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217A5B1AC();
    v7 = a3(a1, &type metadata for HeartbeatData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

_WORD *storeEnumTagSinglePayload for StartMethodData.CodingKeys(_WORD *result, int a2, int a3)
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

unint64_t sub_217A5B1AC()
{
  result = qword_2811C7290;
  if (!qword_2811C7290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7290);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StartMethodData.CodingKeys(unsigned int *a1, int a2)
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

unint64_t sub_217A5B254()
{
  result = qword_2811C7280;
  if (!qword_2811C7280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7280);
  }

  return result;
}

unint64_t sub_217A5B2AC()
{
  result = qword_2811C7288;
  if (!qword_2811C7288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7288);
  }

  return result;
}

uint64_t sub_217A5B300()
{
  v1 = *v0;
  v2 = 0x444972657375;
  v3 = 0x4449746E657665;
  v4 = 0x6F6973726556736FLL;
  if (v1 != 3)
  {
    v4 = 0x656C646E7542736FLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6D617473656D6974;
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

uint64_t sub_217A5B3A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_217A5B3F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for InterfaceOrientation(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_217A5B4EC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_217BF181C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_217A5B548(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_217A50774(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t objectdestroy_2Tm()
{
  if (*(v0 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  }

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_217A5B61C(uint64_t a1, uint64_t a2, void *a3)
{
  sub_217A5B8B0();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217A5BAE8(a3);
  sub_217A4CA88();
  v10 = sub_217D882DC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_217D8D8F0;
  (*(v11 + 104))(v14 + v13, *MEMORY[0x277CEAD10], v10);
  sub_217A5B924();
  sub_217D8854C();

  return (*(v6 + 8))(v9, v5);
}

uint64_t storeEnumTagSinglePayload for InterfaceOrientation(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_217A5B8B0()
{
  if (!qword_2811C89E0)
  {
    sub_217A5B924();
    v0 = sub_217D880FC();
    if (!v1)
    {
      atomic_store(v0, &qword_2811C89E0);
    }
  }
}

unint64_t sub_217A5B924()
{
  result = qword_2811C0DB8;
  if (!qword_2811C0DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C0DB8);
  }

  return result;
}

unint64_t sub_217A5B978()
{
  result = qword_2811BD310;
  if (!qword_2811BD310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD310);
  }

  return result;
}

unint64_t sub_217A5B9D4()
{
  result = qword_2811C0DA8;
  if (!qword_2811C0DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C0DA8);
  }

  return result;
}

unint64_t sub_217A5BA2C()
{
  result = qword_2811BD318;
  if (!qword_2811BD318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD318);
  }

  return result;
}

unint64_t sub_217A5BA80()
{
  result = qword_2811C0DB0;
  if (!qword_2811C0DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C0DB0);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_217A5BAE8(void *a1)
{
  if ([a1 respondsToSelector_])
  {
    v2 = [a1 engagementCohortsExpField];
    if (v2)
    {
      v3 = v2;
      sub_217D8954C();
    }
  }

  if ([a1 respondsToSelector_])
  {
    v4 = [a1 conversionCohortsExpField];
    if (v4)
    {
      v5 = v4;
      sub_217D8954C();
    }
  }

  sub_217A5B924();
  return sub_217D880EC();
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t objectdestroyTm_0()
{
  v1 = sub_217D8908C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t objectdestroyTm_1()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

unint64_t sub_217A5BD70()
{
  result = qword_2811C8020;
  if (!qword_2811C8020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C8020);
  }

  return result;
}

uint64_t sub_217A5BDC4()
{
  sub_217A5BF98();
  v1 = v0;
  v2 = *(v0 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v0);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217A5C248();
  sub_217A4CA88();
  v6 = sub_217D882DC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_217D8D8F0;
  (*(v7 + 104))(v10 + v9, *MEMORY[0x277CEAD10], v6);
  sub_217A5C054();
  sub_217D8854C();

  return (*(v2 + 8))(v5, v1);
}

void sub_217A5BF98()
{
  if (!qword_2811C8948)
  {
    sub_217A5C054();
    v0 = sub_217D880FC();
    if (!v1)
    {
      atomic_store(v0, &qword_2811C8948);
    }
  }
}

unint64_t sub_217A5BFF4()
{
  result = qword_2811C8028;
  if (!qword_2811C8028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C8028);
  }

  return result;
}

unint64_t sub_217A5C054()
{
  result = qword_2811C7B08;
  if (!qword_2811C7B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7B08);
  }

  return result;
}

unint64_t sub_217A5C0E4()
{
  result = qword_2811C7AF8;
  if (!qword_2811C7AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7AF8);
  }

  return result;
}

unint64_t sub_217A5C138()
{
  result = qword_2811BD150;
  if (!qword_2811BD150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD150);
  }

  return result;
}

uint64_t sub_217A5C190()
{
  v1 = *v0;
  sub_217D89E1C();
  GroupType.rawValue.getter();
  sub_217D895CC();

  return sub_217D89E3C();
}

unint64_t sub_217A5C1F4()
{
  result = qword_2811C7B00;
  if (!qword_2811C7B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7B00);
  }

  return result;
}

uint64_t sub_217A5C248()
{
  swift_getObjectType();
  if (qword_2811C8AE8 != -1)
  {
    swift_once();
  }

  sub_217A4D6B4();
  sub_217D87DCC();
  if (qword_2811C8AD0 != -1)
  {
    swift_once();
  }

  sub_217D87DCC();
  if (v2 > 1)
  {
    sub_217CB24AC(v1, v2);
  }

  sub_217A5C054();
  return sub_217D880EC();
}

uint64_t GroupType.rawValue.getter()
{
  result = 0x6E776F6E6B6E75;
  switch(*v0)
  {
    case 1:
      v2 = 1634891107;
      return v2 | 0x64657400000000;
    case 2:
      return 0x657061707377656ELL;
    case 3:
      return 0x77654E6C61636F6CLL;
    case 4:
      return 0x6957646572616873;
    case 5:
    case 0x57:
      return 0x676E69646E657274;
    case 6:
      return 0x697A6167614D796DLL;
    case 7:
      return 0x6465727574616566;
    case 8:
      return 0x736575737369;
    case 9:
      return 0x6369706F74;
    case 0xA:
      return 0x6465727574616566;
    case 0xB:
      return 0xD000000000000014;
    case 0xC:
    case 0x46:
      return 0xD000000000000011;
    case 0xD:
      return 0x657573734977656ELL;
    case 0xE:
      v6 = 1953460339;
      return v6 | 0x6867696C00000000;
    case 0xF:
      return 0x676E696B61657262;
    case 0x10:
      return 0x456C616963657073;
    case 0x11:
      return 0x4C656C6369747261;
    case 0x12:
    case 0x1F:
      return 0xD000000000000012;
    case 0x13:
      return 0x7542664F74736562;
    case 0x14:
      return 0xD000000000000010;
    case 0x15:
      return 0x6C656E6E616863;
    case 0x16:
      return 0x69726F7453706F74;
    case 0x17:
      return 0x6D6F724665726F6DLL;
    case 0x18:
      return 0x6D6F724665726F6DLL;
    case 0x19:
      return 0x65526F5465726F6DLL;
    case 0x1A:
      v2 = 1634493810;
      return v2 | 0x64657400000000;
    case 0x1B:
      return 0x756F59726F66;
    case 0x1C:
      return 0xD000000000000010;
    case 0x1D:
      return 0x6F7661466F747561;
    case 0x1E:
      return 0x697242796C696164;
    case 0x20:
      return 0x4E70556F69647561;
    case 0x21:
      return 0x726F466F69647561;
    case 0x22:
    case 0x2A:
    case 0x3F:
      return 0xD000000000000013;
    case 0x23:
      return 0x59726F4665726F6DLL;
    case 0x24:
      return 0x6F6C6C6F4677656ELL;
    case 0x25:
      v4 = 0x74736574616CLL;
      return v4 & 0xFFFFFFFFFFFFLL | 0x7453000000000000;
    case 0x26:
      return 25697;
    case 0x27:
      return 0x746E6F436E656573;
    case 0x28:
      v4 = 0x64657373696DLL;
      return v4 & 0xFFFFFFFFFFFFLL | 0x7453000000000000;
    case 0x29:
      return 0xD000000000000010;
    case 0x2B:
      return 0x6C6C6177796170;
    case 0x2C:
      v6 = 1751607656;
      return v6 | 0x6867696C00000000;
    case 0x2D:
    case 0x32:
      return 0x7374726F7053796DLL;
    case 0x2E:
      return 0x72656874616577;
    case 0x2F:
      return 0x65527374726F7073;
    case 0x30:
      return 0xD000000000000010;
    case 0x31:
      v5 = 0x7374726F7073;
      return v5 & 0xFFFFFFFFFFFFLL | 0x6F54000000000000;
    case 0x33:
      return 0x536C656E6E616863;
    case 0x34:
      return 0xD000000000000017;
    case 0x35:
      return 0x536F546F72746E69;
    case 0x36:
      return 0x63537374726F7073;
    case 0x37:
      return 0x63537374726F7073;
    case 0x38:
      return 0x74537374726F7073;
    case 0x39:
      return 0x72427374726F7073;
    case 0x3A:
      return 0xD000000000000010;
    case 0x3B:
      return 0x76457374726F7073;
    case 0x3C:
      return 0x6F427374726F7073;
    case 0x3D:
      return 0xD000000000000010;
    case 0x3E:
      return 0xD000000000000016;
    case 0x40:
      return 0x74756374726F6873;
    case 0x41:
      return 0xD000000000000010;
    case 0x42:
      return 0x694C656C7A7A7570;
    case 0x43:
      return 0x7241656C7A7A7570;
    case 0x44:
    case 0x56:
      return 0xD000000000000015;
    case 0x45:
      return 0x6546656C7A7A7570;
    case 0x47:
      return 0xD000000000000010;
    case 0x48:
      return 0x4664656546676174;
    case 0x49:
      return 0xD000000000000010;
    case 0x4A:
      return 0x5265746144676174;
    case 0x4B:
      v5 = 0x6E4965726F6DLL;
      return v5 & 0xFFFFFFFFFFFFLL | 0x6F54000000000000;
    case 0x4C:
      return 0x694C7374726F7073;
    case 0x4D:
      return 0x614D7374726F7073;
    case 0x4E:
      return 0xD000000000000010;
    case 0x4F:
      return 0x7974696E69666661;
    case 0x50:
      return 0x65726F736E6F7073;
    case 0x51:
      return 0x6F74536465766173;
    case 0x52:
      return 0x506C656E6E616863;
    case 0x53:
      return 0x655274736574616CLL;
    case 0x54:
      v3 = 0x526465766173;
      goto LABEL_51;
    case 0x55:
      return 0x526C656E6E616863;
    case 0x58:
      return 0x41646574616C6572;
    case 0x59:
      return 0x52646574616C6572;
    case 0x5A:
      return 0x6F54657069636572;
    case 0x5B:
      return 1685024614;
    case 0x5C:
      v3 = 0x526369706F74;
LABEL_51:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6365000000000000;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217A5CF44()
{
  v0 = sub_217D87EAC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_217D87EBC();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  (*(v8 + 104))(&v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D0A8]);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D090], v0);
  v13[15] = 0;
  sub_217A5D0F8();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  result = sub_217D87F2C();
  qword_2811C8AF0 = result;
  return result;
}

void sub_217A5D0F8()
{
  if (!qword_2811C8A50)
  {
    v0 = sub_217D87F1C();
    if (!v1)
    {
      atomic_store(v0, &qword_2811C8A50);
    }
  }
}

uint64_t sub_217A5D154()
{
  v0 = sub_217D87EAC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_217D87EBC();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  (*(v8 + 104))(v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D0A8]);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D090], v0);
  sub_217D23BBC();
  v13[0] = 0;
  v13[1] = 0;
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  result = sub_217D87F2C();
  qword_2811C8AD8 = result;
  return result;
}

unint64_t sub_217A5D308()
{
  result = qword_2811BD180;
  if (!qword_2811BD180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD180);
  }

  return result;
}

unint64_t sub_217A5D360()
{
  result = qword_2811C8AF8;
  if (!qword_2811C8AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C8AF8);
  }

  return result;
}

unint64_t sub_217A5D3B4()
{
  result = qword_2811BD188;
  if (!qword_2811BD188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD188);
  }

  return result;
}

unint64_t sub_217A5D41C()
{
  result = qword_2811C8B00;
  if (!qword_2811C8B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C8B00);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11TeaSettings0B0C13NewsAnalyticsE12AppIconBadgeV0efG6SourceO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_217A5D48C()
{
  result = qword_2811C4340;
  if (!qword_2811C4340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C4340);
  }

  return result;
}

uint64_t sub_217A5D4E4@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = 0xE400000000000000;
      v4 = 1937204590;
    }

    else
    {
      v5 = a1;
      result = MEMORY[0x21CEACC70](*v1);
      a1 = v5;
      v4 = 0x7972756372656DLL;
      v3 = 0xE700000000000000;
    }
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0x6E776F6E6B6E75;
  }

  a1[3] = MEMORY[0x277D837D0];
  *a1 = v4;
  a1[1] = v3;
  return result;
}

unint64_t sub_217A5D580()
{
  result = qword_2811C4348;
  if (!qword_2811C4348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C4348);
  }

  return result;
}

uint64_t sub_217A5D5D4(uint64_t a1, unsigned int a2)
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

void sub_217A5D638()
{
  if (!qword_2811C8950)
  {
    sub_217A5D904();
    v0 = sub_217D880FC();
    if (!v1)
    {
      atomic_store(v0, &qword_2811C8950);
    }
  }
}

uint64_t sub_217A5D698(uint64_t a1, void *a2)
{
  sub_217A5D638();
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217A5DAC8(a2, &v16);
  sub_217A5D904();
  sub_217D880EC();
  sub_217A4CA88();
  v9 = sub_217D882DC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_217D8D8F0;
  (*(v10 + 104))(v13 + v12, *MEMORY[0x277CEAD10], v9);
  sub_217D8854C();

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_217A5D8AC()
{
  result = qword_2811C1C78;
  if (!qword_2811C1C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C1C78);
  }

  return result;
}

unint64_t sub_217A5D904()
{
  result = qword_2811C78D0;
  if (!qword_2811C78D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C78D0);
  }

  return result;
}

unint64_t sub_217A5D95C()
{
  result = qword_2811C1C80;
  if (!qword_2811C1C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C1C80);
  }

  return result;
}

unint64_t sub_217A5D9C0()
{
  result = qword_2811C78C0;
  if (!qword_2811C78C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C78C0);
  }

  return result;
}

unint64_t sub_217A5DA1C()
{
  result = qword_2811C78C8;
  if (!qword_2811C78C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C78C8);
  }

  return result;
}

unint64_t sub_217A5DA70()
{
  result = qword_2811C4D58;
  if (!qword_2811C4D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C4D58);
  }

  return result;
}

void sub_217A5DAC8(void *a1@<X0>, char *a2@<X8>)
{
  v4 = *MEMORY[0x277D76830];
  v5 = sub_217D8954C();
  v7 = v6;
  if (v5 == sub_217D8954C() && v7 == v8)
  {

    goto LABEL_8;
  }

  v10 = sub_217D89D4C();

  if (v10)
  {

LABEL_8:
    v11 = 1;
    goto LABEL_9;
  }

  v12 = *MEMORY[0x277D76858];
  v13 = sub_217D8954C();
  v15 = v14;
  if (v13 == sub_217D8954C() && v15 == v16)
  {

    v11 = 2;
  }

  else
  {
    v18 = sub_217D89D4C();

    if (v18)
    {

      v11 = 2;
    }

    else
    {
      v19 = *MEMORY[0x277D76840];
      v20 = sub_217D8954C();
      v22 = v21;
      if (v20 == sub_217D8954C() && v22 == v23)
      {

        v11 = 3;
      }

      else
      {
        v24 = sub_217D89D4C();

        if (v24)
        {

          v11 = 3;
        }

        else
        {
          v25 = *MEMORY[0x277D76838];
          v26 = sub_217D8954C();
          v28 = v27;
          if (v26 == sub_217D8954C() && v28 == v29)
          {

            v11 = 4;
          }

          else
          {
            v30 = sub_217D89D4C();

            if (v30)
            {

              v11 = 4;
            }

            else
            {
              v31 = *MEMORY[0x277D76828];
              v32 = sub_217D8954C();
              v34 = v33;
              if (v32 == sub_217D8954C() && v34 == v35)
              {

                v11 = 5;
              }

              else
              {
                v36 = sub_217D89D4C();

                if (v36)
                {

                  v11 = 5;
                }

                else
                {
                  v37 = *MEMORY[0x277D76820];
                  v38 = sub_217D8954C();
                  v40 = v39;
                  if (v38 == sub_217D8954C() && v40 == v41)
                  {

                    v11 = 6;
                  }

                  else
                  {
                    v42 = sub_217D89D4C();

                    if (v42)
                    {

                      v11 = 6;
                    }

                    else
                    {
                      v43 = *MEMORY[0x277D76818];
                      v44 = sub_217D8954C();
                      v46 = v45;
                      if (v44 == sub_217D8954C() && v46 == v47)
                      {

                        v11 = 7;
                      }

                      else
                      {
                        v48 = sub_217D89D4C();

                        if (v48)
                        {

                          v11 = 7;
                        }

                        else
                        {
                          v49 = *MEMORY[0x277D76808];
                          v50 = sub_217D8954C();
                          v52 = v51;
                          if (v50 == sub_217D8954C() && v52 == v53)
                          {

                            v11 = 8;
                          }

                          else
                          {
                            v54 = sub_217D89D4C();

                            if (v54)
                            {

                              v11 = 8;
                            }

                            else
                            {
                              v55 = *MEMORY[0x277D76800];
                              v56 = sub_217D8954C();
                              v58 = v57;
                              if (v56 == sub_217D8954C() && v58 == v59)
                              {

                                v11 = 9;
                              }

                              else
                              {
                                v60 = sub_217D89D4C();

                                if (v60)
                                {

                                  v11 = 9;
                                }

                                else
                                {
                                  v61 = *MEMORY[0x277D767F8];
                                  v62 = sub_217D8954C();
                                  v64 = v63;
                                  if (v62 == sub_217D8954C() && v64 == v65)
                                  {

                                    v11 = 10;
                                  }

                                  else
                                  {
                                    v66 = sub_217D89D4C();

                                    if (v66)
                                    {

                                      v11 = 10;
                                    }

                                    else
                                    {
                                      v67 = *MEMORY[0x277D767F0];
                                      v68 = sub_217D8954C();
                                      v70 = v69;
                                      if (v68 == sub_217D8954C() && v70 == v71)
                                      {

                                        v11 = 11;
                                      }

                                      else
                                      {
                                        v72 = sub_217D89D4C();

                                        if (v72)
                                        {

                                          v11 = 11;
                                        }

                                        else
                                        {
                                          v73 = *MEMORY[0x277D767E8];
                                          v74 = sub_217D8954C();
                                          v76 = v75;
                                          if (v74 == sub_217D8954C() && v76 == v77)
                                          {

                                            v11 = 12;
                                          }

                                          else
                                          {
                                            v78 = sub_217D89D4C();

                                            if (v78)
                                            {
                                              v11 = 12;
                                            }

                                            else
                                            {
                                              v11 = 0;
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

LABEL_9:
  *a2 = v11;
}

unint64_t sub_217A5E184()
{
  result = qword_2811C4D60;
  if (!qword_2811C4D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C4D60);
  }

  return result;
}

uint64_t sub_217A5E2EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_217A5E340(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_217A5E388(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
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
      *(result + 144) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_217A5E3EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_217A5E430(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_217A5E48C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 134) = 0;
    *(result + 132) = 0;
    *(result + 128) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 135) = 1;
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

    *(result + 135) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_217A5E4F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_217A5E544(uint64_t result, int a2, int a3)
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

uint64_t sub_217A5E580(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t static Action.present(_:)@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v8 = *a1;
  *a2 = EventPath.rawValue.getter();
  a2[1] = v3;
  v4 = *MEMORY[0x277CEAE50];
  v5 = sub_217D8885C();
  v6 = *(*(v5 - 8) + 104);

  return v6(a2, v4, v5);
}

uint64_t sub_217A5E688(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = GroupType.rawValue.getter();
  v4 = v3;
  if (v2 == GroupType.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_217D89D4C();
  }

  return v7 & 1;
}

unint64_t sub_217A5E738()
{
  result = qword_2811BD208;
  if (!qword_2811BD208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD208);
  }

  return result;
}

unint64_t sub_217A5E790()
{
  result = qword_2811BD210;
  if (!qword_2811BD210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD210);
  }

  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

void sub_217A5E818()
{
  sub_217D8899C();
  if (v0 <= 0x3F)
  {
    sub_217A5E974(319, &qword_2811C78F0);
    if (v1 <= 0x3F)
    {
      sub_217A5E974(319, &qword_2811C7A98);
      if (v2 <= 0x3F)
      {
        sub_217A5E974(319, &qword_2811C4F30);
        if (v3 <= 0x3F)
        {
          sub_217A5E974(319, &qword_2811C1A08);
          if (v4 <= 0x3F)
          {
            sub_217A5E974(319, &qword_2811BF670);
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

void sub_217A5E974(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_217D898EC();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}