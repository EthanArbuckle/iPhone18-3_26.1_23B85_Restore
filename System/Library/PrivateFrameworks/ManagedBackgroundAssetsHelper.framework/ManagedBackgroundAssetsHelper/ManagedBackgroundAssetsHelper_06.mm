uint64_t sub_1D307223C()
{
  v2 = *(*v1 + 200);
  v3 = *(*v1 + 88);
  v6 = *v1;
  *(*v1 + 208) = v0;

  sub_1D3065284(v3, type metadata accessor for Helper.Message);
  if (v0)
  {
    v4 = sub_1D307259C;
  }

  else
  {
    v4 = sub_1D3072380;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D3072380()
{
  v1 = v0[12];
  sub_1D3058338(v0[14], v0[13], type metadata accessor for Helper.Reply);
  if (swift_getEnumCaseMultiPayload() == 31)
  {
    v2 = v0[17];
    v3 = v0[18];
    v4 = v0[16];
    v5 = v0[13];
    v6 = v0[11];
    sub_1D3065284(v0[14], type metadata accessor for Helper.Reply);
    sub_1D3065284(v5, type metadata accessor for Helper.Reply);
  }

  else
  {
    v8 = v0[14];
    sub_1D3065284(v0[13], type metadata accessor for Helper.Reply);
    type metadata accessor for HelperError();
    sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError);
    swift_allocError();
    sub_1D3058338(v8, v9, type metadata accessor for Helper.Reply);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1D3065284(v8, type metadata accessor for Helper.Reply);
    v11 = v0[17];
    v10 = v0[18];
    v12 = v0[16];
    v14 = v0[13];
    v13 = v0[14];
    v15 = v0[11];
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_1D307259C()
{
  v1 = v0[26];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[16];
  v6 = v0[13];
  v5 = v0[14];
  v7 = v0[11];

  v8 = v0[1];

  return v8();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Helper.Proxy.removeAssetPack(withGlobalID:)(ManagedBackgroundAssetsHelper::AssetPackRecord::GlobalID *withGlobalID)
{
  v47 = type metadata accessor for Helper.Message(0);
  v2 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47);
  v4 = (&v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = type metadata accessor for Helper.Reply(0);
  v5 = *(*(v43 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v43);
  v44 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v50 = &v37 - v8;
  countAndFlagsBits = withGlobalID->appBundleID._countAndFlagsBits;
  object = withGlobalID->appBundleID._object;
  v12 = withGlobalID->appTeamID.value._countAndFlagsBits;
  v11 = withGlobalID->appTeamID.value._object;
  v14 = withGlobalID->assetPackID._countAndFlagsBits;
  v13 = withGlobalID->assetPackID._object;
  if (qword_1EE313F10 != -1)
  {
    swift_once();
  }

  v15 = sub_1D30E8B3C();
  __swift_project_value_buffer(v15, qword_1EE313F18);
  v16 = sub_1D30E928C();

  v17 = sub_1D30E8B1C();

  v45 = v16;
  v18 = os_log_type_enabled(v17, v16);
  v46 = v14;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v41 = v19;
    v42 = swift_slowAlloc();
    v57 = v42;
    *v19 = 136446210;
    v39 = v12;
    v40 = countAndFlagsBits;
    v51 = countAndFlagsBits;
    v52 = object;
    v53 = v12;
    v54 = v11;
    v55 = v14;
    v56 = v13;

    v38 = v17;
    v20 = AssetPackRecord.GlobalID.description.getter();
    v22 = v21;

    v23 = sub_1D2FFEA04(v20, v22, &v57);

    countAndFlagsBits = v40;
    v24 = v41;
    *(v41 + 1) = v23;
    v25 = v38;
    v12 = v39;
    v26 = v24;
    _os_log_impl(&dword_1D2FD9000, v38, v45, "Remove asset pack with global ID: %{public}s", v24, 0xCu);
    v27 = v42;
    __swift_destroy_boxed_opaque_existential_1(v42);
    MEMORY[0x1D38B3760](v27, -1, -1);
    MEMORY[0x1D38B3760](v26, -1, -1);
  }

  else
  {
  }

  *v4 = countAndFlagsBits;
  v4[1] = object;
  v4[2] = v12;
  v4[3] = v11;
  v28 = v46;
  v4[4] = v46;
  v4[5] = v13;
  swift_storeEnumTagMultiPayload();

  v29 = v48;
  sub_1D3068030(v4, v50);
  sub_1D3065284(v4, type metadata accessor for Helper.Message);
  if (!v29)
  {
    v30 = v13;
    v31 = v44;
    sub_1D3058338(v50, v44, type metadata accessor for Helper.Reply);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_1D3065284(v31, type metadata accessor for Helper.Reply);
    if (EnumCaseMultiPayload == 32)
    {
      v33 = v49;
      os_unfair_lock_lock(v49 + 10);
      sub_1D3067504(v28, v30);
      os_unfair_lock_unlock(v33 + 10);
      v34 = v50;
    }

    else
    {
      type metadata accessor for HelperError();
      sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError);
      swift_allocError();
      v35 = v50;
      sub_1D3058338(v50, v36, type metadata accessor for Helper.Reply);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v34 = v35;
    }

    sub_1D3065284(v34, type metadata accessor for Helper.Reply);
  }
}

uint64_t Helper.Proxy.removeAssetPack(withGlobalID:)(uint64_t *a1)
{
  *(v2 + 16) = v1;
  v4 = type metadata accessor for Helper.Message(0);
  *(v2 + 24) = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  *(v2 + 32) = swift_task_alloc();
  v6 = type metadata accessor for Helper.Reply(0);
  *(v2 + 40) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v2 + 48) = swift_task_alloc();
  v8 = swift_task_alloc();
  v9 = *a1;
  v10 = a1[1];
  *(v2 + 56) = v8;
  *(v2 + 64) = v9;
  *(v2 + 72) = v10;
  *(v2 + 80) = *(a1 + 1);
  v11 = a1[5];
  *(v2 + 96) = a1[4];
  *(v2 + 104) = v11;

  return MEMORY[0x1EEE6DFA0](sub_1D3072BBC, 0, 0);
}

uint64_t sub_1D3072BBC()
{
  v33 = v0;
  if (qword_1EE313F10 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 104);
  v2 = *(v0 + 88);
  v3 = *(v0 + 72);
  v4 = sub_1D30E8B3C();
  __swift_project_value_buffer(v4, qword_1EE313F18);
  v5 = sub_1D30E928C();

  v6 = sub_1D30E8B1C();

  if (os_log_type_enabled(v6, v5))
  {
    v8 = *(v0 + 96);
    v7 = *(v0 + 104);
    v28 = *(v0 + 80);
    v10 = *(v0 + 64);
    v9 = *(v0 + 72);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v29[0] = v12;
    v29[1] = v10;
    *v11 = 136446210;
    v29[2] = v9;
    v30 = v28;
    v31 = v8;
    v32 = v7;

    v13 = AssetPackRecord.GlobalID.description.getter();
    v15 = v14;

    v16 = sub_1D2FFEA04(v13, v15, v29);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_1D2FD9000, v6, v5, "Remove asset pack with global ID: %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x1D38B3760](v12, -1, -1);
    MEMORY[0x1D38B3760](v11, -1, -1);
  }

  v17 = *(v0 + 96);
  v18 = *(v0 + 104);
  v19 = *(v0 + 72);
  v21 = *(v0 + 24);
  v20 = *(v0 + 32);
  v22 = *(v0 + 80);
  *v20 = *(v0 + 64);
  *(v20 + 8) = v19;
  *(v20 + 16) = v22;
  *(v20 + 32) = v17;
  *(v20 + 40) = v18;
  swift_storeEnumTagMultiPayload();

  v23 = swift_task_alloc();
  *(v0 + 112) = v23;
  *v23 = v0;
  v23[1] = sub_1D3072E64;
  v24 = *(v0 + 56);
  v25 = *(v0 + 32);
  v26 = *(v0 + 16);

  return sub_1D3068FD4(v24, v25);
}

uint64_t sub_1D3072E64()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 32);
  v6 = *v1;
  *(*v1 + 120) = v0;

  sub_1D3065284(v3, type metadata accessor for Helper.Message);
  if (v0)
  {
    v4 = sub_1D30E703C;
  }

  else
  {
    v4 = sub_1D3072FA8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D3072FA8()
{
  v1 = v0[6];
  v2 = v0[5];
  sub_1D3058338(v0[7], v1, type metadata accessor for Helper.Reply);
  LODWORD(v2) = swift_getEnumCaseMultiPayload();
  sub_1D3065284(v1, type metadata accessor for Helper.Reply);
  if (v2 == 32)
  {
    v4 = v0[12];
    v3 = v0[13];
    v6 = v0[6];
    v5 = v0[7];
    v7 = v0[4];
    v8 = v0[2];
    os_unfair_lock_lock(v8 + 10);
    sub_1D3067504(v4, v3);
    os_unfair_lock_unlock(v8 + 10);
    sub_1D3065284(v5, type metadata accessor for Helper.Reply);
  }

  else
  {
    v10 = v0[7];
    type metadata accessor for HelperError();
    sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError);
    swift_allocError();
    sub_1D3058338(v10, v11, type metadata accessor for Helper.Reply);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1D3065284(v10, type metadata accessor for Helper.Reply);
    v13 = v0[6];
    v12 = v0[7];
    v14 = v0[4];
  }

  v9 = v0[1];

  return v9();
}

uint64_t Helper.Proxy.removeAllAssetPacks(forAppWithBundleID:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for Helper.Message(0);
  v3[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v6 = type metadata accessor for Helper.Reply(0);
  v3[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D3073288, 0, 0);
}

uint64_t sub_1D3073288()
{
  v18 = v0;
  if (qword_1EE313F10 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_1D30E8B3C();
  __swift_project_value_buffer(v2, qword_1EE313F18);
  v3 = sub_1D30E928C();

  v4 = sub_1D30E8B1C();

  if (os_log_type_enabled(v4, v3))
  {
    v6 = v0[2];
    v5 = v0[3];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_1D2FFEA04(v6, v5, &v17);
    _os_log_impl(&dword_1D2FD9000, v4, v3, "Remove all asset packs for app with bundle ID: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1D38B3760](v8, -1, -1);
    MEMORY[0x1D38B3760](v7, -1, -1);
  }

  v10 = v0[5];
  v9 = v0[6];
  v11 = v0[3];
  *v9 = v0[2];
  v9[1] = v11;
  swift_storeEnumTagMultiPayload();

  v12 = swift_task_alloc();
  v0[10] = v12;
  *v12 = v0;
  v12[1] = sub_1D3073470;
  v13 = v0[9];
  v14 = v0[6];
  v15 = v0[4];

  return sub_1D3068FD4(v13, v14);
}

uint64_t sub_1D3073470()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 48);
  v6 = *v1;
  *(*v1 + 88) = v0;

  sub_1D3065284(v3, type metadata accessor for Helper.Message);
  if (v0)
  {
    v4 = sub_1D30E7030;
  }

  else
  {
    v4 = sub_1D30735B4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D30735B4()
{
  v1 = v0[7];
  sub_1D3058338(v0[9], v0[8], type metadata accessor for Helper.Reply);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = v0[8];
  v4 = v0[9];
  if (EnumCaseMultiPayload == 33)
  {
    v5 = v0[6];
    sub_1D3065284(v0[9], type metadata accessor for Helper.Reply);
    sub_1D3065284(v3, type metadata accessor for Helper.Reply);
  }

  else
  {
    sub_1D3065284(v0[8], type metadata accessor for Helper.Reply);
    type metadata accessor for HelperError();
    sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError);
    swift_allocError();
    sub_1D3058338(v4, v7, type metadata accessor for Helper.Reply);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1D3065284(v4, type metadata accessor for Helper.Reply);
    v9 = v0[8];
    v8 = v0[9];
    v10 = v0[6];
  }

  v6 = v0[1];

  return v6();
}

uint64_t Helper.Proxy.removeAllAssetPacks()()
{
  v1[2] = v0;
  v2 = type metadata accessor for Helper.Message(0);
  v1[3] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v4 = type metadata accessor for Helper.Reply(0);
  v1[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D307385C, 0, 0);
}

uint64_t sub_1D307385C()
{
  if (qword_1EE313F10 != -1)
  {
    swift_once();
  }

  v1 = sub_1D30E8B3C();
  __swift_project_value_buffer(v1, qword_1EE313F18);
  v2 = sub_1D30E928C();
  v3 = sub_1D30E8B1C();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D2FD9000, v3, v2, "Remove all asset packs", v4, 2u);
    MEMORY[0x1D38B3760](v4, -1, -1);
  }

  v6 = v0[3];
  v5 = v0[4];

  *v5 = 0;
  v5[1] = 0;
  swift_storeEnumTagMultiPayload();
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_1D30739C8;
  v8 = v0[7];
  v9 = v0[4];
  v10 = v0[2];

  return sub_1D3068FD4(v8, v9);
}

uint64_t sub_1D30739C8()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 32);
  v6 = *v1;
  *(*v1 + 72) = v0;

  sub_1D3065284(v3, type metadata accessor for Helper.Message);
  if (v0)
  {
    v4 = sub_1D306D4B8;
  }

  else
  {
    v4 = sub_1D3073B0C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D3073B0C()
{
  v1 = v0[5];
  sub_1D3058338(v0[7], v0[6], type metadata accessor for Helper.Reply);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = v0[6];
  v4 = v0[7];
  if (EnumCaseMultiPayload == 33)
  {
    v5 = v0[4];
    sub_1D3065284(v0[7], type metadata accessor for Helper.Reply);
    sub_1D3065284(v3, type metadata accessor for Helper.Reply);
  }

  else
  {
    sub_1D3065284(v0[6], type metadata accessor for Helper.Reply);
    type metadata accessor for HelperError();
    sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError);
    swift_allocError();
    sub_1D3058338(v4, v7, type metadata accessor for Helper.Reply);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1D3065284(v4, type metadata accessor for Helper.Reply);
    v9 = v0[6];
    v8 = v0[7];
    v10 = v0[4];
  }

  v6 = v0[1];

  return v6();
}

uint64_t Helper.Proxy.makeAllAssetPacksUnavailable(forAppWithBundleID:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for Helper.Message(0);
  v3[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v6 = type metadata accessor for Helper.Reply(0);
  v3[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D3073DB8, 0, 0);
}

uint64_t sub_1D3073DB8()
{
  v18 = v0;
  if (qword_1EE313F10 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_1D30E8B3C();
  __swift_project_value_buffer(v2, qword_1EE313F18);
  v3 = sub_1D30E928C();

  v4 = sub_1D30E8B1C();

  if (os_log_type_enabled(v4, v3))
  {
    v6 = v0[2];
    v5 = v0[3];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_1D2FFEA04(v6, v5, &v17);
    _os_log_impl(&dword_1D2FD9000, v4, v3, "Make all asset packs unavailable for app with bundle ID: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1D38B3760](v8, -1, -1);
    MEMORY[0x1D38B3760](v7, -1, -1);
  }

  v10 = v0[5];
  v9 = v0[6];
  v11 = v0[3];
  *v9 = v0[2];
  v9[1] = v11;
  swift_storeEnumTagMultiPayload();

  v12 = swift_task_alloc();
  v0[10] = v12;
  *v12 = v0;
  v12[1] = sub_1D3073FA0;
  v13 = v0[9];
  v14 = v0[6];
  v15 = v0[4];

  return sub_1D3068FD4(v13, v14);
}

uint64_t sub_1D3073FA0()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 48);
  v6 = *v1;
  *(*v1 + 88) = v0;

  sub_1D3065284(v3, type metadata accessor for Helper.Message);
  if (v0)
  {
    v4 = sub_1D30E7030;
  }

  else
  {
    v4 = sub_1D30740E4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D30740E4()
{
  v1 = v0[7];
  sub_1D3058338(v0[9], v0[8], type metadata accessor for Helper.Reply);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = v0[8];
  v4 = v0[9];
  if (EnumCaseMultiPayload == 34)
  {
    v5 = v0[6];
    sub_1D3065284(v0[9], type metadata accessor for Helper.Reply);
    sub_1D3065284(v3, type metadata accessor for Helper.Reply);
  }

  else
  {
    sub_1D3065284(v0[8], type metadata accessor for Helper.Reply);
    type metadata accessor for HelperError();
    sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError);
    swift_allocError();
    sub_1D3058338(v4, v7, type metadata accessor for Helper.Reply);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1D3065284(v4, type metadata accessor for Helper.Reply);
    v9 = v0[8];
    v8 = v0[9];
    v10 = v0[6];
  }

  v6 = v0[1];

  return v6();
}

uint64_t Helper.Proxy.requestLicense(forAssetPackWithID:versionID:internalVersionID:appBundleID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[8] = a7;
  v8[9] = v7;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  v9 = type metadata accessor for Helper.Message(0);
  v8[10] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v8[11] = swift_task_alloc();
  v11 = type metadata accessor for Helper.Reply(0);
  v8[12] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v8[13] = swift_task_alloc();
  v8[14] = swift_task_alloc();
  v13 = sub_1D30E8A4C();
  v8[15] = v13;
  v14 = *(v13 - 8);
  v8[16] = v14;
  v15 = *(v14 + 64) + 15;
  v8[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D30743F4, 0, 0);
}

uint64_t sub_1D30743F4()
{
  v45 = v0;
  if (qword_1EE313F10 != -1)
  {
    swift_once();
  }

  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v4 = v0[8];
  v6 = v0[4];
  v5 = v0[5];
  v7 = sub_1D30E8B3C();
  __swift_project_value_buffer(v7, qword_1EE313F18);
  v8 = sub_1D30E928C();
  v43 = *(v2 + 16);
  v43(v1, v5, v3);

  v9 = sub_1D30E8B1C();

  v10 = os_log_type_enabled(v9, v8);
  v12 = v0[16];
  v11 = v0[17];
  v13 = v0[15];
  if (v10)
  {
    v39 = v0[7];
    v41 = v0[8];
    v38 = v0[6];
    v14 = v0[3];
    v15 = v0[4];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v44 = v17;
    *v16 = 136446978;
    *(v16 + 4) = sub_1D2FFEA04(v14, v15, &v44);
    *(v16 + 12) = 2082;
    sub_1D3045A34(&qword_1EC749490, MEMORY[0x1E69695A8]);
    v18 = sub_1D30E977C();
    v20 = v19;
    (*(v12 + 8))(v11, v13);
    v21 = sub_1D2FFEA04(v18, v20, &v44);

    *(v16 + 14) = v21;
    *(v16 + 22) = 2048;
    *(v16 + 24) = v38;
    *(v16 + 32) = 2082;
    *(v16 + 34) = sub_1D2FFEA04(v39, v41, &v44);
    _os_log_impl(&dword_1D2FD9000, v9, v8, "Request license for asset pack with ID: %{public}s version ID: %{public}s internal version ID: %llu app bundle ID: %{public}s", v16, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1D38B3760](v17, -1, -1);
    MEMORY[0x1D38B3760](v16, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  v22 = v0[15];
  v23 = v0[11];
  v24 = v0[8];
  v40 = v0[7];
  v42 = v0[10];
  v25 = v0[5];
  v26 = v0[6];
  v28 = v0[3];
  v27 = v0[4];
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A1A0, &qword_1D30F54A0);
  v30 = v29[12];
  v31 = v29[16];
  v32 = &v23[v29[20]];
  *v23 = v28;
  *(v23 + 1) = v27;
  v43(&v23[v30], v25, v22);
  *&v23[v31] = v26;
  *v32 = v40;
  *(v32 + 1) = v24;
  swift_storeEnumTagMultiPayload();

  v33 = swift_task_alloc();
  v0[18] = v33;
  *v33 = v0;
  v33[1] = sub_1D3074784;
  v34 = v0[14];
  v35 = v0[11];
  v36 = v0[9];

  return sub_1D3068FD4(v34, v35);
}

uint64_t sub_1D3074784()
{
  v2 = *(*v1 + 144);
  v3 = *(*v1 + 88);
  v6 = *v1;
  *(*v1 + 152) = v0;

  sub_1D3065284(v3, type metadata accessor for Helper.Message);
  if (v0)
  {
    v4 = sub_1D3074AB4;
  }

  else
  {
    v4 = sub_1D30748C8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D30748C8()
{
  v1 = v0[12];
  sub_1D3058338(v0[14], v0[13], type metadata accessor for Helper.Reply);
  if (swift_getEnumCaseMultiPayload() == 12)
  {
    v2 = v0[17];
    v3 = v0[13];
    v4 = v0[11];
    v5 = v0[2];
    sub_1D3065284(v0[14], type metadata accessor for Helper.Reply);
    v6 = v3[1];
    *v5 = *v3;
    v5[1] = v6;
  }

  else
  {
    v8 = v0[14];
    sub_1D3065284(v0[13], type metadata accessor for Helper.Reply);
    type metadata accessor for HelperError();
    sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError);
    swift_allocError();
    sub_1D3058338(v8, v9, type metadata accessor for Helper.Reply);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1D3065284(v8, type metadata accessor for Helper.Reply);
    v10 = v0[17];
    v11 = v0[13];
    v12 = v0[14];
    v13 = v0[11];
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_1D3074AB4()
{
  v1 = v0[19];
  v2 = v0[17];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[11];

  v6 = v0[1];

  return v6();
}

uint64_t Helper.Proxy.requestLicenseFromAppReview(for:appBundleID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for Helper.Message(0);
  v4[6] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v7 = type metadata accessor for Helper.Reply(0);
  v4[8] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D3074C14, 0, 0);
}

uint64_t sub_1D3074C14()
{
  v25 = v0;
  if (qword_1EE313F10 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = v0[2];
  v3 = sub_1D30E8B3C();
  __swift_project_value_buffer(v3, qword_1EE313F18);
  v4 = sub_1D30E928C();

  v5 = sub_1D30E8B1C();

  if (os_log_type_enabled(v5, v4))
  {
    v7 = v0[3];
    v6 = v0[4];
    v8 = v0[2];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24 = v10;
    *v9 = 136446466;
    v11 = type metadata accessor for AssetPackRecord.StaticRepresentation(0);
    v12 = MEMORY[0x1D38B26B0](v8, v11);
    v14 = sub_1D2FFEA04(v12, v13, &v24);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2082;
    *(v9 + 14) = sub_1D2FFEA04(v7, v6, &v24);
    _os_log_impl(&dword_1D2FD9000, v5, v4, "Request license from App Review for: %{public}s app bundle ID: %{public}s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38B3760](v10, -1, -1);
    MEMORY[0x1D38B3760](v9, -1, -1);
  }

  v16 = v0[6];
  v15 = v0[7];
  v17 = v0[3];
  v18 = v0[4];
  *v15 = v0[2];
  v15[1] = v17;
  v15[2] = v18;
  swift_storeEnumTagMultiPayload();

  v19 = swift_task_alloc();
  v0[11] = v19;
  *v19 = v0;
  v19[1] = sub_1D3074E74;
  v20 = v0[10];
  v21 = v0[7];
  v22 = v0[5];

  return sub_1D3068FD4(v20, v21);
}

uint64_t sub_1D3074E74()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 56);
  v6 = *v1;
  *(*v1 + 96) = v0;

  sub_1D3065284(v3, type metadata accessor for Helper.Message);
  if (v0)
  {
    v4 = sub_1D30E7040;
  }

  else
  {
    v4 = sub_1D3074FB8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D3074FB8()
{
  v1 = v0[8];
  sub_1D3058338(v0[10], v0[9], type metadata accessor for Helper.Reply);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = v0[9];
  v4 = v0[10];
  if (EnumCaseMultiPayload == 35)
  {
    v5 = v0[7];
    sub_1D3065284(v0[10], type metadata accessor for Helper.Reply);
    sub_1D3065284(v3, type metadata accessor for Helper.Reply);
  }

  else
  {
    sub_1D3065284(v0[9], type metadata accessor for Helper.Reply);
    type metadata accessor for HelperError();
    sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError);
    swift_allocError();
    sub_1D3058338(v4, v7, type metadata accessor for Helper.Reply);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1D3065284(v4, type metadata accessor for Helper.Reply);
    v9 = v0[9];
    v8 = v0[10];
    v10 = v0[7];
  }

  v6 = v0[1];

  return v6();
}

uint64_t Helper.Proxy.nextLicenseRequest(static:)(uint64_t a1, char a2)
{
  *(v3 + 88) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = type metadata accessor for Helper.Message(0);
  *(v3 + 32) = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  *(v3 + 40) = swift_task_alloc();
  v6 = type metadata accessor for Helper.Reply(0);
  *(v3 + 48) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v3 + 56) = swift_task_alloc();
  *(v3 + 64) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D3075264, 0, 0);
}

uint64_t sub_1D3075264()
{
  if (qword_1EE313F10 != -1)
  {
    swift_once();
  }

  v1 = sub_1D30E8B3C();
  __swift_project_value_buffer(v1, qword_1EE313F18);
  v2 = sub_1D30E928C();
  v3 = sub_1D30E8B1C();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = *(v0 + 88);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_1D2FD9000, v3, v2, "Next license request static: %{BOOL}d", v5, 8u);
    MEMORY[0x1D38B3760](v5, -1, -1);
  }

  v7 = *(v0 + 32);
  v6 = *(v0 + 40);
  v8 = *(v0 + 88);

  *v6 = v8;
  swift_storeEnumTagMultiPayload();
  v9 = swift_task_alloc();
  *(v0 + 72) = v9;
  *v9 = v0;
  v9[1] = sub_1D30753E4;
  v10 = *(v0 + 64);
  v11 = *(v0 + 40);
  v12 = *(v0 + 24);

  return sub_1D3068FD4(v10, v11);
}

uint64_t sub_1D30753E4()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 40);
  v6 = *v1;
  *(*v1 + 80) = v0;

  sub_1D3065284(v3, type metadata accessor for Helper.Message);
  if (v0)
  {
    v4 = sub_1D3075704;
  }

  else
  {
    v4 = sub_1D3075528;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D3075528()
{
  v1 = v0[6];
  sub_1D3058338(v0[8], v0[7], type metadata accessor for Helper.Reply);
  if (swift_getEnumCaseMultiPayload() == 13)
  {
    v2 = v0[7];
    v3 = v0[5];
    v4 = v0[2];
    sub_1D3065284(v0[8], type metadata accessor for Helper.Reply);
    v5 = v2[1];
    v6 = v2[2];
    *v4 = *v2;
    v4[1] = v5;
    v4[2] = v6;
  }

  else
  {
    v8 = v0[8];
    sub_1D3065284(v0[7], type metadata accessor for Helper.Reply);
    type metadata accessor for HelperError();
    sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError);
    swift_allocError();
    sub_1D3058338(v8, v9, type metadata accessor for Helper.Reply);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1D3065284(v8, type metadata accessor for Helper.Reply);
    v11 = v0[7];
    v10 = v0[8];
    v12 = v0[5];
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_1D3075704()
{
  v1 = v0[10];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[5];

  v5 = v0[1];

  return v5();
}

uint64_t Helper.Proxy.newStaticLicenseRequest(forAssetPacksWithGlobalIDs:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for Helper.Message(0);
  v3[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v6 = type metadata accessor for Helper.Reply(0);
  v3[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D3075858, 0, 0);
}

uint64_t sub_1D3075858()
{
  v18 = v0;
  if (qword_1EE313F10 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_1D30E8B3C();
  __swift_project_value_buffer(v2, qword_1EE313F18);
  v3 = sub_1D30E928C();

  v4 = sub_1D30E8B1C();

  if (os_log_type_enabled(v4, v3))
  {
    v5 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136446210;
    sub_1D3045AD0();
    v8 = sub_1D30E922C();
    v10 = sub_1D2FFEA04(v8, v9, &v17);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1D2FD9000, v4, v3, "New static license request for asset packs with global IDs: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1D38B3760](v7, -1, -1);
    MEMORY[0x1D38B3760](v6, -1, -1);
  }

  v11 = v0[5];
  *v0[6] = v0[3];
  swift_storeEnumTagMultiPayload();

  v12 = swift_task_alloc();
  v0[10] = v12;
  *v12 = v0;
  v12[1] = sub_1D3075A60;
  v13 = v0[9];
  v14 = v0[6];
  v15 = v0[4];

  return sub_1D3068FD4(v13, v14);
}

uint64_t sub_1D3075A60()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 48);
  v6 = *v1;
  *(*v1 + 88) = v0;

  sub_1D3065284(v3, type metadata accessor for Helper.Message);
  if (v0)
  {
    v4 = sub_1D30E7030;
  }

  else
  {
    v4 = sub_1D3075BA4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D3075BA4()
{
  v1 = v0[7];
  sub_1D3058338(v0[9], v0[8], type metadata accessor for Helper.Reply);
  if (swift_getEnumCaseMultiPayload() == 14)
  {
    v2 = v0[8];
    v3 = v0[6];
    v4 = v0[2];
    sub_1D3065284(v0[9], type metadata accessor for Helper.Reply);
    v5 = *(v2 + 8);
    v6 = *(v2 + 16);
    v7 = *(v2 + 32);
    *v4 = *v2;
    *(v4 + 8) = v5;
    *(v4 + 16) = v6;
    *(v4 + 32) = v7;
  }

  else
  {
    v9 = v0[9];
    sub_1D3065284(v0[8], type metadata accessor for Helper.Reply);
    type metadata accessor for HelperError();
    sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError);
    swift_allocError();
    sub_1D3058338(v9, v10, type metadata accessor for Helper.Reply);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1D3065284(v9, type metadata accessor for Helper.Reply);
    v12 = v0[8];
    v11 = v0[9];
    v13 = v0[6];
  }

  v8 = v0[1];

  return v8();
}

uint64_t Helper.Proxy.process(responseData:forLicenseWithID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for Helper.Message(0);
  v4[6] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v7 = type metadata accessor for Helper.Reply(0);
  v4[8] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D3075E54, 0, 0);
}

uint64_t sub_1D3075E54()
{
  v24 = v0;
  if (qword_1EE313F10 != -1)
  {
    swift_once();
  }

  v2 = v0[2];
  v1 = v0[3];
  v3 = sub_1D30E8B3C();
  __swift_project_value_buffer(v3, qword_1EE313F18);
  v4 = sub_1D30E928C();
  sub_1D2FF17B0(v2, v1);
  v5 = sub_1D30E8B1C();
  sub_1D2FF1804(v2, v1);
  if (os_log_type_enabled(v5, v4))
  {
    v6 = v0[3];
    v7 = v0[4];
    v8 = v0[2];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23 = v10;
    *v9 = 136446466;
    v11 = sub_1D30E88EC();
    v13 = sub_1D2FFEA04(v11, v12, &v23);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2048;
    *(v9 + 14) = v7;
    _os_log_impl(&dword_1D2FD9000, v5, v4, "Process response data: %{public}s for license with ID: %llu", v9, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1D38B3760](v10, -1, -1);
    MEMORY[0x1D38B3760](v9, -1, -1);
  }

  v15 = v0[6];
  v14 = v0[7];
  v16 = v0[2];
  v22 = *(v0 + 3);
  *v14 = v16;
  *(v14 + 8) = v22;
  swift_storeEnumTagMultiPayload();
  sub_1D2FF17B0(v16, v22);
  v17 = swift_task_alloc();
  v0[11] = v17;
  *v17 = v0;
  v17[1] = sub_1D3076078;
  v18 = v0[10];
  v19 = v0[7];
  v20 = v0[5];

  return sub_1D3068FD4(v18, v19);
}

uint64_t sub_1D3076078()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 56);
  v6 = *v1;
  *(*v1 + 96) = v0;

  sub_1D3065284(v3, type metadata accessor for Helper.Message);
  if (v0)
  {
    v4 = sub_1D30E7040;
  }

  else
  {
    v4 = sub_1D30761BC;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D30761BC()
{
  v1 = v0[8];
  sub_1D3058338(v0[10], v0[9], type metadata accessor for Helper.Reply);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = v0[9];
  v4 = v0[10];
  if (EnumCaseMultiPayload == 36)
  {
    v5 = v0[7];
    sub_1D3065284(v0[10], type metadata accessor for Helper.Reply);
    sub_1D3065284(v3, type metadata accessor for Helper.Reply);
  }

  else
  {
    sub_1D3065284(v0[9], type metadata accessor for Helper.Reply);
    type metadata accessor for HelperError();
    sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError);
    swift_allocError();
    sub_1D3058338(v4, v7, type metadata accessor for Helper.Reply);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1D3065284(v4, type metadata accessor for Helper.Reply);
    v9 = v0[9];
    v8 = v0[10];
    v10 = v0[7];
  }

  v6 = v0[1];

  return v6();
}

uint64_t Helper.Proxy.report<A>(error:forLicenseWithID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  v7 = type metadata accessor for Helper.Message(0);
  v5[10] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v5[11] = swift_task_alloc();
  v9 = type metadata accessor for Helper.Reply(0);
  v5[12] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v11 = *(a3 - 8);
  v5[15] = v11;
  v12 = *(v11 + 64) + 15;
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D30764D8, 0, 0);
}

uint64_t sub_1D30764D8()
{
  if (qword_1EE313F10 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[7];
  v4 = v0[5];
  v5 = sub_1D30E8B3C();
  __swift_project_value_buffer(v5, qword_1EE313F18);
  v6 = sub_1D30E928C();
  v7 = *(v2 + 16);
  v7(v1, v4, v3);
  v8 = sub_1D30E8B1C();
  v9 = os_log_type_enabled(v8, v6);
  v10 = v0[18];
  if (v9)
  {
    v11 = v0[17];
    v12 = v7;
    v14 = v0[7];
    v13 = v0[8];
    v15 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v15 = 138543618;
    v42 = v12;
    v12(v11, v10, v14);
    v16 = sub_1D30E97AC();
    v17 = v0[17];
    v18 = v0[15];
    if (v16)
    {
      (*(v18 + 8))(v0[17], v0[7]);
    }

    else
    {
      v22 = v0[7];
      v21 = v0[8];
      swift_allocError();
      (*(v18 + 32))(v23, v17, v22);
    }

    v24 = v0[18];
    v25 = v0[15];
    v26 = v0[6];
    v27 = v0[7];
    v28 = _swift_stdlib_bridgeErrorToNSError();
    (*(v25 + 8))(v24, v27);
    *(v15 + 4) = v28;
    *v41 = v28;
    *(v15 + 12) = 2048;
    *(v15 + 14) = v26;
    _os_log_impl(&dword_1D2FD9000, v8, v6, "Report error: %{public}@ for license with ID: %llu", v15, 0x16u);
    sub_1D2FF14DC(v41, &qword_1EC7493A0, &qword_1D30EF480);
    MEMORY[0x1D38B3760](v41, -1, -1);
    MEMORY[0x1D38B3760](v15, -1, -1);

    v7 = v42;
  }

  else
  {
    v19 = v0[15];
    v20 = v0[7];

    (*(v19 + 8))(v10, v20);
  }

  v29 = v0[16];
  v31 = v0[10];
  v30 = v0[11];
  v33 = v0[7];
  v32 = v0[8];
  v34 = v0[6];
  v7(v29, v0[5], v33);
  sub_1D303C404(v29, v33, v32, v0 + 2);
  v35 = v0[4];
  *v30 = *(v0 + 1);
  *(v30 + 16) = v35;
  *(v30 + 24) = v34;
  swift_storeEnumTagMultiPayload();
  v36 = swift_task_alloc();
  v0[19] = v36;
  *v36 = v0;
  v36[1] = sub_1D307681C;
  v37 = v0[14];
  v38 = v0[11];
  v39 = v0[9];

  return sub_1D3068FD4(v37, v38);
}

uint64_t sub_1D307681C()
{
  v2 = *(*v1 + 152);
  v3 = *(*v1 + 88);
  v6 = *v1;
  *(*v1 + 160) = v0;

  sub_1D3065284(v3, type metadata accessor for Helper.Message);
  if (v0)
  {
    v4 = sub_1D3076B7C;
  }

  else
  {
    v4 = sub_1D3076960;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D3076960()
{
  v1 = v0[12];
  sub_1D3058338(v0[14], v0[13], type metadata accessor for Helper.Reply);
  if (swift_getEnumCaseMultiPayload() == 37)
  {
    v2 = v0[17];
    v3 = v0[18];
    v4 = v0[16];
    v5 = v0[13];
    v6 = v0[11];
    sub_1D3065284(v0[14], type metadata accessor for Helper.Reply);
    sub_1D3065284(v5, type metadata accessor for Helper.Reply);
  }

  else
  {
    v8 = v0[14];
    sub_1D3065284(v0[13], type metadata accessor for Helper.Reply);
    type metadata accessor for HelperError();
    sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError);
    swift_allocError();
    sub_1D3058338(v8, v9, type metadata accessor for Helper.Reply);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1D3065284(v8, type metadata accessor for Helper.Reply);
    v11 = v0[17];
    v10 = v0[18];
    v12 = v0[16];
    v14 = v0[13];
    v13 = v0[14];
    v15 = v0[11];
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_1D3076B7C()
{
  v1 = v0[20];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[16];
  v6 = v0[13];
  v5 = v0[14];
  v7 = v0[11];

  v8 = v0[1];

  return v8();
}

uint64_t Helper.Proxy.allLicenseRecords()()
{
  v1[2] = v0;
  v2 = type metadata accessor for Helper.Message(0);
  v1[3] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v4 = type metadata accessor for Helper.Reply(0);
  v1[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D3076CF4, 0, 0);
}

uint64_t sub_1D3076CF4()
{
  if (qword_1EE313F10 != -1)
  {
    swift_once();
  }

  v1 = sub_1D30E8B3C();
  __swift_project_value_buffer(v1, qword_1EE313F18);
  v2 = sub_1D30E928C();
  v3 = sub_1D30E8B1C();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D2FD9000, v3, v2, "All license records", v4, 2u);
    MEMORY[0x1D38B3760](v4, -1, -1);
  }

  v6 = v0[3];
  v5 = v0[4];

  swift_storeEnumTagMultiPayload();
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_1D3076E5C;
  v8 = v0[7];
  v9 = v0[4];
  v10 = v0[2];

  return sub_1D3068FD4(v8, v9);
}

uint64_t sub_1D3076E5C()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 32);
  v6 = *v1;
  *(*v1 + 72) = v0;

  sub_1D3065284(v3, type metadata accessor for Helper.Message);
  if (v0)
  {
    v4 = sub_1D306D4B8;
  }

  else
  {
    v4 = sub_1D3076FA0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D3076FA0()
{
  v1 = v0[5];
  sub_1D3058338(v0[7], v0[6], type metadata accessor for Helper.Reply);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = v0[6];
  v4 = v0[7];
  if (EnumCaseMultiPayload == 15)
  {
    v5 = v0[4];
    sub_1D3065284(v0[7], type metadata accessor for Helper.Reply);
    v6 = *v3;

    v7 = v0[1];

    return v7(v6);
  }

  else
  {
    sub_1D3065284(v0[6], type metadata accessor for Helper.Reply);
    type metadata accessor for HelperError();
    sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError);
    swift_allocError();
    sub_1D3058338(v4, v9, type metadata accessor for Helper.Reply);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1D3065284(v4, type metadata accessor for Helper.Reply);
    v11 = v0[6];
    v10 = v0[7];
    v12 = v0[4];

    v13 = v0[1];

    return v13();
  }
}

uint64_t Helper.Proxy.removeLicenseRecord(withID:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for Helper.Message(0);
  v3[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v6 = type metadata accessor for Helper.Reply(0);
  v3[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D3077270, 0, 0);
}

uint64_t sub_1D3077270()
{
  if (qword_1EE313F10 != -1)
  {
    swift_once();
  }

  v1 = sub_1D30E8B3C();
  __swift_project_value_buffer(v1, qword_1EE313F18);
  v2 = sub_1D30E928C();
  v3 = sub_1D30E8B1C();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = v0[3];
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_1D2FD9000, v3, v2, "Remove license record with ID: %llu", v5, 0xCu);
    MEMORY[0x1D38B3760](v5, -1, -1);
  }

  v7 = v0[5];
  v6 = v0[6];
  v8 = v0[3];

  *v6 = v8;
  swift_storeEnumTagMultiPayload();
  v9 = swift_task_alloc();
  v0[10] = v9;
  *v9 = v0;
  v9[1] = sub_1D30773F0;
  v10 = v0[9];
  v11 = v0[6];
  v12 = v0[4];

  return sub_1D3068FD4(v10, v11);
}

uint64_t sub_1D30773F0()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 48);
  v6 = *v1;
  *(*v1 + 88) = v0;

  sub_1D3065284(v3, type metadata accessor for Helper.Message);
  if (v0)
  {
    v4 = sub_1D30E7030;
  }

  else
  {
    v4 = sub_1D3077534;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D3077534()
{
  v1 = v0[7];
  sub_1D3058338(v0[9], v0[8], type metadata accessor for Helper.Reply);
  if (swift_getEnumCaseMultiPayload() == 16)
  {
    v2 = v0[8];
    v3 = v0[6];
    v4 = v0[2];
    sub_1D3065284(v0[9], type metadata accessor for Helper.Reply);
    sub_1D3056830(v2, v4, type metadata accessor for LicenseRecord.StaticRepresentation);
  }

  else
  {
    v6 = v0[9];
    sub_1D3065284(v0[8], type metadata accessor for Helper.Reply);
    type metadata accessor for HelperError();
    sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError);
    swift_allocError();
    sub_1D3058338(v6, v7, type metadata accessor for Helper.Reply);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1D3065284(v6, type metadata accessor for Helper.Reply);
    v9 = v0[8];
    v8 = v0[9];
    v10 = v0[6];
  }

  v5 = v0[1];

  return v5();
}

