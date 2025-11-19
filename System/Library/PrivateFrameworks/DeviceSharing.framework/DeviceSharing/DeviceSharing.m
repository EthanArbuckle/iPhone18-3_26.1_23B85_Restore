BOOL sub_2489771C4(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_248977234@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_248977254@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_248A12B60();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_248977280()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2489772C0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_248977308()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_248977340()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_248977380()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2489773C0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[7];
  if (v3 >> 60 != 15)
  {
    sub_24898C4FC(v0[6], v3);
  }

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_248977428()
{
  v1 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_248977460()
{
  _Block_release(*(v0 + 32));
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2489774AC()
{
  _Block_release(*(v0 + 24));
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_248977500()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];
  swift_unknownObjectRelease();
  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24897754C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_248977584()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2489775C4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_248977604()
{
  v1 = *(type metadata accessor for GuestUserAccessPeerConnectionServiceMessage.Request(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v7 = sub_248A11E40();
  }

  else if (EnumCaseMultiPayload == 1)
  {
    v7 = sub_248A12010();
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      goto LABEL_8;
    }

    v7 = sub_248A11FF0();
  }

  (*(*(v7 - 8) + 8))(v0 + v3, v7);
LABEL_8:
  v8 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v0 + v8);

  return MEMORY[0x2821FE8E8](v0, v9 + 8, v2 | 7);
}

uint64_t sub_24897773C()
{
  v1 = *(sub_248A11F40() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_248A11F00();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = sub_248A11E60();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v0 + v3, 1, v7))
    {
      (*(v8 + 8))(v0 + v3, v7);
    }
  }

  v9 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v0 + v9);

  return MEMORY[0x2821FE8E8](v0, v10 + 8, v2 | 7);
}

uint64_t sub_2489778E4@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_248977928()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

id sub_248977968@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___DSNotificationController_activeNotification;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_2489779D4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR___DSNotificationController_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_248977A30(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2 + OBJC_IVAR___DSNotificationController_delegate;
  swift_beginAccess();
  *(v4 + 8) = v3;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_248977A94()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_248977ACC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_248977B18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_248A12540();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_248977BC4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_248A12540();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_248977C68(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for NearbyDeviceProviderState(0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_248977D20(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = type metadata accessor for NearbyDeviceProviderState(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_248977DC4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_248977DFC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_248977E3C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_248977E74()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_248977EB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5C08, &qword_248A16978);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 4)
  {
    return v5 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_248977F28(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 3);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5C08, &qword_248A16978);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_248977FB8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5A50, &unk_248A16450) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 48);

  v7 = v0 + v3;
  v8 = type metadata accessor for NearbyDevice(0);
  if (!(*(*(v8 - 8) + 48))(v0 + v3, 1, v8))
  {
    v9 = *(v7 + 8);

    v10 = *(v7 + 24);

    v11 = *(v8 + 24);
    v12 = sub_248A12540();
    (*(*(v12 - 8) + 8))(v7 + v11, v12);
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_248978110()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_248978148()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_248978190()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];
  swift_unknownObjectRelease();
  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2489781D8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_248978210()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_248978258()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2489782AC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24897831C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24897836C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2489783B4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_248978414()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_248978450()
{
  _Block_release(*(v0 + 32));
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24897849C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2489784D4()
{
  _Block_release(*(v0 + 24));
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_248978534()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24897856C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2489785A8()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  __swift_destroy_boxed_opaque_existential_0((v0 + 64));

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_248978608()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_248978640@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 24);
}

uint64_t sub_2489786B0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2489786E8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[7];
  if (v3 >> 60 != 15)
  {
    sub_24898C4FC(v0[6], v3);
  }

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_248978750()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_248978788()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_2489787C8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_248A0CB38();
  *a1 = 0;
  return result;
}

uint64_t sub_2489787F8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_248978840(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 16) = v2;
  return result;
}

uint64_t sub_248978884()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2489788CC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24897890C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_248978948(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_2489789C8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

Swift::Bool_optional __swiftcall EnrollmentAssetServer.getCloudDataExistsKVS()()
{
  v1 = v0;
  v2 = sub_248A121B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = (MEMORY[0x28223BE20])();
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - v8;
  v10 = v0[32];
  v11 = v0[33];
  __swift_project_boxed_opaque_existential_1(v0 + 29, v10);
  (*(v11 + 8))(v10, v11);
  if (qword_28150F5E0 != -1)
  {
    swift_once();
  }

  v12 = sub_248A122D0();
  __swift_project_value_buffer(v12, qword_2815105A8);
  (*(v3 + 16))(v7, v9, v2);
  v13 = sub_248A122B0();
  v14 = sub_248A12E80();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v31 = v29;
    *v15 = 136446210;
    v16 = sub_248A12160();
    v30 = v1;
    v17 = v2;
    v19 = v18;
    v20 = v7;
    v21 = *(v3 + 8);
    v21(v20, v17);
    v22 = sub_24897BC00(v16, v19, &v31);
    v2 = v17;
    v1 = v30;

    *(v15 + 4) = v22;
    _os_log_impl(&dword_248975000, v13, v14, "Cloud data KVS state: %{public}s", v15, 0xCu);
    v23 = v29;
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x24C1E0A80](v23, -1, -1);
    MEMORY[0x24C1E0A80](v15, -1, -1);
  }

  else
  {

    v24 = v7;
    v21 = *(v3 + 8);
    v21(v24, v2);
  }

  v25 = v1[41];
  sub_248A12180();
  sub_248A12050();
  v26.value = sub_248A12170();
  v21(v9, v2);
  return v26;
}

uint64_t sub_248978CE4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_248978D74;

  return sub_2489F1598();
}

uint64_t sub_248978D74()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_248978E68()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB52D0, &qword_248A14980);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v18 - v4;
  if (qword_28150F5E0 != -1)
  {
    swift_once();
  }

  v6 = sub_248A122D0();
  __swift_project_value_buffer(v6, qword_2815105A8);
  sub_2489BDB14(0xD000000000000075, 0x8000000248A18980, 0xD000000000000027, 0x8000000248A18A60);
  v7 = v0[32];
  v8 = v0[33];
  __swift_project_boxed_opaque_existential_1(v0 + 29, v7);
  v9 = (*(v8 + 48))(v7, v8);
  if (v10)
  {
    v11 = v9;
    v12 = v10;
    v13 = sub_248A12D40();
    (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = v1;
    v14[5] = v11;
    v14[6] = v12;

    sub_2489E5FD4(0, 0, v5, &unk_248A149A0, v14);
  }

  else
  {
    v19 = sub_248A122B0();
    v15 = sub_248A12E80();
    if (os_log_type_enabled(v19, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_248975000, v19, v15, "deleteEventKVS is nil. No delete from iCloud event received, do not disable syncing.", v16, 2u);
      MEMORY[0x24C1E0A80](v16, -1, -1);
    }

    v17 = v19;
  }
}

Swift::Void __swiftcall EnrollmentAssetServer.registerForKVSNotification()()
{
  v1 = v0;
  if (qword_28150F5E0 != -1)
  {
    swift_once();
  }

  v2 = sub_248A122D0();
  __swift_project_value_buffer(v2, qword_2815105A8);
  sub_2489BDB14(0xD000000000000075, 0x8000000248A18980, 0xD00000000000001CLL, 0x8000000248A18A00);
  v3 = [objc_opt_self() defaultCenter];
  [v3 addObserver:v1 selector:sel_handleKVSUpdate_ name:*MEMORY[0x277CCA7C0] object:0];

  v4 = v1[32];
  v5 = v1[33];
  __swift_project_boxed_opaque_existential_1(v1 + 29, v4);
  (*(v5 + 56))(v4, v5);
}

uint64_t sub_248979258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_248A123B0();
  v6[5] = v7;
  v8 = *(v7 - 8);
  v6[6] = v8;
  v9 = *(v8 + 64) + 15;
  v6[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24897931C, 0, 0);
}

uint64_t sub_24897931C()
{
  v1 = *(v0 + 16);
  v2 = v1[6];
  v3 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v2);
  v4 = *(v3 + 40);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v6[1] = sub_248979444;

  return v8(v2, v3);
}

uint64_t sub_248979444(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v7 = sub_248979DC8;
  }

  else
  {
    *(v4 + 112) = a1 & 1;
    v7 = sub_248979570;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_248979570()
{
  if (*(v0 + 112))
  {
    if (qword_28150F5E0 != -1)
    {
      swift_once();
    }

    v1 = sub_248A122D0();
    __swift_project_value_buffer(v1, qword_2815105A8);
    v2 = sub_248A122B0();
    v3 = sub_248A12E80();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_248975000, v2, v3, "CloudDataExists = true. This indicates that data has not been deleted from iCloud. Do not proceed with disabling syncing.", v4, 2u);
      MEMORY[0x24C1E0A80](v4, -1, -1);
    }

    v5 = sub_248A122B0();
    v6 = sub_248A12E80();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_248975000, v5, v6, "Found previous delete event string upon log in, but cloud data exists now. Setting user default on this device to match the delete UUID stored in KVS.", v7, 2u);
      MEMORY[0x24C1E0A80](v7, -1, -1);
    }

    v9 = *(v0 + 24);
    v8 = *(v0 + 32);
    v10 = *(v0 + 16);

    v11 = *(v10 + 328);
    sub_248A120B0();
LABEL_30:
    v29 = *(v0 + 56);

    v30 = *(v0 + 8);

    return v30();
  }

  *(v0 + 80) = *(*(v0 + 16) + 328);
  v12 = sub_248A12080();
  if (v13)
  {
    if (v12 == *(v0 + 24) && v13 == *(v0 + 32))
    {
    }

    else
    {
      v15 = sub_248A13340();

      if ((v15 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    if (qword_28150F5E0 != -1)
    {
      swift_once();
    }

    v25 = sub_248A122D0();
    __swift_project_value_buffer(v25, qword_2815105A8);
    v26 = sub_248A122B0();
    v27 = sub_248A12E80();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_248975000, v26, v27, "previousDeleteEvent == currentDeleteEvent. Not a new unique delete from iCLoud event. Do not proceed with disabling syncing.", v28, 2u);
      MEMORY[0x24C1E0A80](v28, -1, -1);
    }

    goto LABEL_30;
  }

LABEL_15:
  if (qword_28150F5E0 != -1)
  {
    swift_once();
  }

  v16 = sub_248A122D0();
  __swift_project_value_buffer(v16, qword_2815105A8);
  v17 = sub_248A122B0();
  v18 = sub_248A12E80();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_248975000, v17, v18, "New delete event occurred on a different device logged into this account. Disabling sync. Deleting local data (on iOS only)", v19, 2u);
    MEMORY[0x24C1E0A80](v19, -1, -1);
  }

  if (qword_28150F5D8 != -1)
  {
    swift_once();
  }

  v20 = *(v0 + 16);
  __swift_project_value_buffer(v16, qword_281510590);
  sub_2489BDB14(0xD000000000000071, 0x8000000248A18A90, 0xD00000000000001BLL, 0x8000000248A18B10);
  v21 = v20[27];
  v22 = v20[28];
  __swift_project_boxed_opaque_existential_1(v20 + 24, v21);
  v23 = *(MEMORY[0x277D05150] + 4);
  v24 = swift_task_alloc();
  *(v0 + 88) = v24;
  *v24 = v0;
  v24[1] = sub_2489799E0;

  return MEMORY[0x28215AB98](0, v21, v22);
}

uint64_t sub_2489799E0()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v2 + 56);

    v6 = *(v4 + 8);

    return v6();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_248979B2C, 0, 0);
  }
}

uint64_t sub_248979B2C()
{
  (*(v0[6] + 104))(v0[7], *MEMORY[0x277D04E98], v0[5]);
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = sub_248979BE8;
  v2 = v0[7];
  v3 = v0[2];

  return sub_2489EE214(v2);
}

uint64_t sub_248979BE8()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v8 = *v1;
  *(*v1 + 104) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_24897A374;
  }

  else
  {
    v6 = sub_248979D58;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_248979D58()
{
  v1 = v0[10];
  v2 = v0[3];
  v3 = v0[4];
  sub_248A120B0();
  v4 = v0[7];

  v5 = v0[1];

  return v5();
}

uint64_t sub_248979DC8()
{
  if (qword_28150F5E0 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = sub_248A122D0();
  __swift_project_value_buffer(v2, qword_2815105A8);
  v3 = v1;
  v4 = sub_248A122B0();
  v5 = sub_248A12E60();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[9];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_248975000, v4, v5, "ManagedAssets was unable to check for cloud zones. Error: %@", v7, 0xCu);
    sub_24897CA88(v8);
    MEMORY[0x24C1E0A80](v8, -1, -1);
    MEMORY[0x24C1E0A80](v7, -1, -1);
  }

  v11 = v0[9];
  v12 = v0[2];

  v13.value = EnrollmentAssetServer.getCloudDataExistsKVS()().value;
  if (v13.value != 2 && v13.value)
  {
    if (qword_28150F5E0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v2, qword_2815105A8);
    v14 = sub_248A122B0();
    v15 = sub_248A12E80();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_248975000, v14, v15, "CloudDataExists = true. This indicates that data has not been deleted from iCloud. Do not proceed with disabling syncing.", v16, 2u);
      MEMORY[0x24C1E0A80](v16, -1, -1);
    }

    v17 = sub_248A122B0();
    v18 = sub_248A12E80();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_248975000, v17, v18, "Found previous delete event string upon log in, but cloud data exists now. Setting user default on this device to match the delete UUID stored in KVS.", v19, 2u);
      MEMORY[0x24C1E0A80](v19, -1, -1);
    }

    v21 = v0[3];
    v20 = v0[4];
    v22 = v0[2];

    v23 = *(v22 + 328);
    sub_248A120B0();
LABEL_24:
    v30 = v0[7];

    v31 = v0[1];

    return v31();
  }

  v0[10] = *(v0[2] + 328);
  v24 = sub_248A12080();
  if (v25)
  {
    if (v24 == v0[3] && v25 == v0[4])
    {

LABEL_19:
      if (qword_28150F5E0 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v2, qword_2815105A8);
      v27 = sub_248A122B0();
      v28 = sub_248A12E80();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_248975000, v27, v28, "previousDeleteEvent == currentDeleteEvent. Not a new unique delete from iCLoud event. Do not proceed with disabling syncing.", v29, 2u);
        MEMORY[0x24C1E0A80](v29, -1, -1);
      }

      goto LABEL_24;
    }

    v26 = sub_248A13340();

    if (v26)
    {
      goto LABEL_19;
    }
  }

  if (qword_28150F5E0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v2, qword_2815105A8);
  v33 = sub_248A122B0();
  v34 = sub_248A12E80();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_248975000, v33, v34, "New delete event occurred on a different device logged into this account. Disabling sync. Deleting local data (on iOS only)", v35, 2u);
    MEMORY[0x24C1E0A80](v35, -1, -1);
  }

  if (qword_28150F5D8 != -1)
  {
    swift_once();
  }

  v36 = v0[2];
  __swift_project_value_buffer(v2, qword_281510590);
  sub_2489BDB14(0xD000000000000071, 0x8000000248A18A90, 0xD00000000000001BLL, 0x8000000248A18B10);
  v37 = v36[27];
  v38 = v36[28];
  __swift_project_boxed_opaque_existential_1(v36 + 24, v37);
  v39 = *(MEMORY[0x277D05150] + 4);
  v40 = swift_task_alloc();
  v0[11] = v40;
  *v40 = v0;
  v40[1] = sub_2489799E0;

  return MEMORY[0x28215AB98](0, v37, v38);
}

uint64_t sub_24897A374()
{
  v1 = v0[13];
  v2 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t EnrollmentAssetServer.setCloudDataExistsKVS(value:)(char a1)
{
  *(v2 + 24) = v1;
  *(v2 + 96) = a1;
  v3 = sub_248A121B0();
  *(v2 + 32) = v3;
  v4 = *(v3 - 8);
  *(v2 + 40) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24897A49C, 0, 0);
}

uint64_t sub_24897A49C()
{
  v1 = v0[3];
  v0[7] = *(v1 + 312);
  v2 = *(v1 + 320);
  v0[8] = v2;
  v0[9] = swift_getObjectType();
  v3 = *(v2 + 16);
  v2 += 16;
  v0[10] = v3;
  v0[11] = v2 & 0xFFFFFFFFFFFFLL | 0x5508000000000000;
  v4 = *(v2 - 8);
  v6 = sub_248A12CD0();

  return MEMORY[0x2822009F8](sub_24897A53C, v6, v5);
}

uint64_t sub_24897A53C()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 56);
  (*(v0 + 80))(*(v0 + 72), *(v0 + 64));

  return MEMORY[0x2822009F8](sub_24897A5B0, 0, 0);
}

uint64_t sub_24897A5B0()
{
  v28 = v0;
  if ((*(v0 + 16) & 2) != 0)
  {
    if (qword_28150F5E0 != -1)
    {
      swift_once();
    }

    v19 = sub_248A122D0();
    __swift_project_value_buffer(v19, qword_2815105A8);
    v20 = sub_248A122B0();
    v21 = sub_248A12E80();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_248975000, v20, v21, "First unlock has not occured yet.", v22, 2u);
      MEMORY[0x24C1E0A80](v22, -1, -1);
    }

    v23 = *(v0 + 48);

    v24 = sub_248A12350();
    sub_24897C55C(&qword_27EEB51C0, MEMORY[0x277D04E68]);
    swift_allocError();
    (*(*(v24 - 8) + 104))(v25, *MEMORY[0x277D04E50], v24);
    swift_willThrow();

    v18 = *(v0 + 8);
  }

  else
  {
    if (qword_28150F5E0 != -1)
    {
      swift_once();
    }

    v1 = sub_248A122D0();
    __swift_project_value_buffer(v1, qword_2815105A8);
    v2 = sub_248A122B0();
    v3 = sub_248A12E80();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = *(v0 + 96);
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v27 = v6;
      *v5 = 136446210;
      if (v4)
      {
        v7 = 1702195828;
      }

      else
      {
        v7 = 0x65736C6166;
      }

      if (v4)
      {
        v8 = 0xE400000000000000;
      }

      else
      {
        v8 = 0xE500000000000000;
      }

      v9 = sub_24897BC00(v7, v8, &v27);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_248975000, v2, v3, "Setting cloud data KVS state: %{public}s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x24C1E0A80](v6, -1, -1);
      MEMORY[0x24C1E0A80](v5, -1, -1);
    }

    v11 = *(v0 + 40);
    v10 = *(v0 + 48);
    v13 = *(v0 + 24);
    v12 = *(v0 + 32);
    v14 = *(v0 + 96);
    v15 = v13[32];
    v16 = v13[33];
    __swift_project_boxed_opaque_existential_1(v13 + 29, v15);
    sub_248A121C0();
    (*(v16 + 16))(v10, v15, v16);
    (*(v11 + 8))(v10, v12);
    v17 = v13[41];
    sub_248A12050();

    v18 = *(v0 + 8);
  }

  return v18();
}

uint64_t EnrollmentAssetServer.setAssociatedAVPKVS(value:)(char a1)
{
  *(v2 + 24) = v1;
  *(v2 + 96) = a1;
  v3 = sub_248A121B0();
  *(v2 + 32) = v3;
  v4 = *(v3 - 8);
  *(v2 + 40) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24897AA04, 0, 0);
}

uint64_t sub_24897AA04()
{
  v1 = v0[3];
  v0[7] = *(v1 + 312);
  v2 = *(v1 + 320);
  v0[8] = v2;
  v0[9] = swift_getObjectType();
  v3 = *(v2 + 16);
  v2 += 16;
  v0[10] = v3;
  v0[11] = v2 & 0xFFFFFFFFFFFFLL | 0x5508000000000000;
  v4 = *(v2 - 8);
  v6 = sub_248A12CD0();

  return MEMORY[0x2822009F8](sub_24897AAA4, v6, v5);
}

uint64_t sub_24897AAA4()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 56);
  (*(v0 + 80))(*(v0 + 72), *(v0 + 64));

  return MEMORY[0x2822009F8](sub_24897AB18, 0, 0);
}

uint64_t sub_24897AB18()
{
  v28 = v0;
  if ((*(v0 + 16) & 2) != 0)
  {
    if (qword_28150F5E0 != -1)
    {
      swift_once();
    }

    v19 = sub_248A122D0();
    __swift_project_value_buffer(v19, qword_2815105A8);
    v20 = sub_248A122B0();
    v21 = sub_248A12E80();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_248975000, v20, v21, "First unlock has not occured yet.", v22, 2u);
      MEMORY[0x24C1E0A80](v22, -1, -1);
    }

    v23 = *(v0 + 48);

    v24 = sub_248A12350();
    sub_24897C55C(&qword_27EEB51C0, MEMORY[0x277D04E68]);
    swift_allocError();
    (*(*(v24 - 8) + 104))(v25, *MEMORY[0x277D04E50], v24);
    swift_willThrow();

    v18 = *(v0 + 8);
  }

  else
  {
    if (qword_28150F5E0 != -1)
    {
      swift_once();
    }

    v1 = sub_248A122D0();
    __swift_project_value_buffer(v1, qword_2815105A8);
    v2 = sub_248A122B0();
    v3 = sub_248A12E80();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = *(v0 + 96);
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v27 = v6;
      *v5 = 136446210;
      if (v4)
      {
        v7 = 1702195828;
      }

      else
      {
        v7 = 0x65736C6166;
      }

      if (v4)
      {
        v8 = 0xE400000000000000;
      }

      else
      {
        v8 = 0xE500000000000000;
      }

      v9 = sub_24897BC00(v7, v8, &v27);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_248975000, v2, v3, "Setting associated AVP KVS state: %{public}s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x24C1E0A80](v6, -1, -1);
      MEMORY[0x24C1E0A80](v5, -1, -1);
    }

    v11 = *(v0 + 40);
    v10 = *(v0 + 48);
    v13 = *(v0 + 24);
    v12 = *(v0 + 32);
    v14 = *(v0 + 96);
    v15 = v13[32];
    v16 = v13[33];
    __swift_project_boxed_opaque_existential_1(v13 + 29, v15);
    sub_248A121C0();
    (*(v16 + 32))(v10, v15, v16);
    (*(v11 + 8))(v10, v12);
    v17 = v13[41];
    sub_248A12020();

    v18 = *(v0 + 8);
  }

  return v18();
}

