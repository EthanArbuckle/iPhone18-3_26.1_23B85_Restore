uint64_t sub_24AD39224()
{
  sub_24AD5F074();
  sub_24AD5E874();

  return sub_24AD5F094();
}

uint64_t sub_24AD39310()
{
  *v0;
  *v0;
  *v0;
  sub_24AD5E874();
}

uint64_t sub_24AD393EC()
{
  sub_24AD5F074();
  sub_24AD5E874();

  return sub_24AD5F094();
}

uint64_t sub_24AD39534()
{
  sub_24AD5F074();
  sub_24AD5E874();

  return sub_24AD5F094();
}

uint64_t sub_24AD3961C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_24AD39ADC();
  *a2 = result;
  return result;
}

void sub_24AD3964C(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000036;
  v3 = *v1;
  v4 = &unk_24AD61530;
  v5 = "yCloudKit.fetchDatabaseChanges";
  v6 = 0xD00000000000003ALL;
  v7 = "yCloudKit.fetchZoneChanges";
  v8 = 0xD000000000000039;
  if (v3 == 4)
  {
    v8 = 0xD000000000000037;
  }

  else
  {
    v7 = "yCloudKit.cloudKitError";
  }

  if (v3 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = "yCloudKit.pushReceived";
  v10 = 0xD00000000000003ELL;
  if (v3 == 1)
  {
    v10 = 0xD000000000000036;
  }

  else
  {
    v9 = "yCloudKit.accountState";
  }

  if (*v1)
  {
    v2 = v10;
    v4 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v2 = v6;
    v11 = v5;
  }

  *a1 = v2;
  a1[1] = v11 | 0x8000000000000000;
}

unint64_t sub_24AD396F8()
{
  result = qword_281064A78;
  if (!qword_281064A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281064A78);
  }

  return result;
}

unint64_t sub_24AD39750()
{
  result = qword_281064A98[0];
  if (!qword_281064A98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281064A98);
  }

  return result;
}

unint64_t sub_24AD397A8()
{
  result = qword_281064A88;
  if (!qword_281064A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281064A88);
  }

  return result;
}

uint64_t sub_24AD39814()
{
  *v0;
  *v0;
  *v0;
  sub_24AD5E874();
}

uint64_t sub_24AD39950@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_24AD39B28();
  *a2 = result;
  return result;
}

void sub_24AD39980(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000444972;
  v4 = 0x656E6961746E6F63;
  v5 = 0x800000024AD616F0;
  v6 = 0xD000000000000011;
  if (v2 != 5)
  {
    v6 = 0x6E6F6974656C6564;
    v5 = 0xED0000746E756F43;
  }

  v7 = 0xD000000000000010;
  v8 = 0x800000024AD616D0;
  if (v2 != 3)
  {
    v7 = 0x53746E756F636361;
    v8 = 0xEC00000065746174;
  }

  if (*v1 <= 4u)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0xE700000000000000;
  v10 = 0x444965706F6373;
  if (v2 != 1)
  {
    v10 = 0x4449656E6F7ALL;
    v9 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t sub_24AD39A88()
{
  result = qword_281064A90;
  if (!qword_281064A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281064A90);
  }

  return result;
}

uint64_t sub_24AD39ADC()
{
  v0 = sub_24AD5EF34();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_24AD39B28()
{
  v0 = sub_24AD5EF34();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t CloudKitCoordinator.__allocating_init(containerIdentifier:bundleIdentifier:containerEnvironment:mode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  swift_allocObject();
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_24AD0BDA0;

  return CloudKitCoordinator.init(containerIdentifier:bundleIdentifier:containerEnvironment:mode:)(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_24AD39C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60A8, &qword_24AD60380);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_24AD38B48(a3, v27 - v11, &qword_27EFA60A8, &qword_24AD60380);
  v13 = sub_24AD5E964();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_24AD06518(v12, &qword_27EFA60A8, &qword_24AD60380);
  }

  else
  {
    sub_24AD5E954();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_24AD5E924();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_24AD5E864() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_24AD06518(a3, &qword_27EFA60A8, &qword_24AD60380);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_24AD06518(a3, &qword_27EFA60A8, &qword_24AD60380);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

FindMyCloudKit::CloudKitCoordinator::Deletion __swiftcall CloudKitCoordinator.Deletion.init(recordType:recordID:)(Swift::String recordType, CKRecordID recordID)
{
  *v2 = recordType;
  *(v2 + 16) = recordID;
  result.recordType = recordType;
  result.recordID = recordID;
  return result;
}

uint64_t sub_24AD39F84(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  return MEMORY[0x2822009F8](sub_24AD39FA8, v2, 0);
}

uint64_t sub_24AD39FA8()
{
  v1 = v0[20];
  v2 = v0[19];
  v3 = *(v0[21] + 112);
  v4 = sub_24AD5E834();
  v0[22] = v4;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_24AD3A0E4;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6340, &qword_24AD61450);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24AD2E470;
  v0[13] = &block_descriptor_227;
  v0[14] = v5;
  [v3 fetchShareParticipantWithEmailAddress:v4 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24AD3A0E4()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 184) = v3;
  v4 = *(v1 + 168);
  if (v3)
  {
    v5 = sub_24AD5AC8C;
  }

  else
  {
    v5 = sub_24AD5AC84;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_24AD3A204(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  return MEMORY[0x2822009F8](sub_24AD3A228, v2, 0);
}

uint64_t sub_24AD3A228()
{
  v1 = v0[20];
  v2 = v0[19];
  v3 = *(v0[21] + 112);
  v4 = sub_24AD5E834();
  v0[22] = v4;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_24AD3A364;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6340, &qword_24AD61450);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24AD2E470;
  v0[13] = &block_descriptor_223;
  v0[14] = v5;
  [v3 fetchShareParticipantWithPhoneNumber:v4 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24AD3A364()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 184) = v3;
  v4 = *(v1 + 168);
  if (v3)
  {
    v5 = sub_24AD3A4F0;
  }

  else
  {
    v5 = sub_24AD3A484;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_24AD3A484()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_24AD3A4F0()
{
  v1 = v0[22];
  v2 = v0[23];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[23];

  return v3();
}

uint64_t sub_24AD3A560(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_24AD3A584, v2, 0);
}

uint64_t sub_24AD3A584()
{
  v1 = v0[4];
  v27 = v0[5];
  v2 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6320, &qword_24AD61428);
  v3 = sub_24AD5E364();
  v4 = *(v3 - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_24AD5F820;
  v8 = *(v4 + 16);
  v8(v7 + v6, v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6328, &unk_24AD61430);
  v9 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA61A8, &qword_24AD608A8) - 8);
  v10 = *(*v9 + 72);
  v11 = (*(*v9 + 80) + 32) & ~*(*v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_24AD5F820;
  v13 = v12 + v11;
  v14 = v9[14];
  v8(v13, v2, v3);
  *(v13 + v14) = v1;
  v15 = v1;
  sub_24AD344AC(v12);
  swift_setDeallocating();
  sub_24AD06518(v13, &qword_27EFA61A8, &qword_24AD608A8);
  swift_deallocClassInstance();
  v16 = objc_allocWithZone(MEMORY[0x277CBC3F8]);
  v17 = sub_24AD5E8B4();

  sub_24AD06578(0, &qword_27EFA5F80, 0x277CBC2C0);
  sub_24AD5A540(&qword_27EFA6048, 255, MEMORY[0x277CC9260]);
  v18 = sub_24AD5E7C4();

  v19 = [v16 initWithShareURLs:v17 invitationTokensByShareURL:v18];
  v0[6] = v19;

  v21 = sub_24AD5A540(&qword_281065388, v20, type metadata accessor for CloudKitCoordinator);
  v22 = swift_task_alloc();
  v0[7] = v22;
  *(v22 + 16) = v19;
  *(v22 + 24) = v27;
  v23 = *(MEMORY[0x277D85A40] + 4);
  v24 = swift_task_alloc();
  v0[8] = v24;
  v25 = sub_24AD06578(0, &qword_27EFA6330, 0x277CBC698);
  *v24 = v0;
  v24[1] = sub_24AD3A960;

  return MEMORY[0x2822008A0](v0 + 2, v27, v21, 0xD000000000000019, 0x800000024AD61F20, sub_24AD5A268, v22, v25);
}

uint64_t sub_24AD3A960()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v9 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = *(v2 + 40);
    v5 = sub_24AD3AAF0;
  }

  else
  {
    v6 = *(v2 + 56);
    v7 = *(v2 + 40);

    v5 = sub_24AD3AA88;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_24AD3AA88()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_24AD3AAF0()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);
  v3 = *(v0 + 72);

  return v2();
}

void *sub_24AD3AB74(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_24AD2E67C(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6128, &unk_24AD60BF0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_24AD3ACA4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_24AD5EC94();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_24AD5EC94();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_24AD52214(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_24AD52354(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_24AD3AD94(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  v10 = *v3;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v11 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  v12 = *(result - 8);
  if (v11 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = *(v12 + 72);
  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v15 = *(v5 + 16);
  v16 = __OFADD__(v15, v4);
  v17 = v15 + v4;
  if (!v16)
  {
    *(v5 + 16) = v17;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t IdentityLossResolutionMode.hashValue.getter()
{
  v1 = *v0;
  sub_24AD5F074();
  MEMORY[0x24C22ED70](v1);
  return sub_24AD5F094();
}

uint64_t sub_24AD3AF64()
{
  v0 = sub_24AD5E7A4();
  __swift_allocate_value_buffer(v0, qword_2810654A0);
  v1 = __swift_project_value_buffer(v0, qword_2810654A0);
  if (qword_281064A68 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_281065430);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_24AD3B02C()
{
  v1 = [*(v0 + 112) containerID];

  return v1;
}

uint64_t sub_24AD3B064@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 160);
  return result;
}

uint64_t sub_24AD3B0A8(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 160) = v2;
  return result;
}

unint64_t sub_24AD3B138@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v35 = *a3;
  v37 = MEMORY[0x277D84F90];
  v41 = MEMORY[0x277D84F90];
  v6 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v34 = v4;
  while (1)
  {
    v13 = v12;
    if (!v9)
    {
      break;
    }

LABEL_8:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = *(a1 + 56) + ((v12 << 10) | (16 * v14));
    if (*(v15 + 8) == 1)
    {
      v40 = *v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6128, &unk_24AD60BF0);
      result = swift_willThrowTypedImpl();
    }

    else
    {
      v16 = *v15;
      MEMORY[0x24C22E590]();
      if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v38 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_24AD5E8E4();
      }

      result = sub_24AD5E904();
      v37 = v41;
    }
  }

  while (1)
  {
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_28;
    }

    if (v12 >= v10)
    {
      break;
    }

    v9 = *(v6 + 8 * v12);
    ++v13;
    if (v9)
    {
      goto LABEL_8;
    }
  }

  v17 = 1 << *(a2 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(a2 + 64);
  v20 = (v17 + 63) >> 6;

  v21 = 0;
  v22 = MEMORY[0x277D84F90];
  if (v19)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v23 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v23 >= v20)
    {

      v32 = [*(v34 + 112) containerID];
      v33 = MEMORY[0x277D84F90];
      result = sub_24AD341CC(MEMORY[0x277D84F90]);
      *a4 = v32;
      *(a4 + 8) = v35;
      *(a4 + 16) = 0;
      *(a4 + 24) = v33;
      *(a4 + 32) = v33;
      *(a4 + 40) = v37;
      *(a4 + 48) = v22;
      *(a4 + 56) = result;
      *(a4 + 64) = v33;
      return result;
    }

    v19 = *(a2 + 64 + 8 * v23);
    ++v21;
    if (v19)
    {
      v21 = v23;
      do
      {
LABEL_20:
        v24 = (*(a2 + 48) + 24 * (__clz(__rbit64(v19)) | (v21 << 6)));
        v25 = *v24;
        v26 = v24[1];
        v27 = v24[2];

        v28 = v27;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_24AD2E7B0(0, *(v22 + 16) + 1, 1, v22);
          v22 = result;
        }

        v30 = *(v22 + 16);
        v29 = *(v22 + 24);
        if (v30 >= v29 >> 1)
        {
          result = sub_24AD2E7B0((v29 > 1), v30 + 1, 1, v22);
          v22 = result;
        }

        v19 &= v19 - 1;
        *(v22 + 16) = v30 + 1;
        v31 = (v22 + 24 * v30);
        v31[4] = v25;
        v31[5] = v26;
        v31[6] = v28;
      }

      while (v19);
    }
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t CloudKitCoordinator.init(containerIdentifier:bundleIdentifier:containerEnvironment:mode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  v8 = v6;
  *(v7 + 144) = a5;
  *(v7 + 152) = v8;
  *(v7 + 128) = a3;
  *(v7 + 136) = a4;
  *(v7 + 112) = a1;
  *(v7 + 120) = a2;
  *(v7 + 160) = *v8;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60A8, &qword_24AD60380) - 8) + 64) + 15;
  *(v7 + 168) = swift_task_alloc();
  *(v7 + 272) = *a6;

  return MEMORY[0x2822009F8](sub_24AD3B53C, 0, 0);
}

uint64_t sub_24AD3B53C()
{
  v34 = v0;
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v4 = *(v0 + 112);
  v3 = *(v0 + 120);
  swift_defaultActor_initialize();
  v5 = MEMORY[0x277D84F98];
  *(v2 + 128) = 0;
  *(v2 + 136) = 0;
  *(v2 + 144) = v5;
  *(v2 + 152) = v5;
  *(v2 + 160) = 0;
  v6 = objc_allocWithZone(MEMORY[0x277CBC220]);
  v7 = sub_24AD5E834();
  v8 = [v6 initWithContainerIdentifier:v7 environment:v1];
  *(v0 + 176) = v8;

  if (qword_2810653A0 != -1)
  {
    swift_once();
  }

  v9 = sub_24AD5E7A4();
  __swift_project_value_buffer(v9, qword_2810654A0);
  v10 = v8;
  v11 = sub_24AD5E784();
  v12 = sub_24AD5EB64();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138543362;
    *(v13 + 4) = v10;
    *v14 = v10;
    v15 = v10;
    _os_log_impl(&dword_24ACF2000, v11, v12, "Created CloudKit container named: %{public}@", v13, 0xCu);
    sub_24AD06518(v14, &qword_27EFA61C8, &unk_24AD60C30);
    MEMORY[0x24C22F400](v14, -1, -1);
    MEMORY[0x24C22F400](v13, -1, -1);
  }

  v16 = *(v0 + 144);

  if (v16 == 2)
  {
    v17 = sub_24AD5E784();
    v18 = sub_24AD5EB44();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_24ACF2000, v17, v18, "*** USING CLOUDKIT SANDBOX ENVIRONMENT ***", v19, 2u);
      MEMORY[0x24C22F400](v19, -1, -1);
    }
  }

  v20 = *(v0 + 272);
  v21 = *(v0 + 152);
  v23 = *(v0 + 128);
  v22 = *(v0 + 136);
  v25 = *(v0 + 112);
  v24 = *(v0 + 120);
  *(v21 + 112) = [objc_allocWithZone(MEMORY[0x277CBC218]) initWithContainerID_];
  *(v21 + 161) = v20;
  sub_24AD5ED34();

  MEMORY[0x24C22E570](v25, v24);

  sub_24AD5ED34();

  v33[0] = 0xD00000000000001BLL;
  v33[1] = 0x800000024AD61D30;
  MEMORY[0x24C22E570](v23, v22);

  *(v0 + 184) = 0xD00000000000001BLL;
  *(v0 + 192) = 0x800000024AD61D30;
  v26 = sub_24AD5E784();
  v27 = sub_24AD5EB64();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v33[0] = v29;
    *v28 = 136315138;
    *(v28 + 4) = sub_24AD2EDAC(0x69746375646F7270, 0xEA00000000006E6FLL, v33);
    _os_log_impl(&dword_24ACF2000, v26, v27, "pushEnvironment: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    MEMORY[0x24C22F400](v29, -1, -1);
    MEMORY[0x24C22F400](v28, -1, -1);
  }

  else
  {
  }

  *(v0 + 200) = sub_24AD5E774();
  v30 = *(MEMORY[0x277D08F48] + 4);
  v31 = swift_task_alloc();
  *(v0 + 208) = v31;
  *v31 = v0;
  v31[1] = sub_24AD3B9C0;

  return MEMORY[0x28215F5A0](0x69746375646F7270, 0xEA00000000006E6FLL, 0xD000000000000016, 0x800000024AD61D10);
}

uint64_t sub_24AD3B9C0(uint64_t a1)
{
  v2 = *(*v1 + 208);
  v4 = *v1;
  *(*v1 + 216) = a1;

  return MEMORY[0x2822009F8](sub_24AD3BAC0, 0, 0);
}

uint64_t sub_24AD3BAC0()
{
  v1 = *(v0 + 152);
  *(v1 + 120) = *(v0 + 216);
  return MEMORY[0x2822009F8](sub_24AD3BAE4, v1, 0);
}

uint64_t sub_24AD3BAE4()
{
  v1 = v0[25];
  v0[28] = *(v0[19] + 120);
  v0[29] = sub_24AD5A540(&qword_281064A50, 255, MEMORY[0x277D08F50]);

  v3 = sub_24AD5E924();

  return MEMORY[0x2822009F8](sub_24AD3BBC4, v3, v2);
}

uint64_t sub_24AD3BBC4()
{
  v1 = v0[28];
  v2 = v0[19];
  sub_24AD5E704();

  v0[30] = sub_24AD5A540(&qword_281065388, v3, type metadata accessor for CloudKitCoordinator);
  swift_getObjectType();
  v5 = sub_24AD5E924();

  return MEMORY[0x2822009F8](sub_24AD3BCB8, v5, v4);
}

uint64_t sub_24AD3BCB8()
{
  v1 = v0[29];
  v2 = v0[25];
  v0[31] = *(v0[19] + 120);

  v4 = sub_24AD5E924();

  return MEMORY[0x2822009F8](sub_24AD3BD50, v4, v3);
}

uint64_t sub_24AD3BD50()
{
  v1 = v0[30];
  v2 = v0[31];
  v3 = v0[19];
  sub_24AD5E754();

  swift_getObjectType();
  v5 = sub_24AD5E924();

  return MEMORY[0x2822009F8](sub_24AD3BE00, v5, v4);
}

uint64_t sub_24AD3BE00()
{
  v1 = v0[29];
  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[23];
  v0[32] = *(v0[19] + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6158, &qword_24AD60860);
  v5 = swift_allocObject();
  v0[33] = v5;
  *(v5 + 16) = xmmword_24AD5F820;
  *(v5 + 32) = v4;
  *(v5 + 40) = v3;

  v7 = sub_24AD5E924();

  return MEMORY[0x2822009F8](sub_24AD3BED8, v7, v6);
}

uint64_t sub_24AD3BED8()
{
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[30];
  v4 = v0[19];
  sub_24AD5E764();

  swift_getObjectType();
  v6 = sub_24AD5E924();

  return MEMORY[0x2822009F8](sub_24AD3BF80, v6, v5);
}

uint64_t sub_24AD3BF80()
{
  v1 = v0[21];
  v25 = v0[22];
  v2 = v0[19];
  v3 = v0[20];
  v4 = sub_24AD5E964();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v5;
  sub_24AD39C64(0, 0, v1, &unk_24AD60C28, v6);

  v7 = objc_opt_self();
  v8 = [v7 defaultCenter];
  v9 = *MEMORY[0x277CBBF00];
  v10 = swift_allocObject();
  *(v10 + 16) = v2;
  *(v10 + 24) = v3;
  v0[6] = sub_24AD52D90;
  v0[7] = v10;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_24AD3FDB8;
  v0[5] = &block_descriptor_0;
  v11 = _Block_copy(v0 + 2);
  v12 = v0[7];

  v13 = [v8 addObserverForName:v9 object:0 queue:0 usingBlock:v11];
  _Block_release(v11);

  v14 = *(v2 + 128);
  *(v2 + 128) = v13;
  swift_unknownObjectRelease();
  v15 = [v7 defaultCenter];
  v16 = *MEMORY[0x277CBBF90];
  v17 = swift_allocObject();
  *(v17 + 16) = v2;
  *(v17 + 24) = v3;
  v0[12] = sub_24AD52DE0;
  v0[13] = v17;
  v0[8] = MEMORY[0x277D85DD0];
  v0[9] = 1107296256;
  v0[10] = sub_24AD3FDB8;
  v0[11] = &block_descriptor_15;
  v18 = _Block_copy(v0 + 8);
  v19 = v0[13];

  v20 = [v15 addObserverForName:v16 object:0 queue:0 usingBlock:v18];

  _Block_release(v18);
  v21 = *(v2 + 136);
  *(v2 + 136) = v20;
  swift_unknownObjectRelease();

  v22 = v0[1];
  v23 = v0[19];

  return v22(v23);
}

uint64_t sub_24AD3C2C4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AD0C360;

  return sub_24AD3C35C(a1);
}

uint64_t sub_24AD3C35C(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = sub_24AD5E624();
  v2[14] = v3;
  v4 = *(v3 - 8);
  v2[15] = v4;
  v5 = *(v4 + 64) + 15;
  v2[16] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6300, &unk_24AD613D8);
  v2[17] = v6;
  v7 = *(v6 - 8);
  v2[18] = v7;
  v8 = *(v7 + 64) + 15;
  v2[19] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5FC0, &unk_24AD60280);
  v2[20] = v9;
  v10 = *(v9 - 8);
  v2[21] = v10;
  v11 = *(v10 + 64) + 15;
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v12 = sub_24AD5E724();
  v2[24] = v12;
  v13 = *(v12 - 8);
  v2[25] = v13;
  v14 = *(v13 + 64) + 15;
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AD3C560, v1, 0);
}

uint64_t sub_24AD3C560()
{
  v117 = v0;
  if (qword_2810653A0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 216);
  v2 = *(v0 + 192);
  v3 = *(v0 + 200);
  v4 = *(v0 + 96);
  v5 = sub_24AD5E7A4();
  *(v0 + 224) = __swift_project_value_buffer(v5, qword_2810654A0);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = sub_24AD5E784();
  v8 = sub_24AD5EB64();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 216);
  v12 = *(v0 + 192);
  v11 = *(v0 + 200);
  if (v9)
  {
    v13 = swift_slowAlloc();
    v107 = swift_slowAlloc();
    v116[0] = v107;
    *v13 = 136315138;
    sub_24AD5A540(&qword_27EFA6310, 255, MEMORY[0x277D08F38]);
    v14 = v6;
    v15 = sub_24AD5EF74();
    v17 = v16;
    v114 = *(v11 + 8);
    v114(v10, v12);
    v18 = v15;
    v6 = v14;
    v19 = sub_24AD2EDAC(v18, v17, v116);

    *(v13 + 4) = v19;
    _os_log_impl(&dword_24ACF2000, v7, v8, "Received APNS push: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v107);
    MEMORY[0x24C22F400](v107, -1, -1);
    MEMORY[0x24C22F400](v13, -1, -1);
  }

  else
  {

    v114 = *(v11 + 8);
    v114(v10, v12);
  }

  v20 = *(v0 + 96);
  v21 = sub_24AD5E714();
  sub_24AD4D340(v21);

  v22 = sub_24AD5E7C4();

  v23 = [objc_opt_self() notificationFromRemoteNotificationDictionary_];
  *(v0 + 232) = v23;

  if (!v23)
  {
    v6(*(v0 + 208), *(v0 + 96), *(v0 + 192));
    v33 = sub_24AD5E784();
    v34 = sub_24AD5EB44();
    v35 = os_log_type_enabled(v33, v34);
    v37 = *(v0 + 200);
    v36 = *(v0 + 208);
    v38 = *(v0 + 192);
    if (v35)
    {
      v39 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      v116[0] = v111;
      *v39 = 136315138;
      sub_24AD5E714();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6308, &qword_24AD613E8);
      v40 = sub_24AD5E7D4();
      v42 = v41;

      v114(v36, v38);
      v43 = sub_24AD2EDAC(v40, v42, v116);

      *(v39 + 4) = v43;
      _os_log_impl(&dword_24ACF2000, v33, v34, "Unable to construct CKNotification from %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v111);
      MEMORY[0x24C22F400](v111, -1, -1);
      MEMORY[0x24C22F400](v39, -1, -1);
    }

    else
    {

      v114(v36, v38);
    }

    goto LABEL_22;
  }

  v24 = *(v0 + 104);
  sub_24AD06578(0, &qword_281064970, 0x277D82BB8);
  v25 = [v23 containerID];
  v26 = [*(v24 + 112) containerID];
  v27 = sub_24AD5EC04();

  if ((v27 & 1) == 0)
  {
    v44 = sub_24AD5E784();
    v45 = sub_24AD5EB64();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      v47 = "Notification is not for this container!";
LABEL_18:
      v48 = v45;
      v49 = v44;
      v50 = v46;
      v51 = 2;
LABEL_19:
      _os_log_impl(&dword_24ACF2000, v49, v48, v47, v50, v51);
      MEMORY[0x24C22F400](v46, -1, -1);
    }

LABEL_20:

    goto LABEL_22;
  }

  v28 = [v23 notificationType];
  if (v28 <= 2)
  {
    if (v28 == 1)
    {
      v44 = sub_24AD5E784();
      v45 = sub_24AD5EB44();
      if (!os_log_type_enabled(v44, v45))
      {
        goto LABEL_20;
      }

      v46 = swift_slowAlloc();
      *v46 = 0;
      v47 = "Query notifications are not handled.";
      goto LABEL_18;
    }

    if (v28 == 2)
    {
      objc_opt_self();
      v29 = swift_dynamicCastObjCClass();
      if (v29)
      {
        v30 = v29;
        v31 = [v29 recordZoneID];
        *(v0 + 240) = v31;
        if (v31)
        {
          v32 = v31;
          sub_24AD4D63C([v30 databaseScope], v116);
          v102 = v30;
          v83 = v0;
          v84 = *(v0 + 168);
          v85 = *(v0 + 144);
          v86 = *(v0 + 104);
          v108 = LOBYTE(v116[0]) | 0x8000000000000000;
          v115 = v83;
          swift_beginAccess();
          v87 = *(v86 + 152);
          v88 = -1;
          v89 = -1 << *(v87 + 32);
          if (-v89 < 64)
          {
            v88 = ~(-1 << -v89);
          }

          v90 = v88 & *(v87 + 64);
          v91 = (63 - v89) >> 6;
          v105 = (v85 + 8);
          v110 = v32;
          v103 = v32;

          for (i = 0; v90; result = (*(v84 + 8))(v94, v95))
          {
            v93 = i;
LABEL_60:
            v94 = *(v115 + 184);
            v96 = *(v115 + 152);
            v95 = *(v115 + 160);
            v97 = *(v115 + 136);
            v98 = __clz(__rbit64(v90));
            v90 &= v90 - 1;
            (*(v84 + 16))(v94, *(v87 + 56) + *(v84 + 72) * (v98 | (v93 << 6)), v95);
            *(v115 + 80) = v108;
            *(v115 + 88) = v110;
            v99 = v103;
            sub_24AD5E984();
            (*v105)(v96, v97);
          }

          while (1)
          {
            v93 = i + 1;
            if (__OFADD__(i, 1))
            {
              break;
            }

            if (v93 >= v91)
            {

              *(v115 + 248) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60C8, &qword_24AD61260);
              *(v115 + 329) = 0;
              *(v115 + 256) = sub_24AD5E604();
              v79 = swift_task_alloc();
              *(v115 + 264) = v79;
              *(v79 + 16) = v102;
              v100 = *(MEMORY[0x277D08A88] + 4);
              v113 = (*MEMORY[0x277D08A88] + MEMORY[0x277D08A88]);
              v101 = swift_task_alloc();
              *(v115 + 272) = v101;
              *v101 = v115;
              v101[1] = sub_24AD3D3C8;
              v82 = &unk_24AD61408;
              goto LABEL_63;
            }

            v90 = *(v87 + 64 + 8 * v93);
            ++i;
            if (v90)
            {
              i = v93;
              goto LABEL_60;
            }
          }

LABEL_67:
          __break(1u);
          return result;
        }

LABEL_22:
        v53 = *(v0 + 208);
        v52 = *(v0 + 216);
        v55 = *(v0 + 176);
        v54 = *(v0 + 184);
        v56 = *(v0 + 152);
        v57 = *(v0 + 128);

        v58 = *(v0 + 8);

        return v58();
      }

      v44 = sub_24AD5E784();
      v45 = sub_24AD5EB44();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        v47 = "Unable to cast .recordZone notification to CKRecordZoneNotification";
        goto LABEL_18;
      }

      goto LABEL_20;
    }