uint64_t Helper.Proxy.installCertificate(forRole:from:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a2;
  v6 = type metadata accessor for Helper.Message(0);
  *(v4 + 40) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v4 + 48) = swift_task_alloc();
  v8 = type metadata accessor for Helper.Reply(0);
  *(v4 + 56) = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  *(v4 + 64) = swift_task_alloc();
  *(v4 + 72) = swift_task_alloc();
  *(v4 + 96) = *a1;

  return MEMORY[0x1EEE6DFA0](sub_1D3077800, 0, 0);
}

uint64_t sub_1D3077800()
{
  v27 = v0;
  if (qword_1EE313F10 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = sub_1D30E8B3C();
  __swift_project_value_buffer(v3, qword_1EE313F18);
  v4 = sub_1D30E928C();
  sub_1D2FF17B0(v2, v1);
  v5 = sub_1D30E8B1C();
  sub_1D2FF1804(v2, v1);
  if (os_log_type_enabled(v5, v4))
  {
    v6 = *(v0 + 96);
    v8 = *(v0 + 16);
    v7 = *(v0 + 24);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v26 = v10;
    *v9 = 136446466;
    if (v6)
    {
      v11 = 0x676E696E676973;
    }

    else
    {
      v11 = 0x6974707972636E65;
    }

    if (v6)
    {
      v12 = 0xE700000000000000;
    }

    else
    {
      v12 = 0xEA00000000006E6FLL;
    }

    v13 = sub_1D2FFEA04(v11, v12, &v26);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2082;
    v14 = sub_1D30E88EC();
    v16 = sub_1D2FFEA04(v14, v15, &v26);

    *(v9 + 14) = v16;
    _os_log_impl(&dword_1D2FD9000, v5, v4, "Install certificate forRole: %{public}s from: %{public}s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38B3760](v10, -1, -1);
    MEMORY[0x1D38B3760](v9, -1, -1);
  }

  v18 = *(v0 + 40);
  v17 = *(v0 + 48);
  v19 = *(v0 + 16);
  v20 = *(v0 + 24);
  *v17 = *(v0 + 96);
  *(v17 + 8) = v19;
  *(v17 + 16) = v20;
  swift_storeEnumTagMultiPayload();
  sub_1D2FF17B0(v19, v20);
  v21 = swift_task_alloc();
  *(v0 + 80) = v21;
  *v21 = v0;
  v21[1] = sub_1D3077A84;
  v22 = *(v0 + 72);
  v23 = *(v0 + 48);
  v24 = *(v0 + 32);

  return sub_1D3068FD4(v22, v23);
}

uint64_t sub_1D3077A84()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 48);
  v6 = *v1;
  *(*v1 + 88) = v0;

  sub_1D3065284(v3, type metadata accessor for Helper.Message);
  if (v0)
  {
    v4 = sub_1D30E7030;
  }

  else
  {
    v4 = sub_1D3077BC8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D3077BC8()
{
  v1 = v0[7];
  sub_1D3058338(v0[9], v0[8], type metadata accessor for Helper.Reply);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = v0[8];
  v4 = v0[9];
  if (EnumCaseMultiPayload == 38)
  {
    v5 = v0[6];
    sub_1D3065284(v0[9], type metadata accessor for Helper.Reply);
    sub_1D3065284(v3, type metadata accessor for Helper.Reply);
  }

  else
  {
    sub_1D3065284(v0[8], type metadata accessor for Helper.Reply);
    type metadata accessor for HelperError();
    sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError);
    swift_allocError();
    sub_1D3058338(v4, v7, type metadata accessor for Helper.Reply);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1D3065284(v4, type metadata accessor for Helper.Reply);
    v9 = v0[8];
    v8 = v0[9];
    v10 = v0[6];
  }

  v6 = v0[1];

  return v6();
}

uint64_t Helper.Proxy.uninstallCertificate(forRole:)(_BYTE *a1)
{
  *(v2 + 16) = v1;
  v4 = type metadata accessor for Helper.Message(0);
  *(v2 + 24) = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  *(v2 + 32) = swift_task_alloc();
  v6 = type metadata accessor for Helper.Reply(0);
  *(v2 + 40) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v2 + 48) = swift_task_alloc();
  *(v2 + 56) = swift_task_alloc();
  *(v2 + 80) = *a1;

  return MEMORY[0x1EEE6DFA0](sub_1D3077E7C, 0, 0);
}

uint64_t sub_1D3077E7C()
{
  v17 = v0;
  if (qword_1EE313F10 != -1)
  {
    swift_once();
  }

  v1 = sub_1D30E8B3C();
  __swift_project_value_buffer(v1, qword_1EE313F18);
  v2 = sub_1D30E928C();
  v3 = sub_1D30E8B1C();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = *(v0 + 80);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136446210;
    if (v4)
    {
      v7 = 0x676E696E676973;
    }

    else
    {
      v7 = 0x6974707972636E65;
    }

    if (v4)
    {
      v8 = 0xE700000000000000;
    }

    else
    {
      v8 = 0xEA00000000006E6FLL;
    }

    v9 = sub_1D2FFEA04(v7, v8, &v16);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1D2FD9000, v3, v2, "Uninstall certificate for role: %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1D38B3760](v6, -1, -1);
    MEMORY[0x1D38B3760](v5, -1, -1);
  }

  v10 = *(v0 + 24);
  **(v0 + 32) = *(v0 + 80);
  swift_storeEnumTagMultiPayload();
  v11 = swift_task_alloc();
  *(v0 + 64) = v11;
  *v11 = v0;
  v11[1] = sub_1D3078080;
  v12 = *(v0 + 56);
  v13 = *(v0 + 32);
  v14 = *(v0 + 16);

  return sub_1D3068FD4(v12, v13);
}

uint64_t sub_1D3078080()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 32);
  v6 = *v1;
  *(*v1 + 72) = v0;

  sub_1D3065284(v3, type metadata accessor for Helper.Message);
  if (v0)
  {
    v4 = sub_1D30E7044;
  }

  else
  {
    v4 = sub_1D30781C4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D30781C4()
{
  v1 = v0[5];
  sub_1D3058338(v0[7], v0[6], type metadata accessor for Helper.Reply);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = v0[6];
  v4 = v0[7];
  if (EnumCaseMultiPayload == 39)
  {
    v5 = v0[4];
    sub_1D3065284(v0[7], type metadata accessor for Helper.Reply);
    sub_1D3065284(v3, type metadata accessor for Helper.Reply);
  }

  else
  {
    sub_1D3065284(v0[6], type metadata accessor for Helper.Reply);
    type metadata accessor for HelperError();
    sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError);
    swift_allocError();
    sub_1D3058338(v4, v7, type metadata accessor for Helper.Reply);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1D3065284(v4, type metadata accessor for Helper.Reply);
    v9 = v0[6];
    v8 = v0[7];
    v10 = v0[4];
  }

  v6 = v0[1];

  return v6();
}

uint64_t Helper.Proxy.allAppReviewRecords()()
{
  v1[2] = v0;
  v2 = type metadata accessor for Helper.Message(0);
  v1[3] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v4 = type metadata accessor for Helper.Reply(0);
  v1[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D307846C, 0, 0);
}

uint64_t sub_1D307846C()
{
  if (qword_1EE313F10 != -1)
  {
    swift_once();
  }

  v1 = sub_1D30E8B3C();
  __swift_project_value_buffer(v1, qword_1EE313F18);
  v2 = sub_1D30E928C();
  v3 = sub_1D30E8B1C();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D2FD9000, v3, v2, "All App Review records", v4, 2u);
    MEMORY[0x1D38B3760](v4, -1, -1);
  }

  v6 = v0[3];
  v5 = v0[4];

  swift_storeEnumTagMultiPayload();
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_1D30785D4;
  v8 = v0[7];
  v9 = v0[4];
  v10 = v0[2];

  return sub_1D3068FD4(v8, v9);
}

uint64_t sub_1D30785D4()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 32);
  v6 = *v1;
  *(*v1 + 72) = v0;

  sub_1D3065284(v3, type metadata accessor for Helper.Message);
  if (v0)
  {
    v4 = sub_1D30E7044;
  }

  else
  {
    v4 = sub_1D3078718;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D3078718()
{
  v1 = v0[5];
  sub_1D3058338(v0[7], v0[6], type metadata accessor for Helper.Reply);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = v0[6];
  v4 = v0[7];
  if (EnumCaseMultiPayload == 17)
  {
    v5 = v0[4];
    sub_1D3065284(v0[7], type metadata accessor for Helper.Reply);
    v6 = *v3;

    v7 = v0[1];

    return v7(v6);
  }

  else
  {
    sub_1D3065284(v0[6], type metadata accessor for Helper.Reply);
    type metadata accessor for HelperError();
    sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError);
    swift_allocError();
    sub_1D3058338(v4, v9, type metadata accessor for Helper.Reply);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1D3065284(v4, type metadata accessor for Helper.Reply);
    v11 = v0[6];
    v10 = v0[7];
    v12 = v0[4];

    v13 = v0[1];

    return v13();
  }
}

uint64_t Helper.Proxy.addAppReviewRecord(ofAppWithBundleID:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for Helper.Message(0);
  v3[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v6 = type metadata accessor for Helper.Reply(0);
  v3[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D30789E8, 0, 0);
}

uint64_t sub_1D30789E8()
{
  v18 = v0;
  if (qword_1EE313F10 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_1D30E8B3C();
  __swift_project_value_buffer(v2, qword_1EE313F18);
  v3 = sub_1D30E928C();

  v4 = sub_1D30E8B1C();

  if (os_log_type_enabled(v4, v3))
  {
    v6 = v0[2];
    v5 = v0[3];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_1D2FFEA04(v6, v5, &v17);
    _os_log_impl(&dword_1D2FD9000, v4, v3, "Add App Review record of app with bundle ID: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1D38B3760](v8, -1, -1);
    MEMORY[0x1D38B3760](v7, -1, -1);
  }

  v10 = v0[5];
  v9 = v0[6];
  v11 = v0[3];
  *v9 = v0[2];
  v9[1] = v11;
  swift_storeEnumTagMultiPayload();

  v12 = swift_task_alloc();
  v0[10] = v12;
  *v12 = v0;
  v12[1] = sub_1D3078BD0;
  v13 = v0[9];
  v14 = v0[6];
  v15 = v0[4];

  return sub_1D3068FD4(v13, v14);
}

uint64_t sub_1D3078BD0()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 48);
  v6 = *v1;
  *(*v1 + 88) = v0;

  sub_1D3065284(v3, type metadata accessor for Helper.Message);
  if (v0)
  {
    v4 = sub_1D30E7030;
  }

  else
  {
    v4 = sub_1D3078D14;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D3078D14()
{
  v1 = v0[7];
  sub_1D3058338(v0[9], v0[8], type metadata accessor for Helper.Reply);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = v0[8];
  v4 = v0[9];
  if (EnumCaseMultiPayload == 40)
  {
    v5 = v0[6];
    sub_1D3065284(v0[9], type metadata accessor for Helper.Reply);
    sub_1D3065284(v3, type metadata accessor for Helper.Reply);
  }

  else
  {
    sub_1D3065284(v0[8], type metadata accessor for Helper.Reply);
    type metadata accessor for HelperError();
    sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError);
    swift_allocError();
    sub_1D3058338(v4, v7, type metadata accessor for Helper.Reply);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1D3065284(v4, type metadata accessor for Helper.Reply);
    v9 = v0[8];
    v8 = v0[9];
    v10 = v0[6];
  }

  v6 = v0[1];

  return v6();
}

uint64_t Helper.Proxy.removeAppReviewRecord(ofAppWithBundleID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for Helper.Message(0);
  v4[6] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v7 = type metadata accessor for Helper.Reply(0);
  v4[8] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D3078FC0, 0, 0);
}

uint64_t sub_1D3078FC0()
{
  v18 = v0;
  if (qword_1EE313F10 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = sub_1D30E8B3C();
  __swift_project_value_buffer(v2, qword_1EE313F18);
  v3 = sub_1D30E928C();

  v4 = sub_1D30E8B1C();

  if (os_log_type_enabled(v4, v3))
  {
    v6 = v0[3];
    v5 = v0[4];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_1D2FFEA04(v6, v5, &v17);
    _os_log_impl(&dword_1D2FD9000, v4, v3, "Remove App Review record of app with bundle ID: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1D38B3760](v8, -1, -1);
    MEMORY[0x1D38B3760](v7, -1, -1);
  }

  v10 = v0[6];
  v9 = v0[7];
  v11 = v0[4];
  *v9 = v0[3];
  v9[1] = v11;
  swift_storeEnumTagMultiPayload();

  v12 = swift_task_alloc();
  v0[11] = v12;
  *v12 = v0;
  v12[1] = sub_1D30791A8;
  v13 = v0[10];
  v14 = v0[7];
  v15 = v0[5];

  return sub_1D3068FD4(v13, v14);
}

uint64_t sub_1D30791A8()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 56);
  v6 = *v1;
  *(*v1 + 96) = v0;

  sub_1D3065284(v3, type metadata accessor for Helper.Message);
  if (v0)
  {
    v4 = sub_1D30794C0;
  }

  else
  {
    v4 = sub_1D30792EC;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D30792EC()
{
  v1 = v0[8];
  sub_1D3058338(v0[10], v0[9], type metadata accessor for Helper.Reply);
  if (swift_getEnumCaseMultiPayload() == 18)
  {
    v2 = v0[9];
    v3 = v0[7];
    v4 = v0[2];
    sub_1D3065284(v0[10], type metadata accessor for Helper.Reply);
    v5 = v2[1];
    *v4 = *v2;
    v4[1] = v5;
  }

  else
  {
    v7 = v0[10];
    sub_1D3065284(v0[9], type metadata accessor for Helper.Reply);
    type metadata accessor for HelperError();
    sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError);
    swift_allocError();
    sub_1D3058338(v7, v8, type metadata accessor for Helper.Reply);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1D3065284(v7, type metadata accessor for Helper.Reply);
    v10 = v0[9];
    v9 = v0[10];
    v11 = v0[7];
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_1D30794C0()
{
  v1 = v0[12];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[7];

  v5 = v0[1];

  return v5();
}

void Helper.Proxy.path(toFileAt:inAssetPackWithGlobalID:)(unsigned int (*a1)(uint64_t, uint64_t, uint64_t)@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v100 = a1;
  v85 = a3;
  v84 = type metadata accessor for Helper.PathInAssetPackLookupResult(0);
  v83 = *(v84 - 8);
  v4 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v84);
  v81 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A778, &qword_1D30F5890);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v79 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v80 = &v76 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v82 = &v76 - v12;
  v90 = type metadata accessor for Helper.Message(0);
  v13 = *(*(v90 - 8) + 64);
  MEMORY[0x1EEE9AC00](v90);
  v15 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for Helper.Reply(0);
  v16 = *(*(v86 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v86);
  v87 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v95 = &v76 - v19;
  v20 = sub_1D30E8D9C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *a2;
  v26 = a2[1];
  v27 = a2[3];
  v96 = a2[2];
  v97 = v25;
  v28 = a2[4];
  v29 = a2[5];
  v99 = v28;
  if (qword_1EE313F10 != -1)
  {
    swift_once();
  }

  v30 = sub_1D30E8B3C();
  __swift_project_value_buffer(v30, qword_1EE313F18);
  v31 = sub_1D30E928C();
  v32 = *(v21 + 16);
  v92 = v21 + 16;
  v94 = v32;
  v32(v24, v100, v20);

  v33 = sub_1D30E8B1C();

  v89 = v31;
  v34 = os_log_type_enabled(v33, v31);
  v98 = v29;
  v35 = v21;
  v78 = v21;
  if (v34)
  {
    v36 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v107 = v77;
    *v36 = 136446466;
    sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8]);
    v76 = v33;
    v37 = sub_1D30E977C();
    v39 = v38;
    (*(v35 + 8))(v24, v20);
    v40 = sub_1D2FFEA04(v37, v39, &v107);

    *(v36 + 4) = v40;
    *(v36 + 12) = 2082;
    v101 = v97;
    v102 = v26;
    v103 = v96;
    v104 = v27;
    v105 = v99;
    v106 = v98;

    v41 = AssetPackRecord.GlobalID.description.getter();
    v43 = v42;

    v44 = sub_1D2FFEA04(v41, v43, &v107);
    v45 = v95;

    *(v36 + 14) = v44;
    v46 = v76;
    _os_log_impl(&dword_1D2FD9000, v76, v89, "Path to file at: %{public}s in asset pack with global ID: %{public}s", v36, 0x16u);
    v47 = v77;
    swift_arrayDestroy();
    MEMORY[0x1D38B3760](v47, -1, -1);
    v48 = v36;
    v49 = v99;
    MEMORY[0x1D38B3760](v48, -1, -1);

    v50 = v20;
  }

  else
  {

    (*(v21 + 8))(v24, v20);
    v50 = v20;
    v49 = v99;
    v45 = v95;
  }

  v88 = v50;
  v51 = v93;
  os_unfair_lock_lock(v93 + 10);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A190, &qword_1D30F5498);
  v53 = &v15[*(v52 + 48)];
  v54 = *(v52 + 64);
  v94(v15, v100, v50);
  v55 = v96;
  *v53 = v97;
  *(v53 + 1) = v26;
  *(v53 + 2) = v55;
  *(v53 + 3) = v27;
  *(v53 + 4) = v49;
  *(v53 + 5) = v98;
  v56 = *&v51[22]._os_unfair_lock_opaque;

  *&v15[v54] = sub_1D3042D44(v57);
  swift_storeEnumTagMultiPayload();
  v58 = v91;
  sub_1D3068030(v15, v45);
  sub_1D3065284(v15, type metadata accessor for Helper.Message);
  os_unfair_lock_unlock(v51 + 10);
  if (!v58)
  {
    v59 = v87;
    v60 = v88;
    sub_1D3058338(v45, v87, type metadata accessor for Helper.Reply);
    if (swift_getEnumCaseMultiPayload() == 19)
    {
      v61 = v82;
      sub_1D30E6F78(v59, v82, &qword_1EC74A778, &qword_1D30F5890);
      v62 = v80;
      sub_1D302B0DC(v61, v80, &qword_1EC74A778, &qword_1D30F5890);
      v63 = v84;
      v100 = *(v83 + 48);
      if (v100(v62, 1, v84) == 1)
      {
        sub_1D3065284(v95, type metadata accessor for Helper.Reply);
        sub_1D2FF14DC(v62, &qword_1EC74A778, &qword_1D30F5890);
        v64 = v79;
        v65 = v94;
      }

      else
      {
        v67 = v62;
        v68 = v81;
        sub_1D3056830(v67, v81, type metadata accessor for Helper.PathInAssetPackLookupResult);
        v69 = (v68 + *(v63 + 20));
        v70 = v69[1];
        if (v70)
        {
          v71 = *v69;
          v72 = v69[1];

          v73 = v93;
          os_unfair_lock_lock(v93 + 10);
          v74 = sub_1D30E7844(v71, v70);
          sub_1D3067414(v74, v99, v98);
          os_unfair_lock_unlock(v73 + 10);
          v60 = v88;
        }

        sub_1D3065284(v81, type metadata accessor for Helper.PathInAssetPackLookupResult);
        sub_1D3065284(v95, type metadata accessor for Helper.Reply);
        v64 = v79;
        v65 = v94;
      }

      sub_1D30E6F78(v61, v64, &qword_1EC74A778, &qword_1D30F5890);
      if (v100(v64, 1, v63) == 1)
      {
        sub_1D2FF14DC(v64, &qword_1EC74A778, &qword_1D30F5890);
        v75 = 1;
      }

      else
      {
        v65(v85, v64, v60);
        sub_1D3065284(v64, type metadata accessor for Helper.PathInAssetPackLookupResult);
        v75 = 0;
      }

      (*(v78 + 56))(v85, v75, 1, v60);
    }

    else
    {
      sub_1D3065284(v59, type metadata accessor for Helper.Reply);
      type metadata accessor for HelperError();
      sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError);
      swift_allocError();
      sub_1D3058338(v45, v66, type metadata accessor for Helper.Reply);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_1D3065284(v45, type metadata accessor for Helper.Reply);
    }
  }
}

