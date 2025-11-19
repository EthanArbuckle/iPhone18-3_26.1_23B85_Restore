unint64_t sub_22B740B8C()
{
  result = qword_27D8CE660;
  if (!qword_27D8CE660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CE660);
  }

  return result;
}

uint64_t sub_22B740BE0()
{
  v0 = sub_22B7DC4B8();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_22B740C34()
{
  v0 = sub_22B7DB2B8();
  sub_22B6F24F4(v0, qword_28141F038);
  sub_22B4CFA74(v0, qword_28141F038);
  return sub_22B7DB2A8();
}

id sub_22B740CB8()
{
  result = [objc_allocWithZone(IMDAnalyticsBackgroundTaskMonitor) init];
  qword_28141F020 = result;
  return result;
}

uint64_t sub_22B740D48()
{
  v10 = sub_22B7DBD48();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22B7DBD38();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_22B7DB398();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9[1] = sub_22B4D01A0(0, &qword_28141F210, 0x277D85C78);
  sub_22B7DB378();
  v11 = MEMORY[0x277D84F90];
  sub_22B7421BC(&unk_28141F220, MEMORY[0x277D85230]);
  sub_22B6F0AD4(&qword_27D8CEA10, &qword_22B7F9DC0);
  sub_22B4D1110(&qword_28141F2C0, &qword_27D8CEA10, &qword_22B7F9DC0);
  sub_22B7DC138();
  (*(v0 + 104))(v3, *MEMORY[0x277D85260], v10);
  result = sub_22B7DBD88();
  qword_28141F058 = result;
  return result;
}

id sub_22B740FA8()
{
  v1 = sub_22B7DB348();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22B7DB398();
  v6 = *(v21 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v21);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25.receiver = v0;
  v25.super_class = IMDAnalyticsBackgroundTaskMonitor;
  v10 = objc_msgSendSuper2(&v25, sel_init);
  v11 = qword_28141F050;
  v12 = v10;
  if (v11 != -1)
  {
    swift_once();
  }

  v20 = qword_28141F058;
  v13 = swift_allocObject();
  v22 = v12;
  *(v13 + 16) = v12;
  aBlock[4] = sub_22B741C98;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B4D22C0;
  aBlock[3] = &unk_283F1D668;
  v14 = _Block_copy(aBlock);
  sub_22B7DACD8();
  v23 = MEMORY[0x277D84F90];
  sub_22B7421BC(&qword_28141F340, MEMORY[0x277D85198]);
  sub_22B6F0AD4(&unk_27D8CF580, &unk_22B7FB880);
  sub_22B4D1110(&qword_28141F2E0, &unk_27D8CF580, &unk_22B7FB880);
  sub_22B7DC138();
  MEMORY[0x2318956F0](0, v9, v5, v14);
  _Block_release(v14);
  (*(v2 + 8))(v5, v1);
  (*(v6 + 8))(v9, v21);

  if (qword_28141F030 != -1)
  {
    swift_once();
  }

  v15 = sub_22B7DB2B8();
  sub_22B4CFA74(v15, qword_28141F038);
  v16 = sub_22B7DB298();
  v17 = sub_22B7DBC78();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_22B4CC000, v16, v17, "queued startTrackingRCSSwitchStates(). Heading back...", v18, 2u);
    MEMORY[0x231898D60](v18, -1, -1);
  }

  return v22;
}

uint64_t sub_22B74136C(uint64_t a1)
{
  v2 = sub_22B7DC408();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22B7DC3F8();
  v17 = a1;
  sub_22B7421BC(&qword_28141EFC0, MEMORY[0x277D85928]);
  sub_22B7DC5A8();
  if (qword_28141F030 != -1)
  {
    swift_once();
  }

  v7 = sub_22B7DB2B8();
  sub_22B4CFA74(v7, qword_28141F038);
  v8 = sub_22B7DB298();
  v9 = sub_22B7DBC78();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136315138;
    v12 = sub_22B7DC6D8();
    v14 = sub_22B4CFAAC(v12, v13, &v18);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_22B4CC000, v8, v9, "startTrackingRCSSwitchStates() took %s", v10, 0xCu);
    sub_22B4CFB78(v11);
    MEMORY[0x231898D60](v11, -1, -1);
    MEMORY[0x231898D60](v10, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

void sub_22B7415C8()
{
  aBlock[6] = *MEMORY[0x277D85DE8];
  if (qword_28141F030 != -1)
  {
    swift_once();
  }

  v1 = sub_22B7DB2B8();
  sub_22B4CFA74(v1, qword_28141F038);
  v2 = sub_22B7DB298();
  v3 = sub_22B7DBC78();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_22B4CC000, v2, v3, "Start tracking RCS Switch states", v4, 2u);
    MEMORY[0x231898D60](v4, -1, -1);
  }

  v5 = objc_opt_self();
  v6 = [v5 sharedScheduler];
  v7 = sub_22B7DB678();
  if (qword_28141F050 != -1)
  {
    swift_once();
  }

  v8 = qword_28141F058;
  v9 = swift_allocObject();
  v9[2] = v0;
  aBlock[4] = sub_22B741D34;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B74C9E0;
  aBlock[3] = &unk_283F1D6B8;
  v10 = _Block_copy(aBlock);
  v11 = v0;

  [v6 registerForTaskWithIdentifier:v7 usingQueue:v8 launchHandler:v10];
  _Block_release(v10);

  v12 = sub_22B7DB298();
  v13 = sub_22B7DBC78();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    aBlock[0] = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_22B4CFAAC(0xD000000000000022, 0x800000022B80F660, aBlock);
    _os_log_impl(&dword_22B4CC000, v12, v13, "Successfully registered task %s", v14, 0xCu);
    sub_22B4CFB78(v15);
    MEMORY[0x231898D60](v15, -1, -1);
    MEMORY[0x231898D60](v14, -1, -1);
  }

  v16 = [v5 sharedScheduler];
  v17 = sub_22B7DB678();
  v18 = [v16 taskRequestForIdentifier_];

  if (v18)
  {
    v19 = sub_22B7DB298();
    v20 = sub_22B7DBC78();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      aBlock[0] = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_22B4CFAAC(0xD000000000000022, 0x800000022B80F660, aBlock);
      _os_log_impl(&dword_22B4CC000, v19, v20, "Task %s already registered with DAS", v21, 0xCu);
      sub_22B4CFB78(v22);
      MEMORY[0x231898D60](v22, -1, -1);
      MEMORY[0x231898D60](v21, -1, -1);
    }
  }

  else
  {
    v23 = objc_allocWithZone(MEMORY[0x277CF07D8]);
    v24 = sub_22B7DB678();
    v25 = [v23 initWithIdentifier_];

    [v25 setInterval_];
    v26 = [v5 sharedScheduler];
    aBlock[0] = 0;
    LODWORD(v23) = [v26 submitTaskRequest:v25 error:aBlock];

    if (v23)
    {
      v27 = aBlock[0];
      v28 = sub_22B7DB298();
      v29 = sub_22B7DBC78();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        aBlock[0] = v31;
        *v30 = 136315138;
        *(v30 + 4) = sub_22B4CFAAC(0xD000000000000022, 0x800000022B80F660, aBlock);
        _os_log_impl(&dword_22B4CC000, v28, v29, "Successfully submitted task %s", v30, 0xCu);
        sub_22B4CFB78(v31);
        MEMORY[0x231898D60](v31, -1, -1);
        MEMORY[0x231898D60](v30, -1, -1);
      }
    }

    else
    {
      v32 = aBlock[0];
      v33 = sub_22B7DA6F8();

      swift_willThrow();
      v34 = v33;
      v35 = sub_22B7DB298();
      v36 = sub_22B7DBC98();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        *v37 = 138412290;
        v39 = v33;
        v40 = _swift_stdlib_bridgeErrorToNSError();
        *(v37 + 4) = v40;
        *v38 = v40;
        _os_log_impl(&dword_22B4CC000, v35, v36, "Failed to submit task with error: %@", v37, 0xCu);
        sub_22B708A24(v38);
        MEMORY[0x231898D60](v38, -1, -1);
        MEMORY[0x231898D60](v37, -1, -1);
      }

      else
      {
      }
    }
  }

  v41 = *MEMORY[0x277D85DE8];
}

id sub_22B741CA0()
{
  objc_opt_self();
  v0 = swift_dynamicCastObjCClassUnconditional();
  sub_22B741E1C();

  return [v0 setTaskCompleted];
}

uint64_t sub_22B741D3C()
{
  v0 = sub_22B7DB678();
  v1 = sub_22B7DB678();
  v2 = IMGetDomainBoolForKey();

  if (v2)
  {
    return 1;
  }

  v4 = sub_22B7DB678();
  v5 = sub_22B7DB678();
  v6 = IMGetDomainBoolForKey();

  return v6;
}

void sub_22B741E1C()
{
  if (qword_28141F030 != -1)
  {
    swift_once();
  }

  v0 = sub_22B7DB2B8();
  sub_22B4CFA74(v0, qword_28141F038);
  v1 = sub_22B7DB298();
  v2 = sub_22B7DBC78();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v21 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_22B4CFAAC(0xD000000000000022, 0x800000022B80F660, &v21);
    _os_log_impl(&dword_22B4CC000, v1, v2, "Performing task %s. Tracking current states of RCS related switches and sending to CoreAnalytics.", v3, 0xCu);
    sub_22B4CFB78(v4);
    MEMORY[0x231898D60](v4, -1, -1);
    MEMORY[0x231898D60](v3, -1, -1);
  }

  v5 = objc_opt_self();
  v6 = [v5 sharedInstance];
  if (!v6)
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = v6;
  v8 = [v6 isRCSEnabled];

  v9 = [v5 sharedInstance];
  if (!v9)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = v9;
  v11 = [v9 isRBMEnabled];

  LOBYTE(v10) = sub_22B741D3C();
  sub_22B6F0AD4(&qword_27D8CE670, &qword_22B7FAA40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22B7F97B0;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x800000022B80F690;
  *(inited + 48) = v8;
  *(inited + 56) = 0xD000000000000018;
  *(inited + 64) = 0x800000022B80F6B0;
  *(inited + 72) = v11;
  *(inited + 80) = 0xD000000000000012;
  *(inited + 88) = 0x800000022B80F6D0;
  *(inited + 96) = v10 & 1;
  v13 = sub_22B71E5F0(inited);
  swift_setDeallocating();
  sub_22B6F0AD4(&qword_27D8CE678, qword_22B7FAA48);
  swift_arrayDestroy();
  v14 = [objc_opt_self() sharedInstance];
  if (!v14)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v15 = v14;
  v16 = sub_22B7DB678();
  sub_22B7B0D90(v13);

  v17 = sub_22B7DB568();

  [v15 trackEvent:v16 withDictionary:v17];

  v18 = sub_22B7DB298();
  v19 = sub_22B7DBC78();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_22B4CC000, v18, v19, "Sent current states of RCS related switches to analytics.", v20, 2u);
    MEMORY[0x231898D60](v20, -1, -1);
  }
}

uint64_t sub_22B7421BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22B742290()
{
  v0 = sub_22B7DB2B8();
  sub_22B6F24F4(v0, qword_27D8CE680);
  sub_22B4CFA74(v0, qword_27D8CE680);
  sub_22B7DB288();
  return sub_22B7DB2A8();
}

uint64_t sub_22B7422FC()
{
  v1 = *(v0 + 24);
  sub_22B4DDE5C(*(v0 + 16));
  v2 = *(v0 + 32);

  v3 = *(v0 + 64);

  v4 = *(v0 + 128);

  return v0;
}

uint64_t sub_22B742344()
{
  sub_22B7422FC();

  return swift_deallocClassInstance();
}

id sub_22B742458()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EvictionCounter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22B7424B4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_22B7424FC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_22B742510(uint64_t *a1, int a2)
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

uint64_t sub_22B742558(uint64_t result, int a2, int a3)
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

uint64_t sub_22B7425DC()
{
  v1 = *v0;
  sub_22B7DC668();
  MEMORY[0x231895FF0](v1);
  return sub_22B7DC6B8();
}

uint64_t sub_22B742650()
{
  v1 = *v0;
  sub_22B7DC668();
  MEMORY[0x231895FF0](v1);
  return sub_22B7DC6B8();
}

uint64_t *sub_22B742694@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_22B7426E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22B7DC4E8();
  MEMORY[0x231895140](v4);

  result = MEMORY[0x231895140](2109216, 0xE300000000000000);
  if (__OFADD__(a1, a2))
  {
    __break(1u);
  }

  else
  {
    v6 = sub_22B7DC4E8();
    MEMORY[0x231895140](v6);

    MEMORY[0x231895140](2112800, 0xE300000000000000);
    sub_22B7DBAD8();
    MEMORY[0x231895140](37, 0xE100000000000000);
    return 0;
  }

  return result;
}

uint64_t sub_22B742818()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_22B742854(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22B74289C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22B7428F4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_22B742930(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[16])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_22B742974(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MatchStringPosition(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MatchStringPosition(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22B742B20()
{
  result = qword_27D8CE788;
  if (!qword_27D8CE788)
  {
    sub_22B6FB8C4(&qword_27D8CE790, qword_22B7FACC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CE788);
  }

  return result;
}

unint64_t sub_22B742B88()
{
  result = qword_27D8CE798;
  if (!qword_27D8CE798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CE798);
  }

  return result;
}

void sub_22B742BDC()
{
  v0 = *MEMORY[0x277D1A790];
  v1 = objc_allocWithZone(MEMORY[0x277CCAD80]);
  v2 = v0;
  v3 = [v1 initWithStoreIdentifier:v2 type:1];

  qword_28141F070 = v3;
}

id sub_22B742C44()
{
  result = [objc_allocWithZone(IMDSyncedSettingsServiceManager) init];
  qword_28141F088 = result;
  return result;
}

char *sub_22B742CD8()
{
  v1 = v0;
  v40 = sub_22B7DBD48();
  v2 = *(v40 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v40);
  v5 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22B7DBD38();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v8 = sub_22B7DB398();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v39 = OBJC_IVAR___IMDSyncedSettingsServiceManager_ubiquitousStoreQueue;
  v10 = sub_22B4D01A0(0, &qword_28141F210, 0x277D85C78);
  v38[1] = "Local value exists";
  v38[2] = v10;
  sub_22B7DACD8();
  v42 = MEMORY[0x277D84F90];
  sub_22B747690(&unk_28141F220, MEMORY[0x277D85230]);
  sub_22B6F0AD4(&qword_27D8CEA10, &qword_22B7F9DC0);
  sub_22B4D1110(&qword_28141F2C0, &qword_27D8CEA10, &qword_22B7F9DC0);
  sub_22B7DC138();
  (*(v2 + 104))(v5, *MEMORY[0x277D85260], v40);
  *&v0[v39] = sub_22B7DBD88();
  v11 = OBJC_IVAR___IMDSyncedSettingsServiceManager_sharedOTPDefaults;
  v12 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v13 = sub_22B7DB678();
  v14 = [v12 initWithSuiteName_];

  *&v1[v11] = v14;
  if (qword_28141F060 != -1)
  {
    swift_once();
  }

  v15 = qword_28141F070;
  *&v1[OBJC_IVAR___IMDSyncedSettingsServiceManager_remoteStorageDelegate] = qword_28141F070;
  v16 = objc_opt_self();
  v17 = v15;
  v18 = [v16 sharedInstance];
  *&v1[OBJC_IVAR___IMDSyncedSettingsServiceManager_localStorageDelegate] = v18;
  v19 = [objc_allocWithZone(MEMORY[0x277D2BA60]) init];
  *&v1[OBJC_IVAR___IMDSyncedSettingsServiceManager_watchSyncDelegate] = v19;
  v20 = *MEMORY[0x277D1A788];
  v21 = sub_22B7DB6A8();
  v22 = &v1[OBJC_IVAR___IMDSyncedSettingsServiceManager_localDomain];
  *v22 = v21;
  v22[1] = v23;
  v24 = *MEMORY[0x277D1A790];
  v25 = sub_22B7DB6A8();
  v26 = &v1[OBJC_IVAR___IMDSyncedSettingsServiceManager_remoteDomain];
  *v26 = v25;
  v26[1] = v27;
  v28 = [objc_opt_self() sharedInstance];
  *&v1[OBJC_IVAR___IMDSyncedSettingsServiceManager_syncConfigurationDelegate] = v28;
  v41.receiver = v1;
  v41.super_class = IMDSyncedSettingsServiceManager;
  v29 = objc_msgSendSuper2(&v41, sel_init);
  v30 = objc_opt_self();
  v31 = v29;
  v32 = [v30 defaultCenter];
  [v32 addObserver:v31 selector:sel_handleDidChangeWithNotification_ name:*MEMORY[0x277CCA7C0] object:*&v31[OBJC_IVAR___IMDSyncedSettingsServiceManager_remoteStorageDelegate]];

  v33 = [v30 defaultCenter];
  [v33 addObserver:v31 selector:sel_cloudkitStateEnabledReturnedWithNotification_ name:@"com.apple.IMDaemonCore.IMDCKUtilities.MiCEnabledStateReturned" object:0];

  v34 = CFNotificationCenterGetDarwinNotifyCenter();
  v35 = sub_22B7DB678();
  CFNotificationCenterAddObserver(v34, v31, sub_22B74320C, v35, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  [v31 migrateNotificationSettingsV1toV2IfNecessary];
  v36 = *&v31[OBJC_IVAR___IMDSyncedSettingsServiceManager_syncConfigurationDelegate];
  if (v36 && [v36 cloudKitSyncingEnabled])
  {
    sub_22B743C80(0);
  }

  return v31;
}

void sub_22B74320C(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2 && a3)
  {
    v3 = a2;
    [v3 npsDefaultsChanged];
  }
}

char *sub_22B743280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v41 = a8;
  v42 = a5;
  v43 = a6;
  v44 = a7;
  v47 = a3;
  v48 = a4;
  v45 = a1;
  v46 = a2;
  v40 = sub_22B7DBD48();
  v10 = *(v40 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v40);
  v13 = v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22B7DBD38();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v16 = sub_22B7DB398();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v39 = OBJC_IVAR___IMDSyncedSettingsServiceManager_ubiquitousStoreQueue;
  v18 = sub_22B4D01A0(0, &qword_28141F210, 0x277D85C78);
  v38[1] = "Local value exists";
  v38[2] = v18;
  sub_22B7DACD8();
  v50 = MEMORY[0x277D84F90];
  sub_22B747690(&unk_28141F220, MEMORY[0x277D85230]);
  sub_22B6F0AD4(&qword_27D8CEA10, &qword_22B7F9DC0);
  sub_22B4D1110(&qword_28141F2C0, &qword_27D8CEA10, &qword_22B7F9DC0);
  v19 = v41;
  sub_22B7DC138();
  (*(v10 + 104))(v13, *MEMORY[0x277D85260], v40);
  v21 = v42;
  v20 = v43;
  v22 = v44;
  *&v8[v39] = sub_22B7DBD88();
  v23 = OBJC_IVAR___IMDSyncedSettingsServiceManager_sharedOTPDefaults;
  v24 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v25 = sub_22B7DB678();
  v26 = [v24 initWithSuiteName_];

  *&v9[v23] = v26;
  v27 = &v9[OBJC_IVAR___IMDSyncedSettingsServiceManager_localDomain];
  v28 = v46;
  *v27 = v45;
  *(v27 + 1) = v28;
  v29 = &v9[OBJC_IVAR___IMDSyncedSettingsServiceManager_remoteDomain];
  v30 = v48;
  *v29 = v47;
  *(v29 + 1) = v30;
  *&v9[OBJC_IVAR___IMDSyncedSettingsServiceManager_localStorageDelegate] = v21;
  *&v9[OBJC_IVAR___IMDSyncedSettingsServiceManager_remoteStorageDelegate] = v20;
  *&v9[OBJC_IVAR___IMDSyncedSettingsServiceManager_watchSyncDelegate] = v22;
  *&v9[OBJC_IVAR___IMDSyncedSettingsServiceManager_syncConfigurationDelegate] = v19;
  v49.receiver = v9;
  v49.super_class = IMDSyncedSettingsServiceManager;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v31 = objc_msgSendSuper2(&v49, sel_init);
  v32 = objc_opt_self();
  v33 = v31;
  v34 = [v32 defaultCenter];
  [v34 addObserver:v33 selector:sel_handleDidChangeWithNotification_ name:*MEMORY[0x277CCA7C0] object:*&v33[OBJC_IVAR___IMDSyncedSettingsServiceManager_remoteStorageDelegate]];

  v35 = [v32 defaultCenter];
  [v35 addObserver:v33 selector:sel_cloudkitStateEnabledReturnedWithNotification_ name:@"com.apple.IMDaemonCore.IMDCKUtilities.MiCEnabledStateReturned" object:0];

  [v33 migrateNotificationSettingsV1toV2IfNecessary];
  v36 = *&v33[OBJC_IVAR___IMDSyncedSettingsServiceManager_syncConfigurationDelegate];
  if (v36)
  {
    if ([v36 cloudKitSyncingEnabled])
    {
      sub_22B743C80(0);
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  return v33;
}

uint64_t sub_22B7437F0()
{
  v1 = v0;
  v2 = 0;
  v31 = OBJC_IVAR___IMDSyncedSettingsServiceManager_localStorageDelegate;
  v3 = (v0 + OBJC_IVAR___IMDSyncedSettingsServiceManager_localDomain);
  v30 = (v0 + OBJC_IVAR___IMDSyncedSettingsServiceManager_localDomain);
  do
  {
    v5 = *(&unk_283F1B9D0 + v2 + 32);
    result = sub_22B7DBDD8();
    if (v6)
    {
      v7 = *(v1 + v31);
      if (!v7)
      {
        v36 = 0u;
        v37 = 0u;
        sub_22B4D0D64(&v36, &unk_27D8CCDC0, &qword_22B7F9580);
        v36 = 0u;
        v37 = 0u;

        goto LABEL_3;
      }

      v8 = *v3;
      v9 = v3[1];
      v10 = sub_22B7DB678();
      v11 = sub_22B7DB678();
      v12 = [v7 getValueFromDomain:v10 forKey:v11];

      if (v12)
      {
        sub_22B7DC118();
        swift_unknownObjectRelease();
      }

      else
      {
        v34 = 0u;
        v35 = 0u;
      }

      v36 = v34;
      v37 = v35;
      if (!*(&v35 + 1))
      {
        sub_22B4D0D64(&v36, &unk_27D8CCDC0, &qword_22B7F9580);
LABEL_15:
        v32 = v3[1];
        v33 = *v3;
        v13 = sub_22B7DB678();
        MEMORY[0x231895740](v5);
        v14 = sub_22B7DB678();

        v15 = [v7 getValueFromDomain:v13 forKey:v14];

        if (v15)
        {
          sub_22B7DC118();
          swift_unknownObjectRelease();
        }

        else
        {
          v34 = 0u;
          v35 = 0u;
        }

        v36 = v34;
        v37 = v35;
        if (*(&v35 + 1))
        {
          if (qword_28141F3E8 != -1)
          {
            swift_once();
          }

          v16 = sub_22B7DB2B8();
          sub_22B4CFA74(v16, qword_2814226E0);
          v17 = sub_22B7DB298();
          v18 = sub_22B7DBCB8();
          if (os_log_type_enabled(v17, v18))
          {
            v19 = swift_slowAlloc();
            v29 = swift_slowAlloc();
            *&v34 = v29;
            *v19 = 136315138;
            v20 = MEMORY[0x231895740](v5);
            v22 = v1;
            v23 = sub_22B4CFAAC(v20, v21, &v34);

            *(v19 + 4) = v23;
            v1 = v22;
            _os_log_impl(&dword_22B4CC000, v17, v18, "Performing %s migration", v19, 0xCu);
            sub_22B4CFB78(v29);
            MEMORY[0x231898D60](v29, -1, -1);
            MEMORY[0x231898D60](v19, -1, -1);
          }

          v24 = sub_22B7DB678();
          MEMORY[0x231895740](v5);
          v25 = sub_22B7DB678();

          [v7 setValue:0 forDomain:v24 forKey:v25];
        }

        v26 = sub_22B7DBB38();
        v27 = sub_22B7DB678();
        v28 = sub_22B7DB678();

        [v7 setValue:v26 forDomain:v27 forKey:v28];

        v3 = v30;
LABEL_3:
        result = sub_22B4D0D64(&v36, &unk_27D8CCDC0, &qword_22B7F9580);
        goto LABEL_4;
      }

      if (!swift_dynamicCast() || v34 <= 1)
      {
        goto LABEL_15;
      }
    }

LABEL_4:
    v2 += 8;
  }

  while (v2 != 48);
  return result;
}

uint64_t sub_22B743C80(uint64_t a1)
{
  if (qword_28141F3E8 != -1)
  {
    swift_once();
  }

  v2 = sub_22B7DB2B8();
  sub_22B4CFA74(v2, qword_2814226E0);
  v3 = sub_22B7DB298();
  v4 = sub_22B7DBCB8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_22B4CC000, v3, v4, "Syncronizing Local Store.", v5, 2u);
    MEMORY[0x231898D60](v5, -1, -1);
  }

  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = a1;

  sub_22B745E7C(sub_22B747280, v7);
}

id sub_22B743DF4()
{
  if (qword_28141F3E8 != -1)
  {
    swift_once();
  }

  v1 = sub_22B7DB2B8();
  sub_22B4CFA74(v1, qword_2814226E0);
  v2 = v0;
  v3 = sub_22B7DB298();
  v4 = sub_22B7DBCB8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    v6 = *(&v2->isa + OBJC_IVAR___IMDSyncedSettingsServiceManager_syncConfigurationDelegate);
    v7 = v6 && ([v6 cloudKitSyncingEnabled] & 1) != 0;
    *(v5 + 4) = v7;

    _os_log_impl(&dword_22B4CC000, v3, v4, "cloudkitStateEnabledReturned [%{BOOL}d] setting up...", v5, 8u);
    MEMORY[0x231898D60](v5, -1, -1);
  }

  else
  {

    v3 = v2;
  }

  [v2 migrateNotificationSettingsV1toV2IfNecessary];
  result = *(&v2->isa + OBJC_IVAR___IMDSyncedSettingsServiceManager_syncConfigurationDelegate);
  if (result)
  {
    result = [result cloudKitSyncingEnabled];
    if (result)
    {
      return sub_22B743C80(0);
    }
  }

  return result;
}

id sub_22B743F78()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  [v2 removeObserver:v0 name:*MEMORY[0x277CCA7C0] object:*&v0[OBJC_IVAR___IMDSyncedSettingsServiceManager_remoteStorageDelegate]];

  v3 = [v1 defaultCenter];
  [v3 removeObserver:v0 name:@"com.apple.IMDaemonCore.IMDCKUtilities.MiCEnabledStateReturned" object:0];

  v5.receiver = v0;
  v5.super_class = IMDSyncedSettingsServiceManager;
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

void sub_22B744130(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + OBJC_IVAR___IMDSyncedSettingsServiceManager_syncConfigurationDelegate);
  if (v5 && [v5 cloudKitSyncingEnabled])
  {
    v6 = *(v2 + OBJC_IVAR___IMDSyncedSettingsServiceManager_remoteStorageDelegate);
    if (v6)
    {
      sub_22B7DBDF8();
      v7 = sub_22B7DB678();

      v8 = [v6 objectForKey_];

      if (!v8)
      {
LABEL_5:
        v32 = 0u;
        v33 = 0u;
        goto LABEL_21;
      }

LABEL_20:
      sub_22B7DC118();
      swift_unknownObjectRelease();
LABEL_21:
      v34[0] = v32;
      v34[1] = v33;
      if (*(&v33 + 1))
      {
        sub_22B4D7F04(v34, a2);
        return;
      }

      goto LABEL_23;
    }

    goto LABEL_23;
  }

  if (a1 != 2)
  {
LABEL_18:
    v26 = *(v2 + OBJC_IVAR___IMDSyncedSettingsServiceManager_localStorageDelegate);
    if (v26)
    {
      v27 = *(v2 + OBJC_IVAR___IMDSyncedSettingsServiceManager_localDomain);
      v28 = *(v2 + OBJC_IVAR___IMDSyncedSettingsServiceManager_localDomain + 8);
      v29 = sub_22B7DB678();
      MEMORY[0x231895740](a1);
      v30 = sub_22B7DB678();

      v31 = [v26 getValueFromDomain:v29 forKey:v30];

      if (!v31)
      {
        goto LABEL_5;
      }

      goto LABEL_20;
    }

LABEL_23:
    sub_22B7DBE18();
    return;
  }

  v9 = *(v2 + OBJC_IVAR___IMDSyncedSettingsServiceManager_sharedOTPDefaults);
  if (!v9)
  {
    v21 = v2;
    if (qword_28141F3E8 != -1)
    {
      swift_once();
    }

    v22 = sub_22B7DB2B8();
    sub_22B4CFA74(v22, qword_2814226E0);
    v23 = sub_22B7DB298();
    v24 = sub_22B7DBC98();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_22B4CC000, v23, v24, "SyncedSettingsManager sharedOTPDefaults is unexpectedly nil", v25, 2u);
      MEMORY[0x231898D60](v25, -1, -1);
    }

    v2 = v21;
    goto LABEL_18;
  }

  v10 = v9;
  MEMORY[0x231895740](2);
  v11 = sub_22B7DB678();

  v12 = [v10 integerForKey_];

  if (qword_28141F3E8 != -1)
  {
    swift_once();
  }

  v13 = sub_22B7DB2B8();
  sub_22B4CFA74(v13, qword_2814226E0);
  v14 = sub_22B7DB298();
  v15 = sub_22B7DBCB8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *&v34[0] = v17;
    *v16 = 136315394;
    v18 = MEMORY[0x231895740](2);
    v20 = sub_22B4CFAAC(v18, v19, v34);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2048;
    *(v16 + 14) = v12;
    _os_log_impl(&dword_22B4CC000, v14, v15, "SyncedSettingsManager processing request of OTP(%s) and returning: %ld", v16, 0x16u);
    sub_22B4CFB78(v17);
    MEMORY[0x231898D60](v17, -1, -1);
    MEMORY[0x231898D60](v16, -1, -1);
  }

  *(a2 + 24) = MEMORY[0x277D83B88];
  *a2 = v12;
}