LABEL_29:
    v23 = v23;
    v44 = sub_24AD5E784();
    v62 = sub_24AD5EB44();
    if (!os_log_type_enabled(v44, v62))
    {

      goto LABEL_20;
    }

    v46 = swift_slowAlloc();
    *v46 = 134217984;
    *(v46 + 4) = [v23 notificationType];

    v47 = "Unhandled notificationType: %ld";
    v48 = v62;
    v49 = v44;
    v50 = v46;
    v51 = 12;
    goto LABEL_19;
  }

  if (v28 == 3)
  {
    v44 = sub_24AD5E784();
    v45 = sub_24AD5EB44();
    if (!os_log_type_enabled(v44, v45))
    {
      goto LABEL_20;
    }

    v46 = swift_slowAlloc();
    *v46 = 0;
    v47 = "Read notifications are not handled.";
    goto LABEL_18;
  }

  if (v28 != 4)
  {
    goto LABEL_29;
  }

  objc_opt_self();
  v60 = swift_dynamicCastObjCClass();
  if (!v60)
  {
    v44 = sub_24AD5E784();
    v45 = sub_24AD5EB44();
    if (!os_log_type_enabled(v44, v45))
    {
      goto LABEL_20;
    }

    v46 = swift_slowAlloc();
    *v46 = 0;
    v47 = "Unable to cast .database notification to CKDatabaseNotification";
    goto LABEL_18;
  }

  v61 = v60;
  sub_24AD4D63C([v60 databaseScope], v116);
  v104 = v61;
  v63 = *(v0 + 168);
  v64 = *(v0 + 144);
  v65 = *(v0 + 104);
  v109 = LOBYTE(v116[0]);
  swift_beginAccess();
  v66 = *(v65 + 152);
  v67 = v66 + 64;
  v68 = -1;
  v69 = -1 << *(v66 + 32);
  if (-v69 < 64)
  {
    v68 = ~(-1 << -v69);
  }

  v70 = v68 & *(v66 + 64);
  v71 = (63 - v69) >> 6;
  v106 = (v64 + 8);
  v112 = v66;

  v72 = 0;
  if (v70)
  {
    while (1)
    {
      v73 = v72;
LABEL_49:
      v74 = *(v0 + 176);
      v76 = *(v0 + 152);
      v75 = *(v0 + 160);
      v77 = *(v0 + 136);
      v78 = __clz(__rbit64(v70));
      v70 &= v70 - 1;
      (*(v63 + 16))(v74, *(v112 + 56) + *(v63 + 72) * (v78 | (v73 << 6)), v75);
      *(v0 + 64) = v109;
      *(v0 + 72) = 0;
      sub_24AD5E984();
      (*v106)(v76, v77);
      result = (*(v63 + 8))(v74, v75);
      if (!v70)
      {
        goto LABEL_45;
      }
    }
  }

  while (1)
  {
LABEL_45:
    v73 = v72 + 1;
    if (__OFADD__(v72, 1))
    {
      __break(1u);
      goto LABEL_67;
    }

    if (v73 >= v71)
    {
      break;
    }

    v70 = *(v67 + 8 * v73);
    ++v72;
    if (v70)
    {
      v72 = v73;
      goto LABEL_49;
    }
  }

  *(v0 + 288) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60C8, &qword_24AD61260);
  *(v0 + 328) = 0;
  *(v0 + 296) = sub_24AD5E604();
  v79 = swift_task_alloc();
  *(v0 + 304) = v79;
  *(v79 + 16) = v104;
  v80 = *(MEMORY[0x277D08A88] + 4);
  v113 = (*MEMORY[0x277D08A88] + MEMORY[0x277D08A88]);
  v81 = swift_task_alloc();
  *(v0 + 312) = v81;
  *v81 = v0;
  v81[1] = sub_24AD3D690;
  v82 = &unk_24AD613F8;
LABEL_63:

  return v113(v82, v79);
}

uint64_t sub_24AD3D3C8()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v14 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v4 = v2[13];
    v5 = sub_24AD3D950;
    v6 = 0;
  }

  else
  {
    v8 = v2[32];
    v7 = v2[33];
    v9 = v2[31];

    sub_24AD062C8(&qword_2810653A8, &qword_27EFA60C8, &qword_24AD61260);
    v10 = sub_24AD5E924();
    v12 = v11;
    v5 = sub_24AD3D538;
    v4 = v10;
    v6 = v12;
  }

  return MEMORY[0x2822009F8](v5, v4, v6);
}

uint64_t sub_24AD3D538()
{
  v1 = v0[32];
  v2 = v0[16];
  v3 = v0[13];
  sub_24AD5E5D4();

  return MEMORY[0x2822009F8](sub_24AD3D5A8, v3, 0);
}

uint64_t sub_24AD3D5A8()
{
  v1 = v0[32];
  v3 = v0[29];
  v2 = v0[30];
  v5 = v0[15];
  v4 = v0[16];
  v6 = v0[14];
  sub_24AD5E634();

  (*(v5 + 8))(v4, v6);
  v8 = v0[26];
  v7 = v0[27];
  v10 = v0[22];
  v9 = v0[23];
  v11 = v0[19];
  v12 = v0[16];

  v13 = v0[1];

  return v13();
}

uint64_t sub_24AD3D690()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v14 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v4 = v2[13];
    v5 = sub_24AD3DB14;
    v6 = 0;
  }

  else
  {
    v8 = v2[37];
    v7 = v2[38];
    v9 = v2[36];

    sub_24AD062C8(&qword_2810653A8, &qword_27EFA60C8, &qword_24AD61260);
    v10 = sub_24AD5E924();
    v12 = v11;
    v5 = sub_24AD3D800;
    v4 = v10;
    v6 = v12;
  }

  return MEMORY[0x2822009F8](v5, v4, v6);
}

uint64_t sub_24AD3D800()
{
  v1 = v0[37];
  v2 = v0[16];
  v3 = v0[13];
  sub_24AD5E5D4();

  return MEMORY[0x2822009F8](sub_24AD3D870, v3, 0);
}

uint64_t sub_24AD3D870()
{
  v1 = v0[37];
  v2 = v0[29];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[14];
  sub_24AD5E634();

  (*(v4 + 8))(v3, v5);
  v7 = v0[26];
  v6 = v0[27];
  v9 = v0[22];
  v8 = v0[23];
  v10 = v0[19];
  v11 = v0[16];

  v12 = v0[1];

  return v12();
}

uint64_t sub_24AD3D950()
{
  v1 = v0[32];
  v2 = v0[33];
  v3 = v0[30];

  v4 = v0[35];
  v5 = v0[28];
  v6 = v4;
  v7 = sub_24AD5E784();
  v8 = sub_24AD5EB44();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[29];
  v11 = v0[30];
  if (v9)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138543362;
    v14 = sub_24AD5E324();
    *(v12 + 4) = v14;
    *v13 = v14;
    _os_log_impl(&dword_24ACF2000, v7, v8, "Error processing CKRecordZoneNotification: %{public}@", v12, 0xCu);
    sub_24AD06518(v13, &qword_27EFA61C8, &unk_24AD60C30);
    MEMORY[0x24C22F400](v13, -1, -1);
    MEMORY[0x24C22F400](v12, -1, -1);
  }

  else
  {
  }

  v16 = v0[26];
  v15 = v0[27];
  v18 = v0[22];
  v17 = v0[23];
  v19 = v0[19];
  v20 = v0[16];

  v21 = v0[1];

  return v21();
}

uint64_t sub_24AD3DB14()
{
  v1 = v0[37];
  v2 = v0[38];

  v3 = v0[40];
  v4 = v0[28];
  v5 = v3;
  v6 = sub_24AD5E784();
  v7 = sub_24AD5EB44();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[29];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138543362;
    v12 = sub_24AD5E324();
    *(v10 + 4) = v12;
    *v11 = v12;
    _os_log_impl(&dword_24ACF2000, v6, v7, "Error processing CKDatabaseNotification: %{public}@", v10, 0xCu);
    sub_24AD06518(v11, &qword_27EFA61C8, &unk_24AD60C30);
    MEMORY[0x24C22F400](v11, -1, -1);
    MEMORY[0x24C22F400](v10, -1, -1);
  }

  else
  {
  }

  v14 = v0[26];
  v13 = v0[27];
  v16 = v0[22];
  v15 = v0[23];
  v17 = v0[19];
  v18 = v0[16];

  v19 = v0[1];

  return v19();
}

uint64_t sub_24AD3DCE0()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_24AD3DDC8;

    return sub_24AD3DF24();
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_24AD3DDC8()
{
  v1 = *(*v0 + 56);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_24AD3DEC4, 0, 0);
}

uint64_t sub_24AD3DEC4()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24AD3DF24()
{
  *(v1 + 40) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60A8, &qword_24AD60380) - 8) + 64) + 15;
  *(v1 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AD3DFC0, v0, 0);
}

uint64_t sub_24AD3DFC0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 40);
  v4 = sub_24AD5A540(&qword_281065388, a2, type metadata accessor for CloudKitCoordinator);
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  *(v2 + 56) = v6;
  v7 = sub_24AD06578(0, &qword_2810649B8, 0x277CBC160);
  *v6 = v2;
  v6[1] = sub_24AD3E0F8;
  v8 = *(v2 + 40);

  return MEMORY[0x2822008A0](v2 + 16, v3, v4, 0x49746E756F636361, 0xED000029286F666ELL, sub_24AD5ACAC, v8, v7);
}

uint64_t sub_24AD3E0F8()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *v1;
  *(*v1 + 64) = v0;

  v5 = *(v2 + 40);
  if (v0)
  {
    v6 = sub_24AD3E438;
  }

  else
  {
    v6 = sub_24AD3E224;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24AD3E224()
{
  v1 = v0[2];
  v0[9] = v1;
  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_24AD3E2C0;
  v3 = v0[5];

  return sub_24AD3F218(v1);
}

uint64_t sub_24AD3E2C0()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24AD3E3D0, v2, 0);
}

uint64_t sub_24AD3E3D0()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24AD3E438()
{
  v1 = *(v0 + 64);
  *(v0 + 24) = v1;
  v2 = (v0 + 24);
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6128, &unk_24AD60BF0);
  type metadata accessor for CKError(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_4;
  }

  v4 = *(v0 + 32);
  *(v0 + 88) = v4;
  sub_24AD5E7B4();
  if (v5)
  {

LABEL_4:
    if (qword_2810653A0 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 64);
    v7 = sub_24AD5E7A4();
    __swift_project_value_buffer(v7, qword_2810654A0);
    v8 = v6;
    v9 = sub_24AD5E784();
    v10 = sub_24AD5EB54();

    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 64);
    if (v11)
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138543362;
      v15 = v12;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v16;
      *v14 = v16;
      _os_log_impl(&dword_24ACF2000, v9, v10, "Unhandled error from accountInfo in init: %{public}@", v13, 0xCu);
      sub_24AD06518(v14, &qword_27EFA61C8, &unk_24AD60C30);
      MEMORY[0x24C22F400](v14, -1, -1);
      MEMORY[0x24C22F400](v13, -1, -1);

LABEL_16:
      v24 = *(v0 + 48);

      v25 = *(v0 + 8);

      return v25();
    }

    v17 = v12;
LABEL_15:

    goto LABEL_16;
  }

  v18 = sub_24AD5E7B4();
  if (v19)
  {
    if (qword_2810653A0 != -1)
    {
      swift_once();
    }

    v20 = sub_24AD5E7A4();
    __swift_project_value_buffer(v20, qword_2810654A0);
    v21 = sub_24AD5E784();
    v22 = sub_24AD5EB54();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_24ACF2000, v21, v22, "Missing retryAfterSeconds!", v23, 2u);
      MEMORY[0x24C22F400](v23, -1, -1);
    }

    v17 = *v2;
    goto LABEL_15;
  }

  *(v0 + 96) = v18;
  if (qword_2810653A0 != -1)
  {
    swift_once();
  }

  v27 = sub_24AD5E7A4();
  __swift_project_value_buffer(v27, qword_2810654A0);
  v28 = v4;
  v29 = sub_24AD5E784();
  v30 = sub_24AD5EB44();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v31 = 138543362;
    v33 = v28;
    v34 = _swift_stdlib_bridgeErrorToNSError();
    *(v31 + 4) = v34;
    *v32 = v34;
    _os_log_impl(&dword_24ACF2000, v29, v30, "Retryable error from accountInfo in init: %{public}@", v31, 0xCu);
    sub_24AD06518(v32, &qword_27EFA61C8, &unk_24AD60C30);
    MEMORY[0x24C22F400](v32, -1, -1);
    MEMORY[0x24C22F400](v31, -1, -1);
  }

  *(v0 + 112) = 0;
  v35 = swift_task_alloc();
  *(v0 + 104) = v35;
  *v35 = v0;
  v35[1] = sub_24AD3E8B4;
  v36 = *(v0 + 40);

  return sub_24AD4B4EC((v0 + 112));
}

uint64_t sub_24AD3E8B4()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24AD3E9C4, v2, 0);
}

uint64_t sub_24AD3E9C4()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = sub_24AD5E964();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v6;
  v7[5] = v2;
  sub_24AD4C458(0, 0, v4, &unk_24AD61390, v7);

  sub_24AD06518(v4, &qword_27EFA60A8, &qword_24AD60380);
  v8 = *(v0 + 48);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_24AD3EB2C()
{
  v1 = v0[6];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_24AD3EBE8, Strong, 0);
  }

  else
  {
    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_24AD3EBE8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 56);
  v4 = sub_24AD5A540(&qword_281065388, a2, type metadata accessor for CloudKitCoordinator);
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  *(v2 + 64) = v6;
  v7 = sub_24AD06578(0, &qword_2810649B8, 0x277CBC160);
  *v6 = v2;
  v6[1] = sub_24AD3ED20;
  v8 = *(v2 + 56);

  return MEMORY[0x2822008A0](v2 + 40, v3, v4, 0x49746E756F636361, 0xED000029286F666ELL, sub_24AD5ACAC, v8, v7);
}

uint64_t sub_24AD3ED20()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 72) = v0;

  v5 = *(v2 + 56);
  if (v0)
  {
    v6 = sub_24AD3F02C;
  }

  else
  {
    v6 = sub_24AD3EE4C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24AD3EE70()
{
  if (qword_2810653A0 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = sub_24AD5E7A4();
  __swift_project_value_buffer(v2, qword_2810654A0);
  v3 = v1;
  v4 = sub_24AD5E784();
  v5 = sub_24AD5EB34();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[10];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_24ACF2000, v4, v5, "CKAccountChanged: %@", v7, 0xCu);
    sub_24AD06518(v8, &qword_27EFA61C8, &unk_24AD60C30);
    MEMORY[0x24C22F400](v8, -1, -1);
    MEMORY[0x24C22F400](v7, -1, -1);
  }

  v10 = swift_task_alloc();
  v0[11] = v10;
  *v10 = v0;
  v10[1] = sub_24AD3F0AC;
  v11 = v0[10];
  v12 = v0[7];

  return sub_24AD3F218(v11);
}

uint64_t sub_24AD3F048()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_24AD3F0AC()
{
  v1 = *(*v0 + 88);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_24AD3F1A8, 0, 0);
}

uint64_t sub_24AD3F1A8()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24AD3F218(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_24AD3F238, v1, 0);
}

uint64_t sub_24AD3F238()
{
  v27 = v0;
  if (qword_2810653A0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = sub_24AD5E7A4();
  __swift_project_value_buffer(v2, qword_2810654A0);
  v3 = v1;
  v4 = sub_24AD5E784();
  v5 = sub_24AD5EB64();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 24);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_24ACF2000, v4, v5, "process accountInfo: %@", v7, 0xCu);
    sub_24AD06518(v8, &qword_27EFA61C8, &unk_24AD60C30);
    MEMORY[0x24C22F400](v8, -1, -1);
    MEMORY[0x24C22F400](v7, -1, -1);
  }

  v10 = *(v0 + 24);

  v11 = [v10 accountStatus];
  if (v11 <= 1)
  {
    if (!v11)
    {
      *(v0 + 102) = 0;
      v12 = (v0 + 102);
      v13 = swift_task_alloc();
      *(v0 + 40) = v13;
      *v13 = v0;
      v14 = sub_24AD3F70C;
      goto LABEL_21;
    }

    if (v11 == 1)
    {
      if ([*(v0 + 24) supportsDeviceToDeviceEncryption])
      {
        *(v0 + 101) = 4;
        v12 = (v0 + 101);
        v13 = swift_task_alloc();
        *(v0 + 48) = v13;
        *v13 = v0;
        v14 = sub_24AD3F800;
      }

      else
      {
        *(v0 + 100) = 3;
        v12 = (v0 + 100);
        v13 = swift_task_alloc();
        *(v0 + 56) = v13;
        *v13 = v0;
        v14 = sub_24AD3F8F4;
      }

      goto LABEL_21;
    }
  }

  else
  {
    switch(v11)
    {
      case 2:
        *(v0 + 99) = 1;
        v12 = (v0 + 99);
        v13 = swift_task_alloc();
        *(v0 + 64) = v13;
        *v13 = v0;
        v14 = sub_24AD3F9E8;
        goto LABEL_21;
      case 3:
        *(v0 + 98) = 2;
        v12 = (v0 + 98);
        v13 = swift_task_alloc();
        *(v0 + 72) = v13;
        *v13 = v0;
        v14 = sub_24AD3FADC;
        goto LABEL_21;
      case 4:
        *(v0 + 97) = 3;
        v12 = (v0 + 97);
        v13 = swift_task_alloc();
        *(v0 + 80) = v13;
        *v13 = v0;
        v14 = sub_24AD3FBD0;
        goto LABEL_21;
    }
  }

  v15 = *(v0 + 24);
  v16 = sub_24AD5E784();
  v17 = sub_24AD5EB44();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = *(v0 + 24);
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v26 = v20;
    *v19 = 136315138;
    *(v0 + 16) = [v18 accountStatus];
    type metadata accessor for CKAccountStatus(0);
    v21 = sub_24AD5E854();
    v23 = sub_24AD2EDAC(v21, v22, &v26);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_24ACF2000, v16, v17, "Unhandled accountStatus: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x24C22F400](v20, -1, -1);
    MEMORY[0x24C22F400](v19, -1, -1);
  }

  *(v0 + 96) = 0;
  v12 = (v0 + 96);
  v13 = swift_task_alloc();
  *(v0 + 88) = v13;
  *v13 = v0;
  v14 = sub_24AD3FCC4;
LABEL_21:
  v13[1] = v14;
  v24 = *(v0 + 32);

  return sub_24AD4B4EC(v12);
}

uint64_t sub_24AD3F70C()
{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_24AD3F800()
{
  v1 = *(*v0 + 48);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_24AD3F8F4()
{
  v1 = *(*v0 + 56);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_24AD3F9E8()
{
  v1 = *(*v0 + 64);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_24AD3FADC()
{
  v1 = *(*v0 + 72);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_24AD3FBD0()
{
  v1 = *(*v0 + 80);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_24AD3FCC4()
{
  v1 = *(*v0 + 88);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_24AD3FDB8(uint64_t a1)
{
  v2 = sub_24AD5E234();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_24AD5E214();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_24AD3FEAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60A8, &qword_24AD60380);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v15 - v9;
  v11 = sub_24AD5E964();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v12;
  v13[5] = a3;
  sub_24AD0E738(0, 0, v10, a5, v13);
}

uint64_t sub_24AD3FFF0()
{
  v1 = v0[6];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_24AD400AC, Strong, 0);
  }

  else
  {
    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_24AD400AC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 56);
  v4 = sub_24AD5A540(&qword_281065388, a2, type metadata accessor for CloudKitCoordinator);
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  *(v2 + 64) = v6;
  v7 = sub_24AD06578(0, &qword_2810649B8, 0x277CBC160);
  *v6 = v2;
  v6[1] = sub_24AD401E4;
  v8 = *(v2 + 56);

  return MEMORY[0x2822008A0](v2 + 40, v3, v4, 0x49746E756F636361, 0xED000029286F666ELL, sub_24AD59C98, v8, v7);
}

uint64_t sub_24AD401E4()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 72) = v0;

  v5 = *(v2 + 56);
  if (v0)
  {
    v6 = sub_24AD404F0;
  }

  else
  {
    v6 = sub_24AD40310;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24AD40334()
{
  if (qword_2810653A0 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = sub_24AD5E7A4();
  __swift_project_value_buffer(v2, qword_2810654A0);
  v3 = v1;
  v4 = sub_24AD5E784();
  v5 = sub_24AD5EB34();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[10];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_24ACF2000, v4, v5, "CKIdentityUpdate: %@", v7, 0xCu);
    sub_24AD06518(v8, &qword_27EFA61C8, &unk_24AD60C30);
    MEMORY[0x24C22F400](v8, -1, -1);
    MEMORY[0x24C22F400](v7, -1, -1);
  }

  v10 = swift_task_alloc();
  v0[11] = v10;
  *v10 = v0;
  v10[1] = sub_24AD4050C;
  v11 = v0[10];
  v12 = v0[7];

  return sub_24AD3F218(v11);
}

uint64_t sub_24AD4050C()
{
  v1 = *(*v0 + 88);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_24AD5AC94, 0, 0);
}

uint64_t CloudKitCoordinator.deinit()
{
  v1 = v0;
  if (qword_2810653A0 != -1)
  {
    swift_once();
  }

  v2 = sub_24AD5E7A4();
  __swift_project_value_buffer(v2, qword_2810654A0);
  v3 = sub_24AD5E784();
  v4 = sub_24AD5EB64();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24ACF2000, v3, v4, "CloudKitCoordinator deinit", v5, 2u);
    MEMORY[0x24C22F400](v5, -1, -1);
  }

  v6 = *(v1 + 120);

  v7 = *(v1 + 128);
  swift_unknownObjectRelease();
  v8 = *(v1 + 136);
  swift_unknownObjectRelease();
  v9 = *(v1 + 144);

  v10 = *(v1 + 152);

  swift_defaultActor_destroy();
  return v1;
}