void Helper.Proxy.path(toFileAt:forAppWithBundleID:teamID:)(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v108 = a4;
  v115 = a2;
  v116 = a1;
  v100 = a6;
  v99 = type metadata accessor for Helper.PathForAppLookupResult(0);
  v102 = *(v99 - 8);
  v10 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](v99);
  v96 = &v92[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A768, &qword_1D30F5880);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v92[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x1EEE9AC00](v14);
  v98 = &v92[-v18];
  MEMORY[0x1EEE9AC00](v17);
  v101 = &v92[-v19];
  v107 = type metadata accessor for Helper.Message(0);
  v20 = *(*(v107 - 8) + 64);
  MEMORY[0x1EEE9AC00](v107);
  v106 = &v92[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v103 = type metadata accessor for Helper.Reply(0);
  v22 = *(*(v103 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v103);
  v104 = &v92[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v92[-v25];
  v111 = sub_1D30E8D9C();
  v27 = *(v111 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x1EEE9AC00](v111);
  v31 = &v92[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v92[-v32];
  v105 = v27;
  v109 = a5;
  v97 = v16;
  v114 = v26;
  if (a5)
  {
    if (qword_1EE313F10 != -1)
    {
      swift_once();
    }

    v34 = sub_1D30E8B3C();
    __swift_project_value_buffer(v34, qword_1EE313F18);
    v35 = sub_1D30E928C();
    v36 = *(v27 + 16);
    v112 = (v27 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v113 = v36;
    v37 = v111;
    v36(v33, v116, v111);

    v38 = v109;

    v39 = sub_1D30E8B1C();

    if (os_log_type_enabled(v39, v35))
    {
      v40 = swift_slowAlloc();
      v95 = v7;
      v41 = v40;
      v94 = swift_slowAlloc();
      v117 = v94;
      *v41 = 136446722;
      sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8]);
      v42 = sub_1D30E977C();
      v93 = v35;
      v44 = v43;
      (*(v27 + 8))(v33, v37);
      v45 = sub_1D2FFEA04(v42, v44, &v117);

      *(v41 + 4) = v45;
      *(v41 + 12) = 2082;
      *(v41 + 14) = sub_1D2FFEA04(v115, a3, &v117);
      *(v41 + 22) = 2082;
      v46 = v108;
      *(v41 + 24) = sub_1D2FFEA04(v108, v38, &v117);
      _os_log_impl(&dword_1D2FD9000, v39, v93, "Path to file at: %{public}s for app with bundle ID: %{public}s team ID: %{public}s", v41, 0x20u);
      v47 = v94;
      swift_arrayDestroy();
      MEMORY[0x1D38B3760](v47, -1, -1);
      v48 = v41;
      v7 = v95;
      MEMORY[0x1D38B3760](v48, -1, -1);

      v49 = v38;
      goto LABEL_14;
    }

    (*(v27 + 8))(v33, v37);
    v49 = v38;
  }

  else
  {
    if (qword_1EE313F10 != -1)
    {
      swift_once();
    }

    v50 = sub_1D30E8B3C();
    __swift_project_value_buffer(v50, qword_1EE313F18);
    v51 = sub_1D30E928C();
    v52 = v105;
    v53 = *(v105 + 16);
    v112 = (v105 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v113 = v53;
    v54 = v111;
    v53(v31, v116, v111);

    v55 = sub_1D30E8B1C();

    if (os_log_type_enabled(v55, v51))
    {
      v56 = swift_slowAlloc();
      v95 = v7;
      v57 = v56;
      v94 = swift_slowAlloc();
      v117 = v94;
      *v57 = 136446466;
      sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8]);
      v58 = sub_1D30E977C();
      v60 = v59;
      (*(v52 + 8))(v31, v54);
      v61 = sub_1D2FFEA04(v58, v60, &v117);

      *(v57 + 4) = v61;
      *(v57 + 12) = 2082;
      *(v57 + 14) = sub_1D2FFEA04(v115, a3, &v117);
      _os_log_impl(&dword_1D2FD9000, v55, v51, "Path to file at: %{public}s for app with bundle ID: %{public}s", v57, 0x16u);
      v62 = v94;
      swift_arrayDestroy();
      MEMORY[0x1D38B3760](v62, -1, -1);
      v63 = v57;
      v7 = v95;
      MEMORY[0x1D38B3760](v63, -1, -1);
    }

    else
    {

      (*(v52 + 8))(v31, v54);
    }

    v37 = v54;
    v49 = v109;
  }

  v46 = v108;
LABEL_14:
  os_unfair_lock_lock((v7 + 40));
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A188, &qword_1D30F5490);
  v65 = v106;
  v66 = &v106[v64[12]];
  v67 = &v106[v64[16]];
  v68 = v64[20];
  v113(v106, v116, v37);
  *v66 = v115;
  v66[1] = a3;
  *v67 = v46;
  v67[1] = v49;
  v69 = *(v7 + 88);

  *(v65 + v68) = sub_1D3042D44(v69);
  swift_storeEnumTagMultiPayload();
  v70 = v114;
  v71 = v110;
  sub_1D3068030(v65, v114);
  sub_1D3065284(v65, type metadata accessor for Helper.Message);
  os_unfair_lock_unlock((v7 + 40));
  if (!v71)
  {
    v72 = v37;
    v73 = v104;
    sub_1D3058338(v70, v104, type metadata accessor for Helper.Reply);
    if (swift_getEnumCaseMultiPayload() == 20)
    {
      v74 = v7;
      v75 = v101;
      sub_1D30E6F78(v73, v101, &qword_1EC74A768, &qword_1D30F5880);
      v76 = v98;
      sub_1D302B0DC(v75, v98, &qword_1EC74A768, &qword_1D30F5880);
      v77 = v102 + 48;
      v78 = *(v102 + 48);
      v79 = v99;
      if (v78(v76, 1, v99) == 1)
      {
        sub_1D3065284(v114, type metadata accessor for Helper.Reply);
        sub_1D2FF14DC(v76, &qword_1EC74A768, &qword_1D30F5880);
        v80 = v97;
      }

      else
      {
        v82 = v96;
        sub_1D3056830(v76, v96, type metadata accessor for Helper.PathForAppLookupResult);
        v83 = &v82[*(v79 + 24)];
        v84 = v83[1];
        if (v84)
        {
          v102 = v77;
          v85 = &v82[*(v79 + 20)];
          v86 = *v85;
          v87 = v85[1];
          v88 = *v83;

          os_unfair_lock_lock(v74 + 10);
          v89 = sub_1D30E7844(v88, v84);
          sub_1D3067414(v89, v86, v87);
          os_unfair_lock_unlock(v74 + 10);
          v75 = v101;
        }

        sub_1D3065284(v114, type metadata accessor for Helper.Reply);
        sub_1D3065284(v82, type metadata accessor for Helper.PathForAppLookupResult);
        v80 = v97;
        v72 = v111;
      }

      v90 = v113;
      sub_1D30E6F78(v75, v80, &qword_1EC74A768, &qword_1D30F5880);
      if (v78(v80, 1, v79) == 1)
      {
        sub_1D2FF14DC(v80, &qword_1EC74A768, &qword_1D30F5880);
        v91 = 1;
      }

      else
      {
        v90(v100, v80, v72);
        sub_1D3065284(v80, type metadata accessor for Helper.PathForAppLookupResult);
        v91 = 0;
      }

      (*(v105 + 56))(v100, v91, 1, v72);
    }

    else
    {
      sub_1D3065284(v73, type metadata accessor for Helper.Reply);
      type metadata accessor for HelperError();
      sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError);
      swift_allocError();
      sub_1D3058338(v70, v81, type metadata accessor for Helper.Reply);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_1D3065284(v70, type metadata accessor for Helper.Reply);
    }
  }
}

uint64_t Helper.Proxy.path(toStagingDirectoryForAppWithBundleID:teamID:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v68 = a3;
  v62 = a5;
  v63 = type metadata accessor for Helper.PathToStagingDirectoryLookupResult(0);
  v10 = *(*(v63 - 8) + 64);
  MEMORY[0x1EEE9AC00](v63);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Helper.Message(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v65 = type metadata accessor for Helper.Reply(0);
  v17 = *(*(v65 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v65);
  v64 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v67 = &v59 - v20;
  if (a4)
  {
    if (qword_1EE313F10 != -1)
    {
      swift_once();
    }

    v21 = sub_1D30E8B3C();
    __swift_project_value_buffer(v21, qword_1EE313F18);
    v22 = sub_1D30E928C();

    v23 = sub_1D30E8B1C();

    if (os_log_type_enabled(v23, v22))
    {
      v24 = swift_slowAlloc();
      v61 = v12;
      v25 = v24;
      v26 = swift_slowAlloc();
      v60 = v6;
      v27 = v26;
      v69 = v26;
      *v25 = 136446466;
      *(v25 + 4) = sub_1D2FFEA04(a1, a2, &v69);
      *(v25 + 12) = 2082;
      *(v25 + 14) = sub_1D2FFEA04(v68, a4, &v69);
      _os_log_impl(&dword_1D2FD9000, v23, v22, "Path to staging directory for app with bundle ID: %{public}s team ID: %{public}s", v25, 0x16u);
      swift_arrayDestroy();
      v28 = v27;
      v6 = v60;
      MEMORY[0x1D38B3760](v28, -1, -1);
      v29 = v25;
      v12 = v61;
LABEL_10:
      MEMORY[0x1D38B3760](v29, -1, -1);
    }
  }

  else
  {
    if (qword_1EE313F10 != -1)
    {
      swift_once();
    }

    v30 = sub_1D30E8B3C();
    __swift_project_value_buffer(v30, qword_1EE313F18);
    v31 = sub_1D30E928C();

    v23 = sub_1D30E8B1C();

    if (os_log_type_enabled(v23, v31))
    {
      v32 = swift_slowAlloc();
      v60 = v6;
      v33 = v32;
      v34 = swift_slowAlloc();
      v61 = v12;
      v35 = v34;
      v69 = v34;
      *v33 = 136446210;
      *(v33 + 4) = sub_1D2FFEA04(a1, a2, &v69);
      _os_log_impl(&dword_1D2FD9000, v23, v31, "Path to staging directory for app with bundle ID: %{public}s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      v36 = v35;
      v12 = v61;
      MEMORY[0x1D38B3760](v36, -1, -1);
      v29 = v33;
      v6 = v60;
      goto LABEL_10;
    }
  }

  *v16 = a1;
  v16[1] = a2;
  v16[2] = v68;
  v16[3] = a4;
  swift_storeEnumTagMultiPayload();

  v37 = v66;
  v38 = v67;
  sub_1D3068030(v16, v67);
  result = sub_1D3065284(v16, type metadata accessor for Helper.Message);
  if (v37)
  {
    return result;
  }

  v40 = v64;
  sub_1D3058338(v38, v64, type metadata accessor for Helper.Reply);
  if (swift_getEnumCaseMultiPayload() == 21)
  {
    sub_1D3056830(v40, v12, type metadata accessor for Helper.PathToStagingDirectoryLookupResult);
    v41 = &v12[*(v63 + 20)];
    v42 = v41[1];
    if (!v42)
    {
LABEL_25:
      sub_1D3065284(v38, type metadata accessor for Helper.Reply);
      v58 = sub_1D30E8D9C();
      (*(*(v58 - 8) + 16))(v62, v12, v58);
      v47 = type metadata accessor for Helper.PathToStagingDirectoryLookupResult;
      v48 = v12;
      return sub_1D3065284(v48, v47);
    }

    v43 = v6;
    v44 = *v41;
    v45 = v41[1];

    os_unfair_lock_lock((v43 + 40));
    result = sub_1D30E7844(v44, v42);
    v49 = *(v43 + 64);
    v50 = v49 + 1;
    if (__OFADD__(v49, 1))
    {
      __break(1u);
    }

    else
    {
      v51 = *(v43 + 72);
      if (v51 < v50)
      {
        if (v51 + 0x4000000000000000 < 0)
        {
LABEL_30:
          __break(1u);
          return result;
        }

        v52 = result;
        if (2 * v51 <= v50)
        {
          v53 = (v49 + 1);
        }

        else
        {
          v53 = (2 * v51);
        }

        sub_1D30409E0(v53);
        v49 = *(v43 + 64);
        result = v52;
      }

      v54 = *(v43 + 48) + 16 * v49;
      *v54 = result;
      *(v54 + 8) = 0;
      v55 = *(v43 + 64);
      v56 = __OFADD__(v55, 1);
      v57 = v55 + 1;
      if (!v56)
      {
        *(v43 + 64) = v57;
        os_unfair_lock_unlock((v43 + 40));
        goto LABEL_25;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  sub_1D3065284(v40, type metadata accessor for Helper.Reply);
  type metadata accessor for HelperError();
  sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError);
  swift_allocError();
  sub_1D3058338(v38, v46, type metadata accessor for Helper.Reply);
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  v47 = type metadata accessor for Helper.Reply;
  v48 = v38;
  return sub_1D3065284(v48, v47);
}

uint64_t Helper.Proxy.copyItem(at:intoStagingDirectoryForAppWithBundleID:teamID:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v67 = a2;
  v68 = a4;
  v71 = a1;
  v66 = type metadata accessor for Helper.Message(0);
  v7 = *(*(v66 - 8) + 64);
  MEMORY[0x1EEE9AC00](v66);
  v62 = &v57[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v61 = type metadata accessor for Helper.Reply(0);
  v9 = *(*(v61 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v61);
  v12 = &v57[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v70 = &v57[-v13];
  v14 = sub_1D30E8D9C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v57[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v57[-v20];
  v65 = a5;
  if (a5)
  {
    if (qword_1EE313F10 != -1)
    {
      swift_once();
    }

    v22 = sub_1D30E8B3C();
    __swift_project_value_buffer(v22, qword_1EE313F18);
    v23 = sub_1D30E928C();
    v24 = *(v15 + 16);
    v63 = (v15 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v64 = v24;
    v25 = v14;
    v24(v21, v71, v14);

    v26 = v65;

    v27 = sub_1D30E8B1C();

    if (os_log_type_enabled(v27, v23))
    {
      v28 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v72 = v60;
      *v28 = 136446722;
      sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8]);
      v59 = v27;
      v29 = sub_1D30E977C();
      v58 = v23;
      v30 = v12;
      v32 = v31;
      (*(v15 + 8))(v21, v25);
      v33 = sub_1D2FFEA04(v29, v32, &v72);
      v12 = v30;

      *(v28 + 4) = v33;
      *(v28 + 12) = 2082;
      v34 = v67;
      *(v28 + 14) = sub_1D2FFEA04(v67, a3, &v72);
      *(v28 + 22) = 2082;
      v35 = v68;
      *(v28 + 24) = sub_1D2FFEA04(v68, v26, &v72);
      v36 = v59;
      _os_log_impl(&dword_1D2FD9000, v59, v58, "Copy item at: %{public}s into staging directory for app with bundle ID: %{public}s team ID: %{public}s", v28, 0x20u);
      v37 = v60;
      swift_arrayDestroy();
      MEMORY[0x1D38B3760](v37, -1, -1);
      MEMORY[0x1D38B3760](v28, -1, -1);

      goto LABEL_13;
    }

    (*(v15 + 8))(v21, v25);
  }

  else
  {
    v60 = v12;
    if (qword_1EE313F10 != -1)
    {
      swift_once();
    }

    v38 = sub_1D30E8B3C();
    __swift_project_value_buffer(v38, qword_1EE313F18);
    v39 = sub_1D30E928C();
    v40 = *(v15 + 16);
    v63 = (v15 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v64 = v40;
    v40(v19, v71, v14);

    v41 = sub_1D30E8B1C();

    if (os_log_type_enabled(v41, v39))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v72 = v43;
      *v42 = 136446466;
      sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8]);
      v44 = sub_1D30E977C();
      LODWORD(v59) = v39;
      v46 = v45;
      (*(v15 + 8))(v19, v14);
      v47 = sub_1D2FFEA04(v44, v46, &v72);

      *(v42 + 4) = v47;
      *(v42 + 12) = 2082;
      v34 = v67;
      *(v42 + 14) = sub_1D2FFEA04(v67, a3, &v72);
      _os_log_impl(&dword_1D2FD9000, v41, v59, "Copy item at: %{public}s into staging directory for app with bundle ID: %{public}s", v42, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D38B3760](v43, -1, -1);
      MEMORY[0x1D38B3760](v42, -1, -1);

      v12 = v60;
      v25 = v14;
      v26 = v65;
      v35 = v68;
      goto LABEL_13;
    }

    (*(v15 + 8))(v19, v14);
    v12 = v60;
    v25 = v14;
    v26 = v65;
  }

  v34 = v67;
  v35 = v68;
LABEL_13:
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A180, &qword_1D30F5488);
  v49 = v62;
  v50 = &v62[*(v48 + 48)];
  v51 = &v62[*(v48 + 64)];
  v64(v62, v71, v25);
  *v50 = v34;
  v50[1] = a3;
  *v51 = v35;
  v51[1] = v26;
  swift_storeEnumTagMultiPayload();

  v52 = v69;
  sub_1D3068030(v49, v70);
  result = sub_1D3065284(v49, type metadata accessor for Helper.Message);
  if (!v52)
  {
    sub_1D3058338(v70, v12, type metadata accessor for Helper.Reply);
    if (swift_getEnumCaseMultiPayload() == 41)
    {
      sub_1D3065284(v70, type metadata accessor for Helper.Reply);
      v54 = v12;
    }

    else
    {
      sub_1D3065284(v12, type metadata accessor for Helper.Reply);
      type metadata accessor for HelperError();
      sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError);
      swift_allocError();
      v55 = v70;
      sub_1D3058338(v70, v56, type metadata accessor for Helper.Reply);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v54 = v55;
    }

    return sub_1D3065284(v54, type metadata accessor for Helper.Reply);
  }

  return result;
}

uint64_t Helper.Proxy.pathToContainer()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Helper.Message(0);
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v5 = type metadata accessor for Helper.Reply(0);
  v2[6] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D307BA84, 0, 0);
}

uint64_t sub_1D307BA84()
{
  if (qword_1EE313F10 != -1)
  {
    swift_once();
  }

  v1 = sub_1D30E8B3C();
  __swift_project_value_buffer(v1, qword_1EE313F18);
  v2 = sub_1D30E928C();
  v3 = sub_1D30E8B1C();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D2FD9000, v3, v2, "Path to container", v4, 2u);
    MEMORY[0x1D38B3760](v4, -1, -1);
  }

  v6 = v0[4];
  v5 = v0[5];

  swift_storeEnumTagMultiPayload();
  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  v7[1] = sub_1D307BBEC;
  v8 = v0[8];
  v9 = v0[5];
  v10 = v0[3];

  return sub_1D3068FD4(v8, v9);
}

uint64_t sub_1D307BBEC()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 40);
  v6 = *v1;
  *(*v1 + 80) = v0;

  sub_1D3065284(v3, type metadata accessor for Helper.Message);
  if (v0)
  {
    v4 = sub_1D3075704;
  }

  else
  {
    v4 = sub_1D307BD30;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D307BD30()
{
  v1 = v0[6];
  sub_1D3058338(v0[8], v0[7], type metadata accessor for Helper.Reply);
  if (swift_getEnumCaseMultiPayload() == 22)
  {
    v2 = v0[7];
    v3 = v0[5];
    v4 = v0[2];
    sub_1D3065284(v0[8], type metadata accessor for Helper.Reply);
    v5 = sub_1D30E8D9C();
    (*(*(v5 - 8) + 32))(v4, v2, v5);
  }

  else
  {
    v7 = v0[8];
    sub_1D3065284(v0[7], type metadata accessor for Helper.Reply);
    type metadata accessor for HelperError();
    sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError);
    swift_allocError();
    sub_1D3058338(v7, v8, type metadata accessor for Helper.Reply);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1D3065284(v7, type metadata accessor for Helper.Reply);
    v10 = v0[7];
    v9 = v0[8];
    v11 = v0[5];
  }

  v6 = v0[1];

  return v6();
}

uint64_t Helper.Proxy.contentsOfDirectory(inContainerAt:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Helper.Message(0);
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v5 = type metadata accessor for Helper.Reply(0);
  v2[6] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v7 = sub_1D30E8D9C();
  v2[9] = v7;
  v8 = *(v7 - 8);
  v2[10] = v8;
  v9 = *(v8 + 64) + 15;
  v2[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D307C064, 0, 0);
}

uint64_t sub_1D307C064()
{
  v29 = v0;
  if (qword_1EE313F10 != -1)
  {
    swift_once();
  }

  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = v0[2];
  v5 = sub_1D30E8B3C();
  __swift_project_value_buffer(v5, qword_1EE313F18);
  v6 = sub_1D30E928C();
  v7 = *(v2 + 16);
  v7(v1, v4, v3);
  v8 = sub_1D30E8B1C();
  v9 = os_log_type_enabled(v8, v6);
  v11 = v0[10];
  v10 = v0[11];
  v12 = v0[9];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = v27;
    *v13 = 136446210;
    sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8]);
    v14 = v7;
    v15 = sub_1D30E977C();
    v26 = v6;
    v17 = v16;
    (*(v11 + 8))(v10, v12);
    v18 = v15;
    v7 = v14;
    v19 = sub_1D2FFEA04(v18, v17, &v28);

    *(v13 + 4) = v19;
    _os_log_impl(&dword_1D2FD9000, v8, v26, "Contents of directory in container at: %{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    MEMORY[0x1D38B3760](v27, -1, -1);
    MEMORY[0x1D38B3760](v13, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v20 = v0[4];
  v7(v0[5], v0[2], v0[9]);
  swift_storeEnumTagMultiPayload();
  v21 = swift_task_alloc();
  v0[12] = v21;
  *v21 = v0;
  v21[1] = sub_1D307C314;
  v22 = v0[8];
  v23 = v0[5];
  v24 = v0[3];

  return sub_1D3068FD4(v22, v23);
}

uint64_t sub_1D307C314()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 40);
  v6 = *v1;
  *(*v1 + 104) = v0;

  sub_1D3065284(v3, type metadata accessor for Helper.Message);
  if (v0)
  {
    v4 = sub_1D307C66C;
  }

  else
  {
    v4 = sub_1D307C458;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D307C458()
{
  v1 = v0[6];
  sub_1D3058338(v0[8], v0[7], type metadata accessor for Helper.Reply);
  if (swift_getEnumCaseMultiPayload() == 23)
  {
    v2 = v0[11];
    v3 = v0[7];
    v4 = v0[5];
    sub_1D3065284(v0[8], type metadata accessor for Helper.Reply);
    v5 = *v3;

    v6 = v0[1];

    return v6(v5);
  }

  else
  {
    v8 = v0[8];
    sub_1D3065284(v0[7], type metadata accessor for Helper.Reply);
    type metadata accessor for HelperError();
    sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError);
    swift_allocError();
    sub_1D3058338(v8, v9, type metadata accessor for Helper.Reply);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1D3065284(v8, type metadata accessor for Helper.Reply);
    v10 = v0[11];
    v11 = v0[7];
    v12 = v0[8];
    v13 = v0[5];

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_1D307C66C()
{
  v1 = v0[13];
  v2 = v0[11];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[5];

  v6 = v0[1];

  return v6();
}

uint64_t Helper.Proxy.copyItem(at:intoContainerTo:attributingToBundleWithID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for Helper.Message(0);
  v5[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[8] = swift_task_alloc();
  v8 = type metadata accessor for Helper.Reply(0);
  v5[9] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v10 = sub_1D30E881C();
  v5[12] = v10;
  v11 = *(v10 - 8);
  v5[13] = v11;
  v12 = *(v11 + 64) + 15;
  v5[14] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7493C0, &qword_1D30EF500) - 8) + 64) + 15;
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v14 = sub_1D30E88CC();
  v5[17] = v14;
  v15 = *(v14 - 8);
  v5[18] = v15;
  v16 = *(v15 + 64) + 15;
  v5[19] = swift_task_alloc();
  v17 = type metadata accessor for FilePath.ResolutionError();
  v5[20] = v17;
  v18 = *(*(v17 - 8) + 64) + 15;
  v5[21] = swift_task_alloc();
  v19 = sub_1D30E8D9C();
  v5[22] = v19;
  v20 = *(v19 - 8);
  v5[23] = v20;
  v21 = *(v20 + 64) + 15;
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D307C994, 0, 0);
}

uint64_t sub_1D307C994()
{
  v109 = v0;
  if (*(v0 + 40))
  {
    v102 = *(v0 + 40);
    if (qword_1EE313F10 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 224);
    v1 = *(v0 + 232);
    v4 = *(v0 + 176);
    v3 = *(v0 + 184);
    v6 = *(v0 + 16);
    v5 = *(v0 + 24);
    v7 = sub_1D30E8B3C();
    __swift_project_value_buffer(v7, qword_1EE313F18);
    v8 = sub_1D30E928C();
    v9 = *(v3 + 16);
    v9(v1, v6, v4);
    v107 = v9;
    v9(v2, v5, v4);

    v10 = sub_1D30E8B1C();

    v99 = v8;
    v11 = os_log_type_enabled(v10, v8);
    v12 = *(v0 + 224);
    v13 = *(v0 + 232);
    v15 = *(v0 + 176);
    v14 = *(v0 + 184);
    if (v11)
    {
      v96 = *(v0 + 32);
      v16 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v108[0] = v94;
      *v16 = 136446722;
      sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8]);
      log = v10;
      v17 = sub_1D30E977C();
      v19 = v18;
      v20 = *(v14 + 8);
      v20(v13, v15);
      v21 = sub_1D2FFEA04(v17, v19, v108);

      *(v16 + 4) = v21;
      *(v16 + 12) = 2082;
      v22 = sub_1D30E977C();
      v24 = v23;
      v20(v12, v15);
      v25 = sub_1D2FFEA04(v22, v24, v108);

      *(v16 + 14) = v25;
      *(v16 + 22) = 2082;
      *(v16 + 24) = sub_1D2FFEA04(v96, v102, v108);
      _os_log_impl(&dword_1D2FD9000, log, v99, "Copy item at: %{public}s into container to: %{public}s attributing to bundle with ID: %{public}s", v16, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1D38B3760](v94, -1, -1);
      MEMORY[0x1D38B3760](v16, -1, -1);
    }

    else
    {

      v20 = *(v14 + 8);
      v20(v12, v15);
      v20(v13, v15);
    }
  }

  else
  {
    if (qword_1EE313F10 != -1)
    {
      swift_once();
    }

    v26 = *(v0 + 208);
    v27 = *(v0 + 216);
    v29 = *(v0 + 176);
    v28 = *(v0 + 184);
    v31 = *(v0 + 16);
    v30 = *(v0 + 24);
    v32 = sub_1D30E8B3C();
    __swift_project_value_buffer(v32, qword_1EE313F18);
    v33 = sub_1D30E928C();
    v34 = *(v28 + 16);
    v34(v27, v31, v29);
    v34(v26, v30, v29);
    v35 = sub_1D30E8B1C();
    v36 = os_log_type_enabled(v35, v33);
    v37 = *(v0 + 208);
    v38 = *(v0 + 216);
    v40 = *(v0 + 176);
    v39 = *(v0 + 184);
    v107 = v34;
    if (v36)
    {
      v41 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      v108[0] = v103;
      *v41 = 136446466;
      sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8]);
      v97 = v33;
      v42 = sub_1D30E977C();
      v100 = v35;
      v44 = v43;
      v20 = *(v39 + 8);
      v20(v38, v40);
      v45 = sub_1D2FFEA04(v42, v44, v108);

      *(v41 + 4) = v45;
      *(v41 + 12) = 2082;
      v46 = sub_1D30E977C();
      v48 = v47;
      v20(v37, v40);
      v49 = sub_1D2FFEA04(v46, v48, v108);

      *(v41 + 14) = v49;
      _os_log_impl(&dword_1D2FD9000, v100, v97, "Copy item at: %{public}s into container to: %{public}s", v41, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D38B3760](v103, -1, -1);
      MEMORY[0x1D38B3760](v41, -1, -1);
    }

    else
    {

      v20 = *(v39 + 8);
      v20(v37, v40);
      v20(v38, v40);
    }
  }

  *(v0 + 240) = v20;
  v50 = *(v0 + 16);
  sub_1D302DD9C(*(v0 + 168), *(v0 + 200));
  v104 = v20;
  v51 = *(v0 + 192);
  v52 = *(v0 + 136);
  v53 = *(v0 + 144);
  v54 = *(v0 + 128);
  v56 = *(v0 + 104);
  v55 = *(v0 + 112);
  v57 = *(v0 + 96);
  v58 = *(v0 + 184) + 16;
  v107(v51, *(v0 + 200), *(v0 + 176));
  (*(v56 + 104))(v55, *MEMORY[0x1E6968F70], v57);
  sub_1D3040AB4(v51, v55, v54);
  if ((*(v53 + 48))(v54, 1, v52) == 1)
  {
    v59 = *(v0 + 200);
    v61 = *(v0 + 176);
    v60 = *(v0 + 184);
    sub_1D2FF14DC(*(v0 + 128), &qword_1EC7493C0, &qword_1D30EF500);
    type metadata accessor for HelperError();
    sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError);
    swift_allocError();
    v107(v62, v59, v61);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v104(v59, v61);
    v70 = *(v0 + 224);
    v69 = *(v0 + 232);
    v72 = *(v0 + 208);
    v71 = *(v0 + 216);
    v74 = *(v0 + 192);
    v73 = *(v0 + 200);
    v75 = *(v0 + 168);
    v76 = *(v0 + 152);
    v77 = *(v0 + 120);
    v78 = *(v0 + 128);
    v95 = *(v0 + 112);
    v98 = *(v0 + 88);
    v101 = *(v0 + 80);
    v105 = *(v0 + 64);

    v79 = *(v0 + 8);

    return v79();
  }

  else
  {
    v63 = *(v0 + 144);
    v64 = *(v0 + 136);
    v65 = *(v0 + 120);
    (*(v63 + 32))(*(v0 + 152), *(v0 + 128), v64);
    (*(v63 + 56))(v65, 1, 1, v64);
    v66 = sub_1D30E880C();
    v68 = v67;
    *(v0 + 248) = v66;
    *(v0 + 256) = v67;
    sub_1D2FF14DC(v65, &qword_1EC7493C0, &qword_1D30EF500);
    v81 = *(v0 + 176);
    v82 = *(v0 + 64);
    v106 = *(v0 + 56);
    v84 = *(v0 + 32);
    v83 = *(v0 + 40);
    v85 = *(v0 + 24);
    v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A178, &qword_1D30F5480);
    v87 = *(v86 + 48);
    v88 = (v82 + *(v86 + 64));
    *v82 = v66;
    v82[1] = v68;
    v107(v82 + v87, v85, v81);
    *v88 = v84;
    v88[1] = v83;
    swift_storeEnumTagMultiPayload();

    sub_1D2FF17B0(v66, v68);
    v89 = swift_task_alloc();
    *(v0 + 264) = v89;
    *v89 = v0;
    v89[1] = sub_1D307D364;
    v90 = *(v0 + 88);
    v91 = *(v0 + 64);
    v92 = *(v0 + 48);

    return sub_1D3068FD4(v90, v91);
  }
}

