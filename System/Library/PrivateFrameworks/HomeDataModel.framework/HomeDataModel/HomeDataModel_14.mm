unint64_t sub_1D1807F54()
{
  result = qword_1EC644818;
  if (!qword_1EC644818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644818);
  }

  return result;
}

unint64_t sub_1D1807FAC()
{
  result = qword_1EC644820;
  if (!qword_1EC644820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644820);
  }

  return result;
}

unint64_t sub_1D1808004()
{
  result = qword_1EC644828;
  if (!qword_1EC644828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644828);
  }

  return result;
}

unint64_t sub_1D180805C()
{
  result = qword_1EC644830;
  if (!qword_1EC644830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644830);
  }

  return result;
}

unint64_t sub_1D18080B4()
{
  result = qword_1EC644838;
  if (!qword_1EC644838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644838);
  }

  return result;
}

unint64_t sub_1D180810C()
{
  result = qword_1EC644840;
  if (!qword_1EC644840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644840);
  }

  return result;
}

unint64_t sub_1D1808164()
{
  result = qword_1EC644848;
  if (!qword_1EC644848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644848);
  }

  return result;
}

unint64_t sub_1D18081BC()
{
  result = qword_1EC644850;
  if (!qword_1EC644850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644850);
  }

  return result;
}

unint64_t sub_1D1808214()
{
  result = qword_1EC644858;
  if (!qword_1EC644858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644858);
  }

  return result;
}

uint64_t sub_1D1808268(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64616F6C796170 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x666E496369736162 && a2 == 0xE90000000000006FLL || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x654D656369766564 && a2 == 0xEE00617461646174 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001D1EBA0C0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D1E6904C();

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

uint64_t sub_1D18083E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6341636974617473 && a2 == 0xEF79726F73736563;
  if (v4 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6553636974617473 && a2 == 0xED00006563697672 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D1EBA0E0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E45636974617473 && a2 == 0xEE00746E696F7064)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D1E6904C();

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

uint64_t AccessoryDetailsBasicInfo.id.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for StaticEndpoint();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StaticServiceGroup();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for StaticService(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for StaticAccessory(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for AccessoryDetails.Payload(0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1821554(v2, v23, type metadata accessor for AccessoryDetails.Payload);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1D182161C(v23, v11, type metadata accessor for StaticServiceGroup);
      v28 = sub_1D1E66A7C();
      (*(*(v28 - 8) + 16))(a1, v11, v28);
      v26 = type metadata accessor for StaticServiceGroup;
      v27 = v11;
    }

    else
    {
      sub_1D182161C(v23, v7, type metadata accessor for StaticEndpoint);
      v30 = sub_1D1E66A7C();
      (*(*(v30 - 8) + 16))(a1, v7, v30);
      v26 = type metadata accessor for StaticEndpoint;
      v27 = v7;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1D182161C(v23, v15, type metadata accessor for StaticService);
    v29 = sub_1D1E66A7C();
    (*(*(v29 - 8) + 16))(a1, v15, v29);
    v26 = type metadata accessor for StaticService;
    v27 = v15;
  }

  else
  {
    sub_1D182161C(v23, v19, type metadata accessor for StaticAccessory);
    v25 = sub_1D1E66A7C();
    (*(*(v25 - 8) + 16))(a1, v19, v25);
    v26 = type metadata accessor for StaticAccessory;
    v27 = v19;
  }

  return sub_1D18215BC(v27, v26);
}

uint64_t sub_1D18089F0()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x1E69E87D8] + 4);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_1D17ED344;

  return MEMORY[0x1EEE6DBF8]();
}

uint64_t AccessoryDetailsBasicInfo.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  return sub_1D1808B10(a1, type metadata accessor for StaticAccessory, a2);
}

{
  return sub_1D1808B10(a1, type metadata accessor for StaticService, a2);
}

{
  return sub_1D1808B10(a1, type metadata accessor for StaticServiceGroup, a2);
}

uint64_t sub_1D1808B10@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for AccessoryDetailsBasicInfo();
  v7 = (a3 + v6[5]);
  *v7 = 0;
  v7[1] = 0;
  v8 = v6[6];
  v9 = type metadata accessor for StaticRoom(0);
  (*(*(v9 - 8) + 56))(a3 + v8, 1, 1, v9);
  v10 = (a3 + v6[7]);
  *v10 = 0;
  v10[1] = 0;
  *(a3 + v6[8]) = 2;
  *(a3 + v6[9]) = 2;
  *(a3 + v6[10]) = 92;
  sub_1D182161C(a1, a3, a2);
  type metadata accessor for AccessoryDetails.Payload(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t AccessoryDetailsBasicInfo.primaryServiceKind.getter@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v9 - v4;
  AccessoryDetailsBasicInfo.primaryStaticService.getter(&v9 - v4);
  v6 = type metadata accessor for StaticService(0);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    result = sub_1D1741A30(v5, &qword_1EC6436F0, &qword_1D1E99BC0);
    v8 = 0;
  }

  else
  {
    v8 = v5[*(v6 + 104)];
    result = sub_1D18215BC(v5, type metadata accessor for StaticService);
  }

  *a1 = v8;
  return result;
}

uint64_t sub_1D1808D68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v4 = *(type metadata accessor for AccessoryDetailsBasicInfo() - 8);
  v3[4] = v4;
  v3[5] = *(v4 + 64);
  v3[6] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0) - 8) + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1808E64, 0, 0);
}

uint64_t sub_1D1808E64()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[4];
  v16 = v0[5];
  v4 = v0[3];
  v17 = v4;
  v5 = sub_1D1E67E7C();
  v6 = *(*(v5 - 8) + 56);
  v6(v2, 1, 1, v5);
  sub_1D1821554(v4, v1, type metadata accessor for AccessoryDetailsBasicInfo);
  v7 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  sub_1D182161C(v1, v8 + v7, type metadata accessor for AccessoryDetailsBasicInfo);
  sub_1D1DE2784(v2, &unk_1D1E768C8, v8);
  sub_1D1741A30(v2, &unk_1EC6442C0, &qword_1D1E741A0);
  v6(v2, 1, 1, v5);
  sub_1D1821554(v17, v1, type metadata accessor for AccessoryDetailsBasicInfo);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  sub_1D182161C(v1, v9 + v7, type metadata accessor for AccessoryDetailsBasicInfo);
  sub_1D1DE2784(v2, &unk_1D1E768D8, v9);
  sub_1D1741A30(v2, &unk_1EC6442C0, &qword_1D1E741A0);
  v6(v2, 1, 1, v5);
  sub_1D1821554(v17, v1, type metadata accessor for AccessoryDetailsBasicInfo);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  sub_1D182161C(v1, v10 + v7, type metadata accessor for AccessoryDetailsBasicInfo);
  sub_1D1DE2784(v2, &unk_1D1E768E8, v10);
  sub_1D1741A30(v2, &unk_1EC6442C0, &qword_1D1E741A0);
  v6(v2, 1, 1, v5);
  sub_1D1821554(v17, v1, type metadata accessor for AccessoryDetailsBasicInfo);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  sub_1D182161C(v1, v11 + v7, type metadata accessor for AccessoryDetailsBasicInfo);
  sub_1D1DE2784(v2, &unk_1D1E768F8, v11);
  sub_1D1741A30(v2, &unk_1EC6442C0, &qword_1D1E741A0);
  v6(v2, 1, 1, v5);
  sub_1D1821554(v17, v1, type metadata accessor for AccessoryDetailsBasicInfo);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  sub_1D182161C(v1, v12 + v7, type metadata accessor for AccessoryDetailsBasicInfo);
  sub_1D1DE2784(v2, &unk_1D1E76908, v12);
  sub_1D1741A30(v2, &unk_1EC6442C0, &qword_1D1E741A0);

  v13 = *(v15 + 8);

  return v13();
}

uint64_t sub_1D1809274(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D17C4CF0;

  return sub_1D1808D68(a1, a2, v6);
}

uint64_t sub_1D1809324()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D17C4CF0;

  return AccessoryDetailsBasicInfo.commitName()();
}

uint64_t AccessoryDetailsBasicInfo.commitName()()
{
  v1[6] = v0;
  v2 = *(*(type metadata accessor for StaticEndpoint() - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  v3 = *(*(type metadata accessor for StaticServiceGroup() - 8) + 64) + 15;
  v1[8] = swift_task_alloc();
  v4 = type metadata accessor for StateSnapshot(0);
  v1[9] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v1[10] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0) - 8) + 64) + 15;
  v1[11] = swift_task_alloc();
  v7 = type metadata accessor for StaticService(0);
  v1[12] = v7;
  v8 = *(v7 - 8);
  v1[13] = v8;
  v9 = *(v8 + 64) + 15;
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v10 = type metadata accessor for StaticAccessory(0);
  v1[16] = v10;
  v11 = *(v10 - 8);
  v1[17] = v11;
  v12 = *(v11 + 64) + 15;
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v13 = type metadata accessor for AccessoryDetails.Payload(0);
  v1[21] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v15 = type metadata accessor for AccessoryDetailsBasicInfo();
  v1[24] = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D180962C, 0, 0);
}

uint64_t sub_1D180962C()
{
  v48 = v0;
  v1 = v0[6];
  v2 = (v1 + *(v0[24] + 20));
  v3 = *v2;
  v0[27] = *v2;
  v4 = v2[1];
  v0[28] = v4;
  if (v4)
  {
    if (qword_1EC642470 != -1)
    {
      swift_once();
      v1 = v0[6];
    }

    v5 = v0[26];
    v6 = sub_1D1E6709C();
    v0[29] = __swift_project_value_buffer(v6, qword_1EC64F440);
    sub_1D1821554(v1, v5, type metadata accessor for AccessoryDetailsBasicInfo);

    v7 = sub_1D1E6707C();
    v8 = sub_1D1E6835C();

    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[26];
    v43 = v3;
    if (v9)
    {
      v11 = v0[23];
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v45 = v13;
      *v12 = 136315394;
      *(v12 + 4) = sub_1D1B1312C(v3, v4, &v45);
      *(v12 + 12) = 2080;
      sub_1D1821554(v10, v11, type metadata accessor for AccessoryDetails.Payload);
      v14 = sub_1D17EEED0(v11);
      v46 = 0xD000000000000019;
      v47 = 0x80000001D1EB9EC0;
      MEMORY[0x1D3890F70](v14);

      v15 = v46;
      v16 = v47;
      sub_1D18215BC(v11, type metadata accessor for AccessoryDetails.Payload);
      sub_1D18215BC(v10, type metadata accessor for AccessoryDetailsBasicInfo);
      v17 = sub_1D1B1312C(v15, v16, &v45);

      *(v12 + 14) = v17;
      _os_log_impl(&dword_1D16EC000, v7, v8, "Write new name: %s to staticServiceGroup %s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v13, -1, -1);
      MEMORY[0x1D3893640](v12, -1, -1);
    }

    else
    {

      sub_1D18215BC(v10, type metadata accessor for AccessoryDetailsBasicInfo);
    }

    v30 = v0[21];
    sub_1D1821554(v0[6], v0[22], type metadata accessor for AccessoryDetails.Payload);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v32 = v0[22];
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_1D182161C(v32, v0[8], type metadata accessor for StaticServiceGroup);
        v35 = swift_task_alloc();
        v0[43] = v35;
        *v35 = v0;
        v35[1] = sub_1D180AC28;
        v36 = v0[8];

        return StaticServiceGroup.set(displayName:)(v43, v4);
      }

      else
      {
        sub_1D182161C(v32, v0[7], type metadata accessor for StaticEndpoint);
        v39 = swift_task_alloc();
        v0[45] = v39;
        *v39 = v0;
        v39[1] = sub_1D180AE58;
        v40 = v0[7];

        return StaticEndpoint.set(name:)(v43, v4);
      }
    }

    else if (EnumCaseMultiPayload)
    {
      sub_1D182161C(v32, v0[14], type metadata accessor for StaticService);
      v37 = swift_task_alloc();
      v0[34] = v37;
      *v37 = v0;
      v37[1] = sub_1D180A23C;
      v38 = v0[14];

      return StaticService.set(displayName:)(v43, v4);
    }

    else
    {
      sub_1D182161C(v32, v0[20], type metadata accessor for StaticAccessory);
      v33 = swift_task_alloc();
      v0[30] = v33;
      *v33 = v0;
      v33[1] = sub_1D1809C5C;
      v34 = v0[20];

      return StaticAccessory.set(displayName:)(v43, v4);
    }
  }

  else
  {
    v19 = v0[25];
    v18 = v0[26];
    v21 = v0[22];
    v20 = v0[23];
    v23 = v0[19];
    v22 = v0[20];
    v24 = v0[18];
    v26 = v0[14];
    v25 = v0[15];
    v27 = v0[11];
    v41 = v0[10];
    v42 = v0[8];
    v44 = v0[7];

    v28 = v0[1];

    return v28();
  }
}

uint64_t sub_1D1809C5C()
{
  v2 = *(*v1 + 240);
  v5 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = sub_1D180B070;
  }

  else
  {
    v3 = sub_1D1809D70;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D1809D70()
{
  v1 = v0[20];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[11];
  StaticAccessory.primaryStaticService.getter(v4);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    v5 = v0[11];
    sub_1D18215BC(v0[20], type metadata accessor for StaticAccessory);
    sub_1D1741A30(v5, &qword_1EC6436F0, &qword_1D1E99BC0);
LABEL_6:
    v9 = v0[25];
    v8 = v0[26];
    v11 = v0[22];
    v10 = v0[23];
    v13 = v0[19];
    v12 = v0[20];
    v14 = v0[18];
    v16 = v0[14];
    v15 = v0[15];
    v17 = v0[11];
    v24 = v0[10];
    v25 = v0[8];
    v26 = v0[7];

    v18 = v0[1];

    return v18();
  }

  sub_1D182161C(v0[11], v0[15], type metadata accessor for StaticService);
  v6 = StaticAccessory.hasVisibleServices(minCount:)(2);
  v7 = v0[20];
  if (v6 || (*(v7 + *(v0[16] + 104)) & 1) != 0)
  {
    sub_1D18215BC(v0[15], type metadata accessor for StaticService);
    sub_1D18215BC(v7, type metadata accessor for StaticAccessory);
    goto LABEL_6;
  }

  v20 = v0[28];
  v21 = swift_task_alloc();
  v0[32] = v21;
  *v21 = v0;
  v21[1] = sub_1D1809FEC;
  v22 = v0[27];
  v23 = v0[15];

  return StaticService.set(displayName:)(v22, v20);
}

uint64_t sub_1D1809FEC()
{
  v2 = *(*v1 + 256);
  v5 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v3 = sub_1D180B388;
  }

  else
  {
    v3 = sub_1D180A100;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D180A100()
{
  v1 = v0[20];
  sub_1D18215BC(v0[15], type metadata accessor for StaticService);
  sub_1D18215BC(v1, type metadata accessor for StaticAccessory);
  v3 = v0[25];
  v2 = v0[26];
  v5 = v0[22];
  v4 = v0[23];
  v7 = v0[19];
  v6 = v0[20];
  v8 = v0[18];
  v10 = v0[14];
  v9 = v0[15];
  v11 = v0[11];
  v14 = v0[10];
  v15 = v0[8];
  v16 = v0[7];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1D180A23C()
{
  v2 = *(*v1 + 272);
  v5 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v3 = sub_1D180B6C0;
  }

  else
  {
    v3 = sub_1D180A350;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D180A350()
{
  *(v0 + 288) = sub_1D1E67E1C();
  *(v0 + 296) = sub_1D1E67E0C();
  v2 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D180A3E8, v2, v1);
}

uint64_t sub_1D180A3E8()
{
  v1 = *(v0 + 296);

  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D180A480, 0, 0);
}

uint64_t sub_1D180A480()
{
  v1 = *(v0 + 288);
  *(v0 + 304) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D180A50C, v3, v2);
}

uint64_t sub_1D180A50C()
{
  v1 = *(v0 + 304);

  *(v0 + 312) = qword_1EE07DC60;

  return MEMORY[0x1EEE6DFA0](sub_1D180A580, 0, 0);
}

uint64_t sub_1D180A580()
{
  v1 = *(v0 + 288);
  *(v0 + 320) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D180A60C, v3, v2);
}

uint64_t sub_1D180A60C()
{
  v2 = v0[39];
  v1 = v0[40];
  v3 = v0[10];

  swift_getKeyPath();
  v0[5] = v2;
  sub_1D1821000(&qword_1EE07CFB0, type metadata accessor for DataModel);
  sub_1D1E66CAC();

  v4 = OBJC_IVAR____TtC13HomeDataModel9DataModel__currentStateSnapshot;
  swift_beginAccess();
  sub_1D1821554(v2 + v4, v3, type metadata accessor for StateSnapshot);

  return MEMORY[0x1EEE6DFA0](sub_1D180A734, 0, 0);
}

uint64_t sub_1D180A734()
{
  v1 = v0[10];
  v2 = *(v1 + *(v0[9] + 32));

  sub_1D18215BC(v1, type metadata accessor for StateSnapshot);
  if (!*(v2 + 16) || (v3 = sub_1D1742188(v0[14] + *(v0[12] + 44)), (v4 & 1) == 0))
  {
    v9 = v0[14];

    goto LABEL_7;
  }

  v6 = v0[18];
  v5 = v0[19];
  sub_1D1821554(*(v2 + 56) + *(v0[17] + 72) * v3, v6, type metadata accessor for StaticAccessory);

  sub_1D182161C(v6, v5, type metadata accessor for StaticAccessory);
  v7 = StaticAccessory.hasVisibleServices(minCount:)(2);
  v8 = v0[19];
  if (v7 || (*(v8 + *(v0[16] + 104)) & 1) != 0)
  {
    v9 = v0[14];
    sub_1D18215BC(v8, type metadata accessor for StaticAccessory);
LABEL_7:
    sub_1D18215BC(v9, type metadata accessor for StaticService);
    v11 = v0[25];
    v10 = v0[26];
    v13 = v0[22];
    v12 = v0[23];
    v15 = v0[19];
    v14 = v0[20];
    v16 = v0[18];
    v18 = v0[14];
    v17 = v0[15];
    v19 = v0[11];
    v26 = v0[10];
    v27 = v0[8];
    v28 = v0[7];

    v20 = v0[1];

    return v20();
  }

  v22 = v0[28];
  v23 = swift_task_alloc();
  v0[41] = v23;
  *v23 = v0;
  v23[1] = sub_1D180A9D8;
  v24 = v0[27];
  v25 = v0[19];

  return StaticAccessory.set(displayName:)(v24, v22);
}