uint64_t CloudKitCoordinator.__deallocating_deinit()
{
  CloudKitCoordinator.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_24AD4077C(uint64_t a1)
{
  v39 = a1;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5FD0, &unk_24AD60290);
  v35 = *(v38 - 8);
  v1 = *(v35 + 64);
  MEMORY[0x28223BE20](v38);
  v3 = &v27 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60A8, &qword_24AD60380);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v27 - v6;
  v8 = sub_24AD5E404();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - v12;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = result;
    v36 = v13;
    sub_24AD5E3F4();
    v30 = v3;
    v31 = *(v9 + 16);
    v27 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v31(v27, v13, v8);
    v16 = *(v9 + 80);
    v34 = v9;
    v37 = v7;
    v32 = v16 | 7;
    v17 = swift_allocObject();
    v18 = v35;
    v28 = v8;
    v29 = v1;
    *(v17 + 16) = v15;
    v33 = *(v9 + 32);
    v19 = v27;
    v33(v17 + ((v16 + 24) & ~v16), v27, v8);

    v20 = v38;
    sub_24AD5E974();
    v21 = sub_24AD5E964();
    (*(*(v21 - 8) + 56))(v37, 1, 1, v21);
    v22 = v30;
    (*(v18 + 16))(v30, v39, v20);
    v23 = v28;
    v31(v19, v36, v28);
    v24 = (*(v18 + 80) + 40) & ~*(v18 + 80);
    v25 = (v29 + v16 + v24) & ~v16;
    v26 = swift_allocObject();
    *(v26 + 2) = 0;
    *(v26 + 3) = 0;
    *(v26 + 4) = v15;
    (*(v18 + 32))(&v26[v24], v22, v38);
    v33(&v26[v25], v19, v23);

    sub_24AD39C64(0, 0, v37, &unk_24AD61498, v26);

    return (*(v34 + 8))(v36, v23);
  }

  return result;
}

uint64_t sub_24AD40B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_24AD40BA0, a4, 0);
}

uint64_t sub_24AD40BA0()
{
  v1 = v0[2];
  sub_24AD40C00(v0[3]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_24AD40C00(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6068, &qword_24AD614A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v30 - v5;
  v7 = sub_24AD5E404();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v34 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v30 - v12;
  if (qword_2810653A0 != -1)
  {
    swift_once();
  }

  v14 = sub_24AD5E7A4();
  __swift_project_value_buffer(v14, qword_2810654A0);
  v33 = *(v8 + 16);
  v33(v13, a1, v7);
  v15 = sub_24AD5E784();
  v16 = sub_24AD5EB24();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v31 = a1;
    v18 = v17;
    v19 = swift_slowAlloc();
    v32 = v1;
    v30 = v19;
    v35 = v19;
    *v18 = 136446210;
    sub_24AD5A540(&qword_2810653E8, 255, MEMORY[0x277CC95F0]);
    v20 = sub_24AD5EF74();
    v21 = v6;
    v23 = v22;
    (*(v8 + 8))(v13, v7);
    v24 = sub_24AD2EDAC(v20, v23, &v35);
    v6 = v21;

    *(v18 + 4) = v24;
    _os_log_impl(&dword_24ACF2000, v15, v16, "Removing accountStateContinuation for %{public}s", v18, 0xCu);
    v25 = v30;
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    MEMORY[0x24C22F400](v25, -1, -1);
    v26 = v18;
    a1 = v31;
    MEMORY[0x24C22F400](v26, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v13, v7);
  }

  v27 = v34;
  v33(v34, a1, v7);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5FD0, &unk_24AD60290);
  (*(*(v28 - 8) + 56))(v6, 1, 1, v28);
  swift_beginAccess();
  sub_24AD071C0(v6, v27);
  return swift_endAccess();
}

uint64_t sub_24AD40F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA62A0, &unk_24AD61250);
  v6[8] = v8;
  v9 = *(v8 - 8);
  v6[9] = v9;
  v10 = *(v9 + 64) + 15;
  v6[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AD4106C, a4, 0);
}

uint64_t sub_24AD4106C()
{
  v1 = *(v0 + 40);
  sub_24AD411B8(*(v0 + 48), *(v0 + 56));
  swift_beginAccess();
  *(v0 + 89) = *(v1 + 160);

  return MEMORY[0x2822009F8](sub_24AD410F4, 0, 0);
}

uint64_t sub_24AD410F4()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);
  v4 = *(v0 + 48);
  *(v0 + 88) = *(v0 + 89);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5FD0, &unk_24AD60290);
  sub_24AD5E984();
  (*(v2 + 8))(v1, v3);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_24AD411B8(uint64_t a1, uint64_t a2)
{
  v35 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6068, &qword_24AD614A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v29 - v5;
  v7 = sub_24AD5E404();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v34 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v29 - v12;
  if (qword_2810653A0 != -1)
  {
    swift_once();
  }

  v14 = sub_24AD5E7A4();
  __swift_project_value_buffer(v14, qword_2810654A0);
  v33 = *(v8 + 16);
  v33(v13, a2, v7);
  v15 = sub_24AD5E784();
  v16 = sub_24AD5EB24();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v32 = v6;
    v18 = v17;
    v30 = swift_slowAlloc();
    v36 = v30;
    *v18 = 136446210;
    sub_24AD5A540(&qword_2810653E8, 255, MEMORY[0x277CC95F0]);
    v19 = sub_24AD5EF74();
    v31 = a2;
    v21 = v20;
    (*(v8 + 8))(v13, v7);
    v22 = sub_24AD2EDAC(v19, v21, &v36);
    a2 = v31;

    *(v18 + 4) = v22;
    _os_log_impl(&dword_24ACF2000, v15, v16, "Storing accountStateContinuation for %{public}s", v18, 0xCu);
    v23 = v30;
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    MEMORY[0x24C22F400](v23, -1, -1);
    v24 = v18;
    v6 = v32;
    MEMORY[0x24C22F400](v24, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v13, v7);
  }

  v25 = v34;
  v33(v34, a2, v7);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5FD0, &unk_24AD60290);
  v27 = *(v26 - 8);
  (*(v27 + 16))(v6, v35, v26);
  (*(v27 + 56))(v6, 0, 1, v26);
  swift_beginAccess();
  sub_24AD071C0(v6, v25);
  return swift_endAccess();
}

uint64_t sub_24AD415B8(uint64_t *a1, uint64_t *a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  swift_allocObject();
  swift_weakInit();
  (*(v3 + 104))(v6, *MEMORY[0x277D85778], v2);
  sub_24AD5E9C4();
}

uint64_t sub_24AD416D8(uint64_t a1)
{
  v39 = a1;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5FC0, &unk_24AD60280);
  v35 = *(v38 - 8);
  v1 = *(v35 + 64);
  MEMORY[0x28223BE20](v38);
  v3 = &v27 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60A8, &qword_24AD60380);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v27 - v6;
  v8 = sub_24AD5E404();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - v12;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = result;
    v36 = v13;
    sub_24AD5E3F4();
    v30 = v3;
    v31 = *(v9 + 16);
    v27 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v31(v27, v13, v8);
    v16 = *(v9 + 80);
    v34 = v9;
    v37 = v7;
    v32 = v16 | 7;
    v17 = swift_allocObject();
    v18 = v35;
    v28 = v8;
    v29 = v1;
    *(v17 + 16) = v15;
    v33 = *(v9 + 32);
    v19 = v27;
    v33(v17 + ((v16 + 24) & ~v16), v27, v8);

    v20 = v38;
    sub_24AD5E974();
    v21 = sub_24AD5E964();
    (*(*(v21 - 8) + 56))(v37, 1, 1, v21);
    v22 = v30;
    (*(v18 + 16))(v30, v39, v20);
    v23 = v28;
    v31(v19, v36, v28);
    v24 = (*(v18 + 80) + 40) & ~*(v18 + 80);
    v25 = (v29 + v16 + v24) & ~v16;
    v26 = swift_allocObject();
    *(v26 + 2) = 0;
    *(v26 + 3) = 0;
    *(v26 + 4) = v15;
    (*(v18 + 32))(&v26[v24], v22, v38);
    v33(&v26[v25], v19, v23);

    sub_24AD39C64(0, 0, v37, &unk_24AD61470, v26);

    return (*(v34 + 8))(v36, v23);
  }

  return result;
}

uint64_t sub_24AD41ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_24AD5E404();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60A8, &qword_24AD60380);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v19 - v13;
  v15 = sub_24AD5E964();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v9 + 16))(&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v8);
  v16 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = 0;
  *(v17 + 3) = 0;
  *(v17 + 4) = a2;
  (*(v9 + 32))(&v17[v16], &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);

  sub_24AD39C64(0, 0, v14, a5, v17);
}

uint64_t sub_24AD41CB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_24AD41CD8, a4, 0);
}

uint64_t sub_24AD41CD8()
{
  v1 = v0[2];
  sub_24AD41D38(v0[3]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_24AD41D38(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6060, &qword_24AD60278);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v30 - v5;
  v7 = sub_24AD5E404();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v34 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v30 - v12;
  if (qword_2810653A0 != -1)
  {
    swift_once();
  }

  v14 = sub_24AD5E7A4();
  __swift_project_value_buffer(v14, qword_2810654A0);
  v33 = *(v8 + 16);
  v33(v13, a1, v7);
  v15 = sub_24AD5E784();
  v16 = sub_24AD5EB24();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v31 = a1;
    v18 = v17;
    v19 = swift_slowAlloc();
    v32 = v1;
    v30 = v19;
    v35 = v19;
    *v18 = 136446210;
    sub_24AD5A540(&qword_2810653E8, 255, MEMORY[0x277CC95F0]);
    v20 = sub_24AD5EF74();
    v21 = v6;
    v23 = v22;
    (*(v8 + 8))(v13, v7);
    v24 = sub_24AD2EDAC(v20, v23, &v35);
    v6 = v21;

    *(v18 + 4) = v24;
    _os_log_impl(&dword_24ACF2000, v15, v16, "Removing pushEventContinuation for %{public}s", v18, 0xCu);
    v25 = v30;
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    MEMORY[0x24C22F400](v25, -1, -1);
    v26 = v18;
    a1 = v31;
    MEMORY[0x24C22F400](v26, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v13, v7);
  }

  v27 = v34;
  v33(v34, a1, v7);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5FC0, &unk_24AD60280);
  (*(*(v28 - 8) + 56))(v6, 1, 1, v28);
  swift_beginAccess();
  sub_24AD07418(v6, v27);
  return swift_endAccess();
}

uint64_t sub_24AD420D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_24AD420F4, a4, 0);
}

uint64_t sub_24AD420F4()
{
  v1 = v0[2];
  sub_24AD42158(v0[3], v0[4]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_24AD42158(uint64_t a1, uint64_t a2)
{
  v35 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6060, &qword_24AD60278);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v29 - v5;
  v7 = sub_24AD5E404();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v34 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v29 - v12;
  if (qword_2810653A0 != -1)
  {
    swift_once();
  }

  v14 = sub_24AD5E7A4();
  __swift_project_value_buffer(v14, qword_2810654A0);
  v33 = *(v8 + 16);
  v33(v13, a2, v7);
  v15 = sub_24AD5E784();
  v16 = sub_24AD5EB24();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v32 = v6;
    v18 = v17;
    v30 = swift_slowAlloc();
    v36 = v30;
    *v18 = 136446210;
    sub_24AD5A540(&qword_2810653E8, 255, MEMORY[0x277CC95F0]);
    v19 = sub_24AD5EF74();
    v31 = a2;
    v21 = v20;
    (*(v8 + 8))(v13, v7);
    v22 = sub_24AD2EDAC(v19, v21, &v36);
    a2 = v31;

    *(v18 + 4) = v22;
    _os_log_impl(&dword_24ACF2000, v15, v16, "Storing pushEventContinuation for %{public}s", v18, 0xCu);
    v23 = v30;
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    MEMORY[0x24C22F400](v23, -1, -1);
    v24 = v18;
    v6 = v32;
    MEMORY[0x24C22F400](v24, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v13, v7);
  }

  v25 = v34;
  v33(v34, a2, v7);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5FC0, &unk_24AD60280);
  v27 = *(v26 - 8);
  (*(v27 + 16))(v6, v35, v26);
  (*(v27 + 56))(v6, 0, 1, v26);
  swift_beginAccess();
  sub_24AD07418(v6, v25);
  return swift_endAccess();
}

uint64_t sub_24AD42528(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_24AD42548, v1, 0);
}

uint64_t sub_24AD42548()
{
  *(v0 + 32) = *(*(v0 + 24) + 120);
  sub_24AD5E774();
  sub_24AD5A540(&qword_281064A50, 255, MEMORY[0x277D08F50]);
  v2 = sub_24AD5E924();

  return MEMORY[0x2822009F8](sub_24AD4260C, v2, v1);
}

uint64_t sub_24AD4260C()
{
  v1 = v0[4];
  v2 = v0[2];
  sub_24AD5E744();
  v3 = v0[1];

  return v3();
}

uint64_t sub_24AD42690(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 32);
  v4 = sub_24AD5A540(&qword_281065388, a2, type metadata accessor for CloudKitCoordinator);
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  *(v2 + 40) = v6;
  v7 = sub_24AD06578(0, &qword_2810649B8, 0x277CBC160);
  *v6 = v2;
  v6[1] = sub_24AD427C8;
  v8 = *(v2 + 32);

  return MEMORY[0x2822008A0](v2 + 16, v3, v4, 0x49746E756F636361, 0xED000029286F666ELL, sub_24AD5ACAC, v8, v7);
}

uint64_t sub_24AD427C8()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *v1;
  *(*v1 + 48) = v0;

  v5 = *(v2 + 32);
  if (v0)
  {
    v6 = sub_24AD4296C;
  }

  else
  {
    v6 = sub_24AD428F4;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24AD428F4()
{
  v1 = *(v0 + 16);
  v2 = [v1 supportsDeviceToDeviceEncryption];

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_24AD4296C()
{
  v17 = v0;
  if (qword_2810653A0 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = sub_24AD5E7A4();
  __swift_project_value_buffer(v2, qword_2810654A0);
  v3 = v1;
  v4 = sub_24AD5E784();
  v5 = sub_24AD5EB44();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[6];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136446466;
    *(v8 + 4) = sub_24AD2EDAC(0xD000000000000014, 0x800000024AD61F70, &v16);
    *(v8 + 12) = 2082;
    v0[3] = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6128, &unk_24AD60BF0);
    v11 = sub_24AD5E854();
    v13 = sub_24AD2EDAC(v11, v12, &v16);

    *(v8 + 14) = v13;
    _os_log_impl(&dword_24ACF2000, v4, v5, "%{public}s error: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C22F400](v9, -1, -1);
    MEMORY[0x24C22F400](v8, -1, -1);
  }

  else
  {
  }

  v14 = v0[1];

  return v14(0);
}

uint64_t sub_24AD42B7C(uint64_t a1, _BYTE *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  *(v3 + 40) = *a2;
  return MEMORY[0x2822009F8](sub_24AD42BA4, v2, 0);
}

uint64_t sub_24AD42BA4()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);

  v3 = v2;
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v0;
  v4[1] = sub_24AD42C4C;
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  v7 = *(v0 + 40);

  return sub_24AD54DF0(v5, v5, v6, v7);
}

uint64_t sub_24AD42C4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v4 + 32);
  v9 = *(*v4 + 24);
  v10 = *(*v4 + 16);
  v16 = *v4;

  v14 = *(v16 + 8);
  if (!v3)
  {
    v11 = a1;
    v12 = a2;
    v13 = a3;
  }

  return v14(v11, v12, v13);
}

uint64_t sub_24AD42DA0(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v3[8] = *v2;
  v4 = sub_24AD5E624();
  v3[9] = v4;
  v5 = *(v4 - 8);
  v3[10] = v5;
  v6 = *(v5 + 64) + 15;
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AD42E8C, 0, 0);
}

uint64_t sub_24AD42E8C()
{
  *(v0 + 96) = [objc_allocWithZone(MEMORY[0x277CBC4F0]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60C8, &qword_24AD61260);
  *(v0 + 176) = 2;
  *(v0 + 104) = sub_24AD5E604();
  sub_24AD062C8(&qword_2810653A8, &qword_27EFA60C8, &qword_24AD61260);
  v2 = sub_24AD5E924();
  *(v0 + 112) = v2;
  *(v0 + 120) = v1;

  return MEMORY[0x2822009F8](sub_24AD42F88, v2, v1);
}

uint64_t sub_24AD42F88()
{
  v1 = *(v0 + 104);
  sub_24AD5E5F4();

  return MEMORY[0x2822009F8](sub_24AD42FF0, 0, 0);
}

uint64_t sub_24AD42FF0()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 64);
  v4 = *(v0 + 40);
  v5 = swift_task_alloc();
  *(v0 + 128) = v5;
  v6 = *(v0 + 48);
  *(v5 + 16) = v4;
  *(v5 + 24) = v6;
  *(v5 + 40) = v1;
  *(v5 + 48) = v3;
  v7 = *(MEMORY[0x277CBBE68] + 4);
  v8 = v2;
  v9 = swift_task_alloc();
  *(v0 + 136) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA62E0, &qword_24AD61318);
  *v9 = v0;
  v9[1] = sub_24AD43108;
  v11 = *(v0 + 48);

  return MEMORY[0x28210DEC0](v0 + 16, v2, 0, &unk_24AD61310, v5, v10);
}

uint64_t sub_24AD43108()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v7 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = sub_24AD43380;
  }

  else
  {
    v5 = *(v2 + 128);

    v4 = sub_24AD43230;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24AD43230()
{
  *(v0 + 152) = *(v0 + 16);
  *(v0 + 168) = *(v0 + 32);
  return MEMORY[0x2822009F8](sub_24AD43258, *(v0 + 112), *(v0 + 120));
}

uint64_t sub_24AD43258()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 88);
  sub_24AD5E5E4();
  sub_24AD5E5D4();

  return MEMORY[0x2822009F8](sub_24AD432CC, 0, 0);
}

uint64_t sub_24AD432CC()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[9];
  sub_24AD5E634();

  (*(v4 + 8))(v3, v5);

  v6 = v0[1];
  v7 = v0[20];
  v8 = v0[21];
  v9 = v0[19];

  return v6(v9, v7, v8);
}

uint64_t sub_24AD43380()
{
  v1 = v0[16];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[11];

  v5 = v0[1];
  v6 = v0[18];

  return v5();
}

uint64_t sub_24AD43410(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 56) = a3;
  *(v5 + 64) = a5;
  *(v5 + 145) = a4;
  *(v5 + 48) = a2;
  v7 = sub_24AD5E624();
  *(v5 + 72) = v7;
  v8 = *(v7 - 8);
  *(v5 + 80) = v8;
  v9 = *(v8 + 64) + 15;
  *(v5 + 88) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AD434DC, a2, 0);
}

uint64_t sub_24AD434DC()
{
  if ((sub_24AD5E0C4() & 1) != 0 && (v1 = objc_opt_self(), v2 = [v1 standardUserDefaults], v3 = sub_24AD5E834(), v4 = objc_msgSend(v2, sel_BOOLForKey_, v3), v3, v2, v4))
  {
    v5 = [v1 standardUserDefaults];
    v6 = sub_24AD5E834();
    [v5 setValue:0 forKey:v6];

    if (qword_2810653A0 != -1)
    {
      swift_once();
    }

    v7 = sub_24AD5E7A4();
    __swift_project_value_buffer(v7, qword_2810654A0);
    v8 = sub_24AD5E784();
    v9 = sub_24AD5EB44();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_24ACF2000, v8, v9, "Forcing .changeTokenExpired", v10, 2u);
      MEMORY[0x24C22F400](v10, -1, -1);
    }

    type metadata accessor for CKError(0);
    *(v0 + 40) = 21;
    sub_24AD52E18(MEMORY[0x277D84F90]);
    sub_24AD5A540(&qword_281064A28, 255, type metadata accessor for CKError);
    sub_24AD5E314();
    v11 = *(v0 + 32);
    swift_willThrow();
    *(v0 + 96) = v11;
    *(v0 + 16) = v11;
    v12 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6128, &unk_24AD60BF0);
    if (swift_dynamicCast())
    {
      v13 = *(v0 + 24);
      *(v0 + 104) = v13;
      v14 = swift_task_alloc();
      *(v0 + 112) = v14;
      *v14 = v0;
      v14[1] = sub_24AD43A18;
      v15 = *(v0 + 48);

      return sub_24AD4A77C(v13);
    }

    else
    {
      if (qword_2810653A0 != -1)
      {
        swift_once();
      }

      v21 = *(v0 + 96);
      __swift_project_value_buffer(v7, qword_2810654A0);
      v22 = v21;
      v23 = sub_24AD5E784();
      v24 = sub_24AD5EB44();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = *(v0 + 96);
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        *v26 = 138543362;
        v28 = v25;
        v29 = _swift_stdlib_bridgeErrorToNSError();
        *(v26 + 4) = v29;
        *v27 = v29;
        _os_log_impl(&dword_24ACF2000, v23, v24, "CloudKit error: %{public}@", v26, 0xCu);
        sub_24AD06518(v27, &qword_27EFA61C8, &unk_24AD60C30);
        MEMORY[0x24C22F400](v27, -1, -1);
        MEMORY[0x24C22F400](v26, -1, -1);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60C8, &qword_24AD61260);
      *(v0 + 144) = 4;
      *(v0 + 120) = sub_24AD5E604();
      sub_24AD062C8(&qword_2810653A8, &qword_27EFA60C8, &qword_24AD61260);
      v31 = sub_24AD5E924();

      return MEMORY[0x2822009F8](sub_24AD43D3C, v31, v30);
    }
  }

  else
  {
    v17 = swift_task_alloc();
    *(v0 + 128) = v17;
    *v17 = v0;
    v17[1] = sub_24AD43E80;
    v18 = *(v0 + 56);
    v19 = *(v0 + 64);
    v20 = *(v0 + 145);

    return sub_24AD45834(v17, v18, v20, v19);
  }
}

uint64_t sub_24AD43A18()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24AD43B28, v2, 0);
}

uint64_t sub_24AD43B28()
{
  if (qword_2810653A0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 96);
  v2 = sub_24AD5E7A4();
  __swift_project_value_buffer(v2, qword_2810654A0);
  v3 = v1;
  v4 = sub_24AD5E784();
  v5 = sub_24AD5EB44();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 96);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_24ACF2000, v4, v5, "CloudKit error: %{public}@", v7, 0xCu);
    sub_24AD06518(v8, &qword_27EFA61C8, &unk_24AD60C30);
    MEMORY[0x24C22F400](v8, -1, -1);
    MEMORY[0x24C22F400](v7, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60C8, &qword_24AD61260);
  *(v0 + 144) = 4;
  *(v0 + 120) = sub_24AD5E604();
  sub_24AD062C8(&qword_2810653A8, &qword_27EFA60C8, &qword_24AD61260);
  v12 = sub_24AD5E924();

  return MEMORY[0x2822009F8](sub_24AD43D3C, v12, v11);
}

uint64_t sub_24AD43D3C()
{
  v1 = v0[15];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[6];
  sub_24AD5E614();
  sub_24AD5E5D4();

  return MEMORY[0x2822009F8](sub_24AD43DBC, v4, 0);
}

uint64_t sub_24AD43DBC()
{
  v1 = v0[15];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[9];
  v5 = v0[10];
  v6 = v0[7];
  v7 = v0[8];
  sub_24AD5E634();
  (*(v5 + 8))(v2, v4);
  swift_willThrow();

  v8 = v0[1];
  v9 = v0[12];

  return v8();
}

uint64_t sub_24AD43E80()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = v0;

  v5 = *(v2 + 48);
  if (v0)
  {
    v6 = sub_24AD44020;
  }

  else
  {
    v6 = sub_24AD43FAC;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24AD43FAC()
{
  v1 = v0[11];
  v2 = v0[7];
  v3 = v0[8];

  v4 = v0[1];

  return v4();
}

uint64_t sub_24AD44020()
{
  v1 = *(v0 + 136);
  *(v0 + 16) = v1;
  *(v0 + 96) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6128, &unk_24AD60BF0);
  type metadata accessor for CKError(0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 24);
    *(v0 + 104) = v3;
    v4 = swift_task_alloc();
    *(v0 + 112) = v4;
    *v4 = v0;
    v4[1] = sub_24AD43A18;
    v5 = *(v0 + 48);

    return sub_24AD4A77C(v3);
  }

  else
  {
    if (qword_2810653A0 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 96);
    v8 = sub_24AD5E7A4();
    __swift_project_value_buffer(v8, qword_2810654A0);
    v9 = v7;
    v10 = sub_24AD5E784();
    v11 = sub_24AD5EB44();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = *(v0 + 96);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138543362;
      v15 = v12;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v16;
      *v14 = v16;
      _os_log_impl(&dword_24ACF2000, v10, v11, "CloudKit error: %{public}@", v13, 0xCu);
      sub_24AD06518(v14, &qword_27EFA61C8, &unk_24AD60C30);
      MEMORY[0x24C22F400](v14, -1, -1);
      MEMORY[0x24C22F400](v13, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60C8, &qword_24AD61260);
    *(v0 + 144) = 4;
    *(v0 + 120) = sub_24AD5E604();
    sub_24AD062C8(&qword_2810653A8, &qword_27EFA60C8, &qword_24AD61260);
    v18 = sub_24AD5E924();

    return MEMORY[0x2822009F8](sub_24AD43D3C, v18, v17);
  }
}

uint64_t sub_24AD442F8(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a2;
  *(v4 + 48) = *a1;
  return MEMORY[0x2822009F8](sub_24AD44324, v3, 0);
}

uint64_t sub_24AD44324()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *(v0 + 16);

  v4 = v3;
  v5 = v2;
  v6 = swift_task_alloc();
  *(v0 + 40) = v6;
  *v6 = v0;
  v6[1] = sub_24AD443E0;
  v8 = *(v0 + 24);
  v7 = *(v0 + 32);
  v9 = *(v0 + 16);
  v10 = *(v0 + 48);

  return sub_24AD55D74(v7, v7, v9, v8, v10);
}