uint64_t sub_22B744638(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR___IMDSyncedSettingsServiceManager_localStorageDelegate);
  if (v3)
  {
    v4 = *(v1 + OBJC_IVAR___IMDSyncedSettingsServiceManager_localDomain);
    v5 = *(v1 + OBJC_IVAR___IMDSyncedSettingsServiceManager_localDomain + 8);
    v6 = sub_22B7DB678();
    MEMORY[0x231895740](a1);
    v7 = sub_22B7DB678();

    v8 = [v3 getValueFromDomain:v6 forKey:v7];

    if (v8)
    {
      sub_22B7DC118();
      swift_unknownObjectRelease();
    }

    else
    {
      v22 = 0u;
      v23 = 0u;
    }

    v24 = v22;
    v25 = v23;
    if (*(&v23 + 1))
    {
      v9 = 1;
      goto LABEL_9;
    }
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
  }

  v9 = 0;
LABEL_9:
  sub_22B4D0D64(&v24, &unk_27D8CCDC0, &qword_22B7F9580);
  if (qword_28141F3E8 != -1)
  {
    swift_once();
  }

  v10 = sub_22B7DB2B8();
  sub_22B4CFA74(v10, qword_2814226E0);
  v11 = sub_22B7DB298();
  v12 = sub_22B7DBCB8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *&v24 = v14;
    *v13 = 136315394;
    if (v9)
    {
      v15 = 0xD000000000000012;
    }

    else
    {
      v15 = 0xD00000000000001ALL;
    }

    if (v9)
    {
      v16 = "Local value does not exist";
    }

    else
    {
      v16 = "syncConfigurationDelegate";
    }

    v17 = sub_22B4CFAAC(v15, v16 | 0x8000000000000000, &v24);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    v18 = sub_22B7DBE08();
    v20 = sub_22B4CFAAC(v18, v19, &v24);

    *(v13 + 14) = v20;
    _os_log_impl(&dword_22B4CC000, v11, v12, "%s for key: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x231898D60](v14, -1, -1);
    MEMORY[0x231898D60](v13, -1, -1);
  }

  return v9;
}

id sub_22B7448FC(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_22B7DB348();
  v41 = *(v6 - 8);
  v7 = *(v41 + 64);
  MEMORY[0x28223BE20](v6);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_22B7DB398();
  v38 = *(v40 - 8);
  v9 = *(v38 + 64);
  MEMORY[0x28223BE20](v40);
  v37 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28141F3E8 != -1)
  {
    swift_once();
  }

  v11 = sub_22B7DB2B8();
  sub_22B4CFA74(v11, qword_2814226E0);
  sub_22B4D1F68(a1, aBlock);
  v12 = sub_22B7DB298();
  v13 = sub_22B7DBCB8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v42 = v15;
    *v14 = 136315394;
    sub_22B4D1F68(aBlock, v44);
    v16 = sub_22B7DB6C8();
    v18 = v17;
    sub_22B4CFB78(aBlock);
    v19 = sub_22B4CFAAC(v16, v18, &v42);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2080;
    v20 = sub_22B7DBE08();
    v22 = sub_22B4CFAAC(v20, v21, &v42);

    *(v14 + 14) = v22;
    _os_log_impl(&dword_22B4CC000, v12, v13, "Applying Setting Value %s to local key: %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x231898D60](v15, -1, -1);
    MEMORY[0x231898D60](v14, -1, -1);
  }

  else
  {

    sub_22B4CFB78(aBlock);
  }

  v23 = MEMORY[0x231895740](a2);
  sub_22B744EC8(a1, v23, v24);

  v25 = *(v3 + OBJC_IVAR___IMDSyncedSettingsServiceManager_syncConfigurationDelegate);
  if (v25 && [v25 cloudKitSyncingEnabled])
  {
    v26 = *(v3 + OBJC_IVAR___IMDSyncedSettingsServiceManager_ubiquitousStoreQueue);
    v27 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_22B4D1F68(a1, v44);
    v28 = swift_allocObject();
    *(v28 + 16) = v27;
    sub_22B4D7F04(v44, (v28 + 24));
    *(v28 + 56) = a2;
    aBlock[4] = sub_22B7472C4;
    aBlock[5] = v28;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22B4D22C0;
    aBlock[3] = &unk_283F1DB18;
    v29 = _Block_copy(aBlock);

    v30 = v37;
    sub_22B7DACD8();
    v42 = MEMORY[0x277D84F90];
    sub_22B747690(&qword_28141F340, MEMORY[0x277D85198]);
    sub_22B6F0AD4(&unk_27D8CF580, &unk_22B7FB880);
    sub_22B4D1110(&qword_28141F2E0, &unk_27D8CF580, &unk_22B7FB880);
    v31 = v39;
    sub_22B7DC138();
    MEMORY[0x2318956F0](0, v30, v31, v29);
    _Block_release(v29);
    (*(v41 + 8))(v31, v6);
    (*(v38 + 8))(v30, v40);
  }

  result = [objc_opt_self() sharedProvider];
  if (result)
  {
    v33 = [result broadcasterForSyncedSettingsListeners];
    swift_unknownObjectRelease();
    sub_22B6F0AD4(&unk_27D8CEA00, &qword_22B7F98C8);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_22B7F93B0;
    *(v34 + 32) = sub_22B7DBDF8();
    *(v34 + 40) = v35;
    v36 = sub_22B7DB8F8();

    [v33 didUpdateSettingsKeys_];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_22B744EC8(void *a1, uint64_t a2, unint64_t a3)
{

  sub_22B7DBDB8();
  if (v7)
  {
    if (qword_28141F3E8 != -1)
    {
      swift_once();
    }

    v8 = sub_22B7DB2B8();
    sub_22B4CFA74(v8, qword_2814226E0);

    oslog = sub_22B7DB298();
    v9 = sub_22B7DBC98();

    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v28 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_22B4CFAAC(a2, a3, &v28);
      _os_log_impl(&dword_22B4CC000, oslog, v9, "SyncedSettingsManager tried to update a local synced setting with an unknown key: %s", v10, 0xCu);
      sub_22B4CFB78(v11);
      MEMORY[0x231898D60](v11, -1, -1);
      MEMORY[0x231898D60](v10, -1, -1);

      return;
    }

    goto LABEL_20;
  }

  if (MEMORY[0x231895740](2) == a2 && v12 == a3)
  {

LABEL_10:
    v14 = *(v3 + OBJC_IVAR___IMDSyncedSettingsServiceManager_sharedOTPDefaults);
    if (v14)
    {
      sub_22B4D2BCC(a1, a1[3]);
      v15 = v14;
      v16 = sub_22B7DC508();
      v17 = sub_22B7DB678();
      [v15 setValue:v16 forKey:v17];

      swift_unknownObjectRelease();
    }

    else
    {
      v18 = v3;
      if (qword_28141F3E8 != -1)
      {
        swift_once();
      }

      v19 = sub_22B7DB2B8();
      sub_22B4CFA74(v19, qword_2814226E0);
      v17 = sub_22B7DB298();
      v20 = sub_22B7DBC98();
      if (os_log_type_enabled(v17, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_22B4CC000, v17, v20, "SyncedSettingsManager sharedOTPDefaults is unexpectedly nil", v21, 2u);
        MEMORY[0x231898D60](v21, -1, -1);
      }

      v3 = v18;
    }

    goto LABEL_18;
  }

  v13 = sub_22B7DC518();

  if (v13)
  {
    goto LABEL_10;
  }

LABEL_18:
  v22 = *(v3 + OBJC_IVAR___IMDSyncedSettingsServiceManager_localStorageDelegate);
  if (!v22)
  {
    return;
  }

  sub_22B4D2BCC(a1, a1[3]);
  v23 = sub_22B7DC508();
  v24 = *(v3 + OBJC_IVAR___IMDSyncedSettingsServiceManager_localDomain);
  v25 = *(v3 + OBJC_IVAR___IMDSyncedSettingsServiceManager_localDomain + 8);
  v26 = sub_22B7DB678();
  oslog = sub_22B7DB678();
  [v22 setValue:v23 forDomain:v26 forKey:oslog];
  swift_unknownObjectRelease();

LABEL_20:
}

void sub_22B745268(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (qword_28141F3E8 != -1)
    {
      swift_once();
    }

    v7 = sub_22B7DB2B8();
    sub_22B4CFA74(v7, qword_2814226E0);
    sub_22B4D1F68(a2, v33);
    v8 = sub_22B7DB298();
    v9 = sub_22B7DBCB8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v32 = v11;
      *v10 = 136315394;
      sub_22B4D1F68(v33, &v31);
      v12 = sub_22B7DB6C8();
      v14 = v13;
      sub_22B4CFB78(v33);
      v15 = sub_22B4CFAAC(v12, v14, &v32);

      *(v10 + 4) = v15;
      *(v10 + 12) = 2080;
      v16 = sub_22B7DBE08();
      v18 = sub_22B4CFAAC(v16, v17, &v32);

      *(v10 + 14) = v18;
      _os_log_impl(&dword_22B4CC000, v8, v9, "Applying Setting Value %s to remote key: %s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x231898D60](v11, -1, -1);
      MEMORY[0x231898D60](v10, -1, -1);
    }

    else
    {

      sub_22B4CFB78(v33);
    }

    v19 = OBJC_IVAR___IMDSyncedSettingsServiceManager_remoteStorageDelegate;
    v20 = *&v6[OBJC_IVAR___IMDSyncedSettingsServiceManager_remoteStorageDelegate];
    if (v20)
    {
      sub_22B4D2BCC(a2, a2[3]);
      v21 = sub_22B7DC508();
      sub_22B7DBDF8();
      v22 = sub_22B7DB678();

      [v20 setObject:v21 forKey:v22];
      swift_unknownObjectRelease();

      v23 = *&v6[v19];
      if (v23)
      {
        [v23 synchronize];
      }
    }

    v24 = *&v6[OBJC_IVAR___IMDSyncedSettingsServiceManager_watchSyncDelegate];
    if (v24)
    {
      v25 = *&v6[OBJC_IVAR___IMDSyncedSettingsServiceManager_localDomain];
      v26 = *&v6[OBJC_IVAR___IMDSyncedSettingsServiceManager_localDomain + 8];

      v27 = sub_22B7DB678();

      sub_22B6F0AD4(&unk_27D8CEA00, &qword_22B7F98C8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22B7F93B0;
      *(inited + 32) = MEMORY[0x231895740](a3);
      *(inited + 40) = v29;
      sub_22B7179DC(inited);
      swift_setDeallocating();
      sub_22B74763C(inited + 32);
      v30 = sub_22B7DBAE8();

      [v24 synchronizeUserDefaultsDomain:v27 keys:v30];
    }
  }
}

Swift::Bool __swiftcall IMDSyncedSettingsServiceManager.isValidLocalStorageKey(for:)(Swift::String a1)
{

  sub_22B7DBDB8();
  return (v1 & 1) == 0;
}

Swift::Bool __swiftcall IMDSyncedSettingsServiceManager.isValidRemoteStorageKey(for:)(Swift::String a1)
{

  sub_22B7DBDE8();
  return (v1 & 1) == 0;
}

void sub_22B7456C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v61 = a3;

    v6 = a1 + 64;
    v7 = 1 << *(a1 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(a1 + 64);

    swift_beginAccess();
    swift_beginAccess();
    v10 = 0;
    v11 = (v7 + 63) >> 6;
    v62 = a1;
    while (v9)
    {
      v12 = v10;
LABEL_16:
      v15 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v16 = v15 | (v12 << 6);
      v17 = (*(a1 + 48) + 16 * v16);
      v19 = *v17;
      v18 = v17[1];
      sub_22B4D1F68(*(a1 + 56) + 32 * v16, v66);
      *&v67 = v19;
      *(&v67 + 1) = v18;
      sub_22B4D7F04(v66, &v68);

LABEL_17:
      v70 = v67;
      v71[0] = v68;
      v71[1] = v69;
      v20 = *(&v67 + 1);
      if (!*(&v67 + 1))
      {

        if (v61)
        {
          if (qword_28141F3E8 != -1)
          {
            swift_once();
          }

          v46 = sub_22B7DB2B8();
          sub_22B4CFA74(v46, qword_2814226E0);

          v47 = sub_22B7DB298();
          v48 = sub_22B7DBC88();

          if (os_log_type_enabled(v47, v48))
          {
            v49 = swift_slowAlloc();
            v50 = swift_slowAlloc();
            *&v70 = v50;
            *v49 = 136315138;
            v51 = MEMORY[0x2318952A0](v61, MEMORY[0x277D837D0]);
            v53 = sub_22B4CFAAC(v51, v52, &v70);

            *(v49 + 4) = v53;
            _os_log_impl(&dword_22B4CC000, v47, v48, "changedKeys: %s", v49, 0xCu);
            sub_22B4CFB78(v50);
            MEMORY[0x231898D60](v50, -1, -1);
            MEMORY[0x231898D60](v49, -1, -1);
          }

          v54 = [objc_opt_self() sharedProvider];
          if (v54)
          {
            v55 = [v54 broadcasterForSyncedSettingsListeners];
            swift_unknownObjectRelease();
            v56 = sub_22B7DB8F8();
            [v55 didUpdateSettingsKeys_];

            swift_unknownObjectRelease();
          }
        }

        return;
      }

      v21 = v70;
      sub_22B4D7F04(v71, &v67);

      v22 = sub_22B7DBDE8();
      if (v23)
      {
        sub_22B4CFB78(&v67);
      }

      else
      {
        v24 = v22;
        v25 = swift_unknownObjectWeakLoadStrong();
        if (v25)
        {

          if (qword_28141F3E8 != -1)
          {
            swift_once();
          }

          v26 = sub_22B7DB2B8();
          sub_22B4CFA74(v26, qword_2814226E0);
          sub_22B4D1F68(&v67, v66);

          v27 = sub_22B7DB298();
          v28 = sub_22B7DBC88();

          v63 = v24;
          if (os_log_type_enabled(v27, v28))
          {
            v29 = swift_slowAlloc();
            v30 = swift_slowAlloc();
            v65 = v30;
            *v29 = 136315394;
            v31 = sub_22B4CFAAC(v21, v20, &v65);

            *(v29 + 4) = v31;
            *(v29 + 12) = 2080;
            sub_22B4D1F68(v66, v64);
            v32 = sub_22B7DB6C8();
            v34 = v33;
            sub_22B4CFB78(v66);
            v35 = sub_22B4CFAAC(v32, v34, &v65);

            *(v29 + 14) = v35;
            _os_log_impl(&dword_22B4CC000, v27, v28, "%s : %s}", v29, 0x16u);
            swift_arrayDestroy();
            v36 = v30;
            a1 = v62;
            MEMORY[0x231898D60](v36, -1, -1);
            MEMORY[0x231898D60](v29, -1, -1);
          }

          else
          {

            sub_22B4CFB78(v66);
          }

          v37 = swift_unknownObjectWeakLoadStrong();
          if (v37)
          {
            v38 = v37;
            v39 = MEMORY[0x231895740](v63);
            sub_22B744EC8(&v67, v39, v40);
          }

          v41 = [objc_opt_self() defaultCenter];
          v42 = sub_22B7DBE28();
          sub_22B6F0AD4(&unk_27D8CE9F0, &qword_22B7F98C0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_22B7F93B0;
          *&v66[0] = 0x6E6F73616572;
          *(&v66[0] + 1) = 0xE600000000000000;
          v44 = MEMORY[0x277D837D0];
          sub_22B7DC248();
          *(inited + 96) = v44;
          *(inited + 72) = 0x796C65746F6D6552;
          *(inited + 80) = 0xEB00000000746553;
          sub_22B4D7D1C(inited);
          swift_setDeallocating();
          sub_22B4D0D64(inited + 32, &unk_27D8CD7D0, &qword_22B7FA3F0);
          v45 = sub_22B7DB568();

          [v41 postNotificationName:v42 object:0 userInfo:v45];

          sub_22B4CFB78(&v67);
        }

        else
        {

          sub_22B4CFB78(&v67);
        }
      }
    }

    if (v11 <= v10 + 1)
    {
      v13 = v10 + 1;
    }

    else
    {
      v13 = v11;
    }

    v14 = v13 - 1;
    while (1)
    {
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v12 >= v11)
      {
        v9 = 0;
        v68 = 0u;
        v69 = 0u;
        v10 = v14;
        v67 = 0u;
        goto LABEL_17;
      }

      v9 = *(v6 + 8 * v12);
      ++v10;
      if (v9)
      {
        v10 = v12;
        goto LABEL_16;
      }
    }

    __break(1u);
    goto LABEL_43;
  }

  if (qword_28141F3E8 != -1)
  {
LABEL_43:
    swift_once();
  }

  v57 = sub_22B7DB2B8();
  sub_22B4CFA74(v57, qword_2814226E0);
  v58 = sub_22B7DB298();
  v59 = sub_22B7DBC98();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    *v60 = 0;
    _os_log_impl(&dword_22B4CC000, v58, v59, "self is nil in fetchUbiqitousSettings completion handler.", v60, 2u);
    MEMORY[0x231898D60](v60, -1, -1);
  }
}

uint64_t sub_22B745E7C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_22B7DB348();
  v20 = *(v6 - 8);
  v7 = *(v20 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22B7DB398();
  v10 = *(v19 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v19);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v3 + OBJC_IVAR___IMDSyncedSettingsServiceManager_ubiquitousStoreQueue);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = a1;
  v15[4] = a2;
  aBlock[4] = sub_22B747288;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B4D22C0;
  aBlock[3] = &unk_283F1DA78;
  v16 = _Block_copy(aBlock);

  sub_22B7DACD8();
  v21 = MEMORY[0x277D84F90];
  sub_22B747690(&qword_28141F340, MEMORY[0x277D85198]);
  sub_22B6F0AD4(&unk_27D8CF580, &unk_22B7FB880);
  sub_22B4D1110(&qword_28141F2E0, &unk_27D8CF580, &unk_22B7FB880);
  sub_22B7DC138();
  MEMORY[0x2318956F0](0, v13, v9, v16);
  _Block_release(v16);
  (*(v20 + 8))(v9, v6);
  (*(v10 + 8))(v13, v19);
}

