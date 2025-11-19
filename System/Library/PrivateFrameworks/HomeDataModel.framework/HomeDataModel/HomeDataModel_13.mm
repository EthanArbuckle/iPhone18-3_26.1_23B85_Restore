uint64_t sub_1D17EE400(uint64_t a1, int *a2)
{
  v4 = v2;
  v5 = type metadata accessor for StaticDeviceMetadata();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644620, &unk_1D1E75A00);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v18 - v12;
  sub_1D1E6920C();
  AccessoryDetails.Payload.hash(into:)(v19);
  v14 = v2 + a2[5];
  AccessoryDetailsBasicInfo.hash(into:)(v19);
  sub_1D1741C08(v4 + a2[6], v13, &qword_1EC644620, &unk_1D1E75A00);
  if ((*(v6 + 48))(v13, 1, v5) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    sub_1D17ECF60(v13, v9, type metadata accessor for StaticDeviceMetadata);
    sub_1D1E6922C();
    StaticDeviceMetadata.hash(into:)();
    sub_1D17ECFC8(v9, type metadata accessor for StaticDeviceMetadata);
  }

  v15 = *(v4 + a2[7]);
  if (v15 != 8)
  {
    sub_1D1E6922C();
    if (v15 > 4)
    {
      switch(v15)
      {
        case 5:
          v16 = 3;
          goto LABEL_20;
        case 6:
          v16 = 4;
          goto LABEL_20;
        case 7:
          v16 = 6;
          goto LABEL_20;
      }
    }

    else
    {
      switch(v15)
      {
        case 2:
          v16 = 0;
          goto LABEL_20;
        case 3:
          v16 = 1;
          goto LABEL_20;
        case 4:
          v16 = 2;
LABEL_20:
          MEMORY[0x1D3892850](v16);
          return sub_1D1E6926C();
      }
    }

    MEMORY[0x1D3892850](5);
    v16 = v15 & 1;
    goto LABEL_20;
  }

  sub_1D1E6922C();
  return sub_1D1E6926C();
}

uint64_t AccessoryDetails.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for StaticAccessory(0);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AccessoryDetails(0);
  *(a2 + v9[7]) = 8;
  sub_1D17ECA38(a1, a2, type metadata accessor for StaticAccessory);
  type metadata accessor for AccessoryDetails.Payload(0);
  swift_storeEnumTagMultiPayload();
  sub_1D17ECA38(a1, v8, type metadata accessor for StaticAccessory);
  v10 = a2 + v9[5];
  v11 = type metadata accessor for AccessoryDetailsBasicInfo();
  v12 = (v10 + v11[5]);
  *v12 = 0;
  v12[1] = 0;
  v13 = v11[6];
  v14 = type metadata accessor for StaticRoom(0);
  (*(*(v14 - 8) + 56))(v10 + v13, 1, 1, v14);
  v15 = (v10 + v11[7]);
  *v15 = 0;
  v15[1] = 0;
  *(v10 + v11[8]) = 2;
  *(v10 + v11[9]) = 2;
  *(v10 + v11[10]) = 92;
  sub_1D17ECF60(v8, v10, type metadata accessor for StaticAccessory);
  swift_storeEnumTagMultiPayload();
  sub_1D1741C08(a1 + *(v5 + 44), a2 + v9[6], &qword_1EC644620, &unk_1D1E75A00);
  return sub_1D17ECFC8(a1, type metadata accessor for StaticAccessory);
}

{
  v4 = type metadata accessor for StaticService(0);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AccessoryDetails(0);
  *(a2 + v9[7]) = 8;
  sub_1D17ECA38(a1, a2, type metadata accessor for StaticService);
  type metadata accessor for AccessoryDetails.Payload(0);
  swift_storeEnumTagMultiPayload();
  sub_1D17ECA38(a1, v8, type metadata accessor for StaticService);
  v10 = a2 + v9[5];
  v11 = type metadata accessor for AccessoryDetailsBasicInfo();
  v12 = (v10 + v11[5]);
  *v12 = 0;
  v12[1] = 0;
  v13 = v11[6];
  v14 = type metadata accessor for StaticRoom(0);
  (*(*(v14 - 8) + 56))(v10 + v13, 1, 1, v14);
  v15 = (v10 + v11[7]);
  *v15 = 0;
  v15[1] = 0;
  *(v10 + v11[8]) = 2;
  *(v10 + v11[9]) = 2;
  *(v10 + v11[10]) = 92;
  sub_1D17ECF60(v8, v10, type metadata accessor for StaticService);
  swift_storeEnumTagMultiPayload();
  sub_1D1741C08(a1 + *(v5 + 60), a2 + v9[6], &qword_1EC644620, &unk_1D1E75A00);
  return sub_1D17ECFC8(a1, type metadata accessor for StaticService);
}

{
  v4 = type metadata accessor for AccessoryDetails(0);
  *(a2 + v4[7]) = 8;
  sub_1D17ECA38(a1, a2, type metadata accessor for StaticServiceGroup);
  type metadata accessor for AccessoryDetails.Payload(0);
  swift_storeEnumTagMultiPayload();
  v5 = a2 + v4[5];
  v6 = type metadata accessor for AccessoryDetailsBasicInfo();
  v7 = (v5 + v6[5]);
  *v7 = 0;
  v7[1] = 0;
  v8 = v6[6];
  v9 = type metadata accessor for StaticRoom(0);
  (*(*(v9 - 8) + 56))(v5 + v8, 1, 1, v9);
  v10 = (v5 + v6[7]);
  *v10 = 0;
  v10[1] = 0;
  *(v5 + v6[8]) = 2;
  *(v5 + v6[9]) = 2;
  *(v5 + v6[10]) = 92;
  sub_1D17ECF60(a1, v5, type metadata accessor for StaticServiceGroup);
  swift_storeEnumTagMultiPayload();
  v11 = v4[6];
  v12 = type metadata accessor for StaticDeviceMetadata();
  v13 = *(*(v12 - 8) + 56);

  return v13(a2 + v11, 1, 1, v12);
}

uint64_t AccessoryDetails.Payload.basicInfo.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for AccessoryDetails.Payload(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D17ECA38(v2, v7, type metadata accessor for AccessoryDetails.Payload);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      a1[3] = type metadata accessor for StaticServiceGroup();
      v9 = sub_1D1807408(&qword_1EC644688, type metadata accessor for StaticServiceGroup);
      v10 = type metadata accessor for StaticServiceGroup;
    }

    else
    {
      a1[3] = type metadata accessor for StaticEndpoint();
      v9 = sub_1D1807408(&qword_1EC644680, type metadata accessor for StaticEndpoint);
      v10 = type metadata accessor for StaticEndpoint;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    a1[3] = type metadata accessor for StaticService(0);
    v9 = sub_1D1807408(&qword_1EC644690, type metadata accessor for StaticService);
    v10 = type metadata accessor for StaticService;
  }

  else
  {
    a1[3] = type metadata accessor for StaticAccessory(0);
    v9 = sub_1D1807408(&qword_1EC644698, type metadata accessor for StaticAccessory);
    v10 = type metadata accessor for StaticAccessory;
  }

  v11 = v10;
  a1[4] = v9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_1D17ECF60(v7, boxed_opaque_existential_1, v11);
}

unint64_t AccessoryDetails.Payload.description.getter()
{
  v1 = sub_1D17EEED0(v0);
  MEMORY[0x1D3890F70](v1);

  return 0xD000000000000019;
}

uint64_t sub_1D17EEED0(uint64_t a1)
{
  v2 = type metadata accessor for StaticServiceGroup();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for StaticService(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AccessoryDetails.Payload(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D17ECA38(a1, v13, type metadata accessor for AccessoryDetails.Payload);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1D17ECF60(v13, v5, type metadata accessor for StaticServiceGroup);
      v16 = StaticServiceGroup.description.getter();
      sub_1D17ECFC8(v5, type metadata accessor for StaticServiceGroup);
      return v16;
    }

    else
    {
      sub_1D17ECFC8(v13, type metadata accessor for AccessoryDetails.Payload);
      return 0x6E45636974617473;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1D17ECF60(v13, v9, type metadata accessor for StaticService);
    v17 = StaticService.description.getter();
    sub_1D17ECFC8(v9, type metadata accessor for StaticService);
    return v17;
  }

  else
  {
    sub_1D17ECFC8(v13, type metadata accessor for AccessoryDetails.Payload);
    return 0x6341636974617473;
  }
}

uint64_t AccessoryDetails.Payload.staticMatterDevice.getter@<X0>(uint64_t a1@<X8>)
{
  v93 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v92 = &v85 - v4;
  v5 = type metadata accessor for EndpointPath(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for StaticEndpoint();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436C8, &unk_1D1E97C40);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v88 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v87 = &v85 - v17;
  v18 = type metadata accessor for StaticService(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for StaticAccessory(0);
  v86 = *(v91 - 8);
  v22 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v91);
  v24 = &v85 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for AccessoryDetails.Payload(0);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v85 = &v85 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v89 = &v85 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v85 - v31;
  v90 = v1;
  sub_1D17ECA38(v1, &v85 - v31, type metadata accessor for AccessoryDetails.Payload);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v38 = type metadata accessor for StaticMatterDevice();
      (*(*(v38 - 8) + 56))(v93, 1, 1, v38);
      return sub_1D17ECFC8(v32, type metadata accessor for AccessoryDetails.Payload);
    }

    sub_1D17ECF60(v32, v12, type metadata accessor for StaticEndpoint);
    sub_1D17ECA38(&v12[*(v9 + 20)], v8, type metadata accessor for EndpointPath);
    sub_1D17ECFC8(v12, type metadata accessor for StaticEndpoint);
    v35 = *&v8[*(v5 + 20)];
    sub_1D17ECFC8(v8, type metadata accessor for EndpointPath);
    v37 = v92;
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload)
  {
    sub_1D17ECF60(v32, v21, type metadata accessor for StaticService);
    v37 = v92;
    if (qword_1EE07DC58 != -1)
    {
      swift_once();
    }

    v40 = qword_1EE07DC60;
    swift_getKeyPath();
    v95 = v40;
    sub_1D1807408(&qword_1EE07CFB0, type metadata accessor for DataModel);
    sub_1D1E66CAC();

    v41 = v40 + OBJC_IVAR____TtC13HomeDataModel9DataModel__currentStateSnapshot;
    swift_beginAccess();
    v42 = *(v41 + *(type metadata accessor for StateSnapshot(0) + 32));
    if (*(v42 + 16))
    {
      v43 = *(v18 + 44);

      v44 = sub_1D1742188(&v21[v43]);
      v46 = v86;
      v45 = v87;
      if (v47)
      {
        sub_1D17ECA38(*(v42 + 56) + *(v86 + 72) * v44, v87, type metadata accessor for StaticAccessory);
        sub_1D17ECFC8(v21, type metadata accessor for StaticService);

        v48 = 0;
      }

      else
      {

        sub_1D17ECFC8(v21, type metadata accessor for StaticService);
        v48 = 1;
      }

      v69 = v91;
    }

    else
    {
      sub_1D17ECFC8(v21, type metadata accessor for StaticService);
      v48 = 1;
      v69 = v91;
      v46 = v86;
      v45 = v87;
    }

    (*(v46 + 56))(v45, v48, 1, v69);
    v70 = v88;
    sub_1D1741A90(v45, v88, &qword_1EC6436C8, &unk_1D1E97C40);
    if ((*(v46 + 48))(v70, 1, v69) == 1)
    {
      sub_1D1741A30(v70, &qword_1EC6436C8, &unk_1D1E97C40);
    }

    else
    {
      v71 = v70 + *(v69 + 144);
      v35 = *v71;
      v72 = *(v71 + 8);
      sub_1D17ECFC8(v70, type metadata accessor for StaticAccessory);
      if ((v72 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

LABEL_31:
    if (qword_1EC642470 != -1)
    {
      swift_once();
    }

    v73 = sub_1D1E6709C();
    __swift_project_value_buffer(v73, qword_1EC64F440);
    v74 = v89;
    sub_1D17ECA38(v90, v89, type metadata accessor for AccessoryDetails.Payload);
    v75 = sub_1D1E6707C();
    v76 = sub_1D1E6833C();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v94 = v78;
      *v77 = 136315394;
      *(v77 + 4) = sub_1D1B1312C(0xD000000000000024, 0x80000001D1EB9EE0, &v94);
      *(v77 + 12) = 2080;
      v79 = v85;
      sub_1D17ECA38(v74, v85, type metadata accessor for AccessoryDetails.Payload);
      v80 = sub_1D17EEED0(v79);
      v95 = 0xD000000000000019;
      v96 = 0x80000001D1EB9EC0;
      MEMORY[0x1D3890F70](v80);

      v81 = v95;
      v82 = v96;
      sub_1D17ECFC8(v79, type metadata accessor for AccessoryDetails.Payload);
      sub_1D17ECFC8(v74, type metadata accessor for AccessoryDetails.Payload);
      v83 = sub_1D1B1312C(v81, v82, &v94);

      *(v77 + 14) = v83;
      _os_log_impl(&dword_1D16EC000, v75, v76, "%s: Returning nil, because couldn't find matterNodeID for payload %s", v77, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v78, -1, -1);
      MEMORY[0x1D3893640](v77, -1, -1);
    }

    else
    {

      sub_1D17ECFC8(v74, type metadata accessor for AccessoryDetails.Payload);
    }

    v84 = type metadata accessor for StaticMatterDevice();
    return (*(*(v84 - 8) + 56))(v93, 1, 1, v84);
  }

  sub_1D17ECF60(v32, v24, type metadata accessor for StaticAccessory);
  v34 = &v24[*(v91 + 144)];
  v35 = *v34;
  v36 = v34[8];
  sub_1D17ECFC8(v24, type metadata accessor for StaticAccessory);
  v37 = v92;
  if (v36)
  {
    goto LABEL_31;
  }

LABEL_13:
  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  v49 = qword_1EE07DC60;
  swift_getKeyPath();
  v95 = v49;
  sub_1D1807408(&qword_1EE07CFB0, type metadata accessor for DataModel);
  sub_1D1E66CAC();

  v50 = v49 + OBJC_IVAR____TtC13HomeDataModel9DataModel__currentMatterSnapshot;
  swift_beginAccess();
  v51 = *(v50 + *(type metadata accessor for MatterStateSnapshot() + 24));
  if (*(v51 + 16) && (v52 = sub_1D17420B0(v35), (v53 & 1) != 0))
  {
    v54 = v52;
    v55 = *(v51 + 56);
    v56 = type metadata accessor for StaticMatterDevice();
    v57 = *(v56 - 8);
    sub_1D17ECA38(v55 + *(v57 + 72) * v54, v37, type metadata accessor for StaticMatterDevice);
    (*(v57 + 56))(v37, 0, 1, v56);
  }

  else
  {
    v58 = type metadata accessor for StaticMatterDevice();
    (*(*(v58 - 8) + 56))(v37, 1, 1, v58);
    v59 = qword_1EC642470;

    if (v59 != -1)
    {
      swift_once();
    }

    v60 = sub_1D1E6709C();
    __swift_project_value_buffer(v60, qword_1EC64F440);

    v61 = sub_1D1E6707C();
    v62 = sub_1D1E6835C();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v94 = v64;
      *v63 = 136315650;
      *(v63 + 4) = sub_1D1B1312C(0xD000000000000024, 0x80000001D1EB9EE0, &v94);
      *(v63 + 12) = 2050;
      *(v63 + 14) = v35;
      *(v63 + 22) = 2082;
      v65 = sub_1D1E6762C();
      v67 = v66;

      v68 = sub_1D1B1312C(v65, v67, &v94);

      *(v63 + 24) = v68;
      _os_log_impl(&dword_1D16EC000, v61, v62, "%s: Returning nil, because staticDevice is not found for matterNodeID %{public}llu among staticDevices %{public}s.", v63, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v64, -1, -1);
      MEMORY[0x1D3893640](v63, -1, -1);
    }

    else
    {
    }
  }

  return sub_1D1741A90(v37, v93, &qword_1EC643650, &qword_1D1E71D40);
}

unint64_t sub_1D17EFE24()
{
  v1 = 0x6341636974617473;
  v2 = 0xD000000000000012;
  if (*v0 != 2)
  {
    v2 = 0x6E45636974617473;
  }

  if (*v0)
  {
    v1 = 0x6553636974617473;
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

uint64_t sub_1D17EFEC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D18083E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D17EFEF0(uint64_t a1)
{
  v2 = sub_1D18074F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D17EFF2C(uint64_t a1)
{
  v2 = sub_1D18074F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D17EFF74(uint64_t a1)
{
  v2 = sub_1D1807648();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D17EFFB0(uint64_t a1)
{
  v2 = sub_1D1807648();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D17EFFEC(uint64_t a1)
{
  v2 = sub_1D180754C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D17F0028(uint64_t a1)
{
  v2 = sub_1D180754C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D17F0064(uint64_t a1)
{
  v2 = sub_1D18075F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D17F00A0(uint64_t a1)
{
  v2 = sub_1D18075F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D17F00DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D1E6904C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D17F015C(uint64_t a1)
{
  v2 = sub_1D18075A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D17F0198(uint64_t a1)
{
  v2 = sub_1D18075A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AccessoryDetails.Payload.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6446A0, &qword_1D1E75A80);
  v62 = *(v2 - 8);
  v63 = v2;
  v3 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v61 = &v47 - v4;
  v59 = type metadata accessor for StaticEndpoint();
  v5 = *(*(v59 - 8) + 64);
  MEMORY[0x1EEE9AC00](v59);
  v60 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6446A8, &qword_1D1E75A88);
  v57 = *(v7 - 8);
  v58 = v7;
  v8 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v56 = &v47 - v9;
  v54 = type metadata accessor for StaticServiceGroup();
  v10 = *(*(v54 - 8) + 64);
  MEMORY[0x1EEE9AC00](v54);
  v55 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6446B0, &qword_1D1E75A90);
  v52 = *(v12 - 8);
  v53 = v12;
  v13 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v51 = &v47 - v14;
  v49 = type metadata accessor for StaticService(0);
  v15 = *(*(v49 - 8) + 64);
  MEMORY[0x1EEE9AC00](v49);
  v50 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6446B8, &qword_1D1E75A98);
  v47 = *(v17 - 8);
  v48 = v17;
  v18 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v47 - v19;
  v21 = type metadata accessor for StaticAccessory(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for AccessoryDetails.Payload(0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v47 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6446C0, &qword_1D1E75AA0);
  v65 = *(v29 - 8);
  v66 = v29;
  v30 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v47 - v31;
  v33 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D18074F8();
  sub_1D1E6930C();
  sub_1D17ECA38(v64, v28, type metadata accessor for AccessoryDetails.Payload);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v38 = v55;
      sub_1D17ECF60(v28, v55, type metadata accessor for StaticServiceGroup);
      v69 = 2;
      sub_1D18075A0();
      v39 = v56;
      v40 = v66;
      sub_1D1E68DFC();
      sub_1D1807408(&qword_1EC6446E8, type metadata accessor for StaticServiceGroup);
      v41 = v58;
      sub_1D1E68F1C();
      (*(v57 + 8))(v39, v41);
      v42 = type metadata accessor for StaticServiceGroup;
    }

    else
    {
      v38 = v60;
      sub_1D17ECF60(v28, v60, type metadata accessor for StaticEndpoint);
      v70 = 3;
      sub_1D180754C();
      v45 = v61;
      v40 = v66;
      sub_1D1E68DFC();
      sub_1D1807408(&qword_1EC6446D8, type metadata accessor for StaticEndpoint);
      v46 = v63;
      sub_1D1E68F1C();
      (*(v62 + 8))(v45, v46);
      v42 = type metadata accessor for StaticEndpoint;
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      sub_1D17ECF60(v28, v24, type metadata accessor for StaticAccessory);
      v67 = 0;
      sub_1D1807648();
      v35 = v66;
      sub_1D1E68DFC();
      sub_1D1807408(&qword_1EC644708, type metadata accessor for StaticAccessory);
      v36 = v48;
      sub_1D1E68F1C();
      (*(v47 + 8))(v20, v36);
      sub_1D17ECFC8(v24, type metadata accessor for StaticAccessory);
      return (*(v65 + 8))(v32, v35);
    }

    v38 = v50;
    sub_1D17ECF60(v28, v50, type metadata accessor for StaticService);
    v68 = 1;
    sub_1D18075F4();
    v43 = v51;
    v40 = v66;
    sub_1D1E68DFC();
    sub_1D1807408(&qword_1EC6446F8, type metadata accessor for StaticService);
    v44 = v53;
    sub_1D1E68F1C();
    (*(v52 + 8))(v43, v44);
    v42 = type metadata accessor for StaticService;
  }

  sub_1D17ECFC8(v38, v42);
  return (*(v65 + 8))(v32, v40);
}

uint64_t AccessoryDetails.Payload.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = type metadata accessor for StaticEndpoint();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StaticServiceGroup();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for StaticService(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for StaticAccessory(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for AccessoryDetails.Payload(0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v28 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D17ECA38(v2, v23, type metadata accessor for AccessoryDetails.Payload);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1D17ECF60(v23, v11, type metadata accessor for StaticServiceGroup);
      MEMORY[0x1D3892850](2);
      StaticServiceGroup.hash(into:)(a1);
      v25 = type metadata accessor for StaticServiceGroup;
      v26 = v11;
    }

    else
    {
      sub_1D17ECF60(v23, v7, type metadata accessor for StaticEndpoint);
      MEMORY[0x1D3892850](3);
      StaticEndpoint.hash(into:)(a1);
      v25 = type metadata accessor for StaticEndpoint;
      v26 = v7;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1D17ECF60(v23, v15, type metadata accessor for StaticService);
    MEMORY[0x1D3892850](1);
    StaticService.hash(into:)(a1);
    v25 = type metadata accessor for StaticService;
    v26 = v15;
  }

  else
  {
    sub_1D17ECF60(v23, v19, type metadata accessor for StaticAccessory);
    MEMORY[0x1D3892850](0);
    StaticAccessory.hash(into:)(a1);
    v25 = type metadata accessor for StaticAccessory;
    v26 = v19;
  }

  return sub_1D17ECFC8(v26, v25);
}

uint64_t AccessoryDetails.Payload.hashValue.getter()
{
  sub_1D1E6920C();
  AccessoryDetails.Payload.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t AccessoryDetails.Payload.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644710, &qword_1D1E75AA8);
  v78 = *(v75 - 8);
  v3 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v84 = &v66 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644718, &qword_1D1E75AB0);
  v76 = *(v5 - 8);
  v77 = v5;
  v6 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v83 = &v66 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644720, &qword_1D1E75AB8);
  v73 = *(v8 - 8);
  v74 = v8;
  v9 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v82 = &v66 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644728, &qword_1D1E75AC0);
  v71 = *(v11 - 8);
  v72 = v11;
  v12 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v79 = &v66 - v13;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644730, &qword_1D1E75AC8);
  v86 = *(v81 - 8);
  v14 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v81);
  v16 = &v66 - v15;
  v80 = type metadata accessor for AccessoryDetails.Payload(0);
  v17 = *(*(v80 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v80);
  v20 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v66 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v66 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v66 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v66 - v30;
  v32 = a1[3];
  v33 = a1[4];
  v88 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v32);
  sub_1D18074F8();
  v34 = v87;
  sub_1D1E692FC();
  if (v34)
  {
    return __swift_destroy_boxed_opaque_existential_1(v88);
  }

  v67 = v26;
  v68 = v23;
  v69 = v29;
  v70 = v20;
  v35 = v82;
  v36 = v83;
  v87 = v31;
  v37 = v84;
  v38 = v85;
  v39 = v81;
  v40 = sub_1D1E68DDC();
  v41 = v40;
  v42 = *(v40 + 16);
  if (!v42 || ((v43 = *(v40 + 32), v42 == 1) ? (v44 = v43 == 4) : (v44 = 1), v44))
  {
    v45 = sub_1D1E688EC();
    swift_allocError();
    v47 = v46;
    v48 = v16;
    v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644738, &unk_1D1E75AD0) + 48);
    *v47 = v80;
    sub_1D1E68C5C();
    sub_1D1E688DC();
    (*(*(v45 - 8) + 104))(v47, *MEMORY[0x1E69E6AF8], v45);
    swift_willThrow();
    (*(v86 + 8))(v48, v39);
LABEL_9:
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v88);
  }

  if (*(v40 + 32) <= 1u)
  {
    if (*(v40 + 32))
    {
      v90 = 1;
      sub_1D18075F4();
      sub_1D1E68C4C();
      type metadata accessor for StaticService(0);
      v59 = v35;
      v84 = v41;
      sub_1D1807408(&qword_1EC644750, type metadata accessor for StaticService);
      v60 = v67;
      v61 = v74;
      sub_1D1E68D7C();
      (*(v73 + 8))(v59, v61);
      (*(v86 + 8))(v16, v39);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v55 = v60;
      v52 = v87;
    }

    else
    {
      v89 = 0;
      sub_1D1807648();
      v51 = v79;
      sub_1D1E68C4C();
      v52 = v87;
      type metadata accessor for StaticAccessory(0);
      v84 = v41;
      sub_1D1807408(&qword_1EC644758, type metadata accessor for StaticAccessory);
      v53 = v69;
      v54 = v72;
      sub_1D1E68D7C();
      (*(v71 + 8))(v51, v54);
      (*(v86 + 8))(v16, v39);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v55 = v53;
    }

    goto LABEL_20;
  }

  v82 = v16;
  v56 = v86;
  if (v43 != 2)
  {
    v92 = 3;
    sub_1D180754C();
    sub_1D1E68C4C();
    v62 = v38;
    type metadata accessor for StaticEndpoint();
    v83 = 0;
    sub_1D1807408(&qword_1EC644740, type metadata accessor for StaticEndpoint);
    v63 = v70;
    v64 = v75;
    v65 = v83;
    sub_1D1E68D7C();
    if (!v65)
    {
      (*(v78 + 8))(v37, v64);
      (*(v56 + 8))(v82, v39);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v55 = v63;
      v52 = v87;
      v38 = v62;
      goto LABEL_20;
    }

    (*(v78 + 8))(v37, v64);
    (*(v56 + 8))(v82, v39);
    goto LABEL_9;
  }

  v91 = 2;
  sub_1D18075A0();
  sub_1D1E68C4C();
  v84 = v41;
  type metadata accessor for StaticServiceGroup();
  sub_1D1807408(&qword_1EC644748, type metadata accessor for StaticServiceGroup);
  v57 = v68;
  v58 = v77;
  sub_1D1E68D7C();
  (*(v76 + 8))(v36, v58);
  (*(v56 + 8))(v82, v39);
  swift_unknownObjectRelease();
  swift_storeEnumTagMultiPayload();
  v55 = v57;
  v52 = v87;
LABEL_20:
  sub_1D17ECF60(v55, v52, type metadata accessor for AccessoryDetails.Payload);
  sub_1D17ECF60(v52, v38, type metadata accessor for AccessoryDetails.Payload);
  return __swift_destroy_boxed_opaque_existential_1(v88);
}

uint64_t sub_1D17F1830()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 24;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D17F1864()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 12;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D17F1898()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 8;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D17F18CC()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 6;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D17F1900()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D17F1934()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 7;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D17F1968()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D17F199C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D17F19D0()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_1D17F1A04()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) >> 1;
  if (v1 != v2)
  {
    if (v1 >= v2)
    {
      __break(1u);
      return result;
    }

    *(v0 + 16) = v1 + 1;
  }

  return v1 == v2;
}