uint64_t sub_1D307D364()
{
  v2 = *(*v1 + 264);
  v3 = *(*v1 + 64);
  v6 = *v1;
  *(*v1 + 272) = v0;

  sub_1D3065284(v3, type metadata accessor for Helper.Message);
  if (v0)
  {
    v4 = sub_1D307D840;
  }

  else
  {
    v4 = sub_1D307D4A8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D307D4A8()
{
  v1 = v0[9];
  sub_1D3058338(v0[11], v0[10], type metadata accessor for Helper.Reply);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = v0[31];
  v46 = v0[30];
  if (EnumCaseMultiPayload == 42)
  {
    v29 = v0[29];
    v30 = v0[28];
    v31 = v0[27];
    v32 = v0[26];
    v4 = v0[25];
    v6 = v0[22];
    v5 = v0[23];
    v33 = v0[24];
    v34 = v0[21];
    v7 = v0[18];
    v8 = v0[19];
    v9 = v0[17];
    v36 = v0[16];
    v39 = v0[15];
    v10 = v0[10];
    v11 = v0[11];
    v42 = v0[14];
    v45 = v0[8];
    sub_1D2FF1804(v3, v0[32]);
    sub_1D3065284(v11, type metadata accessor for Helper.Reply);
    (*(v7 + 8))(v8, v9);
    v46(v4, v6);
    sub_1D3065284(v10, type metadata accessor for Helper.Reply);
  }

  else
  {
    v40 = v0[22];
    v43 = v0[25];
    v13 = v0[18];
    v35 = v0[19];
    v37 = v0[23];
    v14 = v0[17];
    v15 = v0[11];
    v16 = v0[32];
    sub_1D3065284(v0[10], type metadata accessor for Helper.Reply);
    type metadata accessor for HelperError();
    sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError);
    swift_allocError();
    sub_1D3058338(v15, v17, type metadata accessor for Helper.Reply);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1D2FF1804(v3, v16);
    sub_1D3065284(v15, type metadata accessor for Helper.Reply);
    (*(v13 + 8))(v35, v14);
    v46(v43, v40);
    v19 = v0[28];
    v18 = v0[29];
    v21 = v0[26];
    v20 = v0[27];
    v23 = v0[24];
    v22 = v0[25];
    v24 = v0[21];
    v25 = v0[19];
    v26 = v0[15];
    v27 = v0[16];
    v38 = v0[14];
    v41 = v0[11];
    v44 = v0[10];
    v47 = v0[8];
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_1D307D840()
{
  v1 = v0[30];
  v2 = v0[25];
  v3 = v0[22];
  v4 = v0[23];
  v6 = v0[18];
  v5 = v0[19];
  v7 = v0[17];
  sub_1D2FF1804(v0[31], v0[32]);
  (*(v6 + 8))(v5, v7);
  v1(v2, v3);
  v9 = v0[28];
  v8 = v0[29];
  v11 = v0[26];
  v10 = v0[27];
  v13 = v0[24];
  v12 = v0[25];
  v14 = v0[21];
  v15 = v0[19];
  v16 = v0[15];
  v17 = v0[16];
  v20 = v0[14];
  v21 = v0[11];
  v22 = v0[10];
  v23 = v0[8];
  v24 = v0[34];

  v18 = v0[1];

  return v18();
}

uint64_t Helper.Proxy.copyItem(at:outOfContainerTo:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for Helper.Message(0);
  v3[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v6 = type metadata accessor for Helper.Reply(0);
  v3[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v8 = sub_1D30E8D9C();
  v3[10] = v8;
  v9 = *(v8 - 8);
  v3[11] = v9;
  v10 = *(v9 + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D307DAE4, 0, 0);
}

uint64_t sub_1D307DAE4()
{
  v43 = v0;
  if (qword_1EE313F10 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v6 = v0[2];
  v5 = v0[3];
  v7 = sub_1D30E8B3C();
  __swift_project_value_buffer(v7, qword_1EE313F18);
  v8 = sub_1D30E928C();
  v9 = *(v3 + 16);
  v9(v2, v6, v4);
  v9(v1, v5, v4);
  v10 = sub_1D30E8B1C();
  v11 = os_log_type_enabled(v10, v8);
  v13 = v0[12];
  v12 = v0[13];
  v15 = v0[10];
  v14 = v0[11];
  if (v11)
  {
    log = v10;
    v16 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v42[0] = v41;
    *v16 = 136446466;
    sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8]);
    v39 = v8;
    v17 = sub_1D30E977C();
    v19 = v18;
    v20 = *(v14 + 8);
    v20(v12, v15);
    v21 = sub_1D2FFEA04(v17, v19, v42);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2082;
    v22 = sub_1D30E977C();
    v24 = v23;
    v20(v13, v15);
    v25 = sub_1D2FFEA04(v22, v24, v42);

    *(v16 + 14) = v25;
    _os_log_impl(&dword_1D2FD9000, log, v39, "Copy item at: %{public}s out of container to: %{public}s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38B3760](v41, -1, -1);
    MEMORY[0x1D38B3760](v16, -1, -1);
  }

  else
  {

    v26 = *(v14 + 8);
    v26(v13, v15);
    v26(v12, v15);
  }

  v27 = v0[3];
  v9(v0[6], v0[2], v0[10]);
  v28 = sub_1D30DC350(v27);
  v30 = v29;
  v32 = v0[5];
  v31 = v0[6];
  v33 = (v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A170, &qword_1D30F5478) + 48));
  *v33 = v28;
  v33[1] = v30;
  swift_storeEnumTagMultiPayload();
  v34 = swift_task_alloc();
  v0[14] = v34;
  *v34 = v0;
  v34[1] = sub_1D307DF00;
  v35 = v0[9];
  v36 = v0[6];
  v37 = v0[4];

  return sub_1D3068FD4(v35, v36);
}

uint64_t sub_1D307DF00()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v6 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_1D307E238;
  }

  else
  {
    sub_1D3065284(*(v2 + 48), type metadata accessor for Helper.Message);
    v4 = sub_1D307E030;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D307E030()
{
  v1 = v0[7];
  sub_1D3058338(v0[9], v0[8], type metadata accessor for Helper.Reply);
  if (swift_getEnumCaseMultiPayload() == 43)
  {
    v2 = v0[12];
    v3 = v0[13];
    v4 = v0[8];
    v5 = v0[6];
    sub_1D3065284(v0[9], type metadata accessor for Helper.Reply);
    sub_1D3065284(v4, type metadata accessor for Helper.Reply);
  }

  else
  {
    v7 = v0[9];
    sub_1D3065284(v0[8], type metadata accessor for Helper.Reply);
    type metadata accessor for HelperError();
    sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError);
    swift_allocError();
    sub_1D3058338(v7, v8, type metadata accessor for Helper.Reply);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1D3065284(v7, type metadata accessor for Helper.Reply);
    v10 = v0[12];
    v9 = v0[13];
    v12 = v0[8];
    v11 = v0[9];
    v13 = v0[6];
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_1D307E238()
{
  sub_1D3065284(v0[6], type metadata accessor for Helper.Message);
  v1 = v0[15];
  v3 = v0[12];
  v2 = v0[13];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[6];

  v7 = v0[1];

  return v7();
}

uint64_t Helper.Proxy.moveItem(at:intoContainerTo:attributingToBundleWithID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for Helper.Message(0);
  v5[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[8] = swift_task_alloc();
  v8 = type metadata accessor for Helper.Reply(0);
  v5[9] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v10 = sub_1D30E881C();
  v5[12] = v10;
  v11 = *(v10 - 8);
  v5[13] = v11;
  v12 = *(v11 + 64) + 15;
  v5[14] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7493C0, &qword_1D30EF500) - 8) + 64) + 15;
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v14 = sub_1D30E88CC();
  v5[17] = v14;
  v15 = *(v14 - 8);
  v5[18] = v15;
  v16 = *(v15 + 64) + 15;
  v5[19] = swift_task_alloc();
  v17 = type metadata accessor for FilePath.ResolutionError();
  v5[20] = v17;
  v18 = *(*(v17 - 8) + 64) + 15;
  v5[21] = swift_task_alloc();
  v19 = sub_1D30E8D9C();
  v5[22] = v19;
  v20 = *(v19 - 8);
  v5[23] = v20;
  v21 = *(v20 + 64) + 15;
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D307E58C, 0, 0);
}

uint64_t sub_1D307E58C()
{
  v109 = v0;
  if (*(v0 + 40))
  {
    v102 = *(v0 + 40);
    if (qword_1EE313F10 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 224);
    v1 = *(v0 + 232);
    v4 = *(v0 + 176);
    v3 = *(v0 + 184);
    v6 = *(v0 + 16);
    v5 = *(v0 + 24);
    v7 = sub_1D30E8B3C();
    __swift_project_value_buffer(v7, qword_1EE313F18);
    v8 = sub_1D30E928C();
    v9 = *(v3 + 16);
    v9(v1, v6, v4);
    v107 = v9;
    v9(v2, v5, v4);

    v10 = sub_1D30E8B1C();

    v99 = v8;
    v11 = os_log_type_enabled(v10, v8);
    v12 = *(v0 + 224);
    v13 = *(v0 + 232);
    v15 = *(v0 + 176);
    v14 = *(v0 + 184);
    if (v11)
    {
      v96 = *(v0 + 32);
      v16 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v108[0] = v94;
      *v16 = 136446722;
      sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8]);
      log = v10;
      v17 = sub_1D30E977C();
      v19 = v18;
      v20 = *(v14 + 8);
      v20(v13, v15);
      v21 = sub_1D2FFEA04(v17, v19, v108);

      *(v16 + 4) = v21;
      *(v16 + 12) = 2082;
      v22 = sub_1D30E977C();
      v24 = v23;
      v20(v12, v15);
      v25 = sub_1D2FFEA04(v22, v24, v108);

      *(v16 + 14) = v25;
      *(v16 + 22) = 2082;
      *(v16 + 24) = sub_1D2FFEA04(v96, v102, v108);
      _os_log_impl(&dword_1D2FD9000, log, v99, "Move item at: %{public}s into container to: %{public}s attributing to bundle with ID: %{public}s", v16, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1D38B3760](v94, -1, -1);
      MEMORY[0x1D38B3760](v16, -1, -1);
    }

    else
    {

      v20 = *(v14 + 8);
      v20(v12, v15);
      v20(v13, v15);
    }
  }

  else
  {
    if (qword_1EE313F10 != -1)
    {
      swift_once();
    }

    v26 = *(v0 + 208);
    v27 = *(v0 + 216);
    v29 = *(v0 + 176);
    v28 = *(v0 + 184);
    v31 = *(v0 + 16);
    v30 = *(v0 + 24);
    v32 = sub_1D30E8B3C();
    __swift_project_value_buffer(v32, qword_1EE313F18);
    v33 = sub_1D30E928C();
    v34 = *(v28 + 16);
    v34(v27, v31, v29);
    v34(v26, v30, v29);
    v35 = sub_1D30E8B1C();
    v36 = os_log_type_enabled(v35, v33);
    v37 = *(v0 + 208);
    v38 = *(v0 + 216);
    v40 = *(v0 + 176);
    v39 = *(v0 + 184);
    v107 = v34;
    if (v36)
    {
      v41 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      v108[0] = v103;
      *v41 = 136446466;
      sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8]);
      v97 = v33;
      v42 = sub_1D30E977C();
      v100 = v35;
      v44 = v43;
      v20 = *(v39 + 8);
      v20(v38, v40);
      v45 = sub_1D2FFEA04(v42, v44, v108);

      *(v41 + 4) = v45;
      *(v41 + 12) = 2082;
      v46 = sub_1D30E977C();
      v48 = v47;
      v20(v37, v40);
      v49 = sub_1D2FFEA04(v46, v48, v108);

      *(v41 + 14) = v49;
      _os_log_impl(&dword_1D2FD9000, v100, v97, "Move item at: %{public}s into container to: %{public}s", v41, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D38B3760](v103, -1, -1);
      MEMORY[0x1D38B3760](v41, -1, -1);
    }

    else
    {

      v20 = *(v39 + 8);
      v20(v37, v40);
      v20(v38, v40);
    }
  }

  *(v0 + 240) = v20;
  v50 = *(v0 + 16);
  sub_1D302DD9C(*(v0 + 168), *(v0 + 200));
  v104 = v20;
  v51 = *(v0 + 192);
  v52 = *(v0 + 136);
  v53 = *(v0 + 144);
  v54 = *(v0 + 128);
  v56 = *(v0 + 104);
  v55 = *(v0 + 112);
  v57 = *(v0 + 96);
  v58 = *(v0 + 184) + 16;
  v107(v51, *(v0 + 200), *(v0 + 176));
  (*(v56 + 104))(v55, *MEMORY[0x1E6968F70], v57);
  sub_1D3040AB4(v51, v55, v54);
  if ((*(v53 + 48))(v54, 1, v52) == 1)
  {
    v59 = *(v0 + 200);
    v61 = *(v0 + 176);
    v60 = *(v0 + 184);
    sub_1D2FF14DC(*(v0 + 128), &qword_1EC7493C0, &qword_1D30EF500);
    type metadata accessor for HelperError();
    sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError);
    swift_allocError();
    v107(v62, v59, v61);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v104(v59, v61);
    v70 = *(v0 + 224);
    v69 = *(v0 + 232);
    v72 = *(v0 + 208);
    v71 = *(v0 + 216);
    v74 = *(v0 + 192);
    v73 = *(v0 + 200);
    v75 = *(v0 + 168);
    v76 = *(v0 + 152);
    v77 = *(v0 + 120);
    v78 = *(v0 + 128);
    v95 = *(v0 + 112);
    v98 = *(v0 + 88);
    v101 = *(v0 + 80);
    v105 = *(v0 + 64);

    v79 = *(v0 + 8);

    return v79();
  }

  else
  {
    v63 = *(v0 + 144);
    v64 = *(v0 + 136);
    v65 = *(v0 + 120);
    (*(v63 + 32))(*(v0 + 152), *(v0 + 128), v64);
    (*(v63 + 56))(v65, 1, 1, v64);
    v66 = sub_1D30E880C();
    v68 = v67;
    *(v0 + 248) = v66;
    *(v0 + 256) = v67;
    sub_1D2FF14DC(v65, &qword_1EC7493C0, &qword_1D30EF500);
    v81 = *(v0 + 176);
    v82 = *(v0 + 64);
    v106 = *(v0 + 56);
    v84 = *(v0 + 32);
    v83 = *(v0 + 40);
    v85 = *(v0 + 24);
    v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A178, &qword_1D30F5480);
    v87 = *(v86 + 48);
    v88 = (v82 + *(v86 + 64));
    *v82 = v66;
    v82[1] = v68;
    v107(v82 + v87, v85, v81);
    *v88 = v84;
    v88[1] = v83;
    swift_storeEnumTagMultiPayload();

    sub_1D2FF17B0(v66, v68);
    v89 = swift_task_alloc();
    *(v0 + 264) = v89;
    *v89 = v0;
    v89[1] = sub_1D307EF5C;
    v90 = *(v0 + 88);
    v91 = *(v0 + 64);
    v92 = *(v0 + 48);

    return sub_1D3068FD4(v90, v91);
  }
}

uint64_t sub_1D307EF5C()
{
  v2 = *(*v1 + 264);
  v3 = *(*v1 + 64);
  v6 = *v1;
  *(*v1 + 272) = v0;

  sub_1D3065284(v3, type metadata accessor for Helper.Message);
  if (v0)
  {
    v4 = sub_1D30E7018;
  }

  else
  {
    v4 = sub_1D307F0A0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D307F0A0()
{
  v1 = v0[9];
  sub_1D3058338(v0[11], v0[10], type metadata accessor for Helper.Reply);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = v0[31];
  v46 = v0[30];
  if (EnumCaseMultiPayload == 44)
  {
    v29 = v0[29];
    v30 = v0[28];
    v31 = v0[27];
    v32 = v0[26];
    v4 = v0[25];
    v6 = v0[22];
    v5 = v0[23];
    v33 = v0[24];
    v34 = v0[21];
    v7 = v0[18];
    v8 = v0[19];
    v9 = v0[17];
    v36 = v0[16];
    v39 = v0[15];
    v10 = v0[10];
    v11 = v0[11];
    v42 = v0[14];
    v45 = v0[8];
    sub_1D2FF1804(v3, v0[32]);
    sub_1D3065284(v11, type metadata accessor for Helper.Reply);
    (*(v7 + 8))(v8, v9);
    v46(v4, v6);
    sub_1D3065284(v10, type metadata accessor for Helper.Reply);
  }

  else
  {
    v40 = v0[22];
    v43 = v0[25];
    v13 = v0[18];
    v35 = v0[19];
    v37 = v0[23];
    v14 = v0[17];
    v15 = v0[11];
    v16 = v0[32];
    sub_1D3065284(v0[10], type metadata accessor for Helper.Reply);
    type metadata accessor for HelperError();
    sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError);
    swift_allocError();
    sub_1D3058338(v15, v17, type metadata accessor for Helper.Reply);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1D2FF1804(v3, v16);
    sub_1D3065284(v15, type metadata accessor for Helper.Reply);
    (*(v13 + 8))(v35, v14);
    v46(v43, v40);
    v19 = v0[28];
    v18 = v0[29];
    v21 = v0[26];
    v20 = v0[27];
    v23 = v0[24];
    v22 = v0[25];
    v24 = v0[21];
    v25 = v0[19];
    v26 = v0[15];
    v27 = v0[16];
    v38 = v0[14];
    v41 = v0[11];
    v44 = v0[10];
    v47 = v0[8];
  }

  v12 = v0[1];

  return v12();
}

uint64_t Helper.Proxy.moveItem(at:outOfContainerTo:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for Helper.Message(0);
  v3[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v6 = type metadata accessor for Helper.Reply(0);
  v3[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v8 = sub_1D30E8D9C();
  v3[10] = v8;
  v9 = *(v8 - 8);
  v3[11] = v9;
  v10 = *(v9 + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D307F574, 0, 0);
}

uint64_t sub_1D307F574()
{
  v43 = v0;
  if (qword_1EE313F10 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v6 = v0[2];
  v5 = v0[3];
  v7 = sub_1D30E8B3C();
  __swift_project_value_buffer(v7, qword_1EE313F18);
  v8 = sub_1D30E928C();
  v9 = *(v3 + 16);
  v9(v2, v6, v4);
  v9(v1, v5, v4);
  v10 = sub_1D30E8B1C();
  v11 = os_log_type_enabled(v10, v8);
  v13 = v0[12];
  v12 = v0[13];
  v15 = v0[10];
  v14 = v0[11];
  if (v11)
  {
    log = v10;
    v16 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v42[0] = v41;
    *v16 = 136446466;
    sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8]);
    v39 = v8;
    v17 = sub_1D30E977C();
    v19 = v18;
    v20 = *(v14 + 8);
    v20(v12, v15);
    v21 = sub_1D2FFEA04(v17, v19, v42);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2082;
    v22 = sub_1D30E977C();
    v24 = v23;
    v20(v13, v15);
    v25 = sub_1D2FFEA04(v22, v24, v42);

    *(v16 + 14) = v25;
    _os_log_impl(&dword_1D2FD9000, log, v39, "Move item at: %{public}s out of container to: %{public}s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38B3760](v41, -1, -1);
    MEMORY[0x1D38B3760](v16, -1, -1);
  }

  else
  {

    v26 = *(v14 + 8);
    v26(v13, v15);
    v26(v12, v15);
  }

  v27 = v0[3];
  v9(v0[6], v0[2], v0[10]);
  v28 = sub_1D30DC350(v27);
  v30 = v29;
  v32 = v0[5];
  v31 = v0[6];
  v33 = (v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A170, &qword_1D30F5478) + 48));
  *v33 = v28;
  v33[1] = v30;
  swift_storeEnumTagMultiPayload();
  v34 = swift_task_alloc();
  v0[14] = v34;
  *v34 = v0;
  v34[1] = sub_1D307F990;
  v35 = v0[9];
  v36 = v0[6];
  v37 = v0[4];

  return sub_1D3068FD4(v35, v36);
}

uint64_t sub_1D307F990()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v6 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_1D30E7020;
  }

  else
  {
    sub_1D3065284(*(v2 + 48), type metadata accessor for Helper.Message);
    v4 = sub_1D307FAC0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D307FAC0()
{
  v1 = v0[7];
  sub_1D3058338(v0[9], v0[8], type metadata accessor for Helper.Reply);
  if (swift_getEnumCaseMultiPayload() == 45)
  {
    v2 = v0[12];
    v3 = v0[13];
    v4 = v0[8];
    v5 = v0[6];
    sub_1D3065284(v0[9], type metadata accessor for Helper.Reply);
    sub_1D3065284(v4, type metadata accessor for Helper.Reply);
  }

  else
  {
    v7 = v0[9];
    sub_1D3065284(v0[8], type metadata accessor for Helper.Reply);
    type metadata accessor for HelperError();
    sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError);
    swift_allocError();
    sub_1D3058338(v7, v8, type metadata accessor for Helper.Reply);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1D3065284(v7, type metadata accessor for Helper.Reply);
    v10 = v0[12];
    v9 = v0[13];
    v12 = v0[8];
    v11 = v0[9];
    v13 = v0[6];
  }

  v6 = v0[1];

  return v6();
}

uint64_t Helper.Proxy.moveAssetPack(at:intoContainerTo:forAppWithBundleID:teamID:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v119 = a5;
  v134 = a2;
  v135 = a4;
  v126 = a3;
  v136 = a1;
  v114 = type metadata accessor for Helper.Message(0);
  v7 = *(*(v114 - 8) + 64);
  MEMORY[0x1EEE9AC00](v114);
  v115 = (&v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v111 = type metadata accessor for Helper.Reply(0);
  v9 = *(*(v111 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v111);
  v112 = &v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v116 = &v107 - v12;
  v13 = sub_1D30E881C();
  v122 = *(v13 - 8);
  v123 = v13;
  v14 = *(v122 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v121 = &v107 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7493C0, &qword_1D30EF500);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v130 = &v107 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v128 = &v107 - v20;
  v21 = sub_1D30E88CC();
  v127 = *(v21 - 8);
  v22 = *(v127 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v118 = &v107 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_1D30E8D5C();
  v24 = *(v133 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x1EEE9AC00](v133);
  v28 = &v107 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v107 - v29;
  v31 = sub_1D30E8D9C();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v34 = MEMORY[0x1EEE9AC00](v31);
  v120 = &v107 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1EEE9AC00](v34);
  v38 = &v107 - v37;
  v39 = MEMORY[0x1EEE9AC00](v36);
  v41 = &v107 - v40;
  v131 = a6;
  v132 = v24;
  v124 = v21;
  v129 = v39;
  if (a6)
  {
    if (qword_1EE313F10 != -1)
    {
      swift_once();
    }

    v42 = sub_1D30E8B3C();
    __swift_project_value_buffer(v42, qword_1EE313F18);
    v43 = sub_1D30E928C();
    v125 = v32;
    v44 = *(v32 + 16);
    v44(v41, v136, v31);
    v45 = *(v24 + 16);
    v46 = v133;
    v113 = v45;
    v45(v30, v134, v133);
    v47 = v135;

    v48 = sub_1D30E8B1C();

    LODWORD(v109) = v43;
    if (os_log_type_enabled(v48, v43))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v137 = v50;
      *v49 = 136446978;
      sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8]);
      v108 = v48;
      v51 = sub_1D30E977C();
      v110 = v44;
      v53 = v52;
      (*(v125 + 8))(v41, v31);
      v54 = sub_1D2FFEA04(v51, v53, &v137);

      *(v49 + 4) = v54;
      *(v49 + 12) = 2082;
      sub_1D3045A34(&qword_1EC749A48, MEMORY[0x1E69E8380]);
      v55 = sub_1D30E977C();
      v57 = v56;
      (*(v132 + 8))(v30, v46);
      v58 = sub_1D2FFEA04(v55, v57, &v137);

      *(v49 + 14) = v58;
      *(v49 + 22) = 2082;
      *(v49 + 24) = sub_1D2FFEA04(v126, v47, &v137);
      *(v49 + 32) = 2082;
      v44 = v110;
      *(v49 + 34) = sub_1D2FFEA04(v119, v131, &v137);
      v59 = v108;
      _os_log_impl(&dword_1D2FD9000, v108, v109, "Move asset pack at: %{public}s into container to: %{public}s for app with bundle ID: %{public}s team ID: %{public}s", v49, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1D38B3760](v50, -1, -1);
      MEMORY[0x1D38B3760](v49, -1, -1);
    }

    else
    {

      (*(v132 + 8))(v30, v46);
      (*(v125 + 8))(v41, v31);
    }

    v60 = v130;
  }

  else
  {
    if (qword_1EE313F10 != -1)
    {
      swift_once();
    }

    v61 = sub_1D30E8B3C();
    __swift_project_value_buffer(v61, qword_1EE313F18);
    v62 = sub_1D30E928C();
    v63 = v32;
    v44 = *(v32 + 16);
    v44(v38, v136, v31);
    v64 = *(v24 + 16);
    v65 = v133;
    v113 = v64;
    v64(v28, v134, v133);
    v66 = v135;

    v67 = sub_1D30E8B1C();

    LODWORD(v125) = v62;
    if (os_log_type_enabled(v67, v62))
    {
      v68 = v63;
      v69 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      v137 = v109;
      *v69 = 136446722;
      sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8]);
      v108 = v67;
      v70 = sub_1D30E977C();
      v110 = v44;
      v72 = v71;
      (*(v68 + 8))(v38, v31);
      v73 = sub_1D2FFEA04(v70, v72, &v137);

      *(v69 + 4) = v73;
      *(v69 + 12) = 2082;
      sub_1D3045A34(&qword_1EC749A48, MEMORY[0x1E69E8380]);
      v74 = sub_1D30E977C();
      v76 = v75;
      (*(v132 + 8))(v28, v65);
      v77 = sub_1D2FFEA04(v74, v76, &v137);

      *(v69 + 14) = v77;
      *(v69 + 22) = 2082;
      v44 = v110;
      *(v69 + 24) = sub_1D2FFEA04(v126, v66, &v137);
      v78 = v108;
      _os_log_impl(&dword_1D2FD9000, v108, v125, "Move asset pack at: %{public}s into container to: %{public}s for app with bundle ID: %{public}s", v69, 0x20u);
      v79 = v109;
      swift_arrayDestroy();
      MEMORY[0x1D38B3760](v79, -1, -1);
      MEMORY[0x1D38B3760](v69, -1, -1);
    }

    else
    {

      (*(v132 + 8))(v28, v65);
      (*(v63 + 8))(v38, v31);
    }

    v60 = v130;
  }

  v80 = v136;
  v81 = sub_1D30E8CCC();
  v82 = v128;
  if ((v81 & 1) == 0)
  {
    type metadata accessor for HelperError();
    sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError);
    swift_allocError();
    v44(v89, v80, v129);
    goto LABEL_18;
  }

  v83 = v120;
  v84 = v129;
  v44(v120, v80, v129);
  v85 = v121;
  (*(v122 + 104))(v121, *MEMORY[0x1E6968F70], v123);
  sub_1D3040AB4(v83, v85, v82);
  v86 = v127;
  v87 = v124;
  if ((*(v127 + 48))(v82, 1, v124) == 1)
  {
    sub_1D2FF14DC(v82, &qword_1EC7493C0, &qword_1D30EF500);
    type metadata accessor for HelperError();
    sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError);
    swift_allocError();
    v44(v88, v80, v84);
LABEL_18:
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  v91 = v118;
  (*(v86 + 32))(v118, v82, v87);
  (*(v86 + 56))(v60, 1, 1, v87);
  v92 = v117;
  v93 = sub_1D30E880C();
  if (v92)
  {
    sub_1D2FF14DC(v60, &qword_1EC7493C0, &qword_1D30EF500);
    return (*(v86 + 8))(v91, v87);
  }

  else
  {
    v95 = v93;
    v96 = v94;
    sub_1D2FF14DC(v60, &qword_1EC7493C0, &qword_1D30EF500);
    v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A168, &qword_1D30F5470);
    v98 = v97[12];
    v99 = v115;
    v100 = (v115 + v97[16]);
    v101 = (v115 + v97[20]);
    *v115 = v95;
    *(v99 + 8) = v96;
    v113(v99 + v98, v134, v133);
    v102 = v135;
    *v100 = v126;
    v100[1] = v102;
    v103 = v131;
    *v101 = v119;
    v101[1] = v103;
    swift_storeEnumTagMultiPayload();

    sub_1D2FF17B0(v95, v96);
    sub_1D3068030(v99, v116);
    sub_1D3065284(v99, type metadata accessor for Helper.Message);
    v104 = v112;
    sub_1D3058338(v116, v112, type metadata accessor for Helper.Reply);
    if (swift_getEnumCaseMultiPayload() == 46)
    {
      sub_1D2FF1804(v95, v96);
      sub_1D3065284(v116, type metadata accessor for Helper.Reply);
      (*(v127 + 8))(v118, v87);
      return sub_1D3065284(v104, type metadata accessor for Helper.Reply);
    }

    else
    {
      sub_1D3065284(v104, type metadata accessor for Helper.Reply);
      type metadata accessor for HelperError();
      sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError);
      swift_allocError();
      v105 = v116;
      sub_1D3058338(v116, v106, type metadata accessor for Helper.Reply);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_1D2FF1804(v95, v96);
      sub_1D3065284(v105, type metadata accessor for Helper.Reply);
      return (*(v127 + 8))(v118, v87);
    }
  }
}