Swift::Bool_optional __swiftcall EnrollmentAssetServer.getAssociatedAVPKVS()()
{
  v1 = v0;
  v2 = sub_248A121B0();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v39 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v39 - v11;
  v13 = v0[32];
  v14 = v0[33];
  __swift_project_boxed_opaque_existential_1(v0 + 29, v13);
  (*(v14 + 24))(v13, v14);
  if (qword_28150F5E0 != -1)
  {
    swift_once();
  }

  v15 = sub_248A122D0();
  v16 = __swift_project_value_buffer(v15, qword_2815105A8);
  v44 = v3[2];
  v44(v10, v12, v2);
  v45 = v16;
  v17 = sub_248A122B0();
  v18 = sub_248A12E80();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v43 = v1;
    v20 = v19;
    v40 = swift_slowAlloc();
    v41 = v7;
    v46 = v40;
    *v20 = 136446210;
    v21 = sub_248A12160();
    v42 = v12;
    v22 = v2;
    v23 = v3;
    v25 = v24;
    v26 = v23[1];
    v26(v10, v22);
    v27 = v26;
    v28 = sub_24897BC00(v21, v25, &v46);
    v2 = v22;
    v12 = v42;

    *(v20 + 4) = v28;
    _os_log_impl(&dword_248975000, v17, v18, "Associated AVP KVS state: %{public}s", v20, 0xCu);
    v29 = v40;
    __swift_destroy_boxed_opaque_existential_0(v40);
    v7 = v41;
    MEMORY[0x24C1E0A80](v29, -1, -1);
    v30 = v20;
    v1 = v43;
    MEMORY[0x24C1E0A80](v30, -1, -1);

    v31 = v27;
  }

  else
  {

    v31 = v3[1];
    v31(v10, v2);
  }

  v44(v7, v12, v2);
  v32 = sub_248A122B0();
  v33 = sub_248A12E80();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 67240192;
    v35 = sub_248A12180() & 1;
    v31(v7, v2);
    *(v34 + 4) = v35;
    _os_log_impl(&dword_248975000, v32, v33, "Setting associated AVP user default to: %{BOOL,public}d.", v34, 8u);
    MEMORY[0x24C1E0A80](v34, -1, -1);
  }

  else
  {
    v31(v7, v2);
  }

  v36 = v1[41];
  sub_248A12180();
  sub_248A12020();
  v37.value = sub_248A12170();
  v31(v12, v2);
  return v37;
}

uint64_t sub_24897B2C8()
{
  v1 = v0[3];
  v0[4] = *(v1 + 312);
  v2 = *(v1 + 320);
  v0[5] = v2;
  v0[6] = swift_getObjectType();
  v3 = *(v2 + 16);
  v2 += 16;
  v0[7] = v3;
  v0[8] = v2 & 0xFFFFFFFFFFFFLL | 0x5508000000000000;
  v4 = *(v2 - 8);
  v6 = sub_248A12CD0();

  return MEMORY[0x2822009F8](sub_24897B368, v6, v5);
}

uint64_t sub_24897B368()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 32);
  (*(v0 + 56))(*(v0 + 48), *(v0 + 40));

  return MEMORY[0x2822009F8](sub_24897B3DC, 0, 0);
}

uint64_t sub_24897B3DC()
{
  if ((*(v0 + 16) & 2) != 0)
  {
    if (qword_28150F5E0 != -1)
    {
      swift_once();
    }

    v5 = sub_248A122D0();
    __swift_project_value_buffer(v5, qword_2815105A8);
    v6 = sub_248A122B0();
    v7 = sub_248A12E80();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_248975000, v6, v7, "First unlock has not occured yet.", v8, 2u);
      MEMORY[0x24C1E0A80](v8, -1, -1);
    }

    v9 = sub_248A12350();
    sub_24897C55C(&qword_27EEB51C0, MEMORY[0x277D04E68]);
    swift_allocError();
    (*(*(v9 - 8) + 104))(v10, *MEMORY[0x277D04E50], v9);
    swift_willThrow();
    v4 = *(v0 + 8);
  }

  else
  {
    v1 = *(v0 + 24);
    v2 = v1[32];
    v3 = v1[33];
    __swift_project_boxed_opaque_existential_1(v1 + 29, v2);
    (*(v3 + 40))(v2, v3);
    v4 = *(v0 + 8);
  }

  return v4();
}

uint64_t sub_24897B5DC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_24897B634()
{
  v1 = *v0;
  v2 = sub_248A12B60();
  v3 = MEMORY[0x24C1DF8E0](v2);

  return v3;
}

uint64_t sub_24897B670()
{
  v1 = *v0;
  sub_248A12B60();
  sub_248A12BB0();
}

uint64_t sub_24897B6C4()
{
  v1 = *v0;
  sub_248A12B60();
  sub_248A13430();
  sub_248A12BB0();
  v2 = sub_248A13460();

  return v2;
}

uint64_t sub_24897B738(uint64_t a1, id *a2)
{
  result = sub_248A12B40();
  *a2 = 0;
  return result;
}

uint64_t sub_24897B7B0(uint64_t a1, id *a2)
{
  v3 = sub_248A12B50();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_24897B830@<X0>(uint64_t *a1@<X8>)
{
  sub_248A12B60();
  v2 = sub_248A12B30();

  *a1 = v2;
  return result;
}

void *sub_24897B89C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_24897B8C8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_24897B978(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_248A12B60();
  v6 = v5;
  if (v4 == sub_248A12B60() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_248A13340();
  }

  return v9 & 1;
}

uint64_t sub_24897BA00@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_24897C82C(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_24897BA40(uint64_t a1)
{
  v2 = sub_24897C55C(&qword_27EEB5670, type metadata accessor for AVOutputContextSetOutputDeviceOptionsKey);
  v3 = sub_24897C55C(&qword_27EEB52C0, type metadata accessor for AVOutputContextSetOutputDeviceOptionsKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_24897BAFC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_248A12B30();

  *a2 = v5;
  return result;
}

uint64_t sub_24897BB44(uint64_t a1)
{
  v2 = sub_24897C55C(&qword_27EEB52A8, type metadata accessor for FileAttributeKey);
  v3 = sub_24897C55C(&unk_27EEB52B0, type metadata accessor for FileAttributeKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_24897BC00(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_24897BCCC(v11, 0, 0, 1, a1, a2);
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
    sub_24897C864(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_24897BCCC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_24897BDD8(a5, a6);
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
    result = sub_248A13160();
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

uint64_t sub_24897BDD8(uint64_t a1, unint64_t a2)
{
  v4 = sub_24897BE24(a1, a2);
  sub_24897BF54(&unk_285B60640);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_24897BE24(uint64_t a1, unint64_t a2)
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

  v6 = sub_24897C040(v5, 0);
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

  result = sub_248A13160();
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
        v10 = sub_248A12C10();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_24897C040(v10, 0);
        result = sub_248A130F0();
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

uint64_t sub_24897BF54(uint64_t result)
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

  result = sub_24897C0B4(result, v12, 1, v3);
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

void *sub_24897C040(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB52C8, &qword_248A14978);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_24897C0B4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB52C8, &qword_248A14978);
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

void _s13DeviceSharing21EnrollmentAssetServerC15handleKVSUpdateyySo17OS_os_transaction_pYbF_0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB52D0, &qword_248A14980);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v13 - v4;
  if (qword_28150F5E0 != -1)
  {
    swift_once();
  }

  v6 = sub_248A122D0();
  __swift_project_value_buffer(v6, qword_2815105A8);
  sub_2489BDB14(0xD000000000000075, 0x8000000248A18980, 0xD000000000000013, 0x8000000248A18A40);
  v7.value = EnrollmentAssetServer.getCloudDataExistsKVS()().value;
  v8 = sub_248A122B0();
  v9 = sub_248A12E80();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67240192;
    *(v10 + 4) = v7.value;
    _os_log_impl(&dword_248975000, v8, v9, "Cloud data KVS was updated to: %{BOOL,public}d. Set CloudDataExists user default following a KVS notification.", v10, 8u);
    MEMORY[0x24C1E0A80](v10, -1, -1);
  }

  v11 = sub_248A12D40();
  (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v1;

  sub_2489AC334(0, 0, v5, &unk_248A14990, v12);

  sub_248978E68();
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_24897C55C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24897C82C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_24897C864(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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

uint64_t sub_24897C90C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_248978D74;

  return sub_248978CE4();
}

uint64_t sub_24897C9C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_248978D74;

  return sub_248979258(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_24897CA88(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5600, &unk_248A15210);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_24897CB18(uint64_t a1, unint64_t *a2)
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

uint64_t sub_24897CBB4()
{
  v1 = [v0 availableOutputDevices];
  sub_24897CCE8();
  v2 = sub_248A12C90();

  return v2;
}

id (*sub_24897CC30(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = [v1 discoveryMode];
  return sub_24897CC84;
}

unint64_t sub_24897CCE8()
{
  result = qword_27EEB5350;
  if (!qword_27EEB5350)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EEB5350);
  }

  return result;
}

id static NSBundle.deviceSharingFramework.getter()
{
  _s30DeviceSharingFrameworkSentinelCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];

  return v1;
}

uint64_t (*sub_24897CDD4(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_248A12930();
  return sub_24897CE44;
}

uint64_t (*sub_24897CE50(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_248A12960();
  return sub_24897D440;
}

void sub_24897CEC0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_24897CFD8()
{
  v0 = sub_248A128D0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = sub_248A128F0();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = sub_248A12910();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = (v21 - v11);
  v21[0] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5358, &qword_248A14B18) + 48);
  *v12 = 0xD000000000000025;
  v12[1] = 0x8000000248A18BA0;
  sub_248A128C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5360, &qword_248A14B20);
  v13 = *(v1 + 72);
  v14 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_248A14AE0;
  sub_248A128C0();
  sub_248A128B0();
  v21[1] = v15;
  sub_24897D33C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5370, &qword_248A14B28);
  sub_24897D394();
  sub_248A12FA0();
  sub_248A12900();
  (*(v6 + 104))(v12, *MEMORY[0x277CD90A8], v5);
  sub_248A127B0();
  sub_248A12760();
  sub_248A12740();
  sub_248A127A0();
  nw_parameters_set_include_ble();
  swift_unknownObjectRelease();
  (*(v6 + 16))(v10, v12, v5);
  v16 = sub_248A12A00();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v19 = sub_248A12990();
  (*(v6 + 8))(v12, v5);
  return v19;
}

unint64_t sub_24897D33C()
{
  result = qword_27EEB5368;
  if (!qword_27EEB5368)
  {
    sub_248A128D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB5368);
  }

  return result;
}

unint64_t sub_24897D394()
{
  result = qword_27EEB5378;
  if (!qword_27EEB5378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB5370, &qword_248A14B28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB5378);
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

uint64_t sub_24897D44C()
{
  sub_248A13430();
  MEMORY[0x24C1E0100](0);
  return sub_248A13460();
}

uint64_t sub_24897D4B8()
{
  sub_248A13430();
  MEMORY[0x24C1E0100](0);
  return sub_248A13460();
}

uint64_t sub_24897D4F8(uint64_t a1, uint64_t a2)
{
  *(v2 + 224) = a1;
  *(v2 + 232) = a2;
  return MEMORY[0x2822009F8](sub_24897D518, 0, 0);
}

uint64_t sub_24897D518()
{
  v19 = v0;
  if (qword_28150F5E0 != -1)
  {
    swift_once();
  }

  v1 = v0[28];
  v2 = sub_248A122D0();
  __swift_project_value_buffer(v2, qword_2815105A8);
  sub_2489BDB14(0xD00000000000007CLL, 0x8000000248A18BD0, 0xD00000000000001BLL, 0x8000000248A18CD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB59B0, &qword_248A14CA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_248A14B30;
  v4 = *MEMORY[0x277D25B58];
  *(inited + 32) = sub_248A12B60();
  *(inited + 40) = v5;
  v6 = sub_24897DA4C();
  *(inited + 72) = MEMORY[0x277D83E88];
  *(inited + 48) = v6;
  sub_248990FB8(inited);
  swift_setDeallocating();
  sub_248983734(inited + 32, &qword_27EEB56C0, &qword_248A14CB0);
  v7 = sub_248A122B0();
  v8 = sub_248A12E80();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136446210;
    v11 = sub_248A12AB0();
    v13 = sub_24897BC00(v11, v12, &v18);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_248975000, v7, v8, "Delete options: %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x24C1E0A80](v10, -1, -1);
    MEMORY[0x24C1E0A80](v9, -1, -1);
  }

  v14 = v0[29];
  v15 = sub_248A12A80();
  v0[30] = v15;

  v0[2] = v0;
  v0[3] = sub_24897D868;
  v16 = swift_continuation_init();
  v0[27] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB53C0, &qword_248A14D08);
  v0[20] = MEMORY[0x277D85DD0];
  v0[21] = 1107296256;
  v0[22] = sub_24897DC14;
  v0[23] = &block_descriptor_21;
  v0[24] = v16;
  [v14 deleteAllAssetsWithOptions:v15 completion:v0 + 20];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24897D868()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 248) = v2;
  if (v2)
  {
    v3 = sub_24897D9DC;
  }

  else
  {
    v3 = sub_24897D978;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24897D978()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24897D9DC()
{
  v1 = v0[30];
  v2 = v0[31];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[31];

  return v3();
}

uint64_t sub_24897DA4C()
{
  v1 = v0;
  v2 = sub_248A123B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277D04E98])
  {
    return 4;
  }

  if (v7 == *MEMORY[0x277D04E90])
  {
    return 8;
  }

  if (v7 == *MEMORY[0x277D04E88])
  {
    return 16;
  }

  v9[0] = 0;
  v9[1] = 0xE000000000000000;
  sub_248A13100();
  MEMORY[0x24C1DF8B0](0xD000000000000020, 0x8000000248A18D40);
  sub_248A131F0();
  result = sub_248A13200();
  __break(1u);
  return result;
}

uint64_t sub_24897DC14(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5EB0, &qword_248A15C20);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x282200950](v8);
  }
}