uint64_t sub_1D17F1A34()
{
  sub_1D1E6920C();
  AccessoryDetails.Payload.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D17F1A78()
{
  sub_1D1E6920C();
  AccessoryDetails.Payload.hash(into:)(v1);
  return sub_1D1E6926C();
}

unint64_t sub_1D17F1AE4()
{
  v1 = sub_1D17EEED0(v0);
  MEMORY[0x1D3890F70](v1);

  return 0xD000000000000019;
}

uint64_t AccessoryDetails.softwareUpdate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for StaticService(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StaticAccessory(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AccessoryDetails.Payload(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D17ECA38(v2, v15, type metadata accessor for AccessoryDetails.Payload);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    v19 = type metadata accessor for StaticSoftwareUpdate(0);
    (*(*(v19 - 8) + 56))(a1, 1, 1, v19);
    v17 = type metadata accessor for AccessoryDetails.Payload;
    v18 = v15;
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1D17ECF60(v15, v7, type metadata accessor for StaticService);
    sub_1D1741C08(&v7[*(v4 + 136)], a1, &qword_1EC644760, &unk_1D1E9E530);
    v17 = type metadata accessor for StaticService;
    v18 = v7;
  }

  else
  {
    sub_1D17ECF60(v15, v11, type metadata accessor for StaticAccessory);
    sub_1D1741C08(&v11[*(v8 + 120)], a1, &qword_1EC644760, &unk_1D1E9E530);
    v17 = type metadata accessor for StaticAccessory;
    v18 = v11;
  }

  return sub_1D17ECFC8(v18, v17);
}

uint64_t AccessoryDetails.updateState.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644760, &unk_1D1E9E530);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644768, &qword_1D1E75AE0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v19 - v12;
  result = type metadata accessor for AccessoryDetails(0);
  v15 = *(v1 + *(result + 28));
  if (v15 == 8)
  {
    AccessoryDetails.softwareUpdate.getter(v6);
    v16 = type metadata accessor for StaticSoftwareUpdate(0);
    if ((*(*(v16 - 8) + 48))(v6, 1, v16) == 1)
    {
      sub_1D1741A30(v6, &qword_1EC644760, &unk_1D1E9E530);
      v17 = type metadata accessor for StaticSoftwareUpdate.Kind(0);
      (*(*(v17 - 8) + 56))(v13, 1, 1, v17);
    }

    else
    {
      sub_1D17ECA38(&v6[*(v16 + 20)], v13, type metadata accessor for StaticSoftwareUpdate.Kind);
      sub_1D17ECFC8(v6, type metadata accessor for StaticSoftwareUpdate);
      v18 = type metadata accessor for StaticSoftwareUpdate.Kind(0);
      (*(*(v18 - 8) + 56))(v13, 0, 1, v18);
      sub_1D1741C08(v13, v11, &qword_1EC644768, &qword_1D1E75AE0);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        *a1 = v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644770, &qword_1D1E75AE8) + 48)];
        sub_1D17ECFC8(v11, type metadata accessor for StaticSoftwareUpdateMetadata);
        return sub_1D1741A30(v13, &qword_1EC644768, &qword_1D1E75AE0);
      }

      sub_1D17ECFC8(v11, type metadata accessor for StaticSoftwareUpdate.Kind);
    }

    result = sub_1D1741A30(v13, &qword_1EC644768, &qword_1D1E75AE0);
    LOBYTE(v15) = 2;
  }

  *a1 = v15;
  return result;
}

uint64_t AccessoryDetails.updateState.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for AccessoryDetails(0);
  *(v1 + *(result + 28)) = v2;
  return result;
}

void (*AccessoryDetails.updateState.modify(void *a1))(uint64_t a1)
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
  v6 = v4 + 36;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644760, &unk_1D1E9E530) - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644768, &qword_1D1E75AE0) - 8) + 64);
  if (v3)
  {
    v11 = swift_coroFrameAlloc();
    v5[2] = v11;
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(v10);
    v5[2] = v11;
    v12 = malloc(v10);
  }

  v13 = v12;
  v5[3] = v12;
  v14 = *(type metadata accessor for AccessoryDetails(0) + 28);
  *(v5 + 8) = v14;
  v15 = *(v1 + v14);
  if (v15 != 8)
  {
    goto LABEL_17;
  }

  AccessoryDetails.softwareUpdate.getter(v9);
  v16 = type metadata accessor for StaticSoftwareUpdate(0);
  if ((*(*(v16 - 8) + 48))(v9, 1, v16) == 1)
  {
    sub_1D1741A30(v9, &qword_1EC644760, &unk_1D1E9E530);
    v17 = type metadata accessor for StaticSoftwareUpdate.Kind(0);
    (*(*(v17 - 8) + 56))(v13, 1, 1, v17);
    sub_1D1741A30(v13, &qword_1EC644768, &qword_1D1E75AE0);
LABEL_16:
    LOBYTE(v15) = 2;
LABEL_17:
    *v6 = v15;
    return sub_1D17F2410;
  }

  sub_1D17ECA38(v9 + *(v16 + 20), v13, type metadata accessor for StaticSoftwareUpdate.Kind);
  sub_1D17ECFC8(v9, type metadata accessor for StaticSoftwareUpdate);
  v18 = type metadata accessor for StaticSoftwareUpdate.Kind(0);
  (*(*(v18 - 8) + 56))(v13, 0, 1, v18);
  sub_1D1741A90(v13, v11, &qword_1EC644768, &qword_1D1E75AE0);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1D17ECFC8(v11, type metadata accessor for StaticSoftwareUpdate.Kind);
    goto LABEL_16;
  }

  *v6 = *(v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644770, &qword_1D1E75AE8) + 48));
  sub_1D17ECFC8(v11, type metadata accessor for StaticSoftwareUpdateMetadata);
  return sub_1D17F2410;
}

void sub_1D17F2410(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  v4 = *(*a1 + 16);
  v3 = *(*a1 + 24);
  v5 = v1[1];
  *(*v1 + v2) = *(v1 + 36);
  free(v3);
  free(v4);
  free(v5);

  free(v1);
}

uint64_t AccessoryDetails.performSoftwareUpdate()()
{
  v1[26] = v0;
  v2 = type metadata accessor for StateSnapshot(0);
  v1[27] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[28] = swift_task_alloc();
  v4 = type metadata accessor for StaticService(0);
  v1[29] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v1[30] = swift_task_alloc();
  v6 = *(type metadata accessor for StaticAccessory(0) - 8);
  v1[31] = v6;
  v7 = *(v6 + 64) + 15;
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v8 = type metadata accessor for AccessoryDetails.Payload(0);
  v1[34] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v1[35] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D17F25CC, 0, 0);
}

uint64_t sub_1D17F25CC()
{
  v1 = v0[34];
  sub_1D17ECA38(v0[26], v0[35], type metadata accessor for AccessoryDetails.Payload);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = v0[35];
  if ((EnumCaseMultiPayload - 2) >= 2)
  {
    if (EnumCaseMultiPayload)
    {
      sub_1D17ECF60(v3, v0[30], type metadata accessor for StaticService);
      v0[37] = sub_1D1E67E1C();
      v0[38] = sub_1D1E67E0C();
      v14 = sub_1D1E67D4C();

      return MEMORY[0x1EEE6DFA0](sub_1D17F2C28, v14, v13);
    }

    else
    {
      sub_1D17ECF60(v3, v0[33], type metadata accessor for StaticAccessory);
      v11 = swift_task_alloc();
      v0[36] = v11;
      *v11 = v0;
      v11[1] = sub_1D17F27DC;
      v12 = v0[33];

      return StaticAccessory.accessory.getter();
    }
  }

  else
  {
    sub_1D17ECFC8(v3, type metadata accessor for AccessoryDetails.Payload);
    v4 = v0[35];
    v5 = v0[32];
    v6 = v0[33];
    v7 = v0[30];
    v8 = v0[28];

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_1D17F27DC(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 168) = v1;
  *(v3 + 176) = a1;
  v4 = *(v2 + 288);
  v6 = *v1;

  return MEMORY[0x1EEE6DFA0](sub_1D17F28DC, 0, 0);
}

uint64_t sub_1D17F28DC()
{
  v21 = v0;
  sub_1D17ECFC8(v0[33], type metadata accessor for StaticAccessory);
  v1 = v0[22];
  v0[43] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = [v2 softwareUpdateController];
    v0[44] = v3;
    if (v3)
    {
      v4 = v3;
      v5 = [v3 availableUpdate];
      v0[45] = v5;
      if (v5)
      {
        v6 = v5;
        v0[2] = v0;
        v0[3] = sub_1D17F36F0;
        v7 = swift_continuation_init();
        v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
        v0[10] = MEMORY[0x1E69E9820];
        v0[11] = 1107296256;
        v0[12] = sub_1D17B04C8;
        v0[13] = &block_descriptor_3;
        v0[14] = v7;
        [v4 startUpdate:v6 completionHandler:v0 + 10];

        return MEMORY[0x1EEE6DEC8](v0 + 2);
      }
    }
  }

  if (qword_1EC642470 != -1)
  {
    swift_once();
  }

  v8 = sub_1D1E6709C();
  __swift_project_value_buffer(v8, qword_1EC64F440);
  v9 = sub_1D1E6707C();
  v10 = sub_1D1E6835C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_1D1B1312C(0xD000000000000024, 0x80000001D1EB9EE0, &v20);
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_1D1B1312C(0xD000000000000017, 0x80000001D1EB9F40, &v20);
    _os_log_impl(&dword_1D16EC000, v9, v10, "%s - %s: Unable to perform Software Update because there is none available.", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v12, -1, -1);
    MEMORY[0x1D3893640](v11, -1, -1);
  }

  v13 = v0[35];
  v14 = v0[32];
  v15 = v0[33];
  v16 = v0[30];
  v17 = v0[28];

  v18 = v0[1];

  return v18();
}

uint64_t sub_1D17F2C28()
{
  v1 = *(v0 + 304);

  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D17F2CC0, 0, 0);
}

uint64_t sub_1D17F2CC0()
{
  v1 = *(v0 + 296);
  *(v0 + 312) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D17F2D4C, v3, v2);
}

uint64_t sub_1D17F2D4C()
{
  v1 = *(v0 + 312);

  *(v0 + 320) = qword_1EE07DC60;

  return MEMORY[0x1EEE6DFA0](sub_1D17F2DC0, 0, 0);
}

uint64_t sub_1D17F2DC0()
{
  v1 = *(v0 + 296);
  *(v0 + 328) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D17F2E4C, v3, v2);
}

uint64_t sub_1D17F2E4C()
{
  v2 = v0[40];
  v1 = v0[41];
  v3 = v0[28];

  swift_getKeyPath();
  v0[25] = v2;
  sub_1D1807408(&qword_1EE07CFB0, type metadata accessor for DataModel);
  sub_1D1E66CAC();

  v4 = OBJC_IVAR____TtC13HomeDataModel9DataModel__currentStateSnapshot;
  swift_beginAccess();
  sub_1D17ECA38(v2 + v4, v3, type metadata accessor for StateSnapshot);

  return MEMORY[0x1EEE6DFA0](sub_1D17F2F74, 0, 0);
}

uint64_t sub_1D17F2F74()
{
  v21 = v0;
  v1 = v0[28];
  v2 = *(v1 + *(v0[27] + 32));

  sub_1D17ECFC8(v1, type metadata accessor for StateSnapshot);
  if (*(v2 + 16) && (v3 = sub_1D1742188(v0[30] + *(v0[29] + 44)), (v4 & 1) != 0))
  {
    sub_1D17ECA38(*(v2 + 56) + *(v0[31] + 72) * v3, v0[32], type metadata accessor for StaticAccessory);

    v5 = swift_task_alloc();
    v0[42] = v5;
    *v5 = v0;
    v5[1] = sub_1D17F3274;
    v6 = v0[32];

    return StaticAccessory.accessory.getter();
  }

  else
  {
    v8 = v0[30];

    sub_1D17ECFC8(v8, type metadata accessor for StaticService);
    if (qword_1EC642470 != -1)
    {
      swift_once();
    }

    v9 = sub_1D1E6709C();
    __swift_project_value_buffer(v9, qword_1EC64F440);
    v10 = sub_1D1E6707C();
    v11 = sub_1D1E6835C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v20 = v13;
      *v12 = 136315394;
      *(v12 + 4) = sub_1D1B1312C(0xD000000000000024, 0x80000001D1EB9EE0, &v20);
      *(v12 + 12) = 2080;
      *(v12 + 14) = sub_1D1B1312C(0xD000000000000017, 0x80000001D1EB9F40, &v20);
      _os_log_impl(&dword_1D16EC000, v10, v11, "%s - %s: Unable to perform Software Update because there is none available.", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v13, -1, -1);
      MEMORY[0x1D3893640](v12, -1, -1);
    }

    v14 = v0[35];
    v15 = v0[32];
    v16 = v0[33];
    v17 = v0[30];
    v18 = v0[28];

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_1D17F3274(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 184) = v1;
  *(v3 + 192) = a1;
  v4 = *(v2 + 336);
  v5 = *(v2 + 256);
  v7 = *v1;

  sub_1D17ECFC8(v5, type metadata accessor for StaticAccessory);

  return MEMORY[0x1EEE6DFA0](sub_1D17F33A4, 0, 0);
}

uint64_t sub_1D17F33A4()
{
  v21 = v0;
  sub_1D17ECFC8(v0[30], type metadata accessor for StaticService);
  v1 = v0[24];
  v0[43] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = [v2 softwareUpdateController];
    v0[44] = v3;
    if (v3)
    {
      v4 = v3;
      v5 = [v3 availableUpdate];
      v0[45] = v5;
      if (v5)
      {
        v6 = v5;
        v0[2] = v0;
        v0[3] = sub_1D17F36F0;
        v7 = swift_continuation_init();
        v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
        v0[10] = MEMORY[0x1E69E9820];
        v0[11] = 1107296256;
        v0[12] = sub_1D17B04C8;
        v0[13] = &block_descriptor_3;
        v0[14] = v7;
        [v4 startUpdate:v6 completionHandler:v0 + 10];

        return MEMORY[0x1EEE6DEC8](v0 + 2);
      }
    }
  }

  if (qword_1EC642470 != -1)
  {
    swift_once();
  }

  v8 = sub_1D1E6709C();
  __swift_project_value_buffer(v8, qword_1EC64F440);
  v9 = sub_1D1E6707C();
  v10 = sub_1D1E6835C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_1D1B1312C(0xD000000000000024, 0x80000001D1EB9EE0, &v20);
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_1D1B1312C(0xD000000000000017, 0x80000001D1EB9F40, &v20);
    _os_log_impl(&dword_1D16EC000, v9, v10, "%s - %s: Unable to perform Software Update because there is none available.", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v12, -1, -1);
    MEMORY[0x1D3893640](v11, -1, -1);
  }

  v13 = v0[35];
  v14 = v0[32];
  v15 = v0[33];
  v16 = v0[30];
  v17 = v0[28];

  v18 = v0[1];

  return v18();
}

uint64_t sub_1D17F36F0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 368) = v2;
  if (v2)
  {
    v3 = sub_1D17F38AC;
  }

  else
  {
    v3 = sub_1D17F3800;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D17F3800()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 344);

  v3 = *(v0 + 280);
  v4 = *(v0 + 256);
  v5 = *(v0 + 264);
  v6 = *(v0 + 240);
  v7 = *(v0 + 224);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1D17F38AC()
{
  v25 = v0;
  v1 = v0[46];
  swift_willThrow();
  if (qword_1EC642470 != -1)
  {
    swift_once();
  }

  v2 = v0[46];
  v3 = sub_1D1E6709C();
  __swift_project_value_buffer(v3, qword_1EC64F440);
  v4 = v2;
  v5 = sub_1D1E6707C();
  v6 = sub_1D1E6835C();

  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[45];
  v8 = v0[46];
  v10 = v0[43];
  v11 = v0[44];
  if (v7)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v24[0] = v14;
    *v12 = 136315650;
    *(v12 + 4) = sub_1D1B1312C(0xD000000000000024, 0x80000001D1EB9EE0, v24);
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_1D1B1312C(0xD000000000000017, 0x80000001D1EB9F40, v24);
    *(v12 + 22) = 2112;
    v15 = v8;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v16;
    *v13 = v16;
    _os_log_impl(&dword_1D16EC000, v5, v6, "%s - %s: Update failed: %@", v12, 0x20u);
    sub_1D1741A30(v13, &unk_1EC644000, &unk_1D1E75B00);
    MEMORY[0x1D3893640](v13, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v14, -1, -1);
    MEMORY[0x1D3893640](v12, -1, -1);
  }

  else
  {
  }

  v17 = v0[35];
  v18 = v0[32];
  v19 = v0[33];
  v20 = v0[30];
  v21 = v0[28];

  v22 = v0[1];

  return v22();
}

uint64_t AccessoryDetails.staticUser.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  v2 = qword_1EE07DC60;
  swift_getKeyPath();
  sub_1D1807408(&qword_1EE07CFB0, type metadata accessor for DataModel);
  sub_1D1E66CAC();

  v3 = v2 + OBJC_IVAR____TtC13HomeDataModel9DataModel__currentStateSnapshot;
  swift_beginAccess();
  v4 = *(type metadata accessor for StateSnapshot(0) + 20);
  v5 = type metadata accessor for StaticHome();
  return sub_1D17ECA38(v3 + v4 + *(v5 + 32), a1, type metadata accessor for StaticUser);
}

BOOL AccessoryDetails.userCanEdit.getter()
{
  v0 = type metadata accessor for StaticUser();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  v4 = qword_1EE07DC60;
  swift_getKeyPath();
  v10[1] = v4;
  sub_1D1807408(&qword_1EE07CFB0, type metadata accessor for DataModel);
  sub_1D1E66CAC();

  v5 = v4 + OBJC_IVAR____TtC13HomeDataModel9DataModel__currentStateSnapshot;
  swift_beginAccess();
  v6 = *(type metadata accessor for StateSnapshot(0) + 20);
  v7 = type metadata accessor for StaticHome();
  sub_1D17ECA38(v5 + v6 + *(v7 + 32), v3, type metadata accessor for StaticUser);
  v8 = v3[*(v0 + 28)] < 2u;
  sub_1D17ECFC8(v3, type metadata accessor for StaticUser);
  return v8;
}

id AccessoryDetails.shouldShowLogging.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v36 - v6;
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v36 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v36 - v11;
  v13 = type metadata accessor for StaticUser();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  v17 = qword_1EE07DC60;
  v18 = OBJC_IVAR____TtC13HomeDataModel9DataModel_homeManager;
  swift_beginAccess();
  result = *(v17 + v18);
  if (result)
  {
    result = [result hasOptedToHH2];
    if (result)
    {
      v38 = v4;
      v39 = v0;
      swift_getKeyPath();
      v40[1] = v17;
      sub_1D1807408(&qword_1EE07CFB0, type metadata accessor for DataModel);
      sub_1D1E66CAC();

      v20 = v17 + OBJC_IVAR____TtC13HomeDataModel9DataModel__currentStateSnapshot;
      swift_beginAccess();
      v21 = *(type metadata accessor for StateSnapshot(0) + 20);
      v22 = type metadata accessor for StaticHome();
      sub_1D17ECA38(v20 + v21 + *(v22 + 32), v16, type metadata accessor for StaticUser);
      v23 = v16[*(v13 + 28)];
      sub_1D17ECFC8(v16, type metadata accessor for StaticUser);
      AccessoryDetails.Payload.staticMatterDevice.getter(v12);
      sub_1D1741C08(v12, v10, &qword_1EC643650, &qword_1D1E71D40);
      v24 = type metadata accessor for StaticMatterDevice();
      if ((*(*(v24 - 8) + 48))(v10, 1, v24) == 1)
      {
        sub_1D1741A30(v10, &qword_1EC643650, &qword_1D1E71D40);
        v25 = 0;
      }

      else
      {
        v25 = v10[*(v24 + 64)];
        sub_1D17ECFC8(v10, type metadata accessor for StaticMatterDevice);
      }

      if (qword_1EC642470 != -1)
      {
        swift_once();
      }

      v26 = sub_1D1E6709C();
      __swift_project_value_buffer(v26, qword_1EC64F440);
      sub_1D1741C08(v12, v7, &qword_1EC643650, &qword_1D1E71D40);
      v27 = sub_1D1E6707C();
      v28 = sub_1D1E6835C();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v40[0] = v30;
        *v29 = 136316418;
        *(v29 + 4) = sub_1D1B1312C(0xD000000000000024, 0x80000001D1EB9EE0, v40);
        v36 = v23;
        *(v29 + 12) = 2080;
        *(v29 + 14) = sub_1D1B1312C(0xD000000000000011, 0x80000001D1EB9F60, v40);
        *(v29 + 22) = 1024;
        *(v29 + 24) = 1;
        *(v29 + 28) = 1024;
        *(v29 + 30) = v23 < 2;
        *(v29 + 34) = 1024;
        *(v29 + 36) = v25;
        *(v29 + 40) = 2080;
        v37 = v25;
        sub_1D1741C08(v7, v38, &qword_1EC643650, &qword_1D1E71D40);
        v31 = sub_1D1E6789C();
        v33 = v32;
        sub_1D1741A30(v7, &qword_1EC643650, &qword_1D1E71D40);
        v34 = sub_1D1B1312C(v31, v33, v40);
        v23 = v36;

        *(v29 + 42) = v34;
        _os_log_impl(&dword_1D16EC000, v27, v28, "%s - %s: isHH2: %{BOOL}d, isAdmin: %{BOOL}d, hasLoggingCluster: %{BOOL}d, staticMatterDevice: %s", v29, 0x32u);
        swift_arrayDestroy();
        MEMORY[0x1D3893640](v30, -1, -1);
        MEMORY[0x1D3893640](v29, -1, -1);

        v35 = v12;
        LOBYTE(v25) = v37;
      }

      else
      {

        sub_1D1741A30(v7, &qword_1EC643650, &qword_1D1E71D40);
        v35 = v12;
      }

      sub_1D1741A30(v35, &qword_1EC643650, &qword_1D1E71D40);
      return ((v23 < 2) & v25);
    }
  }

  return result;
}

uint64_t AccessoryDetails.getDoorLockCluster()@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for StaticService(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AccessoryDetails.Payload(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v21 - v12;
  v14 = type metadata accessor for StaticAccessory(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(type metadata accessor for AccessoryDetails(0) + 20);
  sub_1D17ECA38(v1 + v18, v13, type metadata accessor for AccessoryDetails.Payload);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1D17ECFC8(v13, type metadata accessor for AccessoryDetails.Payload);
    sub_1D17ECA38(v1 + v18, v11, type metadata accessor for AccessoryDetails.Payload);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1D17ECF60(v11, v6, type metadata accessor for StaticService);
      sub_1D17F4A04(v6, a1);
      return sub_1D17ECFC8(v6, type metadata accessor for StaticService);
    }

    else
    {
      sub_1D17ECFC8(v11, type metadata accessor for AccessoryDetails.Payload);
      v20 = type metadata accessor for StaticDoorLockCluster();
      return (*(*(v20 - 8) + 56))(a1, 1, 1, v20);
    }
  }

  else
  {
    sub_1D17ECF60(v13, v17, type metadata accessor for StaticAccessory);
    sub_1D17F46A8(a1);
    return sub_1D17ECFC8(v17, type metadata accessor for StaticAccessory);
  }
}

uint64_t sub_1D17F46A8@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v18 - v4;
  v6 = type metadata accessor for StaticService(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  StaticAccessory.primaryStaticService.getter(v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1D1741A30(v5, &qword_1EC6436F0, &qword_1D1E99BC0);
    if (qword_1EC642470 != -1)
    {
      swift_once();
    }

    v11 = sub_1D1E6709C();
    __swift_project_value_buffer(v11, qword_1EC64F440);
    v12 = sub_1D1E6707C();
    v13 = sub_1D1E6835C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v19 = v15;
      *v14 = 136315650;
      *(v14 + 4) = sub_1D1B1312C(0xD000000000000024, 0x80000001D1EB9EE0, &v19);
      *(v14 + 12) = 2080;
      *(v14 + 14) = sub_1D1B1312C(0xD000000000000028, 0x80000001D1EBA100, &v19);
      *(v14 + 22) = 2080;
      *(v14 + 24) = sub_1D1B1312C(0x6341636974617473, 0xEF79726F73736563, &v19);
      _os_log_impl(&dword_1D16EC000, v12, v13, "%s - %s: Unable to get doorLockCluster for %s because primaryStaticService does NOT exist.", v14, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v15, -1, -1);
      MEMORY[0x1D3893640](v14, -1, -1);
    }

    v16 = type metadata accessor for StaticDoorLockCluster();
    return (*(*(v16 - 8) + 56))(a1, 1, 1, v16);
  }

  else
  {
    sub_1D17ECF60(v5, v10, type metadata accessor for StaticService);
    sub_1D17F4A04(v10, a1);
    return sub_1D17ECFC8(v10, type metadata accessor for StaticService);
  }
}

