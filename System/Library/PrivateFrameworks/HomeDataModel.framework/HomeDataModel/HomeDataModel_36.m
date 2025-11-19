uint64_t StaticDoorLockCluster.setWalletKeyUWBApproachAngle(_:)(_BYTE *a1)
{
  *(v2 + 200) = v1;
  v4 = *(*(type metadata accessor for StaticDoorLockCluster() - 8) + 64) + 15;
  *(v2 + 208) = swift_task_alloc();
  v5 = type metadata accessor for ClusterPath(0);
  *(v2 + 216) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v2 + 224) = swift_task_alloc();
  *(v2 + 232) = swift_task_alloc();
  v7 = type metadata accessor for EndpointPath(0);
  *(v2 + 240) = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  *(v2 + 248) = swift_task_alloc();
  v9 = sub_1D1E66A7C();
  *(v2 + 256) = v9;
  v10 = *(v9 - 8);
  *(v2 + 264) = v10;
  v11 = *(v10 + 64) + 15;
  *(v2 + 272) = swift_task_alloc();
  *(v2 + 304) = *a1;

  return MEMORY[0x1EEE6DFA0](sub_1D19C4B18, 0, 0);
}

uint64_t sub_1D19C4B18()
{
  v21 = v0;
  if (qword_1EE07A0A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1D1E6709C();
  *(v0 + 280) = __swift_project_value_buffer(v1, qword_1EE07A0B0);
  v2 = sub_1D1E6707C();
  v3 = sub_1D1E6835C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 304);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19 = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_1D1B1312C(0xD000000000000020, 0x80000001D1EC1DC0, &v19);
    *(v5 + 12) = 2082;
    v20 = v4;
    v7 = StaticDoorLockCluster.WalletKeyUWBApproachAngle.description.getter();
    v9 = sub_1D1B1312C(v7, v8, &v19);

    *(v5 + 14) = v9;
    _os_log_impl(&dword_1D16EC000, v2, v3, "%s %{public}s.", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v6, -1, -1);
    MEMORY[0x1D3893640](v5, -1, -1);
  }

  v11 = *(v0 + 264);
  v10 = *(v0 + 272);
  v13 = *(v0 + 248);
  v12 = *(v0 + 256);
  v14 = *(v0 + 200);
  v15 = *(v14 + *(*(v0 + 240) + 20));
  sub_1D19C61A8(v14, v13, type metadata accessor for EndpointPath);
  (*(v11 + 32))(v10, v13, v12);
  v16 = swift_task_alloc();
  *(v0 + 288) = v16;
  *v16 = v0;
  v16[1] = sub_1D19C4D68;
  v17 = *(v0 + 272);

  return sub_1D1A0A508(v15, v17);
}

uint64_t sub_1D19C4D68(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[22] = v2;
  v4[23] = a1;
  v4[24] = a2;
  v5 = v3[36];
  v6 = v3[34];
  v7 = v3[33];
  v8 = v3[32];
  v10 = *v2;
  v4[37] = a1;

  (*(v7 + 8))(v6, v8);

  return MEMORY[0x1EEE6DFA0](sub_1D19C4ED0, 0, 0);
}

uint64_t sub_1D19C4ED0()
{
  v37 = v0;
  if (*(v0 + 296))
  {
    v2 = *(v0 + 224);
    v1 = *(v0 + 232);
    v3 = *(v0 + 216);
    v4 = *(v0 + 192);
    v5 = *(v0 + 304);
    sub_1D19C61A8(*(v0 + 200), v2, type metadata accessor for ClusterPath);
    sub_1D19C6210(v2, v1, type metadata accessor for EndpointPath);
    *(v1 + *(v3 + 20)) = 28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648318, &unk_1D1E8D030);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D1E73A90;
    v7 = *MEMORY[0x1E696F550];
    *(inited + 32) = sub_1D1E6781C();
    *(inited + 40) = v8;
    v9 = *MEMORY[0x1E696F560];
    v10 = sub_1D1E6781C();
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 48) = v10;
    *(inited + 56) = v11;
    v12 = *MEMORY[0x1E696F568];
    *(inited + 80) = sub_1D1E6781C();
    *(inited + 88) = v13;
    v14 = sub_1D1E691BC();
    *(inited + 120) = sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
    *(inited + 96) = v14;
    v15 = sub_1D18D6538(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646238, &qword_1D1E7E8D0);
    swift_arrayDestroy();
    ObjectType = swift_getObjectType();
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
    *(v0 + 144) = v15;
    *(v0 + 168) = v17;
    (*(v4 + 56))(v1, 0, v0 + 144, ObjectType, v4);
    swift_unknownObjectRelease();
    sub_1D19C60F4(v1, type metadata accessor for ClusterPath);
    __swift_destroy_boxed_opaque_existential_1((v0 + 144));
  }

  else
  {
    v18 = *(v0 + 280);
    sub_1D19C61A8(*(v0 + 200), *(v0 + 208), type metadata accessor for StaticDoorLockCluster);
    v19 = sub_1D1E6707C();
    v20 = sub_1D1E6833C();
    v21 = os_log_type_enabled(v19, v20);
    v22 = *(v0 + 208);
    if (v21)
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v36 = v24;
      *v23 = 136315394;
      *(v23 + 4) = sub_1D1B1312C(0xD000000000000020, 0x80000001D1EC1DC0, &v36);
      *(v23 + 12) = 2082;
      v25 = ClusterPath.description.getter();
      v27 = v26;
      sub_1D19C60F4(v22, type metadata accessor for StaticDoorLockCluster);
      v28 = sub_1D1B1312C(v25, v27, &v36);

      *(v23 + 14) = v28;
      _os_log_impl(&dword_1D16EC000, v19, v20, "%s: Unable to update wallet key uwb approach angle because device in current home with path %{public}s could not be found.", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v24, -1, -1);
      MEMORY[0x1D3893640](v23, -1, -1);
    }

    else
    {

      sub_1D19C60F4(v22, type metadata accessor for StaticDoorLockCluster);
    }
  }

  v29 = *(v0 + 272);
  v30 = *(v0 + 248);
  v32 = *(v0 + 224);
  v31 = *(v0 + 232);
  v33 = *(v0 + 208);

  v34 = *(v0 + 8);

  return v34();
}

uint64_t type metadata accessor for StaticDoorLockCluster()
{
  result = qword_1EE07C498;
  if (!qword_1EE07C498)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D19C52F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21[3] = type metadata accessor for ClusterPath(0);
  v21[4] = sub_1D19C6958(&qword_1EC646A70, type metadata accessor for ClusterPath);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
  sub_1D19C61A8(a1, boxed_opaque_existential_1, type metadata accessor for ClusterPath);
  v7 = sub_1D19C56F8(65531, boxed_opaque_existential_1, a2, a3);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v9 = sub_1D1E6709C();
    __swift_project_value_buffer(v9, qword_1EE07A0B0);
    sub_1D17419CC(v21, v20);
    v10 = sub_1D1E6707C();
    v11 = sub_1D1E6833C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19 = v13;
      *v12 = 136315138;
      __swift_project_boxed_opaque_existential_1(v20, v20[3]);
      v14 = ClusterPath.description.getter();
      v16 = v15;
      __swift_destroy_boxed_opaque_existential_1(v20);
      v17 = sub_1D1B1312C(v14, v16, &v19);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_1D16EC000, v10, v11, "Failed to get attribute list for cluster %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x1D3893640](v13, -1, -1);
      MEMORY[0x1D3893640](v12, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v20);
    }

    v8 = MEMORY[0x1E69E7CC0];
  }

  __swift_destroy_boxed_opaque_existential_1(v21);
  return v8;
}

uint64_t sub_1D19C551C(unsigned int a1, uint64_t a2, uint64_t a3)
{
  v6 = HIWORD(a1);
  v21[3] = &type metadata for BasicClusterPath;
  v21[4] = sub_1D18F6128();
  LOWORD(v21[0]) = a1;
  BYTE2(v21[0]) = v6;
  v7 = sub_1D19C5AEC(65531, a1 & 0xFFFFFF, a2, a3);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v9 = sub_1D1E6709C();
    __swift_project_value_buffer(v9, qword_1EE07A0B0);
    sub_1D17419CC(v21, v20);
    v10 = sub_1D1E6707C();
    v11 = sub_1D1E6833C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19 = v13;
      *v12 = 136315138;
      __swift_project_boxed_opaque_existential_1(v20, v20[3]);
      v14 = BasicClusterPath.description.getter();
      v16 = v15;
      __swift_destroy_boxed_opaque_existential_1(v20);
      v17 = sub_1D1B1312C(v14, v16, &v19);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_1D16EC000, v10, v11, "Failed to get attribute list for cluster %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x1D3893640](v13, -1, -1);
      MEMORY[0x1D3893640](v12, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v20);
    }

    v8 = MEMORY[0x1E69E7CC0];
  }

  __swift_destroy_boxed_opaque_existential_1(v21);
  return v8;
}

uint64_t sub_1D19C56F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for ClusterPath(0);
  v38[3] = v8;
  v38[4] = sub_1D19C6958(&qword_1EC646A70, type metadata accessor for ClusterPath);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v38);
  sub_1D19C61A8(a2, boxed_opaque_existential_1, type metadata accessor for ClusterPath);
  *&v32 = a3;
  *(&v32 + 1) = a4;
  AttributeValueSet.value(for:in:)(a1, v38, v37);
  sub_1D18C20AC(v37, &v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645D58, &unk_1D1E7E530);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646A50, &unk_1D1E910D0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v36 = 0;
  }

  sub_1D18C20AC(v37, &v32);
  if (v33)
  {
    sub_1D1742194(&v32, v35);
    if (!v36)
    {
      LOBYTE(v32) = *(boxed_opaque_existential_1 + *(v8 + 20));
      v10 = sub_1D1A38104(a1, &v32);
      v12 = v11;
      if (qword_1EE07A0A8 != -1)
      {
        swift_once();
      }

      v13 = sub_1D1E6709C();
      __swift_project_value_buffer(v13, qword_1EE07A0B0);
      sub_1D1741970(v35, v34);
      sub_1D17419CC(v38, &v32);

      v14 = sub_1D1E6707C();
      v15 = sub_1D1E6833C();

      if (!os_log_type_enabled(v14, v15))
      {

        __swift_destroy_boxed_opaque_existential_1(v34);
        __swift_destroy_boxed_opaque_existential_1(v35);
        sub_1D18F49A8(v37);
        __swift_destroy_boxed_opaque_existential_1(&v32);
        goto LABEL_12;
      }

      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v31 = v17;
      *v16 = 136446978;
      v18 = sub_1D1B1312C(v10, v12, &v31);

      *(v16 + 4) = v18;
      *(v16 + 12) = 2082;
      *(v16 + 14) = sub_1D1B1312C(0x49553C7961727241, 0xED00003E3233746ELL, &v31);
      *(v16 + 22) = 2082;
      sub_1D1741970(v34, &v30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
      v19 = sub_1D1E678BC();
      v21 = v20;
      __swift_destroy_boxed_opaque_existential_1(v34);
      v22 = sub_1D1B1312C(v19, v21, &v31);

      *(v16 + 24) = v22;
      *(v16 + 32) = 2082;
      __swift_project_boxed_opaque_existential_1(&v32, v33);
      v23 = ClusterPath.description.getter();
      v25 = v24;
      __swift_destroy_boxed_opaque_existential_1(&v32);
      v26 = sub_1D1B1312C(v23, v25, &v31);

      *(v16 + 34) = v26;
      _os_log_impl(&dword_1D16EC000, v14, v15, "Retrieved value for (%{public}s) but could not decoded it to %{public}s. result:(%{public}s) path:'%{public}s'", v16, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v17, -1, -1);
      MEMORY[0x1D3893640](v16, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_1(v35);
    v27 = v37;
  }

  else
  {
    sub_1D18F49A8(v37);
    v27 = &v32;
  }

  sub_1D18F49A8(v27);
LABEL_12:
  v28 = v36;
  __swift_destroy_boxed_opaque_existential_1(v38);
  return v28;
}

uint64_t sub_1D19C5AEC(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v8 = HIWORD(a2);
  v37[3] = &type metadata for BasicClusterPath;
  v37[4] = sub_1D18F6128();
  LOWORD(v37[0]) = v6;
  BYTE2(v37[0]) = v8;
  *&v31 = a3;
  *(&v31 + 1) = a4;
  AttributeValueSet.value(for:in:)(a1, v37, v36);
  sub_1D18C20AC(v36, &v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645D58, &unk_1D1E7E530);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646A50, &unk_1D1E910D0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v35 = 0;
  }

  sub_1D18C20AC(v36, &v31);
  if (v32)
  {
    sub_1D1742194(&v31, v34);
    if (!v35)
    {
      LOBYTE(v31) = BYTE2(v37[0]);
      v9 = sub_1D1A38104(a1, &v31);
      v11 = v10;
      if (qword_1EE07A0A8 != -1)
      {
        swift_once();
      }

      v12 = sub_1D1E6709C();
      __swift_project_value_buffer(v12, qword_1EE07A0B0);
      sub_1D1741970(v34, v33);
      sub_1D17419CC(v37, &v31);

      v13 = sub_1D1E6707C();
      v14 = sub_1D1E6833C();

      if (!os_log_type_enabled(v13, v14))
      {

        __swift_destroy_boxed_opaque_existential_1(v33);
        __swift_destroy_boxed_opaque_existential_1(v34);
        sub_1D18F49A8(v36);
        __swift_destroy_boxed_opaque_existential_1(&v31);
        goto LABEL_12;
      }

      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v30 = v16;
      *v15 = 136446978;
      v17 = sub_1D1B1312C(v9, v11, &v30);

      *(v15 + 4) = v17;
      *(v15 + 12) = 2082;
      *(v15 + 14) = sub_1D1B1312C(0x49553C7961727241, 0xED00003E3233746ELL, &v30);
      *(v15 + 22) = 2082;
      sub_1D1741970(v33, &v29);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
      v18 = sub_1D1E678BC();
      v20 = v19;
      __swift_destroy_boxed_opaque_existential_1(v33);
      v21 = sub_1D1B1312C(v18, v20, &v30);

      *(v15 + 24) = v21;
      *(v15 + 32) = 2082;
      __swift_project_boxed_opaque_existential_1(&v31, v32);
      v22 = BasicClusterPath.description.getter();
      v24 = v23;
      __swift_destroy_boxed_opaque_existential_1(&v31);
      v25 = sub_1D1B1312C(v22, v24, &v30);

      *(v15 + 34) = v25;
      _os_log_impl(&dword_1D16EC000, v13, v14, "Retrieved value for (%{public}s) but could not decoded it to %{public}s. result:(%{public}s) path:'%{public}s'", v15, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v16, -1, -1);
      MEMORY[0x1D3893640](v15, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_1(v34);
    v26 = v36;
  }

  else
  {
    sub_1D18F49A8(v36);
    v26 = &v31;
  }

  sub_1D18F49A8(v26);
LABEL_12:
  v27 = v35;
  __swift_destroy_boxed_opaque_existential_1(v37);
  return v27;
}

uint64_t _s13HomeDataModel21StaticDoorLockClusterV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for EndpointPath(0);
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  if (*(a1 + *(v4 + 24)) != *(a2 + *(v4 + 24)))
  {
    return 0;
  }

  v5 = type metadata accessor for ClusterPath(0);
  if (dword_1D1E8D52C[*(a1 + *(v5 + 20))] != dword_1D1E8D52C[*(a2 + *(v5 + 20))])
  {
    return 0;
  }

  v6 = type metadata accessor for StaticDoorLockCluster();
  v7 = v6[5];
  v8 = (a1 + v7);
  v9 = *(a1 + v7 + 4);
  v10 = (a2 + v7);
  v11 = *(a2 + v7 + 4);
  if (v9)
  {
    if (!v11)
    {
      return v11;
    }
  }

  else
  {
    if (*v8 != *v10)
    {
      LOBYTE(v11) = 1;
    }

    if (v11)
    {
      return 0;
    }
  }

  v12 = v6[6];
  v13 = *(a1 + v12);
  v14 = *(a2 + v12);
  if (v13 == 2)
  {
    if (v14 != 2)
    {
      return 0;
    }
  }

  else
  {
    v11 = 0;
    if (v14 == 2 || ((v14 ^ v13) & 1) != 0)
    {
      return v11;
    }
  }

  v15 = v6[7];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 1);
  v18 = (a2 + v15);
  v11 = *(a2 + v15 + 1);
  if (v17)
  {
    if (!v11)
    {
      return v11;
    }
  }

  else
  {
    if (*v16 != *v18)
    {
      LOBYTE(v11) = 1;
    }

    if (v11)
    {
      return 0;
    }
  }

  v19 = v6[8];
  v20 = *(a1 + v19);
  v21 = *(a2 + v19);
  if (v20 == 2)
  {
    if (v21 != 2)
    {
      return 0;
    }
  }

  else if (v21 == 2 || ((v21 ^ v20) & 1) != 0)
  {
    return 0;
  }

  return 1;
}

unint64_t sub_1D19C5FF8()
{
  result = qword_1EC648540;
  if (!qword_1EC648540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648540);
  }

  return result;
}

unint64_t sub_1D19C604C()
{
  result = qword_1EC648548;
  if (!qword_1EC648548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648548);
  }

  return result;
}

unint64_t sub_1D19C60A0()
{
  result = qword_1EC648558;
  if (!qword_1EC648558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648558);
  }

  return result;
}

uint64_t sub_1D19C60F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D19C6154()
{
  result = qword_1EE07D0F8[0];
  if (!qword_1EE07D0F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE07D0F8);
  }

  return result;
}

uint64_t sub_1D19C61A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D19C6210(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D19C627C()
{
  result = qword_1EC648568;
  if (!qword_1EC648568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648568);
  }

  return result;
}

unint64_t sub_1D19C62D4()
{
  result = qword_1EC648570;
  if (!qword_1EC648570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648570);
  }

  return result;
}

unint64_t sub_1D19C6328()
{
  result = qword_1EC648578;
  if (!qword_1EC648578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648578);
  }

  return result;
}

unint64_t sub_1D19C6380()
{
  result = qword_1EC648580;
  if (!qword_1EC648580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648580);
  }

  return result;
}

void sub_1D19C648C()
{
  type metadata accessor for ClusterPath(319);
  if (v0 <= 0x3F)
  {
    sub_1D17BDF80(319, &qword_1EE07B600);
    if (v1 <= 0x3F)
    {
      sub_1D17BDF80(319, &qword_1EE07D1F0);
      if (v2 <= 0x3F)
      {
        sub_1D17BDF80(319, qword_1EE07C4A8);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for StaticDoorLockCluster.WalletKeyUWBApproachAngle(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    if ((a2 + 255) >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 255) >> 8 < 0xFF)
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
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (*(a1 + 1))
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else
    {
      v4 = a1[1];
      if (a1[1])
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }
  }

  return 0;
}

uint64_t storeEnumTagSinglePayload for StaticDoorLockCluster.WalletKeyUWBApproachAngle(uint64_t result, int a2, int a3)
{
  if ((a3 + 255) >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 255) >> 8 < 0xFF)
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
    v5 = ((a2 - 1) >> 8) + 1;
    *result = a2 - 1;
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
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *(result + 1) = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v4)
  {
    *(result + 1) = 0;
  }

  return result;
}

unint64_t sub_1D19C669C()
{
  result = qword_1EC648590;
  if (!qword_1EC648590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648590);
  }

  return result;
}

unint64_t sub_1D19C66F4()
{
  result = qword_1EC648598;
  if (!qword_1EC648598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648598);
  }

  return result;
}

unint64_t sub_1D19C674C()
{
  result = qword_1EC6485A0;
  if (!qword_1EC6485A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6485A0);
  }

  return result;
}

uint64_t sub_1D19C67A0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F6C65526F747561 && a2 == 0xEE00656D69546B63 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D1EC1DF0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001D1EC1E10 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000022 && 0x80000001D1EC1E30 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1D19C6958(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_1D19C69AC(uint64_t a1, int a2)
{
  v62 = a1;
  v2 = a2;
  v3 = a2;
  v4 = type metadata accessor for ClusterPath(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v60 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v3 == 30)
  {
    v2 = *(v61 + *(v6 + 20));
  }

  v8 = v62 + 64;
  v9 = 1 << *(v62 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v62 + 64);
  v12 = (v9 + 63) >> 6;
  HIDWORD(v57) = v2;
  v63 = v2 << 32;

  v13 = 0;
  v14 = MEMORY[0x1E69E7CC8];
  v58 = v12;
  v59 = v8;
  while (v11)
  {
LABEL_13:
    v20 = __clz(__rbit64(v11)) | (v13 << 6);
    v21 = *(v62 + 56);
    v64 = *(*(v62 + 48) + 4 * v20);
    v22 = v21 + 16 * v20;
    v23 = *v22;
    v24 = *(v22 + 8);
    v25 = v60;
    sub_1D19CBFE8(v61, v60, type metadata accessor for ClusterPath);
    v26 = *(v25 + *(type metadata accessor for EndpointPath(0) + 24));
    sub_1D1741AF8(v23, v24);
    sub_1D19CBE58(v25, type metadata accessor for ClusterPath);
    sub_1D1741AF8(v23, v24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v66 = v14;
    v29 = sub_1D171D15C(v26);
    v30 = v14[2];
    v31 = (v28 & 1) == 0;
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
      goto LABEL_34;
    }

    v33 = v28;
    if (v14[3] >= v32)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D1737DF0();
        v14 = v66;
      }
    }

    else
    {
      sub_1D172684C(v32, isUniquelyReferenced_nonNull_native);
      v14 = v66;
      v34 = sub_1D171D15C(v26);
      if ((v33 & 1) != (v35 & 1))
      {
        goto LABEL_39;
      }

      v29 = v34;
    }

    if ((v33 & 1) == 0)
    {
      v14[(v29 >> 6) + 8] |= 1 << v29;
      *(v14[6] + 2 * v29) = v26;
      *(v14[7] + 8 * v29) = MEMORY[0x1E69E7CC8];
      v36 = v14[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_36;
      }

      v14[2] = v38;
    }

    v39 = v14[7];
    v40 = *(v39 + 8 * v29);
    v41 = swift_isUniquelyReferenced_nonNull_native();
    v66 = *(v39 + 8 * v29);
    v42 = v66;
    *(v39 + 8 * v29) = 0x8000000000000000;
    v43 = sub_1D171D1A4(v63 | v64);
    v45 = v42[2];
    v46 = (v44 & 1) == 0;
    v37 = __OFADD__(v45, v46);
    v47 = v45 + v46;
    if (v37)
    {
      goto LABEL_35;
    }

    v48 = v44;
    if (v42[3] < v47)
    {
      sub_1D1726570(v47, v41);
      v43 = sub_1D171D1A4(v63 | v64);
      if ((v48 & 1) != (v49 & 1))
      {
        goto LABEL_38;
      }

LABEL_27:
      v50 = v66;
      if (v48)
      {
        goto LABEL_6;
      }

      goto LABEL_28;
    }

    if (v41)
    {
      goto LABEL_27;
    }

    v55 = v43;
    sub_1D1737C6C();
    v43 = v55;
    v50 = v66;
    if (v48)
    {
LABEL_6:
      v15 = v50[7] + 16 * v43;
      v16 = *v15;
      *v15 = v23;
      v17 = *(v15 + 8);
      *(v15 + 8) = v24;
      sub_1D1757AE8(v16, v17);
      goto LABEL_7;
    }

LABEL_28:
    v50[(v43 >> 6) + 8] |= 1 << v43;
    v51 = v50[6] + 8 * v43;
    *v51 = v64;
    *(v51 + 4) = BYTE4(v57);
    v52 = v50[7] + 16 * v43;
    *v52 = v23;
    *(v52 + 8) = v24;
    v53 = v50[2];
    v37 = __OFADD__(v53, 1);
    v54 = v53 + 1;
    if (v37)
    {
      goto LABEL_37;
    }

    v50[2] = v54;
LABEL_7:
    v11 &= v11 - 1;
    v18 = *(v39 + 8 * v29);
    *(v39 + 8 * v29) = v50;

    sub_1D1757AE8(v23, v24);
    v12 = v58;
    v8 = v59;
  }

  while (1)
  {
    v19 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v19 >= v12)
    {

      v65 = v14;
      v66 = MEMORY[0x1E69E7CC0];
      sub_1D1A1456C(&v65, &v66);

      return v66;
    }

    v11 = *(v8 + 8 * v19);
    ++v13;
    if (v11)
    {
      v13 = v19;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  sub_1D1E690FC();
  __break(1u);
LABEL_39:
  result = sub_1D1E690FC();
  __break(1u);
  return result;
}

