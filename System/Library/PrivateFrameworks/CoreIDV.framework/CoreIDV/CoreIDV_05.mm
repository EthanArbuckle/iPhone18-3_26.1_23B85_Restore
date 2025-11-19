uint64_t sub_21CD0CC74()
{
  v31 = v0;
  v1 = 0xD00000000000004FLL;
  sub_21CD07870((v0 + 16));
  if (!*(v0 + 40))
  {
    sub_21CCC947C(v0 + 16);
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A290, &qword_21CD8F130);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    if (qword_280F77E40 != -1)
    {
      swift_once();
    }

    v8 = sub_21CD839F4();
    __swift_project_value_buffer(v8, qword_280F78E40);
    v9 = sub_21CD839D4();
    v10 = sub_21CD83E24();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_21CC90000, v9, v10, "MobileDocumentProviderRegistrationSession pre-flight check failed: missing base entitlement", v11, 2u);
      MEMORY[0x21CF18580](v11, -1, -1);
    }

    v12 = "stration request is invalid.";
    v1 = 0xD000000000000028;
    goto LABEL_14;
  }

  v2 = *(v0 + 112);
  v3 = *(v0 + 80);

  if (!v2)
  {
    goto LABEL_19;
  }

  v4 = *(v0 + 112);
  sub_21CD07870((v0 + 48));
  if (*(v0 + 72))
  {
    v5 = swift_dynamicCast();
    v6 = *(v0 + 88);
    v7 = v5 ? *(v0 + 88) : 0;
  }

  else
  {
    sub_21CCC947C(v0 + 48);
    v7 = 0;
  }

  v19._countAndFlagsBits = *(v0 + 104);
  v30 = v7;
  v19._object = v4;
  v20 = MobileDocumentProviderRegistrationEntitlementChecker.checkEntitled(for:)(v19);

  if (v20)
  {
LABEL_19:
    v21 = *(v0 + 128);
    v22 = *(v0 + 120);
    *(v0 + 144) = *(*(v0 + 136) + 112);
    v23 = swift_allocObject();
    *(v0 + 152) = v23;
    *(v23 + 16) = v22;
    *(v23 + 24) = v21;

    return MEMORY[0x2822009F8](sub_21CD0D08C, 0, 0);
  }

  if (qword_280F77E40 != -1)
  {
    swift_once();
  }

  v24 = sub_21CD839F4();
  __swift_project_value_buffer(v24, qword_280F78E40);

  v25 = sub_21CD839D4();
  v26 = sub_21CD83E24();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = *(v0 + 104);
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = v29;
    *v28 = 136315138;
    *(v28 + 4) = sub_21CCC02FC(v27, v4, &v30);
    _os_log_impl(&dword_21CC90000, v25, v26, "MobileDocumentProviderRegistrationSession pre-flight check failed: not entitled for document type %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x21CF18580](v29, -1, -1);
    MEMORY[0x21CF18580](v28, -1, -1);
  }

  v12 = "ication is not entitled.";
LABEL_14:
  v13 = v12 | 0x8000000000000000;
  sub_21CD0DE48();
  swift_allocError();
  v15 = v14;
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  *v14 = 3;
  *(v14 + 8) = 0;

  v16 = *(v15 + 24);
  *(v15 + 16) = v1;
  *(v15 + 24) = v13;

  swift_willThrow();
  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_21CD0D08C()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = swift_task_alloc();
  v0[20] = v3;
  v3[2] = v2;
  v3[3] = &unk_21CD8F658;
  v3[4] = v1;
  v4 = swift_task_alloc();
  v0[21] = v4;
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v2;
  v5 = *(MEMORY[0x277D85A10] + 4);
  v6 = swift_task_alloc();
  v0[22] = v6;
  *v6 = v0;
  v6[1] = sub_21CD0CAEC;
  v7 = v0[12];
  v8 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200830](v7, &unk_21CD8F660, v3, sub_21CD0F494, v4, 0, 0, v8);
}

uint64_t sub_21CD0D1B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[16] = a5;
  v6[17] = v5;
  v6[14] = a3;
  v6[15] = a4;
  v6[12] = a1;
  v6[13] = a2;
  return MEMORY[0x2822009F8](sub_21CD0D1DC, v5, 0);
}

uint64_t sub_21CD0D1DC()
{
  v31 = v0;
  v1 = 0xD00000000000004FLL;
  sub_21CD07870((v0 + 16));
  if (!*(v0 + 40))
  {
    sub_21CCC947C(v0 + 16);
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A290, &qword_21CD8F130);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    if (qword_280F77E40 != -1)
    {
      swift_once();
    }

    v8 = sub_21CD839F4();
    __swift_project_value_buffer(v8, qword_280F78E40);
    v9 = sub_21CD839D4();
    v10 = sub_21CD83E24();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_21CC90000, v9, v10, "MobileDocumentProviderRegistrationSession pre-flight check failed: missing base entitlement", v11, 2u);
      MEMORY[0x21CF18580](v11, -1, -1);
    }

    v12 = "stration request is invalid.";
    v1 = 0xD000000000000028;
    goto LABEL_14;
  }

  v2 = *(v0 + 112);
  v3 = *(v0 + 80);

  if (!v2)
  {
    goto LABEL_19;
  }

  v4 = *(v0 + 112);
  sub_21CD07870((v0 + 48));
  if (*(v0 + 72))
  {
    v5 = swift_dynamicCast();
    v6 = *(v0 + 88);
    v7 = v5 ? *(v0 + 88) : 0;
  }

  else
  {
    sub_21CCC947C(v0 + 48);
    v7 = 0;
  }

  v19._countAndFlagsBits = *(v0 + 104);
  v30 = v7;
  v19._object = v4;
  v20 = MobileDocumentProviderRegistrationEntitlementChecker.checkEntitled(for:)(v19);

  if (v20)
  {
LABEL_19:
    v21 = *(v0 + 128);
    v22 = *(v0 + 120);
    *(v0 + 144) = *(*(v0 + 136) + 112);
    v23 = swift_allocObject();
    *(v0 + 152) = v23;
    *(v23 + 16) = v22;
    *(v23 + 24) = v21;

    return MEMORY[0x2822009F8](sub_21CD0D5F4, 0, 0);
  }

  if (qword_280F77E40 != -1)
  {
    swift_once();
  }

  v24 = sub_21CD839F4();
  __swift_project_value_buffer(v24, qword_280F78E40);

  v25 = sub_21CD839D4();
  v26 = sub_21CD83E24();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = *(v0 + 104);
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = v29;
    *v28 = 136315138;
    *(v28 + 4) = sub_21CCC02FC(v27, v4, &v30);
    _os_log_impl(&dword_21CC90000, v25, v26, "MobileDocumentProviderRegistrationSession pre-flight check failed: not entitled for document type %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x21CF18580](v29, -1, -1);
    MEMORY[0x21CF18580](v28, -1, -1);
  }

  v12 = "ication is not entitled.";
LABEL_14:
  v13 = v12 | 0x8000000000000000;
  sub_21CD0DE48();
  swift_allocError();
  v15 = v14;
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  *v14 = 3;
  *(v14 + 8) = 0;

  v16 = *(v15 + 24);
  *(v15 + 16) = v1;
  *(v15 + 24) = v13;

  swift_willThrow();
  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_21CD0D5F4()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = swift_task_alloc();
  v0[20] = v3;
  v3[2] = v2;
  v3[3] = &unk_21CD8F638;
  v3[4] = v1;
  v4 = swift_task_alloc();
  v0[21] = v4;
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v2;
  v5 = *(MEMORY[0x277D85A10] + 4);
  v6 = swift_task_alloc();
  v0[22] = v6;
  *v6 = v0;
  v6[1] = sub_21CD0D718;
  v7 = v0[12];

  return MEMORY[0x282200830](v7, &unk_21CD8F640, v3, sub_21CD0F1D8, v4, 0, 0, &type metadata for MobileDocumentProviderQueryRegistrationsResponse);
}

uint64_t sub_21CD0D718()
{
  v2 = *(*v1 + 176);
  v3 = *v1;
  v3[23] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21CD0D878, 0, 0);
  }

  else
  {
    v5 = v3[20];
    v4 = v3[21];
    v6 = v3[19];

    v7 = v3[1];

    return v7();
  }
}

uint64_t sub_21CD0D878()
{
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[19];

  v4 = v0[23];
  v5 = v0[1];

  return v5();
}

uint64_t MobileDocumentProviderRegistrationSession.deinit()
{
  v1 = *(v0 + 112);

  __swift_destroy_boxed_opaque_existential_0((v0 + 120));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t MobileDocumentProviderRegistrationSession.__deallocating_deinit()
{
  v1 = *(v0 + 112);

  __swift_destroy_boxed_opaque_existential_0((v0 + 120));
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_21CD0D978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a3;
  v39 = a4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v37);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_0, a1, a3);
  swift_defaultActor_initialize();
  v8 = [objc_opt_self() interfaceWithProtocol_];
  v9 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v10 = sub_21CD83B04();
  v11 = [v9 initWithMachServiceName:v10 options:{4096, 0, 0}];

  sub_21CCB3200(&aBlock, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A250, &qword_21CD8EF38);
  v12 = swift_allocObject();
  [v11 setRemoteObjectInterface_];
  [v11 setInvalidationHandler_];
  v13 = &_swift_FORCE_LOAD___swiftOSLog___CoreIDV;
  [v11 setInterruptionHandler_];
  [v11 setExportedInterface_];
  sub_21CCB3200(v36, v34);
  v14 = v35;
  if (v35)
  {
    v15 = __swift_project_boxed_opaque_existential_0(v34, v35);
    v16 = *(v14 - 8);
    v17 = *(v16 + 64);
    MEMORY[0x28223BE20](v15, v15);
    v19 = &aBlock - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v16 + 16))(v19);
    v20 = sub_21CD84194();
    (*(v16 + 8))(v19, v14);
    v13 = &_swift_FORCE_LOAD___swiftOSLog___CoreIDV;
    __swift_destroy_boxed_opaque_existential_0(v34);
  }

  else
  {
    v20 = 0;
  }

  [v11 setExportedObject_];
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19170, &unk_21CD8F690);
  v21 = swift_allocObject();
  *(v21 + 24) = 0;
  *(v21 + 16) = v11;
  v12[2] = v21;
  v12[3] = sub_21CD088FC;
  v12[4] = 0;
  [v11 activate];

  sub_21CCC947C(v36);
  sub_21CCC947C(&aBlock);
  *(a2 + 112) = v12;

  os_unfair_lock_lock((v21 + 24));
  v22 = *(v21 + 16);
  v32 = sub_21CD08974;
  v33 = 0;
  aBlock = MEMORY[0x277D85DD0];
  aBlock_8 = 1107296256;
  v30 = sub_21CCB3270;
  v31 = &block_descriptor_111;
  v23 = _Block_copy(&aBlock);

  [v22 v13[385]];
  _Block_release(v23);
  os_unfair_lock_unlock((v21 + 24));

  v24 = *(*(a2 + 112) + 16);

  os_unfair_lock_lock((v24 + 24));
  v25 = *(v24 + 16);
  v32 = sub_21CD08980;
  v33 = 0;
  aBlock = MEMORY[0x277D85DD0];
  aBlock_8 = 1107296256;
  v30 = sub_21CCB3270;
  v31 = &block_descriptor_114;
  v26 = _Block_copy(&aBlock);

  [v25 setInvalidationHandler_];
  _Block_release(v26);
  os_unfair_lock_unlock((v24 + 24));

  sub_21CD02954(&v37, a2 + 120);
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

unint64_t sub_21CD0DE48()
{
  result = qword_27CE1A2D8;
  if (!qword_27CE1A2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A2D8);
  }

  return result;
}

uint64_t sub_21CD0DE9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDocumentProviderRegistrationRequest();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CD0DF00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDocumentProviderRegistrationRequest();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CD0DF64(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for MobileDocumentProviderRegistrationRequest() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_21CCC498C;

  return sub_21CD08E40(a1, a2, v2 + v7);
}

uint64_t sub_21CD0E048(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_21CCC498C;

  return sub_21CD09600(a1, a2, v7, v6);
}

uint64_t sub_21CD0E0FC(uint64_t a1, uint64_t *a2)
{
  v6 = *(type metadata accessor for MobileDocumentProviderRegistrationRequest() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = (v2 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_21CCC498C;

  return sub_21CD0A6AC(a1, a2, v2 + v7, v9, v10);
}

uint64_t sub_21CD0E220(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21CCC498C;

  return sub_21CCB389C(a1, v4, v5, v6);
}

uint64_t sub_21CD0E2E0(uint64_t a1, uint64_t *a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_21CCC498C;

  return sub_21CD0B000(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_21CD0E3A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21CCC498C;

  return sub_21CCB3B90(a1, v4, v5, v6);
}

uint64_t sub_21CD0E468(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v8 = *(v2 + 24);
  v7 = *(v2 + 32);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_21CCC498C;

  return sub_21CD0C0E4(a1, a2, v6, v8, v7);
}

uint64_t dispatch thunk of MobileDocumentProviderRegistrationSession.status.getter(uint64_t a1)
{
  v4 = *(*v1 + 104);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21CCC498C;

  return v8(a1);
}

uint64_t dispatch thunk of MobileDocumentProviderRegistrationSession.register(request:)(uint64_t a1)
{
  v4 = *(*v1 + 120);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21CCC498C;

  return v8(a1);
}

uint64_t dispatch thunk of MobileDocumentProviderRegistrationSession.unregister(request:)(uint64_t a1)
{
  v4 = *(*v1 + 128);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21CCC498C;

  return v8(a1);
}

uint64_t dispatch thunk of MobileDocumentProviderRegistrationSession.registrations()(uint64_t a1)
{
  v4 = *(*v1 + 136);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21CCC498C;

  return v8(a1);
}

uint64_t dispatch thunk of MobileDocumentProviderRegistrationSession.register(request:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 144);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_21CCC498C;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of MobileDocumentProviderRegistrationSession.unregister(request:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 152);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_21CCC498C;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of MobileDocumentProviderRegistrationSession.applications()(uint64_t a1)
{
  v4 = *(*v1 + 160);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21CCC498C;

  return v8(a1);
}

uint64_t dispatch thunk of MobileDocumentProviderRegistrationSession.notifyEnablementUpdate(to:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 168);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_21CCC498C;

  return v12(a1, a2, a3);
}

uint64_t sub_21CD0EEFC(uint64_t a1)
{
  v2 = type metadata accessor for MobileDocumentProviderRegistrationRequest();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21CD0EF58(uint64_t a1, uint64_t *a2, int *a3)
{
  v5 = *a2;
  v9 = (a3 + *a3);
  v6 = a3[1];
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21CCC498C;

  return v9(a1, v5);
}

uint64_t sub_21CD0F05C(uint64_t a1, uint64_t *a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_21CCC498C;

  return sub_21CD0EF58(a1, a2, v7);
}

uint64_t sub_21CD0F124(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21CCC01B8;

  return sub_21CCB3A94(a1, v4, v5, v6);
}

uint64_t sub_21CD0F1E4(uint64_t a1, uint64_t *a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_21CCC498C;

  return sub_21CD0EF58(a1, a2, v7);
}

uint64_t sub_21CD0F2AC(uint64_t a1, uint64_t *a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_21CCC498C;

  return sub_21CD0EF58(a1, a2, v7);
}

uint64_t sub_21CD0F374(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21CCC498C;

  return sub_21CCB3998(a1, v4, v5, v6);
}

uint64_t block_copy_helper_109(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

_BYTE *MobileDocumentProviderRegistrationSession.Error.init(code:underlyingError:debugDescription:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = *result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

uint64_t sub_21CD0F4C0()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x6F70707553746F6ELL;
  if (*v0 != 2)
  {
    v2 = 0x6F68747541746F6ELL;
  }

  if (*v0)
  {
    v1 = 0x5264696C61766E69;
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

uint64_t sub_21CD0F55C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21CD11D80(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21CD0F584(uint64_t a1)
{
  v2 = sub_21CD0FC14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD0F5C0(uint64_t a1)
{
  v2 = sub_21CD0FC14();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD0F5FC(uint64_t a1)
{
  v2 = sub_21CD0FD10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD0F638(uint64_t a1)
{
  v2 = sub_21CD0FD10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD0F674(uint64_t a1)
{
  v2 = sub_21CD0FC68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD0F6B0(uint64_t a1)
{
  v2 = sub_21CD0FC68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD0F6EC(uint64_t a1)
{
  v2 = sub_21CD0FCBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD0F728(uint64_t a1)
{
  v2 = sub_21CD0FCBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD0F764(uint64_t a1)
{
  v2 = sub_21CD0FD64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD0F7A0(uint64_t a1)
{
  v2 = sub_21CD0FD64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MobileDocumentProviderRegistrationSession.Error.Code.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A2F8, &qword_21CD8F6B0);
  v42 = *(v3 - 8);
  v43 = v3;
  v4 = *(v42 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v41 = &v33 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A300, &qword_21CD8F6B8);
  v39 = *(v7 - 8);
  v40 = v7;
  v8 = *(v39 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v38 = &v33 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A308, &qword_21CD8F6C0);
  v36 = *(v11 - 8);
  v37 = v11;
  v12 = *(v36 + 64);
  MEMORY[0x28223BE20](v11, v13);
  v35 = &v33 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A310, &qword_21CD8F6C8);
  v33 = *(v15 - 8);
  v34 = v15;
  v16 = *(v33 + 64);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v33 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A318, &qword_21CD8F6D0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v33 - v24;
  v26 = *v1;
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD0FC14();
  sub_21CD842B4();
  v28 = (v21 + 8);
  if (v26 > 1)
  {
    if (v26 == 2)
    {
      v46 = 2;
      sub_21CD0FCBC();
      v29 = v38;
      sub_21CD840E4();
      v31 = v39;
      v30 = v40;
    }

    else
    {
      v47 = 3;
      sub_21CD0FC68();
      v29 = v41;
      sub_21CD840E4();
      v31 = v42;
      v30 = v43;
    }

    goto LABEL_8;
  }

  if (v26)
  {
    v45 = 1;
    sub_21CD0FD10();
    v29 = v35;
    sub_21CD840E4();
    v31 = v36;
    v30 = v37;
LABEL_8:
    (*(v31 + 8))(v29, v30);
    return (*v28)(v25, v20);
  }

  v44 = 0;
  sub_21CD0FD64();
  sub_21CD840E4();
  (*(v33 + 8))(v19, v34);
  return (*v28)(v25, v20);
}

unint64_t sub_21CD0FC14()
{
  result = qword_27CE1A320;
  if (!qword_27CE1A320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A320);
  }

  return result;
}

unint64_t sub_21CD0FC68()
{
  result = qword_27CE1A328;
  if (!qword_27CE1A328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A328);
  }

  return result;
}

unint64_t sub_21CD0FCBC()
{
  result = qword_27CE1A330;
  if (!qword_27CE1A330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A330);
  }

  return result;
}

unint64_t sub_21CD0FD10()
{
  result = qword_27CE1A338;
  if (!qword_27CE1A338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A338);
  }

  return result;
}

unint64_t sub_21CD0FD64()
{
  result = qword_27CE1A340;
  if (!qword_27CE1A340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A340);
  }

  return result;
}

uint64_t MobileDocumentProviderRegistrationSession.Error.Code.hashValue.getter()
{
  v1 = *v0;
  sub_21CD84264();
  MEMORY[0x21CF17CC0](v1);
  return sub_21CD84294();
}

uint64_t MobileDocumentProviderRegistrationSession.Error.Code.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v57 = a2;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A348, &qword_21CD8F6D8);
  v51 = *(v53 - 8);
  v3 = *(v51 + 64);
  MEMORY[0x28223BE20](v53, v4);
  v56 = &v46 - v5;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A350, &qword_21CD8F6E0);
  v50 = *(v54 - 8);
  v6 = *(v50 + 64);
  MEMORY[0x28223BE20](v54, v7);
  v55 = &v46 - v8;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A358, &qword_21CD8F6E8);
  v48 = *(v52 - 8);
  v9 = *(v48 + 64);
  MEMORY[0x28223BE20](v52, v10);
  v12 = &v46 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A360, &qword_21CD8F6F0);
  v49 = *(v13 - 8);
  v14 = *(v49 + 64);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v46 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A368, &unk_21CD8F6F8);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v46 - v22;
  v25 = a1[3];
  v24 = a1[4];
  v59 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v25);
  sub_21CD0FC14();
  v26 = v58;
  sub_21CD842A4();
  if (!v26)
  {
    v27 = v17;
    v46 = v13;
    v47 = 0;
    v28 = v12;
    v29 = v55;
    v30 = v56;
    v58 = v19;
    v31 = v57;
    v32 = v23;
    v33 = sub_21CD840D4();
    v34 = (2 * *(v33 + 16)) | 1;
    v60 = v33;
    v61 = v33 + 32;
    v62 = 0;
    v63 = v34;
    v35 = sub_21CCD18D8();
    if (v35 == 4 || v62 != v63 >> 1)
    {
      v37 = sub_21CD83FA4();
      swift_allocError();
      v39 = v38;
      v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19268, &qword_21CD88F20) + 48);
      *v39 = &type metadata for MobileDocumentProviderRegistrationSession.Error.Code;
      sub_21CD84044();
      sub_21CD83F94();
      (*(*(v37 - 8) + 104))(v39, *MEMORY[0x277D84160], v37);
      swift_willThrow();
LABEL_9:
      (*(v58 + 8))(v23, v18);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_0(v59);
    }

    v64 = v35;
    if (v35 <= 1u)
    {
      if (v35)
      {
        v65 = 1;
        sub_21CD0FD10();
        v44 = v47;
        sub_21CD84034();
        if (!v44)
        {
          (*(v48 + 8))(v28, v52);
          goto LABEL_17;
        }
      }

      else
      {
        v65 = 0;
        sub_21CD0FD64();
        v36 = v47;
        sub_21CD84034();
        if (!v36)
        {
          (*(v49 + 8))(v27, v46);
LABEL_17:
          (*(v58 + 8))(v23, v18);
LABEL_22:
          swift_unknownObjectRelease();
          *v31 = v64;
          return __swift_destroy_boxed_opaque_existential_0(v59);
        }
      }

      goto LABEL_9;
    }

    v42 = v58;
    if (v35 == 2)
    {
      v65 = 2;
      sub_21CD0FCBC();
      v43 = v47;
      sub_21CD84034();
      if (!v43)
      {
        (*(v50 + 8))(v29, v54);
LABEL_21:
        (*(v42 + 8))(v32, v18);
        goto LABEL_22;
      }
    }

    else
    {
      v65 = 3;
      sub_21CD0FC68();
      v45 = v47;
      sub_21CD84034();
      if (!v45)
      {
        (*(v51 + 8))(v30, v53);
        goto LABEL_21;
      }
    }

    (*(v42 + 8))(v32, v18);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_0(v59);
}

void *MobileDocumentProviderRegistrationSession.Error.underlyingError.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

uint64_t MobileDocumentProviderRegistrationSession.Error.debugDescription.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t MobileDocumentProviderRegistrationSession.Error.debugDescription.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t MobileDocumentProviderRegistrationSession.Error.init(_bridgedNSError:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = [a1 domain];
  v5 = sub_21CD83B24();
  v7 = v6;

  sub_21CD10A20();
  if (v5 == sub_21CD834B4() && v7 == v8)
  {
  }

  else
  {
    v10 = sub_21CD841A4();

    if ((v10 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v12 = [a1 userInfo];
  v13 = sub_21CD83A24();

  if (*(v13 + 16) && (v14 = sub_21CCA996C(0xD000000000000038, 0x800000021CD9FC50), (v15 & 1) != 0))
  {
    sub_21CCB15A8(*(v13 + 56) + 32 * v14, v46);

    result = swift_dynamicCast();
    if (result)
    {
      v16 = sub_21CD83574();
      v17 = *(v16 + 48);
      v18 = *(v16 + 52);
      swift_allocObject();
      sub_21CD83564();
      sub_21CD10DBC();
      sub_21CD83554();

      v19 = v46[0];
      v20 = [a1 code];
      if (v20 == v19)
      {
        v21 = v20;
        v22 = [a1 userInfo];
        v23 = sub_21CD83A24();

        v24 = *MEMORY[0x277CCA7E8];
        v25 = sub_21CD83B24();
        if (*(v23 + 16))
        {
          v43 = v21;
          v27 = sub_21CCA996C(v25, v26);
          v29 = v28;

          if (v29)
          {
            sub_21CCB15A8(*(v23 + 56) + 32 * v27, v46);

            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE191A0, &qword_21CD88650);
            if (swift_dynamicCast())
            {
              v30 = v44;
            }

            else
            {
              v30 = 0;
            }
          }

          else
          {

            v30 = 0;
          }

          v21 = v43;
        }

        else
        {

          v30 = 0;
        }

        v31 = [a1 userInfo];
        v32 = sub_21CD83A24();

        v33 = *MEMORY[0x277CCA068];
        v34 = sub_21CD83B24();
        if (*(v32 + 16))
        {
          v36 = sub_21CCA996C(v34, v35);
          v38 = v37;

          if (v38)
          {
            sub_21CCB15A8(*(v32 + 56) + 32 * v36, v46);
            sub_21CCB1880(v44, v45);

            v39 = swift_dynamicCast();
            v40 = v44;
            if (v39)
            {
              v41 = v45;
            }

            else
            {
              v40 = 0;
              v41 = 0;
            }

            goto LABEL_33;
          }

          sub_21CCB1880(v44, v45);
        }

        else
        {
          sub_21CCB1880(v44, v45);
        }

        v40 = 0;
        v41 = 0;
LABEL_33:
        *a2 = v21;
        a2[1] = v30;
        a2[2] = v40;
        a2[3] = v41;
        v42 = v30;
      }

      result = sub_21CCB1880(v44, v45);
    }
  }

  else
  {
  }

LABEL_13:
  *a2 = xmmword_21CD8F6A0;
  a2[2] = 0;
  a2[3] = 0;
  return result;
}

unint64_t sub_21CD10A20()
{
  result = qword_27CE1A370;
  if (!qword_27CE1A370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A370);
  }

  return result;
}

uint64_t MobileDocumentProviderRegistrationSession.Error.errorUserInfo.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = MEMORY[0x277D84F98];
  v36 = MEMORY[0x277D84F98];
  v6 = sub_21CD835A4();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_21CD83594();
  sub_21CD10E10();
  v9 = sub_21CD83584();
  v11 = v10;

  v35 = MEMORY[0x277CC9318];
  *&v34 = v9;
  *(&v34 + 1) = v11;
  sub_21CCB2190(&v34, v31);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_21CD113FC(v31, 0xD000000000000038, 0x800000021CD9FC50, isUniquelyReferenced_nonNull_native);
  v36 = v5;
  v13 = *MEMORY[0x277CCA068];
  v14 = sub_21CD83B24();
  v16 = v14;
  v17 = v15;
  if (v4)
  {
    v35 = MEMORY[0x277D837D0];
    *&v34 = v3;
    *(&v34 + 1) = v4;
    sub_21CCB2190(&v34, v31);

    v18 = v36;
    v19 = swift_isUniquelyReferenced_nonNull_native();
    sub_21CD113FC(v31, v16, v17, v19);

    v36 = v18;
  }

  else
  {
    sub_21CD10E64(v14, v15, &v34);

    sub_21CCC947C(&v34);
  }

  v20 = *MEMORY[0x277CCA7E8];
  v21 = sub_21CD83B24();
  v23 = v21;
  v24 = v22;
  if (v2)
  {
    swift_getErrorValue();
    v25 = v32;
    v26 = v33;
    v35 = v33;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v34);
    (*(*(v26 - 8) + 16))(boxed_opaque_existential_0, v25, v26);
    sub_21CCB2190(&v34, v31);
    v28 = v36;
    v29 = swift_isUniquelyReferenced_nonNull_native();
    sub_21CD113FC(v31, v23, v24, v29);

    return v28;
  }

  else
  {
    sub_21CD10E64(v21, v22, &v34);

    sub_21CCC947C(&v34);
    return v36;
  }
}