uint64_t sub_1D17F4A04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v99 = a2;
  v91 = type metadata accessor for StaticEndpoint();
  v88 = *(v91 - 8);
  v3 = *(v88 + 64);
  v4 = MEMORY[0x1EEE9AC00](v91);
  v89 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v90 = &v88 - v6;
  v96 = type metadata accessor for StaticMatterDevice();
  v94 = *(v96 - 8);
  v7 = *(v94 + 64);
  v8 = MEMORY[0x1EEE9AC00](v96);
  v93 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v88 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v95 = &v88 - v13;
  v14 = type metadata accessor for MatterStateSnapshot();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v97 = &v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v98 = &v88 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644870, &unk_1D1EABA00);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v88 - v21;
  v23 = type metadata accessor for EndpointPath(0);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = &v88 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v26);
  v92 = &v88 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v88 - v31;
  v33 = type metadata accessor for StaticService(0);
  sub_1D1741C08(a1 + *(v33 + 156), v22, &qword_1EC644870, &unk_1D1EABA00);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    sub_1D1741A30(v22, &qword_1EC644870, &unk_1D1EABA00);
    if (qword_1EC642470 != -1)
    {
      swift_once();
    }

    v34 = sub_1D1E6709C();
    __swift_project_value_buffer(v34, qword_1EC64F440);
    v35 = sub_1D1E6707C();
    v36 = sub_1D1E6835C();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v101[0] = v38;
      *v37 = 136315138;
      *(v37 + 4) = sub_1D1B1312C(0xD000000000000024, 0x80000001D1EB9EE0, v101);
      _os_log_impl(&dword_1D16EC000, v35, v36, "%s: Returning nil, because matterEndpointPath is nil.", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v38);
      MEMORY[0x1D3893640](v38, -1, -1);
      MEMORY[0x1D3893640](v37, -1, -1);
    }
  }

  else
  {
    sub_1D17ECF60(v22, v32, type metadata accessor for EndpointPath);
    if (qword_1EE07DC58 != -1)
    {
      swift_once();
    }

    v39 = qword_1EE07DC60;
    swift_getKeyPath();
    v101[0] = v39;
    sub_1D1807408(&qword_1EE07CFB0, type metadata accessor for DataModel);
    sub_1D1E66CAC();

    v40 = OBJC_IVAR____TtC13HomeDataModel9DataModel__currentMatterSnapshot;
    swift_beginAccess();
    v41 = v39 + v40;
    v42 = v98;
    sub_1D17ECA38(v41, v98, type metadata accessor for MatterStateSnapshot);
    v43 = *(v42 + *(v14 + 24));
    v44 = v97;
    if (*(v43 + 16) && (v45 = sub_1D17420B0(*&v32[*(v23 + 20)]), (v46 & 1) != 0))
    {
      sub_1D17ECA38(*(v43 + 56) + *(v94 + 72) * v45, v12, type metadata accessor for StaticMatterDevice);
      v47 = v95;
      sub_1D17ECF60(v12, v95, type metadata accessor for StaticMatterDevice);
      v48 = v96;
      v49 = *(v47 + *(v96 + 56));
      if (*(v49 + 16))
      {
        v50 = sub_1D171D15C(*&v32[*(v23 + 24)]);
        if (v51)
        {
          v52 = v89;
          sub_1D17ECA38(*(v49 + 56) + *(v88 + 72) * v50, v89, type metadata accessor for StaticEndpoint);
          v53 = v90;
          sub_1D17ECF60(v52, v90, type metadata accessor for StaticEndpoint);
          sub_1D17F566C(v99);
          sub_1D17ECFC8(v53, type metadata accessor for StaticEndpoint);
          sub_1D17ECFC8(v32, type metadata accessor for EndpointPath);
          sub_1D17ECFC8(v47, type metadata accessor for StaticMatterDevice);
          return sub_1D17ECFC8(v42, type metadata accessor for MatterStateSnapshot);
        }
      }

      if (qword_1EC642470 != -1)
      {
        swift_once();
      }

      v70 = sub_1D1E6709C();
      __swift_project_value_buffer(v70, qword_1EC64F440);
      v71 = v92;
      sub_1D17ECA38(v32, v92, type metadata accessor for EndpointPath);
      v72 = v93;
      sub_1D17ECA38(v47, v93, type metadata accessor for StaticMatterDevice);
      v73 = sub_1D1E6707C();
      v74 = sub_1D1E6833C();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        v76 = v71;
        v77 = v72;
        v78 = swift_slowAlloc();
        v100 = v78;
        *v75 = 136315650;
        *(v75 + 4) = sub_1D1B1312C(0xD000000000000024, 0x80000001D1EB9EE0, &v100);
        *(v75 + 12) = 514;
        v79 = *(v76 + *(v23 + 24));
        sub_1D17ECFC8(v76, type metadata accessor for EndpointPath);
        *(v75 + 14) = v79;
        *(v75 + 16) = 2082;
        v80 = *(v77 + *(v48 + 56));

        v81 = sub_1D1E6762C();
        v83 = v82;

        sub_1D17ECFC8(v77, type metadata accessor for StaticMatterDevice);
        v84 = sub_1D1B1312C(v81, v83, &v100);

        *(v75 + 18) = v84;
        v42 = v98;
        _os_log_impl(&dword_1D16EC000, v73, v74, "%s: Returning nil, because endpoint is not found for endpointID %{public}hu among endpoints %{public}s.", v75, 0x1Au);
        swift_arrayDestroy();
        v47 = v95;
        MEMORY[0x1D3893640](v78, -1, -1);
        MEMORY[0x1D3893640](v75, -1, -1);

        v85 = v32;
        v86 = type metadata accessor for EndpointPath;
      }

      else
      {
        sub_1D17ECFC8(v71, type metadata accessor for EndpointPath);

        sub_1D17ECFC8(v32, type metadata accessor for EndpointPath);
        v86 = type metadata accessor for StaticMatterDevice;
        v85 = v72;
      }

      sub_1D17ECFC8(v85, v86);
      v69 = type metadata accessor for StaticMatterDevice;
      v68 = v47;
    }

    else
    {
      if (qword_1EC642470 != -1)
      {
        swift_once();
      }

      v55 = sub_1D1E6709C();
      __swift_project_value_buffer(v55, qword_1EC64F440);
      sub_1D17ECA38(v32, v28, type metadata accessor for EndpointPath);
      sub_1D17ECA38(v42, v44, type metadata accessor for MatterStateSnapshot);
      v56 = sub_1D1E6707C();
      v57 = sub_1D1E6833C();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v95 = v32;
        v60 = v59;
        v100 = v59;
        *v58 = 136315650;
        *(v58 + 4) = sub_1D1B1312C(0xD000000000000024, 0x80000001D1EB9EE0, &v100);
        *(v58 + 12) = 2050;
        v61 = *&v28[*(v23 + 20)];
        sub_1D17ECFC8(v28, type metadata accessor for EndpointPath);
        *(v58 + 14) = v61;
        *(v58 + 22) = 2082;
        v62 = *(v44 + *(v14 + 24));

        v63 = sub_1D1E6762C();
        v65 = v64;

        sub_1D17ECFC8(v44, type metadata accessor for MatterStateSnapshot);
        v66 = v63;
        v42 = v98;
        v67 = sub_1D1B1312C(v66, v65, &v100);

        *(v58 + 24) = v67;
        _os_log_impl(&dword_1D16EC000, v56, v57, "%s: Returning nil, because staticDevice is not found for matterNodeID %{public}llu among staticDevices %{public}s.", v58, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1D3893640](v60, -1, -1);
        MEMORY[0x1D3893640](v58, -1, -1);

        v68 = v95;
        v69 = type metadata accessor for EndpointPath;
      }

      else
      {
        sub_1D17ECFC8(v28, type metadata accessor for EndpointPath);

        sub_1D17ECFC8(v32, type metadata accessor for EndpointPath);
        v69 = type metadata accessor for MatterStateSnapshot;
        v68 = v44;
      }
    }

    sub_1D17ECFC8(v68, v69);
    sub_1D17ECFC8(v42, type metadata accessor for MatterStateSnapshot);
  }

  v87 = type metadata accessor for StaticDoorLockCluster();
  return (*(*(v87 - 8) + 56))(v99, 1, 1, v87);
}

uint64_t sub_1D17F566C@<X0>(uint64_t a1@<X8>)
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

  v9 = sub_1D171D278(22);
  if ((v10 & 1) == 0)
  {
    goto LABEL_6;
  }

  sub_1D17ECA38(*(v8 + 56) + *(v4 + 72) * v9, v7, type metadata accessor for StaticCluster);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1D17ECFC8(v7, type metadata accessor for StaticCluster);
LABEL_6:
    v11 = 1;
    goto LABEL_7;
  }

  sub_1D17ECF60(v7, a1, type metadata accessor for StaticDoorLockCluster);
  v11 = 0;
LABEL_7:
  v12 = type metadata accessor for StaticDoorLockCluster();
  return (*(*(v12 - 8) + 56))(a1, v11, 1, v12);
}

Swift::Bool __swiftcall AccessoryDetails.supportsUWBUnlock()()
{
  v1 = v0;
  v2 = type metadata accessor for AccessoryDetails(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v78 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for StaticService(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v75 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v77 = &v75 - v10;
  v11 = type metadata accessor for StaticAccessory(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v76 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AccessoryDetails.Payload(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v22 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v75 - v23;
  v25 = v0 + *(v2 + 20);
  AccessoryDetailsBasicInfo.primaryStaticService.getter(&v75 - v23);
  v26 = *(v6 + 48);
  if (v26(v24, 1, v5) == 1)
  {
    sub_1D1741A30(v24, &qword_1EC6436F0, &qword_1D1E99BC0);
    v27 = 0;
  }

  else
  {
    v27 = v24[*(v5 + 104)];
    sub_1D17ECFC8(v24, type metadata accessor for StaticService);
  }

  LOBYTE(v80) = v27;
  if (ServiceKind.rawValue.getter() == 0xD000000000000024 && 0x80000001D1EB3250 == v28)
  {
  }

  else
  {
    v29 = sub_1D1E6904C();

    if ((v29 & 1) == 0)
    {
      if (qword_1EC642470 != -1)
      {
        swift_once();
      }

      v42 = sub_1D1E6709C();
      __swift_project_value_buffer(v42, qword_1EC64F440);
      v43 = v1;
      v44 = v78;
      sub_1D17ECA38(v43, v78, type metadata accessor for AccessoryDetails);
      v32 = sub_1D1E6707C();
      v45 = sub_1D1E6835C();
      if (!os_log_type_enabled(v32, v45))
      {

        sub_1D17ECFC8(v44, type metadata accessor for AccessoryDetails);
LABEL_45:
        LOBYTE(v41) = 0;
        return v41;
      }

      v46 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v80 = v77;
      *v46 = 136315650;
      *(v46 + 4) = sub_1D1B1312C(0xD000000000000024, 0x80000001D1EB9EE0, &v80);
      *(v46 + 12) = 2080;
      *(v46 + 14) = sub_1D1B1312C(0xD000000000000013, 0x80000001D1EB9F80, &v80);
      *(v46 + 22) = 2080;
      v47 = v44 + *(v2 + 20);
      AccessoryDetailsBasicInfo.primaryStaticService.getter(v22);
      if (v26(v22, 1, v5) == 1)
      {
        sub_1D1741A30(v22, &qword_1EC6436F0, &qword_1D1E99BC0);
        v48 = 0;
      }

      else
      {
        v48 = v22[*(v5 + 104)];
        sub_1D17ECFC8(v22, type metadata accessor for StaticService);
      }

      v79 = v48;
      v69 = ServiceKind.localizedDescription.getter();
      v71 = v70;
      sub_1D17ECFC8(v44, type metadata accessor for AccessoryDetails);
      v72 = sub_1D1B1312C(v69, v71, &v80);

      *(v46 + 24) = v72;
      _os_log_impl(&dword_1D16EC000, v32, v45, "%s - %s: Returning false since our primaryServiceKind is not lockMechanism, it is: %s", v46, 0x20u);
      v73 = v77;
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v73, -1, -1);
      v36 = v46;
      goto LABEL_43;
    }
  }

  sub_1D17ECA38(v1, v17, type metadata accessor for AccessoryDetails.Payload);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 2) < 2)
  {
    sub_1D17ECFC8(v17, type metadata accessor for AccessoryDetails.Payload);
    if (qword_1EC642470 != -1)
    {
      swift_once();
    }

    v31 = sub_1D1E6709C();
    __swift_project_value_buffer(v31, qword_1EC64F440);
    v32 = sub_1D1E6707C();
    v33 = sub_1D1E6835C();
    if (!os_log_type_enabled(v32, v33))
    {
      goto LABEL_44;
    }

    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v80 = v35;
    *v34 = 136315394;
    *(v34 + 4) = sub_1D1B1312C(0xD000000000000024, 0x80000001D1EB9EE0, &v80);
    *(v34 + 12) = 2080;
    *(v34 + 14) = sub_1D1B1312C(0xD000000000000013, 0x80000001D1EB9F80, &v80);
    _os_log_impl(&dword_1D16EC000, v32, v33, "%s - %s: Returning false since payload type is staticServiceGroup / staticEndpoint", v34, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v35, -1, -1);
    v36 = v34;
LABEL_43:
    MEMORY[0x1D3893640](v36, -1, -1);
LABEL_44:

    goto LABEL_45;
  }

  if (EnumCaseMultiPayload)
  {
    v49 = v77;
    sub_1D17ECF60(v17, v77, type metadata accessor for StaticService);
    if (qword_1EE07DC58 != -1)
    {
      swift_once();
    }

    v50 = qword_1EE07DC60;
    v51 = v49 + *(v5 + 44);
    v52 = sub_1D1E66A2C();
    v53 = [v50 accessoryFor_];

    v54 = v75;
    if (v53)
    {
      v41 = [v53 supportsUWBUnlock];
    }

    else
    {
      v41 = 0;
    }

    if (qword_1EC642470 != -1)
    {
      swift_once();
    }

    v60 = sub_1D1E6709C();
    __swift_project_value_buffer(v60, qword_1EC64F440);
    sub_1D17ECA38(v49, v54, type metadata accessor for StaticService);
    v61 = sub_1D1E6707C();
    v62 = sub_1D1E6835C();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v80 = v64;
      *v63 = 136315906;
      *(v63 + 4) = sub_1D1B1312C(0xD000000000000024, 0x80000001D1EB9EE0, &v80);
      *(v63 + 12) = 2080;
      *(v63 + 14) = sub_1D1B1312C(0xD000000000000013, 0x80000001D1EB9F80, &v80);
      *(v63 + 22) = 1024;
      *(v63 + 24) = v41;
      *(v63 + 28) = 2080;
      v65 = StaticService.description.getter();
      v67 = v66;
      sub_1D17ECFC8(v54, type metadata accessor for StaticService);
      v68 = sub_1D1B1312C(v65, v67, &v80);

      *(v63 + 30) = v68;
      _os_log_impl(&dword_1D16EC000, v61, v62, "%s - %s: staticServiceSupportsUWBUnlock is %{BOOL}d for static service: %s", v63, 0x26u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v64, -1, -1);
      MEMORY[0x1D3893640](v63, -1, -1);
    }

    else
    {

      sub_1D17ECFC8(v54, type metadata accessor for StaticService);
    }

    sub_1D17ECFC8(v49, type metadata accessor for StaticService);
  }

  else
  {
    v37 = v76;
    sub_1D17ECF60(v17, v76, type metadata accessor for StaticAccessory);
    if (qword_1EE07DC58 != -1)
    {
      swift_once();
    }

    v38 = qword_1EE07DC60;
    v39 = sub_1D1E66A2C();
    v40 = [v38 accessoryFor_];

    if (v40)
    {
      v41 = [v40 supportsUWBUnlock];
    }

    else
    {
      v41 = 0;
    }

    if (qword_1EC642470 != -1)
    {
      swift_once();
    }

    v55 = sub_1D1E6709C();
    __swift_project_value_buffer(v55, qword_1EC64F440);
    v56 = sub_1D1E6707C();
    v57 = sub_1D1E6835C();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v80 = v59;
      *v58 = 136315906;
      *(v58 + 4) = sub_1D1B1312C(0xD000000000000024, 0x80000001D1EB9EE0, &v80);
      *(v58 + 12) = 2080;
      *(v58 + 14) = sub_1D1B1312C(0xD000000000000013, 0x80000001D1EB9F80, &v80);
      *(v58 + 22) = 1024;
      *(v58 + 24) = v41;
      *(v58 + 28) = 2080;
      *(v58 + 30) = sub_1D1B1312C(0x6341636974617473, 0xEF79726F73736563, &v80);
      _os_log_impl(&dword_1D16EC000, v56, v57, "%s - %s: staticAccessorySupportsUWBUnlock is %{BOOL}d for static accessory: %s.", v58, 0x26u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v59, -1, -1);
      MEMORY[0x1D3893640](v58, -1, -1);
    }

    sub_1D17ECFC8(v37, type metadata accessor for StaticAccessory);
  }

  return v41;
}

Swift::Bool __swiftcall AccessoryDetails.supportsAccessCodes()()
{
  v1 = v0;
  v2 = type metadata accessor for AccessoryDetails(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v79 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for StaticService(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v76 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v78 = &v76 - v10;
  v11 = type metadata accessor for StaticAccessory(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v77 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AccessoryDetails.Payload(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v22 = &v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v76 - v23;
  v25 = v0 + *(v2 + 20);
  AccessoryDetailsBasicInfo.primaryStaticService.getter(&v76 - v23);
  v26 = *(v6 + 48);
  if (v26(v24, 1, v5) == 1)
  {
    sub_1D1741A30(v24, &qword_1EC6436F0, &qword_1D1E99BC0);
    v27 = 0;
  }

  else
  {
    v27 = v24[*(v5 + 104)];
    sub_1D17ECFC8(v24, type metadata accessor for StaticService);
  }

  LOBYTE(v81) = v27;
  if (ServiceKind.rawValue.getter() == 0xD000000000000024 && 0x80000001D1EB3250 == v28)
  {
  }

  else
  {
    v29 = sub_1D1E6904C();

    if ((v29 & 1) == 0)
    {
      if (qword_1EC642470 != -1)
      {
        swift_once();
      }

      v42 = sub_1D1E6709C();
      __swift_project_value_buffer(v42, qword_1EC64F440);
      v43 = v1;
      v44 = v79;
      sub_1D17ECA38(v43, v79, type metadata accessor for AccessoryDetails);
      v32 = sub_1D1E6707C();
      v45 = sub_1D1E6835C();
      if (!os_log_type_enabled(v32, v45))
      {

        sub_1D17ECFC8(v44, type metadata accessor for AccessoryDetails);
        return 0;
      }

      v46 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v81 = v78;
      *v46 = 136315650;
      *(v46 + 4) = sub_1D1B1312C(0xD000000000000024, 0x80000001D1EB9EE0, &v81);
      *(v46 + 12) = 2080;
      *(v46 + 14) = sub_1D1B1312C(0xD000000000000015, 0x80000001D1EB9FA0, &v81);
      *(v46 + 22) = 2080;
      v47 = v44 + *(v2 + 20);
      AccessoryDetailsBasicInfo.primaryStaticService.getter(v22);
      if (v26(v22, 1, v5) == 1)
      {
        sub_1D1741A30(v22, &qword_1EC6436F0, &qword_1D1E99BC0);
        v48 = 0;
      }

      else
      {
        v48 = v22[*(v5 + 104)];
        sub_1D17ECFC8(v22, type metadata accessor for StaticService);
      }

      v80 = v48;
      v71 = ServiceKind.localizedDescription.getter();
      v73 = v72;
      sub_1D17ECFC8(v44, type metadata accessor for AccessoryDetails);
      v74 = sub_1D1B1312C(v71, v73, &v81);

      *(v46 + 24) = v74;
      _os_log_impl(&dword_1D16EC000, v32, v45, "%s - %s: Returning false since our primaryServiceKind is not lockMechanism, it is: %s", v46, 0x20u);
      v75 = v78;
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v75, -1, -1);
      v36 = v46;
      goto LABEL_43;
    }
  }

  sub_1D17ECA38(v1, v17, type metadata accessor for AccessoryDetails.Payload);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 2) < 2)
  {
    sub_1D17ECFC8(v17, type metadata accessor for AccessoryDetails.Payload);
    if (qword_1EC642470 != -1)
    {
      swift_once();
    }

    v31 = sub_1D1E6709C();
    __swift_project_value_buffer(v31, qword_1EC64F440);
    v32 = sub_1D1E6707C();
    v33 = sub_1D1E6835C();
    if (!os_log_type_enabled(v32, v33))
    {
      goto LABEL_44;
    }

    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v81 = v35;
    *v34 = 136315394;
    *(v34 + 4) = sub_1D1B1312C(0xD000000000000024, 0x80000001D1EB9EE0, &v81);
    *(v34 + 12) = 2080;
    *(v34 + 14) = sub_1D1B1312C(0xD000000000000015, 0x80000001D1EB9FA0, &v81);
    _os_log_impl(&dword_1D16EC000, v32, v33, "%s - %s: Returning false since payload type is staticServiceGroup / staticEndpoint", v34, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v35, -1, -1);
    v36 = v34;
LABEL_43:
    MEMORY[0x1D3893640](v36, -1, -1);
LABEL_44:

    return 0;
  }

  if (EnumCaseMultiPayload)
  {
    v49 = v78;
    sub_1D17ECF60(v17, v78, type metadata accessor for StaticService);
    if (qword_1EE07DC58 != -1)
    {
      swift_once();
    }

    v50 = qword_1EE07DC60;
    v51 = v49 + *(v5 + 44);
    v52 = sub_1D1E66A2C();
    v53 = [v50 accessoryFor_];

    v54 = v76;
    if (v53)
    {
      v55 = [v53 supportsAccessCodes];
    }

    else
    {
      v55 = 0;
    }

    if (qword_1EC642470 != -1)
    {
      swift_once();
    }

    v62 = sub_1D1E6709C();
    __swift_project_value_buffer(v62, qword_1EC64F440);
    sub_1D17ECA38(v49, v54, type metadata accessor for StaticService);
    v63 = sub_1D1E6707C();
    v64 = sub_1D1E6835C();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v81 = v66;
      *v65 = 136315650;
      *(v65 + 4) = sub_1D1B1312C(0xD000000000000024, 0x80000001D1EB9EE0, &v81);
      *(v65 + 12) = 2080;
      *(v65 + 14) = sub_1D1B1312C(0xD000000000000015, 0x80000001D1EB9FA0, &v81);
      *(v65 + 22) = 2080;
      v67 = StaticService.description.getter();
      v69 = v68;
      sub_1D17ECFC8(v54, type metadata accessor for StaticService);
      v70 = sub_1D1B1312C(v67, v69, &v81);

      *(v65 + 24) = v70;
      _os_log_impl(&dword_1D16EC000, v63, v64, "%s - %s: static service: %s", v65, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v66, -1, -1);
      MEMORY[0x1D3893640](v65, -1, -1);
    }

    else
    {

      sub_1D17ECFC8(v54, type metadata accessor for StaticService);
    }

    sub_1D17ECFC8(v49, type metadata accessor for StaticService);
    return v55;
  }

  else
  {
    v37 = v77;
    sub_1D17ECF60(v17, v77, type metadata accessor for StaticAccessory);
    if (qword_1EE07DC58 != -1)
    {
      swift_once();
    }

    v38 = qword_1EE07DC60;
    v39 = sub_1D1E66A2C();
    v40 = [v38 accessoryFor_];

    if (v40)
    {
      v41 = [v40 supportsAccessCodes];
    }

    else
    {
      v41 = 0;
    }

    if (qword_1EC642470 != -1)
    {
      swift_once();
    }

    v56 = sub_1D1E6709C();
    __swift_project_value_buffer(v56, qword_1EC64F440);
    v57 = sub_1D1E6707C();
    v58 = sub_1D1E6835C();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v81 = v60;
      *v59 = 136315650;
      *(v59 + 4) = sub_1D1B1312C(0xD000000000000024, 0x80000001D1EB9EE0, &v81);
      *(v59 + 12) = 2080;
      *(v59 + 14) = sub_1D1B1312C(0xD000000000000015, 0x80000001D1EB9FA0, &v81);
      *(v59 + 22) = 2080;
      *(v59 + 24) = sub_1D1B1312C(0x6341636974617473, 0xEF79726F73736563, &v81);
      _os_log_impl(&dword_1D16EC000, v57, v58, "%s - %s: static accessory: %s", v59, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v60, -1, -1);
      MEMORY[0x1D3893640](v59, -1, -1);
    }

    sub_1D17ECFC8(v37, type metadata accessor for StaticAccessory);
    return v41;
  }
}