uint64_t type metadata accessor for StaticLevelControlCluster()
{
  result = qword_1EE07BE60;
  if (!qword_1EE07BE60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

int *StaticLevelControlCluster.init(id:currentLevel:minLevel:maxLevel:onOffTransitionTime:onLevel:onTransitionTime:offTransitionTime:defaultMoveRate:startUpCurrentLevel:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, __int16 a3@<W2>, __int16 a4@<W3>, int a5@<W4>, __int16 a6@<W5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>, char a10, char a11, char a12, char a13)
{
  sub_1D190D804(a1, a9);
  result = type metadata accessor for StaticLevelControlCluster();
  *(a9 + result[5]) = a2;
  v22 = (a9 + result[6]);
  *v22 = a3;
  v22[1] = HIBYTE(a3) & 1;
  v23 = (a9 + result[7]);
  *v23 = a4;
  v23[1] = HIBYTE(a4) & 1;
  v24 = a9 + result[8];
  *v24 = a5;
  *(v24 + 2) = BYTE2(a5) & 1;
  v25 = (a9 + result[9]);
  *v25 = a6;
  v25[1] = HIBYTE(a6) & 1;
  v26 = a9 + result[10];
  *v26 = a7;
  *(v26 + 2) = BYTE2(a7) & 1;
  v27 = a9 + result[11];
  *v27 = a8;
  *(v27 + 2) = BYTE2(a8) & 1;
  v28 = (a9 + result[12]);
  *v28 = a10;
  v28[1] = a11 & 1;
  v29 = (a9 + result[13]);
  *v29 = a12;
  v29[1] = a13 & 1;
  return result;
}

unint64_t sub_1D19C716C(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000011;
    v6 = 0x4D746C7561666564;
    if (a1 != 8)
    {
      v6 = 0xD000000000000013;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x6C6576654C6E6FLL;
    if (a1 != 5)
    {
      v7 = 0xD000000000000010;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 25705;
    v2 = 0x6C6576654C6E696DLL;
    v3 = 0x6C6576654C78616DLL;
    if (a1 != 3)
    {
      v3 = 0xD000000000000013;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x4C746E6572727563;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1D19C72C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D19CC58C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D19C72FC(uint64_t a1)
{
  v2 = sub_1D19CBE04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D19C7338(uint64_t a1)
{
  v2 = sub_1D19CBE04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticLevelControlCluster.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6485A8, &qword_1D1E8D5B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v38 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D19CBE04();
  sub_1D1E6930C();
  v39 = 0;
  type metadata accessor for ClusterPath(0);
  sub_1D19CC338(&qword_1EC646D88, type metadata accessor for ClusterPath);
  sub_1D1E68F1C();
  if (!v2)
  {
    v11 = type metadata accessor for StaticLevelControlCluster();
    v12 = *(v3 + v11[5]);
    v39 = 1;
    sub_1D1E68F3C();
    v13 = (v3 + v11[6]);
    v14 = *v13;
    v15 = v13[1];
    v39 = 2;
    sub_1D1E68E8C();
    v16 = (v3 + v11[7]);
    v17 = *v16;
    v18 = v16[1];
    v39 = 3;
    sub_1D1E68E8C();
    v19 = (v3 + v11[8]);
    v20 = *v19;
    v21 = *(v19 + 2);
    v39 = 4;
    sub_1D1E68E9C();
    v22 = (v3 + v11[9]);
    v23 = *v22;
    v24 = v22[1];
    v39 = 5;
    sub_1D1E68E8C();
    v25 = (v3 + v11[10]);
    v26 = *v25;
    v27 = *(v25 + 2);
    v39 = 6;
    sub_1D1E68E9C();
    v28 = (v3 + v11[11]);
    v29 = *v28;
    v30 = *(v28 + 2);
    v39 = 7;
    sub_1D1E68E9C();
    v31 = (v3 + v11[12]);
    v32 = *v31;
    v33 = v31[1];
    v39 = 8;
    sub_1D1E68E8C();
    v34 = (v3 + v11[13]);
    v35 = *v34;
    v36 = v34[1];
    v39 = 9;
    sub_1D1E68E8C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t StaticLevelControlCluster.hash(into:)()
{
  sub_1D1E66A7C();
  sub_1D19CC338(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v1 = type metadata accessor for EndpointPath(0);
  MEMORY[0x1D3892890](*(v0 + *(v1 + 20)));
  v2 = *(v0 + *(v1 + 24));
  sub_1D1E6923C();
  v3 = dword_1D1E8D8F4[*(v0 + *(type metadata accessor for ClusterPath(0) + 20))];
  sub_1D1E6924C();
  v4 = type metadata accessor for StaticLevelControlCluster();
  v5 = *(v0 + v4[5]);
  sub_1D1E6922C();
  v6 = (v0 + v4[6]);
  if ((v6[1] & 1) == 0)
  {
    v7 = *v6;
    sub_1D1E6922C();
  }

  sub_1D1E6922C();
  v8 = (v0 + v4[7]);
  if ((v8[1] & 1) == 0)
  {
    v9 = *v8;
    sub_1D1E6922C();
  }

  sub_1D1E6922C();
  v10 = (v0 + v4[8]);
  if (*(v10 + 2) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    v11 = *v10;
    sub_1D1E6922C();
    sub_1D1E6923C();
  }

  v12 = (v0 + v4[9]);
  if ((v12[1] & 1) == 0)
  {
    v13 = *v12;
    sub_1D1E6922C();
  }

  sub_1D1E6922C();
  v14 = (v0 + v4[10]);
  if (*(v14 + 2) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    v15 = *v14;
    sub_1D1E6922C();
    sub_1D1E6923C();
  }

  v16 = (v0 + v4[11]);
  if (*(v16 + 2) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    v17 = *v16;
    sub_1D1E6922C();
    sub_1D1E6923C();
  }

  v18 = (v0 + v4[12]);
  if ((v18[1] & 1) == 0)
  {
    v19 = *v18;
    sub_1D1E6922C();
  }

  sub_1D1E6922C();
  v20 = (v0 + v4[13]);
  if ((v20[1] & 1) == 0)
  {
    v21 = *v20;
    sub_1D1E6922C();
  }

  return sub_1D1E6922C();
}

uint64_t StaticLevelControlCluster.hashValue.getter()
{
  sub_1D1E6920C();
  StaticLevelControlCluster.hash(into:)();
  return sub_1D1E6926C();
}

uint64_t StaticLevelControlCluster.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v4 = type metadata accessor for ClusterPath(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6485B8, &qword_1D1E8D5B8);
  v36 = *(v38 - 8);
  v8 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v10 = &v35 - v9;
  v11 = type metadata accessor for StaticLevelControlCluster();
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v16 = a1[4];
  v39 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_1D19CBE04();
  v37 = v10;
  sub_1D1E692FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v39);
  }

  v17 = v36;
  v49 = 0;
  sub_1D19CC338(&qword_1EC646DC0, type metadata accessor for ClusterPath);
  sub_1D1E68D7C();
  sub_1D190D804(v7, v14);
  v48 = 1;
  v14[v11[5]] = sub_1D1E68D9C();
  v47 = 2;
  v18 = sub_1D1E68CEC();
  v19 = &v14[v11[6]];
  *v19 = v18;
  v19[1] = HIBYTE(v18) & 1;
  v46 = 3;
  v20 = sub_1D1E68CEC();
  v21 = &v14[v11[7]];
  *v21 = v20;
  v21[1] = HIBYTE(v20) & 1;
  v45 = 4;
  v22 = sub_1D1E68CFC();
  v23 = &v14[v11[8]];
  *v23 = v22;
  v23[2] = BYTE2(v22) & 1;
  v44 = 5;
  v24 = sub_1D1E68CEC();
  v25 = &v14[v11[9]];
  *v25 = v24;
  v25[1] = HIBYTE(v24) & 1;
  v43 = 6;
  v26 = sub_1D1E68CFC();
  v27 = &v14[v11[10]];
  *v27 = v26;
  v27[2] = BYTE2(v26) & 1;
  v42 = 7;
  v28 = sub_1D1E68CFC();
  v29 = &v14[v11[11]];
  *v29 = v28;
  v29[2] = BYTE2(v28) & 1;
  v41 = 8;
  v30 = sub_1D1E68CEC();
  v32 = &v14[v11[12]];
  *v32 = v30;
  v32[1] = HIBYTE(v30) & 1;
  v40 = 9;
  v33 = sub_1D1E68CEC();
  (*(v17 + 8))(v37, v38);
  v34 = &v14[v11[13]];
  *v34 = v33;
  v34[1] = HIBYTE(v33) & 1;
  sub_1D19CBFE8(v14, v35, type metadata accessor for StaticLevelControlCluster);
  __swift_destroy_boxed_opaque_existential_1(v39);
  return sub_1D19CBE58(v14, type metadata accessor for StaticLevelControlCluster);
}

uint64_t sub_1D19C7EB0()
{
  sub_1D1E6920C();
  StaticLevelControlCluster.hash(into:)();
  return sub_1D1E6926C();
}

uint64_t sub_1D19C7EF4()
{
  sub_1D1E6920C();
  StaticLevelControlCluster.hash(into:)();
  return sub_1D1E6926C();
}

uint64_t sub_1D19C7F98()
{
  v1 = type metadata accessor for StaticLevelControlCluster();
  if (*(v0 + *(v1 + 20)))
  {
    return sub_1D19CB618(1, 0.0, 100.0, *(v0 + *(v1 + 20)) / 254.0 * 100.0);
  }

  else
  {
    return static String.hfLocalized(_:)(0xD000000000000022, 0x80000001D1EC1E60);
  }
}

uint64_t sub_1D19C801C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ClusterPath(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v50 - v11;
  v13 = type metadata accessor for StaticLevelControlCluster();
  v14 = *(v13 - 1);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a2;
  v18 = a2[1];
  sub_1D19CBFE8(a1, v17, type metadata accessor for ClusterPath);
  sub_1D19CBFE8(a1, v12, type metadata accessor for ClusterPath);
  v20 = sub_1D1912E6C(0, v12, v19, v18);
  sub_1D19CBE58(v12, type metadata accessor for ClusterPath);
  v52 = a3;
  if ((v20 & 0x100) != 0)
  {

    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v38 = sub_1D1E6709C();
    __swift_project_value_buffer(v38, qword_1EE07A0B0);
    sub_1D19CBFE8(a1, v10, type metadata accessor for ClusterPath);
    v39 = sub_1D1E6707C();
    v40 = sub_1D1E6833C();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v51 = v14;
      v43 = v42;
      v53 = v42;
      *v41 = 136446210;
      v44 = ClusterPath.description.getter();
      v46 = v45;
      sub_1D19CBE58(v10, type metadata accessor for ClusterPath);
      v47 = sub_1D1B1312C(v44, v46, &v53);

      *(v41 + 4) = v47;
      _os_log_impl(&dword_1D16EC000, v39, v40, "Couldn't get value for current level attribute '%{public}s'", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v43);
      v48 = v43;
      v14 = v51;
      MEMORY[0x1D3893640](v48, -1, -1);
      MEMORY[0x1D3893640](v41, -1, -1);

      v49 = a1;
    }

    else
    {

      sub_1D19CBE58(a1, type metadata accessor for ClusterPath);
      v49 = v10;
    }

    sub_1D19CBE58(v49, type metadata accessor for ClusterPath);
    sub_1D19CBE58(v17, type metadata accessor for ClusterPath);
    return (*(v14 + 56))(v52, 1, 1, v13);
  }

  else
  {
    v17[v13[5]] = v20;
    sub_1D19CBFE8(a1, v12, type metadata accessor for ClusterPath);
    v21 = v14;
    v22 = sub_1D1912E6C(2, v12, v19, v18);
    sub_1D19CBE58(v12, type metadata accessor for ClusterPath);
    v23 = &v17[v13[6]];
    *v23 = v22;
    v23[1] = HIBYTE(v22) & 1;
    sub_1D19CBFE8(a1, v12, type metadata accessor for ClusterPath);
    v24 = sub_1D1912E6C(3, v12, v19, v18);
    sub_1D19CBE58(v12, type metadata accessor for ClusterPath);
    v25 = &v17[v13[7]];
    *v25 = v24;
    v25[1] = HIBYTE(v24) & 1;
    sub_1D19CBFE8(a1, v12, type metadata accessor for ClusterPath);
    v26 = sub_1D18F5A60(16, v12, v19, v18);
    sub_1D19CBE58(v12, type metadata accessor for ClusterPath);
    v27 = &v17[v13[8]];
    *v27 = v26;
    v27[2] = BYTE2(v26) & 1;
    sub_1D19CBFE8(a1, v12, type metadata accessor for ClusterPath);
    LOWORD(v26) = sub_1D1912E6C(17, v12, v19, v18);
    sub_1D19CBE58(v12, type metadata accessor for ClusterPath);
    v28 = &v17[v13[9]];
    *v28 = v26;
    v28[1] = BYTE1(v26) & 1;
    sub_1D19CBFE8(a1, v12, type metadata accessor for ClusterPath);
    v29 = sub_1D18F5A60(18, v12, v19, v18);
    sub_1D19CBE58(v12, type metadata accessor for ClusterPath);
    v30 = &v17[v13[10]];
    *v30 = v29;
    v30[2] = BYTE2(v29) & 1;
    sub_1D19CBFE8(a1, v12, type metadata accessor for ClusterPath);
    v31 = sub_1D18F5A60(19, v12, v19, v18);
    sub_1D19CBE58(v12, type metadata accessor for ClusterPath);
    v32 = &v17[v13[11]];
    *v32 = v31;
    v32[2] = BYTE2(v31) & 1;
    sub_1D19CBFE8(a1, v12, type metadata accessor for ClusterPath);
    LOWORD(v31) = sub_1D1912E6C(20, v12, v19, v18);
    sub_1D19CBE58(v12, type metadata accessor for ClusterPath);
    v33 = &v17[v13[12]];
    *v33 = v31;
    v33[1] = BYTE1(v31) & 1;
    sub_1D19CBFE8(a1, v12, type metadata accessor for ClusterPath);
    v34 = sub_1D1912E6C(0x4000, v12, v19, v18);

    sub_1D19CBE58(a1, type metadata accessor for ClusterPath);
    sub_1D19CBE58(v12, type metadata accessor for ClusterPath);
    v35 = &v17[v13[13]];
    *v35 = v34;
    v35[1] = HIBYTE(v34) & 1;
    v36 = v52;
    sub_1D19CBFE8(v17, v52, type metadata accessor for StaticLevelControlCluster);
    (*(v21 + 56))(v36, 0, 1, v13);
    return sub_1D19CBE58(v17, type metadata accessor for StaticLevelControlCluster);
  }
}

uint64_t StaticLevelControlCluster.setOnLevel(_:)(char a1)
{
  *(v2 + 160) = a1;
  sub_1D1741B10(0, &qword_1EC6485C0, 0x1E696F5A8);
  v3 = swift_task_alloc();
  *(v2 + 144) = v3;
  *v3 = v2;
  v3[1] = sub_1D19C873C;

  return sub_1D1A092C4(v1);
}

uint64_t sub_1D19C873C(uint64_t a1)
{
  v2 = *(*v1 + 144);
  v4 = *v1;
  *(*v1 + 152) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D19C883C, 0, 0);
}

uint64_t sub_1D19C883C()
{
  v1 = *(v0 + 152);
  if (v1)
  {
    v2 = *(v0 + 160);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648318, &unk_1D1E8D030);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D1E73A90;
    v4 = *MEMORY[0x1E696F550];
    *(inited + 32) = sub_1D1E6781C();
    *(inited + 40) = v5;
    v6 = *MEMORY[0x1E696F560];
    v7 = sub_1D1E6781C();
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 48) = v7;
    *(inited + 56) = v8;
    v9 = *MEMORY[0x1E696F568];
    *(inited + 80) = sub_1D1E6781C();
    *(inited + 88) = v10;
    v11 = sub_1D1E691BC();
    *(inited + 120) = sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
    *(inited + 96) = v11;
    sub_1D18D6538(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646238, &qword_1D1E7E8D0);
    swift_arrayDestroy();
    v12 = sub_1D1E675DC();

    if (qword_1EC6422E8 != -1)
    {
      swift_once();
    }

    v13 = qword_1EC649398;
    if (qword_1EC649398)
    {
      v14 = qword_1EC649398;
    }

    else
    {
      v14 = sub_1D1E684DC();
      v13 = 0;
    }

    v15 = v13;
    [v1 writeAttributeOnLevelWithValue:v12 expectedValueInterval:v14];
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t StaticLevelControlCluster.setOnOffTransitionTime(_:)(__int16 a1)
{
  *(v2 + 160) = a1;
  sub_1D1741B10(0, &qword_1EC6485C0, 0x1E696F5A8);
  v3 = swift_task_alloc();
  *(v2 + 144) = v3;
  *v3 = v2;
  v3[1] = sub_1D19C8AF0;

  return sub_1D1A092C4(v1);
}

uint64_t sub_1D19C8AF0(uint64_t a1)
{
  v2 = *(*v1 + 144);
  v4 = *v1;
  *(*v1 + 152) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D19C8BF0, 0, 0);
}

uint64_t sub_1D19C8BF0()
{
  v1 = *(v0 + 152);
  if (v1)
  {
    v2 = *(v0 + 160);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648318, &unk_1D1E8D030);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D1E73A90;
    v4 = *MEMORY[0x1E696F550];
    *(inited + 32) = sub_1D1E6781C();
    *(inited + 40) = v5;
    v6 = *MEMORY[0x1E696F560];
    v7 = sub_1D1E6781C();
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 48) = v7;
    *(inited + 56) = v8;
    v9 = *MEMORY[0x1E696F568];
    *(inited + 80) = sub_1D1E6781C();
    *(inited + 88) = v10;
    v11 = sub_1D1E692AC();
    *(inited + 120) = sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
    *(inited + 96) = v11;
    sub_1D18D6538(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646238, &qword_1D1E7E8D0);
    swift_arrayDestroy();
    v12 = sub_1D1E675DC();

    if (qword_1EC6422E8 != -1)
    {
      swift_once();
    }

    v13 = qword_1EC649398;
    if (qword_1EC649398)
    {
      v14 = qword_1EC649398;
    }

    else
    {
      v14 = sub_1D1E684DC();
      v13 = 0;
    }

    v15 = v13;
    [v1 writeAttributeOnOffTransitionTimeWithValue:v12 expectedValueInterval:v14];
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t StaticLevelControlCluster.cluster.getter()
{
  sub_1D1741B10(0, &qword_1EC6485C0, 0x1E696F5A8);
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1D19C8EA0;

  return sub_1D1A092C4(v0);
}

uint64_t sub_1D19C8EA0(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t StaticLevelControlCluster.moveToLevel(level:)(char a1)
{
  *(v2 + 88) = v1;
  *(v2 + 184) = a1;
  v3 = type metadata accessor for ClusterPath(0);
  *(v2 + 96) = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  *(v2 + 104) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D19C9034, 0, 0);
}

uint64_t sub_1D19C9034()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 184);
  v3 = [objc_allocWithZone(MEMORY[0x1E696F640]) init];
  *(v0 + 112) = v3;
  v4 = sub_1D1E691BC();
  [v3 setLevel_];

  sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
  v5 = sub_1D1E684DC();
  [v3 setTransitionTime_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6474E0, &unk_1D1E8D5E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E739C0;
  *(inited + 32) = 0;
  v7 = inited + 32;
  *(inited + 40) = v2;
  *(inited + 48) = 1;
  v8 = sub_1D18D6FA8(inited);
  swift_setDeallocating();
  sub_1D19CBEB8(v7);
  v9 = sub_1D19C69AC(v8, 30);

  *(v0 + 120) = sub_1D18F9814(v9);

  sub_1D1741B10(0, &qword_1EC6485C0, 0x1E696F5A8);
  v10 = swift_task_alloc();
  *(v0 + 128) = v10;
  *v10 = v0;
  v10[1] = sub_1D19C9200;
  v11 = *(v0 + 88);

  return sub_1D1A092C4(v11);
}

uint64_t sub_1D19C9200(uint64_t a1)
{
  v2 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D19C9300, 0, 0);
}

uint64_t sub_1D19C9300()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = sub_1D18F95CC(v0[15]);
  v0[18] = v3;

  v4 = swift_allocObject();
  v0[19] = v4;
  *(v4 + 16) = v1;
  v5 = v1;
  v6 = ClusterPath.description.getter();
  MEMORY[0x1D3890F70](v6);

  v0[20] = 0x80000001D1EC1EB0;
  v7 = swift_task_alloc();
  v0[21] = v7;
  *v7 = v0;
  v7[1] = sub_1D19C9474;
  v8 = v0[17];

  return sub_1D1916C78(0xD000000000000014, 0x80000001D1EC1E90, v8, v3, 0xD00000000000001ALL, 0x80000001D1EC1EB0, &unk_1D1E8D5F8, v4);
}

uint64_t sub_1D19C9474()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;
  v2[22] = v0;

  v5 = v2[20];
  if (v0)
  {
    v6 = v2[18];

    v7 = sub_1D19C9640;
  }

  else
  {
    v9 = v2[18];
    v8 = v2[19];
    v10 = v2[17];

    v7 = sub_1D19C95D4;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D19C95D4()
{
  v1 = *(v0 + 104);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D19C9640()
{
  v1 = *(v0 + 176);
  *(v0 + 72) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
  type metadata accessor for MTRError(0);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 96);
    v3 = *(v0 + 104);
    v5 = *(v0 + 88);

    v6 = *(v0 + 80);
    sub_1D19CBFE8(v5, v3, type metadata accessor for ClusterPath);
    v7 = type metadata accessor for MatterCommandError.MatterError();
    sub_1D19CC338(&qword_1EC646F00, type metadata accessor for MatterCommandError.MatterError);
    swift_allocError();
    v9 = v8;
    v10 = v7[7];
    v11 = type metadata accessor for StaticEndpoint();
    (*(*(v11 - 8) + 56))(&v9[v10], 1, 1, v11);
    *v9 = v6;
    sub_1D19CBFE8(v3, &v9[v7[5]], type metadata accessor for EndpointPath);
    LOBYTE(v10) = *(v3 + *(v4 + 20));
    v12 = v6;
    sub_1D19CBE58(v3, type metadata accessor for ClusterPath);
    v9[v7[6]] = v10;
    swift_willThrow();
  }

  v13 = *(v0 + 152);
  v14 = *(v0 + 136);
  v15 = *(v0 + 104);
  v16 = *(v0 + 112);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1D19C9864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[21] = a4;
  v5[22] = a5;
  v5[19] = a2;
  v5[20] = a3;
  v5[18] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D19C988C, 0, 0);
}

uint64_t sub_1D19C988C()
{
  v1 = v0[20];
  if (v1)
  {
    sub_1D18F9814(v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
    v2 = sub_1D1E67BFC();
  }

  else
  {
    v2 = 0;
  }

  v0[23] = v2;
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[19];
  v0[2] = v0;
  v0[3] = sub_1D191CA34;
  v6 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D17B04C8;
  v0[13] = &block_descriptor_45;
  v0[14] = v6;
  [v5 moveToLevelWithOnOffWithParams:v3 expectedValues:v2 expectedValueInterval:v4 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t StaticLevelControlCluster.move(direction:)(char a1)
{
  *(v2 + 32) = v1;
  *(v2 + 112) = a1;
  v3 = type metadata accessor for ClusterPath(0);
  *(v2 + 40) = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  *(v2 + 48) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D19C9A9C, 0, 0);
}

uint64_t sub_1D19C9A9C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 112);
  v3 = [objc_allocWithZone(MEMORY[0x1E696F648]) init];
  *(v0 + 56) = v3;
  v4 = sub_1D1E691BC();
  [v3 setMoveMode_];

  sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
  v5 = sub_1D1E684DC();
  [v3 setRate_];

  v6 = sub_1D18D6FA8(MEMORY[0x1E69E7CC0]);
  v7 = sub_1D19C69AC(v6, 30);

  sub_1D18F9814(v7);

  sub_1D1741B10(0, &qword_1EC6485C0, 0x1E696F5A8);
  v8 = swift_task_alloc();
  *(v0 + 64) = v8;
  *v8 = v0;
  v8[1] = sub_1D19C9C1C;
  v9 = *(v0 + 32);

  return sub_1D1A092C4(v9);
}