uint64_t Helper.Proxy.removeItem(inContainerAt:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Helper.Message(0);
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v5 = type metadata accessor for Helper.Reply(0);
  v2[6] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v7 = sub_1D30E8D9C();
  v2[9] = v7;
  v8 = *(v7 - 8);
  v2[10] = v8;
  v9 = *(v8 + 64) + 15;
  v2[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D3080D58, 0, 0);
}

uint64_t sub_1D3080D58()
{
  v29 = v0;
  if (qword_1EE313F10 != -1)
  {
    swift_once();
  }

  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = v0[2];
  v5 = sub_1D30E8B3C();
  __swift_project_value_buffer(v5, qword_1EE313F18);
  v6 = sub_1D30E928C();
  v7 = *(v2 + 16);
  v7(v1, v4, v3);
  v8 = sub_1D30E8B1C();
  v9 = os_log_type_enabled(v8, v6);
  v11 = v0[10];
  v10 = v0[11];
  v12 = v0[9];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = v27;
    *v13 = 136446210;
    sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8]);
    v14 = v7;
    v15 = sub_1D30E977C();
    v26 = v6;
    v17 = v16;
    (*(v11 + 8))(v10, v12);
    v18 = v15;
    v7 = v14;
    v19 = sub_1D2FFEA04(v18, v17, &v28);

    *(v13 + 4) = v19;
    _os_log_impl(&dword_1D2FD9000, v8, v26, "Remove item in container at: %{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    MEMORY[0x1D38B3760](v27, -1, -1);
    MEMORY[0x1D38B3760](v13, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v20 = v0[4];
  v7(v0[5], v0[2], v0[9]);
  swift_storeEnumTagMultiPayload();
  v21 = swift_task_alloc();
  v0[12] = v21;
  *v21 = v0;
  v21[1] = sub_1D3081008;
  v22 = v0[8];
  v23 = v0[5];
  v24 = v0[3];

  return sub_1D3068FD4(v22, v23);
}

uint64_t sub_1D3081008()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 40);
  v6 = *v1;
  *(*v1 + 104) = v0;

  sub_1D3065284(v3, type metadata accessor for Helper.Message);
  if (v0)
  {
    v4 = sub_1D307C66C;
  }

  else
  {
    v4 = sub_1D308114C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D308114C()
{
  v1 = v0[6];
  sub_1D3058338(v0[8], v0[7], type metadata accessor for Helper.Reply);
  if (swift_getEnumCaseMultiPayload() == 47)
  {
    v2 = v0[11];
    v3 = v0[7];
    v4 = v0[5];
    sub_1D3065284(v0[8], type metadata accessor for Helper.Reply);
    sub_1D3065284(v3, type metadata accessor for Helper.Reply);
  }

  else
  {
    v6 = v0[8];
    sub_1D3065284(v0[7], type metadata accessor for Helper.Reply);
    type metadata accessor for HelperError();
    sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError);
    swift_allocError();
    sub_1D3058338(v6, v7, type metadata accessor for Helper.Reply);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1D3065284(v6, type metadata accessor for Helper.Reply);
    v8 = v0[11];
    v9 = v0[7];
    v10 = v0[8];
    v11 = v0[5];
  }

  v5 = v0[1];

  return v5();
}

uint64_t Helper.Proxy.cleanUp()()
{
  v1[2] = v0;
  v2 = type metadata accessor for Helper.Message(0);
  v1[3] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v4 = type metadata accessor for Helper.Reply(0);
  v1[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D308140C, 0, 0);
}

uint64_t sub_1D308140C()
{
  if (qword_1EE313F10 != -1)
  {
    swift_once();
  }

  v1 = sub_1D30E8B3C();
  __swift_project_value_buffer(v1, qword_1EE313F18);
  v2 = sub_1D30E928C();
  v3 = sub_1D30E8B1C();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D2FD9000, v3, v2, "Clean up", v4, 2u);
    MEMORY[0x1D38B3760](v4, -1, -1);
  }

  v6 = v0[3];
  v5 = v0[4];

  swift_storeEnumTagMultiPayload();
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_1D3081574;
  v8 = v0[7];
  v9 = v0[4];
  v10 = v0[2];

  return sub_1D3068FD4(v8, v9);
}

uint64_t sub_1D3081574()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 32);
  v6 = *v1;
  *(*v1 + 72) = v0;

  sub_1D3065284(v3, type metadata accessor for Helper.Message);
  if (v0)
  {
    v4 = sub_1D308188C;
  }

  else
  {
    v4 = sub_1D30816B8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D30816B8()
{
  v1 = v0[5];
  sub_1D3058338(v0[7], v0[6], type metadata accessor for Helper.Reply);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = v0[6];
  v4 = v0[7];
  if (EnumCaseMultiPayload == 24)
  {
    v5 = v0[4];
    sub_1D3065284(v0[7], type metadata accessor for Helper.Reply);
    v6 = *v3;

    v7 = v0[1];
    v8 = v6;
  }

  else
  {
    sub_1D3065284(v0[6], type metadata accessor for Helper.Reply);
    type metadata accessor for HelperError();
    sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError);
    swift_allocError();
    sub_1D3058338(v4, v9, type metadata accessor for Helper.Reply);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1D3065284(v4, type metadata accessor for Helper.Reply);
    v11 = v0[6];
    v10 = v0[7];
    v12 = v0[4];

    v7 = v0[1];
    v8 = 0;
  }

  return v7(v8);
}

uint64_t sub_1D308188C()
{
  v1 = v0[9];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[4];

  v5 = v0[1];

  return v5(0);
}

uint64_t Helper.Proxy.eraseDatabase()()
{
  v1[2] = v0;
  v2 = type metadata accessor for Helper.Message(0);
  v1[3] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v4 = type metadata accessor for Helper.Reply(0);
  v1[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D30819E0, 0, 0);
}

uint64_t sub_1D30819E0()
{
  if (qword_1EE313F10 != -1)
  {
    swift_once();
  }

  v1 = sub_1D30E8B3C();
  __swift_project_value_buffer(v1, qword_1EE313F18);
  v2 = sub_1D30E928C();
  v3 = sub_1D30E8B1C();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D2FD9000, v3, v2, "Erase database", v4, 2u);
    MEMORY[0x1D38B3760](v4, -1, -1);
  }

  v6 = v0[3];
  v5 = v0[4];

  swift_storeEnumTagMultiPayload();
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_1D3081B48;
  v8 = v0[7];
  v9 = v0[4];
  v10 = v0[2];

  return sub_1D3068FD4(v8, v9);
}

uint64_t sub_1D3081B48()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 32);
  v6 = *v1;
  *(*v1 + 72) = v0;

  sub_1D3065284(v3, type metadata accessor for Helper.Message);
  if (v0)
  {
    v4 = sub_1D306D4B8;
  }

  else
  {
    v4 = sub_1D3081C8C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D3081C8C()
{
  v1 = v0[5];
  sub_1D3058338(v0[7], v0[6], type metadata accessor for Helper.Reply);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = v0[6];
  v4 = v0[7];
  if (EnumCaseMultiPayload == 48)
  {
    v5 = v0[4];
    sub_1D3065284(v0[7], type metadata accessor for Helper.Reply);
    sub_1D3065284(v3, type metadata accessor for Helper.Reply);
  }

  else
  {
    sub_1D3065284(v0[6], type metadata accessor for Helper.Reply);
    type metadata accessor for HelperError();
    sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError);
    swift_allocError();
    sub_1D3058338(v4, v7, type metadata accessor for Helper.Reply);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1D3065284(v4, type metadata accessor for Helper.Reply);
    v9 = v0[6];
    v8 = v0[7];
    v10 = v0[4];
  }

  v6 = v0[1];

  return v6();
}

uint64_t Helper.Proxy.collectWeeklyAnalytics(bypassingRateLimit:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 80) = a1;
  v3 = type metadata accessor for Helper.Message(0);
  *(v2 + 24) = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  *(v2 + 32) = swift_task_alloc();
  v5 = type metadata accessor for Helper.Reply(0);
  *(v2 + 40) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v2 + 48) = swift_task_alloc();
  *(v2 + 56) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D3081F38, 0, 0);
}

uint64_t sub_1D3081F38()
{
  if (qword_1EE313F10 != -1)
  {
    swift_once();
  }

  v1 = sub_1D30E8B3C();
  __swift_project_value_buffer(v1, qword_1EE313F18);
  v2 = sub_1D30E928C();
  v3 = sub_1D30E8B1C();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = *(v0 + 80);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_1D2FD9000, v3, v2, "Collect weekly analytics bypassing rate limit: %{BOOL}d", v5, 8u);
    MEMORY[0x1D38B3760](v5, -1, -1);
  }

  v7 = *(v0 + 24);
  v6 = *(v0 + 32);
  v8 = *(v0 + 80);

  *v6 = v8;
  swift_storeEnumTagMultiPayload();
  v9 = swift_task_alloc();
  *(v0 + 64) = v9;
  *v9 = v0;
  v9[1] = sub_1D30820B8;
  v10 = *(v0 + 56);
  v11 = *(v0 + 32);
  v12 = *(v0 + 16);

  return sub_1D3068FD4(v10, v11);
}

uint64_t sub_1D30820B8()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 32);
  v6 = *v1;
  *(*v1 + 72) = v0;

  sub_1D3065284(v3, type metadata accessor for Helper.Message);
  if (v0)
  {
    v4 = sub_1D308188C;
  }

  else
  {
    v4 = sub_1D30821FC;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D30821FC()
{
  v1 = v0[5];
  sub_1D3058338(v0[7], v0[6], type metadata accessor for Helper.Reply);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = v0[6];
  v4 = v0[7];
  if (EnumCaseMultiPayload == 25)
  {
    v5 = v0[4];
    sub_1D3065284(v0[7], type metadata accessor for Helper.Reply);
    v6 = *v3;

    v7 = v0[1];
    v8 = v6;
  }

  else
  {
    sub_1D3065284(v0[6], type metadata accessor for Helper.Reply);
    type metadata accessor for HelperError();
    sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError);
    swift_allocError();
    sub_1D3058338(v4, v9, type metadata accessor for Helper.Reply);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1D3065284(v4, type metadata accessor for Helper.Reply);
    v11 = v0[6];
    v10 = v0[7];
    v12 = v0[4];

    v7 = v0[1];
    v8 = 0;
  }

  return v7(v8);
}

uint64_t Helper.Proxy.appsWereUninstalled(withBundleIDs:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Helper.Message(0);
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v5 = type metadata accessor for Helper.Reply(0);
  v2[6] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D30824A0, 0, 0);
}

uint64_t sub_1D30824A0()
{
  v18 = v0;
  if (qword_1EE313F10 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = sub_1D30E8B3C();
  __swift_project_value_buffer(v2, qword_1EE313F18);
  v3 = sub_1D30E928C();

  v4 = sub_1D30E8B1C();

  if (os_log_type_enabled(v4, v3))
  {
    v5 = v0[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136446210;
    v8 = MEMORY[0x1D38B26B0](v5, MEMORY[0x1E69E6158]);
    v10 = sub_1D2FFEA04(v8, v9, &v17);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1D2FD9000, v4, v3, "Apps were uninstalled with bundle IDs: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1D38B3760](v7, -1, -1);
    MEMORY[0x1D38B3760](v6, -1, -1);
  }

  v11 = v0[4];
  *v0[5] = v0[2];
  swift_storeEnumTagMultiPayload();

  v12 = swift_task_alloc();
  v0[9] = v12;
  *v12 = v0;
  v12[1] = sub_1D30826A0;
  v13 = v0[8];
  v14 = v0[5];
  v15 = v0[3];

  return sub_1D3068FD4(v13, v14);
}

uint64_t sub_1D30826A0()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 40);
  v6 = *v1;
  *(*v1 + 80) = v0;

  sub_1D3065284(v3, type metadata accessor for Helper.Message);
  if (v0)
  {
    v4 = sub_1D30E7048;
  }

  else
  {
    v4 = sub_1D30827E4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D30827E4()
{
  v1 = v0[6];
  sub_1D3058338(v0[8], v0[7], type metadata accessor for Helper.Reply);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = v0[7];
  v4 = v0[8];
  if (EnumCaseMultiPayload == 49)
  {
    v5 = v0[5];
    sub_1D3065284(v0[8], type metadata accessor for Helper.Reply);
    sub_1D3065284(v3, type metadata accessor for Helper.Reply);
  }

  else
  {
    sub_1D3065284(v0[7], type metadata accessor for Helper.Reply);
    type metadata accessor for HelperError();
    sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError);
    swift_allocError();
    sub_1D3058338(v4, v7, type metadata accessor for Helper.Reply);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1D3065284(v4, type metadata accessor for Helper.Reply);
    v9 = v0[7];
    v8 = v0[8];
    v10 = v0[5];
  }

  v6 = v0[1];

  return v6();
}

void sub_1D30829BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74B0A8, &qword_1D30FD1D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v22 - v8;
  v10 = sub_1D30E8BCC();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  os_unfair_lock_lock((a2 + 16));
  v12 = atomic_load((a2 + 32));
  v23 = a1;
  if (v12)
  {
    if (qword_1EE313F10 != -1)
    {
      swift_once();
    }

    v13 = sub_1D30E8B3C();
    __swift_project_value_buffer(v13, qword_1EE313F18);
    v14 = sub_1D30E8B1C();
    v15 = sub_1D30E92BC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1D2FD9000, v14, v15, "The session was previously canceled; reestablishing it…", v16, 2u);
      MEMORY[0x1D38B3760](v16, -1, -1);
    }

    sub_1D30E8C2C();

    sub_1D30E8BAC();
    v17 = sub_1D30E8B9C();
    v18 = *(a2 + 24);

    *(a2 + 24) = v17;
    atomic_store(0, (a2 + 32));
    a1 = v23;
  }

  else
  {
    v19 = *(a2 + 24);
  }

  (*(v6 + 16))(v9, a1, v5);
  v20 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v21 = swift_allocObject();
  (*(v6 + 32))(v21 + v20, v9, v5);
  type metadata accessor for Helper.Message(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74B090, &qword_1D30FD1C0);
  sub_1D3045A34(qword_1EE313E50, type metadata accessor for Helper.Message);
  sub_1D2FF1768(&qword_1EE3130A8, &qword_1EC74B090, &qword_1D30FD1C0);
  sub_1D30E8BEC();

  os_unfair_lock_unlock((a2 + 16));
}

uint64_t sub_1D3082D74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74B090, &qword_1D30FD1C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74B0B0, &unk_1D30FD1D8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (v11 - v8);
  sub_1D302B0DC(a1, v11 - v8, &qword_1EC74B0B0, &unk_1D30FD1D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11[1] = *v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74B0A8, &qword_1D30FD1D0);
    return sub_1D30E91CC();
  }

  else
  {
    sub_1D30E6F78(v9, v5, &qword_1EC74B090, &qword_1D30FD1C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74B0A8, &qword_1D30FD1D0);
    return sub_1D30E91DC();
  }
}

uint64_t sub_1D3082F24(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1D30E8B3C();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_1D30E8B2C();
}

uint64_t Helper.__allocating_init(testFlightManifestRequest:finishedTestFlightDownloadHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  Helper.init(testFlightManifestRequest:finishedTestFlightDownloadHandler:)(a1, a2, a3, a4);
  return v8;
}

void *Helper.init(testFlightManifestRequest:finishedTestFlightDownloadHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v7 = v4;
  v116 = a4;
  v102 = a3;
  v115 = a2;
  v103 = a1;
  v117 = *MEMORY[0x1E69E9840];
  v8 = *v4;
  v9 = sub_1D30E8F3C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v106 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D30E8F9C();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v105 = &v99 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_1D30E881C();
  v15 = *(v111 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v111);
  v109 = (&v99 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7493C0, &qword_1D30EF500);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v110 = &v99 - v20;
  v21 = sub_1D30E88CC();
  v22 = *(v21 - 8);
  v112 = v21;
  v113 = v22;
  v23 = *(v22 + 64);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v104 = &v99 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v107 = &v99 - v26;
  v114 = sub_1D30E8D9C();
  v27 = *(v114 - 8);
  v28 = *(v27 + 8);
  v29 = MEMORY[0x1EEE9AC00](v114);
  v108 = &v99 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v33 = &v99 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v35 = &v99 - v34;
  if (qword_1EE3152C8 != -1)
  {
    swift_once();
  }

  v36 = sub_1D30E8B3C();
  __swift_project_value_buffer(v36, qword_1EE314B60);
  v37 = sub_1D30E928C();
  v38 = sub_1D30E8B1C();
  if (os_log_type_enabled(v38, v37))
  {
    v39 = swift_slowAlloc();
    v101 = v33;
    v40 = v15;
    v41 = v35;
    v42 = v7;
    v43 = v27;
    v44 = v8;
    v45 = v39;
    *v39 = 0;
    _os_log_impl(&dword_1D2FD9000, v38, v37, "Init", v39, 2u);
    v46 = v45;
    v8 = v44;
    v27 = v43;
    v7 = v42;
    v35 = v41;
    v15 = v40;
    v6 = v5;
    MEMORY[0x1D38B3760](v46, -1, -1);
  }

  type metadata accessor for ContainerManager();
  swift_allocObject();
  v47 = sub_1D3004A90();
  if (v6)
  {
  }

  else
  {
    v101 = v8;
    v7[2] = v47;
    type metadata accessor for CertificateManager();
    swift_allocObject();

    v7[3] = sub_1D30366D4(v48);
    v49 = v7[2];

    os_unfair_lock_lock((v49 + 16));
    v50 = *(v49 + 32);
    path = container_get_path();
    os_unfair_lock_unlock((v49 + 16));
    if (path)
    {
      MEMORY[0x1D38B2230](path);

      sub_1D30E8D8C();
      v52 = *(v27 + 2);
      v53 = v108;
      v54 = v27;
      v55 = v114;
      v100 = v52;
      v52(v108, v35, v114);
      v56 = v109;
      (*(v15 + 104))(v109, *MEMORY[0x1E6968F70], v111);
      v57 = v110;
      sub_1D3040AB4(v53, v56, v110);
      v58 = v112;
      v59 = v113;
      if ((*(v113 + 48))(v57, 1, v112) == 1)
      {
        sub_1D2FF14DC(v57, &qword_1EC7493C0, &qword_1D30EF500);
        type metadata accessor for HelperError();
        sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError);
        swift_allocError();
        v100(v60, v35, v55);
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        v54[1](v35, v55);
      }

      else
      {
        v111 = v35;
        v109 = v54;
        v61 = v107;
        (*(v59 + 32))();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749230, &unk_1D30F2B00);
        v62 = v58;
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1D30EE910;
        v64 = v59;
        v65 = type metadata accessor for AppReviewRecord();
        v66 = sub_1D3045A34(&qword_1EE313708, type metadata accessor for AppReviewRecord);
        *(inited + 32) = v65;
        *(inited + 40) = v66;
        v67 = type metadata accessor for AssetPackRecord(0);
        v68 = sub_1D3045A34(&qword_1EE313610, type metadata accessor for AssetPackRecord);
        *(inited + 48) = v67;
        *(inited + 56) = v68;
        v69 = type metadata accessor for LicenseRecord(0);
        v70 = sub_1D3045A34(&qword_1EE313B08, type metadata accessor for LicenseRecord);
        v110 = 0;
        v71 = v70;
        v72 = sub_1D30D7C08(1, 3, 1, inited);
        *(v72 + 2) = 3;
        *(v72 + 8) = v69;
        *(v72 + 9) = v71;
        v108 = sub_1D30E8EAC();
        sub_1D30E8FAC();
        v73 = sub_1D30E8FFC();
        v74 = *(v73 + 48);
        v75 = *(v73 + 52);
        swift_allocObject();
        sub_1D30E900C();
        sub_1D30DCBD4();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74AD08, &qword_1D30F5D28);
        v76 = *(sub_1D30E8F4C() - 8);
        v77 = *(v76 + 72);
        v78 = (*(v76 + 80) + 32) & ~*(v76 + 80);
        *(swift_allocObject() + 16) = xmmword_1D30EE930;
        (*(v64 + 16))(v104, v61, v62);
        sub_1D30E8F2C();
        sub_1D30E8F5C();
        v79 = v110;
        v80 = sub_1D30E8E8C();
        if (!v79)
        {
          v7[4] = v80;
          v85 = v7[2];
          v86 = v80;
          type metadata accessor for ManifestManager();
          swift_allocObject();

          v87 = v115;

          v88 = sub_1D2FE5AA8(v85, v86, v103, v87);
          v89 = v114;
          v90 = v109;
          v7[5] = v88;
          v91 = v7[4];
          type metadata accessor for AnalyticsManager();
          swift_allocObject();

          v7[6] = sub_1D30392F0(v92);
          v93 = v7[2];
          v94 = v7[3];
          v95 = v7[4];
          type metadata accessor for LicenseManager();
          swift_allocObject();

          v96 = sub_1D30167E8(v93, v94, v95);
          v97 = v102;
          v7[7] = v96;
          v7[8] = v97;
          v7[9] = v116;
          v98 = v7[6];

          sub_1D3039470(0);

          (*(v113 + 8))(v107, v112);
          v90[1](v111, v89);
          goto LABEL_15;
        }

        (*(v113 + 8))(v61, v62);
        v109[1](v111, v114);
      }
    }

    else
    {
      type metadata accessor for ContainerManagerError();
      sub_1D3045A34(&qword_1EC749920, type metadata accessor for ContainerManagerError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    v81 = v7[2];

    v82 = v7[3];
  }

  swift_deallocPartialClassInstance();
LABEL_15:
  v83 = *MEMORY[0x1E69E9840];
  return v7;
}

os_unfair_lock_s *static Helper.newProxy()()
{
  if (qword_1EE3152C8 != -1)
  {
    swift_once();
  }

  v0 = sub_1D30E8B3C();
  __swift_project_value_buffer(v0, qword_1EE314B60);
  v1 = sub_1D30E928C();
  v2 = sub_1D30E8B1C();
  if (os_log_type_enabled(v2, v1))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1D2FD9000, v2, v1, "New proxy", v3, 2u);
    MEMORY[0x1D38B3760](v3, -1, -1);
  }

  v4 = sub_1D30E8B1C();
  v5 = sub_1D30E92BC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1D2FD9000, v4, v5, "Creating a proxy object for the helper service…", v6, 2u);
    MEMORY[0x1D38B3760](v6, -1, -1);
  }

  type metadata accessor for Helper.Proxy();
  swift_allocObject();
  return sub_1D3067620();
}

uint64_t Helper.reply(to:auditToken:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[148] = v6;
  v7[147] = a6;
  v7[146] = a5;
  v7[145] = a4;
  v7[144] = a3;
  v7[143] = a2;
  v7[142] = a1;
  v8 = *(*(type metadata accessor for Helper.PathToStagingDirectoryLookupResult(0) - 8) + 64) + 15;
  v7[149] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A768, &qword_1D30F5880) - 8) + 64) + 15;
  v7[150] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A778, &qword_1D30F5890) - 8) + 64) + 15;
  v7[151] = swift_task_alloc();
  v11 = sub_1D30E8D9C();
  v7[152] = v11;
  v12 = *(v11 - 8);
  v7[153] = v12;
  v13 = *(v12 + 64) + 15;
  v7[154] = swift_task_alloc();
  v7[155] = swift_task_alloc();
  v7[156] = swift_task_alloc();
  v7[157] = swift_task_alloc();
  v7[158] = swift_task_alloc();
  v7[159] = swift_task_alloc();
  v7[160] = swift_task_alloc();
  v7[161] = swift_task_alloc();
  v7[162] = swift_task_alloc();
  v7[163] = swift_task_alloc();
  v14 = *(*(type metadata accessor for LicenseRecord.StaticRepresentation(0) - 8) + 64) + 15;
  v7[164] = swift_task_alloc();
  v15 = sub_1D30E8A4C();
  v7[165] = v15;
  v16 = *(v15 - 8);
  v7[166] = v16;
  v17 = *(v16 + 64) + 15;
  v7[167] = swift_task_alloc();
  v7[168] = swift_task_alloc();
  v18 = *(*(type metadata accessor for AssetPackRecord.StaticRepresentation(0) - 8) + 64) + 15;
  v7[169] = swift_task_alloc();
  v19 = sub_1D30E8D5C();
  v7[170] = v19;
  v20 = *(v19 - 8);
  v7[171] = v20;
  v21 = *(v20 + 64) + 15;
  v7[172] = swift_task_alloc();
  v7[173] = swift_task_alloc();
  v22 = *(*(type metadata accessor for AssetPackHost() - 8) + 64) + 15;
  v7[174] = swift_task_alloc();
  v23 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A860, &qword_1D30F5978) - 8) + 64) + 15;
  v7[175] = swift_task_alloc();
  v24 = *(*(type metadata accessor for Helper.URLRequestResult(0) - 8) + 64) + 15;
  v7[176] = swift_task_alloc();
  v25 = type metadata accessor for Helper.Message(0);
  v7[177] = v25;
  v26 = *(*(v25 - 8) + 64) + 15;
  v7[178] = swift_task_alloc();
  v7[179] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D30841F0, 0, 0);
}