uint64_t sub_21CD10D44(uint64_t a1)
{
  v2 = sub_21CD10A20();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_21CD10D80(uint64_t a1)
{
  v2 = sub_21CD10A20();

  return MEMORY[0x28211F4A8](a1, v2);
}

unint64_t sub_21CD10DBC()
{
  result = qword_27CE1A378;
  if (!qword_27CE1A378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A378);
  }

  return result;
}

unint64_t sub_21CD10E10()
{
  result = qword_27CE1A380;
  if (!qword_27CE1A380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A380);
  }

  return result;
}

double sub_21CD10E64@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_21CCA996C(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_21CD7694C();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_21CCB2190((*(v12 + 56) + 32 * v9), a3);
    sub_21CD11060(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_21CD10F08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_21CCA996C(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_21CD76CAC();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = type metadata accessor for SynchronousExtensionPointManager.State();
    v22 = *(v15 - 8);
    sub_21CD11F5C(v14 + *(v22 + 72) * v9, a3);
    sub_21CD11210(v9, v12);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for SynchronousExtensionPointManager.State();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_21CD11060(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21CD83F04() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_21CD84264();

      sub_21CD83B74();
      v14 = sub_21CD84294();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_21CD11210(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21CD83F04() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_21CD84264();

      sub_21CD83B74();
      v13 = sub_21CD84294();

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
      v19 = *(*(type metadata accessor for SynchronousExtensionPointManager.State() - 8) + 72);
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

_OWORD *sub_21CD113FC(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_21CCA996C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_21CD7694C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_21CD758AC(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_21CCA996C(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_21CD841F4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v23);

    return sub_21CCB2190(a1, v23);
  }

  else
  {
    sub_21CD76764(v11, a2, a3, a1, v22);
  }
}

unint64_t sub_21CD11550()
{
  result = qword_27CE1A388;
  if (!qword_27CE1A388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A388);
  }

  return result;
}

uint64_t sub_21CD115A4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_21CD11600(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_21CD116C8()
{
  result = qword_27CE1A390;
  if (!qword_27CE1A390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A390);
  }

  return result;
}

unint64_t sub_21CD11720()
{
  result = qword_27CE1A398;
  if (!qword_27CE1A398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A398);
  }

  return result;
}

unint64_t sub_21CD11778()
{
  result = qword_27CE1A3A0;
  if (!qword_27CE1A3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A3A0);
  }

  return result;
}

unint64_t sub_21CD117D0()
{
  result = qword_27CE1A3A8;
  if (!qword_27CE1A3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A3A8);
  }

  return result;
}

unint64_t sub_21CD11828()
{
  result = qword_27CE1A3B0;
  if (!qword_27CE1A3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A3B0);
  }

  return result;
}

unint64_t sub_21CD11880()
{
  result = qword_27CE1A3B8;
  if (!qword_27CE1A3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A3B8);
  }

  return result;
}

unint64_t sub_21CD118D8()
{
  result = qword_27CE1A3C0;
  if (!qword_27CE1A3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A3C0);
  }

  return result;
}

unint64_t sub_21CD11930()
{
  result = qword_27CE1A3C8;
  if (!qword_27CE1A3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A3C8);
  }

  return result;
}

unint64_t sub_21CD11988()
{
  result = qword_27CE1A3D0;
  if (!qword_27CE1A3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A3D0);
  }

  return result;
}

unint64_t sub_21CD119E0()
{
  result = qword_27CE1A3D8;
  if (!qword_27CE1A3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A3D8);
  }

  return result;
}

unint64_t sub_21CD11A38()
{
  result = qword_27CE1A3E0;
  if (!qword_27CE1A3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A3E0);
  }

  return result;
}

uint64_t sub_21CD11A8C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_21CCA996C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_21CD76CAC();
      goto LABEL_7;
    }

    sub_21CD75E98(v15, a4 & 1);
    v22 = *v5;
    v23 = sub_21CCA996C(a2, a3);
    if ((v16 & 1) == (v24 & 1))
    {
      v12 = v23;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_21CD841F4();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = v19 + *(*(type metadata accessor for SynchronousExtensionPointManager.State() - 8) + 72) * v12;

    return sub_21CD11EF8(a1, v20);
  }

LABEL_13:
  sub_21CD767EC(v12, a2, a3, a1, v18);
}

uint64_t sub_21CD11BF0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for MobileDocumentType(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_21CCAB040(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_21CD76F04();
      goto LABEL_7;
    }

    sub_21CD76210(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_21CCAB040(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_21CD11FC0(a2, v12);
      return sub_21CD76898(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_21CD841F4();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

uint64_t sub_21CD11D80(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_21CD841A4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5264696C61766E69 && a2 == 0xEE00747365757165 || (sub_21CD841A4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F70707553746F6ELL && a2 == 0xEC00000064657472 || (sub_21CD841A4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F68747541746F6ELL && a2 == 0xED000064657A6972)
  {

    return 3;
  }

  else
  {
    v6 = sub_21CD841A4();

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

uint64_t sub_21CD11EF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SynchronousExtensionPointManager.State();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CD11F5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SynchronousExtensionPointManager.State();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CD11FC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDocumentType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CD12044(uint64_t a1)
{
  v2 = sub_21CD128EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD12080(uint64_t a1)
{
  v2 = sub_21CD128EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD120BC()
{
  v1 = 0x7A69726F68747561;
  v2 = 0x6F68747541746F6ELL;
  if (*v0 != 2)
  {
    v2 = 0x6F70707553746F6ELL;
  }

  if (*v0)
  {
    v1 = 0x7265746544746F6ELL;
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

uint64_t sub_21CD1215C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21CD134C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21CD12184(uint64_t a1)
{
  v2 = sub_21CD1279C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD121C0(uint64_t a1)
{
  v2 = sub_21CD1279C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD121FC(uint64_t a1)
{
  v2 = sub_21CD12844();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD12238(uint64_t a1)
{
  v2 = sub_21CD12844();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD12274(uint64_t a1)
{
  v2 = sub_21CD12898();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD122B0(uint64_t a1)
{
  v2 = sub_21CD12898();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD122EC(uint64_t a1)
{
  v2 = sub_21CD127F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD12328(uint64_t a1)
{
  v2 = sub_21CD127F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MobileDocumentProviderRegistrationSession.Status.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A3E8, &qword_21CD8FCD0);
  v42 = *(v3 - 8);
  v43 = v3;
  v4 = *(v42 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v41 = &v33 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A3F0, &qword_21CD8FCD8);
  v39 = *(v7 - 8);
  v40 = v7;
  v8 = *(v39 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v38 = &v33 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A3F8, &qword_21CD8FCE0);
  v36 = *(v11 - 8);
  v37 = v11;
  v12 = *(v36 + 64);
  MEMORY[0x28223BE20](v11, v13);
  v35 = &v33 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A400, &qword_21CD8FCE8);
  v33 = *(v15 - 8);
  v34 = v15;
  v16 = *(v33 + 64);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v33 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A408, &qword_21CD8FCF0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v33 - v24;
  v26 = *v1;
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD1279C();
  sub_21CD842B4();
  v28 = (v21 + 8);
  if (v26 > 1)
  {
    if (v26 == 2)
    {
      v46 = 2;
      sub_21CD12844();
      v29 = v38;
      sub_21CD840E4();
      v31 = v39;
      v30 = v40;
    }

    else
    {
      v47 = 3;
      sub_21CD127F0();
      v29 = v41;
      sub_21CD840E4();
      v31 = v42;
      v30 = v43;
    }

    goto LABEL_8;
  }

  if (v26)
  {
    v45 = 1;
    sub_21CD12898();
    v29 = v35;
    sub_21CD840E4();
    v31 = v36;
    v30 = v37;
LABEL_8:
    (*(v31 + 8))(v29, v30);
    return (*v28)(v25, v20);
  }

  v44 = 0;
  sub_21CD128EC();
  sub_21CD840E4();
  (*(v33 + 8))(v19, v34);
  return (*v28)(v25, v20);
}

unint64_t sub_21CD1279C()
{
  result = qword_27CE1A410;
  if (!qword_27CE1A410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A410);
  }

  return result;
}

unint64_t sub_21CD127F0()
{
  result = qword_27CE1A418;
  if (!qword_27CE1A418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A418);
  }

  return result;
}

unint64_t sub_21CD12844()
{
  result = qword_27CE1A420;
  if (!qword_27CE1A420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A420);
  }

  return result;
}

unint64_t sub_21CD12898()
{
  result = qword_27CE1A428;
  if (!qword_27CE1A428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A428);
  }

  return result;
}

unint64_t sub_21CD128EC()
{
  result = qword_27CE1A430;
  if (!qword_27CE1A430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A430);
  }

  return result;
}

uint64_t MobileDocumentProviderRegistrationSession.Status.hashValue.getter()
{
  v1 = *v0;
  sub_21CD84264();
  MEMORY[0x21CF17CC0](v1);
  return sub_21CD84294();
}

uint64_t MobileDocumentProviderRegistrationSession.Status.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v57 = a2;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A438, &qword_21CD8FCF8);
  v51 = *(v53 - 8);
  v3 = *(v51 + 64);
  MEMORY[0x28223BE20](v53, v4);
  v56 = &v46 - v5;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A440, &qword_21CD8FD00);
  v50 = *(v54 - 8);
  v6 = *(v50 + 64);
  MEMORY[0x28223BE20](v54, v7);
  v55 = &v46 - v8;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A448, &qword_21CD8FD08);
  v48 = *(v52 - 8);
  v9 = *(v48 + 64);
  MEMORY[0x28223BE20](v52, v10);
  v12 = &v46 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A450, &qword_21CD8FD10);
  v49 = *(v13 - 8);
  v14 = *(v49 + 64);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v46 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A458, &unk_21CD8FD18);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v46 - v22;
  v25 = a1[3];
  v24 = a1[4];
  v59 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v25);
  sub_21CD1279C();
  v26 = v58;
  sub_21CD842A4();
  if (!v26)
  {
    v27 = v17;
    v46 = v13;
    v47 = 0;
    v28 = v12;
    v29 = v55;
    v30 = v56;
    v58 = v19;
    v31 = v57;
    v32 = v23;
    v33 = sub_21CD840D4();
    v34 = (2 * *(v33 + 16)) | 1;
    v60 = v33;
    v61 = v33 + 32;
    v62 = 0;
    v63 = v34;
    v35 = sub_21CCD18D8();
    if (v35 == 4 || v62 != v63 >> 1)
    {
      v37 = sub_21CD83FA4();
      swift_allocError();
      v39 = v38;
      v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19268, &qword_21CD88F20) + 48);
      *v39 = &type metadata for MobileDocumentProviderRegistrationSession.Status;
      sub_21CD84044();
      sub_21CD83F94();
      (*(*(v37 - 8) + 104))(v39, *MEMORY[0x277D84160], v37);
      swift_willThrow();
LABEL_9:
      (*(v58 + 8))(v23, v18);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_0(v59);
    }

    v64 = v35;
    if (v35 <= 1u)
    {
      if (v35)
      {
        v65 = 1;
        sub_21CD12898();
        v44 = v47;
        sub_21CD84034();
        if (!v44)
        {
          (*(v48 + 8))(v28, v52);
          goto LABEL_17;
        }
      }

      else
      {
        v65 = 0;
        sub_21CD128EC();
        v36 = v47;
        sub_21CD84034();
        if (!v36)
        {
          (*(v49 + 8))(v27, v46);
LABEL_17:
          (*(v58 + 8))(v23, v18);
LABEL_22:
          swift_unknownObjectRelease();
          *v31 = v64;
          return __swift_destroy_boxed_opaque_existential_0(v59);
        }
      }

      goto LABEL_9;
    }

    v42 = v58;
    if (v35 == 2)
    {
      v65 = 2;
      sub_21CD12844();
      v43 = v47;
      sub_21CD84034();
      if (!v43)
      {
        (*(v50 + 8))(v29, v54);
LABEL_21:
        (*(v42 + 8))(v32, v18);
        goto LABEL_22;
      }
    }

    else
    {
      v65 = 3;
      sub_21CD127F0();
      v45 = v47;
      sub_21CD84034();
      if (!v45)
      {
        (*(v51 + 8))(v30, v53);
        goto LABEL_21;
      }
    }

    (*(v42 + 8))(v32, v18);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_0(v59);
}

unint64_t sub_21CD13044()
{
  result = qword_27CE1A460;
  if (!qword_27CE1A460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A460);
  }

  return result;
}

unint64_t sub_21CD130FC()
{
  result = qword_27CE1A468;
  if (!qword_27CE1A468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A468);
  }

  return result;
}

unint64_t sub_21CD13154()
{
  result = qword_27CE1A470;
  if (!qword_27CE1A470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A470);
  }

  return result;
}

unint64_t sub_21CD131AC()
{
  result = qword_27CE1A478;
  if (!qword_27CE1A478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A478);
  }

  return result;
}

unint64_t sub_21CD13204()
{
  result = qword_27CE1A480;
  if (!qword_27CE1A480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A480);
  }

  return result;
}

unint64_t sub_21CD1325C()
{
  result = qword_27CE1A488;
  if (!qword_27CE1A488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A488);
  }

  return result;
}

unint64_t sub_21CD132B4()
{
  result = qword_27CE1A490;
  if (!qword_27CE1A490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A490);
  }

  return result;
}

unint64_t sub_21CD1330C()
{
  result = qword_27CE1A498;
  if (!qword_27CE1A498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A498);
  }

  return result;
}

unint64_t sub_21CD13364()
{
  result = qword_27CE1A4A0;
  if (!qword_27CE1A4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A4A0);
  }

  return result;
}

unint64_t sub_21CD133BC()
{
  result = qword_27CE1A4A8;
  if (!qword_27CE1A4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A4A8);
  }

  return result;
}

unint64_t sub_21CD13414()
{
  result = qword_27CE1A4B0;
  if (!qword_27CE1A4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A4B0);
  }

  return result;
}

unint64_t sub_21CD1346C()
{
  result = qword_27CE1A4B8;
  if (!qword_27CE1A4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A4B8);
  }

  return result;
}

uint64_t sub_21CD134C0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7A69726F68747561 && a2 == 0xEA00000000006465;
  if (v4 || (sub_21CD841A4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7265746544746F6ELL && a2 == 0xED000064656E696DLL || (sub_21CD841A4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F68747541746F6ELL && a2 == 0xED000064657A6972 || (sub_21CD841A4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F70707553746F6ELL && a2 == 0xEC00000064657472)
  {

    return 3;
  }

  else
  {
    v6 = sub_21CD841A4();

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

void MobileDocumentProviderRegistrationValidator.validate(_:numberOfRegistrations:)(uint64_t *a1, uint64_t a2, char a3)
{
  v7 = (a1 + *(type metadata accessor for MobileDocumentRegistration() + 28));
  v8 = *v7;
  v9 = v7[1];
  sub_21CD136BC();
  if (!v3)
  {
    v10 = *a1;
    v11 = a1[1];
    sub_21CD13814();
    sub_21CD1396C(a1[2]);
    if ((a3 & 1) == 0)
    {
      sub_21CD13C18(a2);
    }
  }
}

uint64_t sub_21CD136BC()
{
  if (qword_280F77E40 != -1)
  {
    swift_once();
  }

  v0 = sub_21CD839F4();
  __swift_project_value_buffer(v0, qword_280F78E40);
  v1 = sub_21CD839D4();
  v2 = sub_21CD83E24();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_21CC90000, v1, v2, "MobileDocumentProviderRegistrationValidator validating document identifier length", v3, 2u);
    MEMORY[0x21CF18580](v3, -1, -1);
  }

  result = sub_21CD83B84();
  if ((result - 129) < 0xFFFFFFFFFFFFFF80)
  {
    sub_21CCB14E0();
    swift_allocError();
    *v5 = 17;
    *(v5 + 8) = 0xD000000000000022;
    *(v5 + 16) = 0x800000021CD9FD70;
    *(v5 + 24) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_21CD13814()
{
  if (qword_280F77E40 != -1)
  {
    swift_once();
  }

  v0 = sub_21CD839F4();
  __swift_project_value_buffer(v0, qword_280F78E40);
  v1 = sub_21CD839D4();
  v2 = sub_21CD83E24();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_21CC90000, v1, v2, "MobileDocumentProviderRegistrationValidator validating document type length", v3, 2u);
    MEMORY[0x21CF18580](v3, -1, -1);
  }

  result = sub_21CD83B84();
  if ((result - 129) < 0xFFFFFFFFFFFFFF80)
  {
    sub_21CCB14E0();
    swift_allocError();
    *v5 = 18;
    *(v5 + 8) = 0xD00000000000001FLL;
    *(v5 + 16) = 0x800000021CD9FD50;
    *(v5 + 24) = 0;
    return swift_willThrow();
  }

  return result;
}

void sub_21CD1396C(unint64_t a1)
{
  if (qword_280F77E40 != -1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v2 = sub_21CD839F4();
    __swift_project_value_buffer(v2, qword_280F78E40);
    v3 = sub_21CD839D4();
    v4 = sub_21CD83E24();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_21CC90000, v3, v4, "MobileDocumentProviderRegistrationValidator validating authority key identifiers, if provided", v5, 2u);
      MEMORY[0x21CF18580](v5, -1, -1);
    }

    v6 = *(a1 + 16);
    if (!v6)
    {
      break;
    }

    if (v6 > 0x64)
    {
      sub_21CCB14E0();
      swift_allocError();
      *v7 = 19;
      *(v7 + 8) = 0xD00000000000003BLL;
      *(v7 + 16) = 0x800000021CD9FD10;
      *(v7 + 24) = 0;
      swift_willThrow();
      return;
    }

    for (i = (a1 + 40); ; i += 2)
    {
      v12 = *(i - 1);
      a1 = *i;
      v13 = *i >> 62;
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          goto LABEL_20;
        }

        v16 = *(v12 + 16);
        v15 = *(v12 + 24);
        v14 = v15 - v16;
        if (__OFSUB__(v15, v16))
        {
          goto LABEL_24;
        }

        goto LABEL_19;
      }

      if (!v13)
      {
        if (BYTE6(a1) >= 0x41uLL)
        {
          goto LABEL_22;
        }

        goto LABEL_20;
      }

      if (__OFSUB__(HIDWORD(v12), v12))
      {
        break;
      }

      v14 = HIDWORD(v12) - v12;
LABEL_19:
      sub_21CCB18D4(*(i - 1), *i);
      if (v14 >= 65)
      {
LABEL_22:
        sub_21CCB14E0();
        swift_allocError();
        *v17 = 20;
        *(v17 + 8) = 0xD00000000000002DLL;
        *(v17 + 16) = 0x800000021CD9FCE0;
        *(v17 + 24) = 0;
        swift_willThrow();
        sub_21CCB1880(v12, a1);
        return;
      }

LABEL_20:
      sub_21CCB1880(v12, a1);
      if (!--v6)
      {
        return;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    swift_once();
  }

  v8 = sub_21CD839D4();
  v9 = sub_21CD83E24();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_21CC90000, v8, v9, "MobileDocumentProviderRegistrationValidator authority key identifiers are empty", v10, 2u);
    MEMORY[0x21CF18580](v10, -1, -1);
  }
}