uint64_t sub_1D180A9D8()
{
  v2 = *(*v1 + 328);
  v5 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v3 = sub_1D180B9D8;
  }

  else
  {
    v3 = sub_1D180AAEC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D180AAEC()
{
  v1 = v0[14];
  sub_1D18215BC(v0[19], type metadata accessor for StaticAccessory);
  sub_1D18215BC(v1, type metadata accessor for StaticService);
  v3 = v0[25];
  v2 = v0[26];
  v5 = v0[22];
  v4 = v0[23];
  v7 = v0[19];
  v6 = v0[20];
  v8 = v0[18];
  v10 = v0[14];
  v9 = v0[15];
  v11 = v0[11];
  v14 = v0[10];
  v15 = v0[8];
  v16 = v0[7];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1D180AC28()
{
  v2 = *(*v1 + 344);
  v5 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v3 = sub_1D180BD10;
  }

  else
  {
    v3 = sub_1D180AD3C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D180AD3C()
{
  sub_1D18215BC(v0[8], type metadata accessor for StaticServiceGroup);
  v2 = v0[25];
  v1 = v0[26];
  v4 = v0[22];
  v3 = v0[23];
  v6 = v0[19];
  v5 = v0[20];
  v7 = v0[18];
  v9 = v0[14];
  v8 = v0[15];
  v10 = v0[11];
  v13 = v0[10];
  v14 = v0[8];
  v15 = v0[7];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1D180AE58()
{
  v1 = *(*v0 + 360);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D180AF54, 0, 0);
}

uint64_t sub_1D180AF54()
{
  sub_1D18215BC(v0[7], type metadata accessor for StaticEndpoint);
  v2 = v0[25];
  v1 = v0[26];
  v4 = v0[22];
  v3 = v0[23];
  v6 = v0[19];
  v5 = v0[20];
  v7 = v0[18];
  v9 = v0[14];
  v8 = v0[15];
  v10 = v0[11];
  v13 = v0[10];
  v14 = v0[8];
  v15 = v0[7];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1D180B070()
{
  v35 = v0;
  sub_1D18215BC(v0[20], type metadata accessor for StaticAccessory);
  v1 = v0[31];
  v3 = v0[28];
  v2 = v0[29];
  sub_1D1821554(v0[6], v0[25], type metadata accessor for AccessoryDetailsBasicInfo);

  v4 = sub_1D1E6707C();
  v5 = sub_1D1E6833C();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[27];
    v6 = v0[28];
    v8 = v0[25];
    v9 = v0[23];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v32 = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_1D1B1312C(v7, v6, &v32);
    *(v10 + 12) = 2080;
    sub_1D1821554(v8, v9, type metadata accessor for AccessoryDetails.Payload);
    v12 = sub_1D17EEED0(v9);
    v33 = 0xD000000000000019;
    v34 = 0x80000001D1EB9EC0;
    MEMORY[0x1D3890F70](v12);

    v13 = v33;
    v14 = v34;
    sub_1D18215BC(v9, type metadata accessor for AccessoryDetails.Payload);
    sub_1D18215BC(v8, type metadata accessor for AccessoryDetailsBasicInfo);
    v15 = sub_1D1B1312C(v13, v14, &v32);

    *(v10 + 14) = v15;
    _os_log_impl(&dword_1D16EC000, v4, v5, "Error commit name: %s for %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v11, -1, -1);
    MEMORY[0x1D3893640](v10, -1, -1);
  }

  else
  {
    v16 = v0[25];

    sub_1D18215BC(v16, type metadata accessor for AccessoryDetailsBasicInfo);
  }

  v18 = v0[25];
  v17 = v0[26];
  v20 = v0[22];
  v19 = v0[23];
  v22 = v0[19];
  v21 = v0[20];
  v23 = v0[18];
  v25 = v0[14];
  v24 = v0[15];
  v26 = v0[11];
  v29 = v0[10];
  v30 = v0[8];
  v31 = v0[7];

  v27 = v0[1];

  return v27();
}

uint64_t sub_1D180B388()
{
  v36 = v0;
  v1 = v0[20];
  sub_1D18215BC(v0[15], type metadata accessor for StaticService);
  sub_1D18215BC(v1, type metadata accessor for StaticAccessory);
  v2 = v0[33];
  v4 = v0[28];
  v3 = v0[29];
  sub_1D1821554(v0[6], v0[25], type metadata accessor for AccessoryDetailsBasicInfo);

  v5 = sub_1D1E6707C();
  v6 = sub_1D1E6833C();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = v0[27];
    v7 = v0[28];
    v9 = v0[25];
    v10 = v0[23];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v33 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_1D1B1312C(v8, v7, &v33);
    *(v11 + 12) = 2080;
    sub_1D1821554(v9, v10, type metadata accessor for AccessoryDetails.Payload);
    v13 = sub_1D17EEED0(v10);
    v34 = 0xD000000000000019;
    v35 = 0x80000001D1EB9EC0;
    MEMORY[0x1D3890F70](v13);

    v14 = v34;
    v15 = v35;
    sub_1D18215BC(v10, type metadata accessor for AccessoryDetails.Payload);
    sub_1D18215BC(v9, type metadata accessor for AccessoryDetailsBasicInfo);
    v16 = sub_1D1B1312C(v14, v15, &v33);

    *(v11 + 14) = v16;
    _os_log_impl(&dword_1D16EC000, v5, v6, "Error commit name: %s for %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v12, -1, -1);
    MEMORY[0x1D3893640](v11, -1, -1);
  }

  else
  {
    v17 = v0[25];

    sub_1D18215BC(v17, type metadata accessor for AccessoryDetailsBasicInfo);
  }

  v19 = v0[25];
  v18 = v0[26];
  v21 = v0[22];
  v20 = v0[23];
  v23 = v0[19];
  v22 = v0[20];
  v24 = v0[18];
  v26 = v0[14];
  v25 = v0[15];
  v27 = v0[11];
  v30 = v0[10];
  v31 = v0[8];
  v32 = v0[7];

  v28 = v0[1];

  return v28();
}

uint64_t sub_1D180B6C0()
{
  v35 = v0;
  sub_1D18215BC(v0[14], type metadata accessor for StaticService);
  v1 = v0[35];
  v3 = v0[28];
  v2 = v0[29];
  sub_1D1821554(v0[6], v0[25], type metadata accessor for AccessoryDetailsBasicInfo);

  v4 = sub_1D1E6707C();
  v5 = sub_1D1E6833C();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[27];
    v6 = v0[28];
    v8 = v0[25];
    v9 = v0[23];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v32 = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_1D1B1312C(v7, v6, &v32);
    *(v10 + 12) = 2080;
    sub_1D1821554(v8, v9, type metadata accessor for AccessoryDetails.Payload);
    v12 = sub_1D17EEED0(v9);
    v33 = 0xD000000000000019;
    v34 = 0x80000001D1EB9EC0;
    MEMORY[0x1D3890F70](v12);

    v13 = v33;
    v14 = v34;
    sub_1D18215BC(v9, type metadata accessor for AccessoryDetails.Payload);
    sub_1D18215BC(v8, type metadata accessor for AccessoryDetailsBasicInfo);
    v15 = sub_1D1B1312C(v13, v14, &v32);

    *(v10 + 14) = v15;
    _os_log_impl(&dword_1D16EC000, v4, v5, "Error commit name: %s for %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v11, -1, -1);
    MEMORY[0x1D3893640](v10, -1, -1);
  }

  else
  {
    v16 = v0[25];

    sub_1D18215BC(v16, type metadata accessor for AccessoryDetailsBasicInfo);
  }

  v18 = v0[25];
  v17 = v0[26];
  v20 = v0[22];
  v19 = v0[23];
  v22 = v0[19];
  v21 = v0[20];
  v23 = v0[18];
  v25 = v0[14];
  v24 = v0[15];
  v26 = v0[11];
  v29 = v0[10];
  v30 = v0[8];
  v31 = v0[7];

  v27 = v0[1];

  return v27();
}

uint64_t sub_1D180B9D8()
{
  v36 = v0;
  v1 = v0[14];
  sub_1D18215BC(v0[19], type metadata accessor for StaticAccessory);
  sub_1D18215BC(v1, type metadata accessor for StaticService);
  v2 = v0[42];
  v4 = v0[28];
  v3 = v0[29];
  sub_1D1821554(v0[6], v0[25], type metadata accessor for AccessoryDetailsBasicInfo);

  v5 = sub_1D1E6707C();
  v6 = sub_1D1E6833C();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = v0[27];
    v7 = v0[28];
    v9 = v0[25];
    v10 = v0[23];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v33 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_1D1B1312C(v8, v7, &v33);
    *(v11 + 12) = 2080;
    sub_1D1821554(v9, v10, type metadata accessor for AccessoryDetails.Payload);
    v13 = sub_1D17EEED0(v10);
    v34 = 0xD000000000000019;
    v35 = 0x80000001D1EB9EC0;
    MEMORY[0x1D3890F70](v13);

    v14 = v34;
    v15 = v35;
    sub_1D18215BC(v10, type metadata accessor for AccessoryDetails.Payload);
    sub_1D18215BC(v9, type metadata accessor for AccessoryDetailsBasicInfo);
    v16 = sub_1D1B1312C(v14, v15, &v33);

    *(v11 + 14) = v16;
    _os_log_impl(&dword_1D16EC000, v5, v6, "Error commit name: %s for %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v12, -1, -1);
    MEMORY[0x1D3893640](v11, -1, -1);
  }

  else
  {
    v17 = v0[25];

    sub_1D18215BC(v17, type metadata accessor for AccessoryDetailsBasicInfo);
  }

  v19 = v0[25];
  v18 = v0[26];
  v21 = v0[22];
  v20 = v0[23];
  v23 = v0[19];
  v22 = v0[20];
  v24 = v0[18];
  v26 = v0[14];
  v25 = v0[15];
  v27 = v0[11];
  v30 = v0[10];
  v31 = v0[8];
  v32 = v0[7];

  v28 = v0[1];

  return v28();
}

uint64_t sub_1D180BD10()
{
  v35 = v0;
  sub_1D18215BC(v0[8], type metadata accessor for StaticServiceGroup);
  v1 = v0[44];
  v3 = v0[28];
  v2 = v0[29];
  sub_1D1821554(v0[6], v0[25], type metadata accessor for AccessoryDetailsBasicInfo);

  v4 = sub_1D1E6707C();
  v5 = sub_1D1E6833C();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[27];
    v6 = v0[28];
    v8 = v0[25];
    v9 = v0[23];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v32 = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_1D1B1312C(v7, v6, &v32);
    *(v10 + 12) = 2080;
    sub_1D1821554(v8, v9, type metadata accessor for AccessoryDetails.Payload);
    v12 = sub_1D17EEED0(v9);
    v33 = 0xD000000000000019;
    v34 = 0x80000001D1EB9EC0;
    MEMORY[0x1D3890F70](v12);

    v13 = v33;
    v14 = v34;
    sub_1D18215BC(v9, type metadata accessor for AccessoryDetails.Payload);
    sub_1D18215BC(v8, type metadata accessor for AccessoryDetailsBasicInfo);
    v15 = sub_1D1B1312C(v13, v14, &v32);

    *(v10 + 14) = v15;
    _os_log_impl(&dword_1D16EC000, v4, v5, "Error commit name: %s for %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v11, -1, -1);
    MEMORY[0x1D3893640](v10, -1, -1);
  }

  else
  {
    v16 = v0[25];

    sub_1D18215BC(v16, type metadata accessor for AccessoryDetailsBasicInfo);
  }

  v18 = v0[25];
  v17 = v0[26];
  v20 = v0[22];
  v19 = v0[23];
  v22 = v0[19];
  v21 = v0[20];
  v23 = v0[18];
  v25 = v0[14];
  v24 = v0[15];
  v26 = v0[11];
  v29 = v0[10];
  v30 = v0[8];
  v31 = v0[7];

  v27 = v0[1];

  return v27();
}

uint64_t sub_1D180C028()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D17C4BFC;

  return AccessoryDetailsBasicInfo.commitRoom()();
}

uint64_t AccessoryDetailsBasicInfo.commitRoom()()
{
  v1[2] = v0;
  v2 = *(*(type metadata accessor for StaticEndpoint() - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = *(*(type metadata accessor for StaticServiceGroup() - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v4 = *(*(type metadata accessor for StaticService(0) - 8) + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = *(*(type metadata accessor for StaticAccessory(0) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v6 = type metadata accessor for AccessoryDetails.Payload(0);
  v1[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v8 = type metadata accessor for AccessoryDetailsBasicInfo();
  v1[10] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643878, &qword_1D1E72030) - 8) + 64) + 15;
  v1[13] = swift_task_alloc();
  v11 = type metadata accessor for StaticRoom(0);
  v1[14] = v11;
  v12 = *(v11 - 8);
  v1[15] = v12;
  v13 = *(v12 + 64) + 15;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D180C2F0, 0, 0);
}

uint64_t sub_1D180C2F0()
{
  v58 = v0;
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  sub_1D1741C08(v0[2] + *(v0[10] + 24), v3, &qword_1EC643878, &qword_1D1E72030);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[10];
    v5 = v0[2];
    sub_1D1741A30(v0[13], &qword_1EC643878, &qword_1D1E72030);
    if (*(v5 + *(v4 + 28) + 8))
    {
      v6 = swift_task_alloc();
      v0[31] = v6;
      *v6 = v0;
      v6[1] = sub_1D180E4D8;
      v7 = v0[2];

      return sub_1D1817DA0();
    }

    else
    {
      v39 = v0[17];
      v38 = v0[18];
      v40 = v0[16];
      v42 = v0[12];
      v41 = v0[13];
      v43 = v0[11];
      v45 = v0[8];
      v44 = v0[9];
      v47 = v0[5];
      v46 = v0[6];
      v53 = v0[4];
      v54 = v0[3];

      v48 = v0[1];

      return v48();
    }
  }

  else
  {
    sub_1D182161C(v0[13], v0[18], type metadata accessor for StaticRoom);
    if (qword_1EC642470 != -1)
    {
      swift_once();
    }

    v9 = v0[17];
    v10 = v0[18];
    v11 = v0[12];
    v12 = v0[2];
    v13 = sub_1D1E6709C();
    v0[19] = __swift_project_value_buffer(v13, qword_1EC64F440);
    sub_1D1821554(v10, v9, type metadata accessor for StaticRoom);
    sub_1D1821554(v12, v11, type metadata accessor for AccessoryDetailsBasicInfo);
    v14 = sub_1D1E6707C();
    v15 = sub_1D1E6835C();
    v16 = os_log_type_enabled(v14, v15);
    v17 = v0[17];
    v18 = v0[12];
    if (v16)
    {
      v19 = v0[9];
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v55 = v21;
      *v20 = 136315394;
      v22 = StaticRoom.description.getter();
      v24 = v23;
      sub_1D18215BC(v17, type metadata accessor for StaticRoom);
      v25 = sub_1D1B1312C(v22, v24, &v55);

      *(v20 + 4) = v25;
      *(v20 + 12) = 2080;
      sub_1D1821554(v18, v19, type metadata accessor for AccessoryDetails.Payload);
      v26 = sub_1D17EEED0(v19);
      v56 = 0xD000000000000019;
      v57 = 0x80000001D1EB9EC0;
      MEMORY[0x1D3890F70](v26);

      v27 = v56;
      v28 = v57;
      sub_1D18215BC(v19, type metadata accessor for AccessoryDetails.Payload);
      sub_1D18215BC(v18, type metadata accessor for AccessoryDetailsBasicInfo);
      v29 = sub_1D1B1312C(v27, v28, &v55);

      *(v20 + 14) = v29;
      _os_log_impl(&dword_1D16EC000, v14, v15, "Write %s to dataModel room for %s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v21, -1, -1);
      MEMORY[0x1D3893640](v20, -1, -1);
    }

    else
    {

      sub_1D18215BC(v18, type metadata accessor for AccessoryDetailsBasicInfo);
      sub_1D18215BC(v17, type metadata accessor for StaticRoom);
    }

    v30 = v0[7];
    sub_1D1821554(v0[2], v0[8], type metadata accessor for AccessoryDetails.Payload);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v32 = v0[8];
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_1D182161C(v32, v0[4], type metadata accessor for StaticServiceGroup);
        v35 = swift_task_alloc();
        v0[28] = v35;
        *v35 = v0;
        v35[1] = sub_1D180E068;
        v36 = v0[18];
        v37 = v0[4];

        return StaticServiceGroup.set(staticRoom:)();
      }

      else
      {
        sub_1D182161C(v32, v0[3], type metadata accessor for StaticEndpoint);
        v50 = swift_task_alloc();
        v0[30] = v50;
        *v50 = v0;
        v50[1] = sub_1D180E2AC;
        v51 = v0[18];
        v52 = v0[3];

        return StaticEndpoint.set(roomID:)(v51);
      }
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        sub_1D182161C(v32, v0[5], type metadata accessor for StaticService);
        v33 = swift_task_alloc();
        v0[24] = v33;
        *v33 = v0;
        v34 = sub_1D180D544;
      }

      else
      {
        sub_1D182161C(v32, v0[6], type metadata accessor for StaticAccessory);
        v33 = swift_task_alloc();
        v0[20] = v33;
        *v33 = v0;
        v34 = sub_1D180CA20;
      }

      v33[1] = v34;
      v49 = v0[18];

      return StaticRoom.room.getter();
    }
  }
}

uint64_t sub_1D180CA20(uint64_t a1)
{
  v2 = *(*v1 + 160);
  v4 = *v1;
  *(*v1 + 168) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D180CB20, 0, 0);
}

uint64_t sub_1D180CB20()
{
  v45 = v0;
  v1 = v0[21];
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[22] = v2;
    *v2 = v0;
    v2[1] = sub_1D180CF5C;
    v3 = v0[6];

    return StaticAccessory.set(room:)(v1);
  }

  else
  {
    sub_1D1820D0C();
    v5 = swift_allocError();
    swift_willThrow();
    sub_1D18215BC(v0[6], type metadata accessor for StaticAccessory);
    v6 = v0[19];
    v7 = v0[11];
    v8 = v0[2];
    sub_1D1821554(v0[18], v0[16], type metadata accessor for StaticRoom);
    sub_1D1821554(v8, v7, type metadata accessor for AccessoryDetailsBasicInfo);
    v9 = sub_1D1E6707C();
    v10 = sub_1D1E6833C();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[18];
    v13 = v0[16];
    v14 = v0[11];
    if (v11)
    {
      v40 = v0[18];
      v15 = v0[9];
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v42 = v17;
      *v16 = 136315394;
      v18 = StaticRoom.description.getter();
      v38 = v5;
      v20 = v19;
      sub_1D18215BC(v13, type metadata accessor for StaticRoom);
      v21 = sub_1D1B1312C(v18, v20, &v42);

      *(v16 + 4) = v21;
      *(v16 + 12) = 2080;
      sub_1D1821554(v14, v15, type metadata accessor for AccessoryDetails.Payload);
      v22 = sub_1D17EEED0(v15);
      v43 = 0xD000000000000019;
      v44 = 0x80000001D1EB9EC0;
      MEMORY[0x1D3890F70](v22);

      v24 = v43;
      v23 = v44;
      sub_1D18215BC(v15, type metadata accessor for AccessoryDetails.Payload);
      sub_1D18215BC(v14, type metadata accessor for AccessoryDetailsBasicInfo);
      v25 = sub_1D1B1312C(v24, v23, &v42);

      *(v16 + 14) = v25;
      _os_log_impl(&dword_1D16EC000, v9, v10, "Error committing room: %s for %s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v17, -1, -1);
      MEMORY[0x1D3893640](v16, -1, -1);

      v26 = v40;
    }

    else
    {

      sub_1D18215BC(v14, type metadata accessor for AccessoryDetailsBasicInfo);
      sub_1D18215BC(v13, type metadata accessor for StaticRoom);
      v26 = v12;
    }

    sub_1D18215BC(v26, type metadata accessor for StaticRoom);
    v28 = v0[17];
    v27 = v0[18];
    v29 = v0[16];
    v31 = v0[12];
    v30 = v0[13];
    v32 = v0[11];
    v34 = v0[8];
    v33 = v0[9];
    v36 = v0[5];
    v35 = v0[6];
    v39 = v0[4];
    v41 = v0[3];

    v37 = v0[1];

    return v37();
  }
}

uint64_t sub_1D180CF5C()
{
  v2 = *(*v1 + 176);
  v5 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = sub_1D180D1AC;
  }

  else
  {
    v3 = sub_1D180D070;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D180D070()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 48);

  sub_1D18215BC(v2, type metadata accessor for StaticAccessory);
  sub_1D18215BC(v1, type metadata accessor for StaticRoom);
  v4 = *(v0 + 136);
  v3 = *(v0 + 144);
  v5 = *(v0 + 128);
  v7 = *(v0 + 96);
  v6 = *(v0 + 104);
  v8 = *(v0 + 88);
  v10 = *(v0 + 64);
  v9 = *(v0 + 72);
  v12 = *(v0 + 40);
  v11 = *(v0 + 48);
  v15 = *(v0 + 32);
  v16 = *(v0 + 24);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1D180D1AC()
{
  v42 = v0;

  v1 = *(v0 + 184);
  sub_1D18215BC(*(v0 + 48), type metadata accessor for StaticAccessory);
  v2 = *(v0 + 152);
  v3 = *(v0 + 88);
  v4 = *(v0 + 16);
  sub_1D1821554(*(v0 + 144), *(v0 + 128), type metadata accessor for StaticRoom);
  sub_1D1821554(v4, v3, type metadata accessor for AccessoryDetailsBasicInfo);
  v5 = sub_1D1E6707C();
  v6 = sub_1D1E6833C();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 144);
  v9 = *(v0 + 128);
  v10 = *(v0 + 88);
  if (v7)
  {
    v11 = *(v0 + 72);
    v37 = v1;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v39 = v13;
    *v12 = 136315394;
    v35 = v8;
    v14 = StaticRoom.description.getter();
    v16 = v15;
    sub_1D18215BC(v9, type metadata accessor for StaticRoom);
    v17 = sub_1D1B1312C(v14, v16, &v39);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2080;
    sub_1D1821554(v10, v11, type metadata accessor for AccessoryDetails.Payload);
    v18 = sub_1D17EEED0(v11);
    v40 = 0xD000000000000019;
    v41 = 0x80000001D1EB9EC0;
    MEMORY[0x1D3890F70](v18);

    v19 = v40;
    v20 = v41;
    sub_1D18215BC(v11, type metadata accessor for AccessoryDetails.Payload);
    sub_1D18215BC(v10, type metadata accessor for AccessoryDetailsBasicInfo);
    v21 = sub_1D1B1312C(v19, v20, &v39);

    *(v12 + 14) = v21;
    _os_log_impl(&dword_1D16EC000, v5, v6, "Error committing room: %s for %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v13, -1, -1);
    MEMORY[0x1D3893640](v12, -1, -1);

    v22 = v35;
  }

  else
  {

    sub_1D18215BC(v10, type metadata accessor for AccessoryDetailsBasicInfo);
    sub_1D18215BC(v9, type metadata accessor for StaticRoom);
    v22 = v8;
  }

  sub_1D18215BC(v22, type metadata accessor for StaticRoom);
  v24 = *(v0 + 136);
  v23 = *(v0 + 144);
  v25 = *(v0 + 128);
  v27 = *(v0 + 96);
  v26 = *(v0 + 104);
  v28 = *(v0 + 88);
  v30 = *(v0 + 64);
  v29 = *(v0 + 72);
  v32 = *(v0 + 40);
  v31 = *(v0 + 48);
  v36 = *(v0 + 32);
  v38 = *(v0 + 24);

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_1D180D544(uint64_t a1)
{
  v2 = *(*v1 + 192);
  v4 = *v1;
  *(*v1 + 200) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D180D644, 0, 0);
}

uint64_t sub_1D180D644()
{
  v45 = v0;
  v1 = v0[25];
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[26] = v2;
    *v2 = v0;
    v2[1] = sub_1D180DA80;
    v3 = v0[5];

    return StaticService.set(room:)(v1);
  }

  else
  {
    sub_1D1820D0C();
    v5 = swift_allocError();
    swift_willThrow();
    sub_1D18215BC(v0[5], type metadata accessor for StaticService);
    v6 = v0[19];
    v7 = v0[11];
    v8 = v0[2];
    sub_1D1821554(v0[18], v0[16], type metadata accessor for StaticRoom);
    sub_1D1821554(v8, v7, type metadata accessor for AccessoryDetailsBasicInfo);
    v9 = sub_1D1E6707C();
    v10 = sub_1D1E6833C();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[18];
    v13 = v0[16];
    v14 = v0[11];
    if (v11)
    {
      v40 = v0[18];
      v15 = v0[9];
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v42 = v17;
      *v16 = 136315394;
      v18 = StaticRoom.description.getter();
      v38 = v5;
      v20 = v19;
      sub_1D18215BC(v13, type metadata accessor for StaticRoom);
      v21 = sub_1D1B1312C(v18, v20, &v42);

      *(v16 + 4) = v21;
      *(v16 + 12) = 2080;
      sub_1D1821554(v14, v15, type metadata accessor for AccessoryDetails.Payload);
      v22 = sub_1D17EEED0(v15);
      v43 = 0xD000000000000019;
      v44 = 0x80000001D1EB9EC0;
      MEMORY[0x1D3890F70](v22);

      v24 = v43;
      v23 = v44;
      sub_1D18215BC(v15, type metadata accessor for AccessoryDetails.Payload);
      sub_1D18215BC(v14, type metadata accessor for AccessoryDetailsBasicInfo);
      v25 = sub_1D1B1312C(v24, v23, &v42);

      *(v16 + 14) = v25;
      _os_log_impl(&dword_1D16EC000, v9, v10, "Error committing room: %s for %s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v17, -1, -1);
      MEMORY[0x1D3893640](v16, -1, -1);

      v26 = v40;
    }

    else
    {

      sub_1D18215BC(v14, type metadata accessor for AccessoryDetailsBasicInfo);
      sub_1D18215BC(v13, type metadata accessor for StaticRoom);
      v26 = v12;
    }

    sub_1D18215BC(v26, type metadata accessor for StaticRoom);
    v28 = v0[17];
    v27 = v0[18];
    v29 = v0[16];
    v31 = v0[12];
    v30 = v0[13];
    v32 = v0[11];
    v34 = v0[8];
    v33 = v0[9];
    v36 = v0[5];
    v35 = v0[6];
    v39 = v0[4];
    v41 = v0[3];

    v37 = v0[1];

    return v37();
  }
}

uint64_t sub_1D180DA80()
{
  v2 = *(*v1 + 208);
  v5 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = sub_1D180DCD0;
  }

  else
  {
    v3 = sub_1D180DB94;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D180DB94()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 40);

  sub_1D18215BC(v2, type metadata accessor for StaticService);
  sub_1D18215BC(v1, type metadata accessor for StaticRoom);
  v4 = *(v0 + 136);
  v3 = *(v0 + 144);
  v5 = *(v0 + 128);
  v7 = *(v0 + 96);
  v6 = *(v0 + 104);
  v8 = *(v0 + 88);
  v10 = *(v0 + 64);
  v9 = *(v0 + 72);
  v12 = *(v0 + 40);
  v11 = *(v0 + 48);
  v15 = *(v0 + 32);
  v16 = *(v0 + 24);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1D180DCD0()
{
  v42 = v0;

  v1 = *(v0 + 216);
  sub_1D18215BC(*(v0 + 40), type metadata accessor for StaticService);
  v2 = *(v0 + 152);
  v3 = *(v0 + 88);
  v4 = *(v0 + 16);
  sub_1D1821554(*(v0 + 144), *(v0 + 128), type metadata accessor for StaticRoom);
  sub_1D1821554(v4, v3, type metadata accessor for AccessoryDetailsBasicInfo);
  v5 = sub_1D1E6707C();
  v6 = sub_1D1E6833C();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 144);
  v9 = *(v0 + 128);
  v10 = *(v0 + 88);
  if (v7)
  {
    v11 = *(v0 + 72);
    v37 = v1;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v39 = v13;
    *v12 = 136315394;
    v35 = v8;
    v14 = StaticRoom.description.getter();
    v16 = v15;
    sub_1D18215BC(v9, type metadata accessor for StaticRoom);
    v17 = sub_1D1B1312C(v14, v16, &v39);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2080;
    sub_1D1821554(v10, v11, type metadata accessor for AccessoryDetails.Payload);
    v18 = sub_1D17EEED0(v11);
    v40 = 0xD000000000000019;
    v41 = 0x80000001D1EB9EC0;
    MEMORY[0x1D3890F70](v18);

    v19 = v40;
    v20 = v41;
    sub_1D18215BC(v11, type metadata accessor for AccessoryDetails.Payload);
    sub_1D18215BC(v10, type metadata accessor for AccessoryDetailsBasicInfo);
    v21 = sub_1D1B1312C(v19, v20, &v39);

    *(v12 + 14) = v21;
    _os_log_impl(&dword_1D16EC000, v5, v6, "Error committing room: %s for %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v13, -1, -1);
    MEMORY[0x1D3893640](v12, -1, -1);

    v22 = v35;
  }

  else
  {

    sub_1D18215BC(v10, type metadata accessor for AccessoryDetailsBasicInfo);
    sub_1D18215BC(v9, type metadata accessor for StaticRoom);
    v22 = v8;
  }

  sub_1D18215BC(v22, type metadata accessor for StaticRoom);
  v24 = *(v0 + 136);
  v23 = *(v0 + 144);
  v25 = *(v0 + 128);
  v27 = *(v0 + 96);
  v26 = *(v0 + 104);
  v28 = *(v0 + 88);
  v30 = *(v0 + 64);
  v29 = *(v0 + 72);
  v32 = *(v0 + 40);
  v31 = *(v0 + 48);
  v36 = *(v0 + 32);
  v38 = *(v0 + 24);

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_1D180E068()
{
  v2 = *(*v1 + 224);
  v5 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = sub_1D180E748;
  }

  else
  {
    v3 = sub_1D180E17C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D180E17C()
{
  v1 = v0[18];
  sub_1D18215BC(v0[4], type metadata accessor for StaticServiceGroup);
  sub_1D18215BC(v1, type metadata accessor for StaticRoom);
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[16];
  v6 = v0[12];
  v5 = v0[13];
  v7 = v0[11];
  v9 = v0[8];
  v8 = v0[9];
  v11 = v0[5];
  v10 = v0[6];
  v14 = v0[4];
  v15 = v0[3];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1D180E2AC()
{
  v1 = *(*v0 + 240);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D180E3A8, 0, 0);
}

uint64_t sub_1D180E3A8()
{
  v1 = v0[18];
  sub_1D18215BC(v0[3], type metadata accessor for StaticEndpoint);
  sub_1D18215BC(v1, type metadata accessor for StaticRoom);
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[16];
  v6 = v0[12];
  v5 = v0[13];
  v7 = v0[11];
  v9 = v0[8];
  v8 = v0[9];
  v11 = v0[5];
  v10 = v0[6];
  v14 = v0[4];
  v15 = v0[3];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1D180E4D8()
{
  v1 = *v0;
  v2 = *(*v0 + 248);
  v17 = *v0;

  v3 = v1[18];
  v4 = v1[17];
  v5 = v1[16];
  v6 = v1[13];
  v7 = v1[12];
  v8 = v1[11];
  v9 = v1[9];
  v10 = v1[8];
  v14 = v1[6];
  v15 = v1[5];
  v16 = v1[4];
  v11 = v1[3];

  v12 = *(v17 + 8);

  return v12();
}

uint64_t sub_1D180E748()
{
  v42 = v0;
  sub_1D18215BC(v0[4], type metadata accessor for StaticServiceGroup);
  v1 = v0[29];
  v2 = v0[19];
  v3 = v0[11];
  v4 = v0[2];
  sub_1D1821554(v0[18], v0[16], type metadata accessor for StaticRoom);
  sub_1D1821554(v4, v3, type metadata accessor for AccessoryDetailsBasicInfo);
  v5 = sub_1D1E6707C();
  v6 = sub_1D1E6833C();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[18];
  v9 = v0[16];
  v10 = v0[11];
  if (v7)
  {
    v11 = v0[9];
    v37 = v1;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v39 = v13;
    *v12 = 136315394;
    v35 = v8;
    v14 = StaticRoom.description.getter();
    v16 = v15;
    sub_1D18215BC(v9, type metadata accessor for StaticRoom);
    v17 = sub_1D1B1312C(v14, v16, &v39);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2080;
    sub_1D1821554(v10, v11, type metadata accessor for AccessoryDetails.Payload);
    v18 = sub_1D17EEED0(v11);
    v40 = 0xD000000000000019;
    v41 = 0x80000001D1EB9EC0;
    MEMORY[0x1D3890F70](v18);

    v19 = v40;
    v20 = v41;
    sub_1D18215BC(v11, type metadata accessor for AccessoryDetails.Payload);
    sub_1D18215BC(v10, type metadata accessor for AccessoryDetailsBasicInfo);
    v21 = sub_1D1B1312C(v19, v20, &v39);

    *(v12 + 14) = v21;
    _os_log_impl(&dword_1D16EC000, v5, v6, "Error committing room: %s for %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v13, -1, -1);
    MEMORY[0x1D3893640](v12, -1, -1);

    v22 = v35;
  }

  else
  {

    sub_1D18215BC(v10, type metadata accessor for AccessoryDetailsBasicInfo);
    sub_1D18215BC(v9, type metadata accessor for StaticRoom);
    v22 = v8;
  }

  sub_1D18215BC(v22, type metadata accessor for StaticRoom);
  v24 = v0[17];
  v23 = v0[18];
  v25 = v0[16];
  v27 = v0[12];
  v26 = v0[13];
  v28 = v0[11];
  v30 = v0[8];
  v29 = v0[9];
  v32 = v0[5];
  v31 = v0[6];
  v36 = v0[4];
  v38 = v0[3];

  v33 = v0[1];

  return v33();
}

uint64_t sub_1D180EAD8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D17C4CF0;

  return AccessoryDetailsBasicInfo.commitShouldShowInDashboard()();
}

uint64_t AccessoryDetailsBasicInfo.commitShouldShowInDashboard()()
{
  v1[3] = v0;
  v2 = type metadata accessor for AccessoryDetailsBasicInfo();
  v1[4] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[5] = swift_task_alloc();
  v4 = *(*(type metadata accessor for StaticEndpoint() - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v5 = *(*(type metadata accessor for StaticServiceGroup() - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  v6 = *(*(type metadata accessor for StaticService(0) - 8) + 64) + 15;
  v1[8] = swift_task_alloc();
  v7 = *(*(type metadata accessor for StaticAccessory(0) - 8) + 64) + 15;
  v1[9] = swift_task_alloc();
  v8 = type metadata accessor for AccessoryDetails.Payload(0);
  v1[10] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D180ECE8, 0, 0);
}

uint64_t sub_1D180ECE8()
{
  v1 = *(*(v0 + 24) + *(*(v0 + 32) + 32));
  *(v0 + 160) = v1;
  if (v1 == 2)
  {
    v3 = *(v0 + 88);
    v2 = *(v0 + 96);
    v5 = *(v0 + 64);
    v4 = *(v0 + 72);
    v7 = *(v0 + 48);
    v6 = *(v0 + 56);
    v8 = *(v0 + 40);

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    if (qword_1EC642470 != -1)
    {
      swift_once();
    }

    v11 = sub_1D1E6709C();
    *(v0 + 104) = __swift_project_value_buffer(v11, qword_1EC64F440);
    v12 = sub_1D1E6707C();
    v13 = sub_1D1E6835C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 67109120;
      *(v14 + 4) = v1 & 1;
      _os_log_impl(&dword_1D16EC000, v12, v13, "Write %{BOOL}d to dataModel shouldShowInDashboard", v14, 8u);
      MEMORY[0x1D3893640](v14, -1, -1);
    }

    v15 = *(v0 + 96);
    v16 = *(v0 + 80);
    v17 = *(v0 + 24);

    sub_1D1821554(v17, v15, type metadata accessor for AccessoryDetails.Payload);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v19 = *(v0 + 96);
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_1D182161C(v19, *(v0 + 56), type metadata accessor for StaticServiceGroup);
        v22 = swift_task_alloc();
        *(v0 + 144) = v22;
        *v22 = v0;
        v22[1] = sub_1D180F420;
        v23 = *(v0 + 56);

        return StaticServiceGroup.set(showInDashboard:)(v1 & 1);
      }

      else
      {
        sub_1D182161C(v19, *(v0 + 48), type metadata accessor for StaticEndpoint);
        v26 = swift_task_alloc();
        *(v0 + 152) = v26;
        *v26 = v0;
        v26[1] = sub_1D180F51C;
        v27 = *(v0 + 48);

        return StaticEndpoint.set(shouldShowInDashboard:)(v1 & 1);
      }
    }

    else if (EnumCaseMultiPayload)
    {
      sub_1D182161C(v19, *(v0 + 64), type metadata accessor for StaticService);
      v24 = swift_task_alloc();
      *(v0 + 128) = v24;
      *v24 = v0;
      v24[1] = sub_1D180F234;
      v25 = *(v0 + 64);

      return StaticService.service.getter();
    }

    else
    {
      sub_1D182161C(v19, *(v0 + 72), type metadata accessor for StaticAccessory);
      v20 = swift_task_alloc();
      *(v0 + 112) = v20;
      *v20 = v0;
      v20[1] = sub_1D180F120;
      v21 = *(v0 + 72);

      return StaticAccessory.set(showInDashboard:)(v1 & 1);
    }
  }
}

uint64_t sub_1D180F120()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_1D180F618;
  }

  else
  {
    v3 = sub_1D182333C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D180F234(uint64_t a1)
{
  v2 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D180F334, 0, 0);
}

uint64_t sub_1D180F334()
{
  v1 = *(v0 + 136);
  if (v1)
  {
    v2 = *(v0 + 160);
    v3 = v1;
    HMService.shouldShowInDashboard.setter(v2 & 1);
  }

  sub_1D18215BC(*(v0 + 64), type metadata accessor for StaticService);
  v5 = *(v0 + 88);
  v4 = *(v0 + 96);
  v7 = *(v0 + 64);
  v6 = *(v0 + 72);
  v9 = *(v0 + 48);
  v8 = *(v0 + 56);
  v10 = *(v0 + 40);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1D180F420()
{
  v1 = *(*v0 + 144);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D1823314, 0, 0);
}

uint64_t sub_1D180F51C()
{
  v1 = *(*v0 + 152);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D1823330, 0, 0);
}

uint64_t sub_1D180F618()
{
  v36 = v0;
  v1 = *(v0 + 120);
  v2 = *(v0 + 104);
  v3 = *(v0 + 40);
  v4 = *(v0 + 24);
  sub_1D18215BC(*(v0 + 72), type metadata accessor for StaticAccessory);
  sub_1D1821554(v4, v3, type metadata accessor for AccessoryDetailsBasicInfo);
  v5 = v1;
  v6 = sub_1D1E6707C();
  v7 = sub_1D1E6833C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 120);
    v9 = *(v0 + 160);
    v10 = *(v0 + 88);
    v11 = *(v0 + 40);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v33 = v13;
    *v12 = 136315650;
    v32 = v8;
    *(v0 + 16) = v8;
    v14 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
    v15 = sub_1D1E6789C();
    v17 = sub_1D1B1312C(v15, v16, &v33);

    *(v12 + 4) = v17;
    *(v12 + 12) = 1024;
    *(v12 + 14) = v9 & 1;
    *(v12 + 18) = 2080;
    sub_1D1821554(v11, v10, type metadata accessor for AccessoryDetails.Payload);
    v18 = sub_1D17EEED0(v10);
    v34 = 0xD000000000000019;
    v35 = 0x80000001D1EB9EC0;
    MEMORY[0x1D3890F70](v18);

    v19 = v34;
    v20 = v35;
    sub_1D18215BC(v10, type metadata accessor for AccessoryDetails.Payload);
    sub_1D18215BC(v11, type metadata accessor for AccessoryDetailsBasicInfo);
    v21 = sub_1D1B1312C(v19, v20, &v33);

    *(v12 + 20) = v21;
    _os_log_impl(&dword_1D16EC000, v6, v7, "Error '%s' committing showInDashboard: %{BOOL}d for %s", v12, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v13, -1, -1);
    MEMORY[0x1D3893640](v12, -1, -1);
  }

  else
  {
    v22 = *(v0 + 40);

    sub_1D18215BC(v22, type metadata accessor for AccessoryDetailsBasicInfo);
  }

  v24 = *(v0 + 88);
  v23 = *(v0 + 96);
  v26 = *(v0 + 64);
  v25 = *(v0 + 72);
  v28 = *(v0 + 48);
  v27 = *(v0 + 56);
  v29 = *(v0 + 40);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1D180F944()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D17C4CF0;

  return AccessoryDetailsBasicInfo.commitIsFavorite()();
}

uint64_t AccessoryDetailsBasicInfo.commitIsFavorite()()
{
  v1[3] = v0;
  v2 = type metadata accessor for AccessoryDetailsBasicInfo();
  v1[4] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[5] = swift_task_alloc();
  v4 = *(*(type metadata accessor for StaticEndpoint() - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v5 = *(*(type metadata accessor for StaticServiceGroup() - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  v6 = *(*(type metadata accessor for StaticService(0) - 8) + 64) + 15;
  v1[8] = swift_task_alloc();
  v7 = *(*(type metadata accessor for StaticAccessory(0) - 8) + 64) + 15;
  v1[9] = swift_task_alloc();
  v8 = type metadata accessor for AccessoryDetails.Payload(0);
  v1[10] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D180FB54, 0, 0);
}

uint64_t sub_1D180FB54()
{
  v1 = *(*(v0 + 24) + *(*(v0 + 32) + 36));
  *(v0 + 160) = v1;
  if (v1 == 2)
  {
    v3 = *(v0 + 88);
    v2 = *(v0 + 96);
    v5 = *(v0 + 64);
    v4 = *(v0 + 72);
    v7 = *(v0 + 48);
    v6 = *(v0 + 56);
    v8 = *(v0 + 40);

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    if (qword_1EC642470 != -1)
    {
      swift_once();
    }

    v11 = sub_1D1E6709C();
    *(v0 + 104) = __swift_project_value_buffer(v11, qword_1EC64F440);
    v12 = sub_1D1E6707C();
    v13 = sub_1D1E6835C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 67109120;
      *(v14 + 4) = v1 & 1;
      _os_log_impl(&dword_1D16EC000, v12, v13, "Write %{BOOL}d to dataModel isFavorite", v14, 8u);
      MEMORY[0x1D3893640](v14, -1, -1);
    }

    v15 = *(v0 + 96);
    v16 = *(v0 + 80);
    v17 = *(v0 + 24);

    sub_1D1821554(v17, v15, type metadata accessor for AccessoryDetails.Payload);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v19 = *(v0 + 96);
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_1D182161C(v19, *(v0 + 56), type metadata accessor for StaticServiceGroup);
        v22 = swift_task_alloc();
        *(v0 + 144) = v22;
        *v22 = v0;
        v22[1] = sub_1D1810354;
        v23 = *(v0 + 56);

        return StaticServiceGroup.set(favorite:)(v1 & 1);
      }

      else
      {
        sub_1D182161C(v19, *(v0 + 48), type metadata accessor for StaticEndpoint);
        v26 = swift_task_alloc();
        *(v0 + 152) = v26;
        *v26 = v0;
        v26[1] = sub_1D1810518;
        v27 = *(v0 + 48);

        return StaticEndpoint.set(favorite:)(v1 & 1);
      }
    }

    else if (EnumCaseMultiPayload)
    {
      sub_1D182161C(v19, *(v0 + 64), type metadata accessor for StaticService);
      v24 = swift_task_alloc();
      *(v0 + 128) = v24;
      *v24 = v0;
      v24[1] = sub_1D1810168;
      v25 = *(v0 + 64);

      return StaticService.service.getter();
    }

    else
    {
      sub_1D182161C(v19, *(v0 + 72), type metadata accessor for StaticAccessory);
      v20 = swift_task_alloc();
      *(v0 + 112) = v20;
      *v20 = v0;
      v20[1] = sub_1D180FF8C;
      v21 = *(v0 + 72);

      return StaticAccessory.set(favorite:)(v1 & 1);
    }
  }
}

uint64_t sub_1D180FF8C()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_1D18106DC;
  }

  else
  {
    v3 = sub_1D18100A0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D18100A0()
{
  sub_1D18215BC(v0[9], type metadata accessor for StaticAccessory);
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[8];
  v3 = v0[9];
  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[5];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1D1810168(uint64_t a1)
{
  v2 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1810268, 0, 0);
}

uint64_t sub_1D1810268()
{
  v1 = *(v0 + 136);
  if (v1)
  {
    v2 = *(v0 + 160);
    v3 = v1;
    HMService.isFavorite.setter(v2 & 1);
  }

  sub_1D18215BC(*(v0 + 64), type metadata accessor for StaticService);
  v5 = *(v0 + 88);
  v4 = *(v0 + 96);
  v7 = *(v0 + 64);
  v6 = *(v0 + 72);
  v9 = *(v0 + 48);
  v8 = *(v0 + 56);
  v10 = *(v0 + 40);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1D1810354()
{
  v1 = *(*v0 + 144);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D1810450, 0, 0);
}

uint64_t sub_1D1810450()
{
  sub_1D18215BC(v0[7], type metadata accessor for StaticServiceGroup);
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[8];
  v3 = v0[9];
  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[5];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1D1810518()
{
  v1 = *(*v0 + 152);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D1810614, 0, 0);
}

uint64_t sub_1D1810614()
{
  sub_1D18215BC(v0[6], type metadata accessor for StaticEndpoint);
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[8];
  v3 = v0[9];
  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[5];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1D18106DC()
{
  v36 = v0;
  v1 = *(v0 + 120);
  v2 = *(v0 + 104);
  v3 = *(v0 + 40);
  v4 = *(v0 + 24);
  sub_1D18215BC(*(v0 + 72), type metadata accessor for StaticAccessory);
  sub_1D1821554(v4, v3, type metadata accessor for AccessoryDetailsBasicInfo);
  v5 = v1;
  v6 = sub_1D1E6707C();
  v7 = sub_1D1E6833C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 120);
    v9 = *(v0 + 160);
    v10 = *(v0 + 88);
    v11 = *(v0 + 40);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v33 = v13;
    *v12 = 136315650;
    v32 = v8;
    *(v0 + 16) = v8;
    v14 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
    v15 = sub_1D1E6789C();
    v17 = sub_1D1B1312C(v15, v16, &v33);

    *(v12 + 4) = v17;
    *(v12 + 12) = 1024;
    *(v12 + 14) = v9 & 1;
    *(v12 + 18) = 2080;
    sub_1D1821554(v11, v10, type metadata accessor for AccessoryDetails.Payload);
    v18 = sub_1D17EEED0(v10);
    v34 = 0xD000000000000019;
    v35 = 0x80000001D1EB9EC0;
    MEMORY[0x1D3890F70](v18);

    v19 = v34;
    v20 = v35;
    sub_1D18215BC(v10, type metadata accessor for AccessoryDetails.Payload);
    sub_1D18215BC(v11, type metadata accessor for AccessoryDetailsBasicInfo);
    v21 = sub_1D1B1312C(v19, v20, &v33);

    *(v12 + 20) = v21;
    _os_log_impl(&dword_1D16EC000, v6, v7, "Error '%s' committing favorite: %{BOOL}d for %s", v12, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v13, -1, -1);
    MEMORY[0x1D3893640](v12, -1, -1);
  }

  else
  {
    v22 = *(v0 + 40);

    sub_1D18215BC(v22, type metadata accessor for AccessoryDetailsBasicInfo);
  }

  v24 = *(v0 + 88);
  v23 = *(v0 + 96);
  v26 = *(v0 + 64);
  v25 = *(v0 + 72);
  v28 = *(v0 + 48);
  v27 = *(v0 + 56);
  v29 = *(v0 + 40);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1D1810A08()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D17C4CF0;

  return AccessoryDetailsBasicInfo.commitIconSymbol()();
}

uint64_t AccessoryDetailsBasicInfo.commitIconSymbol()()
{
  v1[4] = v0;
  v2 = *(*(type metadata accessor for StaticEndpoint() - 8) + 64) + 15;
  v1[5] = swift_task_alloc();
  v3 = *(*(type metadata accessor for StaticService(0) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v4 = *(*(type metadata accessor for StaticAccessory(0) - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  v5 = type metadata accessor for AccessoryDetails.Payload(0);
  v1[8] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v1[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1810BB0, 0, 0);
}

uint64_t sub_1D1810BB0()
{
  v1 = v0[4];
  if (*(v1 + *(type metadata accessor for AccessoryDetailsBasicInfo() + 40)) == 92)
  {
LABEL_2:
    v2 = v0[9];
    v3 = v0[6];
    v4 = v0[7];
    v5 = v0[5];

    v6 = v0[1];

    return v6();
  }

  v8 = v0[8];
  sub_1D1821554(v1, v0[9], type metadata accessor for AccessoryDetails.Payload);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1D18215BC(v0[9], type metadata accessor for AccessoryDetails.Payload);
      goto LABEL_2;
    }

    sub_1D182161C(v0[9], v0[5], type metadata accessor for StaticEndpoint);
    v18 = IconSymbol.rawValue.getter();
    v20 = v19;
    v0[15] = v19;
    v21 = swift_task_alloc();
    v0[16] = v21;
    *v21 = v0;
    v21[1] = sub_1D18112B4;
    v22 = v0[5];

    return StaticEndpoint.set(customIconSymbol:)(v18, v20);
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1D182161C(v0[9], v0[6], type metadata accessor for StaticService);
    v0[2] = IconSymbol.rawValue.getter();
    v0[3] = v15;
    v0[12] = v15;
    v16 = swift_task_alloc();
    v0[13] = v16;
    *v16 = v0;
    v16[1] = sub_1D181108C;
    v17 = v0[6];

    return StaticService.service.getter();
  }

  else
  {
    sub_1D182161C(v0[9], v0[7], type metadata accessor for StaticAccessory);
    v10 = IconSymbol.rawValue.getter();
    v12 = v11;
    v0[10] = v11;
    v13 = swift_task_alloc();
    v0[11] = v13;
    *v13 = v0;
    v13[1] = sub_1D1810ED0;
    v14 = v0[7];

    return StaticAccessory.set(customIconSymbol:)(v10, v12);
  }
}

uint64_t sub_1D1810ED0()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D1810FE8, 0, 0);
}

uint64_t sub_1D1810FE8()
{
  sub_1D18215BC(v0[7], type metadata accessor for StaticAccessory);
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[5];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D181108C(uint64_t a1)
{
  v2 = *(*v1 + 104);
  v4 = *v1;
  *(*v1 + 112) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D181118C, 0, 0);
}

uint64_t sub_1D181118C()
{
  v18 = v0;
  v1 = v0[14];
  if (v1)
  {
    v2 = v0[12];
    v3 = v0[2];
    v4 = v1;
    v5._countAndFlagsBits = v3;
    v5._object = v2;
    IconSymbol.init(rawValue:)(v5);
    if (v15 != 92)
    {
      v17[0] = v15;
      static IconSymbol.convertToCAPackageIcon(iconSymbol:)(v17, &v16);
      if (v16 == 65)
      {
        v6 = 0;
        v7 = 0;
      }

      else
      {
        v17[1] = v16;
        v6 = HFCAPackageIconIdentifier.rawValue.getter();
      }

      HMService.customIconSymbol.setter(v6, v7);
    }
  }

  else
  {
    v8 = v0[12];
  }

  sub_1D18215BC(v0[6], type metadata accessor for StaticService);
  v9 = v0[9];
  v10 = v0[6];
  v11 = v0[7];
  v12 = v0[5];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1D18112B4()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 120);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D18113CC, 0, 0);
}