uint64_t sub_24AD443E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v4 + 40);
  v9 = *(*v4 + 32);
  v10 = *(*v4 + 24);
  v11 = *(*v4 + 16);
  v17 = *v4;

  v15 = *(v17 + 8);
  if (!v3)
  {
    v12 = a1;
    v13 = a2;
    v14 = a3;
  }

  return v15(v12, v13, v14);
}

uint64_t sub_24AD44554(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v4[9] = *v3;
  v5 = sub_24AD5E624();
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64) + 15;
  v4[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AD44640, 0, 0);
}

uint64_t sub_24AD44640()
{
  *(v0 + 104) = [objc_allocWithZone(MEMORY[0x277CBC4F0]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60C8, &qword_24AD61260);
  *(v0 + 184) = 3;
  *(v0 + 112) = sub_24AD5E604();
  sub_24AD062C8(&qword_2810653A8, &qword_27EFA60C8, &qword_24AD61260);
  v2 = sub_24AD5E924();
  *(v0 + 120) = v2;
  *(v0 + 128) = v1;

  return MEMORY[0x2822009F8](sub_24AD4473C, v2, v1);
}

uint64_t sub_24AD4473C()
{
  v1 = *(v0 + 112);
  sub_24AD5E5F4();

  return MEMORY[0x2822009F8](sub_24AD447A4, 0, 0);
}

uint64_t sub_24AD447A4()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);
  v13 = *(v0 + 48);
  v5 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v0 + 136) = v6;
  *(v6 + 16) = v13;
  *(v6 + 32) = v5;
  *(v6 + 40) = v1;
  *(v6 + 48) = v4;
  *(v6 + 56) = v3;
  v7 = *(MEMORY[0x277CBBE68] + 4);
  v8 = v2;
  v9 = swift_task_alloc();
  *(v0 + 144) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA62B8, &qword_24AD612C0);
  *v9 = v0;
  v9[1] = sub_24AD448CC;
  v11 = *(v0 + 56);

  return MEMORY[0x28210DEC0](v0 + 16, v2, 0, &unk_24AD612B8, v6, v10);
}

uint64_t sub_24AD448CC()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v7 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = sub_24AD44B44;
  }

  else
  {
    v5 = *(v2 + 136);

    v4 = sub_24AD449F4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24AD449F4()
{
  *(v0 + 160) = *(v0 + 16);
  *(v0 + 176) = *(v0 + 32);
  return MEMORY[0x2822009F8](sub_24AD44A1C, *(v0 + 120), *(v0 + 128));
}

uint64_t sub_24AD44A1C()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 96);
  sub_24AD5E5E4();
  sub_24AD5E5D4();

  return MEMORY[0x2822009F8](sub_24AD44A90, 0, 0);
}

uint64_t sub_24AD44A90()
{
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[10];
  sub_24AD5E634();

  (*(v4 + 8))(v3, v5);

  v6 = v0[1];
  v7 = v0[21];
  v8 = v0[22];
  v9 = v0[20];

  return v6(v9, v7, v8);
}

uint64_t sub_24AD44B44()
{
  v1 = v0[17];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[12];

  v5 = v0[1];
  v6 = v0[19];

  return v5();
}

uint64_t sub_24AD44BD4(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 16) = a1;
  *(v4 + 72) = *a3;
  return MEMORY[0x2822009F8](sub_24AD44C00, v3, 0);
}

uint64_t sub_24AD44C00()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = objc_allocWithZone(MEMORY[0x277CBC5E8]);
  v4 = sub_24AD5E834();
  v5 = [v3 initWithZoneName_];
  *(v0 + 40) = v5;

  if (qword_2810653A0 != -1)
  {
    swift_once();
  }

  v6 = sub_24AD5E7A4();
  __swift_project_value_buffer(v6, qword_2810654A0);
  v7 = v5;
  v8 = sub_24AD5E784();
  v9 = sub_24AD5EB64();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138543362;
    *(v10 + 4) = v7;
    *v11 = v7;
    v12 = v7;
    _os_log_impl(&dword_24ACF2000, v8, v9, "create zone:  %{public}@", v10, 0xCu);
    sub_24AD06518(v11, &qword_27EFA61C8, &unk_24AD60C30);
    MEMORY[0x24C22F400](v11, -1, -1);
    MEMORY[0x24C22F400](v10, -1, -1);
  }

  v13 = *(v0 + 32);

  v14 = v7;

  v15 = swift_task_alloc();
  *(v0 + 48) = v15;
  *v15 = v0;
  v15[1] = sub_24AD44E18;
  v16 = *(v0 + 32);
  v17 = *(v0 + 72);

  return sub_24AD52F48(v16, v16, v17, v14);
}

uint64_t sub_24AD44E18(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *(*v2 + 40);
  v7 = *(*v2 + 32);
  v8 = *v2;
  v4[7] = v1;

  v9 = v4[4];
  if (v1)
  {
    v10 = sub_24AD44FE4;
  }

  else
  {
    v4[8] = a1;
    v10 = sub_24AD44F7C;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_24AD44F7C()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 64);

  return v1(v2);
}

uint64_t sub_24AD44FE4()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 56);

  return v1();
}

uint64_t sub_24AD45048(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 32) = a2;
  *(v4 + 40) = a4;
  *(v4 + 80) = a3;
  *(v4 + 24) = a1;
  return MEMORY[0x2822009F8](sub_24AD45070, 0, 0);
}

uint64_t sub_24AD45070()
{
  v1 = v0[4];
  v2 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6120, &qword_24AD60CA0);
  v3 = swift_allocObject();
  v0[6] = v3;
  *(v3 + 16) = xmmword_24AD60330;
  *(v3 + 32) = v2;
  v4 = v2;

  return MEMORY[0x2822009F8](sub_24AD45118, v1, 0);
}

uint64_t sub_24AD45118()
{
  *(v0 + 56) = [*(*(v0 + 32) + 112) *off_278FFD950[*(v0 + 80)]];
  v1 = *(MEMORY[0x277CBBE80] + 4);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_24AD451E8;
  v3 = *(v0 + 48);
  v4 = MEMORY[0x277D84F90];

  return MEMORY[0x28210DEF8](v3, v4);
}

uint64_t sub_24AD451E8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 64);
  v5 = *v2;
  *(*v2 + 72) = a1;

  v6 = *(v3 + 56);
  v7 = *(v3 + 48);
  if (v1)
  {

    v8 = *(v5 + 8);

    return v8();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_24AD4538C, 0, 0);
  }
}

uint64_t sub_24AD4538C()
{
  v1 = *(v0 + 72);
  v2 = [*(v0 + 40) zoneID];
  v3 = v2;
  if (!*(v1 + 16) || (v4 = *(v0 + 72), v5 = sub_24AD095D0(v2), (v6 & 1) == 0))
  {
    v10 = *(v0 + 72);

    sub_24AD56C50();
    swift_allocError();
    *v11 = 2;
    swift_willThrow();
    goto LABEL_6;
  }

  v7 = *(*(v0 + 72) + 56) + 16 * v5;
  v8 = *v7;
  v9 = *(v7 + 8);
  sub_24ACF40BC(*v7);

  if (v9)
  {
    *(v0 + 16) = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6128, &unk_24AD60BF0);
    swift_willThrowTypedImpl();
LABEL_6:
    v12 = *(v0 + 8);
    goto LABEL_7;
  }

  **(v0 + 24) = v8;
  v12 = *(v0 + 8);
LABEL_7:

  return v12();
}

uint64_t sub_24AD454E0(uint64_t a1, _BYTE *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  *(v3 + 48) = *a2;
  return MEMORY[0x2822009F8](sub_24AD45508, v2, 0);
}

uint64_t sub_24AD45508()
{
  if (qword_2810653A0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = sub_24AD5E7A4();
  __swift_project_value_buffer(v2, qword_2810654A0);
  v3 = v1;
  v4 = sub_24AD5E784();
  v5 = sub_24AD5EB64();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 16);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_24ACF2000, v4, v5, "delete zone:  %{public}@", v7, 0xCu);
    sub_24AD06518(v8, &qword_27EFA61C8, &unk_24AD60C30);
    MEMORY[0x24C22F400](v8, -1, -1);
    MEMORY[0x24C22F400](v7, -1, -1);
  }

  v11 = *(v0 + 16);
  v10 = *(v0 + 24);

  v12 = v11;

  v13 = swift_task_alloc();
  *(v0 + 32) = v13;
  *v13 = v0;
  v13[1] = sub_24AD456D8;
  v15 = *(v0 + 16);
  v14 = *(v0 + 24);
  v16 = *(v0 + 48);

  return sub_24AD43410(v13, v14, v14, v16, v15);
}

uint64_t sub_24AD456D8()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v4 = *v1;
  *(*v1 + 40) = v0;

  v5 = *(v2 + 24);
  if (v0)
  {
    v6 = sub_24AD4581C;
  }

  else
  {
    v6 = sub_24AD45804;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24AD45834(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 72) = a3;
  *(v4 + 24) = a2;
  *(v4 + 32) = a4;
  return MEMORY[0x2822009F8](sub_24AD45858, 0, 0);
}

uint64_t sub_24AD45858()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6120, &qword_24AD60CA0);
  v3 = swift_allocObject();
  v0[5] = v3;
  *(v3 + 16) = xmmword_24AD60330;
  *(v3 + 32) = v2;
  v4 = v2;

  return MEMORY[0x2822009F8](sub_24AD45900, v1, 0);
}

uint64_t sub_24AD45900()
{
  *(v0 + 48) = [*(*(v0 + 24) + 112) *off_278FFD950[*(v0 + 72)]];
  v1 = *(MEMORY[0x277CBBE80] + 4);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_24AD459D0;
  v3 = *(v0 + 40);
  v4 = MEMORY[0x277D84F90];

  return MEMORY[0x28210DEF8](v4, v3);
}

uint64_t sub_24AD459D0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 56);
  v6 = *v3;
  *(*v3 + 64) = a2;

  v7 = *(v4 + 48);
  v8 = *(v4 + 40);
  if (v2)
  {

    v9 = *(v6 + 8);

    return v9();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_24AD45B6C, 0, 0);
  }
}

uint64_t sub_24AD45B6C()
{
  if (!*(v0[8] + 16) || (v1 = v0[8], v2 = sub_24AD095D0(v0[4]), (v3 & 1) == 0))
  {

    sub_24AD56C50();
    swift_allocError();
    *v7 = 2;
    swift_willThrow();
    goto LABEL_6;
  }

  v4 = *(v0[8] + 56) + 16 * v2;
  v5 = *v4;
  v6 = *(v4 + 8);
  sub_24AD063F0(*v4, v6);

  if (v6)
  {
    v0[2] = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6128, &unk_24AD60BF0);
    swift_willThrowTypedImpl();
LABEL_6:
    v8 = v0[1];
    goto LABEL_7;
  }

  v8 = v0[1];
LABEL_7:

  return v8();
}

uint64_t sub_24AD45C8C(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a2;
  *(v4 + 56) = *a1;
  return MEMORY[0x2822009F8](sub_24AD45CB8, v3, 0);
}

uint64_t sub_24AD45CB8()
{
  *(v0 + 40) = [*(*(v0 + 32) + 112) *off_278FFD950[*(v0 + 56)]];
  v1 = *(MEMORY[0x277CBBE80] + 4);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_24AD45D80;
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);

  return MEMORY[0x28210DEF8](v4, v3);
}

uint64_t sub_24AD45D80(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 48);
  v7 = *(*v3 + 40);
  v12 = *v3;

  v10 = *(v12 + 8);
  if (!v2)
  {
    v8 = a1;
    v9 = a2;
  }

  return v10(v8, v9);
}

uint64_t sub_24AD45EA8(uint64_t a1, _BYTE *a2)
{
  *(v3 + 24) = a1;
  *(v3 + 32) = v2;
  *(v3 + 80) = *a2;
  return MEMORY[0x2822009F8](sub_24AD45ED0, v2, 0);
}

uint64_t sub_24AD45ED0()
{
  v1 = *(v0 + 80);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6120, &qword_24AD60CA0);
  v4 = swift_allocObject();
  *(v0 + 40) = v4;
  *(v4 + 16) = xmmword_24AD60330;
  *(v4 + 32) = v3;
  v5 = *(v2 + 112);
  v6 = v3;
  v7 = [v5 *off_278FFD950[v1]];
  *(v0 + 48) = v7;
  v8 = swift_task_alloc();
  *(v0 + 56) = v8;
  *v8 = v0;
  v8[1] = sub_24AD45FF0;
  v9 = *(v0 + 32);
  v10 = MEMORY[0x277D84F90];

  return sub_24AD4631C(v4, v10, v7, 0, 1);
}

uint64_t sub_24AD45FF0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 56);
  v11 = *v2;
  v3[8] = a1;
  v3[9] = v1;

  if (v1)
  {
    v5 = v3[4];
    v6 = sub_24AD462B0;
  }

  else
  {
    v7 = v3[5];
    v8 = v3[6];
    v9 = v3[4];

    v6 = sub_24AD46134;
    v5 = v9;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24AD46134()
{
  v1 = *(v0 + 64);
  v2 = [*(v0 + 24) recordID];
  v3 = v2;
  if (!*(v1 + 16) || (v4 = *(v0 + 64), v5 = sub_24AD09620(v2), (v6 & 1) == 0))
  {
    v10 = *(v0 + 64);

    sub_24AD56C50();
    swift_allocError();
    *v11 = 2;
    swift_willThrow();
    goto LABEL_6;
  }

  v7 = *(*(v0 + 64) + 56) + 16 * v5;
  v8 = *v7;
  v9 = *(v7 + 8);
  sub_24ACF40BC(*v7);

  if (v9)
  {
    *(v0 + 16) = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6128, &unk_24AD60BF0);
    swift_willThrowTypedImpl();
LABEL_6:
    v12 = *(v0 + 8);

    return v12();
  }

  v14 = *(v0 + 8);

  return v14(v8);
}

uint64_t sub_24AD462B0()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 72);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_24AD4631C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 48) = a4;
  *(v6 + 56) = v5;
  *(v6 + 216) = a5;
  *(v6 + 32) = a2;
  *(v6 + 40) = a3;
  *(v6 + 24) = a1;
  v7 = sub_24AD5F0D4();
  *(v6 + 64) = v7;
  v8 = *(v7 - 8);
  *(v6 + 72) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  v10 = sub_24AD5EDD4();
  *(v6 + 88) = v10;
  v11 = *(v10 - 8);
  *(v6 + 96) = v11;
  v12 = *(v11 + 64) + 15;
  *(v6 + 104) = swift_task_alloc();
  *(v6 + 112) = swift_task_alloc();
  *(v6 + 120) = swift_task_alloc();
  *(v6 + 128) = swift_task_alloc();
  v13 = sub_24AD5EDF4();
  *(v6 + 136) = v13;
  v14 = *(v13 - 8);
  *(v6 + 144) = v14;
  v15 = *(v14 + 64) + 15;
  *(v6 + 152) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AD464C4, v5, 0);
}

void sub_24AD464C4()
{
  v132 = v0;
  v1 = v0[19];
  v2 = v0[5];
  sub_24AD5EDE4();
  [v2 scope];
  v3 = CKDatabaseScopeString();
  v4 = sub_24AD5E844();
  isUniquelyReferenced_nonNull_native = v5;

  if (qword_2810653A0 != -1)
  {
LABEL_54:
    swift_once();
  }

  v8 = v0[3];
  v7 = v0[4];
  v9 = sub_24AD5E7A4();
  v0[20] = __swift_project_value_buffer(v9, qword_2810654A0);
  swift_bridgeObjectRetain_n();

  v10 = sub_24AD5E784();
  v11 = sub_24AD5EB64();

  v115 = v0;
  if (os_log_type_enabled(v10, v11))
  {
    v12 = v0[3];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v131 = v14;
    *v13 = 136315650;
    v15 = sub_24AD2EDAC(v4, isUniquelyReferenced_nonNull_native, &v131);

    *(v13 + 4) = v15;
    *(v13 + 12) = 2048;
    if (v12 >> 62)
    {
      if (v0[3] < 0)
      {
        v113 = v0[3];
      }

      v16 = sub_24AD5EC94();
    }

    else
    {
      v16 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    isUniquelyReferenced_nonNull_native = v115;
    v17 = v115[3];
    v4 = v115[4];

    *(v13 + 14) = v16;

    *(v13 + 22) = 2048;
    *(v13 + 24) = *(v4 + 16);

    _os_log_impl(&dword_24ACF2000, v10, v11, "database: %s: modifyRecord: saving: %ld deleting: %ld", v13, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    v0 = v115;
    MEMORY[0x24C22F400](v14, -1, -1);
    MEMORY[0x24C22F400](v13, -1, -1);
  }

  else
  {
    v18 = v0[3];
    v4 = v0[4];
    swift_bridgeObjectRelease_n();
  }

  v19 = v0[4];
  v20 = *(v19 + 16);
  v0[21] = v20;
  if (v20)
  {
    isUniquelyReferenced_nonNull_native = v19 + 48;
    do
    {
      v28 = *(isUniquelyReferenced_nonNull_native - 8);
      v127 = *(isUniquelyReferenced_nonNull_native - 16);
      v29 = *isUniquelyReferenced_nonNull_native;
      swift_bridgeObjectRetain_n();
      v30 = v29;
      v31 = [v30 recordName];
      v124 = sub_24AD5E844();
      v33 = v32;

      v34 = [v30 zoneID];
      v35 = [v34 zoneName];

      v122 = sub_24AD5E844();
      v37 = v36;

      v38 = [v30 zoneID];
      v39 = [v38 ownerName];

      v120 = sub_24AD5E844();
      v41 = v40;

      v42 = sub_24AD5E784();
      v4 = sub_24AD5EB64();

      v129 = v33;

      if (os_log_type_enabled(v42, v4))
      {
        v118 = v20;
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v131 = v22;
        *v21 = 136315906;
        v23 = sub_24AD2EDAC(v120, v41, &v131);

        *(v21 + 4) = v23;
        *(v21 + 12) = 2082;
        v24 = sub_24AD2EDAC(v122, v37, &v131);

        *(v21 + 14) = v24;
        *(v21 + 22) = 2082;
        v25 = sub_24AD2EDAC(v127, v28, &v131);

        *(v21 + 24) = v25;
        *(v21 + 32) = 2080;
        v26 = sub_24AD2EDAC(v124, v129, &v131);

        *(v21 + 34) = v26;
        _os_log_impl(&dword_24ACF2000, v42, v4, "delete: [Zone: %s/%{public}s; record: %{public}s/%s]", v21, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x24C22F400](v22, -1, -1);
        v27 = v21;
        v20 = v118;
        MEMORY[0x24C22F400](v27, -1, -1);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      isUniquelyReferenced_nonNull_native += 24;
      --v20;
    }

    while (v20);
  }

  v43 = v115;
  v44 = v115[3];
  if (v44 >> 62)
  {
    if (v44 < 0)
    {
      v100 = v115[3];
    }

    v45 = sub_24AD5EC94();
    v0 = v115[3];
    if (v45)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0 = v115[3];
    if (v45)
    {
LABEL_15:
      v46 = 0;
      v130 = v44 & 0xC000000000000001;
      v125 = v44 & 0xFFFFFFFFFFFFFF8;
      v47 = v0 + 4;
      v48 = MEMORY[0x277D84F98];
      v128 = v45;
      while (1)
      {
        if (v130)
        {
          v51 = MEMORY[0x24C22EA30](v46, v115[3]);
        }

        else
        {
          if (v46 >= *(v125 + 16))
          {
            goto LABEL_51;
          }

          v51 = v47[v46];
        }

        v52 = v51;
        v53 = v46 + 1;
        if (__OFADD__(v46, 1))
        {
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
          goto LABEL_54;
        }

        v0 = [v51 recordID];
        v54 = [v52 recordChangeTag];
        if (v54)
        {
          v55 = v48;
          v56 = v54;
          v4 = sub_24AD5E844();
          v58 = v57;

          v48 = v55;
        }

        else
        {
          v4 = 0;
          v58 = 0xE000000000000000;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v131 = v48;
        v59 = sub_24AD09620(v0);
        v61 = v48[2];
        v62 = (v60 & 1) == 0;
        v63 = __OFADD__(v61, v62);
        v64 = v61 + v62;
        if (v63)
        {
          goto LABEL_52;
        }

        v65 = v60;
        if (v48[3] >= v64)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if ((v60 & 1) == 0)
            {
              goto LABEL_32;
            }
          }

          else
          {
            isUniquelyReferenced_nonNull_native = v59;
            sub_24AD0525C();
            v59 = isUniquelyReferenced_nonNull_native;
            v48 = v131;
            if ((v65 & 1) == 0)
            {
              goto LABEL_32;
            }
          }
        }

        else
        {
          sub_24AD04070(v64, isUniquelyReferenced_nonNull_native);
          isUniquelyReferenced_nonNull_native = v131;
          v59 = sub_24AD09620(v0);
          if ((v65 & 1) != (v66 & 1))
          {
            sub_24AD06578(0, &qword_27EFA6028, 0x277CBC5D0);

            sub_24AD5EFC4();
            return;
          }

          v48 = isUniquelyReferenced_nonNull_native;
          if ((v65 & 1) == 0)
          {
LABEL_32:
            v48[(v59 >> 6) + 8] |= 1 << v59;
            *(v48[6] + 8 * v59) = v0;
            v67 = (v48[7] + 16 * v59);
            *v67 = v4;
            v67[1] = v58;

            v68 = v48[2];
            v63 = __OFADD__(v68, 1);
            v69 = v68 + 1;
            if (v63)
            {
              goto LABEL_53;
            }

            v48[2] = v69;
            goto LABEL_17;
          }
        }

        v49 = (v48[7] + 16 * v59);
        v50 = v49[1];
        *v49 = v4;
        v49[1] = v58;

LABEL_17:
        ++v46;
        if (v53 == v128)
        {
          v70 = v128;
          if (v128 < 1)
          {
            __break(1u);
            return;
          }

          v71 = 0;
          v114 = v115[3] + 32;
          v117 = v48;
          do
          {
            if (v130)
            {
              v79 = MEMORY[0x24C22EA30](v71, v115[3]);
            }

            else
            {
              v79 = *(v114 + 8 * v71);
            }

            v80 = v79;
            v81 = [v79 recordID];
            v82 = [v81 zoneID];

            v83 = [v82 ownerName];
            v126 = sub_24AD5E844();
            v85 = v84;

            v86 = [v80 recordID];
            v87 = [v86 zoneID];

            v88 = [v87 zoneName];
            v121 = sub_24AD5E844();
            v90 = v89;

            v123 = sub_24AD5EBE4();
            v92 = v91;
            v93 = [v80 recordID];
            v94 = [v93 recordName];

            v119 = sub_24AD5E844();
            v96 = v95;

            v97 = sub_24AD5E784();
            v98 = sub_24AD5EB64();

            if (os_log_type_enabled(v97, v98))
            {
              v72 = swift_slowAlloc();
              v116 = v80;
              v73 = swift_slowAlloc();
              v131 = v73;
              *v72 = 136315906;
              v74 = sub_24AD2EDAC(v126, v85, &v131);

              *(v72 + 4) = v74;
              *(v72 + 12) = 2082;
              v75 = sub_24AD2EDAC(v121, v90, &v131);

              *(v72 + 14) = v75;
              v70 = v128;
              *(v72 + 22) = 2082;
              v76 = sub_24AD2EDAC(v123, v92, &v131);

              *(v72 + 24) = v76;
              *(v72 + 32) = 2080;
              v77 = sub_24AD2EDAC(v119, v96, &v131);

              *(v72 + 34) = v77;
              _os_log_impl(&dword_24ACF2000, v97, v98, "modify: [Zone: %s/%{public}s; record: %{public}s/%s]", v72, 0x2Au);
              swift_arrayDestroy();
              MEMORY[0x24C22F400](v73, -1, -1);
              MEMORY[0x24C22F400](v72, -1, -1);
            }

            else
            {
            }

            ++v71;
            v78 = v117;
          }

          while (v70 != v71);
          v43 = v115;
          v99 = v115[3];
          goto LABEL_59;
        }
      }
    }
  }

  v78 = MEMORY[0x277D84F98];
LABEL_59:
  v43[22] = v78;
  v101 = v43[19];
  v102 = v43[16];
  v103 = v43[4];
  v104 = v43[5];
  sub_24AD5EDC4();

  v105 = v104;
  v106 = swift_task_alloc();
  v43[23] = v106;
  *v106 = v43;
  v106[1] = sub_24AD4707C;
  v107 = v43[6];
  v108 = *(v43 + 216);
  v110 = v43[4];
  v109 = v43[5];
  v111 = v43[3];
  v112 = v43[7];

  sub_24AD53E18(v112, v109, v111, v110, v107, v108);
}

uint64_t sub_24AD4707C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 184);
  v18 = *v3;
  v4[24] = a1;
  v4[25] = a2;
  v4[26] = v2;

  if (v2)
  {
    v6 = v4[22];
    v7 = v4[7];
    v8 = v4[4];
    v9 = v4[5];
    v10 = v4[3];

    v11 = sub_24AD48110;
    v12 = v7;
  }

  else
  {
    v13 = v4[7];
    v14 = v4[4];
    v15 = v4[5];
    v16 = v4[3];

    v11 = sub_24AD471E8;
    v12 = v13;
  }

  return MEMORY[0x2822009F8](v11, v12, 0);
}