void sub_21CD13C18(uint64_t a1)
{
  if (qword_280F77E40 != -1)
  {
    swift_once();
  }

  v2 = sub_21CD839F4();
  __swift_project_value_buffer(v2, qword_280F78E40);
  v3 = sub_21CD839D4();
  v4 = sub_21CD83E24();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_21CC90000, v3, v4, "MobileDocumentProviderRegistrationValidator validating registration limits", v5, 2u);
    MEMORY[0x21CF18580](v5, -1, -1);
  }

  v6 = sub_21CD839D4();
  v7 = sub_21CD83E24();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = a1;
    _os_log_impl(&dword_21CC90000, v6, v7, "MobileDocumentProviderRegistrationValidator application has %ld registrations", v8, 0xCu);
    MEMORY[0x21CF18580](v8, -1, -1);
  }

  if (a1 > 99)
  {
    sub_21CCB14E0();
    swift_allocError();
    *v9 = 21;
    *(v9 + 8) = 0xD00000000000004ELL;
    *(v9 + 16) = 0x800000021CD9FC90;
    *(v9 + 24) = 0;
    swift_willThrow();
  }
}

void _s7CoreIDV44XPCMobileDocumentProviderRegistrationRequestC6encode4withySo7NSCoderC_tF_0(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
  type metadata accessor for MobileDocumentProviderRegistrationRequest();
  sub_21CD19F10(&qword_27CE1A4E8, type metadata accessor for MobileDocumentProviderRegistrationRequest);
  sub_21CD83E54();
  [v2 finishEncoding];
  v3 = [v2 encodedData];
  if (v3)
  {
    v4 = v3;
    v5 = sub_21CD83B04();
    [a1 encodeObject:v4 forKey:v5];
  }

  else
  {
    __break(1u);
  }
}

void _s7CoreIDV42XPCMobileDocumentProviderUnregisterRequestC6encode4withySo7NSCoderC_tF_0(void *a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
  v7 = *(v1 + OBJC_IVAR____TtC7CoreIDV42XPCMobileDocumentProviderUnregisterRequest_value);
  v8 = *(v1 + OBJC_IVAR____TtC7CoreIDV42XPCMobileDocumentProviderUnregisterRequest_value + 8);
  sub_21CD170EC();

  sub_21CD83E54();

  [v3 finishEncoding];
  v4 = [v3 encodedData];
  if (v4)
  {
    v5 = v4;
    v6 = sub_21CD83B04();
    [a1 encodeObject:v5 forKey:v6];
  }

  else
  {
    __break(1u);
  }
}

void _s7CoreIDV39XPCMobileDocumentProviderStatusResponseC6encode4withySo7NSCoderC_tF_0(void *a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
  v7 = *(v1 + OBJC_IVAR____TtC7CoreIDV39XPCMobileDocumentProviderStatusResponse_value);
  sub_21CD172FC();
  sub_21CD83E54();
  [v3 finishEncoding];
  v4 = [v3 encodedData];
  if (v4)
  {
    v5 = v4;
    v6 = sub_21CD83B04();
    [a1 encodeObject:v5 forKey:v6];
  }

  else
  {
    __break(1u);
  }
}

void _s7CoreIDV35XPCMobileDocumentReaderSessionStateC6encode4withySo7NSCoderC_tF_0(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
  type metadata accessor for MobileDocumentReaderSession.State();
  sub_21CD19F10(&unk_27CE1AA10, type metadata accessor for MobileDocumentReaderSession.State);
  sub_21CD83E54();
  [v2 finishEncoding];
  v3 = [v2 encodedData];
  if (v3)
  {
    v4 = v3;
    v5 = sub_21CD83B04();
    [a1 encodeObject:v4 forKey:v5];
  }

  else
  {
    __break(1u);
  }
}

void _s7CoreIDV36XPCMobileDocumentReaderConfigurationC6encode4withySo7NSCoderC_tF_0(void *a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
  v7 = *(v1 + OBJC_IVAR____TtC7CoreIDV36XPCMobileDocumentReaderConfiguration_value);
  v8 = *(v1 + OBJC_IVAR____TtC7CoreIDV36XPCMobileDocumentReaderConfiguration_value + 8);
  v9 = *(v1 + OBJC_IVAR____TtC7CoreIDV36XPCMobileDocumentReaderConfiguration_value + 16);
  sub_21CD19E54();

  sub_21CD83E54();

  [v3 finishEncoding];
  v4 = [v3 encodedData];
  if (v4)
  {
    v5 = v4;
    v6 = sub_21CD83B04();
    [a1 encodeObject:v5 forKey:v6];
  }

  else
  {
    __break(1u);
  }
}

void _s7CoreIDV44XPCMobileDocumentReaderConfigurationResponseC6encode4withySo7NSCoderC_tF_0(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
  type metadata accessor for MobileDocumentReaderConfigurationResponse();
  sub_21CD19F10(&qword_27CE1A610, type metadata accessor for MobileDocumentReaderConfigurationResponse);
  sub_21CD83E54();
  [v2 finishEncoding];
  v3 = [v2 encodedData];
  if (v3)
  {
    v4 = v3;
    v5 = sub_21CD83B04();
    [a1 encodeObject:v4 forKey:v5];
  }

  else
  {
    __break(1u);
  }
}

void _s7CoreIDV31XPCMobileDocumentReaderMerchantC6encode4withySo7NSCoderC_tF_0(void *a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
  v8 = *(v1 + OBJC_IVAR____TtC7CoreIDV31XPCMobileDocumentReaderMerchant_value);
  v9 = *(v1 + OBJC_IVAR____TtC7CoreIDV31XPCMobileDocumentReaderMerchant_value + 8);
  v10 = *(v1 + OBJC_IVAR____TtC7CoreIDV31XPCMobileDocumentReaderMerchant_value + 16);
  v7 = *(v1 + OBJC_IVAR____TtC7CoreIDV31XPCMobileDocumentReaderMerchant_value + 24);
  v11 = *(v1 + OBJC_IVAR____TtC7CoreIDV31XPCMobileDocumentReaderMerchant_value + 40);

  sub_21CC96064(v10, v7);
  sub_21CD19D4C();

  sub_21CD83E54();

  sub_21CC95F8C(v10, v7);

  [v3 finishEncoding];
  v4 = [v3 encodedData];
  if (v4)
  {
    v5 = v4;
    v6 = sub_21CD83B04();
    [a1 encodeObject:v5 forKey:v6];
  }

  else
  {
    __break(1u);
  }
}

void _s7CoreIDV30XPCMobileDocumentReaderRequestC6encode4withySo7NSCoderC_tF_0(void *a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
  v4 = *(v1 + OBJC_IVAR____TtC7CoreIDV30XPCMobileDocumentReaderRequest_value + 24);
  v9 = *(v1 + OBJC_IVAR____TtC7CoreIDV30XPCMobileDocumentReaderRequest_value);
  v10 = *(v1 + OBJC_IVAR____TtC7CoreIDV30XPCMobileDocumentReaderRequest_value + 8);
  v11 = *(v1 + OBJC_IVAR____TtC7CoreIDV30XPCMobileDocumentReaderRequest_value + 16);
  v5 = *(v1 + OBJC_IVAR____TtC7CoreIDV30XPCMobileDocumentReaderRequest_value + 32);

  sub_21CD19BA8(v11, v4, v5);
  sub_21CD19BF8();
  sub_21CD83E54();

  sub_21CD19C4C(v11, v4, v5);
  [v3 finishEncoding];
  v6 = [v3 encodedData];
  if (v6)
  {
    v7 = v6;
    v8 = sub_21CD83B04();
    [a1 encodeObject:v7 forKey:v8];
  }

  else
  {
    __break(1u);
  }
}

void _s7CoreIDV43XPCMobileDocumentReaderDeviceEngagementTypeC6encode4withySo7NSCoderC_tF_0(void *a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
  v7 = *(v1 + OBJC_IVAR____TtC7CoreIDV43XPCMobileDocumentReaderDeviceEngagementType_value);
  v8 = *(v1 + OBJC_IVAR____TtC7CoreIDV43XPCMobileDocumentReaderDeviceEngagementType_value + 8);
  sub_21CC96064(v7, v8);
  sub_21CD19AEC();
  sub_21CD83E54();
  sub_21CC95F8C(v7, v8);
  [v3 finishEncoding];
  v4 = [v3 encodedData];
  if (v4)
  {
    v5 = v4;
    v6 = sub_21CD83B04();
    [a1 encodeObject:v5 forKey:v6];
  }

  else
  {
    __break(1u);
  }
}

void _s7CoreIDV31XPCMobileDocumentReaderResponseC6encode4withySo7NSCoderC_tF_0(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
  type metadata accessor for MobileDocumentReaderResponse(0);
  sub_21CD19F10(&unk_27CE1AA30, type metadata accessor for MobileDocumentReaderResponse);
  sub_21CD83E54();
  [v2 finishEncoding];
  v3 = [v2 encodedData];
  if (v3)
  {
    v4 = v3;
    v5 = sub_21CD83B04();
    [a1 encodeObject:v4 forKey:v5];
  }

  else
  {
    __break(1u);
  }
}

void _s7CoreIDV13XPCAuditTokenC6encode4withySo7NSCoderC_tF_0(void *a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
  v7 = *(v1 + OBJC_IVAR____TtC7CoreIDV13XPCAuditToken_value);
  v8 = *(v1 + OBJC_IVAR____TtC7CoreIDV13XPCAuditToken_value + 16);
  type metadata accessor for audit_token_t(0);
  sub_21CD19F10(&unk_27CE1AA40, type metadata accessor for audit_token_t);
  sub_21CD83E54();
  [v3 finishEncoding];
  v4 = [v3 encodedData];
  if (v4)
  {
    v5 = v4;
    v6 = sub_21CD83B04();
    [a1 encodeObject:v5 forKey:v6];
  }

  else
  {
    __break(1u);
  }
}

void _s7CoreIDV41XPCMobileDocumentReaderIdentityKeyRequestC6encode4withySo7NSCoderC_tF_0(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
  type metadata accessor for MobileDocumentReaderIdentityKeyRequest();
  sub_21CD19F10(&qword_27CE1A5A0, type metadata accessor for MobileDocumentReaderIdentityKeyRequest);
  sub_21CD83E54();
  [v2 finishEncoding];
  v3 = [v2 encodedData];
  if (v3)
  {
    v4 = v3;
    v5 = sub_21CD83B04();
    [a1 encodeObject:v4 forKey:v5];
  }

  else
  {
    __break(1u);
  }
}

void _s7CoreIDV41XPCMobileDocumentReaderCertificateRequestC6encode4withySo7NSCoderC_tF_0(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
  type metadata accessor for MobileDocumentReaderCertificateRequest();
  sub_21CD19F10(&unk_27CE1AA50, type metadata accessor for MobileDocumentReaderCertificateRequest);
  sub_21CD83E54();
  [v2 finishEncoding];
  v3 = [v2 encodedData];
  if (v3)
  {
    v4 = v3;
    v5 = sub_21CD83B04();
    [a1 encodeObject:v4 forKey:v5];
  }

  else
  {
    __break(1u);
  }
}

void _s7CoreIDV29XPCIdentityDocumentDescriptorC6encode4withySo7NSCoderC_tF_0(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
  type metadata accessor for IdentityDocumentDescriptor(0);
  sub_21CD19F10(&qword_27CE19290, type metadata accessor for IdentityDocumentDescriptor);
  sub_21CD83E54();
  [v2 finishEncoding];
  v3 = [v2 encodedData];
  if (v3)
  {
    v4 = v3;
    v5 = sub_21CD83B04();
    [a1 encodeObject:v4 forKey:v5];
  }

  else
  {
    __break(1u);
  }
}

void sub_21CD15418(void *a1, void *a2, void (*a3)(void))
{
  v7 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
  v11 = *(v3 + *a2);
  a3();

  sub_21CD83E54();

  [v7 finishEncoding];
  v8 = [v7 encodedData];
  if (v8)
  {
    v9 = v8;
    v10 = sub_21CD83B04();
    [a1 encodeObject:v9 forKey:v10];
  }

  else
  {
    __break(1u);
  }
}

id XPCMobileDocumentProviderRegistrationRequest.__allocating_init(value:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_21CD19F58(a1, v3 + OBJC_IVAR____TtC7CoreIDV44XPCMobileDocumentProviderRegistrationRequest_value, type metadata accessor for MobileDocumentProviderRegistrationRequest);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_21CD19FC0(a1, type metadata accessor for MobileDocumentProviderRegistrationRequest);
  return v4;
}

id XPCMobileDocumentProviderUnregisterRequest.__allocating_init(value:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = a1[1];
  v5 = &v3[OBJC_IVAR____TtC7CoreIDV42XPCMobileDocumentProviderUnregisterRequest_value];
  *v5 = *a1;
  *(v5 + 1) = v4;
  v7.receiver = v3;
  v7.super_class = v1;
  return objc_msgSendSuper2(&v7, sel_init);
}

id XPCMobileDocumentProviderRegistrationRequest.init(value:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  sub_21CD19F58(a1, v1 + OBJC_IVAR____TtC7CoreIDV44XPCMobileDocumentProviderRegistrationRequest_value, type metadata accessor for MobileDocumentProviderRegistrationRequest);
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_21CD19FC0(a1, type metadata accessor for MobileDocumentProviderRegistrationRequest);
  return v4;
}

id XPCMobileDocumentProviderRegistrationRequest.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  swift_getObjectType();
  v4 = sub_21CD16690(a1);
  v5 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
  v6 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
  swift_deallocPartialClassInstance();
  return v4;
}

id XPCMobileDocumentProviderRegistrationRequest.init(coder:)(void *a1)
{
  swift_getObjectType();
  v3 = sub_21CD16690(a1);
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x30);
  v5 = *((*MEMORY[0x277D85000] & *v1) + 0x34);
  swift_deallocPartialClassInstance();
  return v3;
}

id sub_21CD15A2C(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_21CD19F58(a1, v3 + OBJC_IVAR____TtC7CoreIDV44XPCMobileDocumentProviderRegistrationRequest_value, type metadata accessor for MobileDocumentProviderRegistrationRequest);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_21CD19FC0(a1, type metadata accessor for MobileDocumentProviderRegistrationRequest);
  return v4;
}

uint64_t XPCMobileDocumentProviderUnregisterRequest.value.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC7CoreIDV42XPCMobileDocumentProviderUnregisterRequest_value + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC7CoreIDV42XPCMobileDocumentProviderUnregisterRequest_value);
  a1[1] = v2;
}

id XPCMobileDocumentProviderUnregisterRequest.init(value:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = a1[1];
  v5 = &v1[OBJC_IVAR____TtC7CoreIDV42XPCMobileDocumentProviderUnregisterRequest_value];
  *v5 = *a1;
  *(v5 + 1) = v4;
  v7.receiver = v1;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t sub_21CD15C70@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC7CoreIDV42XPCMobileDocumentProviderUnregisterRequest_value + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC7CoreIDV42XPCMobileDocumentProviderUnregisterRequest_value);
  a1[1] = v2;
}

id sub_21CD15C88(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = a1[1];
  v5 = &v3[OBJC_IVAR____TtC7CoreIDV42XPCMobileDocumentProviderUnregisterRequest_value];
  *v5 = *a1;
  *(v5 + 1) = v4;
  v7.receiver = v3;
  v7.super_class = v1;
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t sub_21CD15D38(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = objc_allocWithZone(v2);
  swift_getObjectType();
  v6 = a2(a1);
  swift_deallocPartialClassInstance();
  return v6;
}

uint64_t sub_21CD15DE4(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void *))
{
  swift_getObjectType();
  v6 = a4(a3);
  swift_deallocPartialClassInstance();
  return v6;
}

id sub_21CD15FD8(void *a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[*a2] = *a1;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id sub_21CD16040(void *a1, void *a2)
{
  ObjectType = swift_getObjectType();
  *&v2[*a2] = *a1;
  v7.receiver = v2;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

id sub_21CD16248(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = objc_allocWithZone(v4);
  *&v7[*a4] = *a1;
  v9.receiver = v7;
  v9.super_class = v4;
  return objc_msgSendSuper2(&v9, sel_init);
}

id XPCMobileDocumentProviderStatusResponse.__allocating_init(value:)(_BYTE *a1)
{
  v3 = objc_allocWithZone(v1);
  v3[OBJC_IVAR____TtC7CoreIDV39XPCMobileDocumentProviderStatusResponse_value] = *a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id XPCMobileDocumentProviderStatusResponse.init(value:)(_BYTE *a1)
{
  ObjectType = swift_getObjectType();
  v1[OBJC_IVAR____TtC7CoreIDV39XPCMobileDocumentProviderStatusResponse_value] = *a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_21CD163A8(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  swift_getObjectType();
  v4 = a2(a1);
  swift_deallocPartialClassInstance();
  return v4;
}

id XPCMobileDocumentProviderStatusResponse.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id _s7CoreIDV13XPCAuditTokenCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_21CD16580(char *a1)
{
  v2 = *a1;
  v3 = objc_allocWithZone(v1);
  v3[OBJC_IVAR____TtC7CoreIDV39XPCMobileDocumentProviderStatusResponse_value] = v2;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id sub_21CD165D0()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v1 = sub_21CD836E4();
  v7[0] = 0;
  v2 = [v0 initForReadingFromData:v1 error:v7];

  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_21CD83644();

    swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

id sub_21CD16690(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE1A650, &qword_21CD904A8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v28 - v5;
  v7 = type metadata accessor for MobileDocumentProviderRegistrationRequest();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v28 - v15;
  sub_21CCC5FAC();
  v17 = sub_21CD83E84();
  if (v17)
  {
    v18 = v17;
    v19 = sub_21CD836F4();
    v21 = v20;

    v22 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
    sub_21CCB18D4(v19, v21);
    v23 = sub_21CD165D0();
    sub_21CCB1880(v19, v21);
    if (v23)
    {
      sub_21CD19F10(&qword_27CE1A4E0, type metadata accessor for MobileDocumentProviderRegistrationRequest);
      sub_21CD83E64();
      if ((*(v8 + 48))(v6, 1, v7) != 1)
      {
        sub_21CD1A020(v6, v16, type metadata accessor for MobileDocumentProviderRegistrationRequest);
        sub_21CD19F58(v16, v13, type metadata accessor for MobileDocumentProviderRegistrationRequest);
        v25 = type metadata accessor for XPCMobileDocumentProviderRegistrationRequest();
        v26 = objc_allocWithZone(v25);
        sub_21CD19F58(v13, v26 + OBJC_IVAR____TtC7CoreIDV44XPCMobileDocumentProviderRegistrationRequest_value, type metadata accessor for MobileDocumentProviderRegistrationRequest);
        v29.receiver = v26;
        v29.super_class = v25;
        v27 = objc_msgSendSuper2(&v29, sel_init);
        sub_21CD19FC0(v13, type metadata accessor for MobileDocumentProviderRegistrationRequest);
        sub_21CD19FC0(v16, type metadata accessor for MobileDocumentProviderRegistrationRequest);
        [v23 finishDecoding];

        sub_21CCB1880(v19, v21);
        return v27;
      }

      sub_21CCB1928(v6, &unk_27CE1A650, &qword_21CD904A8);
      [v23 finishDecoding];
    }

    sub_21CCB1880(v19, v21);
  }

  else
  {
  }

  return 0;
}

id sub_21CD169D4(void *a1)
{
  sub_21CCC5FAC();
  v2 = sub_21CD83E84();
  if (v2)
  {
    v3 = v2;
    v4 = sub_21CD836F4();
    v6 = v5;

    v7 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
    sub_21CCB18D4(v4, v6);
    v8 = sub_21CD165D0();
    sub_21CCB1880(v4, v6);
    if (v8)
    {
      sub_21CD17094();
      sub_21CD83E64();
      v10 = v17;
      if (v17)
      {
        v11 = type metadata accessor for XPCMobileDocumentProviderUnregisterRequest();
        v12 = objc_allocWithZone(v11);
        v13 = &v12[OBJC_IVAR____TtC7CoreIDV42XPCMobileDocumentProviderUnregisterRequest_value];
        *v13 = v16;
        *(v13 + 1) = v10;
        v15.receiver = v12;
        v15.super_class = v11;
        v14 = objc_msgSendSuper2(&v15, sel_init);
        [v8 finishDecoding];

        sub_21CCB1880(v4, v6);
        return v14;
      }

      [v8 finishDecoding];
    }

    sub_21CCB1880(v4, v6);
  }

  else
  {
  }

  return 0;
}

id sub_21CD16B6C(void *a1)
{
  sub_21CCC5FAC();
  v2 = sub_21CD83E84();
  if (v2)
  {
    v3 = v2;
    v4 = sub_21CD836F4();
    v6 = v5;

    v7 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
    sub_21CCB18D4(v4, v6);
    v8 = sub_21CD165D0();
    sub_21CCB1880(v4, v6);
    if (v8)
    {
      sub_21CD17144();
      sub_21CD83E64();
      if (v14)
      {
        RegistrationsResponse = type metadata accessor for XPCMobileDocumentProviderQueryRegistrationsResponse();
        v11 = objc_allocWithZone(RegistrationsResponse);
        *&v11[OBJC_IVAR____TtC7CoreIDV51XPCMobileDocumentProviderQueryRegistrationsResponse_value] = v14;
        v13.receiver = v11;
        v13.super_class = RegistrationsResponse;
        v12 = objc_msgSendSuper2(&v13, sel_init);
        [v8 finishDecoding];

        sub_21CCB1880(v4, v6);
        return v12;
      }

      [v8 finishDecoding];
    }

    sub_21CCB1880(v4, v6);
  }

  else
  {
  }

  return 0;
}

id sub_21CD16CF4(void *a1)
{
  sub_21CCC5FAC();
  v2 = sub_21CD83E84();
  if (v2)
  {
    v3 = v2;
    v4 = sub_21CD836F4();
    v6 = v5;

    v7 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
    sub_21CCB18D4(v4, v6);
    v8 = sub_21CD165D0();
    sub_21CCB1880(v4, v6);
    if (v8)
    {
      sub_21CD171F4();
      sub_21CD83E64();
      if (v14)
      {
        AllApplicationsResponse = type metadata accessor for XPCMobileDocumentProviderQueryAllApplicationsResponse();
        v11 = objc_allocWithZone(AllApplicationsResponse);
        *&v11[OBJC_IVAR____TtC7CoreIDV53XPCMobileDocumentProviderQueryAllApplicationsResponse_value] = v14;
        v13.receiver = v11;
        v13.super_class = AllApplicationsResponse;
        v12 = objc_msgSendSuper2(&v13, sel_init);
        [v8 finishDecoding];

        sub_21CCB1880(v4, v6);
        return v12;
      }

      [v8 finishDecoding];
    }

    sub_21CCB1880(v4, v6);
  }

  else
  {
  }

  return 0;
}

id sub_21CD16E7C(void *a1)
{
  sub_21CCC5FAC();
  v2 = sub_21CD83E84();
  if (v2)
  {
    v3 = v2;
    v4 = sub_21CD836F4();
    v6 = v5;

    v7 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
    sub_21CCB18D4(v4, v6);
    v8 = sub_21CD165D0();
    sub_21CCB1880(v4, v6);
    if (v8)
    {
      sub_21CD172A4();
      sub_21CD83E64();
      if (v14 != 4)
      {
        v10 = type metadata accessor for XPCMobileDocumentProviderStatusResponse();
        v11 = objc_allocWithZone(v10);
        v11[OBJC_IVAR____TtC7CoreIDV39XPCMobileDocumentProviderStatusResponse_value] = v14;
        v13.receiver = v11;
        v13.super_class = v10;
        v12 = objc_msgSendSuper2(&v13, sel_init);
        [v8 finishDecoding];

        sub_21CCB1880(v4, v6);
        return v12;
      }

      [v8 finishDecoding];
    }

    sub_21CCB1880(v4, v6);
  }

  else
  {
  }

  return 0;
}

unint64_t sub_21CD17094()
{
  result = qword_27CE1A4F0;
  if (!qword_27CE1A4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A4F0);
  }

  return result;
}

unint64_t sub_21CD170EC()
{
  result = qword_27CE1A4F8;
  if (!qword_27CE1A4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A4F8);
  }

  return result;
}

unint64_t sub_21CD17144()
{
  result = qword_27CE1A500;
  if (!qword_27CE1A500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A500);
  }

  return result;
}

unint64_t sub_21CD1719C()
{
  result = qword_27CE1A508;
  if (!qword_27CE1A508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A508);
  }

  return result;
}

unint64_t sub_21CD171F4()
{
  result = qword_27CE1A510;
  if (!qword_27CE1A510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A510);
  }

  return result;
}