uint64_t sub_24897DCE0()
{
  v1 = v0[18];
  v0[2] = v0;
  v0[7] = v0 + 20;
  v0[3] = sub_24897DDFC;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB53B8, &qword_248A14CF8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24897E0A8;
  v0[13] = &block_descriptor_15;
  v0[14] = v2;
  [v1 checkIfCloudZonesWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24897DDFC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 152) = v2;
  if (v2)
  {
    v3 = sub_24897E038;
  }

  else
  {
    v3 = sub_24897DF0C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24897DF0C()
{
  v1 = *(v0 + 160);
  if (qword_28150F5E0 != -1)
  {
    swift_once();
  }

  v2 = sub_248A122D0();
  __swift_project_value_buffer(v2, qword_2815105A8);
  v3 = sub_248A122B0();
  v4 = sub_248A12E80();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67240192;
    *(v5 + 4) = v1;
    _os_log_impl(&dword_248975000, v3, v4, "Zones exist: %{BOOL,public}d", v5, 8u);
    MEMORY[0x24C1E0A80](v5, -1, -1);
  }

  v6 = *(v0 + 8);

  return v6(v1);
}

uint64_t sub_24897E038()
{
  v1 = *(v0 + 152);
  swift_willThrow();
  v2 = *(v0 + 8);
  v3 = *(v0 + 152);

  return v2(0);
}

uint64_t sub_24897E0A8(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5EB0, &qword_248A15C20);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_24897E174(void *a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = 0;
  v10[0] = 0;
  v1 = [a1 getAllProfilesWith:v10 error:&v9];
  v2 = v9;
  if (!v1)
  {
    v6 = v9;
    sub_248A11A40();

LABEL_6:
    swift_willThrow();

    goto LABEL_7;
  }

  v3 = v1;
  v4 = v9;

  v5 = v10[0];
  if (!v10[0])
  {
    sub_248983634();
    swift_allocError();
    goto LABEL_6;
  }

  v2 = sub_248A12B60();

LABEL_7:
  v7 = *MEMORY[0x277D85DE8];
  return v2;
}

unint64_t sub_24897E27C(uint64_t a1, void *a2)
{
  v5 = sub_248A12480();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_24897E58C(a2);
  if (!v2)
  {
    v11 = result;
    v12 = sub_248991224(MEMORY[0x277D84F90]);
    (*(v6 + 16))(v9, a1, v5);
    v46 = v12;
    v13 = *(v11 + 16);
    if (v13)
    {
      v14 = 0;
      v15 = (v11 + 48);
      while (v14 < *(v11 + 16))
      {
        ++v14;
        v16 = *(v15 - 1);
        v17 = *v15;
        v39 = *(v15 - 2);
        v40 = v16;
        v41 = v17;

        v18 = v17;
        sub_248981B24(&v46, &v39, v9);

        v15 += 3;
        if (v13 == v14)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      (*(v6 + 8))(v9, v5);

      v19 = v46;
      v46 = sub_24899137C(MEMORY[0x277D84F90]);
      v20 = 1 << *(v19 + 32);
      v21 = -1;
      if (v20 < 64)
      {
        v21 = ~(-1 << v20);
      }

      v22 = v21 & *(v19 + 64);
      v23 = (v20 + 63) >> 6;

      for (i = 0; v22; i = v25)
      {
        v25 = i;
LABEL_13:
        v26 = __clz(__rbit64(v22)) | (v25 << 6);
        v27 = *(v19 + 48) + 32 * v26;
        v28 = *(v27 + 8);
        v29 = *(v27 + 16);
        v30 = (*(v19 + 56) + 24 * v26);
        v31 = *v30;
        v32 = v30[1];
        v33 = v30[2];
        v34 = *(v27 + 24);
        v39 = *v27;
        v40 = v28;
        v41 = v29;
        v42 = v34;
        v43 = v31;
        v44 = v32;
        v45 = v33;
        sub_2489837A4(v39, v28, v29, v34);

        v35 = v33;
        sub_24897E7A8(&v46, &v39);
        v22 &= v22 - 1;
        v36 = v45;
        sub_2489837C4(v39, v40, v41, v42);
      }

      while (1)
      {
        v25 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        if (v25 >= v23)
        {

          return v46;
        }

        v22 = *(v19 + 64 + 8 * v25);
        ++i;
        if (v22)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
    }

    __break(1u);

    v37 = v45;
    sub_2489837C4(v39, v40, v41, v42);

    __break(1u);
  }

  return result;
}

id sub_24897E58C(id a1)
{
  v16[15] = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB53A0, &qword_248A14CE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_248A14B30;
  v4 = *MEMORY[0x277D25B50];
  v16[0] = sub_248A12B60();
  v16[1] = v5;
  v6 = MEMORY[0x277D837D0];
  sub_248A130A0();
  v7 = sub_24897E174(a1);
  if (v1)
  {
    sub_248983688(inited + 32);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB53A8, &qword_248A14CE8);
    swift_arrayDestroy();
  }

  else
  {
    *(inited + 96) = v6;
    *(inited + 72) = v7;
    *(inited + 80) = v8;
    sub_2489910E8(inited);
    swift_setDeallocating();
    sub_248983734(inited + 32, &qword_27EEB53A8, &qword_248A14CE8);
    v9 = sub_248A12A80();

    v16[0] = 0;
    v10 = [a1 queryAssetMetaDataWithOptions:v9 error:v16];

    v11 = v16[0];
    if (v10)
    {
      sub_2489836DC();
      v12 = sub_248A12AA0();
      v13 = v11;

      a1 = sub_24897EB48(v12);
    }

    else
    {
      a1 = v16[0];
      sub_248A11A40();

      swift_willThrow();
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t sub_24897E7A8(uint64_t *a1, uint64_t a2)
{
  v49 = a1;
  v48 = sub_248A12480();
  v3 = *(v48 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v48);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v44 = &v43 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v43 - v10;
  v12 = *a2;
  v13 = *(a2 + 8);
  v14 = *(a2 + 16);
  v15 = *(a2 + 24);
  v16 = *(a2 + 32);
  v17 = *(a2 + 40);
  v18 = *(a2 + 48);
  v19 = v15 < 2 || (v14 | v13 | v12) == 0;
  v45 = v16;
  v46 = v18;
  if (v19)
  {
    sub_2489837A4(v12, v13, v14, v15);

    v20 = v18;
    sub_248A12440();
  }

  else
  {
    sub_2489837A4(v12, v13, v14, 2u);

    v21 = v18;
    sub_248A12460();
  }

  v22 = *v49;
  if (*(*v49 + 16) && (v23 = sub_2489A7DFC(v11), (v24 & 1) != 0))
  {
    v25 = *(*(v22 + 56) + 8 * v23);
    v26 = *(v3 + 8);

    v27 = v11;
    v28 = v48;
    v47 = v3 + 8;
    v26(v27, v48);
    if (v15 >= 2 && v14 | v13 | v12)
    {
      v29 = v44;
      sub_248A12460();
      LOBYTE(v15) = 2;
    }

    else
    {
      v29 = v44;
      sub_248A12440();
    }

    sub_2489837C4(v12, v13, v14, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB53E0, &qword_248A14D30);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_248A14B30;
    *(inited + 32) = v45;
    *(inited + 40) = v17;
    v50 = v25;

    sub_2489C8D4C(inited);
    v39 = v50;
    v35 = v49;
    v40 = *v49;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v50 = *v35;
    sub_2489B02E8(v39, v29, isUniquelyReferenced_nonNull_native);
    v26(v29, v28);
  }

  else
  {
    v30 = v3 + 8;
    v31 = *(v3 + 8);
    v32 = v11;
    v33 = v48;
    v47 = v30;
    v31(v32, v48);
    if (v15 >= 2 && v14 | v13 | v12)
    {
      sub_248A12460();
      LOBYTE(v15) = 2;
    }

    else
    {
      sub_248A12440();
    }

    sub_2489837C4(v12, v13, v14, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB53E0, &qword_248A14D30);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_248A14B30;
    *(v34 + 32) = v45;
    *(v34 + 40) = v17;

    v35 = v49;
    v36 = *v49;
    v37 = swift_isUniquelyReferenced_nonNull_native();
    v50 = *v35;
    sub_2489B02E8(v34, v7, v37);
    v31(v7, v33);
  }

  *v35 = v50;
  return result;
}

id sub_24897EB48(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v30 = MEMORY[0x277D84F90];
  sub_2489CE5AC(0, v1, 0);
  v2 = v30;
  v4 = a1 + 64;
  v5 = -1 << *(a1 + 32);
  result = sub_248A12FB0();
  v7 = result;
  v8 = 0;
  v9 = *(a1 + 36);
  v26 = v1;
  v27 = v9;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
  {
    v11 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_22;
    }

    if (v9 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v28 = v8;
    v12 = (*(a1 + 48) + 16 * v7);
    v13 = v12[1];
    v29 = *v12;
    v14 = *(*(a1 + 56) + 8 * v7);
    v15 = *(v30 + 16);
    v16 = *(v30 + 24);

    result = v14;
    if (v15 >= v16 >> 1)
    {
      v25 = result;
      sub_2489CE5AC((v16 > 1), v15 + 1, 1);
      result = v25;
    }

    *(v30 + 16) = v15 + 1;
    v17 = (v30 + 24 * v15);
    v17[4] = v29;
    v17[5] = v13;
    v17[6] = result;
    v10 = 1 << *(a1 + 32);
    if (v7 >= v10)
    {
      goto LABEL_24;
    }

    v4 = a1 + 64;
    v18 = *(a1 + 64 + 8 * v11);
    if ((v18 & (1 << v7)) == 0)
    {
      goto LABEL_25;
    }

    v9 = v27;
    if (v27 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v19 = v18 & (-2 << (v7 & 0x3F));
    if (v19)
    {
      v10 = __clz(__rbit64(v19)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = v11 << 6;
      v21 = v11 + 1;
      v22 = (a1 + 72 + 8 * v11);
      while (v21 < (v10 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          result = sub_248983728(v7, v27, 0);
          v10 = __clz(__rbit64(v23)) + v20;
          goto LABEL_4;
        }
      }

      result = sub_248983728(v7, v27, 0);
    }

LABEL_4:
    v8 = v28 + 1;
    v7 = v10;
    if (v28 + 1 == v26)
    {
      return v2;
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
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_24897EDA8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v10 = *MEMORY[0x277D85DE8];
  *(v4 + 224) = a2;
  *(v4 + 232) = a4;
  *(v4 + 280) = a3;
  *(v4 + 216) = a1;
  v5 = sub_248A11AC0();
  *(v4 + 240) = v5;
  v6 = *(v5 - 8);
  *(v4 + 248) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 256) = swift_task_alloc();
  v8 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_24897EE9C, 0, 0);
}

uint64_t sub_24897EE9C()
{
  v43 = v0;
  v42[1] = *MEMORY[0x277D85DE8];
  if (qword_28150F5E0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 248);
  v1 = *(v0 + 256);
  v3 = *(v0 + 240);
  v5 = *(v0 + 216);
  v4 = *(v0 + 224);
  v6 = sub_248A122D0();
  __swift_project_value_buffer(v6, qword_2815105A8);
  (*(v2 + 16))(v1, v4, v3);

  v7 = sub_248A122B0();
  v8 = sub_248A12E80();

  v9 = os_log_type_enabled(v7, v8);
  v11 = *(v0 + 248);
  v10 = *(v0 + 256);
  v12 = *(v0 + 240);
  if (v9)
  {
    v13 = *(v0 + 216);
    v14 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v42[0] = v41;
    *v14 = 136315394;
    sub_248A12480();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5380, &qword_248A14CC0);
    sub_2489837E4(&unk_27EEB61C0, MEMORY[0x277D04ED0]);
    v15 = sub_248A12AB0();
    v17 = sub_24897BC00(v15, v16, v42);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2080;
    sub_2489837E4(&qword_27EEB53D0, MEMORY[0x277CC9260]);
    v18 = sub_248A132F0();
    v20 = v19;
    (*(v11 + 8))(v10, v12);
    v21 = sub_24897BC00(v18, v20, v42);

    *(v14 + 14) = v21;
    _os_log_impl(&dword_248975000, v7, v8, "Attempting to export: %s to: %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v41, -1, -1);
    MEMORY[0x24C1E0A80](v14, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v22 = *(v0 + 280);
  v23 = *(v0 + 216);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB59B0, &qword_248A14CA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_248A14AE0;
  v25 = *MEMORY[0x277D25B08];
  *(inited + 32) = sub_248A12B60();
  *(inited + 40) = v26;
  v27 = sub_248A12AC0();
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5380, &qword_248A14CC0);
  *(inited + 48) = v27;
  v28 = *MEMORY[0x277D25B10];
  *(inited + 80) = sub_248A12B60();
  *(inited + 88) = v29;
  v30 = MEMORY[0x277D839B0];
  *(inited + 120) = MEMORY[0x277D839B0];
  *(inited + 96) = 1;
  v31 = sub_248990FB8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB56C0, &qword_248A14CB0);
  swift_arrayDestroy();
  if (v22 == 1)
  {
    v32 = *MEMORY[0x277D25B00];
    v33 = sub_248A12B60();
    v35 = v34;
    *(v0 + 168) = v30;
    *(v0 + 144) = 1;
    sub_248983794((v0 + 144), (v0 + 176));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v42[0] = v31;
    sub_2489B04B4((v0 + 176), v33, v35, isUniquelyReferenced_nonNull_native);

    v31 = v42[0];
  }

  *(v0 + 264) = v31;
  v37 = swift_task_alloc();
  *(v0 + 272) = v37;
  *v37 = v0;
  v37[1] = sub_24897F34C;
  v38 = *(v0 + 232);
  v39 = *MEMORY[0x277D85DE8];

  return sub_24897F638(0x652065726F666542, 0xED000074726F7078, v38);
}

uint64_t sub_24897F34C()
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 272);
  v5 = *v0;

  v2 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_24897F474, 0, 0);
}

uint64_t sub_24897F474()
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = v0[33];
  v2 = v0[28];
  v3 = v0[29];
  sub_248A11AA0();
  v4 = sub_248A12B30();

  v5 = sub_248A12A80();

  sub_24897E174(v3);
  v6 = v0[29];
  v7 = sub_248A12B30();

  v0[26] = 0;
  LODWORD(v6) = [v6 exportAssetsToPath:v4 option:v5 profile:v7 error:v0 + 26];

  v8 = v0[26];
  if (v6)
  {
    v9 = v0[32];
    v10 = v8;
  }

  else
  {
    v13 = v8;
    sub_248A11A40();

    swift_willThrow();
    v14 = v0[32];
  }

  v11 = v0[1];
  v12 = *MEMORY[0x277D85DE8];

  return v11();
}

uint64_t sub_24897F638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  return MEMORY[0x2822009F8](sub_24897F65C, 0, 0);
}

uint64_t sub_24897F65C()
{
  v18 = v0;
  v1 = sub_24897E58C(*(v0 + 64));
  if (qword_28150F5E0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 56);
  v3 = sub_248A122D0();
  *(v0 + 72) = __swift_project_value_buffer(v3, qword_2815105A8);

  v4 = sub_248A122B0();
  v5 = sub_248A12E80();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = *(v0 + 48);
    v6 = *(v0 + 56);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17[0] = v9;
    *v8 = 136446466;
    *(v8 + 4) = sub_24897BC00(v7, v6, v17);
    *(v8 + 12) = 2082;
    v17[1] = v1;
    v10 = AllAssetsRepresentation.description.getter();
    v12 = v11;

    v13 = sub_24897BC00(v10, v12, v17);

    *(v8 + 14) = v13;
    _os_log_impl(&dword_248975000, v4, v5, "[MA State] %{public}s - %{public}s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v9, -1, -1);
    MEMORY[0x24C1E0A80](v8, -1, -1);
  }

  else
  {
  }

  v14 = swift_task_alloc();
  *(v0 + 80) = v14;
  *v14 = v0;
  v14[1] = sub_24897FA68;
  v15 = *(v0 + 64);

  return sub_248980DB4(v15);
}

uint64_t sub_24897FA68(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 80);
  v7 = *v2;
  *(v3 + 88) = a1;
  *(v3 + 96) = v1;

  if (v1)
  {
    v5 = sub_24897FD3C;
  }

  else
  {
    v5 = sub_24897FB7C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24897FB7C()
{
  v19 = v0;
  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[7];

  v4 = sub_248A122B0();
  v5 = sub_248A12E80();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[11];
  if (v6)
  {
    v9 = v0[6];
    v8 = v0[7];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136446466;
    *(v10 + 4) = sub_24897BC00(v9, v8, &v18);
    *(v10 + 12) = 2082;
    v12 = MEMORY[0x24C1DF960](v7, &type metadata for RXUUIDInfo);
    v14 = v13;

    v15 = sub_24897BC00(v12, v14, &v18);

    *(v10 + 14) = v15;
    _os_log_impl(&dword_248975000, v4, v5, "[RX State] %{public}s - %{public}s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v11, -1, -1);
    MEMORY[0x24C1E0A80](v10, -1, -1);
  }

  else
  {
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_24897FD3C()
{
  v20 = v0;
  v1 = v0[12];
  if (qword_28150F5E0 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v3 = sub_248A122D0();
  __swift_project_value_buffer(v3, qword_2815105A8);

  v4 = v1;
  v5 = sub_248A122B0();
  v6 = sub_248A12E60();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = v0[6];
    v7 = v0[7];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136446466;
    *(v9 + 4) = sub_24897BC00(v8, v7, &v19);
    *(v9 + 12) = 2082;
    swift_getErrorValue();
    v12 = v0[2];
    v11 = v0[3];
    v13 = v0[4];
    v14 = sub_248A133C0();
    v16 = sub_24897BC00(v14, v15, &v19);

    *(v9 + 14) = v16;
    _os_log_impl(&dword_248975000, v5, v6, "%{public}s - Unable to get currentstate: %{public}s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v10, -1, -1);
    MEMORY[0x24C1E0A80](v9, -1, -1);
  }

  else
  {
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_24897FF3C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 432) = a2;
  *(v4 + 440) = a4;
  *(v4 + 552) = a3;
  *(v4 + 424) = a1;
  v5 = sub_248A12480();
  *(v4 + 448) = v5;
  v6 = *(v5 - 8);
  *(v4 + 456) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 464) = swift_task_alloc();
  v8 = sub_248A11AC0();
  *(v4 + 472) = v8;
  v9 = *(v8 - 8);
  *(v4 + 480) = v9;
  v10 = *(v9 + 64) + 15;
  *(v4 + 488) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_248980060, 0, 0);
}

uint64_t sub_248980060()
{
  v56 = v0;
  if (qword_28150F5E0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 480);
  v1 = *(v0 + 488);
  v4 = *(v0 + 464);
  v3 = *(v0 + 472);
  v5 = *(v0 + 448);
  v6 = *(v0 + 456);
  v8 = *(v0 + 424);
  v7 = *(v0 + 432);
  v9 = sub_248A122D0();
  *(v0 + 496) = __swift_project_value_buffer(v9, qword_2815105A8);
  (*(v2 + 16))(v1, v8, v3);
  (*(v6 + 16))(v4, v7, v5);
  v10 = sub_248A122B0();
  v11 = sub_248A12E80();
  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 480);
  v14 = *(v0 + 488);
  v15 = *(v0 + 464);
  v16 = *(v0 + 472);
  v18 = *(v0 + 448);
  v17 = *(v0 + 456);
  if (v12)
  {
    log = v10;
    v19 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v55[0] = v54;
    *v19 = 136446466;
    sub_2489837E4(&qword_27EEB53D0, MEMORY[0x277CC9260]);
    v20 = sub_248A132F0();
    v52 = v11;
    v22 = v21;
    (*(v13 + 8))(v14, v16);
    v23 = sub_24897BC00(v20, v22, v55);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2082;
    sub_2489837E4(&qword_27EEB53D8, MEMORY[0x277D04ED0]);
    v24 = sub_248A132F0();
    v26 = v25;
    (*(v17 + 8))(v15, v18);
    v27 = sub_24897BC00(v24, v26, v55);

    *(v19 + 14) = v27;
    _os_log_impl(&dword_248975000, log, v52, "Attempting to import: %{public}s, expected assets: %{public}s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v54, -1, -1);
    MEMORY[0x24C1E0A80](v19, -1, -1);
  }

  else
  {

    (*(v17 + 8))(v15, v18);
    (*(v13 + 8))(v14, v16);
  }

  v28 = *(v0 + 440);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB59B0, &qword_248A14CA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_248A14AE0;
  v30 = *MEMORY[0x277D25B28];
  *(inited + 32) = sub_248A12B60();
  *(inited + 40) = v31;
  v32 = sub_24897E174(v28);
  v33 = *(v0 + 552);
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v32;
  *(inited + 56) = v34;
  v35 = *MEMORY[0x277D25B20];
  *(inited + 80) = sub_248A12B60();
  *(inited + 88) = v36;
  v37 = MEMORY[0x277D839B0];
  *(inited + 120) = MEMORY[0x277D839B0];
  *(inited + 96) = 1;
  v38 = sub_248990FB8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB56C0, &qword_248A14CB0);
  swift_arrayDestroy();
  if (v33 == 1)
  {
    v39 = *MEMORY[0x277D25B00];
    v40 = sub_248A12B60();
    v42 = v41;
    *(v0 + 360) = v37;
    *(v0 + 336) = 1;
    sub_248983794((v0 + 336), (v0 + 368));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v55[0] = v38;
    sub_2489B04B4((v0 + 368), v40, v42, isUniquelyReferenced_nonNull_native);

    v38 = v55[0];
  }

  v44 = *MEMORY[0x277D25B18];
  v45 = sub_248A12B60();
  v47 = v46;
  *(v0 + 296) = v37;
  *(v0 + 272) = 1;
  sub_248983794((v0 + 272), (v0 + 304));
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v55[0] = v38;
  sub_2489B04B4((v0 + 304), v45, v47, v48);

  *(v0 + 504) = v55[0];
  v49 = swift_task_alloc();
  *(v0 + 512) = v49;
  *v49 = v0;
  v49[1] = sub_2489805FC;
  v50 = *(v0 + 440);

  return sub_24897F638(0x692065726F666542, 0xED000074726F706DLL, v50);
}

uint64_t sub_2489805FC()
{
  v1 = *(*v0 + 512);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2489806F8, 0, 0);
}

uint64_t sub_2489806F8()
{
  v1 = v0[63];
  v2 = v0[55];
  v3 = v0[53];
  sub_248A11AA0();
  v4 = sub_248A12B30();
  v0[65] = v4;

  v5 = sub_248A12A80();
  v0[66] = v5;

  v0[2] = v0;
  v0[7] = v0 + 50;
  v0[3] = sub_248980888;
  v6 = swift_continuation_init();
  v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB53C8, &qword_248A14D20);
  v0[26] = MEMORY[0x277D85DD0];
  v0[27] = 1107296256;
  v0[28] = sub_248980CD8;
  v0[29] = &block_descriptor_28;
  v0[30] = v6;
  [v2 importAssetsFromPath:v4 option:v5 completion:v0 + 26];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_248980888()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 536) = v2;
  if (v2)
  {
    v3 = sub_248980C48;
  }

  else
  {
    v3 = sub_248980998;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_248980998()
{
  v1 = v0[66];
  v2 = v0[65];
  v3 = v0[51];

  v4 = swift_task_alloc();
  v0[68] = v4;
  *v4 = v0;
  v4[1] = sub_248980A60;
  v5 = v0[55];

  return sub_24897F638(0x6D69207265746641, 0xEC00000074726F70, v5);
}

uint64_t sub_248980A60()
{
  v1 = *(*v0 + 544);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_248980B5C, 0, 0);
}

uint64_t sub_248980B5C()
{
  v1 = v0[62];
  v2 = sub_248A122B0();
  v3 = sub_248A12E80();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_248975000, v2, v3, "Import successful", v4, 2u);
    MEMORY[0x24C1E0A80](v4, -1, -1);
  }

  v5 = v0[61];
  v6 = v0[58];

  v7 = v0[1];

  return v7();
}

uint64_t sub_248980C48()
{
  v1 = v0[67];
  v2 = v0[66];
  v3 = v0[65];
  swift_willThrow();

  v4 = v0[67];
  v5 = v0[61];
  v6 = v0[58];

  v7 = v0[1];

  return v7();
}

uint64_t sub_248980CD8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5EB0, &qword_248A15C20);
    v7 = swift_allocError();
    *v8 = a4;
    v9 = a4;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    v10 = sub_248A12B60();
    v11 = *(*(v6 + 64) + 40);
    *v11 = v10;
    v11[1] = v12;
    v11[2] = a3;

    return MEMORY[0x282200950](v6);
  }
}

uint64_t sub_248980DD4()
{
  if (qword_28150F5E0 != -1)
  {
    swift_once();
  }

  v1 = v0[41];
  v2 = sub_248A122D0();
  __swift_project_value_buffer(v2, qword_2815105A8);
  sub_2489BDB14(0xD00000000000007CLL, 0x8000000248A18BD0, 0xD000000000000016, 0x8000000248A18C70);
  v3 = sub_248981580(v1);
  v0[42] = 0;
  if (v3)
  {
    v28 = v0[41];
    v4 = sub_248A12B30();
    v0[43] = v4;
    sub_248990FB8(MEMORY[0x277D84F90]);
    v5 = MEMORY[0x277D837D0];
    v6 = sub_248A12A80();
    v0[44] = v6;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB59B0, &qword_248A14CA8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_248A14B40;
    v8 = *MEMORY[0x277D25AF0];
    *(inited + 32) = sub_248A12B60();
    *(inited + 40) = v9;
    *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5380, &qword_248A14CC0);
    *(inited + 48) = &unk_285B606A8;
    v10 = *MEMORY[0x277D25AE0];
    *(inited + 80) = sub_248A12B60();
    *(inited + 88) = v11;
    v12 = *MEMORY[0x277D25AD8];
    v13 = sub_248A12B60();
    *(inited + 120) = v5;
    *(inited + 96) = v13;
    *(inited + 104) = v14;
    v15 = *MEMORY[0x277D25AE8];
    *(inited + 128) = sub_248A12B60();
    *(inited + 136) = v16;
    v17 = *MEMORY[0x277D25AF8];
    v18 = sub_248A12B60();
    *(inited + 168) = v5;
    *(inited + 144) = v18;
    *(inited + 152) = v19;
    sub_248990FB8(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB56C0, &qword_248A14CB0);
    swift_arrayDestroy();
    v20 = sub_248A12A80();
    v0[45] = v20;

    v0[2] = v0;
    v0[7] = v0 + 40;
    v0[3] = sub_248981248;
    v21 = swift_continuation_init();
    v0[39] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5388, &qword_248A14CC8);
    v0[32] = MEMORY[0x277D85DD0];
    v0[33] = 1107296256;
    v0[34] = sub_248981748;
    v0[35] = &block_descriptor;
    v0[36] = v21;
    [v28 queryDataInStore:v4 keys:v6 attributes:v20 completion:v0 + 32];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v22 = sub_248A122B0();
    v23 = sub_248A12E80();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_248975000, v22, v23, "No CoreRX data exists. Do not query for it.", v24, 2u);
      MEMORY[0x24C1E0A80](v24, -1, -1);
    }

    v25 = v0[1];
    v26 = MEMORY[0x277D84F90];

    return v25(v26);
  }
}