void sub_22B746188(uint64_t a1)
{
  v2 = v1;
  v78 = sub_22B7DB348();
  v79 = *(v78 - 8);
  v4 = *(v79 + 64);
  MEMORY[0x28223BE20](v78);
  v6 = v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22B7DB398();
  v81 = *(v7 - 8);
  v8 = *(v81 + 64);
  MEMORY[0x28223BE20](v7);
  v80 = v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22B7DA688();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = MEMORY[0x28223BE20](v10);
  v85 = v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = v76 - v15;
  if (qword_28141F3E8 != -1)
  {
    swift_once();
  }

  v17 = sub_22B7DB2B8();
  v18 = sub_22B4CFA74(v17, qword_2814226E0);
  v19 = v11[2];
  v86 = a1;
  v82 = v19;
  v83 = v11 + 2;
  v19(v16, a1, v10);
  v20 = sub_22B7DB298();
  v21 = sub_22B7DBCB8();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v77 = v1;
    v23 = v22;
    v76[0] = swift_slowAlloc();
    aBlock[0] = v76[0];
    *v23 = 136315138;
    sub_22B747690(&qword_281420E98, MEMORY[0x277CC8900]);
    v24 = sub_22B7DC4E8();
    v76[1] = v18;
    v25 = v11;
    v26 = v6;
    v27 = v7;
    v29 = v28;
    v84 = v25[1];
    v84(v16, v10);
    v30 = sub_22B4CFAAC(v24, v29, aBlock);
    v7 = v27;
    v6 = v26;

    *(v23 + 4) = v30;
    _os_log_impl(&dword_22B4CC000, v20, v21, "Received NSUbiquitousKeyValueStoreDidChangeExternallyNotification {notification: %s}", v23, 0xCu);
    v31 = v76[0];
    sub_22B4CFB78(v76[0]);
    MEMORY[0x231898D60](v31, -1, -1);
    v32 = v23;
    v2 = v77;
    MEMORY[0x231898D60](v32, -1, -1);
  }

  else
  {

    v84 = v11[1];
    v84(v16, v10);
  }

  v33 = *(v2 + OBJC_IVAR___IMDSyncedSettingsServiceManager_syncConfigurationDelegate);
  v34 = v86;
  if (!v33 || ([v33 cloudKitSyncingEnabled] & 1) == 0)
  {
    v53 = sub_22B7DB298();
    v54 = sub_22B7DBCB8();
    if (!os_log_type_enabled(v53, v54))
    {
LABEL_33:

      return;
    }

    v55 = swift_slowAlloc();
    *v55 = 0;
    v56 = "shouldSync == false. Ignoring NSUbiquitousKeyValueStoreDidChangeExternallyNotification.";
    goto LABEL_26;
  }

  v35 = sub_22B7DA678();
  if (!v35)
  {
    goto LABEL_28;
  }

  v36 = v35;
  v37 = *MEMORY[0x277CCA7B8];
  v88 = sub_22B7DB6A8();
  v89 = v38;
  sub_22B7DC248();
  if (!*(v36 + 16) || (v39 = sub_22B4D7EC0(aBlock), (v40 & 1) == 0))
  {

    sub_22B4DA138(aBlock);
LABEL_28:
    v90 = 0u;
    v91 = 0u;
    goto LABEL_29;
  }

  sub_22B4D1F68(*(v36 + 56) + 32 * v39, &v90);
  sub_22B4DA138(aBlock);

  if (!*(&v91 + 1))
  {
LABEL_29:
    sub_22B4D0D64(&v90, &unk_27D8CCDC0, &qword_22B7F9580);
LABEL_30:
    v57 = v85;
    v82(v85, v34, v10);
    v53 = sub_22B7DB298();
    v58 = sub_22B7DBC98();
    if (!os_log_type_enabled(v53, v58))
    {

      v84(v57, v10);
      return;
    }

    v55 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    aBlock[0] = v59;
    *v55 = 136315138;
    *&v90 = sub_22B7DA678();
    sub_22B6F0AD4(&qword_27D8CE9D8, &qword_22B7FADC0);
    v60 = sub_22B7DB6C8();
    v61 = v10;
    v63 = v62;
    v84(v57, v61);
    v64 = sub_22B4CFAAC(v60, v63, aBlock);

    *(v55 + 4) = v64;
    _os_log_impl(&dword_22B4CC000, v53, v58, "Could not find changed keys on notification or changed keys was empty: %s", v55, 0xCu);
    sub_22B4CFB78(v59);
    MEMORY[0x231898D60](v59, -1, -1);
    goto LABEL_32;
  }

  sub_22B6F0AD4(&unk_27D8CE9E0, &qword_22B7F99B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_30;
  }

  v41 = aBlock[0];
  if (!*(aBlock[0] + 16))
  {

    goto LABEL_30;
  }

  v42 = sub_22B7DA678();
  if (!v42)
  {

    v90 = 0u;
    v91 = 0u;
    goto LABEL_40;
  }

  v43 = v42;
  v44 = *MEMORY[0x277CCA7B0];
  v88 = sub_22B7DB6A8();
  v89 = v45;
  sub_22B7DC248();
  if (!*(v43 + 16) || (v46 = sub_22B4D7EC0(aBlock), (v47 & 1) == 0))
  {

    sub_22B4DA138(aBlock);
    v90 = 0u;
    v91 = 0u;
    goto LABEL_38;
  }

  sub_22B4D1F68(*(v43 + 56) + 32 * v46, &v90);
  sub_22B4DA138(aBlock);

  if (!*(&v91 + 1))
  {
LABEL_38:

LABEL_40:
    sub_22B4D0D64(&v90, &unk_27D8CCDC0, &qword_22B7F9580);
LABEL_41:
    v53 = sub_22B7DB298();
    v54 = sub_22B7DBC98();
    if (!os_log_type_enabled(v53, v54))
    {
      goto LABEL_33;
    }

    v55 = swift_slowAlloc();
    *v55 = 0;
    v56 = "NSUbiquitousKeyValueStoreDidChangeExternallyNotification missing reason.";
LABEL_26:
    _os_log_impl(&dword_22B4CC000, v53, v54, v56, v55, 2u);
LABEL_32:
    MEMORY[0x231898D60](v55, -1, -1);
    goto LABEL_33;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_41;
  }

  v48 = aBlock[0];
  v49 = sub_22B7DB298();
  if (v48 <= 1)
  {
    if (!v48)
    {
      v50 = sub_22B7DBCB8();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        v52 = "handleNSUbiquitousKeyValueStoreDidChangeExternallyNotification change reason is NSUbiquitousKeyValueStoreServerChange.";
        goto LABEL_54;
      }

      goto LABEL_56;
    }

    if (v48 == 1)
    {
      v50 = sub_22B7DBCB8();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        v52 = "handleNSUbiquitousKeyValueStoreDidChangeExternallyNotification change reason is NSUbiquitousKeyValueStoreInitialSyncChange.";
LABEL_54:
        v66 = v50;
        v67 = v49;
        v68 = v51;
        v69 = 2;
        goto LABEL_55;
      }

      goto LABEL_56;
    }

LABEL_48:
    v65 = sub_22B7DBC98();
    if (os_log_type_enabled(v49, v65))
    {
      v51 = swift_slowAlloc();
      *v51 = 134217984;
      *(v51 + 4) = v48;
      v52 = "handleNSUbiquitousKeyValueStoreDidChangeExternallyNotification change reason is %ld";
      v66 = v65;
      v67 = v49;
      v68 = v51;
      v69 = 12;
LABEL_55:
      _os_log_impl(&dword_22B4CC000, v67, v66, v52, v68, v69);
      MEMORY[0x231898D60](v51, -1, -1);
      goto LABEL_56;
    }

    goto LABEL_56;
  }

  if (v48 == 2)
  {
    v50 = sub_22B7DBCB8();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      v52 = "handleNSUbiquitousKeyValueStoreDidChangeExternallyNotification change reason is NSUbiquitousKeyValueStoreQuotaViolationChange.";
      goto LABEL_54;
    }

    goto LABEL_56;
  }

  if (v48 != 3)
  {
    goto LABEL_48;
  }

  v50 = sub_22B7DBCB8();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    v52 = "handleNSUbiquitousKeyValueStoreDidChangeExternallyNotification change reason is NSUbiquitousKeyValueStoreAccountChange.";
    goto LABEL_54;
  }

LABEL_56:

  sub_22B4D01A0(0, &qword_28141F210, 0x277D85C78);
  v70 = sub_22B7DBD58();
  v71 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v72 = swift_allocObject();
  *(v72 + 16) = v71;
  *(v72 + 24) = v41;
  aBlock[4] = sub_22B747238;
  aBlock[5] = v72;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B4D22C0;
  aBlock[3] = &unk_283F1DA00;
  v73 = _Block_copy(aBlock);

  v74 = v80;
  sub_22B7DACD8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_22B747690(&qword_28141F340, MEMORY[0x277D85198]);
  sub_22B6F0AD4(&unk_27D8CF580, &unk_22B7FB880);
  sub_22B4D1110(&qword_28141F2E0, &unk_27D8CF580, &unk_22B7FB880);
  v75 = v78;
  sub_22B7DC138();
  MEMORY[0x2318956F0](0, v74, v6, v73);
  _Block_release(v73);

  (*(v79 + 8))(v6, v75);
  (*(v81 + 8))(v74, v7);
}

void sub_22B746D2C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_22B743C80(a2);
  }
}

uint64_t sub_22B746DA0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = sub_22B7DA688();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22B7DA658();
  v11 = a1;
  a4(v10);

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_22B746EA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_22B7DB348();
  v24 = *(v5 - 8);
  v6 = *(v24 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_22B7DB398();
  v9 = *(v23 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v23);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v14 = *(Strong + OBJC_IVAR___IMDSyncedSettingsServiceManager_remoteStorageDelegate), v15 = Strong, swift_unknownObjectRetain(), v15, v14))
  {
    v16 = [v14 dictionaryRepresentation];
    swift_unknownObjectRelease();
    v17 = sub_22B7DB588();
  }

  else
  {
    v17 = sub_22B71DF98(MEMORY[0x277D84F90]);
  }

  sub_22B4D01A0(0, &qword_28141F210, 0x277D85C78);
  v18 = sub_22B7DBD58();
  v19 = swift_allocObject();
  v19[2] = a2;
  v19[3] = a3;
  v19[4] = v17;
  aBlock[4] = sub_22B747294;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B4D22C0;
  aBlock[3] = &unk_283F1DAC8;
  v20 = _Block_copy(aBlock);

  sub_22B7DACD8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_22B747690(&qword_28141F340, MEMORY[0x277D85198]);
  sub_22B6F0AD4(&unk_27D8CF580, &unk_22B7FB880);
  sub_22B4D1110(&qword_28141F2E0, &unk_27D8CF580, &unk_22B7FB880);
  sub_22B7DC138();
  MEMORY[0x2318956F0](0, v12, v8, v20);
  _Block_release(v20);

  (*(v24 + 8))(v8, v5);
  return (*(v9 + 8))(v12, v23);
}

uint64_t sub_22B747240()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22B747690(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22B7476D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22B6F0AD4(&unk_27D8CD7D0, &qword_22B7FA3F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B74775C(uint64_t a1, uint64_t a2)
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
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      v6 = v5 && *(v3 - 3) >> 16 == *(i - 3) >> 16;
      v7 = v6 && *(v3 - 2) >> 16 == *(i - 2) >> 16;
      if (!v7 && (sub_22B7DC4D8() & 1) == 0)
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

uint64_t sub_22B747814(uint64_t a1, uint64_t a2)
{
  v20 = sub_22B6F0AD4(&unk_27D8CEEC0, &qword_22B7FA060);
  v4 = *(v20 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v20);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_11:
    v17 = 0;
    return v17 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    sub_22B7DA968();
    v15 = *(v4 + 72);
    while (1)
    {
      sub_22B74BD44(v13, v10);
      sub_22B74BD44(v14, v8);
      sub_22B74BDB4(&qword_281420E88, MEMORY[0x277CC9578]);
      if ((sub_22B7DB658() & 1) == 0)
      {
        break;
      }

      v16 = *(v20 + 36);
      v17 = sub_22B7DB658();
      sub_22B4D0D64(v8, &unk_27D8CEEC0, &qword_22B7FA060);
      sub_22B4D0D64(v10, &unk_27D8CEEC0, &qword_22B7FA060);
      if (v17)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v17 & 1;
    }

    sub_22B4D0D64(v8, &unk_27D8CEEC0, &qword_22B7FA060);
    sub_22B4D0D64(v10, &unk_27D8CEEC0, &qword_22B7FA060);
    goto LABEL_11;
  }

  v17 = 1;
  return v17 & 1;
}

uint64_t sub_22B747A64(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_22B74BCF8();
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x231895C80](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = MEMORY[0x231895C80](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = sub_22B7DBFD8();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_22B7DBFD8();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_22B7DC1C8();
  }

  result = sub_22B7DC1C8();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_22B747CD0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(BOOL, uint64_t, uint64_t, uint64_t))
{
  v5 = a2;
  v7 = *(a3 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v9 = (a3 + 40);
    v10 = 15;
    v11 = a1;
    v37 = a1;
    do
    {
      v13 = *v9;
      if (v10 >> 14 < *(v9 - 1) >> 14)
      {
        v14 = a4();
        v16 = v15;
        v18 = v17;
        v20 = v19;
        swift_beginAccess();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = a5(0, *(v8 + 16) + 1, 1, v8);
        }

        v22 = *(v8 + 16);
        v21 = *(v8 + 24);
        if (v22 >= v21 >> 1)
        {
          v8 = a5(v21 > 1, v22 + 1, 1, v8);
        }

        *(v8 + 16) = v22 + 1;
        v12 = (v8 + 32 * v22);
        v12[4] = v14;
        v12[5] = v16;
        v12[6] = v18;
        v12[7] = v20;
        swift_endAccess();
        v11 = v37;
        v5 = a2;
      }

      v9 += 2;
      v10 = v13;
      --v7;
    }

    while (v7);
  }

  else
  {
    v13 = 15;
    v11 = a1;
  }

  v23 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v23 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (v13 >> 14 < 4 * v23)
  {
    v24 = 7;
    if (((v5 >> 60) & ((v11 & 0x800000000000000) == 0)) != 0)
    {
      v24 = 11;
    }

    v25 = (a4)(v13, v24 | (v23 << 16));
    v27 = v26;
    v29 = v28;
    v31 = v30;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = a5(0, *(v8 + 16) + 1, 1, v8);
    }

    v33 = *(v8 + 16);
    v32 = *(v8 + 24);
    if (v33 >= v32 >> 1)
    {
      v8 = a5(v32 > 1, v33 + 1, 1, v8);
    }

    *(v8 + 16) = v33 + 1;
    v34 = (v8 + 32 * v33);
    v34[4] = v25;
    v34[5] = v27;
    v34[6] = v29;
    v34[7] = v31;
  }

  return v8;
}

uint64_t sub_22B747F0C()
{
  v0 = sub_22B7DB108();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22B6F0AD4(&qword_27D8CEA20, &qword_22B7FAE58);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v12 - v9;
  sub_22B6F24F4(v8, qword_281422750);
  sub_22B4CFA74(v5, qword_281422750);
  sub_22B6F0AD4(&qword_27D8CEA28, &qword_22B7FAE60);
  sub_22B714FD8(&qword_28141F440, &qword_27D8CEA20, &qword_22B7FAE58);
  sub_22B7DB128();
  sub_22B7DB0F8();
  sub_22B7DB138();
  (*(v1 + 8))(v4, v0);
  return (*(v6 + 8))(v10, v5);
}

uint64_t sub_22B748120@<X0>(uint64_t a1@<X8>)
{
  v90 = a1;
  v86 = sub_22B6F0AD4(&qword_27D8CEA30, &qword_22B7FAE68);
  v87 = *(v86 - 8);
  v1 = *(v87 + 64);
  v2 = MEMORY[0x28223BE20](v86);
  v84 = &v77 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v85 = &v77 - v4;
  v5 = sub_22B6F0AD4(&qword_27D8CEA38, &qword_22B7FAE70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v77 - v7;
  v93 = sub_22B6F0AD4(&qword_27D8CEA40, &qword_22B7FAE78);
  v95 = *(v93 - 8);
  v9 = *(v95 + 8);
  v10 = MEMORY[0x28223BE20](v93);
  v80 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v92 = &v77 - v12;
  v13 = sub_22B6F0AD4(&qword_27D8CEA48, &qword_22B7FAE80);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v77 - v20;
  MEMORY[0x28223BE20](v19);
  v97 = &v77 - v22;
  v88 = sub_22B6F0AD4(&qword_27D8CEA50, &qword_22B7FAE88);
  v89 = *(v88 - 8);
  v23 = *(v89 + 64);
  MEMORY[0x28223BE20](v88);
  v79 = &v77 - v24;
  v99 = sub_22B7DB0D8();
  v25 = *(v99 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v99);
  v29 = &v77 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = &v77 - v30;
  v96 = sub_22B6F0AD4(&qword_27D8CEA58, &qword_22B7FAE90);
  v105 = *(v96 - 8);
  v32 = *(v105 + 64);
  v33 = MEMORY[0x28223BE20](v96);
  v82 = &v77 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v100 = &v77 - v36;
  MEMORY[0x28223BE20](v35);
  v104 = &v77 - v37;
  v106 = 37;
  v107 = 0xE100000000000000;
  v81 = sub_22B74BCA4();
  MEMORY[0x231894460](v108, &v106, MEMORY[0x277D837D0], v81);
  sub_22B7DAB18();
  v38 = sub_22B7DB118();
  (*(*(v38 - 8) + 56))(v8, 1, 1, v38);
  sub_22B7DAB18();
  sub_22B748C14(v18);
  v83 = MEMORY[0x277D85AC0];
  v39 = sub_22B714FD8(&qword_28141F448, &qword_27D8CEA48, &qword_22B7FAE80);
  v40 = MEMORY[0x277D83E40];
  v78 = v21;
  v41 = v8;
  v42 = v13;
  v94 = v39;
  sub_22B7DB0C8();
  v101 = *(v14 + 8);
  v102 = v14 + 8;
  v101(v18, v13);
  v91 = *(v25 + 8);
  v103 = v25 + 8;
  v43 = v99;
  v91(v29, v99);
  sub_22B4D0D64(v41, &qword_27D8CEA38, &qword_22B7FAE70);
  v44 = v80;
  MEMORY[0x231894480](v21, v40);
  v45 = sub_22B714FD8(&qword_28141F480, &qword_27D8CEA40, &qword_22B7FAE78);
  v47 = v92;
  v46 = v93;
  MEMORY[0x231894460](v44, v93, v45);
  v48 = *(v95 + 1);
  v48(v44, v46);
  v49 = v97;
  sub_22B7DAAF8();
  v48(v47, v46);
  v50 = sub_22B6F0AD4(&qword_27D8CEA60, &qword_22B7FAE98);
  v51 = v79;
  v92 = v50;
  v98 = v13;
  sub_22B7DB0A8();
  v52 = v49;
  v101(v49, v42);
  v53 = v91;
  v91(v31, v43);
  v54 = v100;
  v55 = v51;
  MEMORY[0x2318944B0](v51, v50);
  v93 = sub_22B714FD8(&qword_28141F470, &qword_27D8CEA58, &qword_22B7FAE90);
  v56 = v96;
  MEMORY[0x231894460](v54, v96, v93);
  v57 = *(v105 + 8);
  v105 += 8;
  v95 = v57;
  v57(v54, v56);
  sub_22B7DAB18();
  v58 = v84;
  sub_22B7DAB58();
  v59 = sub_22B714FD8(&qword_28141F468, &qword_27D8CEA30, &qword_22B7FAE68);
  v60 = v85;
  v61 = v86;
  MEMORY[0x231894460](v58, v86, v59);
  v62 = *(v87 + 8);
  v62(v58, v61);
  sub_22B7DAAF8();
  v62(v60, v61);
  v63 = v52;
  v64 = v92;
  v65 = v98;
  sub_22B7DB0A8();
  v66 = v101;
  v101(v63, v65);
  v53(v31, v99);
  v67 = v82;
  MEMORY[0x2318944B0](v55, v64);
  v68 = v96;
  MEMORY[0x231894460](v67, v96, v93);
  v95(v67, v68);
  v106 = v108[0];
  v107 = v108[1];
  sub_22B7DAAF8();

  sub_22B7DAB18();
  v69 = v78;
  v70 = v98;
  sub_22B7DB098();
  sub_22B7DB078();
  v66(v69, v70);
  v71 = v99;
  v72 = v91;
  v91(v31, v99);
  sub_22B7DAB18();
  sub_22B6F0AD4(&qword_27D8CEA28, &qword_22B7FAE60);
  sub_22B714FD8(&qword_28141F438, &qword_27D8CEA50, &qword_22B7FAE88);
  v73 = v100;
  v74 = v88;
  sub_22B7DB078();
  v72(v31, v71);
  (*(v89 + 8))(v55, v74);
  v101(v97, v98);
  v75 = v95;
  v95(v73, v68);
  return v75(v104, v68);
}

uint64_t sub_22B748C14@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v43 = sub_22B6F0AD4(&qword_27D8CEA48, &qword_22B7FAE80);
  v46 = *(v43 - 8);
  v1 = *(v46 + 64);
  v2 = MEMORY[0x28223BE20](v43);
  v45 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v44 = &v41 - v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v41 - v6;
  v49 = sub_22B7DB0D8();
  v8 = *(v49 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v49);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22B6F0AD4(&qword_27D8CEA38, &qword_22B7FAE70);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v41 - v14;
  v16 = sub_22B7DAB28();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22B6F0AD4(&qword_27D8CEA68, &qword_22B7FAEA0);
  v50 = *(v21 - 8);
  v22 = *(v50 + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v41 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v48 = &v41 - v26;
  sub_22B7DB0E8();
  v27 = sub_22B7DB118();
  (*(*(v27 - 8) + 56))(v15, 1, 1, v27);
  sub_22B7DAB18();
  sub_22B74BDB4(&qword_28141F478, MEMORY[0x277D853D0]);
  v28 = MEMORY[0x277D83E40];
  sub_22B7DB0B8();
  v29 = *(v8 + 8);
  v41 = v8 + 8;
  v42 = v29;
  v29(v11, v49);
  sub_22B4D0D64(v15, &qword_27D8CEA38, &qword_22B7FAE70);
  (*(v17 + 8))(v20, v16);
  v30 = v7;
  MEMORY[0x2318944E0](v7, v28);
  v31 = sub_22B714FD8(&qword_28141F460, &qword_27D8CEA68, &qword_22B7FAEA0);
  MEMORY[0x231894460](v25, v21, v31);
  v32 = *(v50 + 8);
  v50 += 8;
  v32(v25, v21);
  v51 = 36;
  v52 = 0xE100000000000000;
  v33 = sub_22B74BCA4();
  MEMORY[0x231894460](v53, &v51, MEMORY[0x277D837D0], v33);
  sub_22B7DAAF8();
  v35 = v53[0];
  v34 = v53[1];
  sub_22B7DAB18();
  v51 = v35;
  v52 = v34;
  sub_22B714FD8(&qword_28141F448, &qword_27D8CEA48, &qword_22B7FAE80);
  v36 = v43;
  v37 = v44;
  sub_22B7DB098();
  v38 = v45;
  sub_22B7DB098();

  sub_22B7DB078();
  v39 = *(v46 + 8);
  v39(v38, v36);
  v39(v37, v36);
  v42(v11, v49);
  v39(v30, v36);
  return (v32)(v48, v21);
}

uint64_t sub_22B7491E0@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v1 = sub_22B6F0AD4(&qword_27D8CEA48, &qword_22B7FAE80);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v23 - v3;
  v24 = sub_22B7DB0D8();
  v5 = *(v24 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v24);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22B6F0AD4(&qword_27D8CEA30, &qword_22B7FAE68);
  v27 = *(v9 - 8);
  v10 = *(v27 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v26 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = v23 - v13;
  v33 = 64;
  v34 = 0xE100000000000000;
  v15 = sub_22B74BCA4();
  v16 = MEMORY[0x277D837D0];
  MEMORY[0x231894440](v35, &v33, MEMORY[0x277D837D0], v15);
  v31 = 115;
  v32 = 0xE100000000000000;
  MEMORY[0x231894440](&v33, &v31, v16, v15);
  v29 = 83;
  v30 = 0xE100000000000000;
  MEMORY[0x231894440](&v31, &v29, v16, v15);
  v29 = v35[0];
  v30 = v35[1];
  v25 = v14;
  sub_22B7DAAD8();

  v29 = v33;
  v30 = v34;
  sub_22B7DAB18();
  v23[2] = sub_22B714FD8(&qword_28141F468, &qword_27D8CEA30, &qword_22B7FAE68);
  v17 = MEMORY[0x277D83E40];
  sub_22B7DB088();
  v18 = *(v5 + 8);
  v23[1] = v5 + 8;
  v19 = v24;
  v18(v8, v24);

  v20 = v26;
  MEMORY[0x2318944C0](v4, v17);
  v29 = v31;
  v30 = v32;
  sub_22B7DAB18();
  sub_22B7DB088();
  v18(v8, v19);

  MEMORY[0x2318944C0](v4, v17);
  v21 = *(v27 + 8);
  v21(v20, v9);
  return (v21)(v25, v9);
}

uint64_t sub_22B749568(uint64_t a1, char a2, char a3, uint64_t a4)
{
  *(v4 + 16) = 0;
  *(v4 + 24) = MEMORY[0x277D84F90];
  *(v4 + 32) = 0;
  v7 = *(a1 + 16);
  v8 = v7;
  v9 = v7;
  if (v7)
  {
    v9 = 0;
    v10 = (a1 + 40);
    while (!((*v10 ^ *(v10 - 1)) >> 14))
    {
      v10 += 4;
      if (v7 == ++v9)
      {
        v9 = *(a1 + 16);
        break;
      }
    }
  }

  v11 = (a1 + 32 * v7 + 8);
  while (v8)
  {
    --v8;
    v12 = *v11 ^ *(v11 - 1);
    v11 -= 4;
    if (v12 >= 0x4000)
    {
      goto LABEL_11;
    }
  }

  v8 = v7 - 1;
LABEL_11:
  v13 = v7 - 1 - v8;
  *(v4 + 16) = (v9 == 0) & a2;
  *(v4 + 32) = a3 & (v13 == 0);
  v14 = v7 - v13;
  if (__OFSUB__(v7, v13))
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v14 < v9)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v7 < v14)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v14 < 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v7 != v14 - v9)
  {
LABEL_21:
    sub_22B74ADF8(a1, a1 + 32, v9, (2 * v14) | 1);
    v17 = v16;

    v18 = *(v4 + 24);
    a1 = v17;
  }

  *(v4 + 24) = a1;

  *(v4 + 40) = a4;
  return v4;
}