uint64_t sub_1D30841F0()
{
  v430 = v0;
  if (qword_1EE3152C8 != -1)
  {
    swift_once();
  }

  v1 = v0[179];
  v2 = v0[143];
  v3 = sub_1D30E8B3C();
  __swift_project_value_buffer(v3, qword_1EE314B60);
  v4 = sub_1D30E928C();
  sub_1D3058338(v2, v1, type metadata accessor for Helper.Message);
  v5 = sub_1D30E8B1C();
  v6 = os_log_type_enabled(v5, v4);
  v7 = v0[179];
  if (v6)
  {
    v8 = v0[146];
    v9 = v0[145];
    v413 = v0[147];
    v10 = v0[144];
    v11 = swift_slowAlloc();
    v420 = swift_slowAlloc();
    v429 = v420;
    *v11 = 136446722;
    v12 = Helper.Message.description.getter();
    v14 = v13;
    sub_1D3065284(v7, type metadata accessor for Helper.Message);
    v15 = sub_1D2FFEA04(v12, v14, &v429);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2160;
    *(v11 + 14) = 1752392040;
    *(v11 + 22) = 2080;
    v0[328] = v10;
    v0[329] = v9;
    v0[330] = v8;
    v0[331] = v413;
    type metadata accessor for audit_token_t(0);
    v16 = sub_1D30E909C();
    v18 = sub_1D2FFEA04(v16, v17, &v429);

    *(v11 + 24) = v18;
    _os_log_impl(&dword_1D2FD9000, v5, v4, "Reply to: %{public}s audit token: %{mask.hash}s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D38B3760](v420, -1, -1);
    MEMORY[0x1D38B3760](v11, -1, -1);
  }

  else
  {

    sub_1D3065284(v7, type metadata accessor for Helper.Message);
  }

  v19 = v0[177];
  sub_1D3058338(v0[143], v0[178], type metadata accessor for Helper.Message);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v193 = v0[178];
      v195 = *v193;
      v194 = *(v193 + 8);
      v0[183] = v194;
      v196 = *(v193 + 16);
      v197 = *(v193 + 24);
      v0[184] = v197;
      v198 = *(v193 + 32);
      v199 = swift_task_alloc();
      v0[185] = v199;
      *v199 = v0;
      v199[1] = sub_1D3086D24;
      v200 = v0[148];

      return sub_1D3092D68(v195, v194, v196, v197, v198);
    case 2u:
      v169 = v0[178];
      v171 = *v169;
      v170 = v169[1];
      v0[190] = v170;
      v172 = swift_task_alloc();
      v0[191] = v172;
      *v172 = v0;
      v172[1] = sub_1D308705C;
      v173 = v0[148];

      return sub_1D30931F4(v171, v170);
    case 3u:
      v184 = v0[178];
      v186 = *v184;
      v185 = v184[1];
      v0[195] = v185;
      v187 = swift_task_alloc();
      v0[196] = v187;
      *v187 = v0;
      v187[1] = sub_1D3087378;
      v188 = v0[148];

      return sub_1D3093660(v186, v185);
    case 4u:
      v127 = v0[148];
      v381 = sub_1D3093A00(*v0[178], *(v0[178] + 8), *(v0[178] + 16), *(v0[178] + 24));
      v383 = v382;
      v384 = v0[142];

      *v384 = v381;
      v384[1] = v383;
      type metadata accessor for Helper.Reply(0);
      goto LABEL_135;
    case 5u:
      v259 = v0[178];
      v261 = *v259;
      v260 = v259[1];
      v0[200] = v260;
      v262 = swift_task_alloc();
      v0[201] = v262;
      *v262 = v0;
      v262[1] = sub_1D3087694;
      v263 = v0[176];
      v264 = v0[148];

      return sub_1D3093E64(v263, v261, v260);
    case 6u:
      v280 = v0[148];
      sub_1D3094394(*v0[178], *(v0[178] + 8), v0[144], v0[145], v0[146], v0[147], v0[175]);
      v387 = v0[175];
      v388 = v0[142];

      sub_1D30E6F78(v387, v388, &qword_1EC74A860, &qword_1D30F5978);
      type metadata accessor for Helper.Reply(0);
      goto LABEL_135;
    case 7u:
      v189 = v0[178];
      v190 = v0[148];
      v191 = *v189;
      v192 = v189[1];
      sub_1D3094C80(*v189, v192, v189[2], v189[3], v189[4], v189[5]);
      v385 = v0[142];
      type metadata accessor for Helper.Reply(0);
      swift_storeEnumTagMultiPayload();

      sub_1D2FF1804(v191, v192);
      goto LABEL_136;
    case 8u:
      v294 = v0[178];
      v295 = *v294;
      v296 = v294[1];
      v297 = sub_1D30E928C();

      v298 = sub_1D30E8B1C();

      if (os_log_type_enabled(v298, v297))
      {
        v299 = swift_slowAlloc();
        v300 = swift_slowAlloc();
        v429 = v300;
        *v299 = 136446210;
        *(v299 + 4) = sub_1D2FFEA04(v295, v296, &v429);
        _os_log_impl(&dword_1D2FD9000, v298, v297, "Uninstall manifest for app with bundle ID: %{public}s", v299, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v300);
        MEMORY[0x1D38B3760](v300, -1, -1);
        MEMORY[0x1D38B3760](v299, -1, -1);
      }

      v301 = *(v0[148] + 40);
      sub_1D2FEF53C(v295, v296);
      v389 = v0[142];
      type metadata accessor for Helper.Reply(0);
      swift_storeEnumTagMultiPayload();

      goto LABEL_136;
    case 9u:
      v154 = *v0[178];
      v155 = swift_task_alloc();
      v0[203] = v155;
      *v155 = v0;
      v155[1] = sub_1D30879B8;
      v156 = v0[148];

      return sub_1D3095200(v154);
    case 0xAu:
      v286 = v0[178];
      v288 = *v286;
      v287 = *(v286 + 8);
      v0[206] = v287;
      v289 = *(v286 + 16);
      v290 = *(v286 + 24);
      v0[207] = v290;
      v291 = *(v286 + 32);
      v292 = swift_task_alloc();
      v0[208] = v292;
      *v292 = v0;
      v292[1] = sub_1D3087CB8;
      v293 = v0[148];

      return sub_1D3095434(v288, v287, v289, v290, v291);
    case 0xBu:
      v111 = v0[178];
      v112 = v0[174];
      v417 = v0[173];
      v113 = v0[171];
      v114 = v0[170];
      v115 = *(v111 + 1);
      v421 = *v111;
      v0[211] = v115;
      v116 = *(v111 + 3);
      v414 = *(v111 + 2);
      v0[212] = v116;
      v117 = *(v111 + 4);
      v118 = *(v111 + 5);
      v0[213] = v118;
      v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A1A8, &qword_1D30F54A8);
      v425 = *&v111[v119[16]];
      v120 = v119[20];
      sub_1D3056830(&v111[v119[12]], v112, type metadata accessor for AssetPackHost);
      (*(v113 + 32))(v417, &v111[v120], v114);
      v0[124] = v421;
      v0[125] = v115;
      v0[126] = v414;
      v0[127] = v116;
      v0[128] = v117;
      v0[129] = v118;
      v121 = swift_task_alloc();
      v0[214] = v121;
      *v121 = v0;
      v121[1] = sub_1D3087FCC;
      v122 = v0[174];
      v123 = v0[173];
      v124 = v0[148];

      return sub_1D30961E8(v0 + 62, v122, v425, v123);
    case 0xCu:
      v144 = v0[178];
      v145 = *v144;
      v146 = v144[1];
      v0[216] = v146;
      v147 = v144[2];
      v148 = v144[3];
      v0[217] = v148;
      v150 = v144[4];
      v149 = v144[5];
      v0[218] = v149;
      v0[118] = v145;
      v0[119] = v146;
      v0[120] = v147;
      v0[121] = v148;
      v0[122] = v150;
      v0[123] = v149;
      v151 = swift_task_alloc();
      v0[219] = v151;
      *v151 = v0;
      v151[1] = sub_1D3088314;
      v152 = v0[169];
      v153 = v0[148];

      return sub_1D309686C(v152, v0 + 59);
    case 0xDu:
      v271 = v0[178];
      v272 = *v271;
      v273 = v271[1];
      v0[223] = v273;
      v274 = v271[2];
      v275 = v271[3];
      v0[224] = v275;
      v277 = v271[4];
      v276 = v271[5];
      v0[225] = v276;
      v0[112] = v272;
      v0[113] = v273;
      v0[114] = v274;
      v0[115] = v275;
      v0[116] = v277;
      v0[117] = v276;
      v278 = swift_task_alloc();
      v0[226] = v278;
      *v278 = v0;
      v278[1] = sub_1D3088924;
      v279 = v0[148];

      return sub_1D3096DDC(v0 + 56);
    case 0xEu:
      v97 = v0[178];
      v98 = *v97;
      v99 = v97[1];
      v0[228] = v99;
      v100 = v97[2];
      v101 = v97[3];
      v0[229] = v101;
      v103 = v97[4];
      v102 = v97[5];
      v0[230] = v102;
      v0[106] = v98;
      v0[107] = v99;
      v0[108] = v100;
      v0[109] = v101;
      v0[110] = v103;
      v0[111] = v102;
      v104 = swift_task_alloc();
      v0[231] = v104;
      *v104 = v0;
      v104[1] = sub_1D3088C48;
      v105 = v0[148];

      return sub_1D30970C0(v0 + 53);
    case 0xFu:
      v174 = v0[178];
      v175 = *v174;
      v176 = *(v174 + 8);
      v177 = *(v174 + 16);
      v0[233] = v177;
      v178 = *(v174 + 24);
      v179 = *(v174 + 32);
      v0[234] = v179;
      v181 = *(v174 + 40);
      v180 = *(v174 + 48);
      v0[235] = v180;
      v0[100] = v176;
      v0[101] = v177;
      v0[102] = v178;
      v0[103] = v179;
      v0[104] = v181;
      v0[105] = v180;
      v182 = swift_task_alloc();
      v0[236] = v182;
      *v182 = v0;
      v182[1] = sub_1D3088F6C;
      v183 = v0[148];

      return sub_1D309739C(v175, v0 + 50);
    case 0x10u:
      v83 = v0[178];
      v84 = *v83;
      v85 = v83[1];
      v0[238] = v85;
      v86 = v83[2];
      v87 = v83[3];
      v0[239] = v87;
      v88 = v83[4];
      v89 = v83[5];
      v0[240] = v89;
      v91 = v83[6];
      v90 = v83[7];
      v0[241] = v90;
      v92 = *(v83 + 4);
      v0[94] = v84;
      v0[95] = v85;
      v0[96] = v86;
      v0[97] = v87;
      v0[98] = v88;
      v0[99] = v89;
      v0[137] = v90;
      *(v0 + 69) = v92;
      v93 = swift_task_alloc();
      v0[242] = v93;
      *v93 = v0;
      v93[1] = sub_1D3089278;
      v94 = v0[148];

      return sub_1D3098188((v0 + 94), v91, (v0 + 137));
    case 0x11u:
      v220 = v0[178];
      v221 = *v220;
      v222 = v220[1];
      v0[244] = v222;
      v223 = v220[2];
      v224 = v220[3];
      v0[245] = v224;
      v226 = v220[4];
      v225 = v220[5];
      v0[246] = v225;
      v0[88] = v221;
      v0[89] = v222;
      v0[90] = v223;
      v0[91] = v224;
      v0[92] = v226;
      v0[93] = v225;
      v227 = swift_task_alloc();
      v0[247] = v227;
      *v227 = v0;
      v227[1] = sub_1D308958C;
      v228 = v0[148];

      return sub_1D3098F18(v0 + 44);
    case 0x12u:
      v281 = v0[178];
      v283 = *v281;
      v282 = v281[1];
      v0[249] = v282;
      v284 = swift_task_alloc();
      v0[250] = v284;
      *v284 = v0;
      v284[1] = sub_1D3089898;
      v285 = v0[148];

      return sub_1D30999C4(v283, v282);
    case 0x13u:
      v340 = v0[178];
      v342 = *v340;
      v341 = v340[1];
      v0[252] = v341;
      v343 = swift_task_alloc();
      v0[253] = v343;
      *v343 = v0;
      v343[1] = sub_1D3089B84;
      v344 = v0[148];

      return sub_1D3099D58(v342, v341);
    case 0x14u:
      v231 = v0;
      v232 = v0[178];
      v233 = v231[168];
      v234 = v231[167];
      v235 = v231[166];
      v236 = v231[165];
      v237 = *v232;
      v231[255] = *v232;
      v238 = v232[1];
      v231[256] = v238;
      v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A1A0, &qword_1D30F54A0);
      v240 = v239[12];
      v418 = *(v232 + v239[16]);
      v231[257] = v418;
      v241 = (v232 + v239[20]);
      v242 = v241[1];
      v423 = *v241;
      v231[258] = v242;
      v243 = v232 + v240;
      v244 = v231;
      (*(v235 + 32))(v233, v243, v236);
      v245 = sub_1D30E928C();
      (*(v235 + 16))(v234, v233, v236);

      v246 = sub_1D30E8B1C();

      v427 = v242;

      v415 = v245;
      v247 = os_log_type_enabled(v246, v245);
      v248 = v231[167];
      v249 = v231[166];
      v250 = v231[165];
      if (v247)
      {
        v251 = swift_slowAlloc();
        v411 = swift_slowAlloc();
        v429 = v411;
        *v251 = 136446978;
        *(v251 + 4) = sub_1D2FFEA04(v237, v238, &v429);
        *(v251 + 12) = 2082;
        sub_1D3045A34(&qword_1EC749490, MEMORY[0x1E69695A8]);
        v252 = sub_1D30E977C();
        v254 = v253;
        v255 = *(v249 + 8);
        v255(v248, v250);
        v256 = sub_1D2FFEA04(v252, v254, &v429);

        *(v251 + 14) = v256;
        *(v251 + 22) = 2048;
        *(v251 + 24) = v418;
        *(v251 + 32) = 2082;
        v244 = v231;
        v257 = v427;
        *(v251 + 34) = sub_1D2FFEA04(v423, v427, &v429);
        _os_log_impl(&dword_1D2FD9000, v246, v415, "Request license for asset pack with ID: %{public}s version ID: %{public}s internal version ID: %llu app bundle ID: %{public}s", v251, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x1D38B3760](v411, -1, -1);
        MEMORY[0x1D38B3760](v251, -1, -1);

        v258 = v423;
      }

      else
      {

        v255 = *(v249 + 8);
        v255(v248, v250);
        v258 = v423;
        v257 = v427;
      }

      v244[259] = v255;
      v379 = swift_task_alloc();
      v244[260] = v379;
      *v379 = v244;
      v379[1] = sub_1D3089E70;
      v380 = v244[148];
      v25 = (v244 + 2);
      v26 = v258;
      v27 = v257;
      goto LABEL_132;
    case 0x15u:
      v265 = v0[178];
      v266 = *v265;
      v0[264] = *v265;
      v267 = v265[1];
      v268 = v265[2];
      v0[265] = v268;
      v269 = swift_task_alloc();
      v0[266] = v269;
      *v269 = v0;
      v269[1] = sub_1D308A7C4;
      v270 = v0[148];

      return sub_1D309A0FC(v266, v267, v268);
    case 0x16u:
      v328 = *v0[178];
      v329 = swift_task_alloc();
      v0[268] = v329;
      *v329 = v0;
      v329[1] = sub_1D308AABC;
      v330 = v0[148];

      return sub_1D309AB58((v0 + 82), v328);
    case 0x17u:
      v348 = *v0[178];
      v0[270] = v348;
      v349 = swift_task_alloc();
      v0[271] = v349;
      *v349 = v0;
      v349[1] = sub_1D308ADB0;
      v350 = v0[148];

      return sub_1D309ADD8((v0 + 76), v348);
    case 0x18u:
      v163 = v0[178];
      v164 = *v163;
      v0[273] = *v163;
      v165 = v163[1];
      v0[274] = v165;
      v166 = v163[2];
      v167 = swift_task_alloc();
      v0[275] = v167;
      *v167 = v0;
      v167[1] = sub_1D308B0C8;
      v168 = v0[148];

      return sub_1D309B200(v164, v165, v166);
    case 0x19u:
      v157 = v0[178];
      v158 = *v157;
      v0[277] = *v157;
      v159 = v157[3];
      v160 = *(v157 + 1);
      v0[134] = v158;
      *(v0 + 135) = v160;
      v161 = swift_task_alloc();
      v0[278] = v161;
      *v161 = v0;
      v161[1] = sub_1D308B3B8;
      v162 = v0[148];

      return sub_1D309B510((v0 + 134), v159);
    case 0x1Au:
      v373 = *v0[178];
      v374 = swift_task_alloc();
      v0[283] = v374;
      *v374 = v0;
      v374[1] = sub_1D308B9A4;
      v375 = v0[164];
      v376 = v0[148];

      return sub_1D309BA88(v375, v373);
    case 0x1Bu:
      v63 = v0[178];
      v64 = v0[148];
      v65 = *(v63 + 8);
      v66 = *(v63 + 16);
      LOBYTE(v429) = *v63;
      sub_1D309BD04(&v429, v65, v66);
      v67 = v0[142];
      sub_1D2FF1804(v65, v66);
      type metadata accessor for Helper.Reply(0);
      goto LABEL_135;
    case 0x1Cu:
      v351 = v0[148];
      LOBYTE(v429) = *v0[178];
      sub_1D309BF24(&v429);
      v352 = v0[142];
      type metadata accessor for Helper.Reply(0);
      goto LABEL_135;
    case 0x1Du:
      v353 = v0[178];
      v355 = *v353;
      v354 = v353[1];
      v0[288] = v354;
      v356 = swift_task_alloc();
      v0[289] = v356;
      *v356 = v0;
      v356[1] = sub_1D308BFA8;
      v357 = v0[148];

      return sub_1D309C2E8(v355, v354);
    case 0x1Eu:
      v302 = v0[178];
      v304 = *v302;
      v303 = v302[1];
      v0[291] = v303;
      v305 = swift_task_alloc();
      v0[292] = v305;
      *v305 = v0;
      v305[1] = sub_1D308C294;
      v306 = v0[148];

      return sub_1D309C75C((v0 + 140), v304, v303);
    case 0x1Fu:
      v201 = v0[178];
      v202 = v0[153];
      v422 = v0[152];
      v426 = v0[163];
      v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A190, &qword_1D30F5498);
      v204 = (v201 + *(v203 + 48));
      v205 = *v204;
      v206 = v204[1];
      v0[294] = v206;
      v207 = v204[2];
      v208 = v204[3];
      v0[295] = v208;
      v210 = v204[4];
      v209 = v204[5];
      v0[296] = v209;
      v211 = *(v201 + *(v203 + 64));
      v0[297] = v211;
      (*(v202 + 32))(v426, v201, v422);
      v0[70] = v205;
      v0[71] = v206;
      v0[72] = v207;
      v0[73] = v208;
      v0[74] = v210;
      v0[75] = v209;
      v212 = swift_task_alloc();
      v0[298] = v212;
      *v212 = v0;
      v212[1] = sub_1D308C5A4;
      v213 = v0[163];
      v214 = v0[151];
      v215 = v0[148];
      v216 = v0[147];
      v217 = v0[146];
      v218 = v0[145];
      v219 = v0[144];

      return sub_1D309C9F0(v214, v213, v0 + 35, v211, v219, v218, v217, v216);
    case 0x20u:
      v307 = v0[178];
      v308 = v0[162];
      v309 = v0;
      v310 = v0[153];
      v311 = v309[152];
      v312 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A188, &qword_1D30F5490);
      v313 = (v307 + v312[12]);
      v314 = *v313;
      v315 = v313[1];
      v309[300] = v315;
      v316 = (v307 + v312[16]);
      v317 = *v316;
      v318 = v316[1];
      v309[301] = v318;
      v319 = *(v307 + v312[20]);
      v309[302] = v319;
      (*(v310 + 32))(v308, v307, v311);
      v320 = swift_task_alloc();
      v309[303] = v320;
      *v320 = v309;
      v320[1] = sub_1D308C900;
      v321 = v309[162];
      v322 = v309[150];
      v323 = v309[148];
      v324 = *(v309 + 145);
      v325 = v309[144];
      v433 = v309[147];
      v432 = v324;

      return sub_1D309E618(v322, v321, v314, v315, v317, v318, v319, v325);
    case 0x21u:
      v106 = v0[148];
      sub_1D30A13A4(*v0[178], *(v0[178] + 8), *(v0[178] + 16), *(v0[178] + 24), v0[144], v0[145], v0[146], v0[147], v0[149]);
      v107 = v0[149];
      v108 = v0[142];

      sub_1D3056830(v107, v108, type metadata accessor for Helper.PathToStagingDirectoryLookupResult);
      type metadata accessor for Helper.Reply(0);
      goto LABEL_135;
    case 0x22u:
      v68 = v0[178];
      v69 = v0[161];
      v70 = v0;
      v71 = v0[153];
      v72 = v70[152];
      v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A180, &qword_1D30F5488);
      v74 = (v68 + *(v73 + 48));
      v75 = *v74;
      v76 = v74[1];
      v70[305] = v76;
      v77 = (v68 + *(v73 + 64));
      v78 = *v77;
      v79 = v77[1];
      v70[306] = v79;
      (*(v71 + 32))(v69, v68, v72);
      v80 = swift_task_alloc();
      v70[307] = v80;
      *v80 = v70;
      v80[1] = sub_1D308CC80;
      v81 = v70[148];
      v82 = v70[161];

      return sub_1D30A1F18(v82, v75, v76, v78, v79);
    case 0x23u:
      v44 = v0[159];
      v45 = v0[148];
      (*(v0[153] + 32))(v44, v0[178], v0[152]);
      v46 = sub_1D30A5610(v44);
      v47 = v0[142];
      (*(v0[153] + 8))(v0[159], v0[152]);
      *v47 = v46;
      type metadata accessor for Helper.Reply(0);
      goto LABEL_135;
    case 0x24u:
      v48 = v0;
      v49 = v0[178];
      v50 = v48[158];
      v51 = v48[153];
      v52 = v48[152];
      v53 = *v49;
      v48[309] = *v49;
      v54 = v49[1];
      v48[310] = v54;
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A178, &qword_1D30F5480);
      v56 = *(v55 + 48);
      v57 = (v49 + *(v55 + 64));
      v58 = *v57;
      v59 = v57[1];
      v48[311] = v59;
      (*(v51 + 32))(v50, v49 + v56, v52);
      v60 = swift_task_alloc();
      v48[312] = v60;
      *v60 = v48;
      v60[1] = sub_1D308CFBC;
      v61 = v48[158];
      v62 = v48[148];

      return sub_1D30A58B4(v53, v54, v61, v58, v59);
    case 0x25u:
      v32 = v0[178];
      v33 = v0[157];
      v34 = v0;
      v35 = v0[153];
      v36 = v34[152];
      v37 = v34[148];
      v38 = (v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A170, &qword_1D30F5478) + 48));
      v39 = *v38;
      v40 = v38[1];
      (*(v35 + 32))(v33, v32, v36);
      v0 = v34;
      sub_1D30A6618(v33, v39, v40, "Copy item at: %{public}s out of container to bookmark with data: %{public}s", sub_1D3007420);
      v41 = v34[142];
      (*(v34[153] + 8))(v34[157], v34[152]);
      sub_1D2FF1804(v39, v40);
      type metadata accessor for Helper.Reply(0);
      goto LABEL_135;
    case 0x26u:
      v358 = v0;
      v359 = v0[178];
      v360 = v358[156];
      v361 = v358[153];
      v362 = v358[152];
      v363 = *v359;
      v358[314] = *v359;
      v364 = v359[1];
      v358[315] = v364;
      v365 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A178, &qword_1D30F5480);
      v366 = *(v365 + 48);
      v367 = (v359 + *(v365 + 64));
      v368 = *v367;
      v369 = v367[1];
      v358[316] = v369;
      (*(v361 + 32))(v360, v359 + v366, v362);
      v370 = swift_task_alloc();
      v358[317] = v370;
      *v370 = v358;
      v370[1] = sub_1D308D2F0;
      v371 = v358[156];
      v372 = v358[148];

      return sub_1D30A6000(v363, v364, v371, v368, v369);
    case 0x27u:
      v331 = v0[178];
      v332 = v0[155];
      v333 = v0;
      v334 = v0[153];
      v335 = v333[152];
      v336 = v333[148];
      v337 = (v331 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A170, &qword_1D30F5478) + 48));
      v338 = *v337;
      v339 = v337[1];
      (*(v334 + 32))(v332, v331, v335);
      v0 = v333;
      sub_1D30A6618(v332, v338, v339, "Move item at: %{public}s out of container to bookmark with data: %{public}s", sub_1D3008CD4);
      v390 = v333[142];
      (*(v333[153] + 8))(v333[155], v333[152]);
      sub_1D2FF1804(v338, v339);
      type metadata accessor for Helper.Reply(0);
      goto LABEL_135;
    case 0x28u:
      v128 = v0[178];
      v129 = v0[172];
      v130 = v0;
      v131 = v0[171];
      v132 = v130[170];
      v133 = *v128;
      v130[319] = *v128;
      v134 = v128[1];
      v130[320] = v134;
      v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A168, &qword_1D30F5470);
      v136 = v135[12];
      v137 = (v128 + v135[16]);
      v138 = *v137;
      v139 = v137[1];
      v130[321] = v139;
      v140 = *(v128 + v135[20] + 8);

      (*(v131 + 32))(v129, v128 + v136, v132);
      v141 = swift_task_alloc();
      v130[322] = v141;
      *v141 = v130;
      v141[1] = sub_1D308D624;
      v142 = v130[172];
      v143 = v130[148];

      return sub_1D30A6928(v133, v134, v142, v138, v139);
    case 0x29u:
      v229 = v0[154];
      v230 = v0[148];
      (*(v0[153] + 32))(v229, v0[178], v0[152]);
      sub_1D30A71F8(v229);
      v386 = v0[142];
      (*(v0[153] + 8))(v0[154], v0[152]);
      type metadata accessor for Helper.Reply(0);
      goto LABEL_135;
    case 0x2Au:
      v345 = *v0[178];
      v346 = swift_task_alloc();
      v0[325] = v346;
      *v346 = v0;
      v346[1] = sub_1D308DC30;
      v347 = v0[148];

      return sub_1D30BFDBC(v345);
    case 0x2Bu:
      v28 = *v0[178];
      v0[326] = v28;
      v29 = swift_task_alloc();
      v0[327] = v29;
      *v29 = v0;
      v29[1] = sub_1D308DF08;
      v30 = v0[148];

      return sub_1D30BFFB8(v28);
    case 0x2Cu:
      v95 = swift_task_alloc();
      v0[221] = v95;
      *v95 = v0;
      v95[1] = sub_1D3088640;
      v96 = v0[148];

      return sub_1D3096B94();
    case 0x2Du:
      v326 = swift_task_alloc();
      v0[280] = v326;
      *v326 = v0;
      v326[1] = sub_1D308B6A4;
      v327 = v0[148];

      return sub_1D309B860();
    case 0x2Eu:
      v377 = swift_task_alloc();
      v0[285] = v377;
      *v377 = v0;
      v377[1] = sub_1D308BCA8;
      v378 = v0[148];

      return sub_1D309C0C0();
    case 0x2Fu:
      v42 = v0[160];
      v43 = v0[148];
      sub_1D30A547C();
      (*(v0[153] + 32))(v0[142], v0[160], v0[152]);
      type metadata accessor for Helper.Reply(0);
      goto LABEL_135;
    case 0x30u:
      v109 = swift_task_alloc();
      v0[324] = v109;
      *v109 = v0;
      v109[1] = sub_1D308D958;
      v110 = v0[148];

      return sub_1D30A749C();
    case 0x31u:
      v125 = v0[148];
      sub_1D30BFC60();
      v126 = v0[142];
      type metadata accessor for Helper.Reply(0);
LABEL_135:
      swift_storeEnumTagMultiPayload();
LABEL_136:
      v391 = v0[179];
      v392 = v0[178];
      v393 = v0[176];
      v394 = v0[175];
      v395 = v0[174];
      v396 = v0[173];
      v397 = v0[172];
      v398 = v0[169];
      v399 = v0[168];
      v400 = v0[167];
      v402 = v0[164];
      v403 = v0[163];
      v404 = v0[162];
      v405 = v0[161];
      v406 = v0[160];
      v407 = v0[159];
      v408 = v0[158];
      v409 = v0[157];
      v410 = v0[156];
      v412 = v0[155];
      v416 = v0[154];
      v419 = v0[151];
      v424 = v0[150];
      v428 = v0[149];

      v401 = v0[1];

      result = v401();
      break;
    default:
      v20 = v0[178];
      v22 = *v20;
      v21 = v20[1];
      v0[180] = v21;
      v23 = swift_task_alloc();
      v0[181] = v23;
      *v23 = v0;
      v23[1] = sub_1D30869EC;
      v24 = v0[148];
      v25 = (v0 + 53);
      v26 = v22;
      v27 = v21;
LABEL_132:

      result = sub_1D3091E5C(v25, v26, v27);
      break;
  }

  return result;
}