uint64_t sub_1D19C9C1C(uint64_t a1)
{
  v2 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 72) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D19C9D1C, 0, 0);
}

uint64_t sub_1D19C9D1C()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = swift_allocObject();
  v0[10] = v3;
  *(v3 + 16) = v1;
  v4 = v1;
  v5 = ClusterPath.description.getter();
  MEMORY[0x1D3890F70](v5);

  v0[11] = 0x80000001D1EC1EB0;
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_1D19C9E78;
  v7 = v0[9];

  return sub_1D1916C78(0x6874695765766F6DLL, 0xED000066664F6E4FLL, v7, 0, 0xD00000000000001ALL, 0x80000001D1EC1EB0, &unk_1D1E8D618, v3);
}

uint64_t sub_1D19C9E78()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;
  v2[13] = v0;

  v5 = v2[11];
  if (v0)
  {

    v6 = sub_1D19CA02C;
  }

  else
  {
    v8 = v2[9];
    v7 = v2[10];

    v6 = sub_1D19C9FC0;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1D19C9FC0()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D19CA02C()
{
  v1 = *(v0 + 104);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
  type metadata accessor for MTRError(0);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 40);
    v3 = *(v0 + 48);
    v5 = *(v0 + 32);

    v6 = *(v0 + 24);
    sub_1D19CBFE8(v5, v3, type metadata accessor for ClusterPath);
    v7 = type metadata accessor for MatterCommandError.MatterError();
    sub_1D19CC338(&qword_1EC646F00, type metadata accessor for MatterCommandError.MatterError);
    swift_allocError();
    v9 = v8;
    v10 = v7[7];
    v11 = type metadata accessor for StaticEndpoint();
    (*(*(v11 - 8) + 56))(&v9[v10], 1, 1, v11);
    *v9 = v6;
    sub_1D19CBFE8(v3, &v9[v7[5]], type metadata accessor for EndpointPath);
    LOBYTE(v10) = *(v3 + *(v4 + 20));
    v12 = v6;
    sub_1D19CBE58(v3, type metadata accessor for ClusterPath);
    v9[v7[6]] = v10;
    swift_willThrow();
  }

  v14 = *(v0 + 72);
  v13 = *(v0 + 80);
  v15 = *(v0 + 48);
  v16 = *(v0 + 56);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1D19CA24C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a2;
  v5[20] = a5;
  v5[18] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D19CA270, 0, 0);
}

uint64_t sub_1D19CA270()
{
  v2 = v0[19];
  v1 = v0[20];
  v0[2] = v0;
  v0[3] = sub_1D19CA398;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D17B04C8;
  v0[13] = &block_descriptor_41;
  v0[14] = v3;
  [v2 moveWithOnOffWithParams:v1 expectedValues:0 expectedValueInterval:0 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D19CA398()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  if (v2)
  {
    v3 = sub_1D19CA4D4;
  }

  else
  {
    v3 = sub_1D19CA4A8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D19CA4D4()
{
  v1 = *(v0 + 168);
  swift_willThrow();
  v2 = *(v0 + 8);
  v3 = *(v0 + 168);

  return v2();
}

uint64_t StaticLevelControlCluster.step(mode:)(char a1)
{
  *(v2 + 88) = v1;
  *(v2 + 168) = a1;
  v3 = type metadata accessor for ClusterPath(0);
  *(v2 + 96) = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  *(v2 + 104) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D19CA5D8, 0, 0);
}

uint64_t sub_1D19CA5D8()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 168);
  v3 = [objc_allocWithZone(MEMORY[0x1E696F650]) init];
  *(v0 + 112) = v3;
  v4 = sub_1D1E691BC();
  [v3 setStepMode_];

  v5 = sub_1D1E6821C();
  [v3 setStepSize_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6474E0, &unk_1D1E8D5E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E739C0;
  *(inited + 32) = 0;
  v7 = type metadata accessor for StaticLevelControlCluster();
  v8 = -5;
  if (v2 != 1)
  {
    v8 = 5;
  }

  *(inited + 40) = v8 + *(v1 + *(v7 + 20));
  *(inited + 48) = 1;
  v9 = sub_1D18D6FA8(inited);
  swift_setDeallocating();
  sub_1D19CBEB8(inited + 32);
  v10 = sub_1D19C69AC(v9, 30);

  sub_1D18F9814(v10);

  sub_1D1741B10(0, &qword_1EC6485C0, 0x1E696F5A8);
  v11 = swift_task_alloc();
  *(v0 + 120) = v11;
  *v11 = v0;
  v11[1] = sub_1D19CA7A8;
  v12 = *(v0 + 88);

  return sub_1D1A092C4(v12);
}

uint64_t sub_1D19CA7A8(uint64_t a1)
{
  v2 = *(*v1 + 120);
  v4 = *v1;
  *(*v1 + 128) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D19CA8A8, 0, 0);
}

uint64_t sub_1D19CA8A8()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = swift_allocObject();
  v0[17] = v3;
  *(v3 + 16) = v1;
  v4 = v1;
  v5 = ClusterPath.description.getter();
  MEMORY[0x1D3890F70](v5);

  v0[18] = 0x80000001D1EC1EB0;
  v6 = swift_task_alloc();
  v0[19] = v6;
  *v6 = v0;
  v6[1] = sub_1D19CAA04;
  v7 = v0[16];

  return sub_1D1916C78(0x6874695770657473, 0xED000066664F6E4FLL, v7, 0, 0xD00000000000001ALL, 0x80000001D1EC1EB0, &unk_1D1E8D630, v3);
}

uint64_t sub_1D19CAA04()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *v1;
  v2[20] = v0;

  v5 = v2[18];
  if (v0)
  {

    v6 = sub_1D19CAB4C;
  }

  else
  {
    v8 = v2[16];
    v7 = v2[17];

    v6 = sub_1D19CC8FC;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1D19CAB4C()
{
  v1 = *(v0 + 160);
  *(v0 + 72) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
  type metadata accessor for MTRError(0);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 96);
    v3 = *(v0 + 104);
    v5 = *(v0 + 88);

    v6 = *(v0 + 80);
    sub_1D19CBFE8(v5, v3, type metadata accessor for ClusterPath);
    v7 = type metadata accessor for MatterCommandError.MatterError();
    sub_1D19CC338(&qword_1EC646F00, type metadata accessor for MatterCommandError.MatterError);
    swift_allocError();
    v9 = v8;
    v10 = v7[7];
    v11 = type metadata accessor for StaticEndpoint();
    (*(*(v11 - 8) + 56))(&v9[v10], 1, 1, v11);
    *v9 = v6;
    sub_1D19CBFE8(v3, &v9[v7[5]], type metadata accessor for EndpointPath);
    LOBYTE(v10) = *(v3 + *(v4 + 20));
    v12 = v6;
    sub_1D19CBE58(v3, type metadata accessor for ClusterPath);
    v9[v7[6]] = v10;
    swift_willThrow();
  }

  v14 = *(v0 + 128);
  v13 = *(v0 + 136);
  v15 = *(v0 + 104);
  v16 = *(v0 + 112);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1D19CAD6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a2;
  v5[20] = a5;
  v5[18] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D19CAD90, 0, 0);
}

uint64_t sub_1D19CAD90()
{
  v2 = v0[19];
  v1 = v0[20];
  v0[2] = v0;
  v0[3] = sub_1D19CAEB8;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D17B04C8;
  v0[13] = &block_descriptor_37;
  v0[14] = v3;
  [v2 stepWithOnOffWithParams:v1 expectedValues:0 expectedValueInterval:0 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D19CAEB8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  if (v2)
  {
    v3 = sub_1D19CC918;
  }

  else
  {
    v3 = sub_1D19CC920;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t StaticLevelControlCluster.stop()()
{
  v1[4] = v0;
  v2 = type metadata accessor for ClusterPath(0);
  v1[5] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D19CB05C, 0, 0);
}

uint64_t sub_1D19CB05C()
{
  v0[7] = [objc_allocWithZone(MEMORY[0x1E696F658]) init];
  sub_1D1741B10(0, &qword_1EC6485C0, 0x1E696F5A8);
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_1D19CB128;
  v2 = v0[4];

  return sub_1D1A092C4(v2);
}

uint64_t sub_1D19CB128(uint64_t a1)
{
  v2 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 72) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D19CB228, 0, 0);
}

uint64_t sub_1D19CB228()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = swift_allocObject();
  v0[10] = v3;
  *(v3 + 16) = v1;
  v4 = v1;
  v5 = ClusterPath.description.getter();
  MEMORY[0x1D3890F70](v5);

  v0[11] = 0x80000001D1EC1EB0;
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_1D19CB384;
  v7 = v0[9];

  return sub_1D1916C78(0x68746957706F7473, 0xED000066664F6E4FLL, v7, 0, 0xD00000000000001ALL, 0x80000001D1EC1EB0, &unk_1D1E8D648, v3);
}

uint64_t sub_1D19CB384()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;
  v2[13] = v0;

  v5 = v2[11];
  if (v0)
  {

    v6 = sub_1D19CC914;
  }

  else
  {
    v8 = v2[9];
    v7 = v2[10];

    v6 = sub_1D19CC900;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1D19CB4CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a2;
  v5[20] = a5;
  v5[18] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D19CB4F0, 0, 0);
}

uint64_t sub_1D19CB4F0()
{
  v2 = v0[19];
  v1 = v0[20];
  v0[2] = v0;
  v0[3] = sub_1D19CAEB8;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D17B04C8;
  v0[13] = &block_descriptor_26;
  v0[14] = v3;
  [v2 stopWithOnOffWithParams:v1 expectedValues:0 expectedValueInterval:0 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D19CB618(int a1, double a2, double a3, double a4)
{
  v47 = a1;
  v7 = sub_1D1E68FFC();
  v43 = *(v7 - 8);
  v44 = v7;
  v8 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v42 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C60, &unk_1D1E77540);
  v46 = *(v10 - 8);
  v11 = *(v46 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v42 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v45 = &v42 - v18;
  v48 = sub_1D1E6673C();
  v19 = *(v48 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v22 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1D1E66ADC();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6485E8, &qword_1D1EA1860);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x1EEE9AC00](v25);
  v30 = &v42 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v42 - v31;
  if (a2 > a4)
  {
    v33 = a2;
  }

  else
  {
    v33 = a4;
  }

  if (v33 > a3)
  {
    v33 = a3;
  }

  v34 = (v33 - a2) / (a3 - a2);
  if (v47)
  {
    v49 = v34;
    sub_1D1E66ABC();
    sub_1D173FC5C();
    sub_1D1E6665C();
    sub_1D1E6672C();
    MEMORY[0x1D388FCA0](v22, v25);
    (*(v19 + 8))(v22, v48);
    v35 = *(v26 + 8);
    v35(v30, v25);
    sub_1D17D8EA8(&qword_1EC6485F0, &qword_1EC6485E8, &qword_1D1EA1860);
    sub_1D1E675AC();
    v35(v32, v25);
  }

  else
  {
    v49 = v34 * 100.0;
    sub_1D1E66ABC();
    sub_1D173FC5C();
    sub_1D1E6662C();
    v37 = v42;
    v36 = v43;
    v38 = v44;
    (*(v43 + 104))(v42, *MEMORY[0x1E69E7030], v44);
    MEMORY[0x1D388FCB0](v37, 0, 1, v10);
    (*(v36 + 8))(v37, v38);
    v39 = *(v46 + 8);
    v39(v14, v10);
    sub_1D1E6672C();
    v40 = v45;
    MEMORY[0x1D388FCE0](v22, v10);
    (*(v19 + 8))(v22, v48);
    v39(v17, v10);
    sub_1D17D8EA8(&qword_1EC644C80, &qword_1EC644C60, &unk_1D1E77540);
    sub_1D1E675AC();
    v39(v40, v10);
  }

  return v50;
}

BOOL _s13HomeDataModel25StaticLevelControlClusterV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for EndpointPath(0);
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  if (*(a1 + *(v4 + 24)) != *(a2 + *(v4 + 24)))
  {
    return 0;
  }

  v5 = type metadata accessor for ClusterPath(0);
  if (dword_1D1E8D8F4[*(a1 + *(v5 + 20))] != dword_1D1E8D8F4[*(a2 + *(v5 + 20))])
  {
    return 0;
  }

  v6 = type metadata accessor for StaticLevelControlCluster();
  if (*(a1 + v6[5]) != *(a2 + v6[5]))
  {
    return 0;
  }

  v7 = v6[6];
  v8 = (a1 + v7);
  v9 = *(a1 + v7 + 1);
  v10 = (a2 + v7);
  v11 = *(a2 + v7 + 1);
  if (v9)
  {
    if (!v11)
    {
      return 0;
    }
  }

  else
  {
    if (*v8 != *v10)
    {
      LOBYTE(v11) = 1;
    }

    if (v11)
    {
      return 0;
    }
  }

  v12 = v6[7];
  v13 = (a1 + v12);
  v14 = *(a1 + v12 + 1);
  v15 = (a2 + v12);
  v16 = *(a2 + v12 + 1);
  if (v14)
  {
    if (!v16)
    {
      return 0;
    }
  }

  else
  {
    if (*v13 != *v15)
    {
      LOBYTE(v16) = 1;
    }

    if (v16)
    {
      return 0;
    }
  }

  v17 = v6[8];
  v18 = (a1 + v17);
  v19 = *(a1 + v17 + 2);
  v20 = (a2 + v17);
  v21 = *(a2 + v17 + 2);
  if (v19)
  {
    if (!v21)
    {
      return 0;
    }
  }

  else
  {
    if (*v18 != *v20)
    {
      LOBYTE(v21) = 1;
    }

    if (v21)
    {
      return 0;
    }
  }

  v22 = v6[9];
  v23 = (a1 + v22);
  v24 = *(a1 + v22 + 1);
  v25 = (a2 + v22);
  v26 = *(a2 + v22 + 1);
  if (v24)
  {
    if (!v26)
    {
      return 0;
    }
  }

  else
  {
    if (*v23 != *v25)
    {
      LOBYTE(v26) = 1;
    }

    if (v26)
    {
      return 0;
    }
  }

  v27 = v6[10];
  v28 = (a1 + v27);
  v29 = *(a1 + v27 + 2);
  v30 = (a2 + v27);
  v31 = *(a2 + v27 + 2);
  if (v29)
  {
    if (!v31)
    {
      return 0;
    }
  }

  else
  {
    if (*v28 != *v30)
    {
      LOBYTE(v31) = 1;
    }

    if (v31)
    {
      return 0;
    }
  }

  v32 = v6[11];
  v33 = (a1 + v32);
  v34 = *(a1 + v32 + 2);
  v35 = (a2 + v32);
  v36 = *(a2 + v32 + 2);
  if (v34)
  {
    if (!v36)
    {
      return 0;
    }
  }

  else
  {
    if (*v33 != *v35)
    {
      LOBYTE(v36) = 1;
    }

    if (v36)
    {
      return 0;
    }
  }

  v37 = v6[12];
  v38 = (a1 + v37);
  v39 = *(a1 + v37 + 1);
  v40 = (a2 + v37);
  v41 = *(a2 + v37 + 1);
  if (v39)
  {
    if (!v41)
    {
      return 0;
    }
  }

  else
  {
    if (*v38 != *v40)
    {
      LOBYTE(v41) = 1;
    }

    if (v41)
    {
      return 0;
    }
  }

  v42 = v6[13];
  v43 = (a1 + v42);
  v44 = *(a1 + v42 + 1);
  v45 = (a2 + v42);
  v46 = *(a2 + v42 + 1);
  if ((v44 & 1) == 0)
  {
    if (*v43 != *v45)
    {
      v46 = 1;
    }

    return (v46 & 1) == 0;
  }

  return (v46 & 1) != 0;
}

unint64_t sub_1D19CBE04()
{
  result = qword_1EC6485B0;
  if (!qword_1EC6485B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6485B0);
  }

  return result;
}

uint64_t sub_1D19CBE58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D19CBEB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6474E8, &unk_1D1E86820);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D19CBF20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(v4 + 16);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1D17C4BFC;

  return sub_1D19C9864(a1, a2, a3, a4, v10);
}

uint64_t sub_1D19CBFE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D19CC050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(v4 + 16);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1D17C4CF0;

  return sub_1D19CA24C(a1, a2, a3, a4, v10);
}

uint64_t sub_1D19CC118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(v4 + 16);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1D17C4CF0;

  return sub_1D19CAD6C(a1, a2, a3, a4, v10);
}

uint64_t sub_1D19CC1E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(v4 + 16);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1D17C4CF0;

  return sub_1D19CB4CC(a1, a2, a3, a4, v10);
}

uint64_t sub_1D19CC338(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D19CC3A8()
{
  type metadata accessor for ClusterPath(319);
  if (v0 <= 0x3F)
  {
    sub_1D17BDF80(319, &qword_1EE07B608);
    if (v1 <= 0x3F)
    {
      sub_1D17BDF80(319, &qword_1EE07D1D0);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1D19CC488()
{
  result = qword_1EC6485D0;
  if (!qword_1EC6485D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6485D0);
  }

  return result;
}

unint64_t sub_1D19CC4E0()
{
  result = qword_1EC6485D8;
  if (!qword_1EC6485D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6485D8);
  }

  return result;
}

unint64_t sub_1D19CC538()
{
  result = qword_1EC6485E0;
  if (!qword_1EC6485E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6485E0);
  }

  return result;
}

uint64_t sub_1D19CC58C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4C746E6572727563 && a2 == 0xEC0000006C657665 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C6576654C6E696DLL && a2 == 0xE800000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C6576654C78616DLL && a2 == 0xE800000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D1EC1ED0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6C6576654C6E6FLL && a2 == 0xE700000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D1EC1EF0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D1EC1F10 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x4D746C7561666564 && a2 == 0xEF6574615265766FLL || (sub_1D1E6904C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D1EC1F30 == a2)
  {

    return 9;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t type metadata accessor for StaticOnOffCluster()
{
  result = qword_1EE07C7A8;
  if (!qword_1EE07C7A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t StaticOnOffCluster.init(id:value:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  sub_1D190D804(a1, a3);
  result = type metadata accessor for StaticOnOffCluster();
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t static StaticOnOffCluster.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) != 0 && (v4 = type metadata accessor for EndpointPath(0), *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20))) && *(a1 + *(v4 + 24)) == *(a2 + *(v4 + 24)) && (v5 = type metadata accessor for ClusterPath(0), dword_1D1E8DC2C[*(a1 + *(v5 + 20))] == dword_1D1E8DC2C[*(a2 + *(v5 + 20))]))
  {
    v6 = type metadata accessor for StaticOnOffCluster();
    v7 = *(a1 + *(v6 + 20)) ^ *(a2 + *(v6 + 20)) ^ 1;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_1D19CCAB4()
{
  if (*v0)
  {
    result = 0x65756C6176;
  }

  else
  {
    result = 25705;
  }

  *v0;
  return result;
}

uint64_t sub_1D19CCAE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_1D1E6904C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D1E6904C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1D19CCBB0(uint64_t a1)
{
  v2 = sub_1D19CFB78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D19CCBEC(uint64_t a1)
{
  v2 = sub_1D19CFB78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticOnOffCluster.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6485F8, &qword_1D1E8D970);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D19CFB78();
  sub_1D1E6930C();
  v13[15] = 0;
  type metadata accessor for ClusterPath(0);
  sub_1D19CFD70(&qword_1EC646D88, type metadata accessor for ClusterPath);
  sub_1D1E68F1C();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for StaticOnOffCluster() + 20));
    v13[14] = 1;
    sub_1D1E68EDC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t StaticOnOffCluster.hash(into:)()
{
  sub_1D1E66A7C();
  sub_1D19CFD70(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v1 = type metadata accessor for EndpointPath(0);
  MEMORY[0x1D3892890](*(v0 + *(v1 + 20)));
  v2 = *(v0 + *(v1 + 24));
  sub_1D1E6923C();
  v3 = dword_1D1E8DC2C[*(v0 + *(type metadata accessor for ClusterPath(0) + 20))];
  sub_1D1E6924C();
  v4 = *(v0 + *(type metadata accessor for StaticOnOffCluster() + 20));
  return sub_1D1E6922C();
}

uint64_t StaticOnOffCluster.hashValue.getter()
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D19CFD70(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v1 = type metadata accessor for EndpointPath(0);
  MEMORY[0x1D3892890](*(v0 + *(v1 + 20)));
  v2 = *(v0 + *(v1 + 24));
  sub_1D1E6923C();
  v3 = dword_1D1E8DC2C[*(v0 + *(type metadata accessor for ClusterPath(0) + 20))];
  sub_1D1E6924C();
  v4 = *(v0 + *(type metadata accessor for StaticOnOffCluster() + 20));
  sub_1D1E6922C();
  return sub_1D1E6926C();
}

uint64_t StaticOnOffCluster.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = type metadata accessor for ClusterPath(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v23 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648608, &qword_1D1E8D978);
  v21 = *(v24 - 8);
  v7 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v9 = &v21 - v8;
  v10 = type metadata accessor for StaticOnOffCluster();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D19CFB78();
  sub_1D1E692FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = v13;
  v16 = v21;
  v17 = v22;
  v26 = 0;
  sub_1D19CFD70(&qword_1EC646DC0, type metadata accessor for ClusterPath);
  sub_1D1E68D7C();
  sub_1D190D804(v23, v15);
  v25 = 1;
  v18 = v24;
  v19 = sub_1D1E68D3C();
  (*(v16 + 8))(v9, v18);
  *(v15 + *(v10 + 20)) = v19 & 1;
  sub_1D19CFC78(v15, v17, type metadata accessor for StaticOnOffCluster);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D19CFBCC(v15, type metadata accessor for StaticOnOffCluster);
}

uint64_t sub_1D19CD2B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) != 0 && (v6 = type metadata accessor for EndpointPath(0), *(a1 + *(v6 + 20)) == *(a2 + *(v6 + 20))) && *(a1 + *(v6 + 24)) == *(a2 + *(v6 + 24)) && (v7 = type metadata accessor for ClusterPath(0), dword_1D1E8DC2C[*(a1 + *(v7 + 20))] == dword_1D1E8DC2C[*(a2 + *(v7 + 20))]))
  {
    v8 = *(a1 + *(a3 + 20)) ^ *(a2 + *(a3 + 20)) ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_1D19CD368(uint64_t a1, uint64_t a2)
{
  sub_1D1E66A7C();
  sub_1D19CFD70(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v4 = type metadata accessor for EndpointPath(0);
  MEMORY[0x1D3892890](*(v2 + *(v4 + 20)));
  v5 = *(v2 + *(v4 + 24));
  sub_1D1E6923C();
  v6 = dword_1D1E8DC2C[*(v2 + *(type metadata accessor for ClusterPath(0) + 20))];
  sub_1D1E6924C();
  v7 = *(v2 + *(a2 + 20));
  return sub_1D1E6922C();
}

uint64_t sub_1D19CD444(uint64_t a1, uint64_t a2)
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D19CFD70(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  v4 = type metadata accessor for EndpointPath(0);
  MEMORY[0x1D3892890](*(v2 + *(v4 + 20)));
  v5 = *(v2 + *(v4 + 24));
  sub_1D1E6923C();
  v6 = dword_1D1E8DC2C[*(v2 + *(type metadata accessor for ClusterPath(0) + 20))];
  sub_1D1E6924C();
  v7 = *(v2 + *(a2 + 20));
  sub_1D1E6922C();
  return sub_1D1E6926C();
}

uint64_t sub_1D19CD5A0(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 20)) == 0;
  if (*(v1 + *(a1 + 20)))
  {
    v3 = 0xD000000000000021;
  }

  else
  {
    v3 = 0xD000000000000022;
  }

  if (v2)
  {
    v4 = "oachAngleSupported";
  }

  else
  {
    v4 = "startUpCurrentLevel";
  }

  v5 = static String.hfLocalized(_:)(v3, v4 | 0x8000000000000000);

  return v5;
}

uint64_t _s13HomeDataModel18StaticOnOffClusterV21longStateStatusStringSSSgvg_0()
{
  v1 = type metadata accessor for StaticOnOffCluster();
  v2 = *(v0 + *(v1 + 20)) == 0;
  if (*(v0 + *(v1 + 20)))
  {
    v3 = 0xD000000000000021;
  }

  else
  {
    v3 = 0xD000000000000022;
  }

  if (v2)
  {
    v4 = "oachAngleSupported";
  }

  else
  {
    v4 = "startUpCurrentLevel";
  }

  v5 = static String.hfLocalized(_:)(v3, v4 | 0x8000000000000000);

  return v5;
}