uint64_t sub_1D18113CC()
{
  sub_1D18215BC(v0[5], type metadata accessor for StaticEndpoint);
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[5];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D1811470()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v4 = 0x614E646567617473;
    if (v1 != 1)
    {
      v4 = 0x6F52646567617473;
    }

    if (*v0)
    {
      return v4;
    }

    else
    {
      return 0x64616F6C796170;
    }
  }

  else
  {
    v2 = 0xD000000000000015;
    if (v1 == 3)
    {
      v2 = 0xD000000000000013;
    }

    if (*v0 <= 4u)
    {
      return v2;
    }

    else
    {
      return 0xD000000000000010;
    }
  }
}

uint64_t sub_1D1811560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D18212E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D1811588(uint64_t a1)
{
  v2 = sub_1D1820D60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D18115C4(uint64_t a1)
{
  v2 = sub_1D1820D60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AccessoryDetailsBasicInfo.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644890, &qword_1D1E765A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v22[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1820D60();
  sub_1D1E6930C();
  v22[15] = 0;
  type metadata accessor for AccessoryDetails.Payload(0);
  sub_1D1821000(&qword_1EC644638, type metadata accessor for AccessoryDetails.Payload);
  sub_1D1E68F1C();
  if (!v2)
  {
    v11 = type metadata accessor for AccessoryDetailsBasicInfo();
    v12 = (v3 + v11[5]);
    v13 = *v12;
    v14 = v12[1];
    v22[14] = 1;
    sub_1D1E68E0C();
    v15 = v11[6];
    v22[13] = 2;
    type metadata accessor for StaticRoom(0);
    sub_1D1821000(&qword_1EC6448A0, type metadata accessor for StaticRoom);
    sub_1D1E68E5C();
    v16 = (v3 + v11[7]);
    v17 = *v16;
    v18 = v16[1];
    v22[12] = 3;
    sub_1D1E68E0C();
    v19 = *(v3 + v11[8]);
    v22[11] = 4;
    sub_1D1E68E1C();
    v20 = *(v3 + v11[9]);
    v22[10] = 5;
    sub_1D1E68E1C();
    v22[9] = *(v3 + v11[10]);
    v22[8] = 6;
    sub_1D1820DB4();
    sub_1D1E68E5C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t AccessoryDetailsBasicInfo.hash(into:)(__int128 *a1)
{
  v3 = type metadata accessor for StaticRoom(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643878, &qword_1D1E72030);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v19[-v10];
  AccessoryDetails.Payload.hash(into:)(a1);
  v12 = type metadata accessor for AccessoryDetailsBasicInfo();
  v13 = (v1 + v12[5]);
  if (v13[1])
  {
    v14 = *v13;
    sub_1D1E6922C();
    sub_1D1E678EC();
  }

  else
  {
    sub_1D1E6922C();
  }

  sub_1D1741C08(v1 + v12[6], v11, &qword_1EC643878, &qword_1D1E72030);
  if ((*(v4 + 48))(v11, 1, v3) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    sub_1D182161C(v11, v7, type metadata accessor for StaticRoom);
    sub_1D1E6922C();
    StaticRoom.hash(into:)(a1);
    sub_1D18215BC(v7, type metadata accessor for StaticRoom);
  }

  v15 = (v1 + v12[7]);
  if (v15[1])
  {
    v16 = *v15;
    sub_1D1E6922C();
    sub_1D1E678EC();
  }

  else
  {
    sub_1D1E6922C();
  }

  if (*(v1 + v12[8]) != 2)
  {
    sub_1D1E6922C();
  }

  sub_1D1E6922C();
  if (*(v1 + v12[9]) != 2)
  {
    sub_1D1E6922C();
  }

  sub_1D1E6922C();
  v17 = *(v1 + v12[10]);
  if (v17 == 92)
  {
    return sub_1D1E6922C();
  }

  sub_1D1E6922C();
  v19[15] = v17;
  IconSymbol.rawValue.getter();
  sub_1D1E678EC();
}

uint64_t AccessoryDetailsBasicInfo.hashValue.getter()
{
  sub_1D1E6920C();
  AccessoryDetailsBasicInfo.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t AccessoryDetailsBasicInfo.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643878, &qword_1D1E72030);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v41 = &v39 - v5;
  v42 = type metadata accessor for AccessoryDetails.Payload(0);
  v6 = *(*(v42 - 8) + 64);
  MEMORY[0x1EEE9AC00](v42);
  v43 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6448B0, &qword_1D1E765B0);
  v44 = *(v8 - 8);
  v45 = v8;
  v9 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v39 - v10;
  v12 = type metadata accessor for AccessoryDetailsBasicInfo();
  v13 = *(*(v12 - 1) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v14 + 24);
  v18 = type metadata accessor for StaticRoom(0);
  v19 = *(*(v18 - 8) + 56);
  v47 = v17;
  v19(&v16[v17], 1, 1, v18);
  v20 = v12[10];
  v21 = v16;
  v16[v20] = 92;
  v22 = a1[3];
  v23 = a1[4];
  v48 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_1D1820D60();
  v24 = v11;
  v25 = v46;
  sub_1D1E692FC();
  if (v25)
  {
    v28 = v47;
    __swift_destroy_boxed_opaque_existential_1(v48);

    sub_1D1741A30(v21 + v28, &qword_1EC643878, &qword_1D1E72030);
  }

  else
  {
    v26 = v41;
    v46 = v20;
    v56 = 0;
    sub_1D1821000(&qword_1EC644660, type metadata accessor for AccessoryDetails.Payload);
    v27 = v43;
    sub_1D1E68D7C();
    sub_1D182161C(v27, v21, type metadata accessor for AccessoryDetails.Payload);
    v55 = 1;
    v29 = sub_1D1E68C6C();
    v30 = v47;
    v31 = (v21 + v12[5]);
    *v31 = v29;
    v31[1] = v32;
    v43 = v32;
    v54 = 2;
    sub_1D1821000(&qword_1EC6448B8, type metadata accessor for StaticRoom);
    sub_1D1E68CBC();
    v33 = v44;
    sub_1D1820E08(v26, v21 + v30);
    v53 = 3;
    v34 = sub_1D1E68C6C();
    v35 = (v21 + v12[7]);
    *v35 = v34;
    v35[1] = v36;
    v52 = 4;
    *(v21 + v12[8]) = sub_1D1E68C7C();
    v51 = 5;
    *(v21 + v12[9]) = sub_1D1E68C7C();
    v49 = 6;
    sub_1D1820E78();
    v37 = v45;
    sub_1D1E68CBC();
    (*(v33 + 8))(v24, v37);
    *(v21 + v46) = v50;
    sub_1D1821554(v21, v40, type metadata accessor for AccessoryDetailsBasicInfo);
    __swift_destroy_boxed_opaque_existential_1(v48);
    return sub_1D18215BC(v21, type metadata accessor for AccessoryDetailsBasicInfo);
  }
}

uint64_t sub_1D18121F4()
{
  sub_1D1E6920C();
  AccessoryDetailsBasicInfo.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1812238()
{
  sub_1D1E6920C();
  AccessoryDetailsBasicInfo.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D18122C4()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x1E69E87D8] + 4);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_1D18123A8;

  return MEMORY[0x1EEE6DBF8]();
}

uint64_t sub_1D18123A8()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D1823334, 0, 0);
}

uint64_t AccessoryDetailsBasicInfo.name.getter()
{
  v1 = type metadata accessor for AccessoryDetails.Payload(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v17[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for AccessoryDetailsBasicInfo() + 20));
  if (v5[1])
  {
    v6 = *v5;
    v7 = v5[1];
  }

  else
  {
    sub_1D1821554(v0, v4, type metadata accessor for AccessoryDetails.Payload);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v18 = type metadata accessor for StaticServiceGroup();
        v9 = sub_1D1821000(&qword_1EC644688, type metadata accessor for StaticServiceGroup);
        v10 = type metadata accessor for StaticServiceGroup;
      }

      else
      {
        v18 = type metadata accessor for StaticEndpoint();
        v9 = sub_1D1821000(&qword_1EC644680, type metadata accessor for StaticEndpoint);
        v10 = type metadata accessor for StaticEndpoint;
      }
    }

    else if (EnumCaseMultiPayload)
    {
      v18 = type metadata accessor for StaticService(0);
      v9 = sub_1D1821000(&qword_1EC644690, type metadata accessor for StaticService);
      v10 = type metadata accessor for StaticService;
    }

    else
    {
      v18 = type metadata accessor for StaticAccessory(0);
      v9 = sub_1D1821000(&qword_1EC644698, type metadata accessor for StaticAccessory);
      v10 = type metadata accessor for StaticAccessory;
    }

    v11 = v10;
    v19 = v9;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
    sub_1D182161C(v4, boxed_opaque_existential_1, v11);
    v13 = v18;
    v14 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    v6 = (*(v14 + 40))(v13, v14);
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  return v6;
}

uint64_t sub_1D1812758@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for AccessoryDetailsBasicInfo() + 20));
  if (v3[1])
  {
    v4 = *v3;
    v5 = v3[1];
  }

  else
  {
    AccessoryDetails.Payload.basicInfo.getter(v10);
    v6 = v11;
    v7 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    v4 = (*(v7 + 40))(v6, v7);
    v5 = v8;
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  *a2 = v4;
  a2[1] = v5;
}

uint64_t sub_1D1812804(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for AccessoryDetailsBasicInfo() + 20));
  v5 = v4[1];

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t AccessoryDetailsBasicInfo.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for AccessoryDetailsBasicInfo() + 20));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void (*AccessoryDetailsBasicInfo.name.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x58uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 56) = v1;
  v6 = *(*(type metadata accessor for AccessoryDetails.Payload(0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 64) = v7;
  v9 = *(type metadata accessor for AccessoryDetailsBasicInfo() + 20);
  *(v5 + 80) = v9;
  v10 = (v1 + v9);
  v11 = v10[1];
  if (v11)
  {
    v12 = *v10;
    v13 = v10[1];
  }

  else
  {
    sub_1D1821554(v1, v8, type metadata accessor for AccessoryDetails.Payload);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        *(v5 + 24) = type metadata accessor for StaticServiceGroup();
        v15 = sub_1D1821000(&qword_1EC644688, type metadata accessor for StaticServiceGroup);
        v16 = type metadata accessor for StaticServiceGroup;
      }

      else
      {
        *(v5 + 24) = type metadata accessor for StaticEndpoint();
        v15 = sub_1D1821000(&qword_1EC644680, type metadata accessor for StaticEndpoint);
        v16 = type metadata accessor for StaticEndpoint;
      }
    }

    else if (EnumCaseMultiPayload)
    {
      *(v5 + 24) = type metadata accessor for StaticService(0);
      v15 = sub_1D1821000(&qword_1EC644690, type metadata accessor for StaticService);
      v16 = type metadata accessor for StaticService;
    }

    else
    {
      *(v5 + 24) = type metadata accessor for StaticAccessory(0);
      v15 = sub_1D1821000(&qword_1EC644698, type metadata accessor for StaticAccessory);
      v16 = type metadata accessor for StaticAccessory;
    }

    v17 = v16;
    *(v5 + 32) = v15;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v5);
    sub_1D182161C(v8, boxed_opaque_existential_1, v17);
    v19 = *(v5 + 24);
    v20 = *(v5 + 32);
    __swift_project_boxed_opaque_existential_1(v5, v19);
    v12 = (*(v20 + 40))(v19, v20);
    v13 = v21;
    __swift_destroy_boxed_opaque_existential_1(v5);
    v11 = 0;
  }

  *(v5 + 72) = v11;
  *(v5 + 40) = v12;
  *(v5 + 48) = v13;

  return sub_1D1812B80;
}

void sub_1D1812B80(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v4 = *(*a1 + 80);
  v5 = *(*a1 + 64);
  v6 = *(*a1 + 72);
  v7 = *(*a1 + 48);
  v8 = *(*a1 + 56);
  if (a2)
  {
    v9 = (v8 + v4);
    v10 = *(*a1 + 48);

    *v9 = v3;
    v9[1] = v7;
    v11 = v2[6];
  }

  else
  {
    v12 = *(*a1 + 72);

    v13 = (v8 + v4);
    *v13 = v3;
    v13[1] = v7;
  }

  free(v5);

  free(v2);
}