uint64_t sub_248981248()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 368) = v2;
  if (v2)
  {
    v3 = sub_2489814FC;
  }

  else
  {
    v3 = sub_248981358;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_248981358()
{
  v23 = v0;
  v1 = *(v0 + 320);
  v17 = *(v1 + 16);
  if (v17)
  {
    v2 = 0;
    v3 = *(v0 + 336);
    v4 = MEMORY[0x277D84F90];
    while (v2 < *(v1 + 16))
    {
      v18 = *(v1 + 32 + 8 * v2);
      sub_248981834(&v18, &v19);
      v5 = v20;
      if (v20)
      {
        v6 = v19;
        v7 = v21;
        v8 = v22;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_2489C9A28(0, *(v4 + 2) + 1, 1, v4);
        }

        v10 = *(v4 + 2);
        v9 = *(v4 + 3);
        if (v10 >= v9 >> 1)
        {
          v4 = sub_2489C9A28((v9 > 1), v10 + 1, 1, v4);
        }

        *(v4 + 2) = v10 + 1;
        v11 = &v4[32 * v10];
        *(v11 + 4) = v6;
        *(v11 + 5) = v5;
        *(v11 + 6) = v7;
        v11[56] = v8 & 1;
      }

      else
      {
      }

      if (v17 == ++v2)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
LABEL_13:
    v12 = v16[44];
    v13 = v16[45];
    v14 = v16[43];

    v15 = v16[1];

    v15(v4);
  }
}

uint64_t sub_2489814FC()
{
  v1 = v0[45];
  v2 = v0[46];
  v4 = v0[43];
  v3 = v0[44];
  swift_willThrow();

  v5 = v0[46];
  v6 = v0[1];

  return v6();
}

uint64_t sub_248981580(void *a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v21 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB59B0, &qword_248A14CA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_248A14AE0;
  v3 = *MEMORY[0x277D25AE0];
  *(inited + 32) = sub_248A12B60();
  *(inited + 40) = v4;
  v5 = *MEMORY[0x277D25AD8];
  v6 = sub_248A12B60();
  v7 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v6;
  *(inited + 56) = v8;
  v9 = *MEMORY[0x277D25AE8];
  *(inited + 80) = sub_248A12B60();
  *(inited + 88) = v10;
  v11 = *MEMORY[0x277D25AF8];
  v12 = sub_248A12B60();
  *(inited + 120) = v7;
  *(inited + 96) = v12;
  *(inited + 104) = v13;
  sub_248990FB8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB56C0, &qword_248A14CB0);
  swift_arrayDestroy();
  v14 = sub_248A12A80();

  v20 = 0;
  v15 = [a1 checkIfKVStoreGroupExistUsing:v14 exist:&v21 error:&v20];

  if (v15)
  {
    LOBYTE(v16) = v21;
    v17 = v20;
  }

  else
  {
    v16 = v20;
    sub_248A11A40();

    swift_willThrow();
  }

  v18 = *MEMORY[0x277D85DE8];
  return v16 & 1;
}

uint64_t sub_248981748(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5EB0, &qword_248A15C20);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5390, &unk_248A14CD0);
    **(*(v4 + 64) + 40) = sub_248A12C90();

    return MEMORY[0x282200950](v4);
  }
}

void sub_248981834(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (qword_28150F5E0 != -1)
  {
    swift_once();
  }

  v4 = sub_248A122D0();
  __swift_project_value_buffer(v4, qword_2815105A8);

  v5 = sub_248A122B0();
  v6 = sub_248A12E80();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22[0] = v8;
    *v7 = 136315138;
    v9 = sub_248A12AB0();
    v11 = sub_24897BC00(v9, v10, v22);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_248975000, v5, v6, "CoreRX info: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x24C1E0A80](v8, -1, -1);
    MEMORY[0x24C1E0A80](v7, -1, -1);
  }

  if (*(v3 + 16) && (v12 = sub_2489A7D40(0x444955557872, 0xE600000000000000), (v13 & 1) != 0) && (sub_24897C864(*(v3 + 56) + 32 * v12, v22), (swift_dynamicCast() & 1) != 0))
  {
    if (*(v3 + 16) && (v14 = sub_2489A7D40(0x79536B635F414D5FLL, 0xEF6574617453636ELL), (v15 & 1) != 0) && (sub_24897C864(*(v3 + 56) + 32 * v14, v22), swift_dynamicCast()))
    {
      v16 = v20;
    }

    else
    {
      v16 = 0;
    }

    v19 = !*(v3 + 16) || (v17 = sub_2489A7D40(0x676174735F414D5FLL, 0xEF6D6F7246676E69), (v18 & 1) == 0) || (sub_24897C864(*(v3 + 56) + 32 * v17, v22), !swift_dynamicCast()) || v20 == 0;
    *a2 = v20;
    *(a2 + 8) = v21;
    *(a2 + 16) = v16;
    *(a2 + 24) = v19;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 24) = 0;
    *(a2 + 16) = 0;
  }
}

id sub_248981B24(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = sub_248A12480();
  v7 = *(v6 - 8);
  v8 = v7[8];
  MEMORY[0x28223BE20](v6);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  result = [v13 label];
  if (result)
  {
    v67 = v7;
    v15 = result;
    v66 = sub_248A12B60();
    v17 = v16;

    v72 = v12;
    v73 = v11;
    v74 = v13;
    sub_2489CBC2C(&v68);
    if (v71 == 255)
    {
    }

    v60 = a3;
    v61 = v6;
    v65 = v71;
    v62 = v68;
    v63 = v69;
    v64 = v70;
    v68 = 0;
    v69 = 0xE000000000000000;
    v72 = [v13 type];
    type metadata accessor for MASDAssetType(0);
    sub_248A131F0();
    v18 = v69;
    v59 = v68;
    if (qword_28150F5E0 != -1)
    {
      swift_once();
    }

    v19 = sub_248A122D0();
    __swift_project_value_buffer(v19, qword_2815105A8);

    v20 = v13;

    v21 = sub_248A122B0();
    v22 = sub_248A12E50();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v57 = v20;
      v24 = v23;
      v25 = swift_slowAlloc();
      v68 = v25;
      *v24 = 136315650;

      v26 = sub_24897BC00(v12, v11, &v68);
      v58 = a1;
      v27 = v26;

      *(v24 + 4) = v27;
      *(v24 + 12) = 2080;
      v28 = sub_24897BC00(v66, v17, &v68);

      *(v24 + 14) = v28;
      *(v24 + 22) = 2080;
      v29 = sub_24897BC00(v59, v18, &v68);

      *(v24 + 24) = v29;
      a1 = v58;
      _os_log_impl(&dword_248975000, v21, v22, "%s | %s | %s ", v24, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C1E0A80](v25, -1, -1);
      v30 = v24;
      v20 = v57;
      MEMORY[0x24C1E0A80](v30, -1, -1);
    }

    else
    {
    }

    v31 = v65;
    v68 = v12;
    v69 = v11;
    v70 = v20;
    sub_2489CC220();
    sub_2489837E4(&qword_27EEB53E8, MEMORY[0x277D04ED0]);
    v32 = v61;
    v33 = v20;
    v34 = sub_248A12F80();
    v67[1](v10, v32);
    v35 = v63;
    if (v34)
    {
      v36 = v12;
      v37 = [v33 assetState];
      v38 = v64;
      v39 = v62;
      if (v37)
      {
        v43 = v33;
        v44 = *a1;
        if (!*(*a1 + 16) || (v45 = sub_2489A7ED0(v62, v35, v64, v31), (v46 & 1) == 0))
        {

          v54 = v43;
          v55 = *a1;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v68 = *a1;
          sub_2489B0604(v36, v11, v54, v39, v35, v38, v31, isUniquelyReferenced_nonNull_native);
          result = sub_24898382C(v39, v35, v38, v31);
          *a1 = v68;
          return result;
        }

        v47 = (*(v44 + 56) + 24 * v45);
        v48 = *v47;
        v49 = v47[1];
        v50 = v47[2];
        v68 = v36;
        v69 = v11;
        v70 = v43;
        v72 = v48;
        v73 = v49;
        v74 = v50;

        v51 = v50;
        if (_s13DeviceSharing31AssetIntermediaryRepresentationV1loiySbAC_ACtFZ_0(&v68, &v72))
        {

          v67 = v43;
          v52 = *a1;
          v53 = swift_isUniquelyReferenced_nonNull_native();
          v68 = *a1;
          sub_2489B0604(v36, v11, v67, v39, v35, v38, v31, v53);
          sub_24898382C(v39, v35, v38, v31);

          *a1 = v68;
          return result;
        }
      }

      v40 = v39;
      v41 = v35;
      v42 = v38;
    }

    else
    {
      v40 = v62;
      v41 = v63;
      v42 = v64;
    }

    return sub_24898382C(v40, v41, v42, v31);
  }

  return result;
}

id sub_2489820BC(uint64_t a1, void *a2)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v4 = sub_248A12490();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28150F5E0 != -1)
  {
    swift_once();
  }

  v9 = sub_248A122D0();
  __swift_project_value_buffer(v9, qword_2815105A8);
  sub_2489BDB14(0xD00000000000007CLL, 0x8000000248A18BD0, 0xD00000000000001CLL, 0x8000000248A18C50);
  (*(v5 + 16))(v8, a1, v4);
  v10 = (*(v5 + 88))(v8, v4);
  if (v10 == *MEMORY[0x277D04F10])
  {
    v11 = 1;
  }

  else if (v10 == *MEMORY[0x277D04F20])
  {
    v11 = 2;
  }

  else if (v10 == *MEMORY[0x277D04F18])
  {
    v11 = 3;
  }

  else
  {
    (*(v5 + 8))(v8, v4);
    v11 = 0;
  }

  v15[0] = 0;
  if ([a2 saveAVPSetupUserOption:v11 error:v15])
  {
    result = v15[0];
  }

  else
  {
    v13 = v15[0];
    sub_248A11A40();

    result = swift_willThrow();
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_24898233C(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2489839A0;

  return sub_24897EDA8(a1, a2, a3, v8);
}

uint64_t sub_2489823F0(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_248978D74;

  return sub_24897FF3C(a1, a2, a3, v8);
}

uint64_t sub_2489824A4(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2489839A0;

  return sub_24897D4F8(a1, v4);
}

uint64_t sub_248982540()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2489825D4;

  return sub_24897DCC0(v2);
}

uint64_t sub_2489825D4(char a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v5 = *(v8 + 8);
  if (v1)
  {
    v6 = 0;
  }

  else
  {
    v6 = a1 & 1;
  }

  return v5(v6);
}

uint64_t sub_2489826DC(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_248982700, 0, 0);
}

uint64_t sub_248982700()
{
  **(v0 + 16) = sub_24897E58C(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2489827A8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24898283C;

  return sub_248980DB4(v2);
}

uint64_t sub_24898283C(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_248982978()
{
  v1 = sub_248A11990();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v16[0] = 0;
  v16[1] = 0xE000000000000000;
  if (v7)
  {
    v8 = 8756450;
  }

  else
  {
    v8 = 0;
  }

  if (v7)
  {
    v9 = 0xA300000000000000;
  }

  else
  {
    v9 = 0xE000000000000000;
  }

  MEMORY[0x24C1DF8B0](v8, v9);

  MEMORY[0x24C1DF8B0](32, 0xE100000000000000);
  if ((v6 & 0x40) != 0)
  {
    v10 = 0xA400000000000000;
  }

  else
  {
    v10 = 0xE000000000000000;
  }

  MEMORY[0x24C1DF8B0]((v6 << 57 >> 63) & 0x9DA49FF0, v10);

  MEMORY[0x24C1DF8B0](32, 0xE100000000000000);
  if ((v6 & 0x20) != 0)
  {
    v11 = 0xA600000000000000;
  }

  else
  {
    v11 = 0xE000000000000000;
  }

  MEMORY[0x24C1DF8B0]((v6 << 58 >> 63) & 0x8FB8EF8198E2, v11);

  MEMORY[0x24C1DF8B0](32, 0xE100000000000000);
  if ((v6 & 0x7E20) == 0x7E20)
  {
    v12 = 0x8FB8EF86ACE2;
  }

  else
  {
    v12 = 0;
  }

  if ((v6 & 0x7E20) == 0x7E20)
  {
    v13 = 0xA600000000000000;
  }

  else
  {
    v13 = 0xE000000000000000;
  }

  MEMORY[0x24C1DF8B0](v12, v13);

  sub_248A11980();
  sub_2489835B8();
  v14 = sub_248A12F40();
  (*(v2 + 8))(v5, v1);

  return v14;
}

uint64_t RXUUIDInfo.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);

  v5 = sub_2489CF4FC(8);
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = MEMORY[0x24C1DF860](v5, v7, v9, v11);

  MEMORY[0x24C1DF8B0](2629690, 0xE300000000000000);
  v13 = sub_248982978();
  MEMORY[0x24C1DF8B0](v13);

  MEMORY[0x24C1DF8B0](41, 0xE100000000000000);
  return v12;
}

uint64_t dispatch thunk of ManagedAssetsBYOEProtocol.export(assets:to:includeAccessibility:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 16);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_2489839A0;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of ManagedAssetsBYOEProtocol.importAssets(from:expectedAssets:includeAccessibility:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 24);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_2489839A0;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of ManagedAssetsBYOEProtocol.deleteEnrollmentData(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 32);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2489839A0;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of ManagedAssetsBYOEProtocol.checkCloudZonesExist()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 40);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24898314C;

  return v9(a1, a2);
}

uint64_t sub_24898314C(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of ManagedAssetsBYOEProtocol.getAllAssets()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 48);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_248978D74;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of ManagedAssetsBYOEProtocol.getRXUUIDsFromCoreRX()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 64);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24898314C;

  return v9(a1, a2);
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_24898351C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_248983564(uint64_t result, int a2, int a3)
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

unint64_t sub_2489835B8()
{
  result = qword_28150F590;
  if (!qword_28150F590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28150F590);
  }

  return result;
}

unint64_t sub_248983634()
{
  result = qword_27EEB5398;
  if (!qword_27EEB5398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB5398);
  }

  return result;
}

unint64_t sub_2489836DC()
{
  result = qword_27EEB53B0;
  if (!qword_27EEB53B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EEB53B0);
  }

  return result;
}

uint64_t sub_248983728(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_248983734(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

_OWORD *sub_248983794(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2489837A4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 1u)
  {
  }

  return result;
}

uint64_t sub_2489837C4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 1u)
  {
  }

  return result;
}

uint64_t sub_2489837E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24898382C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 != 0xFF)
  {
    return sub_2489837C4(a1, a2, a3, a4);
  }

  return a1;
}

uint64_t getEnumTagSinglePayload for ManagedAssetsBYOE.Error(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for ManagedAssetsBYOE.Error(_WORD *result, int a2, int a3)
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

unint64_t sub_248983934()
{
  result = qword_27EEB53F0;
  if (!qword_27EEB53F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB53F0);
  }

  return result;
}

uint64_t PeerConnection.transportDispatchService.getter()
{
  sub_24898C374();
}

uint64_t sub_248983A28@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_27EEB5408;
  swift_beginAccess();
  return sub_24898D610(v1 + v3, a1, &qword_27EEB5400, &unk_248A14E10);
}

unint64_t sub_248983A90(uint64_t a1)
{
  v2 = *(v1 + qword_27EEB5448);
  *(v1 + qword_27EEB5448) = a1;
  return sub_24898C42C(v2);
}

uint64_t sub_248983AC4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  swift_beginAccess();
  return sub_24898D610(v4 + v8, a4, a2, a3);
}

uint64_t sub_248983B4C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *a2;
  swift_beginAccess();
  sub_24898D194(a1, v4 + v8, a3, a4);
  return swift_endAccess();
}

uint64_t sub_248983BF8(uint64_t a1)
{
  v2 = *(v1 + qword_27EEB5438);
  *(v1 + qword_27EEB5438) = a1;
}

uint64_t PeerConnection.__allocating_init(endpoint:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_248A12540();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_248A116D0();
  (*(v5 + 16))(v8, a1, v4);
  v9 = sub_248A12720();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();

  v12 = sub_248A126D0();
  v13 = *(v2 + 48);
  v14 = *(v2 + 52);
  v15 = swift_allocObject();
  PeerConnection.init(networkConnection:)(v12, &protocol witness table for NWConnection);

  (*(v5 + 8))(a1, v4);
  return v15;
}

uint64_t PeerConnection.__allocating_init(networkConnection:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  PeerConnection.init(networkConnection:)(a1, a2);
  return v7;
}

uint64_t PeerConnection.init(networkConnection:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v31 = a1;
  v32 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5400, &unk_248A14E10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v33 = &v29 - v6;
  v30 = sub_248A12EA0();
  v7 = *(v30 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v30);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_248A12ED0();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v13 = sub_248A12A40();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  sub_24898C37C();
  sub_248A12A20();
  v34 = MEMORY[0x277D84F90];
  sub_24898D594(&unk_28150F570, MEMORY[0x277D852D8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5F20, &unk_248A16460);
  sub_24898C3C8();
  sub_248A12FA0();
  (*(v7 + 104))(v10, *MEMORY[0x277D85268], v30);
  *(v2 + 24) = sub_248A12EE0();
  v15 = qword_27EEB5408;
  v16 = sub_248A11BC0();
  (*(*(v16 - 8) + 56))(v3 + v15, 1, 1, v16);
  sub_248A11DF0();
  v17 = qword_27EEB5418;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5420, &qword_248A14E20);
  (*(*(v18 - 8) + 56))(v3 + v17, 1, 1, v18);
  v19 = qword_27EEB5428;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5430, &qword_248A14E28);
  (*(*(v20 - 8) + 56))(v3 + v19, 1, 1, v20);
  *(v3 + qword_27EEB5438) = 0;
  v21 = (v3 + qword_27EEB5440);
  v22 = v32;
  *v21 = v31;
  v21[1] = v22;
  *(v3 + qword_27EEB5448) = 0;
  sub_248A122A0();
  swift_unknownObjectRetain();
  *(v3 + 16) = sub_248A12290();
  ObjectType = swift_getObjectType();
  v24 = v22;
  v25 = *(v22 + 80);
  v26 = v33;
  v25(ObjectType, v24);
  swift_unknownObjectRelease();
  v27 = qword_27EEB5408;
  swift_beginAccess();
  sub_24898D194(v26, v3 + v27, &qword_27EEB5400, &unk_248A14E10);
  swift_endAccess();
  return v3;
}

uint64_t PeerConnection.deinit()
{
  v1 = v0;
  v2 = (v0 + qword_27EEB5440);
  v3 = *(v0 + qword_27EEB5440);
  v4 = v2[1];
  ObjectType = swift_getObjectType();
  v6 = *(v4 + 56);
  swift_unknownObjectRetain();
  v6(ObjectType, v4);
  swift_unknownObjectRelease();
  v7 = *(v1 + 16);

  sub_248983734(v1 + qword_27EEB5408, &qword_27EEB5400, &unk_248A14E10);
  v8 = *v2;
  swift_unknownObjectRelease();
  v9 = qword_27EEB5410;
  v10 = sub_248A11E00();
  (*(*(v10 - 8) + 8))(v1 + v9, v10);
  sub_24898C42C(*(v1 + qword_27EEB5448));
  sub_248983734(v1 + qword_27EEB5418, &qword_27EEB5450, qword_248A14E30);
  sub_248983734(v1 + qword_27EEB5428, &qword_27EEB5458, &unk_248A180A0);
  v11 = *(v1 + qword_27EEB5438);

  return v1;
}

uint64_t PeerConnection.__deallocating_deinit()
{
  PeerConnection.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_2489843BC(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = *v1;
  v2[6] = *(*v1 + 80);
  v2[7] = *(v3 + 88);
  type metadata accessor for PeerConnection();
  v2[8] = swift_getWitnessTable();
  v5 = sub_248A12CD0();
  v2[9] = v5;
  v2[10] = v4;

  return MEMORY[0x2822009F8](sub_248984494, v5, v4);
}

uint64_t sub_248984494()
{
  v42 = v0;
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = sub_248A122D0();
  __swift_project_value_buffer(v2, qword_27EEB9DC8);

  v3 = sub_248A122B0();
  v4 = sub_248A12E80();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 40);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v41 = v8;
    *v7 = 136446466;
    v9 = PeerConnection.description.getter();
    v11 = v10;

    v12 = sub_24897BC00(v9, v11, &v41);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2082;
    *(v0 + 16) = *(v6 + qword_27EEB5440);
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5460, &qword_248A14E48);
    v13 = sub_248A12B80();
    v15 = sub_24897BC00(v13, v14, &v41);

    *(v7 + 14) = v15;
    _os_log_impl(&dword_248975000, v3, v4, "[%{public}s] Activate peer connection: %{public}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v8, -1, -1);
    MEMORY[0x24C1E0A80](v7, -1, -1);
  }

  else
  {
  }

  v16 = *(v0 + 40);
  if (*(v16 + qword_27EEB5448))
  {
    v17 = *(v0 + 40);

    v18 = sub_248A122B0();
    v19 = sub_248A12E80();
    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 40);
    if (v20)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v41 = v23;
      *v22 = 136446210;
      v24 = PeerConnection.description.getter();
      v26 = v25;

      v27 = sub_24897BC00(v24, v26, &v41);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_248975000, v18, v19, "[%{public}s] Peer connection was already active", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x24C1E0A80](v23, -1, -1);
      MEMORY[0x24C1E0A80](v22, -1, -1);
    }

    else
    {
    }

    v38 = *(v0 + 8);

    return v38();
  }

  else
  {
    v28 = *(v0 + 64);
    v29 = *(v16 + qword_27EEB5440);
    v30 = *(v16 + qword_27EEB5440 + 8);
    ObjectType = swift_getObjectType();
    v32 = swift_allocObject();
    v40 = *(v0 + 48);
    swift_weakInit();
    v33 = swift_allocObject();
    *(v33 + 16) = v40;
    *(v33 + 32) = v32;
    v34 = *(v30 + 24);
    sub_24898C460(0);

    v34(sub_24898C454, v33, ObjectType, v30);

    v35 = *(MEMORY[0x277D85A40] + 4);
    v36 = swift_task_alloc();
    *(v0 + 88) = v36;
    *v36 = v0;
    v36[1] = sub_24898493C;
    v37 = *(v0 + 40);

    return MEMORY[0x2822008A0]();
  }
}