unint64_t sub_21CD1724C()
{
  result = qword_27CE1A518;
  if (!qword_27CE1A518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A518);
  }

  return result;
}

unint64_t sub_21CD172A4()
{
  result = qword_27CE1A520;
  if (!qword_27CE1A520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A520);
  }

  return result;
}

unint64_t sub_21CD172FC()
{
  result = qword_27CE1A528;
  if (!qword_27CE1A528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A528);
  }

  return result;
}

uint64_t type metadata accessor for XPCMobileDocumentProviderRegistrationRequest()
{
  result = qword_27CE1A538;
  if (!qword_27CE1A538)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21CD173A4()
{
  result = type metadata accessor for MobileDocumentRegistration();
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

unint64_t sub_21CD175A0()
{
  result = qword_27CE1AA90;
  if (!qword_27CE1AA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AA90);
  }

  return result;
}

id sub_21CD175F4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A640, &qword_21CD904A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v28 - v5;
  v7 = type metadata accessor for MobileDocumentReaderSession.State();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v28 - v15;
  sub_21CCC5FAC();
  v17 = sub_21CD83E84();
  if (v17)
  {
    v18 = v17;
    v19 = sub_21CD836F4();
    v21 = v20;

    v22 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
    sub_21CCB18D4(v19, v21);
    v23 = sub_21CD165D0();
    sub_21CCB1880(v19, v21);
    if (v23)
    {
      sub_21CD19F10(&qword_27CE1A648, type metadata accessor for MobileDocumentReaderSession.State);
      sub_21CD83E64();
      if ((*(v8 + 48))(v6, 1, v7) != 1)
      {
        sub_21CD1A020(v6, v16, type metadata accessor for MobileDocumentReaderSession.State);
        sub_21CD19F58(v16, v13, type metadata accessor for MobileDocumentReaderSession.State);
        v25 = type metadata accessor for XPCMobileDocumentReaderSessionState(0);
        v26 = objc_allocWithZone(v25);
        sub_21CD19F58(v13, v26 + OBJC_IVAR____TtC7CoreIDV35XPCMobileDocumentReaderSessionState_value, type metadata accessor for MobileDocumentReaderSession.State);
        v29.receiver = v26;
        v29.super_class = v25;
        v27 = objc_msgSendSuper2(&v29, sel_init);
        sub_21CD19FC0(v13, type metadata accessor for MobileDocumentReaderSession.State);
        sub_21CD19FC0(v16, type metadata accessor for MobileDocumentReaderSession.State);
        [v23 finishDecoding];

        sub_21CCB1880(v19, v21);
        return v27;
      }

      sub_21CCB1928(v6, &qword_27CE1A640, &qword_21CD904A0);
      [v23 finishDecoding];
    }

    sub_21CCB1880(v19, v21);
  }

  else
  {
  }

  return 0;
}

id sub_21CD1793C(void *a1)
{
  sub_21CCC5FAC();
  v2 = sub_21CD83E84();
  if (v2)
  {
    v3 = v2;
    v4 = sub_21CD836F4();
    v6 = v5;

    v7 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
    sub_21CCB18D4(v4, v6);
    v8 = sub_21CD165D0();
    sub_21CCB1880(v4, v6);
    if (v8)
    {
      sub_21CD19EA8();
      sub_21CD83E64();
      v10 = v18;
      v11 = v19;
      if (v18 != 1)
      {
        v12 = type metadata accessor for XPCMobileDocumentReaderConfiguration();
        v13 = objc_allocWithZone(v12);
        v14 = &v13[OBJC_IVAR____TtC7CoreIDV36XPCMobileDocumentReaderConfiguration_value];
        *v14 = v17;
        *(v14 + 1) = v10;
        v14[16] = v11 & 1;
        v16.receiver = v13;
        v16.super_class = v12;
        v15 = objc_msgSendSuper2(&v16, sel_init);
        [v8 finishDecoding];

        sub_21CCB1880(v4, v6);
        return v15;
      }

      sub_21CD19EFC(v17, 1);
      [v8 finishDecoding];
    }

    sub_21CCB1880(v4, v6);
  }

  else
  {
  }

  return 0;
}

id sub_21CD17AF0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A618, &qword_21CD90498);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v28 - v5;
  v7 = type metadata accessor for MobileDocumentReaderConfigurationResponse();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v28 - v15;
  sub_21CCC5FAC();
  v17 = sub_21CD83E84();
  if (v17)
  {
    v18 = v17;
    v19 = sub_21CD836F4();
    v21 = v20;

    v22 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
    sub_21CCB18D4(v19, v21);
    v23 = sub_21CD165D0();
    sub_21CCB1880(v19, v21);
    if (v23)
    {
      sub_21CD19F10(&unk_27CE1A620, type metadata accessor for MobileDocumentReaderConfigurationResponse);
      sub_21CD83E64();
      if ((*(v8 + 48))(v6, 1, v7) != 1)
      {
        sub_21CD1A020(v6, v16, type metadata accessor for MobileDocumentReaderConfigurationResponse);
        sub_21CD19F58(v16, v13, type metadata accessor for MobileDocumentReaderConfigurationResponse);
        v25 = type metadata accessor for XPCMobileDocumentReaderConfigurationResponse(0);
        v26 = objc_allocWithZone(v25);
        sub_21CD19F58(v13, v26 + OBJC_IVAR____TtC7CoreIDV44XPCMobileDocumentReaderConfigurationResponse_value, type metadata accessor for MobileDocumentReaderConfigurationResponse);
        v29.receiver = v26;
        v29.super_class = v25;
        v27 = objc_msgSendSuper2(&v29, sel_init);
        sub_21CD19FC0(v13, type metadata accessor for MobileDocumentReaderConfigurationResponse);
        sub_21CD19FC0(v16, type metadata accessor for MobileDocumentReaderConfigurationResponse);
        [v23 finishDecoding];

        sub_21CCB1880(v19, v21);
        return v27;
      }

      sub_21CCB1928(v6, &qword_27CE1A618, &qword_21CD90498);
      [v23 finishDecoding];
    }

    sub_21CCB1880(v19, v21);
  }

  else
  {
  }

  return 0;
}

id sub_21CD17E38(void *a1)
{
  sub_21CCC5FAC();
  v2 = sub_21CD83E84();
  if (v2)
  {
    v3 = v2;
    v4 = sub_21CD836F4();
    v6 = v5;

    v7 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
    sub_21CCB18D4(v4, v6);
    v8 = sub_21CD165D0();
    sub_21CCB1880(v4, v6);
    if (v8)
    {
      sub_21CD19DA0();
      sub_21CD83E64();
      v10 = v21;
      v12 = v22;
      v11 = v23;
      v13 = v24;
      if (v21)
      {
        v18 = v25;
        v14 = type metadata accessor for XPCMobileDocumentReaderMerchant();
        v15 = objc_allocWithZone(v14);
        v16 = &v15[OBJC_IVAR____TtC7CoreIDV31XPCMobileDocumentReaderMerchant_value];
        *v16 = v20;
        *(v16 + 1) = v10;
        *(v16 + 2) = v12;
        *(v16 + 3) = v11;
        *(v16 + 4) = v13;
        *(v16 + 5) = v18;
        v19.receiver = v15;
        v19.super_class = v14;
        v17 = objc_msgSendSuper2(&v19, sel_init);
        [v8 finishDecoding];

        sub_21CCB1880(v4, v6);
        return v17;
      }

      sub_21CD19DF4(v20, 0, v22, v23);
      [v8 finishDecoding];
    }

    sub_21CCB1880(v4, v6);
  }

  else
  {
  }

  return 0;
}

id sub_21CD18004(void *a1)
{
  sub_21CCC5FAC();
  v2 = sub_21CD83E84();
  if (v2)
  {
    v3 = v2;
    v4 = sub_21CD836F4();
    v6 = v5;

    v7 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
    sub_21CCB18D4(v4, v6);
    v8 = sub_21CD165D0();
    sub_21CCB1880(v4, v6);
    if (v8)
    {
      sub_21CD19C9C();
      sub_21CD83E64();
      v10 = v20;
      v12 = v21;
      v11 = v22;
      v13 = v23;
      if (v20)
      {
        v14 = type metadata accessor for XPCMobileDocumentReaderRequest();
        v15 = objc_allocWithZone(v14);
        v16 = &v15[OBJC_IVAR____TtC7CoreIDV30XPCMobileDocumentReaderRequest_value];
        *v16 = v19;
        *(v16 + 1) = v10;
        *(v16 + 2) = v12;
        *(v16 + 3) = v11;
        v16[32] = v13;
        v18.receiver = v15;
        v18.super_class = v14;
        v17 = objc_msgSendSuper2(&v18, sel_init);
        [v8 finishDecoding];

        sub_21CCB1880(v4, v6);
        return v17;
      }

      sub_21CD19CF0(v19, 0, v21, v22, v23);
      [v8 finishDecoding];
    }

    sub_21CCB1880(v4, v6);
  }

  else
  {
  }

  return 0;
}

id sub_21CD181C8(void *a1)
{
  sub_21CCC5FAC();
  v2 = sub_21CD83E84();
  if (v2)
  {
    v3 = v2;
    v4 = sub_21CD836F4();
    v6 = v5;

    v7 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
    sub_21CCB18D4(v4, v6);
    v8 = sub_21CD165D0();
    sub_21CCB1880(v4, v6);
    if (v8)
    {
      sub_21CD19B40();
      sub_21CD83E64();
      v10 = v17;
      if (v17 >> 60 != 11)
      {
        v11 = type metadata accessor for XPCMobileDocumentReaderDeviceEngagementType();
        v12 = objc_allocWithZone(v11);
        v13 = &v12[OBJC_IVAR____TtC7CoreIDV43XPCMobileDocumentReaderDeviceEngagementType_value];
        *v13 = v16;
        *(v13 + 1) = v10;
        v15.receiver = v12;
        v15.super_class = v11;
        v14 = objc_msgSendSuper2(&v15, sel_init);
        [v8 finishDecoding];

        sub_21CCB1880(v4, v6);
        return v14;
      }

      sub_21CD19B94(v16, v17);
      [v8 finishDecoding];
    }

    sub_21CCB1880(v4, v6);
  }

  else
  {
  }

  return 0;
}

id sub_21CD18370(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A5D0, &qword_21CD90490);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v28 - v5;
  v7 = type metadata accessor for MobileDocumentReaderResponse(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v28 - v15;
  sub_21CCC5FAC();
  v17 = sub_21CD83E84();
  if (v17)
  {
    v18 = v17;
    v19 = sub_21CD836F4();
    v21 = v20;

    v22 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
    sub_21CCB18D4(v19, v21);
    v23 = sub_21CD165D0();
    sub_21CCB1880(v19, v21);
    if (v23)
    {
      sub_21CD19F10(&qword_27CE1A5D8, type metadata accessor for MobileDocumentReaderResponse);
      sub_21CD83E64();
      if ((*(v8 + 48))(v6, 1, v7) != 1)
      {
        sub_21CD1A020(v6, v16, type metadata accessor for MobileDocumentReaderResponse);
        sub_21CD19F58(v16, v13, type metadata accessor for MobileDocumentReaderResponse);
        v25 = type metadata accessor for XPCMobileDocumentReaderResponse(0);
        v26 = objc_allocWithZone(v25);
        sub_21CD19F58(v13, v26 + OBJC_IVAR____TtC7CoreIDV31XPCMobileDocumentReaderResponse_value, type metadata accessor for MobileDocumentReaderResponse);
        v29.receiver = v26;
        v29.super_class = v25;
        v27 = objc_msgSendSuper2(&v29, sel_init);
        sub_21CD19FC0(v13, type metadata accessor for MobileDocumentReaderResponse);
        sub_21CD19FC0(v16, type metadata accessor for MobileDocumentReaderResponse);
        [v23 finishDecoding];

        sub_21CCB1880(v19, v21);
        return v27;
      }

      sub_21CCB1928(v6, &qword_27CE1A5D0, &qword_21CD90490);
      [v23 finishDecoding];
    }

    sub_21CCB1880(v19, v21);
  }

  else
  {
  }

  return 0;
}

id sub_21CD186B8(void *a1)
{
  sub_21CCC5FAC();
  v2 = sub_21CD83E84();
  if (v2)
  {
    v3 = v2;
    v4 = sub_21CD836F4();
    v6 = v5;

    v7 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
    sub_21CCB18D4(v4, v6);
    v8 = sub_21CD165D0();
    sub_21CCB1880(v4, v6);
    if (v8)
    {
      type metadata accessor for audit_token_t(0);
      sub_21CD19F10(&unk_27CE1A5C0, type metadata accessor for audit_token_t);
      sub_21CD83E64();
      if ((v18 & 1) == 0)
      {
        v10 = type metadata accessor for XPCAuditToken();
        v14 = v17;
        v11 = objc_allocWithZone(v10);
        v12 = &v11[OBJC_IVAR____TtC7CoreIDV13XPCAuditToken_value];
        *v12 = v16;
        *(v12 + 1) = v14;
        v15.receiver = v11;
        v15.super_class = v10;
        v13 = objc_msgSendSuper2(&v15, sel_init);
        [v8 finishDecoding];

        sub_21CCB1880(v4, v6);
        return v13;
      }

      [v8 finishDecoding];
    }

    sub_21CCB1880(v4, v6);
  }

  else
  {
  }

  return 0;
}

id sub_21CD18888(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A5A8, &qword_21CD90488);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v28 - v5;
  v7 = type metadata accessor for MobileDocumentReaderIdentityKeyRequest();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v28 - v15;
  sub_21CCC5FAC();
  v17 = sub_21CD83E84();
  if (v17)
  {
    v18 = v17;
    v19 = sub_21CD836F4();
    v21 = v20;

    v22 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
    sub_21CCB18D4(v19, v21);
    v23 = sub_21CD165D0();
    sub_21CCB1880(v19, v21);
    if (v23)
    {
      sub_21CD19F10(&unk_27CE1A5B0, type metadata accessor for MobileDocumentReaderIdentityKeyRequest);
      sub_21CD83E64();
      if ((*(v8 + 48))(v6, 1, v7) != 1)
      {
        sub_21CD1A020(v6, v16, type metadata accessor for MobileDocumentReaderIdentityKeyRequest);
        sub_21CD19F58(v16, v13, type metadata accessor for MobileDocumentReaderIdentityKeyRequest);
        v25 = type metadata accessor for XPCMobileDocumentReaderIdentityKeyRequest(0);
        v26 = objc_allocWithZone(v25);
        sub_21CD19F58(v13, v26 + OBJC_IVAR____TtC7CoreIDV41XPCMobileDocumentReaderIdentityKeyRequest_value, type metadata accessor for MobileDocumentReaderIdentityKeyRequest);
        v29.receiver = v26;
        v29.super_class = v25;
        v27 = objc_msgSendSuper2(&v29, sel_init);
        sub_21CD19FC0(v13, type metadata accessor for MobileDocumentReaderIdentityKeyRequest);
        sub_21CD19FC0(v16, type metadata accessor for MobileDocumentReaderIdentityKeyRequest);
        [v23 finishDecoding];

        sub_21CCB1880(v19, v21);
        return v27;
      }

      sub_21CCB1928(v6, &qword_27CE1A5A8, &qword_21CD90488);
      [v23 finishDecoding];
    }

    sub_21CCB1880(v19, v21);
  }

  else
  {
  }

  return 0;
}

id sub_21CD18BD0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A590, &qword_21CD90480);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v28 - v5;
  v7 = type metadata accessor for MobileDocumentReaderCertificateRequest();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v28 - v15;
  sub_21CCC5FAC();
  v17 = sub_21CD83E84();
  if (v17)
  {
    v18 = v17;
    v19 = sub_21CD836F4();
    v21 = v20;

    v22 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
    sub_21CCB18D4(v19, v21);
    v23 = sub_21CD165D0();
    sub_21CCB1880(v19, v21);
    if (v23)
    {
      sub_21CD19F10(&qword_27CE1A598, type metadata accessor for MobileDocumentReaderCertificateRequest);
      sub_21CD83E64();
      if ((*(v8 + 48))(v6, 1, v7) != 1)
      {
        sub_21CD1A020(v6, v16, type metadata accessor for MobileDocumentReaderCertificateRequest);
        sub_21CD19F58(v16, v13, type metadata accessor for MobileDocumentReaderCertificateRequest);
        v25 = type metadata accessor for XPCMobileDocumentReaderCertificateRequest(0);
        v26 = objc_allocWithZone(v25);
        sub_21CD19F58(v13, v26 + OBJC_IVAR____TtC7CoreIDV41XPCMobileDocumentReaderCertificateRequest_value, type metadata accessor for MobileDocumentReaderCertificateRequest);
        v29.receiver = v26;
        v29.super_class = v25;
        v27 = objc_msgSendSuper2(&v29, sel_init);
        sub_21CD19FC0(v13, type metadata accessor for MobileDocumentReaderCertificateRequest);
        sub_21CD19FC0(v16, type metadata accessor for MobileDocumentReaderCertificateRequest);
        [v23 finishDecoding];

        sub_21CCB1880(v19, v21);
        return v27;
      }

      sub_21CCB1928(v6, &qword_27CE1A590, &qword_21CD90480);
      [v23 finishDecoding];
    }

    sub_21CCB1880(v19, v21);
  }

  else
  {
  }

  return 0;
}

id sub_21CD18F18(void *a1)
{
  sub_21CCC5FAC();
  v2 = sub_21CD83E84();
  if (v2)
  {
    v3 = v2;
    v4 = sub_21CD836F4();
    v6 = v5;

    v7 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
    sub_21CCB18D4(v4, v6);
    v8 = sub_21CD165D0();
    sub_21CCB1880(v4, v6);
    if (v8)
    {
      sub_21CD19A98();
      sub_21CD83E64();
      if (v14)
      {
        v10 = type metadata accessor for XPCMobileDocumentReaderIdentityKeyResponse();
        v11 = objc_allocWithZone(v10);
        *&v11[OBJC_IVAR____TtC7CoreIDV42XPCMobileDocumentReaderIdentityKeyResponse_value] = v14;
        v13.receiver = v11;
        v13.super_class = v10;
        v12 = objc_msgSendSuper2(&v13, sel_init);
        [v8 finishDecoding];

        sub_21CCB1880(v4, v6);
        return v12;
      }

      [v8 finishDecoding];
    }

    sub_21CCB1880(v4, v6);
  }

  else
  {
  }

  return 0;
}

id sub_21CD190A8(void *a1)
{
  sub_21CCC5FAC();
  v2 = sub_21CD83E84();
  if (v2)
  {
    v3 = v2;
    v4 = sub_21CD836F4();
    v6 = v5;

    v7 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
    sub_21CCB18D4(v4, v6);
    v8 = sub_21CD165D0();
    sub_21CCB1880(v4, v6);
    if (v8)
    {
      sub_21CD199F0();
      sub_21CD83E64();
      if (v14)
      {
        v10 = type metadata accessor for XPCMobileDocumentReaderCertificateResponse();
        v11 = objc_allocWithZone(v10);
        *&v11[OBJC_IVAR____TtC7CoreIDV42XPCMobileDocumentReaderCertificateResponse_value] = v14;
        v13.receiver = v11;
        v13.super_class = v10;
        v12 = objc_msgSendSuper2(&v13, sel_init);
        [v8 finishDecoding];

        sub_21CCB1880(v4, v6);
        return v12;
      }

      [v8 finishDecoding];
    }

    sub_21CCB1880(v4, v6);
  }

  else
  {
  }

  return 0;
}

id sub_21CD19238(void *a1)
{
  sub_21CCC5FAC();
  v2 = sub_21CD83E84();
  if (v2)
  {
    v3 = v2;
    v4 = sub_21CD836F4();
    v6 = v5;

    v7 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
    sub_21CCB18D4(v4, v6);
    v8 = sub_21CD165D0();
    sub_21CCB1880(v4, v6);
    if (v8)
    {
      sub_21CD19948();
      sub_21CD83E64();
      if (v14)
      {
        v10 = type metadata accessor for XPCMobileDocumentReaderIssuerRootCertificateList();
        v11 = objc_allocWithZone(v10);
        *&v11[OBJC_IVAR____TtC7CoreIDV48XPCMobileDocumentReaderIssuerRootCertificateList_value] = v14;
        v13.receiver = v11;
        v13.super_class = v10;
        v12 = objc_msgSendSuper2(&v13, sel_init);
        [v8 finishDecoding];

        sub_21CCB1880(v4, v6);
        return v12;
      }

      [v8 finishDecoding];
    }

    sub_21CCB1880(v4, v6);
  }

  else
  {
  }

  return 0;
}

id sub_21CD193C8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE191C0, &qword_21CD88EE0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v28 - v5;
  v7 = type metadata accessor for IdentityDocumentDescriptor(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v28 - v15;
  sub_21CCC5FAC();
  v17 = sub_21CD83E84();
  if (v17)
  {
    v18 = v17;
    v19 = sub_21CD836F4();
    v21 = v20;

    v22 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
    sub_21CCB18D4(v19, v21);
    v23 = sub_21CD165D0();
    sub_21CCB1880(v19, v21);
    if (v23)
    {
      sub_21CD19F10(&qword_27CE192B0, type metadata accessor for IdentityDocumentDescriptor);
      sub_21CD83E64();
      if ((*(v8 + 48))(v6, 1, v7) != 1)
      {
        sub_21CD1A020(v6, v16, type metadata accessor for IdentityDocumentDescriptor);
        sub_21CD19F58(v16, v13, type metadata accessor for IdentityDocumentDescriptor);
        v25 = type metadata accessor for XPCIdentityDocumentDescriptor(0);
        v26 = objc_allocWithZone(v25);
        sub_21CD19F58(v13, v26 + OBJC_IVAR____TtC7CoreIDV29XPCIdentityDocumentDescriptor_value, type metadata accessor for IdentityDocumentDescriptor);
        v29.receiver = v26;
        v29.super_class = v25;
        v27 = objc_msgSendSuper2(&v29, sel_init);
        sub_21CD19FC0(v13, type metadata accessor for IdentityDocumentDescriptor);
        sub_21CD19FC0(v16, type metadata accessor for IdentityDocumentDescriptor);
        [v23 finishDecoding];

        sub_21CCB1880(v19, v21);
        return v27;
      }

      sub_21CCB1928(v6, &qword_27CE191C0, &qword_21CD88EE0);
      [v23 finishDecoding];
    }

    sub_21CCB1880(v19, v21);
  }

  else
  {
  }

  return 0;
}

id sub_21CD19710(void *a1)
{
  sub_21CCC5FAC();
  v2 = sub_21CD83E84();
  if (v2)
  {
    v3 = v2;
    v4 = sub_21CD836F4();
    v6 = v5;

    v7 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
    sub_21CCB18D4(v4, v6);
    v8 = sub_21CD165D0();
    sub_21CCB1880(v4, v6);
    if (v8)
    {
      sub_21CD198A0();
      sub_21CD83E64();
      if (v14)
      {
        v10 = type metadata accessor for XPCIdentityDocumentCompoundDescriptor();
        v11 = objc_allocWithZone(v10);
        *&v11[OBJC_IVAR____TtC7CoreIDV37XPCIdentityDocumentCompoundDescriptor_value] = v14;
        v13.receiver = v11;
        v13.super_class = v10;
        v12 = objc_msgSendSuper2(&v13, sel_init);
        [v8 finishDecoding];

        sub_21CCB1880(v4, v6);
        return v12;
      }

      [v8 finishDecoding];
    }

    sub_21CCB1880(v4, v6);
  }

  else
  {
  }

  return 0;
}