uint64_t StaticOnOffCluster.init(path:valueSource:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ClusterPath(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for StaticOnOffCluster();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a2;
  v16 = a2[1];
  sub_1D19CFC78(a1, v14, type metadata accessor for ClusterPath);
  sub_1D19CFC78(a1, v9, type metadata accessor for ClusterPath);
  v17 = sub_1D19BE5F8(0, v9, v15, v16);

  sub_1D19CFBCC(a1, type metadata accessor for ClusterPath);
  sub_1D19CFBCC(v9, type metadata accessor for ClusterPath);
  if (v17 == 2)
  {
    sub_1D19CFBCC(v14, type metadata accessor for ClusterPath);
    return (*(v11 + 56))(a3, 1, 1, v10);
  }

  else
  {
    v14[*(v10 + 20)] = v17 & 1;
    sub_1D19CFC78(v14, a3, type metadata accessor for StaticOnOffCluster);
    (*(v11 + 56))(a3, 0, 1, v10);
    return sub_1D19CFBCC(v14, type metadata accessor for StaticOnOffCluster);
  }
}

uint64_t StaticOnOffCluster.cluster.getter()
{
  sub_1D19CFC2C();
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1D19C8EA0;

  return sub_1D1A092C4(v0);
}

uint64_t StaticOnOffCluster.on()()
{
  v1[4] = v0;
  v2 = type metadata accessor for ClusterPath(0);
  v1[5] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D19CDA18, 0, 0);
}

uint64_t sub_1D19CDA18()
{
  v1 = v0[4];
  v2 = sub_1D18D6FA8(&unk_1F4D65840);
  sub_1D19CBEB8(&unk_1F4D65860);
  v0[7] = sub_1D19C69A8(v2, 30);

  sub_1D19CFC2C();
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_1D19CDAF8;
  v4 = v0[4];

  return sub_1D1A092C4(v4);
}

uint64_t sub_1D19CDAF8(uint64_t a1)
{
  v2 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 72) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D19CDBF8, 0, 0);
}

uint64_t sub_1D19CDBF8()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = ClusterPath.description.getter();
  MEMORY[0x1D3890F70](v3);

  v0[10] = 0x80000001D1EC1F80;
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_1D19CDD14;
  v5 = v0[9];

  return sub_1D191710C(28271, 0xE200000000000000, v5, v1, 0xD000000000000013, 0x80000001D1EC1F80, &unk_1D1E8D998, 0);
}

uint64_t sub_1D19CDD14()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;
  v2[12] = v0;

  v5 = v2[10];
  if (v0)
  {
    v6 = v2[7];

    return MEMORY[0x1EEE6DFA0](sub_1D19CDEA0, 0, 0);
  }

  else
  {
    v7 = v2[9];
    v9 = v2[6];
    v8 = v2[7];

    v10 = *(v4 + 8);

    return v10();
  }
}

uint64_t sub_1D19CDEA0()
{
  v1 = *(v0 + 96);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
  type metadata accessor for MTRError(0);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 40);
    v3 = *(v0 + 48);
    v5 = *(v0 + 32);

    v6 = *(v0 + 24);
    sub_1D19CFC78(v5, v3, type metadata accessor for ClusterPath);
    v7 = type metadata accessor for MatterCommandError.MatterError();
    sub_1D19CFD70(&qword_1EC646F00, type metadata accessor for MatterCommandError.MatterError);
    swift_allocError();
    v9 = v8;
    v10 = v7[7];
    v11 = type metadata accessor for StaticEndpoint();
    (*(*(v11 - 8) + 56))(&v9[v10], 1, 1, v11);
    *v9 = v6;
    sub_1D19CFC78(v3, &v9[v7[5]], type metadata accessor for EndpointPath);
    LOBYTE(v10) = *(v3 + *(v4 + 20));
    v12 = v6;
    sub_1D19CFBCC(v3, type metadata accessor for ClusterPath);
    v9[v7[6]] = v10;
    swift_willThrow();
  }

  v13 = *(v0 + 48);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1D19CE0B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a3;
  v4[21] = a4;
  v4[18] = a1;
  v4[19] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D19CE0DC, 0, 0);
}

uint64_t sub_1D19CE0DC()
{
  v1 = v0[20];
  if (v1)
  {
    sub_1D18F9814(v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
    v2 = sub_1D1E67BFC();
  }

  else
  {
    v2 = 0;
  }

  v0[22] = v2;
  v3 = v0[21];
  v4 = v0[19];
  v0[2] = v0;
  v0[3] = sub_1D19CE24C;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D17B04C8;
  v0[13] = &block_descriptor_27_2;
  v0[14] = v5;
  [v4 onWithParams:0 expectedValues:v2 expectedValueInterval:v3 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D19CE24C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  if (v2)
  {
    v3 = sub_1D19CE3D4;
  }

  else
  {
    v3 = sub_1D19CE35C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D19CE35C()
{
  v1 = v0[22];
  *(v0[18] + 24) = MEMORY[0x1E69E7CA8] + 8;

  v2 = v0[1];

  return v2();
}

uint64_t sub_1D19CE3D4()
{
  v1 = v0[22];
  v2 = v0[23];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[23];

  return v3();
}

uint64_t StaticOnOffCluster.off()()
{
  v1[4] = v0;
  v2 = type metadata accessor for ClusterPath(0);
  v1[5] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D19CE4D8, 0, 0);
}

uint64_t sub_1D19CE4D8()
{
  v1 = v0[4];
  v2 = sub_1D18D6FA8(&unk_1F4D65878);
  sub_1D19CBEB8(&unk_1F4D65898);
  v0[7] = sub_1D19C69A8(v2, 30);

  sub_1D19CFC2C();
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_1D19CE5B8;
  v4 = v0[4];

  return sub_1D1A092C4(v4);
}

uint64_t sub_1D19CE5B8(uint64_t a1)
{
  v2 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 72) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D19CE6B8, 0, 0);
}

uint64_t sub_1D19CE6B8()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = ClusterPath.description.getter();
  MEMORY[0x1D3890F70](v3);

  v0[10] = 0x80000001D1EC1F80;
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_1D19CE7D8;
  v5 = v0[9];

  return sub_1D191710C(6710895, 0xE300000000000000, v5, v1, 0xD000000000000013, 0x80000001D1EC1F80, &unk_1D1E8D9B0, 0);
}

uint64_t sub_1D19CE7D8()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;
  v2[12] = v0;

  v5 = v2[10];
  if (v0)
  {
    v6 = v2[7];

    return MEMORY[0x1EEE6DFA0](sub_1D19CFFAC, 0, 0);
  }

  else
  {
    v7 = v2[9];
    v9 = v2[6];
    v8 = v2[7];

    v10 = *(v4 + 8);

    return v10();
  }
}

uint64_t sub_1D19CE964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a3;
  v4[21] = a4;
  v4[18] = a1;
  v4[19] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D19CE988, 0, 0);
}

uint64_t sub_1D19CE988()
{
  v1 = v0[20];
  if (v1)
  {
    sub_1D18F9814(v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
    v2 = sub_1D1E67BFC();
  }

  else
  {
    v2 = 0;
  }

  v0[22] = v2;
  v3 = v0[21];
  v4 = v0[19];
  v0[2] = v0;
  v0[3] = sub_1D19CEAF8;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D17B04C8;
  v0[13] = &block_descriptor_23;
  v0[14] = v5;
  [v4 offWithParams:0 expectedValues:v2 expectedValueInterval:v3 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D19CEAF8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  if (v2)
  {
    v3 = sub_1D19CFFB4;
  }

  else
  {
    v3 = sub_1D19CFFA0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t StaticOnOffCluster.toggle()()
{
  v1[11] = v0;
  v2 = type metadata accessor for ClusterPath(0);
  v1[12] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D19CEC9C, 0, 0);
}

uint64_t sub_1D19CEC9C()
{
  v1 = v0[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6474E0, &unk_1D1E8D5E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E739C0;
  *(inited + 32) = 0;
  *(inited + 40) = (*(v1 + *(type metadata accessor for StaticOnOffCluster() + 20)) & 1) == 0;
  *(inited + 48) = 0;
  v3 = sub_1D18D6FA8(inited);
  swift_setDeallocating();
  sub_1D19CBEB8(inited + 32);
  v0[14] = sub_1D19C69A8(v3, 30);

  sub_1D19CFC2C();
  v4 = swift_task_alloc();
  v0[15] = v4;
  *v4 = v0;
  v4[1] = sub_1D19CEDD0;
  v5 = v0[11];

  return sub_1D1A092C4(v5);
}

uint64_t sub_1D19CEDD0(uint64_t a1)
{
  v2 = *(*v1 + 120);
  v4 = *v1;
  *(*v1 + 128) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D19CEED0, 0, 0);
}

uint64_t sub_1D19CEED0()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = ClusterPath.description.getter();
  MEMORY[0x1D3890F70](v3);

  v0[17] = 0x80000001D1EC1F80;
  v4 = swift_task_alloc();
  v0[18] = v4;
  *v4 = v0;
  v4[1] = sub_1D19CEFF8;
  v5 = v0[16];

  return sub_1D191710C(0x656C67676F74, 0xE600000000000000, v5, v1, 0xD000000000000013, 0x80000001D1EC1F80, &unk_1D1E8D9C8, 0);
}

uint64_t sub_1D19CEFF8()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *v1;
  v2[19] = v0;

  v5 = v2[17];
  if (v0)
  {
    v6 = v2[14];

    return MEMORY[0x1EEE6DFA0](sub_1D19CF184, 0, 0);
  }

  else
  {
    v7 = v2[16];
    v9 = v2[13];
    v8 = v2[14];

    v10 = *(v4 + 8);

    return v10();
  }
}

uint64_t sub_1D19CF184()
{
  v1 = *(v0 + 152);
  *(v0 + 72) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
  type metadata accessor for MTRError(0);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 96);
    v3 = *(v0 + 104);
    v5 = *(v0 + 88);

    v6 = *(v0 + 80);
    sub_1D19CFC78(v5, v3, type metadata accessor for ClusterPath);
    v7 = type metadata accessor for MatterCommandError.MatterError();
    sub_1D19CFD70(&qword_1EC646F00, type metadata accessor for MatterCommandError.MatterError);
    swift_allocError();
    v9 = v8;
    v10 = v7[7];
    v11 = type metadata accessor for StaticEndpoint();
    (*(*(v11 - 8) + 56))(&v9[v10], 1, 1, v11);
    *v9 = v6;
    sub_1D19CFC78(v3, &v9[v7[5]], type metadata accessor for EndpointPath);
    LOBYTE(v10) = *(v3 + *(v4 + 20));
    v12 = v6;
    sub_1D19CFBCC(v3, type metadata accessor for ClusterPath);
    v9[v7[6]] = v10;
    swift_willThrow();
  }

  v13 = *(v0 + 104);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1D19CF39C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a3;
  v4[21] = a4;
  v4[18] = a1;
  v4[19] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D19CF3C0, 0, 0);
}

uint64_t sub_1D19CF3C0()
{
  v1 = v0[20];
  if (v1)
  {
    sub_1D18F9814(v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
    v2 = sub_1D1E67BFC();
  }

  else
  {
    v2 = 0;
  }

  v0[22] = v2;
  v3 = v0[21];
  v4 = v0[19];
  v0[2] = v0;
  v0[3] = sub_1D19CEAF8;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D17B04C8;
  v0[13] = &block_descriptor_27;
  v0[14] = v5;
  [v4 toggleWithParams:0 expectedValues:v2 expectedValueInterval:v3 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t StaticOnOffCluster.toggleKnownState()()
{
  v1[2] = v0;
  v2 = type metadata accessor for StaticOnOffCluster();
  v1[3] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D19CF5D0, 0, 0);
}

uint64_t sub_1D19CF5D0()
{
  v21 = v0;
  if (qword_1EE07A0A8 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  v4 = sub_1D1E6709C();
  __swift_project_value_buffer(v4, qword_1EE07A0B0);
  sub_1D19CFC78(v3, v2, type metadata accessor for StaticOnOffCluster);
  sub_1D19CFC78(v3, v1, type metadata accessor for StaticOnOffCluster);
  v5 = sub_1D1E6707C();
  v6 = sub_1D1E6835C();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[4];
  v9 = v0[5];
  if (v7)
  {
    v19 = v0[3];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 136446466;
    v20[0] = v11;
    v20[1] = 0xD000000000000013;
    v20[2] = 0x80000001D1EC1F80;
    v12 = ClusterPath.description.getter();
    MEMORY[0x1D3890F70](v12);

    sub_1D19CFBCC(v9, type metadata accessor for StaticOnOffCluster);
    v13 = sub_1D1B1312C(0xD000000000000013, 0x80000001D1EC1F80, v20);

    *(v10 + 4) = v13;
    *(v10 + 12) = 1026;
    LODWORD(v13) = *(v8 + *(v19 + 20));
    sub_1D19CFBCC(v8, type metadata accessor for StaticOnOffCluster);
    *(v10 + 14) = v13;
    _os_log_impl(&dword_1D16EC000, v5, v6, "%{public}s: toggling known state, currently %{BOOL,public}d", v10, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1D3893640](v11, -1, -1);
    MEMORY[0x1D3893640](v10, -1, -1);
  }

  else
  {
    sub_1D19CFBCC(v0[4], type metadata accessor for StaticOnOffCluster);

    sub_1D19CFBCC(v9, type metadata accessor for StaticOnOffCluster);
  }

  if (*(v0[2] + *(v0[3] + 20)))
  {
    v14 = swift_task_alloc();
    v0[7] = v14;
    *v14 = v0;
    v14[1] = sub_1D19CFA44;
    v15 = v0[2];

    return StaticOnOffCluster.off()();
  }

  else
  {
    v17 = swift_task_alloc();
    v0[6] = v17;
    *v17 = v0;
    v17[1] = sub_1D19CF910;
    v18 = v0[2];

    return StaticOnOffCluster.on()();
  }
}

uint64_t sub_1D19CF910()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  v7 = *v0;

  v3 = *(v1 + 40);
  v4 = *(v1 + 32);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_1D19CFA44()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v7 = *v0;

  v3 = *(v1 + 40);
  v4 = *(v1 + 32);

  v5 = *(v7 + 8);

  return v5();
}

unint64_t sub_1D19CFB78()
{
  result = qword_1EC648600;
  if (!qword_1EC648600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648600);
  }

  return result;
}

uint64_t sub_1D19CFBCC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D19CFC2C()
{
  result = qword_1EC648610;
  if (!qword_1EC648610)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC648610);
  }

  return result;
}

uint64_t sub_1D19CFC78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D19CFD70(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D19CFDE0()
{
  result = type metadata accessor for ClusterPath(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1D19CFE68()
{
  result = qword_1EC648620;
  if (!qword_1EC648620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648620);
  }

  return result;
}

unint64_t sub_1D19CFEC0()
{
  result = qword_1EC648628;
  if (!qword_1EC648628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648628);
  }

  return result;
}

unint64_t sub_1D19CFF18()
{
  result = qword_1EC648630;
  if (!qword_1EC648630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648630);
  }

  return result;
}

uint64_t StaticOnOffCluster.Command.init(clusterKind:commandID:expectedValues:commandFields:)@<X0>(_BYTE *a1@<X0>, int a2@<W1>, uint64_t *a3@<X3>, char *a4@<X8>)
{

  v8 = *a3;

  if (a2)
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  if (a2 == 1)
  {
    v10 = 0;
  }

  if (*a1 == 11)
  {
    v11 = v10;
  }

  else
  {
    v11 = 2;
  }

  *a4 = v11;
  return result;
}

unint64_t sub_1D19D007C()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646E68, &qword_1D1E83828);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E739C0;
  *(inited + 32) = 0;
  v3 = inited + 32;
  *(inited + 36) = 11;
  *(inited + 40) = (v1 & 1) == 0;
  *(inited + 48) = 0;
  v4 = sub_1D18D4B28(inited);
  swift_setDeallocating();
  sub_1D1741A30(v3, &qword_1EC646E70, &qword_1D1E83830);
  return v4;
}

uint64_t StaticOnOffCluster.Command.description.getter()
{
  if (*v0)
  {
    result = 6710895;
  }

  else
  {
    result = 28271;
  }

  *v0;
  return result;
}

uint64_t StaticOnOffCluster.Command.hashValue.getter()
{
  v1 = *v0;
  sub_1D1E6920C();
  sub_1D1919D70(v3, v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D19D01AC()
{
  v1 = *v0;
  sub_1D1E6920C();
  sub_1D1919D70(v3, v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D19D01FC()
{
  v1 = *v0;
  sub_1D1E6920C();
  sub_1D1919D70(v3, v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D19D026C()
{
  if (*v0)
  {
    result = 6710895;
  }

  else
  {
    result = 28271;
  }

  *v0;
  return result;
}

id StaticOnOffCluster.Command.command(with:endpoint:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = a2 + *(type metadata accessor for StaticEndpoint() + 20);
  v6 = *(v5 + *(type metadata accessor for EndpointPath(0) + 24));

  return sub_1D195A2B4(a1, v6, v4);
}

double StaticOnOffCluster.Command.matterCommand(endpoint:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646AF8, &unk_1D1E97C50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v21 - v7;
  v9 = *v2;
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  v12 = (*(v11 + 8))(v10, v11);
  if (*(v12 + 16) && (v13 = sub_1D171D278(11), (v14 & 1) != 0))
  {
    v15 = v13;
    v16 = *(v12 + 56);
    v17 = type metadata accessor for StaticCluster();
    v18 = *(v17 - 8);
    sub_1D19D0574(v16 + *(v18 + 72) * v15, v8);

    (*(v18 + 56))(v8, 0, 1, v17);
    sub_1D1741A30(v8, &qword_1EC646AF8, &unk_1D1E97C50);
    *(a2 + 24) = &type metadata for StaticOnOffCluster.Command;
    *(a2 + 32) = sub_1D18FA3A8();
    *a2 = v9;
  }

  else
  {

    v20 = type metadata accessor for StaticCluster();
    (*(*(v20 - 8) + 56))(v8, 1, 1, v20);
    sub_1D1741A30(v8, &qword_1EC646AF8, &unk_1D1E97C50);
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0;
  }

  return result;
}

id sub_1D19D0508(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = a2 + *(type metadata accessor for StaticEndpoint() + 20);
  v6 = *(v5 + *(type metadata accessor for EndpointPath(0) + 24));

  return sub_1D195A2B4(a1, v6, v4);
}

uint64_t sub_1D19D0574(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticCluster();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D19D05DC()
{
  result = qword_1EC648638;
  if (!qword_1EC648638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648638);
  }

  return result;
}

unint64_t sub_1D19D0630()
{
  result = qword_1EC648640;
  if (!qword_1EC648640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648640);
  }

  return result;
}

uint64_t sub_1D19D06A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v37 = MEMORY[0x1E69E7CC0];
  sub_1D178CFB0(0, v1, 0);
  v2 = v37;
  v4 = a1 + 64;
  v5 = -1 << *(a1 + 32);
  result = sub_1D1E6869C();
  v7 = result;
  v8 = 0;
  v9 = *(a1 + 36);
  v33 = *MEMORY[0x1E696F520];
  v34 = *MEMORY[0x1E696F518];
  v31 = v1;
  v32 = v9;
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

    v35 = v8;
    v12 = *(a1 + 56) + 16 * v7;
    v13 = *v12;
    v14 = *(v12 + 8);
    v15 = *(*(a1 + 48) + 8 * v7);
    sub_1D1741AF8(v13, v14);
    sub_1D1741AF8(v13, v14);

    sub_1D1757AE8(v13, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647FA0, &qword_1D1E8DEE0);
    v36 = v2;
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D1E73A90;
    *(inited + 32) = sub_1D1E6781C();
    *(inited + 40) = v17;
    *(inited + 72) = sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
    *(inited + 48) = v15;
    *(inited + 80) = sub_1D1E6781C();
    *(inited + 88) = v18;
    v19 = v15;
    v20 = MatterAttributeDataBuilder.dictionary.getter();
    *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E68, &unk_1D1E717F0);
    *(inited + 96) = v20;
    v21 = sub_1D18D6E78(inited);
    v2 = v36;
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646228, &qword_1D1E8A0C0);
    swift_arrayDestroy();

    result = sub_1D1757AE8(v13, v14);
    v23 = *(v36 + 16);
    v22 = *(v36 + 24);
    if (v23 >= v22 >> 1)
    {
      result = sub_1D178CFB0((v22 > 1), v23 + 1, 1);
      v2 = v36;
    }

    *(v2 + 16) = v23 + 1;
    *(v2 + 8 * v23 + 32) = v21;
    v10 = 1 << *(a1 + 32);
    if (v7 >= v10)
    {
      goto LABEL_24;
    }

    v4 = a1 + 64;
    v24 = *(a1 + 64 + 8 * v11);
    if ((v24 & (1 << v7)) == 0)
    {
      goto LABEL_25;
    }

    v9 = v32;
    if (v32 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v25 = v24 & (-2 << (v7 & 0x3F));
    if (v25)
    {
      v10 = __clz(__rbit64(v25)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v26 = v11 << 6;
      v27 = v11 + 1;
      v28 = (a1 + 72 + 8 * v11);
      while (v27 < (v10 + 63) >> 6)
      {
        v30 = *v28++;
        v29 = v30;
        v26 += 64;
        ++v27;
        if (v30)
        {
          result = sub_1D1716920(v7, v32, 0);
          v10 = __clz(__rbit64(v29)) + v26;
          goto LABEL_4;
        }
      }

      result = sub_1D1716920(v7, v32, 0);
    }

LABEL_4:
    v8 = v35 + 1;
    v7 = v10;
    if (v35 + 1 == v31)
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

HomeDataModel::MatterCommandFields_optional __swiftcall MatterCommandFields.init(commandFields:)(Swift::OpaquePointer_optional commandFields)
{
  rawValue = commandFields.value._rawValue;
  v3 = v1;
  v4 = sub_1D18D4C50(MEMORY[0x1E69E7CC0]);
  if (!rawValue)
  {
    goto LABEL_9;
  }

  v82 = v4;
  v5 = *MEMORY[0x1E696F568];
  v6 = sub_1D1E6781C();
  if (!rawValue[2])
  {

    goto LABEL_8;
  }

  v8 = sub_1D171D2F0(v6, v7);
  v10 = v9;

  if ((v10 & 1) == 0)
  {
LABEL_8:

    goto LABEL_9;
  }

  sub_1D1741970(rawValue[7] + 32 * v8, v87);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648308, &unk_1D1E8DD70);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:

    v17 = 0;
LABEL_10:
    *v3 = v17;
    goto LABEL_74;
  }

  v11 = v86[0];
  v12 = *(v86[0] + 16);
  if (!v12)
  {
LABEL_69:

    v17 = v82;
    goto LABEL_10;
  }

  v13 = 0;
  v14 = *MEMORY[0x1E696F518];
  v79 = *MEMORY[0x1E696F520];
  v78 = *MEMORY[0x1E696F550];
  v77 = *MEMORY[0x1E696F508];
  v76 = *MEMORY[0x1E696F540];
  v75 = *MEMORY[0x1E696F560];
  while (v13 < *(v11 + 16))
  {
    v18 = *(v11 + 32 + 8 * v13);
    v19 = sub_1D1E6781C();
    v21 = v20;
    if (*(v18 + 16))
    {
      v22 = v19;

      v23 = sub_1D171D2F0(v22, v21);
      v25 = v24;

      if (v25)
      {
        sub_1D1741970(*(v18 + 56) + 32 * v23, v87);
        sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
        if (swift_dynamicCast())
        {
          v26 = v86[0];
          v27 = sub_1D1E6781C();
          if (!*(v18 + 16))
          {

            goto LABEL_33;
          }

          v80 = v26;
          v29 = sub_1D171D2F0(v27, v28);
          v31 = v30;

          if ((v31 & 1) == 0)
          {

            v26 = v80;
            goto LABEL_33;
          }

          sub_1D1741970(*(v18 + 56) + 32 * v29, v87);

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_68;
          }

          v32 = v86[0];
          v33 = sub_1D1E6781C();
          if (!*(v32 + 16))
          {

LABEL_35:

            goto LABEL_13;
          }

          v35 = sub_1D171D2F0(v33, v34);
          v37 = v36;

          if ((v37 & 1) == 0)
          {
            goto LABEL_35;
          }

          sub_1D1741970(*(v32 + 56) + 32 * v35, v87);
          v26 = v80;
          if (swift_dynamicCast())
          {
            v72 = v86[0];
            v73 = v86[1];
            v38 = sub_1D1E6781C();
            if (!*(v32 + 16))
            {

              goto LABEL_38;
            }

            v71 = sub_1D171D2F0(v38, v39);
            v41 = v40;

            if ((v41 & 1) == 0)
            {

              v26 = v80;
LABEL_38:

LABEL_33:

              goto LABEL_13;
            }

            sub_1D1741970(*(v32 + 56) + 32 * v71, v87);

            sub_1D1741970(v87, v86);
            if (swift_dynamicCast())
            {
              v42 = v85;
              if (v72 == sub_1D1E6781C() && v73 == v43)
              {

                goto LABEL_45;
              }

              v46 = sub_1D1E6904C();

              if ((v46 & 1) == 0)
              {
                if (v72 == sub_1D1E6781C() && v73 == v65)
                {
                }

                else
                {
                  v66 = sub_1D1E6904C();

                  if ((v66 & 1) == 0)
                  {
                    if (v72 == sub_1D1E6781C() && v73 == v67)
                    {
                    }

                    else
                    {
                      v68 = sub_1D1E6904C();

                      if ((v68 & 1) == 0)
                      {
                        __swift_destroy_boxed_opaque_existential_1(v87);

LABEL_68:
                        goto LABEL_13;
                      }
                    }

                    v74 = [v85 unsignedIntegerValue];

                    v45 = 2;
                    goto LABEL_46;
                  }
                }

                v74 = [v85 integerValue];

                v45 = 1;
                goto LABEL_46;
              }

              v42 = v85;
LABEL_45:

              v47 = [v42 BOOLValue];

              v45 = 0;
              v74 = v47;
LABEL_46:
              v26 = v80;
            }

            else
            {

              sub_1D1741970(v87, v86);
              sub_1D1741B10(0, &qword_1EC645668, 0x1E695DEC8);
              v26 = v80;
              if ((swift_dynamicCast() & 1) == 0 || (v44 = sub_1D19D42DC(), v85, !v44))
              {
                __swift_destroy_boxed_opaque_existential_1(v87);
                goto LABEL_33;
              }

              v74 = v44;
              v45 = 3;
            }

            v48 = v26;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v86[0] = v82;
            v50 = sub_1D171D228(v48);
            v51 = *(v82 + 16);
            v52 = (v49 & 1) == 0;
            v53 = v51 + v52;
            if (__OFADD__(v51, v52))
            {
              goto LABEL_71;
            }

            if (*(v82 + 24) >= v53)
            {
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v84 = v45;
                v69 = v49;
                v70 = v50;
                sub_1D1733C14();
                v50 = v70;
                v49 = v69;
                v45 = v84;
              }
            }

            else
            {
              v83 = v49;
              sub_1D1720648(v53, isUniquelyReferenced_nonNull_native);
              v54 = sub_1D171D228(v48);
              v56 = v55 & 1;
              v49 = v83;
              if ((v83 & 1) != v56)
              {
                goto LABEL_73;
              }

              v50 = v54;
            }

            v57 = v86[0];
            v82 = v86[0];
            if (v49)
            {
              v58 = *(v86[0] + 56) + 16 * v50;
              v59 = *v58;
              *v58 = v74;
              v60 = *(v58 + 8);
              *(v58 + 8) = v45;
              sub_1D1757AE8(v59, v60);

              __swift_destroy_boxed_opaque_existential_1(v87);
            }

            else
            {
              *(v86[0] + 8 * (v50 >> 6) + 64) |= 1 << v50;
              *(*(v57 + 48) + 8 * v50) = v48;
              v61 = *(v57 + 56) + 16 * v50;
              *v61 = v74;
              *(v61 + 8) = v45;

              __swift_destroy_boxed_opaque_existential_1(v87);
              v62 = *(v82 + 16);
              v63 = __OFADD__(v62, 1);
              v64 = v62 + 1;
              if (v63)
              {
                goto LABEL_72;
              }

              *(v82 + 16) = v64;
            }

            goto LABEL_12;
          }
        }
      }
    }

LABEL_12:

LABEL_13:
    if (v12 == ++v13)
    {
      goto LABEL_69;
    }
  }

  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  v15 = sub_1D1E690FC();
  __break(1u);
LABEL_74:
  result.value.values._rawValue = v15;
  result.is_nil = v16;
  return result;
}

uint64_t MatterCommand.expectedValues(endpointID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(a3 + 56))(a2, a3);
  v7 = MatterCommand.expectedValues(for:endpointID:)(v6, a1, a2, a3);

  return v7;
}