uint64_t sub_24898493C()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;
  *(*v1 + 96) = v0;

  v5 = *(v2 + 80);
  v6 = *(v2 + 72);
  if (v0)
  {
    v7 = sub_248984AF8;
  }

  else
  {
    v7 = sub_248984A78;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_248984A78()
{
  v1 = v0[5];
  v2 = *(v1 + qword_27EEB5448);
  *(v1 + qword_27EEB5448) = v0[4];
  swift_unknownObjectRetain();
  sub_24898C42C(v2);
  sub_248988920();
  v3 = v0[1];

  return v3();
}

uint64_t sub_248984AF8()
{
  v1 = v0[5];
  sub_248988920();
  v2 = v0[1];
  v3 = v0[12];

  return v2();
}

uint64_t sub_248984B5C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    MEMORY[0x28223BE20](result);
    v5[2] = a1;
    v3 = type metadata accessor for PeerConnection();
    WitnessTable = swift_getWitnessTable();
    sub_248984C74(sub_24898D5DC, v5, "DeviceSharing/PeerConnection.swift", 34, 2, 96, v3, MEMORY[0x277D84F78] + 8, WitnessTable);
  }

  return result;
}

uint64_t sub_248984C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_248A12CD0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v15 = swift_allocObject();
  v15[2] = a7;
  v15[3] = a8;
  v15[4] = a9;
  v15[5] = a1;
  v15[6] = a2;
  sub_24898BE78(sub_24898D130, v15, v9, a7, a8, a9);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_248A13100();
    MEMORY[0x24C1DF8B0](0xD00000000000003FLL, 0x8000000248A18FE0);
    sub_248A13320();
    MEMORY[0x24C1DF8B0](46, 0xE100000000000000);
    result = sub_248A13200();
    __break(1u);
  }

  return result;
}

uint64_t sub_248984E28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5450, qword_248A14E30);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v23 - v6;
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v8 = sub_248A122D0();
  __swift_project_value_buffer(v8, qword_27EEB9DC8);

  v9 = sub_248A122B0();
  v10 = sub_248A12E80();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24 = v12;
    *v11 = 136446210;

    v13 = PeerConnection.description.getter();
    v15 = v14;

    v16 = sub_24897BC00(v13, v15, &v24);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_248975000, v9, v10, "[%{public}s] Starting connection and waiting until ready", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x24C1E0A80](v12, -1, -1);
    MEMORY[0x24C1E0A80](v11, -1, -1);
  }

  else
  {
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5420, &qword_248A14E20);
  v18 = *(v17 - 8);
  (*(v18 + 16))(v7, a1, v17);
  (*(v18 + 56))(v7, 0, 1, v17);
  sub_248983B30(v7);
  v19 = *(a2 + qword_27EEB5440);
  v20 = *(a2 + qword_27EEB5440 + 8);
  ObjectType = swift_getObjectType();
  (*(v20 + 40))(*(a2 + 24), ObjectType, v20);
  return sub_248987FF4();
}

uint64_t sub_2489850E4()
{
  v1[2] = v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 88);
  type metadata accessor for PeerConnection();
  v1[3] = swift_getWitnessTable();
  v5 = sub_248A12CD0();
  v1[4] = v5;
  v1[5] = v4;

  return MEMORY[0x2822009F8](sub_2489851B4, v5, v4);
}

uint64_t sub_2489851B4()
{
  v31 = v0;
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = sub_248A122D0();
  __swift_project_value_buffer(v2, qword_27EEB9DC8);

  v3 = sub_248A122B0();
  v4 = sub_248A12E80();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[2];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v30 = v8;
    *v7 = 136446210;

    v9 = PeerConnection.description.getter();
    v11 = v10;

    v12 = sub_24897BC00(v9, v11, &v30);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_248975000, v3, v4, "[%{public}s] Invalidating peer connection", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x24C1E0A80](v8, -1, -1);
    MEMORY[0x24C1E0A80](v7, -1, -1);
  }

  else
  {
  }

  if (*(v0[2] + qword_27EEB5448) == 1)
  {
    v13 = v0[2];

    sub_24898C460(1uLL);
    v14 = sub_248A122B0();
    v15 = sub_248A12E80();
    v16 = os_log_type_enabled(v14, v15);
    v17 = v0[2];
    if (v16)
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v30 = v19;
      *v18 = 136446210;

      v20 = PeerConnection.description.getter();
      v22 = v21;

      v23 = sub_24897BC00(v20, v22, &v30);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_248975000, v14, v15, "[%{public}s] Peer connection already invalided", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x24C1E0A80](v19, -1, -1);
      MEMORY[0x24C1E0A80](v18, -1, -1);
    }

    else
    {
    }

    v28 = v0[1];

    return v28();
  }

  else
  {
    v24 = v0[3];
    v25 = *(MEMORY[0x277D859E0] + 4);
    v26 = swift_task_alloc();
    v0[6] = v26;
    *v26 = v0;
    v26[1] = sub_24898555C;
    v27 = v0[2];

    return MEMORY[0x2822007B8]();
  }
}

uint64_t sub_24898555C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  v6 = *v0;

  v3 = *(v1 + 40);
  v4 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_24898567C, v4, v3);
}

uint64_t sub_24898567C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + qword_27EEB5448);
  *(v1 + qword_27EEB5448) = 1;
  sub_24898C42C(v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2489856F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5458, &unk_248A180A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v23 - v6;
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v8 = sub_248A122D0();
  __swift_project_value_buffer(v8, qword_27EEB9DC8);

  v9 = sub_248A122B0();
  v10 = sub_248A12E80();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24 = v12;
    *v11 = 136446210;

    v13 = PeerConnection.description.getter();
    v15 = v14;

    v16 = sub_24897BC00(v13, v15, &v24);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_248975000, v9, v10, "[%{public}s] Cancelling connection and waiting until done", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x24C1E0A80](v12, -1, -1);
    MEMORY[0x24C1E0A80](v11, -1, -1);
  }

  else
  {
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5430, &qword_248A14E28);
  v18 = *(v17 - 8);
  (*(v18 + 16))(v7, a1, v17);
  (*(v18 + 56))(v7, 0, 1, v17);
  sub_248983BDC(v7);
  v20 = *(a2 + qword_27EEB5440);
  v19 = *(a2 + qword_27EEB5440 + 8);
  ObjectType = swift_getObjectType();
  return (*(v19 + 48))(ObjectType, v19);
}

uint64_t sub_24898599C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5400, &unk_248A14E10);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - v4;
  v6 = sub_248A11BC0();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v5, a1, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  return sub_248983A0C(v5);
}

uint64_t sub_248985A98(void (*a1)(char *, char *, uint64_t))
{
  v2 = v1;
  v98 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5430, &qword_248A14E28);
  v88 = *(v3 - 8);
  v4 = *(v88 + 64);
  MEMORY[0x28223BE20](v3);
  v84 = &v83 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5458, &unk_248A180A0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v87 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v86 = &v83 - v10;
  v11 = sub_248A128A0();
  v91 = *(v11 - 8);
  v92 = v11;
  v12 = *(v91 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v89 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v95 = &v83 - v16;
  MEMORY[0x28223BE20](v15);
  v96 = &v83 - v17;
  v18 = sub_248A126F0();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v94 = &v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v83 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v83 - v26;
  v28 = sub_248A12A50();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v32 = (&v83 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = *(v2 + 24);
  *v32 = v33;
  (*(v29 + 104))(v32, *MEMORY[0x277D85200], v28);
  v34 = v33;
  LOBYTE(v33) = sub_248A12A60();
  (*(v29 + 8))(v32, v28);
  if (v33)
  {
    v85 = v3;
    if (qword_27EEB51A0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v35 = sub_248A122D0();
  v36 = __swift_project_value_buffer(v35, qword_27EEB9DC8);
  v37 = v27;
  v97 = *(v19 + 16);
  (v97)(v27, v98, v18);

  v90 = v36;
  v38 = sub_248A122B0();
  v39 = sub_248A12E80();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v93 = v2;
    v41 = v40;
    v83 = swift_slowAlloc();
    v99[0] = v83;
    *v41 = 136446466;
    v42 = PeerConnection.description.getter();
    v44 = v43;

    v45 = sub_24897BC00(v42, v44, v99);

    *(v41 + 4) = v45;
    *(v41 + 12) = 2082;
    (v97)(v25, v37, v18);
    v46 = sub_248A12B80();
    v48 = v47;
    v49 = *(v19 + 8);
    v49(v37, v18);
    v50 = sub_24897BC00(v46, v48, v99);

    *(v41 + 14) = v50;
    _os_log_impl(&dword_248975000, v38, v39, "[%{public}s] Connection state did update: %{public}s", v41, 0x16u);
    v51 = v83;
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v51, -1, -1);
    v52 = v41;
    v2 = v93;
    MEMORY[0x24C1E0A80](v52, -1, -1);
  }

  else
  {

    v49 = *(v19 + 8);
    v49(v37, v18);
  }

  v54 = v94;
  v53 = v95;
  (v97)(v94, v98, v18);
  result = (*(v19 + 88))(v54, v18);
  v56 = v96;
  if (result == *MEMORY[0x277CD8DE8])
  {
    (*(v19 + 96))(v54, v18);
    v58 = v91;
    v57 = v92;
    (*(v91 + 32))(v56, v54, v92);
    v98 = *(v58 + 16);
    v98(v53, v56, v57);

    v59 = sub_248A122B0();
    v60 = sub_248A12E60();
    v61 = v53;
    if (os_log_type_enabled(v59, v60))
    {
      v62 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v99[0] = v97;
      *v62 = 136446466;
      v63 = PeerConnection.description.getter();
      v65 = v64;

      v66 = sub_24897BC00(v63, v65, v99);

      *(v62 + 4) = v66;
      *(v62 + 12) = 2114;
      sub_24898D594(&qword_27EEB5620, MEMORY[0x277CD8FC0]);
      swift_allocError();
      v98(v67, v61, v57);
      v68 = _swift_stdlib_bridgeErrorToNSError();
      v69 = *(v58 + 8);
      v69(v61, v57);
      *(v62 + 14) = v68;
      v70 = v95;
      *v95 = v68;
      _os_log_impl(&dword_248975000, v59, v60, "[%{public}s] Connection waiting with error: %{public}@", v62, 0x16u);
      sub_248983734(v70, &qword_27EEB5600, &unk_248A15210);
      MEMORY[0x24C1E0A80](v70, -1, -1);
      v71 = v97;
      __swift_destroy_boxed_opaque_existential_0(v97);
      MEMORY[0x24C1E0A80](v71, -1, -1);
      MEMORY[0x24C1E0A80](v62, -1, -1);

      return (v69)(v96, v57);
    }

    else
    {

      v76 = *(v58 + 8);
      v76(v53, v57);
      return (v76)(v56, v57);
    }
  }

  else if (result == *MEMORY[0x277CD8DE0])
  {
    (*(v19 + 96))(v54, v18);
    v73 = v91;
    v72 = v92;
    v74 = v89;
    v75 = (*(v91 + 32))(v89, v54, v92);
    MEMORY[0x28223BE20](v75);
    *(&v83 - 2) = v74;
    sub_2489865D8();
    return (*(v73 + 8))(v74, v72);
  }

  else if (result != *MEMORY[0x277CD8DD8] && result != *MEMORY[0x277CD8DF8])
  {
    if (result == *MEMORY[0x277CD8DD0])
    {
      sub_248987988(0);
      sub_2489865D8();
      return sub_248986928();
    }

    else if (result == *MEMORY[0x277CD8DF0])
    {
      v77 = qword_27EEB5428;
      swift_beginAccess();
      v78 = v86;
      sub_24898D610(v2 + v77, v86, &qword_27EEB5458, &unk_248A180A0);
      v79 = v88;
      v80 = v85;
      if ((*(v88 + 48))(v78, 1, v85))
      {
        sub_248983734(v78, &qword_27EEB5458, &unk_248A180A0);
      }

      else
      {
        v81 = v84;
        (*(v79 + 16))(v84, v78, v80);
        sub_248983734(v78, &qword_27EEB5458, &unk_248A180A0);
        sub_248A12CF0();
        (*(v79 + 8))(v81, v80);
      }

      v82 = v87;
      (*(v79 + 56))(v87, 1, 1, v80);
      sub_248983BDC(v82);
      return sub_2489865D8();
    }

    else
    {
      return (v49)(v54, v18);
    }
  }

  return result;
}

uint64_t sub_2489865D8()
{
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v0 = sub_248A122D0();
  __swift_project_value_buffer(v0, qword_27EEB9DC8);
  swift_retain_n();
  v1 = sub_248A122B0();
  v2 = sub_248A12E80();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v12 = v4;
    *v3 = 136446466;

    v5 = PeerConnection.description.getter();
    v7 = v6;

    v8 = sub_24897BC00(v5, v7, &v12);

    *(v3 + 4) = v8;
    *(v3 + 12) = 2050;
    v9 = sub_248A11D90();

    *(v3 + 14) = v9;

    _os_log_impl(&dword_248975000, v1, v2, "[%{public}s] Notify %{public}ld observers", v3, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v4);
    MEMORY[0x24C1E0A80](v4, -1, -1);
    MEMORY[0x24C1E0A80](v3, -1, -1);
  }

  else
  {
  }

  MEMORY[0x28223BE20](v10);
  return sub_248A11DC0();
}

void sub_2489867E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v6 = sub_248A128A0();
  sub_24898D594(&qword_27EEB5620, MEMORY[0x277CD8FC0]);
  v7 = swift_allocError();
  (*(*(v6 - 8) + 16))(v8, a3, v6);
  (*(a2 + 16))(v7, ObjectType, a2);
}

uint64_t sub_248986928()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_248A12A50();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = (&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = v1[3];
  *v7 = v8;
  (*(v4 + 104))(v7, *MEMORY[0x277D85200], v3);
  v9 = v8;
  LOBYTE(v8) = sub_248A12A60();
  (*(v4 + 8))(v7, v3);
  if (v8)
  {
    if (qword_27EEB51A0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v10 = sub_248A122D0();
  __swift_project_value_buffer(v10, qword_27EEB9DC8);

  v11 = sub_248A122B0();
  v12 = sub_248A12E80();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v27 = v14;
    *v13 = 136446210;

    v15 = PeerConnection.description.getter();
    v17 = v16;

    v18 = sub_24897BC00(v15, v17, &v27);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_248975000, v11, v12, "[%{public}s] Receive next message", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x24C1E0A80](v14, -1, -1);
    MEMORY[0x24C1E0A80](v13, -1, -1);
  }

  else
  {
  }

  v19 = *(v1 + qword_27EEB5440);
  v20 = *(v1 + qword_27EEB5440 + 8);
  ObjectType = swift_getObjectType();
  v22 = swift_allocObject();
  swift_weakInit();
  v23 = swift_allocObject();
  v23[2] = *(v2 + 80);
  v23[3] = *(v2 + 88);
  v23[4] = v22;
  v24 = *(v20 + 72);

  v24(sub_24898D0E4, v23, ObjectType, v20);
}

uint64_t sub_248986C5C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    MEMORY[0x28223BE20](result);
    v13[2] = a1;
    v13[3] = a2;
    v13[4] = a3;
    v14 = a4 & 1;
    v15 = a5;
    v11 = type metadata accessor for PeerConnection();
    WitnessTable = swift_getWitnessTable();
    sub_248984C74(sub_24898D0F0, v13, "DeviceSharing/PeerConnection.swift", 34, 2, 171, v11, MEMORY[0x277D84F78] + 8, WitnessTable);
  }

  return result;
}

uint64_t sub_248986DA4(uint64_t a1, unint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v6 = v5;
  v62 = a4;
  v59 = a1;
  v60 = a2;
  v57 = *v5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB52D0, &qword_248A14980);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v58 = &v56 - v11;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5608, &qword_248A15110);
  v12 = *(*(v61 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v61);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v56 - v16;
  v18 = sub_248A12A50();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = (&v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = v6[3];
  *v22 = v23;
  (*(v19 + 104))(v22, *MEMORY[0x277D85200], v18);
  v24 = v23;
  v25 = sub_248A12A60();
  (*(v19 + 8))(v22, v18);
  if (v25)
  {
    if (qword_27EEB51A0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v26 = sub_248A122D0();
  __swift_project_value_buffer(v26, qword_27EEB9DC8);
  v63 = a5;
  sub_24898D610(a5, v17, &qword_27EEB5608, &qword_248A15110);

  v27 = sub_248A122B0();
  v28 = sub_248A12E80();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v64 = v6;
    v31 = v30;
    v66[0] = v30;
    *v29 = 136446978;
    v32 = PeerConnection.description.getter();
    v34 = v33;

    v35 = sub_24897BC00(v32, v34, v66);

    *(v29 + 4) = v35;
    *(v29 + 12) = 2082;
    v65 = a3;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5618, &qword_248A15130);
    v36 = sub_248A12B80();
    v38 = sub_24897BC00(v36, v37, v66);

    *(v29 + 14) = v38;
    *(v29 + 22) = 1026;
    *(v29 + 24) = v62 & 1;
    *(v29 + 28) = 2082;
    sub_24898D610(v17, v15, &qword_27EEB5608, &qword_248A15110);
    v39 = sub_248A12B80();
    v41 = v40;
    sub_248983734(v17, &qword_27EEB5608, &qword_248A15110);
    v42 = sub_24897BC00(v39, v41, v66);

    *(v29 + 30) = v42;
    _os_log_impl(&dword_248975000, v27, v28, "[%{public}s] Handle next message (context: %{public}s, isComplete: %{BOOL,public}d), error: %{public}s)", v29, 0x26u);
    swift_arrayDestroy();
    v43 = v31;
    v6 = v64;
    MEMORY[0x24C1E0A80](v43, -1, -1);
    MEMORY[0x24C1E0A80](v29, -1, -1);

    v44 = v63;
    if (!a3)
    {
      goto LABEL_16;
    }
  }

  else
  {

    sub_248983734(v17, &qword_27EEB5608, &qword_248A15110);
    v44 = v63;
    if (!a3)
    {
      goto LABEL_16;
    }
  }

  if (qword_27EEB5180 != -1)
  {
    swift_once();
  }

  if (sub_248A12650())
  {
    sub_248A12800();
    if (swift_dynamicCastClass())
    {
      sub_248A12810();
      if (!v66[3])
      {

        sub_248983734(v66, &qword_27EEB5610, &qword_248A15118);
        goto LABEL_16;
      }

      if (swift_dynamicCast())
      {
        v45 = v65;
        v46 = sub_248A12D40();
        v47 = v58;
        (*(*(v46 - 8) + 56))(v58, 1, 1, v46);
        v48 = *(v57 + 80);
        v49 = *(v57 + 88);
        type metadata accessor for PeerConnection();
        WitnessTable = swift_getWitnessTable();
        v51 = swift_allocObject();
        *(v51 + 16) = v6;
        *(v51 + 24) = WitnessTable;
        *(v51 + 32) = v6;
        *(v51 + 40) = v45;
        v53 = v59;
        v52 = v60;
        *(v51 + 48) = v59;
        *(v51 + 56) = v52;
        swift_retain_n();
        sub_24898C480(v53, v52);
        sub_2489AC334(0, 0, v47, &unk_248A15128, v51);
      }
    }
  }

LABEL_16:
  v54 = sub_248A128A0();
  result = (*(*(v54 - 8) + 48))(v44, 1, v54);
  if (result == 1)
  {
    return sub_248986928();
  }

  return result;
}

uint64_t sub_248987450(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a6;
  v7[4] = a7;
  v7[2] = a4;
  v7[5] = *a4;
  v11 = swift_task_alloc();
  v7[6] = v11;
  *v11 = v7;
  v11[1] = sub_248987534;

  return sub_24898926C(a5, a6, a7);
}

uint64_t sub_248987534(uint64_t a1, unint64_t a2)
{
  v6 = *(*v3 + 48);
  v7 = *v3;
  v7[7] = v2;

  if (v2)
  {
    v8 = v7[5];
    v9 = v7[2];
    v10 = *(v8 + 80);
    v11 = *(v8 + 88);
    type metadata accessor for PeerConnection();
    swift_getWitnessTable();
    v13 = sub_248A12CD0();

    return MEMORY[0x2822009F8](sub_2489876D0, v13, v12);
  }

  else
  {
    sub_24898C4E8(a1, a2);
    v14 = v7[1];

    return v14();
  }
}

uint64_t sub_2489876D0()
{
  v32 = v0;
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];
  v5 = sub_248A122D0();
  __swift_project_value_buffer(v5, qword_27EEB9DC8);

  sub_24898C480(v3, v2);
  v6 = v1;
  v7 = sub_248A122B0();
  v8 = sub_248A12E60();
  sub_24898C4E8(v3, v2);

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[2];
  if (v9)
  {
    v11 = v0[4];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v31 = v14;
    *v12 = 136446722;
    v15 = PeerConnection.description.getter();
    v17 = v16;

    v18 = sub_24897BC00(v15, v17, &v31);

    *(v12 + 4) = v18;
    *(v12 + 12) = 2082;
    if (v11 >> 60 == 15)
    {
      v19 = 0xE300000000000000;
      v20 = 7104878;
    }

    else
    {
      v22 = v0[3];
      v23 = v0[4];
      v20 = sub_248A11AD0();
      v19 = v24;
    }

    v25 = v0[7];
    v26 = sub_24897BC00(v20, v19, &v31);

    *(v12 + 14) = v26;
    *(v12 + 22) = 2114;
    v27 = v25;
    v28 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v28;
    *v13 = v28;
    _os_log_impl(&dword_248975000, v7, v8, "[%{public}s] Failed to parse message: %{public}s; error: %{public}@", v12, 0x20u);
    sub_248983734(v13, &qword_27EEB5600, &unk_248A15210);
    MEMORY[0x24C1E0A80](v13, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v14, -1, -1);
    MEMORY[0x24C1E0A80](v12, -1, -1);
  }

  else
  {
    v21 = v0[7];
  }

  v29 = v0[1];

  return v29();
}