uint64_t sub_22B7496B0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v8 = HIBYTE(a6) & 0xF;
  if ((a6 & 0x2000000000000000) == 0)
  {
    v8 = a5;
  }

  v9 = 7;
  if (((a6 >> 60) & ((a5 & 0x800000000000000) == 0)) != 0)
  {
    v9 = 11;
  }

  v10 = v9 | (v8 << 16);
  v11 = a2 ^ a1;

  if (v11 >= 0x4000)
  {
    v12 = a2;
    do
    {
      v14 = sub_22B7DC068();
      if (v10 < 0x4000)
      {

        return v12;
      }

      v15 = v14;
      sub_22B7DB788();
      v16 = sub_22B7DB878();
      v18 = v17;
      sub_22B7DC068();
      if (v16 == sub_22B7DC098() && v18 == v19)
      {
      }

      else
      {
        v13 = sub_22B7DC518();

        if ((v13 & 1) == 0)
        {

          return 0;
        }
      }

      v10 = sub_22B7DB788();
      v12 = v15;
    }

    while ((v15 ^ a1) >= 0x4000);
  }

  if (v10 >> 14)
  {
    return 0;
  }

  else
  {
    return a1;
  }
}

unint64_t sub_22B7498A4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v12 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v13 = 11;
  }

  else
  {
    v13 = 7;
  }

  v14 = v13 | (v12 << 16);
  v29 = 15;

  if (v12)
  {
    v26 = v12 << 16;
    v15 = 15;
    v16 = a3;
    while (1)
    {
      sub_22B74B0B8(&v29, a1, a2);
      if ((v16 ^ a4) < 0x4000)
      {

        return v15;
      }

      sub_22B75A66C(v16, a3, a4, a5, a6);
      if ((a6 & 0x1000000000000000) != 0)
      {
        v17 = sub_22B7DC2D8();
      }

      else
      {
        if ((a6 & 0x2000000000000000) != 0)
        {
          v27 = a5;
          v28 = a6 & 0xFFFFFFFFFFFFFFLL;
        }

        else if ((a5 & 0x1000000000000000) == 0)
        {
          sub_22B7DC328();
        }

        v17 = sub_22B7DC338();
      }

      v18 = v17;
      v19 = sub_22B7C1564(v15, a1, a2);
      if ((a2 & 0x1000000000000000) != 0)
      {
        v23 = sub_22B7DC2D8();
      }

      else
      {
        v20 = v19 >> 16;
        if ((a2 & 0x2000000000000000) != 0)
        {
          v27 = a1;
          v28 = a2 & 0xFFFFFFFFFFFFFFLL;
          v22 = &v27 + v20;
        }

        else
        {
          v21 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v21 = sub_22B7DC328();
          }

          v22 = (v21 + v20);
        }

        v23 = *v22;
        if (*v22 < 0)
        {
          v24 = (__clz(v23 ^ 0xFF) - 24);
          if (v24 > 2)
          {
            if (v24 == 3)
            {
              v23 = ((v23 & 0xF) << 12) | ((v22[1] & 0x3F) << 6) | v22[2] & 0x3F;
            }

            else
            {
              v23 = ((v23 & 0xF) << 18) | ((v22[1] & 0x3F) << 12) | ((v22[2] & 0x3F) << 6) | v22[3] & 0x3F;
            }
          }

          else if (v24 != 1)
          {
            v23 = v22[1] & 0x3F | ((v23 & 0x1F) << 6);
          }
        }
      }

      if (v18 != v23)
      {
        break;
      }

      v16 = sub_22B7DC028();
      v15 = v29;
      if ((v29 ^ v26) < 0x4000)
      {
        goto LABEL_35;
      }
    }

    return 0;
  }

  else
  {
    v16 = a3;
LABEL_35:

    if ((v16 ^ a4) >> 14)
    {
      return 0;
    }

    else
    {
      return v14;
    }
  }
}

unint64_t sub_22B749B7C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8)
{
  v28[1] = a1;
  v28[2] = a2;
  v28[3] = a3;
  v28[4] = a4;
  sub_22B704A08();
  sub_22B7DBB78();
  v14 = v26;
  v28[0] = v26;
  if ((v26 ^ v27) >= 0x4000)
  {
    v21 = a3;
    v15 = v26;
    v16 = a5;
    while (1)
    {
      sub_22B74B0B8(v28, v24, v25);
      if ((a5 ^ a6) < 0x4000)
      {
        break;
      }

      sub_22B75A66C(a5, v16, a6, a7, a8);
      v17 = v14;
      if ((a8 & 0x1000000000000000) != 0)
      {
        v18 = sub_22B7DC2D8();
      }

      else
      {
        if ((a8 & 0x2000000000000000) == 0 && (a7 & 0x1000000000000000) == 0)
        {
          sub_22B7DC328();
        }

        v18 = sub_22B7DC338();
      }

      v19 = v18;
      sub_22B75A66C(v15, a1, a2, v21, a4);
      if ((a4 & 0x1000000000000000) != 0)
      {
        if (v19 != sub_22B7DC2D8())
        {
          goto LABEL_21;
        }
      }

      else
      {
        if ((a4 & 0x2000000000000000) == 0 && (v21 & 0x1000000000000000) == 0)
        {
          sub_22B7DC328();
        }

        if (v19 != sub_22B7DC338())
        {
LABEL_21:

          return 0;
        }
      }

      a5 = sub_22B7DC028();
      v15 = v28[0];
      v14 = v17;
      if ((v28[0] ^ v27) < 0x4000)
      {
        goto LABEL_2;
      }
    }
  }

  else
  {
LABEL_2:

    if ((a5 ^ a6) >> 14)
    {
      return 0;
    }

    else
    {
      return a2;
    }
  }

  return v15;
}

unint64_t sub_22B749DEC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v12 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v12)
  {
    v13 = 7;
    if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
    {
      v13 = 11;
    }

    v14 = v13 | (v12 << 16);
    v37 = a2 & 0xFFFFFFFFFFFFFFLL;
    v15 = a4;
    while (1)
    {
      v16 = sub_22B74AED0(v14, a1, a2);
      if ((v15 ^ a3) < 0x4000)
      {

        return v14;
      }

      v17 = v16;
      v18 = sub_22B7DC038();
      sub_22B75A66C(v18, a3, a4, a5, a6);
      if ((a6 & 0x1000000000000000) != 0)
      {
        v19 = sub_22B7DC2D8();
      }

      else
      {
        if ((a6 & 0x2000000000000000) != 0)
        {
          v38 = a5;
          v39 = a6 & 0xFFFFFFFFFFFFFFLL;
        }

        else if ((a5 & 0x1000000000000000) == 0)
        {
          sub_22B7DC328();
        }

        v19 = sub_22B7DC338();
      }

      v20 = v19;
      result = sub_22B7030EC(v14, a1, a2);
      if (result < 0x4000)
      {
        __break(1u);
        return result;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v35 = sub_22B7DB728();
        sub_22B7C1564(v35, a1, a2);
        v33 = sub_22B7DC2D8();
        goto LABEL_35;
      }

      v22 = result >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v38 = a1;
        v39 = v37;
        if ((*(&v37 + v22 + 7) & 0xC0) == 0x80)
        {
          v28 = -2;
          do
          {
            v29 = *(&v38 + v22 + v28--) & 0xC0;
          }

          while (v29 == 128);
          v27 = v28 + 1;
          goto LABEL_29;
        }
      }

      else
      {
        v23 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v36 = result;
          v23 = sub_22B7DC328();
          result = v36;
        }

        v24 = v23 + v22;
        if ((*(v24 - 1) & 0xC0) == 0x80)
        {
          v25 = -2;
          do
          {
            v26 = *(v24 + v25--) & 0xC0;
          }

          while (v26 == 128);
          v27 = v25 + 1;
          goto LABEL_29;
        }
      }

      v27 = -1;
LABEL_29:
      v30 = sub_22B7C1564((result + (v27 << 16)) & 0xFFFFFFFFFFFF0000 | 5, a1, a2) >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v38 = a1;
        v39 = v37;
        v32 = &v38 + v30;
      }

      else
      {
        v31 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v31 = sub_22B7DC328();
        }

        v32 = (v31 + v30);
      }

      v33 = *v32;
      if (*v32 < 0)
      {
        v34 = (__clz(v33 ^ 0xFF) - 24);
        if (v34 > 2)
        {
          if (v34 == 3)
          {
            v33 = ((v33 & 0xF) << 12) | ((v32[1] & 0x3F) << 6) | v32[2] & 0x3F;
          }

          else
          {
            v33 = ((v33 & 0xF) << 18) | ((v32[1] & 0x3F) << 12) | ((v32[2] & 0x3F) << 6) | v32[3] & 0x3F;
          }
        }

        else if (v34 != 1)
        {
          v33 = v32[1] & 0x3F | ((v33 & 0x1F) << 6);
        }
      }

LABEL_35:
      if (v20 != v33)
      {

        return 0;
      }

      v15 = sub_22B7DC038();
      v14 = v17;
      if (v17 < 0x4000)
      {
        goto LABEL_47;
      }
    }
  }

  v15 = a4;
LABEL_47:

  if ((v15 ^ a3) >> 14)
  {
    return 0;
  }

  else
  {
    return 15;
  }
}

unint64_t sub_22B74A1AC()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  if (!v2)
  {
    v3 = 0;
LABEL_16:
    result = v3 + 8;
    if (__OFADD__(v3, 8))
    {
      goto LABEL_19;
    }

    return result;
  }

  v3 = 0;
  v4 = (v1 + 56);
  while (1)
  {
    result = *(v4 - 3);
    v6 = *(v4 - 2);
    v7 = *(v4 - 1);
    v8 = *v4;
    if ((*v4 & 0x1000000000000000) != 0)
    {
      break;
    }

    if ((*(v4 - 3) & 0xC) == 8)
    {
      result = sub_22B7C1398(result, *(v4 - 1), *v4);
    }

    if ((v6 & 0xC) == 8)
    {
      v14 = result;
      v6 = sub_22B7C1398(v6, v7, v8);
      result = v14;
    }

    v9 = (v6 >> 16) - (result >> 16);
    v10 = __OFADD__(v3, v9);
    v3 += v9;
    if (v10)
    {
      goto LABEL_18;
    }

LABEL_9:
    v4 += 4;
    if (!--v2)
    {
      goto LABEL_16;
    }
  }

  v11 = *(v4 - 2);
  v12 = *(v4 - 1);
  v13 = *v4;
  result = sub_22B7DB848();
  if ((result + 0x4000000000000000) < 0)
  {
    goto LABEL_20;
  }

  v10 = __OFADD__(v3, 2 * result);
  v3 += 2 * result;
  if (!v10)
  {
    goto LABEL_9;
  }

LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_22B74A2AC()
{
  v1 = v0;
  v2 = *(v0 + 24);
  v3 = v2[2];
  if (v3)
  {
    v4 = *(v0 + 16);
    v5 = v2[4];
    v6 = v2[5];
    v8 = v2[6];
    v7 = v2[7];

    if ((v4 & 1) == 0)
    {
      MEMORY[0x231895140](16421, 0xE200000000000000);
    }

    MEMORY[0x231895120](v5, v6, v8, v7);

    v9 = v3 - 1;
    if (v9)
    {
      v10 = v2 + 11;
      do
      {
        v11 = *(v10 - 3);
        v12 = *(v10 - 2);
        v13 = *(v10 - 1);
        v14 = *v10;

        MEMORY[0x231895140](16421, 0xE200000000000000);
        MEMORY[0x231895120](v11, v12, v13, v14);

        v10 += 4;
        --v9;
      }

      while (v9);
    }
  }

  if ((*(v1 + 32) & 1) == 0)
  {
    MEMORY[0x231895140](16421, 0xE200000000000000);
  }

  return 0;
}

uint64_t sub_22B74A3D4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocClassInstance();
}