void sub_24AD471E8()
{
  v219 = v0;
  v1 = v0[19];
  v2 = v0[20];
  v4 = v0[15];
  v3 = v0[16];
  v6 = v0[13];
  v5 = v0[14];
  v7 = v0[11];
  v8 = v0[12];
  sub_24AD5EDC4();
  v9 = *(v8 + 16);
  v9(v5, v3, v7);
  v10 = v4;
  v11 = v0;
  v9(v6, v10, v7);
  v12 = sub_24AD5E784();
  v13 = sub_24AD5EB64();
  v14 = os_log_type_enabled(v12, v13);
  v16 = v11[13];
  v15 = v11[14];
  v17 = v11[11];
  v18 = v11[12];
  v217 = v11;
  if (v14)
  {
    v19 = v11[10];
    v20 = v11[9];
    v202 = v11[8];
    v206 = swift_slowAlloc();
    v212 = swift_slowAlloc();
    v218[0] = v212;
    *v206 = 136315138;
    sub_24AD5F0C4();
    sub_24AD5A540(&qword_281064968, 255, MEMORY[0x277D858F8]);
    v21 = sub_24AD5F0B4();
    v23 = v22;
    (*(v20 + 8))(v19, v202);
    v24 = *(v18 + 8);
    v24(v16, v17);
    v181 = v24;
    v24(v15, v17);
    v25 = sub_24AD2EDAC(v21, v23, v218);
    v11 = v217;

    *(v206 + 4) = v25;
    _os_log_impl(&dword_24ACF2000, v12, v13, "modifyRecords duration: %s", v206, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v212);
    MEMORY[0x24C22F400](v212, -1, -1);
    MEMORY[0x24C22F400](v206, -1, -1);
  }

  else
  {

    v26 = *(v18 + 8);
    v26(v16, v17);
    v181 = v26;
    v26(v15, v17);
  }

  v27 = v11[24];
  v30 = *(v27 + 64);
  v29 = v27 + 64;
  v28 = v30;
  v190 = v11[22];
  v31 = -1;
  v32 = -1 << *(v11[24] + 32);
  if (-v32 < 64)
  {
    v31 = ~(-1 << -v32);
  }

  v33 = v31 & v28;
  v34 = (63 - v32) >> 6;
  v198 = v11[24];

  v35 = 0;
  v182 = v29;
  v183 = v34;
  while (v33)
  {
    v36 = v35;
LABEL_13:
    v37 = __clz(__rbit64(v33));
    v33 &= v33 - 1;
    v38 = *(v198 + 56) + ((v36 << 10) | (16 * v37));
    v39 = *v38;
    if (*(v38 + 8))
    {
      v11[2] = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6128, &unk_24AD60BF0);
      swift_willThrowTypedImpl();
      v35 = v36;
    }

    else
    {
      v195 = *v38;
      v40 = v39;
      v41 = [v40 recordID];
      v42 = [v41 zoneID];

      v43 = [v42 ownerName];
      v189 = sub_24AD5E844();
      v207 = v44;

      v45 = [v40 recordID];
      v46 = [v45 zoneID];

      v47 = [v46 zoneName];
      v187 = sub_24AD5E844();
      v191 = v48;

      v188 = sub_24AD5EBE4();
      v192 = v49;
      v50 = [v40 recordID];
      v51 = [v50 recordName];

      v186 = sub_24AD5E844();
      v203 = v52;

      v53 = [v40 recordID];
      v54 = v53;
      if (*(v190 + 16) && (v55 = v11[22], v56 = sub_24AD09620(v53), (v57 & 1) != 0))
      {
        v58 = (*(v190 + 56) + 16 * v56);
        v185 = *v58;
        v213 = v58[1];
      }

      else
      {
        v185 = 0;
        v213 = 0xE000000000000000;
      }

      v59 = v207;

      v60 = [v40 recordChangeTag];
      if (v60)
      {
        v61 = v60;
        v184 = sub_24AD5E844();
        v208 = v62;
      }

      else
      {
        v208 = 0xE800000000000000;
        v184 = 0x3E44454C4941463CLL;
      }

      v63 = v192;
      v64 = v11[20];

      v65 = v59;
      v66 = sub_24AD5E784();
      v67 = sub_24AD5EB64();

      v193 = v67;
      v68 = v67;
      v69 = v66;
      if (os_log_type_enabled(v66, v68))
      {
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        v218[0] = v71;
        *v70 = 136316418;
        v72 = sub_24AD2EDAC(v189, v65, v218);

        *(v70 + 4) = v72;
        *(v70 + 12) = 2082;
        v73 = sub_24AD2EDAC(v187, v191, v218);

        *(v70 + 14) = v73;
        *(v70 + 22) = 2082;
        v74 = sub_24AD2EDAC(v188, v63, v218);

        *(v70 + 24) = v74;
        *(v70 + 32) = 2080;
        v75 = sub_24AD2EDAC(v186, v203, v218);

        *(v70 + 34) = v75;
        *(v70 + 42) = 2082;
        v76 = sub_24AD2EDAC(v185, v213, v218);

        *(v70 + 44) = v76;
        *(v70 + 52) = 2082;
        v77 = sub_24AD2EDAC(v184, v208, v218);

        *(v70 + 54) = v77;
        v78 = v69;
        _os_log_impl(&dword_24ACF2000, v69, v193, "changetag: [Zone: %s/%{public}s; record: %{public}s/%s] -- [%{public}s] -> [%{public}s]", v70, 0x3Eu);
        swift_arrayDestroy();
        MEMORY[0x24C22F400](v71, -1, -1);
        v11 = v217;
        MEMORY[0x24C22F400](v70, -1, -1);
        sub_24AD35214(v195);

        v35 = v36;
        v29 = v182;
        v34 = v183;
      }

      else
      {
        sub_24AD35214(v195);

        v35 = v36;
        v29 = v182;
        v34 = v183;
        v11 = v217;
      }
    }
  }

  while (1)
  {
    v36 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      __break(1u);
      goto LABEL_73;
    }

    if (v36 >= v34)
    {
      break;
    }

    v33 = *(v29 + 8 * v36);
    ++v35;
    if (v33)
    {
      goto LABEL_13;
    }
  }

  v79 = v11[24];
  v81 = v11[21];
  v80 = v11[22];

  if (v81)
  {
    v82 = 0;
    v83 = (v11[4] + 48);
    v84 = MEMORY[0x277D84F98];
    while (1)
    {
      v88 = *(v83 - 2);
      v87 = *(v83 - 1);
      v89 = *v83;
      swift_bridgeObjectRetain_n();
      v90 = v89;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v218[0] = v84;
      v92 = sub_24AD09620(v90);
      v94 = v84[2];
      v95 = (v93 & 1) == 0;
      v96 = __OFADD__(v94, v95);
      v97 = v94 + v95;
      if (v96)
      {
        goto LABEL_74;
      }

      v98 = v93;
      if (v84[3] < v97)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_33;
      }

      v103 = v92;
      sub_24AD0525C();
      v92 = v103;
      v84 = v218[0];
      if (v98)
      {
LABEL_26:
        v85 = (v84[7] + 16 * v92);
        v86 = v85[1];
        *v85 = v88;
        v85[1] = v87;

        goto LABEL_27;
      }

LABEL_34:
      v84[(v92 >> 6) + 8] |= 1 << v92;
      *(v84[6] + 8 * v92) = v90;
      v100 = (v84[7] + 16 * v92);
      *v100 = v88;
      v100[1] = v87;

      v101 = v84[2];
      v96 = __OFADD__(v101, 1);
      v102 = v101 + 1;
      if (v96)
      {
        goto LABEL_75;
      }

      v84[2] = v102;
LABEL_27:
      ++v82;
      v83 += 3;
      if (v82 == v217[21])
      {
        goto LABEL_39;
      }
    }

    sub_24AD04070(v97, isUniquelyReferenced_nonNull_native);
    v84 = v218[0];
    v92 = sub_24AD09620(v90);
    if ((v98 & 1) != (v99 & 1))
    {
      sub_24AD06578(0, &qword_27EFA6028, 0x277CBC5D0);
LABEL_63:

      sub_24AD5EFC4();
      return;
    }

LABEL_33:
    if (v98)
    {
      goto LABEL_26;
    }

    goto LABEL_34;
  }

  v84 = MEMORY[0x277D84F98];
LABEL_39:
  v104 = v217;
  v105 = v217[25];
  v108 = *(v105 + 64);
  v107 = v105 + 64;
  v106 = v108;
  v109 = -1;
  v110 = -1 << *(v217[25] + 32);
  if (-v110 < 64)
  {
    v109 = ~(-1 << -v110);
  }

  v111 = v109 & v106;
  v112 = (63 - v110) >> 6;
  v204 = v217[25];

  v113 = 0;
  v114 = MEMORY[0x277D84F98];
  v196 = v112;
  v199 = v107;
  while (v111)
  {
    v118 = v113;
LABEL_49:
    v119 = v114;
    v120 = __clz(__rbit64(v111)) | (v118 << 6);
    v121 = *(*(v204 + 48) + 8 * v120);
    v122 = *(v204 + 56) + 16 * v120;
    v123 = *v122;
    v124 = *(v122 + 8);
    if (!v84[2])
    {
      v162 = v104[25];
      v163 = v121;
      sub_24AD063F0(v123, v124);
      v164 = v163;
      sub_24AD063F0(v123, v124);

      v128 = v123;
LABEL_68:
      v166 = v124;

      v211 = v104[24];
      v216 = v104[25];
      v167 = v104[18];
      v205 = v104[19];
      v168 = v104;
      v197 = v104[16];
      v201 = v104[17];
      v194 = v104[15];
      v171 = v104 + 11;
      v170 = v104[11];
      v169 = v171[1];

      v172 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      v173 = sub_24AD5E834();
      [v172 initWithDomain:v173 code:0 userInfo:0];

      swift_willThrow();
      sub_24AD56CA4(v128, v166);

      sub_24AD56CA4(v128, v166);
      v181(v194, v170);
      v181(v197, v170);
      (*(v167 + 8))(v205, v201);

      v174 = v168[19];
      v176 = v168[15];
      v175 = v168[16];
      v178 = v168[13];
      v177 = v168[14];
      v179 = v168[10];

      v180 = v168[1];

      v180();
      return;
    }

    v125 = v121;
    sub_24AD063F0(v123, v124);
    v126 = v125;
    sub_24AD063F0(v123, v124);
    v127 = sub_24AD09620(v126);
    v128 = v123;
    if ((v129 & 1) == 0)
    {
      v165 = v104[25];

      goto LABEL_68;
    }

    v130 = (v84[7] + 16 * v127);
    v132 = *v130;
    v131 = v130[1];
    v133 = v126;
    v134 = v124;
    v135 = v133;
    v209 = v128;
    v214 = v134;
    sub_24AD063F0(v128, v134);

    v114 = v119;
    v136 = swift_isUniquelyReferenced_nonNull_native();
    v218[0] = v119;
    v138 = sub_24AD096B4(v132, v131, v135);
    v139 = *(v119 + 16);
    v140 = (v137 & 1) == 0;
    v141 = v139 + v140;
    if (__OFADD__(v139, v140))
    {
      goto LABEL_76;
    }

    v142 = v137;
    if (v114[3] >= v141)
    {
      if ((v136 & 1) == 0)
      {
        sub_24AD050BC();
        v114 = v218[0];
      }
    }

    else
    {
      sub_24AD03D80(v141, v136);
      v143 = v218[0];
      v144 = sub_24AD096B4(v132, v131, v135);
      if ((v142 & 1) != (v145 & 1))
      {
        goto LABEL_63;
      }

      v138 = v144;
      v114 = v143;
    }

    v111 &= v111 - 1;
    if (v142)
    {
      v115 = v114[7] + 16 * v138;
      v116 = *v115;
      v117 = *(v115 + 8);
      *v115 = v209;
      *(v115 + 8) = v214;
      sub_24AD56CA4(v116, v117);

      sub_24AD56CA4(v209, v214);
      sub_24AD56CA4(v209, v214);
    }

    else
    {
      v114[(v138 >> 6) + 8] |= 1 << v138;
      v146 = (v114[6] + 24 * v138);
      *v146 = v132;
      v146[1] = v131;
      v146[2] = v135;
      v147 = v114[7] + 16 * v138;
      *v147 = v209;
      *(v147 + 8) = v214;
      sub_24AD56CA4(v209, v214);

      sub_24AD56CA4(v209, v214);
      v148 = v114[2];
      v96 = __OFADD__(v148, 1);
      v149 = v148 + 1;
      if (v96)
      {
        goto LABEL_77;
      }

      v114[2] = v149;
    }

    v113 = v118;
    v104 = v217;
    v112 = v196;
    v107 = v199;
  }

  while (1)
  {
    v118 = v113 + 1;
    if (__OFADD__(v113, 1))
    {
      break;
    }

    if (v118 >= v112)
    {
      v215 = v114;
      v150 = v104[25];
      v152 = v104[18];
      v151 = v104[19];
      v154 = v104[16];
      v153 = v104[17];
      v155 = v104[15];
      v200 = v104[14];
      v157 = v104[12];
      v156 = v104[13];
      v158 = v104;
      v159 = v104[11];
      v210 = v158[10];

      v181(v155, v159);
      v181(v154, v159);
      (*(v152 + 8))(v151, v153);

      v160 = v158[1];
      v161 = v158[24];

      v160(v161, v215);
      return;
    }

    v111 = *(v107 + 8 * v118);
    ++v113;
    if (v111)
    {
      goto LABEL_49;
    }
  }

LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
}

uint64_t sub_24AD48110()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  (*(v0[12] + 8))(v0[16], v0[11]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[26];
  v5 = v0[19];
  v7 = v0[15];
  v6 = v0[16];
  v9 = v0[13];
  v8 = v0[14];
  v10 = v0[10];

  v11 = v0[1];

  return v11();
}

uint64_t sub_24AD481EC(uint64_t *a1, _BYTE *a2)
{
  v4 = *a1;
  *(v3 + 80) = v2;
  *(v3 + 88) = v4;
  *(v3 + 96) = *(a1 + 1);
  *(v3 + 152) = *a2;
  return MEMORY[0x2822009F8](sub_24AD48220, v2, 0);
}

uint64_t sub_24AD48220()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);
  v5 = *(v0 + 80);
  v4 = *(v0 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6130, &unk_24AD60540);
  inited = swift_initStackObject();
  *(v0 + 112) = inited;
  *(inited + 16) = xmmword_24AD5F820;
  *(inited + 32) = v4;
  *(inited + 40) = v2;
  *(inited + 48) = v3;
  v7 = *(v5 + 112);

  v8 = v3;
  v9 = [v7 *off_278FFD950[v1]];
  *(v0 + 120) = v9;
  v10 = swift_task_alloc();
  *(v0 + 128) = v10;
  *v10 = v0;
  v10[1] = sub_24AD48358;
  v11 = *(v0 + 80);
  v12 = MEMORY[0x277D84F90];

  return sub_24AD4631C(v12, inited, v9, 0, 1);
}

uint64_t sub_24AD48358(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 128);
  v13 = *v3;
  v4[17] = a2;
  v4[18] = v2;

  if (v2)
  {
    v6 = v4[10];
    v7 = sub_24AD485D4;
  }

  else
  {
    v9 = v4[14];
    v8 = v4[15];
    v10 = v4[10];

    swift_setDeallocating();
    v11 = *(v9 + 16);
    swift_arrayDestroy();

    v7 = sub_24AD484B0;
    v6 = v10;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_24AD484B0()
{
  if (!*(v0[17] + 16) || (v1 = v0[17], v2 = sub_24AD096B4(v0[11], v0[12], v0[13]), (v3 & 1) == 0))
  {

    sub_24AD56C50();
    swift_allocError();
    *v7 = 2;
    swift_willThrow();
    goto LABEL_6;
  }

  v4 = *(v0[17] + 56) + 16 * v2;
  v5 = *v4;
  v6 = *(v4 + 8);
  sub_24AD063F0(*v4, v6);

  if (v6)
  {
    v0[9] = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6128, &unk_24AD60BF0);
    swift_willThrowTypedImpl();
LABEL_6:
    v8 = v0[1];
    goto LABEL_7;
  }

  v8 = v0[1];
LABEL_7:

  return v8();
}

uint64_t sub_24AD485D4()
{
  v1 = *(v0 + 112);

  swift_setDeallocating();
  v2 = *(v1 + 16);
  swift_arrayDestroy();
  v3 = *(v0 + 144);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_24AD48654(uint64_t a1, uint64_t a2, uint64_t a3, char a4, _BYTE *a5)
{
  *(v6 + 72) = a4;
  *(v6 + 32) = a3;
  *(v6 + 40) = v5;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 73) = *a5;
  return MEMORY[0x2822009F8](sub_24AD48684, v5, 0);
}

uint64_t sub_24AD48684()
{
  v1 = [*(*(v0 + 40) + 112) *off_278FFD950[*(v0 + 73)]];
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_24AD48754;
  v3 = *(v0 + 72);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = *(v0 + 16);
  v6 = *(v0 + 24);

  return sub_24AD4631C(v7, v6, v1, v4, v3);
}

uint64_t sub_24AD48754(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 56);
  v8 = *v3;
  *(*v3 + 64) = v2;

  if (v2)
  {
    v9 = *(v6 + 40);

    return MEMORY[0x2822009F8](sub_24AD488C0, v9, 0);
  }

  else
  {

    v10 = *(v8 + 8);

    return v10(a1, a2);
  }
}

uint64_t sub_24AD488C0()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 64);

  return v1();
}

uint64_t sub_24AD48924(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(v4 + 40) = a2;
  *(v4 + 48) = v3;
  *(v4 + 32) = a1;
  *(v4 + 96) = *a3;
  return MEMORY[0x2822009F8](sub_24AD48950, v3, 0);
}

uint64_t sub_24AD48950()
{
  *(v0 + 56) = [*(*(v0 + 48) + 112) *off_278FFD950[*(v0 + 96)]];

  return MEMORY[0x2822009F8](sub_24AD489DC, 0, 0);
}

uint64_t sub_24AD489DC()
{
  v8 = *(v0 + 32);
  v1 = [objc_allocWithZone(MEMORY[0x277CBC4F0]) init];
  *(v0 + 64) = v1;
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *(v2 + 16) = v8;
  v3 = *(MEMORY[0x277CBBE68] + 4);
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6228, &qword_24AD60CE0);
  *v4 = v0;
  v4[1] = sub_24AD48B00;
  v6 = *(v0 + 56);

  return MEMORY[0x28210DEC0](v0 + 16, v1, 0, &unk_24AD60978, v2, v5);
}

uint64_t sub_24AD48B00()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_24AD48C88;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_24AD48C1C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24AD48C1C()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 8);

  return v4(v2, v3);
}

uint64_t sub_24AD48C88()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 48);

  return MEMORY[0x2822009F8](sub_24AD48CFC, v2, 0);
}

uint64_t sub_24AD48CFC()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 88);

  return v1();
}

uint64_t sub_24AD48D60(uint64_t a1, _BYTE *a2)
{
  *(v3 + 128) = a1;
  *(v3 + 136) = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6260, &qword_24AD60CF0);
  *(v3 + 144) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v3 + 152) = swift_task_alloc();
  *(v3 + 160) = swift_task_alloc();
  *(v3 + 25) = *a2;

  return MEMORY[0x2822009F8](sub_24AD48E20, v2, 0);
}