void sub_248987988(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5450, qword_248A14E30);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = (&v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v10 = &v50 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5420, &qword_248A14E20);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v50 - v14;
  v16 = qword_27EEB5418;
  swift_beginAccess();
  sub_24898D610(v2 + v16, v10, &qword_27EEB5450, qword_248A14E30);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_248983734(v10, &qword_27EEB5450, qword_248A14E30);
    if (qword_27EEB51A0 != -1)
    {
      swift_once();
    }

    v17 = sub_248A122D0();
    __swift_project_value_buffer(v17, qword_27EEB9DC8);

    v18 = sub_248A122B0();
    v19 = sub_248A12E60();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v54 = v21;
      *v20 = 136446210;
      v22 = PeerConnection.description.getter();
      v24 = v23;

      v25 = sub_24897BC00(v22, v24, &v54);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_248975000, v18, v19, "[%{public}s] Ready continuation already resumed", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x24C1E0A80](v21, -1, -1);
      MEMORY[0x24C1E0A80](v20, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    (*(v12 + 32))(v15, v10, v11);
    if (a1)
    {
      v26 = a1;
      if (qword_27EEB51A0 != -1)
      {
        swift_once();
      }

      v27 = sub_248A122D0();
      __swift_project_value_buffer(v27, qword_27EEB9DC8);
      v28 = a1;

      v29 = sub_248A122B0();
      v30 = sub_248A12E80();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v54 = v53;
        *v31 = 136446466;
        v51 = v29;
        v32 = PeerConnection.description.getter();
        v33 = v8;
        v35 = v34;

        v36 = sub_24897BC00(v32, v35, &v54);
        v8 = v33;

        *(v31 + 4) = v36;
        *(v31 + 12) = 2114;
        v37 = a1;
        v38 = _swift_stdlib_bridgeErrorToNSError();
        *(v31 + 14) = v38;
        v29 = v51;
        v39 = v52;
        *v52 = v38;
        _os_log_impl(&dword_248975000, v29, v30, "[%{public}s] Resuming ready continuation with error: %{public}@", v31, 0x16u);
        sub_248983734(v39, &qword_27EEB5600, &unk_248A15210);
        MEMORY[0x24C1E0A80](v39, -1, -1);
        v40 = v53;
        __swift_destroy_boxed_opaque_existential_0(v53);
        MEMORY[0x24C1E0A80](v40, -1, -1);
        MEMORY[0x24C1E0A80](v31, -1, -1);
      }

      else
      {
      }

      v54 = a1;
      sub_248A12CE0();
    }

    else
    {
      if (qword_27EEB51A0 != -1)
      {
        swift_once();
      }

      v41 = sub_248A122D0();
      __swift_project_value_buffer(v41, qword_27EEB9DC8);

      v42 = sub_248A122B0();
      v43 = sub_248A12E80();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v54 = v45;
        *v44 = 136446210;
        v46 = PeerConnection.description.getter();
        v53 = v8;
        v48 = v47;

        v49 = sub_24897BC00(v46, v48, &v54);
        v8 = v53;

        *(v44 + 4) = v49;
        _os_log_impl(&dword_248975000, v42, v43, "[%{public}s] Resuming ready continuation with success", v44, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v45);
        MEMORY[0x24C1E0A80](v45, -1, -1);
        MEMORY[0x24C1E0A80](v44, -1, -1);
      }

      else
      {
      }

      sub_248A12CF0();
    }

    (*(v12 + 56))(v8, 1, 1, v11);
    sub_248983B30(v8);
    (*(v12 + 8))(v15, v11);
  }
}

uint64_t sub_248987FF4()
{
  v1 = v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB52D0, &qword_248A14980);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v16 - v5;
  sub_248988920();
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v7 = sub_248A122D0();
  __swift_project_value_buffer(v7, qword_27EEB9DC8);
  sub_2489BDB14(0xD000000000000062, 0x8000000248A18F40, 0x6D69547472617473, 0xEE00292874756F65);
  v8 = sub_248A12D40();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = *(v2 + 80);
  v10 = *(v2 + 88);
  type metadata accessor for PeerConnection();
  WitnessTable = swift_getWitnessTable();
  v12 = swift_allocObject();
  v12[2] = v1;
  v12[3] = WitnessTable;
  v12[4] = v1;
  v12[5] = v2;
  swift_retain_n();
  v13 = sub_2489E5FD4(0, 0, v6, &unk_248A15100, v12);
  v14 = *(v1 + qword_27EEB5438);
  *(v1 + qword_27EEB5438) = v13;
}

uint64_t sub_2489881FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = *a4;
  v7 = sub_248A131D0();
  v5[4] = v7;
  v8 = *(v7 - 8);
  v5[5] = v8;
  v9 = *(v8 + 64) + 15;
  v5[6] = swift_task_alloc();
  v10 = *(v6 + 80);
  v11 = *(v6 + 88);
  type metadata accessor for PeerConnection();
  swift_getWitnessTable();
  v13 = sub_248A12CD0();
  v5[7] = v13;
  v5[8] = v12;

  return MEMORY[0x2822009F8](sub_248988328, v13, v12);
}

uint64_t sub_248988328()
{
  v15 = v0;
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v1 = sub_248A122D0();
  v0[9] = __swift_project_value_buffer(v1, qword_27EEB9DC8);
  v2 = sub_248A122B0();
  v3 = sub_248A12E80();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[3];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136446210;
    v7 = sub_248A13570();
    v9 = sub_24897BC00(v7, v8, &v14);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_248975000, v2, v3, "[%{public}s] Peer connection activation timeout started", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x24C1E0A80](v6, -1, -1);
    MEMORY[0x24C1E0A80](v5, -1, -1);
  }

  v10 = v0[6];
  sub_248A133B0();
  v11 = swift_task_alloc();
  v0[10] = v11;
  *v11 = v0;
  v11[1] = sub_248988524;
  v12 = v0[6];

  return sub_248996414(0x8AC7230489E80000, 0, 0, 0, 1);
}

uint64_t sub_248988524()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *v1;
  *(*v1 + 88) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 64);
  v9 = *(v2 + 56);
  if (v0)
  {
    v10 = sub_2489888BC;
  }

  else
  {
    v10 = sub_2489886BC;
  }

  return MEMORY[0x2822009F8](v10, v9, v8);
}

uint64_t sub_2489886BC()
{
  v18 = v0;
  v1 = v0[11];
  sub_248A12D90();
  if (v1)
  {
    v2 = v0[6];

    v3 = v0[1];
  }

  else
  {
    if (!*(v0[2] + qword_27EEB5448))
    {
      v4 = v0[9];
      sub_24898C460(0);
      v5 = sub_248A122B0();
      v6 = sub_248A12E80();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = v0[3];
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v17 = v9;
        *v8 = 136446210;
        v10 = sub_248A13570();
        v12 = sub_24897BC00(v10, v11, &v17);

        *(v8 + 4) = v12;
        _os_log_impl(&dword_248975000, v5, v6, "[%{public}s] Peer connection activation timeout hit", v8, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v9);
        MEMORY[0x24C1E0A80](v9, -1, -1);
        MEMORY[0x24C1E0A80](v8, -1, -1);
      }

      v13 = v0[2];
      sub_248A12D00();
      sub_24898D594(&qword_27EEB55F8, MEMORY[0x277D85678]);
      v14 = swift_allocError();
      sub_248A12A70();
      sub_248987988(v14);
    }

    v15 = v0[6];

    v3 = v0[1];
  }

  return v3();
}

uint64_t sub_2489888BC()
{
  v1 = v0[11];
  v2 = v0[6];

  v3 = v0[1];

  return v3();
}

void sub_248988920()
{
  if (*(v0 + qword_27EEB5438))
  {
    if (qword_27EEB51A0 != -1)
    {
      swift_once();
    }

    v1 = sub_248A122D0();
    __swift_project_value_buffer(v1, qword_27EEB9DC8);
    sub_2489BDB14(0xD000000000000062, 0x8000000248A18F40, 0x656D6954706F7473, 0xED0000292874756FLL);
    v2 = qword_27EEB5438;
    if (*(v0 + qword_27EEB5438))
    {
      v3 = *(v0 + qword_27EEB5438);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5EB0, &qword_248A15C20);
      sub_248A12D70();

      v2 = qword_27EEB5438;
      v4 = *(v0 + qword_27EEB5438);
    }

    *(v0 + v2) = 0;
  }
}

uint64_t sub_248988A60(int a1)
{
  *(v2 + 16) = v1;
  *(v2 + 32) = a1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 88);
  type metadata accessor for PeerConnection();
  swift_getWitnessTable();
  v6 = sub_248A12CD0();

  return MEMORY[0x2822009F8](sub_248988B30, v6, v5);
}

uint64_t sub_248988B30()
{
  v21 = v0;
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = sub_248A122D0();
  __swift_project_value_buffer(v2, qword_27EEB9DC8);

  v3 = sub_248A122B0();
  v4 = sub_248A12E80();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 16);
  if (v5)
  {
    v7 = *(v0 + 32);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136446466;

    v10 = PeerConnection.description.getter();
    v12 = v11;

    v13 = sub_24897BC00(v10, v12, &v20);

    *(v8 + 4) = v13;
    *(v8 + 12) = 1026;
    *(v8 + 14) = v7;
    _os_log_impl(&dword_248975000, v3, v4, "[%{public}s] Transport item %{public}u", v8, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x24C1E0A80](v9, -1, -1);
    MEMORY[0x24C1E0A80](v8, -1, -1);
  }

  else
  {
  }

  v14 = *(*(v0 + 16) + 16);
  v15 = *(MEMORY[0x277D05180] + 4);
  v19 = (*MEMORY[0x277D05180] + MEMORY[0x277D05180]);
  v16 = swift_task_alloc();
  *(v0 + 24) = v16;
  *v16 = v0;
  v16[1] = sub_248988D64;
  v17 = *(v0 + 32);

  return v19(v17, 0, 0xF000000000000000);
}

uint64_t sub_248988D64(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 24);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

uint64_t sub_248988E74(uint64_t a1, uint64_t a2, int a3, const void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB52D0, &qword_248A14980);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = v11;
  *(v12 + 32) = a1;
  v13 = sub_248A12D40();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_248A15160;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_248A15168;
  v15[5] = v14;

  sub_2489E4DAC(0, 0, v10, &unk_248A15170, v15);
}

uint64_t sub_248988FFC(int a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);

  v5 = swift_task_alloc();
  v3[4] = v5;
  *v5 = v3;
  v5[1] = sub_2489890B8;

  return sub_248988A60(a1);
}

uint64_t sub_2489890B8(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = *v3;
  v8 = *(*v3 + 32);
  v9 = *(*v3 + 16);
  v10 = *v3;

  if (v4)
  {
    v11 = sub_248A11A30();

    v12 = v11;
    v13 = 0;
  }

  else if (a2 >> 60 == 15)
  {
    v12 = 0;
    v13 = 0;
    v11 = 0;
  }

  else
  {
    v14 = sub_248A11AF0();
    sub_24898C4E8(a1, a2);
    v13 = v14;
    v12 = 0;
    v11 = v14;
  }

  v15 = *(v7 + 24);
  (v15)[2](v15, v13, v12);

  _Block_release(v15);
  v16 = *(v10 + 8);

  return v16();
}

uint64_t sub_24898926C(int a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 32) = a3;
  *(v4 + 40) = v3;
  *(v4 + 24) = a2;
  *(v4 + 56) = a1;
  v5 = *(*v3 + 80);
  v6 = *(*v3 + 88);
  type metadata accessor for PeerConnection();
  swift_getWitnessTable();
  v8 = sub_248A12CD0();

  return MEMORY[0x2822009F8](sub_248989340, v8, v7);
}

uint64_t sub_248989340()
{
  v37 = v0;
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 24);
  v4 = sub_248A122D0();
  __swift_project_value_buffer(v4, qword_27EEB9DC8);

  sub_24898C480(v3, v2);
  v5 = sub_248A122B0();
  v6 = sub_248A12E80();
  sub_24898C4E8(v3, v2);
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 40);
  if (!v7)
  {

    goto LABEL_8;
  }

  v9 = *(v0 + 32);
  v10 = *(v0 + 56);
  v11 = swift_slowAlloc();
  v12 = swift_slowAlloc();
  v36 = v12;
  *v11 = 136446722;
  v13 = PeerConnection.description.getter();
  v15 = v14;

  v16 = sub_24897BC00(v13, v15, &v36);

  *(v11 + 4) = v16;
  *(v11 + 12) = 1026;
  *(v11 + 14) = v10;
  *(v11 + 18) = 2082;
  if (v9 >> 60 == 15)
  {
    goto LABEL_5;
  }

  v28 = *(v0 + 32);
  v29 = v28 >> 62;
  if ((v28 >> 62) <= 1)
  {
    if (!v29)
    {
      v18 = BYTE6(v28);
      goto LABEL_6;
    }

LABEL_18:
    v33 = *(v0 + 24);
    v34 = *(v0 + 28);
    v32 = __OFSUB__(v34, v33);
    LODWORD(v18) = v34 - v33;
    if (v32)
    {
      __break(1u);
      return result;
    }

    v18 = v18;
    goto LABEL_6;
  }

  if (v29 == 2)
  {
    v30 = *(*(v0 + 24) + 16);
    v31 = *(*(v0 + 24) + 24);
    v32 = __OFSUB__(v31, v30);
    v18 = v31 - v30;
    if (!v32)
    {
      goto LABEL_6;
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_5:
  v18 = 0;
LABEL_6:
  *(v0 + 16) = v18;
  v19 = sub_248A132F0();
  v21 = sub_24897BC00(v19, v20, &v36);

  *(v11 + 20) = v21;
  _os_log_impl(&dword_248975000, v5, v6, "[%{public}s] Transport item %{public}u with data %{public}s", v11, 0x1Cu);
  swift_arrayDestroy();
  MEMORY[0x24C1E0A80](v12, -1, -1);
  MEMORY[0x24C1E0A80](v11, -1, -1);

LABEL_8:
  v22 = *(*(v0 + 40) + 16);
  v23 = *(MEMORY[0x277D05180] + 4);
  v35 = (*MEMORY[0x277D05180] + MEMORY[0x277D05180]);
  v24 = swift_task_alloc();
  *(v0 + 48) = v24;
  *v24 = v0;
  v24[1] = sub_248989634;
  v25 = *(v0 + 24);
  v26 = *(v0 + 32);
  v27 = *(v0 + 56);

  return v35(v27, v25, v26);
}

uint64_t sub_248989634(uint64_t a1, uint64_t a2)
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

uint64_t sub_248989744(uint64_t a1, uint64_t a2, int a3, void *a4, const void *a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB52D0, &qword_248A14980);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  *(v14 + 32) = v13;
  *(v14 + 40) = a1;
  v15 = sub_248A12D40();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_248A15140;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_248A15148;
  v17[5] = v16;
  v18 = a4;

  sub_2489E4DAC(0, 0, v12, &unk_248A15150, v17);
}

uint64_t sub_2489898D8(int a1, void *a2, void *aBlock, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  if (a2)
  {
    v7 = a2;

    a2 = sub_248A11B00();
    v9 = v8;
  }

  else
  {

    v9 = 0xF000000000000000;
  }

  v4[4] = a2;
  v4[5] = v9;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_2489899D8;

  return sub_24898926C(a1, a2, v9);
}

uint64_t sub_2489899D8(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = *v3;
  v8 = *(*v3 + 48);
  v9 = *(*v3 + 40);
  v10 = *(*v3 + 32);
  v11 = *(*v3 + 16);
  v12 = *v3;

  sub_24898C4E8(v10, v9);
  if (v4)
  {
    v13 = sub_248A11A30();

    v14 = v13;
    v15 = 0;
  }

  else if (a2 >> 60 == 15)
  {
    v14 = 0;
    v15 = 0;
    v13 = 0;
  }

  else
  {
    v16 = sub_248A11AF0();
    sub_24898C4E8(a1, a2);
    v15 = v16;
    v14 = 0;
    v13 = v16;
  }

  v17 = *(v7 + 24);
  (v17)[2](v17, v15, v14);

  _Block_release(v17);
  v18 = *(v12 + 8);

  return v18();
}

uint64_t sub_248989BCC()
{
  v1 = *v0;
  sub_24898C374();
}

uint64_t PeerConnection.description.getter()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_248A11BC0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5400, &unk_248A14E10);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v25 - v10;
  v28 = 0;
  v29 = 0xE000000000000000;
  sub_248A13100();
  v12 = sub_248A13570();
  v14 = v13;

  v26 = v12;
  v27 = v14;
  MEMORY[0x24C1DF8B0](0x63656E6E6F432820, 0xEE00203A6E6F6974);
  v15 = *(v0 + qword_27EEB5440);
  v16 = *(v1 + qword_27EEB5440 + 8);
  ObjectType = swift_getObjectType();
  v28 = (*(v16 + 8))(ObjectType, v16);
  v18 = sub_248A132F0();
  MEMORY[0x24C1DF8B0](v18);

  MEMORY[0x24C1DF8B0](0x656369766544202CLL, 0xEA0000000000203ALL);
  v19 = qword_27EEB5408;
  swift_beginAccess();
  sub_24898D610(v1 + v19, v11, &qword_27EEB5400, &unk_248A14E10);
  if ((*(v4 + 48))(v11, 1, v3))
  {
    sub_248983734(v11, &qword_27EEB5400, &unk_248A14E10);
    v20 = 0xE500000000000000;
    v21 = 0x4449206F4ELL;
  }

  else
  {
    (*(v4 + 16))(v7, v11, v3);
    sub_248983734(v11, &qword_27EEB5400, &unk_248A14E10);
    v22 = sub_248A11B90();
    v20 = v23;
    (*(v4 + 8))(v7, v3);
    v21 = v22;
  }

  MEMORY[0x24C1DF8B0](v21, v20);

  MEMORY[0x24C1DF8B0](41, 0xE100000000000000);
  return v26;
}

uint64_t PeerConnection.send(_:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *v1;
  v4 = sub_248A12670();
  v2[4] = v4;
  v5 = *(v4 - 8);
  v2[5] = v5;
  v6 = *(v5 + 64) + 15;
  v2[6] = swift_task_alloc();
  v7 = *(v3 + 80);
  v2[7] = v7;
  v8 = *(v7 - 8);
  v2[8] = v8;
  v9 = *(v8 + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = *(v3 + 88);
  type metadata accessor for PeerConnection();
  swift_getWitnessTable();
  v11 = sub_248A12CD0();

  return MEMORY[0x2822009F8](sub_24898A0D4, v11, v10);
}

uint64_t sub_24898A0D4()
{
  v46 = v0;
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = sub_248A122D0();
  __swift_project_value_buffer(v6, qword_27EEB9DC8);
  (*(v2 + 16))(v1, v5, v3);

  v7 = sub_248A122B0();
  v8 = sub_248A12E80();
  if (os_log_type_enabled(v7, v8))
  {
    v41 = *(v0 + 80);
    v43 = *(v0 + 72);
    v10 = *(v0 + 56);
    v9 = *(v0 + 64);
    v11 = *(v0 + 24);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v45[0] = v13;
    *v12 = 136446466;
    v14 = PeerConnection.description.getter();
    v16 = v15;

    v17 = sub_24897BC00(v14, v16, v45);

    *(v12 + 4) = v17;
    *(v12 + 12) = 1026;
    v18 = *(v41 + 32);
    sub_248A13110();
    LODWORD(v17) = *(v0 + 100);
    (*(v9 + 8))(v43, v10);
    *(v12 + 14) = v17;
    _os_log_impl(&dword_248975000, v7, v8, "[%{public}s] Send item %{public}u", v12, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x24C1E0A80](v13, -1, -1);
    MEMORY[0x24C1E0A80](v12, -1, -1);
  }

  else
  {
    v19 = *(v0 + 24);
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
  }

  v20 = *(v0 + 80);
  v21 = *(v0 + 56);
  v22 = *(v0 + 16);
  sub_248A12800();
  v23 = *(v20 + 32);
  sub_248A13110();
  v24 = *(v0 + 88);
  if (qword_27EEB5180 != -1)
  {
    swift_once();
  }

  v25 = *(v0 + 48);
  v26 = *(v0 + 56);
  v27 = *(v0 + 40);
  v42 = *(v0 + 32);
  v44 = *(v0 + 72);
  v28 = *(v0 + 16);
  v40 = *(v0 + 24);

  v29 = sub_248A127F0();
  v45[3] = MEMORY[0x277D84CC0];
  LODWORD(v45[0]) = v24;
  sub_248A12820();
  sub_248A13110();
  *(v0 + 96) = *(v0 + 92);
  sub_248A132F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5468, &qword_248A14E70);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_248A14E00;
  *(v30 + 32) = v29;
  v31 = sub_248A12660();
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();

  v34 = sub_248A12640();
  v35 = *(v40 + qword_27EEB5440);
  v36 = *(v40 + qword_27EEB5440 + 8);
  ObjectType = swift_getObjectType();
  (*(v27 + 104))(v25, *MEMORY[0x277CD8DA8], v42);
  (*(v36 + 64))(0, 0xF000000000000000, v34, 1, v25, ObjectType, v36);

  (*(v27 + 8))(v25, v42);

  v38 = *(v0 + 8);

  return v38();
}

uint64_t PeerConnection.send<A>(_:)()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  type metadata accessor for PeerConnection();
  swift_getWitnessTable();
  v4 = sub_248A12CD0();

  return MEMORY[0x2822009F8](sub_24898D6AC, v4, v3);
}

{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  type metadata accessor for PeerConnection();
  swift_getWitnessTable();
  v4 = sub_248A12CD0();

  return MEMORY[0x2822009F8](sub_24898D6AC, v4, v3);
}