Swift::Bool __swiftcall AccessoryDetails.accessorySupportsWalletKey()()
{
  v1 = v0;
  v2 = type metadata accessor for AccessoryDetails(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v141 = &v131 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = type metadata accessor for StaticServiceGroup();
  v5 = *(*(v134 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v134);
  v135 = &v131 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v139 = (&v131 - v8);
  v9 = type metadata accessor for StaticService(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v132 = &v131 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v131 = &v131 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v133 = &v131 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v136 = &v131 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v138 = &v131 - v20;
  v21 = type metadata accessor for StaticAccessory(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v137 = &v131 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for AccessoryDetails.Payload(0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v131 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x1EEE9AC00](v28 - 8);
  v32 = &v131 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v131 - v33;
  v35 = v0 + *(v2 + 20);
  AccessoryDetailsBasicInfo.primaryStaticService.getter(&v131 - v33);
  v140 = v10;
  v36 = *(v10 + 48);
  v37 = v36(v34, 1, v9);
  v142 = v9;
  if (v37 == 1)
  {
    sub_1D1741A30(v34, &qword_1EC6436F0, &qword_1D1E99BC0);
    v38 = 0;
  }

  else
  {
    v38 = v34[*(v9 + 104)];
    sub_1D17ECFC8(v34, type metadata accessor for StaticService);
  }

  LOBYTE(v143[0]) = v38;
  if (ServiceKind.rawValue.getter() == 0xD000000000000024 && 0x80000001D1EB3250 == v39)
  {
  }

  else
  {
    v40 = sub_1D1E6904C();

    if ((v40 & 1) == 0)
    {
LABEL_18:
      if (qword_1EC642470 != -1)
      {
        swift_once();
      }

      v51 = sub_1D1E6709C();
      __swift_project_value_buffer(v51, qword_1EC64F440);
      v52 = v141;
      sub_1D17ECA38(v1, v141, type metadata accessor for AccessoryDetails);
      v53 = sub_1D1E6707C();
      v54 = sub_1D1E6835C();
      v55 = os_log_type_enabled(v53, v54);
      v56 = v142;
      if (v55)
      {
        v57 = swift_slowAlloc();
        v140 = swift_slowAlloc();
        v143[0] = v140;
        *v57 = 136315650;
        *(v57 + 4) = sub_1D1B1312C(0xD000000000000024, 0x80000001D1EB9EE0, v143);
        *(v57 + 12) = 2080;
        *(v57 + 14) = sub_1D1B1312C(0xD00000000000001CLL, 0x80000001D1EB9FC0, v143);
        *(v57 + 22) = 2080;
        v58 = v52 + *(v2 + 20);
        AccessoryDetailsBasicInfo.primaryStaticService.getter(v32);
        if (v36(v32, 1, v56) == 1)
        {
          sub_1D1741A30(v32, &qword_1EC6436F0, &qword_1D1E99BC0);
          v59 = 0;
        }

        else
        {
          v59 = v32[*(v56 + 104)];
          sub_1D17ECFC8(v32, type metadata accessor for StaticService);
        }

        v144 = v59;
        v120 = ServiceKind.localizedDescription.getter();
        v122 = v121;
        sub_1D17ECFC8(v141, type metadata accessor for AccessoryDetails);
        v123 = sub_1D1B1312C(v120, v122, v143);

        *(v57 + 24) = v123;
        _os_log_impl(&dword_1D16EC000, v53, v54, "%s - %s: Returning false since our primaryServiceKind is not lockMechanism, it is: %s", v57, 0x20u);
        v124 = v140;
        swift_arrayDestroy();
        MEMORY[0x1D3893640](v124, -1, -1);
        MEMORY[0x1D3893640](v57, -1, -1);

        return 0;
      }

      v82 = type metadata accessor for AccessoryDetails;
      v83 = v52;
LABEL_71:
      sub_1D17ECFC8(v83, v82);
      return 0;
    }
  }

  sub_1D17ECA38(v1, v27, type metadata accessor for AccessoryDetails.Payload);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      sub_1D17ECFC8(v27, type metadata accessor for AccessoryDetails.Payload);
      if (qword_1EC642470 != -1)
      {
        swift_once();
      }

      v77 = sub_1D1E6709C();
      __swift_project_value_buffer(v77, qword_1EC64F440);
      v78 = sub_1D1E6707C();
      v79 = sub_1D1E6835C();
      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        v143[0] = v81;
        *v80 = 136315650;
        *(v80 + 4) = sub_1D1B1312C(0xD000000000000024, 0x80000001D1EB9EE0, v143);
        *(v80 + 12) = 2080;
        *(v80 + 14) = sub_1D1B1312C(0xD00000000000001CLL, 0x80000001D1EB9FC0, v143);
        *(v80 + 22) = 2080;
        *(v80 + 24) = sub_1D1B1312C(0x6E45636974617473, 0xEE00746E696F7064, v143);
        _os_log_impl(&dword_1D16EC000, v78, v79, "%s - %s: Returning false since payload type is staticEndpoint %s", v80, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1D3893640](v81, -1, -1);
        MEMORY[0x1D3893640](v80, -1, -1);
      }

      return 0;
    }

    v36 = v139;
    sub_1D17ECF60(v27, v139, type metadata accessor for StaticServiceGroup);
    v48 = v135;
    sub_1D17ECA38(v36, v135, type metadata accessor for StaticServiceGroup);
    v1 = *(v48 + *(v134 + 56));
    v49 = v1[2];
    if (v49)
    {
      v50 = sub_1D180453C(v1[2], 0, &qword_1EC643258, &qword_1D1E716B0, type metadata accessor for StaticService);
      v141 = sub_1D1806314(v143, v50 + ((*(v140 + 80) + 32) & ~*(v140 + 80)), v49, v1, type metadata accessor for StaticService, type metadata accessor for StaticService, type metadata accessor for StaticService);
      v32 = v143[1];
      v2 = v143[3];

      sub_1D1716918();
      if (v141 != v49)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    else
    {
      v50 = MEMORY[0x1E69E7CC0];
    }

    v91 = v132;
    v92 = v133;
    v93 = v142;
    sub_1D17ECFC8(v48, type metadata accessor for StaticServiceGroup);
    if (*(v50 + 16))
    {
      v94 = v131;
      sub_1D17ECA38(v50 + ((*(v140 + 80) + 32) & ~*(v140 + 80)), v131, type metadata accessor for StaticService);

      sub_1D17ECF60(v94, v92, type metadata accessor for StaticService);
      if (qword_1EE07DC58 != -1)
      {
        swift_once();
      }

      v95 = qword_1EE07DC60;
      v96 = v92 + *(v93 + 44);
      v97 = sub_1D1E66A2C();
      v98 = [v95 accessoryFor_];

      if (v98)
      {
        v47 = [v98 supportsWalletKey];
        if (qword_1EC642470 != -1)
        {
          swift_once();
        }

        v99 = sub_1D1E6709C();
        __swift_project_value_buffer(v99, qword_1EC64F440);
        sub_1D17ECA38(v92, v91, type metadata accessor for StaticService);
        v100 = sub_1D1E6707C();
        v101 = sub_1D1E6835C();
        if (os_log_type_enabled(v100, v101))
        {
          v102 = swift_slowAlloc();
          v103 = swift_slowAlloc();
          v143[0] = v103;
          *v102 = 136315650;
          *(v102 + 4) = sub_1D1B1312C(0xD000000000000024, 0x80000001D1EB9EE0, v143);
          *(v102 + 12) = 2080;
          *(v102 + 14) = sub_1D1B1312C(0xD00000000000001CLL, 0x80000001D1EB9FC0, v143);
          *(v102 + 22) = 2080;
          v104 = StaticService.description.getter();
          v105 = v91;
          v106 = v104;
          v108 = v107;
          sub_1D17ECFC8(v105, type metadata accessor for StaticService);
          v109 = sub_1D1B1312C(v106, v108, v143);

          *(v102 + 24) = v109;
          _os_log_impl(&dword_1D16EC000, v100, v101, "%s - %s: static service: %s", v102, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1D3893640](v103, -1, -1);
          MEMORY[0x1D3893640](v102, -1, -1);

          sub_1D17ECFC8(v92, type metadata accessor for StaticService);
          v89 = type metadata accessor for StaticServiceGroup;
          v90 = v139;
        }

        else
        {

          sub_1D17ECFC8(v91, type metadata accessor for StaticService);
          sub_1D17ECFC8(v92, type metadata accessor for StaticService);
          v89 = type metadata accessor for StaticServiceGroup;
          v90 = v36;
        }

        goto LABEL_74;
      }

      if (qword_1EC642470 != -1)
      {
        swift_once();
      }

      v125 = sub_1D1E6709C();
      __swift_project_value_buffer(v125, qword_1EC64F440);
      v126 = sub_1D1E6707C();
      v127 = sub_1D1E6835C();
      if (os_log_type_enabled(v126, v127))
      {
        v128 = swift_slowAlloc();
        v129 = swift_slowAlloc();
        v143[0] = v129;
        *v128 = 136315394;
        *(v128 + 4) = sub_1D1B1312C(0xD000000000000024, 0x80000001D1EB9EE0, v143);
        *(v128 + 12) = 2080;
        *(v128 + 14) = sub_1D1B1312C(0xD00000000000001CLL, 0x80000001D1EB9FC0, v143);
        _os_log_impl(&dword_1D16EC000, v126, v127, "%s - %s: Returning false since accessory is nil", v128, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1D3893640](v129, -1, -1);
        MEMORY[0x1D3893640](v128, -1, -1);
      }

      sub_1D17ECFC8(v92, type metadata accessor for StaticService);
    }

    else
    {

      if (qword_1EC642470 != -1)
      {
        swift_once();
      }

      v115 = sub_1D1E6709C();
      __swift_project_value_buffer(v115, qword_1EC64F440);
      v116 = sub_1D1E6707C();
      v117 = sub_1D1E6835C();
      if (os_log_type_enabled(v116, v117))
      {
        v118 = swift_slowAlloc();
        v119 = swift_slowAlloc();
        v143[0] = v119;
        *v118 = 136315394;
        *(v118 + 4) = sub_1D1B1312C(0xD000000000000024, 0x80000001D1EB9EE0, v143);
        *(v118 + 12) = 2080;
        *(v118 + 14) = sub_1D1B1312C(0xD00000000000001CLL, 0x80000001D1EB9FC0, v143);
        _os_log_impl(&dword_1D16EC000, v116, v117, "%s - %s: Returning false since staticServices.first is nil", v118, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1D3893640](v119, -1, -1);
        MEMORY[0x1D3893640](v118, -1, -1);
      }
    }

    v82 = type metadata accessor for StaticServiceGroup;
    v83 = v36;
    goto LABEL_71;
  }

  if (EnumCaseMultiPayload)
  {
    v60 = v138;
    sub_1D17ECF60(v27, v138, type metadata accessor for StaticService);
    if (qword_1EE07DC58 != -1)
    {
      swift_once();
    }

    v61 = qword_1EE07DC60;
    v62 = v60 + *(v142 + 44);
    v63 = sub_1D1E66A2C();
    v64 = [v61 accessoryFor_];

    v65 = v136;
    if (v64)
    {
      v47 = [v64 supportsWalletKey];
      if (qword_1EC642470 != -1)
      {
        swift_once();
      }

      v66 = sub_1D1E6709C();
      __swift_project_value_buffer(v66, qword_1EC64F440);
      sub_1D17ECA38(v60, v65, type metadata accessor for StaticService);
      v67 = sub_1D1E6707C();
      v68 = sub_1D1E6835C();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v143[0] = v70;
        *v69 = 136315650;
        *(v69 + 4) = sub_1D1B1312C(0xD000000000000024, 0x80000001D1EB9EE0, v143);
        *(v69 + 12) = 2080;
        *(v69 + 14) = sub_1D1B1312C(0xD00000000000001CLL, 0x80000001D1EB9FC0, v143);
        *(v69 + 22) = 2080;
        v71 = StaticService.description.getter();
        v72 = v65;
        v73 = v71;
        v75 = v74;
        sub_1D17ECFC8(v72, type metadata accessor for StaticService);
        v76 = sub_1D1B1312C(v73, v75, v143);

        *(v69 + 24) = v76;
        _os_log_impl(&dword_1D16EC000, v67, v68, "%s - %s: static service: %s", v69, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1D3893640](v70, -1, -1);
        MEMORY[0x1D3893640](v69, -1, -1);
      }

      else
      {

        sub_1D17ECFC8(v65, type metadata accessor for StaticService);
      }

      v90 = v60;
      v89 = type metadata accessor for StaticService;
      goto LABEL_74;
    }

    if (qword_1EC642470 != -1)
    {
      swift_once();
    }

    v110 = sub_1D1E6709C();
    __swift_project_value_buffer(v110, qword_1EC64F440);
    v111 = sub_1D1E6707C();
    v112 = sub_1D1E6835C();
    if (os_log_type_enabled(v111, v112))
    {
      v113 = swift_slowAlloc();
      v114 = swift_slowAlloc();
      v143[0] = v114;
      *v113 = 136315394;
      *(v113 + 4) = sub_1D1B1312C(0xD000000000000024, 0x80000001D1EB9EE0, v143);
      *(v113 + 12) = 2080;
      *(v113 + 14) = sub_1D1B1312C(0xD00000000000001CLL, 0x80000001D1EB9FC0, v143);
      _os_log_impl(&dword_1D16EC000, v111, v112, "%s - %s: Returning false since accessory is nil", v113, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v114, -1, -1);
      MEMORY[0x1D3893640](v113, -1, -1);
    }

    v82 = type metadata accessor for StaticService;
    v83 = v60;
    goto LABEL_71;
  }

  v42 = v27;
  v43 = v137;
  sub_1D17ECF60(v42, v137, type metadata accessor for StaticAccessory);
  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  v44 = qword_1EE07DC60;
  v45 = sub_1D1E66A2C();
  v46 = [v44 accessoryFor_];

  if (v46)
  {
    v47 = [v46 supportsWalletKey];
  }

  else
  {
    v47 = 0;
  }

  if (qword_1EC642470 != -1)
  {
    swift_once();
  }

  v84 = sub_1D1E6709C();
  __swift_project_value_buffer(v84, qword_1EC64F440);
  v85 = sub_1D1E6707C();
  v86 = sub_1D1E6835C();
  if (os_log_type_enabled(v85, v86))
  {
    v87 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v143[0] = v88;
    *v87 = 136315650;
    *(v87 + 4) = sub_1D1B1312C(0xD000000000000024, 0x80000001D1EB9EE0, v143);
    *(v87 + 12) = 2080;
    *(v87 + 14) = sub_1D1B1312C(0xD00000000000001CLL, 0x80000001D1EB9FC0, v143);
    *(v87 + 22) = 2080;
    *(v87 + 24) = sub_1D1B1312C(0x6341636974617473, 0xEF79726F73736563, v143);
    _os_log_impl(&dword_1D16EC000, v85, v86, "%s - %s: static accessory: %s", v87, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v88, -1, -1);
    MEMORY[0x1D3893640](v87, -1, -1);
  }

  v89 = type metadata accessor for StaticAccessory;
  v90 = v43;
LABEL_74:
  sub_1D17ECFC8(v90, v89);
  return v47;
}

id AccessoryDetails.hmHomeFromPayload.getter()
{
  v1 = v0;
  v2 = type metadata accessor for EndpointPath(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for StaticEndpoint();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for StaticServiceGroup();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v60 = &v56 - v15;
  v16 = type metadata accessor for StaticService(0);
  v58 = *(v16 - 8);
  v59 = v16;
  v17 = *(v58 + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v56 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v57 = &v56 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v56 - v22;
  v24 = type metadata accessor for StaticAccessory(0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v56 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for AccessoryDetails.Payload(0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28);
  v31 = (&v56 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D17ECA38(v1, v31, type metadata accessor for AccessoryDetails.Payload);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_1D17ECF60(v31, v27, type metadata accessor for StaticAccessory);
      if (qword_1EE07DC58 != -1)
      {
        swift_once();
      }

      v33 = qword_1EE07DC60;
      v34 = sub_1D1E66A2C();
      v35 = [v33 accessoryFor_];

      v36 = [v35 home];
      v37 = type metadata accessor for StaticAccessory;
      v38 = v27;
      goto LABEL_21;
    }

LABEL_10:
    sub_1D17ECF60(v31, v23, type metadata accessor for StaticService);
    if (qword_1EE07DC58 != -1)
    {
      swift_once();
    }

    v42 = qword_1EE07DC60;
    v43 = &v23[*(v59 + 44)];
    v44 = sub_1D1E66A2C();
    v45 = [v42 accessoryFor_];

    v36 = [v45 home];
    v37 = type metadata accessor for StaticService;
    v38 = v23;
    goto LABEL_21;
  }

  if (EnumCaseMultiPayload != 2)
  {
    sub_1D17ECF60(v31, v9, type metadata accessor for StaticEndpoint);
    if (qword_1EE07DC58 != -1)
    {
      swift_once();
    }

    v46 = qword_1EE07DC60;
    sub_1D17ECA38(&v9[*(v6 + 20)], v5, type metadata accessor for EndpointPath);
    v47 = sub_1D1E66A2C();
    v48 = sub_1D1E66A7C();
    (*(*(v48 - 8) + 8))(v5, v48);
    v36 = [v46 homeFor_];

    v37 = type metadata accessor for StaticEndpoint;
    v38 = v9;
    goto LABEL_21;
  }

  v39 = v60;
  sub_1D17ECF60(v31, v60, type metadata accessor for StaticServiceGroup);
  sub_1D17ECA38(v39, v14, type metadata accessor for StaticServiceGroup);
  v31 = *&v14[*(v10 + 56)];
  v40 = v31[2];
  if (v40)
  {
    v23 = sub_1D180453C(v31[2], 0, &qword_1EC643258, &qword_1D1E716B0, type metadata accessor for StaticService);
    v41 = sub_1D1806314(&v61, &v23[(*(v58 + 80) + 32) & ~*(v58 + 80)], v40, v31, type metadata accessor for StaticService, type metadata accessor for StaticService, type metadata accessor for StaticService);

    sub_1D1716918();
    if (v41 != v40)
    {
      __break(1u);
      goto LABEL_10;
    }
  }

  else
  {
    v23 = MEMORY[0x1E69E7CC0];
  }

  sub_1D17ECFC8(v14, type metadata accessor for StaticServiceGroup);
  if (!*(v23 + 2))
  {

    sub_1D17ECFC8(v60, type metadata accessor for StaticServiceGroup);
    return 0;
  }

  v49 = v56;
  sub_1D17ECA38(&v23[(*(v58 + 80) + 32) & ~*(v58 + 80)], v56, type metadata accessor for StaticService);

  v50 = v57;
  sub_1D17ECF60(v49, v57, type metadata accessor for StaticService);
  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  v51 = qword_1EE07DC60;
  v52 = v50 + *(v59 + 44);
  v53 = sub_1D1E66A2C();
  v54 = [v51 accessoryFor_];

  v36 = [v54 home];
  sub_1D17ECFC8(v50, type metadata accessor for StaticService);
  v37 = type metadata accessor for StaticServiceGroup;
  v38 = v60;
LABEL_21:
  sub_1D17ECFC8(v38, v37);
  return v36;
}

id AccessoryDetails.shouldShowManageAccessForLocks.getter()
{
  v1 = type metadata accessor for StaticUser();
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v56 = &v52 - v6;
  v7 = type metadata accessor for AccessoryDetails.Payload(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AccessoryDetails(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v52 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v52 - v19;
  if (qword_1EC642470 != -1)
  {
    swift_once();
  }

  v21 = sub_1D1E6709C();
  __swift_project_value_buffer(v21, qword_1EC64F440);
  sub_1D17ECA38(v0, v20, type metadata accessor for AccessoryDetails);
  sub_1D17ECA38(v0, v18, type metadata accessor for AccessoryDetails);
  sub_1D17ECA38(v0, v15, type metadata accessor for AccessoryDetails);
  v22 = sub_1D1E6707C();
  v23 = sub_1D1E6835C();
  if (os_log_type_enabled(v22, v23))
  {
    v53 = v23;
    v54 = v5;
    v55 = v1;
    v24 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v60 = v52;
    *v24 = 136316418;
    *(v24 + 4) = sub_1D1B1312C(0xD000000000000024, 0x80000001D1EB9EE0, &v60);
    *(v24 + 12) = 2080;
    *(v24 + 14) = sub_1D1B1312C(0xD00000000000001ELL, 0x80000001D1EB9FE0, &v60);
    *(v24 + 22) = 1024;
    v25 = AccessoryDetails.supportsAccessCodes()();
    sub_1D17ECFC8(v20, type metadata accessor for AccessoryDetails);
    *(v24 + 24) = v25;
    *(v24 + 28) = 1024;
    v26 = AccessoryDetails.hmHomeFromPayload.getter();
    v29 = 0;
    if (v26)
    {
      v27 = v26;
      v28 = [v26 hasOnboardedForAccessCode];

      if (v28)
      {
        v29 = 1;
      }
    }

    sub_1D17ECFC8(v18, type metadata accessor for AccessoryDetails);
    *(v24 + 30) = v29;
    *(v24 + 34) = 1024;
    sub_1D17ECA38(v15, v10, type metadata accessor for AccessoryDetails.Payload);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v1 = v55;
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v58 = type metadata accessor for StaticServiceGroup();
        v31 = sub_1D1807408(&qword_1EC644688, type metadata accessor for StaticServiceGroup);
        v32 = type metadata accessor for StaticServiceGroup;
      }

      else
      {
        v58 = type metadata accessor for StaticEndpoint();
        v31 = sub_1D1807408(&qword_1EC644680, type metadata accessor for StaticEndpoint);
        v32 = type metadata accessor for StaticEndpoint;
      }
    }

    else if (EnumCaseMultiPayload)
    {
      v58 = type metadata accessor for StaticService(0);
      v31 = sub_1D1807408(&qword_1EC644690, type metadata accessor for StaticService);
      v32 = type metadata accessor for StaticService;
    }

    else
    {
      v58 = type metadata accessor for StaticAccessory(0);
      v31 = sub_1D1807408(&qword_1EC644698, type metadata accessor for StaticAccessory);
      v32 = type metadata accessor for StaticAccessory;
    }

    v33 = v32;
    v59 = v31;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v57);
    sub_1D17ECF60(v10, boxed_opaque_existential_1, v33);
    v35 = v58;
    v36 = v59;
    __swift_project_boxed_opaque_existential_1(v57, v58);
    LOBYTE(v35) = (*(v36 + 48))(v35, v36);
    __swift_destroy_boxed_opaque_existential_1(v57);
    sub_1D17ECFC8(v15, type metadata accessor for AccessoryDetails);
    *(v24 + 36) = v35 & 1;
    *(v24 + 40) = 1024;
    if (qword_1EE07DC58 != -1)
    {
      swift_once();
    }

    v37 = qword_1EE07DC60;
    swift_getKeyPath();
    v57[0] = v37;
    sub_1D1807408(&qword_1EE07CFB0, type metadata accessor for DataModel);
    sub_1D1E66CAC();

    v38 = v37 + OBJC_IVAR____TtC13HomeDataModel9DataModel__currentStateSnapshot;
    swift_beginAccess();
    v39 = *(type metadata accessor for StateSnapshot(0) + 20);
    v40 = v38 + v39 + *(type metadata accessor for StaticHome() + 32);
    v41 = v56;
    sub_1D17ECA38(v40, v56, type metadata accessor for StaticUser);
    if (*(v41 + *(v1 + 28)))
    {
      v42 = *(v41 + *(v1 + 28)) == 1;
      sub_1D17ECFC8(v41, type metadata accessor for StaticUser);
    }

    else
    {
      sub_1D17ECFC8(v41, type metadata accessor for StaticUser);
      v42 = 1;
    }

    *(v24 + 42) = v42;
    _os_log_impl(&dword_1D16EC000, v22, v53, "%s - %s: supportsAccessCodes: %{BOOL}d hasOnboardedForAccessCode: %{BOOL}d, accessoryIsReachable: %{BOOL}d, userCanEdit: %{BOOL}d", v24, 0x2Eu);
    v43 = v52;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v43, -1, -1);
    MEMORY[0x1D3893640](v24, -1, -1);

    v5 = v54;
  }

  else
  {
    sub_1D17ECFC8(v15, type metadata accessor for AccessoryDetails);
    sub_1D17ECFC8(v18, type metadata accessor for AccessoryDetails);
    sub_1D17ECFC8(v20, type metadata accessor for AccessoryDetails);
  }

  if (!AccessoryDetails.supportsAccessCodes()())
  {
    return 0;
  }

  result = AccessoryDetails.hmHomeFromPayload.getter();
  if (!result)
  {
    return result;
  }

  v45 = result;
  v46 = [result hasOnboardedForAccessCode];

  if (!v46)
  {
    return 0;
  }

  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  v47 = qword_1EE07DC60;
  swift_getKeyPath();
  v57[0] = v47;
  sub_1D1807408(&qword_1EE07CFB0, type metadata accessor for DataModel);
  sub_1D1E66CAC();

  v48 = v47 + OBJC_IVAR____TtC13HomeDataModel9DataModel__currentStateSnapshot;
  swift_beginAccess();
  v49 = *(type metadata accessor for StateSnapshot(0) + 20);
  v50 = type metadata accessor for StaticHome();
  sub_1D17ECA38(v48 + v49 + *(v50 + 32), v5, type metadata accessor for StaticUser);
  v51 = v5[*(v1 + 28)] < 2u;
  sub_1D17ECFC8(v5, type metadata accessor for StaticUser);
  return v51;
}

uint64_t AccessoryDetails.shouldEnableManageAccessForLocks.getter()
{
  v1 = v0;
  v2 = type metadata accessor for AccessoryDetails.Payload(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v33 - v7;
  v9 = type metadata accessor for AccessoryDetails(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC642470 != -1)
  {
    swift_once();
  }

  v13 = sub_1D1E6709C();
  __swift_project_value_buffer(v13, qword_1EC64F440);
  sub_1D17ECA38(v0, v12, type metadata accessor for AccessoryDetails);
  v14 = sub_1D1E6707C();
  v15 = sub_1D1E6835C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v35 = v17;
    *v16 = 136315650;
    *(v16 + 4) = sub_1D1B1312C(0xD000000000000024, 0x80000001D1EB9EE0, &v35);
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_1D1B1312C(0xD000000000000020, 0x80000001D1EBA000, &v35);
    *(v16 + 22) = 1024;
    sub_1D17ECA38(v12, v8, type metadata accessor for AccessoryDetails.Payload);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v34 = v0;
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v37 = type metadata accessor for StaticServiceGroup();
        v19 = sub_1D1807408(&qword_1EC644688, type metadata accessor for StaticServiceGroup);
        v20 = type metadata accessor for StaticServiceGroup;
      }

      else
      {
        v37 = type metadata accessor for StaticEndpoint();
        v19 = sub_1D1807408(&qword_1EC644680, type metadata accessor for StaticEndpoint);
        v20 = type metadata accessor for StaticEndpoint;
      }
    }

    else if (EnumCaseMultiPayload)
    {
      v37 = type metadata accessor for StaticService(0);
      v19 = sub_1D1807408(&qword_1EC644690, type metadata accessor for StaticService);
      v20 = type metadata accessor for StaticService;
    }

    else
    {
      v37 = type metadata accessor for StaticAccessory(0);
      v19 = sub_1D1807408(&qword_1EC644698, type metadata accessor for StaticAccessory);
      v20 = type metadata accessor for StaticAccessory;
    }

    v21 = v20;
    v38 = v19;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v36);
    sub_1D17ECF60(v8, boxed_opaque_existential_1, v21);
    v24 = v37;
    v23 = v38;
    __swift_project_boxed_opaque_existential_1(v36, v37);
    LOBYTE(v21) = (*(v23 + 48))(v24, v23);
    __swift_destroy_boxed_opaque_existential_1(v36);
    sub_1D17ECFC8(v12, type metadata accessor for AccessoryDetails);
    *(v16 + 24) = v21 & 1;
    _os_log_impl(&dword_1D16EC000, v14, v15, "%s - %s: accessoryIsReachable: %{BOOL}d", v16, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v17, -1, -1);
    MEMORY[0x1D3893640](v16, -1, -1);

    v1 = v34;
  }

  else
  {
    sub_1D17ECFC8(v12, type metadata accessor for AccessoryDetails);
  }

  sub_1D17ECA38(v1, v6, type metadata accessor for AccessoryDetails.Payload);
  v25 = swift_getEnumCaseMultiPayload();
  if (v25 > 1)
  {
    if (v25 == 2)
    {
      v37 = type metadata accessor for StaticServiceGroup();
      v26 = sub_1D1807408(&qword_1EC644688, type metadata accessor for StaticServiceGroup);
      v27 = type metadata accessor for StaticServiceGroup;
    }

    else
    {
      v37 = type metadata accessor for StaticEndpoint();
      v26 = sub_1D1807408(&qword_1EC644680, type metadata accessor for StaticEndpoint);
      v27 = type metadata accessor for StaticEndpoint;
    }
  }

  else if (v25)
  {
    v37 = type metadata accessor for StaticService(0);
    v26 = sub_1D1807408(&qword_1EC644690, type metadata accessor for StaticService);
    v27 = type metadata accessor for StaticService;
  }

  else
  {
    v37 = type metadata accessor for StaticAccessory(0);
    v26 = sub_1D1807408(&qword_1EC644698, type metadata accessor for StaticAccessory);
    v27 = type metadata accessor for StaticAccessory;
  }

  v28 = v27;
  v38 = v26;
  v29 = __swift_allocate_boxed_opaque_existential_1(v36);
  sub_1D17ECF60(v6, v29, v28);
  v30 = v37;
  v31 = v38;
  __swift_project_boxed_opaque_existential_1(v36, v37);
  LOBYTE(v30) = (*(v31 + 48))(v30, v31);
  __swift_destroy_boxed_opaque_existential_1(v36);
  return v30 & 1;
}