uint64_t AccessoryDetailsBasicInfo.statusString.getter()
{
  v1 = v0;
  v2 = type metadata accessor for StaticEndpoint();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v55 - v8;
  v10 = type metadata accessor for StaticServiceGroup();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for StaticService(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for StatusStrings.Options();
  v19 = *(*(v18 - 1) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for StaticAccessory(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for AccessoryDetails.Payload(0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v55 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1821554(v1, v29, type metadata accessor for AccessoryDetails.Payload);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1D182161C(v29, v13, type metadata accessor for StaticServiceGroup);
      v39 = v18[11];
      v40 = sub_1D1E669FC();
      (*(*(v40 - 8) + 56))(&v21[v39], 1, 1, v40);
      *v21 = 65793;
      *(v21 + 2) = 1;
      v21[6] = 0;
      v21[v18[12]] = 2;
      v41 = &v21[v18[13]];
      v41[4] = 0;
      *v41 = 2;
      v42 = type metadata accessor for StaticMatterDevice();
      (*(*(v42 - 8) + 56))(v9, 1, 1, v42);
      v34 = StaticServiceGroup.statusString(with:associatedMatterDevice:)(v21);
      v44 = v43;
      sub_1D1741A30(v9, &qword_1EC643650, &qword_1D1E71D40);
      sub_1D18215BC(v21, type metadata accessor for StatusStrings.Options);
      if (!v44)
      {
        v34 = 0;
      }

      v37 = type metadata accessor for StaticServiceGroup;
      v38 = v13;
    }

    else
    {
      sub_1D182161C(v29, v5, type metadata accessor for StaticEndpoint);
      v50 = v18[11];
      v51 = sub_1D1E669FC();
      (*(*(v51 - 8) + 56))(&v21[v50], 1, 1, v51);
      *v21 = 65793;
      *(v21 + 2) = 1;
      v21[6] = 0;
      v21[v18[12]] = 2;
      v52 = &v21[v18[13]];
      v52[4] = 0;
      *v52 = 2;
      v53 = type metadata accessor for StaticMatterDevice();
      (*(*(v53 - 8) + 56))(v9, 1, 1, v53);
      v34 = StaticEndpoint.statusString(with:associatedMatterDevice:)(v21);
      sub_1D1741A30(v9, &qword_1EC643650, &qword_1D1E71D40);
      sub_1D18215BC(v21, type metadata accessor for StatusStrings.Options);
      v37 = type metadata accessor for StaticEndpoint;
      v38 = v5;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1D182161C(v29, v17, type metadata accessor for StaticService);
    v45 = v18[11];
    v46 = sub_1D1E669FC();
    (*(*(v46 - 8) + 56))(&v21[v45], 1, 1, v46);
    *v21 = 65793;
    *(v21 + 2) = 257;
    v21[6] = 0;
    v21[v18[12]] = 2;
    v47 = &v21[v18[13]];
    v47[4] = 0;
    *v47 = 2;
    v34 = StaticService.statusString(with:)(v21);
    v49 = v48;
    sub_1D18215BC(v21, type metadata accessor for StatusStrings.Options);
    if (!v49)
    {
      v34 = 0;
    }

    v37 = type metadata accessor for StaticService;
    v38 = v17;
  }

  else
  {
    sub_1D182161C(v29, v25, type metadata accessor for StaticAccessory);
    v31 = v18[11];
    v32 = sub_1D1E669FC();
    (*(*(v32 - 8) + 56))(&v21[v31], 1, 1, v32);
    *v21 = 65793;
    *(v21 + 2) = 1;
    v21[6] = 0;
    v21[v18[12]] = 2;
    v33 = &v21[v18[13]];
    v33[4] = 0;
    *v33 = 2;
    v34 = StaticAccessory.statusString(with:)(v21);
    v36 = v35;
    sub_1D18215BC(v21, type metadata accessor for StatusStrings.Options);
    if (!v36)
    {
      v34 = 0;
    }

    v37 = type metadata accessor for StaticAccessory;
    v38 = v25;
  }

  sub_1D18215BC(v38, v37);
  return v34;
}

id AccessoryDetailsBasicInfo.detailedStatusTitle.getter()
{
  v1 = v0;
  v2 = type metadata accessor for StaticService(0);
  v58 = *(v2 - 8);
  v3 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for StatusStrings.Options();
  v6 = *(*(v60 - 8) + 64);
  MEMORY[0x1EEE9AC00](v60);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v59 = &v57 - v11;
  v12 = type metadata accessor for StateSnapshot(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for StaticAccessory(0);
  v17 = *(*(v16 - 1) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for AccessoryDetails.Payload(0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1821554(v1, v23, type metadata accessor for AccessoryDetails.Payload);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    v25 = type metadata accessor for AccessoryDetails.Payload;
    v26 = v23;
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload)
  {
    sub_1D182161C(v23, v5, type metadata accessor for StaticService);
    if (v5[*(v2 + 32)] == 1)
    {
      v25 = type metadata accessor for StaticService;
      v26 = v5;
      goto LABEL_6;
    }

    v39 = v60;
    v40 = *(v60 + 44);
    v41 = sub_1D1E669FC();
    (*(*(v41 - 8) + 56))(&v8[v40], 1, 1, v41);
    *v8 = 65793;
    *(v8 + 2) = 1;
    v8[6] = 1;
    v8[*(v39 + 48)] = 2;
    v42 = &v8[*(v39 + 52)];
    v42[4] = 0;
    *v42 = 2;
    v43 = StaticService.statusString(with:)(v8);
    v45 = v44;
    sub_1D18215BC(v8, type metadata accessor for StatusStrings.Options);
    if (v45)
    {
      v46 = v43;
    }

    else
    {
      v46 = 0;
    }

    sub_1D18215BC(v5, type metadata accessor for StaticService);
    return v46;
  }

  else
  {
    sub_1D182161C(v23, v19, type metadata accessor for StaticAccessory);
    if (v19[v16[31]] == 1)
    {
      v25 = type metadata accessor for StaticAccessory;
      v26 = v19;
LABEL_6:
      sub_1D18215BC(v26, v25);
      return 0;
    }

    if (qword_1EE07DC58 != -1)
    {
      swift_once();
    }

    v28 = qword_1EE07DC60;
    swift_getKeyPath();
    v62 = v28;
    sub_1D1821000(&qword_1EE07CFB0, type metadata accessor for DataModel);
    sub_1D1E66CAC();

    v29 = OBJC_IVAR____TtC13HomeDataModel9DataModel__currentStateSnapshot;
    swift_beginAccess();
    sub_1D1821554(v28 + v29, v15, type metadata accessor for StateSnapshot);
    v30 = *&v15[*(v12 + 76)];

    v32 = sub_1D1782540(v31);
    sub_1D18215BC(v15, type metadata accessor for StateSnapshot);
    AccessoryDetailsBasicInfo.accessoryNoResponseContextFlags(residents:supportsCHIP:requiresThreadRouter:)(v32, v19[v16[34]], v19[v16[35]], v61);

    v33 = v61[0];
    v34 = v61[1];
    v35 = v61[2];
    v36 = v61[3];
    v37 = v61[4];
    v38 = v59;
    StaticAccessory.primaryStaticService.getter(v59);
    if ((*(v58 + 48))(v38, 1, v2) == 1)
    {
      sub_1D18215BC(v19, type metadata accessor for StaticAccessory);
      sub_1D1741A30(v38, &qword_1EC6436F0, &qword_1D1E99BC0);
      return 0;
    }

    v47 = 256;
    if (!v34)
    {
      v47 = 0;
    }

    v48 = v47 | v33;
    v49 = 0x10000;
    if (!v35)
    {
      v49 = 0;
    }

    v50 = 0x1000000;
    if (!v36)
    {
      v50 = 0;
    }

    v51 = v48 | v49 | v50;
    v52 = v60;
    v53 = *(v60 + 44);
    v54 = sub_1D1E669FC();
    (*(*(v54 - 8) + 56))(&v8[v53], 1, 1, v54);
    *v8 = 65793;
    *(v8 + 2) = 1;
    v8[6] = 1;
    v8[*(v52 + 48)] = 2;
    v55 = &v8[*(v52 + 52)];
    v55[4] = v37;
    *v55 = v51;
    v56 = StaticService.statusString(with:)(v8);
    sub_1D18215BC(v8, type metadata accessor for StatusStrings.Options);
    sub_1D18215BC(v19, type metadata accessor for StaticAccessory);
    sub_1D18215BC(v38, type metadata accessor for StaticService);
    return v56;
  }
}

void AccessoryDetailsBasicInfo.accessoryNoResponseContextFlags(residents:supportsCHIP:requiresThreadRouter:)(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, BOOL *a4@<X8>)
{
  v30 = a2;
  v31 = a3;
  v28 = a4;
  v5 = type metadata accessor for StaticResident();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(a1 + 16);
  v10 = 1 << *(a1 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(a1 + 56);
  v13 = (v10 + 63) >> 6;

  v14 = 0;
  while (1)
  {
    if (!v12)
    {
      while (1)
      {
        v15 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v15 >= v13)
        {

          v22 = 0;
          goto LABEL_19;
        }

        v12 = *(a1 + 56 + 8 * v15);
        ++v14;
        if (v12)
        {
          v14 = v15;
          goto LABEL_11;
        }
      }

      __break(1u);
      goto LABEL_22;
    }

LABEL_11:
    sub_1D1821554(*(a1 + 48) + *(v6 + 72) * (__clz(__rbit64(v12)) | (v14 << 6)), v9, type metadata accessor for StaticResident);
    v16 = *&v9[*(v5 + 32)];
    if (*(v16 + 16))
    {
      v17 = *(v16 + 40);
      sub_1D1E6920C();
      MEMORY[0x1D3892850](1);
      v18 = sub_1D1E6926C();
      v19 = -1 << *(v16 + 32);
      v20 = v18 & ~v19;
      if ((*(v16 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
      {
        break;
      }
    }

LABEL_5:
    v12 &= v12 - 1;
    sub_1D18215BC(v9, type metadata accessor for StaticResident);
  }

  v21 = ~v19;
  while (*(*(v16 + 48) + v20) != 1)
  {
    v20 = (v20 + 1) & v21;
    if (((*(v16 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  sub_1D18215BC(v9, type metadata accessor for StaticResident);
  v22 = 1;
LABEL_19:
  v23 = MobileGestalt_get_current_device();
  if (v23)
  {
    v24 = v23;
    v25 = v29 != 0;
    threadRadioCapability = MobileGestalt_get_threadRadioCapability();

    v27 = v28;
    *v28 = v25;
    v27[1] = v22;
    v27[2] = threadRadioCapability;
    v27[3] = v30 & 1;
    v27[4] = v31 & 1;
    return;
  }

LABEL_22:
  __break(1u);
}

id AccessoryDetailsBasicInfo.detailedStatusString.getter()
{
  v59 = type metadata accessor for StaticService(0);
  v55 = *(v59 - 8);
  v0 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v56 = &v55 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for StatusStrings.Options();
  v2 = *(*(v58 - 8) + 64);
  MEMORY[0x1EEE9AC00](v58);
  v4 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v57 = &v55 - v7;
  v8 = type metadata accessor for StaticAccessory(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AccessoryDetails.Payload(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for StateSnapshot(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  v20 = qword_1EE07DC60;
  swift_getKeyPath();
  v66 = v20;
  sub_1D1821000(&qword_1EE07CFB0, type metadata accessor for DataModel);
  sub_1D1E66CAC();

  v21 = OBJC_IVAR____TtC13HomeDataModel9DataModel__currentStateSnapshot;
  swift_beginAccess();
  sub_1D1821554(v20 + v21, v19, type metadata accessor for StateSnapshot);
  v22 = *&v19[*(v16 + 76)];

  v24 = sub_1D1782540(v23);
  sub_1D18215BC(v19, type metadata accessor for StateSnapshot);
  sub_1D1821554(v60, v15, type metadata accessor for AccessoryDetails.Payload);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {

    sub_1D18215BC(v15, type metadata accessor for AccessoryDetails.Payload);
    return 0;
  }

  if (EnumCaseMultiPayload)
  {
    v33 = v56;
    sub_1D182161C(v15, v56, type metadata accessor for StaticService);
    AccessoryDetailsBasicInfo.accessoryNoResponseContextFlags(residents:supportsCHIP:requiresThreadRouter:)(v24, *(v33 + *(v59 + 68)), *(v33 + *(v59 + 72)), &v61);

    v34 = 256;
    if (!v62)
    {
      v34 = 0;
    }

    v35 = v34 | v61;
    v36 = 0x10000;
    if (!v63)
    {
      v36 = 0;
    }

    v37 = 0x1000000;
    if (!v64)
    {
      v37 = 0;
    }

    v38 = v35 | v36 | v37;
    v39 = v65 != 0;
    v40 = v58;
    v41 = *(v58 + 44);
    v42 = sub_1D1E669FC();
    (*(*(v42 - 8) + 56))(&v4[v41], 1, 1, v42);
    *v4 = 65793;
    *(v4 + 2) = 3;
    v4[6] = 0;
    v4[*(v40 + 48)] = 2;
    v43 = &v4[*(v40 + 52)];
    v43[4] = v39;
    *v43 = v38;
    v44 = StaticService.statusString(with:)(v4);
    sub_1D18215BC(v4, type metadata accessor for StatusStrings.Options);
    v45 = v33;
  }

  else
  {
    sub_1D182161C(v15, v11, type metadata accessor for StaticAccessory);
    AccessoryDetailsBasicInfo.accessoryNoResponseContextFlags(residents:supportsCHIP:requiresThreadRouter:)(v24, v11[*(v8 + 136)], v11[*(v8 + 140)], &v61);

    v26 = v61;
    v27 = v62;
    v28 = v63;
    v29 = v64;
    v30 = v65;
    v31 = v57;
    StaticAccessory.primaryStaticService.getter(v57);
    if ((*(v55 + 48))(v31, 1, v59) == 1)
    {
      sub_1D18215BC(v11, type metadata accessor for StaticAccessory);
      sub_1D1741A30(v31, &qword_1EC6436F0, &qword_1D1E99BC0);
      return 0;
    }

    v46 = 256;
    if (!v27)
    {
      v46 = 0;
    }

    v47 = v46 | v26;
    v48 = 0x10000;
    if (!v28)
    {
      v48 = 0;
    }

    v49 = 0x1000000;
    if (!v29)
    {
      v49 = 0;
    }

    v50 = v47 | v48 | v49;
    v51 = v58;
    v52 = *(v58 + 44);
    v53 = sub_1D1E669FC();
    (*(*(v53 - 8) + 56))(&v4[v52], 1, 1, v53);
    *v4 = 65793;
    *(v4 + 2) = 3;
    v4[6] = 0;
    v4[*(v51 + 48)] = 2;
    v54 = &v4[*(v51 + 52)];
    v54[4] = v30 != 0;
    *v54 = v50;
    v44 = StaticService.statusString(with:)(v4);
    sub_1D18215BC(v4, type metadata accessor for StatusStrings.Options);
    sub_1D18215BC(v11, type metadata accessor for StaticAccessory);
    v45 = v31;
  }

  sub_1D18215BC(v45, type metadata accessor for StaticService);
  return v44;
}

uint64_t AccessoryDetailsBasicInfo.isReachable.getter()
{
  v1 = type metadata accessor for AccessoryDetails.Payload(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v14[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1821554(v0, v4, type metadata accessor for AccessoryDetails.Payload);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v15 = type metadata accessor for StaticServiceGroup();
      v6 = sub_1D1821000(&qword_1EC644688, type metadata accessor for StaticServiceGroup);
      v7 = type metadata accessor for StaticServiceGroup;
    }

    else
    {
      v15 = type metadata accessor for StaticEndpoint();
      v6 = sub_1D1821000(&qword_1EC644680, type metadata accessor for StaticEndpoint);
      v7 = type metadata accessor for StaticEndpoint;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v15 = type metadata accessor for StaticService(0);
    v6 = sub_1D1821000(&qword_1EC644690, type metadata accessor for StaticService);
    v7 = type metadata accessor for StaticService;
  }

  else
  {
    v15 = type metadata accessor for StaticAccessory(0);
    v6 = sub_1D1821000(&qword_1EC644698, type metadata accessor for StaticAccessory);
    v7 = type metadata accessor for StaticAccessory;
  }

  v8 = v7;
  v16 = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
  sub_1D182161C(v4, boxed_opaque_existential_1, v8);
  v10 = v15;
  v11 = v16;
  __swift_project_boxed_opaque_existential_1(v14, v15);
  LOBYTE(v10) = (*(v11 + 48))(v10, v11);
  __swift_destroy_boxed_opaque_existential_1(v14);
  return v10 & 1;
}

void *AccessoryDetailsBasicInfo.roomsForHome.getter()
{
  v0 = type metadata accessor for StaticRoom(0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v0);
  v25 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v23 - v5;
  if (qword_1EE07DC58 != -1)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v7 = qword_1EE07DC60;
    swift_getKeyPath();
    v26[0] = v7;
    sub_1D1821000(&qword_1EE07CFB0, type metadata accessor for DataModel);
    sub_1D1E66CAC();

    v8 = v7 + OBJC_IVAR____TtC13HomeDataModel9DataModel__currentStateSnapshot;
    swift_beginAccess();
    v9 = *&v8[*(type metadata accessor for StateSnapshot(0) + 52)];
    v10 = v9[2];
    if (v10)
    {
      v11 = sub_1D18043CC(v9[2], 0);
      v12 = sub_1D1804B34(v26, v11 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v10, v9);
      v23 = v26[4];
      v24 = v26[3];

      sub_1D1716918();
      if (v12 == v10)
      {
        goto LABEL_6;
      }

      __break(1u);
    }

    v11 = MEMORY[0x1E69E7CC0];
LABEL_6:
    v26[0] = v11;

    sub_1D181F33C(v26);

    v13 = v26[0];
    v14 = v26[0][2];
    if (!v14)
    {
      break;
    }

    v15 = 0;
    v16 = MEMORY[0x1E69E7CC0];
    v24 = v0;
    while (v15 < v13[2])
    {
      v17 = (*(v1 + 80) + 32) & ~*(v1 + 80);
      v18 = *(v1 + 72);
      sub_1D1821554(v13 + v17 + v18 * v15, v6, type metadata accessor for StaticRoom);
      if (v6[*(v0 + 28)])
      {
        sub_1D18215BC(v6, type metadata accessor for StaticRoom);
      }

      else
      {
        sub_1D182161C(v6, v25, type metadata accessor for StaticRoom);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26[0] = v16;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D178D1D4(0, v16[2] + 1, 1);
          v16 = v26[0];
        }

        v21 = v16[2];
        v20 = v16[3];
        if (v21 >= v20 >> 1)
        {
          sub_1D178D1D4(v20 > 1, v21 + 1, 1);
          v16 = v26[0];
        }

        v16[2] = v21 + 1;
        sub_1D182161C(v25, v16 + v17 + v21 * v18, type metadata accessor for StaticRoom);
        v0 = v24;
      }

      if (v14 == ++v15)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    swift_once();
  }

  v16 = MEMORY[0x1E69E7CC0];
LABEL_18:

  return v16;
}

uint64_t sub_1D18149FC()
{
  v1 = v0;
  v2 = type metadata accessor for StaticServiceGroup();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v30[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AccessoryDetails.Payload(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v30[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v30[-1] - v11;
  sub_1D1821554(v1, &v30[-1] - v11, type metadata accessor for AccessoryDetails.Payload);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_1D182161C(v12, v5, type metadata accessor for StaticServiceGroup);
    v13 = *&v5[*(v2 + 36)];

    v14 = type metadata accessor for StaticServiceGroup;
    v15 = v5;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643350, &qword_1D1E72040);
    v16 = sub_1D1E66A7C();
    v17 = *(v16 - 8);
    v18 = *(v17 + 72);
    v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1D1E739C0;
    sub_1D1821554(v1, v10, type metadata accessor for AccessoryDetails.Payload);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v31 = v2;
        v22 = sub_1D1821000(&qword_1EC644688, type metadata accessor for StaticServiceGroup);
        v23 = type metadata accessor for StaticServiceGroup;
      }

      else
      {
        v31 = type metadata accessor for StaticEndpoint();
        v22 = sub_1D1821000(&qword_1EC644680, type metadata accessor for StaticEndpoint);
        v23 = type metadata accessor for StaticEndpoint;
      }
    }

    else if (EnumCaseMultiPayload)
    {
      v31 = type metadata accessor for StaticService(0);
      v22 = sub_1D1821000(&qword_1EC644690, type metadata accessor for StaticService);
      v23 = type metadata accessor for StaticService;
    }

    else
    {
      v31 = type metadata accessor for StaticAccessory(0);
      v22 = sub_1D1821000(&qword_1EC644698, type metadata accessor for StaticAccessory);
      v23 = type metadata accessor for StaticAccessory;
    }

    v24 = v23;
    v32 = v22;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v30);
    sub_1D182161C(v10, boxed_opaque_existential_1, v24);
    v26 = v31;
    v27 = v32;
    __swift_project_boxed_opaque_existential_1(v30, v31);
    (*(v27 + 56))(v26, v27);
    __swift_destroy_boxed_opaque_existential_1(v30);
    v13 = sub_1D179BE14(v20);
    swift_setDeallocating();
    (*(v17 + 8))(v20 + v19, v16);
    swift_deallocClassInstance();
    v14 = type metadata accessor for AccessoryDetails.Payload;
    v15 = v12;
  }

  sub_1D18215BC(v15, v14);
  return v13;
}

uint64_t sub_1D1814E4C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D18149FC();
  v11 = v1;
  v4 = sub_1D17879F4(sub_1D1821538, &v10, v3);

  v12 = v4;

  sub_1D181F33C(&v12);

  v5 = v12;
  if (v12[2])
  {
    v6 = type metadata accessor for StaticRoom(0);
    v7 = *(v6 - 8);
    sub_1D1821554(v5 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), a1, type metadata accessor for StaticRoom);

    return (*(v7 + 56))(a1, 0, 1, v6);
  }

  else
  {

    v9 = type metadata accessor for StaticRoom(0);
    return (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
  }
}

uint64_t sub_1D1814FCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  v4 = qword_1EE07DC60;
  swift_getKeyPath();
  sub_1D1821000(&qword_1EE07CFB0, type metadata accessor for DataModel);
  sub_1D1E66CAC();

  v5 = v4 + OBJC_IVAR____TtC13HomeDataModel9DataModel__currentStateSnapshot;
  swift_beginAccess();
  v6 = *(v5 + *(type metadata accessor for StateSnapshot(0) + 52));
  if (*(v6 + 16))
  {

    v7 = sub_1D1742188(a1);
    if (v8)
    {
      v9 = v7;
      v10 = *(v6 + 56);
      v11 = type metadata accessor for StaticRoom(0);
      v12 = *(v11 - 8);
      sub_1D1821554(v10 + *(v12 + 72) * v9, a2, type metadata accessor for StaticRoom);

      return (*(v12 + 56))(a2, 0, 1, v11);
    }
  }

  v14 = type metadata accessor for StaticRoom(0);
  return (*(*(v14 - 8) + 56))(a2, 1, 1, v14);
}

BOOL AccessoryDetailsBasicInfo.hasMultipleRooms.getter()
{
  v1 = v0;
  v2 = type metadata accessor for StaticServiceGroup();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v31[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AccessoryDetails.Payload(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v31[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v31[-1] - v11;
  sub_1D1821554(v1, &v31[-1] - v11, type metadata accessor for AccessoryDetails.Payload);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_1D182161C(v12, v5, type metadata accessor for StaticServiceGroup);
    v13 = *&v5[*(v2 + 36)];

    v14 = type metadata accessor for StaticServiceGroup;
    v15 = v5;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643350, &qword_1D1E72040);
    v16 = sub_1D1E66A7C();
    v17 = *(v16 - 8);
    v18 = *(v17 + 72);
    v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1D1E739C0;
    sub_1D1821554(v1, v10, type metadata accessor for AccessoryDetails.Payload);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v32 = v2;
        v22 = sub_1D1821000(&qword_1EC644688, type metadata accessor for StaticServiceGroup);
        v23 = type metadata accessor for StaticServiceGroup;
      }

      else
      {
        v32 = type metadata accessor for StaticEndpoint();
        v22 = sub_1D1821000(&qword_1EC644680, type metadata accessor for StaticEndpoint);
        v23 = type metadata accessor for StaticEndpoint;
      }
    }

    else if (EnumCaseMultiPayload)
    {
      v32 = type metadata accessor for StaticService(0);
      v22 = sub_1D1821000(&qword_1EC644690, type metadata accessor for StaticService);
      v23 = type metadata accessor for StaticService;
    }

    else
    {
      v32 = type metadata accessor for StaticAccessory(0);
      v22 = sub_1D1821000(&qword_1EC644698, type metadata accessor for StaticAccessory);
      v23 = type metadata accessor for StaticAccessory;
    }

    v24 = v23;
    v33 = v22;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v31);
    sub_1D182161C(v10, boxed_opaque_existential_1, v24);
    v26 = v32;
    v27 = v33;
    __swift_project_boxed_opaque_existential_1(v31, v32);
    (*(v27 + 56))(v26, v27);
    __swift_destroy_boxed_opaque_existential_1(v31);
    v13 = sub_1D179BE14(v20);
    swift_setDeallocating();
    (*(v17 + 8))(v20 + v19, v16);
    swift_deallocClassInstance();
    v14 = type metadata accessor for AccessoryDetails.Payload;
    v15 = v12;
  }

  sub_1D18215BC(v15, v14);
  v28 = *(v13 + 16);

  return v28 > 1;
}

uint64_t AccessoryDetailsBasicInfo.room.getter@<X0>(uint64_t a1@<X8>)
{
  v76 = a1;
  v2 = sub_1D1E66A7C();
  v70 = *(v2 - 8);
  v71 = v2;
  v3 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v68 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for AccessoryDetails.Payload(0);
  v5 = *(*(v74 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v74);
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v59 - v9;
  v11 = type metadata accessor for StaticRoom(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v72 = &v59 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643878, &qword_1D1E72030);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v73 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v69 = &v59 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v59 - v24;
  v26 = *(type metadata accessor for AccessoryDetailsBasicInfo() + 24);
  v75 = v1;
  sub_1D1741C08(v1 + v26, v25, &qword_1EC643878, &qword_1D1E72030);
  v27 = *(v12 + 48);
  if (v27(v25, 1, v11) == 1)
  {
    v67 = v27;
    sub_1D1741A30(v25, &qword_1EC643878, &qword_1D1E72030);
    if (qword_1EE07DC58 != -1)
    {
      swift_once();
    }

    v28 = qword_1EE07DC60;
    swift_getKeyPath();
    v29 = OBJC_IVAR____TtC13HomeDataModel9DataModel___observationRegistrar;
    v78[0] = v28;
    v30 = sub_1D1821000(&qword_1EE07CFB0, type metadata accessor for DataModel);
    v63 = v29;
    v61 = v30;
    sub_1D1E66CAC();

    v31 = v28 + OBJC_IVAR____TtC13HomeDataModel9DataModel__currentStateSnapshot;
    swift_beginAccess();
    v60 = type metadata accessor for StateSnapshot(0);
    v32 = *(v60 + 52);
    v62 = v31;
    v33 = *(v31 + v32);
    sub_1D1821554(v75, v10, type metadata accessor for AccessoryDetails.Payload);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v65 = v16;
    v66 = v8;
    v64 = v11;
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v79 = type metadata accessor for StaticServiceGroup();
        v35 = sub_1D1821000(&qword_1EC644688, type metadata accessor for StaticServiceGroup);
        v36 = type metadata accessor for StaticServiceGroup;
      }

      else
      {
        v79 = type metadata accessor for StaticEndpoint();
        v35 = sub_1D1821000(&qword_1EC644680, type metadata accessor for StaticEndpoint);
        v36 = type metadata accessor for StaticEndpoint;
      }
    }

    else if (EnumCaseMultiPayload)
    {
      v79 = type metadata accessor for StaticService(0);
      v35 = sub_1D1821000(&qword_1EC644690, type metadata accessor for StaticService);
      v36 = type metadata accessor for StaticService;
    }

    else
    {
      v79 = type metadata accessor for StaticAccessory(0);
      v35 = sub_1D1821000(&qword_1EC644698, type metadata accessor for StaticAccessory);
      v36 = type metadata accessor for StaticAccessory;
    }

    v39 = v36;
    v80 = v35;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v78);
    sub_1D182161C(v10, boxed_opaque_existential_1, v39);
    v42 = v79;
    v41 = v80;
    __swift_project_boxed_opaque_existential_1(v78, v79);
    v43 = *(v41 + 56);

    v44 = v68;
    v43(v42, v41);
    if (*(v33 + 16) && (v45 = sub_1D1742188(v44), (v46 & 1) != 0))
    {
      v47 = v69;
      sub_1D1821554(*(v33 + 56) + *(v12 + 72) * v45, v69, type metadata accessor for StaticRoom);
      (*(v70 + 8))(v44, v71);

      v48 = v64;
      (*(v12 + 56))(v47, 0, 1, v64);
      v49 = v72;
      sub_1D182161C(v47, v72, type metadata accessor for StaticRoom);
      v38 = v76;
      v37 = v65;
      v50 = v66;
      v51 = v73;
    }

    else
    {

      (*(v70 + 8))(v44, v71);
      v52 = v69;
      v48 = v64;
      (*(v12 + 56))(v69, 1, 1, v64);
      swift_getKeyPath();
      v77 = v28;
      sub_1D1E66CAC();

      v53 = *(v60 + 20);
      v54 = type metadata accessor for StaticHome();
      v49 = v72;
      sub_1D1821554(v62 + v53 + *(v54 + 28), v72, type metadata accessor for StaticRoom);
      v55 = v67(v52, 1, v48);
      v38 = v76;
      v37 = v65;
      v50 = v66;
      v51 = v73;
      if (v55 != 1)
      {
        sub_1D1741A30(v52, &qword_1EC643878, &qword_1D1E72030);
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v78);
    sub_1D1821554(v75, v50, type metadata accessor for AccessoryDetails.Payload);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1D1814E4C(v51);
      v56 = v67;
      if (v67(v51, 1, v48) == 1)
      {
        sub_1D182161C(v49, v37, type metadata accessor for StaticRoom);
        if (v56(v51, 1, v48) != 1)
        {
          sub_1D1741A30(v51, &qword_1EC643878, &qword_1D1E72030);
        }

        goto LABEL_24;
      }

      sub_1D18215BC(v49, type metadata accessor for StaticRoom);
      v57 = v51;
    }

    else
    {
      v57 = v49;
    }

    sub_1D182161C(v57, v37, type metadata accessor for StaticRoom);
LABEL_24:
    sub_1D18215BC(v50, type metadata accessor for AccessoryDetails.Payload);
    return sub_1D182161C(v37, v38, type metadata accessor for StaticRoom);
  }

  v37 = v25;
  v38 = v76;
  return sub_1D182161C(v37, v38, type metadata accessor for StaticRoom);
}

uint64_t sub_1D1815F50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticRoom(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1821554(a1, v8, type metadata accessor for StaticRoom);
  v9 = *(type metadata accessor for AccessoryDetailsBasicInfo() + 24);
  sub_1D1741A30(a2 + v9, &qword_1EC643878, &qword_1D1E72030);
  sub_1D182161C(v8, a2 + v9, type metadata accessor for StaticRoom);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t AccessoryDetailsBasicInfo.room.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AccessoryDetailsBasicInfo() + 24);
  sub_1D1741A30(v1 + v3, &qword_1EC643878, &qword_1D1E72030);
  sub_1D182161C(a1, v1 + v3, type metadata accessor for StaticRoom);
  v4 = type metadata accessor for StaticRoom(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*AccessoryDetailsBasicInfo.room.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = type metadata accessor for StaticRoom(0);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v9 = malloc(v8);
  }

  v5[4] = v9;
  AccessoryDetailsBasicInfo.room.getter(v9);
  return sub_1D1816244;
}

void sub_1D1816244(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  v5 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = **a1;
  if (a2)
  {
    sub_1D1821554((*a1)[4], v3, type metadata accessor for StaticRoom);
    v8 = *(type metadata accessor for AccessoryDetailsBasicInfo() + 24);
    sub_1D1741A30(v7 + v8, &qword_1EC643878, &qword_1D1E72030);
    sub_1D182161C(v3, v7 + v8, type metadata accessor for StaticRoom);
    (*(v6 + 56))(v7 + v8, 0, 1, v5);
    sub_1D18215BC(v4, type metadata accessor for StaticRoom);
  }

  else
  {
    v9 = *(type metadata accessor for AccessoryDetailsBasicInfo() + 24);
    sub_1D1741A30(v7 + v9, &qword_1EC643878, &qword_1D1E72030);
    sub_1D182161C(v4, v7 + v9, type metadata accessor for StaticRoom);
    (*(v6 + 56))(v7 + v9, 0, 1, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t AccessoryDetailsBasicInfo.roomName.getter()
{
  v1 = type metadata accessor for StaticRoom(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for AccessoryDetailsBasicInfo() + 28));
  if (v5[1])
  {
    v6 = *v5;
    v7 = v5[1];
  }

  else
  {
    AccessoryDetailsBasicInfo.room.getter(v4);
    v8 = &v4[*(v1 + 20)];
    v6 = *v8;
    v9 = *(v8 + 1);

    sub_1D18215BC(v4, type metadata accessor for StaticRoom);
  }

  return v6;
}

uint64_t sub_1D1816498@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for StaticRoom(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (a1 + *(type metadata accessor for AccessoryDetailsBasicInfo() + 28));
  if (v8[1])
  {
    v9 = *v8;
    v10 = v8[1];
  }

  else
  {
    AccessoryDetailsBasicInfo.room.getter(v7);
    v11 = &v7[*(v4 + 20)];
    v9 = *v11;
    v10 = *(v11 + 1);

    sub_1D18215BC(v7, type metadata accessor for StaticRoom);
  }

  *a2 = v9;
  a2[1] = v10;
}

uint64_t AccessoryDetailsBasicInfo.roomName.setter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticRoom(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v34 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v34 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v34 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v34 - v15;
  result = AccessoryDetailsBasicInfo.roomsForHome.getter();
  v18 = result;
  v19 = *(result + 16);
  if (v19)
  {
    v20 = 0;
    while (v20 < *(v18 + 16))
    {
      sub_1D1821554(v18 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v20, v11, type metadata accessor for StaticRoom);
      v21 = &v11[*(v4 + 20)];
      v22 = *v21 == a1 && *(v21 + 1) == a2;
      if (v22 || (sub_1D1E6904C() & 1) != 0)
      {

        sub_1D182161C(v11, v14, type metadata accessor for StaticRoom);
        sub_1D182161C(v14, v16, type metadata accessor for StaticRoom);
        v28 = type metadata accessor for AccessoryDetailsBasicInfo();
        v29 = v35;
        v30 = (v35 + *(v28 + 28));
        v31 = v30[1];

        *v30 = 0;
        v30[1] = 0;
        v32 = v34;
        sub_1D182161C(v16, v34, type metadata accessor for StaticRoom);
        v33 = *(v28 + 24);
        sub_1D1741A30(v29 + v33, &qword_1EC643878, &qword_1D1E72030);
        sub_1D182161C(v32, v29 + v33, type metadata accessor for StaticRoom);
        return (*(v5 + 56))(v29 + v33, 0, 1, v4);
      }

      ++v20;
      result = sub_1D18215BC(v11, type metadata accessor for StaticRoom);
      if (v19 == v20)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:

    v23 = type metadata accessor for AccessoryDetailsBasicInfo();
    v24 = *(v23 + 24);
    v25 = v35;
    sub_1D1741A30(v35 + v24, &qword_1EC643878, &qword_1D1E72030);
    (*(v5 + 56))(v25 + v24, 1, 1, v4);
    v26 = (v25 + *(v23 + 28));
    v27 = v26[1];

    *v26 = a1;
    v26[1] = a2;
  }

  return result;
}

void (*AccessoryDetailsBasicInfo.roomName.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = type metadata accessor for StaticRoom(0);
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(*(v3 - 8) + 64));
  }

  v5 = v4;
  a1[3] = v4;
  v6 = (v1 + *(type metadata accessor for AccessoryDetailsBasicInfo() + 28));
  if (v6[1])
  {
    v7 = *v6;
    v8 = v6[1];
  }

  else
  {
    AccessoryDetailsBasicInfo.room.getter(v5);
    v9 = (v5 + *(v3 + 20));
    v7 = *v9;
    v8 = v9[1];

    sub_1D18215BC(v5, type metadata accessor for StaticRoom);
  }

  *a1 = v7;
  a1[1] = v8;

  return sub_1D1816984;
}

void sub_1D1816984(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  if (a2)
  {
    v6 = a1[1];

    AccessoryDetailsBasicInfo.roomName.setter(v3, v2);
  }

  else
  {
    AccessoryDetailsBasicInfo.roomName.setter(*a1, v2);
  }

  free(v4);
}

uint64_t AccessoryDetailsBasicInfo.preemptivelySetRoom(_:)(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = type metadata accessor for StaticRoom(0);
  v3[9] = v4;
  v5 = *(v4 - 8);
  v3[10] = v5;
  v6 = *(v5 + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v3[14] = updated;
  v8 = *(*(updated - 8) + 64) + 15;
  v3[15] = swift_task_alloc();
  v9 = *(*(type metadata accessor for StateSnapshot(0) - 8) + 64) + 15;
  v3[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1816B2C, 0, 0);
}

uint64_t sub_1D1816B2C()
{
  *(v0 + 136) = sub_1D1E67E1C();
  *(v0 + 144) = sub_1D1E67E0C();
  v2 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1816BC4, v2, v1);
}

uint64_t sub_1D1816BC4()
{
  v1 = *(v0 + 144);

  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D1816C5C, 0, 0);
}

uint64_t sub_1D1816C5C()
{
  v1 = *(v0 + 136);
  *(v0 + 152) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1816CE8, v3, v2);
}

uint64_t sub_1D1816CE8()
{
  v1 = *(v0 + 152);

  *(v0 + 160) = qword_1EE07DC60;

  return MEMORY[0x1EEE6DFA0](sub_1D1816D5C, 0, 0);
}

uint64_t sub_1D1816D5C()
{
  v1 = *(v0 + 136);
  *(v0 + 168) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1816DE8, v3, v2);
}

uint64_t sub_1D1816DE8()
{
  v2 = v0[20];
  v1 = v0[21];

  swift_getKeyPath();
  v0[5] = v2;
  sub_1D1821000(&qword_1EE07CFB0, type metadata accessor for DataModel);
  sub_1D1E66CAC();

  v3 = *(v2 + OBJC_IVAR____TtC13HomeDataModel9DataModel__currentHome);
  v0[22] = v3;
  v4 = v3;

  return MEMORY[0x1EEE6DFA0](sub_1D1816EE0, 0, 0);
}

uint64_t sub_1D1816EE0()
{
  if (v0[22])
  {
    v1 = v0[17];
    v0[23] = sub_1D1E67E0C();
    v3 = sub_1D1E67D4C();

    return MEMORY[0x1EEE6DFA0](sub_1D1816FE0, v3, v2);
  }

  else
  {
    v5 = v0[15];
    v4 = v0[16];
    v7 = v0[12];
    v6 = v0[13];
    v8 = v0[11];

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_1D1816FE0()
{
  v1 = *(v0 + 184);

  return MEMORY[0x1EEE6DFA0](sub_1D1817048, 0, 0);
}

uint64_t sub_1D1817048()
{
  v1 = *(v0 + 136);
  *(v0 + 192) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D18170D4, v3, v2);
}

uint64_t sub_1D18170D4()
{
  v1 = *(v0 + 192);

  return MEMORY[0x1EEE6DFA0](sub_1D181713C, 0, 0);
}

uint64_t sub_1D181713C()
{
  v1 = *(v0 + 136);
  *(v0 + 200) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D18171C8, v3, v2);
}

uint64_t sub_1D18171C8()
{
  v1 = v0[25];
  v2 = v0[20];

  v3 = OBJC_IVAR____TtC13HomeDataModel9DataModel_homeManager;
  swift_beginAccess();
  v4 = *(v2 + v3);
  v0[26] = v4;
  v5 = v4;

  return MEMORY[0x1EEE6DFA0](sub_1D1817264, 0, 0);
}

uint64_t sub_1D1817264()
{
  if (*(v0 + 208))
  {
    v1 = *(v0 + 136);
    *(v0 + 216) = sub_1D1E67E0C();
    v3 = sub_1D1E67D4C();

    return MEMORY[0x1EEE6DFA0](sub_1D181736C, v3, v2);
  }

  else
  {

    v5 = *(v0 + 120);
    v4 = *(v0 + 128);
    v7 = *(v0 + 96);
    v6 = *(v0 + 104);
    v8 = *(v0 + 88);

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_1D181736C()
{
  v1 = *(v0 + 216);

  if (qword_1EE07AE28 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D1817404, 0, 0);
}

uint64_t sub_1D1817404()
{
  v1 = *(v0 + 136);
  *(v0 + 224) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1817490, v3, v2);
}

uint64_t sub_1D1817490()
{
  v1 = *(v0 + 224);

  *(v0 + 232) = qword_1EE07AE30;

  return MEMORY[0x1EEE6DFA0](sub_1D1817504, 0, 0);
}

uint64_t sub_1D1817504()
{
  v1 = v0[26];
  v2 = v0[22];
  v3 = v0[14];
  *v0[15] = v2;
  swift_storeEnumTagMultiPayload();
  v4 = v2;
  v5 = swift_task_alloc();
  v0[30] = v5;
  *v5 = v0;
  v5[1] = sub_1D18175D4;
  v6 = v0[29];
  v8 = v0[15];
  v7 = v0[16];

  return sub_1D1E5A250(v7, v8, v1, v4, 0);
}

uint64_t sub_1D18175D4()
{
  v1 = *(*v0 + 240);
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 120);
  v5 = *v0;

  sub_1D18215BC(v3, type metadata accessor for StateSnapshot.UpdateType);
  sub_1D18215BC(v2, type metadata accessor for StateSnapshot);

  return MEMORY[0x1EEE6DFA0](sub_1D1817730, 0, 0);
}

uint64_t sub_1D1817730()
{
  v1 = *(v0 + 136);
  *(v0 + 248) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D18177BC, v3, v2);
}

uint64_t sub_1D18177BC()
{
  v1 = *(v0 + 248);

  *(v0 + 256) = AccessoryDetailsBasicInfo.roomsForHome.getter();

  return MEMORY[0x1EEE6DFA0](sub_1D181782C, 0, 0);
}

void sub_1D181782C()
{
  v1 = v0[32];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v5 = v0[9];
    v4 = v0[10];
    while (v3 < *(v1 + 16))
    {
      v6 = v0[11];
      v8 = v0[6];
      v7 = v0[7];
      sub_1D1821554(v0[32] + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v3, v6, type metadata accessor for StaticRoom);
      v9 = (v6 + *(v5 + 20));
      v10 = *v9 == v8 && v9[1] == v7;
      if (v10 || (v11 = v0[6], v12 = v0[7], (sub_1D1E6904C() & 1) != 0))
      {
        v16 = v0[32];
        v17 = v0[26];
        v18 = v0[22];
        v19 = v0[12];
        v20 = v0[13];
        v22 = v0[10];
        v21 = v0[11];
        v24 = v0[8];
        v23 = v0[9];

        sub_1D182161C(v21, v19, type metadata accessor for StaticRoom);
        sub_1D182161C(v19, v20, type metadata accessor for StaticRoom);
        v25 = *(type metadata accessor for AccessoryDetailsBasicInfo() + 24);
        sub_1D1741A30(v24 + v25, &qword_1EC643878, &qword_1D1E72030);
        sub_1D182161C(v20, v24 + v25, type metadata accessor for StaticRoom);
        (*(v22 + 56))(v24 + v25, 0, 1, v23);
        goto LABEL_13;
      }

      ++v3;
      sub_1D18215BC(v0[11], type metadata accessor for StaticRoom);
      if (v2 == v3)
      {
        v13 = v0[32];
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_11:
    v14 = v0[26];
    v15 = v0[22];

LABEL_13:
    v27 = v0[15];
    v26 = v0[16];
    v29 = v0[12];
    v28 = v0[13];
    v30 = v0[11];

    v31 = v0[1];

    v31();
  }
}

uint64_t AccessoryDetailsBasicInfo.displayName.getter()
{
  v1 = type metadata accessor for StaticRoom(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v26[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AccessoryDetails.Payload(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (v0 + *(type metadata accessor for AccessoryDetailsBasicInfo() + 20));
  if (v9[1])
  {
    v10 = *v9;
    v11 = v9[1];
  }

  else
  {
    sub_1D1821554(v0, v8, type metadata accessor for AccessoryDetails.Payload);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v27 = type metadata accessor for StaticServiceGroup();
        v13 = sub_1D1821000(&qword_1EC644688, type metadata accessor for StaticServiceGroup);
        v14 = type metadata accessor for StaticServiceGroup;
      }

      else
      {
        v27 = type metadata accessor for StaticEndpoint();
        v13 = sub_1D1821000(&qword_1EC644680, type metadata accessor for StaticEndpoint);
        v14 = type metadata accessor for StaticEndpoint;
      }
    }

    else if (EnumCaseMultiPayload)
    {
      v27 = type metadata accessor for StaticService(0);
      v13 = sub_1D1821000(&qword_1EC644690, type metadata accessor for StaticService);
      v14 = type metadata accessor for StaticService;
    }

    else
    {
      v27 = type metadata accessor for StaticAccessory(0);
      v13 = sub_1D1821000(&qword_1EC644698, type metadata accessor for StaticAccessory);
      v14 = type metadata accessor for StaticAccessory;
    }

    v15 = v14;
    v28 = v13;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v26);
    sub_1D182161C(v8, boxed_opaque_existential_1, v15);
    v17 = v27;
    v18 = v28;
    __swift_project_boxed_opaque_existential_1(v26, v27);
    v10 = (*(v18 + 40))(v17, v18);
    v11 = v19;
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  AccessoryDetailsBasicInfo.room.getter(v4);
  v20 = &v4[*(v1 + 20)];
  v22 = *v20;
  v21 = v20[1];

  sub_1D18215BC(v4, type metadata accessor for StaticRoom);
  v26[0] = v10;
  v26[1] = v11;
  v26[2] = v22;
  v27 = v21;
  v23 = DeviceDisplayNames.displayName.getter();

  return v23;
}

uint64_t sub_1D1817DA0()
{
  v1[12] = v0;
  v2 = type metadata accessor for AccessoryDetailsBasicInfo();
  v1[13] = v2;
  v3 = *(v2 - 8);
  v1[14] = v3;
  v1[15] = *(v3 + 64);
  v1[16] = swift_task_alloc();
  v4 = *(*(type metadata accessor for StaticHome() - 8) + 64) + 15;
  v1[17] = swift_task_alloc();
  v5 = type metadata accessor for StateSnapshot(0);
  v1[18] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v1[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1817EC4, 0, 0);
}

uint64_t sub_1D1817EC4()
{
  v1 = (v0[12] + *(v0[13] + 28));
  v0[20] = *v1;
  v2 = v1[1];
  v0[21] = v2;
  if (v2)
  {
    v0[22] = sub_1D1E67E1C();

    v0[23] = sub_1D1E67E0C();
    v4 = sub_1D1E67D4C();

    return MEMORY[0x1EEE6DFA0](sub_1D1817FD0, v4, v3);
  }

  else
  {
    v5 = v0[19];
    v6 = v0[16];
    v7 = v0[17];

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1D1817FD0()
{
  v1 = *(v0 + 184);

  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D1818068, 0, 0);
}

uint64_t sub_1D1818068()
{
  v1 = *(v0 + 176);
  *(v0 + 192) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D18180F4, v3, v2);
}

uint64_t sub_1D18180F4()
{
  v1 = *(v0 + 192);

  *(v0 + 200) = qword_1EE07DC60;

  return MEMORY[0x1EEE6DFA0](sub_1D1818168, 0, 0);
}

uint64_t sub_1D1818168()
{
  v1 = *(v0 + 176);
  *(v0 + 208) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D18181F4, v3, v2);
}

uint64_t sub_1D18181F4()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[19];

  swift_getKeyPath();
  v0[11] = v2;
  sub_1D1821000(&qword_1EE07CFB0, type metadata accessor for DataModel);
  sub_1D1E66CAC();

  v4 = OBJC_IVAR____TtC13HomeDataModel9DataModel__currentStateSnapshot;
  swift_beginAccess();
  sub_1D1821554(v2 + v4, v3, type metadata accessor for StateSnapshot);

  return MEMORY[0x1EEE6DFA0](sub_1D181831C, 0, 0);
}

uint64_t sub_1D181831C()
{
  v1 = v0[19];
  sub_1D1821554(v1 + *(v0[18] + 20), v0[17], type metadata accessor for StaticHome);
  sub_1D18215BC(v1, type metadata accessor for StateSnapshot);
  v2 = swift_task_alloc();
  v0[27] = v2;
  *v2 = v0;
  v2[1] = sub_1D18183F4;
  v3 = v0[17];

  return StaticHome.home.getter();
}

uint64_t sub_1D18183F4(uint64_t a1)
{
  v2 = *(*v1 + 216);
  v3 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 224) = a1;

  sub_1D18215BC(v3, type metadata accessor for StaticHome);

  return MEMORY[0x1EEE6DFA0](sub_1D1818528, 0, 0);
}

uint64_t sub_1D1818528()
{
  v1 = v0[28];
  if (v1)
  {
    v3 = v0[20];
    v2 = v0[21];
    v5 = v0[15];
    v4 = v0[16];
    v6 = v0[14];
    v7 = v0[12];
    v8 = sub_1D1E677EC();
    sub_1D1821554(v7, v4, type metadata accessor for AccessoryDetailsBasicInfo);
    v9 = (*(v6 + 80) + 24) & ~*(v6 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = v1;
    sub_1D182161C(v4, v10 + v9, type metadata accessor for AccessoryDetailsBasicInfo);
    v11 = (v10 + ((v5 + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v11 = v3;
    v11[1] = v2;
    v0[6] = sub_1D1821684;
    v0[7] = v10;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = sub_1D1819E6C;
    v0[5] = &block_descriptor_4;
    v12 = _Block_copy(v0 + 2);
    v13 = v0[7];
    v14 = v1;

    [v14 addRoomWithName:v8 completionHandler:v12];
    _Block_release(v12);
  }

  else
  {
    v15 = v0[21];
  }

  v16 = v0[19];
  v17 = v0[16];
  v18 = v0[17];

  v19 = v0[1];

  return v19();
}

uint64_t sub_1D181870C(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for AccessoryDetailsBasicInfo();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v15 = *(*(v14 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v14 - 8);
  v18 = &v25 - v17;
  if (a1)
  {
    v19 = sub_1D1E67E7C();
    (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
    sub_1D1821554(a4, &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AccessoryDetailsBasicInfo);
    v20 = (*(v12 + 80) + 48) & ~*(v12 + 80);
    v21 = swift_allocObject();
    v21[2] = 0;
    v21[3] = 0;
    v21[4] = a3;
    v21[5] = a1;
    sub_1D182161C(&v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, type metadata accessor for AccessoryDetailsBasicInfo);
    v22 = (v21 + ((v13 + v20 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v22 = a5;
    v22[1] = a6;
    v23 = a1;
    v24 = a3;

    sub_1D17C6EF0(0, 0, v18, &unk_1D1E76898, v21);
  }

  return result;
}

uint64_t sub_1D181891C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[17] = a7;
  v8[18] = a8;
  v8[15] = a5;
  v8[16] = a6;
  v8[14] = a4;
  v9 = *(*(type metadata accessor for AccessoryDetailsBasicInfo() - 8) + 64) + 15;
  v8[19] = swift_task_alloc();
  v10 = sub_1D1E66A7C();
  v8[20] = v10;
  v11 = *(v10 - 8);
  v8[21] = v11;
  v12 = *(v11 + 64) + 15;
  v8[22] = swift_task_alloc();
  v13 = *(*(type metadata accessor for StaticEndpoint() - 8) + 64) + 15;
  v8[23] = swift_task_alloc();
  v14 = *(*(type metadata accessor for StaticServiceGroup() - 8) + 64) + 15;
  v8[24] = swift_task_alloc();
  v15 = *(*(type metadata accessor for StaticService(0) - 8) + 64) + 15;
  v8[25] = swift_task_alloc();
  v16 = *(*(type metadata accessor for StaticAccessory(0) - 8) + 64) + 15;
  v8[26] = swift_task_alloc();
  v17 = type metadata accessor for AccessoryDetails.Payload(0);
  v8[27] = v17;
  v18 = *(*(v17 - 8) + 64) + 15;
  v8[28] = swift_task_alloc();
  v8[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1818AFC, 0, 0);
}

uint64_t sub_1D1818AFC()
{
  v1 = *(v0 + 112);
  *(v0 + 96) = v1;
  sub_1D1821898();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644920, &qword_1D1E768A0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 120);
    sub_1D16EEE20((v0 + 56), v0 + 16);
    v4 = *(v0 + 40);
    v5 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v4);
    (*(v5 + 16))(v3, v4, v5);
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  else
  {
    *(v0 + 88) = 0;
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    sub_1D1741A30(v0 + 56, &qword_1EC644928, &qword_1D1E768A8);
  }

  v6 = *(v0 + 216);
  sub_1D1821554(*(v0 + 128), *(v0 + 232), type metadata accessor for AccessoryDetails.Payload);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = *(v0 + 232);
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v13 = *(v0 + 192);
      v14 = *(v0 + 120);
      sub_1D182161C(v8, v13, type metadata accessor for StaticServiceGroup);
      v15 = swift_task_alloc();
      *(v0 + 272) = v15;
      *(v15 + 16) = v13;
      *(v15 + 24) = v14;
      v16 = *(MEMORY[0x1E69E88A0] + 4);
      v17 = swift_task_alloc();
      *(v0 + 280) = v17;
      *v17 = v0;
      v17[1] = sub_1D18192F8;
      v18 = MEMORY[0x1E69E7CA8] + 8;
      v19 = MEMORY[0x1E69E7CA8] + 8;
      v20 = MEMORY[0x1E69E7CA8] + 8;

      return MEMORY[0x1EEE6DD58](v17, v18, v19, 0, 0, &unk_1D1E768B0, v15, v20);
    }

    else
    {
      v24 = *(v0 + 176);
      v25 = *(v0 + 120);
      sub_1D182161C(v8, *(v0 + 184), type metadata accessor for StaticEndpoint);
      v26 = [v25 uniqueIdentifier];
      sub_1D1E66A5C();

      v27 = swift_task_alloc();
      *(v0 + 288) = v27;
      *v27 = v0;
      v27[1] = sub_1D1819510;
      v28 = *(v0 + 176);
      v29 = *(v0 + 184);

      return StaticEndpoint.set(roomID:)(v28);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1D182161C(v8, *(v0 + 200), type metadata accessor for StaticService);
    v21 = swift_task_alloc();
    *(v0 + 256) = v21;
    *v21 = v0;
    v21[1] = sub_1D1819108;
    v22 = *(v0 + 200);
    v23 = *(v0 + 120);

    return StaticService.set(room:)(v23);
  }

  else
  {
    sub_1D182161C(v8, *(v0 + 208), type metadata accessor for StaticAccessory);
    v9 = swift_task_alloc();
    *(v0 + 240) = v9;
    *v9 = v0;
    v9[1] = sub_1D1818F18;
    v10 = *(v0 + 208);
    v11 = *(v0 + 120);

    return StaticAccessory.set(room:)(v11);
  }
}

uint64_t sub_1D1818F18()
{
  v2 = *(*v1 + 240);
  v5 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = sub_1D1819744;
  }

  else
  {
    v3 = sub_1D181902C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D181902C()
{
  sub_1D18215BC(v0[26], type metadata accessor for StaticAccessory);
  v2 = v0[28];
  v1 = v0[29];
  v4 = v0[25];
  v3 = v0[26];
  v6 = v0[23];
  v5 = v0[24];
  v7 = v0[22];
  v8 = v0[19];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1D1819108()
{
  v2 = *(*v1 + 256);
  v5 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v3 = sub_1D1819AD8;
  }

  else
  {
    v3 = sub_1D181921C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D181921C()
{
  sub_1D18215BC(v0[25], type metadata accessor for StaticService);
  v2 = v0[28];
  v1 = v0[29];
  v4 = v0[25];
  v3 = v0[26];
  v6 = v0[23];
  v5 = v0[24];
  v7 = v0[22];
  v8 = v0[19];

  v9 = v0[1];

  return v9();
}

void sub_1D18192F8()
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = *(v2 + 272);

    MEMORY[0x1EEE6DFA0](sub_1D1819434, 0, 0);
  }
}

uint64_t sub_1D1819434()
{
  sub_1D18215BC(v0[24], type metadata accessor for StaticServiceGroup);
  v2 = v0[28];
  v1 = v0[29];
  v4 = v0[25];
  v3 = v0[26];
  v6 = v0[23];
  v5 = v0[24];
  v7 = v0[22];
  v8 = v0[19];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1D1819510()
{
  v1 = *(*v0 + 288);
  v2 = *(*v0 + 176);
  v3 = *(*v0 + 168);
  v4 = *(*v0 + 160);
  v6 = *v0;

  (*(v3 + 8))(v2, v4);

  return MEMORY[0x1EEE6DFA0](sub_1D1819668, 0, 0);
}

uint64_t sub_1D1819668()
{
  sub_1D18215BC(v0[23], type metadata accessor for StaticEndpoint);
  v2 = v0[28];
  v1 = v0[29];
  v4 = v0[25];
  v3 = v0[26];
  v6 = v0[23];
  v5 = v0[24];
  v7 = v0[22];
  v8 = v0[19];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1D1819744()
{
  v37 = v0;
  sub_1D18215BC(v0[26], type metadata accessor for StaticAccessory);
  v1 = v0[31];
  if (qword_1EC642470 != -1)
  {
    swift_once();
  }

  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[16];
  v5 = sub_1D1E6709C();
  __swift_project_value_buffer(v5, qword_1EC64F440);
  sub_1D1821554(v4, v2, type metadata accessor for AccessoryDetailsBasicInfo);
  v6 = v1;

  v7 = sub_1D1E6707C();
  v8 = sub_1D1E6833C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[28];
    v32 = v0[18];
    v33 = v0[19];
    v10 = v0[17];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v34 = v12;
    *v11 = 136315650;
    v0[13] = v1;
    v13 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
    v14 = sub_1D1E6789C();
    v16 = sub_1D1B1312C(v14, v15, &v34);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_1D1B1312C(v10, v32, &v34);
    *(v11 + 22) = 2080;
    sub_1D1821554(v33, v9, type metadata accessor for AccessoryDetails.Payload);
    v17 = sub_1D17EEED0(v9);
    v35 = 0xD000000000000019;
    v36 = 0x80000001D1EB9EC0;
    MEMORY[0x1D3890F70](v17);

    v18 = v35;
    v19 = v36;
    sub_1D18215BC(v9, type metadata accessor for AccessoryDetails.Payload);
    sub_1D18215BC(v33, type metadata accessor for AccessoryDetailsBasicInfo);
    v20 = sub_1D1B1312C(v18, v19, &v34);

    *(v11 + 24) = v20;
    _os_log_impl(&dword_1D16EC000, v7, v8, "Error '%s' committing suggested room: %s for %s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v12, -1, -1);
    MEMORY[0x1D3893640](v11, -1, -1);
  }

  else
  {
    v21 = v0[19];

    sub_1D18215BC(v21, type metadata accessor for AccessoryDetailsBasicInfo);
  }

  v23 = v0[28];
  v22 = v0[29];
  v25 = v0[25];
  v24 = v0[26];
  v27 = v0[23];
  v26 = v0[24];
  v28 = v0[22];
  v29 = v0[19];

  v30 = v0[1];

  return v30();
}

uint64_t sub_1D1819AD8()
{
  v37 = v0;
  sub_1D18215BC(v0[25], type metadata accessor for StaticService);
  v1 = v0[33];
  if (qword_1EC642470 != -1)
  {
    swift_once();
  }

  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[16];
  v5 = sub_1D1E6709C();
  __swift_project_value_buffer(v5, qword_1EC64F440);
  sub_1D1821554(v4, v2, type metadata accessor for AccessoryDetailsBasicInfo);
  v6 = v1;

  v7 = sub_1D1E6707C();
  v8 = sub_1D1E6833C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[28];
    v32 = v0[18];
    v33 = v0[19];
    v10 = v0[17];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v34 = v12;
    *v11 = 136315650;
    v0[13] = v1;
    v13 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
    v14 = sub_1D1E6789C();
    v16 = sub_1D1B1312C(v14, v15, &v34);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_1D1B1312C(v10, v32, &v34);
    *(v11 + 22) = 2080;
    sub_1D1821554(v33, v9, type metadata accessor for AccessoryDetails.Payload);
    v17 = sub_1D17EEED0(v9);
    v35 = 0xD000000000000019;
    v36 = 0x80000001D1EB9EC0;
    MEMORY[0x1D3890F70](v17);

    v18 = v35;
    v19 = v36;
    sub_1D18215BC(v9, type metadata accessor for AccessoryDetails.Payload);
    sub_1D18215BC(v33, type metadata accessor for AccessoryDetailsBasicInfo);
    v20 = sub_1D1B1312C(v18, v19, &v34);

    *(v11 + 24) = v20;
    _os_log_impl(&dword_1D16EC000, v7, v8, "Error '%s' committing suggested room: %s for %s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v12, -1, -1);
    MEMORY[0x1D3893640](v11, -1, -1);
  }

  else
  {
    v21 = v0[19];

    sub_1D18215BC(v21, type metadata accessor for AccessoryDetailsBasicInfo);
  }

  v23 = v0[28];
  v22 = v0[29];
  v25 = v0[25];
  v24 = v0[26];
  v27 = v0[23];
  v26 = v0[24];
  v28 = v0[22];
  v29 = v0[19];

  v30 = v0[1];

  return v30();
}

void sub_1D1819E6C(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t AccessoryDetailsBasicInfo.shouldShowInDashboard.getter()
{
  v1 = type metadata accessor for AccessoryDetails.Payload(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v15[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + *(type metadata accessor for AccessoryDetailsBasicInfo() + 32));
  if (v5 == 2)
  {
    sub_1D1821554(v0, v4, type metadata accessor for AccessoryDetails.Payload);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v16 = type metadata accessor for StaticServiceGroup();
        v7 = sub_1D1821000(&qword_1EC644688, type metadata accessor for StaticServiceGroup);
        v8 = type metadata accessor for StaticServiceGroup;
      }

      else
      {
        v16 = type metadata accessor for StaticEndpoint();
        v7 = sub_1D1821000(&qword_1EC644680, type metadata accessor for StaticEndpoint);
        v8 = type metadata accessor for StaticEndpoint;
      }
    }

    else if (EnumCaseMultiPayload)
    {
      v16 = type metadata accessor for StaticService(0);
      v7 = sub_1D1821000(&qword_1EC644690, type metadata accessor for StaticService);
      v8 = type metadata accessor for StaticService;
    }

    else
    {
      v16 = type metadata accessor for StaticAccessory(0);
      v7 = sub_1D1821000(&qword_1EC644698, type metadata accessor for StaticAccessory);
      v8 = type metadata accessor for StaticAccessory;
    }

    v9 = v8;
    v17 = v7;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
    sub_1D182161C(v4, boxed_opaque_existential_1, v9);
    v11 = v16;
    v12 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    LOBYTE(v5) = (*(v12 + 64))(v11, v12);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  return v5 & 1;
}

uint64_t sub_1D181A174@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for AccessoryDetailsBasicInfo();
  v5 = *(a1 + *(result + 32));
  if (v5 == 2)
  {
    AccessoryDetails.Payload.basicInfo.getter(v8);
    v6 = v9;
    v7 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    LOBYTE(v5) = (*(v7 + 64))(v6, v7);
    result = __swift_destroy_boxed_opaque_existential_1(v8);
  }

  *a2 = v5 & 1;
  return result;
}

uint64_t AccessoryDetailsBasicInfo.shouldShowInDashboard.setter(char a1)
{
  result = type metadata accessor for AccessoryDetailsBasicInfo();
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t (*AccessoryDetailsBasicInfo.shouldShowInDashboard.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x40uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 40) = v1;
  v6 = *(*(type metadata accessor for AccessoryDetails.Payload(0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 48) = v7;
  v9 = *(type metadata accessor for AccessoryDetailsBasicInfo() + 32);
  *(v5 + 56) = v9;
  v10 = *(v1 + v9);
  if (v10 == 2)
  {
    sub_1D1821554(v1, v8, type metadata accessor for AccessoryDetails.Payload);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        *(v5 + 24) = type metadata accessor for StaticServiceGroup();
        v12 = sub_1D1821000(&qword_1EC644688, type metadata accessor for StaticServiceGroup);
        v13 = type metadata accessor for StaticServiceGroup;
      }

      else
      {
        *(v5 + 24) = type metadata accessor for StaticEndpoint();
        v12 = sub_1D1821000(&qword_1EC644680, type metadata accessor for StaticEndpoint);
        v13 = type metadata accessor for StaticEndpoint;
      }
    }

    else if (EnumCaseMultiPayload)
    {
      *(v5 + 24) = type metadata accessor for StaticService(0);
      v12 = sub_1D1821000(&qword_1EC644690, type metadata accessor for StaticService);
      v13 = type metadata accessor for StaticService;
    }

    else
    {
      *(v5 + 24) = type metadata accessor for StaticAccessory(0);
      v12 = sub_1D1821000(&qword_1EC644698, type metadata accessor for StaticAccessory);
      v13 = type metadata accessor for StaticAccessory;
    }

    v14 = v13;
    *(v5 + 32) = v12;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v5);
    sub_1D182161C(v8, boxed_opaque_existential_1, v14);
    v16 = *(v5 + 24);
    v17 = *(v5 + 32);
    __swift_project_boxed_opaque_existential_1(v5, v16);
    LOBYTE(v10) = (*(v17 + 64))(v16, v17);
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  *(v5 + 60) = v10 & 1;
  return sub_1D1823338;
}

uint64_t AccessoryDetailsBasicInfo.isFavorite.getter()
{
  v1 = type metadata accessor for AccessoryDetails.Payload(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v15[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + *(type metadata accessor for AccessoryDetailsBasicInfo() + 36));
  if (v5 == 2)
  {
    sub_1D1821554(v0, v4, type metadata accessor for AccessoryDetails.Payload);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v16 = type metadata accessor for StaticServiceGroup();
        v7 = sub_1D1821000(&qword_1EC644688, type metadata accessor for StaticServiceGroup);
        v8 = type metadata accessor for StaticServiceGroup;
      }

      else
      {
        v16 = type metadata accessor for StaticEndpoint();
        v7 = sub_1D1821000(&qword_1EC644680, type metadata accessor for StaticEndpoint);
        v8 = type metadata accessor for StaticEndpoint;
      }
    }

    else if (EnumCaseMultiPayload)
    {
      v16 = type metadata accessor for StaticService(0);
      v7 = sub_1D1821000(&qword_1EC644690, type metadata accessor for StaticService);
      v8 = type metadata accessor for StaticService;
    }

    else
    {
      v16 = type metadata accessor for StaticAccessory(0);
      v7 = sub_1D1821000(&qword_1EC644698, type metadata accessor for StaticAccessory);
      v8 = type metadata accessor for StaticAccessory;
    }

    v9 = v8;
    v17 = v7;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
    sub_1D182161C(v4, boxed_opaque_existential_1, v9);
    v11 = v16;
    v12 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    LOBYTE(v5) = (*(v12 + 72))(v11, v12);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  return v5 & 1;
}

uint64_t sub_1D181A780@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for AccessoryDetailsBasicInfo();
  v5 = *(a1 + *(result + 36));
  if (v5 == 2)
  {
    AccessoryDetails.Payload.basicInfo.getter(v8);
    v6 = v9;
    v7 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    LOBYTE(v5) = (*(v7 + 72))(v6, v7);
    result = __swift_destroy_boxed_opaque_existential_1(v8);
  }

  *a2 = v5 & 1;
  return result;
}

uint64_t AccessoryDetailsBasicInfo.isFavorite.setter(char a1)
{
  result = type metadata accessor for AccessoryDetailsBasicInfo();
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t (*AccessoryDetailsBasicInfo.isFavorite.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x40uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 40) = v1;
  v6 = *(*(type metadata accessor for AccessoryDetails.Payload(0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 48) = v7;
  v9 = *(type metadata accessor for AccessoryDetailsBasicInfo() + 36);
  *(v5 + 56) = v9;
  v10 = *(v1 + v9);
  if (v10 == 2)
  {
    sub_1D1821554(v1, v8, type metadata accessor for AccessoryDetails.Payload);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        *(v5 + 24) = type metadata accessor for StaticServiceGroup();
        v12 = sub_1D1821000(&qword_1EC644688, type metadata accessor for StaticServiceGroup);
        v13 = type metadata accessor for StaticServiceGroup;
      }

      else
      {
        *(v5 + 24) = type metadata accessor for StaticEndpoint();
        v12 = sub_1D1821000(&qword_1EC644680, type metadata accessor for StaticEndpoint);
        v13 = type metadata accessor for StaticEndpoint;
      }
    }

    else if (EnumCaseMultiPayload)
    {
      *(v5 + 24) = type metadata accessor for StaticService(0);
      v12 = sub_1D1821000(&qword_1EC644690, type metadata accessor for StaticService);
      v13 = type metadata accessor for StaticService;
    }

    else
    {
      *(v5 + 24) = type metadata accessor for StaticAccessory(0);
      v12 = sub_1D1821000(&qword_1EC644698, type metadata accessor for StaticAccessory);
      v13 = type metadata accessor for StaticAccessory;
    }

    v14 = v13;
    *(v5 + 32) = v12;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v5);
    sub_1D182161C(v8, boxed_opaque_existential_1, v14);
    v16 = *(v5 + 24);
    v17 = *(v5 + 32);
    __swift_project_boxed_opaque_existential_1(v5, v16);
    LOBYTE(v10) = (*(v17 + 72))(v16, v17);
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  *(v5 + 60) = v10 & 1;
  return sub_1D181AB10;
}

void sub_1D181AB14(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 56);
  v4 = *(*a1 + 40);
  v3 = *(*a1 + 48);
  *(v4 + v2) = v1[60];
  free(v3);

  free(v1);
}

uint64_t AccessoryDetailsBasicInfo.isActivated.getter()
{
  v1 = type metadata accessor for AccessoryDetails.Payload(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v14[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1821554(v0, v4, type metadata accessor for AccessoryDetails.Payload);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v15 = type metadata accessor for StaticServiceGroup();
      v6 = sub_1D1821000(&qword_1EC644688, type metadata accessor for StaticServiceGroup);
      v7 = type metadata accessor for StaticServiceGroup;
    }

    else
    {
      v15 = type metadata accessor for StaticEndpoint();
      v6 = sub_1D1821000(&qword_1EC644680, type metadata accessor for StaticEndpoint);
      v7 = type metadata accessor for StaticEndpoint;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v15 = type metadata accessor for StaticService(0);
    v6 = sub_1D1821000(&qword_1EC644690, type metadata accessor for StaticService);
    v7 = type metadata accessor for StaticService;
  }

  else
  {
    v15 = type metadata accessor for StaticAccessory(0);
    v6 = sub_1D1821000(&qword_1EC644698, type metadata accessor for StaticAccessory);
    v7 = type metadata accessor for StaticAccessory;
  }

  v8 = v7;
  v16 = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
  sub_1D182161C(v4, boxed_opaque_existential_1, v8);
  v10 = v15;
  v11 = v16;
  __swift_project_boxed_opaque_existential_1(v14, v15);
  LOBYTE(v10) = (*(v11 + 88))(v10, v11);
  __swift_destroy_boxed_opaque_existential_1(v14);
  return v10 & 1;
}

Swift::Int AccessoryDetailsBasicInfo.batteryLevel.getter()
{
  v1 = type metadata accessor for StaticService(0);
  v127 = *(v1 - 8);
  v2 = *(v127 + 64);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v121 = &v104 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v109 = &v104 - v6;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v104 - v8;
  v10 = MEMORY[0x1EEE9AC00](v7);
  v118 = &v104 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v113 = &v104 - v12;
  v13 = type metadata accessor for StaticAccessory(0);
  v110 = *(v13 - 8);
  v14 = *(v110 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v111 = &v104 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v104 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v117 = &v104 - v20;
  v124 = type metadata accessor for AccessoryDetails.Payload(0);
  v21 = *(*(v124 - 8) + 64);
  MEMORY[0x1EEE9AC00](v124);
  v125 = &v104 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for StaticCluster();
  v122 = *(v23 - 8);
  v123 = v23;
  v24 = *(v122 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v104 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6448C8, &qword_1D1E94060);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v30 = &v104 - v29;
  v31 = type metadata accessor for StaticEndpoint();
  v128 = *(v31 - 8);
  v129 = v31;
  v32 = *(v128 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v104 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = type metadata accessor for StaticClusterPowerSource();
  v35 = *(v130 - 8);
  v36 = *(v35 + 64);
  v37 = MEMORY[0x1EEE9AC00](v130);
  v114 = &v104 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x1EEE9AC00](v37);
  v119 = &v104 - v40;
  MEMORY[0x1EEE9AC00](v39);
  v120 = &v104 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x1EEE9AC00](v42 - 8);
  v45 = &v104 - v44;
  v126 = v0;
  AccessoryDetails.Payload.staticMatterDevice.getter(&v104 - v44);
  v46 = type metadata accessor for StaticMatterDevice();
  if ((*(*(v46 - 8) + 48))(v45, 1, v46) == 1)
  {
    sub_1D1741A30(v45, &qword_1EC643650, &qword_1D1E71D40);
    v47 = v9;
    v48 = v19;
    v49 = v127;
LABEL_27:
    v75 = v125;
    sub_1D1821554(v126, v125, type metadata accessor for AccessoryDetails.Payload);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      v83 = type metadata accessor for AccessoryDetails.Payload;
      v84 = v75;
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        sub_1D182161C(v75, v47, type metadata accessor for StaticService);
        v133 = *(v47 + *(v1 + 128));
        LOBYTE(v132[0]) = 11;
        v135 = StaticCharacteristicsBag.int(for:)(v132);
        if (v135.is_nil)
        {
          if (qword_1EE07DC58 != -1)
          {
            goto LABEL_60;
          }

          goto LABEL_38;
        }

        value = v135.value;
        sub_1D18215BC(v47, type metadata accessor for StaticService);
        return value;
      }

      v47 = v117;
      v77 = sub_1D182161C(v75, v117, type metadata accessor for StaticAccessory);
      v78 = *(v47 + *(v13 + 84));
      MEMORY[0x1EEE9AC00](v77);
      *(&v104 - 2) = v47;
      v80 = sub_1D17868B8(sub_1D1823318, (&v104 - 4), v79);
      v81 = v80[2];
      v13 = v118;
      if (v81)
      {
        v48 = 0;
        while (v48 < v80[2])
        {
          sub_1D1821554(v80 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v48, v13, type metadata accessor for StaticService);
          v133 = *(v13 + *(v1 + 128));
          LOBYTE(v132[0]) = 11;
          v134 = StaticCharacteristicsBag.int(for:)(v132);
          if (!v134.is_nil)
          {

            v100 = v113;
            sub_1D182161C(v13, v113, type metadata accessor for StaticService);
            v133 = *(v100 + *(v1 + 128));
            LOBYTE(v132[0]) = 11;
            v101 = StaticCharacteristicsBag.int(for:)(v132);
            sub_1D18215BC(v47, type metadata accessor for StaticAccessory);
            v102 = v100;
            goto LABEL_50;
          }

          ++v48;
          sub_1D18215BC(v13, type metadata accessor for StaticService);
          if (v81 == v48)
          {
            goto LABEL_34;
          }
        }

        __break(1u);
        while (1)
        {
          __break(1u);
LABEL_60:
          swift_once();
LABEL_38:
          v85 = qword_1EE07DC60;
          swift_getKeyPath();
          v133 = v85;
          sub_1D1821000(&qword_1EE07CFB0, type metadata accessor for DataModel);
          sub_1D1E66CAC();

          v86 = v85 + OBJC_IVAR____TtC13HomeDataModel9DataModel__currentStateSnapshot;
          swift_beginAccess();
          v87 = *(v86 + *(type metadata accessor for StateSnapshot(0) + 32));
          if (!*(v87 + 16))
          {
            break;
          }

          v88 = *(v1 + 44);

          v89 = sub_1D1742188(v47 + v88);
          if ((v90 & 1) == 0)
          {

            break;
          }

          v91 = v111;
          sub_1D1821554(*(v87 + 56) + *(v110 + 72) * v89, v111, type metadata accessor for StaticAccessory);

          v92 = sub_1D182161C(v91, v48, type metadata accessor for StaticAccessory);
          v93 = *(v48 + *(v13 + 84));
          MEMORY[0x1EEE9AC00](v92);
          v112 = v48;
          *(&v104 - 2) = v48;
          v95 = sub_1D17868B8(sub_1D1820ECC, (&v104 - 4), v94);
          v96 = v95[2];
          if (!v96)
          {
LABEL_47:

            sub_1D18215BC(v112, type metadata accessor for StaticAccessory);
            break;
          }

          v13 = 0;
          while (v13 < v95[2])
          {
            v97 = v121;
            sub_1D1821554(v95 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v13, v121, type metadata accessor for StaticService);
            LOBYTE(v132[0]) = *(v97 + *(v1 + 104));
            if (ServiceKind.rawValue.getter() == 0xD000000000000024 && 0x80000001D1EB2DA0 == v98)
            {
              goto LABEL_56;
            }

            v48 = sub_1D1E6904C();

            if (v48)
            {
              goto LABEL_57;
            }

            ++v13;
            sub_1D18215BC(v121, type metadata accessor for StaticService);
            if (v96 == v13)
            {
              goto LABEL_47;
            }
          }
        }

        v82 = type metadata accessor for StaticService;
      }

      else
      {
LABEL_34:

        v82 = type metadata accessor for StaticAccessory;
      }

      v83 = v82;
      v84 = v47;
    }

    sub_1D18215BC(v84, v83);
    return 0;
  }

  v115 = v26;
  v106 = v13;
  v112 = v19;
  v107 = v9;
  v108 = v1;
  v50 = *&v45[*(v46 + 56)];

  sub_1D18215BC(v45, type metadata accessor for StaticMatterDevice);
  v51 = 1 << *(v50 + 32);
  v52 = -1;
  if (v51 < 64)
  {
    v52 = ~(-1 << v51);
  }

  v53 = v52 & *(v50 + 64);
  v54 = (v51 + 63) >> 6;
  v1 = v35 + 56;
  v105 = v35;
  v55 = (v35 + 48);

  v47 = 0;
  v116 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v56 = v47;
    if (!v53)
    {
      break;
    }

LABEL_10:
    sub_1D1821554(*(v50 + 56) + *(v128 + 72) * (__clz(__rbit64(v53)) | (v47 << 6)), v34, type metadata accessor for StaticEndpoint);
    v57 = *&v34[*(v129 + 36)];
    if (!*(v57 + 16))
    {
      goto LABEL_15;
    }

    v58 = sub_1D171D278(2);
    if ((v59 & 1) == 0)
    {
      goto LABEL_15;
    }

    v60 = *(v57 + 56) + *(v122 + 72) * v58;
    v61 = v115;
    sub_1D1821554(v60, v115, type metadata accessor for StaticCluster);
    if (swift_getEnumCaseMultiPayload() != 5)
    {
      sub_1D18215BC(v61, type metadata accessor for StaticCluster);
LABEL_15:
      v62 = 1;
      goto LABEL_16;
    }

    sub_1D182161C(v61, v30, type metadata accessor for StaticClusterPowerSource);
    v62 = 0;
LABEL_16:
    v53 &= v53 - 1;
    v63 = v130;
    (*v1)(v30, v62, 1, v130);
    sub_1D18215BC(v34, type metadata accessor for StaticEndpoint);
    if ((*v55)(v30, 1, v63) == 1)
    {
      sub_1D1741A30(v30, &qword_1EC6448C8, &qword_1D1E94060);
    }

    else
    {
      sub_1D182161C(v30, v114, type metadata accessor for StaticClusterPowerSource);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v116 = sub_1D177D8BC(0, v116[2] + 1, 1, v116);
      }

      v64 = v105;
      v66 = v116[2];
      v65 = v116[3];
      v67 = v66 + 1;
      if (v66 >= v65 >> 1)
      {
        v104 = v66 + 1;
        v69 = sub_1D177D8BC(v65 > 1, v66 + 1, 1, v116);
        v67 = v104;
        v64 = v105;
        v116 = v69;
      }

      v68 = v116;
      v116[2] = v67;
      sub_1D182161C(v114, v68 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v66, type metadata accessor for StaticClusterPowerSource);
    }
  }

  while (1)
  {
    v47 = v56 + 1;
    if (__OFADD__(v56, 1))
    {
      __break(1u);
LABEL_56:

LABEL_57:

      v103 = v109;
      sub_1D182161C(v121, v109, type metadata accessor for StaticService);
      v132[0] = *(v103 + *(v1 + 128));
      v131 = 11;
      v101 = StaticCharacteristicsBag.int(for:)(&v131);
      sub_1D18215BC(v112, type metadata accessor for StaticAccessory);
      sub_1D18215BC(v47, type metadata accessor for StaticService);
      v102 = v103;
LABEL_50:
      sub_1D18215BC(v102, type metadata accessor for StaticService);
      return v101;
    }

    if (v47 >= v54)
    {
      break;
    }

    v53 = *(v50 + 64 + 8 * v47);
    ++v56;
    if (v53)
    {
      goto LABEL_10;
    }
  }

  if (!v116[2])
  {

    v1 = v108;
    v49 = v127;
    v47 = v107;
    v48 = v112;
    v13 = v106;
    goto LABEL_27;
  }

  v70 = v119;
  sub_1D1821554(v116 + ((*(v105 + 80) + 32) & ~*(v105 + 80)), v119, type metadata accessor for StaticClusterPowerSource);

  v71 = v120;
  sub_1D182161C(v70, v120, type metadata accessor for StaticClusterPowerSource);
  v72 = (v71 + *(v130 + 36));
  v73 = *v72;
  LOBYTE(v70) = v72[1];
  sub_1D18215BC(v71, type metadata accessor for StaticClusterPowerSource);
  v1 = v108;
  v49 = v127;
  v47 = v107;
  v48 = v112;
  v13 = v106;
  if (v70)
  {
    goto LABEL_27;
  }

  return v73 >> 1;
}

uint64_t sub_1D181BD6C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for StaticCluster();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + *(type metadata accessor for StaticEndpoint() + 36));
  if (!*(v8 + 16))
  {
    goto LABEL_6;
  }

  v9 = sub_1D171D278(2);
  if ((v10 & 1) == 0)
  {
    goto LABEL_6;
  }

  sub_1D1821554(*(v8 + 56) + *(v4 + 72) * v9, v7, type metadata accessor for StaticCluster);
  if (swift_getEnumCaseMultiPayload() != 5)
  {
    sub_1D18215BC(v7, type metadata accessor for StaticCluster);
LABEL_6:
    v11 = 1;
    goto LABEL_7;
  }

  sub_1D182161C(v7, a1, type metadata accessor for StaticClusterPowerSource);
  v11 = 0;
LABEL_7:
  v12 = type metadata accessor for StaticClusterPowerSource();
  return (*(*(v12 - 8) + 56))(a1, v11, 1, v12);
}

uint64_t AccessoryDetailsBasicInfo.chargingState.getter()
{
  v119 = type metadata accessor for StaticService(0);
  v128 = *(v119 - 8);
  v1 = *(v128 + 64);
  v2 = MEMORY[0x1EEE9AC00](v119);
  v118 = v105 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v105 - v5;
  MEMORY[0x1EEE9AC00](v4);
  v8 = v105 - v7;
  v113 = type metadata accessor for StaticAccessory(0);
  v9 = *(*(v113 - 8) + 64);
  MEMORY[0x1EEE9AC00](v113);
  v114 = v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AccessoryDetails.Payload(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for StaticClusterPowerSource();
  v122 = *(v15 - 8);
  v16 = *(v122 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v108 = v105 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for StaticCluster();
  v116 = *(v18 - 8);
  v117 = v18;
  v19 = *(v116 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v115 = v105 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6448C8, &qword_1D1E94060);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8);
  v112 = v105 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v127 = v105 - v25;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6448D0, &qword_1D1E76600);
  v26 = *(*(v126 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v126);
  v111 = v105 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v125 = v105 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v129 = v105 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v124 = v105 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v109 = v105 - v36;
  MEMORY[0x1EEE9AC00](v35);
  v110 = v105 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v41 = v105 - v40;
  v42 = type metadata accessor for StaticMatterDevice();
  v43 = *(v42 - 8);
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v46 = v105 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  AccessoryDetails.Payload.staticMatterDevice.getter(v41);
  if ((*(v43 + 48))(v41, 1, v42) == 1)
  {
    sub_1D1741A30(v41, &qword_1EC643650, &qword_1D1E71D40);
    v47 = v8;
    v48 = v118;
    goto LABEL_22;
  }

  v123 = v15;
  v105[1] = v11;
  v106 = v14;
  v107 = v0;
  v105[0] = v8;
  sub_1D182161C(v41, v46, type metadata accessor for StaticMatterDevice);
  v49 = *&v46[*(v42 + 56)];
  v50 = 1 << *(v49 + 32);
  v51 = -1;
  if (v50 < 64)
  {
    v51 = ~(-1 << v50);
  }

  v52 = v51 & *(v49 + 64);
  v53 = (v50 + 63) >> 6;
  v120 = (v122 + 56);
  v122 += 48;

  v55 = 0;
  v56 = v46;
  v121 = v46;
  if (!v52)
  {
LABEL_7:
    while (1)
    {
      v58 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        break;
      }

      if (v58 >= v53)
      {

        sub_1D18215BC(v56, type metadata accessor for StaticMatterDevice);
        v47 = v105[0];
        v48 = v118;
        v0 = v107;
        v14 = v106;
        goto LABEL_22;
      }

      v52 = *(v49 + 64 + 8 * v58);
      ++v55;
      if (v52)
      {
        v57 = v6;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
    return result;
  }

  while (1)
  {
    v57 = v6;
    v58 = v55;
LABEL_11:
    v59 = __clz(__rbit64(v52)) | (v58 << 6);
    v60 = *(v49 + 56);
    v61 = *(*(v49 + 48) + 2 * v59);
    v62 = (type metadata accessor for StaticEndpoint() - 8);
    v63 = v60 + *(*v62 + 72) * v59;
    v64 = v126;
    v65 = v124;
    sub_1D1821554(v63, &v124[*(v126 + 48)], type metadata accessor for StaticEndpoint);
    *v65 = v61;
    v66 = v129;
    sub_1D1820EE8(v65, v129);
    v67 = v66;
    v68 = v125;
    sub_1D1741C08(v67, v125, &qword_1EC6448D0, &qword_1D1E76600);
    v69 = v68 + *(v64 + 48);
    v70 = *(v69 + v62[11]);
    if (*(v70 + 16))
    {
      v71 = sub_1D171D278(2);
      v6 = v57;
      if (v72)
      {
        v73 = v115;
        sub_1D1821554(*(v70 + 56) + *(v116 + 72) * v71, v115, type metadata accessor for StaticCluster);
        if (swift_getEnumCaseMultiPayload() == 5)
        {
          sub_1D182161C(v73, v127, type metadata accessor for StaticClusterPowerSource);
          v74 = 0;
          goto LABEL_18;
        }

        sub_1D18215BC(v73, type metadata accessor for StaticCluster);
      }

      v74 = 1;
    }

    else
    {
      v74 = 1;
      v6 = v57;
    }

LABEL_18:
    v75 = v127;
    v76 = v123;
    (*v120)(v127, v74, 1, v123);
    sub_1D18215BC(v69, type metadata accessor for StaticEndpoint);
    v77 = *v122;
    v78 = (*v122)(v75, 1, v76);
    sub_1D1741A30(v75, &qword_1EC6448C8, &qword_1D1E94060);
    if (v78 != 1)
    {
      break;
    }

    v52 &= v52 - 1;
    result = sub_1D1741A30(v129, &qword_1EC6448D0, &qword_1D1E76600);
    v55 = v58;
    v56 = v121;
    if (!v52)
    {
      goto LABEL_7;
    }
  }

  v93 = v109;
  sub_1D1820EE8(v129, v109);
  v94 = v110;
  sub_1D1820EE8(v93, v110);
  v95 = v111;
  sub_1D1741C08(v94, v111, &qword_1EC6448D0, &qword_1D1E76600);
  v96 = *(v126 + 48);
  v97 = v112;
  sub_1D181BD6C(v112);
  sub_1D1741A30(v94, &qword_1EC6448D0, &qword_1D1E76600);
  sub_1D18215BC(v121, type metadata accessor for StaticMatterDevice);
  v98 = v123;
  v99 = v77(v97, 1, v123);
  v0 = v107;
  v14 = v106;
  if (v99 == 1)
  {
    sub_1D1741A30(v97, &qword_1EC6448C8, &qword_1D1E94060);
    sub_1D18215BC(v95 + v96, type metadata accessor for StaticEndpoint);
    v47 = v105[0];
    v48 = v118;
LABEL_22:
    sub_1D1821554(v0, v14, type metadata accessor for AccessoryDetails.Payload);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v80 = v119;
    if (EnumCaseMultiPayload > 1)
    {
      v89 = type metadata accessor for AccessoryDetails.Payload;
      v90 = v14;
      goto LABEL_31;
    }

    if (EnumCaseMultiPayload)
    {
      sub_1D182161C(v14, v48, type metadata accessor for StaticService);
      v131 = *(v48 + *(v80 + 128));
      v130 = 24;
      v133 = StaticCharacteristicsBag.int(for:)(&v130);
      if (v133.is_nil)
      {
        value = 2;
      }

      else
      {
        value = v133.value;
      }

      v92 = v48;
LABEL_36:
      sub_1D18215BC(v92, type metadata accessor for StaticService);
      return value;
    }

    else
    {
      v81 = v14;
      v82 = v114;
      v83 = sub_1D182161C(v81, v114, type metadata accessor for StaticAccessory);
      v84 = *(v82 + *(v113 + 84));
      MEMORY[0x1EEE9AC00](v83);
      v105[-2] = v82;
      result = sub_1D17868B8(sub_1D1823318, &v105[-4], v85);
      v86 = result;
      v87 = *(result + 16);
      if (v87)
      {
        v88 = 0;
        while (v88 < *(v86 + 16))
        {
          sub_1D1821554(v86 + ((*(v128 + 80) + 32) & ~*(v128 + 80)) + *(v128 + 72) * v88, v6, type metadata accessor for StaticService);
          v131 = *&v6[*(v80 + 128)];
          v130 = 24;
          v132 = StaticCharacteristicsBag.int(for:)(&v130);
          if (!v132.is_nil)
          {

            sub_1D182161C(v6, v47, type metadata accessor for StaticService);
            v131 = *(v47 + *(v80 + 128));
            v130 = 24;
            v134 = StaticCharacteristicsBag.int(for:)(&v130);
            if (v134.is_nil)
            {
              sub_1D18215BC(v114, type metadata accessor for StaticAccessory);
              v89 = type metadata accessor for StaticService;
              v90 = v47;
              goto LABEL_31;
            }

            value = v134.value;
            sub_1D18215BC(v114, type metadata accessor for StaticAccessory);
            v92 = v47;
            goto LABEL_36;
          }

          ++v88;
          result = sub_1D18215BC(v6, type metadata accessor for StaticService);
          if (v87 == v88)
          {
            goto LABEL_29;
          }
        }

        goto LABEL_44;
      }

LABEL_29:

      v89 = type metadata accessor for StaticAccessory;
      v90 = v114;
LABEL_31:
      sub_1D18215BC(v90, v89);
      return 2;
    }
  }

  else
  {
    v100 = v97;
    v101 = v108;
    sub_1D182161C(v100, v108, type metadata accessor for StaticClusterPowerSource);
    sub_1D18215BC(v95 + v96, type metadata accessor for StaticEndpoint);
    v102 = (v101 + *(v98 + 48));
    v103 = *v102;
    v104 = v102[1];
    sub_1D18215BC(v101, type metadata accessor for StaticClusterPowerSource);
    return (v103 == 1) & ~v104;
  }
}

uint64_t AccessoryDetailsBasicInfo.defaultIcon.getter()
{
  v1 = v0;
  v2 = type metadata accessor for AccessoryDetails.Payload(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1821554(v1, v5, type metadata accessor for AccessoryDetails.Payload);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v22 = type metadata accessor for StaticServiceGroup();
      v7 = sub_1D1821000(&qword_1EC644688, type metadata accessor for StaticServiceGroup);
      v8 = type metadata accessor for StaticServiceGroup;
    }

    else
    {
      v22 = type metadata accessor for StaticEndpoint();
      v7 = sub_1D1821000(&qword_1EC644680, type metadata accessor for StaticEndpoint);
      v8 = type metadata accessor for StaticEndpoint;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v22 = type metadata accessor for StaticService(0);
    v7 = sub_1D1821000(&qword_1EC644690, type metadata accessor for StaticService);
    v8 = type metadata accessor for StaticService;
  }

  else
  {
    v22 = type metadata accessor for StaticAccessory(0);
    v7 = sub_1D1821000(&qword_1EC644698, type metadata accessor for StaticAccessory);
    v8 = type metadata accessor for StaticAccessory;
  }

  v9 = v8;
  v23 = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
  sub_1D182161C(v5, boxed_opaque_existential_1, v9);
  v11 = v22;
  v12 = v23;
  __swift_project_boxed_opaque_existential_1(v21, v22);
  (*(v12 + 80))(&v18, v11, v12);
  v15 = v18;
  v16 = v19;
  v17 = v20;
  StatusIcon.defaultIconSymbol()();
  sub_1D1820F58(v15, v16);

  return __swift_destroy_boxed_opaque_existential_1(v21);
}

uint64_t AccessoryDetailsBasicInfo.temperatureStringIcon.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v46 = a1;
  v3 = type metadata accessor for StaticService(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v43 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v45 = &v42 - v8;
  v9 = type metadata accessor for StaticAccessory(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v44 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AccessoryDetails.Payload(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v42 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v42 - v24;
  AccessoryDetailsBasicInfo.primaryStaticService.getter(&v42 - v24);
  v26 = *(v4 + 48);
  if (v26(v25, 1, v3) == 1)
  {
    sub_1D1741A30(v25, &qword_1EC6436F0, &qword_1D1E99BC0);
    v27 = 0;
  }

  else
  {
    v27 = v25[*(v3 + 104)];
    sub_1D18215BC(v25, type metadata accessor for StaticService);
  }

  v48[2] = v27;
  if (ServiceKind.rawValue.getter() == 0xD000000000000024 && 0x80000001D1EB3550 == v28)
  {
LABEL_6:

    goto LABEL_8;
  }

  v29 = sub_1D1E6904C();

  if ((v29 & 1) == 0)
  {
    AccessoryDetailsBasicInfo.primaryStaticService.getter(v23);
    if (v26(v23, 1, v3) == 1)
    {
      sub_1D1741A30(v23, &qword_1EC6436F0, &qword_1D1E99BC0);
      v37 = 0;
    }

    else
    {
      v37 = v23[*(v3 + 104)];
      sub_1D18215BC(v23, type metadata accessor for StaticService);
    }

    v48[1] = v37;
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && 0x80000001D1EB3070 == v39)
    {
      goto LABEL_6;
    }

    v40 = sub_1D1E6904C();

    if ((v40 & 1) == 0)
    {
      v41 = v46;
      *v46 = 0;
      v41[1] = 0;
      v41[2] = 0;
      return result;
    }
  }

LABEL_8:
  sub_1D1821554(v2, v15, type metadata accessor for AccessoryDetails.Payload);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v34 = v45;
    sub_1D182161C(v15, v45, type metadata accessor for StaticService);
    v35 = v43;
    sub_1D1821554(v34, v43, type metadata accessor for StaticService);
    v48[0] = 0;
    sub_1D18F211C(v35, v48, v46);
    return sub_1D18215BC(v34, type metadata accessor for StaticService);
  }

  else if (EnumCaseMultiPayload)
  {
    v36 = v46;
    *v46 = 0;
    v36[1] = 0;
    v36[2] = 0;
    return sub_1D18215BC(v15, type metadata accessor for AccessoryDetails.Payload);
  }

  else
  {
    v31 = v44;
    sub_1D182161C(v15, v44, type metadata accessor for StaticAccessory);
    StaticAccessory.primaryStaticService.getter(v20);
    if (v26(v20, 1, v3) == 1)
    {
      sub_1D18215BC(v31, type metadata accessor for StaticAccessory);
      result = sub_1D1741A30(v20, &qword_1EC6436F0, &qword_1D1E99BC0);
      v33 = v46;
      v46[1] = 0;
      v33[2] = 0;
      *v33 = 0;
    }

    else
    {
      v38 = v45;
      sub_1D1821554(v20, v45, type metadata accessor for StaticService);
      v47 = 1;
      sub_1D18F211C(v38, &v47, v46);
      sub_1D18215BC(v31, type metadata accessor for StaticAccessory);
      return sub_1D18215BC(v20, type metadata accessor for StaticService);
    }
  }

  return result;
}

uint64_t AccessoryDetailsBasicInfo.iconSymbol.getter@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for StaticMatterDevice();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4 - 8);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v41 - v10;
  v12 = type metadata accessor for StaticAccessory(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for AccessoryDetails.Payload(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v41 - v21;
  result = type metadata accessor for AccessoryDetailsBasicInfo();
  v24 = *(v2 + *(result + 40));
  if (v24 != 92)
  {
    *a1 = v24;
    return result;
  }

  sub_1D1821554(v2, v22, type metadata accessor for AccessoryDetails.Payload);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v41 = v5;
  v42 = a1;
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      *(&v45 + 1) = type metadata accessor for StaticServiceGroup();
      v26 = sub_1D1821000(&qword_1EC644688, type metadata accessor for StaticServiceGroup);
      v27 = type metadata accessor for StaticServiceGroup;
    }

    else
    {
      *(&v45 + 1) = type metadata accessor for StaticEndpoint();
      v26 = sub_1D1821000(&qword_1EC644680, type metadata accessor for StaticEndpoint);
      v27 = type metadata accessor for StaticEndpoint;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    *(&v45 + 1) = type metadata accessor for StaticService(0);
    v26 = sub_1D1821000(&qword_1EC644690, type metadata accessor for StaticService);
    v27 = type metadata accessor for StaticService;
  }

  else
  {
    *(&v45 + 1) = v12;
    v26 = sub_1D1821000(&qword_1EC644698, type metadata accessor for StaticAccessory);
    v27 = type metadata accessor for StaticAccessory;
  }

  v28 = v27;
  v46 = v26;
  v29 = __swift_allocate_boxed_opaque_existential_1(&v43);
  sub_1D182161C(v22, v29, v28);
  v31 = *(&v45 + 1);
  v30 = v46;
  __swift_project_boxed_opaque_existential_1(&v43, *(&v45 + 1));
  (*(v30 + 80))(&v47, v31, v30);
  __swift_destroy_boxed_opaque_existential_1(&v43);
  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  v32 = qword_1EE07DC60;
  swift_getKeyPath();
  v43 = v32;
  sub_1D1821000(&qword_1EE07CFB0, type metadata accessor for DataModel);
  sub_1D1E66CAC();

  v33 = v32 + OBJC_IVAR____TtC13HomeDataModel9DataModel__currentMatterSnapshot;
  swift_beginAccess();
  v34 = *(v33 + *(type metadata accessor for MatterStateSnapshot() + 24));
  sub_1D1821554(v2, v20, type metadata accessor for AccessoryDetails.Payload);
  if (swift_getEnumCaseMultiPayload())
  {
    v35 = type metadata accessor for AccessoryDetails.Payload;
    v36 = v20;
  }

  else
  {
    sub_1D182161C(v20, v15, type metadata accessor for StaticAccessory);
    v37 = &v15[*(v12 + 144)];
    if (v37[8] != 1)
    {
      if (*(v34 + 16))
      {
        v38 = sub_1D17420B0(*v37);
        if (v39)
        {
          sub_1D1821554(*(v34 + 56) + *(v41 + 72) * v38, v9, type metadata accessor for StaticMatterDevice);
          sub_1D1820F58(v47, v48);

          sub_1D182161C(v9, v11, type metadata accessor for StaticMatterDevice);
          StaticMatterDevice.statusIcon.getter(&v43);
          sub_1D18215BC(v11, type metadata accessor for StaticMatterDevice);
          sub_1D18215BC(v15, type metadata accessor for StaticAccessory);
          v47 = v43;
          v48 = v44;
          v49 = v45;
          goto LABEL_20;
        }
      }
    }

    v35 = type metadata accessor for StaticAccessory;
    v36 = v15;
  }

  sub_1D18215BC(v36, v35);
LABEL_20:
  v40 = HIBYTE(v48);
  if (HIBYTE(v48) == 92)
  {
    v43 = v47;
    LOBYTE(v44) = v48;
    HIBYTE(v44) = 92;
    v45 = v49;
    StatusIcon.defaultIconSymbol()();
    sub_1D1820F58(v43, v44);
  }

  else
  {
    sub_1D1820F58(v47, v48);

    *v42 = v40;
  }

  return result;
}

uint64_t AccessoryDetailsBasicInfo.iconSymbol.setter(char *a1)
{
  v2 = *a1;
  if (qword_1EC642470 != -1)
  {
    swift_once();
  }

  v3 = sub_1D1E6709C();
  __swift_project_value_buffer(v3, qword_1EC64F440);
  v4 = sub_1D1E6707C();
  v5 = sub_1D1E6835C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315138;
    v8 = IconSymbol.rawValue.getter();
    v10 = sub_1D1B1312C(v8, v9, &v12);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1D16EC000, v4, v5, "Write %s to dataModel icon", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1D3893640](v7, -1, -1);
    MEMORY[0x1D3893640](v6, -1, -1);
  }

  result = type metadata accessor for AccessoryDetailsBasicInfo();
  *(v1 + *(result + 40)) = v2;
  return result;
}

uint64_t (*AccessoryDetailsBasicInfo.iconSymbol.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  AccessoryDetailsBasicInfo.iconSymbol.getter((a1 + 8));
  return sub_1D181DC20;
}

uint64_t sub_1D181DC20(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (a2)
  {
    v6 = *(a1 + 8);
    v4 = &v6;
  }

  else
  {
    v7 = *(a1 + 8);
    v4 = &v7;
  }

  return AccessoryDetailsBasicInfo.iconSymbol.setter(v4);
}

uint64_t AccessoryDetailsBasicInfo.symbolSet.getter()
{
  v1 = v0;
  v2 = type metadata accessor for StaticEndpoint();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v58 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for StaticServiceGroup();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v59 = &v55 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v55 - v13;
  v15 = type metadata accessor for StaticService(0);
  v60 = *(v15 - 8);
  v61 = v15;
  v16 = *(v60 + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v56 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v57 = &v55 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v55 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v55 - v24;
  v26 = type metadata accessor for StaticAccessory(0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v29 = &v55 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for AccessoryDetails.Payload(0);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v55 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1821554(v1, v33, type metadata accessor for AccessoryDetails.Payload);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_1D182161C(v33, v23, type metadata accessor for StaticService);
      if (v23[*(v61 + 104)] == 30)
      {
        v46 = &unk_1F4D621F0;
      }

      else
      {
        v46 = MEMORY[0x1E69E7CC0];
      }

      v47 = type metadata accessor for StaticService;
      v48 = v23;
    }

    else
    {
      sub_1D182161C(v33, v29, type metadata accessor for StaticAccessory);
      StaticAccessory.primaryStaticService.getter(v14);
      v35 = v61;
      if ((*(v60 + 48))(v14, 1, v61) == 1)
      {
        sub_1D1741A30(v14, &qword_1EC6436F0, &qword_1D1E99BC0);
        v36 = type metadata accessor for StaticAccessory;
        v37 = v29;
LABEL_29:
        sub_1D18215BC(v37, v36);
        return MEMORY[0x1E69E7CC0];
      }

      sub_1D182161C(v14, v25, type metadata accessor for StaticService);
      if (v25[*(v35 + 104)] == 30)
      {
        v46 = &unk_1F4D621C8;
      }

      else
      {
        v46 = MEMORY[0x1E69E7CC0];
      }

      sub_1D18215BC(v25, type metadata accessor for StaticService);
      v47 = type metadata accessor for StaticAccessory;
      v48 = v29;
    }

LABEL_38:
    sub_1D18215BC(v48, v47);
    return v46;
  }

  if (EnumCaseMultiPayload != 2)
  {
    v49 = v58;
    sub_1D182161C(v33, v58, type metadata accessor for StaticEndpoint);
    static MatterDeviceType.primaryDeviceType(for:)(*(v49 + *(v2 + 32)), &v62);
    v50 = v62;
    if (v62 == 28)
    {
      v36 = type metadata accessor for StaticEndpoint;
      v37 = v49;
      goto LABEL_29;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6448D8, &qword_1D1E76630);
    v51 = swift_allocObject();
    v46 = v51;
    *(v51 + 16) = xmmword_1D1E739C0;
    if (v50 > 20)
    {
      if ((v50 - 21) < 2)
      {
        v52 = 19;
        goto LABEL_37;
      }

      if (v50 == 23)
      {
        v52 = 53;
        goto LABEL_37;
      }

      if (v50 == 27)
      {
        v52 = 77;
        goto LABEL_37;
      }
    }

    else if ((v50 - 4) < 4)
    {
      v52 = 31;
LABEL_37:
      *(v51 + 32) = v52;
      v47 = type metadata accessor for StaticEndpoint;
      v48 = v49;
      goto LABEL_38;
    }

    v52 = 91;
    goto LABEL_37;
  }

  v38 = v33;
  v39 = v59;
  sub_1D182161C(v38, v59, type metadata accessor for StaticServiceGroup);
  sub_1D1821554(v39, v9, type metadata accessor for StaticServiceGroup);
  v40 = *&v9[*(v5 + 56)];
  v41 = v40[2];
  v42 = MEMORY[0x1E69E7CC0];
  if (!v41)
  {
    v43 = MEMORY[0x1E69E7CC0];
    goto LABEL_23;
  }

  v43 = sub_1D18042C8(v40[2], 0);
  v44 = sub_1D1804A58(&v62, v43 + ((*(v60 + 80) + 32) & ~*(v60 + 80)), v41, v40);

  result = sub_1D1716918();
  if (v44 == v41)
  {
    v42 = MEMORY[0x1E69E7CC0];
LABEL_23:
    sub_1D18215BC(v9, type metadata accessor for StaticServiceGroup);
    if (!*(v43 + 16))
    {

      v36 = type metadata accessor for StaticServiceGroup;
      v37 = v59;
      goto LABEL_29;
    }

    v53 = v56;
    sub_1D1821554(v43 + ((*(v60 + 80) + 32) & ~*(v60 + 80)), v56, type metadata accessor for StaticService);

    v54 = v57;
    sub_1D182161C(v53, v57, type metadata accessor for StaticService);
    if (*(v54 + *(v61 + 104)) == 30)
    {
      v46 = &unk_1F4D62218;
    }

    else
    {
      v46 = v42;
    }

    sub_1D18215BC(v54, type metadata accessor for StaticService);
    v47 = type metadata accessor for StaticServiceGroup;
    v48 = v59;
    goto LABEL_38;
  }

  __break(1u);
  return result;
}

uint64_t AccessoryDetailsBasicInfo.primaryStaticService.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for StaticService(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - v8;
  v10 = AccessoryDetailsBasicInfo.staticServices.getter();
  v11 = v10;
  v12 = v10 + 56;
  v13 = 1 << *(v10 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v10 + 56);
  v16 = (v13 + 63) >> 6;

  v18 = 0;
  if (v15)
  {
    while (1)
    {
      v19 = v18;
LABEL_8:
      sub_1D1821554(*(v11 + 48) + *(v3 + 72) * (__clz(__rbit64(v15)) | (v19 << 6)), v9, type metadata accessor for StaticService);
      sub_1D182161C(v9, v7, type metadata accessor for StaticService);
      if (v7[*(v2 + 24)] == 1)
      {
        break;
      }

      v15 &= v15 - 1;
      result = sub_1D18215BC(v7, type metadata accessor for StaticService);
      v18 = v19;
      if (!v15)
      {
        goto LABEL_5;
      }
    }

    sub_1D182161C(v7, a1, type metadata accessor for StaticService);
    (*(v3 + 56))(a1, 0, 1, v2);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v19 >= v16)
      {

        (*(v3 + 56))(a1, 1, 1, v2);
      }

      v15 = *(v12 + 8 * v19);
      ++v18;
      if (v15)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t AccessoryDetailsBasicInfo.staticServices.getter()
{
  v1 = v0;
  v2 = type metadata accessor for StaticServiceGroup();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v37 - v7;
  v9 = type metadata accessor for StaticService(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for StaticAccessory(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for AccessoryDetails.Payload(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1821554(v1, v21, type metadata accessor for AccessoryDetails.Payload);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v23 = sub_1D182161C(v21, v17, type metadata accessor for StaticAccessory);
      v24 = *&v17[*(v14 + 84)];
      MEMORY[0x1EEE9AC00](v23);
      *(&v37 - 2) = v17;
      v26 = sub_1D17868B8(sub_1D1823318, (&v37 - 4), v25);
      v27 = sub_1D1785078(v26);

      v28 = type metadata accessor for StaticAccessory;
      v29 = v17;
LABEL_13:
      sub_1D18215BC(v29, v28);
      return v27;
    }

    goto LABEL_8;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_1D182161C(v21, v8, type metadata accessor for StaticServiceGroup);
    sub_1D1821554(v8, v6, type metadata accessor for StaticServiceGroup);
    v30 = *&v6[*(v2 + 56)];
    v31 = v30[2];
    if (v31)
    {
      v13 = sub_1D18042C8(v30[2], 0);
      v38 = sub_1D1804A58(v39, &v13[(*(v10 + 80) + 32) & ~*(v10 + 80)], v31, v30);
      v21 = v39[2];
      v10 = v39[4];

      sub_1D1716918();
      if (v38 != v31)
      {
        __break(1u);
LABEL_8:
        sub_1D182161C(v21, v13, type metadata accessor for StaticService);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643258, &qword_1D1E716B0);
        v32 = *(v10 + 72);
        v33 = (*(v10 + 80) + 32) & ~*(v10 + 80);
        v34 = swift_allocObject();
        *(v34 + 16) = xmmword_1D1E739C0;
        sub_1D1821554(v13, v34 + v33, type metadata accessor for StaticService);
        v27 = sub_1D179CB38(v34);
        swift_setDeallocating();
        v35 = type metadata accessor for StaticService;
        sub_1D18215BC(v34 + v33, type metadata accessor for StaticService);
        swift_deallocClassInstance();
        v29 = v13;
LABEL_12:
        v28 = v35;
        goto LABEL_13;
      }
    }

    else
    {
      v13 = MEMORY[0x1E69E7CC0];
    }

    v35 = type metadata accessor for StaticServiceGroup;
    sub_1D18215BC(v6, type metadata accessor for StaticServiceGroup);
    v27 = sub_1D1785078(v13);

    v29 = v8;
    goto LABEL_12;
  }

  sub_1D18215BC(v21, type metadata accessor for AccessoryDetails.Payload);
  return MEMORY[0x1E69E7CD0];
}

uint64_t AccessoryDetailsBasicInfo.primaryServiceId.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v16 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v16 - v8;
  AccessoryDetailsBasicInfo.primaryStaticService.getter(v5);
  v10 = type metadata accessor for StaticService(0);
  if ((*(*(v10 - 8) + 48))(v5, 1, v10) == 1)
  {
    sub_1D1741A30(v5, &qword_1EC6436F0, &qword_1D1E99BC0);
    v11 = sub_1D1E66A7C();
    v12 = *(v11 - 8);
    (*(v12 + 56))(v9, 1, 1, v11);
    sub_1D1E66A6C();
    result = (*(v12 + 48))(v9, 1, v11);
    if (result != 1)
    {
      return sub_1D1741A30(v9, &qword_1EC642590, qword_1D1E71260);
    }
  }

  else
  {
    v14 = sub_1D1E66A7C();
    v15 = *(v14 - 8);
    (*(v15 + 16))(v9, v5, v14);
    sub_1D18215BC(v5, type metadata accessor for StaticService);
    (*(v15 + 56))(v9, 0, 1, v14);
    return (*(v15 + 32))(a1, v9, v14);
  }

  return result;
}

uint64_t AccessoryDetailsBasicInfo.displayAsServiceKind.getter@<X0>(_BYTE *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v9 - v4;
  AccessoryDetailsBasicInfo.primaryStaticService.getter(&v9 - v4);
  v6 = type metadata accessor for StaticService(0);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    result = sub_1D1741A30(v5, &qword_1EC6436F0, &qword_1D1E99BC0);
    LOBYTE(v8) = 0;
  }

  else
  {
    v8 = v5[*(v6 + 112)];
    if (v8 == 53)
    {
      LOBYTE(v8) = v5[*(v6 + 104)];
    }

    result = sub_1D18215BC(v5, type metadata accessor for StaticService);
  }

  *a1 = v8;
  return result;
}

uint64_t AccessoryDetailsBasicInfo.foregroundColor.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v17[-v2];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v17[-v6];
  v8 = type metadata accessor for StaticMatterDevice();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v17[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  AccessoryDetails.Payload.staticMatterDevice.getter(v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1D1741A30(v7, &qword_1EC643650, &qword_1D1E71D40);
    AccessoryDetailsBasicInfo.primaryStaticService.getter(v3);
    v13 = type metadata accessor for StaticService(0);
    if ((*(*(v13 - 8) + 48))(v3, 1, v13) == 1)
    {
      sub_1D1741A30(v3, &qword_1EC6436F0, &qword_1D1E99BC0);
      LOBYTE(v14) = 0;
    }

    else
    {
      v14 = v3[*(v13 + 112)];
      if (v14 == 53)
      {
        LOBYTE(v14) = v3[*(v13 + 104)];
      }

      sub_1D18215BC(v3, type metadata accessor for StaticService);
    }

    v18[0] = v14;
    return ServiceKind.foregroundColor.getter();
  }

  else
  {
    sub_1D182161C(v7, v12, type metadata accessor for StaticMatterDevice);
    static MatterDeviceType.primaryDeviceType(for:)(*&v12[*(v8 + 32)], v18);
    if (v18[0] == 28)
    {
      if (qword_1EC642158 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v15 = qword_1EC644938;
    }

    else
    {
      v17[7] = v18[0];
      v15 = MatterDeviceType.foregroundColor.getter();
    }

    sub_1D18215BC(v12, type metadata accessor for StaticMatterDevice);
    return v15;
  }
}

BOOL AccessoryDetailsBasicInfo.canBeToggled.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v7 - v2;
  AccessoryDetailsBasicInfo.primaryStaticService.getter(&v7 - v2);
  v4 = type metadata accessor for StaticService(0);
  if ((*(*(v4 - 8) + 48))(v3, 1, v4) == 1)
  {
    sub_1D1741A30(v3, &qword_1EC6436F0, &qword_1D1E99BC0);
    return 0;
  }

  else
  {
    v5 = StaticService.canBeToggled.getter();
    sub_1D18215BC(v3, type metadata accessor for StaticService);
  }

  return v5;
}

id sub_1D181F24C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D1821000(&qword_1EE07CFB0, type metadata accessor for DataModel);
  sub_1D1E66CAC();

  v4 = *(v3 + OBJC_IVAR____TtC13HomeDataModel9DataModel__currentHome);
  *a2 = v4;

  return v4;
}

void sub_1D181F30C(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_1D1DE83C0(v2);
}

uint64_t sub_1D181F33C(void **a1)
{
  v2 = *(type metadata accessor for StaticRoom(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1D1E0C030(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1D181F3E4(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_1D181F3E4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1D1E68F9C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for StaticRoom(0);
        v6 = sub_1D1E67C8C();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for StaticRoom(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1D181F7B8(v8, v9, a1, v4);
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
    return sub_1D181F510(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1D181F510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for StaticRoom(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v41 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v33 - v13;
  result = MEMORY[0x1EEE9AC00](v12);
  v18 = &v33 - v17;
  v35 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v40 = v19;
    v34 = v20;
    v24 = v19 + v20 * a3;
LABEL_6:
    v38 = v21;
    v39 = a3;
    v36 = v24;
    v37 = v23;
    while (1)
    {
      sub_1D1821554(v24, v18, type metadata accessor for StaticRoom);
      sub_1D1821554(v21, v14, type metadata accessor for StaticRoom);
      v25 = *(v8 + 20);
      v26 = *&v18[v25];
      v27 = *&v18[v25 + 8];
      v28 = &v14[v25];
      if (v26 == *v28 && v27 == *(v28 + 1))
      {
        sub_1D18215BC(v14, type metadata accessor for StaticRoom);
        result = sub_1D18215BC(v18, type metadata accessor for StaticRoom);
LABEL_5:
        a3 = v39 + 1;
        v21 = v38 + v34;
        v23 = v37 - 1;
        v24 = v36 + v34;
        if (v39 + 1 == v35)
        {
          return result;
        }

        goto LABEL_6;
      }

      v30 = sub_1D1E6904C();
      sub_1D18215BC(v14, type metadata accessor for StaticRoom);
      result = sub_1D18215BC(v18, type metadata accessor for StaticRoom);
      if ((v30 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v40)
      {
        break;
      }

      v31 = v41;
      sub_1D182161C(v24, v41, type metadata accessor for StaticRoom);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1D182161C(v31, v21, type metadata accessor for StaticRoom);
      v21 += v22;
      v24 += v22;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D181F7B8(int64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v133 = a1;
  v8 = type metadata accessor for StaticRoom(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v138 = &v126 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v145 = &v126 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v146 = &v126 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v144 = &v126 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v143 = (&v126 - v21);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v132 = &v126 - v23;
  result = MEMORY[0x1EEE9AC00](v22);
  v131 = &v126 - v26;
  v27 = a3[1];
  if (v27 < 1)
  {
    v29 = MEMORY[0x1E69E7CC0];
LABEL_111:
    v30 = *v133;
    if (!*v133)
    {
      goto LABEL_149;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_143:
      result = sub_1D1E0BE44(v29);
      v29 = result;
    }

    v149 = v29;
    v121 = *(v29 + 16);
    if (v121 >= 2)
    {
      while (*a3)
      {
        v122 = *(v29 + 16 * v121);
        v123 = v29;
        v124 = *(v29 + 16 * (v121 - 1) + 32);
        v29 = *(v29 + 16 * (v121 - 1) + 40);
        sub_1D182024C(*a3 + *(v9 + 72) * v122, *a3 + *(v9 + 72) * v124, *a3 + *(v9 + 72) * v29, v30);
        if (v5)
        {
        }

        if (v29 < v122)
        {
          goto LABEL_136;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v123 = sub_1D1E0BE44(v123);
        }

        if (v121 - 2 >= *(v123 + 2))
        {
          goto LABEL_137;
        }

        v125 = &v123[16 * v121];
        *v125 = v122;
        *(v125 + 1) = v29;
        v149 = v123;
        result = sub_1D1E0BDB8(v121 - 1);
        v29 = v149;
        v121 = *(v149 + 16);
        if (v121 <= 1)
        {
        }
      }

      goto LABEL_147;
    }
  }

  v147 = v25;
  v127 = a4;
  v28 = 0;
  v29 = MEMORY[0x1E69E7CC0];
  v135 = a3;
  v128 = v9;
  v148 = v8;
  while (1)
  {
    v30 = v28 + 1;
    if (v28 + 1 >= v27)
    {
      goto LABEL_37;
    }

    v139 = v27;
    a3 = *a3;
    v31 = *(v9 + 72);
    v141 = v28 + 1;
    v32 = v131;
    sub_1D1821554(a3 + v31 * v30, v131, type metadata accessor for StaticRoom);
    v134 = v28;
    v142 = v31;
    v30 = v132;
    sub_1D1821554(a3 + v31 * v28, v132, type metadata accessor for StaticRoom);
    v33 = *(v8 + 20);
    v34 = *(v32 + v33);
    v35 = *(v32 + v33 + 8);
    v36 = (v30 + v33);
    v37 = v34 == *v36 && v35 == v36[1];
    v130 = v5;
    LODWORD(v140) = v37 ? 0 : sub_1D1E6904C();
    v129 = v29;
    sub_1D18215BC(v132, type metadata accessor for StaticRoom);
    result = sub_1D18215BC(v131, type metadata accessor for StaticRoom);
    v38 = v134 + 2;
    v39 = v141;
    v40 = v142 * (v134 + 2);
    v41 = a3 + v40;
    v42 = v142 * v141;
    v43 = a3 + v142 * v141;
    do
    {
      v9 = v38;
      v29 = v39;
      v45 = v42;
      v5 = v40;
      if (v38 >= v139)
      {
        break;
      }

      a3 = v143;
      sub_1D1821554(v41, v143, type metadata accessor for StaticRoom);
      v46 = v144;
      sub_1D1821554(v43, v144, type metadata accessor for StaticRoom);
      v47 = *(v148 + 20);
      v48 = *(a3 + v47);
      v49 = *(a3 + v47 + 8);
      v50 = (v46 + v47);
      v51 = v48 == *v50 && v49 == v50[1];
      v44 = v51 ? 0 : sub_1D1E6904C();
      v30 = type metadata accessor for StaticRoom;
      sub_1D18215BC(v144, type metadata accessor for StaticRoom);
      result = sub_1D18215BC(v143, type metadata accessor for StaticRoom);
      v38 = v9 + 1;
      v41 += v142;
      v43 += v142;
      v39 = v29 + 1;
      v42 = v45 + v142;
      v40 = v5 + v142;
    }

    while (((v140 ^ v44) & 1) == 0);
    if (v140)
    {
      v52 = v134;
      if (v9 < v134)
      {
        goto LABEL_140;
      }

      if (v134 >= v9)
      {
        v30 = v9;
        v29 = v129;
        v5 = v130;
        a3 = v135;
        v9 = v128;
        v8 = v148;
        v28 = v134;
        goto LABEL_37;
      }

      v53 = v134 * v142;
      v8 = v148;
      do
      {
        if (v52 != v29)
        {
          v55 = *v135;
          if (!*v135)
          {
            goto LABEL_146;
          }

          sub_1D182161C(v55 + v53, v138, type metadata accessor for StaticRoom);
          if (v53 < v45 || v55 + v53 >= (v55 + v5))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v53 != v45)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          result = sub_1D182161C(v138, v55 + v45, type metadata accessor for StaticRoom);
          v8 = v148;
        }

        ++v52;
        v45 -= v142;
        v5 -= v142;
        v53 += v142;
      }

      while (v52 < v29--);
      v30 = v9;
      v29 = v129;
      v5 = v130;
      a3 = v135;
      v9 = v128;
    }

    else
    {
      v30 = v9;
      v29 = v129;
      v5 = v130;
      a3 = v135;
      v9 = v128;
      v8 = v148;
    }

    v28 = v134;
LABEL_37:
    v56 = a3[1];
    if (v30 < v56)
    {
      if (__OFSUB__(v30, v28))
      {
        goto LABEL_139;
      }

      if (v30 - v28 < v127)
      {
        v57 = v28 + v127;
        if (__OFADD__(v28, v127))
        {
          goto LABEL_141;
        }

        if (v57 >= v56)
        {
          v57 = a3[1];
        }

        if (v57 < v28)
        {
LABEL_142:
          __break(1u);
          goto LABEL_143;
        }

        if (v30 != v57)
        {
          break;
        }
      }
    }

LABEL_60:
    if (v30 < v28)
    {
      goto LABEL_138;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D177D070(0, *(v29 + 16) + 1, 1, v29);
      v29 = result;
    }

    v76 = *(v29 + 16);
    v75 = *(v29 + 24);
    v77 = v76 + 1;
    if (v76 >= v75 >> 1)
    {
      result = sub_1D177D070((v75 > 1), v76 + 1, 1, v29);
      v29 = result;
    }

    *(v29 + 16) = v77;
    v78 = v29 + 16 * v76;
    *(v78 + 32) = v28;
    *(v78 + 40) = v30;
    v141 = v30;
    v30 = *v133;
    if (!*v133)
    {
      goto LABEL_148;
    }

    if (v76)
    {
      while (1)
      {
        v79 = v77 - 1;
        if (v77 >= 4)
        {
          break;
        }

        if (v77 == 3)
        {
          v80 = *(v29 + 32);
          v81 = *(v29 + 40);
          v90 = __OFSUB__(v81, v80);
          v82 = v81 - v80;
          v83 = v90;
LABEL_80:
          if (v83)
          {
            goto LABEL_127;
          }

          v96 = (v29 + 16 * v77);
          v98 = *v96;
          v97 = v96[1];
          v99 = __OFSUB__(v97, v98);
          v100 = v97 - v98;
          v101 = v99;
          if (v99)
          {
            goto LABEL_130;
          }

          v102 = (v29 + 32 + 16 * v79);
          v104 = *v102;
          v103 = v102[1];
          v90 = __OFSUB__(v103, v104);
          v105 = v103 - v104;
          if (v90)
          {
            goto LABEL_133;
          }

          if (__OFADD__(v100, v105))
          {
            goto LABEL_134;
          }

          if (v100 + v105 >= v82)
          {
            if (v82 < v105)
            {
              v79 = v77 - 2;
            }

            goto LABEL_101;
          }

          goto LABEL_94;
        }

        v106 = (v29 + 16 * v77);
        v108 = *v106;
        v107 = v106[1];
        v90 = __OFSUB__(v107, v108);
        v100 = v107 - v108;
        v101 = v90;
LABEL_94:
        if (v101)
        {
          goto LABEL_129;
        }

        v109 = v29 + 16 * v79;
        v111 = *(v109 + 32);
        v110 = *(v109 + 40);
        v90 = __OFSUB__(v110, v111);
        v112 = v110 - v111;
        if (v90)
        {
          goto LABEL_132;
        }

        if (v112 < v100)
        {
          goto LABEL_3;
        }

LABEL_101:
        v117 = v79 - 1;
        if (v79 - 1 >= v77)
        {
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
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
          goto LABEL_142;
        }

        if (!*a3)
        {
          goto LABEL_145;
        }

        v118 = *(v29 + 32 + 16 * v117);
        v119 = *(v29 + 32 + 16 * v79 + 8);
        sub_1D182024C(*a3 + *(v9 + 72) * v118, *a3 + *(v9 + 72) * *(v29 + 32 + 16 * v79), *a3 + *(v9 + 72) * v119, v30);
        if (v5)
        {
        }

        if (v119 < v118)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_1D1E0BE44(v29);
        }

        if (v117 >= *(v29 + 16))
        {
          goto LABEL_124;
        }

        v120 = v29 + 16 * v117;
        *(v120 + 32) = v118;
        *(v120 + 40) = v119;
        v149 = v29;
        result = sub_1D1E0BDB8(v79);
        v29 = v149;
        v77 = *(v149 + 16);
        if (v77 <= 1)
        {
          goto LABEL_3;
        }
      }

      v84 = v29 + 32 + 16 * v77;
      v85 = *(v84 - 64);
      v86 = *(v84 - 56);
      v90 = __OFSUB__(v86, v85);
      v87 = v86 - v85;
      if (v90)
      {
        goto LABEL_125;
      }

      v89 = *(v84 - 48);
      v88 = *(v84 - 40);
      v90 = __OFSUB__(v88, v89);
      v82 = v88 - v89;
      v83 = v90;
      if (v90)
      {
        goto LABEL_126;
      }

      v91 = (v29 + 16 * v77);
      v93 = *v91;
      v92 = v91[1];
      v90 = __OFSUB__(v92, v93);
      v94 = v92 - v93;
      if (v90)
      {
        goto LABEL_128;
      }

      v90 = __OFADD__(v82, v94);
      v95 = v82 + v94;
      if (v90)
      {
        goto LABEL_131;
      }

      if (v95 >= v87)
      {
        v113 = (v29 + 32 + 16 * v79);
        v115 = *v113;
        v114 = v113[1];
        v90 = __OFSUB__(v114, v115);
        v116 = v114 - v115;
        if (v90)
        {
          goto LABEL_135;
        }

        if (v82 < v116)
        {
          v79 = v77 - 2;
        }

        goto LABEL_101;
      }

      goto LABEL_80;
    }

LABEL_3:
    v27 = a3[1];
    v28 = v141;
    v8 = v148;
    if (v141 >= v27)
    {
      goto LABEL_111;
    }
  }

  v129 = v29;
  v130 = v5;
  v58 = *a3;
  v59 = *(v9 + 72);
  v60 = *a3 + v59 * (v30 - 1);
  v61 = -v59;
  v134 = v28;
  v62 = v28 - v30;
  v136 = v59;
  v137 = v57;
  v63 = v58 + v30 * v59;
  v64 = v146;
  while (2)
  {
    v140 = v62;
    v141 = v30;
    v139 = v63;
    v65 = v63;
    v142 = v60;
LABEL_49:
    v66 = v147;
    sub_1D1821554(v65, v147, type metadata accessor for StaticRoom);
    sub_1D1821554(v60, v64, type metadata accessor for StaticRoom);
    v67 = *(v8 + 20);
    v68 = *(v66 + v67);
    v69 = *(v66 + v67 + 8);
    v70 = (v64 + v67);
    if (v68 == *v70 && v69 == v70[1])
    {
      sub_1D18215BC(v64, type metadata accessor for StaticRoom);
      sub_1D18215BC(v66, type metadata accessor for StaticRoom);
LABEL_47:
      v30 = v141 + 1;
      v60 = v142 + v136;
      v62 = v140 - 1;
      v63 = v139 + v136;
      if (v141 + 1 != v137)
      {
        continue;
      }

      v30 = v137;
      v29 = v129;
      v5 = v130;
      v28 = v134;
      a3 = v135;
      v9 = v128;
      goto LABEL_60;
    }

    break;
  }

  v72 = sub_1D1E6904C();
  sub_1D18215BC(v64, type metadata accessor for StaticRoom);
  result = sub_1D18215BC(v66, type metadata accessor for StaticRoom);
  if ((v72 & 1) == 0)
  {
    v8 = v148;
    goto LABEL_47;
  }

  v8 = v148;
  if (v58)
  {
    v73 = v145;
    sub_1D182161C(v65, v145, type metadata accessor for StaticRoom);
    swift_arrayInitWithTakeFrontToBack();
    sub_1D182161C(v73, v60, type metadata accessor for StaticRoom);
    v60 += v61;
    v65 += v61;
    v74 = __CFADD__(v62++, 1);
    v64 = v146;
    if (v74)
    {
      goto LABEL_47;
    }

    goto LABEL_49;
  }

  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
  return result;
}

uint64_t sub_1D182024C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v58 = a4;
  v57 = type metadata accessor for StaticRoom(0);
  v7 = *(*(v57 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v57);
  v56 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v55 = &v50 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v50 - v13;
  result = MEMORY[0x1EEE9AC00](v12);
  v17 = &v50 - v16;
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_71;
  }

  v20 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_72;
  }

  v21 = (a2 - a1) / v19;
  v61 = a1;
  v60 = v58;
  if (v21 >= v20 / v19)
  {
    v23 = v20 / v19 * v19;
    if (v58 < a2 || a2 + v23 <= v58)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v58 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v33 = v58 + v23;
    if (v23 >= 1)
    {
      v34 = -v19;
      v35 = v58 + v23;
      do
      {
        v51 = v33;
        v36 = a2;
        v37 = a2 + v34;
        v53 = v36;
        v54 = v37;
        while (1)
        {
          if (v36 <= a1)
          {
            v61 = v36;
            v59 = v51;
            goto LABEL_69;
          }

          v38 = a3;
          v52 = v33;
          v39 = v34;
          v40 = v35 + v34;
          v41 = v35 + v34;
          v42 = v55;
          sub_1D1821554(v41, v55, type metadata accessor for StaticRoom);
          v43 = v56;
          sub_1D1821554(v37, v56, type metadata accessor for StaticRoom);
          v44 = *(v57 + 20);
          v45 = *(v42 + v44);
          v46 = *(v42 + v44 + 8);
          v47 = (v43 + v44);
          v48 = v45 == *v47 && v46 == v47[1];
          v49 = v48 ? 0 : sub_1D1E6904C();
          v34 = v39;
          a3 = v38 + v39;
          sub_1D18215BC(v56, type metadata accessor for StaticRoom);
          sub_1D18215BC(v55, type metadata accessor for StaticRoom);
          if (v49)
          {
            break;
          }

          v33 = v40;
          v37 = v54;
          if (v38 < v35 || a3 >= v35)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v38 != v35)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v35 = v40;
          v36 = v53;
          if (v40 <= v58)
          {
            a2 = v53;
            goto LABEL_68;
          }
        }

        a2 = v54;
        if (v38 < v53 || a3 >= v53)
        {
          swift_arrayInitWithTakeFrontToBack();
          v33 = v52;
        }

        else
        {
          v33 = v52;
          if (v38 != v53)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v35 > v58);
    }

LABEL_68:
    v61 = a2;
    v59 = v33;
  }

  else
  {
    v22 = v21 * v19;
    if (v58 < a1 || a1 + v22 <= v58)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v58 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v24 = v58 + v22;
    v59 = v58 + v22;
    if (v22 >= 1 && a2 < a3)
    {
      while (1)
      {
        sub_1D1821554(a2, v17, type metadata accessor for StaticRoom);
        sub_1D1821554(v58, v14, type metadata accessor for StaticRoom);
        v26 = *(v57 + 20);
        v27 = *&v17[v26];
        v28 = *&v17[v26 + 8];
        v29 = &v14[v26];
        if (v27 == *v29 && v28 == *(v29 + 1))
        {
          break;
        }

        v31 = sub_1D1E6904C();
        sub_1D18215BC(v14, type metadata accessor for StaticRoom);
        sub_1D18215BC(v17, type metadata accessor for StaticRoom);
        if ((v31 & 1) == 0)
        {
          goto LABEL_30;
        }

        if (a1 < a2 || a1 >= a2 + v19)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v19;
LABEL_38:
        a1 += v19;
        v61 = a1;
        if (v58 >= v24 || a2 >= a3)
        {
          goto LABEL_69;
        }
      }

      sub_1D18215BC(v14, type metadata accessor for StaticRoom);
      sub_1D18215BC(v17, type metadata accessor for StaticRoom);
LABEL_30:
      v32 = v58 + v19;
      if (a1 < v58 || a1 >= v32)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != v58)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v60 = v32;
      v58 = v32;
      goto LABEL_38;
    }
  }

LABEL_69:
  sub_1D1DC7174(&v61, &v60, &v59);
  return 1;
}

uint64_t _s13HomeDataModel25AccessoryDetailsBasicInfoV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticRoom(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643878, &qword_1D1E72030);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v52 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644930, &qword_1D1E768B8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v52 - v15;
  if ((static AccessoryDetails.Payload.== infix(_:_:)(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v17 = type metadata accessor for AccessoryDetailsBasicInfo();
  v18 = *(v17 + 20);
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = v21[1];
  if (v20)
  {
    if (!v22)
    {
      return 0;
    }

    v23 = *v19 == *v21 && v20 == v22;
    if (!v23 && (sub_1D1E6904C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v22)
  {
    return 0;
  }

  v54 = v17;
  v24 = *(v17 + 24);
  v25 = a1;
  v26 = *(v13 + 48);
  v52 = v25;
  sub_1D1741C08(v25 + v24, v16, &qword_1EC643878, &qword_1D1E72030);
  v53 = a2;
  sub_1D1741C08(a2 + v24, &v16[v26], &qword_1EC643878, &qword_1D1E72030);
  v27 = *(v5 + 48);
  if (v27(v16, 1, v4) == 1)
  {
    if (v27(&v16[v26], 1, v4) == 1)
    {
      sub_1D1741A30(v16, &qword_1EC643878, &qword_1D1E72030);
      goto LABEL_20;
    }

LABEL_16:
    sub_1D1741A30(v16, &qword_1EC644930, &qword_1D1E768B8);
    return 0;
  }

  sub_1D1741C08(v16, v12, &qword_1EC643878, &qword_1D1E72030);
  if (v27(&v16[v26], 1, v4) == 1)
  {
    sub_1D18215BC(v12, type metadata accessor for StaticRoom);
    goto LABEL_16;
  }

  sub_1D182161C(&v16[v26], v8, type metadata accessor for StaticRoom);
  v29 = static StaticRoom.== infix(_:_:)(v12, v8);
  sub_1D18215BC(v8, type metadata accessor for StaticRoom);
  sub_1D18215BC(v12, type metadata accessor for StaticRoom);
  sub_1D1741A30(v16, &qword_1EC643878, &qword_1D1E72030);
  if ((v29 & 1) == 0)
  {
    return 0;
  }

LABEL_20:
  v30 = v53;
  v31 = v54;
  v32 = v54[7];
  v33 = v52;
  v34 = (v52 + v32);
  v35 = *(v52 + v32 + 8);
  v36 = (v53 + v32);
  v37 = v36[1];
  if (v35)
  {
    if (!v37 || (*v34 != *v36 || v35 != v37) && (sub_1D1E6904C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v37)
  {
    return 0;
  }

  v38 = v31[8];
  v39 = *(v33 + v38);
  v40 = *(v30 + v38);
  if (v39 == 2)
  {
    if (v40 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v40 == 2 || ((v40 ^ v39) & 1) != 0)
    {
      return result;
    }
  }

  v41 = v31[9];
  v42 = *(v33 + v41);
  v43 = *(v30 + v41);
  if (v42 == 2)
  {
    if (v43 != 2)
    {
      return 0;
    }

    goto LABEL_37;
  }

  result = 0;
  if (v43 != 2 && ((v43 ^ v42) & 1) == 0)
  {
LABEL_37:
    v44 = v31[10];
    v45 = *(v33 + v44);
    v46 = *(v30 + v44);
    if (v45 == 92)
    {
      if (v46 == 92)
      {
        return 1;
      }
    }

    else if (v46 != 92)
    {
      v56 = v45;
      v55 = v46;
      v47 = IconSymbol.rawValue.getter();
      v49 = v48;
      if (v47 == IconSymbol.rawValue.getter() && v49 == v50)
      {
      }

      else
      {
        v51 = sub_1D1E6904C();

        if ((v51 & 1) == 0)
        {
          return 0;
        }
      }

      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t type metadata accessor for AccessoryDetailsBasicInfo()
{
  result = qword_1EC6448E8;
  if (!qword_1EC6448E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D1820D0C()
{
  result = qword_1EC644888;
  if (!qword_1EC644888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644888);
  }

  return result;
}

unint64_t sub_1D1820D60()
{
  result = qword_1EC644898;
  if (!qword_1EC644898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644898);
  }

  return result;
}

unint64_t sub_1D1820DB4()
{
  result = qword_1EC6448A8;
  if (!qword_1EC6448A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6448A8);
  }

  return result;
}

uint64_t sub_1D1820E08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643878, &qword_1D1E72030);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D1820E78()
{
  result = qword_1EC6448C0;
  if (!qword_1EC6448C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6448C0);
  }

  return result;
}

uint64_t sub_1D1820EE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6448D0, &qword_1D1E76600);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1820F58(uint64_t result, char a2)
{
  if ((a2 & 0xE0) == 0x40)
  {
    return sub_1D1771B5C(result, a2 & 0x1F);
  }

  return result;
}

uint64_t sub_1D1821000(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D1821070()
{
  type metadata accessor for AccessoryDetails.Payload(319);
  if (v0 <= 0x3F)
  {
    sub_1D17BDF80(319, qword_1EE07D1F8);
    if (v1 <= 0x3F)
    {
      sub_1D1821170();
      if (v2 <= 0x3F)
      {
        sub_1D17BDF80(319, &qword_1EE07D1F0);
        if (v3 <= 0x3F)
        {
          sub_1D17BDF80(319, &qword_1EC644900);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1D1821170()
{
  if (!qword_1EC6448F8)
  {
    type metadata accessor for StaticRoom(255);
    v0 = sub_1D1E685AC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC6448F8);
    }
  }
}

unint64_t sub_1D18211DC()
{
  result = qword_1EC644908;
  if (!qword_1EC644908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644908);
  }

  return result;
}

unint64_t sub_1D1821234()
{
  result = qword_1EC644910;
  if (!qword_1EC644910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644910);
  }

  return result;
}

unint64_t sub_1D182128C()
{
  result = qword_1EC644918;
  if (!qword_1EC644918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644918);
  }

  return result;
}

uint64_t sub_1D18212E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64616F6C796170 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x614E646567617473 && a2 == 0xEA0000000000656DLL || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F52646567617473 && a2 == 0xEA00000000006D6FLL || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D1EBA130 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D1EBA150 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D1EBA170 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D1EBA190 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1D1821554(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D18215BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D182161C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1821684(void *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AccessoryDetailsBasicInfo() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return sub_1D181870C(a1, a2, v7, v2 + v6, v9, v10);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D1821750(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for AccessoryDetailsBasicInfo() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1D17C4BFC;

  return sub_1D181891C(a1, v7, v8, v9, v10, v1 + v6, v12, v13);
}

unint64_t sub_1D1821898()
{
  result = qword_1EE07B620;
  if (!qword_1EE07B620)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE07B620);
  }

  return result;
}

uint64_t sub_1D18218E4(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1D17C4BFC;

  return sub_1D1C4C990(a1, a2, v7, v6);
}

uint64_t sub_1D1821998()
{
  v2 = *(type metadata accessor for AccessoryDetailsBasicInfo() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1D17C4CF0;

  return sub_1D1809324();
}

uint64_t sub_1D1821A88()
{
  v2 = *(type metadata accessor for AccessoryDetailsBasicInfo() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1D17C4CF0;

  return sub_1D180C028();
}

uint64_t sub_1D1821B78()
{
  v2 = *(type metadata accessor for AccessoryDetailsBasicInfo() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1D17C4CF0;

  return sub_1D180EAD8();
}

uint64_t sub_1D1821C68()
{
  v2 = *(type metadata accessor for AccessoryDetailsBasicInfo() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1D17C4CF0;

  return sub_1D180F944();
}

uint64_t objectdestroy_74Tm()
{
  v1 = v0;
  v2 = type metadata accessor for AccessoryDetailsBasicInfo();
  v204 = *(*(v2 - 8) + 80);
  v3 = (v204 + 32) & ~v204;
  v202 = *(*(v2 - 8) + 64);
  v4 = *(v1 + 16);
  swift_unknownObjectRelease();
  v203 = v3;
  v5 = v1 + v3;
  type metadata accessor for AccessoryDetails.Payload(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v205 = v2;
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_95;
      }

      v7 = sub_1D1E66A7C();
      v8 = *(v7 - 8);
      v9 = *(v8 + 8);
      v9(v5, v7);
      v10 = type metadata accessor for StaticService(0);
      v11 = *(v5 + v10[5] + 8);

      v197 = v9;
      v9(v5 + v10[11], v7);
      v12 = v5 + v10[13];
      v13 = type metadata accessor for StaticDeviceMetadata();
      if (!(*(*(v13 - 1) + 48))(v12, 1, v13))
      {
        v9(v12, v7);
        v14 = *(v12 + v13[5] + 8);

        v15 = *(v12 + v13[6] + 8);

        v16 = *(v12 + v13[7] + 8);

        v17 = *(v12 + v13[8] + 8);
      }

      v18 = v10[14];
      v19 = sub_1D1E669FC();
      v20 = *(v19 - 8);
      v21 = *(v20 + 48);
      if (!v21(v5 + v18, 1, v19))
      {
        (*(v20 + 8))(v5 + v18, v19);
      }

      v22 = v10[15];
      if (!v21(v5 + v22, 1, v19))
      {
        (*(v20 + 8))(v5 + v22, v19);
      }

      v194 = v20;
      v23 = *(v5 + v10[19]);

      v24 = *(v5 + v10[20] + 8);

      v25 = *(v5 + v10[25] + 8);

      v26 = v10[29];
      v27 = *(v8 + 48);
      if (!v27(v5 + v26, 1, v7))
      {
        v9(v5 + v26, v7);
      }

      v199 = v1;
      v28 = v10[30];
      if (!v27(v5 + v28, 1, v7))
      {
        v9(v5 + v28, v7);
      }

      v29 = *(v5 + v10[31]);

      v30 = *(v5 + v10[32]);

      v31 = (v5 + v10[33]);
      v32 = *v31;

      v33 = v31[1];

      v34 = v5 + v10[34];
      v35 = type metadata accessor for StaticSoftwareUpdate(0);
      if (!(*(*(v35 - 8) + 48))(v34, 1, v35))
      {
        v9(v34, v7);
        v36 = v34 + *(v35 + 20);
        type metadata accessor for StaticSoftwareUpdate.Kind(0);
        v37 = swift_getEnumCaseMultiPayload();
        if (v37 == 2 || v37 == 1)
        {
          v135 = *(v36 + 8);

          updated = type metadata accessor for StaticSoftwareUpdateMetadata(0);
          v193 = updated[5];
          if (!v21(v36 + v193, 1, v19))
          {
            (*(v194 + 8))(v36 + v193, v19);
          }

          v137 = *(v36 + updated[6] + 8);

          v138 = *(v36 + updated[7] + 8);
        }

        else
        {
          if (v37)
          {
            goto LABEL_75;
          }

          v9(v36, v7);
          if (*(v36 + *(type metadata accessor for StaticHH2Update(0) + 24) + 8) < 2uLL)
          {
            goto LABEL_75;
          }
        }
      }

LABEL_75:
      v139 = *(v5 + v10[36]);

      v140 = v10[37];
      if (!v27(v5 + v140, 1, v7))
      {
        v197(v5 + v140, v7);
      }

      v141 = v10[39];
      v142 = type metadata accessor for EndpointPath(0);
      v1 = v199;
      if (!(*(*(v142 - 8) + 48))(v5 + v141, 1, v142))
      {
        v197(v5 + v141, v7);
      }

      v143 = v5 + v10[40];
      v144 = type metadata accessor for StaticService.AutoClimateControlConfig(0);
      if (!(*(*(v144 - 8) + 48))(v143, 1, v144))
      {
        if (*(v143 + 16) != 1)
        {
        }

        v145 = v143 + *(v144 + 20);
        v146 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting(0);
        if (!(*(*(v146 - 8) + 48))(v145, 1, v146))
        {
          v147 = *(v145 + 8);

          v148 = *(v146 + 24);
          v149 = sub_1D1E66C5C();
          (*(*(v149 - 8) + 8))(v145 + v148, v149);
        }

        v150 = *(v143 + *(v144 + 24));
LABEL_85:

        goto LABEL_95;
      }

      goto LABEL_95;
    }

    v97 = sub_1D1E66A7C();
    v98 = *(v97 - 8);
    v99 = *(v98 + 8);
    v99(v5, v97);
    v100 = type metadata accessor for StaticAccessory(0);
    v101 = v100[5];
    v102 = sub_1D1E669FC();
    v195 = *(v102 - 8);
    v196 = *(v195 + 48);
    if (!v196(v5 + v101, 1, v102))
    {
      (*(v195 + 8))(v5 + v101, v102);
    }

    v198 = v102;
    v103 = *(v5 + v100[7] + 8);

    v104 = v5 + v100[8];
    type metadata accessor for StaticAccessory.DeviceIdentifier(0);
    v201 = v1;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v99(v104, v97);
    }

    else
    {
      v114 = *(v104 + 8);
    }

    v115 = v5 + v100[9];
    v116 = type metadata accessor for StaticDeviceMetadata();
    if (!(*(*(v116 - 1) + 48))(v115, 1, v116))
    {
      v99(v115, v97);
      v117 = *(v115 + v116[5] + 8);

      v118 = *(v115 + v116[6] + 8);

      v119 = *(v115 + v116[7] + 8);

      v120 = *(v115 + v116[8] + 8);
    }

    v121 = v100[10];
    if (!v196(v5 + v121, 1, v198))
    {
      (*(v195 + 8))(v5 + v121, v198);
    }

    v99(v5 + v100[12], v97);
    v122 = *(v5 + v100[13]);

    v123 = *(v5 + v100[14] + 8);

    v124 = *(v5 + v100[20]);

    v125 = *(v5 + v100[21]);

    v126 = v100[22];
    if (!(*(v98 + 48))(v5 + v126, 1, v97))
    {
      v99(v5 + v126, v97);
    }

    v127 = v5 + v100[23];
    v128 = *(v127 + 8);
    if (v128 != 255)
    {
      sub_1D1771B5C(*v127, v128);
    }

    v129 = *(v5 + v100[24] + 8);

    v130 = *(v5 + v100[25]);

    v131 = v5 + v100[30];
    v132 = type metadata accessor for StaticSoftwareUpdate(0);
    if (!(*(*(v132 - 8) + 48))(v131, 1, v132))
    {
      v99(v131, v97);
      v133 = v131 + *(v132 + 20);
      type metadata accessor for StaticSoftwareUpdate.Kind(0);
      v134 = swift_getEnumCaseMultiPayload();
      if (v134 == 2 || v134 == 1)
      {
        v151 = *(v133 + 8);

        v152 = type metadata accessor for StaticSoftwareUpdateMetadata(0);
        v153 = v152[5];
        if (!v196(v133 + v153, 1, v198))
        {
          (*(v195 + 8))(v133 + v153, v198);
        }

        v154 = *(v133 + v152[6] + 8);

        v155 = *(v133 + v152[7] + 8);
      }

      else
      {
        if (v134)
        {
          goto LABEL_90;
        }

        v99(v133, v97);
        if (*(v133 + *(type metadata accessor for StaticHH2Update(0) + 24) + 8) < 2uLL)
        {
          goto LABEL_90;
        }
      }
    }

LABEL_90:
    v156 = *(v5 + v100[33]);

    v157 = v5 + v100[38];
    v158 = type metadata accessor for StaticMatterDevice();
    v1 = v201;
    if (!(*(*(v158 - 1) + 48))(v157, 1, v158))
    {
      v99(v157, v97);
      v159 = *(v157 + v158[6] + 8);

      v160 = *(v157 + v158[8]);

      v99(v157 + v158[9], v97);
      v99(v157 + v158[10], v97);
      v161 = *(v157 + v158[11] + 8);

      v99(v157 + v158[12], v97);
      v162 = v158[13];
      if (!v196(v157 + v162, 1, v198))
      {
        (*(v195 + 8))(v157 + v162, v198);
      }

      v163 = *(v157 + v158[14]);

      v164 = (v157 + v158[15]);
      v165 = *(v164 + 1);

      v166 = *(v164 + 3);

      v167 = *(v164 + 5);

      v168 = *(type metadata accessor for MatterTileMetadata() + 44);
      if (!v196(&v164[v168], 1, v198))
      {
        (*(v195 + 8))(&v164[v168], v198);
      }
    }

    goto LABEL_95;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v105 = sub_1D1E66A7C();
    (*(*(v105 - 8) + 8))(v1 + v3, v105);
    v106 = type metadata accessor for StaticServiceGroup();
    v107 = *(v5 + v106[5] + 8);

    v108 = v106[8];
    v109 = sub_1D1E669FC();
    v110 = *(v109 - 8);
    if (!(*(v110 + 48))(v5 + v108, 1, v109))
    {
      (*(v110 + 8))(v5 + v108, v109);
    }

    v111 = *(v5 + v106[9]);

    v112 = *(v5 + v106[10] + 8);

    v113 = *(v5 + v106[14]);
    goto LABEL_85;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v38 = sub_1D1E66A7C();
    v39 = *(*(v38 - 8) + 8);
    v39(v5, v38);
    v40 = type metadata accessor for StaticEndpoint();
    v39(v5 + v40[5], v38);
    v41 = *(v5 + v40[6] + 8);

    v42 = *(v5 + v40[8]);

    v43 = *(v5 + v40[9]);

    v44 = v5 + v40[10];
    v45 = type metadata accessor for StaticRVCClusterGroup();
    if (!(*(*(v45 - 1) + 48))(v44, 1, v45))
    {
      v46 = v1;
      v39(v44, v38);
      v47 = v44 + v45[6];
      v48 = *(v47 + 16);

      v49 = *(v47 + 24);

      v50 = v44 + v45[7];
      if (*(v50 + 16))
      {

        v51 = *(v50 + 24);
      }

      v52 = *(v44 + v45[9]);

      v53 = *(v44 + v45[10]);

      v54 = *(v44 + v45[11]);

      v55 = (v44 + v45[15]);
      v1 = v46;
      if (*v55)
      {

        v56 = v55[1];

        v57 = v55[2];

        v58 = v55[5];

        if (v55[9] != 1)
        {
        }

        v59 = v55[13];
      }
    }

    v60 = v44 + *(type metadata accessor for StaticClusterGroups() + 20);
    v61 = type metadata accessor for StaticThermostatClusterGroup();
    if (!(*(*(v61 - 1) + 48))(v60, 1, v61))
    {
      v200 = v1;
      v39(v60, v38);
      v62 = (v60 + v61[7]);
      v63 = *(v62 + 1);

      v64 = *(v62 + 2);

      v65 = *(v62 + 3);

      v66 = type metadata accessor for StaticThermostatClusterGroup.PresetsConfig(0);
      v67 = &v62[v66[9]];
      v68 = type metadata accessor for StaticThermostatClusterGroup.PresetsConfig.SuggestedPreset(0);
      if (!(*(*(v68 - 8) + 48))(v67, 1, v68))
      {
        v69 = v67[1];
        if (v69 >> 60 != 15)
        {
          sub_1D174E7C4(*v67, v69);
        }

        v70 = *(v68 + 20);
        v71 = sub_1D1E669FC();
        v72 = *(v71 - 8);
        if (!(*(v72 + 48))(v67 + v70, 1, v71))
        {
          (*(v72 + 8))(v67 + v70, v71);
        }
      }

      v73 = &v62[v66[11]];
      v74 = v73[1];
      if (v74 >> 60 != 15)
      {
        sub_1D174E7C4(*v73, v74);
      }

      v75 = &v62[v66[12]];
      v76 = v75[1];
      if (v76 >> 60 != 15)
      {
        sub_1D174E7C4(*v75, v76);
      }

      v77 = v66[13];
      v78 = sub_1D1E669FC();
      v79 = *(v78 - 8);
      v80 = *(v79 + 48);
      if (!v80(&v62[v77], 1, v78))
      {
        (*(v79 + 8))(&v62[v77], v78);
      }

      v81 = v61[8];
      v82 = v81 + *(type metadata accessor for StaticThermostatClusterGroup.SetpointConfig(0) + 28);
      if (!v80((v60 + v82), 1, v78))
      {
        (*(v79 + 8))(v60 + v82, v78);
      }

      v83 = v60 + v61[12];
      v84 = type metadata accessor for StaticThermostatClusterGroup.Alvarado();
      v85 = *(v84 + 32);
      if (!v80((v83 + v85), 1, v78))
      {
        (*(v79 + 8))(v83 + v85, v78);
      }

      v86 = *(v84 + 36);
      v87 = v80((v83 + v86), 1, v78);
      v1 = v200;
      if (!v87)
      {
        (*(v79 + 8))(v83 + v86, v78);
      }
    }

    v88 = *(v5 + v40[11]);

    v89 = *(v5 + v40[12]);

    v90 = (v5 + v40[13]);
    v91 = *(v90 + 1);

    v92 = *(v90 + 3);

    v93 = *(v90 + 5);

    v94 = *(type metadata accessor for MatterTileMetadata() + 44);
    v95 = sub_1D1E669FC();
    v96 = *(v95 - 8);
    if (!(*(v96 + 48))(&v90[v94], 1, v95))
    {
      (*(v96 + 8))(&v90[v94], v95);
    }
  }

LABEL_95:
  v169 = v205;
  v170 = *(v5 + *(v205 + 20) + 8);

  v171 = v5 + *(v205 + 24);
  v172 = type metadata accessor for StaticRoom(0);
  if (!(*(*(v172 - 1) + 48))(v171, 1, v172))
  {
    v173 = v1;
    v174 = sub_1D1E66A7C();
    v175 = *(*(v174 - 8) + 8);
    v175(v171, v174);
    v176 = *(v171 + v172[5] + 8);

    v177 = v172[6];
    v178 = sub_1D1E669FC();
    v179 = *(v178 - 8);
    if (!(*(v179 + 48))(v171 + v177, 1, v178))
    {
      (*(v179 + 8))(v171 + v177, v178);
    }

    v180 = *(v171 + v172[8]);

    v175(v171 + v172[9], v174);
    v181 = *(v171 + v172[10]);

    v182 = *(v171 + v172[11]);

    v183 = *(v171 + v172[12]);

    v184 = *(v171 + v172[13]);

    v185 = *(v171 + v172[14]);

    v186 = *(v171 + v172[15]);

    v187 = *(v171 + v172[16]);

    v188 = *(v171 + v172[17]);

    v189 = *(v171 + v172[18]);

    v190 = *(v171 + v172[19]);

    v1 = v173;
    v169 = v205;
  }

  v191 = *(v5 + *(v169 + 28) + 8);

  return MEMORY[0x1EEE6BDD0](v1, v203 + v202, v204 | 7);
}