unsigned __int8 *sub_22B74A468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_22B74BC50();

  result = sub_22B7DB888();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_22B74AA00();
    v37 = v36;

    v7 = v37;
    if ((v37 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_22B7DC328();
      v9 = v63;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v21 = v9 - 1;
        if (v21)
        {
          v22 = a5 + 48;
          v23 = a5 + 55;
          v24 = a5 + 87;
          if (a5 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v15 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v19 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_127;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              v28 = v15 * a5;
              if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v15 = v28 + (v26 + v27);
              if (__OFADD__(v28, (v26 + v27)))
              {
                goto LABEL_126;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_46:
            v19 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v19 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v29 = a5 + 48;
        v30 = a5 + 55;
        v31 = a5 + 87;
        if (a5 > 10)
        {
          v29 = 58;
        }

        else
        {
          v31 = 97;
          v30 = 65;
        }

        if (result)
        {
          v32 = 0;
          do
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v29)
            {
              if (v33 < 0x41 || v33 >= v30)
              {
                v19 = 0;
                if (v33 < 0x61 || v33 >= v31)
                {
                  goto LABEL_127;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            v35 = v32 * a5;
            if ((v32 * a5) >> 64 != (v32 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v32 = v35 + (v33 + v34);
            if (__OFADD__(v35, (v33 + v34)))
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v19 = v35 + (v33 + v34);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_127;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v15 * a5;
            if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v15 = v20 - (v17 + v18);
            if (__OFSUB__(v20, (v17 + v18)))
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v19 = 0;
LABEL_127:

        return v19;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v38 = HIBYTE(v7) & 0xF;
  v64 = v8;
  v65 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v38)
      {
        v40 = 0;
        v56 = a5 + 48;
        v57 = a5 + 55;
        v58 = a5 + 87;
        if (a5 > 10)
        {
          v56 = 58;
        }

        else
        {
          v58 = 97;
          v57 = 65;
        }

        v59 = &v64;
        while (1)
        {
          v60 = *v59;
          if (v60 < 0x30 || v60 >= v56)
          {
            if (v60 < 0x41 || v60 >= v57)
            {
              v19 = 0;
              if (v60 < 0x61 || v60 >= v58)
              {
                goto LABEL_127;
              }

              v61 = -87;
            }

            else
            {
              v61 = -55;
            }
          }

          else
          {
            v61 = -48;
          }

          v62 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v62 + (v60 + v61);
          if (__OFADD__(v62, (v60 + v61)))
          {
            goto LABEL_126;
          }

          v59 = (v59 + 1);
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v38)
    {
      v39 = v38 - 1;
      if (v39)
      {
        v40 = 0;
        v41 = a5 + 48;
        v42 = a5 + 55;
        v43 = a5 + 87;
        if (a5 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        v44 = &v64 + 1;
        while (1)
        {
          v45 = *v44;
          if (v45 < 0x30 || v45 >= v41)
          {
            if (v45 < 0x41 || v45 >= v42)
            {
              v19 = 0;
              if (v45 < 0x61 || v45 >= v43)
              {
                goto LABEL_127;
              }

              v46 = -87;
            }

            else
            {
              v46 = -55;
            }
          }

          else
          {
            v46 = -48;
          }

          v47 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v47 - (v45 + v46);
          if (__OFSUB__(v47, (v45 + v46)))
          {
            goto LABEL_126;
          }

          ++v44;
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v38)
  {
    v48 = v38 - 1;
    if (v48)
    {
      v40 = 0;
      v49 = a5 + 48;
      v50 = a5 + 55;
      v51 = a5 + 87;
      if (a5 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v64 + 1;
      do
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            v19 = 0;
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_127;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v40 * a5;
        if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v40 = v55 + (v53 + v54);
        if (__OFADD__(v55, (v53 + v54)))
        {
          goto LABEL_126;
        }

        ++v52;
        --v48;
      }

      while (v48);
LABEL_125:
      v19 = v40;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_22B74AA00()
{
  v0 = sub_22B7DB898();
  v4 = sub_22B74AA80(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_22B74AA80(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_22B7DB748();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_22B7DC078();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_22B4D1E08(v9, 0);
  v12 = sub_22B74ABD8(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_22B7DB748();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_22B7DC328();
LABEL_4:

  return sub_22B7DB748();
}

unint64_t sub_22B74ABD8(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_22B7C1398(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_22B7DB828();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_22B7DC328();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_22B7C1398(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_22B7DB7F8();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

void sub_22B74ADF8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_22B6F0AD4(&qword_27D8CDA20, &unk_22B7FA040);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 1;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 5);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_22B74AED0(unint64_t a1, unint64_t a2, unint64_t a3)
{
  v5 = sub_22B7030EC(a1, a2, a3);
  if (v5 < 0x4000)
  {
    __break(1u);
  }

  else if ((a3 & 0x1000000000000000) == 0)
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v15[0] = a2;
      v15[1] = a3 & 0xFFFFFFFFFFFFFFLL;
      v10 = v15 + (v5 >> 16);
      if ((*(v10 - 1) & 0xC0) == 0x80)
      {
        v8 = -2;
        do
        {
          v11 = v10[v8--] & 0xC0;
        }

        while (v11 == 128);
        goto LABEL_13;
      }
    }

    else
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        v14 = v5;
        v6 = sub_22B7DC328();
        v5 = v14;
      }

      v7 = v6 + (v5 >> 16);
      if ((*(v7 - 1) & 0xC0) == 0x80)
      {
        v8 = -2;
        do
        {
          v9 = *(v7 + v8--) & 0xC0;
        }

        while (v9 == 128);
LABEL_13:
        v12 = v8 + 1;
        return (v5 + (v12 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
      }
    }

    v12 = -1;
    return (v5 + (v12 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
  }

  return sub_22B7DB728();
}

uint64_t sub_22B74AFEC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = sub_22B7DC328();
  }

  result = sub_22B74B1E4(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = v13 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

uint64_t sub_22B74B0B8(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  v6 = sub_22B7C1564(*a1, a2, a3);
  if ((a3 & 0x1000000000000000) != 0)
  {
    result = sub_22B7DB718();
  }

  else
  {
    v7 = v6 >> 16;
    if ((a3 & 0x2000000000000000) != 0)
    {
      v13[0] = a2;
      v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
      v9 = *(v13 + v7);
    }

    else
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        v8 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        v8 = sub_22B7DC328();
      }

      v9 = *(v8 + v7);
    }

    v10 = v9;
    v11 = __clz(v9 ^ 0xFF) - 24;
    if (v10 >= 0)
    {
      LOBYTE(v11) = 1;
    }

    result = ((v7 + v11) << 16) | 5;
  }

  *a1 = result;
  return result;
}

uint64_t sub_22B74B170(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 32) == *(a2 + 32))
  {
    return sub_22B74775C(*(a1 + 24), *(a2 + 24));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22B74B1A4()
{
  result = *(v0 + 24);
  v2 = *(result + 16);
  if (v2)
  {
    if (v2 - *(v0 + 32) <= *(v0 + 16))
    {
      v3 = *(v0 + 16);
    }
  }

  return result;
}

uint64_t sub_22B74B1E4(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_22B7C1398(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_95;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_22B7DB818();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_22B7C1398(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_22B7C1398(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_91;
  }

  if (v25 < a3 >> 16)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  result = sub_22B7DB818();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_90;
  }

  if (v26 < v13)
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a6 + 48;
        v40 = a6 + 55;
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v39)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                if (v44 < 0x61 || v44 >= v41)
                {
                  return v37;
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            v46 = v32 * a6;
            if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
            {
              return 0;
            }

            v32 = v46 + (v44 + v45);
            if (__OFADD__(v46, (v44 + v45)))
            {
              return 0;
            }

            ++v42;
            --v43;
          }

          while (v43);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_94;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v47 = a6 + 48;
      v48 = a6 + 55;
      v49 = a6 + 87;
      if (a6 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v50 = *v27;
          if (v50 < 0x30 || v50 >= v47)
          {
            if (v50 < 0x41 || v50 >= v48)
            {
              v37 = 0;
              if (v50 < 0x61 || v50 >= v49)
              {
                return v37;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v52 + (v50 + v51);
          if (__OFADD__(v52, (v50 + v51)))
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v38 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v38 - (v35 + v36);
          if (__OFSUB__(v38, (v35 + v36)))
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

uint64_t sub_22B74B650(uint64_t a1, unint64_t a2)
{
  v63 = sub_22B6F0AD4(&qword_27D8CEA18, &qword_22B7FAE50);
  v4 = *(v63 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v63);
  v58 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v54 - v8;
  v56 = a1;
  v68 = a1;
  v69 = a2;
  v57 = a2;
  if (qword_281420940 != -1)
  {
LABEL_30:
    swift_once();
  }

  v10 = sub_22B6F0AD4(&qword_27D8CEA20, &qword_22B7FAE58);
  sub_22B4CFA74(v10, qword_281422750);
  sub_22B6F0AD4(&qword_27D8CEA28, &qword_22B7FAE60);
  sub_22B74BBFC();
  sub_22B714FD8(&qword_28141F440, &qword_27D8CEA20, &qword_22B7FAE58);
  v11 = sub_22B7DB5E8();
  v12 = *(v11 + 16);
  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    v68 = MEMORY[0x277D84F90];
    sub_22B7AB6D4(0, v12, 0);
    v13 = v68;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v66 = v15;
    v16 = (*(v14 + 64) + 32) & ~*(v14 + 64);
    v55 = v11;
    v17 = v11 + v16;
    v18 = *(v14 + 56);
    v67 = v14;
    v64 = (v14 - 8);
    v65 = v18;
    v62 = v11 + v16;
    do
    {
      v19 = v63;
      v66(v9, v17, v63);
      v20 = sub_22B7DB148();
      v22 = v21;
      v23 = *v64;
      (*v64)(v9, v19);
      v68 = v13;
      v25 = *(v13 + 16);
      v24 = *(v13 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_22B7AB6D4((v24 > 1), v25 + 1, 1);
        v13 = v68;
      }

      *(v13 + 16) = v25 + 1;
      v26 = v13 + 16 * v25;
      *(v26 + 32) = v20;
      *(v26 + 40) = v22;
      v17 += v65;
      --v12;
    }

    while (v12);
    v60 = *(v55 + 16);
    if (v60)
    {
      v59 = v23;
      v27 = 0;
      v28 = MEMORY[0x277D84F90];
      v29 = v62;
      v9 = v63;
      v30 = v58;
      while (1)
      {
        v61 = v28;
        v62 = v29;
        v66(v30, v29, v9);
        sub_22B7DB158();
        v31 = v70;
        v32 = v71;
        v4 = v72;
        v33 = v73;

        v34 = sub_22B7496B0(v31, v32, v4, v33, 36, 0xE100000000000000);
        if (v35)
        {

          v36 = v27;
        }

        else
        {
          if (v34 >> 14 < v31 >> 14)
          {
            __break(1u);
            goto LABEL_30;
          }

          v38 = sub_22B7DC0A8();
          v40 = v39;
          v42 = v41;
          v44 = v43;

          if ((v38 ^ v40) >> 14)
          {
            v45 = sub_22B74AFEC(v38, v40, v42, v44, 10);
            if ((v46 & 0x100) != 0)
            {
              v45 = sub_22B74A468(v38, v40, v42, v44, 10);
            }

            v47 = v45;
            v48 = v46;

            v30 = v58;
            v28 = v61;
            v37 = v62;
            if (v48)
            {
              v36 = v27;
            }

            else
            {
              v36 = v47;
            }

            v9 = v63;
            goto LABEL_20;
          }

          v36 = v27;
          v30 = v58;
        }

        v28 = v61;
        v37 = v62;
LABEL_20:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = sub_22B71B8E0(0, *(v28 + 2) + 1, 1, v28);
        }

        v50 = *(v28 + 2);
        v49 = *(v28 + 3);
        if (v50 >= v49 >> 1)
        {
          v28 = sub_22B71B8E0((v49 > 1), v50 + 1, 1, v28);
        }

        ++v27;
        v59(v30, v9);
        *(v28 + 2) = v50 + 1;
        *&v28[8 * v50 + 32] = v36;
        v29 = v37 + v65;
        if (v60 == v27)
        {

          goto LABEL_28;
        }
      }
    }
  }

  v28 = MEMORY[0x277D84F90];
LABEL_28:
  v51 = sub_22B747CD0(v56, v57, v13, MEMORY[0x277D83868], sub_22B71B9F0);

  type metadata accessor for MatchCriteria();
  v52 = swift_allocObject();
  sub_22B749568(v51, 1, 1, v28);
  return v52;
}

unint64_t sub_22B74BBFC()
{
  result = qword_28141F318;
  if (!qword_28141F318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28141F318);
  }

  return result;
}

unint64_t sub_22B74BC50()
{
  result = qword_28141F2E8;
  if (!qword_28141F2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28141F2E8);
  }

  return result;
}

unint64_t sub_22B74BCA4()
{
  result = qword_28141F320;
  if (!qword_28141F320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28141F320);
  }

  return result;
}

unint64_t sub_22B74BCF8()
{
  result = qword_28141F160;
  if (!qword_28141F160)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28141F160);
  }

  return result;
}

uint64_t sub_22B74BD44(uint64_t a1, uint64_t a2)
{
  v4 = sub_22B6F0AD4(&unk_27D8CEEC0, &qword_22B7FA060);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B74BDB4(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_22B74BDFC()
{
  result = [objc_allocWithZone(IMDServiceReachabilityController) init];
  qword_27D8CEA70 = result;
  return result;
}

void __swiftcall IMDServiceReachabilityController.init()(IMDServiceReachabilityController *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

void sub_22B74BF9C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [a1 participantHandles];
  if (v8)
  {
    v9 = v8;
    sub_22B4D01A0(0, &qword_28141F298, off_2786FF850);
    v10 = sub_22B7DB8F8();
    v11 = [v4 reachabilityContextForChat_];
    v13[4] = a3;
    v13[5] = a4;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 1107296256;
    v13[2] = sub_22B74CEAC;
    v13[3] = &unk_283F1DC30;
    v12 = _Block_copy(v13);

    [v4 calculateServiceForSendingToHandles:v9 accounts:v10 context:v11 completionBlock:v12];
    _Block_release(v12);
  }

  else
  {
    __break(1u);
  }
}

void sub_22B74C1CC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v53 = a1;
  v54 = a3;
  v52 = sub_22B7DA9A8();
  v9 = *(v52 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v52);
  v51 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = v5;
  v13[4] = a4;
  v13[5] = a5;
  v14 = objc_allocWithZone(MEMORY[0x277D1AB90]);
  aBlock[4] = sub_22B74C9D4;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B74CEAC;
  aBlock[3] = &unk_283F1DBB8;
  v15 = _Block_copy(aBlock);

  v16 = v5;

  v17 = [v14 initWithDelegate:v16 updateHandler:v15];
  _Block_release(v15);

  swift_beginAccess();
  v47 = v12;
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  v55 = v17;
  sub_22B7C9340(&v58, v55);
  swift_endAccess();

  if (a2 >> 62)
  {
    v18 = sub_22B7DC1C8();
    if (v18)
    {
      goto LABEL_3;
    }

LABEL_21:
    v20 = MEMORY[0x277D84F90];
    goto LABEL_22;
  }

  v18 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v18)
  {
    goto LABEL_21;
  }

LABEL_3:
  if (v18 < 1)
  {
    __break(1u);
    return;
  }

  v19 = 0;
  v56 = a2 & 0xC000000000000001;
  v20 = MEMORY[0x277D84F90];
  v48 = (v9 + 8);
  v49 = v18;
  v50 = a2;
  do
  {
    if (v56)
    {
      v21 = MEMORY[0x231895C80](v19, a2);
    }

    else
    {
      v21 = *(a2 + 8 * v19 + 32);
    }

    v22 = v21;
    v23 = [v21 session];
    if (v23)
    {
      v24 = v23;
      v25 = v51;
      sub_22B7DA998();
      sub_22B7DA978();
      (*v48)(v25, v52);
      v26 = [v22 service];
      v27 = [v26 internalName];

      if (!v27)
      {
        sub_22B7DB6A8();
        v27 = sub_22B7DB678();
      }

      v57 = v20;
      v28 = [v22 accountID];
      if (!v28)
      {
        sub_22B7DB6A8();
        v28 = sub_22B7DB678();
      }

      v29 = objc_allocWithZone(MEMORY[0x277D1ABA8]);
      v30 = sub_22B7DB8F8();
      v31 = sub_22B7DB678();
      v32 = [v29 initWithHandleIDs:v30 requestID:v31 serviceName:v27 accountID:v28 context:v54];

      v33 = sub_22B7DB678();

      v34 = v55;
      [v55 beganRequestWithID_];

      v35 = swift_allocObject();
      v35[2] = v24;
      v35[3] = v32;
      v35[4] = v34;
      v36 = v34;
      v37 = v24;
      v38 = v32;
      v20 = v57;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_22B71C2E8(0, v20[2] + 1, 1, v20);
      }

      v18 = v49;
      a2 = v50;
      v40 = v20[2];
      v39 = v20[3];
      if (v40 >= v39 >> 1)
      {
        v20 = sub_22B71C2E8((v39 > 1), v40 + 1, 1, v20);
      }

      v20[2] = v40 + 1;
      v41 = &v20[2 * v40];
      v41[4] = sub_22B74CA48;
      v41[5] = v35;
    }

    else
    {
    }

    ++v19;
  }

  while (v18 != v19);
LABEL_22:
  v42 = v20[2];
  if (v42)
  {
    v43 = v20 + 5;
    do
    {
      v45 = *(v43 - 1);
      v44 = *v43;

      v45(v46);

      v43 += 2;
      --v42;
    }

    while (v42);
  }
}

void sub_22B74C734(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if ([a1 isFinal])
    {
      swift_beginAccess();
      v8 = sub_22B711E8C(v7);
      swift_endAccess();

      a4(a1);
    }
  }
}

id IMDServiceReachabilityController.init()()
{
  *(v0 + OBJC_IVAR___IMDServiceReachabilityController_tasks) = MEMORY[0x277D84FA0];
  v2.super_class = IMDServiceReachabilityController;
  return objc_msgSendSuper2(&v2, sel_init);
}

void sub_22B74C9E0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_22B74CA5C()
{
  v0 = [objc_opt_self() sharedController];
  v1 = sub_22B7DB678();
  v2 = [v0 serviceWithName_];

  if (v2)
  {
    v3 = [v2 serviceProperties];
    v4 = sub_22B7DB588();

    v5 = *MEMORY[0x277D1A6A0];
    v16 = sub_22B7DB6A8();
    sub_22B7DC248();
    if (*(v4 + 16) && (v6 = sub_22B4D7EC0(v17), (v7 & 1) != 0))
    {
      sub_22B4D1F68(*(v4 + 56) + 32 * v6, v18);
      sub_22B4DA138(v17);

      sub_22B6F0AD4(&qword_27D8CEAE8, &qword_22B7FAEA8);
      if (swift_dynamicCast())
      {
        v8 = *MEMORY[0x277D1A6B0];
        v9 = sub_22B7DB6A8();
        if (*(v16 + 16))
        {
          v11 = sub_22B723648(v9, v10);
          v13 = v12;

          if (v13)
          {
            v14 = *(*(v16 + 56) + 8 * v11);

            return v14;
          }
        }

        else
        {
        }
      }

      else
      {
      }
    }

    else
    {

      sub_22B4DA138(v17);
    }
  }

  return 0;
}

id sub_22B74CC5C(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D1AB98]) init];
  if (!a1)
  {
    return v2;
  }

  v3 = a1;
  v4 = [v3 lastAddressedLocalHandle];
  [v2 setSenderLastAddressedHandle_];

  v5 = [v3 lastAddressedSIMID];
  [v2 setSenderLastAddressedSIMID_];

  v6 = [v3 chatIdentifier];
  [v2 setChatIdentifier_];

  [v2 setChatStyle_];
  result = [v3 account];
  if (result)
  {
    v8 = result;
    v9 = [result service];

    v10 = [v9 internalName];
    if (!v10)
    {
      sub_22B7DB6A8();
      v10 = sub_22B7DB678();
    }

    [v2 setLastUsedServiceName_];

    v11 = [objc_opt_self() sharedInstance];
    v12 = [v11 lastMessageForChatWithRowID_];

    if (v12)
    {
      v13 = [v12 service];
      [v2 setServiceOfLastMessage_];
    }

    return v2;
  }

  __break(1u);
  return result;
}

uint64_t FileEventStream.__allocating_init(paths:streamEventID:latency:createFlags:pathFilter:callback:)(uint64_t a1, FSEventStreamEventId a2, _DWORD *a3, _OWORD *a4, uint64_t a5, uint64_t a6, CFTimeInterval a7)
{
  v31 = *MEMORY[0x277D85DE8];
  v14 = sub_22B7DB368();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &context - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  LODWORD(a3) = *a3;
  *(v19 + 72) = a6;
  *(v19 + 80) = 0;
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  *(v19 + 32) = a7;
  *(v19 + 40) = a3;
  *(v19 + 48) = *a4;
  *(v19 + 64) = a5;
  context.info = v19;
  memset(&context.retain, 0, 24);
  context.version = 0;
  v20 = *MEMORY[0x277CBECE8];

  v21 = sub_22B7DB8F8();

  v22 = FSEventStreamCreate(v20, sub_22B4D987C, &context, v21, a2, a7, a3);

  if (v22)
  {
    *(v19 + 80) = v22;
    sub_22B74D6EC();
    (*(v15 + 104))(v18, *MEMORY[0x277D851D0], v14);
    v23 = sub_22B7DBD98();
    (*(v15 + 8))(v18, v14);
    FSEventStreamSetDispatchQueue(v22, v23);

    FSEventStreamStart(v22);
  }

  else
  {
    if (qword_28141F430 != -1)
    {
      swift_once();
    }

    v24 = sub_22B7DB2B8();
    sub_22B4CFA74(v24, qword_281422710);
    v25 = sub_22B7DB298();
    v26 = sub_22B7DBCB8();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_22B4CC000, v25, v26, "Could not create FSEventStream", v27, 2u);
      MEMORY[0x231898D60](v27, -1, -1);
    }
  }

  v28 = *MEMORY[0x277D85DE8];
  return v19;
}

uint64_t FileEventStream.init(paths:streamEventID:latency:createFlags:pathFilter:callback:)(uint64_t a1, FSEventStreamEventId a2, _DWORD *a3, _OWORD *a4, uint64_t a5, uint64_t a6, CFTimeInterval a7)
{
  v8 = v7;
  v32 = *MEMORY[0x277D85DE8];
  v16 = sub_22B7DB368();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &context - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(a3) = *a3;
  *(v8 + 72) = a6;
  *(v8 + 80) = 0;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a7;
  *(v8 + 40) = a3;
  *(v8 + 48) = *a4;
  *(v8 + 64) = a5;
  context.info = v8;
  memset(&context.retain, 0, 24);
  context.version = 0;
  v21 = *MEMORY[0x277CBECE8];

  v22 = sub_22B7DB8F8();

  v23 = FSEventStreamCreate(v21, sub_22B4D987C, &context, v22, a2, a7, a3);

  if (v23)
  {
    *(v8 + 80) = v23;
    sub_22B74D6EC();
    (*(v17 + 104))(v20, *MEMORY[0x277D851D0], v16);
    v24 = sub_22B7DBD98();
    (*(v17 + 8))(v20, v16);
    FSEventStreamSetDispatchQueue(v23, v24);

    FSEventStreamStart(v23);
  }

  else
  {
    if (qword_28141F430 != -1)
    {
      swift_once();
    }

    v25 = sub_22B7DB2B8();
    sub_22B4CFA74(v25, qword_281422710);
    v26 = sub_22B7DB298();
    v27 = sub_22B7DBCB8();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_22B4CC000, v26, v27, "Could not create FSEventStream", v28, 2u);
      MEMORY[0x231898D60](v28, -1, -1);
    }
  }

  v29 = *MEMORY[0x277D85DE8];
  return v8;
}

Swift::Void __swiftcall FileEventStream.stop()()
{
  v1 = *(v0 + 80);
  if (v1)
  {
    v2 = v0;
    if (qword_28141F430 != -1)
    {
      swift_once();
    }

    v3 = sub_22B7DB2B8();
    sub_22B4CFA74(v3, qword_281422710);
    v4 = sub_22B7DB298();
    v5 = sub_22B7DBCB8();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_22B4CC000, v4, v5, "Stopping observation for event stream, setting dispatch queue to nil", v6, 2u);
      MEMORY[0x231898D60](v6, -1, -1);
    }

    FSEventStreamSetDispatchQueue(v1, 0);
    FSEventStreamStop(v1);
    *(v2 + 80) = 0;
  }

  else
  {
    if (qword_28141F430 != -1)
    {
      swift_once();
    }

    v7 = sub_22B7DB2B8();
    sub_22B4CFA74(v7, qword_281422710);
    oslog = sub_22B7DB298();
    v8 = sub_22B7DBC98();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_22B4CC000, oslog, v8, "No file event stream to stop returning early", v9, 2u);
      MEMORY[0x231898D60](v9, -1, -1);
    }
  }
}

void *FileEventStream.deinit()
{
  v1 = v0[2];

  v2 = v0[7];

  v3 = v0[9];

  return v0;
}

uint64_t FileEventStream.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[7];

  v3 = v0[9];

  return swift_deallocClassInstance();
}

unint64_t sub_22B74D6EC()
{
  result = qword_28141F210;
  if (!qword_28141F210)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28141F210);
  }

  return result;
}

uint64_t sub_22B74D788(uint64_t a1, unsigned int a2)
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

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22B74D7D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
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

uint64_t sub_22B74D82C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_22B74D844(void *result, int a2)
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

uint64_t sub_22B74D874()
{
  v0 = sub_22B7DB2B8();
  sub_22B6F24F4(v0, qword_27D8CEAF0);
  sub_22B4CFA74(v0, qword_27D8CEAF0);
  sub_22B7DB288();
  return sub_22B7DB2A8();
}

uint64_t sub_22B74D8E0(uint64_t a1, char a2)
{
  *(v3 + 152) = a2;
  *(v3 + 120) = a1;
  *(v3 + 128) = v2;
  return MEMORY[0x2822009F8](sub_22B74D904, 0, 0);
}

uint64_t sub_22B74D904()
{
  v25 = v0;
  v1 = *(v0 + 120);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *MEMORY[0x277D19E68];
    v4 = (v1 + 32);
    v5 = MEMORY[0x277D84F90];
    while (1)
    {
      v6 = *v4;
      *(v0 + 88) = sub_22B7DB6A8();
      *(v0 + 96) = v7;

      sub_22B7DC248();
      if (!*(v6 + 16))
      {
        break;
      }

      v8 = sub_22B4D7EC0(v0 + 16);
      if ((v9 & 1) == 0)
      {
        break;
      }

      sub_22B4D1F68(*(v6 + 56) + 32 * v8, v0 + 56);
      sub_22B4DA138(v0 + 16);

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_14;
      }

      v10 = *(v0 + 104);
      v11 = *(v0 + 112);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_22B71BD80(0, *(v5 + 2) + 1, 1, v5);
      }

      v13 = *(v5 + 2);
      v12 = *(v5 + 3);
      if (v13 >= v12 >> 1)
      {
        v5 = sub_22B71BD80((v12 > 1), v13 + 1, 1, v5);
      }

      *(v5 + 2) = v13 + 1;
      v14 = &v5[16 * v13];
      *(v14 + 4) = v10;
      *(v14 + 5) = v11;
LABEL_4:
      ++v4;
      if (!--v2)
      {
        goto LABEL_19;
      }
    }

    sub_22B4DA138(v0 + 16);
LABEL_14:
    if (qword_27D8CCC30 != -1)
    {
      swift_once();
    }

    v15 = sub_22B7DB2B8();
    sub_22B4CFA74(v15, qword_27D8CEAF0);
    v16 = sub_22B7DB298();
    v17 = sub_22B7DBC98();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v24 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_22B4CFAAC(0xD000000000000032, 0x800000022B80FD60, &v24);
      _os_log_impl(&dword_22B4CC000, v16, v17, "%s didn't find IMFileTransferGUIDKey in the current transfer dictionary. Skipping it.", v18, 0xCu);
      sub_22B4CFB78(v19);
      MEMORY[0x231898D60](v19, -1, -1);
      MEMORY[0x231898D60](v18, -1, -1);
    }

    goto LABEL_4;
  }

  v5 = MEMORY[0x277D84F90];
LABEL_19:
  *(v0 + 136) = v5;
  v20 = swift_task_alloc();
  *(v0 + 144) = v20;
  *v20 = v0;
  v20[1] = sub_22B74DC2C;
  v21 = *(v0 + 128);
  v22 = *(v0 + 152);

  return sub_22B74DD54(v5, v22);
}

uint64_t sub_22B74DC2C(uint64_t a1, char a2)
{
  v5 = *(*v2 + 144);
  v6 = *(*v2 + 136);
  v9 = *v2;

  v7 = *(v9 + 8);

  return v7(a1, a2 & 1);
}

uint64_t sub_22B74DD54(uint64_t a1, char a2)
{
  *(v3 + 128) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = sub_22B7DAEC8();
  *(v3 + 32) = v4;
  v5 = *(v4 - 8);
  *(v3 + 40) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 48) = swift_task_alloc();
  *(v3 + 56) = swift_task_alloc();
  v7 = sub_22B6F0AD4(&qword_27D8CEB10, &qword_22B7FAF70);
  *(v3 + 64) = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B74DE6C, 0, 0);
}

uint64_t sub_22B74DE6C()
{
  v1 = *(v0 + 16);
  v2 = v1[2];
  *(v0 + 88) = v2;
  if (v2)
  {
    v3 = MEMORY[0x277D84F90];
    *(v0 + 96) = 0;
    *(v0 + 104) = v3;
    v5 = v1[4];
    v4 = v1[5];
    *(v0 + 112) = v4;

    v6 = swift_task_alloc();
    *(v0 + 120) = v6;
    *v6 = v0;
    v6[1] = sub_22B74DFA8;
    v7 = *(v0 + 80);
    v8 = *(v0 + 128);

    return sub_22B74E3D4(v7, v5, v4, v8);
  }

  else
  {
    v11 = *(v0 + 72);
    v10 = *(v0 + 80);
    v13 = *(v0 + 48);
    v12 = *(v0 + 56);

    v14 = *(v0 + 8);
    v15 = MEMORY[0x277D84F90];

    return v14(v15, 0);
  }
}

uint64_t sub_22B74DFA8()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22B74E0C0, 0, 0);
}

uint64_t sub_22B74E0C0()
{
  v1 = *(v0 + 64);
  sub_22B4D7E58(*(v0 + 80), *(v0 + 72), &qword_27D8CEB10, &qword_22B7FAF70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = *(v0 + 72);
    sub_22B4D0D64(*(v0 + 80), &qword_27D8CEB10, &qword_22B7FAF70);
    sub_22B4D0D64(v2, &qword_27D8CEB10, &qword_22B7FAF70);
    v3 = *(v0 + 104);
  }

  else
  {
    v4 = *(v0 + 104);
    v6 = *(v0 + 48);
    v5 = *(v0 + 56);
    v7 = *(v0 + 32);
    v8 = *(v0 + 40);
    v9 = *(v8 + 32);
    v9(v5, *(v0 + 72), v7);
    (*(v8 + 16))(v6, v5, v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v3 = *(v0 + 104);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v3 = sub_22B71C528(0, *(v3 + 2) + 1, 1, *(v0 + 104));
    }

    v12 = *(v3 + 2);
    v11 = *(v3 + 3);
    if (v12 >= v11 >> 1)
    {
      v3 = sub_22B71C528(v11 > 1, v12 + 1, 1, v3);
    }

    v13 = *(v0 + 80);
    v14 = *(v0 + 48);
    v15 = *(v0 + 32);
    v16 = *(v0 + 40);
    (*(v16 + 8))(*(v0 + 56), v15);
    sub_22B4D0D64(v13, &qword_27D8CEB10, &qword_22B7FAF70);
    *(v3 + 2) = v12 + 1;
    v9(&v3[((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v12], v14, v15);
  }

  v17 = *(v0 + 96) + 1;
  if (v17 == *(v0 + 88))
  {
    v18 = *(v3 + 2);
    if (!v18)
    {

      sub_22B752C04();
      v3 = swift_allocError();
      *v19 = 0;
    }

    v21 = *(v0 + 72);
    v20 = *(v0 + 80);
    v23 = *(v0 + 48);
    v22 = *(v0 + 56);

    v24 = *(v0 + 8);

    return v24(v3, v18 == 0);
  }

  else
  {
    *(v0 + 96) = v17;
    *(v0 + 104) = v3;
    v26 = *(v0 + 16) + 16 * v17;
    v28 = *(v26 + 32);
    v27 = *(v26 + 40);
    *(v0 + 112) = v27;

    v29 = swift_task_alloc();
    *(v0 + 120) = v29;
    *v29 = v0;
    v29[1] = sub_22B74DFA8;
    v30 = *(v0 + 80);
    v31 = *(v0 + 128);

    return sub_22B74E3D4(v30, v28, v27, v31);
  }
}

uint64_t sub_22B74E3D4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 552) = a4;
  *(v4 + 192) = a2;
  *(v4 + 200) = a3;
  *(v4 + 184) = a1;
  v5 = sub_22B6F0AD4(&qword_27D8CEB20, &unk_22B7FAF80);
  *(v4 + 208) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v4 + 216) = swift_task_alloc();
  *(v4 + 224) = swift_task_alloc();
  v7 = *(*(sub_22B6F0AD4(&qword_27D8CFC90, &unk_22B7FE140) - 8) + 64) + 15;
  *(v4 + 232) = swift_task_alloc();
  *(v4 + 240) = swift_task_alloc();
  v8 = sub_22B7DAEC8();
  *(v4 + 248) = v8;
  v9 = *(v8 - 8);
  *(v4 + 256) = v9;
  v10 = *(v9 + 64) + 15;
  *(v4 + 264) = swift_task_alloc();
  *(v4 + 272) = swift_task_alloc();
  v11 = sub_22B7DB248();
  *(v4 + 280) = v11;
  v12 = *(v11 - 8);
  *(v4 + 288) = v12;
  v13 = *(v12 + 64) + 15;
  *(v4 + 296) = swift_task_alloc();
  *(v4 + 304) = swift_task_alloc();
  v14 = *(*(sub_22B6F0AD4(&qword_27D8CEB28, &qword_22B7FAF90) - 8) + 64) + 15;
  *(v4 + 312) = swift_task_alloc();
  *(v4 + 320) = swift_task_alloc();
  v15 = sub_22B7DA828();
  *(v4 + 328) = v15;
  v16 = *(v15 - 8);
  *(v4 + 336) = v16;
  v17 = *(v16 + 64) + 15;
  *(v4 + 344) = swift_task_alloc();
  *(v4 + 352) = swift_task_alloc();
  *(v4 + 360) = swift_task_alloc();
  *(v4 + 368) = swift_task_alloc();
  *(v4 + 376) = swift_task_alloc();
  *(v4 + 384) = swift_task_alloc();
  *(v4 + 392) = swift_task_alloc();
  *(v4 + 400) = swift_task_alloc();
  *(v4 + 408) = swift_task_alloc();
  *(v4 + 416) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B74E6A8, 0, 0);
}