id MatterCommand.hm_matterCommand(for:endpointID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (((*(a4 + 24))(a3, a4) & 0x100000000) != 0)
  {
    return 0;
  }

  v20 = a1;
  v8 = sub_1D1E692CC();
  v9 = sub_1D1E692AC();
  (*(a4 + 40))(&v22, a3, a4);
  v10 = dword_1D1E8DEEC[v22];
  v11 = sub_1D1E692CC();
  (*(a4 + 64))(&v21, a3, a4);
  if (v21)
  {
    v12 = MatterCommandFields.asDictionary()();
  }

  else
  {
    v12 = 0;
  }

  v14 = (*(a4 + 56))(a3, a4);
  v15 = MatterCommand.expectedValues(for:endpointID:)(v14, a2, a3, a4);

  sub_1D18F9814(v15);

  if (v12)
  {
    v16 = sub_1D1E675DC();
  }

  else
  {
    v16 = 0;
  }

  v17 = objc_allocWithZone(MEMORY[0x1E696CBD8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
  v18 = sub_1D1E67BFC();

  v19 = [v17 initWithCommandID:v8 endpointID:v9 clusterID:v11 accessory:v20 commandFields:v16 expectedValues:v18];

  return v19;
}

BOOL MatterCommand.isEqual(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(a3 + 24))(a2, a3);
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  v9 = (*(v8 + 24))(v7, v8);
  if ((v6 & 0x100000000) != 0)
  {
    if ((v9 & 0x100000000) == 0)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if ((v9 & 0x100000000) != 0 || v6 != v9)
    {
      return result;
    }
  }

  (*(a3 + 40))(v47, a2, a3);
  v11 = SLOBYTE(v47[0]);
  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  (*(v13 + 40))(&v50, v12, v13);
  if (dword_1D1E8DEEC[v11] != dword_1D1E8DEEC[v50])
  {
    return 0;
  }

  v14 = (*(a3 + 56))(a2, a3);
  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  v17 = (*(v16 + 56))(v15, v16);
  if (v14)
  {
    if (!v17)
    {
      goto LABEL_19;
    }

    v18 = sub_1D1847450(v14, v17);

    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v17)
  {
LABEL_19:

    return 0;
  }

  (*(a3 + 64))(v47, a2, a3);
  v19 = v47[0];
  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  (*(v21 + 64))(&v50, v20, v21);
  v22 = v50;
  if (!v19)
  {
    if (!v50)
    {

      goto LABEL_23;
    }

    goto LABEL_18;
  }

  if (!v50)
  {
LABEL_18:

    goto LABEL_19;
  }

  swift_bridgeObjectRetain_n();

  sub_1D184AD34(v19, v22);
  v24 = v23;
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  if ((v24 & 1) == 0)
  {
    return 0;
  }

LABEL_23:
  v25 = (*(a3 + 48))(a2, a3);
  v26 = a1[3];
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v26);
  if (v25 != (*(v27 + 48))(v26, v27))
  {
    return 0;
  }

  v28 = (*(a3 + 88))(a2, a3);
  v30 = v29;
  v31 = a1[3];
  v32 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v31);
  if (v28 != (*(v32 + 88))(v31, v32) || v30 != v33)
  {
    v34 = sub_1D1E6904C();

    if (v34)
    {
      goto LABEL_28;
    }

    return 0;
  }

LABEL_28:
  (*(a3 + 80))(v47, a2, a3);
  v35 = v48;
  if (v48)
  {
    v36 = v49;
    __swift_project_boxed_opaque_existential_1(v47, v48);
    v37 = *(v36 + 8);
    sub_1D1E67B1C();
    v38 = v50;
    __swift_destroy_boxed_opaque_existential_1(v47);
  }

  else
  {
    sub_1D1741A30(v47, &qword_1EC648648, &unk_1D1E8DD80);
    v38 = 0;
  }

  v39 = a1[3];
  v40 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v39);
  (*(v40 + 80))(v47, v39, v40);
  v41 = v48;
  v42 = v48 == 0;
  if (v48)
  {
    v43 = v49;
    __swift_project_boxed_opaque_existential_1(v47, v48);
    v44 = *(v43 + 8);
    sub_1D1E67B1C();
    v45 = v50;
    __swift_destroy_boxed_opaque_existential_1(v47);
  }

  else
  {
    sub_1D1741A30(v47, &qword_1EC648648, &unk_1D1E8DD80);
    v45 = 0;
  }

  if (!v35)
  {
    return v42;
  }

  return v41 && v38 == v45;
}

unint64_t MatterCommandFields.asDictionary()()
{
  v1 = sub_1D19D06A8(*v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648318, &unk_1D1E8D030);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E73A90;
  v3 = *MEMORY[0x1E696F550];
  *(inited + 32) = sub_1D1E6781C();
  *(inited + 40) = v4;
  v5 = *MEMORY[0x1E696F548];
  v6 = sub_1D1E6781C();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v6;
  *(inited + 56) = v7;
  v8 = *MEMORY[0x1E696F568];
  *(inited + 80) = sub_1D1E6781C();
  *(inited + 88) = v9;
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647FA8, &unk_1D1E8DD90);
  *(inited + 96) = v1;
  v10 = sub_1D18D6538(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646238, &qword_1D1E7E8D0);
  swift_arrayDestroy();
  return v10;
}

uint64_t MatterCommand.expectedValues(for:endpointID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v26 = a1 + 64;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 64);
    v7 = (v4 + 63) >> 6;

    v9 = 0;
    for (i = MEMORY[0x1E69E7CC0]; v6; i = v32)
    {
      v31 = i;
      v11 = v9;
LABEL_10:
      v12 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v13 = v12 | (v11 << 6);
      v14 = *(*(a1 + 48) + 8 * v13);
      v15 = *(a1 + 56) + 16 * v13;
      v16 = *v15;
      v17 = *(v15 + 8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6474E0, &unk_1D1E8D5E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D1E739C0;
      *(inited + 32) = v14;
      v19 = inited + 32;
      *(inited + 40) = v16;
      *(inited + 48) = v17;
      v30 = sub_1D18D6FA8(inited);
      swift_setDeallocating();
      sub_1D1741AF8(v16, v17);
      sub_1D1741A30(v19, &qword_1EC6474E8, &unk_1D1E86820);
      v20 = sub_1D1E692AC();
      (*(a4 + 40))(&v32, a3, a4);
      v21 = dword_1D1E8DEEC[v32];
      v22 = sub_1D1E692CC();
      v23 = sub_1D1E692CC();
      v24 = [objc_opt_self() attributePathWithEndpointID:v20 clusterID:v22 attributeID:v23];

      v25 = _s13HomeDataModel13MatterCommandPAAE15_expectedValues3for19matterAttributePathSaySDySSs8Sendable_pGGSDySo18MTRAttributeIDTypeVAA0djB7BuilderOG_So0mK0CtF_0(v30, v24);

      v32 = v31;
      result = sub_1D17A386C(v25);
    }

    while (1)
    {
      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v11 >= v7)
      {

        return i;
      }

      v6 = *(v26 + 8 * v11);
      ++v9;
      if (v6)
      {
        v31 = i;
        v9 = v11;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

void MatterCommandFields.value()(uint64_t a1@<X8>)
{
  v3 = *v1;
  sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
  v4 = sub_1D1E684DC();
  sub_1D1914B4C(v4, v3, a1);
}

HomeDataModel::MatterCommandFields __swiftcall MatterCommandFields.init(values:)(Swift::OpaquePointer values)
{
  v27 = v1;
  v3 = sub_1D18D4C50(MEMORY[0x1E69E7CC0]);
  v4 = *(values._rawValue + 2);
  if (!v4)
  {
LABEL_16:

    *v27 = v3;
    return result;
  }

  v5 = 0;
  v6 = values._rawValue + 40;
  while (v5 < *(values._rawValue + 2))
  {
    v10 = *(v6 - 1);
    v11 = *v6;
    sub_1D1741AF8(v10, *v6);
    v12 = sub_1D1E6821C();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = sub_1D171D228(v12);
    v16 = v3[2];
    v17 = (v15 & 1) == 0;
    v18 = __OFADD__(v16, v17);
    v19 = v16 + v17;
    if (v18)
    {
      goto LABEL_18;
    }

    v20 = v15;
    if (v3[3] < v19)
    {
      sub_1D1720648(v19, isUniquelyReferenced_nonNull_native);
      v14 = sub_1D171D228(v12);
      if ((v20 & 1) != (v21 & 1))
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v20)
      {
        goto LABEL_3;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

    v25 = v14;
    sub_1D1733C14();
    v14 = v25;
    if (v20)
    {
LABEL_3:
      v7 = v3[7] + 16 * v14;
      v8 = *v7;
      *v7 = v10;
      v9 = *(v7 + 8);
      *(v7 + 8) = v11;
      sub_1D1757AE8(v8, v9);

      goto LABEL_4;
    }

LABEL_12:
    v3[(v14 >> 6) + 8] |= 1 << v14;
    *(v3[6] + 8 * v14) = v12;
    v22 = v3[7] + 16 * v14;
    *v22 = v10;
    *(v22 + 8) = v11;
    v23 = v3[2];
    v18 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (v18)
    {
      goto LABEL_19;
    }

    v3[2] = v24;
LABEL_4:
    ++v5;

    v6 += 16;
    if (v4 == v5)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
  result.values._rawValue = sub_1D1E690FC();
  __break(1u);
  return result;
}

void MatterCommandFields.init(value:contextTag:)(uint64_t a1@<X0>, void *a2@<X1>, unint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = sub_1D18D4C50(MEMORY[0x1E69E7CC0]);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a3 = 0x8000000000000000;
  sub_1D17524E4(v5, v6, a2, isUniquelyReferenced_nonNull_native);

  *a3 = v7;
}

double MatterCommand.operationType.getter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t MatterCommand.hash(into:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  if (((*(a3 + 24))(a2, a3) & 0x100000000) != 0)
  {
    sub_1D1E6922C();
  }

  else
  {
    sub_1D1E6922C();
    sub_1D1E6924C();
  }

  (*(a3 + 40))(&v12, a2, a3);
  v6 = dword_1D1E8DEEC[v12];
  sub_1D1E6924C();
  v7 = (*(a3 + 56))(a2, a3);
  if (v7)
  {
    v8 = v7;
    sub_1D1E6922C();
    sub_1D18560F4(a1, v8);
  }

  else
  {
    sub_1D1E6922C();
  }

  (*(a3 + 64))(&v11, a2, a3);
  v9 = v11;
  if (v11)
  {
    sub_1D1E6922C();
    sub_1D1855E28(a1, v9);
  }

  else
  {
    sub_1D1E6922C();
  }

  (*(a3 + 88))(a2, a3);
  sub_1D1E678EC();
}

uint64_t sub_1D19D21F8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for StaticMatterDevice();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static MatterDeviceType.primaryDeviceType(for:)(*(a2 + *(v8 + 40)), &v27);
  if (v27 == 23)
  {
    v11 = sub_1D1909778();
    sub_1D19097CC(a2, v10);
    v12 = sub_1D1E685AC();
    v13 = *(v12 - 8);
    v14 = *(v13 + 64);
    MEMORY[0x1EEE9AC00](v12);
    v16 = (&v23 - v15);
    v17 = a1;
    StaticRVCClusterGroup.Command.Template.init(matterCommand:device:)(v17, v10, v16);
    v18 = off_1F4D71968;
    if ((*(off_1F4D71968 + 6))(v16, 1, &type metadata for StaticRVCClusterGroup.Command.Template) == 1)
    {
      sub_1D19D4620(a2);

      (*(v13 + 8))(v16, v12);
      v29 = 0;
      v27 = 0u;
      v28 = 0u;
    }

    else
    {
      *(&v28 + 1) = &type metadata for StaticRVCClusterGroup.Command.Template;
      v29 = v11;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v27);
      v18[4](boxed_opaque_existential_1, v16, &type metadata for StaticRVCClusterGroup.Command.Template);

      sub_1D19D4620(a2);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648650, &qword_1D1E8DDA0);
    result = swift_dynamicCast();
    if (result)
    {
      v21 = v26;
      if ((v24 & 0xFFFFFFFFFFFFFEFELL) != 0x3FFFFFEFELL || v26 >= 2u)
      {
        v22 = v25;
        *a3 = v24;
        *(a3 + 8) = v22;
        *(a3 + 16) = v21;
        return result;
      }
    }
  }

  else
  {

    result = sub_1D19D4620(a2);
  }

  *a3 = xmmword_1D1E8DD60;
  *(a3 + 16) = 0;
  return result;
}

uint64_t sub_1D19D249C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for StaticMatterDevice();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static MatterDeviceType.primaryDeviceType(for:)(*(a2 + *(v8 + 40)), &v25);
  if (v25 == 23)
  {
    v11 = sub_1D1909778();
    sub_1D19097CC(a2, v10);
    v12 = sub_1D1E685AC();
    v13 = *(v12 - 8);
    v14 = *(v13 + 64);
    MEMORY[0x1EEE9AC00](v12);
    v16 = (&v22 - v15);
    v17 = a1;
    StaticRVCClusterGroup.Command.Template.init(matterCommand:device:)(v17, v10, v16);
    v18 = off_1F4D71968;
    if ((*(off_1F4D71968 + 6))(v16, 1, &type metadata for StaticRVCClusterGroup.Command.Template) == 1)
    {
      sub_1D19D4620(a2);

      (*(v13 + 8))(v16, v12);
      v27 = 0;
      v25 = 0u;
      v26 = 0u;
    }

    else
    {
      *(&v26 + 1) = &type metadata for StaticRVCClusterGroup.Command.Template;
      v27 = v11;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v25);
      v18[4](boxed_opaque_existential_1, v16, &type metadata for StaticRVCClusterGroup.Command.Template);

      sub_1D19D4620(a2);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648650, &qword_1D1E8DDA0);
    result = swift_dynamicCast();
    if (result && v24 != 255)
    {
      v21 = (v23 | (v24 << 32)) >> 32;
      *a3 = v23;
      goto LABEL_9;
    }
  }

  else
  {

    result = sub_1D19D4620(a2);
  }

  *a3 = 0;
  LOBYTE(v21) = -1;
LABEL_9:
  *(a3 + 4) = v21;
  return result;
}

uint64_t sub_1D19D2728@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = type metadata accessor for StaticMatterDevice();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v22[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static MatterDeviceType.primaryDeviceType(for:)(*(a2 + *(v8 + 40)), &v24);
  if (v24 == 23)
  {
    v11 = sub_1D1909778();
    sub_1D19097CC(a2, v10);
    v12 = sub_1D1E685AC();
    v13 = *(v12 - 8);
    v14 = *(v13 + 64);
    MEMORY[0x1EEE9AC00](v12);
    v16 = &v22[-v15];
    v17 = a1;
    StaticRVCClusterGroup.Command.Template.init(matterCommand:device:)(v17, v10, v16);
    v18 = off_1F4D71968;
    if ((*(off_1F4D71968 + 6))(v16, 1, &type metadata for StaticRVCClusterGroup.Command.Template) == 1)
    {
      sub_1D19D4620(a2);

      (*(v13 + 8))(v16, v12);
      v26 = 0;
      v24 = 0u;
      v25 = 0u;
    }

    else
    {
      *(&v25 + 1) = &type metadata for StaticRVCClusterGroup.Command.Template;
      v26 = v11;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v24);
      v18[4](boxed_opaque_existential_1, v16, &type metadata for StaticRVCClusterGroup.Command.Template);

      sub_1D19D4620(a2);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648650, &qword_1D1E8DDA0);
    result = swift_dynamicCast();
    if (result && v23 != 2)
    {
      v21 = v23 & 1;
      goto LABEL_9;
    }
  }

  else
  {

    result = sub_1D19D4620(a2);
  }

  v21 = 2;
LABEL_9:
  *a3 = v21;
  return result;
}

uint64_t sub_1D19D29A0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = type metadata accessor for StaticMatterDevice();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v22[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static MatterDeviceType.primaryDeviceType(for:)(*(a2 + *(v8 + 40)), &v23);
  if (v23 != 23)
  {

    result = sub_1D19D4620(a2);
LABEL_8:
    v21 = 7;
    goto LABEL_9;
  }

  v11 = sub_1D1909778();
  sub_1D19097CC(a2, v10);
  v12 = sub_1D1E685AC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v22[-v15];
  v17 = a1;
  StaticRVCClusterGroup.Command.Template.init(matterCommand:device:)(v17, v10, v16);
  v18 = off_1F4D71968;
  if ((*(off_1F4D71968 + 6))(v16, 1, &type metadata for StaticRVCClusterGroup.Command.Template) == 1)
  {
    sub_1D19D4620(a2);

    (*(v13 + 8))(v16, v12);
    v25 = 0;
    v23 = 0u;
    v24 = 0u;
  }

  else
  {
    *(&v24 + 1) = &type metadata for StaticRVCClusterGroup.Command.Template;
    v25 = v11;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v23);
    v18[4](boxed_opaque_existential_1, v16, &type metadata for StaticRVCClusterGroup.Command.Template);

    sub_1D19D4620(a2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648650, &qword_1D1E8DDA0);
  result = swift_dynamicCast();
  if (!result)
  {
    goto LABEL_8;
  }

  v21 = v22[15];
LABEL_9:
  *a3 = v21;
  return result;
}

uint64_t MatterCommandTemplate.init(matterCommand:device:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1D1E685AC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v32 - v11;
  v13 = type metadata accessor for StaticMatterDevice();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  static MatterDeviceType.primaryDeviceType(for:)(*(a2 + *(v15 + 40)), &v36);
  if (v36 == 23)
  {
    v33 = v9;
    v35 = a4;
    v32 = sub_1D1909778();
    sub_1D19097CC(a2, v17);
    v18 = sub_1D1E685AC();
    v34 = &v32;
    v19 = *(v18 - 8);
    v20 = *(v19 + 64);
    MEMORY[0x1EEE9AC00](v18);
    v22 = (&v32 - v21);
    v23 = a1;
    StaticRVCClusterGroup.Command.Template.init(matterCommand:device:)(v23, v17, v22);
    v24 = off_1F4D71968;
    if ((*(off_1F4D71968 + 6))(v22, 1, &type metadata for StaticRVCClusterGroup.Command.Template) == 1)
    {
      sub_1D19D4620(a2);

      (*(v19 + 8))(v22, v18);
      v38 = 0;
      v36 = 0u;
      v37 = 0u;
    }

    else
    {
      *(&v37 + 1) = &type metadata for StaticRVCClusterGroup.Command.Template;
      v38 = v32;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v36);
      v24[4](boxed_opaque_existential_1, v22, &type metadata for StaticRVCClusterGroup.Command.Template);

      sub_1D19D4620(a2);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648650, &qword_1D1E8DDA0);
    v27 = swift_dynamicCast();
    v25 = *(a3 - 8);
    v28 = *(v25 + 56);
    if (v27)
    {
      v29 = *(a3 - 8);
      v28(v12, 0, 1, a3);
      v30 = v35;
      (*(v29 + 32))(v35, v12, a3);
      return (v28)(v30, 0, 1, a3);
    }

    v28(v12, 1, 1, a3);
    (*(v33 + 8))(v12, v8);
    a4 = v35;
  }

  else
  {

    sub_1D19D4620(a2);
    v25 = *(a3 - 8);
  }

  return (*(v25 + 56))(a4, 1, 1, a3);
}