unint64_t sub_21CD198A0()
{
  result = qword_27CE1A558;
  if (!qword_27CE1A558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A558);
  }

  return result;
}

unint64_t sub_21CD198F4()
{
  result = qword_27CE1AA80;
  if (!qword_27CE1AA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AA80);
  }

  return result;
}

unint64_t sub_21CD19948()
{
  result = qword_27CE1A560;
  if (!qword_27CE1A560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A560);
  }

  return result;
}

unint64_t sub_21CD1999C()
{
  result = qword_27CE1AA70;
  if (!qword_27CE1AA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AA70);
  }

  return result;
}

unint64_t sub_21CD199F0()
{
  result = qword_27CE1A570;
  if (!qword_27CE1A570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A570);
  }

  return result;
}

unint64_t sub_21CD19A44()
{
  result = qword_27CE1AA60;
  if (!qword_27CE1AA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AA60);
  }

  return result;
}

unint64_t sub_21CD19A98()
{
  result = qword_27CE1A580;
  if (!qword_27CE1A580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A580);
  }

  return result;
}

unint64_t sub_21CD19AEC()
{
  result = qword_27CE1A5E0;
  if (!qword_27CE1A5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A5E0);
  }

  return result;
}

unint64_t sub_21CD19B40()
{
  result = qword_27CE1A5E8;
  if (!qword_27CE1A5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A5E8);
  }

  return result;
}

uint64_t sub_21CD19B94(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 11)
  {
    return sub_21CC95F8C(a1, a2);
  }

  return a1;
}

uint64_t sub_21CD19BA8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 - 1 >= 2)
  {
    if (a3)
    {
      return result;
    }
  }
}

unint64_t sub_21CD19BF8()
{
  result = qword_27CE1A5F0;
  if (!qword_27CE1A5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A5F0);
  }

  return result;
}

uint64_t sub_21CD19C4C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 - 1 >= 2)
  {
    if (a3)
    {
      return result;
    }
  }
}

unint64_t sub_21CD19C9C()
{
  result = qword_27CE1A5F8;
  if (!qword_27CE1A5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A5F8);
  }

  return result;
}

void sub_21CD19CF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a2)
  {

    sub_21CD19C4C(a3, a4, a5);
  }
}

unint64_t sub_21CD19D4C()
{
  result = qword_27CE1A600;
  if (!qword_27CE1A600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A600);
  }

  return result;
}

unint64_t sub_21CD19DA0()
{
  result = qword_27CE1A608;
  if (!qword_27CE1A608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A608);
  }

  return result;
}

uint64_t sub_21CD19DF4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {

    sub_21CC95F8C(a3, a4);
  }

  return result;
}

unint64_t sub_21CD19E54()
{
  result = qword_27CE1AA20;
  if (!qword_27CE1AA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1AA20);
  }

  return result;
}

unint64_t sub_21CD19EA8()
{
  result = qword_27CE1A630;
  if (!qword_27CE1A630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A630);
  }

  return result;
}

uint64_t sub_21CD19EFC(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_21CD19F10(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21CD19F58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CD19FC0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21CD1A020(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CD1A0B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A670, &unk_21CD904F8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v21 - v10;
  v12 = type metadata accessor for SynchronousExtensionPointManager.State();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v17 + 48))(a1, 1) == 1)
  {
    sub_21CCB1928(a1, &qword_27CE1A670, &unk_21CD904F8);
    sub_21CD10F08(a2, a3, v11);

    return sub_21CCB1928(v11, &qword_27CE1A670, &unk_21CD904F8);
  }

  else
  {
    sub_21CD11F5C(a1, v16);
    v19 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    sub_21CD11A8C(v16, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v22;
  }

  return result;
}

uint64_t sub_21CD1A270(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_21CD839B4();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_21CD1A384, 0, 0);
}

uint64_t sub_21CD1A384()
{
  v14 = v0;
  v13[1] = *MEMORY[0x277D85DE8];
  if (qword_280F77E40 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = sub_21CD839F4();
  v0[12] = __swift_project_value_buffer(v2, qword_280F78E40);

  v3 = sub_21CD839D4();
  v4 = sub_21CD83E24();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[3];
    v5 = v0[4];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13[0] = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_21CCC02FC(v6, v5, v13);
    _os_log_impl(&dword_21CC90000, v3, v4, "SynchronousExtensionPointManager loading bundle identifier for %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x21CF18580](v8, -1, -1);
    MEMORY[0x21CF18580](v7, -1, -1);
  }

  v9 = swift_task_alloc();
  v0[13] = v9;
  *v9 = v0;
  v9[1] = sub_21CD1A570;
  v10 = v0[5];
  v11 = *MEMORY[0x277D85DE8];

  return sub_21CD1CCD8();
}

uint64_t sub_21CD1A570(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 104);
  v6 = *v1;
  *(*v1 + 112) = a1;

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_21CD1A69C, 0, 0);
}

uint64_t sub_21CD1A69C()
{
  v93 = v0;
  v92[1] = *MEMORY[0x277D85DE8];
  v1 = v0[14];
  v90 = *(v1 + 16);
  if (v90)
  {
    v2 = 0;
    v3 = v0[7];
    v85 = (v3 + 32);
    v88 = v3;
    v91 = (v3 + 8);
    v87 = MEMORY[0x277D84F90];
    v89 = v0[14];
    while (1)
    {
      if (v2 >= *(v1 + 16))
      {
        __break(1u);
      }

      v4 = (*(v88 + 80) + 32) & ~*(v88 + 80);
      v5 = *(v88 + 72);
      v6 = *(v88 + 16);
      v6(v0[11], v0[14] + v4 + v5 * v2, v0[6]);
      sub_21CD83954();
      v7 = objc_allocWithZone(MEMORY[0x277CC1E50]);
      v8 = sub_21CD83B04();

      v0[2] = 0;
      v9 = [v7 initWithBundleIdentifier:v8 error:v0 + 2];

      v10 = v0[2];
      if (v9)
      {
        v11 = v10;
        v12 = [v9 containingBundleRecord];

        if (v12)
        {
          v13 = [v12 bundleIdentifier];

          if (v13)
          {
            v15 = v0[3];
            v14 = v0[4];
            v16 = sub_21CD83B24();
            v18 = v17;

            if (v16 == v15 && v18 == v14)
            {

LABEL_16:
              v39 = *v85;
              (*v85)(v0[9], v0[11], v0[6]);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_21CCEA768(0, *(v87 + 16) + 1, 1);
              }

              v41 = *(v87 + 16);
              v40 = *(v87 + 24);
              v1 = v89;
              if (v41 >= v40 >> 1)
              {
                sub_21CCEA768(v40 > 1, v41 + 1, 1);
              }

              v42 = v0[9];
              v43 = v0[6];
              *(v87 + 16) = v41 + 1;
              v39(v87 + v4 + v41 * v5, v42, v43);
              goto LABEL_5;
            }

            v36 = v0[3];
            v37 = v0[4];
            v38 = sub_21CD841A4();

            if (v38)
            {
              goto LABEL_16;
            }
          }
        }
      }

      else
      {
        v20 = v0[11];
        v19 = v0[12];
        v21 = v0[10];
        v22 = v0[6];
        v23 = v10;
        v24 = sub_21CD83644();

        v86 = v24;
        swift_willThrow();
        v6(v21, v20, v22);
        v25 = sub_21CD839D4();
        v26 = sub_21CD83E24();
        v27 = os_log_type_enabled(v25, v26);
        v28 = v0[10];
        v29 = v0[6];
        if (v27)
        {
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          v92[0] = v31;
          *v30 = 136315138;
          v32 = sub_21CD83954();
          v34 = v33;
          (*v91)(v28, v29);
          v35 = sub_21CCC02FC(v32, v34, v92);

          *(v30 + 4) = v35;
          _os_log_impl(&dword_21CC90000, v25, v26, "SynchronousExtensionPointManager LSApplicationExtensionRecord could not be initialized for bundle identifier %s", v30, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v31);
          MEMORY[0x21CF18580](v31, -1, -1);
          MEMORY[0x21CF18580](v30, -1, -1);
        }

        else
        {

          (*v91)(v28, v29);
        }
      }

      (*v91)(v0[11], v0[6]);
      v1 = v89;
LABEL_5:
      if (v90 == ++v2)
      {
        v44 = v0[14];
        goto LABEL_23;
      }
    }
  }

  v87 = MEMORY[0x277D84F90];
LABEL_23:

  v45 = *(v87 + 16);
  if (v45)
  {
    if (v45 == 1)
    {
      v46 = v0[8];
      v47 = v0[5];
      v49 = v0[3];
      v48 = v0[4];
      (*(v0[7] + 16))(v46, v87 + ((*(v0[7] + 80) + 32) & ~*(v0[7] + 80)), v0[6]);

      v50 = *(v47 + 32);
      v51 = swift_task_alloc();
      v51[2] = v49;
      v51[3] = v48;
      v51[4] = v46;
      os_unfair_lock_lock(v50 + 6);
      sub_21CD1D670(&v50[4]);
      os_unfair_lock_unlock(v50 + 6);
      v53 = v0[7];
      v52 = v0[8];
      v54 = v0[6];

      (*(v53 + 8))(v52, v54);
      goto LABEL_33;
    }

    v67 = v0[12];
    v68 = v0[4];

    v69 = sub_21CD839D4();
    v70 = sub_21CD83E34();

    if (os_log_type_enabled(v69, v70))
    {
      v72 = v0[3];
      v71 = v0[4];
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v92[0] = v74;
      *v73 = 136315138;
      *(v73 + 4) = sub_21CCC02FC(v72, v71, v92);
      _os_log_impl(&dword_21CC90000, v69, v70, "SynchronousExtensionPointManager too many bundle identifier found for %s; marking as not present", v73, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v74);
      MEMORY[0x21CF18580](v74, -1, -1);
      MEMORY[0x21CF18580](v73, -1, -1);
    }

    v75 = v0[4];
    v76 = v0[3];
    v65 = *(v0[5] + 32);
    v77 = swift_task_alloc();
    *(v77 + 16) = v76;
    *(v77 + 24) = v75;
    os_unfair_lock_lock(v65 + 6);
    sub_21CD1D71C(&v65[4]);
  }

  else
  {
    v55 = v0[12];
    v56 = v0[4];

    v57 = sub_21CD839D4();
    v58 = sub_21CD83E34();

    if (os_log_type_enabled(v57, v58))
    {
      v60 = v0[3];
      v59 = v0[4];
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v92[0] = v62;
      *v61 = 136315138;
      *(v61 + 4) = sub_21CCC02FC(v60, v59, v92);
      _os_log_impl(&dword_21CC90000, v57, v58, "SynchronousExtensionPointManager bundle identifier not found for %s", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v62);
      MEMORY[0x21CF18580](v62, -1, -1);
      MEMORY[0x21CF18580](v61, -1, -1);
    }

    v63 = v0[4];
    v64 = v0[3];
    v65 = *(v0[5] + 32);
    v66 = swift_task_alloc();
    *(v66 + 16) = v64;
    *(v66 + 24) = v63;
    os_unfair_lock_lock(v65 + 6);
    sub_21CD1D690(&v65[4]);
  }

  os_unfair_lock_unlock(v65 + 6);

LABEL_33:
  v79 = v0[10];
  v78 = v0[11];
  v81 = v0[8];
  v80 = v0[9];

  v82 = v0[1];
  v83 = *MEMORY[0x277D85DE8];

  return v82();
}

void sub_21CD1AE90(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A670, &unk_21CD904F8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v48 - v9;
  v11 = type metadata accessor for SynchronousExtensionPointManager.State();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x28223BE20](v11, v14);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v50 = &v48 - v19;
  if (qword_280F77E40 != -1)
  {
    swift_once();
  }

  v53 = a1;
  v20 = sub_21CD839F4();
  v21 = __swift_project_value_buffer(v20, qword_280F78E40);

  v52 = v21;
  v22 = sub_21CD839D4();
  v23 = sub_21CD83E24();

  v24 = os_log_type_enabled(v22, v23);
  v49 = v17;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v48 = v11;
    v27 = v3;
    v28 = v26;
    v54 = v26;
    *v25 = 136315138;
    v29 = v53;
    *(v25 + 4) = sub_21CCC02FC(v53, a2, &v54);
    _os_log_impl(&dword_21CC90000, v22, v23, "SynchronousExtensionPointManager getting implementation state for bundle identifier %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    v30 = v28;
    v3 = v27;
    v11 = v48;
    MEMORY[0x21CF18580](v30, -1, -1);
    MEMORY[0x21CF18580](v25, -1, -1);
  }

  else
  {

    v29 = v53;
  }

  v33 = *(v3 + 32);
  MEMORY[0x28223BE20](v31, v32);
  *(&v48 - 2) = v29;
  *(&v48 - 1) = a2;
  os_unfair_lock_lock((v33 + 24));
  v34 = v51;
  sub_21CD1D654((v33 + 16), v10);
  if (v34)
  {
    os_unfair_lock_unlock((v33 + 24));
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock((v33 + 24));
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      sub_21CCB1928(v10, &qword_27CE1A670, &unk_21CD904F8);

      v35 = sub_21CD839D4();
      v36 = sub_21CD83E34();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v54 = v38;
        *v37 = 136315138;
        *(v37 + 4) = sub_21CCC02FC(v53, a2, &v54);
        __swift_destroy_boxed_opaque_existential_0(v38);
        MEMORY[0x21CF18580](v38, -1, -1);
        MEMORY[0x21CF18580](v37, -1, -1);
      }

      sub_21CCB14E0();
      swift_allocError();
      *v39 = 13;
      *(v39 + 8) = 0xD00000000000001ELL;
      *(v39 + 16) = 0x800000021CDA0090;
      *(v39 + 24) = 0;
      swift_willThrow();
    }

    else
    {
      v40 = v50;
      sub_21CD11F5C(v10, v50);
      v41 = v49;
      sub_21CD1D594(v40, v49);
      v42 = sub_21CD839B4();
      v43 = (*(*(v42 - 8) + 48))(v41, 1, v42);
      if (v43 != 1)
      {
        sub_21CD1D5F8(v41);
      }

      v44 = sub_21CD839D4();
      v45 = sub_21CD83E24();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v54 = v47;
        *v46 = 136315394;
        *(v46 + 4) = sub_21CCC02FC(v53, a2, &v54);
        *(v46 + 12) = 1024;
        *(v46 + 14) = v43 != 1;
        _os_log_impl(&dword_21CC90000, v44, v45, "SynchronousExtensionPointManager bundle identifier %s isImplemented: %{BOOL}d", v46, 0x12u);
        __swift_destroy_boxed_opaque_existential_0(v47);
        MEMORY[0x21CF18580](v47, -1, -1);
        MEMORY[0x21CF18580](v46, -1, -1);
      }

      sub_21CD1D5F8(v40);
    }
  }
}

void sub_21CD1B420(uint64_t a1, unint64_t a2)
{
  v5 = sub_21CD839B4();
  v45 = *(v5 - 8);
  v46 = v5;
  v6 = *(v45 + 64);
  MEMORY[0x28223BE20](v5, v7);
  v43 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A670, &unk_21CD904F8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v43 - v12;
  v14 = type metadata accessor for SynchronousExtensionPointManager.State();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v18 = MEMORY[0x28223BE20](v14, v17);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v43 - v22;
  v24 = *(v2 + 32);
  v44 = a1;
  v49 = a1;
  v50 = a2;
  v47 = a2;
  os_unfair_lock_lock((v24 + 24));
  v25 = v48;
  sub_21CD1D704((v24 + 16), v13);
  if (v25)
  {
    os_unfair_lock_unlock((v24 + 24));
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock((v24 + 24));
    if ((*(v15 + 48))(v13, 1, v14) == 1)
    {
      sub_21CCB1928(v13, &qword_27CE1A670, &unk_21CD904F8);
      if (qword_280F77E40 != -1)
      {
        swift_once();
      }

      v26 = sub_21CD839F4();
      __swift_project_value_buffer(v26, qword_280F78E40);
      v27 = v47;

      v28 = sub_21CD839D4();
      v29 = sub_21CD83E34();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v51 = v31;
        *v30 = 136315138;
        *(v30 + 4) = sub_21CCC02FC(v44, v27, &v51);
        __swift_destroy_boxed_opaque_existential_0(v31);
        MEMORY[0x21CF18580](v31, -1, -1);
        MEMORY[0x21CF18580](v30, -1, -1);
      }

      sub_21CCB14E0();
      swift_allocError();
      *v32 = 13;
      *(v32 + 8) = 0xD00000000000001ELL;
      *(v32 + 16) = 0x800000021CDA0090;
      *(v32 + 24) = 0;
      swift_willThrow();
    }

    else
    {
      v33 = v23;
      sub_21CD11F5C(v13, v23);
      sub_21CD1D594(v23, v20);
      v35 = v45;
      v34 = v46;
      if ((*(v45 + 48))(v20, 1, v46) == 1)
      {
        sub_21CD1D5F8(v20);
        if (qword_280F77E40 != -1)
        {
          swift_once();
        }

        v36 = sub_21CD839F4();
        __swift_project_value_buffer(v36, qword_280F78E40);
        v37 = v47;

        v38 = sub_21CD839D4();
        v39 = sub_21CD83E24();

        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          v51 = v41;
          *v40 = 136315138;
          *(v40 + 4) = sub_21CCC02FC(v44, v37, &v51);
          _os_log_impl(&dword_21CC90000, v38, v39, "SynchronousExtensionPointManager bundle identifier %s not implemented; defaulting enablement state to false", v40, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v41);
          MEMORY[0x21CF18580](v41, -1, -1);
          MEMORY[0x21CF18580](v40, -1, -1);
        }

        sub_21CD1D5F8(v33);
      }

      else
      {
        v42 = v43;
        (*(v35 + 32))(v43, v20, v34);
        sub_21CD83994();
        (*(v35 + 8))(v42, v34);
        sub_21CD1D5F8(v33);
      }
    }
  }
}

void sub_21CD1B980(uint64_t a1, unint64_t a2, int a3)
{
  v4 = v3;
  v61 = a3;
  v7 = sub_21CD839B4();
  v8 = *(v7 - 8);
  v63 = v7;
  v64 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v65 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A670, &unk_21CD904F8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v16 = &v60 - v15;
  v66 = type metadata accessor for SynchronousExtensionPointManager.State();
  v17 = *(v66 - 8);
  v18 = *(v17 + 64);
  v20 = MEMORY[0x28223BE20](v66, v19);
  v22 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v60 - v24;
  if (qword_280F77E40 != -1)
  {
    swift_once();
  }

  v69 = a1;
  v26 = sub_21CD839F4();
  v27 = __swift_project_value_buffer(v26, qword_280F78E40);

  v68 = v27;
  v28 = sub_21CD839D4();
  v29 = sub_21CD83E24();

  v30 = os_log_type_enabled(v28, v29);
  v62 = v25;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v60 = v22;
    v33 = v4;
    v34 = v32;
    v70 = v32;
    *v31 = 136315138;
    v35 = v69;
    *(v31 + 4) = sub_21CCC02FC(v69, a2, &v70);
    _os_log_impl(&dword_21CC90000, v28, v29, "SynchronousExtensionPointManager setting enablement state for bundle identifier %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v34);
    v36 = v34;
    v4 = v33;
    v22 = v60;
    MEMORY[0x21CF18580](v36, -1, -1);
    MEMORY[0x21CF18580](v31, -1, -1);
  }

  else
  {

    v35 = v69;
  }

  v39 = *(v4 + 32);
  MEMORY[0x28223BE20](v37, v38);
  *(&v60 - 2) = v35;
  *(&v60 - 1) = a2;
  os_unfair_lock_lock((v39 + 24));
  v40 = v67;
  sub_21CD1D704((v39 + 16), v16);
  if (v40)
  {
    os_unfair_lock_unlock((v39 + 24));
    __break(1u);
    return;
  }

  v41 = a2;
  os_unfair_lock_unlock((v39 + 24));
  if ((*(v17 + 48))(v16, 1, v66) != 1)
  {
    v47 = v62;
    sub_21CD11F5C(v16, v62);
    sub_21CD1D594(v47, v22);
    v49 = v63;
    v48 = v64;
    if ((*(v64 + 48))(v22, 1, v63) == 1)
    {
      sub_21CD1D5F8(v22);

      v50 = sub_21CD839D4();
      v51 = sub_21CD83E24();

      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v70 = v53;
        *v52 = 136315138;
        *(v52 + 4) = sub_21CCC02FC(v69, v41, &v70);
        _os_log_impl(&dword_21CC90000, v50, v51, "SynchronousExtensionPointManager bundle identifier %s not implemented; skipping setting enablement state", v52, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v53);
        MEMORY[0x21CF18580](v53, -1, -1);
        MEMORY[0x21CF18580](v52, -1, -1);
      }

      goto LABEL_21;
    }

    (*(v48 + 32))(v65, v22, v49);

    v54 = sub_21CD839D4();
    v55 = sub_21CD83E24();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v70 = v57;
      *v56 = 67109378;
      v58 = v61;
      *(v56 + 4) = v61 & 1;
      *(v56 + 8) = 2080;
      *(v56 + 10) = sub_21CCC02FC(v69, v41, &v70);
      _os_log_impl(&dword_21CC90000, v54, v55, "SynchronousExtensionPointManager settng extension setting to %{BOOL}d for %s", v56, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v57);
      MEMORY[0x21CF18580](v57, -1, -1);
      v59 = v56;
      v48 = v64;
      MEMORY[0x21CF18580](v59, -1, -1);

      if ((v58 & 1) == 0)
      {
LABEL_17:
        sub_21CD83984();
LABEL_20:
        (*(v48 + 8))(v65, v49);
LABEL_21:
        sub_21CD1D5F8(v47);
        return;
      }
    }

    else
    {

      if ((v61 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    sub_21CD83974();
    goto LABEL_20;
  }

  sub_21CCB1928(v16, &qword_27CE1A670, &unk_21CD904F8);

  v42 = sub_21CD839D4();
  v43 = sub_21CD83E34();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v70 = v45;
    *v44 = 136315138;
    *(v44 + 4) = sub_21CCC02FC(v69, v41, &v70);
    __swift_destroy_boxed_opaque_existential_0(v45);
    MEMORY[0x21CF18580](v45, -1, -1);
    MEMORY[0x21CF18580](v44, -1, -1);
  }

  sub_21CCB14E0();
  swift_allocError();
  *v46 = 13;
  *(v46 + 8) = 0xD00000000000001ELL;
  *(v46 + 16) = 0x800000021CDA0090;
  *(v46 + 24) = 0;
  swift_willThrow();
}