id AccessoryDetails.shouldShowAddHomeKeyToWallet.getter()
{
  v1 = v0;
  v2 = type metadata accessor for AccessoryDetails(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v27 - v7;
  v9 = sub_1D1E677EC();
  v10 = MGGetStringAnswer();

  if (v10)
  {
    v11 = v10;
    if (sub_1D1E6788C() == 0x656E6F685069 && v12 == 0xE600000000000000)
    {

      v13 = 1;
    }

    else
    {
      v13 = sub_1D1E6904C();
    }
  }

  else
  {
    v13 = 0;
  }

  if (qword_1EC642470 != -1)
  {
    swift_once();
  }

  v14 = sub_1D1E6709C();
  __swift_project_value_buffer(v14, qword_1EC64F440);
  sub_1D17ECA38(v1, v8, type metadata accessor for AccessoryDetails);
  sub_1D17ECA38(v1, v6, type metadata accessor for AccessoryDetails);
  v15 = sub_1D1E6707C();
  v16 = sub_1D1E6835C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v28 = v18;
    *v17 = 136316162;
    *(v17 + 4) = sub_1D1B1312C(0xD000000000000024, 0x80000001D1EB9EE0, &v28);
    *(v17 + 12) = 2080;
    *(v17 + 14) = sub_1D1B1312C(0xD00000000000001CLL, 0x80000001D1EBA030, &v28);
    *(v17 + 22) = 1024;
    *(v17 + 24) = v13 & 1;
    *(v17 + 28) = 1024;
    v19 = AccessoryDetails.accessorySupportsWalletKey()();
    sub_1D17ECFC8(v8, type metadata accessor for AccessoryDetails);
    *(v17 + 30) = v19;
    *(v17 + 34) = 1024;
    v20 = AccessoryDetails.hmHomeFromPayload.getter();
    v23 = 0;
    if (v20)
    {
      v21 = v20;
      v22 = [v20 hasOnboardedForWalletKey];

      if (v22)
      {
        v23 = 1;
      }
    }

    sub_1D17ECFC8(v6, type metadata accessor for AccessoryDetails);
    *(v17 + 36) = v23;
    _os_log_impl(&dword_1D16EC000, v15, v16, "%s - %s: isIphone: %{BOOL}d accessorySupportsWalletKey: %{BOOL}d, _hasOnboardedForWalletKey: %{BOOL}d", v17, 0x28u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v18, -1, -1);
    MEMORY[0x1D3893640](v17, -1, -1);

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    sub_1D17ECFC8(v6, type metadata accessor for AccessoryDetails);
    sub_1D17ECFC8(v8, type metadata accessor for AccessoryDetails);

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  if (!AccessoryDetails.accessorySupportsWalletKey()())
  {
    return 0;
  }

  result = AccessoryDetails.hmHomeFromPayload.getter();
  if (result)
  {
    v25 = result;
    v26 = [result hasOnboardedForWalletKey];

    return v26;
  }

  return result;
}

id AccessoryDetails.hmAccessoryFromPayload.getter()
{
  v1 = v0;
  v54 = type metadata accessor for EndpointPath(0);
  v2 = *(*(v54 - 8) + 64);
  MEMORY[0x1EEE9AC00](v54);
  v4 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for StaticEndpoint();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for StaticServiceGroup();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v57 = &v51 - v14;
  v15 = type metadata accessor for StaticService(0);
  v55 = *(v15 - 8);
  v56 = v15;
  v16 = *(v55 + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v52 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v53 = &v51 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v51 - v21;
  v23 = type metadata accessor for StaticAccessory(0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = &v51 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for AccessoryDetails.Payload(0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v51 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D17ECA38(v1, v30, type metadata accessor for AccessoryDetails.Payload);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_1D17ECF60(v30, v26, type metadata accessor for StaticAccessory);
      if (qword_1EE07DC58 != -1)
      {
        swift_once();
      }

      v32 = qword_1EE07DC60;
      v33 = sub_1D1E66A2C();
      v34 = [v32 accessoryFor_];

      sub_1D17ECFC8(v26, type metadata accessor for StaticAccessory);
      return v34;
    }

    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v35 = v57;
    sub_1D17ECF60(v30, v57, type metadata accessor for StaticServiceGroup);
    sub_1D17ECA38(v35, v13, type metadata accessor for StaticServiceGroup);
    v36 = *&v13[*(v9 + 56)];
    v37 = v36[2];
    if (v37)
    {
      v22 = sub_1D180453C(v36[2], 0, &qword_1EC643258, &qword_1D1E716B0, type metadata accessor for StaticService);
      v38 = sub_1D1806314(&v58, &v22[(*(v55 + 80) + 32) & ~*(v55 + 80)], v37, v36, type metadata accessor for StaticService, type metadata accessor for StaticService, type metadata accessor for StaticService);
      v30 = v58;

      sub_1D1716918();
      if (v38 != v37)
      {
        __break(1u);
LABEL_10:
        sub_1D17ECF60(v30, v22, type metadata accessor for StaticService);
        if (qword_1EE07DC58 != -1)
        {
          swift_once();
        }

        v39 = qword_1EE07DC60;
        v40 = &v22[*(v56 + 44)];
        v41 = sub_1D1E66A2C();
        v34 = [v39 accessoryFor_];

        sub_1D17ECFC8(v22, type metadata accessor for StaticService);
        return v34;
      }
    }

    else
    {
      v22 = MEMORY[0x1E69E7CC0];
    }

    sub_1D17ECFC8(v13, type metadata accessor for StaticServiceGroup);
    if (*(v22 + 2))
    {
      v45 = v52;
      sub_1D17ECA38(&v22[(*(v55 + 80) + 32) & ~*(v55 + 80)], v52, type metadata accessor for StaticService);

      v46 = v53;
      sub_1D17ECF60(v45, v53, type metadata accessor for StaticService);
      if (qword_1EE07DC58 != -1)
      {
        swift_once();
      }

      v47 = qword_1EE07DC60;
      v48 = v46 + *(v56 + 44);
      v49 = sub_1D1E66A2C();
      v34 = [v47 accessoryFor_];

      sub_1D17ECFC8(v46, type metadata accessor for StaticService);
      sub_1D17ECFC8(v57, type metadata accessor for StaticServiceGroup);
    }

    else
    {

      sub_1D17ECFC8(v57, type metadata accessor for StaticServiceGroup);
      return 0;
    }
  }

  else
  {
    sub_1D17ECF60(v30, v8, type metadata accessor for StaticEndpoint);
    if (qword_1EE07DC58 != -1)
    {
      swift_once();
    }

    v42 = &v8[*(v5 + 20)];
    v43 = *(v42 + *(v54 + 20));
    sub_1D17ECA38(v42, v4, type metadata accessor for EndpointPath);
    v34 = DataModel.accessory(with:inHomeWithID:)(v43);
    sub_1D17ECFC8(v8, type metadata accessor for StaticEndpoint);
    v44 = sub_1D1E66A7C();
    (*(*(v44 - 8) + 8))(v4, v44);
  }

  return v34;
}

uint64_t AccessoryDetails.accessoryAllowsIdentify.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644778, &unk_1D1E75B10);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v53 = &v49 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v49 - v6;
  v8 = type metadata accessor for AccessoryDetails.Payload(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644780, &qword_1D1E91AA0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v49 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v49 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v51 = &v49 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v49 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v52 = &v49 - v28;
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v30 = result;
    internalBuild = MobileGestalt_get_internalBuild();

    if (internalBuild)
    {
      if (qword_1EC6422C8 != -1)
      {
        swift_once();
      }

      if (byte_1EC64919B)
      {
        return 1;
      }
    }

    sub_1D17ECA38(v0, v11, type metadata accessor for AccessoryDetails.Payload);
    if (swift_getEnumCaseMultiPayload() > 2)
    {
      sub_1D17ECF60(v11, v27, type metadata accessor for StaticEndpoint);
      v37 = type metadata accessor for StaticEndpoint();
      (*(*(v37 - 8) + 56))(v27, 0, 1, v37);
      goto LABEL_19;
    }

    sub_1D17ECFC8(v11, type metadata accessor for AccessoryDetails.Payload);
    AccessoryDetails.Payload.staticMatterDevice.getter(v7);
    v33 = type metadata accessor for StaticMatterDevice();
    v34 = (*(*(v33 - 8) + 48))(v7, 1, v33);
    if (v34 == 1)
    {
      sub_1D1741A30(v7, &qword_1EC643650, &qword_1D1E71D40);
      v35 = type metadata accessor for StaticEndpoint();
      (*(*(v35 - 8) + 56))(v22, 1, 1, v35);
      v36 = v51;
    }

    else
    {
      v38 = *&v7[*(v33 + 56)];
      MEMORY[0x1EEE9AC00](v34);
      *(&v49 - 2) = v7;

      sub_1D1746B78(sub_1D18076C8, v38, v19);

      v35 = type metadata accessor for StaticEndpoint();
      v39 = *(v35 - 8);
      v50 = *(v39 + 48);
      v40 = v50(v19, 1, v35);
      v49 = v39;
      if (v40 == 1)
      {

        sub_1D1771D7C(v41, v22);

        v42 = v50;
        v43 = v50(v19, 1, v35);
        v36 = v51;
        if (v43 != 1)
        {
          sub_1D1741A30(v19, &qword_1EC644780, &qword_1D1E91AA0);
        }
      }

      else
      {
        sub_1D17ECF60(v19, v22, type metadata accessor for StaticEndpoint);
        (*(v39 + 56))(v22, 0, 1, v35);
        v42 = v50;
        v36 = v51;
      }

      sub_1D17ECFC8(v7, type metadata accessor for StaticMatterDevice);
      if (v42(v22, 1, v35) != 1)
      {
        sub_1D17ECF60(v22, v36, type metadata accessor for StaticEndpoint);
        (*(v49 + 56))(v36, 0, 1, v35);
        goto LABEL_18;
      }
    }

    sub_1D1741A30(v22, &qword_1EC644780, &qword_1D1E91AA0);
    type metadata accessor for StaticEndpoint();
    (*(*(v35 - 8) + 56))(v36, 1, 1, v35);
LABEL_18:
    sub_1D1741A90(v36, v27, &qword_1EC644780, &qword_1D1E91AA0);
LABEL_19:
    v44 = v52;
    sub_1D1741A90(v27, v52, &qword_1EC644780, &qword_1D1E91AA0);
    sub_1D1741A90(v44, v16, &qword_1EC644780, &qword_1D1E91AA0);
    v45 = type metadata accessor for StaticEndpoint();
    if ((*(*(v45 - 8) + 48))(v16, 1, v45) == 1)
    {
      sub_1D1741A30(v16, &qword_1EC644780, &qword_1D1E91AA0);
      v46 = type metadata accessor for StaticRVCClusterGroup();
      v47 = v53;
      (*(*(v46 - 8) + 56))(v53, 1, 1, v46);
    }

    else
    {
      v47 = v53;
      sub_1D1741C08(&v16[*(v45 + 40)], v53, &qword_1EC644778, &unk_1D1E75B10);
      sub_1D17ECFC8(v16, type metadata accessor for StaticEndpoint);
      v48 = type metadata accessor for StaticRVCClusterGroup();
      v32 = 1;
      if ((*(*(v48 - 8) + 48))(v47, 1, v48) != 1)
      {
LABEL_23:
        sub_1D1741A30(v47, &qword_1EC644778, &unk_1D1E75B10);
        return v32;
      }
    }

    v32 = 0;
    goto LABEL_23;
  }

  __break(1u);
  return result;
}

uint64_t AccessoryDetails.turnOnPairingMode()()
{
  v1[20] = v0;
  v2 = type metadata accessor for StaticEndpoint();
  v1[21] = v2;
  v3 = *(v2 - 8);
  v1[22] = v3;
  v4 = *(v3 + 64) + 15;
  v1[23] = swift_task_alloc();
  v5 = type metadata accessor for StaticService(0);
  v1[24] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v1[25] = swift_task_alloc();
  v7 = *(*(type metadata accessor for StaticAccessory(0) - 8) + 64) + 15;
  v1[26] = swift_task_alloc();
  v8 = type metadata accessor for AccessoryDetails.Payload(0);
  v1[27] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v1[28] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644780, &qword_1D1E91AA0) - 8) + 64) + 15;
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D17FB30C, 0, 0);
}

uint64_t sub_1D17FB30C()
{
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[20];
  v4 = *(v0[22] + 56);
  v4(v0[30], 1, 1, v0[21]);
  sub_1D17ECA38(v3, v2, type metadata accessor for AccessoryDetails.Payload);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1D17ECFC8(v0[28], type metadata accessor for AccessoryDetails.Payload);
    }

    else
    {
      v11 = v0[30];
      v12 = v0[28];
      v13 = v0[21];
      sub_1D1741A30(v11, &qword_1EC644780, &qword_1D1E91AA0);
      sub_1D17ECF60(v12, v11, type metadata accessor for StaticEndpoint);
      v4(v11, 0, 1, v13);
    }

    v14 = v0[29];
    v15 = v0[21];
    v16 = v0[22];
    sub_1D1741C08(v0[30], v14, &qword_1EC644780, &qword_1D1E91AA0);
    if ((*(v16 + 48))(v14, 1, v15) == 1)
    {
      v17 = v0[29];
      sub_1D1741A30(v0[30], &qword_1EC644780, &qword_1D1E91AA0);
      sub_1D1741A30(v17, &qword_1EC644780, &qword_1D1E91AA0);
      v19 = v0[29];
      v18 = v0[30];
      v20 = v0[28];
      v22 = v0[25];
      v21 = v0[26];
      v23 = v0[23];

      v24 = v0[1];

      return v24(0, 0);
    }

    else
    {
      sub_1D17ECF60(v0[29], v0[23], type metadata accessor for StaticEndpoint);
      v25 = swift_task_alloc();
      v0[42] = v25;
      *v25 = v0;
      v25[1] = sub_1D17FC218;
      v26 = v0[23];

      return StaticEndpoint.activateCHIPPairingModeAndCreateSetupPayloadString()();
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1D17ECF60(v0[28], v0[25], type metadata accessor for StaticService);
    v0[33] = sub_1D1E67E1C();
    v0[34] = sub_1D1E67E0C();
    v10 = sub_1D1E67D4C();

    return MEMORY[0x1EEE6DFA0](sub_1D17FBA9C, v10, v9);
  }

  else
  {
    sub_1D17ECF60(v0[28], v0[26], type metadata accessor for StaticAccessory);
    v6 = swift_task_alloc();
    v0[31] = v6;
    *v6 = v0;
    v6[1] = sub_1D17FB6D4;
    v7 = v0[26];

    return StaticAccessory.accessory.getter();
  }
}

uint64_t sub_1D17FB6D4(uint64_t a1)
{
  v2 = *(*v1 + 248);
  v4 = *v1;
  *(*v1 + 256) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D17FB7D4, 0, 0);
}

uint64_t sub_1D17FB7D4()
{
  sub_1D17ECFC8(v0[26], type metadata accessor for StaticAccessory);
  v1 = v0[32];
  v0[40] = v1;
  if (v1)
  {
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1D17FC02C;
    v2 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644788, &qword_1D1E75B28);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1D17FC60C;
    v0[13] = &block_descriptor_11;
    v0[14] = v2;
    [v1 activateCHIPPairingModeAndCreateSetupPayloadStringWithCompletion_];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    v3 = v0[29];
    v4 = v0[21];
    v5 = v0[22];
    sub_1D1741C08(v0[30], v3, &qword_1EC644780, &qword_1D1E91AA0);
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {
      v6 = v0[29];
      sub_1D1741A30(v0[30], &qword_1EC644780, &qword_1D1E91AA0);
      sub_1D1741A30(v6, &qword_1EC644780, &qword_1D1E91AA0);
      v8 = v0[29];
      v7 = v0[30];
      v9 = v0[28];
      v11 = v0[25];
      v10 = v0[26];
      v12 = v0[23];

      v13 = v0[1];

      return v13(0, 0);
    }

    else
    {
      sub_1D17ECF60(v0[29], v0[23], type metadata accessor for StaticEndpoint);
      v14 = swift_task_alloc();
      v0[42] = v14;
      *v14 = v0;
      v14[1] = sub_1D17FC218;
      v15 = v0[23];

      return StaticEndpoint.activateCHIPPairingModeAndCreateSetupPayloadString()();
    }
  }
}

uint64_t sub_1D17FBA9C()
{
  v1 = *(v0 + 272);

  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D17FBB34, 0, 0);
}

uint64_t sub_1D17FBB34()
{
  v1 = *(v0 + 264);
  *(v0 + 280) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D17FBBC0, v3, v2);
}

uint64_t sub_1D17FBBC0()
{
  v1 = *(v0 + 280);

  *(v0 + 288) = qword_1EE07DC60;

  return MEMORY[0x1EEE6DFA0](sub_1D17FBC34, 0, 0);
}

uint64_t sub_1D17FBC34()
{
  v1 = v0[33];
  v2 = v0[25] + *(v0[24] + 44);
  v0[37] = sub_1D1E66A2C();
  v0[38] = sub_1D1E67E0C();
  v4 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D17FBCD4, v4, v3);
}

uint64_t sub_1D17FBCD4()
{
  v2 = v0[37];
  v1 = v0[38];
  v3 = v0[36];

  v0[39] = [v3 accessoryFor_];

  return MEMORY[0x1EEE6DFA0](sub_1D17FBD64, 0, 0);
}

uint64_t sub_1D17FBD64()
{
  sub_1D17ECFC8(v0[25], type metadata accessor for StaticService);
  v1 = v0[39];
  v0[40] = v1;
  if (v1)
  {
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1D17FC02C;
    v2 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644788, &qword_1D1E75B28);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1D17FC60C;
    v0[13] = &block_descriptor_11;
    v0[14] = v2;
    [v1 activateCHIPPairingModeAndCreateSetupPayloadStringWithCompletion_];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    v3 = v0[29];
    v4 = v0[21];
    v5 = v0[22];
    sub_1D1741C08(v0[30], v3, &qword_1EC644780, &qword_1D1E91AA0);
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {
      v6 = v0[29];
      sub_1D1741A30(v0[30], &qword_1EC644780, &qword_1D1E91AA0);
      sub_1D1741A30(v6, &qword_1EC644780, &qword_1D1E91AA0);
      v8 = v0[29];
      v7 = v0[30];
      v9 = v0[28];
      v11 = v0[25];
      v10 = v0[26];
      v12 = v0[23];

      v13 = v0[1];

      return v13(0, 0);
    }

    else
    {
      sub_1D17ECF60(v0[29], v0[23], type metadata accessor for StaticEndpoint);
      v14 = swift_task_alloc();
      v0[42] = v14;
      *v14 = v0;
      v14[1] = sub_1D17FC218;
      v15 = v0[23];

      return StaticEndpoint.activateCHIPPairingModeAndCreateSetupPayloadString()();
    }
  }
}

uint64_t sub_1D17FC02C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 328) = v2;
  if (v2)
  {
    v3 = sub_1D17FC43C;
  }

  else
  {
    v3 = sub_1D17FC13C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D17FC13C()
{
  v1 = *(v0 + 240);

  sub_1D1741A30(v1, &qword_1EC644780, &qword_1D1E91AA0);
  v3 = *(v0 + 144);
  v2 = *(v0 + 152);
  v5 = *(v0 + 232);
  v4 = *(v0 + 240);
  v6 = *(v0 + 224);
  v8 = *(v0 + 200);
  v7 = *(v0 + 208);
  v9 = *(v0 + 184);

  v10 = *(v0 + 8);

  return v10(v3, v2);
}

uint64_t sub_1D17FC218(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 336);
  v8 = *v3;
  *(*v3 + 344) = v2;

  if (v2)
  {
    v9 = sub_1D17FC51C;
  }

  else
  {
    *(v6 + 352) = a2;
    *(v6 + 360) = a1;
    v9 = sub_1D17FC34C;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1D17FC34C()
{
  v1 = v0[30];
  sub_1D17ECFC8(v0[23], type metadata accessor for StaticEndpoint);
  sub_1D1741A30(v1, &qword_1EC644780, &qword_1D1E91AA0);
  v2 = v0[44];
  v3 = v0[45];
  v5 = v0[29];
  v4 = v0[30];
  v6 = v0[28];
  v8 = v0[25];
  v7 = v0[26];
  v9 = v0[23];

  v10 = v0[1];

  return v10(v3, v2);
}

uint64_t sub_1D17FC43C()
{
  v2 = v0[40];
  v1 = v0[41];
  v3 = v0[30];
  swift_willThrow();

  sub_1D1741A30(v3, &qword_1EC644780, &qword_1D1E91AA0);
  v5 = v0[29];
  v4 = v0[30];
  v6 = v0[28];
  v8 = v0[25];
  v7 = v0[26];
  v9 = v0[23];

  v10 = v0[1];

  return v10(0, 0);
}

uint64_t sub_1D17FC51C()
{
  v1 = v0[43];
  v2 = v0[30];
  sub_1D17ECFC8(v0[23], type metadata accessor for StaticEndpoint);
  sub_1D1741A30(v2, &qword_1EC644780, &qword_1D1E91AA0);

  v4 = v0[29];
  v3 = v0[30];
  v5 = v0[28];
  v7 = v0[25];
  v6 = v0[26];
  v8 = v0[23];

  v9 = v0[1];

  return v9(0, 0);
}

uint64_t sub_1D17FC60C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x1EEE6DEE8](v4, v5);
  }

  else
  {
    v8 = sub_1D1E6781C();
    v9 = *(*(v4 + 64) + 40);
    *v9 = v8;
    v9[1] = v10;

    return MEMORY[0x1EEE6DEE0](v4);
  }
}

uint64_t AccessoryDetails.removeAccessoryFromAppleHome()()
{
  v1[50] = v0;
  v2 = *(*(type metadata accessor for StaticServiceGroup() - 8) + 64) + 15;
  v1[51] = swift_task_alloc();
  v3 = type metadata accessor for StaticService(0);
  v1[52] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v1[53] = swift_task_alloc();
  v5 = *(*(type metadata accessor for StaticAccessory(0) - 8) + 64) + 15;
  v1[54] = swift_task_alloc();
  v6 = type metadata accessor for AccessoryDetails.Payload(0);
  v1[55] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v1[56] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D17FC7FC, 0, 0);
}

uint64_t sub_1D17FC7FC()
{
  v1 = v0[55];
  sub_1D17ECA38(v0[50], v0[56], type metadata accessor for AccessoryDetails.Payload);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = v0[56];
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1D17ECF60(v3, v0[51], type metadata accessor for StaticServiceGroup);
      v7 = swift_task_alloc();
      v0[70] = v7;
      *v7 = v0;
      v7[1] = sub_1D17FD5C8;
      v8 = v0[51];

      return StaticServiceGroup.serviceGroup.getter();
    }

    else
    {
      sub_1D17ECFC8(v3, type metadata accessor for AccessoryDetails.Payload);
      v11 = v0[56];
      v12 = v0[53];
      v13 = v0[54];
      v14 = v0[51];

      v15 = v0[1];

      return v15();
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1D17ECF60(v3, v0[53], type metadata accessor for StaticService);
    v0[61] = sub_1D1E67E1C();
    v0[62] = sub_1D1E67E0C();
    v10 = sub_1D1E67D4C();

    return MEMORY[0x1EEE6DFA0](sub_1D17FCF44, v10, v9);
  }

  else
  {
    sub_1D17ECF60(v3, v0[54], type metadata accessor for StaticAccessory);
    v4 = swift_task_alloc();
    v0[57] = v4;
    *v4 = v0;
    v4[1] = sub_1D17FCA94;
    v5 = v0[54];

    return StaticAccessory.accessory.getter();
  }
}

uint64_t sub_1D17FCA94(uint64_t a1)
{
  v2 = *(*v1 + 456);
  v4 = *v1;
  *(*v1 + 464) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D17FCB94, 0, 0);
}

uint64_t sub_1D17FCB94()
{
  v1 = *(v0 + 464);
  if (v1)
  {
    v2 = [*(v0 + 464) home];
    *(v0 + 472) = v2;
    if (v2)
    {
      v3 = v2;
      *(v0 + 144) = v0;
      *(v0 + 152) = sub_1D17FCD7C;
      v4 = swift_continuation_init();
      *(v0 + 392) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
      *(v0 + 336) = MEMORY[0x1E69E9820];
      *(v0 + 344) = 1107296256;
      *(v0 + 352) = sub_1D17B04C8;
      *(v0 + 360) = &block_descriptor_24;
      *(v0 + 368) = v4;
      [v3 removeAccessory:v1 completionHandler:v0 + 336];

      return MEMORY[0x1EEE6DEC8](v0 + 144);
    }

    sub_1D17ECFC8(*(v0 + 432), type metadata accessor for StaticAccessory);
  }

  else
  {
    sub_1D17ECFC8(*(v0 + 432), type metadata accessor for StaticAccessory);
  }

  v5 = *(v0 + 448);
  v6 = *(v0 + 424);
  v7 = *(v0 + 432);
  v8 = *(v0 + 408);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1D17FCD7C()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  *(*v0 + 480) = v2;
  if (v2)
  {
    v3 = sub_1D17FDB7C;
  }

  else
  {
    v3 = sub_1D17FCE8C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D17FCE8C()
{
  v1 = *(v0 + 472);
  v2 = *(v0 + 432);

  sub_1D17ECFC8(v2, type metadata accessor for StaticAccessory);
  v3 = *(v0 + 448);
  v4 = *(v0 + 424);
  v5 = *(v0 + 432);
  v6 = *(v0 + 408);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1D17FCF44()
{
  v1 = *(v0 + 496);

  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D17FCFDC, 0, 0);
}

uint64_t sub_1D17FCFDC()
{
  v1 = *(v0 + 488);
  *(v0 + 504) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D17FD068, v3, v2);
}

uint64_t sub_1D17FD068()
{
  v1 = *(v0 + 504);

  *(v0 + 512) = qword_1EE07DC60;

  return MEMORY[0x1EEE6DFA0](sub_1D17FD0DC, 0, 0);
}

uint64_t sub_1D17FD0DC()
{
  v1 = v0[61];
  v2 = v0[53] + *(v0[52] + 44);
  v0[65] = sub_1D1E66A2C();
  v0[66] = sub_1D1E67E0C();
  v4 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D17FD17C, v4, v3);
}

uint64_t sub_1D17FD17C()
{
  v1 = v0[66];
  v2 = v0[65];
  v3 = v0[64];

  v0[67] = [v3 accessoryFor_];

  return MEMORY[0x1EEE6DFA0](sub_1D17FD210, 0, 0);
}

uint64_t sub_1D17FD210()
{
  v1 = v0[67];
  if (v1)
  {
    v2 = [v1 home];
    v0[68] = v2;
    if (v2)
    {
      v3 = v2;
      v4 = v0[67];
      v0[10] = v0;
      v0[11] = sub_1D17FD3FC;
      v5 = swift_continuation_init();
      v0[41] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
      v0[34] = MEMORY[0x1E69E9820];
      v0[35] = 1107296256;
      v0[36] = sub_1D17B04C8;
      v0[37] = &block_descriptor_20;
      v0[38] = v5;
      [v3 removeAccessory:v4 completionHandler:v0 + 34];

      return MEMORY[0x1EEE6DEC8](v0 + 10);
    }

    v6 = v0[67];
    sub_1D17ECFC8(v0[53], type metadata accessor for StaticService);
  }

  else
  {
    sub_1D17ECFC8(v0[53], type metadata accessor for StaticService);
  }

  v7 = v0[56];
  v8 = v0[53];
  v9 = v0[54];
  v10 = v0[51];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1D17FD3FC()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 552) = v2;
  if (v2)
  {
    v3 = sub_1D17FDC48;
  }

  else
  {
    v3 = sub_1D17FD50C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D17FD50C()
{
  v1 = *(v0 + 544);
  v2 = *(v0 + 424);

  sub_1D17ECFC8(v2, type metadata accessor for StaticService);
  v3 = *(v0 + 448);
  v4 = *(v0 + 424);
  v5 = *(v0 + 432);
  v6 = *(v0 + 408);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1D17FD5C8(uint64_t a1)
{
  v2 = *(*v1 + 560);
  v4 = *v1;
  *(*v1 + 568) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D17FD6C8, 0, 0);
}

uint64_t sub_1D17FD6C8()
{
  v1 = *(v0 + 568);
  if (!v1)
  {
    v10 = *(v0 + 408);
LABEL_16:
    sub_1D17ECFC8(v10, type metadata accessor for StaticServiceGroup);
    goto LABEL_17;
  }

  v2 = [*(v0 + 568) services];
  sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
  v3 = sub_1D1E67C1C();

  if (v3 >> 62)
  {
    v4 = sub_1D1E6873C();
    if (v4)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
LABEL_15:
    v11 = *(v0 + 408);

    v10 = v11;
    goto LABEL_16;
  }

LABEL_4:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1D3891EF0](0, v3);
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return MEMORY[0x1EEE6DEC8](v4);
    }

    v5 = *(v3 + 32);
  }

  v6 = v5;

  v7 = [v6 accessory];

  if (v7)
  {
    v8 = [v7 home];
    *(v0 + 576) = v8;

    if (v8)
    {
      *(v0 + 16) = v0;
      *(v0 + 24) = sub_1D17FD9B0;
      v9 = swift_continuation_init();
      *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
      *(v0 + 208) = MEMORY[0x1E69E9820];
      *(v0 + 216) = 1107296256;
      *(v0 + 224) = sub_1D17B04C8;
      *(v0 + 232) = &block_descriptor_16;
      *(v0 + 240) = v9;
      [v8 removeServiceGroup:v1 completionHandler:v0 + 208];
      v4 = v0 + 16;

      return MEMORY[0x1EEE6DEC8](v4);
    }
  }

  sub_1D17ECFC8(*(v0 + 408), type metadata accessor for StaticServiceGroup);

