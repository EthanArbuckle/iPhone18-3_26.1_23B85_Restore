id sub_248A92518()
{
  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v1 = result;
    v2 = [result aa_primaryAppleAccount];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_248A92580()
{
  result = [objc_opt_self() defaultStore];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_248A925BC(char a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_248A8086C;

  return AppleAccountProvider.setCloudSyncStateAndSave(enabled:)(a1);
}

uint64_t sub_248A92650(char a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_248A7FBF4;

  return AppleAccountProvider.setCloudSyncState(enabled:account:)(a1, a2);
}

uint64_t dispatch thunk of AppleAccountProtocol.setCloudSyncStateAndSave(enabled:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 40);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_248A8086C;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of AppleAccountProtocol.setCloudSyncState(enabled:account:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 48);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_248A7FBF4;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_248A92A18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEC3E78, &qword_248A94968);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_248A92A80(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = sub_248A92C90(a1, a2, a3, a4);
  v6 = v5;
  oslog = sub_248A93420();
  v7 = sub_248A935F0();
  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136446210;
    v10 = sub_248A7E980(v4, v6, &v12);

    *(v8 + 4) = v10;
    _os_log_impl(&dword_248A7B000, oslog, v7, "%{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x24C1E2FB0](v9, -1, -1);
    MEMORY[0x24C1E2FB0](v8, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_248A92C18(uint64_t a1, uint64_t *a2)
{
  v3 = sub_248A93440();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_248A93430();
}

uint64_t sub_248A92C90(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_248A92FDC();
  v8 = (sub_248A93630() + 16);
  if (*v8)
  {
    v9 = &v8[2 * *v8];
    a1 = *v9;
    a2 = v9[1];
  }

  else
  {
  }

  sub_248A92EEC(46, 0xE100000000000000, a1, a2);
  v10 = sub_248A93520();
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = MEMORY[0x24C1E2790](v10, v12, v14, v16);
  v19 = v18;

  sub_248A92EEC(40, 0xE100000000000000, a3, a4);
  v20 = sub_248A93520();
  v21 = MEMORY[0x24C1E2790](v20);
  v23 = v22;

  v24 = pthread_self();
  pthread_mach_thread_np(v24);
  v25 = sub_248A93710();
  MEMORY[0x24C1E27C0](v25);

  MEMORY[0x24C1E27C0](8285, 0xE200000000000000);
  MEMORY[0x24C1E27C0](v17, v19);

  MEMORY[0x24C1E27C0](14906, 0xE200000000000000);
  MEMORY[0x24C1E27C0](v21, v23);

  return 91;
}

unint64_t sub_248A92EEC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (sub_248A93510() != a1 || v9 != a2)
  {
    v10 = sub_248A93730();

    if (v10)
    {
      return v8;
    }

    v8 = sub_248A934E0();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

unint64_t sub_248A92FDC()
{
  result = qword_27EEC3E80;
  if (!qword_27EEC3E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEC3E80);
  }

  return result;
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

uint64_t CloudStoredBoolean.description.getter()
{
  v1 = 0x657572547369;
  if (*v0 != 1)
  {
    v1 = 0x65736C61467369;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x74657320746F6ELL;
  }
}

DeviceSharingServicesCore::CloudStoredBoolean __swiftcall CloudStoredBoolean.init(_:)(DeviceSharingServicesCore::CloudStoredBoolean result)
{
  if (result)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (result == DeviceSharingServicesCore_CloudStoredBoolean_isFalse)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *v1 = v3;
  return result;
}

DeviceSharingServicesCore::CloudStoredBoolean_optional __swiftcall CloudStoredBoolean.init(rawValue:)(Swift::Int64 rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_248A9314C()
{
  result = qword_27EEC3E88;
  if (!qword_27EEC3E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEC3E88);
  }

  return result;
}

uint64_t sub_248A931A0()
{
  v1 = *v0;
  sub_248A937C0();
  MEMORY[0x24C1E2AB0](v1);
  return sub_248A937F0();
}

uint64_t sub_248A93214()
{
  v1 = *v0;
  sub_248A937C0();
  MEMORY[0x24C1E2AB0](v1);
  return sub_248A937F0();
}

unint64_t sub_248A9332C()
{
  result = qword_27EEC3E90;
  if (!qword_27EEC3E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEC3E90);
  }

  return result;
}