uint64_t PeerConnection.send<A>(_:payload:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = *v4;
  v7 = sub_248A12670();
  v5[7] = v7;
  v8 = *(v7 - 8);
  v5[8] = v8;
  v9 = *(v8 + 64) + 15;
  v5[9] = swift_task_alloc();
  v10 = sub_248A12F20();
  v5[10] = v10;
  v11 = *(v10 - 8);
  v5[11] = v11;
  v12 = *(v11 + 64) + 15;
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v13 = *(v6 + 80);
  v5[15] = v13;
  v14 = *(v13 - 8);
  v5[16] = v14;
  v15 = *(v14 + 64) + 15;
  v5[17] = swift_task_alloc();
  v5[18] = *(v6 + 88);
  type metadata accessor for PeerConnection();
  swift_getWitnessTable();
  v17 = sub_248A12CD0();

  return MEMORY[0x2822009F8](sub_24898A8EC, v17, v16);
}

uint64_t sub_24898A8EC()
{
  v85 = v0;
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v4 = *(v0 + 112);
  v3 = *(v0 + 120);
  v5 = *(v0 + 80);
  v6 = *(v0 + 88);
  v80 = *(v0 + 48);
  v8 = *(v0 + 16);
  v7 = *(v0 + 24);
  v9 = sub_248A122D0();
  __swift_project_value_buffer(v9, qword_27EEB9DC8);
  (*(v2 + 16))(v1, v8, v3);
  v10 = *(v6 + 16);
  v10(v4, v7, v5);

  v11 = sub_248A122B0();
  v12 = sub_248A12E80();
  if (os_log_type_enabled(v11, v12))
  {
    v68 = *(v0 + 144);
    v70 = *(v0 + 136);
    v14 = *(v0 + 120);
    v13 = *(v0 + 128);
    v72 = *(v0 + 104);
    v74 = *(v0 + 112);
    v81 = v10;
    v16 = *(v0 + 80);
    v15 = *(v0 + 88);
    v78 = v12;
    v17 = *(v0 + 48);
    v18 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v84[0] = v76;
    *v18 = 136446722;
    v19 = PeerConnection.description.getter();
    v21 = v20;

    v22 = sub_24897BC00(v19, v21, v84);

    *(v18 + 4) = v22;
    *(v18 + 12) = 1026;
    v23 = *(v68 + 32);
    sub_248A13110();
    LODWORD(v22) = *(v0 + 164);
    (*(v13 + 8))(v70, v14);
    *(v18 + 14) = v22;
    *(v18 + 18) = 2082;
    v81(v72, v74, v16);
    v24 = sub_248A12B80();
    v26 = v25;
    v27 = *(v15 + 8);
    v28 = v16;
    v10 = v81;
    v27(v74, v28);
    v29 = sub_24897BC00(v24, v26, v84);

    *(v18 + 20) = v29;
    _os_log_impl(&dword_248975000, v11, v78, "[%{public}s] Send item %{public}u with payload %{public}s", v18, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v76, -1, -1);
    MEMORY[0x24C1E0A80](v18, -1, -1);
  }

  else
  {
    v30 = *(v0 + 112);
    v31 = *(v0 + 80);
    v32 = *(v0 + 88);
    v33 = *(v0 + 48);
    (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));

    v27 = *(v32 + 8);
    v27(v30, v31);
  }

  v34 = *(v0 + 96);
  v35 = *(v0 + 32);
  v10(v34, *(v0 + 24), *(v0 + 80));
  v36 = *(v35 - 8);
  if ((*(v36 + 48))(v34, 1, v35) == 1)
  {
    v37 = *(v0 + 88) + 8;
    v27(*(v0 + 96), *(v0 + 80));
    v38 = 0;
    v39 = 0xF000000000000000;
  }

  else
  {
    v41 = *(v0 + 32);
    v40 = *(v0 + 40);
    v42 = *(v0 + 96);
    v43 = sub_248A12280();
    v45 = v44;
    (*(v36 + 8))(*(v0 + 96), *(v0 + 32));
    v38 = v43;
    v39 = v45;
  }

  v77 = v38;
  v83 = v39;
  v46 = *(v0 + 144);
  v47 = *(v0 + 120);
  v48 = *(v0 + 48);
  v49 = *(v0 + 16);
  sub_24898AFDC(v38, v39);
  sub_248A12800();
  v50 = *(v46 + 32);
  sub_248A13110();
  v51 = *(v0 + 152);
  if (qword_27EEB5180 != -1)
  {
    swift_once();
  }

  v52 = *(v0 + 120);
  v73 = *(v0 + 136);
  v75 = *(v0 + 112);
  v79 = *(v0 + 104);
  v82 = *(v0 + 96);
  v53 = *(v0 + 64);
  v54 = *(v0 + 56);
  v69 = *(v0 + 48);
  v71 = *(v0 + 72);
  v55 = *(v0 + 16);

  v56 = sub_248A127F0();
  v84[3] = MEMORY[0x277D84CC0];
  LODWORD(v84[0]) = v51;
  v57 = v56;
  sub_248A12820();
  sub_248A13110();
  *(v0 + 160) = *(v0 + 156);
  sub_248A132F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5468, &qword_248A14E70);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_248A14E00;
  *(v58 + 32) = v57;
  v59 = sub_248A12660();
  v60 = *(v59 + 48);
  v61 = *(v59 + 52);
  swift_allocObject();

  v62 = sub_248A12640();
  v63 = *(v69 + qword_27EEB5440);
  v64 = *(v69 + qword_27EEB5440 + 8);
  ObjectType = swift_getObjectType();
  (*(v53 + 104))(v71, *MEMORY[0x277CD8DA8], v54);
  (*(v64 + 64))(v77, v83, v62, 1, v71, ObjectType, v64);

  sub_24898C4E8(v77, v83);

  (*(v53 + 8))(v71, v54);

  v66 = *(v0 + 8);

  return v66();
}

void sub_24898AFDC(uint64_t a1, unint64_t a2)
{
  v40 = a1;
  v3 = sub_248A11A10();
  v38 = *(v3 - 8);
  v4 = *(v38 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_248A119F0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_248A11A20();
  v39 = *(v12 - 8);
  v13 = *(v39 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_248A120F0();
  v16 = sub_248A120E0();
  v17 = sub_248A12070();

  if ((v17 & 1) == 0)
  {
    return;
  }

  if (a2 >> 60 != 15)
  {
    v20 = a2 >> 62;
    v37 = a2;
    if ((a2 >> 62) > 1)
    {
      if (v20 != 2)
      {
        v21 = 0;
        goto LABEL_14;
      }

      v23 = *(v40 + 16);
      v22 = *(v40 + 24);
      v21 = v22 - v23;
      if (!__OFSUB__(v22, v23))
      {
        v24 = v40;
        v25 = a2;
        v26 = v40;
LABEL_12:
        sub_24898C494(v24, v25);
LABEL_15:
        v41 = v21;
        (*(v8 + 104))(v11, *MEMORY[0x277CC8DE8], v7);
        sub_248A11A00();
        sub_248A11960();
        (*(v38 + 8))(v6, v3);
        (*(v8 + 8))(v11, v7);
        sub_24898D540();
        sub_24898D594(&unk_27EEB5630, MEMORY[0x277CC8DF8]);
        sub_248A12F60();
        sub_24898C4E8(v26, v37);
        (*(v39 + 8))(v15, v12);
        v19 = v42[0];
        v18 = v42[1];
        goto LABEL_16;
      }

      __break(1u);
    }

    else
    {
      if (!v20)
      {
        v21 = BYTE6(a2);
LABEL_14:
        v26 = v40;
        goto LABEL_15;
      }

      if (!__OFSUB__(HIDWORD(v40), v40))
      {
        v21 = HIDWORD(v40) - v40;
        v24 = v40;
        v25 = a2;
        v26 = v40;
        goto LABEL_12;
      }
    }

    __break(1u);
    return;
  }

  v18 = 0xE400000000000000;
  v19 = 1701736302;
LABEL_16:
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v27 = sub_248A122D0();
  __swift_project_value_buffer(v27, qword_27EEB9DC8);

  v28 = sub_248A122B0();
  v29 = sub_248A12E80();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v42[0] = v31;
    *v30 = 136446466;
    v32 = PeerConnection.description.getter();
    v34 = v33;

    v35 = sub_24897BC00(v32, v34, v42);

    *(v30 + 4) = v35;
    *(v30 + 12) = 2082;
    v36 = sub_24897BC00(v19, v18, v42);

    *(v30 + 14) = v36;
    _os_log_impl(&dword_248975000, v28, v29, "[%{public}s] Payload size: %{public}s", v30, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v31, -1, -1);
    MEMORY[0x24C1E0A80](v30, -1, -1);
  }

  else
  {
  }
}

uint64_t PeerConnection.send<A, B>(_:payload:)()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  type metadata accessor for PeerConnection();
  swift_getWitnessTable();
  v4 = sub_248A12CD0();

  return MEMORY[0x2822009F8](sub_24898D6AC, v4, v3);
}

{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  type metadata accessor for PeerConnection();
  swift_getWitnessTable();
  v4 = sub_248A12CD0();

  return MEMORY[0x2822009F8](sub_24898B670, v4, v3);
}

uint64_t sub_24898B670()
{
  v1 = sub_248A12150();
  sub_24898D594(qword_27EEB5470, MEMORY[0x277D05138]);
  swift_allocError();
  (*(*(v1 - 8) + 104))(v2, *MEMORY[0x277D05128], v1);
  swift_willThrow();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_24898B770()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_248978D74;

  return sub_2489850E4();
}

uint64_t sub_24898B800(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2489839A0;

  return PeerConnection.send(_:)(a1);
}

uint64_t sub_24898B898()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2489839A0;

  return PeerConnection.send<A>(_:)();
}

uint64_t sub_24898B928()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2489839A0;

  return PeerConnection.send<A>(_:)();
}

uint64_t sub_24898B9B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2489839A0;

  return PeerConnection.send<A>(_:payload:)(a1, a2, a3, a4);
}

uint64_t sub_24898BA78()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_248978D74;

  return PeerConnection.send<A, B>(_:payload:)();
}

uint64_t sub_24898BB0C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2489839A0;

  return PeerConnection.send<A, B>(_:payload:)();
}

uint64_t sub_24898BBE0(uint64_t a1, uint64_t a2, const char *a3, uint64_t (*a4)(void))
{
  if (qword_27EEB51A0 != -1)
  {
    swift_once();
  }

  v7 = sub_248A122D0();
  __swift_project_value_buffer(v7, qword_27EEB9DC8);

  swift_unknownObjectRetain();
  v8 = sub_248A122B0();
  v9 = sub_248A12E80();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23 = v11;
    *v10 = 136446466;
    v12 = PeerConnection.description.getter();
    v22 = a4;
    v13 = a3;
    v15 = v14;

    v16 = sub_24897BC00(v12, v15, &v23);

    *(v10 + 4) = v16;
    *(v10 + 12) = 2082;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB55F0, &qword_248A150F0);
    v17 = sub_248A12B80();
    v19 = sub_24897BC00(v17, v18, &v23);

    *(v10 + 14) = v19;
    v20 = v13;
    a4 = v22;
    _os_log_impl(&dword_248975000, v8, v9, v20, v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1E0A80](v11, -1, -1);
    MEMORY[0x24C1E0A80](v10, -1, -1);
  }

  else
  {
  }

  return a4(a1);
}

uint64_t sub_24898BDFC(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  swift_unknownObjectRetain();
  swift_getObjectType();
  v4 = swift_conformsToProtocol2();
  if (v4 && a1)
  {
    a2(a1, v4);
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_24898BE78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a6;
  v12[5] = a1;
  v12[6] = a2;

  v14 = a3;
  sub_24898D158(&v14);
}

uint64_t sub_24898BF28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a4;
  v33 = a3;
  v30 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5400, &unk_248A14E10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v31 = &v29 - v7;
  v29 = sub_248A12EA0();
  v8 = *(v29 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v29);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_248A12ED0();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v14 = sub_248A12A40();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  sub_24898C37C();
  sub_248A12A20();
  v34 = MEMORY[0x277D84F90];
  sub_24898D594(&unk_28150F570, MEMORY[0x277D852D8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB5F20, &unk_248A16460);
  sub_24898C3C8();
  sub_248A12FA0();
  (*(v8 + 104))(v11, *MEMORY[0x277D85268], v29);
  *(a2 + 24) = sub_248A12EE0();
  v16 = qword_27EEB5408;
  v17 = sub_248A11BC0();
  (*(*(v17 - 8) + 56))(a2 + v16, 1, 1, v17);
  sub_248A11DF0();
  v18 = qword_27EEB5418;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5420, &qword_248A14E20);
  (*(*(v19 - 8) + 56))(a2 + v18, 1, 1, v19);
  v20 = qword_27EEB5428;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5430, &qword_248A14E28);
  (*(*(v21 - 8) + 56))(a2 + v20, 1, 1, v21);
  *(a2 + qword_27EEB5438) = 0;
  v22 = (a2 + qword_27EEB5440);
  v23 = v32;
  *v22 = v30;
  v22[1] = v23;
  *(a2 + qword_27EEB5448) = 0;
  sub_248A122A0();
  swift_unknownObjectRetain();
  *(a2 + 16) = sub_248A12290();
  v24 = v23;
  v25 = *(v23 + 80);
  v26 = v31;
  v25(v33, v24);
  swift_unknownObjectRelease();
  v27 = qword_27EEB5408;
  swift_beginAccess();
  sub_24898D194(v26, a2 + v27, &qword_27EEB5400, &unk_248A14E10);
  swift_endAccess();
  return a2;
}

unint64_t sub_24898C37C()
{
  result = qword_28150F560;
  if (!qword_28150F560)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28150F560);
  }

  return result;
}

unint64_t sub_24898C3C8()
{
  result = qword_28150F580;
  if (!qword_28150F580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27EEB5F20, &unk_248A16460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28150F580);
  }

  return result;
}

unint64_t sub_24898C42C(unint64_t result)
{
  if (result >= 2)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24898C454(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_248984B5C(a1);
}

unint64_t sub_24898C460(unint64_t result)
{
  if (result >= 2)
  {
    return swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_24898C480(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_24898C494(a1, a2);
  }

  return a1;
}

uint64_t sub_24898C494(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_24898C4E8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_24898C4FC(a1, a2);
  }

  return a1;
}

uint64_t sub_24898C4FC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_24898C554()
{
  sub_24898CD4C();
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    v2 = sub_248A11E00();
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_24898CDA4(319, &qword_27EEB5500, &qword_27EEB5420, &qword_248A14E20);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_24898CDA4(319, qword_27EEB5508, &qword_27EEB5430, &qword_248A14E28);
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_initClassMetadata2();
        }
      }
    }
  }
}

uint64_t dispatch thunk of PeerConnection.activate(transaction:)(uint64_t a1)
{
  v4 = *(*v1 + 312);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2489839A0;

  return v8(a1);
}

uint64_t dispatch thunk of PeerConnection.invalidate()()
{
  v2 = *(*v0 + 320);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_248978D74;

  return v6();
}

uint64_t dispatch thunk of PeerConnection.transport(_:)(uint64_t a1)
{
  v4 = *(*v1 + 384);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24898D6B0;

  return v8(a1);
}

uint64_t dispatch thunk of PeerConnection.transport(_:data:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 392);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_24898CC40;

  return v12(a1, a2, a3);
}

uint64_t sub_24898CC40(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

void sub_24898CD4C()
{
  if (!qword_27EEB54F8)
  {
    sub_248A11BC0();
    v0 = sub_248A12F20();
    if (!v1)
    {
      atomic_store(v0, &qword_27EEB54F8);
    }
  }
}

void sub_24898CDA4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_248A12F20();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_24898CDF8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_13DeviceSharing14PeerConnectionC16TransactionState33_28ACC8F9FF5F3BF728214C4F28B8E499LLOyx_G(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24898CE64(uint64_t *a1, unsigned int a2)
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

uint64_t sub_24898CEB8(uint64_t result, unsigned int a2, unsigned int a3)
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

void *sub_24898CF14(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_24898CF4C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_248978D74;

  return sub_2489881FC(a1, v4, v5, v7, v6);
}

uint64_t sub_24898D00C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v9 = *(v1 + 48);
  v8 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2489839A0;

  return sub_248987450(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_24898D0E4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v6 = v5[2];
  v7 = v5[3];
  v8 = v5[4];
  return sub_248986C5C(a1, a2, a3, a4, a5);
}

uint64_t sub_24898D130()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  return v1();
}

uint64_t sub_24898D158(void *a1)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  return v2(*a1);
}

uint64_t sub_24898D194(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_24898D1FC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2489839A0;

  return sub_2489898D8(v2, v3, v4, v5);
}

uint64_t sub_24898D2C0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2489839A0;

  return sub_2489E4BDC(v2, v3, v5);
}

uint64_t sub_24898D380(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2489839A0;

  return sub_2489E4CC4(a1, v4, v5, v7);
}

uint64_t sub_24898D44C()
{
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2489839A0;

  return sub_248988FFC(v2, v4, v3);
}

uint64_t objectdestroy_43Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_24898D540()
{
  result = qword_27EEB5628;
  if (!qword_27EEB5628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB5628);
  }

  return result;
}

uint64_t sub_24898D594(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24898D610(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t EnrollmentAssetServer.storeEnrollmentAssets(assets:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_248A12480();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v6 = sub_248A11AC0();
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v9 = sub_248A12400();
  v2[15] = v9;
  v10 = *(v9 - 8);
  v2[16] = v10;
  v11 = *(v10 + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24898D874, 0, 0);
}

uint64_t sub_24898D874()
{
  v80 = v0;
  if (qword_28150F5E0 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[2];
  v5 = sub_248A122D0();
  v0[19] = __swift_project_value_buffer(v5, qword_2815105A8);
  buf = *(v2 + 16);
  (buf)(v1, v4, v3);
  v6 = sub_248A122B0();
  v7 = sub_248A12E80();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[18];
  v11 = v0[15];
  v10 = v0[16];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v79[0] = v13;
    *v12 = 136446210;
    sub_24898F3E4(&unk_27EEB61B0, MEMORY[0x277D04EB8]);
    v14 = sub_248A132F0();
    v16 = v15;
    v74 = *(v10 + 8);
    v74(v9, v11);
    v17 = sub_24897BC00(v14, v16, v79);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_248975000, v6, v7, "storeEnrollmentAssets: %{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x24C1E0A80](v13, -1, -1);
    MEMORY[0x24C1E0A80](v12, -1, -1);
  }

  else
  {

    v74 = *(v10 + 8);
    v74(v9, v11);
  }

  v18 = v0[14];
  v19 = v0[8];
  v20 = v0[9];
  v21 = v0[2];
  v22 = v0[3];
  v23 = v22[11];
  v24 = v22[12];
  __swift_project_boxed_opaque_existential_1(v22 + 8, v23);
  sub_248A123F0();
  LOBYTE(v21) = (*(v24 + 40))(v18, v23, v24);
  v25 = *(v20 + 8);
  v0[20] = v25;
  v0[21] = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v25(v18, v19);
  if (v21)
  {
    v26 = v22[11];
    v27 = v22[12];
    __swift_project_boxed_opaque_existential_1(v22 + 8, v26);
    (*(v27 + 32))(v26, v27);
    v29 = v0[12];
    v28 = v0[13];
    v31 = v0[2];
    v30 = v0[3];
    v75 = v30[16];
    v76 = v0[8];
    v72 = v30[17];
    __swift_project_boxed_opaque_existential_1(v30 + 13, v75);
    sub_248A123F0();
    v33 = v22[11];
    v32 = v22[12];
    __swift_project_boxed_opaque_existential_1(v22 + 8, v33);
    (*(v32 + 8))(v33, v32);
    (*(v72 + 16))(v28, v29, v75);
    v25(v29, v76);
    v25(v28, v76);
    v34 = v0[11];
    v35 = v22[11];
    v36 = v22[12];
    __swift_project_boxed_opaque_existential_1(v22 + 8, v35);
    v37 = v22[11];
    v38 = v22[12];
    __swift_project_boxed_opaque_existential_1(v22 + 8, v37);
    (*(v38 + 8))(v37, v38);
    v39 = *(v36 + 80);
    v77 = (v39 + *v39);
    v40 = v39[1];
    v41 = swift_task_alloc();
    v0[22] = v41;
    *v41 = v0;
    v41[1] = sub_24898E028;
    v42 = v0[11];

    return v77(v42, v35, v36);
  }

  else
  {
    (buf)(v0[17], v0[2], v0[15]);
    v44 = sub_248A122B0();
    v45 = sub_248A12E60();
    v46 = os_log_type_enabled(v44, v45);
    v47 = v0[16];
    v48 = v0[17];
    v49 = v0[15];
    if (v46)
    {
      v50 = v0[14];
      v51 = v0[8];
      v69 = v0[15];
      bufa = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v79[0] = v78;
      *bufa = 136446210;
      v73 = v45;
      sub_248A123F0();
      sub_24898F3E4(&qword_27EEB53D0, MEMORY[0x277CC9260]);
      v52 = v51;
      v53 = sub_248A132F0();
      v55 = v54;
      v25(v50, v52);
      v74(v48, v69);
      v56 = sub_24897BC00(v53, v55, v79);

      *(bufa + 4) = v56;
      _os_log_impl(&dword_248975000, v44, v73, "%{public}s does not exist", bufa, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v78);
      MEMORY[0x24C1E0A80](v78, -1, -1);
      MEMORY[0x24C1E0A80](bufa, -1, -1);
    }

    else
    {

      v74(v48, v49);
    }

    v57 = sub_248A12350();
    sub_24898F3E4(&qword_27EEB51C0, MEMORY[0x277D04E68]);
    swift_allocError();
    (*(*(v57 - 8) + 104))(v58, *MEMORY[0x277D04E60], v57);
    swift_willThrow();
    v60 = v0[17];
    v59 = v0[18];
    v62 = v0[13];
    v61 = v0[14];
    v64 = v0[11];
    v63 = v0[12];
    v65 = v0[10];
    v67 = v0[6];
    v66 = v0[7];

    v68 = v0[1];

    return v68();
  }
}

uint64_t sub_24898E028(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 176);
  v6 = *v2;
  *(v4 + 184) = v1;

  v7 = *(v4 + 168);
  v8 = *(v4 + 160);
  v9 = *(v4 + 88);
  v10 = *(v4 + 64);
  if (v1)
  {
    v8(v9, v10);
    v11 = sub_24898EA94;
  }

  else
  {
    *(v4 + 232) = a1 & 1;
    v8(v9, v10);
    v11 = sub_24898E1B0;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_24898E1B0()
{
  if (*(v0 + 232) == 1)
  {
    v1 = *(v0 + 80);
    v2 = *(v0 + 56);
    v3 = *(v0 + 16);
    v4 = *(v0 + 24);
    v5 = v4[6];
    v6 = v4[7];
    __swift_project_boxed_opaque_existential_1(v4 + 3, v5);
    v7 = v4[11];
    v8 = v4[12];
    __swift_project_boxed_opaque_existential_1(v4 + 8, v7);
    (*(v8 + 8))(v7, v8);
    sub_248A123E0();
    sub_248A12AD0();

    v9 = *(v6 + 24);
    v33 = (v9 + *v9);
    v10 = v9[1];
    v11 = swift_task_alloc();
    *(v0 + 192) = v11;
    *v11 = v0;
    v11[1] = sub_24898E51C;
    v12 = *(v0 + 80);
    v13 = *(v0 + 56);

    return v33(v12, v13, 1, v5, v6);
  }

  else
  {
    v15 = *(v0 + 152);
    v16 = sub_248A122B0();
    v17 = sub_248A12E60();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_248975000, v16, v17, "Disk space is low. Cannot store BYOE assets on iOS device.", v18, 2u);
      MEMORY[0x24C1E0A80](v18, -1, -1);
    }

    v20 = *(v0 + 16);
    v19 = *(v0 + 24);

    v21 = sub_248A12350();
    sub_24898F3E4(&qword_27EEB51C0, MEMORY[0x277D04E68]);
    swift_allocError();
    (*(*(v21 - 8) + 104))(v22, *MEMORY[0x277D04E48], v21);
    swift_willThrow();
    sub_24898EC4C(v19, v20);
    v24 = *(v0 + 136);
    v23 = *(v0 + 144);
    v26 = *(v0 + 104);
    v25 = *(v0 + 112);
    v28 = *(v0 + 88);
    v27 = *(v0 + 96);
    v29 = *(v0 + 80);
    v31 = *(v0 + 48);
    v30 = *(v0 + 56);

    v32 = *(v0 + 8);

    return v32();
  }
}

uint64_t sub_24898E51C()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *(*v1 + 168);
  v5 = *(*v1 + 160);
  v6 = *(*v1 + 80);
  v7 = *(*v1 + 64);
  v8 = *(*v1 + 56);
  v9 = *(*v1 + 40);
  v10 = *(*v1 + 32);
  v14 = *v1;
  v2[25] = v0;

  v11 = *(v9 + 8);
  v2[26] = v11;
  v2[27] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v8, v10);
  v5(v6, v7);
  if (v0)
  {
    v12 = sub_24898EB70;
  }

  else
  {
    v12 = sub_24898E70C;
  }

  return MEMORY[0x2822009F8](v12, 0, 0);
}