LABEL_17:
  v12 = *(v0 + 448);
  v13 = *(v0 + 424);
  v14 = *(v0 + 432);
  v15 = *(v0 + 408);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1D17FD9B0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 584) = v2;
  if (v2)
  {
    v3 = sub_1D17FDD18;
  }

  else
  {
    v3 = sub_1D17FDAC0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D17FDAC0()
{
  v1 = *(v0 + 576);
  v2 = *(v0 + 408);

  sub_1D17ECFC8(v2, type metadata accessor for StaticServiceGroup);
  v3 = *(v0 + 448);
  v4 = *(v0 + 424);
  v5 = *(v0 + 432);
  v6 = *(v0 + 408);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1D17FDB7C()
{
  v1 = *(v0 + 480);
  v2 = *(v0 + 464);
  v3 = *(v0 + 432);
  swift_willThrow();

  sub_1D17ECFC8(v3, type metadata accessor for StaticAccessory);
  v4 = *(v0 + 480);
  v5 = *(v0 + 448);
  v7 = *(v0 + 424);
  v6 = *(v0 + 432);
  v8 = *(v0 + 408);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1D17FDC48()
{
  v1 = *(v0 + 552);
  v2 = *(v0 + 536);
  v3 = *(v0 + 424);
  swift_willThrow();

  sub_1D17ECFC8(v3, type metadata accessor for StaticService);
  v4 = *(v0 + 552);
  v5 = *(v0 + 448);
  v7 = *(v0 + 424);
  v6 = *(v0 + 432);
  v8 = *(v0 + 408);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1D17FDD18()
{
  v1 = *(v0 + 584);
  v2 = *(v0 + 568);
  v3 = *(v0 + 408);
  swift_willThrow();

  sub_1D17ECFC8(v3, type metadata accessor for StaticServiceGroup);
  v4 = *(v0 + 584);
  v5 = *(v0 + 448);
  v7 = *(v0 + 424);
  v6 = *(v0 + 432);
  v8 = *(v0 + 408);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t AccessoryDetails.removeAccessoryFromAllEcosystems()()
{
  v1[34] = v0;
  v2 = type metadata accessor for StaticService(0);
  v1[35] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[36] = swift_task_alloc();
  v4 = *(*(type metadata accessor for StaticAccessory(0) - 8) + 64) + 15;
  v1[37] = swift_task_alloc();
  v5 = type metadata accessor for AccessoryDetails.Payload(0);
  v1[38] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v1[39] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D17FDED8, 0, 0);
}

uint64_t sub_1D17FDED8()
{
  v1 = v0[38];
  sub_1D17ECA38(v0[34], v0[39], type metadata accessor for AccessoryDetails.Payload);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = v0[39];
  if ((EnumCaseMultiPayload - 2) >= 2)
  {
    if (EnumCaseMultiPayload)
    {
      sub_1D17ECF60(v3, v0[36], type metadata accessor for StaticService);
      v0[44] = sub_1D1E67E1C();
      v0[45] = sub_1D1E67E0C();
      v12 = sub_1D1E67D4C();

      return MEMORY[0x1EEE6DFA0](sub_1D17FE554, v12, v11);
    }

    else
    {
      sub_1D17ECF60(v3, v0[37], type metadata accessor for StaticAccessory);
      v9 = swift_task_alloc();
      v0[40] = v9;
      *v9 = v0;
      v9[1] = sub_1D17FE0C4;
      v10 = v0[37];

      return StaticAccessory.accessory.getter();
    }
  }

  else
  {
    sub_1D17ECFC8(v3, type metadata accessor for AccessoryDetails.Payload);
    v4 = v0[39];
    v5 = v0[36];
    v6 = v0[37];

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_1D17FE0C4(uint64_t a1)
{
  v2 = *(*v1 + 320);
  v4 = *v1;
  *(*v1 + 328) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D17FE1C4, 0, 0);
}

uint64_t sub_1D17FE1C4()
{
  v1 = *(v0 + 328);
  if (v1)
  {
    v2 = [*(v0 + 328) home];
    *(v0 + 336) = v2;
    if (v2)
    {
      v3 = v2;
      *(v0 + 80) = v0;
      *(v0 + 88) = sub_1D17FE3A0;
      v4 = swift_continuation_init();
      *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
      *(v0 + 208) = MEMORY[0x1E69E9820];
      *(v0 + 216) = 1107296256;
      *(v0 + 224) = sub_1D17B04C8;
      *(v0 + 232) = &block_descriptor_32;
      *(v0 + 240) = v4;
      [v3 resetAndRemoveAllCHIPPairingsFromAccessory:v1 completion:v0 + 208];

      return MEMORY[0x1EEE6DEC8](v0 + 80);
    }

    sub_1D17ECFC8(*(v0 + 296), type metadata accessor for StaticAccessory);
  }

  else
  {
    sub_1D17ECFC8(*(v0 + 296), type metadata accessor for StaticAccessory);
  }

  v5 = *(v0 + 312);
  v6 = *(v0 + 288);
  v7 = *(v0 + 296);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1D17FE3A0()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 344) = v2;
  if (v2)
  {
    v3 = sub_1D17FEBB0;
  }

  else
  {
    v3 = sub_1D17FE4B0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D17FE4B0()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 296);

  sub_1D17ECFC8(v2, type metadata accessor for StaticAccessory);
  v3 = *(v0 + 312);
  v4 = *(v0 + 288);
  v5 = *(v0 + 296);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1D17FE554()
{
  v1 = *(v0 + 360);

  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D17FE5EC, 0, 0);
}

uint64_t sub_1D17FE5EC()
{
  v1 = *(v0 + 352);
  *(v0 + 368) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D17FE678, v3, v2);
}

uint64_t sub_1D17FE678()
{
  v1 = *(v0 + 368);

  *(v0 + 376) = qword_1EE07DC60;

  return MEMORY[0x1EEE6DFA0](sub_1D17FE6EC, 0, 0);
}

uint64_t sub_1D17FE6EC()
{
  v1 = v0[44];
  v2 = v0[36] + *(v0[35] + 44);
  v0[48] = sub_1D1E66A2C();
  v0[49] = sub_1D1E67E0C();
  v4 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D17FE78C, v4, v3);
}

uint64_t sub_1D17FE78C()
{
  v2 = v0[48];
  v1 = v0[49];
  v3 = v0[47];

  v0[50] = [v3 accessoryFor_];

  return MEMORY[0x1EEE6DFA0](sub_1D17FE81C, 0, 0);
}

uint64_t sub_1D17FE81C()
{
  v1 = v0[50];
  if (v1)
  {
    v2 = [v1 home];
    v0[51] = v2;
    if (v2)
    {
      v3 = v2;
      v4 = v0[50];
      v0[2] = v0;
      v0[3] = sub_1D17FE9FC;
      v5 = swift_continuation_init();
      v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
      v0[18] = MEMORY[0x1E69E9820];
      v0[19] = 1107296256;
      v0[20] = sub_1D17B04C8;
      v0[21] = &block_descriptor_27;
      v0[22] = v5;
      [v3 resetAndRemoveAllCHIPPairingsFromAccessory:v4 completion:v0 + 18];

      return MEMORY[0x1EEE6DEC8](v0 + 2);
    }

    v6 = v0[50];
    sub_1D17ECFC8(v0[36], type metadata accessor for StaticService);
  }

  else
  {
    sub_1D17ECFC8(v0[36], type metadata accessor for StaticService);
  }

  v7 = v0[39];
  v8 = v0[36];
  v9 = v0[37];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1D17FE9FC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 416) = v2;
  if (v2)
  {
    v3 = sub_1D17FEC70;
  }

  else
  {
    v3 = sub_1D17FEB0C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D17FEB0C()
{
  v1 = *(v0 + 408);
  v2 = *(v0 + 288);

  sub_1D17ECFC8(v2, type metadata accessor for StaticService);
  v3 = *(v0 + 312);
  v4 = *(v0 + 288);
  v5 = *(v0 + 296);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1D17FEBB0()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 328);
  v3 = *(v0 + 296);
  swift_willThrow();

  sub_1D17ECFC8(v3, type metadata accessor for StaticAccessory);
  v4 = *(v0 + 344);
  v5 = *(v0 + 312);
  v7 = *(v0 + 288);
  v6 = *(v0 + 296);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1D17FEC70()
{
  v1 = *(v0 + 416);
  v2 = *(v0 + 400);
  v3 = *(v0 + 288);
  swift_willThrow();

  sub_1D17ECFC8(v3, type metadata accessor for StaticService);
  v4 = *(v0 + 416);
  v5 = *(v0 + 312);
  v7 = *(v0 + 288);
  v6 = *(v0 + 296);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t AccessoryDetails.identify()()
{
  v1[34] = v0;
  v2 = type metadata accessor for StaticService(0);
  v1[35] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[36] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40) - 8) + 64) + 15;
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644780, &qword_1D1E91AA0) - 8) + 64) + 15;
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v6 = type metadata accessor for StaticEndpoint();
  v1[43] = v6;
  v7 = *(v6 - 8);
  v1[44] = v7;
  v8 = *(v7 + 64) + 15;
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v9 = *(*(type metadata accessor for StaticAccessory(0) - 8) + 64) + 15;
  v1[48] = swift_task_alloc();
  v10 = type metadata accessor for AccessoryDetails.Payload(0);
  v1[49] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v1[50] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D17FEF34, 0, 0);
}

uint64_t sub_1D17FEF34()
{
  v1 = v0[49];
  sub_1D17ECA38(v0[34], v0[50], type metadata accessor for AccessoryDetails.Payload);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = v0[50];
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1D17ECFC8(v3, type metadata accessor for AccessoryDetails.Payload);
      v8 = v0[50];
      v9 = v0[47];
      v10 = v0[48];
      v12 = v0[45];
      v11 = v0[46];
      v14 = v0[41];
      v13 = v0[42];
      v16 = v0[39];
      v15 = v0[40];
      v17 = v0[38];
      v23 = v0[37];
      v24 = v0[36];

      v18 = v0[1];

      return v18();
    }

    else
    {
      sub_1D17ECF60(v3, v0[45], type metadata accessor for StaticEndpoint);
      v21 = swift_task_alloc();
      v0[68] = v21;
      *v21 = v0;
      v21[1] = sub_1D1800A50;
      v22 = v0[45];

      return StaticEndpoint.identify()();
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      sub_1D17ECF60(v3, v0[36], type metadata accessor for StaticService);
      v0[57] = sub_1D1E67E1C();
      v0[58] = sub_1D1E67E0C();
      v4 = sub_1D1E67D4C();
      v6 = v20;
      v7 = sub_1D17FFD54;
    }

    else
    {
      sub_1D17ECF60(v3, v0[48], type metadata accessor for StaticAccessory);
      sub_1D1E67E1C();
      v0[51] = sub_1D1E67E0C();
      v4 = sub_1D1E67D4C();
      v6 = v5;
      v7 = sub_1D17FF220;
    }

    return MEMORY[0x1EEE6DFA0](v7, v4, v6);
  }
}

uint64_t sub_1D17FF220()
{
  v1 = v0[51];
  v2 = v0[38];
  v3 = v0[34];

  AccessoryDetails.Payload.staticMatterDevice.getter(v2);

  return MEMORY[0x1EEE6DFA0](sub_1D17FF298, 0, 0);
}

uint64_t sub_1D17FF298()
{
  v1 = v0[38];
  v2 = type metadata accessor for StaticMatterDevice();
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  v4 = v0[43];
  v5 = v0[44];
  if (v3 == 1)
  {
    v6 = v0[42];
    sub_1D1741A30(v1, &qword_1EC643650, &qword_1D1E71D40);
    (*(v5 + 56))(v6, 1, 1, v4);
LABEL_8:
    sub_1D1741A30(v0[42], &qword_1EC644780, &qword_1D1E91AA0);
    v19 = swift_task_alloc();
    v0[54] = v19;
    *v19 = v0;
    v19[1] = sub_1D17FF824;
    v20 = v0[48];

    return StaticAccessory.accessory.getter();
  }

  v7 = v0[41];
  v8 = *(v1 + *(v2 + 56));
  *(swift_task_alloc() + 16) = v1;

  sub_1D1746B78(sub_1D18085E0, v8, v7);

  v9 = *(v5 + 48);
  if (v9(v7, 1, v4) == 1)
  {
    v11 = v0[42];
    v10 = v0[43];
    v12 = v0[41];

    sub_1D1771D7C(v13, v11);

    if (v9(v12, 1, v10) != 1)
    {
      sub_1D1741A30(v0[41], &qword_1EC644780, &qword_1D1E91AA0);
    }
  }

  else
  {
    v14 = v0[43];
    v15 = v0[44];
    v16 = v0[42];
    sub_1D17ECF60(v0[41], v16, type metadata accessor for StaticEndpoint);
    (*(v15 + 56))(v16, 0, 1, v14);
  }

  v17 = v0[42];
  v18 = v0[43];
  sub_1D17ECFC8(v0[38], type metadata accessor for StaticMatterDevice);
  if (v9(v17, 1, v18) == 1)
  {
    goto LABEL_8;
  }

  sub_1D17ECF60(v0[42], v0[47], type metadata accessor for StaticEndpoint);
  v22 = swift_task_alloc();
  v0[52] = v22;
  *v22 = v0;
  v22[1] = sub_1D17FF5E4;
  v23 = v0[47];

  return StaticEndpoint.identify()();
}