uint64_t sub_24AD48E20()
{
  v1 = *(v0 + 128);
  v2 = type metadata accessor for CloudKitChangeSet(0);
  v3 = *(v1 + *(v2 + 28));
  v4 = *(v3 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v39 = v2;
    v45 = *(v0 + 144);
    v49 = MEMORY[0x277D84F90];
    sub_24AD33620(0, v4, 0);
    v5 = v49;
    v6 = v3 + 64;
    v7 = -1 << *(v3 + 32);
    result = sub_24AD5EC54();
    v9 = result;
    v10 = 0;
    v11 = *(v3 + 36);
    v40 = v3 + 72;
    v41 = v4;
    v42 = v0;
    v43 = v11;
    v44 = v3 + 64;
    while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(v3 + 32))
    {
      v13 = v9 >> 6;
      if ((*(v6 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        goto LABEL_25;
      }

      if (v11 != *(v3 + 36))
      {
        goto LABEL_26;
      }

      v46 = v10;
      v14 = *(v45 + 48);
      v15 = *(v0 + 152);
      v16 = *(v0 + 160);
      v17 = *(v3 + 56);
      v48 = v5;
      v18 = *(*(v3 + 48) + 8 * v9);
      v19 = type metadata accessor for CloudKitChangeSet.TombstoneInfo(0);
      sub_24AD065E0(v17 + *(*(v19 - 8) + 72) * v9, v16 + v14);
      *v15 = v18;
      v20 = (v15 + *(v45 + 48));
      sub_24AD06644(v16 + v14, v20);
      v47 = *v20;
      v21 = v3;
      v22 = v20[1];
      v23 = v18;
      v5 = v48;
      v24 = v23;

      result = sub_24AD06518(v15, &qword_27EFA6260, &qword_24AD60CF0);
      v26 = *(v48 + 16);
      v25 = *(v48 + 24);
      if (v26 >= v25 >> 1)
      {
        result = sub_24AD33620((v25 > 1), v26 + 1, 1);
        v5 = v48;
      }

      *(v5 + 16) = v26 + 1;
      v27 = (v5 + 24 * v26);
      v27[4] = v47;
      v27[5] = v22;
      v27[6] = v24;
      v12 = 1 << *(v21 + 32);
      if (v9 >= v12)
      {
        goto LABEL_27;
      }

      v3 = v21;
      v6 = v44;
      v28 = *(v44 + 8 * v13);
      if ((v28 & (1 << v9)) == 0)
      {
        goto LABEL_28;
      }

      v11 = v43;
      if (v43 != *(v3 + 36))
      {
        goto LABEL_29;
      }

      v29 = v28 & (-2 << (v9 & 0x3F));
      if (v29)
      {
        v12 = __clz(__rbit64(v29)) | v9 & 0x7FFFFFFFFFFFFFC0;
        v0 = v42;
      }

      else
      {
        v30 = v13 << 6;
        v31 = (v40 + 8 * v13);
        v32 = v13 + 1;
        v0 = v42;
        while (v32 < (v12 + 63) >> 6)
        {
          v34 = *v31++;
          v33 = v34;
          v30 += 64;
          ++v32;
          if (v34)
          {
            result = sub_24ACF3B64(v9, v43, 0);
            v12 = __clz(__rbit64(v33)) + v30;
            goto LABEL_4;
          }
        }

        result = sub_24ACF3B64(v9, v43, 0);
      }

LABEL_4:
      v10 = v46 + 1;
      v9 = v12;
      if (v46 + 1 == v41)
      {
        v1 = *(v0 + 128);
        v2 = v39;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
LABEL_21:
    *(v0 + 168) = v5;
    v35 = *(v1 + *(v2 + 24));
    v36 = [*(*(v0 + 136) + 112) *off_278FFD950[*(v0 + 25)]];
    *(v0 + 176) = v36;
    v37 = swift_task_alloc();
    *(v0 + 184) = v37;
    *v37 = v0;
    v37[1] = sub_24AD491D4;
    v38 = *(v0 + 136);

    return sub_24AD4631C(v35, v5, v36, 0, 1);
  }

  return result;
}

uint64_t sub_24AD491D4(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 184);
  v12 = *v3;
  v4[24] = a1;
  v4[25] = a2;
  v4[26] = v2;

  if (v2)
  {
    v6 = v4[17];
    v7 = sub_24AD4A2DC;
  }

  else
  {
    v8 = v4[21];
    v9 = v4[22];
    v10 = v4[17];

    v7 = sub_24AD4930C;
    v6 = v10;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_24AD4930C()
{
  v153 = v0;
  v1 = *(v0 + 192);
  v150 = v1 + 64;
  v2 = -1;
  v3 = -1 << *(v1 + 32);
  if (-v3 < 64)
  {
    v2 = ~(-1 << -v3);
  }

  v4 = v2 & *(v1 + 64);
  v5 = (63 - v3) >> 6;
  swift_bridgeObjectRetain_n();
  v6 = 0;
  v141 = MEMORY[0x277D84F90];
  v7 = &qword_27EFA6268;
  v144 = v1;
  if (!v4)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v8 = *(v1 + 56) + ((v6 << 10) | (16 * __clz(__rbit64(v4))));
      v9 = *v8;
      LOBYTE(v8) = *(v8 + 8);
      v4 &= v4 - 1;
      *(v0 + 16) = v9;
      *(v0 + 24) = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6268, &qword_24AD60CF8);
      sub_24AD5F0A4();
      v10 = *(v0 + 80);
      if (v10)
      {
        break;
      }

      if (!v4)
      {
        goto LABEL_6;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v141 = sub_24AD2E67C(0, v141[2] + 1, 1, v141);
    }

    v13 = v141[2];
    v12 = v141[3];
    if (v13 >= v12 >> 1)
    {
      v141 = sub_24AD2E67C((v12 > 1), v13 + 1, 1, v141);
    }

    v141[2] = v13 + 1;
    v141[v13 + 4] = v10;
    v1 = v144;
  }

  while (v4);
  while (1)
  {
LABEL_6:
    v11 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      goto LABEL_95;
    }

    if (v11 >= v5)
    {
      break;
    }

    v4 = *(v150 + 8 * v11);
    ++v6;
    if (v4)
    {
      v6 = v11;
      goto LABEL_4;
    }
  }

  v15 = *(v0 + 192);
  v14 = *(v0 + 200);

  v16 = v14 + 64;
  v17 = -1;
  v18 = -1 << *(v14 + 32);
  if (-v18 < 64)
  {
    v17 = ~(-1 << -v18);
  }

  v19 = v17 & *(v14 + 64);
  v20 = (63 - v18) >> 6;
  v151 = v14;
  swift_bridgeObjectRetain_n();
  v21 = 0;
  v140 = MEMORY[0x277D84F90];
  v7 = &qword_27EFA6270;
  if (!v19)
  {
    goto LABEL_21;
  }

  do
  {
LABEL_19:
    while (1)
    {
      v22 = *(v151 + 56) + ((v21 << 10) | (16 * __clz(__rbit64(v19))));
      v23 = *v22;
      LOBYTE(v22) = *(v22 + 8);
      v19 &= v19 - 1;
      *(v0 + 32) = v23;
      *(v0 + 40) = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6270, &qword_24AD60D00);
      sub_24AD5F0A4();
      v24 = *(v0 + 88);
      if (v24)
      {
        break;
      }

      if (!v19)
      {
        goto LABEL_21;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v140 = sub_24AD2E67C(0, v140[2] + 1, 1, v140);
    }

    v27 = v140[2];
    v26 = v140[3];
    if (v27 >= v26 >> 1)
    {
      v140 = sub_24AD2E67C((v26 > 1), v27 + 1, 1, v140);
    }

    v140[2] = v27 + 1;
    v140[v27 + 4] = v24;
  }

  while (v19);
LABEL_21:
  while (1)
  {
    v25 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v25 >= v20)
    {
      v28 = *(v0 + 200);

      if (v140[2])
      {
        v29 = *(v0 + 200);
        v30 = -1;
        v31 = -1 << *(v151 + 32);
        if (-v31 < 64)
        {
          v30 = ~(-1 << -v31);
        }

        v32 = v30 & *(v151 + 64);
        v33 = (63 - v31) >> 6;
        v131 = *(v0 + 200);

        v34 = 0;
        v126 = v16;
        v127 = v33;
        if (v32)
        {
          goto LABEL_41;
        }

LABEL_37:
        while (1)
        {
          v35 = v34 + 1;
          if (__OFADD__(v34, 1))
          {
            goto LABEL_96;
          }

          if (v35 >= v33)
          {
            v65 = *(v0 + 200);

            break;
          }

          v32 = *(v16 + 8 * v35);
          ++v34;
          if (v32)
          {
            while (1)
            {
              v36 = __clz(__rbit64(v32));
              v32 &= v32 - 1;
              v37 = v36 | (v35 << 6);
              v38 = (*(v131 + 48) + 24 * v37);
              v39 = v38[1];
              v142 = *v38;
              v40 = v38[2];
              v41 = *(v151 + 56) + 16 * v37;
              v42 = *v41;
              v43 = *(v41 + 8);
              *(v0 + 48) = *v41;
              *(v0 + 56) = v43;

              v7 = v40;
              sub_24AD063F0(v42, v43);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6270, &qword_24AD60D00);
              sub_24AD5F0A4();
              v148 = *(v0 + 96);
              if (v148)
              {
                v136 = v42;
                v137 = v43;
                v44 = v7;

                v45 = [v44 recordName];
                v130 = sub_24AD5E844();
                v134 = v46;

                v47 = [v44 zoneID];
                v48 = [v47 zoneName];

                v129 = sub_24AD5E844();
                v146 = v49;

                v133 = v44;
                v50 = [v44 zoneID];
                v51 = [v50 ownerName];

                v128 = sub_24AD5E844();
                v53 = v52;

                if (qword_2810653A0 != -1)
                {
                  swift_once();
                }

                v54 = sub_24AD5E7A4();
                __swift_project_value_buffer(v54, qword_2810654A0);

                v7 = v134;

                v55 = v148;
                v56 = sub_24AD5E784();
                v57 = sub_24AD5EB44();
                v132 = v53;

                log = v56;
                if (os_log_type_enabled(v56, v57))
                {
                  v58 = swift_slowAlloc();
                  v59 = swift_slowAlloc();
                  v125 = swift_slowAlloc();
                  v152[0] = v125;
                  *v58 = 136316162;
                  v60 = sub_24AD2EDAC(v128, v132, v152);

                  *(v58 + 4) = v60;
                  *(v58 + 12) = 2082;
                  v61 = sub_24AD2EDAC(v129, v146, v152);

                  *(v58 + 14) = v61;
                  *(v58 + 22) = 2082;
                  v62 = sub_24AD2EDAC(v142, v39, v152);

                  *(v58 + 24) = v62;
                  *(v58 + 32) = 2080;
                  v63 = sub_24AD2EDAC(v130, v134, v152);

                  *(v58 + 34) = v63;
                  *(v58 + 42) = 2112;
                  v64 = sub_24AD5E324();
                  *(v58 + 44) = v64;
                  *v59 = v64;
                  _os_log_impl(&dword_24ACF2000, log, v57, "Delete error: [Zone: %s/%{public}s; record: %{public}s/%s]: %@", v58, 0x34u);
                  sub_24AD06518(v59, &qword_27EFA61C8, &unk_24AD60C30);
                  MEMORY[0x24C22F400](v59, -1, -1);
                  swift_arrayDestroy();
                  MEMORY[0x24C22F400](v125, -1, -1);
                  MEMORY[0x24C22F400](v58, -1, -1);

                  v7 = v133;
                  sub_24AD56CA4(v136, v137);
                }

                else
                {

                  sub_24AD56CA4(v136, v137);
                  swift_bridgeObjectRelease_n();
                }

                v34 = v35;
                v16 = v126;
                v33 = v127;
                if (!v32)
                {
                  goto LABEL_37;
                }
              }

              else
              {

                sub_24AD56CA4(v42, v43);
                v34 = v35;
                if (!v32)
                {
                  goto LABEL_37;
                }
              }

LABEL_41:
              v35 = v34;
            }
          }
        }
      }

      if (v141[2])
      {
        v66 = *(v0 + 192);
        v67 = -1;
        v68 = -1 << *(v144 + 32);
        if (-v68 < 64)
        {
          v67 = ~(-1 << -v68);
        }

        v7 = v67 & *(v144 + 64);
        v69 = (63 - v68) >> 6;
        v145 = *(v0 + 192);

        v70 = 0;
        while (v7)
        {
          v71 = v70;
LABEL_61:
          v72 = __clz(__rbit64(v7)) | (v71 << 6);
          v73 = *(*(v145 + 48) + 8 * v72);
          v74 = *(v144 + 56) + 16 * v72;
          v75 = *v74;
          v76 = *(v74 + 8);
          v7 &= v7 - 1;
          *(v0 + 64) = *v74;
          *(v0 + 72) = v76;
          v77 = v73;
          sub_24ACF40BC(v75);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6268, &qword_24AD60CF8);
          sub_24AD5F0A4();
          v78 = *(v0 + 104);
          if (v78)
          {
            v147 = v77;
            v149 = v75;
            v79 = [v77 recordName];
            v80 = sub_24AD5E844();
            v82 = v81;

            if (qword_2810653A0 != -1)
            {
              swift_once();
            }

            v83 = sub_24AD5E7A4();
            __swift_project_value_buffer(v83, qword_2810654A0);

            v84 = v78;
            v85 = sub_24AD5E784();
            v86 = sub_24AD5EB44();

            if (os_log_type_enabled(v85, v86))
            {
              v87 = swift_slowAlloc();
              v138 = v80;
              v88 = swift_slowAlloc();
              v143 = swift_slowAlloc();
              v152[0] = v143;
              *v87 = 141558531;
              *(v87 + 4) = 1752392040;
              *(v87 + 12) = 2081;
              v89 = sub_24AD2EDAC(v138, v82, v152);
              v139 = v85;
              v90 = v89;

              *(v87 + 14) = v90;
              *(v87 + 22) = 2112;
              v91 = sub_24AD5E324();
              *(v87 + 24) = v91;
              *v88 = v91;
              _os_log_impl(&dword_24ACF2000, v139, v86, "Modify error: record: %{private,mask.hash}s: %@", v87, 0x20u);
              sub_24AD06518(v88, &qword_27EFA61C8, &unk_24AD60C30);
              MEMORY[0x24C22F400](v88, -1, -1);
              __swift_destroy_boxed_opaque_existential_1Tm(v143);
              MEMORY[0x24C22F400](v143, -1, -1);
              MEMORY[0x24C22F400](v87, -1, -1);

              sub_24AD35214(v149);
            }

            else
            {
              sub_24AD35214(v149);
            }

            v70 = v71;
          }

          else
          {

            sub_24AD35214(v75);
            v70 = v71;
          }
        }

        while (1)
        {
          v71 = v70 + 1;
          if (__OFADD__(v70, 1))
          {
            goto LABEL_97;
          }

          if (v71 >= v69)
          {
            v92 = *(v0 + 192);

            break;
          }

          v7 = *(v150 + 8 * v71);
          ++v70;
          if (v7)
          {
            goto LABEL_61;
          }
        }
      }

      v152[0] = v141;
      sub_24AD3AB74(v140);
      v7 = v152[0];
      *(v0 + 216) = v152[0];
      v93 = *(v7 + 16);
      if (v93 < 2)
      {
        goto LABEL_75;
      }

      if (qword_2810653A0 != -1)
      {
        goto LABEL_98;
      }

      goto LABEL_71;
    }

    v19 = *(v16 + 8 * v25);
    ++v21;
    if (v19)
    {
      v21 = v25;
      goto LABEL_19;
    }
  }

LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  swift_once();
LABEL_71:
  v94 = sub_24AD5E7A4();
  __swift_project_value_buffer(v94, qword_2810654A0);

  v95 = sub_24AD5E784();
  v96 = sub_24AD5EB44();
  if (os_log_type_enabled(v95, v96))
  {
    v97 = swift_slowAlloc();
    *v97 = 134217984;
    *(v97 + 4) = *(v7 + 16);

    _os_log_impl(&dword_24ACF2000, v95, v96, "Multiple errors: %ld", v97, 0xCu);
    MEMORY[0x24C22F400](v97, -1, -1);
  }

  else
  {
  }

  v93 = *(v7 + 16);
LABEL_75:
  *(v0 + 224) = v93;
  if (v93)
  {
    v98 = 0;
    while (1)
    {
      *(v0 + 232) = v98;
      v99 = *(*(v0 + 216) + 8 * v98 + 32);
      *(v0 + 240) = v99;
      v100 = v99;
      if (qword_2810653A0 != -1)
      {
        swift_once();
      }

      v101 = sub_24AD5E7A4();
      __swift_project_value_buffer(v101, qword_2810654A0);
      v102 = v99;
      v103 = sub_24AD5E784();
      v104 = sub_24AD5EB44();

      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc();
        v106 = swift_slowAlloc();
        *v105 = 138412290;
        v107 = sub_24AD5E324();
        *(v105 + 4) = v107;
        *v106 = v107;
        _os_log_impl(&dword_24ACF2000, v103, v104, "Process error: %@", v105, 0xCu);
        sub_24AD06518(v106, &qword_27EFA61C8, &unk_24AD60C30);
        MEMORY[0x24C22F400](v106, -1, -1);
        MEMORY[0x24C22F400](v105, -1, -1);
      }

      *(v0 + 112) = v99;
      v108 = v99;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6128, &unk_24AD60BF0);
      type metadata accessor for CKError(0);
      if (swift_dynamicCast())
      {
        break;
      }

      v98 = *(v0 + 232) + 1;
      if (v98 == *(v0 + 224))
      {
        v117 = *(v0 + 216);
        v118 = *(v0 + 192);
        v119 = *(v0 + 200);

        if (*(v117 + 16))
        {
          v121 = *(*(v0 + 216) + 32);

          swift_willThrow();
          v123 = *(v0 + 152);
          v122 = *(v0 + 160);

          v124 = *(v0 + 8);

          return v124();
        }

        else
        {
          __break(1u);
        }

        return result;
      }
    }

    v114 = *(v0 + 120);
    *(v0 + 248) = v114;
    v115 = swift_task_alloc();
    *(v0 + 256) = v115;
    *v115 = v0;
    v115[1] = sub_24AD4A358;
    v116 = *(v0 + 136);

    return sub_24AD4A77C(v114);
  }

  else
  {
    v110 = *(v0 + 152);
    v109 = *(v0 + 160);

    v111 = *(v0 + 8);
    v112 = *(v0 + 192);
    v113 = *(v0 + 200);

    return v111(v112, v113);
  }
}

uint64_t sub_24AD4A2DC()
{
  v1 = *(v0 + 168);

  v2 = *(v0 + 208);
  v4 = *(v0 + 152);
  v3 = *(v0 + 160);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_24AD4A358()
{
  v1 = *(*v0 + 256);
  v2 = *(*v0 + 136);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24AD4A468, v2, 0);
}

uint64_t sub_24AD4A468()
{
  v1 = *(v0 + 248);

  v2 = *(v0 + 232) + 1;
  if (v2 == *(v0 + 224))
  {
LABEL_2:
    v3 = *(v0 + 216);
    v4 = *(v0 + 192);
    v5 = *(v0 + 200);

    if (*(v3 + 16))
    {
      v7 = *(*(v0 + 216) + 32);

      swift_willThrow();
      v9 = *(v0 + 152);
      v8 = *(v0 + 160);

      v10 = *(v0 + 8);

      return v10();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    while (1)
    {
      *(v0 + 232) = v2;
      v11 = *(*(v0 + 216) + 8 * v2 + 32);
      *(v0 + 240) = v11;
      v12 = v11;
      if (qword_2810653A0 != -1)
      {
        swift_once();
      }

      v13 = sub_24AD5E7A4();
      __swift_project_value_buffer(v13, qword_2810654A0);
      v14 = v11;
      v15 = sub_24AD5E784();
      v16 = sub_24AD5EB44();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        *v17 = 138412290;
        v19 = sub_24AD5E324();
        *(v17 + 4) = v19;
        *v18 = v19;
        _os_log_impl(&dword_24ACF2000, v15, v16, "Process error: %@", v17, 0xCu);
        sub_24AD06518(v18, &qword_27EFA61C8, &unk_24AD60C30);
        MEMORY[0x24C22F400](v18, -1, -1);
        MEMORY[0x24C22F400](v17, -1, -1);
      }

      *(v0 + 112) = v11;
      v20 = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6128, &unk_24AD60BF0);
      type metadata accessor for CKError(0);
      if (swift_dynamicCast())
      {
        break;
      }

      v2 = *(v0 + 232) + 1;
      if (v2 == *(v0 + 224))
      {
        goto LABEL_2;
      }
    }

    v21 = *(v0 + 120);
    *(v0 + 248) = v21;
    v22 = swift_task_alloc();
    *(v0 + 256) = v22;
    *v22 = v0;
    v22[1] = sub_24AD4A358;
    v23 = *(v0 + 136);

    return sub_24AD4A77C(v21);
  }

  return result;
}

uint64_t sub_24AD4A77C(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x2822009F8](sub_24AD4A79C, v1, 0);
}

uint64_t sub_24AD4A79C()
{
  *(v0 + 16) = *(v0 + 56);
  type metadata accessor for CKError(0);
  sub_24AD5A540(&qword_281064A08, 255, type metadata accessor for CKError);
  v1 = sub_24AD5F004();
  v3 = v2;
  v4 = *MEMORY[0x277CBBF50];
  if (sub_24AD5E844() == v1 && v5 == v3)
  {
  }

  else
  {
    v7 = sub_24AD5EF84();

    if ((v7 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  *(v0 + 24) = *(v0 + 56);
  sub_24AD5A540(&qword_281064A28, 255, type metadata accessor for CKError);
  sub_24AD5E2E4();
  if (*(v0 + 32) == 9)
  {
    *(v0 + 107) = 2;
    v8 = (v0 + 107);
    v9 = swift_task_alloc();
    *(v0 + 72) = v9;
    *v9 = v0;
    v10 = sub_24AD4AB90;
  }

  else
  {
    *(v0 + 40) = *(v0 + 56);
    sub_24AD5E2E4();
    v13 = *(v0 + 48);
    switch(v13)
    {
      case 'p':
        if (*(*(v0 + 64) + 161) == 1)
        {
          if (qword_2810653A0 != -1)
          {
            swift_once();
          }

          v14 = sub_24AD5E7A4();
          __swift_project_value_buffer(v14, qword_2810654A0);
          v15 = sub_24AD5E784();
          v16 = sub_24AD5EB44();
          if (os_log_type_enabled(v15, v16))
          {
            v17 = swift_slowAlloc();
            *v17 = 0;
            _os_log_impl(&dword_24ACF2000, v15, v16, "Got identity loss, in saveAndPropagate mode. This error is handled elsewhere.", v17, 2u);
            MEMORY[0x24C22F400](v17, -1, -1);
          }

          goto LABEL_24;
        }

        *(v0 + 104) = 3;
        v8 = (v0 + 104);
        v9 = swift_task_alloc();
        *(v0 + 96) = v9;
        *v9 = v0;
        v10 = sub_24AD4AED4;
        break;
      case 'o':
        *(v0 + 105) = 3;
        v8 = (v0 + 105);
        v9 = swift_task_alloc();
        *(v0 + 88) = v9;
        *v9 = v0;
        v10 = sub_24AD4ADC4;
        break;
      case 'n':
        *(v0 + 106) = 3;
        v8 = (v0 + 106);
        v9 = swift_task_alloc();
        *(v0 + 80) = v9;
        *v9 = v0;
        v10 = sub_24AD4ACB4;
        break;
      default:
LABEL_24:
        v18 = *(v0 + 8);

        return v18();
    }
  }

  v9[1] = v10;
  v11 = *(v0 + 64);

  return sub_24AD4B4EC(v8);
}

uint64_t sub_24AD4AB90()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24AD4ACA0, v2, 0);
}

uint64_t sub_24AD4ACB4()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24AD5AC80, v2, 0);
}

uint64_t sub_24AD4ADC4()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24AD5AC80, v2, 0);
}

uint64_t sub_24AD4AED4()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24AD5AC80, v2, 0);
}

uint64_t CloudKitCoordinator.AccountState.description.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E752ELL;
  v3 = 0x756F6363416F6E2ELL;
  v4 = 0xD000000000000013;
  if (v1 != 3)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x636972747365722ELL;
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

uint64_t sub_24AD4B0C8()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E752ELL;
  v3 = 0x756F6363416F6E2ELL;
  v4 = 0xD000000000000013;
  if (v1 != 3)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x636972747365722ELL;
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

id sub_24AD4B188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6338, &qword_24AD61440);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v10, v6);
  sub_24AD5EBB4();
  return [*(a3 + 112) addOperation_];
}

uint64_t sub_24AD4B2E0(int a1, id a2, char a3)
{
  if (a3)
  {
    v3 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6338, &qword_24AD61440);
    return sub_24AD5E934();
  }

  else
  {
    v5 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6338, &qword_24AD61440);
    return sub_24AD5E944();
  }
}

uint64_t CloudKitCoordinator.description.getter()
{
  v1 = type metadata accessor for CloudKitCoordinator();
  v3 = sub_24AD5A540(&qword_27EFA6278, v2, type metadata accessor for CloudKitCoordinator);
  v4 = sub_24AD5EF54();
  MEMORY[0x24C22E570](v4);

  MEMORY[0x24C22E570](32, 0xE100000000000000);
  v5 = MEMORY[0x24C22EC50](v1, v3);
  MEMORY[0x24C22E570](v5);

  MEMORY[0x24C22E570](32, 0xE100000000000000);
  v6 = [*(v0 + 112) containerID];
  v7 = [v6 description];
  v8 = sub_24AD5E844();
  v10 = v9;

  MEMORY[0x24C22E570](v8, v10);

  MEMORY[0x24C22E570](62, 0xE100000000000000);
  return 60;
}

uint64_t sub_24AD4B4EC(_BYTE *a1)
{
  *(v2 + 64) = v1;
  v4 = sub_24AD5E624();
  *(v2 + 72) = v4;
  v5 = *(v4 - 8);
  *(v2 + 80) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 88) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA62A0, &unk_24AD61250);
  *(v2 + 96) = v7;
  v8 = *(v7 - 8);
  *(v2 + 104) = v8;
  v9 = *(v8 + 64) + 15;
  *(v2 + 112) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA5FD0, &unk_24AD60290);
  *(v2 + 120) = v10;
  v11 = *(v10 - 8);
  *(v2 + 128) = v11;
  v12 = *(v11 + 64) + 15;
  *(v2 + 136) = swift_task_alloc();
  *(v2 + 178) = *a1;

  return MEMORY[0x2822009F8](sub_24AD4B688, v1, 0);
}

uint64_t sub_24AD4B688()
{
  v55 = v0;
  v1 = *(v0 + 178);
  v2 = *(v0 + 64);
  swift_beginAccess();
  if (*(v2 + 160) == v1)
  {
    v3 = *(v0 + 136);
    v4 = *(v0 + 112);
    v5 = *(v0 + 88);

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    if (qword_2810653A0 != -1)
    {
LABEL_48:
      swift_once();
    }

    v8 = *(v0 + 64);
    v9 = sub_24AD5E7A4();
    __swift_project_value_buffer(v9, qword_2810654A0);

    v10 = sub_24AD5E784();
    v11 = sub_24AD5EB64();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v54 = v13;
      *v12 = 136446466;
      v14 = *(v2 + 160);
      if (v14 <= 1)
      {
        if (*(v2 + 160))
        {
          v16 = 0x636972747365722ELL;
          v15 = 0xEB00000000646574;
        }

        else
        {
          v15 = 0xE800000000000000;
          v16 = 0x6E776F6E6B6E752ELL;
        }
      }

      else if (v14 == 2)
      {
        v16 = 0x756F6363416F6E2ELL;
        v15 = 0xEA0000000000746ELL;
      }

      else if (v14 == 3)
      {
        v15 = 0x800000024AD61CF0;
        v16 = 0xD000000000000013;
      }

      else
      {
        v16 = 0xD000000000000011;
        v15 = 0x800000024AD61CD0;
      }

      v17 = *(v0 + 178);
      v18 = sub_24AD2EDAC(v16, v15, &v54);

      *(v12 + 4) = v18;
      *(v12 + 12) = 2082;
      v19 = 0xE800000000000000;
      v20 = 0x756F6363416F6E2ELL;
      v21 = 0xEA0000000000746ELL;
      v22 = 0x800000024AD61CF0;
      v23 = 0xD000000000000013;
      if (v17 != 3)
      {
        v23 = 0xD000000000000011;
        v22 = 0x800000024AD61CD0;
      }

      if (v17 != 2)
      {
        v20 = v23;
        v21 = v22;
      }

      v24 = 0x636972747365722ELL;
      if (v17)
      {
        v19 = 0xEB00000000646574;
      }

      else
      {
        v24 = 0x6E776F6E6B6E752ELL;
      }

      if (v17 <= 1)
      {
        v25 = v24;
      }

      else
      {
        v25 = v20;
      }

      if (v17 <= 1)
      {
        v26 = v19;
      }

      else
      {
        v26 = v21;
      }

      v27 = sub_24AD2EDAC(v25, v26, &v54);

      *(v12 + 14) = v27;
      _os_log_impl(&dword_24ACF2000, v10, v11, "Account state: %{public}s -> %{public}s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C22F400](v13, -1, -1);
      MEMORY[0x24C22F400](v12, -1, -1);
    }

    v28 = *(v0 + 64);
    *(v2 + 160) = *(v0 + 178);
    swift_beginAccess();
    v29 = *(v28 + 144);
    v30 = *(v29 + 16);
    if (v30)
    {
      v31 = sub_24AD5E784();
      v32 = sub_24AD5EB64();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 134217984;
        *(v33 + 4) = v30;
        _os_log_impl(&dword_24ACF2000, v31, v32, "Publishing AccountState change event to %ld subscribers", v33, 0xCu);
        MEMORY[0x24C22F400](v33, -1, -1);
      }

      v29 = *(v28 + 144);
    }

    v34 = v29 + 64;
    v35 = -1;
    v36 = -1 << *(v29 + 32);
    if (-v36 < 64)
    {
      v35 = ~(-1 << -v36);
    }

    v37 = v35 & *(v29 + 64);
    v2 = (63 - v36) >> 6;
    v49 = (*(v0 + 104) + 8);
    v50 = *(v0 + 128);
    v51 = v29;

    v38 = 0;
    if (v37)
    {
      while (1)
      {
        v39 = v38;
LABEL_42:
        v40 = *(v0 + 178);
        v41 = *(v0 + 136);
        v43 = *(v0 + 112);
        v42 = *(v0 + 120);
        v52 = *(v0 + 96);
        v44 = __clz(__rbit64(v37));
        v37 &= v37 - 1;
        (*(v50 + 16))(v41, *(v51 + 56) + *(v50 + 72) * (v44 | (v39 << 6)), v42);
        *(v0 + 176) = v40;
        sub_24AD5E984();
        (*v49)(v43, v52);
        (*(v50 + 8))(v41, v42);
        if (!v37)
        {
          goto LABEL_38;
        }
      }
    }

    while (1)
    {
LABEL_38:
      v39 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        __break(1u);
        goto LABEL_48;
      }

      if (v39 >= v2)
      {
        break;
      }

      v37 = *(v34 + 8 * v39);
      ++v38;
      if (v37)
      {
        v38 = v39;
        goto LABEL_42;
      }
    }

    v45 = *(v0 + 178);

    *(v0 + 144) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60C8, &qword_24AD61260);
    *(v0 + 177) = 1;
    *(v0 + 152) = sub_24AD5E604();
    v46 = swift_task_alloc();
    *(v0 + 160) = v46;
    *(v46 + 16) = v45;
    v47 = *(MEMORY[0x277D08A88] + 4);
    v53 = (*MEMORY[0x277D08A88] + MEMORY[0x277D08A88]);
    v48 = swift_task_alloc();
    *(v0 + 168) = v48;
    *v48 = v0;
    v48[1] = sub_24AD4BCC4;

    return v53(&unk_24AD61270, v46);
  }
}