uint64_t sub_24898E70C()
{
  v1 = v0[3];
  v2 = v1[41];
  sub_248A12060();
  v3 = v1[22];
  v4 = v1[23];
  __swift_project_boxed_opaque_existential_1(v1 + 19, v3);
  v5 = *(v4 + 8);
  v11 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[28] = v7;
  *v7 = v0;
  v7[1] = sub_24898E854;
  v8 = v0[6];
  v9 = v0[2];

  return v11(v8, v9, v3, v4);
}

uint64_t sub_24898E854()
{
  v1 = *(*v0 + 224);
  v2 = *(*v0 + 216);
  v3 = *(*v0 + 208);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 32);
  v7 = *v0;

  v3(v4, v5);

  return MEMORY[0x2822009F8](sub_24898E9B4, 0, 0);
}

uint64_t sub_24898E9B4()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  v4 = *(v0 + 104);
  v3 = *(v0 + 112);
  v6 = *(v0 + 88);
  v5 = *(v0 + 96);
  v7 = *(v0 + 80);
  v9 = *(v0 + 48);
  v8 = *(v0 + 56);
  sub_24898EC4C(*(v0 + 24), *(v0 + 16));

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_24898EA94()
{
  sub_24898EC4C(*(v0 + 24), *(v0 + 16));
  v1 = *(v0 + 184);
  v3 = *(v0 + 136);
  v2 = *(v0 + 144);
  v5 = *(v0 + 104);
  v4 = *(v0 + 112);
  v7 = *(v0 + 88);
  v6 = *(v0 + 96);
  v8 = *(v0 + 80);
  v10 = *(v0 + 48);
  v9 = *(v0 + 56);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_24898EB70()
{
  sub_24898EC4C(*(v0 + 24), *(v0 + 16));
  v1 = *(v0 + 200);
  v3 = *(v0 + 136);
  v2 = *(v0 + 144);
  v5 = *(v0 + 104);
  v4 = *(v0 + 112);
  v7 = *(v0 + 88);
  v6 = *(v0 + 96);
  v8 = *(v0 + 80);
  v10 = *(v0 + 48);
  v9 = *(v0 + 56);

  v11 = *(v0 + 8);

  return v11();
}

void sub_24898EC4C(void *a1, uint64_t a2)
{
  v30 = a2;
  v3 = sub_248A12400();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v29 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_248A11AC0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v27 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = v27 - v16;
  sub_248A120F0();
  v18 = sub_248A120E0();
  v19 = sub_248A120C0();

  if (v19)
  {
    v27[4] = v12;
    v27[5] = v4;
    v27[6] = v3;
    v28 = v8;
    v21 = a1[11];
    v20 = a1[12];
    __swift_project_boxed_opaque_existential_1(a1 + 8, v21);
    v23 = a1[11];
    v22 = a1[12];
    __swift_project_boxed_opaque_existential_1(a1 + 8, v23);
    (*(v22 + 8))(v23, v22);
    (*(v20 + 56))(v17, v21, v20);
    v24 = *(v28 + 8);
    v24(v17, v7);
    v25 = a1[11];
    v26 = a1[12];
    __swift_project_boxed_opaque_existential_1(a1 + 8, v25);
    sub_248A123F0();
    (*(v26 + 56))(v15, v25, v26);
    v24(v15, v7);
  }
}

uint64_t EnrollmentAssetServer.localDataExists()()
{
  v1[2] = v0;
  v2 = sub_248A12480();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24898F244, 0, 0);
}

uint64_t sub_24898F244()
{
  if (qword_28150F5E0 != -1)
  {
    swift_once();
  }

  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  v5 = sub_248A122D0();
  __swift_project_value_buffer(v5, qword_2815105A8);
  sub_2489BDB14(0xD000000000000075, 0x8000000248A19090, 0xD000000000000011, 0x8000000248A19110);
  v6 = v3[6];
  v7 = v3[7];
  __swift_project_boxed_opaque_existential_1(v3 + 3, v6);
  sub_248A12430();
  v8 = (*(v7 + 8))(v1, v6, v7);
  (*(v2 + 8))(v1, v4);
  v9 = v0[5];
  v10 = *(v8 + 16);

  v11 = v0[1];

  return v11(v10 != 0);
}

uint64_t sub_24898F3E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24898F42C()
{
  type metadata accessor for PeerProtocolFramer();
  sub_24898FB7C();
  v0 = sub_248A127D0();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_248A127C0();
  qword_27EEB9D90 = result;
  return result;
}

uint64_t sub_24898F4AC()
{
  v0 = qword_27EEB5640;

  return v0;
}

uint64_t sub_24898F4E4()
{

  type metadata accessor for PeerProtocolFramer();

  return swift_allocObject();
}

uint64_t sub_24898F518@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CD8EB8];
  v3 = sub_248A127E0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_24898F594()
{
  MEMORY[0x28223BE20](qword_27EEB5FC0);
  sub_248A12850();
  return qword_27EEB5FC0;
}

void sub_24898F70C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v34 = *MEMORY[0x277D85DE8];
  sub_248A12810();
  if (!v33)
  {
    sub_248983734(&v31, &qword_27EEB5610, &qword_248A15118);
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    if (qword_27EEB51A0 != -1)
    {
      swift_once();
    }

    v20 = sub_248A122D0();
    __swift_project_value_buffer(v20, qword_27EEB9DC8);

    v21 = sub_248A122B0();
    v22 = sub_248A12E60();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v31 = v24;
      *v23 = 136446466;
      *(v23 + 4) = sub_24897BC00(0xD000000000000036, 0x8000000248A19160, &v31);
      *(v23 + 12) = 2082;
      v30 = a2;
      sub_248A12800();

      v25 = sub_248A12B80();
      v27 = sub_24897BC00(v25, v26, &v31);

      *(v23 + 14) = v27;
      _os_log_impl(&dword_248975000, v21, v22, "%{public}s invalid message transport item %{public}s", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1E0A80](v24, -1, -1);
      MEMORY[0x24C1E0A80](v23, -1, -1);
    }

    goto LABEL_14;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(a3))
  {
    v29 = a3;
    v31 = sub_2489D7B18(&v30, 4);
    v32 = v5;
    v6 = sub_2489D7B18(&v29, 4);
    v8 = v7;
    sub_248A11B10();
    sub_24898C4FC(v6, v8);
    v9 = v31;
    v10 = v32;
    sub_248A12860();
    sub_24898C4FC(v9, v10);
    sub_248A12870();
    goto LABEL_14;
  }

  __break(1u);
  swift_once();
  v11 = sub_248A122D0();
  __swift_project_value_buffer(v11, qword_27EEB9DC8);
  v12 = a3;
  v13 = sub_248A122B0();
  v14 = sub_248A12E60();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v31 = v17;
    *v15 = 136446466;
    *(v15 + 4) = sub_24897BC00(0xD000000000000036, 0x8000000248A19160, &v31);
    *(v15 + 12) = 2114;
    v18 = a3;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v19;
    *v16 = v19;
    _os_log_impl(&dword_248975000, v13, v14, "%{public}s failed to write output: %{public}@", v15, 0x16u);
    sub_248983734(v16, &qword_27EEB5600, &unk_248A15210);
    MEMORY[0x24C1E0A80](v16, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x24C1E0A80](v17, -1, -1);
    MEMORY[0x24C1E0A80](v15, -1, -1);
  }

  else
  {
  }

LABEL_14:
  v28 = *MEMORY[0x277D85DE8];
}

unint64_t sub_24898FB7C()
{
  result = qword_27EEB5650;
  if (!qword_27EEB5650)
  {
    type metadata accessor for PeerProtocolFramer();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB5650);
  }

  return result;
}

uint64_t NSUbiquitousKeyValueStore.cloudDataExists()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5658, &qword_248A15220);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v8 = sub_248A12B30();
  [v2 longLongForKey_];

  sub_248A12190();
  v9 = sub_248A121B0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(a1, v7, v9);
  }

  (*(v10 + 104))(a1, *MEMORY[0x277D05148], v9);
  result = (v11)(v7, 1, v9);
  if (result != 1)
  {
    return sub_24898FD6C(v7);
  }

  return result;
}

uint64_t sub_24898FD6C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5658, &qword_248A15220);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void NSUbiquitousKeyValueStore.setCloudDataExists(_:)()
{
  v1 = v0;
  v2 = sub_248A121A0();
  v3 = sub_248A12B30();
  [v1 setLongLong:v2 forKey:v3];
}

uint64_t NSUbiquitousKeyValueStore.associatedAVP()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5658, &qword_248A15220);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v8 = sub_248A12B30();
  [v2 longLongForKey_];

  sub_248A12190();
  v9 = sub_248A121B0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(a1, v7, v9);
  }

  (*(v10 + 104))(a1, *MEMORY[0x277D05148], v9);
  result = (v11)(v7, 1, v9);
  if (result != 1)
  {
    return sub_24898FD6C(v7);
  }

  return result;
}

void NSUbiquitousKeyValueStore.setAssociatedAVP(_:)()
{
  v1 = v0;
  v2 = sub_248A121A0();
  v3 = sub_248A12B30();
  [v1 setLongLong:v2 forKey:v3];
}

Swift::Void __swiftcall NSUbiquitousKeyValueStore.createUniqueDeleteFromCloudEvent()()
{
  v1 = v0;
  v2 = sub_248A11BC0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_248A11BB0();
  v7 = sub_248A11B90();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  if (qword_28150F5E0 != -1)
  {
    swift_once();
  }

  v10 = sub_248A122D0();
  __swift_project_value_buffer(v10, qword_2815105A8);

  v11 = sub_248A122B0();
  v12 = sub_248A12E80();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v18 = v14;
    *v13 = 136446210;
    *(v13 + 4) = sub_24897BC00(v7, v9, &v18);
    _os_log_impl(&dword_248975000, v11, v12, "Setting deleteString to %{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x24C1E0A80](v14, -1, -1);
    MEMORY[0x24C1E0A80](v13, -1, -1);
  }

  v15 = sub_248A12B30();

  v16 = sub_248A12B30();
  [v1 setString:v15 forKey:v16];
}

Swift::String_optional __swiftcall NSUbiquitousKeyValueStore.getUniqueDeleteFromCloudEvent()()
{
  v1 = sub_248A12B30();
  v2 = [v0 stringForKey_];

  if (v2)
  {
    v3 = sub_248A12B60();
    v5 = v4;

    if (qword_28150F5E0 != -1)
    {
      swift_once();
    }

    v6 = sub_248A122D0();
    __swift_project_value_buffer(v6, qword_2815105A8);

    v7 = sub_248A122B0();
    v8 = sub_248A12E80();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v14 = v10;
      *v9 = 136446210;
      *(v9 + 4) = sub_24897BC00(v3, v5, &v14);
      _os_log_impl(&dword_248975000, v7, v8, "Fetched deleteString KVS: %{public}s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x24C1E0A80](v10, -1, -1);
      MEMORY[0x24C1E0A80](v9, -1, -1);
    }
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v11 = v3;
  v12 = v5;
  result.value._object = v12;
  result.value._countAndFlagsBits = v11;
  return result;
}

uint64_t sub_248990468@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5658, &qword_248A15220);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = *v1;
  v8 = sub_248A12B30();
  [v7 longLongForKey_];

  sub_248A12190();
  v9 = sub_248A121B0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v6, 1, v9) != 1)
  {
    return (*(v10 + 32))(a1, v6, v9);
  }

  (*(v10 + 104))(a1, *MEMORY[0x277D05148], v9);
  result = (v11)(v6, 1, v9);
  if (result != 1)
  {
    return sub_24898FD6C(v6);
  }

  return result;
}

void sub_248990604()
{
  v1 = *v0;
  v2 = sub_248A121A0();
  v3 = sub_248A12B30();
  [v1 setLongLong:v2 forKey:v3];
}

void sub_2489906B0()
{
  v1 = *v0;
  v2 = sub_248A121A0();
  v3 = sub_248A12B30();
  [v1 setLongLong:v2 forKey:v3];
}

void AVOutputContext.setOutputDevice(_:completionHandler:)(uint64_t a1, void *a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5660, &qword_248A15280);
  inited = swift_initStackObject();
  v8 = *MEMORY[0x277CB8640];
  *(inited + 32) = *MEMORY[0x277CB8640];
  *(inited + 16) = xmmword_248A14B30;
  *(inited + 64) = MEMORY[0x277D839B0];
  *(inited + 40) = 1;
  v9 = v8;
  sub_248991564(inited);
  swift_setDeallocating();
  sub_24899168C(inited + 32);
  type metadata accessor for AVOutputContextSetOutputDeviceOptionsKey(0);
  sub_2489916F4();
  v10 = sub_248A12A80();

  if (a2)
  {
    aBlock[4] = a2;
    aBlock[5] = a3;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2489909B0;
    aBlock[3] = &block_descriptor_0;
    a2 = _Block_copy(aBlock);
  }

  [v3 setOutputDevice:a1 options:v10 completionHandler:a2];
  _Block_release(a2);
}

void sub_2489909B0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t AVOutputContext.setOutputDevice(_:)(uint64_t a1)
{
  *(v2 + 224) = a1;
  *(v2 + 232) = v1;
  return MEMORY[0x2822009F8](sub_248990A38, 0, 0);
}

uint64_t sub_248990A38()
{
  v1 = v0[28];
  v2 = v0[29];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5660, &qword_248A15280);
  inited = swift_initStackObject();
  v4 = *MEMORY[0x277CB8640];
  *(inited + 32) = *MEMORY[0x277CB8640];
  *(inited + 16) = xmmword_248A14B30;
  *(inited + 64) = MEMORY[0x277D839B0];
  *(inited + 40) = 1;
  v5 = v4;
  sub_248991564(inited);
  swift_setDeallocating();
  sub_24899168C(inited + 32);
  type metadata accessor for AVOutputContextSetOutputDeviceOptionsKey(0);
  sub_2489916F4();
  v6 = sub_248A12A80();
  v0[30] = v6;

  v0[2] = v0;
  v0[7] = v0 + 27;
  v0[3] = sub_248990C1C;
  v7 = swift_continuation_init();
  v0[26] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5678, &qword_248A15298);
  v0[19] = MEMORY[0x277D85DD0];
  v0[20] = 1107296256;
  v0[21] = sub_248990D64;
  v0[22] = &block_descriptor_3;
  v0[23] = v7;
  [v2 setOutputDevice:v1 options:v6 completionHandler:v0 + 19];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_248990C1C()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_248990CFC, 0, 0);
}

uint64_t sub_248990CFC()
{
  v1 = *(v0 + 216);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_248990D64(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return MEMORY[0x282200948](v4);
}

id sub_248990DC8()
{
  v1 = [*v0 outputDevice];

  return v1;
}

uint64_t sub_248990E24(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_248990EBC;

  return AVOutputContext.setOutputDevice(_:)(a1);
}

uint64_t sub_248990EBC(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

unint64_t sub_248990FB8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB56B8, &unk_248A16440);
    v3 = sub_248A13240();
    v4 = a1 + 32;

    while (1)
    {
      sub_24898D610(v4, &v13, &qword_27EEB56C0, &qword_248A14CB0);
      v5 = v13;
      v6 = v14;
      result = sub_2489A7D40(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_248983794(&v15, (v3[7] + 32 * result));
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

unint64_t sub_2489910E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB56D0, &unk_248A15340);
    v3 = sub_248A13240();
    v4 = a1 + 32;

    while (1)
    {
      sub_24898D610(v4, v13, &qword_27EEB53A8, &qword_248A14CE8);
      result = sub_2489A7DB8(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_248983794(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_248991224(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EEB56F0, &unk_248A15360);
    v3 = sub_248A13240();

    for (i = (a1 + 80); ; i += 7)
    {
      v5 = *(i - 6);
      v6 = *(i - 5);
      v7 = *(i - 4);
      v8 = *(i - 24);
      v10 = *(i - 2);
      v9 = *(i - 1);
      v11 = *i;
      sub_2489837A4(v5, v6, v7, v8);

      v12 = v11;
      result = sub_2489A7ED0(v5, v6, v7, v8);
      if (v14)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v3[6] + 32 * result;
      *v15 = v5;
      *(v15 + 8) = v6;
      *(v15 + 16) = v7;
      *(v15 + 24) = v8;
      v16 = (v3[7] + 24 * result);
      *v16 = v10;
      v16[1] = v9;
      v16[2] = v12;
      v17 = v3[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v3[2] = v19;
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

unint64_t sub_24899137C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EEB56E0, &qword_248A15350);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5A20, &qword_248A15358);
    v8 = sub_248A13240();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_24898D610(v10, v6, &unk_27EEB56E0, &qword_248A15350);
      result = sub_2489A7DFC(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_248A12480();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_248991564(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB56C8, &qword_248A15338);
    v3 = sub_248A13240();
    v4 = a1 + 32;

    while (1)
    {
      sub_24898D610(v4, &v11, &qword_27EEB5668, &qword_248A15288);
      v5 = v11;
      result = sub_2489A863C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_248983794(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

uint64_t sub_24899168C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5668, &qword_248A15288);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2489916F4()
{
  result = qword_27EEB5670;
  if (!qword_27EEB5670)
  {
    type metadata accessor for AVOutputContextSetOutputDeviceOptionsKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB5670);
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  return sub_24897C864(a2 + 32, a1 + 32);
}

{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_destroy_helper_2(uint64_t a1)
{
  return __swift_destroy_boxed_opaque_existential_0((a1 + 32));
}

{
  v1 = *(a1 + 40);
}

uint64_t dispatch thunk of ViewMirroringOutputCoordinating.setOutputDevice(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_248990EBC;

  return v11(a1, a2, a3);
}

unint64_t sub_2489918CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB5A40, &qword_248A16410);
    v3 = sub_248A13240();
    for (i = a1 + 32; ; i += 48)
    {
      sub_24898D610(i, &v11, &qword_27EEB56B0, &qword_248A15330);
      v5 = v11;
      result = sub_2489A86D0(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_248978948(&v12, v3[7] + 40 * result);
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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