uint64_t sub_1D30869EC()
{
  v2 = *v1;
  v3 = *(*v1 + 1448);
  v4 = *v1;
  *(*v1 + 1456) = v0;

  v5 = *(v2 + 1440);

  if (v0)
  {
    v6 = sub_1D308E1F0;
  }

  else
  {
    v6 = sub_1D3086B20;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1D3086B20()
{
  v1 = *(v0 + 1136);
  *v1 = *(v0 + 424);
  v2 = *(v0 + 440);
  v3 = *(v0 + 456);
  v4 = *(v0 + 488);
  *(v1 + 48) = *(v0 + 472);
  *(v1 + 64) = v4;
  *(v1 + 16) = v2;
  *(v1 + 32) = v3;
  v5 = *(v0 + 504);
  v6 = *(v0 + 520);
  v7 = *(v0 + 536);
  *(v1 + 128) = *(v0 + 552);
  *(v1 + 96) = v6;
  *(v1 + 112) = v7;
  *(v1 + 80) = v5;
  type metadata accessor for Helper.Reply(0);
  swift_storeEnumTagMultiPayload();
  v8 = *(v0 + 1432);
  v9 = *(v0 + 1424);
  v10 = *(v0 + 1408);
  v11 = *(v0 + 1400);
  v12 = *(v0 + 1392);
  v13 = *(v0 + 1384);
  v14 = *(v0 + 1376);
  v15 = *(v0 + 1352);
  v16 = *(v0 + 1344);
  v17 = *(v0 + 1336);
  v20 = *(v0 + 1312);
  v21 = *(v0 + 1304);
  v22 = *(v0 + 1296);
  v23 = *(v0 + 1288);
  v24 = *(v0 + 1280);
  v25 = *(v0 + 1272);
  v26 = *(v0 + 1264);
  v27 = *(v0 + 1256);
  v28 = *(v0 + 1248);
  v29 = *(v0 + 1240);
  v30 = *(v0 + 1232);
  v31 = *(v0 + 1208);
  v32 = *(v0 + 1200);
  v33 = *(v0 + 1192);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1D3086D24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  v9 = *(*v4 + 1480);
  v10 = *v4;
  *(*v4 + 1488) = v3;

  if (v3)
  {
    v11 = sub_1D308E3B0;
  }

  else
  {
    v12 = v8[184];
    v13 = v8[183];

    v8[187] = a3;
    v8[188] = a2;
    v8[189] = a1;

    v11 = sub_1D3086E78;
  }

  return MEMORY[0x1EEE6DFA0](v11, 0, 0);
}

uint64_t sub_1D3086E78()
{
  v1 = v0[93].i64[1];
  v2 = v0[71].i64[0];
  *v2 = vextq_s8(v0[94], v0[94], 8uLL);
  v2[1].i64[0] = v1;
  type metadata accessor for Helper.Reply(0);
  swift_storeEnumTagMultiPayload();
  v3 = v0[89].i64[1];
  v4 = v0[89].i64[0];
  v5 = v0[88].i64[0];
  v6 = v0[87].i64[1];
  v7 = v0[87].i64[0];
  v8 = v0[86].i64[1];
  v9 = v0[86].i64[0];
  v10 = v0[84].i64[1];
  v11 = v0[84].i64[0];
  v12 = v0[83].i64[1];
  v15 = v0[82].i64[0];
  v16 = v0[81].i64[1];
  v17 = v0[81].i64[0];
  v18 = v0[80].i64[1];
  v19 = v0[80].i64[0];
  v20 = v0[79].i64[1];
  v21 = v0[79].i64[0];
  v22 = v0[78].i64[1];
  v23 = v0[78].i64[0];
  v24 = v0[77].i64[1];
  v25 = v0[77].i64[0];
  v26 = v0[75].i64[1];
  v27 = v0[75].i64[0];
  v28 = v0[74].i64[1];

  v13 = v0->i64[1];

  return v13();
}

uint64_t sub_1D308705C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 1528);
  v8 = *v3;
  *(*v3 + 1536) = v2;

  if (v2)
  {
    v9 = sub_1D308E584;
  }

  else
  {
    v10 = v6[190];

    v6[193] = a2;
    v6[194] = a1;
    v9 = sub_1D308719C;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1D308719C()
{
  v1 = v0[193];
  v2 = v0[142];
  *v2 = v0[194];
  v2[1] = v1;
  type metadata accessor for Helper.Reply(0);
  swift_storeEnumTagMultiPayload();
  v3 = v0[179];
  v4 = v0[178];
  v5 = v0[176];
  v6 = v0[175];
  v7 = v0[174];
  v8 = v0[173];
  v9 = v0[172];
  v10 = v0[169];
  v11 = v0[168];
  v12 = v0[167];
  v15 = v0[164];
  v16 = v0[163];
  v17 = v0[162];
  v18 = v0[161];
  v19 = v0[160];
  v20 = v0[159];
  v21 = v0[158];
  v22 = v0[157];
  v23 = v0[156];
  v24 = v0[155];
  v25 = v0[154];
  v26 = v0[151];
  v27 = v0[150];
  v28 = v0[149];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1D3087378(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 1568);
  v8 = *v3;
  *(*v3 + 1576) = v2;

  if (v2)
  {
    v9 = sub_1D308E74C;
  }

  else
  {
    v10 = v6[195];

    v6[198] = a2;
    v6[199] = a1;
    v9 = sub_1D30874B8;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1D30874B8()
{
  *v0[71].i64[0] = vextq_s8(v0[99], v0[99], 8uLL);
  type metadata accessor for Helper.Reply(0);
  swift_storeEnumTagMultiPayload();
  v1 = v0[89].i64[1];
  v2 = v0[89].i64[0];
  v3 = v0[88].i64[0];
  v4 = v0[87].i64[1];
  v5 = v0[87].i64[0];
  v6 = v0[86].i64[1];
  v7 = v0[86].i64[0];
  v8 = v0[84].i64[1];
  v9 = v0[84].i64[0];
  v10 = v0[83].i64[1];
  v13 = v0[82].i64[0];
  v14 = v0[81].i64[1];
  v15 = v0[81].i64[0];
  v16 = v0[80].i64[1];
  v17 = v0[80].i64[0];
  v18 = v0[79].i64[1];
  v19 = v0[79].i64[0];
  v20 = v0[78].i64[1];
  v21 = v0[78].i64[0];
  v22 = v0[77].i64[1];
  v23 = v0[77].i64[0];
  v24 = v0[75].i64[1];
  v25 = v0[75].i64[0];
  v26 = v0[74].i64[1];

  v11 = v0->i64[1];

  return v11();
}

uint64_t sub_1D3087694()
{
  v2 = *v1;
  v3 = *(*v1 + 1608);
  v4 = *v1;
  *(*v1 + 1616) = v0;

  v5 = *(v2 + 1600);

  if (v0)
  {
    v6 = sub_1D308E914;
  }

  else
  {
    v6 = sub_1D30877C8;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1D30877C8()
{
  sub_1D3056830(v0[176], v0[142], type metadata accessor for Helper.URLRequestResult);
  type metadata accessor for Helper.Reply(0);
  swift_storeEnumTagMultiPayload();
  v1 = v0[179];
  v2 = v0[178];
  v3 = v0[176];
  v4 = v0[175];
  v5 = v0[174];
  v6 = v0[173];
  v7 = v0[172];
  v8 = v0[169];
  v9 = v0[168];
  v10 = v0[167];
  v13 = v0[164];
  v14 = v0[163];
  v15 = v0[162];
  v16 = v0[161];
  v17 = v0[160];
  v18 = v0[159];
  v19 = v0[158];
  v20 = v0[157];
  v21 = v0[156];
  v22 = v0[155];
  v23 = v0[154];
  v24 = v0[151];
  v25 = v0[150];
  v26 = v0[149];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1D30879B8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1624);
  v6 = *v2;
  *(*v2 + 1632) = v1;

  if (v1)
  {
    v7 = sub_1D308EAD4;
  }

  else
  {
    *(v4 + 1640) = a1;
    v7 = sub_1D3087AE0;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D3087AE0()
{
  **(v0 + 1136) = *(v0 + 1640);
  type metadata accessor for Helper.Reply(0);
  swift_storeEnumTagMultiPayload();
  v1 = *(v0 + 1432);
  v2 = *(v0 + 1424);
  v3 = *(v0 + 1408);
  v4 = *(v0 + 1400);
  v5 = *(v0 + 1392);
  v6 = *(v0 + 1384);
  v7 = *(v0 + 1376);
  v8 = *(v0 + 1352);
  v9 = *(v0 + 1344);
  v10 = *(v0 + 1336);
  v13 = *(v0 + 1312);
  v14 = *(v0 + 1304);
  v15 = *(v0 + 1296);
  v16 = *(v0 + 1288);
  v17 = *(v0 + 1280);
  v18 = *(v0 + 1272);
  v19 = *(v0 + 1264);
  v20 = *(v0 + 1256);
  v21 = *(v0 + 1248);
  v22 = *(v0 + 1240);
  v23 = *(v0 + 1232);
  v24 = *(v0 + 1208);
  v25 = *(v0 + 1200);
  v26 = *(v0 + 1192);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1D3087CB8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1664);
  v6 = *v2;
  *(*v2 + 1672) = v1;

  if (v1)
  {
    v7 = sub_1D308EC94;
  }

  else
  {
    v8 = v4[207];
    v9 = v4[206];

    v4[210] = a1;

    v7 = sub_1D3087DF4;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D3087DF4()
{
  **(v0 + 1136) = *(v0 + 1680);
  type metadata accessor for Helper.Reply(0);
  swift_storeEnumTagMultiPayload();
  v1 = *(v0 + 1432);
  v2 = *(v0 + 1424);
  v3 = *(v0 + 1408);
  v4 = *(v0 + 1400);
  v5 = *(v0 + 1392);
  v6 = *(v0 + 1384);
  v7 = *(v0 + 1376);
  v8 = *(v0 + 1352);
  v9 = *(v0 + 1344);
  v10 = *(v0 + 1336);
  v13 = *(v0 + 1312);
  v14 = *(v0 + 1304);
  v15 = *(v0 + 1296);
  v16 = *(v0 + 1288);
  v17 = *(v0 + 1280);
  v18 = *(v0 + 1272);
  v19 = *(v0 + 1264);
  v20 = *(v0 + 1256);
  v21 = *(v0 + 1248);
  v22 = *(v0 + 1240);
  v23 = *(v0 + 1232);
  v24 = *(v0 + 1208);
  v25 = *(v0 + 1200);
  v26 = *(v0 + 1192);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1D3087FCC()
{
  v2 = *v1;
  v3 = *(*v1 + 1712);
  v9 = *v1;
  *(*v1 + 1720) = v0;

  if (v0)
  {
    v4 = sub_1D308EE68;
  }

  else
  {
    v5 = v2[213];
    v6 = v2[212];
    v7 = v2[211];

    v4 = sub_1D3088108;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D3088108()
{
  v1 = v0[174];
  v2 = v0[142];
  (*(v0[171] + 8))(v0[173], v0[170]);
  sub_1D3065284(v1, type metadata accessor for AssetPackHost);
  type metadata accessor for Helper.Reply(0);
  swift_storeEnumTagMultiPayload();
  v3 = v0[179];
  v4 = v0[178];
  v5 = v0[176];
  v6 = v0[175];
  v7 = v0[174];
  v8 = v0[173];
  v9 = v0[172];
  v10 = v0[169];
  v11 = v0[168];
  v12 = v0[167];
  v15 = v0[164];
  v16 = v0[163];
  v17 = v0[162];
  v18 = v0[161];
  v19 = v0[160];
  v20 = v0[159];
  v21 = v0[158];
  v22 = v0[157];
  v23 = v0[156];
  v24 = v0[155];
  v25 = v0[154];
  v26 = v0[151];
  v27 = v0[150];
  v28 = v0[149];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1D3088314()
{
  v2 = *v1;
  v3 = *(*v1 + 1752);
  v9 = *v1;
  *(*v1 + 1760) = v0;

  if (v0)
  {
    v4 = sub_1D308F088;
  }

  else
  {
    v5 = v2[218];
    v6 = v2[217];
    v7 = v2[216];

    v4 = sub_1D3088450;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D3088450()
{
  sub_1D3056830(v0[169], v0[142], type metadata accessor for AssetPackRecord.StaticRepresentation);
  type metadata accessor for Helper.Reply(0);
  swift_storeEnumTagMultiPayload();
  v1 = v0[179];
  v2 = v0[178];
  v3 = v0[176];
  v4 = v0[175];
  v5 = v0[174];
  v6 = v0[173];
  v7 = v0[172];
  v8 = v0[169];
  v9 = v0[168];
  v10 = v0[167];
  v13 = v0[164];
  v14 = v0[163];
  v15 = v0[162];
  v16 = v0[161];
  v17 = v0[160];
  v18 = v0[159];
  v19 = v0[158];
  v20 = v0[157];
  v21 = v0[156];
  v22 = v0[155];
  v23 = v0[154];
  v24 = v0[151];
  v25 = v0[150];
  v26 = v0[149];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1D3088640()
{
  v2 = *(*v1 + 1768);
  v5 = *v1;
  *(*v1 + 1776) = v0;

  if (v0)
  {
    v3 = sub_1D308F268;
  }

  else
  {
    v3 = sub_1D3088754;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D3088754()
{
  v1 = v0[142];
  type metadata accessor for Helper.Reply(0);
  swift_storeEnumTagMultiPayload();
  v2 = v0[179];
  v3 = v0[178];
  v4 = v0[176];
  v5 = v0[175];
  v6 = v0[174];
  v7 = v0[173];
  v8 = v0[172];
  v9 = v0[169];
  v10 = v0[168];
  v11 = v0[167];
  v14 = v0[164];
  v15 = v0[163];
  v16 = v0[162];
  v17 = v0[161];
  v18 = v0[160];
  v19 = v0[159];
  v20 = v0[158];
  v21 = v0[157];
  v22 = v0[156];
  v23 = v0[155];
  v24 = v0[154];
  v25 = v0[151];
  v26 = v0[150];
  v27 = v0[149];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1D3088924(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1808);
  v6 = *v2;
  *(*v2 + 1816) = v1;

  if (v1)
  {
    v7 = sub_1D308F428;
  }

  else
  {
    v8 = *(v4 + 1800);
    v9 = *(v4 + 1792);
    v10 = *(v4 + 1784);

    *(v4 + 2656) = a1 & 1;

    v7 = sub_1D3088A70;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D3088A70()
{
  **(v0 + 1136) = *(v0 + 2656);
  type metadata accessor for Helper.Reply(0);
  swift_storeEnumTagMultiPayload();
  v1 = *(v0 + 1432);
  v2 = *(v0 + 1424);
  v3 = *(v0 + 1408);
  v4 = *(v0 + 1400);
  v5 = *(v0 + 1392);
  v6 = *(v0 + 1384);
  v7 = *(v0 + 1376);
  v8 = *(v0 + 1352);
  v9 = *(v0 + 1344);
  v10 = *(v0 + 1336);
  v13 = *(v0 + 1312);
  v14 = *(v0 + 1304);
  v15 = *(v0 + 1296);
  v16 = *(v0 + 1288);
  v17 = *(v0 + 1280);
  v18 = *(v0 + 1272);
  v19 = *(v0 + 1264);
  v20 = *(v0 + 1256);
  v21 = *(v0 + 1248);
  v22 = *(v0 + 1240);
  v23 = *(v0 + 1232);
  v24 = *(v0 + 1208);
  v25 = *(v0 + 1200);
  v26 = *(v0 + 1192);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1D3088C48(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1848);
  v6 = *v2;
  *(*v2 + 1856) = v1;

  if (v1)
  {
    v7 = sub_1D308F608;
  }

  else
  {
    v8 = *(v4 + 1840);
    v9 = *(v4 + 1832);
    v10 = *(v4 + 1824);

    *(v4 + 2657) = a1 & 1;

    v7 = sub_1D3088D94;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D3088D94()
{
  **(v0 + 1136) = *(v0 + 2657);
  type metadata accessor for Helper.Reply(0);
  swift_storeEnumTagMultiPayload();
  v1 = *(v0 + 1432);
  v2 = *(v0 + 1424);
  v3 = *(v0 + 1408);
  v4 = *(v0 + 1400);
  v5 = *(v0 + 1392);
  v6 = *(v0 + 1384);
  v7 = *(v0 + 1376);
  v8 = *(v0 + 1352);
  v9 = *(v0 + 1344);
  v10 = *(v0 + 1336);
  v13 = *(v0 + 1312);
  v14 = *(v0 + 1304);
  v15 = *(v0 + 1296);
  v16 = *(v0 + 1288);
  v17 = *(v0 + 1280);
  v18 = *(v0 + 1272);
  v19 = *(v0 + 1264);
  v20 = *(v0 + 1256);
  v21 = *(v0 + 1248);
  v22 = *(v0 + 1240);
  v23 = *(v0 + 1232);
  v24 = *(v0 + 1208);
  v25 = *(v0 + 1200);
  v26 = *(v0 + 1192);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1D3088F6C()
{
  v2 = *v1;
  v3 = *(*v1 + 1888);
  v9 = *v1;
  *(*v1 + 1896) = v0;

  if (v0)
  {
    v4 = sub_1D308F7E8;
  }

  else
  {
    v5 = v2[235];
    v6 = v2[234];
    v7 = v2[233];

    v4 = sub_1D30890A8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D30890A8()
{
  v1 = v0[142];
  type metadata accessor for Helper.Reply(0);
  swift_storeEnumTagMultiPayload();
  v2 = v0[179];
  v3 = v0[178];
  v4 = v0[176];
  v5 = v0[175];
  v6 = v0[174];
  v7 = v0[173];
  v8 = v0[172];
  v9 = v0[169];
  v10 = v0[168];
  v11 = v0[167];
  v14 = v0[164];
  v15 = v0[163];
  v16 = v0[162];
  v17 = v0[161];
  v18 = v0[160];
  v19 = v0[159];
  v20 = v0[158];
  v21 = v0[157];
  v22 = v0[156];
  v23 = v0[155];
  v24 = v0[154];
  v25 = v0[151];
  v26 = v0[150];
  v27 = v0[149];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1D3089278()
{
  v2 = *v1;
  v3 = *(*v1 + 1936);
  v9 = *v1;
  *(*v1 + 1944) = v0;

  if (v0)
  {
    v4 = sub_1D308F9C8;
  }

  else
  {
    v5 = v2[240];
    v6 = v2[239];
    v7 = v2[238];

    v4 = sub_1D30893B4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D30893B4()
{
  v1 = *(v0 + 1136);

  type metadata accessor for Helper.Reply(0);
  swift_storeEnumTagMultiPayload();
  v2 = *(v0 + 1432);
  v3 = *(v0 + 1424);
  v4 = *(v0 + 1408);
  v5 = *(v0 + 1400);
  v6 = *(v0 + 1392);
  v7 = *(v0 + 1384);
  v8 = *(v0 + 1376);
  v9 = *(v0 + 1352);
  v10 = *(v0 + 1344);
  v11 = *(v0 + 1336);
  v14 = *(v0 + 1312);
  v15 = *(v0 + 1304);
  v16 = *(v0 + 1296);
  v17 = *(v0 + 1288);
  v18 = *(v0 + 1280);
  v19 = *(v0 + 1272);
  v20 = *(v0 + 1264);
  v21 = *(v0 + 1256);
  v22 = *(v0 + 1248);
  v23 = *(v0 + 1240);
  v24 = *(v0 + 1232);
  v25 = *(v0 + 1208);
  v26 = *(v0 + 1200);
  v27 = *(v0 + 1192);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1D308958C()
{
  v2 = *v1;
  v3 = *(*v1 + 1976);
  v9 = *v1;
  *(*v1 + 1984) = v0;

  if (v0)
  {
    v4 = sub_1D308FBB4;
  }

  else
  {
    v5 = v2[246];
    v6 = v2[245];
    v7 = v2[244];

    v4 = sub_1D30896C8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D30896C8()
{
  v1 = v0[142];
  type metadata accessor for Helper.Reply(0);
  swift_storeEnumTagMultiPayload();
  v2 = v0[179];
  v3 = v0[178];
  v4 = v0[176];
  v5 = v0[175];
  v6 = v0[174];
  v7 = v0[173];
  v8 = v0[172];
  v9 = v0[169];
  v10 = v0[168];
  v11 = v0[167];
  v14 = v0[164];
  v15 = v0[163];
  v16 = v0[162];
  v17 = v0[161];
  v18 = v0[160];
  v19 = v0[159];
  v20 = v0[158];
  v21 = v0[157];
  v22 = v0[156];
  v23 = v0[155];
  v24 = v0[154];
  v25 = v0[151];
  v26 = v0[150];
  v27 = v0[149];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1D3089898()
{
  v2 = *v1;
  v3 = *(*v1 + 2000);
  v7 = *v1;
  *(*v1 + 2008) = v0;

  if (v0)
  {
    v4 = sub_1D308FD94;
  }

  else
  {
    v5 = *(v2 + 1992);

    v4 = sub_1D30899B4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D30899B4()
{
  v1 = v0[142];
  type metadata accessor for Helper.Reply(0);
  swift_storeEnumTagMultiPayload();
  v2 = v0[179];
  v3 = v0[178];
  v4 = v0[176];
  v5 = v0[175];
  v6 = v0[174];
  v7 = v0[173];
  v8 = v0[172];
  v9 = v0[169];
  v10 = v0[168];
  v11 = v0[167];
  v14 = v0[164];
  v15 = v0[163];
  v16 = v0[162];
  v17 = v0[161];
  v18 = v0[160];
  v19 = v0[159];
  v20 = v0[158];
  v21 = v0[157];
  v22 = v0[156];
  v23 = v0[155];
  v24 = v0[154];
  v25 = v0[151];
  v26 = v0[150];
  v27 = v0[149];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1D3089B84()
{
  v2 = *v1;
  v3 = *(*v1 + 2024);
  v7 = *v1;
  *(*v1 + 2032) = v0;

  if (v0)
  {
    v4 = sub_1D308FF5C;
  }

  else
  {
    v5 = *(v2 + 2016);

    v4 = sub_1D3089CA0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D3089CA0()
{
  v1 = v0[142];
  type metadata accessor for Helper.Reply(0);
  swift_storeEnumTagMultiPayload();
  v2 = v0[179];
  v3 = v0[178];
  v4 = v0[176];
  v5 = v0[175];
  v6 = v0[174];
  v7 = v0[173];
  v8 = v0[172];
  v9 = v0[169];
  v10 = v0[168];
  v11 = v0[167];
  v14 = v0[164];
  v15 = v0[163];
  v16 = v0[162];
  v17 = v0[161];
  v18 = v0[160];
  v19 = v0[159];
  v20 = v0[158];
  v21 = v0[157];
  v22 = v0[156];
  v23 = v0[155];
  v24 = v0[154];
  v25 = v0[151];
  v26 = v0[150];
  v27 = v0[149];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1D3089E70()
{
  v2 = *(*v1 + 2080);
  v5 = *v1;
  *(*v1 + 2088) = v0;

  if (v0)
  {
    v3 = sub_1D308A1B8;
  }

  else
  {
    v3 = sub_1D3089F84;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D3089F84()
{
  v1 = *(v0 + 1184);
  v2 = *(v0 + 64);
  *(v0 + 216) = *(v0 + 80);
  v3 = *(v0 + 48);
  *(v0 + 200) = *(v0 + 64);
  v4 = *(v0 + 32);
  *(v0 + 184) = *(v0 + 48);
  v5 = *(v0 + 16);
  *(v0 + 168) = *(v0 + 32);
  *(v0 + 280) = *(v0 + 144);
  v6 = *(v0 + 112);
  *(v0 + 264) = *(v0 + 128);
  v7 = *(v0 + 96);
  *(v0 + 248) = *(v0 + 112);
  v8 = *(v0 + 80);
  *(v0 + 232) = *(v0 + 96);
  *(v0 + 152) = *(v0 + 16);
  v9 = *(v1 + 56);
  v10 = *(v0 + 128);
  *(v0 + 384) = v6;
  *(v0 + 400) = v10;
  *(v0 + 320) = v3;
  *(v0 + 336) = v2;
  *(v0 + 352) = v8;
  *(v0 + 368) = v7;
  *(v0 + 416) = *(v0 + 144);
  *(v0 + 288) = v5;
  *(v0 + 304) = v4;
  v11 = swift_task_alloc();
  *(v0 + 2096) = v11;
  *v11 = v0;
  v11[1] = sub_1D308A09C;
  v12 = *(v0 + 2056);
  v13 = *(v0 + 2048);
  v14 = *(v0 + 2040);
  v15 = *(v0 + 1344);

  return sub_1D3016ED4(v0 + 1040, v14, v13, v15, v12, v0 + 288);
}

uint64_t sub_1D308A09C()
{
  v2 = *v1;
  v3 = *(*v1 + 2096);
  v6 = *v1;
  *(*v1 + 2104) = v0;

  if (v0)
  {
    v4 = sub_1D308A5C4;
  }

  else
  {
    sub_1D2FE2EC4(v2 + 152);
    v4 = sub_1D308A3AC;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D308A1B8()
{
  v1 = *(v0 + 2064);
  v2 = *(v0 + 2048);

  v30 = *(v0 + 2088);
  v3 = *(v0 + 1328) + 8;
  (*(v0 + 2072))(*(v0 + 1344), *(v0 + 1320));
  v4 = *(v0 + 1432);
  v5 = *(v0 + 1424);
  v6 = *(v0 + 1408);
  v7 = *(v0 + 1400);
  v8 = *(v0 + 1392);
  v9 = *(v0 + 1384);
  v10 = *(v0 + 1376);
  v11 = *(v0 + 1352);
  v12 = *(v0 + 1344);
  v13 = *(v0 + 1336);
  v16 = *(v0 + 1312);
  v17 = *(v0 + 1304);
  v18 = *(v0 + 1296);
  v19 = *(v0 + 1288);
  v20 = *(v0 + 1280);
  v21 = *(v0 + 1272);
  v22 = *(v0 + 1264);
  v23 = *(v0 + 1256);
  v24 = *(v0 + 1248);
  v25 = *(v0 + 1240);
  v26 = *(v0 + 1232);
  v27 = *(v0 + 1208);
  v28 = *(v0 + 1200);
  v29 = *(v0 + 1192);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1D308A3AC()
{
  v1 = *(v0 + 2072);
  v2 = *(v0 + 2064);
  v3 = *(v0 + 2048);
  v4 = *(v0 + 1344);
  v5 = *(v0 + 1328);
  v6 = *(v0 + 1320);
  v7 = *(v0 + 1136);

  v1(v4, v6);
  v8 = *(v0 + 1056);
  *v7 = *(v0 + 1040);
  v7[1] = v8;
  type metadata accessor for Helper.Reply(0);
  swift_storeEnumTagMultiPayload();
  v9 = *(v0 + 1432);
  v10 = *(v0 + 1424);
  v11 = *(v0 + 1408);
  v12 = *(v0 + 1400);
  v13 = *(v0 + 1392);
  v14 = *(v0 + 1384);
  v15 = *(v0 + 1376);
  v16 = *(v0 + 1352);
  v17 = *(v0 + 1344);
  v18 = *(v0 + 1336);
  v21 = *(v0 + 1312);
  v22 = *(v0 + 1304);
  v23 = *(v0 + 1296);
  v24 = *(v0 + 1288);
  v25 = *(v0 + 1280);
  v26 = *(v0 + 1272);
  v27 = *(v0 + 1264);
  v28 = *(v0 + 1256);
  v29 = *(v0 + 1248);
  v30 = *(v0 + 1240);
  v31 = *(v0 + 1232);
  v32 = *(v0 + 1208);
  v33 = *(v0 + 1200);
  v34 = *(v0 + 1192);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1D308A5C4()
{
  v1 = *(v0 + 2064);
  v2 = *(v0 + 2048);
  sub_1D2FE2EC4(v0 + 152);

  v30 = *(v0 + 2104);
  v3 = *(v0 + 1328) + 8;
  (*(v0 + 2072))(*(v0 + 1344), *(v0 + 1320));
  v4 = *(v0 + 1432);
  v5 = *(v0 + 1424);
  v6 = *(v0 + 1408);
  v7 = *(v0 + 1400);
  v8 = *(v0 + 1392);
  v9 = *(v0 + 1384);
  v10 = *(v0 + 1376);
  v11 = *(v0 + 1352);
  v12 = *(v0 + 1344);
  v13 = *(v0 + 1336);
  v16 = *(v0 + 1312);
  v17 = *(v0 + 1304);
  v18 = *(v0 + 1296);
  v19 = *(v0 + 1288);
  v20 = *(v0 + 1280);
  v21 = *(v0 + 1272);
  v22 = *(v0 + 1264);
  v23 = *(v0 + 1256);
  v24 = *(v0 + 1248);
  v25 = *(v0 + 1240);
  v26 = *(v0 + 1232);
  v27 = *(v0 + 1208);
  v28 = *(v0 + 1200);
  v29 = *(v0 + 1192);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1D308A7C4()
{
  v2 = *v1;
  v3 = *(*v1 + 2128);
  v8 = *v1;
  *(*v1 + 2136) = v0;

  if (v0)
  {
    v4 = sub_1D3090124;
  }

  else
  {
    v5 = *(v2 + 2120);
    v6 = *(v2 + 2112);

    v4 = sub_1D308A8EC;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D308A8EC()
{
  v1 = v0[142];
  type metadata accessor for Helper.Reply(0);
  swift_storeEnumTagMultiPayload();
  v2 = v0[179];
  v3 = v0[178];
  v4 = v0[176];
  v5 = v0[175];
  v6 = v0[174];
  v7 = v0[173];
  v8 = v0[172];
  v9 = v0[169];
  v10 = v0[168];
  v11 = v0[167];
  v14 = v0[164];
  v15 = v0[163];
  v16 = v0[162];
  v17 = v0[161];
  v18 = v0[160];
  v19 = v0[159];
  v20 = v0[158];
  v21 = v0[157];
  v22 = v0[156];
  v23 = v0[155];
  v24 = v0[154];
  v25 = v0[151];
  v26 = v0[150];
  v27 = v0[149];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1D308AABC()
{
  v2 = *(*v1 + 2144);
  v5 = *v1;
  *(*v1 + 2152) = v0;

  if (v0)
  {
    v3 = sub_1D30902F8;
  }

  else
  {
    v3 = sub_1D308ABD0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D308ABD0()
{
  v1 = *(v0 + 1136);
  v2 = *(v0 + 672);
  v3 = *(v0 + 688);
  *v1 = *(v0 + 656);
  v1[1] = v2;
  v1[2] = v3;
  type metadata accessor for Helper.Reply(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(v0 + 1432);
  v5 = *(v0 + 1424);
  v6 = *(v0 + 1408);
  v7 = *(v0 + 1400);
  v8 = *(v0 + 1392);
  v9 = *(v0 + 1384);
  v10 = *(v0 + 1376);
  v11 = *(v0 + 1352);
  v12 = *(v0 + 1344);
  v13 = *(v0 + 1336);
  v16 = *(v0 + 1312);
  v17 = *(v0 + 1304);
  v18 = *(v0 + 1296);
  v19 = *(v0 + 1288);
  v20 = *(v0 + 1280);
  v21 = *(v0 + 1272);
  v22 = *(v0 + 1264);
  v23 = *(v0 + 1256);
  v24 = *(v0 + 1248);
  v25 = *(v0 + 1240);
  v26 = *(v0 + 1232);
  v27 = *(v0 + 1208);
  v28 = *(v0 + 1200);
  v29 = *(v0 + 1192);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1D308ADB0()
{
  v2 = *v1;
  v3 = *(*v1 + 2168);
  v4 = *v1;
  *(*v1 + 2176) = v0;

  v5 = *(v2 + 2160);

  if (v0)
  {
    v6 = sub_1D30904B8;
  }

  else
  {
    v6 = sub_1D308AEE4;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1D308AEE4()
{
  v1 = *(v0 + 1136);
  v2 = *(v0 + 616);
  v3 = *(v0 + 624);
  v4 = *(v0 + 640);
  *v1 = *(v0 + 608);
  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
  *(v1 + 32) = v4;
  type metadata accessor for Helper.Reply(0);
  swift_storeEnumTagMultiPayload();
  v5 = *(v0 + 1432);
  v6 = *(v0 + 1424);
  v7 = *(v0 + 1408);
  v8 = *(v0 + 1400);
  v9 = *(v0 + 1392);
  v10 = *(v0 + 1384);
  v11 = *(v0 + 1376);
  v12 = *(v0 + 1352);
  v13 = *(v0 + 1344);
  v14 = *(v0 + 1336);
  v17 = *(v0 + 1312);
  v18 = *(v0 + 1304);
  v19 = *(v0 + 1296);
  v20 = *(v0 + 1288);
  v21 = *(v0 + 1280);
  v22 = *(v0 + 1272);
  v23 = *(v0 + 1264);
  v24 = *(v0 + 1256);
  v25 = *(v0 + 1248);
  v26 = *(v0 + 1240);
  v27 = *(v0 + 1232);
  v28 = *(v0 + 1208);
  v29 = *(v0 + 1200);
  v30 = *(v0 + 1192);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1D308B0C8()
{
  v2 = *(*v1 + 2200);
  v5 = *v1;
  *(*v1 + 2208) = v0;

  if (v0)
  {
    v3 = sub_1D3090678;
  }

  else
  {
    v3 = sub_1D308B1DC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D308B1DC()
{
  v1 = v0[142];
  sub_1D2FF1804(v0[273], v0[274]);
  type metadata accessor for Helper.Reply(0);
  swift_storeEnumTagMultiPayload();
  v2 = v0[179];
  v3 = v0[178];
  v4 = v0[176];
  v5 = v0[175];
  v6 = v0[174];
  v7 = v0[173];
  v8 = v0[172];
  v9 = v0[169];
  v10 = v0[168];
  v11 = v0[167];
  v14 = v0[164];
  v15 = v0[163];
  v16 = v0[162];
  v17 = v0[161];
  v18 = v0[160];
  v19 = v0[159];
  v20 = v0[158];
  v21 = v0[157];
  v22 = v0[156];
  v23 = v0[155];
  v24 = v0[154];
  v25 = v0[151];
  v26 = v0[150];
  v27 = v0[149];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1D308B3B8()
{
  v2 = *(*v1 + 2224);
  v5 = *v1;
  *(*v1 + 2232) = v0;

  if (v0)
  {
    v3 = sub_1D3090844;
  }

  else
  {
    v3 = sub_1D308B4CC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D308B4CC()
{
  v1 = *(v0 + 1136);

  type metadata accessor for Helper.Reply(0);
  swift_storeEnumTagMultiPayload();
  v2 = *(v0 + 1432);
  v3 = *(v0 + 1424);
  v4 = *(v0 + 1408);
  v5 = *(v0 + 1400);
  v6 = *(v0 + 1392);
  v7 = *(v0 + 1384);
  v8 = *(v0 + 1376);
  v9 = *(v0 + 1352);
  v10 = *(v0 + 1344);
  v11 = *(v0 + 1336);
  v14 = *(v0 + 1312);
  v15 = *(v0 + 1304);
  v16 = *(v0 + 1296);
  v17 = *(v0 + 1288);
  v18 = *(v0 + 1280);
  v19 = *(v0 + 1272);
  v20 = *(v0 + 1264);
  v21 = *(v0 + 1256);
  v22 = *(v0 + 1248);
  v23 = *(v0 + 1240);
  v24 = *(v0 + 1232);
  v25 = *(v0 + 1208);
  v26 = *(v0 + 1200);
  v27 = *(v0 + 1192);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1D308B6A4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 2240);
  v6 = *v2;
  *(*v2 + 2248) = v1;

  if (v1)
  {
    v7 = sub_1D3090A0C;
  }

  else
  {
    *(v4 + 2256) = a1;
    v7 = sub_1D308B7CC;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D308B7CC()
{
  **(v0 + 1136) = *(v0 + 2256);
  type metadata accessor for Helper.Reply(0);
  swift_storeEnumTagMultiPayload();
  v1 = *(v0 + 1432);
  v2 = *(v0 + 1424);
  v3 = *(v0 + 1408);
  v4 = *(v0 + 1400);
  v5 = *(v0 + 1392);
  v6 = *(v0 + 1384);
  v7 = *(v0 + 1376);
  v8 = *(v0 + 1352);
  v9 = *(v0 + 1344);
  v10 = *(v0 + 1336);
  v13 = *(v0 + 1312);
  v14 = *(v0 + 1304);
  v15 = *(v0 + 1296);
  v16 = *(v0 + 1288);
  v17 = *(v0 + 1280);
  v18 = *(v0 + 1272);
  v19 = *(v0 + 1264);
  v20 = *(v0 + 1256);
  v21 = *(v0 + 1248);
  v22 = *(v0 + 1240);
  v23 = *(v0 + 1232);
  v24 = *(v0 + 1208);
  v25 = *(v0 + 1200);
  v26 = *(v0 + 1192);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1D308B9A4()
{
  v2 = *(*v1 + 2264);
  v5 = *v1;
  *(*v1 + 2272) = v0;

  if (v0)
  {
    v3 = sub_1D3090BCC;
  }

  else
  {
    v3 = sub_1D308BAB8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D308BAB8()
{
  sub_1D3056830(v0[164], v0[142], type metadata accessor for LicenseRecord.StaticRepresentation);
  type metadata accessor for Helper.Reply(0);
  swift_storeEnumTagMultiPayload();
  v1 = v0[179];
  v2 = v0[178];
  v3 = v0[176];
  v4 = v0[175];
  v5 = v0[174];
  v6 = v0[173];
  v7 = v0[172];
  v8 = v0[169];
  v9 = v0[168];
  v10 = v0[167];
  v13 = v0[164];
  v14 = v0[163];
  v15 = v0[162];
  v16 = v0[161];
  v17 = v0[160];
  v18 = v0[159];
  v19 = v0[158];
  v20 = v0[157];
  v21 = v0[156];
  v22 = v0[155];
  v23 = v0[154];
  v24 = v0[151];
  v25 = v0[150];
  v26 = v0[149];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1D308BCA8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 2280);
  v6 = *v2;
  *(*v2 + 2288) = v1;

  if (v1)
  {
    v7 = sub_1D3090D8C;
  }

  else
  {
    *(v4 + 2296) = a1;
    v7 = sub_1D308BDD0;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D308BDD0()
{
  **(v0 + 1136) = *(v0 + 2296);
  type metadata accessor for Helper.Reply(0);
  swift_storeEnumTagMultiPayload();
  v1 = *(v0 + 1432);
  v2 = *(v0 + 1424);
  v3 = *(v0 + 1408);
  v4 = *(v0 + 1400);
  v5 = *(v0 + 1392);
  v6 = *(v0 + 1384);
  v7 = *(v0 + 1376);
  v8 = *(v0 + 1352);
  v9 = *(v0 + 1344);
  v10 = *(v0 + 1336);
  v13 = *(v0 + 1312);
  v14 = *(v0 + 1304);
  v15 = *(v0 + 1296);
  v16 = *(v0 + 1288);
  v17 = *(v0 + 1280);
  v18 = *(v0 + 1272);
  v19 = *(v0 + 1264);
  v20 = *(v0 + 1256);
  v21 = *(v0 + 1248);
  v22 = *(v0 + 1240);
  v23 = *(v0 + 1232);
  v24 = *(v0 + 1208);
  v25 = *(v0 + 1200);
  v26 = *(v0 + 1192);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1D308BFA8()
{
  v2 = *v1;
  v3 = *(*v1 + 2312);
  v7 = *v1;
  *(*v1 + 2320) = v0;

  if (v0)
  {
    v4 = sub_1D3090F4C;
  }

  else
  {
    v5 = *(v2 + 2304);

    v4 = sub_1D308C0C4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D308C0C4()
{
  v1 = v0[142];
  type metadata accessor for Helper.Reply(0);
  swift_storeEnumTagMultiPayload();
  v2 = v0[179];
  v3 = v0[178];
  v4 = v0[176];
  v5 = v0[175];
  v6 = v0[174];
  v7 = v0[173];
  v8 = v0[172];
  v9 = v0[169];
  v10 = v0[168];
  v11 = v0[167];
  v14 = v0[164];
  v15 = v0[163];
  v16 = v0[162];
  v17 = v0[161];
  v18 = v0[160];
  v19 = v0[159];
  v20 = v0[158];
  v21 = v0[157];
  v22 = v0[156];
  v23 = v0[155];
  v24 = v0[154];
  v25 = v0[151];
  v26 = v0[150];
  v27 = v0[149];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1D308C294()
{
  v2 = *v1;
  v3 = *(*v1 + 2336);
  v4 = *v1;
  *(*v1 + 2344) = v0;

  v5 = *(v2 + 2328);

  if (v0)
  {
    v6 = sub_1D3091114;
  }

  else
  {
    v6 = sub_1D308C3C8;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1D308C3C8()
{
  v1 = v0[142];
  v2 = v0[141];
  *v1 = v0[140];
  v1[1] = v2;
  type metadata accessor for Helper.Reply(0);
  swift_storeEnumTagMultiPayload();
  v3 = v0[179];
  v4 = v0[178];
  v5 = v0[176];
  v6 = v0[175];
  v7 = v0[174];
  v8 = v0[173];
  v9 = v0[172];
  v10 = v0[169];
  v11 = v0[168];
  v12 = v0[167];
  v15 = v0[164];
  v16 = v0[163];
  v17 = v0[162];
  v18 = v0[161];
  v19 = v0[160];
  v20 = v0[159];
  v21 = v0[158];
  v22 = v0[157];
  v23 = v0[156];
  v24 = v0[155];
  v25 = v0[154];
  v26 = v0[151];
  v27 = v0[150];
  v28 = v0[149];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1D308C5A4()
{
  v2 = *v1;
  v3 = *(*v1 + 2384);
  v10 = *v1;
  *(*v1 + 2392) = v0;

  v4 = v2[297];
  if (v0)
  {

    v5 = sub_1D30912D4;
  }

  else
  {
    v6 = v2[296];
    v7 = v2[295];
    v8 = v2[294];

    v5 = sub_1D308C6F4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D308C6F4()
{
  v1 = v0[151];
  v2 = v0[142];
  (*(v0[153] + 8))(v0[163], v0[152]);
  sub_1D30E6F78(v1, v2, &qword_1EC74A778, &qword_1D30F5890);
  type metadata accessor for Helper.Reply(0);
  swift_storeEnumTagMultiPayload();
  v3 = v0[179];
  v4 = v0[178];
  v5 = v0[176];
  v6 = v0[175];
  v7 = v0[174];
  v8 = v0[173];
  v9 = v0[172];
  v10 = v0[169];
  v11 = v0[168];
  v12 = v0[167];
  v15 = v0[164];
  v16 = v0[163];
  v17 = v0[162];
  v18 = v0[161];
  v19 = v0[160];
  v20 = v0[159];
  v21 = v0[158];
  v22 = v0[157];
  v23 = v0[156];
  v24 = v0[155];
  v25 = v0[154];
  v26 = v0[151];
  v27 = v0[150];
  v28 = v0[149];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1D308C900()
{
  v2 = *v1;
  v3 = *(*v1 + 2424);
  v4 = *v1;
  *(*v1 + 2432) = v0;

  v5 = v2[302];
  v6 = v2[301];
  v7 = v2[300];

  if (v0)
  {
    v8 = sub_1D30914D4;
  }

  else
  {
    v8 = sub_1D308CA74;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1D308CA74()
{
  v1 = v0[150];
  v2 = v0[142];
  (*(v0[153] + 8))(v0[162], v0[152]);
  sub_1D30E6F78(v1, v2, &qword_1EC74A768, &qword_1D30F5880);
  type metadata accessor for Helper.Reply(0);
  swift_storeEnumTagMultiPayload();
  v3 = v0[179];
  v4 = v0[178];
  v5 = v0[176];
  v6 = v0[175];
  v7 = v0[174];
  v8 = v0[173];
  v9 = v0[172];
  v10 = v0[169];
  v11 = v0[168];
  v12 = v0[167];
  v15 = v0[164];
  v16 = v0[163];
  v17 = v0[162];
  v18 = v0[161];
  v19 = v0[160];
  v20 = v0[159];
  v21 = v0[158];
  v22 = v0[157];
  v23 = v0[156];
  v24 = v0[155];
  v25 = v0[154];
  v26 = v0[151];
  v27 = v0[150];
  v28 = v0[149];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1D308CC80()
{
  v2 = *v1;
  v3 = *(*v1 + 2456);
  v4 = *v1;
  *(*v1 + 2464) = v0;

  v5 = *(v2 + 2448);
  v6 = *(v2 + 2440);

  if (v0)
  {
    v7 = sub_1D30916B0;
  }

  else
  {
    v7 = sub_1D308CDD0;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D308CDD0()
{
  v1 = v0[142];
  (*(v0[153] + 8))(v0[161], v0[152]);
  type metadata accessor for Helper.Reply(0);
  swift_storeEnumTagMultiPayload();
  v2 = v0[179];
  v3 = v0[178];
  v4 = v0[176];
  v5 = v0[175];
  v6 = v0[174];
  v7 = v0[173];
  v8 = v0[172];
  v9 = v0[169];
  v10 = v0[168];
  v11 = v0[167];
  v14 = v0[164];
  v15 = v0[163];
  v16 = v0[162];
  v17 = v0[161];
  v18 = v0[160];
  v19 = v0[159];
  v20 = v0[158];
  v21 = v0[157];
  v22 = v0[156];
  v23 = v0[155];
  v24 = v0[154];
  v25 = v0[151];
  v26 = v0[150];
  v27 = v0[149];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1D308CFBC()
{
  v2 = *v1;
  v3 = *(*v1 + 2496);
  v4 = *v1;
  *(*v1 + 2504) = v0;

  v5 = *(v2 + 2488);

  if (v0)
  {
    v6 = sub_1D309188C;
  }

  else
  {
    v6 = sub_1D308D0F0;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1D308D0F0()
{
  v1 = v0[158];
  v2 = v0[153];
  v3 = v0[152];
  v4 = v0[142];
  sub_1D2FF1804(v0[309], v0[310]);
  (*(v2 + 8))(v1, v3);
  type metadata accessor for Helper.Reply(0);
  swift_storeEnumTagMultiPayload();
  v5 = v0[179];
  v6 = v0[178];
  v7 = v0[176];
  v8 = v0[175];
  v9 = v0[174];
  v10 = v0[173];
  v11 = v0[172];
  v12 = v0[169];
  v13 = v0[168];
  v14 = v0[167];
  v17 = v0[164];
  v18 = v0[163];
  v19 = v0[162];
  v20 = v0[161];
  v21 = v0[160];
  v22 = v0[159];
  v23 = v0[158];
  v24 = v0[157];
  v25 = v0[156];
  v26 = v0[155];
  v27 = v0[154];
  v28 = v0[151];
  v29 = v0[150];
  v30 = v0[149];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1D308D2F0()
{
  v2 = *v1;
  v3 = *(*v1 + 2536);
  v4 = *v1;
  *(*v1 + 2544) = v0;

  v5 = *(v2 + 2528);

  if (v0)
  {
    v6 = sub_1D3091A7C;
  }

  else
  {
    v6 = sub_1D308D424;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1D308D424()
{
  v1 = v0[156];
  v2 = v0[153];
  v3 = v0[152];
  v4 = v0[142];
  sub_1D2FF1804(v0[314], v0[315]);
  (*(v2 + 8))(v1, v3);
  type metadata accessor for Helper.Reply(0);
  swift_storeEnumTagMultiPayload();
  v5 = v0[179];
  v6 = v0[178];
  v7 = v0[176];
  v8 = v0[175];
  v9 = v0[174];
  v10 = v0[173];
  v11 = v0[172];
  v12 = v0[169];
  v13 = v0[168];
  v14 = v0[167];
  v17 = v0[164];
  v18 = v0[163];
  v19 = v0[162];
  v20 = v0[161];
  v21 = v0[160];
  v22 = v0[159];
  v23 = v0[158];
  v24 = v0[157];
  v25 = v0[156];
  v26 = v0[155];
  v27 = v0[154];
  v28 = v0[151];
  v29 = v0[150];
  v30 = v0[149];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1D308D624()
{
  v2 = *v1;
  v3 = *(*v1 + 2576);
  v4 = *v1;
  *(*v1 + 2584) = v0;

  v5 = *(v2 + 2568);

  if (v0)
  {
    v6 = sub_1D3091C6C;
  }

  else
  {
    v6 = sub_1D308D758;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1D308D758()
{
  v1 = v0[172];
  v2 = v0[171];
  v3 = v0[170];
  v4 = v0[142];
  sub_1D2FF1804(v0[319], v0[320]);
  (*(v2 + 8))(v1, v3);
  type metadata accessor for Helper.Reply(0);
  swift_storeEnumTagMultiPayload();
  v5 = v0[179];
  v6 = v0[178];
  v7 = v0[176];
  v8 = v0[175];
  v9 = v0[174];
  v10 = v0[173];
  v11 = v0[172];
  v12 = v0[169];
  v13 = v0[168];
  v14 = v0[167];
  v17 = v0[164];
  v18 = v0[163];
  v19 = v0[162];
  v20 = v0[161];
  v21 = v0[160];
  v22 = v0[159];
  v23 = v0[158];
  v24 = v0[157];
  v25 = v0[156];
  v26 = v0[155];
  v27 = v0[154];
  v28 = v0[151];
  v29 = v0[150];
  v30 = v0[149];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1D308D958(char a1)
{
  v2 = *(*v1 + 2592);
  v4 = *v1;
  *(*v1 + 2658) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D308DA58, 0, 0);
}

uint64_t sub_1D308DA58()
{
  **(v0 + 1136) = *(v0 + 2658);
  type metadata accessor for Helper.Reply(0);
  swift_storeEnumTagMultiPayload();
  v1 = *(v0 + 1432);
  v2 = *(v0 + 1424);
  v3 = *(v0 + 1408);
  v4 = *(v0 + 1400);
  v5 = *(v0 + 1392);
  v6 = *(v0 + 1384);
  v7 = *(v0 + 1376);
  v8 = *(v0 + 1352);
  v9 = *(v0 + 1344);
  v10 = *(v0 + 1336);
  v13 = *(v0 + 1312);
  v14 = *(v0 + 1304);
  v15 = *(v0 + 1296);
  v16 = *(v0 + 1288);
  v17 = *(v0 + 1280);
  v18 = *(v0 + 1272);
  v19 = *(v0 + 1264);
  v20 = *(v0 + 1256);
  v21 = *(v0 + 1248);
  v22 = *(v0 + 1240);
  v23 = *(v0 + 1232);
  v24 = *(v0 + 1208);
  v25 = *(v0 + 1200);
  v26 = *(v0 + 1192);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1D308DC30(char a1)
{
  v2 = *(*v1 + 2600);
  v4 = *v1;
  *(*v1 + 2659) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D308DD30, 0, 0);
}

uint64_t sub_1D308DD30()
{
  **(v0 + 1136) = *(v0 + 2659);
  type metadata accessor for Helper.Reply(0);
  swift_storeEnumTagMultiPayload();
  v1 = *(v0 + 1432);
  v2 = *(v0 + 1424);
  v3 = *(v0 + 1408);
  v4 = *(v0 + 1400);
  v5 = *(v0 + 1392);
  v6 = *(v0 + 1384);
  v7 = *(v0 + 1376);
  v8 = *(v0 + 1352);
  v9 = *(v0 + 1344);
  v10 = *(v0 + 1336);
  v13 = *(v0 + 1312);
  v14 = *(v0 + 1304);
  v15 = *(v0 + 1296);
  v16 = *(v0 + 1288);
  v17 = *(v0 + 1280);
  v18 = *(v0 + 1272);
  v19 = *(v0 + 1264);
  v20 = *(v0 + 1256);
  v21 = *(v0 + 1248);
  v22 = *(v0 + 1240);
  v23 = *(v0 + 1232);
  v24 = *(v0 + 1208);
  v25 = *(v0 + 1200);
  v26 = *(v0 + 1192);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1D308DF08()
{
  v1 = *(*v0 + 2616);
  v2 = *(*v0 + 2608);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D308E020, 0, 0);
}

uint64_t sub_1D308E020()
{
  v1 = v0[142];
  type metadata accessor for Helper.Reply(0);
  swift_storeEnumTagMultiPayload();
  v2 = v0[179];
  v3 = v0[178];
  v4 = v0[176];
  v5 = v0[175];
  v6 = v0[174];
  v7 = v0[173];
  v8 = v0[172];
  v9 = v0[169];
  v10 = v0[168];
  v11 = v0[167];
  v14 = v0[164];
  v15 = v0[163];
  v16 = v0[162];
  v17 = v0[161];
  v18 = v0[160];
  v19 = v0[159];
  v20 = v0[158];
  v21 = v0[157];
  v22 = v0[156];
  v23 = v0[155];
  v24 = v0[154];
  v25 = v0[151];
  v26 = v0[150];
  v27 = v0[149];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1D308E1F0()
{
  v27 = v0[182];
  v1 = v0[179];
  v2 = v0[178];
  v3 = v0[176];
  v4 = v0[175];
  v5 = v0[174];
  v6 = v0[173];
  v7 = v0[172];
  v8 = v0[169];
  v9 = v0[168];
  v10 = v0[167];
  v13 = v0[164];
  v14 = v0[163];
  v15 = v0[162];
  v16 = v0[161];
  v17 = v0[160];
  v18 = v0[159];
  v19 = v0[158];
  v20 = v0[157];
  v21 = v0[156];
  v22 = v0[155];
  v23 = v0[154];
  v24 = v0[151];
  v25 = v0[150];
  v26 = v0[149];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1D308E3B0()
{
  v1 = v0[184];
  v2 = v0[183];

  v29 = v0[186];
  v3 = v0[179];
  v4 = v0[178];
  v5 = v0[176];
  v6 = v0[175];
  v7 = v0[174];
  v8 = v0[173];
  v9 = v0[172];
  v10 = v0[169];
  v11 = v0[168];
  v12 = v0[167];
  v15 = v0[164];
  v16 = v0[163];
  v17 = v0[162];
  v18 = v0[161];
  v19 = v0[160];
  v20 = v0[159];
  v21 = v0[158];
  v22 = v0[157];
  v23 = v0[156];
  v24 = v0[155];
  v25 = v0[154];
  v26 = v0[151];
  v27 = v0[150];
  v28 = v0[149];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1D308E584()
{
  v1 = v0[190];

  v28 = v0[192];
  v2 = v0[179];
  v3 = v0[178];
  v4 = v0[176];
  v5 = v0[175];
  v6 = v0[174];
  v7 = v0[173];
  v8 = v0[172];
  v9 = v0[169];
  v10 = v0[168];
  v11 = v0[167];
  v14 = v0[164];
  v15 = v0[163];
  v16 = v0[162];
  v17 = v0[161];
  v18 = v0[160];
  v19 = v0[159];
  v20 = v0[158];
  v21 = v0[157];
  v22 = v0[156];
  v23 = v0[155];
  v24 = v0[154];
  v25 = v0[151];
  v26 = v0[150];
  v27 = v0[149];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1D308E74C()
{
  v1 = v0[195];

  v28 = v0[197];
  v2 = v0[179];
  v3 = v0[178];
  v4 = v0[176];
  v5 = v0[175];
  v6 = v0[174];
  v7 = v0[173];
  v8 = v0[172];
  v9 = v0[169];
  v10 = v0[168];
  v11 = v0[167];
  v14 = v0[164];
  v15 = v0[163];
  v16 = v0[162];
  v17 = v0[161];
  v18 = v0[160];
  v19 = v0[159];
  v20 = v0[158];
  v21 = v0[157];
  v22 = v0[156];
  v23 = v0[155];
  v24 = v0[154];
  v25 = v0[151];
  v26 = v0[150];
  v27 = v0[149];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1D308E914()
{
  v27 = v0[202];
  v1 = v0[179];
  v2 = v0[178];
  v3 = v0[176];
  v4 = v0[175];
  v5 = v0[174];
  v6 = v0[173];
  v7 = v0[172];
  v8 = v0[169];
  v9 = v0[168];
  v10 = v0[167];
  v13 = v0[164];
  v14 = v0[163];
  v15 = v0[162];
  v16 = v0[161];
  v17 = v0[160];
  v18 = v0[159];
  v19 = v0[158];
  v20 = v0[157];
  v21 = v0[156];
  v22 = v0[155];
  v23 = v0[154];
  v24 = v0[151];
  v25 = v0[150];
  v26 = v0[149];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1D308EAD4()
{
  v27 = v0[204];
  v1 = v0[179];
  v2 = v0[178];
  v3 = v0[176];
  v4 = v0[175];
  v5 = v0[174];
  v6 = v0[173];
  v7 = v0[172];
  v8 = v0[169];
  v9 = v0[168];
  v10 = v0[167];
  v13 = v0[164];
  v14 = v0[163];
  v15 = v0[162];
  v16 = v0[161];
  v17 = v0[160];
  v18 = v0[159];
  v19 = v0[158];
  v20 = v0[157];
  v21 = v0[156];
  v22 = v0[155];
  v23 = v0[154];
  v24 = v0[151];
  v25 = v0[150];
  v26 = v0[149];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1D308EC94()
{
  v1 = v0[207];
  v2 = v0[206];

  v29 = v0[209];
  v3 = v0[179];
  v4 = v0[178];
  v5 = v0[176];
  v6 = v0[175];
  v7 = v0[174];
  v8 = v0[173];
  v9 = v0[172];
  v10 = v0[169];
  v11 = v0[168];
  v12 = v0[167];
  v15 = v0[164];
  v16 = v0[163];
  v17 = v0[162];
  v18 = v0[161];
  v19 = v0[160];
  v20 = v0[159];
  v21 = v0[158];
  v22 = v0[157];
  v23 = v0[156];
  v24 = v0[155];
  v25 = v0[154];
  v26 = v0[151];
  v27 = v0[150];
  v28 = v0[149];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1D308EE68()
{
  v1 = v0[213];
  v2 = v0[212];
  v3 = v0[211];
  v4 = v0[174];
  (*(v0[171] + 8))(v0[173], v0[170]);
  sub_1D3065284(v4, type metadata accessor for AssetPackHost);

  v31 = v0[215];
  v5 = v0[179];
  v6 = v0[178];
  v7 = v0[176];
  v8 = v0[175];
  v9 = v0[174];
  v10 = v0[173];
  v11 = v0[172];
  v12 = v0[169];
  v13 = v0[168];
  v14 = v0[167];
  v17 = v0[164];
  v18 = v0[163];
  v19 = v0[162];
  v20 = v0[161];
  v21 = v0[160];
  v22 = v0[159];
  v23 = v0[158];
  v24 = v0[157];
  v25 = v0[156];
  v26 = v0[155];
  v27 = v0[154];
  v28 = v0[151];
  v29 = v0[150];
  v30 = v0[149];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1D308F088()
{
  v1 = v0[218];
  v2 = v0[217];
  v3 = v0[216];

  v30 = v0[220];
  v4 = v0[179];
  v5 = v0[178];
  v6 = v0[176];
  v7 = v0[175];
  v8 = v0[174];
  v9 = v0[173];
  v10 = v0[172];
  v11 = v0[169];
  v12 = v0[168];
  v13 = v0[167];
  v16 = v0[164];
  v17 = v0[163];
  v18 = v0[162];
  v19 = v0[161];
  v20 = v0[160];
  v21 = v0[159];
  v22 = v0[158];
  v23 = v0[157];
  v24 = v0[156];
  v25 = v0[155];
  v26 = v0[154];
  v27 = v0[151];
  v28 = v0[150];
  v29 = v0[149];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1D308F268()
{
  v27 = v0[222];
  v1 = v0[179];
  v2 = v0[178];
  v3 = v0[176];
  v4 = v0[175];
  v5 = v0[174];
  v6 = v0[173];
  v7 = v0[172];
  v8 = v0[169];
  v9 = v0[168];
  v10 = v0[167];
  v13 = v0[164];
  v14 = v0[163];
  v15 = v0[162];
  v16 = v0[161];
  v17 = v0[160];
  v18 = v0[159];
  v19 = v0[158];
  v20 = v0[157];
  v21 = v0[156];
  v22 = v0[155];
  v23 = v0[154];
  v24 = v0[151];
  v25 = v0[150];
  v26 = v0[149];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1D308F428()
{
  v1 = v0[225];
  v2 = v0[224];
  v3 = v0[223];

  v30 = v0[227];
  v4 = v0[179];
  v5 = v0[178];
  v6 = v0[176];
  v7 = v0[175];
  v8 = v0[174];
  v9 = v0[173];
  v10 = v0[172];
  v11 = v0[169];
  v12 = v0[168];
  v13 = v0[167];
  v16 = v0[164];
  v17 = v0[163];
  v18 = v0[162];
  v19 = v0[161];
  v20 = v0[160];
  v21 = v0[159];
  v22 = v0[158];
  v23 = v0[157];
  v24 = v0[156];
  v25 = v0[155];
  v26 = v0[154];
  v27 = v0[151];
  v28 = v0[150];
  v29 = v0[149];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1D308F608()
{
  v1 = v0[230];
  v2 = v0[229];
  v3 = v0[228];

  v30 = v0[232];
  v4 = v0[179];
  v5 = v0[178];
  v6 = v0[176];
  v7 = v0[175];
  v8 = v0[174];
  v9 = v0[173];
  v10 = v0[172];
  v11 = v0[169];
  v12 = v0[168];
  v13 = v0[167];
  v16 = v0[164];
  v17 = v0[163];
  v18 = v0[162];
  v19 = v0[161];
  v20 = v0[160];
  v21 = v0[159];
  v22 = v0[158];
  v23 = v0[157];
  v24 = v0[156];
  v25 = v0[155];
  v26 = v0[154];
  v27 = v0[151];
  v28 = v0[150];
  v29 = v0[149];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1D308F7E8()
{
  v1 = v0[235];
  v2 = v0[234];
  v3 = v0[233];

  v30 = v0[237];
  v4 = v0[179];
  v5 = v0[178];
  v6 = v0[176];
  v7 = v0[175];
  v8 = v0[174];
  v9 = v0[173];
  v10 = v0[172];
  v11 = v0[169];
  v12 = v0[168];
  v13 = v0[167];
  v16 = v0[164];
  v17 = v0[163];
  v18 = v0[162];
  v19 = v0[161];
  v20 = v0[160];
  v21 = v0[159];
  v22 = v0[158];
  v23 = v0[157];
  v24 = v0[156];
  v25 = v0[155];
  v26 = v0[154];
  v27 = v0[151];
  v28 = v0[150];
  v29 = v0[149];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1D308F9C8()
{
  v1 = *(v0 + 1920);
  v2 = *(v0 + 1912);
  v3 = *(v0 + 1904);

  v30 = *(v0 + 1944);
  v4 = *(v0 + 1432);
  v5 = *(v0 + 1424);
  v6 = *(v0 + 1408);
  v7 = *(v0 + 1400);
  v8 = *(v0 + 1392);
  v9 = *(v0 + 1384);
  v10 = *(v0 + 1376);
  v11 = *(v0 + 1352);
  v12 = *(v0 + 1344);
  v13 = *(v0 + 1336);
  v16 = *(v0 + 1312);
  v17 = *(v0 + 1304);
  v18 = *(v0 + 1296);
  v19 = *(v0 + 1288);
  v20 = *(v0 + 1280);
  v21 = *(v0 + 1272);
  v22 = *(v0 + 1264);
  v23 = *(v0 + 1256);
  v24 = *(v0 + 1248);
  v25 = *(v0 + 1240);
  v26 = *(v0 + 1232);
  v27 = *(v0 + 1208);
  v28 = *(v0 + 1200);
  v29 = *(v0 + 1192);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1D308FBB4()
{
  v1 = v0[246];
  v2 = v0[245];
  v3 = v0[244];

  v30 = v0[248];
  v4 = v0[179];
  v5 = v0[178];
  v6 = v0[176];
  v7 = v0[175];
  v8 = v0[174];
  v9 = v0[173];
  v10 = v0[172];
  v11 = v0[169];
  v12 = v0[168];
  v13 = v0[167];
  v16 = v0[164];
  v17 = v0[163];
  v18 = v0[162];
  v19 = v0[161];
  v20 = v0[160];
  v21 = v0[159];
  v22 = v0[158];
  v23 = v0[157];
  v24 = v0[156];
  v25 = v0[155];
  v26 = v0[154];
  v27 = v0[151];
  v28 = v0[150];
  v29 = v0[149];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1D308FD94()
{
  v1 = v0[249];

  v28 = v0[251];
  v2 = v0[179];
  v3 = v0[178];
  v4 = v0[176];
  v5 = v0[175];
  v6 = v0[174];
  v7 = v0[173];
  v8 = v0[172];
  v9 = v0[169];
  v10 = v0[168];
  v11 = v0[167];
  v14 = v0[164];
  v15 = v0[163];
  v16 = v0[162];
  v17 = v0[161];
  v18 = v0[160];
  v19 = v0[159];
  v20 = v0[158];
  v21 = v0[157];
  v22 = v0[156];
  v23 = v0[155];
  v24 = v0[154];
  v25 = v0[151];
  v26 = v0[150];
  v27 = v0[149];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1D308FF5C()
{
  v1 = v0[252];

  v28 = v0[254];
  v2 = v0[179];
  v3 = v0[178];
  v4 = v0[176];
  v5 = v0[175];
  v6 = v0[174];
  v7 = v0[173];
  v8 = v0[172];
  v9 = v0[169];
  v10 = v0[168];
  v11 = v0[167];
  v14 = v0[164];
  v15 = v0[163];
  v16 = v0[162];
  v17 = v0[161];
  v18 = v0[160];
  v19 = v0[159];
  v20 = v0[158];
  v21 = v0[157];
  v22 = v0[156];
  v23 = v0[155];
  v24 = v0[154];
  v25 = v0[151];
  v26 = v0[150];
  v27 = v0[149];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1D3090124()
{
  v1 = v0[265];
  v2 = v0[264];

  v29 = v0[267];
  v3 = v0[179];
  v4 = v0[178];
  v5 = v0[176];
  v6 = v0[175];
  v7 = v0[174];
  v8 = v0[173];
  v9 = v0[172];
  v10 = v0[169];
  v11 = v0[168];
  v12 = v0[167];
  v15 = v0[164];
  v16 = v0[163];
  v17 = v0[162];
  v18 = v0[161];
  v19 = v0[160];
  v20 = v0[159];
  v21 = v0[158];
  v22 = v0[157];
  v23 = v0[156];
  v24 = v0[155];
  v25 = v0[154];
  v26 = v0[151];
  v27 = v0[150];
  v28 = v0[149];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1D30902F8()
{
  v27 = v0[269];
  v1 = v0[179];
  v2 = v0[178];
  v3 = v0[176];
  v4 = v0[175];
  v5 = v0[174];
  v6 = v0[173];
  v7 = v0[172];
  v8 = v0[169];
  v9 = v0[168];
  v10 = v0[167];
  v13 = v0[164];
  v14 = v0[163];
  v15 = v0[162];
  v16 = v0[161];
  v17 = v0[160];
  v18 = v0[159];
  v19 = v0[158];
  v20 = v0[157];
  v21 = v0[156];
  v22 = v0[155];
  v23 = v0[154];
  v24 = v0[151];
  v25 = v0[150];
  v26 = v0[149];

  v11 = v0[1];

  return v11();
}