uint64_t sub_24AD4BCC4()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v10 = *v1;

  if (v0)
  {
  }

  v5 = v2[19];
  v4 = v2[20];
  v6 = v2[18];

  sub_24AD062C8(&qword_2810653A8, &qword_27EFA60C8, &qword_24AD61260);
  v8 = sub_24AD5E924();

  return MEMORY[0x2822009F8](sub_24AD4BE1C, v8, v7);
}

uint64_t sub_24AD4BE1C()
{
  v1 = v0[19];
  v2 = v0[11];
  v3 = v0[8];
  sub_24AD5E5D4();

  return MEMORY[0x2822009F8](sub_24AD4BE8C, v3, 0);
}

uint64_t sub_24AD4BE8C()
{
  v1 = v0[19];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];
  sub_24AD5E634();

  (*(v3 + 8))(v2, v4);
  v5 = v0[17];
  v6 = v0[14];
  v7 = v0[11];

  v8 = v0[1];

  return v8();
}

uint64_t sub_24AD4BF40(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 56) = a2;
  *(v5 + 40) = a1;
  *(v5 + 48) = a5;
  return MEMORY[0x2822009F8](sub_24AD4BF64, 0, 0);
}

uint64_t sub_24AD4BF64()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    v3 = Strong;
    v4 = *(v0 + 56);
    *(v0 + 72) = sub_24AD5F0F4();
    *(v0 + 80) = v5;

    return MEMORY[0x2822009F8](sub_24AD4C038, v3, 0);
  }

  else
  {
    **(v0 + 40) = 1;
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_24AD4C038()
{
  v1 = v0[8];
  sub_24AD4C0D4(v0[9], v0[10]);

  return MEMORY[0x2822009F8](sub_24AD4C0AC, 0, 0);
}

uint64_t sub_24AD4C0D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60A8, &qword_24AD60380);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v31 - v9;
  sub_24AD5E0F4();
  if (sub_24AD5E0E4())
  {

    if (qword_2810653A0 != -1)
    {
      swift_once();
    }

    v11 = sub_24AD5E7A4();
    __swift_project_value_buffer(v11, qword_2810654A0);
    v12 = sub_24AD5E784();
    v13 = sub_24AD5EB44();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_24ACF2000, v12, v13, "scheduleRetryInitialAccountInfo should not be called while holding a transaction!", v14, 2u);
      MEMORY[0x24C22F400](v14, -1, -1);
    }
  }

  if (qword_2810653A0 != -1)
  {
    swift_once();
  }

  v15 = sub_24AD5E7A4();
  __swift_project_value_buffer(v15, qword_2810654A0);
  v16 = sub_24AD5E784();
  v17 = sub_24AD5EB64();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v31 = v10;
    v32 = v19;
    v20 = v6;
    v21 = v19;
    *v18 = 136446210;
    v22 = sub_24AD5F0E4();
    v24 = sub_24AD2EDAC(v22, v23, &v32);

    *(v18 + 4) = v24;
    _os_log_impl(&dword_24ACF2000, v16, v17, "Scheduling accountInfo retry in %{public}s.", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    v25 = v21;
    v6 = v20;
    v10 = v31;
    MEMORY[0x24C22F400](v25, -1, -1);
    MEMORY[0x24C22F400](v18, -1, -1);
  }

  v26 = sub_24AD5E964();
  (*(*(v26 - 8) + 56))(v10, 1, 1, v26);
  v28 = sub_24AD5A540(&qword_281065388, v27, type metadata accessor for CloudKitCoordinator);
  v29 = swift_allocObject();
  v29[2] = v3;
  v29[3] = v28;
  v29[4] = a1;
  v29[5] = a2;
  v29[6] = v3;
  v29[7] = v6;
  swift_retain_n();
  sub_24AD0E738(0, 0, v10, &unk_24AD613C0, v29);
}

uint64_t sub_24AD4C458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA60A8, &qword_24AD60380);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_24AD38B48(a3, v27 - v11, &qword_27EFA60A8, &qword_24AD60380);
  v13 = sub_24AD5E964();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_24AD06518(v12, &qword_27EFA60A8, &qword_24AD60380);
  }

  else
  {
    sub_24AD5E954();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_24AD5E924();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_24AD5E864() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA62F0, &qword_24AD613A8);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      return v24;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA62F0, &qword_24AD613A8);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_24AD4C72C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v8 = sub_24AD5EDF4();
  v6[8] = v8;
  v9 = *(v8 - 8);
  v6[9] = v9;
  v10 = *(v9 + 64) + 15;
  v6[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AD4C7F4, a6, 0);
}

uint64_t sub_24AD4C7F4()
{
  v1 = v0[10];
  sub_24AD5EFF4();
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_24AD4C8B4;
  v3 = v0[10];
  v5 = v0[5];
  v4 = v0[6];

  return sub_24AD51D54(v5, v4, 0, 0, 1);
}

uint64_t sub_24AD4C8B4()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 72);
  v6 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 96) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 56);
  if (v0)
  {
    v9 = sub_24AD4CCA0;
  }

  else
  {
    v9 = sub_24AD4CA3C;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_24AD4CA3C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 56);
  v4 = sub_24AD5A540(&qword_281065388, a2, type metadata accessor for CloudKitCoordinator);
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  *(v2 + 104) = v6;
  v7 = sub_24AD06578(0, &qword_2810649B8, 0x277CBC160);
  *v6 = v2;
  v6[1] = sub_24AD4CB74;
  v8 = *(v2 + 56);

  return MEMORY[0x2822008A0](v2 + 16, v3, v4, 0x49746E756F636361, 0xED000029286F666ELL, sub_24AD5ACAC, v8, v7);
}

uint64_t sub_24AD4CB74()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;
  *(*v1 + 112) = v0;

  v5 = *(v2 + 56);
  if (v0)
  {
    v6 = sub_24AD4CF1C;
  }

  else
  {
    v6 = sub_24AD4CD04;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24AD4CCA0()
{
  v1 = v0[10];

  v2 = v0[1];
  v3 = v0[12];

  return v2();
}

uint64_t sub_24AD4CD04()
{
  v1 = v0[2];
  v0[15] = v1;
  v2 = swift_task_alloc();
  v0[16] = v2;
  *v2 = v0;
  v2[1] = sub_24AD4CDA0;
  v3 = v0[7];

  return sub_24AD3F218(v1);
}

uint64_t sub_24AD4CDA0()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24AD4CEB0, v2, 0);
}

uint64_t sub_24AD4CEB0()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24AD4CF1C()
{
  v1 = *(v0 + 112);
  *(v0 + 24) = v1;
  v2 = (v0 + 24);
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6128, &unk_24AD60BF0);
  type metadata accessor for CKError(0);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 32);
    sub_24AD5E7B4();
    if ((v5 & 1) == 0)
    {

      sub_24AD5E7B4();
      if (v18)
      {
        if (qword_2810653A0 != -1)
        {
          swift_once();
        }

        v19 = sub_24AD5E7A4();
        __swift_project_value_buffer(v19, qword_2810654A0);
        v20 = sub_24AD5E784();
        v21 = sub_24AD5EB54();
        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          *v22 = 0;
          _os_log_impl(&dword_24ACF2000, v20, v21, "Missing retryAfterSeconds!", v22, 2u);
          MEMORY[0x24C22F400](v22, -1, -1);
        }

        v17 = *v2;
      }

      else
      {
        if (qword_2810653A0 != -1)
        {
          swift_once();
        }

        v23 = sub_24AD5E7A4();
        __swift_project_value_buffer(v23, qword_2810654A0);
        v24 = v4;
        v25 = sub_24AD5E784();
        v26 = sub_24AD5EB44();

        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          *v27 = 138543362;
          v29 = v24;
          v30 = _swift_stdlib_bridgeErrorToNSError();
          *(v27 + 4) = v30;
          *v28 = v30;
          _os_log_impl(&dword_24ACF2000, v25, v26, "Retryable error from scheduleRetryInitialAccountInfo in init: %{public}@", v27, 0xCu);
          sub_24AD06518(v28, &qword_27EFA61C8, &unk_24AD60C30);
          MEMORY[0x24C22F400](v28, -1, -1);
          MEMORY[0x24C22F400](v27, -1, -1);
        }

        v31 = *(v0 + 56);

        v32 = sub_24AD5F0F4();
        sub_24AD4C0D4(v32, v33);

        v17 = *(v0 + 24);
      }

      goto LABEL_20;
    }
  }

  if (qword_2810653A0 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 112);
  v7 = sub_24AD5E7A4();
  __swift_project_value_buffer(v7, qword_2810654A0);
  v8 = v6;
  v9 = sub_24AD5E784();
  v10 = sub_24AD5EB54();

  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 112);
  if (v11)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138543362;
    v15 = v12;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v16;
    *v14 = v16;
    _os_log_impl(&dword_24ACF2000, v9, v10, "Unhandled error from scheduleRetryInitialAccountInfo in init: %{public}@", v13, 0xCu);
    sub_24AD06518(v14, &qword_27EFA61C8, &unk_24AD60C30);
    MEMORY[0x24C22F400](v14, -1, -1);
    MEMORY[0x24C22F400](v13, -1, -1);

    goto LABEL_21;
  }

  v17 = v12;
LABEL_20:

LABEL_21:
  v34 = *(v0 + 80);

  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_24AD4D340(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6318, &qword_24AD61410);
    v2 = sub_24AD5EF14();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_24AD351B0(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];

    swift_dynamicCast();
    sub_24ACF4008(v34, v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6308, &qword_24AD613E8);
    swift_dynamicCast();
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_24ACF4008(&v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_24ACF4008(v32, v33);
    v17 = *(v2 + 40);
    result = sub_24AD5ECD4();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_24ACF4008(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_24AD4D63C@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if ((result - 1) >= 3)
  {
    v2 = sub_24AD5E114();
    sub_24AD5A540(&qword_27EFA5F90, 255, MEMORY[0x277D08938]);
    swift_allocError();
    v4 = v3;
    sub_24AD5ED34();

    v5 = sub_24AD5EF74();
    MEMORY[0x24C22E570](v5);

    *v4 = 0xD00000000000001CLL;
    v4[1] = 0x800000024AD61F00;
    (*(*(v2 - 8) + 104))(v4, *MEMORY[0x277D08930], v2);
    return swift_willThrow();
  }

  else
  {
    *a2 = 0x10002u >> (8 * (result - 1));
  }

  return result;
}

uint64_t sub_24AD4D7D4()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6208, &qword_24AD60920);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6170, &qword_24AD61280);
  v3 = (*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80);
  v37 = *(*(v2 - 8) + 72);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24AD5F830;
  v43 = v4;
  v5 = v2;
  v48 = v2;
  v6 = (v4 + v3 + *(v2 + 48));
  *(v4 + v3) = 3;
  v7 = v4 + v3;
  v46 = v4 + v3;
  v38 = v1;
  v8 = [v1 notificationType];
  v6[3] = MEMORY[0x277D83B88];
  v42 = sub_24AD59928();
  v6[4] = v42;
  *v6 = v8;
  v9 = *MEMORY[0x277D08AC0];
  v40 = *MEMORY[0x277D08AC0];
  v10 = sub_24AD5E644();
  v47 = *(*(v10 - 8) + 104);
  v45 = v10;
  v47(v6, v9, v10);
  v11 = *MEMORY[0x277D08AC8];
  v36 = *MEMORY[0x277D08AC8];
  v35 = sub_24AD5E654();
  v12 = *(*(v35 - 8) + 104);
  v12(v6, v11, v35);
  v13 = (v7 + v37 + *(v5 + 48));
  *(v7 + v37) = 0;
  v14 = [v1 containerID];
  v15 = [v14 containerIdentifier];

  v16 = sub_24AD5E844();
  v18 = v17;

  v13[3] = MEMORY[0x277D837D0];
  v39 = sub_24AD388E4();
  v13[4] = v39;
  *v13 = v16;
  v13[1] = v18;
  v41 = *MEMORY[0x277D08AB8];
  (v47)(v13);
  v12(v13, v36, v35);
  v19 = (v46 + 2 * v37);
  v20 = &v19[*(v48 + 48)];
  *v19 = 1;
  v21 = [v38 databaseScope];
  v20[3] = MEMORY[0x277D83B88];
  v20[4] = v42;
  *v20 = v21;
  v47(v20, v40, v45);
  v12(v20, v36, v35);
  v22 = (v46 + 3 * v37);
  *v22 = 2;
  v23 = [v38 recordZoneID];
  if (v23)
  {
    v24 = v23;
    v25 = [v23 zoneName];

    v26 = sub_24AD5E844();
    v28 = v27;

    v29 = &v22[*(v48 + 48)];
    v29[3] = MEMORY[0x277D837D0];
    v29[4] = v39;
    v30 = 0x6E776F6E6B6E753CLL;
    if (v28)
    {
      v30 = v26;
    }

    v31 = 0xE90000000000003ELL;
    if (v28)
    {
      v31 = v28;
    }
  }

  else
  {
    v29 = &v22[*(v48 + 48)];
    v29[3] = MEMORY[0x277D837D0];
    v29[4] = v39;
    v31 = 0xE90000000000003ELL;
    v30 = 0x6E776F6E6B6E753CLL;
  }

  *v29 = v30;
  v29[1] = v31;
  v47(v29, v41, v45);
  v12(v29, v36, v35);
  v32 = sub_24AD342C4(v43);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v33 = *(v44 + 8);

  return v33(v32);
}

uint64_t sub_24AD4DCC0()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6208, &qword_24AD60920);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6170, &qword_24AD61280);
  v3 = *(*(v2 - 8) + 72);
  v4 = (*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80);
  v29 = 2 * v3;
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_24AD5F840;
  v5 = v30 + v4;
  v25 = v1;
  v6 = (v30 + v4 + *(v2 + 48));
  *(v30 + v4) = 3;
  v7 = [v1 notificationType];
  v6[3] = MEMORY[0x277D83B88];
  v28 = sub_24AD59928();
  v6[4] = v28;
  *v6 = v7;
  v8 = *MEMORY[0x277D08AC0];
  v27 = *MEMORY[0x277D08AC0];
  v9 = sub_24AD5E644();
  v26 = *(*(v9 - 8) + 104);
  v26(v6, v8, v9);
  v10 = *MEMORY[0x277D08AC8];
  v24 = *MEMORY[0x277D08AC8];
  v11 = sub_24AD5E654();
  v12 = *(*(v11 - 8) + 104);
  v12(v6, v10, v11);
  v13 = (v5 + v3 + *(v2 + 48));
  *(v5 + v3) = 0;
  v14 = [v1 containerID];
  v15 = [v14 containerIdentifier];

  v16 = sub_24AD5E844();
  v18 = v17;

  v13[3] = MEMORY[0x277D837D0];
  v13[4] = sub_24AD388E4();
  *v13 = v16;
  v13[1] = v18;
  v26(v13, *MEMORY[0x277D08AB8], v9);
  v12(v13, v24, v11);
  v19 = (v5 + v29 + *(v2 + 48));
  *(v5 + v29) = 1;
  v20 = [v25 databaseScope];
  v19[3] = MEMORY[0x277D83B88];
  v19[4] = v28;
  *v19 = v20;
  v26(v19, v27, v9);
  v12(v19, v24, v11);
  v21 = sub_24AD342C4(v30);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v22 = *(v31 + 8);

  return v22(v21);
}

void sub_24AD4E038(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA62E8, &qword_24AD61350);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - v7;
  v9 = *(a2 + 112);
  (*(v5 + 16))(aBlock - v7, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v8, v4);
  aBlock[4] = sub_24AD59CA0;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24AD4E2C0;
  aBlock[3] = &block_descriptor_155;
  v12 = _Block_copy(aBlock);

  [v9 accountInfoWithCompletionHandler_];
  _Block_release(v12);
}

uint64_t sub_24AD4E1EC(void *a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA62E8, &qword_24AD61350);
    return sub_24AD5E934();
  }

  else if (a1)
  {
    v4 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA62E8, &qword_24AD61350);
    return sub_24AD5E944();
  }

  else
  {
    result = sub_24AD5EEC4();
    __break(1u);
  }

  return result;
}

void sub_24AD4E2C0(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_24AD4E36C()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6208, &qword_24AD60920);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6170, &qword_24AD61280);
  v3 = *(*(v2 - 8) + 72);
  v4 = (*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_24AD5F820;
  v6 = (v5 + v4);
  *v6 = 4;
  if (v1 <= 1)
  {
    if (v1)
    {
      v7 = 0xEB00000000646574;
      v8 = 0x636972747365722ELL;
    }

    else
    {
      v7 = 0xE800000000000000;
      v8 = 0x6E776F6E6B6E752ELL;
    }
  }

  else if (v1 == 2)
  {
    v7 = 0xEA0000000000746ELL;
    v8 = 0x756F6363416F6E2ELL;
  }

  else if (v1 == 3)
  {
    v7 = 0x800000024AD61CF0;
    v8 = 0xD000000000000013;
  }

  else
  {
    v8 = 0xD000000000000011;
    v7 = 0x800000024AD61CD0;
  }

  v9 = &v6[*(v2 + 48)];
  v9[3] = MEMORY[0x277D837D0];
  v9[4] = sub_24AD388E4();
  *v9 = v8;
  v9[1] = v7;
  v10 = *MEMORY[0x277D08AB8];
  v11 = sub_24AD5E644();
  (*(*(v11 - 8) + 104))(v9, v10, v11);
  v12 = *MEMORY[0x277D08AC8];
  v13 = sub_24AD5E654();
  (*(*(v13 - 8) + 104))(v9, v12, v13);
  v14 = sub_24AD342C4(v5);
  swift_setDeallocating();
  sub_24AD06518(v6, &qword_27EFA6170, &qword_24AD61280);
  swift_deallocClassInstance();
  v15 = *(v0 + 8);

  return v15(v14);
}

uint64_t sub_24AD4E61C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[6] = a3;
  v6[7] = a4;
  v6[4] = a1;
  v6[5] = a2;
  v7 = sub_24AD5F0D4();
  v6[10] = v7;
  v8 = *(v7 - 8);
  v6[11] = v8;
  v9 = *(v8 + 64) + 15;
  v6[12] = swift_task_alloc();
  v10 = sub_24AD5EDD4();
  v6[13] = v10;
  v11 = *(v10 - 8);
  v6[14] = v11;
  v12 = *(v11 + 64) + 15;
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v13 = sub_24AD5EDF4();
  v6[19] = v13;
  v14 = *(v13 - 8);
  v6[20] = v14;
  v15 = *(v14 + 64) + 15;
  v6[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AD4E7C0, 0, 0);
}

uint64_t sub_24AD4E7C0()
{
  v36 = v0;
  v1 = *(v0 + 168);
  v2 = *(v0 + 144);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  v5 = MEMORY[0x277D84F90];
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = v5;
  sub_24AD5EDE4();
  [v3 databaseScope];
  v6 = CKDatabaseScopeString();
  v7 = sub_24AD5E844();
  v9 = v8;

  *(v0 + 176) = v7;
  *(v0 + 184) = v9;
  sub_24AD5EDC4();
  if (v4)
  {
    v10 = *(v0 + 48);
    v11 = qword_2810653A0;
    v12 = v10;
    if (v11 != -1)
    {
      swift_once();
    }

    v13 = *(v0 + 184);
    v14 = sub_24AD5E7A4();
    __swift_project_value_buffer(v14, qword_2810654A0);

    v15 = v12;
    v16 = sub_24AD5E784();
    v17 = sub_24AD5EB64();

    if (os_log_type_enabled(v16, v17))
    {
      v19 = *(v0 + 176);
      v18 = *(v0 + 184);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v35 = v22;
      *v20 = 136315394;
      *(v20 + 4) = sub_24AD2EDAC(v19, v18, &v35);
      *(v20 + 12) = 2112;
      *(v20 + 14) = v15;
      *v21 = v10;
      v23 = v15;
      _os_log_impl(&dword_24ACF2000, v16, v17, "Fetching %s databaseChanges(since: %@)", v20, 0x16u);
      sub_24AD06518(v21, &qword_27EFA61C8, &unk_24AD60C30);
      MEMORY[0x24C22F400](v21, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x24C22F400](v22, -1, -1);
      MEMORY[0x24C22F400](v20, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (qword_2810653A0 != -1)
    {
      swift_once();
    }

    v24 = sub_24AD5E7A4();
    __swift_project_value_buffer(v24, qword_2810654A0);

    v25 = sub_24AD5E784();
    v26 = sub_24AD5EB64();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v35 = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_24AD2EDAC(v7, v9, &v35);
      _os_log_impl(&dword_24ACF2000, v25, v26, "Fetching %s databaseChanges(since: nil)", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      MEMORY[0x24C22F400](v28, -1, -1);
      MEMORY[0x24C22F400](v27, -1, -1);
    }

    v10 = 0;
  }

  *(v0 + 192) = v10;
  v29 = *(v0 + 40);
  v30 = v10;
  v31 = swift_task_alloc();
  *(v0 + 200) = v31;
  *v31 = v0;
  v31[1] = sub_24AD4EB98;
  v32 = *(v0 + 64);
  v33 = *(v0 + 40);

  return sub_24AD58664(v32, v33, v10);
}

uint64_t sub_24AD4EB98(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = *v5;
  v10 = *(*v5 + 200);
  v11 = *(*v5 + 192);
  v12 = *(*v5 + 40);
  v13 = *v5;
  *(v9 + 208) = a3;
  *(v9 + 216) = v4;

  if (v4)
  {
    v14 = *(v9 + 184);
    v15 = *(v9 + 24);

    v16 = *(v9 + 16);

    v17 = sub_24AD4F3C4;
  }

  else
  {
    *(v9 + 280) = a4 & 1;
    *(v9 + 224) = a2;
    *(v9 + 232) = a1;
    v17 = sub_24AD4ED2C;
  }

  return MEMORY[0x2822009F8](v17, 0, 0);
}

uint64_t sub_24AD4ED2C()
{
  v74 = v0;
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  v3 = *(v0 + 280);
  v4 = *(v0 + 192);
  v5 = *(v0 + 208);

  sub_24AD3AD94(v6, sub_24AD2E920, MEMORY[0x277CBBE40]);

  sub_24AD3AD94(v7, sub_24AD2E8F8, MEMORY[0x277CBBE60]);

  if (v3)
  {
    v8 = qword_2810653A0;
    v9 = *(v0 + 208);
    if (v8 != -1)
    {
      swift_once();
    }

    v10 = *(v0 + 184);
    v11 = sub_24AD5E7A4();
    __swift_project_value_buffer(v11, qword_2810654A0);

    v12 = v9;
    v13 = sub_24AD5E784();
    v14 = sub_24AD5EB64();

    if (os_log_type_enabled(v13, v14))
    {
      v16 = *(v0 + 176);
      v15 = *(v0 + 184);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v73 = v19;
      *v17 = 136315394;
      *(v17 + 4) = sub_24AD2EDAC(v16, v15, &v73);
      *(v17 + 12) = 2112;
      *(v17 + 14) = v12;
      *v18 = v12;
      v20 = v12;
      _os_log_impl(&dword_24ACF2000, v13, v14, "Fetching %s databaseChanges(since: %@)", v17, 0x16u);
      sub_24AD06518(v18, &qword_27EFA61C8, &unk_24AD60C30);
      MEMORY[0x24C22F400](v18, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x24C22F400](v19, -1, -1);
      MEMORY[0x24C22F400](v17, -1, -1);
    }

    else
    {
    }

    *(v0 + 192) = v12;
    v50 = *(v0 + 40);
    v51 = v12;
    v52 = swift_task_alloc();
    *(v0 + 200) = v52;
    *v52 = v0;
    v52[1] = sub_24AD4EB98;
    v53 = *(v0 + 64);
    v54 = *(v0 + 40);

    return sub_24AD58664(v53, v54, v12);
  }

  else
  {
    v21 = *(v0 + 168);
    v22 = *(v0 + 136);
    sub_24AD5EDC4();
    if (qword_2810653A0 != -1)
    {
      swift_once();
    }

    v23 = *(v0 + 184);
    v24 = *(v0 + 136);
    v25 = *(v0 + 144);
    v27 = *(v0 + 120);
    v26 = *(v0 + 128);
    v28 = *(v0 + 104);
    v29 = *(v0 + 112);
    v30 = sub_24AD5E7A4();
    __swift_project_value_buffer(v30, qword_2810654A0);
    v31 = *(v29 + 16);
    v31(v26, v25, v28);
    v31(v27, v24, v28);

    v32 = sub_24AD5E784();
    v33 = sub_24AD5EB64();

    v34 = os_log_type_enabled(v32, v33);
    v35 = *(v0 + 184);
    if (v34)
    {
      v36 = *(v0 + 176);
      v70 = v33;
      log = v32;
      v38 = *(v0 + 120);
      v37 = *(v0 + 128);
      v39 = *(v0 + 104);
      v40 = *(v0 + 112);
      v41 = *(v0 + 88);
      v42 = *(v0 + 96);
      v68 = *(v0 + 80);
      v43 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v73 = v71;
      *v43 = 136315394;
      v44 = sub_24AD2EDAC(v36, v35, &v73);

      *(v43 + 4) = v44;
      *(v43 + 12) = 2082;
      sub_24AD5F0C4();
      sub_24AD5A540(&qword_281064968, 255, MEMORY[0x277D858F8]);
      v45 = sub_24AD5F0B4();
      v47 = v46;
      (*(v41 + 8))(v42, v68);
      v48 = *(v40 + 8);
      v48(v38, v39);
      v48(v37, v39);
      v49 = sub_24AD2EDAC(v45, v47, &v73);

      *(v43 + 14) = v49;
      _os_log_impl(&dword_24ACF2000, log, v70, "Fetching %s databaseChanges duration: %{public}s", v43, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C22F400](v71, -1, -1);
      MEMORY[0x24C22F400](v43, -1, -1);
    }

    else
    {
      v57 = *(v0 + 120);
      v56 = *(v0 + 128);
      v58 = *(v0 + 104);
      v59 = *(v0 + 112);

      v48 = *(v59 + 8);
      v48(v57, v58);
      v48(v56, v58);
    }

    v60 = *(v0 + 208);
    v61 = *(v0 + 16);
    *(v0 + 240) = v48;
    *(v0 + 248) = v61;
    v62 = *(v61 + 16);
    v63 = swift_task_alloc();
    *(v0 + 256) = v63;
    v63[1] = vextq_s8(*(v0 + 56), *(v0 + 56), 8uLL);
    v63[2].i64[0] = v62;
    v63[2].i64[1] = v62;
    v64 = *(MEMORY[0x277D08A88] + 4);
    v72 = (*MEMORY[0x277D08A88] + MEMORY[0x277D08A88]);
    v65 = v60;
    v66 = swift_task_alloc();
    *(v0 + 264) = v66;
    *v66 = v0;
    v66[1] = sub_24AD4F4C4;
    v67 = *(v0 + 72);

    return v72(&unk_24AD61330, v63);
  }
}

uint64_t sub_24AD4F3C4()
{
  v1 = *(v0 + 112);

  v11 = *(v0 + 216);
  v3 = *(v0 + 160);
  v2 = *(v0 + 168);
  v4 = *(v0 + 152);
  v6 = *(v0 + 128);
  v5 = *(v0 + 136);
  v7 = *(v0 + 120);
  v8 = *(v0 + 96);
  (*(v1 + 8))(*(v0 + 144), *(v0 + 104));
  (*(v3 + 8))(v2, v4);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_24AD4F4C4()
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v10 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v5 = *(v2 + 248);
    v4 = *(v2 + 256);

    v6 = *(v2 + 24);

    v7 = sub_24AD4F73C;
  }

  else
  {
    v8 = *(v2 + 256);

    v7 = sub_24AD4F60C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_24AD4F60C()
{
  v1 = v0[30];
  v2 = v0[26];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[18];
  v12 = v0[19];
  v13 = v0[31];
  v6 = v0[17];
  v7 = v0[14];
  v14 = v0[16];
  v15 = v0[15];
  v8 = v0[13];
  v16 = v0[12];
  v9 = v0[4];

  v1(v6, v8);
  v1(v5, v8);
  (*(v4 + 8))(v3, v12);
  *v9 = v13;
  v9[1] = v0[3];
  v9[2] = v2;

  v10 = v0[1];

  return v10();
}

uint64_t sub_24AD4F73C()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 136);
  v3 = *(v0 + 104);
  v4 = *(v0 + 112);

  v1(v2, v3);
  v14 = *(v0 + 272);
  v6 = *(v0 + 160);
  v5 = *(v0 + 168);
  v7 = *(v0 + 152);
  v9 = *(v0 + 128);
  v8 = *(v0 + 136);
  v10 = *(v0 + 120);
  v11 = *(v0 + 96);
  (*(v0 + 240))(*(v0 + 144), *(v0 + 104));
  (*(v6 + 8))(v5, v7);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_24AD4F85C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_24AD4F880, 0, 0);
}