uint64_t MatterCommand.isSimilarCommand(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  result = (*(v6 + 56))(v5, v6);
  if (result)
  {
    v8 = result;
    result = (*(a3 + 56))(a2, a3);
    if (result)
    {
      v9 = 0;
      v10 = 1 << *(v8 + 32);
      if (v10 < 64)
      {
        v11 = ~(-1 << v10);
      }

      else
      {
        v11 = -1;
      }

      v12 = v11 & *(v8 + 64);
LABEL_8:
      if (v12)
      {
        v13 = v9;
LABEL_13:
        v14 = 0;
        v15 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
        v16 = *(v8 + 48) + ((v13 << 9) | (8 * v15));
        v17 = 1 << *(result + 32);
        if (v17 < 64)
        {
          v18 = ~(-1 << v17);
        }

        else
        {
          v18 = -1;
        }

        v19 = v18 & *(result + 64);
        v20 = *v16;
        v21 = *(v16 + 4);
        v22 = (v17 + 63) >> 6;
        while (v19)
        {
LABEL_22:
          v24 = __clz(__rbit64(v19));
          v19 &= v19 - 1;
          v25 = *(result + 48) + ((v14 << 9) | (8 * v24));
          if (*v25 == v20 && dword_1D1E8DEEC[*(v25 + 4)] == dword_1D1E8DEEC[v21])
          {

            return 1;
          }
        }

        while (1)
        {
          v23 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            break;
          }

          if (v23 >= v22)
          {
            v9 = v13;
            goto LABEL_8;
          }

          v19 = *(result + 64 + 8 * v23);
          ++v14;
          if (v19)
          {
            v14 = v23;
            goto LABEL_22;
          }
        }

        __break(1u);
      }

      else
      {
        while (1)
        {
          v13 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v13 >= ((v10 + 63) >> 6))
          {

            goto LABEL_26;
          }

          v12 = *(v8 + 64 + 8 * v13);
          ++v9;
          if (v12)
          {
            goto LABEL_13;
          }
        }
      }

      __break(1u);
    }

    else
    {
LABEL_26:

      return 0;
    }
  }

  return result;
}

uint64_t MatterCommandFields.values.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t MatterCommandFields.hashValue.getter()
{
  v1 = *v0;
  sub_1D1E6920C();
  sub_1D1855E28(v3, v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D19D32E0()
{
  v1 = *v0;
  sub_1D1E6920C();
  sub_1D1855E28(v3, v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D19D3330()
{
  v1 = *v0;
  sub_1D1E6920C();
  sub_1D1855E28(v3, v1);
  return sub_1D1E6926C();
}

uint64_t Array<A>.byExecutionOrder()()
{
  sub_1D1E67D1C();
  swift_getWitnessTable();
  return sub_1D1E67ABC();
}

uint64_t sub_1D19D3460(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D1E0C0A8(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_1D19D34CC(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1D19D34CC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1D1E68F9C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643810, &qword_1D1E71F80);
        v5 = sub_1D1E67C8C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1D19D3740(v7, v8, a1, v4);
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
    return sub_1D19D35D4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1D19D35D4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 40 * a3;
    v6 = result - a3;
LABEL_5:
    v24 = a3;
    v7 = v6;
    v17 = v5;
    while (1)
    {
      sub_1D17419CC(v5, &v21);
      sub_1D17419CC(v5 - 40, v18);
      v8 = v22;
      v9 = v23;
      __swift_project_boxed_opaque_existential_1(&v21, v22);
      v10 = (*(v9 + 48))(v8, v9);
      v11 = v19;
      v12 = v20;
      __swift_project_boxed_opaque_existential_1(v18, v19);
      v13 = (*(v12 + 48))(v11, v12);
      __swift_destroy_boxed_opaque_existential_1(v18);
      result = __swift_destroy_boxed_opaque_existential_1(&v21);
      if (v10 >= v13)
      {
LABEL_4:
        a3 = v24 + 1;
        v5 = v17 + 40;
        --v6;
        if (v24 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      sub_1D1742190(v5, &v21);
      v14 = *(v5 - 24);
      *v5 = *(v5 - 40);
      *(v5 + 16) = v14;
      *(v5 + 32) = *(v5 - 8);
      result = sub_1D1742190(&v21, v5 - 40);
      v5 -= 40;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D19D3740(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v106 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_91:
    v8 = *v106;
    if (!*v106)
    {
      goto LABEL_129;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_123:
      result = sub_1D1E0BE44(v9);
      v9 = result;
    }

    v120 = v9;
    v93 = *(v9 + 16);
    if (v93 >= 2)
    {
      while (1)
      {
        v94 = *v6;
        if (!*v6)
        {
          goto LABEL_127;
        }

        v6 = (v93 - 1);
        v95 = *(v9 + 16 * v93);
        v96 = v9;
        v97 = *(v9 + 16 * (v93 - 1) + 32);
        v9 = *(v9 + 16 * (v93 - 1) + 40);
        sub_1D19D3F04((v94 + 40 * v95), (v94 + 40 * v97), v94 + 40 * v9, v8);
        if (v5)
        {
        }

        if (v9 < v95)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v96 = sub_1D1E0BE44(v96);
        }

        if (v93 - 2 >= *(v96 + 2))
        {
          goto LABEL_117;
        }

        v98 = &v96[16 * v93];
        *v98 = v95;
        *(v98 + 1) = v9;
        v120 = v96;
        result = sub_1D1E0BDB8(v6);
        v9 = v120;
        v93 = *(v120 + 16);
        v6 = a3;
        if (v93 <= 1)
        {
        }
      }
    }
  }

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8;
    v11 = v8 + 1;
    if ((v8 + 1) >= v7)
    {
      goto LABEL_21;
    }

    v112 = v7;
    v102 = v5;
    v12 = *v6;
    sub_1D17419CC(*v6 + 40 * v11, &v117);
    v13 = 40 * v8;
    v14 = v12 + 40 * v8;
    sub_1D17419CC(v14, v114);
    v15 = v118;
    v16 = v119;
    __swift_project_boxed_opaque_existential_1(&v117, v118);
    v110 = (*(v16 + 48))(v15, v16);
    v18 = v115;
    v17 = v116;
    __swift_project_boxed_opaque_existential_1(v114, v115);
    v108 = (*(v17 + 48))(v18, v17);
    __swift_destroy_boxed_opaque_existential_1(v114);
    result = __swift_destroy_boxed_opaque_existential_1(&v117);
    v104 = v8;
    v19 = v8 + 2;
    v20 = v14 + 80;
    while (1)
    {
      v11 = v112;
      if (v112 == v19)
      {
        break;
      }

      sub_1D17419CC(v20, &v117);
      sub_1D17419CC(v20 - 40, v114);
      v22 = v118;
      v21 = v119;
      __swift_project_boxed_opaque_existential_1(&v117, v118);
      v8 = (*(v21 + 48))(v22, v21);
      v24 = v115;
      v23 = v116;
      __swift_project_boxed_opaque_existential_1(v114, v115);
      v25 = (*(v23 + 48))(v24, v23);
      __swift_destroy_boxed_opaque_existential_1(v114);
      result = __swift_destroy_boxed_opaque_existential_1(&v117);
      ++v19;
      v20 += 40;
      if (v110 < v108 == v8 >= v25)
      {
        v11 = v19 - 1;
        break;
      }
    }

    v5 = v102;
    v6 = a3;
    if (v110 < v108)
    {
      v8 = v104;
      if (v11 < v104)
      {
        goto LABEL_120;
      }

      if (v104 >= v11)
      {
        v10 = v104;
        goto LABEL_21;
      }

      v99 = v9;
      v26 = 40 * v11 - 40;
      v27 = v11;
      do
      {
        if (v8 != --v27)
        {
          v32 = *a3;
          if (!*a3)
          {
            goto LABEL_126;
          }

          v28 = v32 + v13;
          v29 = v32 + v26;
          sub_1D1742190((v32 + v13), &v117);
          v30 = *(v29 + 32);
          v31 = *(v29 + 16);
          *v28 = *v29;
          *(v28 + 16) = v31;
          *(v28 + 32) = v30;
          result = sub_1D1742190(&v117, v29);
        }

        ++v8;
        v26 -= 40;
        v13 += 40;
      }

      while (v8 < v27);
      v9 = v99;
    }

    v10 = v104;
LABEL_21:
    v33 = v6[1];
    if (v11 < v33)
    {
      if (__OFSUB__(v11, v10))
      {
        goto LABEL_119;
      }

      if (v11 - v10 < a4)
      {
        if (__OFADD__(v10, a4))
        {
          goto LABEL_121;
        }

        if (&v10[a4] >= v33)
        {
          v8 = v6[1];
        }

        else
        {
          v8 = &v10[a4];
        }

        if (v8 < v10)
        {
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        if (v11 != v8)
        {
          break;
        }
      }
    }

    v8 = v11;
    if (v11 < v10)
    {
      goto LABEL_118;
    }

LABEL_31:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D177D070(0, *(v9 + 16) + 1, 1, v9);
      v9 = result;
    }

    v35 = *(v9 + 16);
    v34 = *(v9 + 24);
    v36 = v35 + 1;
    if (v35 >= v34 >> 1)
    {
      result = sub_1D177D070((v34 > 1), v35 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 16) = v36;
    v37 = v9 + 16 * v35;
    *(v37 + 32) = v10;
    *(v37 + 40) = v8;
    v38 = *v106;
    if (!*v106)
    {
      goto LABEL_128;
    }

    if (v35)
    {
      while (1)
      {
        v39 = v36 - 1;
        if (v36 >= 4)
        {
          break;
        }

        if (v36 == 3)
        {
          v40 = *(v9 + 32);
          v41 = *(v9 + 40);
          v50 = __OFSUB__(v41, v40);
          v42 = v41 - v40;
          v43 = v50;
LABEL_50:
          if (v43)
          {
            goto LABEL_107;
          }

          v56 = (v9 + 16 * v36);
          v58 = *v56;
          v57 = v56[1];
          v59 = __OFSUB__(v57, v58);
          v60 = v57 - v58;
          v61 = v59;
          if (v59)
          {
            goto LABEL_110;
          }

          v62 = (v9 + 32 + 16 * v39);
          v64 = *v62;
          v63 = v62[1];
          v50 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v50)
          {
            goto LABEL_113;
          }

          if (__OFADD__(v60, v65))
          {
            goto LABEL_114;
          }

          if (v60 + v65 >= v42)
          {
            if (v42 < v65)
            {
              v39 = v36 - 2;
            }

            goto LABEL_71;
          }

          goto LABEL_64;
        }

        v66 = (v9 + 16 * v36);
        v68 = *v66;
        v67 = v66[1];
        v50 = __OFSUB__(v67, v68);
        v60 = v67 - v68;
        v61 = v50;
LABEL_64:
        if (v61)
        {
          goto LABEL_109;
        }

        v69 = v9 + 16 * v39;
        v71 = *(v69 + 32);
        v70 = *(v69 + 40);
        v50 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v50)
        {
          goto LABEL_112;
        }

        if (v72 < v60)
        {
          goto LABEL_3;
        }

LABEL_71:
        v77 = v39 - 1;
        if (v39 - 1 >= v36)
        {
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (!*v6)
        {
          goto LABEL_125;
        }

        v78 = *(v9 + 32 + 16 * v77);
        v79 = *(v9 + 32 + 16 * v39 + 8);
        sub_1D19D3F04((*v6 + 40 * v78), (*v6 + 40 * *(v9 + 32 + 16 * v39)), *v6 + 40 * v79, v38);
        if (v5)
        {
        }

        if (v79 < v78)
        {
          goto LABEL_103;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1D1E0BE44(v9);
        }

        if (v77 >= *(v9 + 16))
        {
          goto LABEL_104;
        }

        v80 = v9 + 16 * v77;
        *(v80 + 32) = v78;
        *(v80 + 40) = v79;
        v120 = v9;
        result = sub_1D1E0BDB8(v39);
        v9 = v120;
        v36 = *(v120 + 16);
        if (v36 <= 1)
        {
          goto LABEL_3;
        }
      }

      v44 = v9 + 32 + 16 * v36;
      v45 = *(v44 - 64);
      v46 = *(v44 - 56);
      v50 = __OFSUB__(v46, v45);
      v47 = v46 - v45;
      if (v50)
      {
        goto LABEL_105;
      }

      v49 = *(v44 - 48);
      v48 = *(v44 - 40);
      v50 = __OFSUB__(v48, v49);
      v42 = v48 - v49;
      v43 = v50;
      if (v50)
      {
        goto LABEL_106;
      }

      v51 = (v9 + 16 * v36);
      v53 = *v51;
      v52 = v51[1];
      v50 = __OFSUB__(v52, v53);
      v54 = v52 - v53;
      if (v50)
      {
        goto LABEL_108;
      }

      v50 = __OFADD__(v42, v54);
      v55 = v42 + v54;
      if (v50)
      {
        goto LABEL_111;
      }

      if (v55 >= v47)
      {
        v73 = (v9 + 32 + 16 * v39);
        v75 = *v73;
        v74 = v73[1];
        v50 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v50)
        {
          goto LABEL_115;
        }

        if (v42 < v76)
        {
          v39 = v36 - 2;
        }

        goto LABEL_71;
      }

      goto LABEL_50;
    }

LABEL_3:
    v7 = v6[1];
    if (v8 >= v7)
    {
      goto LABEL_91;
    }
  }

  v100 = v9;
  v103 = v5;
  v105 = v10;
  v81 = *v6;
  v82 = *v6 + 40 * v11;
  v83 = v10 - v11;
  v109 = v8;
LABEL_82:
  v111 = v82;
  v113 = v11;
  v84 = v83;
  while (1)
  {
    sub_1D17419CC(v82, &v117);
    sub_1D17419CC(v82 - 40, v114);
    v85 = v118;
    v86 = v119;
    __swift_project_boxed_opaque_existential_1(&v117, v118);
    v87 = (*(v86 + 48))(v85, v86);
    v88 = v115;
    v89 = v116;
    __swift_project_boxed_opaque_existential_1(v114, v115);
    v90 = (*(v89 + 48))(v88, v89);
    __swift_destroy_boxed_opaque_existential_1(v114);
    result = __swift_destroy_boxed_opaque_existential_1(&v117);
    if (v87 >= v90)
    {
LABEL_81:
      ++v11;
      v82 = v111 + 40;
      --v83;
      v8 = v109;
      if (v113 + 1 != v109)
      {
        goto LABEL_82;
      }

      v5 = v103;
      v10 = v105;
      v6 = a3;
      v9 = v100;
      if (v109 < v105)
      {
        goto LABEL_118;
      }

      goto LABEL_31;
    }

    if (!v81)
    {
      break;
    }

    sub_1D1742190(v82, &v117);
    v91 = *(v82 - 24);
    *v82 = *(v82 - 40);
    *(v82 + 16) = v91;
    *(v82 + 32) = *(v82 - 8);
    sub_1D1742190(&v117, v82 - 40);
    v82 -= 40;
    if (__CFADD__(v84++, 1))
    {
      goto LABEL_81;
    }
  }

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
  return result;
}

uint64_t sub_1D19D3F04(char *__src, char *a2, unint64_t a3, char *a4)
{
  v4 = a3;
  v5 = __src;
  v6 = a2 - __src;
  v7 = (a2 - __src) / 40;
  v8 = a3 - a2;
  v9 = (a3 - a2) / 40;
  if (v7 >= v9)
  {
    v27 = a2;
    if (a4 != a2 || &a2[40 * v9] <= a4)
    {
      v28 = a4;
      memmove(a4, a2, 40 * v9);
      a4 = v28;
    }

    v12 = &a4[40 * v9];
    v11 = a4;
    if (v8 < 40 || v27 <= v5)
    {
      v26 = v27;
      goto LABEL_36;
    }

    v51 = v5;
    v59 = a4;
    while (1)
    {
      __dst = v27;
      v29 = (v27 - 40);
      v30 = (v12 - 40);
      v31 = v4 - 40;
      while (1)
      {
        v34 = v30 + 40;
        v35 = v31;
        v36 = (v31 + 40);
        sub_1D17419CC(v30, v56);
        v37 = v29;
        sub_1D17419CC(v29, v53);
        v39 = v57;
        v38 = v58;
        __swift_project_boxed_opaque_existential_1(v56, v57);
        v40 = (*(v38 + 48))(v39, v38);
        v42 = v54;
        v41 = v55;
        __swift_project_boxed_opaque_existential_1(v53, v54);
        v43 = (*(v41 + 48))(v42, v41);
        __swift_destroy_boxed_opaque_existential_1(v53);
        __swift_destroy_boxed_opaque_existential_1(v56);
        if (v40 < v43)
        {
          break;
        }

        if (v36 != v34)
        {
          v44 = *v30;
          v45 = *(v30 + 16);
          *(v35 + 32) = *(v30 + 32);
          *v35 = v44;
          *(v35 + 16) = v45;
        }

        v32 = v30 - 40;
        v31 = v35 - 40;
        v11 = v59;
        v33 = v30 > v59;
        v30 -= 40;
        v29 = v37;
        if (!v33)
        {
          v12 = (v32 + 40);
          v26 = __dst;
          goto LABEL_36;
        }
      }

      v26 = v37;
      v4 = v35;
      if (v36 != __dst)
      {
        v46 = *v37;
        v47 = *(v37 + 1);
        *(v35 + 32) = *(v37 + 4);
        *v35 = v46;
        *(v35 + 16) = v47;
      }

      v11 = v59;
      if (v34 > v59)
      {
        v12 = (v30 + 40);
        v27 = v37;
        if (v37 > v51)
        {
          continue;
        }
      }

      v12 = (v30 + 40);
      goto LABEL_36;
    }
  }

  v11 = a4;
  if (a4 != __src || &__src[40 * v7] <= a4)
  {
    memmove(a4, __src, 40 * v7);
  }

  v12 = &v11[40 * v7];
  if (v6 < 40 || a2 >= v4)
  {
    v26 = v5;
    goto LABEL_36;
  }

  v13 = a2;
  do
  {
    v14 = v4;
    v15 = v12;
    sub_1D17419CC(v13, v56);
    sub_1D17419CC(v11, v53);
    v16 = v57;
    v17 = v58;
    __swift_project_boxed_opaque_existential_1(v56, v57);
    v18 = (*(v17 + 48))(v16, v17);
    v19 = v54;
    v20 = v55;
    __swift_project_boxed_opaque_existential_1(v53, v54);
    v21 = (*(v20 + 48))(v19, v20);
    __swift_destroy_boxed_opaque_existential_1(v53);
    __swift_destroy_boxed_opaque_existential_1(v56);
    if (v18 < v21)
    {
      v22 = v13;
      v23 = v5 == v13;
      v13 += 40;
      if (v23)
      {
        goto LABEL_14;
      }

LABEL_13:
      v24 = *v22;
      v25 = *(v22 + 1);
      *(v5 + 4) = *(v22 + 4);
      *v5 = v24;
      *(v5 + 1) = v25;
      goto LABEL_14;
    }

    v22 = v11;
    v23 = v5 == v11;
    v11 += 40;
    if (!v23)
    {
      goto LABEL_13;
    }

LABEL_14:
    v5 += 40;
    v12 = v15;
    if (v11 >= v15)
    {
      break;
    }

    v4 = v14;
  }

  while (v13 < v14);
  v26 = v5;
LABEL_36:
  v48 = ((v12 - v11) * 0x6666666666666667) >> 64;
  v49 = (v48 >> 4) + (v48 >> 63);
  if (v26 != v11 || v26 >= &v11[40 * v49])
  {
    memmove(v26, v11, 40 * v49);
  }

  return 1;
}

uint64_t sub_1D19D42DC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
  sub_1D1E67C0C();
  return 0;
}

uint64_t sub_1D19D4620(uint64_t a1)
{
  v2 = type metadata accessor for StaticMatterDevice();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_1D19D467C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v2 + 48);
  v4 = v3(v1, v2);
  return v4 < v3(v1, v2);
}

unint64_t sub_1D19D4708()
{
  result = qword_1EC648658;
  if (!qword_1EC648658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648658);
  }

  return result;
}

uint64_t dispatch thunk of MatterCommandProvider.run(command:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 32);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1D17C4BFC;

  return v11(a1, a2, a3);
}

HomeDataModel::MatterStatusCode_optional __swiftcall MatterStatusCode.init(rawValue:)(HomeDataModel::MatterStatusCode_optional rawValue)
{
  if (rawValue.value > 0x88u)
  {
    if (rawValue.value == 137)
    {
      rawValue.value = HomeDataModel_MatterStatusCode_resourcesExhausted;
      *v1 = HomeDataModel_MatterStatusCode_resourcesExhausted;
      return rawValue;
    }

    if (rawValue.value != 203)
    {
      if (rawValue.value == 156)
      {
        rawValue.value = HomeDataModel_MatterStatusCode_busy;
        *v1 = HomeDataModel_MatterStatusCode_busy;
        return rawValue;
      }

      goto LABEL_11;
    }

    rawValue.value = HomeDataModel_MatterStatusCode_invalidInState;
    *v1 = HomeDataModel_MatterStatusCode_invalidInState;
  }

  else
  {
    if (rawValue.value < HomeDataModel_MatterStatusCode_busy)
    {
LABEL_12:
      *v1 = rawValue;
      return rawValue;
    }

    if (rawValue.value != 126)
    {
      if (rawValue.value == (HomeDataModel_MatterStatusCode_unsupportedAccess|0x80))
      {
        rawValue.value = HomeDataModel_MatterStatusCode_invalidCommand;
        *v1 = HomeDataModel_MatterStatusCode_invalidCommand;
        return rawValue;
      }

LABEL_11:
      rawValue.value = HomeDataModel_MatterStatusCode_unknownDefault;
      goto LABEL_12;
    }

    rawValue.value = HomeDataModel_MatterStatusCode_unsupportedAccess;
    *v1 = HomeDataModel_MatterStatusCode_unsupportedAccess;
  }

  return rawValue;
}

unint64_t sub_1D19D4B98()
{
  result = qword_1EC648660;
  if (!qword_1EC648660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648660);
  }

  return result;
}

uint64_t sub_1D19D4BEC()
{
  v1 = *v0;
  sub_1D1E6920C();
  sub_1D1E6922C();
  return sub_1D1E6926C();
}

uint64_t sub_1D19D4C8C()
{
  v1 = *v0;
  sub_1D1E6920C();
  sub_1D1E6922C();
  return sub_1D1E6926C();
}

unint64_t sub_1D19D4D2C()
{
  result = qword_1EC648668;
  if (!qword_1EC648668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648668);
  }

  return result;
}

uint64_t StaticEndpoint.run(command:)(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = type metadata accessor for MatterCommandError();
  v2[10] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v5 = type metadata accessor for ClusterPath(0);
  v2[13] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v7 = *(type metadata accessor for StaticCluster() - 8);
  v2[15] = v7;
  v8 = *(v7 + 64) + 15;
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D19D4EB4, 0, 0);
}

uint64_t sub_1D19D4EB4()
{
  v57 = v0;
  v1 = *(v0 + 64);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = (*(v3 + 24))(v2, v3);
  if ((v4 & 0x100000000) != 0)
  {
    v21 = *(v0 + 128);
    v20 = *(v0 + 136);
    v22 = *(v0 + 112);
    v24 = *(v0 + 88);
    v23 = *(v0 + 96);

    v25 = *(v0 + 8);
  }

  else
  {
    v5 = v4;
    v6 = *(v0 + 72);
    v8 = v1[3];
    v7 = v1[4];
    __swift_project_boxed_opaque_existential_1(*(v0 + 64), v8);
    (*(v7 + 40))(&v56, v8, v7);
    v9 = v56;
    v10 = type metadata accessor for StaticEndpoint();
    *(v0 + 144) = v10;
    v11 = *(v6 + v10[9]);
    if (*(v11 + 16))
    {
      v12 = sub_1D171D278(v9);
      if (v13)
      {
        v15 = *(v0 + 128);
        v14 = *(v0 + 136);
        sub_1D19D5F74(*(v11 + 56) + *(*(v0 + 120) + 72) * v12, v15, type metadata accessor for StaticCluster);
        sub_1D19D5FDC(v15, v14, type metadata accessor for StaticCluster);
        v16 = swift_task_alloc();
        *(v0 + 152) = v16;
        *v16 = v0;
        v16[1] = sub_1D19D5480;
        v17 = *(v0 + 136);
        v18 = *(v0 + 64);

        return sub_1D1A324EC(v18);
      }
    }

    v26 = *(v0 + 72);
    v27 = v10[10];
    v28 = sub_1D1A38ABC();
    v29 = sub_1D17198DC(v9, v28);

    if (v29)
    {
      v30 = swift_task_alloc();
      *(v0 + 168) = v30;
      *v30 = v0;
      v30[1] = sub_1D19D5644;
      v31 = *(v0 + 64);

      return sub_1D1A38D68(v31);
    }

    sub_1D17419CC(*(v0 + 64), v0 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643810, &qword_1D1E71F80);
    if (swift_dynamicCast())
    {
      v32 = swift_task_alloc();
      *(v0 + 184) = v32;
      *v32 = v0;
      v32[1] = sub_1D19D57B8;
      v33 = *(v0 + 72);

      return StaticEndpoint.identify()();
    }

    v34 = *(v0 + 104);
    v35 = *(v0 + 112);
    v36 = *(v0 + 80);
    sub_1D19D5F74(*(v0 + 72) + v10[5], v35, type metadata accessor for EndpointPath);
    *(v35 + *(v34 + 20)) = v9;
    sub_1D196E660();
    v37 = swift_allocError();
    v39 = v38;
    (*(*(v10 - 1) + 56))(v38 + v36[8], 1, 1, v10);
    *v39 = -1024;
    sub_1D19D5FDC(v35, v39 + v36[5], type metadata accessor for ClusterPath);
    *(v39 + v36[6]) = v5;
    v40 = (v39 + v36[7]);
    *v40 = 0;
    v40[1] = 0;
    swift_willThrow();
    v41 = *(v0 + 96);
    v42 = *(v0 + 80);
    *(v0 + 56) = v37;
    v43 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
    if (swift_dynamicCast())
    {
      v44 = *(v0 + 144);
      v45 = *(v0 + 88);
      v46 = *(v0 + 96);
      v48 = *(v0 + 72);
      v47 = *(v0 + 80);

      sub_1D19D5FDC(v46, v45, type metadata accessor for MatterCommandError);
      v49 = *(v47 + 32);
      sub_1D19D5F0C(v45 + v49);
      sub_1D19D5F74(v48, v45 + v49, type metadata accessor for StaticEndpoint);
      (*(*(v44 - 8) + 56))(v45 + v49, 0, 1, v44);
      swift_allocError();
      sub_1D19D5F74(v45, v50, type metadata accessor for MatterCommandError);
      swift_willThrow();
      sub_1D19D6044(v45, type metadata accessor for MatterCommandError);
    }

    v52 = *(v0 + 128);
    v51 = *(v0 + 136);
    v53 = *(v0 + 112);
    v55 = *(v0 + 88);
    v54 = *(v0 + 96);

    v25 = *(v0 + 8);
  }

  return v25();
}