uint64_t sub_22B74E6A8()
{
  v1 = [objc_opt_self() sharedInstance];
  if (!v1)
  {
    __break(1u);
    return MEMORY[0x2822009F8](v1, v2, v3);
  }

  v4 = v1;
  v5 = v0[24];
  v6 = v0[25];
  v7 = sub_22B7DB678();
  v8 = [v4 transferForGUID_];
  v0[53] = v8;

  if (v8)
  {
    v0[54] = sub_22B7DBA18();
    v0[55] = sub_22B7DBA08();
    v9 = sub_22B7DB9C8();
    v11 = v10;
    v1 = sub_22B74E930;
    v2 = v9;
    v3 = v11;

    return MEMORY[0x2822009F8](v1, v2, v3);
  }

  v12 = v0[23];
  sub_22B752C04();
  v13 = swift_allocError();
  *v14 = 1;
  *v12 = v13;
  sub_22B6F0AD4(&qword_27D8CEB10, &qword_22B7FAF70);
  swift_storeEnumTagMultiPayload();
  v16 = v0[51];
  v15 = v0[52];
  v17 = v0[49];
  v18 = v0[50];
  v20 = v0[47];
  v19 = v0[48];
  v22 = v0[45];
  v21 = v0[46];
  v24 = v0[43];
  v23 = v0[44];
  v27 = v0[40];
  v28 = v0[39];
  v29 = v0[38];
  v30 = v0[37];
  v31 = v0[34];
  v32 = v0[33];
  v33 = v0[30];
  v34 = v0[29];
  v35 = v0[28];
  v36 = v0[27];

  v25 = v0[1];

  return v25();
}

uint64_t sub_22B74E930()
{
  v1 = v0[55];
  v2 = v0[53];

  v0[56] = [v2 localURL];

  return MEMORY[0x2822009F8](sub_22B74E9B8, 0, 0);
}

uint64_t sub_22B74E9B8()
{
  v1 = v0[56];
  if (v1)
  {
    v2 = v0[54];
    v4 = v0[51];
    v3 = v0[52];
    v5 = v0[41];
    v6 = v0[42];
    v7 = v0[40];
    v8 = v0[35];
    v9 = v0[36];
    v10 = v0[56];
    sub_22B7DA7D8();

    v11 = *(v6 + 16);
    v0[57] = v11;
    v0[58] = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v11(v4, v3, v5);
    (*(v9 + 56))(v7, 1, 1, v8);
    v0[59] = sub_22B7DBA08();
    v13 = sub_22B7DB9C8();

    return MEMORY[0x2822009F8](sub_22B74EC48, v13, v12);
  }

  else
  {
    v14 = v0[53];
    v15 = v0[23];
    sub_22B752C04();
    v16 = swift_allocError();
    *v17 = 2;

    *v15 = v16;
    sub_22B6F0AD4(&qword_27D8CEB10, &qword_22B7FAF70);
    swift_storeEnumTagMultiPayload();
    v19 = v0[51];
    v18 = v0[52];
    v20 = v0[49];
    v21 = v0[50];
    v23 = v0[47];
    v22 = v0[48];
    v25 = v0[45];
    v24 = v0[46];
    v27 = v0[43];
    v26 = v0[44];
    v30 = v0[40];
    v31 = v0[39];
    v32 = v0[38];
    v33 = v0[37];
    v34 = v0[34];
    v35 = v0[33];
    v36 = v0[30];
    v37 = v0[29];
    v38 = v0[28];
    v39 = v0[27];

    v28 = v0[1];

    return v28();
  }
}

uint64_t sub_22B74EC48()
{
  v1 = v0[59];
  v2 = v0[53];

  v0[60] = [v2 type];

  return MEMORY[0x2822009F8](sub_22B74ECD0, 0, 0);
}

uint64_t sub_22B74ECD0()
{
  v1 = *(v0 + 480);
  if (v1)
  {
    v3 = *(v0 + 312);
    v2 = *(v0 + 320);
    v4 = *(v0 + 280);
    v5 = *(v0 + 288);
    v6 = *(v0 + 480);
    sub_22B7DB6A8();

    sub_22B7DB258();
    sub_22B752C58(v3, v2);
    if ((*(v5 + 48))(v2, 1, v4))
    {
      LOBYTE(v1) = 0;
    }

    else
    {
      v8 = *(v0 + 296);
      v7 = *(v0 + 304);
      v9 = *(v0 + 280);
      v10 = *(v0 + 288);
      (*(v10 + 16))(v7, *(v0 + 320), v9);
      sub_22B7DB228();
      LOBYTE(v1) = sub_22B7DB238();
      v11 = *(v10 + 8);
      v11(v8, v9);
      v11(v7, v9);
    }
  }

  *(v0 + 553) = v1 & 1;
  v12 = *(v0 + 432);
  *(v0 + 488) = sub_22B7DBA08();
  v14 = sub_22B7DB9C8();

  return MEMORY[0x2822009F8](sub_22B74EE50, v14, v13);
}

uint64_t sub_22B74EE50()
{
  v1 = *(v0 + 488);
  v2 = *(v0 + 424);

  *(v0 + 554) = [v2 isGenmoji];

  return MEMORY[0x2822009F8](sub_22B74EED0, 0, 0);
}

uint64_t sub_22B74EED0()
{
  if (*(v0 + 554))
  {
    v1 = 5;
LABEL_7:
    v54 = v1;
    v5 = *(v0 + 424);
    v6 = *(v0 + 408);
    v7 = *(v0 + 328);
    v8 = *(v0 + 336);
    v56 = *(v0 + 416);
    v58 = *(v0 + 320);
    v9 = *(v0 + 552);
    v11 = *(v0 + 192);
    v10 = *(v0 + 200);
    v12 = *(v0 + 184);
    sub_22B752C04();
    v13 = swift_allocError();
    *v14 = v54;
    sub_22B750934(v13, v9, v6, v11, v10, v12);

    v15 = *(v8 + 8);
    v15(v6, v7);
    v15(v56, v7);

    sub_22B4D0D64(v58, &qword_27D8CEB28, &qword_22B7FAF90);
    v17 = *(v0 + 408);
    v16 = *(v0 + 416);
    v18 = *(v0 + 392);
    v19 = *(v0 + 400);
    v21 = *(v0 + 376);
    v20 = *(v0 + 384);
    v23 = *(v0 + 360);
    v22 = *(v0 + 368);
    v25 = *(v0 + 344);
    v24 = *(v0 + 352);
    v47 = *(v0 + 320);
    v48 = *(v0 + 312);
    v49 = *(v0 + 304);
    v50 = *(v0 + 296);
    v51 = *(v0 + 272);
    v52 = *(v0 + 264);
    v53 = *(v0 + 240);
    v55 = *(v0 + 232);
    v57 = *(v0 + 224);
    v59 = *(v0 + 216);

    v26 = *(v0 + 8);

    return v26();
  }

  if (*(v0 + 553) != 1)
  {
    v1 = 3;
    goto LABEL_7;
  }

  v2 = *(v0 + 416);
  v3 = sub_22B7DA788();
  v4 = IMFileURLIsActuallyAnimated();

  if (v4)
  {
    v1 = 4;
    goto LABEL_7;
  }

  v28 = *(v0 + 416);
  sub_22B7DA7F8();
  v29 = sub_22B7DB678();

  LODWORD(v28) = [v29 im_isLivePhoto];

  if (v28)
  {
    if (qword_27D8CCC38 != -1)
    {
      swift_once();
    }

    v30 = qword_27D8CEB08;
    v31 = swift_task_alloc();
    *(v0 + 496) = v31;
    *v31 = v0;
    v31[1] = sub_22B74F3B4;
    v32 = *(v0 + 424);
    v33 = *(v0 + 400);

    return sub_22B751014(v33, v32, v30);
  }

  else
  {
    v34 = *(v0 + 424);
    IMPreviewConstraintsZero();
    v35 = [v34 isSticker];
    v36 = [v34 isAdaptiveImageGlyph];
    v37 = [objc_opt_self() sharedInstance];
    *(v0 + 528) = v37;
    if (v37)
    {
      v38 = v37;
      v39 = v0 + 16;
      v40 = *(v0 + 416);
      v41 = *(v0 + 224);
      v42 = sub_22B7DA788();
      *(v0 + 536) = v42;
      *(v0 + 16) = v0;
      *(v0 + 56) = v41;
      *(v0 + 24) = sub_22B74FA00;
      v43 = swift_continuation_init();
      v44 = sub_22B6F0AD4(&qword_27D8CEB30, &unk_22B7FAF98);
      *(v0 + 144) = xmmword_22B7FAF50;
      v45 = v0 + 144;
      *(v45 - 8) = v44;
      *(v45 - 64) = MEMORY[0x277D85DD0];
      *(v45 - 56) = 1107296256;
      *(v45 - 48) = sub_22B751B84;
      *(v45 - 40) = &unk_283F1DCE8;
      *(v45 - 32) = v43;
      *(v45 + 16) = xmmword_22B7F85B0;
      *(v45 + 32) = v35;
      *(v45 + 33) = 0;
      *(v45 + 34) = v36;
      [v38 generateSafeRender:v42 constraints:v45 completionBlock:?];
      v46 = v39;
    }

    else
    {
      v46 = (*(*(v0 + 336) + 8))(*(v0 + 408), *(v0 + 328));
      __break(1u);
    }

    return MEMORY[0x282200938](v46);
  }
}

uint64_t sub_22B74F3B4()
{
  v2 = *v1;
  v3 = *(*v1 + 496);
  v10 = *v1;
  *(*v1 + 504) = v0;

  if (v0)
  {
    v4 = sub_22B750204;
  }

  else
  {
    v5 = v2[51];
    v6 = v2[41];
    v7 = v2[42];
    v8 = *(v7 + 8);
    v2[64] = v8;
    v2[65] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v8(v5, v6);
    v4 = sub_22B74F4F0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22B74F4F0()
{
  v74 = v0;
  v1 = *(v0 + 456);
  v2 = *(v0 + 464);
  v3 = *(v0 + 416);
  v5 = *(v0 + 392);
  v4 = *(v0 + 400);
  v7 = *(v0 + 376);
  v6 = *(v0 + 384);
  v8 = *(v0 + 328);
  v9 = *(v0 + 200);
  v67 = *(v0 + 272);
  v70 = *(v0 + 192);
  sub_22B7DA7C8();
  v1(v6, v5, v8);
  v1(v7, v4, v8);

  sub_22B7DAEA8();
  if (qword_27D8CCC30 != -1)
  {
    swift_once();
  }

  v11 = *(v0 + 456);
  v10 = *(v0 + 464);
  v12 = *(v0 + 392);
  v13 = *(v0 + 400);
  v15 = *(v0 + 360);
  v14 = *(v0 + 368);
  v16 = *(v0 + 328);
  v17 = *(v0 + 200);
  v18 = sub_22B7DB2B8();
  sub_22B4CFA74(v18, qword_27D8CEAF0);
  v11(v14, v13, v16);
  v11(v15, v12, v16);

  v19 = sub_22B7DB298();
  LOBYTE(v13) = sub_22B7DBCB8();

  v71 = v13;
  v20 = os_log_type_enabled(v19, v13);
  v21 = *(v0 + 520);
  v22 = *(v0 + 512);
  v23 = *(v0 + 416);
  v25 = *(v0 + 392);
  v24 = *(v0 + 400);
  v26 = *(v0 + 360);
  v27 = *(v0 + 368);
  v28 = *(v0 + 328);
  if (v20)
  {
    v65 = *(v0 + 400);
    v68 = *(v0 + 416);
    v30 = *(v0 + 192);
    v29 = *(v0 + 200);
    v63 = *(v0 + 424);
    log = v19;
    v31 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v73 = v61;
    *v31 = 136315906;
    *(v31 + 4) = sub_22B4CFAAC(0xD000000000000031, 0x800000022B80FDC0, &v73);
    *(v31 + 12) = 2080;
    *(v31 + 14) = sub_22B4CFAAC(v30, v29, &v73);
    *(v31 + 22) = 2080;
    sub_22B75332C(&qword_27D8CEB40, MEMORY[0x277CC9260]);
    v32 = sub_22B7DC4E8();
    v57 = v25;
    v34 = v33;
    v22(v27, v28);
    v35 = sub_22B4CFAAC(v32, v34, &v73);

    *(v31 + 24) = v35;
    *(v31 + 32) = 2080;
    v36 = sub_22B7DC4E8();
    v38 = v37;
    v22(v26, v28);
    v39 = sub_22B4CFAAC(v36, v38, &v73);

    *(v31 + 34) = v39;
    _os_log_impl(&dword_22B4CC000, log, v71, "%s compressed files for %s, dataURL: %s, mirror URL: %s", v31, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x231898D60](v61, -1, -1);
    MEMORY[0x231898D60](v31, -1, -1);

    v22(v57, v28);
    v22(v65, v28);
    v40 = v68;
  }

  else
  {

    v22(v26, v28);
    v22(v27, v28);
    v22(v25, v28);
    v22(v24, v28);
    v40 = v23;
  }

  v22(v40, v28);
  v41 = *(v0 + 320);
  (*(*(v0 + 256) + 32))(*(v0 + 184), *(v0 + 272), *(v0 + 248));
  sub_22B6F0AD4(&qword_27D8CEB10, &qword_22B7FAF70);
  swift_storeEnumTagMultiPayload();
  sub_22B4D0D64(v41, &qword_27D8CEB28, &qword_22B7FAF90);
  v43 = *(v0 + 408);
  v42 = *(v0 + 416);
  v44 = *(v0 + 392);
  v45 = *(v0 + 400);
  v47 = *(v0 + 376);
  v46 = *(v0 + 384);
  v49 = *(v0 + 360);
  v48 = *(v0 + 368);
  v51 = *(v0 + 344);
  v50 = *(v0 + 352);
  v54 = *(v0 + 320);
  v55 = *(v0 + 312);
  v56 = *(v0 + 304);
  v58 = *(v0 + 296);
  loga = *(v0 + 272);
  v62 = *(v0 + 264);
  v64 = *(v0 + 240);
  v66 = *(v0 + 232);
  v69 = *(v0 + 224);
  v72 = *(v0 + 216);

  v52 = *(v0 + 8);

  return v52();
}

uint64_t sub_22B74FA00()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 544) = v2;
  if (v2)
  {
    v3 = sub_22B750590;
  }

  else
  {
    v3 = sub_22B74FB10;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22B74FB10()
{
  v89 = v0;
  v1 = *(v0 + 536);
  v2 = *(v0 + 528);
  v3 = *(v0 + 240);
  v4 = *(v0 + 216);
  v5 = *(v0 + 208);
  sub_22B6FC80C(*(v0 + 224), v4, &qword_27D8CEB20, &unk_22B7FAF80);
  v6 = *v4;
  sub_22B6FC80C(&v4[*(v5 + 48)], v3, &qword_27D8CFC90, &unk_22B7FE140);

  if (v6 != 1)
  {
    goto LABEL_4;
  }

  v7 = *(v0 + 328);
  v8 = *(v0 + 336);
  v9 = *(v0 + 232);
  sub_22B4D7E58(*(v0 + 240), v9, &qword_27D8CFC90, &unk_22B7FE140);
  if ((*(v8 + 48))(v9, 1, v7) == 1)
  {
    sub_22B4D0D64(*(v0 + 232), &qword_27D8CFC90, &unk_22B7FE140);
LABEL_4:
    v79 = *(v0 + 424);
    v83 = *(v0 + 416);
    v10 = *(v0 + 408);
    v12 = *(v0 + 328);
    v11 = *(v0 + 336);
    v86 = *(v0 + 320);
    v13 = *(v0 + 240);
    v14 = *(v0 + 552);
    v16 = *(v0 + 192);
    v15 = *(v0 + 200);
    v17 = *(v0 + 184);
    sub_22B752C04();
    v18 = swift_allocError();
    *v19 = 0;
    sub_22B750934(v18, v14, v10, v16, v15, v17);

    sub_22B4D0D64(v13, &qword_27D8CFC90, &unk_22B7FE140);
    v20 = *(v11 + 8);
    v20(v10, v12);
    v20(v83, v12);
    v21 = v18;
    v22 = v86;

    goto LABEL_11;
  }

  v24 = *(v0 + 456);
  v23 = *(v0 + 464);
  v25 = *(v0 + 416);
  v26 = *(v0 + 376);
  v27 = *(v0 + 352);
  v29 = *(v0 + 328);
  v28 = *(v0 + 336);
  v30 = *(v0 + 232);
  v31 = *(v0 + 200);
  v73 = *(v0 + 384);
  v76 = *(v0 + 192);
  v80 = *(v0 + 264);
  v84 = *(v28 + 8);
  v84(*(v0 + 408), v29);
  (*(v28 + 32))(v27, v30, v29);
  sub_22B75332C(&qword_27D8CEB38, MEMORY[0x277CC9260]);
  v32 = sub_22B7DB658() ^ 1;
  v24(v73, v25, v29);
  v24(v26, v27, v29);

  sub_22B7DAEA8();
  if (qword_27D8CCC30 != -1)
  {
    swift_once();
  }

  v34 = *(v0 + 456);
  v33 = *(v0 + 464);
  v35 = *(v0 + 344);
  v36 = *(v0 + 352);
  v37 = *(v0 + 328);
  v38 = *(v0 + 200);
  v39 = sub_22B7DB2B8();
  sub_22B4CFA74(v39, qword_27D8CEAF0);
  v34(v35, v36, v37);

  v40 = sub_22B7DB298();
  v41 = sub_22B7DBCB8();

  v42 = os_log_type_enabled(v40, v41);
  v43 = *(v0 + 416);
  v44 = *(v0 + 344);
  v45 = *(v0 + 352);
  v46 = *(v0 + 328);
  v47 = *(v0 + 240);
  if (v42)
  {
    v81 = *(v0 + 416);
    v49 = *(v0 + 192);
    v48 = *(v0 + 200);
    v74 = *(v0 + 424);
    v77 = *(v0 + 352);
    v50 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v88 = v70;
    *v50 = 136315906;
    *(v50 + 4) = sub_22B4CFAAC(0xD000000000000031, 0x800000022B80FDC0, &v88);
    *(v50 + 12) = 2080;
    *(v50 + 14) = sub_22B4CFAAC(v49, v48, &v88);
    *(v50 + 22) = 1024;
    *(v50 + 24) = v32 & 1;
    *(v50 + 28) = 2080;
    sub_22B75332C(&qword_27D8CEB40, MEMORY[0x277CC9260]);
    v51 = sub_22B7DC4E8();
    v53 = v52;
    v84(v44, v46);
    v54 = sub_22B4CFAAC(v51, v53, &v88);

    *(v50 + 30) = v54;
    _os_log_impl(&dword_22B4CC000, v40, v41, "%s generated safe render for %s, removedOnCompletion: %{BOOL}d, dataURL: %s", v50, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x231898D60](v70, -1, -1);
    MEMORY[0x231898D60](v50, -1, -1);

    v84(v77, v46);
    sub_22B4D0D64(v47, &qword_27D8CFC90, &unk_22B7FE140);
    v84(v81, v46);
  }

  else
  {

    v84(v44, v46);
    v84(v45, v46);
    sub_22B4D0D64(v47, &qword_27D8CFC90, &unk_22B7FE140);
    v84(v43, v46);
  }

  v22 = *(v0 + 320);
  (*(*(v0 + 256) + 32))(*(v0 + 184), *(v0 + 264), *(v0 + 248));
  sub_22B6F0AD4(&qword_27D8CEB10, &qword_22B7FAF70);
  swift_storeEnumTagMultiPayload();
LABEL_11:
  sub_22B4D0D64(v22, &qword_27D8CEB28, &qword_22B7FAF90);
  v56 = *(v0 + 408);
  v55 = *(v0 + 416);
  v57 = *(v0 + 392);
  v58 = *(v0 + 400);
  v60 = *(v0 + 376);
  v59 = *(v0 + 384);
  v62 = *(v0 + 360);
  v61 = *(v0 + 368);
  v64 = *(v0 + 344);
  v63 = *(v0 + 352);
  v67 = *(v0 + 320);
  v68 = *(v0 + 312);
  v69 = *(v0 + 304);
  v71 = *(v0 + 296);
  v72 = *(v0 + 272);
  v75 = *(v0 + 264);
  v78 = *(v0 + 240);
  v82 = *(v0 + 232);
  v85 = *(v0 + 224);
  v87 = *(v0 + 216);

  v65 = *(v0 + 8);

  return v65();
}

uint64_t sub_22B750204()
{
  v46 = v0;
  if (qword_27D8CCC30 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 504);
  v2 = *(v0 + 200);
  v3 = sub_22B7DB2B8();
  sub_22B4CFA74(v3, qword_27D8CEAF0);

  v4 = v1;
  v5 = sub_22B7DB298();
  v6 = sub_22B7DBC98();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 504);
    v9 = *(v0 + 192);
    v8 = *(v0 + 200);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v45 = v12;
    *v10 = 136315650;
    *(v10 + 4) = sub_22B4CFAAC(0xD000000000000031, 0x800000022B80FDC0, &v45);
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_22B4CFAAC(v9, v8, &v45);
    *(v10 + 22) = 2112;
    v13 = v7;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 24) = v14;
    *v11 = v14;
    _os_log_impl(&dword_22B4CC000, v5, v6, "%s caught error while compressing multiple files for guid: %s. Error: %@", v10, 0x20u);
    sub_22B4D0D64(v11, &unk_27D8CEC60, &qword_22B7F9E20);
    MEMORY[0x231898D60](v11, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x231898D60](v12, -1, -1);
    MEMORY[0x231898D60](v10, -1, -1);
  }

  v15 = *(v0 + 504);
  v16 = *(v0 + 416);
  v17 = *(v0 + 424);
  v18 = *(v0 + 408);
  v19 = *(v0 + 328);
  v20 = *(v0 + 336);
  v21 = *(v0 + 320);
  sub_22B750934(v15, *(v0 + 552), v18, *(v0 + 192), *(v0 + 200), *(v0 + 184));

  v22 = *(v20 + 8);
  v22(v18, v19);
  v22(v16, v19);
  sub_22B4D0D64(v21, &qword_27D8CEB28, &qword_22B7FAF90);
  v24 = *(v0 + 408);
  v23 = *(v0 + 416);
  v25 = *(v0 + 392);
  v26 = *(v0 + 400);
  v28 = *(v0 + 376);
  v27 = *(v0 + 384);
  v30 = *(v0 + 360);
  v29 = *(v0 + 368);
  v32 = *(v0 + 344);
  v31 = *(v0 + 352);
  v35 = *(v0 + 320);
  v36 = *(v0 + 312);
  v37 = *(v0 + 304);
  v38 = *(v0 + 296);
  v39 = *(v0 + 272);
  v40 = *(v0 + 264);
  v41 = *(v0 + 240);
  v42 = *(v0 + 232);
  v43 = *(v0 + 224);
  v44 = *(v0 + 216);

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_22B750590()
{
  v49 = v0;
  v1 = *(v0 + 544);
  v2 = *(v0 + 536);
  v3 = *(v0 + 528);
  swift_willThrow();

  if (qword_27D8CCC30 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 544);
  v5 = *(v0 + 200);
  v6 = sub_22B7DB2B8();
  sub_22B4CFA74(v6, qword_27D8CEAF0);

  v7 = v4;
  v8 = sub_22B7DB298();
  v9 = sub_22B7DBC98();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 544);
    v12 = *(v0 + 192);
    v11 = *(v0 + 200);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v48[0] = v15;
    *v13 = 136315650;
    *(v13 + 4) = sub_22B4CFAAC(0xD000000000000031, 0x800000022B80FDC0, v48);
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_22B4CFAAC(v12, v11, v48);
    *(v13 + 22) = 2112;
    v16 = v10;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 24) = v17;
    *v14 = v17;
    _os_log_impl(&dword_22B4CC000, v8, v9, "%s caught error while generating safe render for guid: %s. Error: %@", v13, 0x20u);
    sub_22B4D0D64(v14, &unk_27D8CEC60, &qword_22B7F9E20);
    MEMORY[0x231898D60](v14, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x231898D60](v15, -1, -1);
    MEMORY[0x231898D60](v13, -1, -1);
  }

  v18 = *(v0 + 544);
  v19 = *(v0 + 416);
  v20 = *(v0 + 424);
  v21 = *(v0 + 408);
  v22 = *(v0 + 328);
  v23 = *(v0 + 336);
  v24 = *(v0 + 320);
  sub_22B750934(v18, *(v0 + 552), v21, *(v0 + 192), *(v0 + 200), *(v0 + 184));

  v25 = *(v23 + 8);
  v25(v21, v22);
  v25(v19, v22);
  sub_22B4D0D64(v24, &qword_27D8CEB28, &qword_22B7FAF90);
  v27 = *(v0 + 408);
  v26 = *(v0 + 416);
  v28 = *(v0 + 392);
  v29 = *(v0 + 400);
  v31 = *(v0 + 376);
  v30 = *(v0 + 384);
  v33 = *(v0 + 360);
  v32 = *(v0 + 368);
  v35 = *(v0 + 344);
  v34 = *(v0 + 352);
  v38 = *(v0 + 320);
  v39 = *(v0 + 312);
  v40 = *(v0 + 304);
  v41 = *(v0 + 296);
  v42 = *(v0 + 272);
  v43 = *(v0 + 264);
  v44 = *(v0 + 240);
  v45 = *(v0 + 232);
  v46 = *(v0 + 224);
  v47 = *(v0 + 216);

  v36 = *(v0 + 8);

  return v36();
}