void sub_21CD1C1EC(uint64_t a1, unint64_t a2)
{
  v4 = sub_21CD839B4();
  v59 = *(v4 - 8);
  v5 = *(v59 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v56 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A670, &unk_21CD904F8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v56 - v11;
  v13 = type metadata accessor for SynchronousExtensionPointManager.State();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v17 = MEMORY[0x28223BE20](v13, v16);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v20);
  v58 = &v56 - v21;
  if (qword_280F77E40 != -1)
  {
    swift_once();
  }

  v22 = sub_21CD839F4();
  v23 = __swift_project_value_buffer(v22, qword_280F78E40);

  v60 = v23;
  v24 = sub_21CD839D4();
  v25 = sub_21CD83E24();

  v26 = os_log_type_enabled(v24, v25);
  v63 = a1;
  v57 = v4;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v64 = v28;
    *v27 = 136315138;
    *(v27 + 4) = sub_21CCC02FC(v63, a2, &v64);
    _os_log_impl(&dword_21CC90000, v24, v25, "SynchronousExtensionPointManager getting application identifier for bundle identifier %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    v29 = v28;
    a1 = v63;
    MEMORY[0x21CF18580](v29, -1, -1);
    MEMORY[0x21CF18580](v27, -1, -1);
  }

  v30 = *(v61 + 32);
  MEMORY[0x28223BE20](v31, v32);
  *(&v56 - 2) = a1;
  *(&v56 - 1) = a2;
  os_unfair_lock_lock((v30 + 24));
  v33 = v62;
  sub_21CD1D704((v30 + 16), v12);
  if (v33)
  {
    os_unfair_lock_unlock((v30 + 24));
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock((v30 + 24));
    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {
      sub_21CCB1928(v12, &qword_27CE1A670, &unk_21CD904F8);

      v34 = sub_21CD839D4();
      v35 = sub_21CD83E34();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v64 = v37;
        *v36 = 136315138;
        *(v36 + 4) = sub_21CCC02FC(v63, a2, &v64);
        __swift_destroy_boxed_opaque_existential_0(v37);
        MEMORY[0x21CF18580](v37, -1, -1);
        MEMORY[0x21CF18580](v36, -1, -1);
      }

      sub_21CCB14E0();
      swift_allocError();
      *v38 = 13;
      *(v38 + 8) = 0xD00000000000001ELL;
      *(v38 + 16) = 0x800000021CDA0090;
      *(v38 + 24) = 0;
      swift_willThrow();
    }

    else
    {
      v39 = v58;
      sub_21CD11F5C(v12, v58);
      sub_21CD1D594(v39, v19);
      v40 = v59;
      v41 = v57;
      if ((*(v59 + 48))(v19, 1, v57) == 1)
      {
        sub_21CD1D5F8(v19);

        v42 = sub_21CD839D4();
        v43 = sub_21CD83E34();

        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          v64 = v45;
          *v44 = 136315138;
          *(v44 + 4) = sub_21CCC02FC(v63, a2, &v64);
          _os_log_impl(&dword_21CC90000, v42, v43, "SynchronousExtensionPointManager bundle identifier %s not implemented; failed to get application identifier", v44, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v45);
          MEMORY[0x21CF18580](v45, -1, -1);
          MEMORY[0x21CF18580](v44, -1, -1);
        }

        sub_21CCB14E0();
        swift_allocError();
        *v46 = 10;
        *(v46 + 8) = 0xD000000000000020;
        *(v46 + 16) = 0x800000021CDA00B0;
        *(v46 + 24) = 0;
        swift_willThrow();
      }

      else
      {
        (*(v40 + 32))(v56, v19, v41);
        v47 = sub_21CD83964();
        if (v47)
        {
          v48 = v47;
          v49 = [v47 applicationIdentifier];

          if (v49)
          {
            sub_21CD83B24();

            (*(v40 + 8))(v56, v41);
            sub_21CD1D5F8(v39);
            return;
          }
        }

        v50 = sub_21CD839D4();
        v51 = sub_21CD83E34();

        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          v64 = v53;
          *v52 = 136315138;
          *(v52 + 4) = sub_21CCC02FC(v63, a2, &v64);
          _os_log_impl(&dword_21CC90000, v50, v51, "SynchronousExtensionPointManager missing application bundle for %s; failed to get application identifier", v52, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v53);
          v54 = v53;
          v40 = v59;
          MEMORY[0x21CF18580](v54, -1, -1);
          MEMORY[0x21CF18580](v52, -1, -1);
        }

        sub_21CCB14E0();
        swift_allocError();
        *v55 = 14;
        *(v55 + 8) = 0xD00000000000002CLL;
        *(v55 + 16) = 0x800000021CDA00E0;
        *(v55 + 24) = 0;
        swift_willThrow();
        (*(v40 + 8))(v56, v41);
      }

      sub_21CD1D5F8(v39);
    }
  }
}

uint64_t sub_21CD1C9C4(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = sub_21CD83924();
  v4 = sub_21CD1D6AC();
  v5 = *(MEMORY[0x277D856D0] + 4);
  v6 = swift_task_alloc();
  v2[6] = v6;
  *v6 = v2;
  v6[1] = sub_21CD1CA84;

  return MEMORY[0x282200308](v2 + 2, v3, v4);
}

uint64_t sub_21CD1CA84()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 32);
  v15 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    if (v4)
    {
      v5 = *(v2 + 32);
      v6 = *(v2 + 40);
      swift_getObjectType();
      v7 = sub_21CD83CD4();
      v9 = v8;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v10 = sub_21CD1CC30;
  }

  else
  {
    if (v4)
    {
      v11 = *(v2 + 32);
      v12 = *(v2 + 40);
      swift_getObjectType();
      v7 = sub_21CD83CD4();
      v9 = v13;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v10 = sub_21CD1CC14;
  }

  return MEMORY[0x2822009F8](v10, v7, v9);
}

uint64_t sub_21CD1CC30()
{
  v0[3] = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE191A0, &qword_21CD88650);
  swift_dynamicCast();
  swift_willThrowTypedImpl();
  v1 = v0[1];

  return v1();
}

uint64_t sub_21CD1CCD8()
{
  v1[2] = v0;
  v2 = sub_21CD83944();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = sub_21CD83924();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21CD1CDF4, 0, 0);
}

uint64_t sub_21CD1CDF4()
{
  v1 = v0[5];
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A278, &unk_21CD91B70);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_21CD884B0;
  v4 = *(v2 + 24);
  *(v3 + 32) = *(v2 + 16);
  *(v3 + 40) = v4;

  sub_21CD839A4();

  v5 = v0[8];
  v7 = v0[4];
  v6 = v0[5];
  v8 = v0[3];
  sub_21CD83934();
  (*(v7 + 8))(v6, v8);
  v9 = swift_task_alloc();
  v0[9] = v9;
  *v9 = v0;
  v9[1] = sub_21CD0420C;
  v10 = v0[8];

  return sub_21CD1C9C4(0, 0);
}

uint64_t sub_21CD1D0B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A670, &unk_21CD904F8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v13 - v8;
  v10 = sub_21CD839B4();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = type metadata accessor for SynchronousExtensionPointManager.State();
  (*(*(v11 - 8) + 56))(v9, 0, 1, v11);

  return sub_21CD1A0B0(v9, a2, a3);
}

uint64_t sub_21CD1D1DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A670, &unk_21CD904F8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v16 - v10;
  v12 = sub_21CD839B4();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v11, a4, v12);
  (*(v13 + 56))(v11, 0, 1, v12);
  v14 = type metadata accessor for SynchronousExtensionPointManager.State();
  (*(*(v14 - 8) + 56))(v11, 0, 1, v14);

  return sub_21CD1A0B0(v11, a2, a3);
}

uint64_t sub_21CD1D348@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a1;
  if (*(*a1 + 16) && (v6 = sub_21CCA996C(a2, a3), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(v5 + 56);
    v10 = type metadata accessor for SynchronousExtensionPointManager.State();
    v11 = *(v10 - 8);
    sub_21CD1D594(v9 + *(v11 + 72) * v8, a4);
    return (*(v11 + 56))(a4, 0, 1, v10);
  }

  else
  {
    v13 = type metadata accessor for SynchronousExtensionPointManager.State();
    return (*(*(v13 - 8) + 56))(a4, 1, 1, v13);
  }
}

uint64_t sub_21CD1D464()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SynchronousExtensionPointManager.State()
{
  result = qword_27CE1A660;
  if (!qword_27CE1A660)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21CD1D53C()
{
  v0 = sub_21CD839B4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_21CD1D594(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SynchronousExtensionPointManager.State();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CD1D5F8(uint64_t a1)
{
  v2 = type metadata accessor for SynchronousExtensionPointManager.State();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21CD1D6AC()
{
  result = qword_27CE1A678;
  if (!qword_27CE1A678)
  {
    sub_21CD83924();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A678);
  }

  return result;
}

uint64_t MobileDocumentReaderCertificateRequest.sessionIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MobileDocumentReaderCertificateRequest.applicationIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t MobileDocumentReaderCertificateRequest.installationIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MobileDocumentReaderCertificateRequest() + 24);

  return sub_21CD1D824(v3, a1);
}

uint64_t type metadata accessor for MobileDocumentReaderCertificateRequest()
{
  result = qword_27CE1A6B8;
  if (!qword_27CE1A6B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21CD1D824(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A680, &qword_21CD90530);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MobileDocumentReaderCertificateRequest.keyBlob.getter()
{
  v1 = v0 + *(type metadata accessor for MobileDocumentReaderCertificateRequest() + 28);
  v2 = *v1;
  sub_21CC96064(*v1, *(v1 + 8));
  return v2;
}

uint64_t MobileDocumentReaderCertificateRequest.init(sessionIdentifier:applicationIdentifier:installationIdentifier:keyBlob:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = a1;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  v12 = type metadata accessor for MobileDocumentReaderCertificateRequest();
  result = sub_21CD1D944(a5, a8 + *(v12 + 24));
  v14 = (a8 + *(v12 + 28));
  *v14 = a6;
  v14[1] = a7;
  return result;
}

uint64_t sub_21CD1D944(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A680, &qword_21CD90530);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21CD1D9B8()
{
  v1 = 0x626F6C4279656BLL;
  if (*v0 == 2)
  {
    v1 = 0xD000000000000016;
  }

  v2 = 0xD000000000000011;
  if (*v0)
  {
    v2 = 0xD000000000000015;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_21CD1DA40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21CD1F130(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21CD1DA68(uint64_t a1)
{
  v2 = sub_21CD1ED2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD1DAA4(uint64_t a1)
{
  v2 = sub_21CD1ED2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MobileDocumentReaderCertificateRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A688, &qword_21CD90538);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v21[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD1ED2C();
  sub_21CD842B4();
  v12 = *v3;
  v13 = v3[1];
  LOBYTE(v22) = 0;
  sub_21CD84134();
  if (!v2)
  {
    v15 = v3[2];
    v16 = v3[3];
    LOBYTE(v22) = 1;
    sub_21CD840F4();
    v17 = type metadata accessor for MobileDocumentReaderCertificateRequest();
    v18 = *(v17 + 24);
    LOBYTE(v22) = 2;
    sub_21CD83794();
    sub_21CD1F2A0(&qword_27CE1A698, MEMORY[0x277CC95F0]);
    sub_21CD84124();
    v19 = (v3 + *(v17 + 28));
    v20 = v19[1];
    v22 = *v19;
    v23 = v20;
    v21[15] = 3;
    sub_21CC96064(v22, v20);
    sub_21CCFFDB0();
    sub_21CD84124();
    sub_21CC95F8C(v22, v23);
  }

  return (*(v6 + 8))(v10, v5);
}

uint64_t MobileDocumentReaderCertificateRequest.hash(into:)()
{
  v1 = sub_21CD83794();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A680, &qword_21CD90530);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v19 - v10;
  v12 = *v0;
  v13 = v0[1];
  sub_21CD83B74();
  if (v0[3])
  {
    v14 = v0[2];
    sub_21CD84284();
    sub_21CD83B74();
  }

  else
  {
    sub_21CD84284();
  }

  v15 = type metadata accessor for MobileDocumentReaderCertificateRequest();
  sub_21CD1D824(v0 + *(v15 + 24), v11);
  if ((*(v2 + 48))(v11, 1, v1) == 1)
  {
    sub_21CD84284();
  }

  else
  {
    (*(v2 + 32))(v6, v11, v1);
    sub_21CD84284();
    sub_21CD1F2A0(&qword_27CE19348, MEMORY[0x277CC95F0]);
    sub_21CD83A64();
    (*(v2 + 8))(v6, v1);
  }

  v16 = (v0 + *(v15 + 28));
  if (v16[1] >> 60 == 15)
  {
    return sub_21CD84284();
  }

  v18 = *v16;
  sub_21CD84284();
  return sub_21CD83704();
}

uint64_t MobileDocumentReaderCertificateRequest.hashValue.getter()
{
  v1 = sub_21CD83794();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A680, &qword_21CD90530);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v19 - v10;
  sub_21CD84264();
  v12 = *v0;
  v13 = v0[1];
  sub_21CD83B74();
  if (v0[3])
  {
    v14 = v0[2];
    sub_21CD84284();
    sub_21CD83B74();
  }

  else
  {
    sub_21CD84284();
  }

  v15 = type metadata accessor for MobileDocumentReaderCertificateRequest();
  sub_21CD1D824(v0 + *(v15 + 24), v11);
  if ((*(v2 + 48))(v11, 1, v1) == 1)
  {
    sub_21CD84284();
  }

  else
  {
    (*(v2 + 32))(v6, v11, v1);
    sub_21CD84284();
    sub_21CD1F2A0(&qword_27CE19348, MEMORY[0x277CC95F0]);
    sub_21CD83A64();
    (*(v2 + 8))(v6, v1);
  }

  v16 = (v0 + *(v15 + 28));
  if (v16[1] >> 60 == 15)
  {
    sub_21CD84284();
  }

  else
  {
    v17 = *v16;
    sub_21CD84284();
    sub_21CD83704();
  }

  return sub_21CD84294();
}

uint64_t MobileDocumentReaderCertificateRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A680, &qword_21CD90530);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A6A0, &qword_21CD90540);
  v28 = *(v9 - 8);
  v29 = v9;
  v10 = *(v28 + 64);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v26 - v12;
  v14 = type metadata accessor for MobileDocumentReaderCertificateRequest();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14, v16);
  v18 = (v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD1ED2C();
  sub_21CD842A4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v20 = a1;
  v21 = v28;
  v22 = v29;
  LOBYTE(v30) = 0;
  *v18 = sub_21CD84094();
  v18[1] = v23;
  v26[2] = v23;
  LOBYTE(v30) = 1;
  v18[2] = sub_21CD84054();
  v18[3] = v24;
  sub_21CD83794();
  LOBYTE(v30) = 2;
  sub_21CD1F2A0(&qword_27CE1A6A8, MEMORY[0x277CC95F0]);
  v26[1] = 0;
  sub_21CD84084();
  sub_21CD1D944(v8, v18 + *(v14 + 24));
  v31 = 3;
  sub_21CCFFE7C();
  sub_21CD84084();
  (*(v21 + 8))(v13, v22);
  *(v18 + *(v14 + 28)) = v30;
  sub_21CD1ED80(v18, v27);
  __swift_destroy_boxed_opaque_existential_0(v20);
  return sub_21CD1EDE4(v18);
}

uint64_t sub_21CD1E654(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CD83794();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A680, &qword_21CD90530);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v21 - v13;
  sub_21CD84264();
  v15 = *v2;
  v16 = v2[1];
  sub_21CD83B74();
  if (v2[3])
  {
    v17 = v2[2];
    sub_21CD84284();
    sub_21CD83B74();
  }

  else
  {
    sub_21CD84284();
  }

  sub_21CD1D824(v2 + *(a2 + 24), v14);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    sub_21CD84284();
  }

  else
  {
    (*(v5 + 32))(v9, v14, v4);
    sub_21CD84284();
    sub_21CD1F2A0(&qword_27CE19348, MEMORY[0x277CC95F0]);
    sub_21CD83A64();
    (*(v5 + 8))(v9, v4);
  }

  v18 = (v2 + *(a2 + 28));
  if (v18[1] >> 60 == 15)
  {
    sub_21CD84284();
  }

  else
  {
    v19 = *v18;
    sub_21CD84284();
    sub_21CD83704();
  }

  return sub_21CD84294();
}

BOOL _s7CoreIDV38MobileDocumentReaderCertificateRequestV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_21CD83794();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A680, &qword_21CD90530);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v36 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A6E8, &unk_21CD90760);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v36 - v18;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_21CD841A4() & 1) == 0)
  {
    return 0;
  }

  v20 = a1[3];
  v21 = a2[3];
  if (v20)
  {
    if (!v21 || (a1[2] != a2[2] || v20 != v21) && (sub_21CD841A4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v21)
  {
    return 0;
  }

  v37 = type metadata accessor for MobileDocumentReaderCertificateRequest();
  v22 = *(v37 + 24);
  v23 = *(v15 + 48);
  sub_21CD1D824(a1 + v22, v19);
  sub_21CD1D824(a2 + v22, &v19[v23]);
  v24 = *(v5 + 48);
  if (v24(v19, 1, v4) == 1)
  {
    if (v24(&v19[v23], 1, v4) == 1)
    {
      sub_21CCB1928(v19, &qword_27CE1A680, &qword_21CD90530);
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  sub_21CD1D824(v19, v14);
  if (v24(&v19[v23], 1, v4) == 1)
  {
    (*(v5 + 8))(v14, v4);
LABEL_16:
    sub_21CCB1928(v19, &qword_27CE1A6E8, &unk_21CD90760);
    return 0;
  }

  (*(v5 + 32))(v9, &v19[v23], v4);
  sub_21CD1F2A0(&qword_27CE1A6F0, MEMORY[0x277CC95F0]);
  v25 = sub_21CD83A84();
  v26 = *(v5 + 8);
  v26(v9, v4);
  v26(v14, v4);
  sub_21CCB1928(v19, &qword_27CE1A680, &qword_21CD90530);
  if ((v25 & 1) == 0)
  {
    return 0;
  }

LABEL_18:
  v27 = *(v37 + 28);
  v28 = a1 + v27;
  v30 = *(a1 + v27);
  v29 = *(v28 + 1);
  v31 = (a2 + v27);
  v33 = *v31;
  v32 = v31[1];
  if (v29 >> 60 == 15)
  {
    if (v32 >> 60 == 15)
    {
      sub_21CC96064(v30, *(v28 + 1));
      sub_21CC96064(v33, v32);
      sub_21CC95F8C(v30, v29);
      return 1;
    }

    goto LABEL_22;
  }

  if (v32 >> 60 == 15)
  {
LABEL_22:
    sub_21CC96064(v30, *(v28 + 1));
    sub_21CC96064(v33, v32);
    sub_21CC95F8C(v30, v29);
    sub_21CC95F8C(v33, v32);
    return 0;
  }

  sub_21CC96064(v30, *(v28 + 1));
  sub_21CC96064(v33, v32);
  v35 = sub_21CD23300(v30, v29, v33, v32);
  sub_21CC95F8C(v33, v32);
  sub_21CC95F8C(v30, v29);
  return (v35 & 1) != 0;
}

unint64_t sub_21CD1ED2C()
{
  result = qword_27CE1A690;
  if (!qword_27CE1A690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A690);
  }

  return result;
}

uint64_t sub_21CD1ED80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDocumentReaderCertificateRequest();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CD1EDE4(uint64_t a1)
{
  v2 = type metadata accessor for MobileDocumentReaderCertificateRequest();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_21CD1EEB0()
{
  sub_21CD1EFCC(319, &qword_280F77E38);
  if (v0 <= 0x3F)
  {
    sub_21CD1EF74();
    if (v1 <= 0x3F)
    {
      sub_21CD1EFCC(319, &qword_27CE1A6C8);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21CD1EF74()
{
  if (!qword_280F78140)
  {
    sub_21CD83794();
    v0 = sub_21CD83EA4();
    if (!v1)
    {
      atomic_store(v0, &qword_280F78140);
    }
  }
}

void sub_21CD1EFCC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_21CD83EA4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_21CD1F02C()
{
  result = qword_27CE1A6D0;
  if (!qword_27CE1A6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A6D0);
  }

  return result;
}

unint64_t sub_21CD1F084()
{
  result = qword_27CE1A6D8;
  if (!qword_27CE1A6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A6D8);
  }

  return result;
}

unint64_t sub_21CD1F0DC()
{
  result = qword_27CE1A6E0;
  if (!qword_27CE1A6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A6E0);
  }

  return result;
}

uint64_t sub_21CD1F130(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x800000021CDA0110 == a2 || (sub_21CD841A4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x800000021CD9F240 == a2 || (sub_21CD841A4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x800000021CDA0130 == a2 || (sub_21CD841A4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x626F6C4279656BLL && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v5 = sub_21CD841A4();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_21CD1F2A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t MobileDocumentReaderCertificateResponse.StatusItem.sessionIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MobileDocumentReaderCertificateResponse.StatusItem.merchantLogo.getter()
{
  v1 = *(v0 + 24);
  sub_21CC96064(v1, *(v0 + 32));
  return v1;
}

uint64_t MobileDocumentReaderCertificateResponse.StatusItem.externalData.getter()
{
  v1 = *(v0 + 40);
  sub_21CC96064(v1, *(v0 + 48));
  return v1;
}

uint64_t MobileDocumentReaderCertificateResponse.StatusItem.init(sessionIdentifier:certificateChain:merchantLogo:externalData:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = result;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  a8[6] = a7;
  return result;
}

unint64_t sub_21CD1F3A0()
{
  v1 = 0x746E61686372656DLL;
  if (*v0 != 2)
  {
    v1 = 0x6C616E7265747865;
  }

  v2 = 0xD000000000000011;
  if (*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_21CD1F438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21CD20B18(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21CD1F460(uint64_t a1)
{
  v2 = sub_21CD2055C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD1F49C(uint64_t a1)
{
  v2 = sub_21CD2055C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MobileDocumentReaderCertificateResponse.StatusItem.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A6F8, &unk_21CD90770);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v20 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v23 = v1[3];
  v24 = v11;
  v12 = v1[4];
  v21 = v1[5];
  v22 = v12;
  v20 = v1[6];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD2055C();
  sub_21CD842B4();
  LOBYTE(v26) = 0;
  v14 = v25;
  sub_21CD84134();
  if (!v14)
  {
    v16 = v22;
    v15 = v23;
    v18 = v20;
    v17 = v21;
    v26 = v24;
    v28 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A290, &qword_21CD8F130);
    sub_21CD07280(&qword_27CE1A298);
    sub_21CD84124();
    v26 = v15;
    v27 = v16;
    v28 = 2;
    sub_21CC96064(v15, v16);
    sub_21CCFFDB0();
    sub_21CD84124();
    sub_21CC95F8C(v26, v27);
    v26 = v17;
    v27 = v18;
    v28 = 3;
    sub_21CC96064(v17, v18);
    sub_21CD84124();
    sub_21CC95F8C(v26, v27);
  }

  return (*(v4 + 8))(v8, v3);
}

uint64_t MobileDocumentReaderCertificateResponse.StatusItem.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  sub_21CD83B74();
  if (v4)
  {
    sub_21CD84284();
    MEMORY[0x21CF17CC0](*(v4 + 16));
    v8 = *(v4 + 16);
    if (v8)
    {
      v9 = (v4 + 40);
      do
      {
        v10 = *(v9 - 1);
        v11 = *v9;

        sub_21CD83B74();

        v9 += 2;
        --v8;
      }

      while (v8);
    }
  }

  else
  {
    sub_21CD84284();
  }

  sub_21CD84284();
  if (v6 >> 60 != 15)
  {
    sub_21CD83704();
  }

  if (v7 >> 60 == 15)
  {
    return sub_21CD84284();
  }

  sub_21CD84284();

  return sub_21CD83704();
}

uint64_t MobileDocumentReaderCertificateResponse.StatusItem.hashValue.getter()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 1);
  v5 = *(v0 + 2);
  v6 = v0[6];
  sub_21CD84264();
  MobileDocumentReaderCertificateResponse.StatusItem.hash(into:)();
  return sub_21CD84294();
}

uint64_t MobileDocumentReaderCertificateResponse.StatusItem.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A708, &qword_21CD90780);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v21 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD2055C();
  sub_21CD842A4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v27) = 0;
  v12 = sub_21CD84094();
  v26 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A290, &qword_21CD8F130);
  v29 = 1;
  sub_21CD07280(&qword_27CE1A2A8);
  sub_21CD84084();
  v25 = v27;
  v29 = 2;
  v24 = sub_21CCFFE7C();
  sub_21CD84084();
  v22 = v27;
  v23 = v28;
  v29 = 3;
  sub_21CD84084();
  (*(v6 + 8))(v10, v5);
  v15 = v27;
  v16 = v28;
  v18 = v25;
  v17 = v26;
  *a2 = v12;
  a2[1] = v17;
  v20 = v22;
  v19 = v23;
  a2[2] = v18;
  a2[3] = v20;
  a2[4] = v19;
  a2[5] = v15;
  a2[6] = v16;

  sub_21CC96064(v20, v19);
  sub_21CC96064(v15, v16);
  __swift_destroy_boxed_opaque_existential_0(a1);

  sub_21CC95F8C(v20, v19);
  return sub_21CC95F8C(v15, v16);
}

uint64_t sub_21CD1FCB8()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 1);
  v5 = *(v0 + 2);
  v6 = v0[6];
  sub_21CD84264();
  MobileDocumentReaderCertificateResponse.StatusItem.hash(into:)();
  return sub_21CD84294();
}