uint64_t sub_1D19D5480()
{
  v2 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_1D19D592C;
  }

  else
  {
    v3 = sub_1D19D5594;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D19D5594()
{
  sub_1D19D6044(v0[17], type metadata accessor for StaticCluster);
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[14];
  v5 = v0[11];
  v4 = v0[12];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1D19D5644()
{
  v2 = *(*v1 + 168);
  v3 = *v1;
  v3[22] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D19D5B34, 0, 0);
  }

  else
  {
    v5 = v3[16];
    v4 = v3[17];
    v6 = v3[14];
    v7 = v3[11];
    v8 = v3[12];

    v9 = v3[1];

    return v9();
  }
}

uint64_t sub_1D19D57B8()
{
  v2 = *(*v1 + 184);
  v3 = *v1;
  v3[24] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D19D5D20, 0, 0);
  }

  else
  {
    v5 = v3[16];
    v4 = v3[17];
    v6 = v3[14];
    v7 = v3[11];
    v8 = v3[12];

    v9 = v3[1];

    return v9();
  }
}

uint64_t sub_1D19D592C()
{
  sub_1D19D6044(*(v0 + 136), type metadata accessor for StaticCluster);
  v1 = *(v0 + 160);
  *(v0 + 56) = v1;
  v2 = *(v0 + 96);
  v3 = *(v0 + 80);
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 144);
    v6 = *(v0 + 88);
    v7 = *(v0 + 96);
    v9 = *(v0 + 72);
    v8 = *(v0 + 80);

    sub_1D19D5FDC(v7, v6, type metadata accessor for MatterCommandError);
    v10 = *(v8 + 32);
    sub_1D19D5F0C(v6 + v10);
    sub_1D19D5F74(v9, v6 + v10, type metadata accessor for StaticEndpoint);
    (*(*(v5 - 8) + 56))(v6 + v10, 0, 1, v5);
    sub_1D196E660();
    swift_allocError();
    sub_1D19D5F74(v6, v11, type metadata accessor for MatterCommandError);
    swift_willThrow();
    sub_1D19D6044(v6, type metadata accessor for MatterCommandError);
  }

  v13 = *(v0 + 128);
  v12 = *(v0 + 136);
  v14 = *(v0 + 112);
  v16 = *(v0 + 88);
  v15 = *(v0 + 96);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1D19D5B34()
{
  v1 = *(v0 + 176);
  *(v0 + 56) = v1;
  v2 = *(v0 + 96);
  v3 = *(v0 + 80);
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 144);
    v6 = *(v0 + 88);
    v7 = *(v0 + 96);
    v9 = *(v0 + 72);
    v8 = *(v0 + 80);

    sub_1D19D5FDC(v7, v6, type metadata accessor for MatterCommandError);
    v10 = *(v8 + 32);
    sub_1D19D5F0C(v6 + v10);
    sub_1D19D5F74(v9, v6 + v10, type metadata accessor for StaticEndpoint);
    (*(*(v5 - 8) + 56))(v6 + v10, 0, 1, v5);
    sub_1D196E660();
    swift_allocError();
    sub_1D19D5F74(v6, v11, type metadata accessor for MatterCommandError);
    swift_willThrow();
    sub_1D19D6044(v6, type metadata accessor for MatterCommandError);
  }

  v13 = *(v0 + 128);
  v12 = *(v0 + 136);
  v14 = *(v0 + 112);
  v16 = *(v0 + 88);
  v15 = *(v0 + 96);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1D19D5D20()
{
  v1 = *(v0 + 192);
  *(v0 + 56) = v1;
  v2 = *(v0 + 96);
  v3 = *(v0 + 80);
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 144);
    v6 = *(v0 + 88);
    v7 = *(v0 + 96);
    v9 = *(v0 + 72);
    v8 = *(v0 + 80);

    sub_1D19D5FDC(v7, v6, type metadata accessor for MatterCommandError);
    v10 = *(v8 + 32);
    sub_1D19D5F0C(v6 + v10);
    sub_1D19D5F74(v9, v6 + v10, type metadata accessor for StaticEndpoint);
    (*(*(v5 - 8) + 56))(v6 + v10, 0, 1, v5);
    sub_1D196E660();
    swift_allocError();
    sub_1D19D5F74(v6, v11, type metadata accessor for MatterCommandError);
    swift_willThrow();
    sub_1D19D6044(v6, type metadata accessor for MatterCommandError);
  }

  v13 = *(v0 + 128);
  v12 = *(v0 + 136);
  v14 = *(v0 + 112);
  v16 = *(v0 + 88);
  v15 = *(v0 + 96);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1D19D5F0C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644780, &qword_1D1E91AA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D19D5F74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D19D5FDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D19D6044(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t StaticEndpoint.identify()()
{
  v1[2] = v0;
  v2 = type metadata accessor for ClusterPath(0);
  v1[3] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D19D6138, 0, 0);
}

uint64_t sub_1D19D6138()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);
  v4 = type metadata accessor for StaticEndpoint();
  *(v0 + 40) = v4;
  v5 = *(v4 + 20);
  *(v0 + 136) = v5;
  sub_1D19B0B0C(v3 + v5, v2);
  *(v2 + *(v1 + 20)) = 10;
  sub_1D1741B10(0, &qword_1EC648670, 0x1E696F5A0);
  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  *v6 = v0;
  v6[1] = sub_1D19D6224;
  v7 = *(v0 + 32);

  return sub_1D1A092C4(v7);
}

uint64_t sub_1D19D6224(uint64_t a1)
{
  v2 = *(*v1 + 48);
  v4 = *v1;
  *(*v1 + 56) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D19D6324, 0, 0);
}

uint64_t sub_1D19D6324()
{
  v55 = v0;
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = *(v0 + 16);
    if ((*(v2 + *(*(v0 + 40) + 60)) - 1) > 3u)
    {
      v3 = 5;
    }

    else
    {
      v3 = qword_1D1E8E388[(*(v2 + *(*(v0 + 40) + 60)) - 1)];
    }

    v6 = v2 + *(v0 + 136);
    v7 = [objc_allocWithZone(MEMORY[0x1E696F638]) init];
    *(v0 + 64) = v7;
    v8 = sub_1D1E685DC();
    [v7 setIdentifyTime_];

    v9 = *(v6 + *(type metadata accessor for EndpointPath(0) + 24));
    v10 = MEMORY[0x1E69E7CC8];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v53 = v10;
    v13 = sub_1D171D15C(v9);
    v14 = *(v10 + 16);
    v15 = (v12 & 1) == 0;
    v16 = v14 + v15;
    if (__OFADD__(v14, v15))
    {
      __break(1u);
    }

    else
    {
      v17 = v12;
      if (*(v10 + 24) >= v16)
      {
        v51 = v1;
        if (isUniquelyReferenced_nonNull_native)
        {
          v18 = MEMORY[0x1E69E7CC8];
        }

        else
        {
          sub_1D1737DF0();
          v18 = v53;
        }
      }

      else
      {
        sub_1D172684C(v16, isUniquelyReferenced_nonNull_native);
        v18 = v53;
        v19 = sub_1D171D15C(v9);
        if ((v17 & 1) != (v20 & 1))
        {

          return sub_1D1E690FC();
        }

        v13 = v19;
        v51 = v1;
      }

      v21 = v3;

      if ((v17 & 1) == 0)
      {
        v22 = sub_1D18D4B28(MEMORY[0x1E69E7CC0]);
        v18[(v13 >> 6) + 8] |= 1 << v13;
        *(v18[6] + 2 * v13) = v9;
        *(v18[7] + 8 * v13) = v22;
        v25 = v18[2];
        v26 = __OFADD__(v25, 1);
        v27 = v25 + 1;
        if (v26)
        {
          __break(1u);
          return MEMORY[0x1EEE6DFA0](v22, v23, v24);
        }

        v18[2] = v27;
      }

      v28 = MEMORY[0x1E69E7CC0];
      v29 = *(v0 + 136);
      v30 = *(v0 + 16);
      v31 = v18[7];
      v32 = *(v31 + 8 * v13);
      v33 = swift_isUniquelyReferenced_nonNull_native();
      v53 = *(v31 + 8 * v13);
      *(v31 + 8 * v13) = 0x8000000000000000;
      sub_1D1753B88(v21, 2, 0xA00000000, v33);
      *(v31 + 8 * v13) = v53;
      v52 = v28;
      v53 = v18;
      sub_1D1A1456C(&v53, &v52);

      v9 = v52;
      *(v0 + 72) = v52;
      v53 = 0x6E45636974617473;
      v54 = 0xEF2D746E696F7064;
      v13 = v51;
      v34 = EndpointPath.description.getter();
      MEMORY[0x1D3890F70](v34);

      v3 = v53;
      v10 = v54;
      *(v0 + 80) = v54;
      isUniquelyReferenced_nonNull_native = swift_allocObject();
      *(v0 + 88) = isUniquelyReferenced_nonNull_native;
      *(isUniquelyReferenced_nonNull_native + 16) = v7;
      v35 = qword_1EC6422E8;
      v36 = v7;
      if (v35 == -1)
      {
LABEL_21:
        if (qword_1EC649398)
        {
        }

        else
        {
          v9 = 0;
        }

        ObjectType = swift_getObjectType();
        v38 = v13;
        v39 = sub_1D190C444(v3, v10, ObjectType, 0x796669746E656469, 0xE800000000000000, v9);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FB0, &qword_1D1E840D8);
        v40 = swift_allocObject();
        *(v0 + 96) = v40;
        *(v40 + 24) = 0;
        *(v40 + 16) = v39;
        v41 = swift_allocObject();
        v41[2] = &unk_1D1E8E0B8;
        v41[3] = isUniquelyReferenced_nonNull_native;
        v41[4] = v38;
        v41[5] = v9;
        v41[6] = v3;
        v41[7] = v10;
        v41[8] = ObjectType;
        v41[9] = 0x796669746E656469;
        v41[10] = 0xE800000000000000;
        v41[11] = v40;
        v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FB8, &qword_1D1E840E8);
        v43 = *(v42 + 48);
        v44 = *(v42 + 52);
        v45 = swift_allocObject();
        *(v0 + 104) = v45;
        v46 = v38;

        swift_defaultActor_initialize();
        *(v45 + 16) = 0;
        v47 = *(*v45 + 112);
        v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FC0, &qword_1D1E840F0);
        (*(*(v48 - 8) + 56))(&v45[v47], 1, 1, v48);
        v49 = &v45[*(*v45 + 120)];
        *v49 = 0;
        *(v49 + 1) = 0;
        *(v45 + 14) = &unk_1D1E8E0C8;
        *(v45 + 15) = v41;
        v50 = swift_allocObject();
        *(v0 + 112) = v50;
        v50[2] = v3;
        v50[3] = v10;
        v50[4] = ObjectType;
        v50[5] = 0x796669746E656469;
        v50[6] = 0xE800000000000000;
        v50[7] = v40;

        v22 = sub_1D19D68E4;
        v23 = v45;
        v24 = 0;

        return MEMORY[0x1EEE6DFA0](v22, v23, v24);
      }
    }

    swift_once();
    goto LABEL_21;
  }

  sub_1D19DCC30(*(v0 + 32), type metadata accessor for ClusterPath);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1D19D68E4()
{
  v1 = v0[14];
  v2 = (v0[13] + *(*v0[13] + 120));
  v3 = *v2;
  v4 = v2[1];
  *v2 = sub_1D19DCC20;
  v2[1] = v1;
  sub_1D17169C0(v3);
  v5 = swift_task_alloc();
  v0[15] = v5;
  *v5 = v0;
  v5[1] = sub_1D19D69C0;
  v6 = v0[13];

  return sub_1D19D7D10(sub_1D19D7D10);
}

uint64_t sub_1D19D69C0()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_1D19D6AD4;
  }

  else
  {
    v3 = sub_1D19D6BB4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D19D6AD4()
{
  v1 = v0[12];
  v2 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[7];
  v8 = v0[4];

  sub_1D19DCC30(v8, type metadata accessor for ClusterPath);

  v9 = v0[1];
  v10 = v0[16];

  return v9();
}

uint64_t sub_1D19D6BB4()
{
  v1 = v0[12];
  v2 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[7];

  sub_1D19DCC30(v0[4], type metadata accessor for ClusterPath);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1D19D6C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 112) = v11;
  *(v8 + 120) = v12;
  *(v8 + 96) = v10;
  *(v8 + 80) = a7;
  *(v8 + 88) = a8;
  *(v8 + 64) = a5;
  *(v8 + 72) = a6;
  *(v8 + 48) = a3;
  *(v8 + 56) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D19D6CC8, 0, 0);
}

uint64_t sub_1D19D6CC8()
{
  if (qword_1EC6422E8 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = qword_1EC649398;
  v0[16] = qword_1EC649398;
  v3 = v2;
  v10 = (v1 + *v1);
  v4 = v1[1];
  v5 = swift_task_alloc();
  v0[17] = v5;
  *v5 = v0;
  v5[1] = sub_1D19D6E08;
  v6 = v0[8];
  v7 = v0[9];
  v8 = v0[7];

  return (v10)(v0 + 2, v6, v7, v2);
}

uint64_t sub_1D19D6E08()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v6 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = sub_1D19DD7E8;
  }

  else
  {

    v4 = sub_1D19DD7F0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D19D6F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 112) = v11;
  *(v8 + 120) = v12;
  *(v8 + 96) = v10;
  *(v8 + 80) = a7;
  *(v8 + 88) = a8;
  *(v8 + 64) = a5;
  *(v8 + 72) = a6;
  *(v8 + 48) = a3;
  *(v8 + 56) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D19D6F60, 0, 0);
}

uint64_t sub_1D19D6F60()
{
  if (qword_1EC6422E8 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = qword_1EC649398;
  v0[16] = qword_1EC649398;
  v3 = v2;
  v10 = (v1 + *v1);
  v4 = v1[1];
  v5 = swift_task_alloc();
  v0[17] = v5;
  *v5 = v0;
  v5[1] = sub_1D19D70A0;
  v6 = v0[8];
  v7 = v0[9];
  v8 = v0[7];

  return (v10)(v0 + 2, v6, v7, v2);
}

uint64_t sub_1D19D70A0()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v6 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = sub_1D19D7244;
  }

  else
  {

    v4 = sub_1D19D71BC;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D19D71BC()
{
  sub_1D190C9A8(v0[10], v0[11], v0[12], v0[13], v0[14], (v0 + 2), v0[15]);
  sub_1D1741A30((v0 + 2), &qword_1EC645D58, &unk_1D1E7E530);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1D19D7244()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 120);
  v4 = *(v0 + 104);
  v3 = *(v0 + 112);
  v6 = *(v0 + 88);
  v5 = *(v0 + 96);
  v7 = *(v0 + 80);

  sub_1D190CC44(v7, v6, v5, v4, v3, v1, v2);
  swift_willThrow();
  v8 = *(v0 + 8);
  v9 = *(v0 + 144);

  return v8();
}

uint64_t StaticEndpoint.GeneralCommand.init(clusterKind:commandID:expectedValues:commandFields:)@<X0>(_BYTE *a1@<X0>, int a2@<W1>, uint64_t *a3@<X3>, char *a4@<X8>)
{

  v8 = *a3;

  if (a2)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1 == 10;
  }

  if (v10)
  {
    v11 = 6;
  }

  else
  {
    v11 = 7;
  }

  *a4 = v11;
  return result;
}

void StaticEndpoint.GeneralCommand.commandFields.getter(unint64_t *a1@<X8>)
{
  v3 = *v1;
  if ((v3 - 1) < 2 || v3 == 4)
  {
    v5 = 20;
LABEL_10:
    sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
    v7 = sub_1D1E684DC();
    v6 = sub_1D18D4C50(MEMORY[0x1E69E7CC0]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D17524E4(v5, 2, v7, isUniquelyReferenced_nonNull_native);

    goto LABEL_11;
  }

  if (v3 != 6)
  {
    v5 = 5;
    goto LABEL_10;
  }

  v6 = 0;
LABEL_11:
  *a1 = v6;
}

unint64_t StaticEndpoint.GeneralCommand.expectedValues.getter()
{
  v1 = *v0;
  if (v1 == 6)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646E68, &qword_1D1E83828);
  inited = swift_initStackObject();
  *(inited + 32) = 0;
  v4 = inited + 32;
  *(inited + 16) = xmmword_1D1E739C0;
  *(inited + 36) = 10;
  if ((v1 - 1) > 3u)
  {
    v5 = 5;
  }

  else
  {
    v5 = qword_1D1E8E388[(v1 - 1)];
  }

  *(inited + 40) = v5;
  *(inited + 48) = 2;
  v6 = sub_1D18D4B28(inited);
  swift_setDeallocating();
  sub_1D1741A30(v4, &qword_1EC646E70, &qword_1D1E83830);
  return v6;
}

uint64_t StaticEndpoint.GeneralCommand.hashValue.getter()
{
  v1 = *v0;
  sub_1D1E6920C();
  sub_1D1919E90(v3, v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D19D7590@<X0>(unsigned __int8 *a1@<X0>, int a2@<W1>, uint64_t *a3@<X3>, char *a4@<X8>)
{

  v8 = *a1;
  v9 = *a3;

  if (a2)
  {
    v11 = 0;
  }

  else
  {
    v11 = v8 == 10;
  }

  if (v11)
  {
    v12 = 6;
  }

  else
  {
    v12 = 7;
  }

  *a4 = v12;
  return result;
}

uint64_t sub_1D19D7610()
{
  v1 = *v0;
  sub_1D1E6920C();
  sub_1D1919E90(v3, v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D19D7660()
{
  v1 = *v0;
  sub_1D1E6920C();
  sub_1D1919E90(v3, v1);
  return sub_1D1E6926C();
}

uint64_t StaticEndpoint.identifyCommand()@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StaticEndpoint();
  *a1 = *(v1 + *(result + 60));
  return result;
}

uint64_t sub_1D19D76E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[21] = a4;
  v5[22] = a5;
  v5[19] = a2;
  v5[20] = a3;
  v5[18] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D19D770C, 0, 0);
}

uint64_t sub_1D19D770C()
{
  v1 = v0[20];
  if (v1)
  {
    sub_1D18F9814(v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
    v2 = sub_1D1E67BFC();
  }

  else
  {
    v2 = 0;
  }

  v0[23] = v2;
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[19];
  v0[2] = v0;
  v0[3] = sub_1D191CA34;
  v6 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D17B04C8;
  v0[13] = &block_descriptor_28;
  v0[14] = v6;
  [v5 identifyWithParams:v3 expectedValues:v2 expectedValueInterval:v4 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t StaticEndpoint.IdentifyType.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = result;
  if (result >= 6u)
  {
    v2 = 6;
  }

  *a2 = v2;
  return result;
}

id StaticEndpoint.GeneralCommand.command(with:endpoint:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = a2 + *(type metadata accessor for StaticEndpoint() + 20);
  v6 = *(v5 + *(type metadata accessor for EndpointPath(0) + 24));

  return sub_1D195A43C(a1, v6, v4);
}

uint64_t StaticEndpoint.GeneralCommand.matterCommand(endpoint:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644780, &qword_1D1E91AA0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v19[-v7 - 8];
  v9 = type metadata accessor for StaticEndpoint();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v19[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v14 = *v2;
  sub_1D17419CC(a1, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648678, &qword_1D1E8E0D8);
  v15 = swift_dynamicCast();
  v16 = *(v10 + 56);
  if ((v15 & 1) == 0)
  {
    v16(v8, 1, 1, v9);
    result = sub_1D1741A30(v8, &qword_1EC644780, &qword_1D1E91AA0);
    goto LABEL_5;
  }

  v16(v8, 0, 1, v9);
  sub_1D19DD29C(v8, v13, type metadata accessor for StaticEndpoint);
  if (v13[*(v9 + 60)] == 6)
  {
    result = sub_1D19DCC30(v13, type metadata accessor for StaticEndpoint);
LABEL_5:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  *(a2 + 24) = &type metadata for StaticEndpoint.GeneralCommand;
  *(a2 + 32) = sub_1D19DCC90();
  *a2 = v14;
  return sub_1D19DCC30(v13, type metadata accessor for StaticEndpoint);
}

uint64_t StaticEndpoint.GeneralCommand.isCompatible(with:)(uint64_t a1)
{
  sub_1D17419CC(a1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646AB8, &qword_1D1E858C0);
  return swift_dynamicCast();
}

id sub_1D19D7C48(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = a2 + *(type metadata accessor for StaticEndpoint() + 20);
  v6 = *(v5 + *(type metadata accessor for EndpointPath(0) + 24));

  return sub_1D195A43C(a1, v6, v4);
}

uint64_t sub_1D19D7CB4(uint64_t a1)
{
  sub_1D17419CC(a1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646AB8, &qword_1D1E858C0);
  return swift_dynamicCast();
}

uint64_t sub_1D19D7D10(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1D19D7D58, v1, 0);
}

uint64_t sub_1D19D7D58()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_allocObject();
  v0[6] = v4;
  swift_weakInit();
  v5 = sub_1D19DD3E8(&qword_1EC6486D0, &qword_1EC646FB8, &qword_1D1E840E8);
  v6 = *(MEMORY[0x1E69E88F0] + 4);
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_1D19D7E9C;
  v8 = v0[2];
  v9 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE18](v8, &unk_1D1E8E358, v3, sub_1D19DD3B0, v4, v1, v5, v9);
}

uint64_t sub_1D19D7E9C()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {
    v4 = v3[3];

    return MEMORY[0x1EEE6DFA0](sub_1D19D7FE4, v4, 0);
  }

  else
  {
    v6 = v3[5];
    v5 = v3[6];

    v7 = v3[1];

    return v7();
  }
}

uint64_t sub_1D19D7FE4()
{
  v2 = v0[5];
  v1 = v0[6];

  v3 = v0[1];
  v4 = v0[8];

  return v3();
}

uint64_t sub_1D19D8050()
{
  *(v1 + 24) = v0;
  *(v1 + 32) = *v0;
  return MEMORY[0x1EEE6DFA0](sub_1D19D8098, v0, 0);
}

uint64_t sub_1D19D8098()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_allocObject();
  v0[6] = v4;
  swift_weakInit();
  v5 = sub_1D19DD3E8(&qword_1EC6486A8, &qword_1EC6486B0, &qword_1D1E8E2C8);
  v6 = *(MEMORY[0x1E69E88F0] + 4);
  v7 = swift_task_alloc();
  v0[7] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647FA8, &unk_1D1E8DD90);
  *v7 = v0;
  v7[1] = sub_1D19D81F0;

  return MEMORY[0x1EEE6DE18](v0 + 2, &unk_1D1E8E2C0, v3, sub_1D19DCFB4, v4, v1, v5, v8);
}