id sub_22B750934@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, void *a6@<X8>)
{
  v66 = a1;
  v11 = sub_22B7DA828();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v65 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v58 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v58 - v19;
  v21 = sub_22B7DAEC8();
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v26 = &v58 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v62 = v24;
    v63 = v23;
    v64 = a6;
    v60 = v12;
    v27 = *(v12 + 16);
    v27(v20, a3, v11);
    v27(v18, a3, v11);

    v61 = v26;
    v59 = a4;
    sub_22B7DAEA8();
    v28 = a5;
    if (qword_27D8CCC30 != -1)
    {
      swift_once();
    }

    v29 = sub_22B7DB2B8();
    sub_22B4CFA74(v29, qword_27D8CEAF0);
    v30 = v65;
    v27(v65, a3, v11);

    v31 = v66;
    v32 = v66;
    v33 = sub_22B7DB298();
    v34 = sub_22B7DBCB8();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v67 = v37;
      *v35 = 136315906;
      *(v35 + 4) = sub_22B4CFAAC(0xD000000000000031, 0x800000022B80FDC0, &v67);
      *(v35 + 12) = 2080;
      *(v35 + 14) = sub_22B4CFAAC(v59, v28, &v67);
      *(v35 + 22) = 2080;
      sub_22B75332C(&qword_27D8CEB40, MEMORY[0x277CC9260]);
      v38 = sub_22B7DC4E8();
      v40 = v39;
      (*(v60 + 8))(v30, v11);
      v41 = sub_22B4CFAAC(v38, v40, &v67);

      *(v35 + 24) = v41;
      *(v35 + 32) = 2112;
      v42 = v31;
      v43 = _swift_stdlib_bridgeErrorToNSError();
      *(v35 + 34) = v43;
      *v36 = v43;
      _os_log_impl(&dword_22B4CC000, v33, v34, "%s: Did not generate a safe render file for: %s, using the original file: %s. Error: %@", v35, 0x2Au);
      sub_22B4D0D64(v36, &unk_27D8CEC60, &qword_22B7F9E20);
      MEMORY[0x231898D60](v36, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x231898D60](v37, -1, -1);
      MEMORY[0x231898D60](v35, -1, -1);
    }

    else
    {

      (*(v60 + 8))(v30, v11);
    }

    (*(v62 + 32))(v64, v61, v63);
    sub_22B6F0AD4(&qword_27D8CEB10, &qword_22B7FAF70);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    v44 = a5;
    if (qword_27D8CCC30 != -1)
    {
      swift_once();
    }

    v45 = sub_22B7DB2B8();
    sub_22B4CFA74(v45, qword_27D8CEAF0);

    v46 = v66;
    v47 = v66;
    v48 = sub_22B7DB298();
    v49 = sub_22B7DBC98();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = a6;
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v67 = v53;
      *v50 = 136315650;
      *(v50 + 4) = sub_22B4CFAAC(0xD000000000000031, 0x800000022B80FDC0, &v67);
      *(v50 + 12) = 2080;
      *(v50 + 14) = sub_22B4CFAAC(a4, v44, &v67);
      *(v50 + 22) = 2112;
      v54 = v46;
      v55 = _swift_stdlib_bridgeErrorToNSError();
      *(v50 + 24) = v55;
      *v52 = v55;
      _os_log_impl(&dword_22B4CC000, v48, v49, "%s: Did not generate a safe render file for: %s. Error: %@", v50, 0x20u);
      sub_22B4D0D64(v52, &unk_27D8CEC60, &qword_22B7F9E20);
      v56 = v52;
      a6 = v51;
      MEMORY[0x231898D60](v56, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x231898D60](v53, -1, -1);
      MEMORY[0x231898D60](v50, -1, -1);
    }

    *a6 = v46;
    sub_22B6F0AD4(&qword_27D8CEB10, &qword_22B7FAF70);
    swift_storeEnumTagMultiPayload();

    return v46;
  }
}

uint64_t sub_22B751014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_22B7DA828();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B7510F0, 0, 0);
}

uint64_t sub_22B7510F0()
{
  *(v0 + 80) = sub_22B7DBA18();
  *(v0 + 88) = sub_22B7DBA08();
  v2 = sub_22B7DB9C8();

  return MEMORY[0x2822009F8](sub_22B751188, v2, v1);
}

uint64_t sub_22B751188()
{
  v1 = v0[11];
  v2 = v0[3];

  v0[12] = [v2 localURL];

  return MEMORY[0x2822009F8](sub_22B751210, 0, 0);
}

uint64_t sub_22B751210()
{
  v1 = v0[12];
  if (v1)
  {
    v3 = v0[9];
    v2 = v0[10];
    v4 = v0[8];
    v5 = v0[5];
    v6 = v0[6];
    v7 = v0[12];
    sub_22B7DA7D8();

    (*(v6 + 32))(v3, v4, v5);
    v0[13] = sub_22B7DBA08();
    v9 = sub_22B7DB9C8();

    return MEMORY[0x2822009F8](sub_22B751378, v9, v8);
  }

  else
  {
    sub_22B752C04();
    swift_allocError();
    *v10 = 6;
    swift_willThrow();
    v12 = v0[8];
    v11 = v0[9];
    v13 = v0[7];

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_22B751378()
{
  v1 = v0[13];
  v2 = v0[3];

  v0[14] = [v2 guid];

  return MEMORY[0x2822009F8](sub_22B751400, 0, 0);
}

uint64_t sub_22B751400()
{
  v45 = v0;
  v1 = v0[14];
  if (v1)
  {
    v2 = v0[14];
    v3 = sub_22B7DB6A8();
    v5 = v4;

    v0[15] = v5;
    if (qword_27D8CCC30 != -1)
    {
      swift_once();
    }

    v43 = v5;
    v6 = v0[9];
    v7 = v0[6];
    v8 = v0[7];
    v9 = v0[5];
    v10 = sub_22B7DB2B8();
    sub_22B4CFA74(v10, qword_27D8CEAF0);
    (*(v7 + 16))(v8, v6, v9);
    v11 = sub_22B7DB298();
    v12 = sub_22B7DBCB8();
    v13 = os_log_type_enabled(v11, v12);
    v15 = v0[6];
    v14 = v0[7];
    v16 = v0[5];
    if (v13)
    {
      v42 = v3;
      v17 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v44[0] = v41;
      *v17 = 136315394;
      *(v17 + 4) = sub_22B4CFAAC(0xD00000000000001DLL, 0x800000022B80FE40, v44);
      *(v17 + 12) = 2080;
      sub_22B75332C(&qword_27D8CEB40, MEMORY[0x277CC9260]);
      v18 = sub_22B7DC4E8();
      v20 = v19;
      v21 = *(v15 + 8);
      v21(v14, v16);
      v22 = sub_22B4CFAAC(v18, v20, v44);

      *(v17 + 14) = v22;
      _os_log_impl(&dword_22B4CC000, v11, v12, "%s: local URL is %s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x231898D60](v41, -1, -1);
      v23 = v17;
      v3 = v42;
      MEMORY[0x231898D60](v23, -1, -1);
    }

    else
    {

      v21 = *(v15 + 8);
      v21(v14, v16);
    }

    v0[16] = v21;

    v30 = sub_22B7DB298();
    v31 = sub_22B7DBCB8();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v44[0] = v33;
      *v32 = 136315394;
      *(v32 + 4) = sub_22B4CFAAC(0xD00000000000001DLL, 0x800000022B80FE40, v44);
      *(v32 + 12) = 2080;
      *(v32 + 14) = sub_22B4CFAAC(v3, v43, v44);
      _os_log_impl(&dword_22B4CC000, v30, v31, "%s: guid is %s", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x231898D60](v33, -1, -1);
      MEMORY[0x231898D60](v32, -1, -1);
    }

    v34 = v0[9];
    v35 = v0[4];
    v36 = swift_task_alloc();
    v0[17] = v36;
    v36[2] = v35;
    v36[3] = v3;
    v36[4] = v43;
    v36[5] = v34;
    v37 = *(MEMORY[0x277D85A40] + 4);
    v38 = swift_task_alloc();
    v0[18] = v38;
    *v38 = v0;
    v38[1] = sub_22B751900;
    v39 = v0[5];
    v40 = v0[2];

    return MEMORY[0x2822008A0](v40, 0, 0, 0xD00000000000001DLL, 0x800000022B80FE40, sub_22B753240, v36, v39);
  }

  else
  {
    (*(v0[6] + 8))(v0[9], v0[5]);
    sub_22B752C04();
    swift_allocError();
    *v24 = 6;
    swift_willThrow();
    v26 = v0[8];
    v25 = v0[9];
    v27 = v0[7];

    v28 = v0[1];

    return v28();
  }
}

uint64_t sub_22B751900()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v8 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = sub_22B751AC8;
  }

  else
  {
    v5 = *(v2 + 136);
    v6 = *(v2 + 120);

    v4 = sub_22B751A28;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22B751A28()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);
  v3 = *(v0 + 48) + 8;
  (*(v0 + 128))(*(v0 + 72), *(v0 + 40));

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_22B751AC8()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v4 = v0[9];
  v5 = v0[5];
  v6 = v0[6];

  v2(v4, v5);
  v7 = v0[19];
  v9 = v0[8];
  v8 = v0[9];
  v10 = v0[7];

  v11 = v0[1];

  return v11();
}

uint64_t sub_22B751B84(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  v8 = sub_22B6F0AD4(&qword_27D8CFC90, &unk_22B7FE140);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v23 - v10;
  v12 = sub_22B6F0AD4(&qword_27D8CEB20, &unk_22B7FAF80);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v23 - v14;
  v16 = *sub_22B4D2BCC((a1 + 32), *(a1 + 56));
  if (a4)
  {
    sub_22B6F0AD4(&unk_27D8CD800, &qword_22B7FA0C0);
    v17 = swift_allocError();
    *v18 = a4;
    v19 = a4;

    return MEMORY[0x282200958](v16, v17);
  }

  else
  {
    *v15 = a2;
    if (a3)
    {
      sub_22B7DA7D8();
      v20 = sub_22B7DA828();
      (*(*(v20 - 8) + 56))(v11, 0, 1, v20);
    }

    else
    {
      v21 = sub_22B7DA828();
      (*(*(v21 - 8) + 56))(v11, 1, 1, v21);
    }

    sub_22B6FC80C(v11, &v15[*(v12 + 48)], &qword_27D8CFC90, &unk_22B7FE140);
    sub_22B6FC80C(v15, *(*(v16 + 64) + 40), &qword_27D8CEB20, &unk_22B7FAF80);
    return swift_continuation_throwingResume();
  }
}

uint64_t sub_22B751DE0(uint64_t a1, char a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22B751E88;

  return sub_22B74D8E0(a1, a2);
}

uint64_t sub_22B751E88(uint64_t a1, char a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2 & 1);
}

uint64_t sub_22B751F8C(uint64_t a1, char a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22B753374;

  return sub_22B74DD54(a1, a2);
}

uint64_t sub_22B752034(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_22B6F0D94;

  return sub_22B74E3D4(a1, a2, a3, a4);
}

uint64_t sub_22B7520EC()
{
  v10 = sub_22B7DBD48();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22B7DBD38();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_22B7DB398();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9[1] = sub_22B74D6EC();
  sub_22B7DACD8();
  v11 = MEMORY[0x277D84F90];
  sub_22B75332C(&unk_28141F220, MEMORY[0x277D85230]);
  sub_22B6F0AD4(&qword_27D8CEA10, &qword_22B7F9DC0);
  sub_22B4D1110(&qword_28141F2C0, &qword_27D8CEA10, &qword_22B7F9DC0);
  sub_22B7DC138();
  (*(v0 + 104))(v3, *MEMORY[0x277D85260], v10);
  result = sub_22B7DBD88();
  qword_27D8CEB08 = result;
  return result;
}

uint64_t sub_22B75233C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v33 = a3;
  v34 = a4;
  v32 = a2;
  v38 = sub_22B7DB348();
  v40 = *(v38 - 8);
  v7 = *(v40 + 64);
  MEMORY[0x28223BE20](v38);
  v36 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_22B7DB398();
  v37 = *(v39 - 8);
  v9 = *(v37 + 64);
  MEMORY[0x28223BE20](v39);
  v35 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22B6F0AD4(&qword_27D8CEB50, qword_22B7FB100);
  v31 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v30 - v14;
  v16 = sub_22B7DA828();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v19, a5, v16);
  (*(v12 + 16))(v15, a1, v11);
  v20 = (*(v17 + 80) + 40) & ~*(v17 + 80);
  v21 = (v18 + *(v12 + 80) + v20) & ~*(v12 + 80);
  v22 = swift_allocObject();
  v24 = v32;
  v23 = v33;
  *(v22 + 2) = v32;
  *(v22 + 3) = v23;
  *(v22 + 4) = v34;
  (*(v17 + 32))(&v22[v20], v19, v16);
  (*(v12 + 32))(&v22[v21], v15, v31);
  aBlock[4] = sub_22B75324C;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B4D22C0;
  aBlock[3] = &unk_283F1DDC8;
  v25 = _Block_copy(aBlock);
  v24;

  v26 = v35;
  sub_22B7DACD8();
  v41 = MEMORY[0x277D84F90];
  sub_22B75332C(&qword_28141F340, MEMORY[0x277D85198]);
  sub_22B6F0AD4(&unk_27D8CF580, &unk_22B7FB880);
  sub_22B4D1110(&qword_28141F2E0, &unk_27D8CF580, &unk_22B7FB880);
  v27 = v36;
  v28 = v38;
  sub_22B7DC138();
  MEMORY[0x2318956F0](0, v26, v27, v25);
  _Block_release(v25);
  (*(v40 + 8))(v27, v28);
  (*(v37 + 8))(v26, v39);
}

uint64_t sub_22B7527C8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = sub_22B7DA828();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v14 - v11;
  sub_22B752958(a2, a3, v14 - v11);
  (*(v6 + 16))(v10, v12, v5);
  sub_22B6F0AD4(&qword_27D8CEB50, qword_22B7FB100);
  sub_22B7DB9E8();
  return (*(v6 + 8))(v12, v5);
}

uint64_t sub_22B752958@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = *MEMORY[0x277D85DE8];
  v29 = sub_22B7DA828();
  v6 = *(v29 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v29);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22B7DA7C8();
  v10 = NSTemporaryDirectory();
  v11 = sub_22B7DB6A8();
  v13 = v12;

  v30 = a1;
  v31 = a2;

  MEMORY[0x231895140](1918984494, 0xE400000000000000);
  v14 = v30;
  v15 = v31;
  v30 = v11;
  v31 = v13;

  MEMORY[0x231895140](v14, v15);

  sub_22B7DA768();

  v16 = [objc_opt_self() defaultManager];
  v17 = sub_22B7DA788();
  v18 = sub_22B7DA788();
  v30 = 0;
  LOBYTE(v11) = [v16 __im_createArchiveOfDirectoryAtURL_withOutputURL_archiveFilePermissions_withError_];

  if (v11)
  {
    v19 = *(v6 + 8);
    v20 = v30;
    result = v19(v9, v29);
  }

  else
  {
    v22 = v30;
    v23 = sub_22B7DA6F8();

    swift_willThrow();
    sub_22B752C04();
    swift_allocError();
    *v24 = 6;
    swift_willThrow();

    v25 = *(v6 + 8);
    v26 = a3;
    v27 = v29;
    v25(v26, v29);
    result = (v25)(v9, v27);
  }

  v28 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_22B752C04()
{
  result = qword_27D8CEB18;
  if (!qword_27D8CEB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CEB18);
  }

  return result;
}

uint64_t sub_22B752C58(uint64_t a1, uint64_t a2)
{
  v4 = sub_22B6F0AD4(&qword_27D8CEB28, &qword_22B7FAF90);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t dispatch thunk of IntentFileSafeRenderProvider.generateSafeRenderFiles(for:useOriginalOnFailure:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 80);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_22B751E88;

  return v10(a1, a2);
}

{
  v6 = *(*v2 + 88);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_22B753374;

  return v10(a1, a2);
}

uint64_t dispatch thunk of IntentFileSafeRenderProvider.generateSafeRenderFile(for:useOriginalOnFailure:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 96);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_22B6F0D94;

  return v14(a1, a2, a3, a4);
}

uint64_t getEnumTagSinglePayload for SafeRenderError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SafeRenderError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22B7531EC()
{
  result = qword_27D8CEB48;
  if (!qword_27D8CEB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CEB48);
  }

  return result;
}

uint64_t sub_22B75324C()
{
  v1 = *(sub_22B7DA828() - 8);
  v2 = ((*(v1 + 80) + 40) & ~*(v1 + 80)) + *(v1 + 64);
  v3 = *(*(sub_22B6F0AD4(&qword_27D8CEB50, qword_22B7FB100) - 8) + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];

  return sub_22B7527C8(v4, v5, v6);
}

uint64_t sub_22B75332C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22B753378(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v23 = MEMORY[0x277D84F90];
    sub_22B7DC388();
    v4 = v1 + 64;
    v5 = -1 << *(v1 + 32);
    result = sub_22B7DC148();
    v6 = result;
    v7 = 0;
    v8 = *(v1 + 36);
    v20 = v1 + 72;
    v21 = v1;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v1 + 32))
    {
      v10 = v6 >> 6;
      if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_21;
      }

      if (v8 != *(v1 + 36))
      {
        goto LABEL_22;
      }

      v22 = v7;
      v11 = *(*(v1 + 48) + 8 * v6);
      sub_22B7DC358();
      v12 = *(v23 + 16);
      sub_22B7DC398();
      v1 = v21;
      sub_22B7DC3A8();
      result = sub_22B7DC368();
      v9 = 1 << *(v21 + 32);
      if (v6 >= v9)
      {
        goto LABEL_23;
      }

      v13 = *(v4 + 8 * v10);
      if ((v13 & (1 << v6)) == 0)
      {
        goto LABEL_24;
      }

      if (v8 != *(v21 + 36))
      {
        goto LABEL_25;
      }

      v14 = v13 & (-2 << (v6 & 0x3F));
      if (v14)
      {
        v9 = __clz(__rbit64(v14)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = v10 << 6;
        v16 = v10 + 1;
        v17 = (v20 + 8 * v10);
        while (v16 < (v9 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            result = sub_22B755198(v6, v8, 0);
            v9 = __clz(__rbit64(v18)) + v15;
            goto LABEL_4;
          }
        }

        result = sub_22B755198(v6, v8, 0);
      }

LABEL_4:
      v7 = v22 + 1;
      v6 = v9;
      if (v22 + 1 == v2)
      {
        return v23;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

void IMDAttachmentStore.batchOfRecordIDsToDelete(limit:)(uint64_t a1)
{
  v51[13] = *MEMORY[0x277D85DE8];
  sub_22B754C10();
  if (v4)
  {
    v6 = v4;
    v7 = v5;
    v47 = a1;
    v48 = v1;
    if (qword_28141F368 != -1)
    {
      swift_once();
    }

    v8 = sub_22B7DB2B8();
    sub_22B4CFA74(v8, qword_281422608);
    v9 = v7;
    v10 = sub_22B7DB298();
    v11 = sub_22B7DBCB8();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      *(v12 + 4) = v9;
      *v13 = v7;
      v14 = v9;
      _os_log_impl(&dword_22B4CC000, v10, v11, "Found new afterRow %@", v12, 0xCu);
      sub_22B4D0D64(v13, &unk_27D8CEC60, &qword_22B7F9E20);
      MEMORY[0x231898D60](v13, -1, -1);
      MEMORY[0x231898D60](v12, -1, -1);
    }

    v15 = [objc_opt_self() sharedInstance];
    v16 = *MEMORY[0x277D19A08];
    v17 = sub_22B7DB678();
    [v15 setValue:v9 forDomain:v16 forKey:v17];

    if (*(v6 + 16))
    {
      v50 = MEMORY[0x277D84F98];
      v51[0] = MEMORY[0x277D84F98];
      v18 = objc_autoreleasePoolPush();
      sub_22B753CE8(v6, &v50, v51);
      if (v2)
      {

        objc_autoreleasePoolPop(v18);
        __break(1u);
      }

      else
      {
        objc_autoreleasePoolPop(v18);

        v19 = sub_22B7DB298();
        v20 = sub_22B7DBCB8();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          *v21 = 134218496;
          v22 = *(v6 + 16);

          *(v21 + 4) = v22;

          *(v21 + 12) = 2048;
          swift_beginAccess();
          *(v21 + 14) = *(v50 + 16);
          *(v21 + 22) = 2048;
          swift_beginAccess();
          *(v21 + 24) = *(v51[0] + 16);
          _os_log_impl(&dword_22B4CC000, v19, v20, "Got %ld records queued for delete processing which split %ld to not delete and %ld to delete", v21, 0x20u);
          MEMORY[0x231898D60](v21, -1, -1);
        }

        else
        {

          swift_bridgeObjectRelease_n();
        }

        swift_beginAccess();
        v32 = v50;
        if (*(v50 + 16))
        {
          v33 = sub_22B7DB298();
          v34 = sub_22B7DBCB8();
          if (os_log_type_enabled(v33, v34))
          {
            v35 = swift_slowAlloc();
            *v35 = 134217984;
            *(v35 + 4) = *(v32 + 16);
            _os_log_impl(&dword_22B4CC000, v33, v34, "Clearing delete tombstones for %ld attachments still being referenced", v35, 0xCu);
            MEMORY[0x231898D60](v35, -1, -1);
          }

          sub_22B753378(v36);

          sub_22B4D01A0(0, &qword_28141F2A8, 0x277CBC5D0);
          v37 = sub_22B7DB8F8();

          [v1 clearTombstonesForRecordIDs_];
        }

        swift_beginAccess();
        if (*(v51[0] + 16))
        {
        }

        else
        {
          v38 = sub_22B7DB298();
          v39 = sub_22B7DBCB8();
          if (os_log_type_enabled(v38, v39))
          {
            v40 = swift_slowAlloc();
            *v40 = 0;
            _os_log_impl(&dword_22B4CC000, v38, v39, "All attachments pending delete from CloudKit were still being referenced, querying again", v40, 2u);
            MEMORY[0x231898D60](v40, -1, -1);
          }

          v49 = 0;
          v41 = [v48 batchOfRecordIDsToDeleteWithLimit:v47 error:&v49];
          v42 = v49;
          if (v41)
          {
            v43 = v41;
            sub_22B4D01A0(0, &qword_28141F2A8, 0x277CBC5D0);
            sub_22B71EF0C();
            sub_22B7DB588();
            v44 = v42;
          }

          else
          {
            v45 = v49;
            sub_22B7DA6F8();

            swift_willThrow();
          }
        }

        v46 = *MEMORY[0x277D85DE8];
      }
    }

    else
    {

      v28 = sub_22B7DB298();
      v29 = sub_22B7DBCB8();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_22B4CC000, v28, v29, "No pending messages to delete/fetch from CloudKit", v30, 2u);
        MEMORY[0x231898D60](v30, -1, -1);
      }

      sub_22B71E2E4(MEMORY[0x277D84F90]);
      v31 = *MEMORY[0x277D85DE8];
    }
  }

  else
  {
    if (qword_28141F368 != -1)
    {
      swift_once();
    }

    v23 = sub_22B7DB2B8();
    sub_22B4CFA74(v23, qword_281422608);
    v24 = sub_22B7DB298();
    v25 = sub_22B7DBC98();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_22B4CC000, v24, v25, "Did not generate any records to delete for attachments returning nil", v26, 2u);
      MEMORY[0x231898D60](v26, -1, -1);
    }

    sub_22B71E2E4(MEMORY[0x277D84F90]);
    v27 = *MEMORY[0x277D85DE8];
  }
}