uint64_t sub_21CD1FD1C()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 1);
  v5 = *(v0 + 2);
  v6 = v0[6];
  sub_21CD84264();
  MobileDocumentReaderCertificateResponse.StatusItem.hash(into:)();
  return sub_21CD84294();
}

uint64_t sub_21CD1FDAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736D657469 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_21CD841A4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_21CD1FE30(uint64_t a1)
{
  v2 = sub_21CD205B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD1FE6C(uint64_t a1)
{
  v2 = sub_21CD205B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MobileDocumentReaderCertificateResponse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A710, &qword_21CD90788);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD205B0();

  sub_21CD842B4();
  v12[1] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A720, &qword_21CD90790);
  sub_21CD20658(&qword_27CE1A728, sub_21CD20604);
  sub_21CD84164();

  return (*(v4 + 8))(v8, v3);
}

uint64_t MobileDocumentReaderCertificateResponse.hashValue.getter()
{
  v1 = *v0;
  sub_21CD84264();
  sub_21CCCFC6C(v3, v1);
  return sub_21CD84294();
}

uint64_t MobileDocumentReaderCertificateResponse.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A738, &qword_21CD90798);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD205B0();
  sub_21CD842A4();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A720, &qword_21CD90790);
    sub_21CD20658(&qword_27CE1A740, sub_21CD206D0);
    sub_21CD840C4();
    (*(v6 + 8))(v10, v5);
    *a2 = v13[1];
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_21CD2027C()
{
  v1 = *v0;
  sub_21CD84264();
  sub_21CCCFC6C(v3, v1);
  return sub_21CD84294();
}

uint64_t sub_21CD202CC()
{
  v1 = *v0;
  sub_21CD84264();
  sub_21CCCFC6C(v3, v1);
  return sub_21CD84294();
}

BOOL _s7CoreIDV39MobileDocumentReaderCertificateResponseV10StatusItemV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v6 = a1[5];
  v5 = a1[6];
  v8 = a2[2];
  v7 = a2[3];
  v10 = a2[4];
  v9 = a2[5];
  v11 = a2[6];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_21CD841A4() & 1) == 0)
  {
    return 0;
  }

  if (v2)
  {
    if (!v8 || (sub_21CCCC468(v2, v8) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (v3 >> 60 == 15)
  {
    if (v10 >> 60 == 15)
    {
      sub_21CC96064(v4, v3);
      sub_21CC96064(v7, v10);
      sub_21CC95F8C(v4, v3);
      goto LABEL_15;
    }

LABEL_13:
    sub_21CC96064(v4, v3);
    sub_21CC96064(v7, v10);
    sub_21CC95F8C(v4, v3);
    v12 = v7;
    v13 = v10;
LABEL_20:
    sub_21CC95F8C(v12, v13);
    return 0;
  }

  if (v10 >> 60 == 15)
  {
    goto LABEL_13;
  }

  sub_21CC96064(v4, v3);
  sub_21CC96064(v7, v10);
  v14 = sub_21CD23300(v4, v3, v7, v10);
  sub_21CC95F8C(v7, v10);
  sub_21CC95F8C(v4, v3);
  if ((v14 & 1) == 0)
  {
    return 0;
  }

LABEL_15:
  if (v5 >> 60 == 15)
  {
    if (v11 >> 60 == 15)
    {
      sub_21CC96064(v6, v5);
      sub_21CC96064(v9, v11);
      sub_21CC95F8C(v6, v5);
      return 1;
    }

    goto LABEL_19;
  }

  if (v11 >> 60 == 15)
  {
LABEL_19:
    sub_21CC96064(v6, v5);
    sub_21CC96064(v9, v11);
    sub_21CC95F8C(v6, v5);
    v12 = v9;
    v13 = v11;
    goto LABEL_20;
  }

  sub_21CC96064(v6, v5);
  sub_21CC96064(v9, v11);
  v16 = sub_21CD23300(v6, v5, v9, v11);
  sub_21CC95F8C(v9, v11);
  sub_21CC95F8C(v6, v5);
  return (v16 & 1) != 0;
}

unint64_t sub_21CD2055C()
{
  result = qword_27CE1A700;
  if (!qword_27CE1A700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A700);
  }

  return result;
}

unint64_t sub_21CD205B0()
{
  result = qword_27CE1A718;
  if (!qword_27CE1A718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A718);
  }

  return result;
}

unint64_t sub_21CD20604()
{
  result = qword_27CE1A730;
  if (!qword_27CE1A730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A730);
  }

  return result;
}

uint64_t sub_21CD20658(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE1A720, &qword_21CD90790);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21CD206D0()
{
  result = qword_27CE1A748;
  if (!qword_27CE1A748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A748);
  }

  return result;
}

unint64_t sub_21CD20728()
{
  result = qword_27CE1A750;
  if (!qword_27CE1A750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A750);
  }

  return result;
}

unint64_t sub_21CD20780()
{
  result = qword_27CE1A758;
  if (!qword_27CE1A758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A758);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
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

uint64_t sub_21CD20844(uint64_t a1, int a2)
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

uint64_t sub_21CD2088C(uint64_t result, int a2, int a3)
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

unint64_t sub_21CD2090C()
{
  result = qword_27CE1A760;
  if (!qword_27CE1A760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A760);
  }

  return result;
}

unint64_t sub_21CD20964()
{
  result = qword_27CE1A768;
  if (!qword_27CE1A768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A768);
  }

  return result;
}

unint64_t sub_21CD209BC()
{
  result = qword_27CE1A770;
  if (!qword_27CE1A770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A770);
  }

  return result;
}

unint64_t sub_21CD20A14()
{
  result = qword_27CE1A778;
  if (!qword_27CE1A778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A778);
  }

  return result;
}

unint64_t sub_21CD20A6C()
{
  result = qword_27CE1A780;
  if (!qword_27CE1A780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A780);
  }

  return result;
}

unint64_t sub_21CD20AC4()
{
  result = qword_27CE1A788;
  if (!qword_27CE1A788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A788);
  }

  return result;
}

uint64_t sub_21CD20B18(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x800000021CDA0110 == a2;
  if (v3 || (sub_21CD841A4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000021CDA0150 == a2 || (sub_21CD841A4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E61686372656DLL && a2 == 0xEC0000006F676F4CLL || (sub_21CD841A4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C616E7265747865 && a2 == 0xEC00000061746144)
  {

    return 3;
  }

  else
  {
    v6 = sub_21CD841A4();

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

uint64_t MobileDocumentReaderIdentityKeyRequest.applicationIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MobileDocumentReaderIdentityKeyRequest.installationIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MobileDocumentReaderIdentityKeyRequest() + 20);
  v4 = sub_21CD83794();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for MobileDocumentReaderIdentityKeyRequest()
{
  result = qword_27CE1A7B0;
  if (!qword_27CE1A7B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MobileDocumentReaderIdentityKeyRequest.init(applicationIdentifier:installationIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v6 = *(type metadata accessor for MobileDocumentReaderIdentityKeyRequest() + 20);
  v7 = sub_21CD83794();
  v8 = *(*(v7 - 8) + 32);

  return v8(&a4[v6], a3, v7);
}

uint64_t static MobileDocumentReaderIdentityKeyRequest.== infix(_:_:)(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_21CD841A4() & 1) == 0)
  {
    return 0;
  }

  v3 = *(type metadata accessor for MobileDocumentReaderIdentityKeyRequest() + 20);

  return sub_21CD83764();
}

unint64_t sub_21CD20E8C()
{
  if (*v0)
  {
    result = 0xD000000000000016;
  }

  else
  {
    result = 0xD000000000000015;
  }

  *v0;
  return result;
}

uint64_t sub_21CD20EC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000015 && 0x800000021CD9F240 == a2 || (sub_21CD841A4() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000016 && 0x800000021CDA0130 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_21CD841A4();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_21CD20FA8(uint64_t a1)
{
  v2 = sub_21CD211D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD20FE4(uint64_t a1)
{
  v2 = sub_21CD211D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MobileDocumentReaderIdentityKeyRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A790, &qword_21CD90CF0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v16[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD211D8();
  sub_21CD842B4();
  v12 = *v3;
  v13 = v3[1];
  v16[15] = 0;
  sub_21CD84134();
  if (!v2)
  {
    v14 = *(type metadata accessor for MobileDocumentReaderIdentityKeyRequest() + 20);
    v16[14] = 1;
    sub_21CD83794();
    sub_21CD2199C(&qword_27CE1A698, MEMORY[0x277CC95F0]);
    sub_21CD84164();
  }

  return (*(v6 + 8))(v10, v5);
}

unint64_t sub_21CD211D8()
{
  result = qword_27CE1A798;
  if (!qword_27CE1A798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A798);
  }

  return result;
}

uint64_t MobileDocumentReaderIdentityKeyRequest.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  sub_21CD83B74();
  v3 = *(type metadata accessor for MobileDocumentReaderIdentityKeyRequest() + 20);
  sub_21CD83794();
  sub_21CD2199C(&qword_27CE19348, MEMORY[0x277CC95F0]);
  return sub_21CD83A64();
}

uint64_t MobileDocumentReaderIdentityKeyRequest.hashValue.getter()
{
  sub_21CD84264();
  v1 = *v0;
  v2 = v0[1];
  sub_21CD83B74();
  v3 = *(type metadata accessor for MobileDocumentReaderIdentityKeyRequest() + 20);
  sub_21CD83794();
  sub_21CD2199C(&qword_27CE19348, MEMORY[0x277CC95F0]);
  sub_21CD83A64();
  return sub_21CD84294();
}

uint64_t MobileDocumentReaderIdentityKeyRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v26 = sub_21CD83794();
  v23 = *(v26 - 8);
  v4 = *(v23 + 64);
  MEMORY[0x28223BE20](v26, v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A7A0, &qword_21CD90CF8);
  v25 = *(v27 - 8);
  v8 = *(v25 + 64);
  MEMORY[0x28223BE20](v27, v9);
  v11 = &v22 - v10;
  v12 = type metadata accessor for MobileDocumentReaderIdentityKeyRequest();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12, v14);
  v16 = (&v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD211D8();
  sub_21CD842A4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v22 = v12;
  v19 = v25;
  v18 = v26;
  v29 = 0;
  *v16 = sub_21CD84094();
  v16[1] = v20;
  v28 = 1;
  sub_21CD2199C(&qword_27CE1A6A8, MEMORY[0x277CC95F0]);
  sub_21CD840C4();
  (*(v19 + 8))(v11, v27);
  (*(v23 + 32))(v16 + *(v22 + 20), v7, v18);
  sub_21CD21894(v16, v24);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_21CD218F8(v16);
}

uint64_t sub_21CD216BC(uint64_t a1)
{
  sub_21CD84264();
  v3 = *v1;
  v4 = v1[1];
  sub_21CD83B74();
  v5 = *(a1 + 20);
  sub_21CD83794();
  sub_21CD2199C(&qword_27CE19348, MEMORY[0x277CC95F0]);
  sub_21CD83A64();
  return sub_21CD84294();
}

uint64_t sub_21CD21764(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = v2[1];
  sub_21CD83B74();
  v6 = *(a2 + 20);
  sub_21CD83794();
  sub_21CD2199C(&qword_27CE19348, MEMORY[0x277CC95F0]);
  return sub_21CD83A64();
}

uint64_t sub_21CD217F0(uint64_t a1, uint64_t a2)
{
  sub_21CD84264();
  v4 = *v2;
  v5 = v2[1];
  sub_21CD83B74();
  v6 = *(a2 + 20);
  sub_21CD83794();
  sub_21CD2199C(&qword_27CE19348, MEMORY[0x277CC95F0]);
  sub_21CD83A64();
  return sub_21CD84294();
}

uint64_t sub_21CD21894(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDocumentReaderIdentityKeyRequest();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CD218F8(uint64_t a1)
{
  v2 = type metadata accessor for MobileDocumentReaderIdentityKeyRequest();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21CD2199C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21CD219E4(void *a1, void *a2, uint64_t a3)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_21CD841A4() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a3 + 20);

  return sub_21CD83764();
}

uint64_t sub_21CD21A90()
{
  result = sub_21CD83794();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_21CD21B20()
{
  result = qword_27CE1A7C0;
  if (!qword_27CE1A7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A7C0);
  }

  return result;
}

unint64_t sub_21CD21B78()
{
  result = qword_27CE1A7C8;
  if (!qword_27CE1A7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A7C8);
  }

  return result;
}

unint64_t sub_21CD21BD0()
{
  result = qword_27CE1A7D0;
  if (!qword_27CE1A7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A7D0);
  }

  return result;
}

uint64_t MobileDocumentReaderIdentityKeyResponse.StatusItem.applicationIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MobileDocumentReaderIdentityKeyResponse.StatusItem.installationIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MobileDocumentReaderIdentityKeyResponse.StatusItem() + 20);
  v4 = sub_21CD83794();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for MobileDocumentReaderIdentityKeyResponse.StatusItem()
{
  result = qword_27CE1A840;
  if (!qword_27CE1A840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MobileDocumentReaderIdentityKeyResponse.StatusItem.identityKeyBlob.getter()
{
  v1 = v0 + *(type metadata accessor for MobileDocumentReaderIdentityKeyResponse.StatusItem() + 24);
  v2 = *v1;
  sub_21CCB18D4(*v1, *(v1 + 8));
  return v2;
}

uint64_t MobileDocumentReaderIdentityKeyResponse.StatusItem.init(applicationIdentifier:installationIdentifier:identityKeyBlob:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = a1;
  *(a6 + 1) = a2;
  v10 = type metadata accessor for MobileDocumentReaderIdentityKeyResponse.StatusItem();
  v11 = *(v10 + 20);
  v12 = sub_21CD83794();
  result = (*(*(v12 - 8) + 32))(&a6[v11], a3, v12);
  v14 = &a6[*(v10 + 24)];
  *v14 = a4;
  *(v14 + 1) = a5;
  return result;
}

uint64_t static MobileDocumentReaderIdentityKeyResponse.StatusItem.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_21CD841A4() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for MobileDocumentReaderIdentityKeyResponse.StatusItem();
  v6 = *(v5 + 20);
  if ((sub_21CD83764() & 1) == 0)
  {
    return 0;
  }

  v7 = *(v5 + 24);
  v8 = *(a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  v11 = *v10;
  v12 = v10[1];

  return sub_21CD23300(v8, v9, v11, v12);
}

unint64_t sub_21CD21EA0()
{
  v1 = 0x797469746E656469;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000016;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_21CD21F08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21CD23A40(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21CD21F30(uint64_t a1)
{
  v2 = sub_21CD23468();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD21F6C(uint64_t a1)
{
  v2 = sub_21CD23468();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MobileDocumentReaderIdentityKeyResponse.StatusItem.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A7D8, &qword_21CD90F10);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v19[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD23468();
  sub_21CD842B4();
  v12 = *v3;
  v13 = v3[1];
  LOBYTE(v20) = 0;
  sub_21CD84134();
  if (!v2)
  {
    v14 = type metadata accessor for MobileDocumentReaderIdentityKeyResponse.StatusItem();
    v15 = *(v14 + 20);
    LOBYTE(v20) = 1;
    sub_21CD83794();
    sub_21CD236B4(&qword_27CE1A698, MEMORY[0x277CC95F0]);
    sub_21CD84164();
    v16 = (v3 + *(v14 + 24));
    v17 = v16[1];
    v20 = *v16;
    v21 = v17;
    v19[15] = 2;
    sub_21CCB18D4(v20, v17);
    sub_21CCFFDB0();
    sub_21CD84164();
    sub_21CCB1880(v20, v21);
  }

  return (*(v6 + 8))(v10, v5);
}

uint64_t MobileDocumentReaderIdentityKeyResponse.StatusItem.hash(into:)()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[1];
  sub_21CD83B74();
  v4 = type metadata accessor for MobileDocumentReaderIdentityKeyResponse.StatusItem();
  v5 = *(v4 + 20);
  sub_21CD83794();
  sub_21CD236B4(&qword_27CE19348, MEMORY[0x277CC95F0]);
  sub_21CD83A64();
  v6 = (v1 + *(v4 + 24));
  v7 = *v6;
  v8 = v6[1];

  return sub_21CD83704();
}

uint64_t MobileDocumentReaderIdentityKeyResponse.StatusItem.hashValue.getter()
{
  v1 = v0;
  sub_21CD84264();
  v2 = *v0;
  v3 = v0[1];
  sub_21CD83B74();
  v4 = type metadata accessor for MobileDocumentReaderIdentityKeyResponse.StatusItem();
  v5 = *(v4 + 20);
  sub_21CD83794();
  sub_21CD236B4(&qword_27CE19348, MEMORY[0x277CC95F0]);
  sub_21CD83A64();
  v6 = (v1 + *(v4 + 24));
  v7 = *v6;
  v8 = v6[1];
  sub_21CD83704();
  return sub_21CD84294();
}

uint64_t MobileDocumentReaderIdentityKeyResponse.StatusItem.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v30 = sub_21CD83794();
  v28 = *(v30 - 8);
  v4 = *(v28 + 64);
  MEMORY[0x28223BE20](v30, v5);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A7E8, &qword_21CD90F18);
  v29 = *(v31 - 8);
  v8 = *(v29 + 64);
  MEMORY[0x28223BE20](v31, v9);
  v11 = v24 - v10;
  v12 = type metadata accessor for MobileDocumentReaderIdentityKeyResponse.StatusItem();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12, v14);
  v16 = (v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD23468();
  sub_21CD842A4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v25 = v12;
  v26 = a1;
  v19 = v29;
  v18 = v30;
  LOBYTE(v32) = 0;
  v20 = v31;
  *v16 = sub_21CD84094();
  v16[1] = v21;
  v24[2] = v21;
  LOBYTE(v32) = 1;
  sub_21CD236B4(&qword_27CE1A6A8, MEMORY[0x277CC95F0]);
  sub_21CD840C4();
  (*(v28 + 32))(v16 + *(v25 + 20), v7, v18);
  v33 = 2;
  sub_21CCFFE7C();
  v24[1] = 0;
  sub_21CD840C4();
  v22 = v26;
  (*(v19 + 8))(v11, v20);
  *(v16 + *(v25 + 24)) = v32;
  sub_21CD234BC(v16, v27);
  __swift_destroy_boxed_opaque_existential_0(v22);
  return sub_21CD23520(v16);
}

uint64_t sub_21CD22754(uint64_t a1)
{
  v3 = v1;
  sub_21CD84264();
  v4 = *v1;
  v5 = v1[1];
  sub_21CD83B74();
  v6 = *(a1 + 20);
  sub_21CD83794();
  sub_21CD236B4(&qword_27CE19348, MEMORY[0x277CC95F0]);
  sub_21CD83A64();
  v7 = (v3 + *(a1 + 24));
  v8 = *v7;
  v9 = v7[1];
  sub_21CD83704();
  return sub_21CD84294();
}

uint64_t sub_21CD22814(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = *v2;
  v6 = v2[1];
  sub_21CD83B74();
  v7 = *(a2 + 20);
  sub_21CD83794();
  sub_21CD236B4(&qword_27CE19348, MEMORY[0x277CC95F0]);
  sub_21CD83A64();
  v8 = (v4 + *(a2 + 24));
  v9 = *v8;
  v10 = v8[1];

  return sub_21CD83704();
}

uint64_t sub_21CD228CC(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_21CD84264();
  v5 = *v2;
  v6 = v2[1];
  sub_21CD83B74();
  v7 = *(a2 + 20);
  sub_21CD83794();
  sub_21CD236B4(&qword_27CE19348, MEMORY[0x277CC95F0]);
  sub_21CD83A64();
  v8 = (v4 + *(a2 + 24));
  v9 = *v8;
  v10 = v8[1];
  sub_21CD83704();
  return sub_21CD84294();
}

uint64_t sub_21CD22988(void *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_21CD841A4() & 1) == 0)
  {
    return 0;
  }

  v7 = *(a3 + 20);
  if ((sub_21CD83764() & 1) == 0)
  {
    return 0;
  }

  v8 = *(a3 + 24);
  v9 = *(a1 + v8);
  v10 = *(a1 + v8 + 8);
  v11 = (a2 + v8);
  v12 = *v11;
  v13 = v11[1];

  return sub_21CD23300(v9, v10, v12, v13);
}

uint64_t sub_21CD22A44(uint64_t a1)
{
  v2 = sub_21CD2357C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD22A80(uint64_t a1)
{
  v2 = sub_21CD2357C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MobileDocumentReaderIdentityKeyResponse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A7F0, &qword_21CD90F20);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD2357C();

  sub_21CD842B4();
  v12[1] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A800, &qword_21CD90F28);
  sub_21CD235D0(&qword_27CE1A808, &qword_27CE1A810);
  sub_21CD84164();

  return (*(v4 + 8))(v8, v3);
}