uint64_t sub_24AD4F880()
{
  v1 = v0[5];
  v35 = v0[4];
  v2 = v0[2];
  v38 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6208, &qword_24AD60920);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6170, &qword_24AD61280);
  v4 = *(*(v3 - 8) + 72);
  v5 = (*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_24AD5F830;
  v7 = v6 + v5;
  v8 = v3;
  v9 = (v6 + v5 + *(v3 + 48));
  *(v6 + v5) = 0;
  v33 = v6 + v5;
  v34 = v6;
  v10 = [*(v2 + 112) containerID];
  v11 = [v10 containerIdentifier];

  v12 = sub_24AD5E844();
  v14 = v13;

  v9[3] = MEMORY[0x277D837D0];
  v9[4] = sub_24AD388E4();
  *v9 = v12;
  v9[1] = v14;
  v15 = *MEMORY[0x277D08AB8];
  v16 = sub_24AD5E644();
  v39 = *(*(v16 - 8) + 104);
  v31 = v16;
  v39(v9, v15, v16);
  v17 = *MEMORY[0x277D08AC8];
  v18 = sub_24AD5E654();
  v19 = *(*(v18 - 8) + 104);
  v19(v9, v17, v18);
  v20 = (v7 + v4 + *(v8 + 48));
  *(v7 + v4) = 1;
  v21 = [v38 databaseScope];
  v20[3] = MEMORY[0x277D83B88];
  v32 = sub_24AD59928();
  v20[4] = v32;
  *v20 = v21;
  LODWORD(v38) = *MEMORY[0x277D08AC0];
  (v39)(v20);
  v19(v20, v17, v18);
  v22 = *(v8 + 48);
  v23 = (v33 + 2 * v4);
  *v23 = 5;
  v24 = &v23[v22];
  v24[3] = MEMORY[0x277D83B88];
  v24[4] = v32;
  *v24 = v35;
  v39(&v23[v22], v38, v31);
  v19(v24, v17, v18);
  v25 = *(v8 + 48);
  v26 = (v33 + 3 * v4);
  *v26 = 6;
  v27 = &v26[v25];
  v27[3] = MEMORY[0x277D83B88];
  v27[4] = v32;
  *v27 = v36;
  v39(&v26[v25], v38, v31);
  v19(v27, v17, v18);
  v28 = sub_24AD342C4(v34);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v29 = *(v37 + 8);

  return v29(v28);
}

uint64_t sub_24AD4FC78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v7[4] = a2;
  v7[5] = a3;
  v7[3] = a1;
  v8 = sub_24AD5F0D4();
  v7[10] = v8;
  v9 = *(v8 - 8);
  v7[11] = v9;
  v10 = *(v9 + 64) + 15;
  v7[12] = swift_task_alloc();
  v11 = sub_24AD5EDD4();
  v7[13] = v11;
  v12 = *(v11 - 8);
  v7[14] = v12;
  v13 = *(v12 + 64) + 15;
  v7[15] = swift_task_alloc();
  v7[16] = swift_task_alloc();
  v7[17] = swift_task_alloc();
  v7[18] = swift_task_alloc();
  v14 = sub_24AD5EDF4();
  v7[19] = v14;
  v15 = *(v14 - 8);
  v7[20] = v15;
  v16 = *(v15 + 64) + 15;
  v7[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AD4FE20, 0, 0);
}

uint64_t sub_24AD4FE20()
{
  v51 = v0;
  v1 = v0[21];
  v2 = v0[18];
  v4 = v0[5];
  v3 = v0[6];
  v0[2] = MEMORY[0x277D84F90];
  sub_24AD5EDE4();
  [v3 databaseScope];
  v5 = CKDatabaseScopeString();
  v6 = sub_24AD5E844();
  v8 = v7;

  v0[22] = v6;
  v0[23] = v8;
  sub_24AD5EDC4();
  if (v4)
  {
    v9 = v0[5];
    v10 = qword_2810653A0;
    v11 = v9;
    if (v10 != -1)
    {
      swift_once();
    }

    v12 = v0[23];
    v13 = v0[7];
    v14 = sub_24AD5E7A4();
    __swift_project_value_buffer(v14, qword_2810654A0);

    v15 = v13;
    v16 = v11;
    v17 = sub_24AD5E784();
    v18 = sub_24AD5EB64();

    if (os_log_type_enabled(v17, v18))
    {
      v20 = v0[22];
      v19 = v0[23];
      v21 = v0[7];
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v50 = v49;
      *v22 = 136315650;
      *(v22 + 4) = sub_24AD2EDAC(v20, v19, &v50);
      *(v22 + 12) = 2080;
      v24 = [v21 zoneName];
      v25 = sub_24AD5E844();
      v27 = v26;

      v28 = sub_24AD2EDAC(v25, v27, &v50);

      *(v22 + 14) = v28;
      *(v22 + 22) = 2112;
      *(v22 + 24) = v16;
      *v23 = v9;
      v29 = v16;
      _os_log_impl(&dword_24ACF2000, v17, v18, "Fetching %s recordZoneChanges(zone: %s since: %@)", v22, 0x20u);
      sub_24AD06518(v23, &qword_27EFA61C8, &unk_24AD60C30);
      MEMORY[0x24C22F400](v23, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x24C22F400](v49, -1, -1);
      MEMORY[0x24C22F400](v22, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (qword_2810653A0 != -1)
    {
      swift_once();
    }

    v30 = v0[7];
    v31 = sub_24AD5E7A4();
    __swift_project_value_buffer(v31, qword_2810654A0);

    v32 = v30;
    v33 = sub_24AD5E784();
    v34 = sub_24AD5EB64();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = v0[7];
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v50 = v37;
      *v36 = 136315394;
      *(v36 + 4) = sub_24AD2EDAC(v6, v8, &v50);
      *(v36 + 12) = 2080;
      v38 = [v35 zoneName];
      v39 = sub_24AD5E844();
      v41 = v40;

      v42 = sub_24AD2EDAC(v39, v41, &v50);

      *(v36 + 14) = v42;
      _os_log_impl(&dword_24ACF2000, v33, v34, "Fetching %s recordZoneChanges(zone: %s since: nil)", v36, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C22F400](v37, -1, -1);
      MEMORY[0x24C22F400](v36, -1, -1);
    }

    v9 = 0;
  }

  v43 = MEMORY[0x277D84F98];
  v0[24] = v9;
  v0[25] = v43;
  v44 = *(MEMORY[0x277CBBE88] + 4);
  v45 = swift_task_alloc();
  v0[26] = v45;
  *v45 = v0;
  v45[1] = sub_24AD502F0;
  v46 = v0[7];
  v47 = v0[4];

  return MEMORY[0x28210DF00](v46, v9, 0, 0, 1);
}

uint64_t sub_24AD502F0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = *v5;
  v10 = *(*v5 + 208);
  v16 = *v5;
  *(v9 + 216) = a3;
  *(v9 + 224) = v4;

  if (v4)
  {
    v11 = *(v9 + 200);
    v12 = *(v9 + 184);
    v13 = *(v9 + 16);

    v14 = sub_24AD50E00;
  }

  else
  {
    *(v9 + 288) = a4 & 1;
    *(v9 + 232) = a2;
    *(v9 + 240) = a1;
    v14 = sub_24AD5044C;
  }

  return MEMORY[0x2822009F8](v14, 0, 0);
}

uint64_t sub_24AD5044C()
{
  v87 = v0;
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v3 = *(v0 + 288);
  v5 = *(v0 + 216);
  v4 = *(v0 + 224);
  v6 = *(v0 + 200);

  v7 = v5;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v86[0] = v6;
  sub_24AD59528(v2, sub_24AD522B4, 0, isUniquelyReferenced_nonNull_native, v86);

  v9 = v86[0];
  *(v0 + 248) = v86[0];

  sub_24AD3AD94(v10, sub_24AD2E8D0, MEMORY[0x277CBBE78]);

  if (v3)
  {
    v11 = qword_2810653A0;
    v12 = *(v0 + 216);
    if (v11 != -1)
    {
      swift_once();
    }

    v13 = *(v0 + 184);
    v14 = *(v0 + 56);
    v15 = sub_24AD5E7A4();
    __swift_project_value_buffer(v15, qword_2810654A0);

    v16 = v14;
    v17 = v12;
    v18 = sub_24AD5E784();
    v19 = sub_24AD5EB64();

    if (os_log_type_enabled(v18, v19))
    {
      v83 = v9;
      v21 = *(v0 + 176);
      v20 = *(v0 + 184);
      v22 = *(v0 + 56);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v86[0] = v25;
      *v23 = 136315650;
      *(v23 + 4) = sub_24AD2EDAC(v21, v20, v86);
      *(v23 + 12) = 2080;
      v26 = [v22 zoneName];
      v27 = sub_24AD5E844();
      v29 = v28;

      v30 = sub_24AD2EDAC(v27, v29, v86);

      *(v23 + 14) = v30;
      *(v23 + 22) = 2112;
      *(v23 + 24) = v17;
      *v24 = v17;
      v31 = v17;
      _os_log_impl(&dword_24ACF2000, v18, v19, "Fetching %s recordZoneChanges(zone: %s since: %@)", v23, 0x20u);
      sub_24AD06518(v24, &qword_27EFA61C8, &unk_24AD60C30);
      MEMORY[0x24C22F400](v24, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x24C22F400](v25, -1, -1);
      MEMORY[0x24C22F400](v23, -1, -1);

      v9 = v83;
    }

    else
    {
    }

    *(v0 + 192) = v17;
    *(v0 + 200) = v9;
    v61 = *(MEMORY[0x277CBBE88] + 4);
    v62 = swift_task_alloc();
    *(v0 + 208) = v62;
    *v62 = v0;
    v62[1] = sub_24AD502F0;
    v63 = *(v0 + 56);
    v64 = *(v0 + 32);

    return MEMORY[0x28210DF00](v63, v17, 0, 0, 1);
  }

  else
  {
    v84 = v9;
    v32 = *(v0 + 168);
    v33 = *(v0 + 136);
    sub_24AD5EDC4();
    if (qword_2810653A0 != -1)
    {
      swift_once();
    }

    v34 = *(v0 + 184);
    v35 = *(v0 + 136);
    v36 = *(v0 + 144);
    v38 = *(v0 + 120);
    v37 = *(v0 + 128);
    v39 = *(v0 + 104);
    v40 = *(v0 + 112);
    v41 = sub_24AD5E7A4();
    __swift_project_value_buffer(v41, qword_2810654A0);
    v42 = *(v40 + 16);
    v42(v37, v36, v39);
    v42(v38, v35, v39);

    v43 = sub_24AD5E784();
    v44 = sub_24AD5EB64();

    v45 = os_log_type_enabled(v43, v44);
    v46 = *(v0 + 184);
    if (v45)
    {
      v47 = *(v0 + 176);
      v81 = v44;
      log = v43;
      v49 = *(v0 + 120);
      v48 = *(v0 + 128);
      v50 = *(v0 + 104);
      v51 = *(v0 + 112);
      v52 = *(v0 + 88);
      v53 = *(v0 + 96);
      v79 = *(v0 + 80);
      v54 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v86[0] = v82;
      *v54 = 136315394;
      v55 = sub_24AD2EDAC(v47, v46, v86);

      *(v54 + 4) = v55;
      *(v54 + 12) = 2080;
      sub_24AD5F0C4();
      sub_24AD5A540(&qword_281064968, 255, MEMORY[0x277D858F8]);
      v56 = sub_24AD5F0B4();
      v58 = v57;
      (*(v52 + 8))(v53, v79);
      v59 = *(v51 + 8);
      v59(v49, v50);
      v59(v48, v50);
      v60 = sub_24AD2EDAC(v56, v58, v86);

      *(v54 + 14) = v60;
      _os_log_impl(&dword_24ACF2000, log, v81, "Fetching %s recordZoneChanges duration: %s", v54, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C22F400](v82, -1, -1);
      MEMORY[0x24C22F400](v54, -1, -1);
    }

    else
    {
      v66 = *(v0 + 120);
      v65 = *(v0 + 128);
      v67 = *(v0 + 104);
      v68 = *(v0 + 112);

      v59 = *(v68 + 8);
      v59(v66, v67);
      v59(v65, v67);
    }

    *(v0 + 256) = v59;
    v69 = *(v0 + 216);
    v70 = *(v0 + 72);
    v71 = *(v84 + 16);
    v72 = swift_task_alloc();
    *(v0 + 264) = v72;
    v73 = *(v0 + 48);
    *(v72 + 16) = v70;
    *(v72 + 24) = v73;
    *(v72 + 40) = v71;
    *(v72 + 48) = v71;
    v74 = *(MEMORY[0x277D08A88] + 4);
    v85 = (*MEMORY[0x277D08A88] + MEMORY[0x277D08A88]);
    v75 = v69;
    v76 = swift_task_alloc();
    *(v0 + 272) = v76;
    *v76 = v0;
    v76[1] = sub_24AD50B84;
    v77 = *(v0 + 64);

    return v85(&unk_24AD612D0, v72);
  }
}

uint64_t sub_24AD50B84()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v10 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v4 = *(v2 + 264);
    v5 = *(v2 + 248);

    v6 = *(v2 + 16);

    v7 = sub_24AD50F00;
  }

  else
  {
    v8 = *(v2 + 264);

    v7 = sub_24AD50CD0;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_24AD50CD0()
{
  v1 = v0[32];
  v2 = v0[27];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[18];
  v12 = v0[19];
  v13 = v0[31];
  v6 = v0[17];
  v7 = v0[14];
  v14 = v0[16];
  v15 = v0[15];
  v8 = v0[13];
  v16 = v0[12];
  v9 = v0[3];

  v1(v6, v8);
  v1(v5, v8);
  (*(v4 + 8))(v3, v12);
  *v9 = v13;
  v9[1] = v0[2];
  v9[2] = v2;

  v10 = v0[1];

  return v10();
}

uint64_t sub_24AD50E00()
{
  v1 = *(v0 + 112);

  v11 = *(v0 + 224);
  v3 = *(v0 + 160);
  v2 = *(v0 + 168);
  v4 = *(v0 + 152);
  v6 = *(v0 + 128);
  v5 = *(v0 + 136);
  v7 = *(v0 + 120);
  v8 = *(v0 + 96);
  (*(v1 + 8))(*(v0 + 144), *(v0 + 104));
  (*(v3 + 8))(v2, v4);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_24AD50F00()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 136);
  v3 = *(v0 + 104);
  v4 = *(v0 + 112);

  v1(v2, v3);
  v14 = *(v0 + 280);
  v6 = *(v0 + 160);
  v5 = *(v0 + 168);
  v7 = *(v0 + 152);
  v9 = *(v0 + 128);
  v8 = *(v0 + 136);
  v10 = *(v0 + 120);
  v11 = *(v0 + 96);
  (*(v0 + 256))(*(v0 + 144), *(v0 + 104));
  (*(v6 + 8))(v5, v7);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_24AD51020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_24AD51048, 0, 0);
}

uint64_t sub_24AD51048()
{
  v44 = v0[5];
  v45 = v0[6];
  v39 = v0[3];
  v41 = v0[4];
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6208, &qword_24AD60920);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6170, &qword_24AD61280);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v42 = 4 * *(v3 + 72);
  v5 = *(v3 + 72);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_24AD60BD0;
  v6 = v43 + v4;
  v7 = (v43 + v4 + *(v2 + 48));
  *(v43 + v4) = 0;
  v8 = [*(v1 + 112) containerID];
  v9 = [v8 containerIdentifier];

  v10 = sub_24AD5E844();
  v12 = v11;

  v7[3] = MEMORY[0x277D837D0];
  v38 = sub_24AD388E4();
  v7[4] = v38;
  *v7 = v10;
  v7[1] = v12;
  v13 = *MEMORY[0x277D08AB8];
  v37 = *MEMORY[0x277D08AB8];
  v48 = sub_24AD5E644();
  v47 = *(*(v48 - 8) + 104);
  v47(v7, v13, v48);
  v14 = *MEMORY[0x277D08AC8];
  v15 = sub_24AD5E654();
  v16 = *(*(v15 - 8) + 104);
  v16(v7, v14, v15);
  v34 = v5;
  v35 = v6;
  v33 = v2;
  v17 = (v6 + v5 + *(v2 + 48));
  *(v6 + v5) = 1;
  v18 = [v39 databaseScope];
  v17[3] = MEMORY[0x277D83B88];
  v40 = sub_24AD59928();
  v17[4] = v40;
  *v17 = v18;
  v36 = *MEMORY[0x277D08AC0];
  (v47)(v17);
  v16(v17, v14, v15);
  v32 = 2 * v5;
  v19 = (v6 + 2 * v5);
  v20 = &v19[*(v2 + 48)];
  *v19 = 2;
  v21 = [v41 zoneName];
  v22 = sub_24AD5E844();
  v24 = v23;

  v20[3] = MEMORY[0x277D837D0];
  v20[4] = v38;
  *v20 = v22;
  v20[1] = v24;
  v47(v20, v37, v48);
  v16(v20, v14, v15);
  v25 = *(v33 + 48);
  v26 = (v35 + v32 + v34);
  *v26 = 5;
  v27 = &v26[v25];
  v27[3] = MEMORY[0x277D83B88];
  v27[4] = v40;
  *v27 = v44;
  v47(&v26[v25], v36, v48);
  v16(v27, v14, v15);
  v28 = (v35 + v42 + *(v33 + 48));
  *(v35 + v42) = 6;
  v28[3] = MEMORY[0x277D83B88];
  v28[4] = v40;
  *v28 = v45;
  v47(v28, v36, v48);
  v16(v28, v14, v15);
  v29 = sub_24AD342C4(v43);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v30 = *(v46 + 8);

  return v30(v29);
}

uint64_t sub_24AD514E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v7 = *(MEMORY[0x277CBBE90] + 4);
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_24AD5159C;

  return MEMORY[0x28210DF08](a3, a4);
}

uint64_t sub_24AD5159C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 24);
  v8 = *v3;

  if (v2)
  {
    v9 = *(v8 + 8);

    return v9();
  }

  else
  {
    *(v6 + 32) = a2;
    *(v6 + 40) = a1;

    return MEMORY[0x2822009F8](sub_24AD516F8, 0, 0);
  }
}

uint64_t CloudKitCoordinator.Deletion.recordType.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t static CloudKitCoordinator.Deletion.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_24AD5EF84() & 1) == 0)
  {
    return 0;
  }

  sub_24AD06578(0, &qword_281064970, 0x277D82BB8);
  return sub_24AD5EC04() & 1;
}

uint64_t CloudKitCoordinator.Deletion.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_24AD5E874();
  return sub_24AD5EC14();
}

uint64_t CloudKitCoordinator.Deletion.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_24AD5F074();
  sub_24AD5E874();
  sub_24AD5EC14();
  return sub_24AD5F094();
}

uint64_t sub_24AD51870()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_24AD5F074();
  sub_24AD5E874();
  sub_24AD5EC14();
  return sub_24AD5F094();
}

uint64_t sub_24AD518D0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_24AD5E874();
  return sub_24AD5EC14();
}

uint64_t sub_24AD51904()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_24AD5F074();
  sub_24AD5E874();
  sub_24AD5EC14();
  return sub_24AD5F094();
}

uint64_t sub_24AD51960(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_24AD5EF84() & 1) == 0)
  {
    return 0;
  }

  sub_24AD06578(0, &qword_281064970, 0x277D82BB8);
  return sub_24AD5EC04() & 1;
}

uint64_t CloudKitCoordinator.Database.description.getter()
{
  v1 = 0x646572616853;
  if (*v0 != 1)
  {
    v1 = 0x63696C627550;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65746176697250;
  }
}

FindMyCloudKit::CloudKitCoordinator::Database_optional __swiftcall CloudKitCoordinator.Database.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_24AD51A60()
{
  v1 = 0x646572616853;
  if (*v0 != 1)
  {
    v1 = 0x63696C627550;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65746176697250;
  }
}

uint64_t sub_24AD51AB4()
{
  v0 = sub_24AD5E7A4();
  __swift_allocate_value_buffer(v0, qword_281065430);
  __swift_project_value_buffer(v0, qword_281065430);
  return sub_24AD5E794();
}

uint64_t sub_24AD51B2C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24AD11704;

  return v7(a1);
}

unint64_t sub_24AD51C24(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_24AD5F074();
  sub_24AD5E874();
  v6 = sub_24AD5F094();

  return sub_24AD51C9C(a1, a2, v6);
}

unint64_t sub_24AD51C9C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_24AD5EF84())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_24AD51D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_24AD5EDD4();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_24AD51E54, 0, 0);
}

uint64_t sub_24AD51E54()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = sub_24AD5EDF4();
  v7 = sub_24AD5A540(&qword_27EFA62F8, 255, MEMORY[0x277D85928]);
  sub_24AD5EFD4();
  sub_24AD5A540(&qword_281064968, 255, MEMORY[0x277D858F8]);
  sub_24AD5EE04();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = *(MEMORY[0x277D85A58] + 4);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_24AD51FEC;
  v11 = v0[11];
  v12 = v0[7];

  return MEMORY[0x2822008C8](v11, v0 + 2, v6, v7);
}

uint64_t sub_24AD51FEC()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24AD521A8, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_24AD521A8()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t sub_24AD52214(uint64_t a1)
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
    sub_24AD5EC94();
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
  result = sub_24AD5ED54();
  *v1 = result;
  return result;
}

id sub_24AD522B4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA62D0, &qword_24AD612F0) + 48);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA62C8, &qword_24AD612E8);
  v7 = *a1;
  sub_24AD38B48(a1 + v4, a2 + *(v5 + 48), &qword_27EFA5F30, &qword_24AD5FDF8);
  *a2 = v7;

  return v7;
}

uint64_t sub_24AD52354(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_24AD5EC94();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_24AD5EC94();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_24AD062C8(&qword_27EFA6350, &qword_27EFA6348, &qword_24AD61460);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA6348, &qword_24AD61460);
            v9 = sub_24AD33A64(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_24AD06578(0, &qword_27EFA5F18, 0x277CBC5A0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}