uint64_t sub_22B753CE8(uint64_t a1, uint64_t *a2, void *a3)
{
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  v67 = a3;
  while (v7)
  {
LABEL_9:
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v12 = v11 | (v9 << 6);
    v13 = *(*(a1 + 48) + 8 * v12);
    v14 = (*(a1 + 56) + 16 * v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = objc_opt_self();
    v71 = v13;

    v18 = [v17 sharedInstance];
    v70 = v15;
    v19 = sub_22B7DB678();
    LODWORD(v15) = [v18 isAttachmentReferencedByMessage_];

    if (v15)
    {
      if (qword_28141F368 != -1)
      {
        swift_once();
      }

      v20 = sub_22B7DB2B8();
      sub_22B4CFA74(v20, qword_281422608);

      v21 = sub_22B7DB298();
      v22 = sub_22B7DBCB8();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v72 = v24;
        *v23 = 136315138;
        *(v23 + 4) = sub_22B4CFAAC(v70, v16, &v72);
        _os_log_impl(&dword_22B4CC000, v21, v22, "Attachment %s was to be deleted, but is still being referenced. Fetching instead.", v23, 0xCu);
        sub_22B4CFB78(v24);
        v25 = v24;
        a3 = v67;
        MEMORY[0x231898D60](v25, -1, -1);
        MEMORY[0x231898D60](v23, -1, -1);
      }

      if (*(*a2 + 16))
      {
        sub_22B7237AC(v71);
        if (v26)
        {
          goto LABEL_16;
        }

        v29 = a2;
        v30 = *a2;
      }

      else
      {
        v29 = a2;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v72 = *v29;
      v32 = v72;
      *v29 = 0x8000000000000000;
      v34 = sub_22B7237AC(v71);
      v35 = *(v32 + 16);
      v36 = (v33 & 1) == 0;
      v37 = v35 + v36;
      if (__OFADD__(v35, v36))
      {
        goto LABEL_49;
      }

      v38 = v33;
      if (*(v32 + 24) >= v37)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22B7A428C();
        }

        v39 = v71;
        v42 = v72;
        if (v38)
        {
          goto LABEL_32;
        }
      }

      else
      {
        sub_22B7A2454(v37, isUniquelyReferenced_nonNull_native);
        v39 = v71;
        v40 = sub_22B7237AC(v71);
        if ((v38 & 1) != (v41 & 1))
        {
          goto LABEL_52;
        }

        v34 = v40;
        v42 = v72;
        if (v38)
        {
LABEL_32:
          v47 = (v42[7] + 16 * v34);
          v48 = v47[1];
          *v47 = v70;
          v47[1] = v16;

          goto LABEL_33;
        }
      }

      v42[(v34 >> 6) + 8] |= 1 << v34;
      *(v42[6] + 8 * v34) = v39;
      v43 = (v42[7] + 16 * v34);
      *v43 = v70;
      v43[1] = v16;
      v44 = v42[2];
      v45 = __OFADD__(v44, 1);
      v46 = v44 + 1;
      if (v45)
      {
        goto LABEL_50;
      }

      v42[2] = v46;
LABEL_33:
      a3 = v67;
      *a2 = v42;
    }

    else
    {
      if (!*(*a3 + 16))
      {
        v27 = v71;
        goto LABEL_35;
      }

      v27 = v71;
      sub_22B7237AC(v71);
      if (v28)
      {
LABEL_16:
      }

      else
      {
        v49 = *a3;
LABEL_35:
        v50 = swift_isUniquelyReferenced_nonNull_native();
        v72 = *a3;
        v51 = v72;
        *a3 = 0x8000000000000000;
        v52 = sub_22B7237AC(v27);
        v54 = *(v51 + 16);
        v55 = (v53 & 1) == 0;
        v45 = __OFADD__(v54, v55);
        v56 = v54 + v55;
        if (v45)
        {
          goto LABEL_48;
        }

        v57 = v53;
        if (*(v51 + 24) < v56)
        {
          sub_22B7A2454(v56, v50);
          v52 = sub_22B7237AC(v27);
          if ((v57 & 1) != (v58 & 1))
          {
            goto LABEL_52;
          }

LABEL_40:
          v59 = v72;
          if (v57)
          {
            goto LABEL_41;
          }

          goto LABEL_43;
        }

        if (v50)
        {
          goto LABEL_40;
        }

        v62 = v52;
        sub_22B7A428C();
        v52 = v62;
        v59 = v72;
        if (v57)
        {
LABEL_41:
          v60 = (v59[7] + 16 * v52);
          v61 = v60[1];
          *v60 = v70;
          v60[1] = v16;

          goto LABEL_45;
        }

LABEL_43:
        v59[(v52 >> 6) + 8] |= 1 << v52;
        *(v59[6] + 8 * v52) = v27;
        v63 = (v59[7] + 16 * v52);
        *v63 = v70;
        v63[1] = v16;
        v64 = v59[2];
        v45 = __OFADD__(v64, 1);
        v65 = v64 + 1;
        if (v45)
        {
          goto LABEL_51;
        }

        v59[2] = v65;
LABEL_45:
        a3 = v67;
        *v67 = v59;
      }
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  sub_22B4D01A0(0, &qword_28141F2A8, 0x277CBC5D0);
  result = sub_22B7DC578();
  __break(1u);
  return result;
}

void sub_22B75438C(uint64_t a1, uint64_t *a2, id *a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return;
  }

  v4 = 0;
  v72 = a1 + 32;
  v5 = &selRef_setFirstSyncDateToNow;
  while (1)
  {
    v6 = *(v72 + 8 * v4);
    v68 = 0x4449574F52;
    v69 = 0xE500000000000000;

    sub_22B7DC248();
    if (!*(v6 + 16))
    {
      goto LABEL_36;
    }

    v7 = sub_22B4D7EC0(v70);
    if ((v8 & 1) == 0)
    {
      goto LABEL_36;
    }

    sub_22B4D1F68(*(v6 + 56) + 32 * v7, v71);
    sub_22B4DA138(v70);
    sub_22B4D01A0(0, &qword_28141EFE0, 0x277CCABB0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_37;
    }

    v9 = v68;
    v68 = 1684632935;
    v69 = 0xE400000000000000;
    sub_22B7DC248();
    if (!*(v6 + 16))
    {
      goto LABEL_35;
    }

    v10 = sub_22B4D7EC0(v70);
    if ((v11 & 1) == 0)
    {
      goto LABEL_35;
    }

    sub_22B4D1F68(*(v6 + 56) + 32 * v10, v71);
    sub_22B4DA138(v70);
    if (swift_dynamicCast())
    {
      break;
    }

LABEL_46:

LABEL_37:
    if (qword_28141F368 != -1)
    {
      swift_once();
    }

    v48 = sub_22B7DB2B8();
    sub_22B4CFA74(v48, qword_281422608);

    v49 = sub_22B7DB298();
    v50 = sub_22B7DBC98();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v70[0] = v52;
      *v51 = 136315138;
      v53 = sub_22B7DB598();
      v55 = v54;

      v56 = sub_22B4CFAAC(v53, v55, v70);
      v5 = &selRef_setFirstSyncDateToNow;

      *(v51 + 4) = v56;
      _os_log_impl(&dword_22B4CC000, v49, v50, "Could not create CKRecord for attachment delete, missing properties: %s", v51, 0xCu);
      sub_22B4CFB78(v52);
      MEMORY[0x231898D60](v52, -1, -1);
      MEMORY[0x231898D60](v51, -1, -1);
    }

    else
    {
    }

LABEL_43:
    if (++v4 == v3)
    {
      return;
    }
  }

  v63 = v68;
  v65 = v69;
  v68 = 0x444964726F636572;
  v69 = 0xE800000000000000;
  sub_22B7DC248();
  if (!*(v6 + 16) || (v12 = sub_22B4D7EC0(v70), (v13 & 1) == 0))
  {

LABEL_35:

LABEL_36:
    sub_22B4DA138(v70);
    goto LABEL_37;
  }

  sub_22B4D1F68(*(v6 + 56) + 32 * v12, v71);
  sub_22B4DA138(v70);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_46;
  }

  v61 = v9;
  v14 = objc_opt_self();
  v15 = [v14 v5[437]];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 attachmentRecordZoneID];

    v67[0] = v17;
    v18 = [v14 v5[437]];
    if (v18)
    {
      v19 = v18;

      v20 = [v19 chatBotAttachmentRecordZoneID];

      v21 = 0;
      v22 = 0;
      v67[1] = v20;
      while (2)
      {
        v26 = v21;
        v27 = v67[v22];
        if (!v27)
        {
          goto LABEL_18;
        }

        v64 = v21;
        sub_22B4D01A0(0, &qword_28141F2A8, 0x277CBC5D0);
        v28 = v27;

        v29 = sub_22B7DBC48();
        v30 = v29;
        if (*(*a2 + 16))
        {
          sub_22B7237AC(v29);
          if (v31)
          {

LABEL_17:
            v26 = v64;
LABEL_18:
            v21 = 1;
            v22 = 1;
            if (v26)
            {

              sub_22B6F0AD4(&qword_27D8CEB58, &qword_22B7FB138);
              swift_arrayDestroy();
              if (*a3)
              {
                v57 = *a3;
                v58 = [v61 longLongValue];
                v59 = [v57 longLongValue];

                if (v59 >= v58)
                {
                }

                else
                {
                  v60 = *a3;
                  *a3 = v61;
                }
              }

              else
              {
                *a3 = v61;
              }

              goto LABEL_43;
            }

            continue;
          }
        }

        break;
      }

      v32 = *a2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v70[0] = *a2;
      v34 = v70[0];
      *a2 = 0x8000000000000000;
      v36 = sub_22B7237AC(v30);
      v37 = *(v34 + 16);
      v38 = (v35 & 1) == 0;
      v39 = v37 + v38;
      if (__OFADD__(v37, v38))
      {
        __break(1u);
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      v40 = v35;
      if (*(v34 + 24) >= v39)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v43 = v70[0];
          if ((v35 & 1) == 0)
          {
            goto LABEL_30;
          }
        }

        else
        {
          sub_22B7A428C();
          v43 = v70[0];
          if ((v40 & 1) == 0)
          {
            goto LABEL_30;
          }
        }
      }

      else
      {
        sub_22B7A2454(v39, isUniquelyReferenced_nonNull_native);
        v41 = sub_22B7237AC(v30);
        if ((v40 & 1) != (v42 & 1))
        {
          goto LABEL_57;
        }

        v36 = v41;
        v43 = v70[0];
        if ((v40 & 1) == 0)
        {
LABEL_30:
          v43[(v36 >> 6) + 8] |= 1 << v36;
          *(v43[6] + 8 * v36) = v30;
          v44 = (v43[7] + 16 * v36);
          *v44 = v63;
          v44[1] = v65;

          v45 = v43[2];
          v46 = __OFADD__(v45, 1);
          v47 = v45 + 1;
          if (v46)
          {
            goto LABEL_54;
          }

          v43[2] = v47;
          goto LABEL_16;
        }
      }

      v23 = (v43[7] + 16 * v36);
      v24 = v23[1];
      *v23 = v63;
      v23[1] = v65;

LABEL_16:
      v25 = *a2;
      *a2 = v43;

      v5 = &selRef_setFirstSyncDateToNow;
      goto LABEL_17;
    }

LABEL_55:
    __break(1u);
  }

  __break(1u);
LABEL_57:
  sub_22B7DC578();
  __break(1u);
}

uint64_t sub_22B754AC0()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = *MEMORY[0x277D19A08];
  v2 = sub_22B7DB678();
  v3 = [v0 getValueFromDomain:v1 forKey:v2];

  if (v3)
  {
    sub_22B7DC118();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    sub_22B4D01A0(0, &qword_28141EFE0, 0x277CCABB0);
    if (swift_dynamicCast())
    {
      return v5;
    }
  }

  else
  {
    sub_22B4D0D64(v8, &unk_27D8CCDC0, &qword_22B7F9580);
  }

  return 0;
}

void sub_22B754C10()
{
  v1 = [objc_opt_self() sharedInstance];
  if (!v1)
  {
    __break(1u);
    objc_autoreleasePoolPop(v0);
    __break(1u);
    return;
  }

  v2 = v1;
  v3 = [v1 attachmentRecordZone];

  if (!v3)
  {
    if (qword_28141F368 != -1)
    {
      swift_once();
    }

    v8 = sub_22B7DB2B8();
    sub_22B4CFA74(v8, qword_281422608);
    v4 = sub_22B7DB298();
    v9 = sub_22B7DBC98();
    if (os_log_type_enabled(v4, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_22B4CC000, v4, v9, "No message record zone initialized in IMDRecordZoneManager.", v10, 2u);
      MEMORY[0x231898D60](v10, -1, -1);
    }

    goto LABEL_10;
  }

  v4 = sub_22B754AC0();
  v5 = IMDAttachmentCopyRecordIDsToDeleteAfterRowWithLimit();
  if (!v5)
  {
LABEL_10:

    return;
  }

  v6 = v5;
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v7 = v6;
    sub_22B6F0AD4(&qword_27D8CF710, qword_22B7FA230);
    sub_22B7DB908();
  }

  if (qword_28141F368 != -1)
  {
    swift_once();
  }

  v11 = sub_22B7DB2B8();
  sub_22B4CFA74(v11, qword_281422608);
  v12 = sub_22B7DB298();
  v13 = sub_22B7DBC98();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_22B4CC000, v12, v13, "Could not bridge CFArray to [[AnyHashable: Any]]", v14, 2u);
    MEMORY[0x231898D60](v14, -1, -1);
  }
}

void _sSo18IMDAttachmentStoreC12IMDaemonCoreE15clearTombstones12forRecordIDsySaySo10CKRecordIDCG_tF_0(unint64_t a1)
{
  if (qword_28141F368 != -1)
  {
    swift_once();
  }

  v2 = sub_22B7DB2B8();
  sub_22B4CFA74(v2, qword_281422608);

  v3 = sub_22B7DB298();
  v4 = sub_22B7DBCB8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v24 = v6;
    *v5 = 136315138;
    v7 = sub_22B4D01A0(0, &qword_28141F2A8, 0x277CBC5D0);
    v8 = MEMORY[0x2318952A0](a1, v7);
    v10 = sub_22B4CFAAC(v8, v9, &v24);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_22B4CC000, v3, v4, "Clearing attachment tombstones for recordIDs: %s", v5, 0xCu);
    sub_22B4CFB78(v6);
    MEMORY[0x231898D60](v6, -1, -1);
    MEMORY[0x231898D60](v5, -1, -1);
  }

  if (a1 >> 62)
  {
    v11 = sub_22B7DC1C8();
  }

  else
  {
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v11)
  {
    v24 = MEMORY[0x277D84F90];
    sub_22B7AB6B4(0, v11 & ~(v11 >> 63), 0);
    if (v11 < 0)
    {
      __break(1u);
      return;
    }

    v12 = 0;
    v13 = v24;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x231895C80](v12, a1);
      }

      else
      {
        v14 = *(a1 + 8 * v12 + 32);
      }

      v15 = v14;
      v16 = [v14 recordName];
      v17 = sub_22B7DB6A8();
      v19 = v18;

      v24 = v13;
      v21 = *(v13 + 16);
      v20 = *(v13 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_22B7AB6B4((v20 > 1), v21 + 1, 1);
        v13 = v24;
      }

      ++v12;
      *(v13 + 16) = v21 + 1;
      v22 = v13 + 16 * v21;
      *(v22 + 32) = v17;
      *(v22 + 40) = v19;
    }

    while (v11 != v12);
  }

  v23 = sub_22B7DB8F8();

  IMDAttachmentRecordDeleteTombStonedAttachmentsWithRecordIDs();
}

uint64_t sub_22B755198(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_22B7551A4()
{
  result = sub_22B7551C8();
  qword_2814225D0 = result;
  *algn_2814225D8 = v1;
  return result;
}

uint64_t sub_22B7551C8()
{
  v0 = sub_22B7DA6D8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_22B7DA828();
  v5 = *(v30 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v30);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v29 - v10;
  v12 = IMAttachmentsDirectoryURL();
  sub_22B7DA7D8();

  sub_22B6F0AD4(&qword_27D8CE558, &qword_22B7FA550);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22B7F93B0;
  v14 = *MEMORY[0x277CBE7A0];
  *(inited + 32) = *MEMORY[0x277CBE7A0];
  v15 = v14;
  sub_22B7177E8(inited);
  swift_setDeallocating();
  sub_22B724C4C(inited + 32);
  sub_22B7DA758();

  v16 = sub_22B7DA6B8();
  if (*(v16 + 16) && (v17 = sub_22B725574(v15), (v18 & 1) != 0))
  {
    sub_22B4D1F68(*(v16 + 56) + 32 * v17, v32);

    if (swift_dynamicCast())
    {
      (*(v1 + 8))(v4, v0);
      (*(v5 + 8))(v11, v30);
      return v31;
    }
  }

  else
  {
  }

  sub_22B755D68();
  v20 = swift_allocError();
  swift_willThrow();
  v21 = v20;
  (*(v1 + 8))(v4, v0);
  if (qword_28141F430 != -1)
  {
    swift_once();
  }

  v22 = sub_22B7DB2B8();
  sub_22B4CFA74(v22, qword_281422710);
  v23 = sub_22B7DB298();
  v24 = sub_22B7DBC98();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_22B4CC000, v23, v24, "Could not retrieve canonical path key to get full path to attachments with /private in path, falling back to .resolvingSymLinksInPath", v25, 2u);
    MEMORY[0x231898D60](v25, -1, -1);
  }

  sub_22B7DA7A8();
  v19 = sub_22B7DA7E8();

  v26 = *(v5 + 8);
  v27 = v30;
  v26(v9, v30);
  v26(v11, v27);
  return v19;
}

id sub_22B7555BC()
{
  result = [objc_allocWithZone(IMDFileEventBroadcaster) init];
  qword_28141F140 = result;
  return result;
}

void __swiftcall IMDFileEventBroadcaster.init()(IMDFileEventBroadcaster *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id static IMDFileEventBroadcaster.shared()()
{
  if (qword_28141F138 != -1)
  {
    swift_once();
  }

  v1 = qword_28141F140;

  return v1;
}

Swift::Void __swiftcall IMDFileEventBroadcaster.observeChanges(in:)(Swift::String in)
{
  v2 = v1;
  object = in._object;
  countAndFlagsBits = in._countAndFlagsBits;
  v38 = *MEMORY[0x277D85DE8];
  v5 = sub_22B7DB368();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28141F430 != -1)
  {
    swift_once();
  }

  v10 = sub_22B7DB2B8();
  v11 = sub_22B4CFA74(v10, qword_281422710);

  v36[1] = v11;
  v12 = sub_22B7DB298();
  v13 = sub_22B7DBCB8();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = v9;
    v16 = v6;
    v17 = v5;
    v18 = v2;
    v19 = swift_slowAlloc();
    context.version = v19;
    *v14 = 136315138;
    *(v14 + 4) = sub_22B4CFAAC(countAndFlagsBits, object, &context.version);
    _os_log_impl(&dword_22B4CC000, v12, v13, "Observing file changes for %s", v14, 0xCu);
    sub_22B4CFB78(v19);
    v20 = v19;
    v2 = v18;
    v5 = v17;
    v6 = v16;
    v9 = v15;
    MEMORY[0x231898D60](v20, -1, -1);
    MEMORY[0x231898D60](v14, -1, -1);
  }

  sub_22B6F0AD4(&unk_27D8CEA00, &qword_22B7F98C8);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_22B7F93B0;
  *(v21 + 32) = countAndFlagsBits;
  *(v21 + 40) = object;
  v22 = qword_28141F150;

  if (v22 != -1)
  {
    swift_once();
  }

  v24 = qword_2814225D0;
  v23 = *algn_2814225D8;
  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for FileEventStream();
  v26 = swift_allocObject();
  *(v26 + 72) = v25;
  *(v26 + 80) = 0;
  *(v26 + 16) = v21;
  *(v26 + 24) = -1;
  *(v26 + 32) = 0x4000000000000000;
  *(v26 + 40) = 17;
  *(v26 + 48) = v24;
  *(v26 + 56) = v23;
  *(v26 + 64) = sub_22B4D9B94;
  context.info = v26;
  memset(&context.retain, 0, 24);
  context.version = 0;
  v27 = *MEMORY[0x277CBECE8];

  swift_retain_n();

  v28 = sub_22B7DB8F8();

  v29 = FSEventStreamCreate(v27, sub_22B4D987C, &context, v28, 0xFFFFFFFFFFFFFFFFLL, 2.0, 0x11u);

  if (v29)
  {
    *(v26 + 80) = v29;
    sub_22B4D01A0(0, &qword_28141F210, 0x277D85C78);
    (*(v6 + 104))(v9, *MEMORY[0x277D851D0], v5);
    v30 = sub_22B7DBD98();
    (*(v6 + 8))(v9, v5);
    FSEventStreamSetDispatchQueue(v29, v30);

    FSEventStreamStart(v29);
  }

  else
  {
    v31 = sub_22B7DB298();
    v32 = sub_22B7DBCB8();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_22B4CC000, v31, v32, "Could not create FSEventStream", v33, 2u);
      MEMORY[0x231898D60](v33, -1, -1);
    }
  }

  v34 = *(v2 + OBJC_IVAR___IMDFileEventBroadcaster_fileEventStream);
  *(v2 + OBJC_IVAR___IMDFileEventBroadcaster_fileEventStream) = v26;

  v35 = *MEMORY[0x277D85DE8];
}

Swift::Void __swiftcall IMDFileEventBroadcaster.stopObserving()()
{
  if (*(v0 + OBJC_IVAR___IMDFileEventBroadcaster_fileEventStream))
  {

    FileEventStream.stop()();
  }
}

id IMDFileEventBroadcaster.init()()
{
  *(v0 + OBJC_IVAR___IMDFileEventBroadcaster_fileEventStream) = 0;
  v2.super_class = IMDFileEventBroadcaster;
  return objc_msgSendSuper2(&v2, sel_init);
}

unint64_t sub_22B755D68()
{
  result = qword_27D8CEB70;
  if (!qword_27D8CEB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CEB70);
  }

  return result;
}

unint64_t sub_22B755DD0()
{
  result = qword_27D8CEB78;
  if (!qword_27D8CEB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8CEB78);
  }

  return result;
}

uint64_t sub_22B755E24(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      result = sub_22B7C8BE4(&v10, *(*(v1 + 48) + ((v8 << 7) | (2 * v9))));
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_22B755F04()
{
  v0 = sub_22B7DB2B8();
  sub_22B6F24F4(v0, qword_27D8CEB80);
  sub_22B4CFA74(v0, qword_27D8CEB80);
  return sub_22B7DB2A8();
}

id sub_22B755F84()
{
  v1 = MEMORY[0x277D84FA0];
  *&v0[OBJC_IVAR___IMDMutedChatListRebuilder_identifiersFound] = MEMORY[0x277D84FA0];
  *&v0[OBJC_IVAR___IMDMutedChatListRebuilder_chatsFound] = 0;
  v2 = OBJC_IVAR___IMDMutedChatListRebuilder_state;
  v3 = sub_22B71E6EC(MEMORY[0x277D84F90]);
  sub_22B6F0AD4(&qword_27D8CEBE8, qword_22B7FB2D0);
  v4 = swift_allocObject();
  *(v4 + 64) = 0;
  *(v4 + 16) = v3;
  *(v4 + 24) = 0;
  *(v4 + 32) = v1;
  *(v4 + 40) = 0;
  *(v4 + 48) = v1;
  *(v4 + 56) = v1;
  *&v0[v2] = v4;
  *&v0[OBJC_IVAR___IMDMutedChatListRebuilder_batchLimit] = 50;
  v5 = &v0[OBJC_IVAR___IMDMutedChatListRebuilder_findChat];
  *v5 = sub_22B7560C8;
  v5[1] = 0;
  v6 = &v0[OBJC_IVAR___IMDMutedChatListRebuilder_mutedChatList];
  *v6 = sub_22B7561DC;
  v6[1] = 0;
  v7 = &v0[OBJC_IVAR___IMDMutedChatListRebuilder_muteChat];
  *v7 = sub_22B756278;
  v7[1] = 0;
  v8 = &v0[OBJC_IVAR___IMDMutedChatListRebuilder_muteIdentifiers];
  *v8 = sub_22B756328;
  v8[1] = 0;
  v10.receiver = v0;
  v10.super_class = IMDMutedChatListRebuilder;
  return objc_msgSendSuper2(&v10, sel_init);
}