uint64_t MobileDocumentReaderIdentityKeyResponse.hash(into:)()
{
  v1 = type metadata accessor for MobileDocumentReaderIdentityKeyResponse.StatusItem();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = (&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *v0;
  v8 = *(*v0 + 16);
  result = MEMORY[0x21CF17CC0](v8);
  if (v8)
  {
    v10 = *(v1 + 20);
    v11 = (v6 + *(v1 + 24));
    v12 = v7 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v13 = *(v2 + 72);
    do
    {
      sub_21CD234BC(v12, v6);
      v14 = *v6;
      v15 = v6[1];
      sub_21CD83B74();
      sub_21CD83794();
      sub_21CD236B4(&qword_27CE19348, MEMORY[0x277CC95F0]);
      sub_21CD83A64();
      v16 = *v11;
      v17 = v11[1];
      sub_21CD83704();
      result = sub_21CD23520(v6);
      v12 += v13;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t MobileDocumentReaderIdentityKeyResponse.hashValue.getter()
{
  v1 = *v0;
  sub_21CD84264();
  sub_21CCCFAC4(v3, v1);
  return sub_21CD84294();
}

uint64_t MobileDocumentReaderIdentityKeyResponse.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A818, &qword_21CD90F30);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD2357C();
  sub_21CD842A4();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A800, &qword_21CD90F28);
    sub_21CD235D0(&qword_27CE1A820, &qword_27CE1A828);
    sub_21CD840C4();
    (*(v6 + 8))(v10, v5);
    *a2 = v13[1];
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_21CD23018()
{
  v1 = *v0;
  sub_21CD84264();
  sub_21CCCFAC4(v3, v1);
  return sub_21CD84294();
}

uint64_t sub_21CD23068()
{
  v1 = *v0;
  sub_21CD84264();
  sub_21CCCFAC4(v3, v1);
  return sub_21CD84294();
}

uint64_t sub_21CD230B8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_21CD23248(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_21CCB1880(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_21CCCF08C(v14, a3, a4, &v13);
  v10 = v4;
  sub_21CCB1880(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

uint64_t sub_21CD23248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_21CD834C4();
  v11 = result;
  if (result)
  {
    result = sub_21CD834E4();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_21CD834D4();
  sub_21CCCF08C(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_21CD23300(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_21CCB18D4(a3, a4);
          return sub_21CD230B8(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_21CD23468()
{
  result = qword_27CE1A7E0;
  if (!qword_27CE1A7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A7E0);
  }

  return result;
}

uint64_t sub_21CD234BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDocumentReaderIdentityKeyResponse.StatusItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CD23520(uint64_t a1)
{
  v2 = type metadata accessor for MobileDocumentReaderIdentityKeyResponse.StatusItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21CD2357C()
{
  result = qword_27CE1A7F8;
  if (!qword_27CE1A7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A7F8);
  }

  return result;
}

uint64_t sub_21CD235D0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE1A800, &qword_21CD90F28);
    sub_21CD236B4(a2, type metadata accessor for MobileDocumentReaderIdentityKeyResponse.StatusItem);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21CD236B4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21CD23700()
{
  result = qword_27CE1A838;
  if (!qword_27CE1A838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A838);
  }

  return result;
}

uint64_t sub_21CD2378C()
{
  result = sub_21CD83794();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_21CD23834()
{
  result = qword_27CE1A850;
  if (!qword_27CE1A850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A850);
  }

  return result;
}

unint64_t sub_21CD2388C()
{
  result = qword_27CE1A858;
  if (!qword_27CE1A858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A858);
  }

  return result;
}

unint64_t sub_21CD238E4()
{
  result = qword_27CE1A860;
  if (!qword_27CE1A860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A860);
  }

  return result;
}

unint64_t sub_21CD2393C()
{
  result = qword_27CE1A868;
  if (!qword_27CE1A868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A868);
  }

  return result;
}

unint64_t sub_21CD23994()
{
  result = qword_27CE1A870;
  if (!qword_27CE1A870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A870);
  }

  return result;
}

unint64_t sub_21CD239EC()
{
  result = qword_27CE1A878;
  if (!qword_27CE1A878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A878);
  }

  return result;
}

uint64_t sub_21CD23A40(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x800000021CD9F240 == a2 || (sub_21CD841A4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x800000021CDA0130 == a2 || (sub_21CD841A4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x797469746E656469 && a2 == 0xEF626F6C4279654BLL)
  {

    return 2;
  }

  else
  {
    v5 = sub_21CD841A4();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

void MobileDocumentReaderIssuerRootCertificateList.certificates.getter()
{
  v1 = 0;
  v2 = *v0;
  v13 = MEMORY[0x277D84F90];
  v3 = *(*v0 + 16);
  v4 = *MEMORY[0x277CBECE8];
  v5 = *v0 + 40;
LABEL_2:
  v6 = (v5 + 16 * v1);
  while (v3 != v1)
  {
    if (v1 >= *(v2 + 16))
    {
      __break(1u);
      return;
    }

    ++v1;
    v7 = v6 + 2;
    v9 = *(v6 - 1);
    v8 = *v6;
    sub_21CCB18D4(v9, *v6);
    v10 = sub_21CD836E4();
    v11 = SecCertificateCreateWithData(v4, v10);
    sub_21CCB1880(v9, v8);

    v6 = v7;
    if (v11)
    {
      MEMORY[0x21CF176B0]();
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v12 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_21CD83CA4();
      }

      sub_21CD83CB4();
      v5 = v2 + 40;
      goto LABEL_2;
    }
  }
}

uint64_t sub_21CD23CE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6369666974726563 && a2 == 0xEF61746144657461)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_21CD841A4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_21CD23D70(uint64_t a1)
{
  v2 = sub_21CD23F8C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD23DAC(uint64_t a1)
{
  v2 = sub_21CD23F8C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MobileDocumentReaderIssuerRootCertificateList.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A880, &unk_21CD91340);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD23F8C();

  sub_21CD842B4();
  v12[1] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A1B0, &qword_21CD8ECF0);
  sub_21CCFFE04(&qword_27CE1A1B8, sub_21CCFFDB0);
  sub_21CD84164();

  return (*(v4 + 8))(v8, v3);
}

unint64_t sub_21CD23F8C()
{
  result = qword_27CE1A888;
  if (!qword_27CE1A888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A888);
  }

  return result;
}

uint64_t MobileDocumentReaderIssuerRootCertificateList.hash(into:)()
{
  v1 = *v0;
  result = MEMORY[0x21CF17CC0](*(*v0 + 16));
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = (v1 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      sub_21CCB18D4(v5, *v4);
      sub_21CD83704();
      result = sub_21CCB1880(v5, v6);
      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t MobileDocumentReaderIssuerRootCertificateList.hashValue.getter()
{
  v1 = *v0;
  sub_21CD84264();
  MEMORY[0x21CF17CC0](*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 40);
    do
    {
      v4 = *(v3 - 1);
      v5 = *v3;
      sub_21CCB18D4(v4, *v3);
      sub_21CD83704();
      sub_21CCB1880(v4, v5);
      v3 += 2;
      --v2;
    }

    while (v2);
  }

  return sub_21CD84294();
}

uint64_t MobileDocumentReaderIssuerRootCertificateList.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A890, &qword_21CD91350);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD23F8C();
  sub_21CD842A4();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A1B0, &qword_21CD8ECF0);
    sub_21CCFFE04(&qword_27CE1A1D8, sub_21CCFFE7C);
    sub_21CD840C4();
    (*(v6 + 8))(v10, v5);
    *a2 = v13[1];
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_21CD242E0()
{
  v1 = *v0;
  sub_21CD84264();
  MEMORY[0x21CF17CC0](*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 40);
    do
    {
      v4 = *(v3 - 1);
      v5 = *v3;
      sub_21CCB18D4(v4, *v3);
      sub_21CD83704();
      sub_21CCB1880(v4, v5);
      v3 += 2;
      --v2;
    }

    while (v2);
  }

  return sub_21CD84294();
}

unint64_t sub_21CD24374()
{
  result = qword_27CE1A898;
  if (!qword_27CE1A898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A898);
  }

  return result;
}

unint64_t sub_21CD243F8()
{
  result = qword_27CE1A8A0;
  if (!qword_27CE1A8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A8A0);
  }

  return result;
}

unint64_t sub_21CD24450()
{
  result = qword_27CE1A8A8;
  if (!qword_27CE1A8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A8A8);
  }

  return result;
}

unint64_t sub_21CD244A8()
{
  result = qword_27CE1A8B0;
  if (!qword_27CE1A8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1A8B0);
  }

  return result;
}

uint64_t MobileDocumentReaderStoreSession.__allocating_init()()
{
  v0 = swift_allocObject();
  MobileDocumentReaderStoreSession.init()();
  return v0;
}

uint64_t MobileDocumentReaderStoreSession.init()()
{
  swift_defaultActor_initialize();
  v1 = [objc_opt_self() interfaceWithProtocol_];
  v2 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v3 = sub_21CD83B04();
  v4 = [v2 initWithMachServiceName:v3 options:{4096, 0, 0}];

  sub_21CCB3200(&aBlock, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A8B8, qword_21CD91590);
  v5 = swift_allocObject();
  [v4 setRemoteObjectInterface_];
  [v4 setInvalidationHandler_];
  v6 = &_swift_FORCE_LOAD___swiftOSLog___CoreIDV;
  [v4 setInterruptionHandler_];
  [v4 setExportedInterface_];
  sub_21CCB3200(v29, v27);
  v7 = v28;
  if (v28)
  {
    v8 = __swift_project_boxed_opaque_existential_0(v27, v28);
    v9 = *(v7 - 8);
    v10 = *(v9 + 64);
    MEMORY[0x28223BE20](v8, v8);
    v12 = &aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v12);
    v13 = sub_21CD84194();
    (*(v9 + 8))(v12, v7);
    v6 = &_swift_FORCE_LOAD___swiftOSLog___CoreIDV;
    __swift_destroy_boxed_opaque_existential_0(v27);
  }

  else
  {
    v13 = 0;
  }

  [v4 setExportedObject_];
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19170, &unk_21CD8F690);
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  *(v14 + 16) = v4;
  v5[2] = v14;
  v5[3] = sub_21CD2497C;
  v5[4] = 0;
  [v4 activate];

  sub_21CCC947C(v29);
  sub_21CCC947C(&aBlock);
  *(v0 + 112) = v5;

  os_unfair_lock_lock((v14 + 24));
  v15 = *(v14 + 16);
  v25 = sub_21CD249D4;
  v26 = 0;
  aBlock = MEMORY[0x277D85DD0];
  aBlock_8 = 1107296256;
  v23 = sub_21CCB3270;
  v24 = &block_descriptor_7;
  v16 = _Block_copy(&aBlock);

  [v15 v6[385]];
  _Block_release(v16);
  os_unfair_lock_unlock((v14 + 24));

  v17 = *(*(v0 + 112) + 16);

  os_unfair_lock_lock((v17 + 24));
  v18 = *(v17 + 16);
  v25 = sub_21CD249E0;
  v26 = 0;
  aBlock = MEMORY[0x277D85DD0];
  aBlock_8 = 1107296256;
  v23 = sub_21CCB3270;
  v24 = &block_descriptor_3_3;
  v19 = _Block_copy(&aBlock);

  [v18 setInvalidationHandler_];
  _Block_release(v19);
  os_unfair_lock_unlock((v17 + 24));

  return v0;
}

uint64_t sub_21CD2497C(void *a1)
{
  sub_21CD2B3C0();
  v2 = swift_allocError();
  *v3 = a1;
  v4 = a1;

  return v2;
}

uint64_t sub_21CD249EC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(type metadata accessor for MobileDocumentReaderIdentityKeyRequest() - 8);
  v3[5] = v4;
  v3[6] = *(v4 + 64);
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21CD24AB4, v2, 0);
}

uint64_t sub_21CD24AB4()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = v0[3];
  v0[8] = *(v0[4] + 112);
  sub_21CD2A014(v4, v1, type metadata accessor for MobileDocumentReaderIdentityKeyRequest);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[9] = v6;
  sub_21CD2A07C(v1, v6 + v5, type metadata accessor for MobileDocumentReaderIdentityKeyRequest);

  return MEMORY[0x2822009F8](sub_21CD24B84, 0, 0);
}

uint64_t sub_21CD24B84()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = swift_task_alloc();
  v0[10] = v3;
  v3[2] = v2;
  v3[3] = &unk_21CD915B0;
  v3[4] = v1;
  v4 = swift_task_alloc();
  v0[11] = v4;
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v2;
  v5 = *(MEMORY[0x277D85A10] + 4);
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_21CD24CA8;
  v7 = v0[2];

  return MEMORY[0x282200830](v7, &unk_21CD915B8, v3, sub_21CD29D7C, v4, 0, 0, &type metadata for MobileDocumentReaderIdentityKeyResponse);
}

uint64_t sub_21CD24CA8()
{
  v2 = *(*v1 + 96);
  v3 = *v1;
  v3[13] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21CD2B47C, 0, 0);
  }

  else
  {
    v5 = v3[10];
    v4 = v3[11];
    v6 = v3[9];
    v7 = v3[7];

    v8 = v3[1];

    return v8();
  }
}

uint64_t sub_21CD24E14(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[21] = a1;
  v3[22] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A8D8, &unk_21CD917A0);
  v3[23] = v5;
  v6 = *(v5 - 8);
  v3[24] = v6;
  v7 = *(v6 + 64) + 15;
  v3[25] = swift_task_alloc();
  v8 = *(*(type metadata accessor for MobileDocumentReaderIdentityKeyRequest() - 8) + 64) + 15;
  v9 = swift_task_alloc();
  v10 = *a2;
  v3[26] = v9;
  v3[27] = v10;

  return MEMORY[0x2822009F8](sub_21CD24F14, 0, 0);
}

uint64_t sub_21CD24F14()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 20;
  v4 = v0[26];
  v13 = v0[27];
  v5 = v0[24];
  v6 = v0[25];
  v7 = v0[23];
  sub_21CD2A014(v1[22], v4, type metadata accessor for MobileDocumentReaderIdentityKeyRequest);
  v8 = type metadata accessor for XPCMobileDocumentReaderIdentityKeyRequest(0);
  v9 = objc_allocWithZone(v8);
  sub_21CD2A014(v4, v9 + OBJC_IVAR____TtC7CoreIDV41XPCMobileDocumentReaderIdentityKeyRequest_value, type metadata accessor for MobileDocumentReaderIdentityKeyRequest);
  v1[18] = v9;
  v1[19] = v8;
  v10 = objc_msgSendSuper2(v1 + 9, sel_init);
  v1[28] = v10;
  sub_21CD2B350(v4, type metadata accessor for MobileDocumentReaderIdentityKeyRequest);
  v1[2] = v1;
  v1[7] = v3;
  v1[3] = sub_21CD25164;
  swift_continuation_init();
  v1[17] = v7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  type metadata accessor for XPCMobileDocumentReaderIdentityKeyResponse();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE191A0, &qword_21CD88650);
  sub_21CD83CE4();
  (*(v5 + 32))(boxed_opaque_existential_0, v6, v7);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_21CD25320;
  v1[13] = &block_descriptor_113;
  [v13 identityKey:v10 completionHandler:?];
  (*(v5 + 8))(boxed_opaque_existential_0, v7);

  return MEMORY[0x282200938](v2);
}

uint64_t sub_21CD25164()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 232) = v2;
  if (v2)
  {
    v3 = sub_21CD2B46C;
  }

  else
  {
    v3 = sub_21CD25274;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21CD25274()
{
  v1 = v0[28];
  v2 = v0[25];
  v3 = v0[26];
  v5 = v0[20];
  v4 = v0[21];
  v6 = *&v5[OBJC_IVAR____TtC7CoreIDV42XPCMobileDocumentReaderIdentityKeyResponse_value];

  *v4 = v6;

  v7 = v0[1];

  return v7();
}

uint64_t sub_21CD25334(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_21CD25354, v1, 0);
}

uint64_t sub_21CD2537C()
{
  v1 = v0[4];
  v2 = swift_task_alloc();
  v0[5] = v2;
  v2[2] = v1;
  v2[3] = &unk_21CD915C8;
  v2[4] = 0;
  v3 = swift_task_alloc();
  v0[6] = v3;
  v3[2] = 0;
  v3[3] = 0;
  v3[4] = v1;
  v4 = *(MEMORY[0x277D85A10] + 4);
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_21CD254A0;
  v6 = v0[2];

  return MEMORY[0x282200830](v6, &unk_21CD915D0, v2, sub_21CD2B490, v3, 0, 0, &type metadata for MobileDocumentReaderIdentityKeyResponse);
}

uint64_t sub_21CD254A0()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21CD2B48C, 0, 0);
  }

  else
  {
    v5 = v3[5];
    v4 = v3[6];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_21CD255E8(uint64_t a1, uint64_t *a2)
{
  v2[19] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A8D8, &unk_21CD917A0);
  v2[20] = v4;
  v5 = *(v4 - 8);
  v2[21] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v8 = *a2;
  v2[22] = v7;
  v2[23] = v8;

  return MEMORY[0x2822009F8](sub_21CD256BC, 0, 0);
}

uint64_t sub_21CD256BC()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 18;
  v6 = v0[22];
  v12 = v0[23];
  v9 = v0 + 20;
  v7 = v0[20];
  v8 = v9[1];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_21CD2587C;
  swift_continuation_init();
  v1[17] = v7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  type metadata accessor for XPCMobileDocumentReaderIdentityKeyResponse();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE191A0, &qword_21CD88650);
  sub_21CD83CE4();
  (*(v8 + 32))(boxed_opaque_existential_0, v6, v7);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_21CD25320;
  v1[13] = &block_descriptor_109;
  [v12 identityKey:0 completionHandler:v4];
  (*(v8 + 8))(boxed_opaque_existential_0, v7);

  return MEMORY[0x282200938](v3);
}

uint64_t sub_21CD2587C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  if (v2)
  {
    v3 = sub_21CD2B43C;
  }

  else
  {
    v3 = sub_21CD2598C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21CD2598C()
{
  v1 = v0[22];
  v3 = v0[18];
  v2 = v0[19];
  v4 = *&v3[OBJC_IVAR____TtC7CoreIDV42XPCMobileDocumentReaderIdentityKeyResponse_value];

  *v2 = v4;

  v5 = v0[1];

  return v5();
}

uint64_t sub_21CD25A20(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(type metadata accessor for MobileDocumentReaderIdentityKeyRequest() - 8);
  v2[4] = v3;
  v2[5] = *(v3 + 64);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21CD25AE4, v1, 0);
}

uint64_t sub_21CD25AE4()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  v0[7] = *(v0[3] + 112);
  sub_21CD2A014(v4, v1, type metadata accessor for MobileDocumentReaderIdentityKeyRequest);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[8] = v6;
  sub_21CD2A07C(v1, v6 + v5, type metadata accessor for MobileDocumentReaderIdentityKeyRequest);

  return MEMORY[0x2822009F8](sub_21CD25BB4, 0, 0);
}

uint64_t sub_21CD25BB4()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = swift_task_alloc();
  v0[9] = v3;
  v3[2] = v2;
  v3[3] = &unk_21CD915E8;
  v3[4] = v1;
  v4 = swift_task_alloc();
  v0[10] = v4;
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v2;
  v5 = *(MEMORY[0x277D85A10] + 4);
  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = sub_21CD25CD4;
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200830](v6, &unk_21CD915F0, v3, sub_21CD2A008, v4, 0, 0, v7);
}

uint64_t sub_21CD25CD4()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v11 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_21CD25E18;
    v5 = 0;
  }

  else
  {
    v7 = v2[9];
    v6 = v2[10];
    v8 = v2[8];
    v9 = v2[3];

    v4 = sub_21CD2B474;
    v5 = v9;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_21CD25E18()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  v4 = v0[3];

  return MEMORY[0x2822009F8](sub_21CD2B480, v4, 0);
}

uint64_t sub_21CD25EA0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[20] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18F70, &qword_21CD98400);
  v3[21] = v5;
  v6 = *(v5 - 8);
  v3[22] = v6;
  v7 = *(v6 + 64) + 15;
  v3[23] = swift_task_alloc();
  v8 = *(*(type metadata accessor for MobileDocumentReaderIdentityKeyRequest() - 8) + 64) + 15;
  v9 = swift_task_alloc();
  v10 = *a2;
  v3[24] = v9;
  v3[25] = v10;

  return MEMORY[0x2822009F8](sub_21CD25FA0, 0, 0);
}

uint64_t sub_21CD25FA0()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 10;
  v4 = v0[24];
  v13 = v0[25];
  v5 = v0[22];
  v6 = v0[23];
  v7 = v0[21];
  sub_21CD2A014(v1[20], v4, type metadata accessor for MobileDocumentReaderIdentityKeyRequest);
  v8 = type metadata accessor for XPCMobileDocumentReaderIdentityKeyRequest(0);
  v9 = objc_allocWithZone(v8);
  sub_21CD2A014(v4, v9 + OBJC_IVAR____TtC7CoreIDV41XPCMobileDocumentReaderIdentityKeyRequest_value, type metadata accessor for MobileDocumentReaderIdentityKeyRequest);
  v1[18] = v9;
  v1[19] = v8;
  v10 = objc_msgSendSuper2(v1 + 9, sel_init);
  v1[26] = v10;
  sub_21CD2B350(v4, type metadata accessor for MobileDocumentReaderIdentityKeyRequest);
  v1[2] = v1;
  v1[3] = sub_21CD261E8;
  swift_continuation_init();
  v1[17] = v7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE191A0, &qword_21CD88650);
  sub_21CD83CE4();
  (*(v5 + 32))(boxed_opaque_existential_0, v6, v7);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_21CD5C4C0;
  v1[13] = &block_descriptor_105;
  [v13 deleteIdentityKey:v10 completionHandler:v3];
  (*(v5 + 8))(boxed_opaque_existential_0, v7);

  return MEMORY[0x282200938](v2);
}

uint64_t sub_21CD261E8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 216) = v2;
  if (v2)
  {
    v3 = sub_21CD2B470;
  }

  else
  {
    v3 = sub_21CD2B468;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21CD262F8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(type metadata accessor for MobileDocumentReaderCertificateRequest() - 8);
  v3[5] = v4;
  v3[6] = *(v4 + 64);
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21CD263C0, v2, 0);
}

uint64_t sub_21CD263C0()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = v0[3];
  v0[8] = *(v0[4] + 112);
  sub_21CD2A014(v4, v1, type metadata accessor for MobileDocumentReaderCertificateRequest);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[9] = v6;
  sub_21CD2A07C(v1, v6 + v5, type metadata accessor for MobileDocumentReaderCertificateRequest);

  return MEMORY[0x2822009F8](sub_21CD26490, 0, 0);
}

uint64_t sub_21CD26490()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = swift_task_alloc();
  v0[10] = v3;
  v3[2] = v2;
  v3[3] = &unk_21CD91608;
  v3[4] = v1;
  v4 = swift_task_alloc();
  v0[11] = v4;
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v2;
  v5 = *(MEMORY[0x277D85A10] + 4);
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_21CD265B4;
  v7 = v0[2];

  return MEMORY[0x282200830](v7, &unk_21CD91610, v3, sub_21CD2A27C, v4, 0, 0, &type metadata for MobileDocumentReaderCertificateResponse);
}

uint64_t sub_21CD265B4()
{
  v2 = *(*v1 + 96);
  v3 = *v1;
  v3[13] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21CD26720, 0, 0);
  }

  else
  {
    v5 = v3[10];
    v4 = v3[11];
    v6 = v3[9];
    v7 = v3[7];

    v8 = v3[1];

    return v8();
  }
}

uint64_t sub_21CD26720()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  v4 = v0[7];

  v5 = v0[1];
  v6 = v0[13];

  return v5();
}

uint64_t sub_21CD267AC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[21] = a1;
  v3[22] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A8D0, &qword_21CD91798);
  v3[23] = v5;
  v6 = *(v5 - 8);
  v3[24] = v6;
  v7 = *(v6 + 64) + 15;
  v3[25] = swift_task_alloc();
  v8 = *(*(type metadata accessor for MobileDocumentReaderCertificateRequest() - 8) + 64) + 15;
  v9 = swift_task_alloc();
  v10 = *a2;
  v3[26] = v9;
  v3[27] = v10;

  return MEMORY[0x2822009F8](sub_21CD268AC, 0, 0);
}

uint64_t sub_21CD268AC()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 20;
  v4 = v0[26];
  v13 = v0[27];
  v5 = v0[24];
  v6 = v0[25];
  v7 = v0[23];
  sub_21CD2A014(v1[22], v4, type metadata accessor for MobileDocumentReaderCertificateRequest);
  v8 = type metadata accessor for XPCMobileDocumentReaderCertificateRequest(0);
  v9 = objc_allocWithZone(v8);
  sub_21CD2A014(v4, v9 + OBJC_IVAR____TtC7CoreIDV41XPCMobileDocumentReaderCertificateRequest_value, type metadata accessor for MobileDocumentReaderCertificateRequest);
  v1[18] = v9;
  v1[19] = v8;
  v10 = objc_msgSendSuper2(v1 + 9, sel_init);
  v1[28] = v10;
  sub_21CD2B350(v4, type metadata accessor for MobileDocumentReaderCertificateRequest);
  v1[2] = v1;
  v1[7] = v3;
  v1[3] = sub_21CD26AFC;
  swift_continuation_init();
  v1[17] = v7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  type metadata accessor for XPCMobileDocumentReaderCertificateResponse();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE191A0, &qword_21CD88650);
  sub_21CD83CE4();
  (*(v5 + 32))(boxed_opaque_existential_0, v6, v7);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_21CD26D44;
  v1[13] = &block_descriptor_101;
  [v13 certificate:v10 completionHandler:?];
  (*(v5 + 8))(boxed_opaque_existential_0, v7);

  return MEMORY[0x282200938](v2);
}