uint64_t sub_1D19D81F0()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {
    v4 = v3[3];

    return MEMORY[0x1EEE6DFA0](sub_1D19D7FE4, v4, 0);
  }

  else
  {
    v6 = v3[5];
    v5 = v3[6];

    v7 = v3[2];
    v8 = v3[1];

    return v8(v7);
  }
}

uint64_t sub_1D19D833C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D19D835C, a2, 0);
}

uint64_t sub_1D19D835C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = sub_1D19DD3E8(&qword_1EC6486D0, &qword_1EC646FB8, &qword_1D1E840E8);
  v4 = swift_allocObject();
  v0[5] = v4;
  swift_weakInit();
  v5 = swift_task_alloc();
  v0[6] = v5;
  *(v5 + 16) = v4;
  *(v5 + 24) = v2;
  v6 = *(MEMORY[0x1E69E8920] + 4);
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_1D19D84A0;
  v8 = v0[2];
  v9 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v8, v1, v3, 0x29286E7572, 0xE500000000000000, sub_1D19DD544, v5, v9);
}

uint64_t sub_1D19D84A0()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {
    v4 = v3[3];

    return MEMORY[0x1EEE6DFA0](sub_1D19D85E8, v4, 0);
  }

  else
  {
    v5 = v3[5];
    v6 = v3[6];

    v7 = v3[1];

    return v7();
  }
}

uint64_t sub_1D19D85E8()
{
  v1 = v0[5];
  v2 = v0[6];

  v3 = v0[1];
  v4 = v0[8];

  return v3();
}

uint64_t sub_1D19D8654(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D19D8678, a1, 0);
}

uint64_t sub_1D19D8678()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = sub_1D19DD3E8(&qword_1EC6486A8, &qword_1EC6486B0, &qword_1D1E8E2C8);
  v4 = swift_allocObject();
  v0[5] = v4;
  swift_weakInit();
  v5 = swift_task_alloc();
  v0[6] = v5;
  *(v5 + 16) = v4;
  *(v5 + 24) = v2;
  v6 = *(MEMORY[0x1E69E8920] + 4);
  v7 = swift_task_alloc();
  v0[7] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647FA8, &unk_1D1E8DD90);
  *v7 = v0;
  v7[1] = sub_1D19D87C8;

  return MEMORY[0x1EEE6DE38](v0 + 2, v1, v3, 0x29286E7572, 0xE500000000000000, sub_1D19DD10C, v5, v8);
}

uint64_t sub_1D19D87C8()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v10 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = v2[3];
    v5 = sub_1D19D85E8;
  }

  else
  {
    v6 = v2[5];
    v7 = v2[6];
    v8 = v2[3];

    v5 = sub_1D19D88F8;
    v4 = v8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1D19D8914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v23 = a3;
  v24 = a7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v23 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v23 - v16;
  v18 = sub_1D1E67E7C();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  (*(v10 + 16))(v13, a1, v9);
  v19 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v20 = (v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  (*(v10 + 32))(v21 + v19, v13, v9);
  *(v21 + v20) = a2;
  *(v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8)) = v23;

  sub_1D1B1DFC0(0, 0, v17, v24, v21);

  return sub_1D1741A30(v17, &unk_1EC6442C0, &qword_1D1E741A0);
}

uint64_t sub_1D19D8B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1D19D8B4C, 0, 0);
}

uint64_t sub_1D19D8B4C()
{
  v1 = v0[6];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_1D19DD7D0;
  v4 = v0[5];

  return sub_1D19D8CEC(v4, Strong);
}

uint64_t sub_1D19D8C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1D19D8C2C, 0, 0);
}

uint64_t sub_1D19D8C2C()
{
  v1 = v0[6];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_1D17D3554;
  v4 = v0[5];

  return sub_1D19D988C(v4, Strong);
}

uint64_t sub_1D19D8CEC(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6486D8, &qword_1D1E91190) - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D19D8D94, 0, 0);
}

uint64_t sub_1D19D8D94()
{
  v1 = v0[7];
  swift_weakInit();
  Strong = swift_weakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v3 = Strong;
    v4 = v0[9];
    v5 = v0[6];
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FC0, &qword_1D1E840F0);
    v7 = *(v6 - 8);
    (*(v7 + 16))(v4, v5, v6);
    (*(v7 + 56))(v4, 0, 1, v6);
    v8 = sub_1D19D9060;
LABEL_3:

    return MEMORY[0x1EEE6DFA0](v8, v3, 0);
  }

  v9 = swift_weakLoadStrong();
  if (v9)
  {
    v10 = *(v9 + 112);
    v0[11] = *(v9 + 120);

    v11 = swift_weakLoadStrong();
    v0[12] = v11;
    v19 = (v10 + *v10);
    v12 = v10[1];
    v13 = swift_task_alloc();
    v0[13] = v13;
    *v13 = v0;
    v13[1] = sub_1D19D9348;

    return (v19)(v0 + 19, v11);
  }

  else
  {
    v14 = swift_weakLoadStrong();
    v0[17] = v14;
    if (v14)
    {
      v3 = v14;
      sub_1D1E67D8C();
      sub_1D19DD0B4();
      v0[18] = swift_allocError();
      sub_1D1E6759C();
      v8 = sub_1D19D96E0;
      goto LABEL_3;
    }

    v15 = v0[8];
    v16 = v0[9];
    swift_weakDestroy();

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_1D19D9060()
{
  v1 = v0[10];
  v2 = v0[8];
  sub_1D1741A90(v0[9], v2, &qword_1EC6486D8, &qword_1D1E91190);
  v3 = *(*v1 + 112);
  swift_beginAccess();
  sub_1D17B4270(v2, v1 + v3, &qword_1EC6486D8, &qword_1D1E91190);
  swift_endAccess();

  return MEMORY[0x1EEE6DFA0](sub_1D19D9144, 0, 0);
}

uint64_t sub_1D19D9144()
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + 112);
    v0[11] = *(Strong + 120);

    v3 = swift_weakLoadStrong();
    v0[12] = v3;
    v12 = (v2 + *v2);
    v4 = v2[1];
    v5 = swift_task_alloc();
    v0[13] = v5;
    *v5 = v0;
    v5[1] = sub_1D19D9348;

    return (v12)(v0 + 19, v3);
  }

  else
  {
    v7 = swift_weakLoadStrong();
    v0[17] = v7;
    if (v7)
    {
      v8 = v7;
      sub_1D1E67D8C();
      sub_1D19DD0B4();
      v0[18] = swift_allocError();
      sub_1D1E6759C();

      return MEMORY[0x1EEE6DFA0](sub_1D19D96E0, v8, 0);
    }

    else
    {
      v9 = v0[8];
      v10 = v0[9];
      swift_weakDestroy();

      v11 = v0[1];

      return v11();
    }
  }
}

uint64_t sub_1D19D9348()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v8 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_1D19D9528;
  }

  else
  {
    v5 = *(v2 + 88);
    v6 = *(v2 + 96);

    v4 = sub_1D19D946C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D19D946C()
{
  Strong = swift_weakLoadStrong();
  v0[15] = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D19D95FC, Strong, 0);
  }

  else
  {
    v2 = v0[8];
    v3 = v0[9];
    swift_weakDestroy();

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1D19D9528()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);

  Strong = swift_weakLoadStrong();
  *(v0 + 128) = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D19D977C, Strong, 0);
  }

  else
  {

    v4 = *(v0 + 64);
    v5 = *(v0 + 72);
    swift_weakDestroy();

    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_1D19D95FC()
{
  v1 = *(v0 + 120);
  sub_1D19DAB5C();

  return MEMORY[0x1EEE6DFA0](sub_1D19D966C, 0, 0);
}

uint64_t sub_1D19D966C()
{
  v1 = v0[8];
  v2 = v0[9];
  swift_weakDestroy();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D19D96E0()
{
  v1 = *(v0 + 144);
  sub_1D19DA8FC(v1, &qword_1EC646FC0, &qword_1D1E840F0, &qword_1EC6486D8, &qword_1D1E91190);

  return MEMORY[0x1EEE6DFA0](sub_1D19DD7EC, 0, 0);
}

uint64_t sub_1D19D977C()
{
  v1 = *(v0 + 128);
  sub_1D19DA8FC(*(v0 + 112), &qword_1EC646FC0, &qword_1D1E840F0, &qword_1EC6486D8, &qword_1D1E91190);

  return MEMORY[0x1EEE6DFA0](sub_1D19D9810, 0, 0);
}

uint64_t sub_1D19D9810()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  swift_weakDestroy();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D19D988C(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6486C0, &qword_1D1E8E2E8) - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D19D9934, 0, 0);
}

uint64_t sub_1D19D9934()
{
  v1 = v0[8];
  swift_weakInit();
  Strong = swift_weakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    v3 = Strong;
    v4 = v0[10];
    v5 = v0[7];
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6486B8, &qword_1D1E8E2E0);
    v7 = *(v6 - 8);
    (*(v7 + 16))(v4, v5, v6);
    (*(v7 + 56))(v4, 0, 1, v6);
    v8 = sub_1D19D9C00;
LABEL_3:

    return MEMORY[0x1EEE6DFA0](v8, v3, 0);
  }

  v9 = swift_weakLoadStrong();
  if (v9)
  {
    v10 = *(v9 + 112);
    v0[12] = *(v9 + 120);

    v11 = swift_weakLoadStrong();
    v0[13] = v11;
    v19 = (v10 + *v10);
    v12 = v10[1];
    v13 = swift_task_alloc();
    v0[14] = v13;
    *v13 = v0;
    v13[1] = sub_1D19D9EE8;

    return (v19)(v0 + 6, v11);
  }

  else
  {
    v14 = swift_weakLoadStrong();
    v0[19] = v14;
    if (v14)
    {
      v3 = v14;
      sub_1D1E67D8C();
      sub_1D19DD0B4();
      v0[20] = swift_allocError();
      sub_1D1E6759C();
      v8 = sub_1D19DA2EC;
      goto LABEL_3;
    }

    v15 = v0[9];
    v16 = v0[10];
    swift_weakDestroy();

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_1D19D9C00()
{
  v1 = v0[11];
  v2 = v0[9];
  sub_1D1741A90(v0[10], v2, &qword_1EC6486C0, &qword_1D1E8E2E8);
  v3 = *(*v1 + 112);
  swift_beginAccess();
  sub_1D17B4270(v2, v1 + v3, &qword_1EC6486C0, &qword_1D1E8E2E8);
  swift_endAccess();

  return MEMORY[0x1EEE6DFA0](sub_1D19D9CE4, 0, 0);
}

uint64_t sub_1D19D9CE4()
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + 112);
    v0[12] = *(Strong + 120);

    v3 = swift_weakLoadStrong();
    v0[13] = v3;
    v12 = (v2 + *v2);
    v4 = v2[1];
    v5 = swift_task_alloc();
    v0[14] = v5;
    *v5 = v0;
    v5[1] = sub_1D19D9EE8;

    return (v12)(v0 + 6, v3);
  }

  else
  {
    v7 = swift_weakLoadStrong();
    v0[19] = v7;
    if (v7)
    {
      v8 = v7;
      sub_1D1E67D8C();
      sub_1D19DD0B4();
      v0[20] = swift_allocError();
      sub_1D1E6759C();

      return MEMORY[0x1EEE6DFA0](sub_1D19DA2EC, v8, 0);
    }

    else
    {
      v9 = v0[9];
      v10 = v0[10];
      swift_weakDestroy();

      v11 = v0[1];

      return v11();
    }
  }
}

uint64_t sub_1D19D9EE8()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v8 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_1D19DA128;
  }

  else
  {
    v5 = *(v2 + 96);
    v6 = *(v2 + 104);

    v4 = sub_1D19DA00C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D19DA00C()
{
  v1 = v0[6];
  v0[16] = v1;
  Strong = swift_weakLoadStrong();
  v3 = Strong;
  if (v1)
  {
    v0[18] = Strong;
    if (Strong)
    {
      v4 = sub_1D19DA1FC;
LABEL_6:

      return MEMORY[0x1EEE6DFA0](v4, v3, 0);
    }
  }

  else
  {
    v0[19] = Strong;
    if (Strong)
    {
      sub_1D1E67D8C();
      sub_1D19DD0B4();
      v0[20] = swift_allocError();
      sub_1D1E6759C();
      v4 = sub_1D19DA2EC;
      goto LABEL_6;
    }
  }

  v5 = v0[9];
  v6 = v0[10];
  swift_weakDestroy();

  v7 = v0[1];

  return v7();
}

uint64_t sub_1D19DA128()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);

  Strong = swift_weakLoadStrong();
  *(v0 + 136) = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D19DA3FC, Strong, 0);
  }

  else
  {

    v4 = *(v0 + 72);
    v5 = *(v0 + 80);
    swift_weakDestroy();

    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_1D19DA1FC()
{
  v1 = *(v0 + 144);
  sub_1D19DADCC(*(v0 + 128));

  return MEMORY[0x1EEE6DFA0](sub_1D19DA270, 0, 0);
}

uint64_t sub_1D19DA270()
{
  v1 = v0[16];

  v2 = v0[9];
  v3 = v0[10];
  swift_weakDestroy();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D19DA2EC()
{
  v1 = *(v0 + 160);
  sub_1D19DA8FC(v1, &qword_1EC6486B8, &qword_1D1E8E2E0, &qword_1EC6486C0, &qword_1D1E8E2E8);

  return MEMORY[0x1EEE6DFA0](sub_1D19DA388, 0, 0);
}

uint64_t sub_1D19DA388()
{
  v1 = v0[9];
  v2 = v0[10];
  swift_weakDestroy();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D19DA3FC()
{
  v1 = *(v0 + 136);
  sub_1D19DA8FC(*(v0 + 120), &qword_1EC6486B8, &qword_1D1E8E2E0, &qword_1EC6486C0, &qword_1D1E8E2E8);

  return MEMORY[0x1EEE6DFA0](sub_1D19DA490, 0, 0);
}

uint64_t sub_1D19DA490()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  swift_weakDestroy();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D19DA50C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v12 - v7;
  v9 = sub_1D1E67E7C();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a1;

  sub_1D17C71F0(0, 0, v8, a3, v10);
}

uint64_t sub_1D19DA60C(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v31 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = v31 - v18;
  v20 = v7[16];
  if (v20)
  {
    [v20 cancel];
    v21 = v7[16];
  }

  v7[16] = 0;
  swift_unknownObjectRelease();
  v22 = *(*v7 + 112);
  swift_beginAccess();
  sub_1D1741C08(v7 + v22, v19, a3, a4);
  if ((*(v9 + 48))(v19, 1, v8))
  {
    sub_1D1741A30(v19, a3, a4);
  }

  else
  {
    (*(v9 + 16))(v12, v19, v8);
    sub_1D1741A30(v19, a3, a4);
    sub_1D1E67D8C();
    sub_1D19DD0B4();
    v23 = swift_allocError();
    sub_1D1E6759C();
    v31[0] = v23;
    sub_1D1E67D5C();
    (*(v9 + 8))(v12, v8);
  }

  (*(v9 + 56))(v17, 1, 1, v8);
  swift_beginAccess();
  sub_1D17B4270(v17, v7 + v22, a3, a4);
  swift_endAccess();
  v24 = (v7 + *(*v7 + 120));
  v25 = *v24;
  if (*v24)
  {
    v26 = v24[1];

    v25(v27);
    sub_1D17169C0(v25);
    v28 = *v24;
  }

  else
  {
    v28 = 0;
  }

  v29 = v24[1];
  *v24 = 0;
  v24[1] = 0;
  return sub_1D17169C0(v28);
}

uint64_t sub_1D19DA8FC(void *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v25 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v19 = v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v25 - v20;
  v22 = *(*v8 + 112);
  swift_beginAccess();
  sub_1D1741C08(v8 + v22, v21, a4, a5);
  if ((*(v11 + 48))(v21, 1, v10))
  {
    sub_1D1741A30(v21, a4, a5);
  }

  else
  {
    (*(v11 + 16))(v14, v21, v10);
    sub_1D1741A30(v21, a4, a5);
    v25[0] = a1;
    v23 = a1;
    sub_1D1E67D5C();
    (*(v11 + 8))(v14, v10);
  }

  (*(v11 + 56))(v19, 1, 1, v10);
  swift_beginAccess();
  sub_1D17B4270(v19, v8 + v22, a4, a5);
  return swift_endAccess();
}

uint64_t sub_1D19DAB5C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FC0, &qword_1D1E840F0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v16[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6486D8, &qword_1D1E91190);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v16[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v16[-v12];
  v14 = *(*v1 + 112);
  swift_beginAccess();
  sub_1D1741C08(v1 + v14, v13, &qword_1EC6486D8, &qword_1D1E91190);
  if ((*(v3 + 48))(v13, 1, v2))
  {
    sub_1D1741A30(v13, &qword_1EC6486D8, &qword_1D1E91190);
  }

  else
  {
    (*(v3 + 16))(v6, v13, v2);
    sub_1D1741A30(v13, &qword_1EC6486D8, &qword_1D1E91190);
    sub_1D1E67D6C();
    (*(v3 + 8))(v6, v2);
  }

  (*(v3 + 56))(v11, 1, 1, v2);
  swift_beginAccess();
  sub_1D17B4270(v11, v1 + v14, &qword_1EC6486D8, &qword_1D1E91190);
  return swift_endAccess();
}

uint64_t sub_1D19DADCC(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6486B8, &qword_1D1E8E2E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v18 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6486C0, &qword_1D1E8E2E8);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v18 - v14;
  v16 = *(*v2 + 112);
  swift_beginAccess();
  sub_1D1741C08(v2 + v16, v15, &qword_1EC6486C0, &qword_1D1E8E2E8);
  if ((*(v5 + 48))(v15, 1, v4))
  {
    sub_1D1741A30(v15, &qword_1EC6486C0, &qword_1D1E8E2E8);
  }

  else
  {
    (*(v5 + 16))(v8, v15, v4);
    sub_1D1741A30(v15, &qword_1EC6486C0, &qword_1D1E8E2E8);
    v18[0] = a1;

    sub_1D1E67D6C();
    (*(v5 + 8))(v8, v4);
  }

  (*(v5 + 56))(v13, 1, 1, v4);
  swift_beginAccess();
  sub_1D17B4270(v13, v2 + v16, &qword_1EC6486C0, &qword_1D1E8E2E8);
  return swift_endAccess();
}

unint64_t sub_1D19DB054(unint64_t result, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + 8 * result) = a2;
  v5 = a5[7] + 16 * result;
  *v5 = a3;
  *(v5 + 8) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_1D19DB0A0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_1D19DB0E8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1D1E66A7C();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = sub_1D1E669FC();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_1D19DB1DC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644610, &qword_1D1E6E9B0);
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

_OWORD *sub_1D19DB294(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_1D16EEE38(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_1D19DB354(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a4[6];
  v13 = sub_1D1E66A7C();
  (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a2, v13);
  v14 = a4[7];
  v15 = a5(0);
  result = sub_1D19DD29C(a3, v14 + *(*(v15 - 8) + 72) * a1, a6);
  v17 = a4[2];
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v19;
  }

  return result;
}

unint64_t sub_1D19DB4F8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  *(a7[6] + 8 * result) = a2;
  v7 = a7[7] + 32 * result;
  *v7 = a3;
  *(v7 + 8) = a4;
  *(v7 + 16) = a5;
  *(v7 + 24) = a6;
  v8 = a7[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v10;
  }

  return result;
}

unint64_t sub_1D19DB548(unint64_t result, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = a5[6] + 8 * result;
  *v5 = a2;
  *(v5 + 4) = BYTE4(a2);
  v6 = a5[7] + 16 * result;
  *v6 = a3;
  *(v6 + 8) = a4;
  v7 = a5[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v9;
  }

  return result;
}

unint64_t sub_1D19DB5A0(unint64_t result, __int16 a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + 2 * result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

_OWORD *sub_1D19DB5E8(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1D16EEE38(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_1D19DB654(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for StaticServiceCharacteristicDoublet();
  sub_1D19DD29C(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for StaticServiceCharacteristicDoublet);
  v10 = a4[7];
  v11 = type metadata accessor for IconTextValueStringDataHolder();
  result = sub_1D19DD29C(a3, v10 + *(*(v11 - 8) + 72) * a1, type metadata accessor for IconTextValueStringDataHolder);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_1D19DB740(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  a7[(a1 >> 6) + 8] |= 1 << a1;
  v14 = a7[6];
  v15 = sub_1D1E66A7C();
  result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * a1, a2, v15);
  v17 = (a7[7] + 32 * a1);
  *v17 = a3;
  v17[1] = a4;
  v17[2] = a5;
  v17[3] = a6;
  v18 = a7[2];
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v20;
  }

  return result;
}

uint64_t sub_1D19DB814(unint64_t a1, uint64_t a2, __int128 *a3, void *a4)
{
  v22 = a3[2];
  v8 = *(a3 + 6);
  v24 = *(a3 + 88);
  v23 = *(a3 + 104);
  v9 = *(a3 + 15);
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a4[6];
  v11 = sub_1D1E66A7C();
  v12 = a3[1];
  v20 = *a3;
  v21 = *(a3 + 56);
  v18 = v12;
  v19 = *(a3 + 72);
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v14 = a4[7] + (a1 << 7);
  *v14 = v20;
  *(v14 + 16) = v18;
  *(v14 + 32) = v22;
  *(v14 + 48) = v8;
  *(v14 + 72) = v19;
  *(v14 + 56) = v21;
  *(v14 + 88) = v24;
  *(v14 + 104) = v23;
  *(v14 + 120) = v9;
  v15 = a4[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v17;
  }

  return result;
}

unint64_t sub_1D19DB94C(unint64_t result, int a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 4 * result) = a2;
  v4 = a4[7] + 40 * result;
  v5 = *(a3 + 16);
  *v4 = *a3;
  *(v4 + 16) = v5;
  *(v4 + 32) = *(a3 + 32);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

_OWORD *sub_1D19DB9A4(unint64_t a1, int a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 4 * a1) = a2;
  result = sub_1D16EEE38(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_1D19DBA0C(unint64_t result, uint64_t a2, char a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = a5[6] + 16 * result;
  *v5 = a2;
  *(v5 + 8) = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_1D19DBAB0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for BatchRequestError.ID();
  result = sub_1D19DD29C(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for BatchRequestError.ID);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_1D19DBB64(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = sub_1D1E66A7C();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

uint64_t sub_1D19DBC24(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for StaticMatterDevice();
  result = sub_1D19DD29C(a3, v7 + *(*(v8 - 8) + 72) * a1, type metadata accessor for StaticMatterDevice);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

_OWORD *sub_1D19DBD24(unint64_t a1, char a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  result = sub_1D16EEE38(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_1D19DBDB8(unint64_t a1, __int16 a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 2 * a1) = a2;
  v10 = a4[7];
  v11 = a5(0);
  result = sub_1D19DD29C(a3, v10 + *(*(v11 - 8) + 72) * a1, a6);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

unint64_t sub_1D19DBE60(unint64_t result, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = (a5[7] + 32 * result);
  v7 = a4[1];
  *v6 = *a4;
  v6[1] = v7;
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_1D19DBEB0(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = a4[6] + 8 * result;
  *v4 = a2;
  *(v4 + 4) = BYTE4(a2);
  v5 = a4[7] + 40 * result;
  v6 = *(a3 + 16);
  *v5 = *a3;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a3 + 32);
  v7 = a4[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v9;
  }

  return result;
}

unint64_t sub_1D19DBF14(unint64_t result, __int16 a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 2 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_1D19DBF58(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_1D19DBF9C(unint64_t a1, char a2, uint64_t a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  result = a5(a3, a4[7] + 32 * a1);
  v7 = a4[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v9;
  }

  return result;
}

unint64_t sub_1D19DC008(unint64_t result, uint64_t a2, __int16 a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 2 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_1D19DC0A4(unint64_t a1, uint64_t a2, char a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1D1E66A7C();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_1D19DC15C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1D1E66A7C();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_1D19DC240(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v11 = a4[6];
  v12 = a5(0);
  result = sub_1D19DD29C(a2, v11 + *(*(v12 - 8) + 72) * a1, a6);
  *(a4[7] + 8 * a1) = a3;
  v14 = a4[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v16;
  }

  return result;
}

unint64_t sub_1D19DC2EC(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}