uint64_t _s27LighthouseBitacoraFramework20LBFProtoToJson_swiftC09serializeb11TrialdEventeF09protoDataSSSgSo6NSDataC_tFZ_0()
{
  v0 = sub_255F0C9D8();
  v22[0] = *(v0 - 8);
  v1 = *(v22[0] + 64);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_255F0C9F8();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v8 = sub_255F0314C(&qword_27F817DC8, &qword_255F109E8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = v22 - v11;
  v13 = type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialdEvent(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v18 = v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255F0C978();
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  sub_255F0C9E8();
  sub_255F0A900(&qword_27F817B68, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialdEvent);
  sub_255F0CAD8();
  v19 = v22[0];
  (*(v14 + 56))(v12, 0, 1, v13);
  sub_255F0A948(v12, v18, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialdEvent);
  sub_255F0C9C8();
  sub_255F0C9B8();
  sub_255F0CAB8();
  v20 = sub_255F095E8();

  (*(v19 + 8))(v4, v0);
  sub_255F0A9B0(v18, type metadata accessor for LighthouseBitacoraProto_LighthouseLedgerTrialdEvent);
  return v20;
}

uint64_t sub_255F0A808(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_255F0A81C(a1, a2);
  }

  return a1;
}

uint64_t sub_255F0A81C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void *sub_255F0A870(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_255F0A8B4(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_255F0A900(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_255F0A948(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_255F0A9B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_255F0ABC8(void *a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a1;
  objc_msgSend_eventPhase(a2, v4, v5, v6, v7);
  sub_255EE12D4(&dword_255ED5000, v8, v9, "Event phase, %d, not found.", v10, v11, v12, v13, 0);

  v14 = *MEMORY[0x277D85DE8];
}

void sub_255F0AC54(void *a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a1;
  objc_msgSend_aggregateFunction(a2, v4, v5, v6, v7);
  sub_255EE12D4(&dword_255ED5000, v8, v9, "Aggregate function %d not found.", v10, v11, v12, v13, 0);

  v14 = *MEMORY[0x277D85DE8];
}

void sub_255F0AD6C(uint64_t a1, void *a2)
{
  v5 = sub_255EE84E4(a1, a2);
  v10 = objc_msgSend_eventType(v3, v6, v7, v8, v9);
  *v4 = 67109120;
  *v2 = v10;
  sub_255EE84B8(&dword_255ED5000, v11, v12, "Event Iteration Error: unknown BMLighthouseLedgerTrialdEvent event type %d");
}

void sub_255F0ADC8(uint64_t a1, void *a2)
{
  v5 = sub_255EE84E4(a1, a2);
  v10 = objc_msgSend_event(v3, v6, v7, v8, v9);
  v15 = objc_msgSend_phase(v10, v11, v12, v13, v14);
  *v4 = 67109120;
  *v2 = v15;
  sub_255EE84B8(&dword_255ED5000, v16, v17, "Event Iteration Error: unknown BMLighthouseLedgerDediscoPrivacyEvent event type %d");
}

void sub_255F0AE8C(uint64_t a1, void *a2)
{
  v5 = sub_255EE84E4(a1, a2);
  v10 = objc_msgSend_state(v3, v6, v7, v8, v9);
  *v4 = 67109120;
  *v2 = v10;
  sub_255EE84B8(&dword_255ED5000, v11, v12, "Transition Iteration Error: unknown LBFBitacoraStateTransition state %d");
}

void sub_255F0AEE8(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4[0] = 67109120;
  v4[1] = v2;
  _os_log_error_impl(&dword_255ED5000, a2, OS_LOG_TYPE_ERROR, "unknown lastState value %d", v4, 8u);
  v3 = *MEMORY[0x277D85DE8];
}

void sub_255F0AF64(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *MEMORY[0x277D85DE8];
  objc_msgSend_eventType(a1, a2, a3, a4, a5);
  sub_255EE8490();
  _os_log_error_impl(v5, v6, v7, v8, v9, 8u);
  v10 = *MEMORY[0x277D85DE8];
}

void sub_255F0AFE8(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_event(a1, a2, a3, a4, a5);
  objc_msgSend_phase(v5, v6, v7, v8, v9);
  sub_255EE8490();
  _os_log_error_impl(v10, v11, v12, v13, v14, 8u);

  v15 = *MEMORY[0x277D85DE8];
}

void sub_255F0B0BC()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_255EE84D8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_255F0B148(void *a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a1;
  objc_msgSend_code(a2, v4, v5, v6, v7);
  v12 = objc_msgSend_domain(a2, v8, v9, v10, v11);
  sub_255EE84A0();
  sub_255EE8490();
  _os_log_error_impl(v13, v14, v15, v16, v17, 0x16u);

  v18 = *MEMORY[0x277D85DE8];
}

void sub_255F0B1FC()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_255EE84D8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_255F0B288(void *a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a1;
  objc_msgSend_code(a2, v4, v5, v6, v7);
  v12 = objc_msgSend_domain(a2, v8, v9, v10, v11);
  sub_255EE84A0();
  sub_255EE8490();
  _os_log_error_impl(v13, v14, v15, v16, v17, 0x16u);

  v18 = *MEMORY[0x277D85DE8];
}

void sub_255F0B33C()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_255EE84D8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_255F0B3C8(void *a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a1;
  objc_msgSend_code(a2, v4, v5, v6, v7);
  v12 = objc_msgSend_domain(a2, v8, v9, v10, v11);
  sub_255EE84A0();
  sub_255EE8490();
  _os_log_error_impl(v13, v14, v15, v16, v17, 0x16u);

  v18 = *MEMORY[0x277D85DE8];
}

void sub_255F0B558()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_255EED818();
  sub_255EED7FC(&dword_255ED5000, v0, v1, "experimentIdentifiersId is not NSDictionary. %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_255F0B5C0()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_255EED818();
  sub_255EED7FC(&dword_255ED5000, v0, v1, "Proto could not be converted. %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_255F0B628()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_255EED818();
  sub_255EED7FC(&dword_255ED5000, v0, v1, "bmltIdentifiersId is not NSDictionary. %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_255F0B690()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_255EED818();
  sub_255EED7FC(&dword_255ED5000, v0, v1, "errorDomainId is not NSString class. %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_255F0B6F8()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_255EED818();
  sub_255EED7FC(&dword_255ED5000, v0, v1, "errorCodeId is not NSNumber class. %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_255F0B760()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_255EED818();
  sub_255EED7FC(&dword_255ED5000, v0, v1, "eventDict does not have succeeded key. %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_255F0B7C8()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_255EED818();
  sub_255EED7FC(&dword_255ED5000, v0, v1, "eventDict does not have scheduled key. %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_255F0B830()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_255EED818();
  sub_255EED7FC(&dword_255ED5000, v0, v1, "trialIdentifiers is not NSDictionary. %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_255F0B898()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_255EED818();
  sub_255EED7FC(&dword_255ED5000, v0, v1, "activityScheduledID is not NSDictionary. %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_255F0B900()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_255EED818();
  sub_255EED7FC(&dword_255ED5000, v0, v1, "taskScheduledID is not NSDictionary. %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_255F0B968()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_255EED818();
  sub_255EED7FC(&dword_255ED5000, v0, v1, "taskFetchedID is not NSDictionary. %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_255F0B9D0()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_255EED818();
  sub_255EED7FC(&dword_255ED5000, v0, v1, "taskCompletedID is not NSDictionary. %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_255F0BA38()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_255EED818();
  sub_255EED7FC(&dword_255ED5000, v0, v1, "trialIdentifiers could not be converted. %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_255F0BAA0(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  sub_255EED7FC(&dword_255ED5000, a1, a3, "could not be converted to proto. %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void sub_255F0BB10()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_255EED818();
  sub_255EED7FC(&dword_255ED5000, v0, v1, "errorDomainID is not NSString class. %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_255F0BB78()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_255EED818();
  sub_255EED7FC(&dword_255ED5000, v0, v1, "errorCodeID is not NSNumber class. %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_255F0BBE0()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_255EED818();
  sub_255EED7FC(&dword_255ED5000, v0, v1, "trialIdentifiersID is not NSDictionary. %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_255F0BC48()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_255EED818();
  sub_255EED7FC(&dword_255ED5000, v0, v1, "performTaskStatusID is not NSDictionary. %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_255F0BCB0()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_255EED818();
  sub_255EED7FC(&dword_255ED5000, v0, v1, "performTrialTaskStatusId is not NSDictionary. %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_255F0BD18()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_255EED818();
  sub_255EED7FC(&dword_255ED5000, v0, v1, "stopID is not NSDictionary. %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_255F0BD80()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_255EED818();
  sub_255EED7FC(&dword_255ED5000, v0, v1, "eventType is not NSString. %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_255F0BDE8()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_255EED818();
  sub_255EED7FC(&dword_255ED5000, v0, v1, "eventType is null. %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_255F0BE50()
{
  v8 = *MEMORY[0x277D85DE8];
  sub_255EED818();
  sub_255EED7FC(&dword_255ED5000, v0, v1, "eventSucceeded is not NSNumber (used to wrap BOOL). %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_255F0C104(void *a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v10 = objc_msgSend_succeeded(a2, v6, v7, v8, v9);
  v22 = objc_msgSend_succeeded(a3, v11, v12, v13, v14);
  sub_255EF4D8C(&dword_255ED5000, v15, v16, "LBFTrialEvent isEqual succeeded is not mached %@ %@", v17, v18, v19, v20, 2u);

  v21 = *MEMORY[0x277D85DE8];
}

void sub_255F0C1C8(void *a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a1;
  objc_msgSend_eventType(a2, v6, v7, v8, v9);
  objc_msgSend_eventType(a3, v10, v11, v12, v13);
  sub_255EF4D8C(&dword_255ED5000, v14, v15, "LBFTrialEvent isEqual eventType is not mached %ld %ld", v16, v17, v18, v19, 0);

  v20 = *MEMORY[0x277D85DE8];
}

void sub_255F0C2BC()
{
  sub_255EF5708();
  v23 = *MEMORY[0x277D85DE8];
  v3 = v2;
  v4 = sub_255EF5720();
  objc_msgSend_succeeded(v4, v5, v6, v7, v8);
  objc_claimAutoreleasedReturnValue();
  v9 = sub_255EF5714();
  v14 = objc_msgSend_succeeded(v9, v10, v11, v12, v13);
  sub_255EF56F0();
  sub_255EF4D8C(&dword_255ED5000, v15, v16, "LBFLighthouseEvent isEqual succeeded is not mached %@ %@", v17, v18, v19, v20, v22);

  v21 = *MEMORY[0x277D85DE8];
}

void sub_255F0C364()
{
  sub_255EF5708();
  v23 = *MEMORY[0x277D85DE8];
  v3 = v2;
  v4 = sub_255EF5720();
  objc_msgSend_errorCode(v4, v5, v6, v7, v8);
  objc_claimAutoreleasedReturnValue();
  v9 = sub_255EF5714();
  v14 = objc_msgSend_errorCode(v9, v10, v11, v12, v13);
  sub_255EF56F0();
  sub_255EF4D8C(&dword_255ED5000, v15, v16, "LBFLighthouseEvent isEqual succeeded is not mached %@ %@", v17, v18, v19, v20, v22);

  v21 = *MEMORY[0x277D85DE8];
}

void sub_255F0C40C()
{
  sub_255EF5708();
  v23 = *MEMORY[0x277D85DE8];
  v3 = v2;
  v4 = sub_255EF5720();
  objc_msgSend_errorDomain(v4, v5, v6, v7, v8);
  objc_claimAutoreleasedReturnValue();
  v9 = sub_255EF5714();
  v14 = objc_msgSend_errorDomain(v9, v10, v11, v12, v13);
  sub_255EF56F0();
  sub_255EF4D8C(&dword_255ED5000, v15, v16, "LBFLighthouseEvent isEqual errorDomain is not mached %@ %@", v17, v18, v19, v20, v22);

  v21 = *MEMORY[0x277D85DE8];
}

void sub_255F0C4B4()
{
  sub_255EF5708();
  v20 = *MEMORY[0x277D85DE8];
  v2 = v1;
  v3 = sub_255EF5720();
  objc_msgSend_eventType(v3, v4, v5, v6, v7);
  v8 = sub_255EF5714();
  objc_msgSend_eventType(v8, v9, v10, v11, v12);
  sub_255EF4D8C(&dword_255ED5000, v13, v14, "LBFLighthouseEvent isEqual eventType is not mached %ld %ld", v15, v16, v17, v18, 0);

  v19 = *MEMORY[0x277D85DE8];
}

void sub_255F0C59C(uint8_t *a1, void *a2, void *a3, _DWORD *a4)
{
  v7 = a2;
  v12 = objc_msgSend_eventType(a3, v8, v9, v10, v11);
  *a1 = 67109120;
  *a4 = v12;
  _os_log_error_impl(&dword_255ED5000, v7, OS_LOG_TYPE_ERROR, "unknown BMLighthouseLedgerTrialdEvent event type %d", a1, 8u);
}

void sub_255F0C614()
{
  sub_255EF5708();
  v20 = *MEMORY[0x277D85DE8];
  v2 = v1;
  v3 = sub_255EF5720();
  objc_msgSend_eventType(v3, v4, v5, v6, v7);
  v8 = sub_255EF5714();
  objc_msgSend_eventType(v8, v9, v10, v11, v12);
  sub_255EF4D8C(&dword_255ED5000, v13, v14, "LBFMLRuntimedEvent isEqual eventType is not mached %ld %ld", v15, v16, v17, v18, 0);

  v19 = *MEMORY[0x277D85DE8];
}

void sub_255F0C6B8()
{
  sub_255EF5708();
  v23 = *MEMORY[0x277D85DE8];
  v3 = v2;
  v4 = sub_255EF5720();
  objc_msgSend_succeeded(v4, v5, v6, v7, v8);
  objc_claimAutoreleasedReturnValue();
  v9 = sub_255EF5714();
  v14 = objc_msgSend_succeeded(v9, v10, v11, v12, v13);
  sub_255EF56F0();
  sub_255EF4D8C(&dword_255ED5000, v15, v16, "LBFMLRuntimedEvent isEqual succeeded is not mached %@ %@", v17, v18, v19, v20, v22);

  v21 = *MEMORY[0x277D85DE8];
}

void sub_255F0C760()
{
  sub_255EF5708();
  v23 = *MEMORY[0x277D85DE8];
  v3 = v2;
  v4 = sub_255EF5720();
  objc_msgSend_errorCode(v4, v5, v6, v7, v8);
  objc_claimAutoreleasedReturnValue();
  v9 = sub_255EF5714();
  v14 = objc_msgSend_errorCode(v9, v10, v11, v12, v13);
  sub_255EF56F0();
  sub_255EF4D8C(&dword_255ED5000, v15, v16, "LBFMLRuntimedEvent isEqual errorCode is not mached %@ %@", v17, v18, v19, v20, v22);

  v21 = *MEMORY[0x277D85DE8];
}

void sub_255F0C808()
{
  sub_255EF5708();
  v23 = *MEMORY[0x277D85DE8];
  v3 = v2;
  v4 = sub_255EF5720();
  objc_msgSend_errorDomain(v4, v5, v6, v7, v8);
  objc_claimAutoreleasedReturnValue();
  v9 = sub_255EF5714();
  v14 = objc_msgSend_errorDomain(v9, v10, v11, v12, v13);
  sub_255EF56F0();
  sub_255EF4D8C(&dword_255ED5000, v15, v16, "LBFMLRuntimedEvent isEqual errorDomain is not mached %@ %@", v17, v18, v19, v20, v22);

  v21 = *MEMORY[0x277D85DE8];
}

void sub_255F0C8B0()
{
  sub_255EF5708();
  v23 = *MEMORY[0x277D85DE8];
  v3 = v2;
  v4 = sub_255EF5720();
  objc_msgSend_scheduled(v4, v5, v6, v7, v8);
  objc_claimAutoreleasedReturnValue();
  v9 = sub_255EF5714();
  v14 = objc_msgSend_scheduled(v9, v10, v11, v12, v13);
  sub_255EF56F0();
  sub_255EF4D8C(&dword_255ED5000, v15, v16, "LBFMLRuntimedEvent isEqual scheduled is not mached %@ %@", v17, v18, v19, v20, v22);

  v21 = *MEMORY[0x277D85DE8];
}