uint64_t sub_1D17FF5E4()
{
  v2 = *(*v1 + 416);
  v5 = *v1;
  *(*v1 + 424) = v0;

  if (v0)
  {
    v3 = sub_1D1800C74;
  }

  else
  {
    v3 = sub_1D17FF6F8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D17FF6F8()
{
  v1 = v0[48];
  sub_1D17ECFC8(v0[47], type metadata accessor for StaticEndpoint);
  sub_1D17ECFC8(v1, type metadata accessor for StaticAccessory);
  v2 = v0[50];
  v3 = v0[47];
  v4 = v0[48];
  v6 = v0[45];
  v5 = v0[46];
  v8 = v0[41];
  v7 = v0[42];
  v10 = v0[39];
  v9 = v0[40];
  v11 = v0[38];
  v14 = v0[37];
  v15 = v0[36];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1D17FF824(uint64_t a1)
{
  v2 = *(*v1 + 432);
  v4 = *v1;
  *(*v1 + 440) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D17FF924, 0, 0);
}

uint64_t sub_1D17FF924()
{
  v1 = v0[55];
  if (v1)
  {
    v0[10] = v0;
    v0[11] = sub_1D17FFB28;
    v2 = swift_continuation_init();
    v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
    v0[26] = MEMORY[0x1E69E9820];
    v0[27] = 1107296256;
    v0[28] = sub_1D17B04C8;
    v0[29] = &block_descriptor_42;
    v0[30] = v2;
    [v1 identifyWithCompletionHandler_];

    return MEMORY[0x1EEE6DEC8](v0 + 10);
  }

  else
  {
    sub_1D17ECFC8(v0[48], type metadata accessor for StaticAccessory);
    v3 = v0[50];
    v4 = v0[47];
    v5 = v0[48];
    v7 = v0[45];
    v6 = v0[46];
    v9 = v0[41];
    v8 = v0[42];
    v11 = v0[39];
    v10 = v0[40];
    v12 = v0[38];
    v15 = v0[37];
    v16 = v0[36];

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_1D17FFB28()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 448) = v2;
  if (v2)
  {
    v3 = sub_1D1800F6C;
  }

  else
  {
    v3 = sub_1D17FFC38;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D17FFC38()
{
  v1 = *(v0 + 384);

  sub_1D17ECFC8(v1, type metadata accessor for StaticAccessory);
  v2 = *(v0 + 400);
  v3 = *(v0 + 376);
  v4 = *(v0 + 384);
  v6 = *(v0 + 360);
  v5 = *(v0 + 368);
  v8 = *(v0 + 328);
  v7 = *(v0 + 336);
  v10 = *(v0 + 312);
  v9 = *(v0 + 320);
  v11 = *(v0 + 304);
  v14 = *(v0 + 296);
  v15 = *(v0 + 288);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1D17FFD54()
{
  v1 = v0[58];
  v2 = v0[37];
  v3 = v0[34];

  AccessoryDetails.Payload.staticMatterDevice.getter(v2);

  return MEMORY[0x1EEE6DFA0](sub_1D17FFDCC, 0, 0);
}

uint64_t sub_1D17FFDCC()
{
  v1 = v0[37];
  v2 = type metadata accessor for StaticMatterDevice();
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  v4 = v0[43];
  v5 = v0[44];
  if (v3 == 1)
  {
    v6 = v0[40];
    sub_1D1741A30(v1, &qword_1EC643650, &qword_1D1E71D40);
    (*(v5 + 56))(v6, 1, 1, v4);
LABEL_8:
    v19 = v0[57];
    sub_1D1741A30(v0[40], &qword_1EC644780, &qword_1D1E91AA0);
    v0[61] = sub_1D1E67E0C();
    v21 = sub_1D1E67D4C();

    return MEMORY[0x1EEE6DFA0](sub_1D1800358, v21, v20);
  }

  v7 = v0[39];
  v8 = *(v1 + *(v2 + 56));
  *(swift_task_alloc() + 16) = v1;

  sub_1D1746B78(sub_1D18085E0, v8, v7);

  v9 = *(v5 + 48);
  if (v9(v7, 1, v4) == 1)
  {
    v10 = v0[43];
    v12 = v0[39];
    v11 = v0[40];

    sub_1D1771D7C(v13, v11);

    if (v9(v12, 1, v10) != 1)
    {
      sub_1D1741A30(v0[39], &qword_1EC644780, &qword_1D1E91AA0);
    }
  }

  else
  {
    v14 = v0[43];
    v15 = v0[44];
    v16 = v0[40];
    sub_1D17ECF60(v0[39], v16, type metadata accessor for StaticEndpoint);
    (*(v15 + 56))(v16, 0, 1, v14);
  }

  v17 = v0[43];
  v18 = v0[40];
  sub_1D17ECFC8(v0[37], type metadata accessor for StaticMatterDevice);
  if (v9(v18, 1, v17) == 1)
  {
    goto LABEL_8;
  }

  sub_1D17ECF60(v0[40], v0[46], type metadata accessor for StaticEndpoint);
  v22 = swift_task_alloc();
  v0[59] = v22;
  *v22 = v0;
  v22[1] = sub_1D1800114;
  v23 = v0[46];

  return StaticEndpoint.identify()();
}

uint64_t sub_1D1800114()
{
  v2 = *(*v1 + 472);
  v5 = *v1;
  *(*v1 + 480) = v0;

  if (v0)
  {
    v3 = sub_1D1801258;
  }

  else
  {
    v3 = sub_1D1800228;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D1800228()
{
  v1 = v0[36];
  sub_1D17ECFC8(v0[46], type metadata accessor for StaticEndpoint);
  sub_1D17ECFC8(v1, type metadata accessor for StaticService);
  v2 = v0[50];
  v3 = v0[47];
  v4 = v0[48];
  v6 = v0[45];
  v5 = v0[46];
  v8 = v0[41];
  v7 = v0[42];
  v10 = v0[39];
  v9 = v0[40];
  v11 = v0[38];
  v14 = v0[37];
  v15 = v0[36];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1D1800358()
{
  v1 = *(v0 + 488);

  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D18003F0, 0, 0);
}

uint64_t sub_1D18003F0()
{
  v1 = *(v0 + 456);
  *(v0 + 496) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D180047C, v3, v2);
}

uint64_t sub_1D180047C()
{
  v1 = *(v0 + 496);

  *(v0 + 504) = qword_1EE07DC60;

  return MEMORY[0x1EEE6DFA0](sub_1D18004F0, 0, 0);
}

uint64_t sub_1D18004F0()
{
  v1 = v0[57];
  v2 = v0[36] + *(v0[35] + 44);
  v0[64] = sub_1D1E66A2C();
  v0[65] = sub_1D1E67E0C();
  v4 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1800590, v4, v3);
}

uint64_t sub_1D1800590()
{
  v1 = v0[65];
  v2 = v0[63];
  v3 = v0[64];

  v0[66] = [v2 accessoryFor_];

  return MEMORY[0x1EEE6DFA0](sub_1D1800620, 0, 0);
}

uint64_t sub_1D1800620()
{
  v1 = v0[66];
  if (v1)
  {
    v0[2] = v0;
    v0[3] = sub_1D1800824;
    v2 = swift_continuation_init();
    v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
    v0[18] = MEMORY[0x1E69E9820];
    v0[19] = 1107296256;
    v0[20] = sub_1D17B04C8;
    v0[21] = &block_descriptor_36;
    v0[22] = v2;
    [v1 identifyWithCompletionHandler_];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    sub_1D17ECFC8(v0[36], type metadata accessor for StaticService);
    v3 = v0[50];
    v4 = v0[47];
    v5 = v0[48];
    v7 = v0[45];
    v6 = v0[46];
    v9 = v0[41];
    v8 = v0[42];
    v11 = v0[39];
    v10 = v0[40];
    v12 = v0[38];
    v15 = v0[37];
    v16 = v0[36];

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_1D1800824()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 536) = v2;
  if (v2)
  {
    v3 = sub_1D1801554;
  }

  else
  {
    v3 = sub_1D1800934;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D1800934()
{
  v1 = *(v0 + 288);

  sub_1D17ECFC8(v1, type metadata accessor for StaticService);
  v2 = *(v0 + 400);
  v3 = *(v0 + 376);
  v4 = *(v0 + 384);
  v6 = *(v0 + 360);
  v5 = *(v0 + 368);
  v8 = *(v0 + 328);
  v7 = *(v0 + 336);
  v10 = *(v0 + 312);
  v9 = *(v0 + 320);
  v11 = *(v0 + 304);
  v14 = *(v0 + 296);
  v15 = *(v0 + 288);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1D1800A50()
{
  v2 = *(*v1 + 544);
  v5 = *v1;
  *(*v1 + 552) = v0;

  if (v0)
  {
    v3 = sub_1D1801844;
  }

  else
  {
    v3 = sub_1D1800B64;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D1800B64()
{
  sub_1D17ECFC8(v0[45], type metadata accessor for StaticEndpoint);
  v1 = v0[50];
  v2 = v0[47];
  v3 = v0[48];
  v5 = v0[45];
  v4 = v0[46];
  v7 = v0[41];
  v6 = v0[42];
  v9 = v0[39];
  v8 = v0[40];
  v10 = v0[38];
  v13 = v0[37];
  v14 = v0[36];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1D1800C74()
{
  v27 = v0;
  v1 = v0[48];
  sub_1D17ECFC8(v0[47], type metadata accessor for StaticEndpoint);
  sub_1D17ECFC8(v1, type metadata accessor for StaticAccessory);
  v2 = v0[53];
  if (qword_1EC642470 != -1)
  {
    swift_once();
  }

  v3 = sub_1D1E6709C();
  __swift_project_value_buffer(v3, qword_1EC64F440);
  v4 = v2;
  v5 = sub_1D1E6707C();
  v6 = sub_1D1E6833C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v26 = v9;
    *v7 = 136315650;
    *(v7 + 4) = sub_1D1B1312C(0xD000000000000024, 0x80000001D1EB9EE0, &v26);
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_1D1B1312C(0x796669746E656469, 0xEA00000000002928, &v26);
    *(v7 + 22) = 2112;
    v10 = v2;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 24) = v11;
    *v8 = v11;
    _os_log_impl(&dword_1D16EC000, v5, v6, "%s - %s: Failed to identify accessory with error: %@", v7, 0x20u);
    sub_1D1741A30(v8, &unk_1EC644000, &unk_1D1E75B00);
    MEMORY[0x1D3893640](v8, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v9, -1, -1);
    MEMORY[0x1D3893640](v7, -1, -1);
  }

  else
  {
  }

  v12 = v0[50];
  v13 = v0[47];
  v14 = v0[48];
  v16 = v0[45];
  v15 = v0[46];
  v18 = v0[41];
  v17 = v0[42];
  v20 = v0[39];
  v19 = v0[40];
  v21 = v0[38];
  v24 = v0[37];
  v25 = v0[36];

  v22 = v0[1];

  return v22();
}

uint64_t sub_1D1800F6C()
{
  v29 = v0;
  v1 = v0[55];
  v2 = v0[56];
  v3 = v0[48];
  swift_willThrow();

  sub_1D17ECFC8(v3, type metadata accessor for StaticAccessory);
  v4 = v0[56];
  if (qword_1EC642470 != -1)
  {
    swift_once();
  }

  v5 = sub_1D1E6709C();
  __swift_project_value_buffer(v5, qword_1EC64F440);
  v6 = v4;
  v7 = sub_1D1E6707C();
  v8 = sub_1D1E6833C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v28[0] = v11;
    *v9 = 136315650;
    *(v9 + 4) = sub_1D1B1312C(0xD000000000000024, 0x80000001D1EB9EE0, v28);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_1D1B1312C(0x796669746E656469, 0xEA00000000002928, v28);
    *(v9 + 22) = 2112;
    v12 = v4;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 24) = v13;
    *v10 = v13;
    _os_log_impl(&dword_1D16EC000, v7, v8, "%s - %s: Failed to identify accessory with error: %@", v9, 0x20u);
    sub_1D1741A30(v10, &unk_1EC644000, &unk_1D1E75B00);
    MEMORY[0x1D3893640](v10, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v11, -1, -1);
    MEMORY[0x1D3893640](v9, -1, -1);
  }

  else
  {
  }

  v14 = v0[50];
  v15 = v0[47];
  v16 = v0[48];
  v18 = v0[45];
  v17 = v0[46];
  v20 = v0[41];
  v19 = v0[42];
  v22 = v0[39];
  v21 = v0[40];
  v23 = v0[38];
  v26 = v0[37];
  v27 = v0[36];

  v24 = v0[1];

  return v24();
}

uint64_t sub_1D1801258()
{
  v27 = v0;
  v1 = v0[36];
  sub_1D17ECFC8(v0[46], type metadata accessor for StaticEndpoint);
  sub_1D17ECFC8(v1, type metadata accessor for StaticService);
  v2 = v0[60];
  if (qword_1EC642470 != -1)
  {
    swift_once();
  }

  v3 = sub_1D1E6709C();
  __swift_project_value_buffer(v3, qword_1EC64F440);
  v4 = v2;
  v5 = sub_1D1E6707C();
  v6 = sub_1D1E6833C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v26 = v9;
    *v7 = 136315650;
    *(v7 + 4) = sub_1D1B1312C(0xD000000000000024, 0x80000001D1EB9EE0, &v26);
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_1D1B1312C(0x796669746E656469, 0xEA00000000002928, &v26);
    *(v7 + 22) = 2112;
    v10 = v2;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 24) = v11;
    *v8 = v11;
    _os_log_impl(&dword_1D16EC000, v5, v6, "%s - %s: Failed to identify accessory with error: %@", v7, 0x20u);
    sub_1D1741A30(v8, &unk_1EC644000, &unk_1D1E75B00);
    MEMORY[0x1D3893640](v8, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v9, -1, -1);
    MEMORY[0x1D3893640](v7, -1, -1);
  }

  else
  {
  }

  v12 = v0[50];
  v13 = v0[47];
  v14 = v0[48];
  v16 = v0[45];
  v15 = v0[46];
  v18 = v0[41];
  v17 = v0[42];
  v20 = v0[39];
  v19 = v0[40];
  v21 = v0[38];
  v24 = v0[37];
  v25 = v0[36];

  v22 = v0[1];

  return v22();
}

uint64_t sub_1D1801554()
{
  v29 = v0;
  v1 = v0[67];
  v2 = v0[66];
  v3 = v0[36];
  swift_willThrow();

  sub_1D17ECFC8(v3, type metadata accessor for StaticService);
  v4 = v0[67];
  if (qword_1EC642470 != -1)
  {
    swift_once();
  }

  v5 = sub_1D1E6709C();
  __swift_project_value_buffer(v5, qword_1EC64F440);
  v6 = v4;
  v7 = sub_1D1E6707C();
  v8 = sub_1D1E6833C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v28[0] = v11;
    *v9 = 136315650;
    *(v9 + 4) = sub_1D1B1312C(0xD000000000000024, 0x80000001D1EB9EE0, v28);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_1D1B1312C(0x796669746E656469, 0xEA00000000002928, v28);
    *(v9 + 22) = 2112;
    v12 = v4;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 24) = v13;
    *v10 = v13;
    _os_log_impl(&dword_1D16EC000, v7, v8, "%s - %s: Failed to identify accessory with error: %@", v9, 0x20u);
    sub_1D1741A30(v10, &unk_1EC644000, &unk_1D1E75B00);
    MEMORY[0x1D3893640](v10, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v11, -1, -1);
    MEMORY[0x1D3893640](v9, -1, -1);
  }

  else
  {
  }

  v14 = v0[50];
  v15 = v0[47];
  v16 = v0[48];
  v18 = v0[45];
  v17 = v0[46];
  v20 = v0[41];
  v19 = v0[42];
  v22 = v0[39];
  v21 = v0[40];
  v23 = v0[38];
  v26 = v0[37];
  v27 = v0[36];

  v24 = v0[1];

  return v24();
}

uint64_t sub_1D1801844()
{
  v26 = v0;
  sub_1D17ECFC8(v0[45], type metadata accessor for StaticEndpoint);
  v1 = v0[69];
  if (qword_1EC642470 != -1)
  {
    swift_once();
  }

  v2 = sub_1D1E6709C();
  __swift_project_value_buffer(v2, qword_1EC64F440);
  v3 = v1;
  v4 = sub_1D1E6707C();
  v5 = sub_1D1E6833C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v25 = v8;
    *v6 = 136315650;
    *(v6 + 4) = sub_1D1B1312C(0xD000000000000024, 0x80000001D1EB9EE0, &v25);
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_1D1B1312C(0x796669746E656469, 0xEA00000000002928, &v25);
    *(v6 + 22) = 2112;
    v9 = v1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 24) = v10;
    *v7 = v10;
    _os_log_impl(&dword_1D16EC000, v4, v5, "%s - %s: Failed to identify accessory with error: %@", v6, 0x20u);
    sub_1D1741A30(v7, &unk_1EC644000, &unk_1D1E75B00);
    MEMORY[0x1D3893640](v7, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v8, -1, -1);
    MEMORY[0x1D3893640](v6, -1, -1);
  }

  else
  {
  }

  v11 = v0[50];
  v12 = v0[47];
  v13 = v0[48];
  v15 = v0[45];
  v14 = v0[46];
  v17 = v0[41];
  v16 = v0[42];
  v19 = v0[39];
  v18 = v0[40];
  v20 = v0[38];
  v23 = v0[37];
  v24 = v0[36];

  v21 = v0[1];

  return v21();
}

BOOL AccessoryDetails.hasResidentsCapableOfSupportingHomeActivityState.getter()
{
  v0 = AccessoryDetails.hmHomeFromPayload.getter();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = [v0 residentDevices];

  sub_1D1741B10(0, &qword_1EE07B270, 0x1E696CC28);
  v3 = sub_1D1E67C1C();

  if (v3 >> 62)
  {
LABEL_18:
    v4 = sub_1D1E6873C();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  do
  {
    v6 = v4 != v5;
    if (v4 == v5)
    {
      break;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1D3891EF0](v5, v3);
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v7 = *(v3 + 8 * v5 + 32);
    }

    v8 = v7;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v9 = [v7 supportsHomeActivityState];

    ++v5;
  }

  while (!v9);

  return v6;
}

id sub_1D1801CA0(uint64_t (*a1)(void), SEL *a2)
{
  v3 = a1();
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = [v3 *a2];

  return v5;
}

uint64_t AccessoryDetails.isAutoClimateCapableThermostat.getter()
{
  v0 = AccessoryDetails.hmAccessoryFromPayload.getter();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  if (AccessoryDetails.hasResidentsCapableOfSupportingHomeActivityState.getter())
  {
    if ([v1 supportsAdaptiveTemperatureAutomations])
    {
      v2 = 1;
    }

    else
    {
      v2 = [v1 supportsCleanEnergyAutomation];
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t AccessoryDetails.thermostatCluster.getter@<X0>(uint64_t a1@<X8>)
{
  v67 = a1;
  v62 = type metadata accessor for StaticEndpoint();
  v2 = *(*(v62 - 8) + 64);
  MEMORY[0x1EEE9AC00](v62);
  v65 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticService(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v64 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StaticAccessory(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v63 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AccessoryDetails.Payload(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644790, &unk_1D1E75B48);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v19 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v61 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v66 = &v61 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v61 - v26;
  v28 = *(type metadata accessor for AccessoryDetails(0) + 20);
  AccessoryDetailsBasicInfo.primaryStaticService.getter(v27);
  if ((*(v5 + 48))(v27, 1, v4) == 1)
  {
    sub_1D1741A30(v27, &qword_1EC6436F0, &qword_1D1E99BC0);
    v29 = 0;
  }

  else
  {
    v29 = v27[*(v4 + 104)];
    sub_1D17ECFC8(v27, type metadata accessor for StaticService);
  }

  LOBYTE(v68[0]) = v29;
  if (ServiceKind.rawValue.getter() == 0xD000000000000024 && 0x80000001D1EB3550 == v30)
  {
    goto LABEL_6;
  }

  v31 = sub_1D1E6904C();

  if (v31)
  {
    goto LABEL_8;
  }

  LOBYTE(v68[0]) = v29;
  if (ServiceKind.rawValue.getter() == 0xD000000000000024 && 0x80000001D1EB3070 == v39)
  {
LABEL_6:

    goto LABEL_8;
  }

  v40 = sub_1D1E6904C();

  if (v40)
  {
LABEL_8:
    sub_1D17ECA38(v1 + v28, v14, type metadata accessor for AccessoryDetails.Payload);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      v33 = v66;
      if (EnumCaseMultiPayload == 2)
      {
        v36 = type metadata accessor for StaticThermostatClusterGroup();
        (*(*(v36 - 8) + 56))(v22, 1, 1, v36);
        v37 = type metadata accessor for AccessoryDetails.Payload;
        v38 = v14;
      }

      else
      {
        v56 = v65;
        sub_1D17ECF60(v14, v65, type metadata accessor for StaticEndpoint);
        v68[3] = &type metadata for HomeKitFeatures;
        v68[4] = sub_1D18076E8();
        LOBYTE(v68[0]) = 3;
        v57 = sub_1D1E66D5C();
        __swift_destroy_boxed_opaque_existential_1(v68);
        if ((v57 & 1) == 0)
        {
          sub_1D17ECFC8(v56, type metadata accessor for StaticEndpoint);
          v60 = type metadata accessor for StaticThermostatClusterGroup();
          (*(*(v60 - 8) + 56))(v22, 1, 1, v60);
LABEL_24:
          sub_1D1741A90(v22, v33, &qword_1EC644790, &unk_1D1E75B48);
          sub_1D1741C08(v33, v19, &qword_1EC644790, &unk_1D1E75B48);
          v48 = type metadata accessor for StaticThermostatClusterGroup();
          v49 = *(v48 - 8);
          if ((*(v49 + 48))(v19, 1, v48) == 1)
          {
            sub_1D1741A30(v19, &qword_1EC644790, &unk_1D1E75B48);
            if (qword_1EC642470 != -1)
            {
              swift_once();
            }

            v50 = sub_1D1E6709C();
            __swift_project_value_buffer(v50, qword_1EC64F440);
            v51 = sub_1D1E6707C();
            v52 = sub_1D1E6833C();
            if (os_log_type_enabled(v51, v52))
            {
              v53 = swift_slowAlloc();
              v54 = swift_slowAlloc();
              v68[0] = v54;
              *v53 = 136315394;
              *(v53 + 4) = sub_1D1B1312C(0xD000000000000024, 0x80000001D1EB9EE0, v68);
              *(v53 + 12) = 2080;
              *(v53 + 14) = sub_1D1B1312C(0xD000000000000011, 0x80000001D1EBA070, v68);
              _os_log_impl(&dword_1D16EC000, v51, v52, "%s - %s: Not showing presets because no thermostat cluster found.", v53, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x1D3893640](v54, -1, -1);
              MEMORY[0x1D3893640](v53, -1, -1);
            }

            sub_1D1741A30(v33, &qword_1EC644790, &unk_1D1E75B48);
            return (*(v49 + 56))(v67, 1, 1, v48);
          }

          else
          {
            sub_1D1741A30(v33, &qword_1EC644790, &unk_1D1E75B48);
            v55 = v67;
            sub_1D17ECF60(v19, v67, type metadata accessor for StaticThermostatClusterGroup);
            return (*(v49 + 56))(v55, 0, 1, v48);
          }
        }

        v58 = *(v62 + 40);
        v59 = type metadata accessor for StaticClusterGroups();
        sub_1D1741C08(v56 + v58 + *(v59 + 20), v22, &qword_1EC644790, &unk_1D1E75B48);
        v37 = type metadata accessor for StaticEndpoint;
        v38 = v56;
      }
    }

    else
    {
      v33 = v66;
      if (EnumCaseMultiPayload)
      {
        v34 = v64;
        sub_1D17ECF60(v14, v64, type metadata accessor for StaticService);
        sub_1D1802AB0(v34, v22);
        v35 = type metadata accessor for StaticService;
      }

      else
      {
        v34 = v63;
        sub_1D17ECF60(v14, v63, type metadata accessor for StaticAccessory);
        AccessoryDetails.thermostatClusterForStaticAccessory(_:)(v22);
        v35 = type metadata accessor for StaticAccessory;
      }

      v37 = v35;
      v38 = v34;
    }

    sub_1D17ECFC8(v38, v37);
    goto LABEL_24;
  }

  if (qword_1EC642470 != -1)
  {
    swift_once();
  }

  v41 = sub_1D1E6709C();
  __swift_project_value_buffer(v41, qword_1EC64F440);
  v42 = sub_1D1E6707C();
  v43 = sub_1D1E6833C();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v68[0] = v45;
    *v44 = 136315394;
    *(v44 + 4) = sub_1D1B1312C(0xD000000000000024, 0x80000001D1EB9EE0, v68);
    *(v44 + 12) = 2080;
    *(v44 + 14) = sub_1D1B1312C(0xD000000000000011, 0x80000001D1EBA070, v68);
    _os_log_impl(&dword_1D16EC000, v42, v43, "%s - %s: Not showing presets because primary service kind is not valid.", v44, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v45, -1, -1);
    MEMORY[0x1D3893640](v44, -1, -1);
  }

  v46 = type metadata accessor for StaticThermostatClusterGroup();
  return (*(*(v46 - 8) + 56))(v67, 1, 1, v46);
}

uint64_t AccessoryDetails.thermostatClusterForStaticAccessory(_:)@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v18 - v4;
  v6 = type metadata accessor for StaticService(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  StaticAccessory.primaryStaticService.getter(v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1D1741A30(v5, &qword_1EC6436F0, &qword_1D1E99BC0);
    if (qword_1EC642470 != -1)
    {
      swift_once();
    }

    v11 = sub_1D1E6709C();
    __swift_project_value_buffer(v11, qword_1EC64F440);
    v12 = sub_1D1E6707C();
    v13 = sub_1D1E6835C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v19 = v15;
      *v14 = 136315650;
      *(v14 + 4) = sub_1D1B1312C(0xD000000000000024, 0x80000001D1EB9EE0, &v19);
      *(v14 + 12) = 2080;
      *(v14 + 14) = sub_1D1B1312C(0xD000000000000027, 0x80000001D1EBA090, &v19);
      *(v14 + 22) = 2080;
      *(v14 + 24) = sub_1D1B1312C(0x6341636974617473, 0xEF79726F73736563, &v19);
      _os_log_impl(&dword_1D16EC000, v12, v13, "%s - %s: Unable to get thermostatCluster for %s because primaryStaticService does NOT exist.", v14, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v15, -1, -1);
      MEMORY[0x1D3893640](v14, -1, -1);
    }

    v16 = type metadata accessor for StaticThermostatClusterGroup();
    return (*(*(v16 - 8) + 56))(a1, 1, 1, v16);
  }

  else
  {
    sub_1D17ECF60(v5, v10, type metadata accessor for StaticService);
    sub_1D1802AB0(v10, a1);
    return sub_1D17ECFC8(v10, type metadata accessor for StaticService);
  }
}

uint64_t sub_1D1802AB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v133 = a2;
  v121 = type metadata accessor for StaticEndpoint();
  v118 = *(v121 - 8);
  v3 = *(v118 + 64);
  v4 = MEMORY[0x1EEE9AC00](v121);
  v119 = &v117 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v120 = &v117 - v6;
  v125 = type metadata accessor for StaticMatterDevice();
  v123 = *(v125 - 8);
  v7 = *(v123 + 64);
  v8 = MEMORY[0x1EEE9AC00](v125);
  v132 = &v117 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v122 = &v117 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v124 = &v117 - v12;
  v130 = type metadata accessor for MatterStateSnapshot();
  v128 = *(v130 - 8);
  v13 = *(v128 + 64);
  v14 = MEMORY[0x1EEE9AC00](v130);
  v127 = &v117 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v117 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v131 = &v117 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644870, &unk_1D1EABA00);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v117 - v22;
  v24 = type metadata accessor for EndpointPath(0);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v117 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v27);
  v126 = &v117 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v34 = &v117 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v36 = &v117 - v35;
  v37 = type metadata accessor for StaticService(0);
  sub_1D1741C08(a1 + *(v37 + 156), v23, &qword_1EC644870, &unk_1D1EABA00);
  v38 = *(v25 + 48);
  v129 = v24;
  if (v38(v23, 1, v24) == 1)
  {
    sub_1D1741A30(v23, &qword_1EC644870, &unk_1D1EABA00);
    if (qword_1EC642470 != -1)
    {
      swift_once();
    }

    v39 = sub_1D1E6709C();
    __swift_project_value_buffer(v39, qword_1EC64F440);
    v40 = sub_1D1E6707C();
    v41 = sub_1D1E6835C();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v134[0] = v43;
      *v42 = 136315138;
      *(v42 + 4) = sub_1D1B1312C(0xD000000000000024, 0x80000001D1EB9EE0, v134);
      _os_log_impl(&dword_1D16EC000, v40, v41, "%s: Returning nil, because matterEndpointPath is nil.", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v43);
      MEMORY[0x1D3893640](v43, -1, -1);
      MEMORY[0x1D3893640](v42, -1, -1);
    }

    goto LABEL_38;
  }

  sub_1D17ECF60(v23, v36, type metadata accessor for EndpointPath);
  v44 = v36;
  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  v45 = qword_1EE07DC60;
  swift_getKeyPath();
  v134[0] = v45;
  sub_1D1807408(&qword_1EE07CFB0, type metadata accessor for DataModel);
  sub_1D1E66CAC();

  v46 = OBJC_IVAR____TtC13HomeDataModel9DataModel__homesToMatterSnapshots;
  swift_beginAccess();
  v47 = *(v45 + v46);
  v48 = v132;
  if (!*(v47 + 16))
  {
    goto LABEL_18;
  }

  v49 = v34;
  v50 = *(v45 + v46);

  v51 = sub_1D1742188(v44);
  if ((v52 & 1) == 0)
  {

LABEL_18:
    if (qword_1EC642470 != -1)
    {
      swift_once();
    }

    v69 = sub_1D1E6709C();
    __swift_project_value_buffer(v69, qword_1EC64F440);
    sub_1D17ECA38(v44, v29, type metadata accessor for EndpointPath);
    v70 = sub_1D1E6707C();
    v71 = sub_1D1E6833C();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = v44;
      v74 = swift_slowAlloc();
      v134[0] = v74;
      *v72 = 136315394;
      *(v72 + 4) = sub_1D1B1312C(0xD000000000000024, 0x80000001D1EB9EE0, v134);
      *(v72 + 12) = 2082;
      sub_1D1E66A7C();
      sub_1D1807408(&qword_1EE07B250, MEMORY[0x1E69695A8]);
      v75 = sub_1D1E68FAC();
      v77 = v76;
      sub_1D17ECFC8(v29, type metadata accessor for EndpointPath);
      v78 = sub_1D1B1312C(v75, v77, v134);

      *(v72 + 14) = v78;
      _os_log_impl(&dword_1D16EC000, v70, v71, "%s: Returning nil, because matterSnapshot is not found for homeID %{public}s.", v72, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v74, -1, -1);
      MEMORY[0x1D3893640](v72, -1, -1);

      v79 = v73;
    }

    else
    {

      sub_1D17ECFC8(v29, type metadata accessor for EndpointPath);
      v79 = v44;
    }

    v80 = type metadata accessor for EndpointPath;
    goto LABEL_37;
  }

  sub_1D17ECA38(*(v47 + 56) + *(v128 + 72) * v51, v18, type metadata accessor for MatterStateSnapshot);

  v53 = v18;
  v54 = v131;
  sub_1D17ECF60(v53, v131, type metadata accessor for MatterStateSnapshot);
  v55 = v129;
  v56 = *(v54 + *(v130 + 24));
  if (!*(v56 + 16) || (v57 = sub_1D17420B0(*(v44 + *(v129 + 20))), (v58 & 1) == 0))
  {
    if (qword_1EC642470 != -1)
    {
      swift_once();
    }

    v81 = sub_1D1E6709C();
    __swift_project_value_buffer(v81, qword_1EC64F440);
    v82 = v126;
    sub_1D17ECA38(v44, v126, type metadata accessor for EndpointPath);
    v60 = v127;
    sub_1D17ECA38(v54, v127, type metadata accessor for MatterStateSnapshot);
    v83 = sub_1D1E6707C();
    v84 = sub_1D1E6833C();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v86 = v44;
      v87 = swift_slowAlloc();
      v134[0] = v87;
      *v85 = 136315650;
      *(v85 + 4) = sub_1D1B1312C(0xD000000000000024, 0x80000001D1EB9EE0, v134);
      *(v85 + 12) = 2050;
      v88 = *(v82 + *(v55 + 20));
      sub_1D17ECFC8(v82, type metadata accessor for EndpointPath);
      *(v85 + 14) = v88;
      *(v85 + 22) = 2082;
      v89 = *(v60 + *(v130 + 24));

      v90 = v60;
      v91 = sub_1D1E6762C();
      v93 = v92;

      sub_1D17ECFC8(v90, type metadata accessor for MatterStateSnapshot);
      v94 = sub_1D1B1312C(v91, v93, v134);

      *(v85 + 24) = v94;
      _os_log_impl(&dword_1D16EC000, v83, v84, "%s: Returning nil, because staticDevice is not found for matterNodeID %{public}llu among staticDevices %{public}s.", v85, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v87, -1, -1);
      MEMORY[0x1D3893640](v85, -1, -1);

      v95 = v86;
      v54 = v131;
      v96 = type metadata accessor for EndpointPath;
LABEL_36:
      sub_1D17ECFC8(v95, v96);
      v80 = type metadata accessor for MatterStateSnapshot;
      v79 = v54;
LABEL_37:
      sub_1D17ECFC8(v79, v80);
LABEL_38:
      v114 = type metadata accessor for StaticThermostatClusterGroup();
      return (*(*(v114 - 8) + 56))(v133, 1, 1, v114);
    }

    sub_1D17ECFC8(v82, type metadata accessor for EndpointPath);

    sub_1D17ECFC8(v44, type metadata accessor for EndpointPath);
    v97 = type metadata accessor for MatterStateSnapshot;
LABEL_35:
    v96 = v97;
    v95 = v60;
    goto LABEL_36;
  }

  v59 = v122;
  sub_1D17ECA38(*(v56 + 56) + *(v123 + 72) * v57, v122, type metadata accessor for StaticMatterDevice);
  v60 = v124;
  sub_1D17ECF60(v59, v124, type metadata accessor for StaticMatterDevice);
  v61 = v125;
  v62 = *(v60 + *(v125 + 56));
  if (!*(v62 + 16) || (v63 = sub_1D171D15C(*(v44 + *(v55 + 24))), (v64 & 1) == 0))
  {
    if (qword_1EC642470 != -1)
    {
      swift_once();
    }

    v98 = sub_1D1E6709C();
    __swift_project_value_buffer(v98, qword_1EC64F440);
    sub_1D17ECA38(v44, v49, type metadata accessor for EndpointPath);
    sub_1D17ECA38(v60, v48, type metadata accessor for StaticMatterDevice);
    v99 = sub_1D1E6707C();
    v100 = sub_1D1E6833C();
    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      v134[0] = v102;
      *v101 = 136315650;
      *(v101 + 4) = sub_1D1B1312C(0xD000000000000024, 0x80000001D1EB9EE0, v134);
      *(v101 + 12) = 514;
      v103 = *(v55 + 24);
      v130 = v44;
      v104 = *(v49 + v103);
      sub_1D17ECFC8(v49, type metadata accessor for EndpointPath);
      *(v101 + 14) = v104;
      *(v101 + 16) = 2082;
      v105 = *(v48 + *(v61 + 56));

      v106 = sub_1D1E6762C();
      v107 = v48;
      v109 = v108;

      sub_1D17ECFC8(v107, type metadata accessor for StaticMatterDevice);
      v110 = sub_1D1B1312C(v106, v109, v134);

      *(v101 + 18) = v110;
      _os_log_impl(&dword_1D16EC000, v99, v100, "%s: Returning nil, because endpoint is not found for endpointID %{public}hu among endpoints %{public}s.", v101, 0x1Au);
      swift_arrayDestroy();
      v111 = v102;
      v60 = v124;
      MEMORY[0x1D3893640](v111, -1, -1);
      MEMORY[0x1D3893640](v101, -1, -1);

      v112 = v130;
      v113 = type metadata accessor for EndpointPath;
    }

    else
    {
      sub_1D17ECFC8(v49, type metadata accessor for EndpointPath);

      sub_1D17ECFC8(v44, type metadata accessor for EndpointPath);
      v113 = type metadata accessor for StaticMatterDevice;
      v112 = v48;
    }

    sub_1D17ECFC8(v112, v113);
    v97 = type metadata accessor for StaticMatterDevice;
    goto LABEL_35;
  }

  v65 = v119;
  sub_1D17ECA38(*(v62 + 56) + *(v118 + 72) * v63, v119, type metadata accessor for StaticEndpoint);
  v66 = v120;
  sub_1D17ECF60(v65, v120, type metadata accessor for StaticEndpoint);
  v134[3] = &type metadata for HomeKitFeatures;
  v134[4] = sub_1D18076E8();
  LOBYTE(v134[0]) = 3;
  LOBYTE(v65) = sub_1D1E66D5C();
  sub_1D17ECFC8(v44, type metadata accessor for EndpointPath);
  __swift_destroy_boxed_opaque_existential_1(v134);
  if (v65)
  {
    v67 = *(v121 + 40);
    v68 = type metadata accessor for StaticClusterGroups();
    sub_1D1741C08(v66 + v67 + *(v68 + 20), v133, &qword_1EC644790, &unk_1D1E75B48);
    sub_1D17ECFC8(v66, type metadata accessor for StaticEndpoint);
  }

  else
  {
    sub_1D17ECFC8(v66, type metadata accessor for StaticEndpoint);
    v116 = type metadata accessor for StaticThermostatClusterGroup();
    (*(*(v116 - 8) + 56))(v133, 1, 1, v116);
  }

  sub_1D17ECFC8(v60, type metadata accessor for StaticMatterDevice);
  return sub_1D17ECFC8(v54, type metadata accessor for MatterStateSnapshot);
}

uint64_t AccessoryDetails.staticService.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v36 - v5;
  v7 = sub_1D1E66A7C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for StaticAccessory(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for AccessoryDetails.Payload(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for AccessoryDetails(0);
  sub_1D17ECA38(v1 + *(v20 + 20), v19, type metadata accessor for AccessoryDetails.Payload);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1D17ECF60(v19, v15, type metadata accessor for StaticAccessory);
    sub_1D1741C08(&v15[*(v12 + 88)], v6, &qword_1EC642590, qword_1D1E71260);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_1D1741A30(v6, &qword_1EC642590, qword_1D1E71260);
    }

    else
    {
      (*(v8 + 32))(v11, v6, v7);
      v27 = *&v15[*(v12 + 80)];
      if (*(v27 + 16))
      {
        v28 = *&v15[*(v12 + 80)];

        v29 = sub_1D1742188(v11);
        if (v30)
        {
          v31 = v29;
          v32 = *(v27 + 56);
          v33 = type metadata accessor for StaticService(0);
          v34 = *(v33 - 8);
          sub_1D17ECA38(v32 + *(v34 + 72) * v31, a1, type metadata accessor for StaticService);
          (*(v8 + 8))(v11, v7);

          (*(v34 + 56))(a1, 0, 1, v33);
LABEL_13:
          v25 = type metadata accessor for StaticAccessory;
          v26 = v15;
          return sub_1D17ECFC8(v26, v25);
        }
      }

      (*(v8 + 8))(v11, v7);
    }

    v35 = type metadata accessor for StaticService(0);
    (*(*(v35 - 8) + 56))(a1, 1, 1, v35);
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1D17ECF60(v19, a1, type metadata accessor for StaticService);
    v22 = type metadata accessor for StaticService(0);
    return (*(*(v22 - 8) + 56))(a1, 0, 1, v22);
  }

  v24 = type metadata accessor for StaticService(0);
  (*(*(v24 - 8) + 56))(a1, 1, 1, v24);
  v25 = type metadata accessor for AccessoryDetails.Payload;
  v26 = v19;
  return sub_1D17ECFC8(v26, v25);
}

uint64_t AccessoryDetails.homeID.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = AccessoryDetails.hmHomeFromPayload.getter();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 uniqueIdentifier];

    sub_1D1E66A5C();
    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1D1E66A7C();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

uint64_t sub_1D1804044@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D1807408(&qword_1EE07CFB0, type metadata accessor for DataModel);
  sub_1D1E66CAC();

  v4 = OBJC_IVAR____TtC13HomeDataModel9DataModel__currentMatterSnapshot;
  swift_beginAccess();
  return sub_1D17ECA38(v3 + v4, a2, type metadata accessor for MatterStateSnapshot);
}

uint64_t sub_1D1804120(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for MatterStateSnapshot();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = (&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D17ECA38(a1, v7, type metadata accessor for MatterStateSnapshot);
  v8 = *a2;
  return sub_1D1DE63B0(v7);
}

size_t sub_1D18041C0(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643698, &unk_1D1E71DB0);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1D1804480(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v6[2] = a1;
  v6[3] = 2 * v7 - 64;
  return result;
}

size_t sub_1D180453C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if (result - v10 != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1D1804638(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E10, &unk_1D1E76480);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_1D18046C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v39 = *(v41 - 8);
  v8 = *(v39 + 64);
  v9 = MEMORY[0x1EEE9AC00](v41);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v40 = (&v35 - v13);
  v42 = a4;
  v16 = *(a4 + 64);
  v15 = a4 + 64;
  v14 = v16;
  v17 = -1 << *(v15 - 32);
  if (-v17 < 64)
  {
    v18 = ~(-1 << -v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & v14;
  if (!a2)
  {
LABEL_18:
    v26 = 0;
    a3 = 0;
LABEL_25:
    *a1 = v42;
    a1[1] = v15;
    a1[2] = ~v17;
    a1[3] = v26;
    a1[4] = v19;
    return a3;
  }

  if (!a3)
  {
    v26 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v36 = -1 << *(v15 - 32);
    v37 = a1;
    result = 0;
    v20 = 0;
    v21 = (63 - v17) >> 6;
    v22 = 1;
    v38 = a3;
    while (v19)
    {
LABEL_14:
      v25 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v26 = v20;
      v27 = v25 | (v20 << 6);
      v28 = v42;
      v29 = *(v42 + 48);
      v30 = sub_1D1E66A7C();
      (*(*(v30 - 8) + 16))(v11, v29 + *(*(v30 - 8) + 72) * v27, v30);
      v31 = *(v28 + 56);
      v32 = type metadata accessor for StaticService(0);
      sub_1D17ECA38(v31 + *(*(v32 - 8) + 72) * v27, &v11[*(v41 + 48)], type metadata accessor for StaticService);
      a1 = v40;
      sub_1D1741A90(v11, v40, &qword_1EC642DB0, &unk_1D1E6F360);
      sub_1D1741A90(a1, a2, &qword_1EC642DB0, &unk_1D1E6F360);
      a3 = v38;
      if (v22 == v38)
      {
        goto LABEL_23;
      }

      a2 += *(v39 + 72);
      result = v22;
      v33 = __OFADD__(v22++, 1);
      v20 = v26;
      if (v33)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v23 = v20;
    while (1)
    {
      v24 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v24 >= v21)
      {
        break;
      }

      v19 = *(v15 + 8 * v24);
      ++v23;
      if (v19)
      {
        v20 = v24;
        goto LABEL_14;
      }
    }

    v19 = 0;
    if (v21 <= v20 + 1)
    {
      v34 = v20 + 1;
    }

    else
    {
      v34 = v21;
    }

    v26 = v34 - 1;
    a3 = result;
LABEL_23:
    v17 = v36;
    a1 = v37;
    goto LABEL_25;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1D1804B74(void (*a1)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a2, int64_t a3)
{
  v7 = type metadata accessor for StaticService(0);
  v120 = *(v7 - 8);
  v8 = *(v120 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v119 = v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_1D1E66A7C();
  v122 = *(v118 - 8);
  v10 = *(v122 + 64);
  MEMORY[0x1EEE9AC00](v118);
  v117 = v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v111 = (v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v124 = v95 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C68, &unk_1D1E764C0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v112 = v95 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = v95 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = v95 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643870, &qword_1D1E72028);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x1EEE9AC00](v27 - 8);
  v105 = v95 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v102 = v95 - v31;
  v106 = type metadata accessor for StaticServiceCharacteristicDoublet();
  v103 = *(v106 - 8);
  v32 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v106);
  v101 = v95 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *v3;
  result = v3[1];
  v37 = v3[2];
  v36 = v3[3];
  v38 = v3[4];
  v39 = *v3 + 64;
  v40 = -1;
  v41 = -1 << *(*v3 + 32);
  v42 = ~v41;
  if (-v41 < 64)
  {
    v40 = ~(-1 << -v41);
  }

  v43 = v40 & *(*v3 + 64);
  if (!a2)
  {
    goto LABEL_37;
  }

  v114 = *v3 + 64;
  v44 = &v131;
  v100 = ~v41;
  v121 = v35;
  v125 = result;
  v126 = v37;
  if (!a3)
  {
LABEL_39:
    v84 = 0;
    v85 = 0;
    v47 = 0;
    v86 = v121;
    v87 = *(v44 - 32);
LABEL_40:
    *a1 = v86;
    *(a1 + 1) = v114;
    *(a1 + 2) = v87;
    *(a1 + 3) = v47;
    *(a1 + 4) = v43;
    v88 = v126;
    *(a1 + 5) = v125;
    *(a1 + 6) = v88;
    *(a1 + 7) = v36;
    *(a1 + 8) = v38;
    *(a1 + 9) = v84;
    *(a1 + 10) = v85;
    return a3;
  }

  if (a3 < 0)
  {
    __break(1u);
LABEL_46:
    __break(1u);
    return result;
  }

  v107 = v26;
  v108 = v36;
  v109 = v38;
  v98 = a2;
  v95[0] = a3;
  v96 = a1;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  v99 = 0;
  v48 = 0;
  v104 = (v103 + 56);
  a3 = (63 - v41) >> 6;
  v129 = (v13 + 56);
  v115 = v122 + 32;
  v116 = v122 + 16;
  v128 = (v13 + 48);
  v95[1] = v103 + 48;
  v49 = 1;
  v123 = v12;
  v127 = v24;
  while (2)
  {
    v97 = v49;
    while (1)
    {
      v113 = v45;
      v110 = v46;
      if (v45)
      {
        break;
      }

      v51 = v123;
LABEL_12:
      v53 = v124;
      if (!v43)
      {
LABEL_14:
        v44 = v53;
        if (a3 <= v48 + 1)
        {
          v56 = v48 + 1;
        }

        else
        {
          v56 = a3;
        }

        v47 = v56 - 1;
        v55 = v127;
        while (1)
        {
          v54 = v48 + 1;
          if (__OFADD__(v48, 1))
          {
            break;
          }

          if (v54 >= a3)
          {
            v43 = 0;
            v67 = 1;
            v68 = v44;
            goto LABEL_22;
          }

          v43 = *(v114 + 8 * v54);
          ++v48;
          if (v43)
          {
            goto LABEL_21;
          }
        }

        __break(1u);
        goto LABEL_39;
      }

      while (1)
      {
        v54 = v48;
        v55 = v127;
LABEL_21:
        v57 = __clz(__rbit64(v43));
        v43 &= v43 - 1;
        v58 = v57 | (v54 << 6);
        v59 = v121;
        v60 = v122;
        v61 = v117;
        v62 = v118;
        (*(v122 + 16))(v117, *(v121 + 48) + *(v122 + 72) * v58, v118);
        v63 = *(v59 + 56);
        v64 = v119;
        sub_1D17ECA38(v63 + *(v120 + 72) * v58, v119, type metadata accessor for StaticService);
        v65 = *(v123 + 48);
        v66 = v61;
        v51 = v123;
        (*(v60 + 32))(v55, v66, v62);
        sub_1D17ECF60(v64, v55 + v65, type metadata accessor for StaticService);
        v67 = 0;
        v47 = v54;
        v68 = v124;
LABEL_22:
        a1 = *v129;
        (*v129)(v55, v67, 1, v51);
        v69 = *v128;
        if ((*v128)(v55, 1, v51) == 1)
        {
          sub_1D1741A30(v55, &qword_1EC643C68, &unk_1D1E764C0);
          v70 = 1;
          v71 = v112;
          v72 = v107;
          goto LABEL_29;
        }

        sub_1D1741A90(v55, v68, &qword_1EC642DB0, &unk_1D1E6F360);
        v53 = v68;
        if (v125(v68))
        {
          break;
        }

        sub_1D1741A30(v68, &qword_1EC642DB0, &unk_1D1E6F360);
        v48 = v47;
        if (!v43)
        {
          goto LABEL_14;
        }
      }

      v72 = v107;
      sub_1D1741A90(v53, v107, &qword_1EC642DB0, &unk_1D1E6F360);
      v70 = 0;
      v71 = v112;
LABEL_29:
      a1(v72, v70, 1, v51);
      sub_1D1741A90(v72, v71, &qword_1EC643C68, &unk_1D1E764C0);
      if (v69(v71, 1, v51) == 1)
      {
        v79 = v102;
        (*v104)(v102, 1, 1, v106);
LABEL_42:
        v89 = v96;
        sub_1D1741A30(v79, &qword_1EC643870, &qword_1D1E72028);
        v90 = v114;
        *v89 = v121;
        *(v89 + 1) = v90;
        *(v89 + 2) = v100;
        *(v89 + 3) = v47;
        v91 = v125;
        v92 = v126;
        *(v89 + 4) = v43;
        *(v89 + 5) = v91;
        v93 = v108;
        *(v89 + 6) = v92;
        *(v89 + 7) = v93;
        v94 = v113;
        *(v89 + 8) = v109;
        *(v89 + 9) = v94;
        a3 = v99;
        *(v89 + 10) = v110;
        return a3;
      }

      a1 = v111;
      sub_1D1741A90(v71, v111, &qword_1EC642DB0, &unk_1D1E6F360);
      v108(&v130, a1);
      sub_1D1741A30(a1, &qword_1EC642DB0, &unk_1D1E6F360);
      v45 = v130;

      v46 = 0;
      v48 = v47;
    }

    v50 = *(v45 + 16);
    v51 = v123;
    if (v46 == v50)
    {
      v52 = v105;
      (*v104)(v105, 1, 1, v106);
      sub_1D1741A30(v52, &qword_1EC643870, &qword_1D1E72028);
      goto LABEL_12;
    }

    if (v46 >= v50)
    {
      goto LABEL_46;
    }

    v73 = v103;
    v74 = *(v103 + 72);
    v75 = v45 + ((*(v103 + 80) + 32) & ~*(v103 + 80)) + v74 * v46;
    v76 = v105;
    v77 = v46;
    sub_1D17ECA38(v75, v105, type metadata accessor for StaticServiceCharacteristicDoublet);
    v110 = v77 + 1;
    v78 = v106;
    (*(v73 + 56))(v76, 0, 1, v106);
    v79 = v102;
    sub_1D1741A90(v76, v102, &qword_1EC643870, &qword_1D1E72028);
    if ((*(v73 + 48))(v79, 1, v78) == 1)
    {
      goto LABEL_42;
    }

    v80 = v79;
    v81 = v101;
    sub_1D17ECF60(v80, v101, type metadata accessor for StaticServiceCharacteristicDoublet);
    v82 = v81;
    v83 = v98;
    result = sub_1D17ECF60(v82, v98, type metadata accessor for StaticServiceCharacteristicDoublet);
    if (v97 == v95[0])
    {
      a1 = v96;
      a3 = v95[0];
      v38 = v109;
      v36 = v108;
      v86 = v121;
      v87 = v100;
      v84 = v113;
      v85 = v110;
      goto LABEL_40;
    }

    a1 = (v83 + v74);
    v98 = a1;
    v99 = v97;
    v49 = v97 + 1;
    v45 = v113;
    v46 = v110;
    if (!__OFADD__(v97, 1))
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_37:
  a3 = 0;
  *a1 = v35;
  *(a1 + 1) = v39;
  *(a1 + 2) = v42;
  *(a1 + 3) = 0;
  *(a1 + 4) = v43;
  *(a1 + 5) = result;
  *(a1 + 6) = v37;
  *(a1 + 7) = v36;
  *(a1 + 9) = 0;
  *(a1 + 10) = 0;
  *(a1 + 8) = v38;
  return a3;
}

void *sub_1D1805608(void *result, _WORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 7) | (2 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_1D1805708(void *result, _WORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 7) | (2 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_1D1805808(void *result, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 8) | (4 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_1D1805908(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + (v14 | (v9 << 6)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_1D1805A20(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 48) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1D1805BB4(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + (v14 | (v9 << 6)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1D1805CB0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v41 = sub_1D1E66A7C();
  v43 = *(v41 - 8);
  v8 = *(v43 + 64);
  v9 = MEMORY[0x1EEE9AC00](v41);
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v40 = &v34 - v12;
  v13 = a4 + 56;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return a3;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    result = 0;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 56;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 48);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      a3 = v39;
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      result = a1;
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    a3 = result;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1D1805F94(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DashboardSortableData();
  v34 = *(v8 - 8);
  v9 = *(v34 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v33 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v10);
  v32 = &v29 - v13;
  v14 = a4 + 64;
  v15 = -1 << *(a4 + 32);
  if (-v15 < 64)
  {
    v16 = ~(-1 << -v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v18 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v14;
    a1[2] = ~v15;
    a1[3] = v18;
    a1[4] = v17;
    return a3;
  }

  if (!a3)
  {
    v18 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v30 = a1;
    v31 = a3;
    result = 0;
    v18 = 0;
    v29 = v15;
    v19 = (63 - v15) >> 6;
    v20 = 1;
    while (v17)
    {
LABEL_14:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v24 = v33;
      a1 = *(v34 + 72);
      sub_1D17ECA38(*(a4 + 48) + a1 * (v23 | (v18 << 6)), v33, type metadata accessor for DashboardSortableData);
      v25 = v24;
      v26 = v32;
      sub_1D17ECF60(v25, v32, type metadata accessor for DashboardSortableData);
      sub_1D17ECF60(v26, a2, type metadata accessor for DashboardSortableData);
      if (v20 == v31)
      {
        a1 = v30;
        a3 = v31;
        goto LABEL_23;
      }

      a2 += a1;
      result = v20;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v21 = v18;
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v22 >= v19)
      {
        break;
      }

      v17 = *(v14 + 8 * v22);
      ++v21;
      if (v17)
      {
        v18 = v22;
        goto LABEL_14;
      }
    }

    v17 = 0;
    if (v19 <= v18 + 1)
    {
      v28 = v18 + 1;
    }

    else
    {
      v28 = v19;
    }

    v18 = v28 - 1;
    a3 = result;
    a1 = v30;
LABEL_23:
    v15 = v29;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1D1806314(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v41 = a6;
  v42 = a7;
  v11 = a5(0);
  v40 = *(v11 - 8);
  v12 = *(v40 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v39 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v13);
  v17 = &v35 - v16;
  v18 = a4 + 8;
  v19 = -1 << *(a4 + 32);
  if (-v19 < 64)
  {
    v20 = ~(-1 << -v19);
  }

  else
  {
    v20 = -1;
  }

  v21 = v20 & a4[8];
  if (!a2)
  {
LABEL_18:
    v22 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v18;
    a1[2] = ~v19;
    a1[3] = v22;
    a1[4] = v21;
    return a3;
  }

  if (!a3)
  {
    v22 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v37 = a1;
    v38 = a3;
    result = 0;
    v22 = 0;
    v36 = v19;
    v23 = (63 - v19) >> 6;
    v24 = 1;
    while (v21)
    {
LABEL_14:
      v27 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      a1 = a4;
      v28 = a4[7];
      v29 = v39;
      v30 = *(v40 + 72);
      sub_1D17ECA38(v28 + v30 * (v27 | (v22 << 6)), v39, v41);
      v31 = v29;
      v32 = v42;
      sub_1D17ECF60(v31, v17, v42);
      sub_1D17ECF60(v17, a2, v32);
      if (v24 == v38)
      {
        a4 = a1;
        a1 = v37;
        a3 = v38;
        goto LABEL_23;
      }

      a2 += v30;
      result = v24;
      v33 = __OFADD__(v24++, 1);
      a4 = a1;
      if (v33)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v25 = v22;
    while (1)
    {
      v26 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v26 >= v23)
      {
        break;
      }

      v21 = v18[v26];
      ++v25;
      if (v21)
      {
        v22 = v26;
        goto LABEL_14;
      }
    }

    v21 = 0;
    if (v23 <= v22 + 1)
    {
      v34 = v22 + 1;
    }

    else
    {
      v34 = v23;
    }

    v22 = v34 - 1;
    a3 = result;
    a1 = v37;
LABEL_23:
    v19 = v36;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t *sub_1D1806574(uint64_t *result, uint64_t **a2, uint64_t *a3, uint64_t a4, unint64_t *a5, uint64_t *a6, unint64_t *a7)
{
  v9 = a4;
  v11 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v15 = 0;
    v23 = -1 << *(v9 + 32);
    v13 = v9 + 56;
    v14 = ~v23;
    v24 = -v23;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v16 = v25 & *(v9 + 56);
    v17 = a3;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    a6 = 0;
    goto LABEL_32;
  }

  sub_1D1E686EC();
  sub_1D1741B10(0, a5, a6);
  sub_1D1771944(a7, a5, a6);
  result = sub_1D1E681BC();
  v9 = v32;
  v13 = v33;
  v14 = v34;
  v15 = v35;
  v16 = v36;
  v17 = a3;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!v17)
  {
    a6 = 0;
    goto LABEL_32;
  }

  if ((v17 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v28 = a5;
  v29 = a6;
  a6 = 0;
  v27 = v14;
  a5 = ((v14 + 64) >> 6);
  v18 = 1;
  while (1)
  {
    if (v9 < 0)
    {
      if (!sub_1D1E6877C())
      {
        goto LABEL_30;
      }

      sub_1D1741B10(0, v28, v29);
      swift_dynamicCast();
      result = v31;
      v17 = a3;
      if (!v31)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v19 = v15;
    if (!v16)
    {
      break;
    }

    v20 = v15;
LABEL_13:
    v21 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    result = *(*(v9 + 48) + ((v20 << 9) | (8 * v21)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v18 == v17)
    {
      a6 = v17;
      goto LABEL_30;
    }

    ++a2;
    a6 = v18;
    if (__OFADD__(v18++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v20 = (v19 + 1);
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v20 >= a5)
    {
      break;
    }

    v16 = *(v13 + 8 * v20);
    ++v19;
    if (v16)
    {
      v15 = v20;
      goto LABEL_13;
    }
  }

  v16 = 0;
  if (a5 <= (v15 + 1))
  {
    v26 = (v15 + 1);
  }

  else
  {
    v26 = a5;
  }

  v15 = v26 - 1;
LABEL_30:
  v14 = v27;
LABEL_32:
  *v11 = v9;
  v11[1] = v13;
  v11[2] = v14;
  v11[3] = v15;
  v11[4] = v16;
  return a6;
}

uint64_t sub_1D18067E4(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v41 = a6;
  v42 = a7;
  v11 = a5(0);
  v40 = *(v11 - 8);
  v12 = *(v40 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v39 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v13);
  v17 = &v35 - v16;
  v18 = a4 + 7;
  v19 = -1 << *(a4 + 32);
  if (-v19 < 64)
  {
    v20 = ~(-1 << -v19);
  }

  else
  {
    v20 = -1;
  }

  v21 = v20 & a4[7];
  if (!a2)
  {
LABEL_18:
    v22 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v18;
    a1[2] = ~v19;
    a1[3] = v22;
    a1[4] = v21;
    return a3;
  }

  if (!a3)
  {
    v22 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v37 = a1;
    v38 = a3;
    result = 0;
    v22 = 0;
    v36 = v19;
    v23 = (63 - v19) >> 6;
    v24 = 1;
    while (v21)
    {
LABEL_14:
      v27 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      a1 = a4;
      v28 = a4[6];
      v29 = v39;
      v30 = *(v40 + 72);
      sub_1D17ECA38(v28 + v30 * (v27 | (v22 << 6)), v39, v41);
      v31 = v29;
      v32 = v42;
      sub_1D17ECF60(v31, v17, v42);
      sub_1D17ECF60(v17, a2, v32);
      if (v24 == v38)
      {
        a4 = a1;
        a1 = v37;
        a3 = v38;
        goto LABEL_23;
      }

      a2 += v30;
      result = v24;
      v33 = __OFADD__(v24++, 1);
      a4 = a1;
      if (v33)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v25 = v22;
    while (1)
    {
      v26 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v26 >= v23)
      {
        break;
      }

      v21 = v18[v26];
      ++v25;
      if (v21)
      {
        v22 = v26;
        goto LABEL_14;
      }
    }

    v21 = 0;
    if (v23 <= v22 + 1)
    {
      v34 = v22 + 1;
    }

    else
    {
      v34 = v23;
    }

    v22 = v34 - 1;
    a3 = result;
    a1 = v37;
LABEL_23:
    v19 = v36;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

BOOL _s13HomeDataModel16AccessoryDetailsV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticDeviceMetadata();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644620, &unk_1D1E75A00);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644880, &qword_1D1E76500);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v28 - v15;
  if ((_s13HomeDataModel16AccessoryDetailsV7PayloadO2eeoiySbAE_AEtFZ_0(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v17 = type metadata accessor for AccessoryDetails(0);
  if ((_s13HomeDataModel25AccessoryDetailsBasicInfoV2eeoiySbAC_ACtFZ_0(a1 + *(v17 + 20), a2 + *(v17 + 20)) & 1) == 0)
  {
    return 0;
  }

  v29 = v17;
  v18 = *(v17 + 24);
  v19 = *(v13 + 48);
  sub_1D1741C08(a1 + v18, v16, &qword_1EC644620, &unk_1D1E75A00);
  v20 = a2 + v18;
  v21 = v19;
  sub_1D1741C08(v20, &v16[v19], &qword_1EC644620, &unk_1D1E75A00);
  v22 = *(v5 + 48);
  if (v22(v16, 1, v4) == 1)
  {
    if (v22(&v16[v21], 1, v4) == 1)
    {
      sub_1D1741A30(v16, &qword_1EC644620, &unk_1D1E75A00);
      goto LABEL_11;
    }

LABEL_8:
    sub_1D1741A30(v16, &qword_1EC644880, &qword_1D1E76500);
    return 0;
  }

  sub_1D1741C08(v16, v12, &qword_1EC644620, &unk_1D1E75A00);
  if (v22(&v16[v21], 1, v4) == 1)
  {
    sub_1D17ECFC8(v12, type metadata accessor for StaticDeviceMetadata);
    goto LABEL_8;
  }

  sub_1D17ECF60(&v16[v21], v8, type metadata accessor for StaticDeviceMetadata);
  v24 = _s13HomeDataModel20StaticDeviceMetadataV2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_1D17ECFC8(v8, type metadata accessor for StaticDeviceMetadata);
  sub_1D17ECFC8(v12, type metadata accessor for StaticDeviceMetadata);
  sub_1D1741A30(v16, &qword_1EC644620, &unk_1D1E75A00);
  if ((v24 & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  v25 = *(v29 + 28);
  v26 = *(a1 + v25);
  v27 = *(a2 + v25);
  if (v26 != 8)
  {
    if (v27 == 8)
    {
      return 0;
    }

    if (v26 > 4)
    {
      switch(v26)
      {
        case 5:
          return v27 == 5;
        case 6:
          return v27 == 6;
        case 7:
          return v27 == 7;
      }
    }

    else
    {
      switch(v26)
      {
        case 2:
          return v27 == 2;
        case 3:
          return v27 == 3;
        case 4:
          return v27 == 4;
      }
    }

    return (v27 - 2) >= 6 && ((v27 ^ v26) & 1) == 0;
  }

  return v27 == 8;
}

uint64_t _s13HomeDataModel16AccessoryDetailsV7PayloadO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v49 = a1;
  v50 = a2;
  v2 = type metadata accessor for StaticEndpoint();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v48 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for StaticServiceGroup();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v47 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StaticService(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for StaticAccessory(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for AccessoryDetails.Payload(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v47 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v47 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v47 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644878, &qword_1D1E764F8);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x1EEE9AC00](v29 - 8);
  v33 = &v47 - v32;
  v34 = *(v31 + 56);
  sub_1D17ECA38(v49, &v47 - v32, type metadata accessor for AccessoryDetails.Payload);
  sub_1D17ECA38(v50, &v33[v34], type metadata accessor for AccessoryDetails.Payload);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1D17ECA38(v33, v23, type metadata accessor for AccessoryDetails.Payload);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        v36 = type metadata accessor for StaticServiceGroup;
        v37 = v23;
        goto LABEL_15;
      }

      v38 = &v33[v34];
      v39 = v47;
      sub_1D17ECF60(v38, v47, type metadata accessor for StaticServiceGroup);
      v40 = _s13HomeDataModel18StaticServiceGroupV2eeoiySbAC_ACtFZ_0(v23, v39);
      v41 = type metadata accessor for StaticServiceGroup;
      sub_1D17ECFC8(v39, type metadata accessor for StaticServiceGroup);
      v42 = v23;
    }

    else
    {
      sub_1D17ECA38(v33, v20, type metadata accessor for AccessoryDetails.Payload);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        v36 = type metadata accessor for StaticEndpoint;
        v37 = v20;
        goto LABEL_15;
      }

      v44 = &v33[v34];
      v45 = v48;
      sub_1D17ECF60(v44, v48, type metadata accessor for StaticEndpoint);
      v40 = static StaticEndpoint.== infix(_:_:)(v20, v45);
      v41 = type metadata accessor for StaticEndpoint;
      sub_1D17ECFC8(v45, type metadata accessor for StaticEndpoint);
      v42 = v20;
    }

    goto LABEL_17;
  }

  if (EnumCaseMultiPayload)
  {
    sub_1D17ECA38(v33, v26, type metadata accessor for AccessoryDetails.Payload);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v36 = type metadata accessor for StaticService;
      v37 = v26;
      goto LABEL_15;
    }

    sub_1D17ECF60(&v33[v34], v11, type metadata accessor for StaticService);
    v40 = static StaticService.== infix(_:_:)(v26, v11);
    sub_1D17ECFC8(v11, type metadata accessor for StaticService);
    v42 = v26;
    v43 = type metadata accessor for StaticService;
LABEL_18:
    sub_1D17ECFC8(v42, v43);
    sub_1D17ECFC8(v33, type metadata accessor for AccessoryDetails.Payload);
    return v40 & 1;
  }

  sub_1D17ECA38(v33, v28, type metadata accessor for AccessoryDetails.Payload);
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_1D17ECF60(&v33[v34], v15, type metadata accessor for StaticAccessory);
    v40 = static StaticAccessory.== infix(_:_:)(v28, v15);
    v41 = type metadata accessor for StaticAccessory;
    sub_1D17ECFC8(v15, type metadata accessor for StaticAccessory);
    v42 = v28;
LABEL_17:
    v43 = v41;
    goto LABEL_18;
  }

  v36 = type metadata accessor for StaticAccessory;
  v37 = v28;
LABEL_15:
  sub_1D17ECFC8(v37, v36);
  sub_1D1741A30(v33, &qword_1EC644878, &qword_1D1E764F8);
  v40 = 0;
  return v40 & 1;
}

unint64_t sub_1D18073B4()
{
  result = qword_1EC644630;
  if (!qword_1EC644630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644630);
  }

  return result;
}

uint64_t sub_1D1807408(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D1807450()
{
  result = qword_1EC644650;
  if (!qword_1EC644650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644650);
  }

  return result;
}

unint64_t sub_1D18074A4()
{
  result = qword_1EC644678;
  if (!qword_1EC644678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644678);
  }

  return result;
}

unint64_t sub_1D18074F8()
{
  result = qword_1EC6446C8;
  if (!qword_1EC6446C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6446C8);
  }

  return result;
}

unint64_t sub_1D180754C()
{
  result = qword_1EC6446D0;
  if (!qword_1EC6446D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6446D0);
  }

  return result;
}

unint64_t sub_1D18075A0()
{
  result = qword_1EC6446E0;
  if (!qword_1EC6446E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6446E0);
  }

  return result;
}

unint64_t sub_1D18075F4()
{
  result = qword_1EC6446F0;
  if (!qword_1EC6446F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6446F0);
  }

  return result;
}

unint64_t sub_1D1807648()
{
  result = qword_1EC644700;
  if (!qword_1EC644700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644700);
  }

  return result;
}

unint64_t sub_1D18076E8()
{
  result = qword_1EE07D0F0;
  if (!qword_1EE07D0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE07D0F0);
  }

  return result;
}

uint64_t dispatch thunk of Committable.commit()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D17C4BFC;

  return v9(a1, a2);
}

void sub_1D1807954()
{
  type metadata accessor for AccessoryDetails.Payload(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for AccessoryDetailsBasicInfo();
    if (v1 <= 0x3F)
    {
      sub_1D1807A08();
      if (v2 <= 0x3F)
      {
        sub_1D1807A60();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D1807A08()
{
  if (!qword_1EE07DF30)
  {
    type metadata accessor for StaticDeviceMetadata();
    v0 = sub_1D1E685AC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE07DF30);
    }
  }
}

void sub_1D1807A60()
{
  if (!qword_1EC6447B8)
  {
    v0 = sub_1D1E685AC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC6447B8);
    }
  }
}

uint64_t sub_1D1807AB0()
{
  result = type metadata accessor for StaticAccessory(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for StaticService(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for StaticServiceGroup();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for StaticEndpoint();
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

unint64_t sub_1D1807C3C()
{
  result = qword_1EC6447D0;
  if (!qword_1EC6447D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6447D0);
  }

  return result;
}

unint64_t sub_1D1807C94()
{
  result = qword_1EC6447D8;
  if (!qword_1EC6447D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6447D8);
  }

  return result;
}

unint64_t sub_1D1807CEC()
{
  result = qword_1EC6447E0;
  if (!qword_1EC6447E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6447E0);
  }

  return result;
}

unint64_t sub_1D1807D44()
{
  result = qword_1EC6447E8;
  if (!qword_1EC6447E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6447E8);
  }

  return result;
}

unint64_t sub_1D1807D9C()
{
  result = qword_1EC6447F0;
  if (!qword_1EC6447F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6447F0);
  }

  return result;
}

unint64_t sub_1D1807DF4()
{
  result = qword_1EC6447F8;
  if (!qword_1EC6447F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6447F8);
  }

  return result;
}

unint64_t sub_1D1807E4C()
{
  result = qword_1EC644800;
  if (!qword_1EC644800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644800);
  }

  return result;
}

unint64_t sub_1D1807EA4()
{
  result = qword_1EC644808;
  if (!qword_1EC644808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644808);
  }

  return result;
}

unint64_t sub_1D1807EFC()
{
  result = qword_1EC644810;
  if (!qword_1EC644810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644810);
  }

  return result;
}