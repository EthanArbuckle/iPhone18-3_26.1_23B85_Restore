uint64_t sub_24AC31DD4()
{
  v1 = v0[8];

  v2 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t sub_24AC31E40()
{
  v1 = v0[8];
  v2 = v0[9];

  v3 = v0[11];
  v4 = v0[6];

  v5 = v0[1];

  return v5();
}

uint64_t sub_24AC31EB4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v25 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF00, &qword_24ACD3BC8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F0, &unk_24ACD4130);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v24[-v15];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
  v18 = *(v17 - 8);
  (*(v18 + 16))(v16, a1, v17);
  (*(v18 + 56))(v16, 0, 1, v17);
  v19 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_cancelConnectContinuation;
  swift_beginAccess();
  sub_24AC463C4(v16, a2 + v19, &qword_27EF9E4F0, &unk_24ACD4130);
  swift_endAccess();
  v20 = sub_24ACD07C0();
  (*(*(v20 - 8) + 56))(v12, 1, 1, v20);
  v21 = sub_24AC46D0C(&unk_2814AE1A8, type metadata accessor for Peripheral);
  v22 = swift_allocObject();
  *(v22 + 16) = a2;
  *(v22 + 24) = v21;
  *(v22 + 32) = a2;
  *(v22 + 40) = a3;
  *(v22 + 48) = v25 & 1;
  *(v22 + 56) = a5;
  swift_retain_n();

  sub_24AC7EA6C(0, 0, v12, &unk_24ACD45C0, v22);
}

uint64_t sub_24AC3214C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v7 + 56) = a5;
  *(v7 + 64) = a7;
  *(v7 + 128) = a6;
  *(v7 + 48) = a4;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F0, &unk_24ACD4130) - 8) + 64) + 15;
  *(v7 + 72) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
  *(v7 + 80) = v10;
  v11 = *(v10 - 8);
  *(v7 + 88) = v11;
  v12 = *(v11 + 64) + 15;
  *(v7 + 96) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC3225C, a4, 0);
}

uint64_t sub_24AC3225C()
{
  v11 = v0;
  if (*(v0 + 128))
  {
    v1 = 0;
  }

  else
  {
    v10 = *(v0 + 56);
    v2 = sub_24ACA7788();
    if (v2)
    {
      v3 = v2;
      v4 = MEMORY[0x277D84F98];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = v4;
      sub_24AC4753C(v3, sub_24AC46D60, 0, isUniquelyReferenced_nonNull_native, &v10);

      v1 = v10;
    }

    else
    {
      v1 = MEMORY[0x277D84F98];
    }
  }

  *(v0 + 104) = v1;
  v6 = swift_task_alloc();
  *(v0 + 112) = v6;
  *v6 = v0;
  v6[1] = sub_24AC32384;
  v7 = *(v0 + 64);
  v8 = *(v0 + 48);

  return sub_24AC80820(v8, v1);
}

uint64_t sub_24AC32384()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;
  *(*v1 + 120) = v0;

  v5 = *(v2 + 48);
  if (v0)
  {
    v6 = sub_24AC32524;
  }

  else
  {
    v6 = sub_24AC324B0;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24AC324B0()
{
  v1 = v0[13];

  v2 = v0[12];
  v3 = v0[9];

  v4 = v0[1];

  return v4();
}

uint64_t sub_24AC32524()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  v4 = *(v0 + 72);
  v5 = *(v0 + 48);

  v6 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_cancelConnectContinuation;
  swift_beginAccess();
  sub_24AC2B5DC(v5 + v6, v4, &qword_27EF9E4F0, &unk_24ACD4130);
  if ((*(v3 + 48))(v4, 1, v2))
  {
    v7 = *(v0 + 72);

    sub_24AC212F4(v7, &qword_27EF9E4F0, &unk_24ACD4130);
  }

  else
  {
    v8 = *(v0 + 120);
    v10 = *(v0 + 88);
    v9 = *(v0 + 96);
    v12 = *(v0 + 72);
    v11 = *(v0 + 80);
    (*(v10 + 16))(v9, v12, v11);
    sub_24AC212F4(v12, &qword_27EF9E4F0, &unk_24ACD4130);
    *(v0 + 40) = v8;
    sub_24ACD0750();
    (*(v10 + 8))(v9, v11);
  }

  v13 = *(v0 + 96);
  v14 = *(v0 + 72);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_24AC326C0()
{
  v1 = v0[2];
  Strong = swift_weakLoadStrong();
  v0[3] = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_24AC327EC, Strong, 0);
  }

  else
  {
    type metadata accessor for CentralManager.Error();
    sub_24AC46D0C(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v3 = v0[1];

    return v3(0);
  }
}

uint64_t sub_24AC327EC(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = *(*(v3 + 24) + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_pairingAgent);
  *(v3 + 32) = v4;
  if (v4)
  {

    a1 = sub_24AC32874;
    a2 = v4;
    a3 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](a1, a2, a3);
}

uint64_t sub_24AC32874()
{
  v1 = *(v0 + 16);
  *(v0 + 40) = [*(*(v0 + 32) + OBJC_IVAR____TtC15FindMyBluetooth12PairingAgent_underlyingObject) isPeerPaired_];

  return MEMORY[0x2822009F8](sub_24AC32910, v1, 0);
}

uint64_t sub_24AC32910()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);
  v3 = *(v0 + 40);

  return v2(v3);
}

uint64_t sub_24AC32998()
{
  v1 = v0[2];
  Strong = swift_weakLoadStrong();
  v0[3] = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_24AC32AC0, Strong, 0);
  }

  else
  {
    type metadata accessor for CentralManager.Error();
    sub_24AC46D0C(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v3 = v0[1];

    return v3();
  }
}

void sub_24AC32AC0()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_pairingAgent);
  v0[4] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[5] = v2;
    *v2 = v0;
    v2[1] = sub_24AC32B7C;
    v3 = v0[2];

    sub_24AC730F8(v3);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24AC32B7C()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v9 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = v2[3];
    v5 = sub_24AC32D08;
  }

  else
  {
    v6 = v2[4];
    v7 = v2[2];

    v5 = sub_24AC32CA4;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_24AC32CA4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24AC32D08()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);

  return MEMORY[0x2822009F8](sub_24AC32D74, v2, 0);
}

uint64_t sub_24AC32D74()
{
  v1 = v0[3];

  v2 = v0[6];
  v3 = v0[1];

  return v3();
}

uint64_t sub_24AC32DF8()
{
  v1 = v0[2];
  Strong = swift_weakLoadStrong();
  v0[3] = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_24AC32F20, Strong, 0);
  }

  else
  {
    type metadata accessor for CentralManager.Error();
    sub_24AC46D0C(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v3 = v0[1];

    return v3();
  }
}

void sub_24AC32F20()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_pairingAgent);
  v0[4] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[5] = v2;
    *v2 = v0;
    v2[1] = sub_24AC32FDC;
    v3 = v0[2];

    sub_24AC74064(v3);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24AC32FDC()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v9 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = v2[3];
    v5 = sub_24AC33104;
  }

  else
  {
    v6 = v2[4];
    v7 = v2[2];

    v5 = sub_24AC47C20;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_24AC33104()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);

  return MEMORY[0x2822009F8](sub_24AC47C10, v2, 0);
}

uint64_t sub_24AC33170(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = type metadata accessor for PeerPath();
  v2[10] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E048, &qword_24ACD5910) - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v6 = sub_24ACD0090();
  v2[14] = v6;
  v7 = *(v6 - 8);
  v2[15] = v7;
  v8 = *(v7 + 64) + 15;
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC332BC, v1, 0);
}

uint64_t sub_24AC332BC()
{
  v65 = v0;
  v1 = v0[9];
  if (swift_weakLoadStrong())
  {
    v2 = v0[14];
    v3 = v0[15];
    v4 = v0[13];
    v5 = v0[9];

    v6 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_macAddress;
    swift_beginAccess();
    sub_24AC2B5DC(v5 + v6, v4, &qword_27EF9E048, &qword_24ACD5910);
    if ((*(v3 + 48))(v4, 1, v2) == 1)
    {
      v7 = v0[14];
      v8 = v0[15];
      v9 = v0[12];
      v10 = v0[8];
      sub_24AC212F4(v0[13], &qword_27EF9E048, &qword_24ACD5910);
      (*(v8 + 16))(v9, v10, v7);
      (*(v8 + 56))(v9, 0, 1, v7);
      swift_beginAccess();
      sub_24AC463C4(v9, v5 + v6, &qword_27EF9E048, &qword_24ACD5910);
      swift_endAccess();
    }

    else
    {
      (*(v0[15] + 32))(v0[18], v0[13], v0[14]);
      if (qword_27EF9DC38 != -1)
      {
        swift_once();
      }

      v18 = v0[17];
      v19 = v0[18];
      v21 = v0[15];
      v20 = v0[16];
      v22 = v0[14];
      v23 = v0[8];
      v24 = v0[9];
      v25 = sub_24ACD0490();
      __swift_project_value_buffer(v25, qword_27EF9E010);
      v26 = *(v21 + 16);
      v26(v18, v19, v22);
      v26(v20, v23, v22);

      v27 = sub_24ACD0470();
      v28 = sub_24ACD0930();

      v29 = os_log_type_enabled(v27, v28);
      v30 = v0[17];
      v31 = v0[18];
      v32 = v0[15];
      v33 = v0[16];
      v34 = v0[14];
      if (v29)
      {
        log = v27;
        v63 = v0[18];
        v35 = v0[10];
        v36 = v0[11];
        v37 = v0[9];
        v38 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v64[0] = v61;
        *v38 = 136447235;
        sub_24AC2A3DC(v37 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_peerPath, v36);
        v39 = (v36 + *(v35 + 32));
        v60 = v28;
        v40 = *v39;
        v41 = v39[1];

        sub_24AC47AEC(v36, type metadata accessor for PeerPath);
        v42 = sub_24AC29E20(v40, v41, v64);

        *(v38 + 4) = v42;
        *(v38 + 12) = 2160;
        *(v38 + 14) = 1752392040;
        *(v38 + 22) = 2081;
        sub_24AC46D0C(&qword_27EF9E080, MEMORY[0x277D088D0]);
        v43 = sub_24ACD0C20();
        v45 = v44;
        v46 = *(v32 + 8);
        v46(v30, v34);
        v47 = sub_24AC29E20(v43, v45, v64);

        *(v38 + 24) = v47;
        *(v38 + 32) = 2160;
        *(v38 + 34) = 1752392040;
        *(v38 + 42) = 2081;
        v48 = sub_24ACD0C20();
        v50 = v49;
        v46(v33, v34);
        v51 = sub_24AC29E20(v48, v50, v64);

        *(v38 + 44) = v51;
        _os_log_impl(&dword_24AC18000, log, v60, "%{public}s: Not setting MAC address. Existing: %{private,mask.hash}s new: %{private,mask.hash}s", v38, 0x34u);
        swift_arrayDestroy();
        MEMORY[0x24C22DC60](v61, -1, -1);
        MEMORY[0x24C22DC60](v38, -1, -1);

        v46(v63, v34);
      }

      else
      {

        v52 = *(v32 + 8);
        v52(v33, v34);
        v52(v30, v34);
        v52(v31, v34);
      }
    }

    v54 = v0[17];
    v53 = v0[18];
    v55 = v0[16];
    v57 = v0[12];
    v56 = v0[13];
    v58 = v0[11];

    v17 = v0[1];
  }

  else
  {
    v12 = v0[17];
    v11 = v0[18];
    v13 = v0[16];
    v14 = v0[12];
    v15 = v0[13];
    v16 = v0[11];
    type metadata accessor for CentralManager.Error();
    sub_24AC46D0C(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v17 = v0[1];
  }

  return v17();
}

uint64_t sub_24AC338AC(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v2[8] = *v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F0, &unk_24ACD4130) - 8) + 64) + 15;
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC33970, v1, 0);
}

uint64_t sub_24AC33970()
{
  v1 = v0[7];
  if (!swift_weakLoadStrong())
  {
    goto LABEL_7;
  }

  v2 = v0[7];

  if ([*(v2 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_underlyingObject) state] != 2)
  {
    goto LABEL_7;
  }

  v3 = v0[9];
  v4 = v0[7];
  v5 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_discoverServicesContinuation;
  swift_beginAccess();
  sub_24AC2B5DC(v4 + v5, v3, &qword_27EF9E4F0, &unk_24ACD4130);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
  LODWORD(v4) = (*(*(v6 - 8) + 48))(v3, 1, v6);
  sub_24AC212F4(v3, &qword_27EF9E4F0, &unk_24ACD4130);
  if (v4 == 1)
  {
    v7 = v0[7];
    v8 = v0[8];
    v9 = v0[6];
    v10 = swift_task_alloc();
    v0[10] = v10;
    v10[2] = v7;
    v10[3] = v9;
    v10[4] = v8;
    v11 = swift_task_alloc();
    v0[11] = v11;
    *(v11 + 16) = v7;
    *(v11 + 24) = v8;
    v12 = sub_24AC46D0C(&unk_2814AE1A8, type metadata accessor for Peripheral);
    v13 = *(MEMORY[0x277D85A10] + 4);
    v14 = swift_task_alloc();
    v0[12] = v14;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E088, &qword_24ACD41B0);
    *v14 = v0;
    v14[1] = sub_24AC33D3C;

    return MEMORY[0x282200830](v0 + 5, &unk_24ACD41A8, v10, sub_24AC44E24, v11, v7, v12, v15);
  }

  else
  {
LABEL_7:
    type metadata accessor for CentralManager.Error();
    sub_24AC46D0C(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v16 = v0[9];

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_24AC33D3C()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v10 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = v2[7];
    v5 = sub_24AC33ED8;
  }

  else
  {
    v7 = v2[10];
    v6 = v2[11];
    v8 = v2[7];

    v5 = sub_24AC33E6C;
    v4 = v8;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_24AC33E6C()
{
  v1 = v0[9];
  v2 = v0[5];

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_24AC33ED8()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[13];
  v4 = v0[9];

  v5 = v0[1];

  return v5();
}

uint64_t sub_24AC33F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a3;
  v4[20] = a4;
  v4[17] = a1;
  v4[18] = a2;
  v6 = type metadata accessor for PeerPath();
  v4[21] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v4[22] = swift_task_alloc();
  v8 = sub_24ACD0420();
  v4[23] = v8;
  v9 = *(v8 - 8);
  v4[24] = v9;
  v10 = *(v9 + 64) + 15;
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E090, &qword_24ACD37C0);
  v4[27] = v11;
  v12 = *(v11 - 8);
  v4[28] = v12;
  v13 = *(v12 + 64) + 15;
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC34118, a2, 0);
}

uint64_t sub_24AC34118()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v4 = sub_24AC46D0C(&unk_2814AE1A8, type metadata accessor for Peripheral);
  v5 = swift_task_alloc();
  v0[38] = v5;
  v5[2] = v3;
  v5[3] = v2;
  v5[4] = v1;
  v6 = *(MEMORY[0x277D85A40] + 4);
  v7 = swift_task_alloc();
  v0[39] = v7;
  *v7 = v0;
  v7[1] = sub_24AC34254;
  v8 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v7, v3, v4, 0xD00000000000001DLL, 0x800000024ACD9A70, sub_24AC46D54, v5, v8);
}

uint64_t sub_24AC34254()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v9 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v4 = *(v2 + 144);
    v5 = sub_24AC26694;
  }

  else
  {
    v6 = *(v2 + 304);
    v7 = *(v2 + 144);

    v5 = sub_24AC3437C;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_24AC3437C()
{
  v206 = v0;
  v1 = [*(v0[18] + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_underlyingObject) services];
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = v1;
    v4 = v0[28];
    v6 = v0[18];
    v5 = v0[19];
    sub_24AC2B8F8(0, &qword_27EF9E0F8, 0x277CBE098);
    v7 = sub_24ACD0700();
    v0[41] = v7;

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = v2;
    }

    v0[42] = sub_24AC653D0(v8);

    v9 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_services;
    v0[43] = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_services;
    swift_beginAccess();
    v10 = *(v6 + v9);
    v11 = v2;
    v12 = -1;
    v13 = -1 << *(v10 + 32);
    if (-v13 < 64)
    {
      v12 = ~(-1 << -v13);
    }

    v14 = v12 & *(v10 + 64);
    v15 = (63 - v13) >> 6;
    v16 = (v4 + 16);
    v199 = (v4 + 32);
    swift_bridgeObjectRetain_n();
    v17 = 0;
    if (!v14)
    {
      goto LABEL_10;
    }

    do
    {
LABEL_8:
      while (1)
      {
        v18 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
        if (*(*(v10 + 56) + ((v17 << 9) | (8 * v18))))
        {
          break;
        }

        if (!v14)
        {
          goto LABEL_10;
        }
      }

      v189 = v0[36];
      v192 = v0[37];
      v20 = v16;
      v21 = v0[27];
      v195 = v20;
      (*v20)();
      v22 = v192;
      v193 = *v199;
      (*v199)(v22, v189, v21);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_24AC1D2F8(0, v11[2] + 1, 1, v11);
      }

      v24 = v11[2];
      v23 = v11[3];
      v25 = v24 + 1;
      if (v24 >= v23 >> 1)
      {
        v28 = sub_24AC1D2F8(v23 > 1, v24 + 1, 1, v11);
        v25 = v24 + 1;
        v11 = v28;
      }

      v26 = v0[37];
      v27 = v0[27];
      v11[2] = v25;
      v193(v11 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v24, v26, v27);
      v16 = v195;
    }

    while (v14);
    while (1)
    {
LABEL_10:
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_104;
      }

      if (v19 >= v15)
      {
        break;
      }

      v14 = *(v10 + 64 + 8 * v19);
      ++v17;
      if (v14)
      {
        v17 = v19;
        goto LABEL_8;
      }
    }

    v0[44] = sub_24AC653D0(v11);

    if (v7 >> 62)
    {
      goto LABEL_109;
    }

    result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  else
  {
LABEL_84:
    v154 = v0[18];
    v155 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_services;
    swift_beginAccess();
    v156 = *(v154 + v155);
    v157 = *(v156 + 64);
    v205 = v2;
    v158 = -1;
    v159 = -1 << *(v156 + 32);
    if (-v159 < 64)
    {
      v158 = ~(-1 << -v159);
    }

    v160 = v158 & v157;
    v161 = (63 - v159) >> 6;
    swift_bridgeObjectRetain_n();
    v162 = 0;
    if (!v160)
    {
      goto LABEL_89;
    }

    do
    {
LABEL_87:
      while (1)
      {
        v163 = __clz(__rbit64(v160));
        v160 &= v160 - 1;
        v164 = *(v156 + 56);
        v165 = (v162 << 9) | (8 * v163);
        if (*(v164 + v165))
        {
          break;
        }

        if (!v160)
        {
          goto LABEL_89;
        }
      }

      v167 = *(v164 + v165);

      MEMORY[0x24C22CE30](v168);
      if (*((v205 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v205 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v169 = *((v205 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_24ACD0720();
      }

      sub_24ACD0730();
      v2 = v205;
    }

    while (v160);
LABEL_89:
    while (1)
    {
      v166 = v162 + 1;
      if (__OFADD__(v162, 1))
      {
        break;
      }

      if (v166 >= v161)
      {
        v171 = v0[36];
        v170 = v0[37];
        v173 = v0[34];
        v172 = v0[35];
        v175 = v0[32];
        v174 = v0[33];
        v186 = v0[31];
        v188 = v0[30];
        v191 = v0[29];
        v194 = v0[26];
        v198 = v0[25];
        v204 = v0[22];
        v176 = v0[17];

        *v176 = v2;

        v177 = v0[1];

        return v177();
      }

      v160 = *(v156 + 64 + 8 * v166);
      ++v162;
      if (v160)
      {
        v162 = v166;
        goto LABEL_87;
      }
    }

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
    result = sub_24ACD0B30();
  }

  v0[45] = result;
  if (!result)
  {
    goto LABEL_40;
  }

  v30 = 0;
  v0[46] = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_peerPath;
  v31 = 0x278FFC000uLL;
  while (1)
  {
    v32 = v0[41];
    if ((v32 & 0xC000000000000001) != 0)
    {
      v33 = MEMORY[0x24C22D1B0](v30);
    }

    else
    {
      if (v30 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_111:
        __break(1u);
        return result;
      }

      v33 = *(v32 + 8 * v30 + 32);
    }

    v0[47] = v33;
    v0[48] = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      goto LABEL_108;
    }

    v34 = v0[44];
    v35 = v0[35];
    v37 = v0[25];
    v36 = v0[26];
    v38 = v0[23];
    v39 = v0[24];
    v200 = v33;
    v40 = [v33 *(v31 + 3992)];
    CBUUID.uuidValue.getter(v36);

    (*(v39 + 16))(v37, v36, v38);
    v196 = type metadata accessor for Service();
    sub_24ACD0000();
    if (!*(v34 + 16))
    {
      break;
    }

    v41 = v0[44];
    v42 = v0[35];
    v43 = v0[27];
    v44 = *(v41 + 40);
    sub_24AC2B6A8(&qword_27EF9DFD8, &unk_27EF9E090, &qword_24ACD37C0);
    v45 = sub_24ACD0520();
    v46 = -1 << *(v41 + 32);
    v47 = v45 & ~v46;
    if (((*(v41 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v47) & 1) == 0)
    {
      break;
    }

    v48 = ~v46;
    v49 = v0[28];
    v50 = *(v49 + 72);
    v51 = *(v49 + 16);
    v52 = v0[44];
    while (1)
    {
      v53 = v0[34];
      v55 = v0[27];
      v54 = v0[28];
      v51(v53, *(v52 + 48) + v47 * v50, v55);
      sub_24AC2B6A8(&qword_27EF9E140, &unk_27EF9E090, &qword_24ACD37C0);
      v56 = sub_24ACD0550();
      v57 = *(v54 + 8);
      v57(v53, v55);
      if (v56)
      {
        break;
      }

      v52 = v0[44];
      v47 = (v47 + 1) & v48;
      if (((*(v52 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v47) & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    v58 = v0[35];
    v60 = v0[26];
    v59 = v0[27];
    v62 = v0[23];
    v61 = v0[24];

    v57(v58, v59);
    result = (*(v61 + 8))(v60, v62);
    v30 = v0[48];
    v31 = 0x278FFC000;
    if (v30 == v0[45])
    {
      v63 = v0[44];
LABEL_40:

      v71 = v0[43];
      v72 = v0[41];
      v73 = v0[18];

      v74 = *(v73 + v71);
      v75 = -1;
      v76 = -1 << *(v74 + 32);
      if (-v76 < 64)
      {
        v75 = ~(-1 << -v76);
      }

      v77 = v75 & *(v74 + 64);
      v78 = (63 - v76) >> 6;
      swift_bridgeObjectRetain_n();
      v79 = 0;
      v80 = MEMORY[0x277D84F90];
      if (!v77)
      {
        goto LABEL_45;
      }

      do
      {
LABEL_43:
        while (1)
        {
          v81 = __clz(__rbit64(v77));
          v77 &= v77 - 1;
          v82 = *(*(v74 + 56) + ((v79 << 9) | (8 * v81)));
          if (v82)
          {
            break;
          }

          if (!v77)
          {
            goto LABEL_45;
          }
        }

        v84 = v0[32];
        v201 = v0[33];
        v86 = v0[27];
        v85 = v0[28];
        (*(v85 + 16))(v84, v82 + OBJC_IVAR____TtC15FindMyBluetooth7Service_id, v86);
        v87 = v201;
        v202 = *(v85 + 32);
        v202(v87, v84, v86);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v80 = sub_24AC1D2F8(0, v80[2] + 1, 1, v80);
        }

        v89 = v80[2];
        v88 = v80[3];
        if (v89 >= v88 >> 1)
        {
          v80 = sub_24AC1D2F8(v88 > 1, v89 + 1, 1, v80);
        }

        v90 = v0[33];
        v91 = v0[27];
        v92 = v0[28];
        v80[2] = v89 + 1;
        v202(v80 + ((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * v89, v90, v91);
      }

      while (v77);
      while (1)
      {
LABEL_45:
        v83 = v79 + 1;
        if (__OFADD__(v79, 1))
        {
          goto LABEL_105;
        }

        if (v83 >= v78)
        {
          break;
        }

        v77 = *(v74 + 64 + 8 * v83);
        ++v79;
        if (v77)
        {
          v79 = v83;
          goto LABEL_43;
        }
      }

      v93 = v0[42];

      v94 = sub_24AC653D0(v80);

      if (*(v94 + 16) <= *(v93 + 16) >> 3)
      {
        v205 = v0[42];
        sub_24AC5A844(v94);

        v96 = v205;
      }

      else
      {
        v95 = sub_24AC5B4D0(v94, v0[42]);

        v96 = v95;
      }

      v97 = 0;
      v98 = v96 + 56;
      v99 = -1;
      v100 = -1 << *(v96 + 32);
      if (-v100 < 64)
      {
        v99 = ~(-1 << -v100);
      }

      v101 = v99 & *(v96 + 56);
      v180 = v0[18];
      v181 = v0[21];
      v179 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_peerPath;
      v102 = (63 - v100) >> 6;
      v197 = (v0[28] + 8);
      v184 = v102;
      v185 = v96 + 56;
      v187 = v96;
      while (2)
      {
        if (!v101)
        {
          while (1)
          {
            v107 = v97 + 1;
            if (__OFADD__(v97, 1))
            {
              goto LABEL_106;
            }

            if (v107 >= v102)
            {

              v2 = MEMORY[0x277D84F90];
              goto LABEL_84;
            }

            v101 = *(v98 + 8 * v107);
            ++v97;
            if (v101)
            {
              v97 = v107;
              break;
            }
          }
        }

        v109 = v0[30];
        v108 = v0[31];
        v111 = v0[27];
        v110 = v0[28];
        v190 = *(v110 + 72);
        v203 = *(v110 + 16);
        v203(v108, *(v96 + 48) + v190 * (__clz(__rbit64(v101)) | (v97 << 6)), v111);
        (*(v110 + 32))(v109, v108, v111);
        if (qword_27EF9DC38 != -1)
        {
          swift_once();
        }

        v113 = v0[29];
        v112 = v0[30];
        v114 = v0[27];
        v115 = v0[18];
        v116 = sub_24ACD0490();
        __swift_project_value_buffer(v116, qword_27EF9E010);
        v203(v113, v112, v114);

        v117 = sub_24ACD0470();
        v118 = sub_24ACD0930();

        v119 = os_log_type_enabled(v117, v118);
        v120 = v0[29];
        v121 = v0[27];
        if (v119)
        {
          v122 = v0[22];
          v123 = swift_slowAlloc();
          v183 = swift_slowAlloc();
          v205 = v183;
          *v123 = 136446466;
          sub_24AC2A3DC(v180 + v179, v122);
          v124 = (v122 + *(v181 + 32));
          v182 = v118;
          v126 = *v124;
          v125 = v124[1];

          sub_24AC47AEC(v122, type metadata accessor for PeerPath);
          v127 = sub_24AC29E20(v126, v125, &v205);

          *(v123 + 4) = v127;
          *(v123 + 12) = 2082;
          sub_24AC2B6A8(&qword_27EF9E0D0, &unk_27EF9E090, &qword_24ACD37C0);
          v128 = sub_24ACD0C20();
          v130 = v129;
          v131 = *v197;
          (*v197)(v120, v121);
          v132 = sub_24AC29E20(v128, v130, &v205);

          *(v123 + 14) = v132;
          _os_log_impl(&dword_24AC18000, v117, v182, "%{public}s: No service discovered for %{public}s", v123, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x24C22DC60](v183, -1, -1);
          MEMORY[0x24C22DC60](v123, -1, -1);
        }

        else
        {

          v131 = *v197;
          (*v197)(v120, v121);
        }

        v133 = v0[43];
        v134 = v0[30];
        v135 = v0[18];
        swift_beginAccess();
        v136 = *(v135 + v133);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v138 = *(v135 + v133);
        v205 = v138;
        v139 = sub_24AC2ACC8(v134);
        v141 = v138[2];
        v142 = (v140 & 1) == 0;
        v143 = __OFADD__(v141, v142);
        v144 = v141 + v142;
        if (v143)
        {
          goto LABEL_107;
        }

        v145 = v140;
        if (v138[3] >= v144)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_78;
          }

          v153 = v139;
          sub_24AC5E828();
          v139 = v153;
          v138 = v205;
          if (v145)
          {
            goto LABEL_61;
          }

LABEL_79:
          v148 = v0[30];
          v149 = v0[27];
          v138[(v139 >> 6) + 8] |= 1 << v139;
          v150 = v139;
          result = (v203)(v138[6] + v139 * v190, v148, v149);
          *(v138[7] + 8 * v150) = 0;
          v151 = v138[2];
          v143 = __OFADD__(v151, 1);
          v152 = v151 + 1;
          if (v143)
          {
            __break(1u);
            goto LABEL_111;
          }

          v138[2] = v152;
          v104 = 1;
        }

        else
        {
          v146 = v0[30];
          sub_24AC5C5E0(v144, isUniquelyReferenced_nonNull_native);
          v138 = v205;
          v139 = sub_24AC2ACC8(v146);
          if ((v145 & 1) != (v147 & 1))
          {
            v178 = v0[27];

            return sub_24ACD0C80();
          }

LABEL_78:
          if ((v145 & 1) == 0)
          {
            goto LABEL_79;
          }

LABEL_61:
          v103 = v138[7];
          v104 = *(v103 + 8 * v139);
          *(v103 + 8 * v139) = 0;
        }

        v101 &= v101 - 1;
        v105 = v0[30];
        v106 = v0[27];
        *(v0[18] + v0[43]) = v138;
        sub_24AC2B7BC(v104);
        swift_endAccess();
        v131(v105, v106);
        v98 = v185;
        v96 = v187;
        v102 = v184;
        continue;
      }
    }
  }

LABEL_37:
  v64 = v0[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E148, &qword_24ACD4598);
  inited = swift_initStackObject();
  v0[49] = inited;
  *(inited + 16) = v200;
  v66 = *(v196 + 48);
  v67 = *(v196 + 52);
  swift_allocObject();
  v68 = v200;

  v69 = swift_task_alloc();
  v0[50] = v69;
  *v69 = v0;
  v69[1] = sub_24AC352F0;
  v70 = v0[18];

  return sub_24AC224E8(v70, inited);
}

uint64_t sub_24AC352F0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 400);
  v6 = *v2;
  v4[51] = a1;
  v4[52] = v1;

  v7 = v3[49];
  if (v1)
  {
    v8 = v4[44];
    v9 = v4[41];
    v10 = v4[42];
    v11 = v4[18];

    v12 = sub_24AC2654C;
    v13 = v11;
  }

  else
  {
    v13 = v4[18];
    v12 = sub_24AC35454;
  }

  return MEMORY[0x2822009F8](v12, v13, 0);
}

uint64_t sub_24AC35454()
{
  v1 = v0[51];
  v2 = v0[43];
  v3 = v0[35];
  v4 = v0[18];
  swift_beginAccess();

  v5 = *(v4 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v4 + v2);
  *(v4 + v2) = 0x8000000000000000;
  sub_24AC635B4(v1, v3, isUniquelyReferenced_nonNull_native);
  *(v4 + v2) = v10;
  swift_endAccess();
  v7 = swift_task_alloc();
  v0[53] = v7;
  *v7 = v0;
  v7[1] = sub_24AC35570;
  v8 = v0[51];

  return sub_24AC56488();
}

uint64_t sub_24AC35570(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 424);
  v5 = *(*v2 + 144);
  v7 = *v2;
  *(v3 + 432) = a1;
  *(v3 + 440) = a2;

  return MEMORY[0x2822009F8](sub_24AC35688, v5, 0);
}

id sub_24AC35688()
{
  v206 = v0;
  if (qword_27EF9DC38 != -1)
  {
    goto LABEL_89;
  }

  while (1)
  {
    v1 = v0[55];
    v2 = v0[18];
    v187 = sub_24ACD0490();
    __swift_project_value_buffer(v187, qword_27EF9E010);

    v3 = sub_24ACD0470();
    v4 = sub_24ACD0930();

    v5 = os_log_type_enabled(v3, v4);
    v6 = v0[55];
    if (v5)
    {
      v178 = v0[54];
      v180 = v0[51];
      v176 = v0[46];
      v189 = v0[35];
      v182 = v0[28];
      v184 = v0[47];
      v185 = v0[27];
      v192 = v0[24];
      v194 = v0[23];
      v198 = v0[26];
      v8 = v0[21];
      v7 = v0[22];
      v9 = v0[18];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v205 = v11;
      *v10 = 136446466;
      sub_24AC2A3DC(v9 + v176, v7);
      v12 = (v7 + *(v8 + 32));
      v13 = *v12;
      v14 = v12[1];

      sub_24AC47AEC(v7, type metadata accessor for PeerPath);
      v15 = sub_24AC29E20(v13, v14, &v205);

      *(v10 + 4) = v15;
      *(v10 + 12) = 2082;
      v16 = sub_24AC29E20(v178, v6, &v205);

      *(v10 + 14) = v16;
      _os_log_impl(&dword_24AC18000, v3, v4, "%{public}s: Discovered service: %{public}s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C22DC60](v11, -1, -1);
      MEMORY[0x24C22DC60](v10, -1, -1);

      (*(v182 + 8))(v189, v185);
      result = (*(v192 + 8))(v198, v194);
    }

    else
    {
      v18 = v0[51];
      v19 = v0[47];
      v20 = v0[35];
      v21 = v0[27];
      v22 = v0[28];
      v199 = v0[26];
      v24 = v0[23];
      v23 = v0[24];

      (*(v22 + 8))(v20, v21);
      result = (*(v23 + 8))(v199, v24);
    }

    v25 = v0[48];
    if (v25 != v0[45])
    {
      break;
    }

LABEL_6:
    v26 = v0[44];

    v27 = v0[43];
    v28 = v0[41];
    v29 = v0[18];

    v30 = *(v29 + v27);
    v31 = -1;
    v32 = -1 << *(v30 + 32);
    if (-v32 < 64)
    {
      v31 = ~(-1 << -v32);
    }

    v33 = v31 & *(v30 + 64);
    v34 = (63 - v32) >> 6;
    swift_bridgeObjectRetain_n();
    v35 = 0;
    v36 = MEMORY[0x277D84F90];
    v173 = MEMORY[0x277D84F90];
    if (!v33)
    {
      goto LABEL_11;
    }

    do
    {
LABEL_9:
      while (1)
      {
        v37 = __clz(__rbit64(v33));
        v33 &= v33 - 1;
        v38 = *(*(v30 + 56) + ((v35 << 9) | (8 * v37)));
        if (v38)
        {
          break;
        }

        if (!v33)
        {
          goto LABEL_11;
        }
      }

      v40 = v0[32];
      v200 = v0[33];
      v42 = v0[27];
      v41 = v0[28];
      (*(v41 + 16))(v40, v38 + OBJC_IVAR____TtC15FindMyBluetooth7Service_id, v42);
      v43 = v200;
      v201 = *(v41 + 32);
      v201(v43, v40, v42);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = sub_24AC1D2F8(0, v36[2] + 1, 1, v36);
      }

      v45 = v36[2];
      v44 = v36[3];
      if (v45 >= v44 >> 1)
      {
        v36 = sub_24AC1D2F8(v44 > 1, v45 + 1, 1, v36);
      }

      v46 = v0[33];
      v47 = v0[27];
      v48 = v0[28];
      v36[2] = v45 + 1;
      v201(v36 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v45, v46, v47);
    }

    while (v33);
LABEL_11:
    while (1)
    {
      v39 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v39 >= v34)
      {
        v49 = v0[42];

        v50 = sub_24AC653D0(v36);

        if (*(v50 + 16) <= *(v49 + 16) >> 3)
        {
          v205 = v0[42];
          sub_24AC5A844(v50);

          v190 = v205;
        }

        else
        {
          v190 = sub_24AC5B4D0(v50, v0[42]);
        }

        v89 = 0;
        v90 = v190 + 56;
        v91 = -1;
        v92 = -1 << *(v190 + 32);
        if (-v92 < 64)
        {
          v91 = ~(-1 << -v92);
        }

        v93 = v91 & *(v190 + 56);
        v175 = v0[18];
        v177 = v0[21];
        v174 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_peerPath;
        v94 = (63 - v92) >> 6;
        v196 = (v0[28] + 8);
        v183 = v94;
        while (2)
        {
          if (!v93)
          {
            while (1)
            {
              v99 = v89 + 1;
              if (__OFADD__(v89, 1))
              {
                goto LABEL_86;
              }

              if (v99 >= v94)
              {

                v147 = v0[18];
                v148 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_services;
                swift_beginAccess();
                v149 = *(v147 + v148);
                v150 = *(v149 + 64);
                v205 = MEMORY[0x277D84F90];
                v151 = -1;
                v152 = -1 << *(v149 + 32);
                if (-v152 < 64)
                {
                  v151 = ~(-1 << -v152);
                }

                v153 = v151 & v150;
                v154 = (63 - v152) >> 6;
                swift_bridgeObjectRetain_n();
                v155 = 0;
                if (!v153)
                {
                  goto LABEL_71;
                }

                do
                {
LABEL_69:
                  while (1)
                  {
                    v156 = __clz(__rbit64(v153));
                    v153 &= v153 - 1;
                    v157 = *(v149 + 56);
                    v158 = (v155 << 9) | (8 * v156);
                    if (*(v157 + v158))
                    {
                      break;
                    }

                    if (!v153)
                    {
                      goto LABEL_71;
                    }
                  }

                  v160 = *(v157 + v158);

                  MEMORY[0x24C22CE30](v161);
                  if (*((v205 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v205 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    v162 = *((v205 & 0xFFFFFFFFFFFFFF8) + 0x10);
                    sub_24ACD0720();
                  }

                  sub_24ACD0730();
                  v173 = v205;
                }

                while (v153);
LABEL_71:
                while (1)
                {
                  v159 = v155 + 1;
                  if (__OFADD__(v155, 1))
                  {
                    goto LABEL_87;
                  }

                  if (v159 >= v154)
                  {
                    v164 = v0[36];
                    v163 = v0[37];
                    v166 = v0[34];
                    v165 = v0[35];
                    v168 = v0[32];
                    v167 = v0[33];
                    v169 = v0[31];
                    v188 = v0[30];
                    v191 = v0[29];
                    v193 = v0[26];
                    v197 = v0[25];
                    v204 = v0[22];
                    v170 = v0[17];

                    *v170 = v173;

                    v171 = v0[1];

                    return v171();
                  }

                  v153 = *(v149 + 64 + 8 * v159);
                  ++v155;
                  if (v153)
                  {
                    v155 = v159;
                    goto LABEL_69;
                  }
                }
              }

              v93 = *(v90 + 8 * v99);
              ++v89;
              if (v93)
              {
                v89 = v99;
                break;
              }
            }
          }

          v100 = v0[30];
          v101 = v0[31];
          v103 = v0[27];
          v102 = v0[28];
          v186 = *(v102 + 72);
          v203 = *(v102 + 16);
          v203(v101, *(v190 + 48) + v186 * (__clz(__rbit64(v93)) | (v89 << 6)), v103);
          (*(v102 + 32))(v100, v101, v103);
          if (qword_27EF9DC38 != -1)
          {
            swift_once();
          }

          v104 = v0[29];
          v105 = v0[30];
          v106 = v0[27];
          v107 = v0[18];
          __swift_project_value_buffer(v187, qword_27EF9E010);
          v203(v104, v105, v106);

          v108 = sub_24ACD0470();
          v109 = sub_24ACD0930();

          v110 = os_log_type_enabled(v108, v109);
          v111 = v0[29];
          v112 = v0[27];
          if (v110)
          {
            v113 = v108;
            v114 = v0[22];
            v115 = swift_slowAlloc();
            v181 = swift_slowAlloc();
            v205 = v181;
            *v115 = 136446466;
            sub_24AC2A3DC(v175 + v174, v114);
            v116 = (v114 + *(v177 + 32));
            v179 = v109;
            v118 = *v116;
            v117 = v116[1];

            sub_24AC47AEC(v114, type metadata accessor for PeerPath);
            v119 = sub_24AC29E20(v118, v117, &v205);

            *(v115 + 4) = v119;
            *(v115 + 12) = 2082;
            sub_24AC2B6A8(&qword_27EF9E0D0, &unk_27EF9E090, &qword_24ACD37C0);
            v120 = sub_24ACD0C20();
            v122 = v121;
            v123 = *v196;
            (*v196)(v111, v112);
            v124 = sub_24AC29E20(v120, v122, &v205);
            v125 = v203;

            *(v115 + 14) = v124;
            _os_log_impl(&dword_24AC18000, v113, v179, "%{public}s: No service discovered for %{public}s", v115, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x24C22DC60](v181, -1, -1);
            MEMORY[0x24C22DC60](v115, -1, -1);
          }

          else
          {
            v125 = v203;

            v123 = *v196;
            (*v196)(v111, v112);
          }

          v126 = v0[43];
          v127 = v0[30];
          v128 = v0[18];
          swift_beginAccess();
          v129 = *(v128 + v126);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v131 = *(v128 + v126);
          v205 = v131;
          v132 = sub_24AC2ACC8(v127);
          v134 = v131[2];
          v135 = (v133 & 1) == 0;
          v136 = __OFADD__(v134, v135);
          v137 = v134 + v135;
          if (v136)
          {
            goto LABEL_88;
          }

          v138 = v133;
          if (v131[3] >= v137)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              goto LABEL_61;
            }

            v146 = v132;
            sub_24AC5E828();
            v132 = v146;
            v131 = v205;
            if (v138)
            {
              goto LABEL_44;
            }

LABEL_62:
            v141 = v0[30];
            v142 = v0[27];
            v131[(v132 >> 6) + 8] |= 1 << v132;
            v143 = v132;
            result = v125(v131[6] + v132 * v186, v141, v142);
            *(v131[7] + 8 * v143) = 0;
            v144 = v131[2];
            v136 = __OFADD__(v144, 1);
            v145 = v144 + 1;
            if (v136)
            {
              __break(1u);
              goto LABEL_91;
            }

            v131[2] = v145;
            v96 = 1;
          }

          else
          {
            v139 = v0[30];
            sub_24AC5C5E0(v137, isUniquelyReferenced_nonNull_native);
            v131 = v205;
            v132 = sub_24AC2ACC8(v139);
            if ((v138 & 1) != (v140 & 1))
            {
              v172 = v0[27];

              return sub_24ACD0C80();
            }

LABEL_61:
            if ((v138 & 1) == 0)
            {
              goto LABEL_62;
            }

LABEL_44:
            v95 = v131[7];
            v96 = *(v95 + 8 * v132);
            *(v95 + 8 * v132) = 0;
          }

          v93 &= v93 - 1;
          v97 = v0[30];
          v98 = v0[27];
          *(v0[18] + v0[43]) = v131;
          sub_24AC2B7BC(v96);
          swift_endAccess();
          v123(v97, v98);
          v94 = v183;
          v90 = v190 + 56;
          continue;
        }
      }

      v33 = *(v30 + 64 + 8 * v39);
      ++v35;
      if (v33)
      {
        v35 = v39;
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    swift_once();
  }

  v51 = 0x278FFC000uLL;
  while (1)
  {
    v52 = v0[41];
    if ((v52 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x24C22D1B0](v25);
    }

    else
    {
      if (v25 >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_92;
      }

      result = *(v52 + 8 * v25 + 32);
    }

    v0[47] = result;
    v0[48] = v25 + 1;
    if (__OFADD__(v25, 1))
    {
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
      return result;
    }

    v53 = v0[44];
    v54 = v0[35];
    v56 = v0[25];
    v55 = v0[26];
    v57 = v0[23];
    v58 = v0[24];
    v202 = result;
    v59 = [result *(v51 + 3992)];
    CBUUID.uuidValue.getter(v55);

    (*(v58 + 16))(v56, v55, v57);
    v195 = type metadata accessor for Service();
    sub_24ACD0000();
    if (!*(v53 + 16))
    {
      break;
    }

    v60 = v0[44];
    v61 = v0[35];
    v62 = v0[27];
    v63 = *(v60 + 40);
    sub_24AC2B6A8(&qword_27EF9DFD8, &unk_27EF9E090, &qword_24ACD37C0);
    v64 = sub_24ACD0520();
    v65 = -1 << *(v60 + 32);
    v66 = v64 & ~v65;
    if (((*(v60 + ((v66 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v66) & 1) == 0)
    {
      break;
    }

    v67 = ~v65;
    v68 = v0[28];
    v69 = *(v68 + 72);
    v70 = *(v68 + 16);
    v71 = v0[44];
    while (1)
    {
      v72 = v0[34];
      v73 = v0[27];
      v74 = v0[28];
      v70(v72, *(v71 + 48) + v66 * v69, v73);
      sub_24AC2B6A8(&qword_27EF9E140, &unk_27EF9E090, &qword_24ACD37C0);
      v75 = sub_24ACD0550();
      v76 = *(v74 + 8);
      v76(v72, v73);
      if (v75)
      {
        break;
      }

      v71 = v0[44];
      v66 = (v66 + 1) & v67;
      if (((*(v71 + ((v66 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v66) & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    v77 = v0[35];
    v79 = v0[26];
    v78 = v0[27];
    v80 = v0[23];
    v81 = v0[24];

    v76(v77, v78);
    result = (*(v81 + 8))(v79, v80);
    v25 = v0[48];
    v51 = 0x278FFC000;
    if (v25 == v0[45])
    {
      goto LABEL_6;
    }
  }

LABEL_37:
  v82 = v0[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E148, &qword_24ACD4598);
  inited = swift_initStackObject();
  v0[49] = inited;
  *(inited + 16) = v202;
  v84 = *(v195 + 48);
  v85 = *(v195 + 52);
  swift_allocObject();
  v86 = v202;

  v87 = swift_task_alloc();
  v0[50] = v87;
  *v87 = v0;
  v87[1] = sub_24AC352F0;
  v88 = v0[18];

  return sub_24AC224E8(v88, inited);
}

uint64_t sub_24AC365F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF00, &qword_24ACD3BC8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F0, &unk_24ACD4130);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v23 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
  v17 = *(v16 - 8);
  (*(v17 + 16))(v15, a1, v16);
  (*(v17 + 56))(v15, 0, 1, v16);
  v18 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_discoverServicesContinuation;
  swift_beginAccess();
  sub_24AC463C4(v15, a2 + v18, &qword_27EF9E4F0, &unk_24ACD4130);
  swift_endAccess();
  v19 = sub_24ACD07C0();
  (*(*(v19 - 8) + 56))(v11, 1, 1, v19);
  v20 = sub_24AC46D0C(&unk_2814AE1A8, type metadata accessor for Peripheral);
  v21 = swift_allocObject();
  v21[2] = a2;
  v21[3] = v20;
  v21[4] = a3;
  v21[5] = a2;
  v21[6] = a4;

  swift_retain_n();
  sub_24AC7EA6C(0, 0, v11, &unk_24ACD45A8, v21);
}

uint64_t sub_24AC36880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v7 = type metadata accessor for PeerPath();
  v5[5] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v5[6] = swift_task_alloc();
  v9 = sub_24ACD0420();
  v5[7] = v9;
  v10 = *(v9 - 8);
  v5[8] = v10;
  v11 = *(v10 + 64) + 15;
  v5[9] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E090, &qword_24ACD37C0);
  v5[10] = v12;
  v13 = *(v12 - 8);
  v5[11] = v13;
  v14 = *(v13 + 64) + 15;
  v5[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC369DC, a5, 0);
}

uint64_t sub_24AC369DC()
{
  v45 = v0;
  v1 = v0[3];
  if (v1)
  {
    v2 = *(v1 + 16);
    v3 = MEMORY[0x277D84F90];
    if (v2)
    {
      v4 = v0[11];
      v5 = v0[8];
      v44 = MEMORY[0x277D84F90];
      sub_24ACD0AB0();
      v6 = objc_opt_self();
      v7 = *(v4 + 16);
      v4 += 16;
      v42 = v7;
      v43 = v6;
      v8 = v1 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
      v40 = (v5 + 8);
      v41 = *(v4 + 56);
      v9 = (v4 - 8);
      do
      {
        v10 = v0[12];
        v12 = v0[9];
        v11 = v0[10];
        v13 = v0[7];
        v42(v10, v8, v11);
        sub_24ACCFFE0();
        v14 = sub_24ACD03D0();
        v15 = [v43 UUIDWithNSUUID_];

        (*v40)(v12, v13);
        (*v9)(v10, v11);
        sub_24ACD0A90();
        v16 = *(v44 + 16);
        sub_24ACD0AC0();
        sub_24ACD0AD0();
        sub_24ACD0AA0();
        v8 += v41;
        --v2;
      }

      while (v2);
      v3 = v44;
    }
  }

  else
  {
    v3 = 0;
  }

  if (qword_27EF9DC38 != -1)
  {
    swift_once();
  }

  v17 = v0[4];
  v18 = sub_24ACD0490();
  __swift_project_value_buffer(v18, qword_27EF9E010);

  v19 = sub_24ACD0470();
  v20 = sub_24ACD0930();

  if (os_log_type_enabled(v19, v20))
  {
    v22 = v0[5];
    v21 = v0[6];
    v23 = v0[4];
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v44 = v25;
    *v24 = 136446466;
    sub_24AC2A3DC(v23 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_peerPath, v21);
    v26 = (v21 + *(v22 + 32));
    v27 = *v26;
    v28 = v26[1];

    sub_24AC47AEC(v21, type metadata accessor for PeerPath);
    v29 = sub_24AC29E20(v27, v28, &v44);

    *(v24 + 4) = v29;
    *(v24 + 12) = 2082;
    v0[2] = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E158, &qword_24ACD45B0);
    v30 = sub_24ACD05A0();
    v32 = sub_24AC29E20(v30, v31, &v44);

    *(v24 + 14) = v32;
    _os_log_impl(&dword_24AC18000, v19, v20, "%{public}s: Calling discoverServices: %{public}s", v24, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C22DC60](v25, -1, -1);
    MEMORY[0x24C22DC60](v24, -1, -1);
  }

  else
  {
  }

  v33 = *(v0[4] + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_underlyingObject);
  if (v3)
  {
    sub_24AC2B8F8(0, &qword_27EF9E150, 0x277CBE0A0);
    v34 = sub_24ACD06F0();
  }

  else
  {
    v34 = 0;
  }

  v35 = v0[12];
  v36 = v0[9];
  v37 = v0[6];
  [v33 discoverServices_];

  v38 = v0[1];

  return v38();
}

uint64_t sub_24AC36E1C(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF00, &qword_24ACD3BC8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for PeerPath();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EF9DC38 != -1)
  {
    swift_once();
  }

  v17 = sub_24ACD0490();
  __swift_project_value_buffer(v17, qword_27EF9E010);

  v18 = sub_24ACD0470();
  v19 = sub_24ACD0930();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v33 = a4;
    v34 = v21;
    v22 = v21;
    *v20 = 136446210;
    sub_24AC2A3DC(a1 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_peerPath, v16);
    v23 = &v16[*(v13 + 32)];
    v32 = a3;
    v24 = a5;
    v26 = *v23;
    v25 = v23[1];

    sub_24AC47AEC(v16, type metadata accessor for PeerPath);
    v27 = sub_24AC29E20(v26, v25, &v34);
    a5 = v24;

    *(v20 + 4) = v27;
    _os_log_impl(&dword_24AC18000, v18, v19, v32, v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x24C22DC60](v22, -1, -1);
    MEMORY[0x24C22DC60](v20, -1, -1);
  }

  sub_24ACD07A0();
  v28 = sub_24ACD07C0();
  (*(*(v28 - 8) + 56))(v12, 0, 1, v28);
  v29 = swift_allocObject();
  v29[2] = 0;
  v29[3] = 0;
  v29[4] = a1;

  sub_24AC7F080(0, 0, v12, a5, v29);
}

uint64_t sub_24AC37118()
{
  v1 = *(v0 + 32);
  sub_24AC371CC(&OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_discoverServicesContinuation);
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_24AC315CC;
  v3 = *(v0 + 32);

  return sub_24AC318F0((v0 + 16));
}

uint64_t sub_24AC371CC(uint64_t *a1)
{
  v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F0, &unk_24ACD4130);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v19 - v14;
  v16 = *a1;
  swift_beginAccess();
  sub_24AC2B5DC(v3 + v16, v15, &qword_27EF9E4F0, &unk_24ACD4130);
  if ((*(v5 + 48))(v15, 1, v4))
  {
    sub_24AC212F4(v15, &qword_27EF9E4F0, &unk_24ACD4130);
  }

  else
  {
    (*(v5 + 16))(v8, v15, v4);
    sub_24AC212F4(v15, &qword_27EF9E4F0, &unk_24ACD4130);
    sub_24ACD0770();
    sub_24AC46D0C(qword_2814AD050, MEMORY[0x277D85678]);
    v17 = swift_allocError();
    sub_24ACD04E0();
    v19[0] = v17;
    sub_24ACD0750();
    (*(v5 + 8))(v8, v4);
  }

  (*(v5 + 56))(v13, 1, 1, v4);
  swift_beginAccess();
  sub_24AC463C4(v13, v3 + v16, &qword_27EF9E4F0, &unk_24ACD4130);
  return swift_endAccess();
}

uint64_t sub_24AC37498(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_24ACD0420();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v6 = type metadata accessor for PeerPath();
  v2[10] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E090, &qword_24ACD37C0);
  v2[12] = v8;
  v9 = *(v8 - 8);
  v2[13] = v9;
  v10 = *(v9 + 64) + 15;
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC375F0, v1, 0);
}

uint64_t sub_24AC375F0()
{
  v55 = v0;
  v1 = v0[6];
  v2 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_services;
  v0[15] = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_services;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (*(v3 + 16))
  {
    v4 = v0[5];

    v5 = sub_24AC2ACC8(v4);
    if (v6)
    {
      v7 = *(*(v3 + 56) + 8 * v5);

      if (v7)
      {
        v8 = v0[14];
        v9 = v0[11];
        v10 = v0[9];

        v11 = v0[1];

        return v11(v7);
      }
    }

    else
    {
    }
  }

  v13 = v0[6];
  v14 = *(v13 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_autoDiscoverCount);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
LABEL_18:
    swift_once();
LABEL_11:
    v18 = v0[13];
    v17 = v0[14];
    v19 = v0[12];
    v20 = v0[5];
    v21 = v0[6];
    v22 = sub_24ACD0490();
    __swift_project_value_buffer(v22, qword_27EF9E010);
    (*(v18 + 16))(v17, v20, v19);

    v23 = sub_24ACD0470();
    v24 = sub_24ACD0910();

    v25 = os_log_type_enabled(v23, v24);
    v26 = v0[13];
    v27 = v0[14];
    v28 = v0[12];
    if (v25)
    {
      v53 = v24;
      v30 = v0[10];
      v29 = v0[11];
      v31 = v0[9];
      v32 = v0[6];
      v50 = v0[7];
      v51 = v0[8];
      v33 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v54 = v52;
      *v33 = 136446466;
      sub_24AC2A3DC(v32 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_peerPath, v29);
      v34 = (v29 + *(v30 + 32));
      v36 = *v34;
      v35 = v34[1];

      sub_24AC47AEC(v29, type metadata accessor for PeerPath);
      v37 = sub_24AC29E20(v36, v35, &v54);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2082;
      sub_24ACCFFE0();
      sub_24AC46D0C(&qword_27EF9E4E0, MEMORY[0x277CC95F0]);
      v38 = sub_24ACD0C20();
      v40 = v39;
      (*(v51 + 8))(v31, v50);
      (*(v26 + 8))(v27, v28);
      v41 = sub_24AC29E20(v38, v40, &v54);

      *(v33 + 14) = v41;
      _os_log_impl(&dword_24AC18000, v23, v53, "%{public}s: Inefficient autoDiscovery for %{public}s", v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C22DC60](v52, -1, -1);
      MEMORY[0x24C22DC60](v33, -1, -1);
    }

    else
    {

      (*(v26 + 8))(v27, v28);
    }

    goto LABEL_14;
  }

  *(v13 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_autoDiscoverCount) = v16;
  if (v16 >= 2)
  {
    if (qword_27EF9DC38 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_18;
  }

LABEL_14:
  v42 = v0[12];
  v43 = v0[13];
  v44 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9DDD0, &qword_24ACD37B8);
  v45 = *(v43 + 72);
  v46 = (*(v43 + 80) + 32) & ~*(v43 + 80);
  v47 = swift_allocObject();
  v0[16] = v47;
  *(v47 + 16) = xmmword_24ACD39E0;
  (*(v43 + 16))(v47 + v46, v44, v42);
  v48 = swift_task_alloc();
  v0[17] = v48;
  *v48 = v0;
  v48[1] = sub_24AC37AA4;
  v49 = v0[6];

  return sub_24AC338AC(v47);
}

uint64_t sub_24AC37AA4()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v5 = *(v2 + 48);
    v6 = sub_24AC280D8;
  }

  else
  {
    v7 = *(v2 + 128);
    v8 = *(v2 + 48);

    v6 = sub_24AC37BEC;
    v5 = v8;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24AC37BEC()
{
  v1 = *(v0[6] + v0[15]);
  if (*(v1 + 16))
  {
    v2 = v0[5];
    v3 = *(v0[6] + v0[15]);

    v4 = sub_24AC2ACC8(v2);
    if (v5)
    {
      v6 = *(*(v1 + 56) + 8 * v4);

      if (v6)
      {
        v7 = v0[14];
        v8 = v0[11];
        v9 = v0[9];

        v10 = v0[1];

        return v10(v6);
      }
    }

    else
    {
    }
  }

  type metadata accessor for CentralManager.Error();
  sub_24AC46D0C(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  v12 = v0[14];
  v13 = v0[11];
  v14 = v0[9];

  v15 = v0[1];

  return v15();
}

void sub_24AC37DA8(uint64_t a1, uint64_t a2, SEL *a3)
{
  v5 = *(v3 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_underlyingObject);
  v6 = sub_24ACD0560();
  [v5 *a3];
}

id sub_24AC37E08()
{
  v1 = *(v0 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_underlyingObject);
  v2 = sub_24ACD0560();
  v3 = [v1 hasTag_];

  return v3;
}

void sub_24AC37E58()
{
  v1 = *(v0 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_underlyingObject);
  v2 = sub_24ACD0560();
  v3 = sub_24ACD0560();
  [v1 setCustomProperty:v2 value:v3];
}

uint64_t sub_24AC37EE0()
{
  v1 = *(v0 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_underlyingObject);
  v2 = sub_24ACD0560();
  v3 = [v1 customProperty_];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_24ACD0590();

  return v4;
}

uint64_t sub_24AC37F88()
{
  v1 = [*(*(v0 + 16) + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_underlyingObject) customPropertyNames];
  if (v1)
  {
    v2 = v1;
    v3 = sub_24ACD0700();
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_24AC3803C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_id;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_24AC380C0(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2822009F8](sub_24AC380E0, v1, 0);
}

uint64_t sub_24AC380E0()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_macAddress;
  swift_beginAccess();
  sub_24AC2B5DC(v1 + v3, v2, &qword_27EF9E048, &qword_24ACD5910);
  v4 = v0[1];

  return v4();
}

uint64_t sub_24AC3817C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_24AC3819C, v1, 0);
}

uint64_t sub_24AC3819C()
{
  v1 = *(v0 + 24);
  sub_24AC2CCF4(*(v0 + 16));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24AC381FC(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2822009F8](sub_24AC3821C, v1, 0);
}

uint64_t sub_24AC3821C()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_lastSeen;
  swift_beginAccess();
  v4 = sub_24ACD0360();
  (*(*(v4 - 8) + 16))(v2, v1 + v3, v4);
  v5 = v0[1];

  return v5();
}

uint64_t sub_24AC382E8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_24AC38308, v1, 0);
}

uint64_t sub_24AC38308()
{
  v1 = v0[3];
  Strong = swift_weakLoadStrong();
  v0[4] = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_24AC38430, Strong, 0);
  }

  else
  {
    type metadata accessor for CentralManager.Error();
    sub_24AC46D0C(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_24AC38430()
{
  v1 = *(v0 + 32);
  sub_24AC7FB24(*(v0 + 24), *(v0 + 16));
  *(v0 + 40) = 0;
  v2 = *(v0 + 24);

  return MEMORY[0x2822009F8](sub_24AC47C24, v2, 0);
}

uint64_t sub_24AC384C4()
{
  *(v1 + 16) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E068, &qword_24ACD4140) - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC38560, v0, 0);
}

uint64_t sub_24AC38560()
{
  v1 = *(v0 + 24);
  *(v0 + 48) = 20;
  v2 = type metadata accessor for Peripheral.Options();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_24AC38644;
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);

  return sub_24AC2F77C((v0 + 48), v4);
}

uint64_t sub_24AC38644()
{
  v2 = *(*v1 + 32);
  v3 = *(*v1 + 24);
  v4 = *v1;
  v4[5] = v0;

  sub_24AC212F4(v3, &qword_27EF9E068, &qword_24ACD4140);
  if (v0)
  {
    v5 = v4[2];

    return MEMORY[0x2822009F8](sub_24AC47C0C, v5, 0);
  }

  else
  {
    v6 = v4[3];

    v7 = v4[1];

    return v7();
  }
}

uint64_t sub_24AC387B8(_BYTE *a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24AC214AC;

  return sub_24AC2F77C(a1, a2);
}

uint64_t sub_24AC3885C()
{
  *(v1 + 32) = v0;
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  v2 = swift_task_alloc();
  *(v1 + 40) = v2;
  *v2 = v1;
  v2[1] = sub_24AC315CC;

  return sub_24AC318F0((v1 + 16));
}

uint64_t sub_24AC38900(uint64_t *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AC20274;

  return sub_24AC318F0(a1);
}

uint64_t sub_24AC38994()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24AC38A20;

  return sub_24AC326A0();
}

uint64_t sub_24AC38A20(char a1)
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

uint64_t sub_24AC38B28()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24AC214AC;

  return sub_24AC32978();
}

uint64_t sub_24AC38BB4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24AC214AC;

  return sub_24AC32DD8();
}

uint64_t sub_24AC38C40(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AC214AC;

  return sub_24AC33170(a1);
}

uint64_t sub_24AC38CD4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AC1E290;

  return sub_24AC338AC(a1);
}

uint64_t sub_24AC38D68(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AC214BC;

  return sub_24AC37498(a1);
}

uint64_t sub_24AC38DFC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24AC283BC;

  return sub_24AC80CDC();
}

uint64_t sub_24AC38EC0()
{
  sub_24ACD0A20();

  v0 = type metadata accessor for MockPeripheral();
  v1 = sub_24AC46D0C(&qword_27EF9E100, type metadata accessor for MockPeripheral);
  v2 = sub_24ACD0C00();
  MEMORY[0x24C22CD50](v2);

  MEMORY[0x24C22CD50](8250, 0xE200000000000000);
  v3 = MEMORY[0x24C22D370](v0, v1);
  MEMORY[0x24C22CD50](v3);

  MEMORY[0x24C22CD50](0x69746E656469202CLL, 0xEF203D2072656966);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  sub_24AC2B6A8(&qword_27EF9E108, &qword_27EF9E040, qword_24ACD4100);
  v4 = sub_24ACD0C20();
  MEMORY[0x24C22CD50](v4);

  MEMORY[0x24C22CD50](62, 0xE100000000000000);
  return 60;
}

uint64_t sub_24AC39074()
{
  sub_24ACD0A20();

  v0 = type metadata accessor for Peripheral();
  v1 = sub_24AC46D0C(&qword_2814AE1A0, type metadata accessor for Peripheral);
  v2 = sub_24ACD0C00();
  MEMORY[0x24C22CD50](v2);

  MEMORY[0x24C22CD50](8250, 0xE200000000000000);
  v3 = MEMORY[0x24C22D370](v0, v1);
  MEMORY[0x24C22CD50](v3);

  MEMORY[0x24C22CD50](0x69746E656469202CLL, 0xEF203D2072656966);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  sub_24AC2B6A8(&qword_27EF9E108, &qword_27EF9E040, qword_24ACD4100);
  v4 = sub_24ACD0C20();
  MEMORY[0x24C22CD50](v4);

  MEMORY[0x24C22CD50](62, 0xE100000000000000);
  return 60;
}

uint64_t sub_24AC39224(uint64_t a1)
{
  v2[32] = a1;
  v2[33] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
  v2[34] = v3;
  v4 = *(v3 - 8);
  v2[35] = v4;
  v5 = *(v4 + 64) + 15;
  v2[36] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F0, &unk_24ACD4130) - 8) + 64) + 15;
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v7 = type metadata accessor for PeerPath();
  v2[42] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v2[43] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC39388, v1, 0);
}

uint64_t sub_24AC39388()
{
  v109 = v0;
  if (qword_27EF9DC38 != -1)
  {
LABEL_40:
    swift_once();
  }

  v2 = v0[32];
  v1 = v0[33];
  v3 = sub_24ACD0490();
  __swift_project_value_buffer(v3, qword_27EF9E010);

  v4 = v2;
  v5 = sub_24ACD0470();
  v6 = sub_24ACD0930();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[42];
    v8 = v0[43];
    v9 = v0[33];
    v107 = v0[32];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v108 = v12;
    *v10 = 136446722;
    sub_24AC2A3DC(v9 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_peerPath, v8);
    v13 = (v8 + *(v7 + 32));
    v15 = *v13;
    v14 = v13[1];

    sub_24AC47AEC(v8, type metadata accessor for PeerPath);
    v16 = sub_24AC29E20(v15, v14, &v108);

    *(v10 + 4) = v16;
    *(v10 + 12) = 2082;
    v17 = sub_24AC39074();
    v19 = sub_24AC29E20(v17, v18, &v108);

    *(v10 + 14) = v19;
    *(v10 + 22) = 2114;
    v20 = v107;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 24) = v21;
    *v11 = v21;
    _os_log_impl(&dword_24AC18000, v5, v6, "%{public}s: Invalidated peripheral: %{public}s error %{public}@", v10, 0x20u);
    sub_24AC212F4(v11, &qword_27EF9E6A0, &qword_24ACD5590);
    MEMORY[0x24C22DC60](v11, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C22DC60](v12, -1, -1);
    MEMORY[0x24C22DC60](v10, -1, -1);
  }

  if ((sub_24ACD0840() & 1) == 0)
  {
    v22 = v0[41];
    v23 = v0[34];
    v24 = v0[35];
    v25 = v0[33];
    v26 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_pairingContinuation;
    swift_beginAccess();
    sub_24AC2B5DC(v25 + v26, v22, &qword_27EF9E4F0, &unk_24ACD4130);
    v27 = *(v24 + 48);
    v28 = v27(v22, 1, v23);
    v29 = v0[41];
    if (v28)
    {
      sub_24AC212F4(v0[41], &qword_27EF9E4F0, &unk_24ACD4130);
    }

    else
    {
      v31 = v0[35];
      v30 = v0[36];
      v32 = v0[34];
      v33 = v0[32];
      (*(v31 + 16))(v30, v0[41], v32);
      sub_24AC212F4(v29, &qword_27EF9E4F0, &unk_24ACD4130);
      v0[31] = v33;
      v34 = v33;
      sub_24ACD0750();
      (*(v31 + 8))(v30, v32);
    }

    v35 = v0[40];
    v37 = v0[33];
    v36 = v0[34];
    v38 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_connectContinuation;
    swift_beginAccess();
    sub_24AC2B5DC(v37 + v38, v35, &qword_27EF9E4F0, &unk_24ACD4130);
    v39 = v27(v35, 1, v36);
    v40 = v0[40];
    if (v39)
    {
      sub_24AC212F4(v0[40], &qword_27EF9E4F0, &unk_24ACD4130);
    }

    else
    {
      v42 = v0[35];
      v41 = v0[36];
      v43 = v0[34];
      v44 = v0[32];
      (*(v42 + 16))(v41, v0[40], v43);
      sub_24AC212F4(v40, &qword_27EF9E4F0, &unk_24ACD4130);
      v0[30] = v44;
      v45 = v44;
      sub_24ACD0750();
      (*(v42 + 8))(v41, v43);
    }

    v46 = v0[39];
    v48 = v0[33];
    v47 = v0[34];
    v49 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_cancelConnectContinuation;
    swift_beginAccess();
    sub_24AC2B5DC(v48 + v49, v46, &qword_27EF9E4F0, &unk_24ACD4130);
    v50 = v27(v46, 1, v47);
    v51 = v0[39];
    if (v50)
    {
      sub_24AC212F4(v0[39], &qword_27EF9E4F0, &unk_24ACD4130);
    }

    else
    {
      v53 = v0[35];
      v52 = v0[36];
      v54 = v0[34];
      (*(v53 + 16))(v52, v0[39], v54);
      sub_24AC212F4(v51, &qword_27EF9E4F0, &unk_24ACD4130);
      sub_24ACD0760();
      (*(v53 + 8))(v52, v54);
    }

    v55 = v0[38];
    v57 = v0[33];
    v56 = v0[34];
    v58 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_discoverServicesContinuation;
    swift_beginAccess();
    sub_24AC2B5DC(v57 + v58, v55, &qword_27EF9E4F0, &unk_24ACD4130);
    v59 = v27(v55, 1, v56);
    v60 = v0[38];
    if (v59)
    {
      sub_24AC212F4(v0[38], &qword_27EF9E4F0, &unk_24ACD4130);
    }

    else
    {
      v62 = v0[35];
      v61 = v0[36];
      v63 = v0[34];
      v64 = v0[32];
      (*(v62 + 16))(v61, v0[38], v63);
      sub_24AC212F4(v60, &qword_27EF9E4F0, &unk_24ACD4130);
      v0[29] = v64;
      v65 = v64;
      sub_24ACD0750();
      (*(v62 + 8))(v61, v63);
    }
  }

  v66 = v0[37];
  v67 = v0[34];
  v68 = v0[33];
  v69 = *(v0[35] + 56);
  v69(v66, 1, 1, v67);
  v70 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_pairingContinuation;
  swift_beginAccess();
  sub_24AC463C4(v66, v68 + v70, &qword_27EF9E4F0, &unk_24ACD4130);
  swift_endAccess();
  v69(v66, 1, 1, v67);
  v71 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_connectContinuation;
  swift_beginAccess();
  sub_24AC463C4(v66, v68 + v71, &qword_27EF9E4F0, &unk_24ACD4130);
  swift_endAccess();
  v69(v66, 1, 1, v67);
  v72 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_cancelConnectContinuation;
  swift_beginAccess();
  sub_24AC463C4(v66, v68 + v72, &qword_27EF9E4F0, &unk_24ACD4130);
  swift_endAccess();
  v69(v66, 1, 1, v67);
  v73 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_discoverServicesContinuation;
  swift_beginAccess();
  sub_24AC463C4(v66, v68 + v73, &qword_27EF9E4F0, &unk_24ACD4130);
  swift_endAccess();
  v74 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_services;
  v0[44] = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_services;
  swift_beginAccess();
  v75 = *(v68 + v74);
  v76 = MEMORY[0x277D84F90];
  v77 = *(v75 + 64);
  v108 = MEMORY[0x277D84F90];
  v78 = -1;
  v79 = -1 << *(v75 + 32);
  if (-v79 < 64)
  {
    v78 = ~(-1 << -v79);
  }

  v80 = v78 & v77;
  v81 = (63 - v79) >> 6;
  swift_bridgeObjectRetain_n();
  v82 = 0;
LABEL_20:
  v0[45] = v76;
  while (v80)
  {
LABEL_21:
    v83 = __clz(__rbit64(v80));
    v80 &= v80 - 1;
    v84 = *(v75 + 56);
    v85 = (v82 << 9) | (8 * v83);
    if (*(v84 + v85))
    {
      v87 = *(v84 + v85);

      MEMORY[0x24C22CE30](v88);
      if (*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v108 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v89 = *((v108 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_24ACD0720();
      }

      sub_24ACD0730();
      v76 = v108;
      goto LABEL_20;
    }
  }

  while (1)
  {
    v86 = v82 + 1;
    if (__OFADD__(v82, 1))
    {
      __break(1u);
      goto LABEL_40;
    }

    if (v86 >= v81)
    {
      break;
    }

    v80 = *(v75 + 64 + 8 * v86);
    ++v82;
    if (v80)
    {
      v82 = v86;
      goto LABEL_21;
    }
  }

  if (v76 >> 62)
  {
    result = sub_24ACD0B30();
    v0[46] = result;
    if (result)
    {
LABEL_32:
      if (result < 1)
      {
        __break(1u);
      }

      else
      {
        v0[47] = 0;
        v91 = v0[45];
        if ((v91 & 0xC000000000000001) != 0)
        {
          v92 = MEMORY[0x24C22D1B0](0);
        }

        else
        {
          v92 = *(v91 + 32);
        }

        v0[48] = v92;
        v93 = swift_task_alloc();
        v0[49] = v93;
        *v93 = v0;
        v93[1] = sub_24AC39DD0;
        v94 = v0[32];

        return sub_24AC28A50(v94);
      }

      return result;
    }
  }

  else
  {
    result = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[46] = result;
    if (result)
    {
      goto LABEL_32;
    }
  }

  v96 = v0[44];
  v95 = v0[45];
  v97 = v0[43];
  v99 = v0[40];
  v98 = v0[41];
  v101 = v0[38];
  v100 = v0[39];
  v103 = v0[36];
  v102 = v0[37];
  v104 = v0[33];

  v105 = *(v104 + v96);
  *(v104 + v96) = MEMORY[0x277D84F98];

  v106 = v0[1];

  return v106();
}

uint64_t sub_24AC39DD0()
{
  v1 = *(*v0 + 392);
  v2 = *(*v0 + 264);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24AC39EE0, v2, 0);
}

uint64_t sub_24AC39EE0()
{
  v2 = v0[47];
  v1 = v0[48];
  v3 = v0[46];

  if (v2 + 1 == v3)
  {
    v5 = v0[44];
    v4 = v0[45];
    v6 = v0[43];
    v8 = v0[40];
    v7 = v0[41];
    v10 = v0[38];
    v9 = v0[39];
    v12 = v0[36];
    v11 = v0[37];
    v13 = v0[33];

    v14 = *(v13 + v5);
    *(v13 + v5) = MEMORY[0x277D84F98];

    v15 = v0[1];

    return v15();
  }

  else
  {
    v17 = v0[47] + 1;
    v0[47] = v17;
    v18 = v0[45];
    if ((v18 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x24C22D1B0]();
    }

    else
    {
      v19 = *(v18 + 8 * v17 + 32);
    }

    v0[48] = v19;
    v20 = swift_task_alloc();
    v0[49] = v20;
    *v20 = v0;
    v20[1] = sub_24AC39DD0;
    v21 = v0[32];

    return sub_24AC28A50(v21);
  }
}

uint64_t sub_24AC3A08C()
{
  v1[8] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
  v1[9] = v2;
  v3 = *(v2 - 8);
  v1[10] = v3;
  v4 = *(v3 + 64) + 15;
  v1[11] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F0, &unk_24ACD4130) - 8) + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v6 = type metadata accessor for PeerPath();
  v1[14] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v1[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC3A1CC, v0, 0);
}

uint64_t sub_24AC3A1CC()
{
  v30 = v0;
  if (qword_27EF9DC38 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = sub_24ACD0490();
  __swift_project_value_buffer(v2, qword_27EF9E010);

  v3 = sub_24ACD0470();
  v4 = sub_24ACD0930();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[14];
    v5 = v0[15];
    v7 = v0[8];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v29 = v9;
    *v8 = 136446210;
    sub_24AC2A3DC(v7 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_peerPath, v5);
    v10 = (v5 + *(v6 + 32));
    v11 = *v10;
    v12 = v10[1];

    sub_24AC47AEC(v5, type metadata accessor for PeerPath);
    v13 = sub_24AC29E20(v11, v12, &v29);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_24AC18000, v3, v4, "%{public}s: connected.", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x24C22DC60](v9, -1, -1);
    MEMORY[0x24C22DC60](v8, -1, -1);
  }

  v14 = v0[13];
  v15 = v0[9];
  v16 = v0[10];
  v17 = v0[8];
  v18 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_connectContinuation;
  swift_beginAccess();
  sub_24AC2B5DC(v17 + v18, v14, &qword_27EF9E4F0, &unk_24ACD4130);
  v19 = (*(v16 + 48))(v14, 1, v15);
  v20 = v0[13];
  if (v19)
  {
    sub_24AC212F4(v0[13], &qword_27EF9E4F0, &unk_24ACD4130);
  }

  else
  {
    v22 = v0[10];
    v21 = v0[11];
    v23 = v0[9];
    (*(v22 + 16))(v21, v0[13], v23);
    sub_24AC212F4(v20, &qword_27EF9E4F0, &unk_24ACD4130);
    sub_24ACD0760();
    (*(v22 + 8))(v21, v23);
  }

  v24 = v0[15];
  v25 = v0[12];
  v26 = v0[11];
  (*(v0[10] + 56))(v25, 1, 1, v0[9]);
  swift_beginAccess();
  sub_24AC463C4(v25, v17 + v18, &qword_27EF9E4F0, &unk_24ACD4130);
  swift_endAccess();

  v27 = v0[1];

  return v27();
}

uint64_t sub_24AC3A510(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
  v2[14] = v3;
  v4 = *(v3 - 8);
  v2[15] = v4;
  v5 = *(v4 + 64) + 15;
  v2[16] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F0, &unk_24ACD4130) - 8) + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v7 = type metadata accessor for PeerPath();
  v2[20] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v2[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC3A65C, v1, 0);
}

uint64_t sub_24AC3A65C()
{
  v46 = v0;
  if (qword_27EF9DC38 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = v0[13];
  v3 = sub_24ACD0490();
  __swift_project_value_buffer(v3, qword_27EF9E010);

  v4 = v1;
  v5 = sub_24ACD0470();
  v6 = sub_24ACD0910();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = v0[20];
    v7 = v0[21];
    v9 = v0[13];
    v44 = v0[12];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v45 = v12;
    *v10 = 136446466;
    sub_24AC2A3DC(v9 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_peerPath, v7);
    v13 = (v7 + *(v8 + 32));
    v14 = *v13;
    v15 = v13[1];

    sub_24AC47AEC(v7, type metadata accessor for PeerPath);
    v16 = sub_24AC29E20(v14, v15, &v45);

    *(v10 + 4) = v16;
    *(v10 + 12) = 2114;
    v17 = v44;
    if (v44)
    {
      v18 = v1;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      v17 = v19;
    }

    else
    {
      v19 = 0;
    }

    *(v10 + 14) = v19;
    *v11 = v17;
    _os_log_impl(&dword_24AC18000, v5, v6, "%{public}s: failedToConnect: %{public}@", v10, 0x16u);
    sub_24AC212F4(v11, &qword_27EF9E6A0, &qword_24ACD5590);
    MEMORY[0x24C22DC60](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x24C22DC60](v12, -1, -1);
    MEMORY[0x24C22DC60](v10, -1, -1);
  }

  v20 = v0[13];
  v21 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_connectContinuation;
  v22 = v0[14];
  v23 = (v0[15] + 48);
  if (v0[12])
  {
    v24 = v0[19];
    swift_beginAccess();
    sub_24AC2B5DC(v20 + v21, v24, &qword_27EF9E4F0, &unk_24ACD4130);
    v25 = (*v23)(v24, 1, v22);
    v26 = v0[19];
    if (!v25)
    {
      v28 = v0[15];
      v27 = v0[16];
      v29 = v0[14];
      (*(v28 + 16))(v27, v0[19], v29);
      v30 = v1;
      sub_24AC212F4(v26, &qword_27EF9E4F0, &unk_24ACD4130);
      v0[11] = v1;
      sub_24ACD0750();
      (*(v28 + 8))(v27, v29);
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v31 = v0[18];
  swift_beginAccess();
  sub_24AC2B5DC(v20 + v21, v31, &qword_27EF9E4F0, &unk_24ACD4130);
  v32 = (*v23)(v31, 1, v22);
  v26 = v0[18];
  if (v32)
  {
LABEL_12:
    sub_24AC212F4(v26, &qword_27EF9E4F0, &unk_24ACD4130);
    goto LABEL_13;
  }

  v42 = v0[15];
  v41 = v0[16];
  v43 = v0[14];
  (*(v42 + 16))(v41, v0[18], v43);
  sub_24AC212F4(v26, &qword_27EF9E4F0, &unk_24ACD4130);
  sub_24ACD0760();
  (*(v42 + 8))(v41, v43);
LABEL_13:
  v33 = v0[21];
  v35 = v0[18];
  v34 = v0[19];
  v36 = v0[17];
  v37 = v0[13];
  (*(v0[15] + 56))(v36, 1, 1, v0[14]);
  v38 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_connectContinuation;
  swift_beginAccess();
  sub_24AC463C4(v36, v37 + v38, &qword_27EF9E4F0, &unk_24ACD4130);
  swift_endAccess();

  v39 = v0[1];

  return v39();
}

uint64_t sub_24AC3AB10(uint64_t a1)
{
  v2[15] = a1;
  v2[16] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
  v2[17] = v3;
  v4 = *(v3 - 8);
  v2[18] = v4;
  v5 = *(v4 + 64) + 15;
  v2[19] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F0, &unk_24ACD4130) - 8) + 64) + 15;
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v7 = type metadata accessor for PeerPath();
  v2[23] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v2[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC3AC5C, v1, 0);
}

uint64_t sub_24AC3AC5C()
{
  v62 = v0;
  v1 = v0[15];
  if (v1)
  {
    v2 = v1;
    if (qword_27EF9DC38 != -1)
    {
      swift_once();
    }

    v3 = v0[16];
    v4 = sub_24ACD0490();
    __swift_project_value_buffer(v4, qword_27EF9E010);
    v5 = v1;

    v6 = sub_24ACD0470();
    v7 = sub_24ACD0910();

    if (os_log_type_enabled(v6, v7))
    {
      v9 = v0[23];
      v8 = v0[24];
      v10 = v0[16];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v61 = v13;
      *v11 = 136446466;
      sub_24AC2A3DC(v10 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_peerPath, v8);
      v14 = (v8 + *(v9 + 32));
      v15 = *v14;
      v16 = v14[1];

      sub_24AC47AEC(v8, type metadata accessor for PeerPath);
      v17 = sub_24AC29E20(v15, v16, &v61);

      *(v11 + 4) = v17;
      *(v11 + 12) = 2112;
      v18 = sub_24ACD0210();
      *(v11 + 14) = v18;
      *v12 = v18;
      _os_log_impl(&dword_24AC18000, v6, v7, "%{public}s: disconnected with error: %@", v11, 0x16u);
      sub_24AC212F4(v12, &qword_27EF9E6A0, &qword_24ACD5590);
      MEMORY[0x24C22DC60](v12, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x24C22DC60](v13, -1, -1);
      MEMORY[0x24C22DC60](v11, -1, -1);
    }

    v19 = v0[22];
    v20 = v0[17];
    v21 = v0[18];
    v22 = v0[16];
    v23 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_cancelConnectContinuation;
    swift_beginAccess();
    sub_24AC2B5DC(v22 + v23, v19, &qword_27EF9E4F0, &unk_24ACD4130);
    v24 = (*(v21 + 48))(v19, 1, v20);
    v25 = v0[22];
    if (v24)
    {

LABEL_13:
      sub_24AC212F4(v25, &qword_27EF9E4F0, &unk_24ACD4130);
      goto LABEL_16;
    }

    v46 = v0[18];
    v45 = v0[19];
    v47 = v0[17];
    (*(v46 + 16))(v45, v0[22], v47);
    sub_24AC212F4(v25, &qword_27EF9E4F0, &unk_24ACD4130);
    v0[14] = v1;
    sub_24ACD0750();
    (*(v46 + 8))(v45, v47);
  }

  else
  {
    if (qword_27EF9DC38 != -1)
    {
      swift_once();
    }

    v26 = v0[16];
    v27 = sub_24ACD0490();
    __swift_project_value_buffer(v27, qword_27EF9E010);

    v28 = sub_24ACD0470();
    v29 = sub_24ACD0930();

    if (os_log_type_enabled(v28, v29))
    {
      v31 = v0[23];
      v30 = v0[24];
      v32 = v0[16];
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v61 = v34;
      *v33 = 136446210;
      sub_24AC2A3DC(v32 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_peerPath, v30);
      v35 = (v30 + *(v31 + 32));
      v36 = *v35;
      v37 = v35[1];

      sub_24AC47AEC(v30, type metadata accessor for PeerPath);
      v38 = sub_24AC29E20(v36, v37, &v61);

      *(v33 + 4) = v38;
      _os_log_impl(&dword_24AC18000, v28, v29, "%{public}s: disconnected.", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x24C22DC60](v34, -1, -1);
      MEMORY[0x24C22DC60](v33, -1, -1);
    }

    v39 = v0[21];
    v40 = v0[17];
    v41 = v0[18];
    v42 = v0[16];
    v43 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_cancelConnectContinuation;
    swift_beginAccess();
    sub_24AC2B5DC(v42 + v43, v39, &qword_27EF9E4F0, &unk_24ACD4130);
    v44 = (*(v41 + 48))(v39, 1, v40);
    v25 = v0[21];
    if (v44)
    {
      goto LABEL_13;
    }

    v49 = v0[18];
    v48 = v0[19];
    v50 = v0[17];
    (*(v49 + 16))(v48, v0[21], v50);
    sub_24AC212F4(v25, &qword_27EF9E4F0, &unk_24ACD4130);
    sub_24ACD0760();
    (*(v49 + 8))(v48, v50);
  }

LABEL_16:
  v51 = v0[24];
  v52 = v0[21];
  v53 = v0[22];
  v54 = v0[20];
  v55 = v0[16];
  (*(v0[18] + 56))(v54, 1, 1, v0[17]);
  v56 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_cancelConnectContinuation;
  swift_beginAccess();
  sub_24AC463C4(v54, v55 + v56, &qword_27EF9E4F0, &unk_24ACD4130);
  swift_endAccess();
  v57 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_services;
  swift_beginAccess();
  v58 = *(v55 + v57);
  *(v55 + v57) = MEMORY[0x277D84F98];

  *(v55 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_autoDiscoverCount) = 0;

  v59 = v0[1];

  return v59();
}

uint64_t sub_24AC3B2B0(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F0, &unk_24ACD4130) - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
  v2[13] = v4;
  v5 = *(v4 - 8);
  v2[14] = v5;
  v6 = *(v5 + 64) + 15;
  v2[15] = swift_task_alloc();
  v7 = type metadata accessor for PeerPath();
  v2[16] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC3B3F0, v1, 0);
}

uint64_t sub_24AC3B3F0()
{
  v61 = v0;
  if (qword_27EF9DC38 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = v0[10];
  v3 = sub_24ACD0490();
  __swift_project_value_buffer(v3, qword_27EF9E010);

  v4 = v1;
  v5 = sub_24ACD0470();
  v6 = sub_24ACD0930();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[16];
    v8 = v0[17];
    v9 = v0[10];
    v57 = v0[9];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v60[0] = v12;
    *v10 = 136446466;
    sub_24AC2A3DC(v9 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_peerPath, v8);
    v13 = (v8 + *(v7 + 32));
    v15 = *v13;
    v14 = v13[1];

    sub_24AC47AEC(v8, type metadata accessor for PeerPath);
    v16 = sub_24AC29E20(v15, v14, v60);

    *(v10 + 4) = v16;
    *(v10 + 12) = 2114;
    v17 = v57;
    if (v57)
    {
      v18 = v1;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      v17 = v19;
    }

    else
    {
      v19 = 0;
    }

    *(v10 + 14) = v19;
    *v11 = v17;
    _os_log_impl(&dword_24AC18000, v5, v6, "%{public}s: didCompletePairing with error %{public}@", v10, 0x16u);
    sub_24AC212F4(v11, &qword_27EF9E6A0, &qword_24ACD5590);
    MEMORY[0x24C22DC60](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x24C22DC60](v12, -1, -1);
    MEMORY[0x24C22DC60](v10, -1, -1);
  }

  else
  {
  }

  v20 = v0[13];
  v21 = v0[14];
  v22 = v0[12];
  v23 = v0[10];
  v24 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_pairingContinuation;
  swift_beginAccess();
  sub_24AC2B5DC(v23 + v24, v22, &qword_27EF9E4F0, &unk_24ACD4130);
  v25 = (*(v21 + 48))(v22, 1, v20);
  v26 = v0[12];
  if (v25 == 1)
  {
    v27 = v0[17];
    v28 = v0[15];
    v29 = v0[11];
    sub_24AC212F4(v0[12], &qword_27EF9E4F0, &unk_24ACD4130);
    type metadata accessor for CentralManager.Error();
    sub_24AC46D0C(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v30 = v0[1];
  }

  else
  {
    v31 = v0[9];
    (*(v0[14] + 32))(v0[15], v0[12], v0[13]);
    v32 = v0[15];
    v33 = v0[13];
    if (v31)
    {
      v0[8] = v1;
      v34 = v1;
      sub_24ACD0750();
    }

    else
    {
      v35 = v0[13];
      sub_24ACD0760();
    }

    v36 = v0[10];

    v37 = sub_24ACD0470();
    v38 = sub_24ACD0930();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = v0[16];
      v40 = v0[17];
      v56 = v0[14];
      v58 = v0[13];
      v59 = v0[15];
      v41 = v0[10];
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v60[0] = v43;
      *v42 = 136446210;
      sub_24AC2A3DC(v41 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_peerPath, v40);
      v44 = (v40 + *(v39 + 32));
      v45 = *v44;
      v46 = v44[1];

      sub_24AC47AEC(v40, type metadata accessor for PeerPath);
      v47 = sub_24AC29E20(v45, v46, v60);

      *(v42 + 4) = v47;
      _os_log_impl(&dword_24AC18000, v37, v38, "%{public}s: didCompletePairing - clearing pairingContinuation", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v43);
      MEMORY[0x24C22DC60](v43, -1, -1);
      MEMORY[0x24C22DC60](v42, -1, -1);

      (*(v56 + 8))(v59, v58);
    }

    else
    {
      v49 = v0[14];
      v48 = v0[15];
      v50 = v0[13];

      (*(v49 + 8))(v48, v50);
    }

    v51 = v0[17];
    v52 = v0[15];
    v53 = v0[12];
    v54 = v0[11];
    (*(v0[14] + 56))(v54, 1, 1, v0[13]);
    swift_beginAccess();
    sub_24AC463C4(v54, v23 + v24, &qword_27EF9E4F0, &unk_24ACD4130);
    swift_endAccess();

    v30 = v0[1];
  }

  return v30();
}

uint64_t sub_24AC3B9DC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for PeerPath();
  v3[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v6 = sub_24ACD0420();
  v3[7] = v6;
  v7 = *(v6 - 8);
  v3[8] = v7;
  v8 = *(v7 + 64) + 15;
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC3BADC, v2, 0);
}

uint64_t sub_24AC3BADC()
{
  v39 = v0;
  v1 = v0[4];
  sub_24ACD0120();
  v2 = *(v1 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_delegateQueue);
  if ((sub_24ACD0100() & 1) == 0)
  {
    return sub_24ACD0B20();
  }

  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[4];
  v8 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  sub_24ACCFFE0();
  v9 = [v8 identifier];
  sub_24ACD03F0();

  LOBYTE(v9) = _s15FindMyBluetooth11ServiceUUIDV2eeoiySbAC_ACtFZ_0();
  v10 = *(v6 + 8);
  v10(v4, v5);
  v10(v3, v5);
  if ((v9 & 1) == 0)
  {
    return sub_24ACD0B20();
  }

  if (qword_27EF9DC38 != -1)
  {
    swift_once();
  }

  v12 = v0[3];
  v11 = v0[4];
  v13 = sub_24ACD0490();
  __swift_project_value_buffer(v13, qword_27EF9E010);

  v14 = sub_24ACD0470();
  v15 = sub_24ACD0930();

  if (os_log_type_enabled(v14, v15))
  {
    v17 = v0[5];
    v16 = v0[6];
    v19 = v0[3];
    v18 = v0[4];
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v38 = v21;
    *v20 = 136446722;
    sub_24AC2A3DC(v18 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_peerPath, v16);
    v22 = (v16 + *(v17 + 32));
    v23 = *v22;
    v24 = v22[1];

    sub_24AC47AEC(v16, type metadata accessor for PeerPath);
    v25 = sub_24AC29E20(v23, v24, &v38);

    *(v20 + 4) = v25;
    *(v20 + 12) = 2080;
    v26 = sub_24AC39074();
    v28 = sub_24AC29E20(v26, v27, &v38);

    *(v20 + 14) = v28;
    *(v20 + 22) = 2080;
    v29 = sub_24AC2B8F8(0, &qword_27EF9E0F8, 0x277CBE098);
    v30 = MEMORY[0x24C22CE70](v19, v29);
    v32 = sub_24AC29E20(v30, v31, &v38);

    *(v20 + 24) = v32;
    _os_log_impl(&dword_24AC18000, v14, v15, "%{public}s: NOT IMPLEMENTED -- didModifyServices for %s invalidatedServices: %s", v20, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C22DC60](v21, -1, -1);
    MEMORY[0x24C22DC60](v20, -1, -1);
  }

  v34 = v0[9];
  v33 = v0[10];
  v35 = v0[6];

  v36 = v0[1];

  return v36();
}

uint64_t sub_24AC3BEAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for PeerPath();
  v4[6] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v7 = sub_24ACD0420();
  v4[8] = v7;
  v8 = *(v7 - 8);
  v4[9] = v8;
  v9 = *(v8 + 64) + 15;
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC3BFAC, v3, 0);
}

uint64_t sub_24AC3BFAC()
{
  v41 = v0;
  v1 = v0[5];
  sub_24ACD0120();
  v2 = *(v1 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_delegateQueue);
  if ((sub_24ACD0100() & 1) == 0)
  {
    return sub_24ACD0B20();
  }

  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[8];
  v6 = v0[9];
  v7 = v0[5];
  v8 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  sub_24ACCFFE0();
  v9 = [v8 identifier];
  sub_24ACD03F0();

  LOBYTE(v9) = _s15FindMyBluetooth11ServiceUUIDV2eeoiySbAC_ACtFZ_0();
  v10 = *(v6 + 8);
  v10(v4, v5);
  v10(v3, v5);
  if ((v9 & 1) == 0)
  {
    return sub_24ACD0B20();
  }

  if (qword_27EF9DC38 != -1)
  {
    swift_once();
  }

  v12 = v0[4];
  v11 = v0[5];
  v13 = sub_24ACD0490();
  __swift_project_value_buffer(v13, qword_27EF9E010);

  v14 = v12;
  v15 = sub_24ACD0470();
  v16 = sub_24ACD0930();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = v0[6];
    v18 = v0[7];
    v19 = v0[5];
    v37 = v0[3];
    v38 = v0[4];
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v40 = v39;
    *v20 = 136446978;
    sub_24AC2A3DC(v19 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_peerPath, v18);
    v22 = (v18 + *(v17 + 32));
    v24 = *v22;
    v23 = v22[1];

    sub_24AC47AEC(v18, type metadata accessor for PeerPath);
    v25 = sub_24AC29E20(v24, v23, &v40);

    *(v20 + 4) = v25;
    *(v20 + 12) = 2080;
    v26 = sub_24AC39074();
    v28 = sub_24AC29E20(v26, v27, &v40);

    *(v20 + 14) = v28;
    *(v20 + 22) = 2048;
    *(v20 + 24) = v37;
    *(v20 + 32) = 2112;
    v29 = v38;
    if (v38)
    {
      v30 = v12;
      v31 = _swift_stdlib_bridgeErrorToNSError();
      v29 = v31;
    }

    else
    {
      v31 = 0;
    }

    *(v20 + 34) = v31;
    *v21 = v29;
    _os_log_impl(&dword_24AC18000, v15, v16, "%{public}s: NOT IMPLEMENTED -- didReadRSSI for %s rssi: %ld, error: %@", v20, 0x2Au);
    sub_24AC212F4(v21, &qword_27EF9E6A0, &qword_24ACD5590);
    MEMORY[0x24C22DC60](v21, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C22DC60](v39, -1, -1);
    MEMORY[0x24C22DC60](v20, -1, -1);
  }

  v34 = v0[10];
  v33 = v0[11];
  v35 = v0[7];

  v36 = v0[1];

  return v36();
}

uint64_t sub_24AC3C3BC(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F0, &unk_24ACD4130) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
  v3[14] = v5;
  v6 = *(v5 - 8);
  v3[15] = v6;
  v7 = *(v6 + 64) + 15;
  v3[16] = swift_task_alloc();
  v8 = sub_24ACD0420();
  v3[17] = v8;
  v9 = *(v8 - 8);
  v3[18] = v9;
  v10 = *(v9 + 64) + 15;
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC3C538, v2, 0);
}

uint64_t sub_24AC3C538()
{
  v39 = v0;
  v1 = v0[11];
  sub_24ACD0120();
  v2 = *(v1 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_delegateQueue);
  if ((sub_24ACD0100() & 1) == 0)
  {
    return sub_24ACD0B20();
  }

  if (sub_24ACD0840())
  {
    if (qword_27EF9DC38 != -1)
    {
      swift_once();
    }

    v3 = sub_24ACD0490();
    __swift_project_value_buffer(v3, qword_27EF9E010);
    v4 = sub_24ACD0470();
    v5 = sub_24ACD0910();
    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_8;
    }

    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v38 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_24AC29E20(0xD000000000000022, 0x800000024ACD9930, &v38);
    v8 = "%{public}s Not resuming continuation in cancelled task.";
    goto LABEL_7;
  }

  v17 = v0[19];
  v16 = v0[20];
  v18 = v0[17];
  v19 = v0[18];
  v20 = v0[11];
  v21 = v0[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  sub_24ACCFFE0();
  v22 = [v21 identifier];
  sub_24ACD03F0();

  LOBYTE(v22) = _s15FindMyBluetooth11ServiceUUIDV2eeoiySbAC_ACtFZ_0();
  v23 = *(v19 + 8);
  v23(v17, v18);
  v23(v16, v18);
  if ((v22 & 1) == 0)
  {
    return sub_24ACD0B20();
  }

  v24 = v0[14];
  v25 = v0[15];
  v26 = v0[13];
  v27 = v0[11];
  v28 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_discoverServicesContinuation;
  swift_beginAccess();
  sub_24AC2B5DC(v27 + v28, v26, &qword_27EF9E4F0, &unk_24ACD4130);
  if ((*(v25 + 48))(v26, 1, v24) != 1)
  {
    v30 = v0[10];
    (*(v0[15] + 32))(v0[16], v0[13], v0[14]);
    v32 = v0[15];
    v31 = v0[16];
    v33 = v0[14];
    if (v30)
    {
      v34 = v0[10];
      v0[8] = v34;
      v35 = v34;
      sub_24ACD0750();
    }

    else
    {
      v36 = v0[14];
      sub_24ACD0760();
    }

    (*(v32 + 8))(v31, v33);
    v37 = v0[12];
    (*(v0[15] + 56))(v37, 1, 1, v0[14]);
    swift_beginAccess();
    sub_24AC463C4(v37, v27 + v28, &qword_27EF9E4F0, &unk_24ACD4130);
    swift_endAccess();
    goto LABEL_9;
  }

  sub_24AC212F4(v0[13], &qword_27EF9E4F0, &unk_24ACD4130);
  if (qword_27EF9DC38 != -1)
  {
    swift_once();
  }

  v29 = sub_24ACD0490();
  __swift_project_value_buffer(v29, qword_27EF9E010);
  v4 = sub_24ACD0470();
  v5 = sub_24ACD0910();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v38 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_24AC29E20(0xD000000000000022, 0x800000024ACD9930, &v38);
    v8 = "%{public}s called with no discoverServicesContinuation";
LABEL_7:
    _os_log_impl(&dword_24AC18000, v4, v5, v8, v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x24C22DC60](v7, -1, -1);
    MEMORY[0x24C22DC60](v6, -1, -1);
  }

LABEL_8:

LABEL_9:
  v10 = v0[19];
  v9 = v0[20];
  v11 = v0[16];
  v13 = v0[12];
  v12 = v0[13];

  v14 = v0[1];

  return v14();
}

uint64_t sub_24AC3CA50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F0, &unk_24ACD4130) - 8) + 64) + 15;
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
  v4[18] = v6;
  v7 = *(v6 - 8);
  v4[19] = v7;
  v8 = *(v7 + 64) + 15;
  v4[20] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E090, &qword_24ACD37C0);
  v4[21] = v9;
  v10 = *(v9 - 8);
  v4[22] = v10;
  v11 = *(v10 + 64) + 15;
  v4[23] = swift_task_alloc();
  v12 = sub_24ACD0420();
  v4[24] = v12;
  v13 = *(v12 - 8);
  v4[25] = v13;
  v14 = *(v13 + 64) + 15;
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC3CC34, v3, 0);
}

uint64_t sub_24AC3CC34()
{
  v38 = v0;
  v1 = *(v0 + 120);
  sub_24ACD0120();
  v2 = *(v1 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_delegateQueue);
  if ((sub_24ACD0100() & 1) == 0)
  {
    return sub_24ACD0B20();
  }

  if (sub_24ACD0840())
  {
    if (qword_27EF9DC38 != -1)
    {
      swift_once();
    }

    v3 = sub_24ACD0490();
    __swift_project_value_buffer(v3, qword_27EF9E010);
    v4 = sub_24ACD0470();
    v5 = sub_24ACD0910();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v37[0] = v7;
      *v6 = 136446210;
      *(v6 + 4) = sub_24AC29E20(0xD000000000000032, 0x800000024ACD98A0, v37);
      _os_log_impl(&dword_24AC18000, v4, v5, "%{public}s Not resuming continuation in cancelled task.", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x24C22DC60](v7, -1, -1);
      MEMORY[0x24C22DC60](v6, -1, -1);
    }

    v9 = *(v0 + 208);
    v8 = *(v0 + 216);
    v10 = *(v0 + 184);
    v11 = *(v0 + 160);
    v13 = *(v0 + 128);
    v12 = *(v0 + 136);

    v14 = *(v0 + 8);

    return v14();
  }

  v17 = *(v0 + 208);
  v16 = *(v0 + 216);
  v18 = *(v0 + 192);
  v19 = *(v0 + 200);
  v20 = *(v0 + 120);
  v21 = *(v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  sub_24ACCFFE0();
  v22 = [v21 identifier];
  sub_24ACD03F0();

  LOBYTE(v22) = _s15FindMyBluetooth11ServiceUUIDV2eeoiySbAC_ACtFZ_0();
  v23 = *(v19 + 8);
  v23(v17, v18);
  v23(v16, v18);
  if ((v22 & 1) == 0)
  {
    return sub_24ACD0B20();
  }

  v24 = *(v0 + 216);
  v25 = *(v0 + 184);
  v26 = *(v0 + 120);
  v27 = [*(v0 + 104) UUID];
  CBUUID.uuidValue.getter(v24);

  type metadata accessor for Service();
  sub_24ACD0000();
  v28 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_services;
  swift_beginAccess();
  v29 = *(v26 + v28);
  if (!*(v29 + 16))
  {
    goto LABEL_20;
  }

  v30 = *(v0 + 184);

  v31 = sub_24AC2ACC8(v30);
  if ((v32 & 1) == 0)
  {

    goto LABEL_20;
  }

  v33 = *(*(v29 + 56) + 8 * v31);
  *(v0 + 224) = v33;

  if (!v33)
  {
LABEL_20:
    v34 = *(v0 + 184);
    v35 = *(v0 + 168);
    sub_24ACD0A20();

    v37[0] = 0xD000000000000014;
    v37[1] = 0x800000024ACD9850;
    sub_24AC2B6A8(&qword_27EF9E0D0, &unk_27EF9E090, &qword_24ACD37C0);
    v36 = sub_24ACD0C20();
    MEMORY[0x24C22CD50](v36);

    return sub_24ACD0B20();
  }

  return MEMORY[0x2822009F8](sub_24AC3D118, v33, 0);
}

uint64_t sub_24AC3D118()
{
  v1 = v0[28];
  v2 = v0[17];
  v3 = v0[15];
  v4 = OBJC_IVAR____TtC15FindMyBluetooth7Service_discoverCharacteristicsContinuation;
  v0[29] = OBJC_IVAR____TtC15FindMyBluetooth7Service_discoverCharacteristicsContinuation;
  swift_beginAccess();
  sub_24AC2B5DC(v1 + v4, v2, &qword_27EF9E4F0, &unk_24ACD4130);

  return MEMORY[0x2822009F8](sub_24AC3D1CC, v3, 0);
}

uint64_t sub_24AC3D1CC()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[17];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_24AC212F4(v3, &qword_27EF9E4F0, &unk_24ACD4130);
    return sub_24ACD0B20();
  }

  else
  {
    v5 = v0[14];
    (*(v2 + 32))(v0[20], v3, v1);
    v6 = v0[20];
    v7 = v0[18];
    if (v5)
    {
      v8 = v0[14];
      v0[11] = v8;
      v9 = v8;
      sub_24ACD0750();
    }

    else
    {
      v10 = v0[18];
      sub_24ACD0760();
    }

    v11 = v0[28];

    return MEMORY[0x2822009F8](sub_24AC3D334, v11, 0);
  }
}

uint64_t sub_24AC3D334()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[15];
  v4 = v0[16];
  (*(v0[19] + 56))(v4, 1, 1, v0[18]);
  swift_beginAccess();
  sub_24AC463C4(v4, v2 + v1, &qword_27EF9E4F0, &unk_24ACD4130);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_24AC3D3FC, v3, 0);
}

uint64_t sub_24AC3D3FC()
{
  v1 = v0[28];
  v3 = v0[22];
  v2 = v0[23];
  v5 = v0[20];
  v4 = v0[21];
  v6 = v0[18];
  v7 = v0[19];

  (*(v7 + 8))(v5, v6);
  (*(v3 + 8))(v2, v4);
  v9 = v0[26];
  v8 = v0[27];
  v10 = v0[23];
  v11 = v0[20];
  v13 = v0[16];
  v12 = v0[17];

  v14 = v0[1];

  return v14();
}

uint64_t sub_24AC3D4E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[18] = a5;
  v6[19] = v5;
  v6[16] = a3;
  v6[17] = a4;
  v6[14] = a1;
  v6[15] = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E0E0, &qword_24ACD44B0);
  v6[20] = v7;
  v8 = *(v7 - 8);
  v6[21] = v8;
  v9 = *(v8 + 64) + 15;
  v6[22] = swift_task_alloc();
  v10 = type metadata accessor for PeerPath();
  v6[23] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v6[24] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E0E8, &qword_24ACD44B8) - 8) + 64) + 15;
  v6[25] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E0F0, &qword_24ACD44C0);
  v6[26] = v13;
  v14 = *(v13 - 8);
  v6[27] = v14;
  v15 = *(v14 + 64) + 15;
  v6[28] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DDE8, &unk_24ACD37D0);
  v6[29] = v16;
  v17 = *(v16 - 8);
  v6[30] = v17;
  v18 = *(v17 + 64) + 15;
  v6[31] = swift_task_alloc();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E090, &qword_24ACD37C0);
  v6[32] = v19;
  v20 = *(v19 - 8);
  v6[33] = v20;
  v21 = *(v20 + 64) + 15;
  v6[34] = swift_task_alloc();
  v6[35] = swift_task_alloc();
  v22 = sub_24ACD0420();
  v6[36] = v22;
  v23 = *(v22 - 8);
  v6[37] = v23;
  v24 = *(v23 + 64) + 15;
  v6[38] = swift_task_alloc();
  v6[39] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC3D7CC, v5, 0);
}

uint64_t sub_24AC3D7CC()
{
  v89 = v0;
  v1 = *(v0 + 152);
  sub_24ACD0120();
  v2 = *(v1 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_delegateQueue);
  if ((sub_24ACD0100() & 1) == 0)
  {
    return sub_24ACD0B20();
  }

  v4 = *(v0 + 304);
  v3 = *(v0 + 312);
  v5 = *(v0 + 288);
  v6 = *(v0 + 296);
  v7 = *(v0 + 152);
  v8 = *(v0 + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  sub_24ACCFFE0();
  v9 = [v8 identifier];
  sub_24ACD03F0();

  LOBYTE(v9) = _s15FindMyBluetooth11ServiceUUIDV2eeoiySbAC_ACtFZ_0();
  v10 = *(v6 + 8);
  v10(v4, v5);
  v10(v3, v5);
  v11 = 0x27EF9D000uLL;
  if ((v9 & 1) != 0 && (v12 = [*(v0 + 120) service], (*(v0 + 320) = v12) != 0))
  {
    v13 = v12;
    v14 = *(v0 + 312);
    v15 = *(v0 + 280);
    v16 = *(v0 + 152);
    v17 = [v12 UUID];
    CBUUID.uuidValue.getter(v14);

    type metadata accessor for Service();
    sub_24ACD0000();
    v18 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_services;
    swift_beginAccess();
    v19 = *(v16 + v18);
    if (*(v19 + 16))
    {
      v20 = *(v0 + 280);

      v21 = sub_24AC2ACC8(v20);
      if (v22)
      {
        v23 = *(*(v19 + 56) + 8 * v21);
        *(v0 + 328) = v23;

        if (v23)
        {
          v24 = *(v0 + 312);
          v25 = *(v0 + 248);
          v26 = [*(v0 + 120) UUID];
          CBUUID.uuidValue.getter(v24);

          type metadata accessor for Characteristic();
          sub_24ACD0000();
          v27 = swift_task_alloc();
          *(v0 + 336) = v27;
          *v27 = v0;
          v27[1] = sub_24AC3E160;
          v28 = *(v0 + 248);

          return sub_24AC27600(v28);
        }
      }

      else
      {
      }
    }

    if (qword_27EF9DC38 != -1)
    {
      swift_once();
    }

    v32 = *(v0 + 272);
    v31 = *(v0 + 280);
    v33 = *(v0 + 256);
    v34 = *(v0 + 264);
    v35 = *(v0 + 152);
    v36 = sub_24ACD0490();
    __swift_project_value_buffer(v36, qword_27EF9E010);
    (*(v34 + 16))(v32, v31, v33);

    v37 = sub_24ACD0470();
    v38 = sub_24ACD0920();

    log = v37;
    v39 = os_log_type_enabled(v37, v38);
    v41 = *(v0 + 264);
    v40 = *(v0 + 272);
    v42 = *(v0 + 256);
    if (v39)
    {
      v86 = v38;
      v43 = *(v0 + 184);
      v44 = *(v0 + 192);
      v45 = *(v0 + 152);
      v46 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v88[0] = v85;
      *v46 = 136446466;
      sub_24AC2A3DC(v45 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_peerPath, v44);
      v47 = (v44 + *(v43 + 32));
      v49 = *v47;
      v48 = v47[1];

      sub_24AC47AEC(v44, type metadata accessor for PeerPath);
      v50 = sub_24AC29E20(v49, v48, v88);

      *(v46 + 4) = v50;
      *(v46 + 12) = 2082;
      sub_24AC2B6A8(&qword_27EF9E0D0, &unk_27EF9E090, &qword_24ACD37C0);
      v51 = sub_24ACD0C20();
      v53 = v52;
      v54 = *(v41 + 8);
      v54(v40, v42);
      v55 = sub_24AC29E20(v51, v53, v88);
      v11 = 0x27EF9D000;

      *(v46 + 14) = v55;
      _os_log_impl(&dword_24AC18000, log, v86, "%{public}s: Missing service for %{public}s", v46, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C22DC60](v85, -1, -1);
      MEMORY[0x24C22DC60](v46, -1, -1);
    }

    else
    {

      v54 = *(v41 + 8);
      v54(v40, v42);
    }

    v56 = *(v0 + 280);
    v57 = *(v0 + 256);
    type metadata accessor for CentralManager.Error();
    sub_24AC46D0C(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
    v30 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v54(v56, v57);
  }

  else
  {
    type metadata accessor for CentralManager.Error();
    sub_24AC46D0C(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
    v30 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  if (*(v11 + 3128) != -1)
  {
    swift_once();
  }

  v58 = *(v0 + 152);
  v59 = sub_24ACD0490();
  __swift_project_value_buffer(v59, qword_27EF9E010);

  v60 = v30;
  v61 = sub_24ACD0470();
  v62 = sub_24ACD0920();

  if (os_log_type_enabled(v61, v62))
  {
    v64 = *(v0 + 184);
    v63 = *(v0 + 192);
    v65 = *(v0 + 152);
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v88[0] = v68;
    *v66 = 136446722;
    sub_24AC2A3DC(v65 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_peerPath, v63);
    v69 = (v63 + *(v64 + 32));
    v70 = *v69;
    v71 = v69[1];

    sub_24AC47AEC(v63, type metadata accessor for PeerPath);
    v72 = sub_24AC29E20(v70, v71, v88);

    *(v66 + 4) = v72;
    *(v66 + 12) = 2080;
    *(v66 + 14) = sub_24AC29E20(0xD00000000000002CLL, 0x800000024ACD97C0, v88);
    *(v66 + 22) = 2114;
    v73 = v30;
    v74 = _swift_stdlib_bridgeErrorToNSError();
    *(v66 + 24) = v74;
    *v67 = v74;
    _os_log_impl(&dword_24AC18000, v61, v62, "%{public}s: Error in Peripheral delegate %s: %{public}@", v66, 0x20u);
    sub_24AC212F4(v67, &qword_27EF9E6A0, &qword_24ACD5590);
    MEMORY[0x24C22DC60](v67, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C22DC60](v68, -1, -1);
    MEMORY[0x24C22DC60](v66, -1, -1);
  }

  else
  {
  }

  v76 = *(v0 + 304);
  v75 = *(v0 + 312);
  v78 = *(v0 + 272);
  v77 = *(v0 + 280);
  v79 = *(v0 + 248);
  v80 = *(v0 + 224);
  v82 = *(v0 + 192);
  v81 = *(v0 + 200);
  v83 = *(v0 + 176);

  v84 = *(v0 + 8);

  return v84();
}

uint64_t sub_24AC3E160(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 336);
  v6 = *v2;
  *(*v2 + 344) = a1;

  if (v1)
  {
    a1 = *(v4 + 152);

    v7 = sub_24AC3EB04;
  }

  else
  {
    v7 = sub_24AC3E290;
  }

  return MEMORY[0x2822009F8](v7, a1, 0);
}

uint64_t sub_24AC3E290()
{
  v1 = v0[43];
  v2 = v0[25];
  v3 = v0[19];
  v4 = OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_updateValueContinuation;
  swift_beginAccess();
  sub_24AC2B5DC(v1 + v4, v2, &qword_27EF9E0E8, &qword_24ACD44B8);

  return MEMORY[0x2822009F8](sub_24AC3E340, v3, 0);
}

uint64_t sub_24AC3E340()
{
  v98 = v0;
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[25];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[43];
    v5 = v0[40];
    v6 = v0[41];
    v7 = v0[33];
    v91 = v0[32];
    v94 = v0[35];
    v8 = v0[30];
    v9 = v0[31];
    v10 = v0[29];
    sub_24AC212F4(v3, &qword_27EF9E0E8, &qword_24ACD44B8);
    type metadata accessor for CentralManager.Error();
    sub_24AC46D0C(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
    v11 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    (*(v8 + 8))(v9, v10);
    (*(v7 + 8))(v94, v91);
    if (qword_27EF9DC38 != -1)
    {
      swift_once();
    }

    v12 = v0[19];
    v13 = sub_24ACD0490();
    __swift_project_value_buffer(v13, qword_27EF9E010);

    v14 = v11;
    v15 = sub_24ACD0470();
    v16 = sub_24ACD0920();

    if (os_log_type_enabled(v15, v16))
    {
      v18 = v0[23];
      v17 = v0[24];
      v19 = v0[19];
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v97[0] = v22;
      *v20 = 136446722;
      sub_24AC2A3DC(v19 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_peerPath, v17);
      v23 = (v17 + *(v18 + 32));
      v24 = *v23;
      v25 = v23[1];

      sub_24AC47AEC(v17, type metadata accessor for PeerPath);
      v26 = sub_24AC29E20(v24, v25, v97);

      *(v20 + 4) = v26;
      *(v20 + 12) = 2080;
      *(v20 + 14) = sub_24AC29E20(0xD00000000000002CLL, 0x800000024ACD97C0, v97);
      *(v20 + 22) = 2114;
      v27 = v11;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 24) = v28;
      *v21 = v28;
      _os_log_impl(&dword_24AC18000, v15, v16, "%{public}s: Error in Peripheral delegate %s: %{public}@", v20, 0x20u);
      sub_24AC212F4(v21, &qword_27EF9E6A0, &qword_24ACD5590);
      MEMORY[0x24C22DC60](v21, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x24C22DC60](v22, -1, -1);
      MEMORY[0x24C22DC60](v20, -1, -1);
    }

    else
    {
    }

    goto LABEL_12;
  }

  v29 = v0[18];
  (*(v2 + 32))(v0[28], v3, v1);
  if (v29)
  {
    v30 = v0[43];
    v32 = v0[40];
    v31 = v0[41];
    v33 = v0[33];
    v92 = v0[32];
    v95 = v0[35];
    v34 = v0[30];
    v89 = v0[31];
    v35 = v0[28];
    v36 = v0[29];
    v38 = v0[26];
    v37 = v0[27];
    v39 = v0[18];
    v0[13] = v39;
    v40 = v39;
LABEL_11:
    sub_24ACD08A0();

    (*(v37 + 8))(v35, v38);
    (*(v34 + 8))(v89, v36);
    (*(v33 + 8))(v95, v92);
    goto LABEL_12;
  }

  v41 = v0[17];
  if (v41 >> 60 == 15)
  {
    v42 = v0[43];
    v32 = v0[40];
    v43 = v0[41];
    v33 = v0[33];
    v92 = v0[32];
    v95 = v0[35];
    v34 = v0[30];
    v89 = v0[31];
    v35 = v0[28];
    v36 = v0[29];
    v38 = v0[26];
    v37 = v0[27];
    v0[12] = 0;
    goto LABEL_11;
  }

  sub_24AC46630(v0[16], v41);
  if (qword_27EF9DC38 != -1)
  {
    swift_once();
  }

  v55 = v0[43];
  v57 = v0[16];
  v56 = v0[17];
  v58 = sub_24ACD0490();
  __swift_project_value_buffer(v58, qword_27EF9E010);
  sub_24AC4661C(v57, v56);

  v59 = sub_24ACD0470();
  v60 = sub_24ACD0930();

  sub_24AC46684(v57, v56);
  if (os_log_type_enabled(v59, v60))
  {
    v61 = v0[43];
    v63 = v0[23];
    v62 = v0[24];
    v65 = v0[16];
    v64 = v0[17];
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v97[0] = v67;
    *v66 = 136315394;
    sub_24AC2A3DC(v61 + OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_peerPath, v62);
    v68 = (v62 + *(v63 + 32));
    v69 = *v68;
    v70 = v68[1];

    sub_24AC47AEC(v62, type metadata accessor for PeerPath);
    v71 = sub_24AC29E20(v69, v70, v97);

    *(v66 + 4) = v71;
    *(v66 + 12) = 2080;
    v0[10] = v65;
    v0[11] = v64;
    sub_24AC467AC();
    v72 = sub_24ACD0180();
    v74 = sub_24AC29E20(v72, v73, v97);

    *(v66 + 14) = v74;
    _os_log_impl(&dword_24AC18000, v59, v60, "%s: didUpdateValue %s", v66, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C22DC60](v67, -1, -1);
    MEMORY[0x24C22DC60](v66, -1, -1);
  }

  v86 = v0[43];
  v87 = v0[40];
  v75 = v0[33];
  v93 = v0[32];
  v96 = v0[35];
  v76 = v0[30];
  v77 = v0[28];
  v88 = v0[29];
  v90 = v0[31];
  v79 = v0[26];
  v78 = v0[27];
  v80 = v0[21];
  v81 = v0[22];
  v84 = v0[41];
  v85 = v0[20];
  v83 = v0[16];
  v82 = v0[17];
  v0[8] = v83;
  v0[9] = v82;
  sub_24AC46630(v83, v82);
  sub_24ACD0890();

  sub_24AC46684(v83, v82);

  (*(v80 + 8))(v81, v85);
  (*(v78 + 8))(v77, v79);
  (*(v76 + 8))(v90, v88);
  (*(v75 + 8))(v96, v93);
LABEL_12:
  v45 = v0[38];
  v44 = v0[39];
  v47 = v0[34];
  v46 = v0[35];
  v48 = v0[31];
  v49 = v0[28];
  v51 = v0[24];
  v50 = v0[25];
  v52 = v0[22];

  v53 = v0[1];

  return v53();
}

uint64_t sub_24AC3EB04()
{
  v58 = v0;
  if (qword_27EF9DC38 != -1)
  {
    swift_once();
  }

  v1 = v0[19];
  v2 = v0[15];
  v55 = sub_24ACD0490();
  __swift_project_value_buffer(v55, qword_27EF9E010);

  v3 = v2;
  v4 = sub_24ACD0470();
  v5 = sub_24ACD0910();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[23];
    v6 = v0[24];
    v8 = v0[19];
    v9 = v0[15];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v57[0] = v12;
    *v10 = 136446466;
    sub_24AC2A3DC(v8 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_peerPath, v6);
    v13 = (v6 + *(v7 + 32));
    v14 = *v13;
    v15 = v13[1];

    sub_24AC47AEC(v6, type metadata accessor for PeerPath);
    v16 = sub_24AC29E20(v14, v15, v57);

    *(v10 + 4) = v16;
    *(v10 + 12) = 2112;
    *(v10 + 14) = v9;
    *v11 = v9;
    v17 = v9;
    _os_log_impl(&dword_24AC18000, v4, v5, "%{public}s: got update for unknown characteristic: %@", v10, 0x16u);
    sub_24AC212F4(v11, &qword_27EF9E6A0, &qword_24ACD5590);
    MEMORY[0x24C22DC60](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x24C22DC60](v12, -1, -1);
    MEMORY[0x24C22DC60](v10, -1, -1);
  }

  v18 = v0[40];
  v19 = v0[41];
  v54 = v0[35];
  v21 = v0[32];
  v20 = v0[33];
  v23 = v0[30];
  v22 = v0[31];
  v24 = v0[29];
  type metadata accessor for CentralManager.Error();
  sub_24AC46D0C(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
  v25 = swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  (*(v23 + 8))(v22, v24);
  (*(v20 + 8))(v54, v21);
  if (qword_27EF9DC38 != -1)
  {
    swift_once();
  }

  v26 = v0[19];
  __swift_project_value_buffer(v55, qword_27EF9E010);

  v27 = v25;
  v28 = sub_24ACD0470();
  v29 = sub_24ACD0920();

  v30 = v25;
  if (os_log_type_enabled(v28, v29))
  {
    v31 = v0[23];
    v32 = v0[24];
    v33 = v0[19];
    v56 = v30;
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v57[0] = v36;
    *v34 = 136446722;
    sub_24AC2A3DC(v33 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_peerPath, v32);
    v37 = (v32 + *(v31 + 32));
    v38 = *v37;
    v39 = v37[1];

    sub_24AC47AEC(v32, type metadata accessor for PeerPath);
    v40 = sub_24AC29E20(v38, v39, v57);

    *(v34 + 4) = v40;
    *(v34 + 12) = 2080;
    *(v34 + 14) = sub_24AC29E20(0xD00000000000002CLL, 0x800000024ACD97C0, v57);
    *(v34 + 22) = 2114;
    v41 = v56;
    v42 = _swift_stdlib_bridgeErrorToNSError();
    *(v34 + 24) = v42;
    *v35 = v42;
    _os_log_impl(&dword_24AC18000, v28, v29, "%{public}s: Error in Peripheral delegate %s: %{public}@", v34, 0x20u);
    sub_24AC212F4(v35, &qword_27EF9E6A0, &qword_24ACD5590);
    MEMORY[0x24C22DC60](v35, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C22DC60](v36, -1, -1);
    MEMORY[0x24C22DC60](v34, -1, -1);
  }

  else
  {
  }

  v44 = v0[38];
  v43 = v0[39];
  v46 = v0[34];
  v45 = v0[35];
  v47 = v0[31];
  v48 = v0[28];
  v50 = v0[24];
  v49 = v0[25];
  v51 = v0[22];

  v52 = v0[1];

  return v52();
}

uint64_t sub_24AC3F094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v5 = type metadata accessor for PeerPath();
  v4[9] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[10] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DDE8, &unk_24ACD37D0);
  v4[11] = v7;
  v8 = *(v7 - 8);
  v4[12] = v8;
  v9 = *(v8 + 64) + 15;
  v4[13] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E090, &qword_24ACD37C0);
  v4[14] = v10;
  v11 = *(v10 - 8);
  v4[15] = v11;
  v12 = *(v11 + 64) + 15;
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v13 = sub_24ACD0420();
  v4[18] = v13;
  v14 = *(v13 - 8);
  v4[19] = v14;
  v15 = *(v14 + 64) + 15;
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC3F270, v3, 0);
}

uint64_t sub_24AC3F270()
{
  v90 = v0;
  v1 = *(v0 + 64);
  sub_24ACD0120();
  v2 = *(v1 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_delegateQueue);
  if ((sub_24ACD0100() & 1) == 0)
  {
    return sub_24ACD0B20();
  }

  if (sub_24ACD0840())
  {
    if (qword_27EF9DC38 != -1)
    {
      swift_once();
    }

    v3 = sub_24ACD0490();
    __swift_project_value_buffer(v3, qword_27EF9E010);
    v4 = sub_24ACD0470();
    v5 = sub_24ACD0910();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v89[0] = v7;
      *v6 = 136446210;
      *(v6 + 4) = sub_24AC29E20(0xD000000000000025, 0x800000024ACD96E0, v89);
      _os_log_impl(&dword_24AC18000, v4, v5, "%{public}s Not resuming continuation in cancelled task.", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x24C22DC60](v7, -1, -1);
      MEMORY[0x24C22DC60](v6, -1, -1);
    }

    goto LABEL_28;
  }

  v10 = *(v0 + 160);
  v9 = *(v0 + 168);
  v11 = *(v0 + 144);
  v12 = *(v0 + 152);
  v13 = *(v0 + 64);
  v14 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  sub_24ACCFFE0();
  v15 = [v14 identifier];
  sub_24ACD03F0();

  LOBYTE(v15) = _s15FindMyBluetooth11ServiceUUIDV2eeoiySbAC_ACtFZ_0();
  v16 = *(v12 + 8);
  v16(v10, v11);
  v16(v9, v11);
  v17 = 0x27EF9D000uLL;
  if ((v15 & 1) == 0 || (v18 = [*(v0 + 48) service], (*(v0 + 176) = v18) == 0))
  {
    type metadata accessor for CentralManager.Error();
    sub_24AC46D0C(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
    v35 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_24:
    if (*(v17 + 3128) != -1)
    {
      swift_once();
    }

    v63 = *(v0 + 64);
    v64 = sub_24ACD0490();
    __swift_project_value_buffer(v64, qword_27EF9E010);

    v65 = v35;
    v4 = sub_24ACD0470();
    v66 = sub_24ACD0920();

    if (!os_log_type_enabled(v4, v66))
    {

      goto LABEL_30;
    }

    v68 = *(v0 + 72);
    v67 = *(v0 + 80);
    v69 = *(v0 + 64);
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v89[0] = v72;
    *v70 = 136446722;
    sub_24AC2A3DC(v69 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_peerPath, v67);
    v73 = (v67 + *(v68 + 32));
    v74 = *v73;
    v75 = v73[1];

    sub_24AC47AEC(v67, type metadata accessor for PeerPath);
    v76 = sub_24AC29E20(v74, v75, v89);

    *(v70 + 4) = v76;
    *(v70 + 12) = 2082;
    *(v70 + 14) = sub_24AC29E20(0xD000000000000025, 0x800000024ACD96E0, v89);
    *(v70 + 22) = 2114;
    v77 = v35;
    v78 = _swift_stdlib_bridgeErrorToNSError();
    *(v70 + 24) = v78;
    *v71 = v78;
    _os_log_impl(&dword_24AC18000, v4, v66, "%{public}s: Error in Peripheral delegate %{public}s: %{public}@", v70, 0x20u);
    sub_24AC212F4(v71, &qword_27EF9E6A0, &qword_24ACD5590);
    MEMORY[0x24C22DC60](v71, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C22DC60](v72, -1, -1);
    MEMORY[0x24C22DC60](v70, -1, -1);

LABEL_28:
LABEL_30:
    v80 = *(v0 + 160);
    v79 = *(v0 + 168);
    v82 = *(v0 + 128);
    v81 = *(v0 + 136);
    v83 = *(v0 + 104);
    v84 = *(v0 + 80);

    v85 = *(v0 + 8);

    return v85();
  }

  v19 = v18;
  v20 = *(v0 + 168);
  v21 = *(v0 + 136);
  v22 = *(v0 + 64);
  v23 = [v18 UUID];
  CBUUID.uuidValue.getter(v20);

  type metadata accessor for Service();
  sub_24ACD0000();
  v24 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_services;
  swift_beginAccess();
  v25 = *(v22 + v24);
  if (!*(v25 + 16))
  {
    goto LABEL_18;
  }

  v26 = *(v0 + 136);

  v27 = sub_24AC2ACC8(v26);
  if ((v28 & 1) == 0)
  {

    goto LABEL_18;
  }

  v29 = *(*(v25 + 56) + 8 * v27);
  *(v0 + 184) = v29;

  if (!v29)
  {
LABEL_18:
    if (qword_27EF9DC38 != -1)
    {
      swift_once();
    }

    v37 = *(v0 + 128);
    v36 = *(v0 + 136);
    v38 = *(v0 + 112);
    v39 = *(v0 + 120);
    v40 = *(v0 + 64);
    v41 = sub_24ACD0490();
    __swift_project_value_buffer(v41, qword_27EF9E010);
    (*(v39 + 16))(v37, v36, v38);

    v42 = sub_24ACD0470();
    v43 = sub_24ACD0920();

    log = v42;
    v44 = os_log_type_enabled(v42, v43);
    v46 = *(v0 + 120);
    v45 = *(v0 + 128);
    v47 = *(v0 + 112);
    if (v44)
    {
      v87 = v43;
      v48 = *(v0 + 72);
      v49 = *(v0 + 80);
      v50 = *(v0 + 64);
      v51 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v89[0] = v86;
      *v51 = 136446466;
      sub_24AC2A3DC(v50 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_peerPath, v49);
      v52 = (v49 + *(v48 + 32));
      v54 = *v52;
      v53 = v52[1];

      sub_24AC47AEC(v49, type metadata accessor for PeerPath);
      v55 = sub_24AC29E20(v54, v53, v89);

      *(v51 + 4) = v55;
      *(v51 + 12) = 2082;
      sub_24AC2B6A8(&qword_27EF9E0D0, &unk_27EF9E090, &qword_24ACD37C0);
      v56 = sub_24ACD0C20();
      v58 = v57;
      v59 = *(v46 + 8);
      v59(v45, v47);
      v60 = sub_24AC29E20(v56, v58, v89);
      v17 = 0x27EF9D000;

      *(v51 + 14) = v60;
      _os_log_impl(&dword_24AC18000, log, v87, "%{public}s: Missing service for %{public}s", v51, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C22DC60](v86, -1, -1);
      MEMORY[0x24C22DC60](v51, -1, -1);
    }

    else
    {

      v59 = *(v46 + 8);
      v59(v45, v47);
    }

    v61 = *(v0 + 136);
    v62 = *(v0 + 112);
    type metadata accessor for CentralManager.Error();
    sub_24AC46D0C(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
    v35 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v59(v61, v62);
    goto LABEL_24;
  }

  v30 = *(v0 + 168);
  v31 = *(v0 + 104);
  v32 = [*(v0 + 48) UUID];
  CBUUID.uuidValue.getter(v30);

  type metadata accessor for Characteristic();
  sub_24ACD0000();
  v33 = swift_task_alloc();
  *(v0 + 192) = v33;
  *v33 = v0;
  v33[1] = sub_24AC3FCF8;
  v34 = *(v0 + 104);

  return sub_24AC27600(v34);
}

uint64_t sub_24AC3FCF8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 192);
  v6 = *v2;
  v4[25] = a1;
  v4[26] = v1;

  if (v1)
  {
    v7 = v4[8];

    return MEMORY[0x2822009F8](sub_24AC400B0, v7, 0);
  }

  else
  {
    v8 = swift_task_alloc();
    v4[27] = v8;
    *v8 = v6;
    v8[1] = sub_24AC3FE80;
    v9 = v4[7];

    return sub_24AC48E28(v9);
  }
}

uint64_t sub_24AC3FE80()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v4 = *v1;
  *(*v1 + 224) = v0;

  v5 = *(v2 + 64);
  if (v0)
  {
    v6 = sub_24AC403DC;
  }

  else
  {
    v6 = sub_24AC3FFAC;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24AC3FFAC()
{
  v1 = v0[25];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[17];
  v5 = v0[14];
  v6 = v0[15];
  v8 = v0[12];
  v7 = v0[13];
  v9 = v0[11];

  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v4, v5);
  v11 = v0[20];
  v10 = v0[21];
  v13 = v0[16];
  v12 = v0[17];
  v14 = v0[13];
  v15 = v0[10];

  v16 = v0[1];

  return v16();
}

uint64_t sub_24AC400B0()
{
  v35 = v0;
  v1 = *(v0 + 184);
  v2 = *(v0 + 136);
  v3 = *(v0 + 112);
  v4 = *(v0 + 120);
  v6 = *(v0 + 96);
  v5 = *(v0 + 104);
  v7 = *(v0 + 88);

  (*(v6 + 8))(v5, v7);
  (*(v4 + 8))(v2, v3);
  v8 = *(v0 + 208);
  if (qword_27EF9DC38 != -1)
  {
    swift_once();
  }

  v9 = *(v0 + 64);
  v10 = sub_24ACD0490();
  __swift_project_value_buffer(v10, qword_27EF9E010);

  v11 = v8;
  v12 = sub_24ACD0470();
  v13 = sub_24ACD0920();

  if (os_log_type_enabled(v12, v13))
  {
    v15 = *(v0 + 72);
    v14 = *(v0 + 80);
    v16 = *(v0 + 64);
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v34 = v19;
    *v17 = 136446722;
    sub_24AC2A3DC(v16 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_peerPath, v14);
    v20 = (v14 + *(v15 + 32));
    v21 = *v20;
    v22 = v20[1];

    sub_24AC47AEC(v14, type metadata accessor for PeerPath);
    v23 = sub_24AC29E20(v21, v22, &v34);

    *(v17 + 4) = v23;
    *(v17 + 12) = 2082;
    *(v17 + 14) = sub_24AC29E20(0xD000000000000025, 0x800000024ACD96E0, &v34);
    *(v17 + 22) = 2114;
    v24 = v8;
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 24) = v25;
    *v18 = v25;
    _os_log_impl(&dword_24AC18000, v12, v13, "%{public}s: Error in Peripheral delegate %{public}s: %{public}@", v17, 0x20u);
    sub_24AC212F4(v18, &qword_27EF9E6A0, &qword_24ACD5590);
    MEMORY[0x24C22DC60](v18, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C22DC60](v19, -1, -1);
    MEMORY[0x24C22DC60](v17, -1, -1);
  }

  else
  {
  }

  v27 = *(v0 + 160);
  v26 = *(v0 + 168);
  v29 = *(v0 + 128);
  v28 = *(v0 + 136);
  v30 = *(v0 + 104);
  v31 = *(v0 + 80);

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_24AC403DC()
{
  v37 = v0;
  v1 = v0[25];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[17];
  v5 = v0[14];
  v6 = v0[15];
  v8 = v0[12];
  v7 = v0[13];
  v9 = v0[11];

  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v4, v5);
  v10 = v0[28];
  if (qword_27EF9DC38 != -1)
  {
    swift_once();
  }

  v11 = v0[8];
  v12 = sub_24ACD0490();
  __swift_project_value_buffer(v12, qword_27EF9E010);

  v13 = v10;
  v14 = sub_24ACD0470();
  v15 = sub_24ACD0920();

  if (os_log_type_enabled(v14, v15))
  {
    v17 = v0[9];
    v16 = v0[10];
    v18 = v0[8];
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v36 = v21;
    *v19 = 136446722;
    sub_24AC2A3DC(v18 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_peerPath, v16);
    v22 = (v16 + *(v17 + 32));
    v23 = *v22;
    v24 = v22[1];

    sub_24AC47AEC(v16, type metadata accessor for PeerPath);
    v25 = sub_24AC29E20(v23, v24, &v36);

    *(v19 + 4) = v25;
    *(v19 + 12) = 2082;
    *(v19 + 14) = sub_24AC29E20(0xD000000000000025, 0x800000024ACD96E0, &v36);
    *(v19 + 22) = 2114;
    v26 = v10;
    v27 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 24) = v27;
    *v20 = v27;
    _os_log_impl(&dword_24AC18000, v14, v15, "%{public}s: Error in Peripheral delegate %{public}s: %{public}@", v19, 0x20u);
    sub_24AC212F4(v20, &qword_27EF9E6A0, &qword_24ACD5590);
    MEMORY[0x24C22DC60](v20, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C22DC60](v21, -1, -1);
    MEMORY[0x24C22DC60](v19, -1, -1);
  }

  else
  {
  }

  v29 = v0[20];
  v28 = v0[21];
  v31 = v0[16];
  v30 = v0[17];
  v32 = v0[13];
  v33 = v0[10];

  v34 = v0[1];

  return v34();
}

uint64_t sub_24AC40710(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v5 = type metadata accessor for PeerPath();
  v4[9] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[10] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DDE8, &unk_24ACD37D0);
  v4[11] = v7;
  v8 = *(v7 - 8);
  v4[12] = v8;
  v9 = *(v8 + 64) + 15;
  v4[13] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E090, &qword_24ACD37C0);
  v4[14] = v10;
  v11 = *(v10 - 8);
  v4[15] = v11;
  v12 = *(v11 + 64) + 15;
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v13 = sub_24ACD0420();
  v4[18] = v13;
  v14 = *(v13 - 8);
  v4[19] = v14;
  v15 = *(v14 + 64) + 15;
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC408EC, v3, 0);
}

uint64_t sub_24AC408EC()
{
  v90 = v0;
  v1 = *(v0 + 64);
  sub_24ACD0120();
  v2 = *(v1 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_delegateQueue);
  if ((sub_24ACD0100() & 1) == 0)
  {
    return sub_24ACD0B20();
  }

  if (sub_24ACD0840())
  {
    if (qword_27EF9DC38 != -1)
    {
      swift_once();
    }

    v3 = sub_24ACD0490();
    __swift_project_value_buffer(v3, qword_27EF9E010);
    v4 = sub_24ACD0470();
    v5 = sub_24ACD0910();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v89[0] = v7;
      *v6 = 136446210;
      *(v6 + 4) = sub_24AC29E20(0xD000000000000032, 0x800000024ACD9640, v89);
      _os_log_impl(&dword_24AC18000, v4, v5, "%{public}s Not resuming continuation in cancelled task.", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x24C22DC60](v7, -1, -1);
      MEMORY[0x24C22DC60](v6, -1, -1);
    }

    goto LABEL_28;
  }

  v10 = *(v0 + 160);
  v9 = *(v0 + 168);
  v11 = *(v0 + 144);
  v12 = *(v0 + 152);
  v13 = *(v0 + 64);
  v14 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  sub_24ACCFFE0();
  v15 = [v14 identifier];
  sub_24ACD03F0();

  LOBYTE(v15) = _s15FindMyBluetooth11ServiceUUIDV2eeoiySbAC_ACtFZ_0();
  v16 = *(v12 + 8);
  v16(v10, v11);
  v16(v9, v11);
  v17 = 0x27EF9D000uLL;
  if ((v15 & 1) == 0 || (v18 = [*(v0 + 48) service], (*(v0 + 176) = v18) == 0))
  {
    type metadata accessor for CentralManager.Error();
    sub_24AC46D0C(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
    v35 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_24:
    if (*(v17 + 3128) != -1)
    {
      swift_once();
    }

    v63 = *(v0 + 64);
    v64 = sub_24ACD0490();
    __swift_project_value_buffer(v64, qword_27EF9E010);

    v65 = v35;
    v4 = sub_24ACD0470();
    v66 = sub_24ACD0920();

    if (!os_log_type_enabled(v4, v66))
    {

      goto LABEL_30;
    }

    v68 = *(v0 + 72);
    v67 = *(v0 + 80);
    v69 = *(v0 + 64);
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v89[0] = v72;
    *v70 = 136446722;
    sub_24AC2A3DC(v69 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_peerPath, v67);
    v73 = (v67 + *(v68 + 32));
    v74 = *v73;
    v75 = v73[1];

    sub_24AC47AEC(v67, type metadata accessor for PeerPath);
    v76 = sub_24AC29E20(v74, v75, v89);

    *(v70 + 4) = v76;
    *(v70 + 12) = 2082;
    *(v70 + 14) = sub_24AC29E20(0xD000000000000032, 0x800000024ACD9640, v89);
    *(v70 + 22) = 2114;
    v77 = v35;
    v78 = _swift_stdlib_bridgeErrorToNSError();
    *(v70 + 24) = v78;
    *v71 = v78;
    _os_log_impl(&dword_24AC18000, v4, v66, "%{public}s: Error in Peripheral delegate %{public}s: %{public}@", v70, 0x20u);
    sub_24AC212F4(v71, &qword_27EF9E6A0, &qword_24ACD5590);
    MEMORY[0x24C22DC60](v71, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C22DC60](v72, -1, -1);
    MEMORY[0x24C22DC60](v70, -1, -1);

LABEL_28:
LABEL_30:
    v80 = *(v0 + 160);
    v79 = *(v0 + 168);
    v82 = *(v0 + 128);
    v81 = *(v0 + 136);
    v83 = *(v0 + 104);
    v84 = *(v0 + 80);

    v85 = *(v0 + 8);

    return v85();
  }

  v19 = v18;
  v20 = *(v0 + 168);
  v21 = *(v0 + 136);
  v22 = *(v0 + 64);
  v23 = [v18 UUID];
  CBUUID.uuidValue.getter(v20);

  type metadata accessor for Service();
  sub_24ACD0000();
  v24 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_services;
  swift_beginAccess();
  v25 = *(v22 + v24);
  if (!*(v25 + 16))
  {
    goto LABEL_18;
  }

  v26 = *(v0 + 136);

  v27 = sub_24AC2ACC8(v26);
  if ((v28 & 1) == 0)
  {

    goto LABEL_18;
  }

  v29 = *(*(v25 + 56) + 8 * v27);
  *(v0 + 184) = v29;

  if (!v29)
  {
LABEL_18:
    if (qword_27EF9DC38 != -1)
    {
      swift_once();
    }

    v37 = *(v0 + 128);
    v36 = *(v0 + 136);
    v38 = *(v0 + 112);
    v39 = *(v0 + 120);
    v40 = *(v0 + 64);
    v41 = sub_24ACD0490();
    __swift_project_value_buffer(v41, qword_27EF9E010);
    (*(v39 + 16))(v37, v36, v38);

    v42 = sub_24ACD0470();
    v43 = sub_24ACD0920();

    log = v42;
    v44 = os_log_type_enabled(v42, v43);
    v46 = *(v0 + 120);
    v45 = *(v0 + 128);
    v47 = *(v0 + 112);
    if (v44)
    {
      v87 = v43;
      v48 = *(v0 + 72);
      v49 = *(v0 + 80);
      v50 = *(v0 + 64);
      v51 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v89[0] = v86;
      *v51 = 136446466;
      sub_24AC2A3DC(v50 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_peerPath, v49);
      v52 = (v49 + *(v48 + 32));
      v54 = *v52;
      v53 = v52[1];

      sub_24AC47AEC(v49, type metadata accessor for PeerPath);
      v55 = sub_24AC29E20(v54, v53, v89);

      *(v51 + 4) = v55;
      *(v51 + 12) = 2082;
      sub_24AC2B6A8(&qword_27EF9E0D0, &unk_27EF9E090, &qword_24ACD37C0);
      v56 = sub_24ACD0C20();
      v58 = v57;
      v59 = *(v46 + 8);
      v59(v45, v47);
      v60 = sub_24AC29E20(v56, v58, v89);
      v17 = 0x27EF9D000;

      *(v51 + 14) = v60;
      _os_log_impl(&dword_24AC18000, log, v87, "%{public}s: Missing service for %{public}s", v51, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C22DC60](v86, -1, -1);
      MEMORY[0x24C22DC60](v51, -1, -1);
    }

    else
    {

      v59 = *(v46 + 8);
      v59(v45, v47);
    }

    v61 = *(v0 + 136);
    v62 = *(v0 + 112);
    type metadata accessor for CentralManager.Error();
    sub_24AC46D0C(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
    v35 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v59(v61, v62);
    goto LABEL_24;
  }

  v30 = *(v0 + 168);
  v31 = *(v0 + 104);
  v32 = [*(v0 + 48) UUID];
  CBUUID.uuidValue.getter(v30);

  type metadata accessor for Characteristic();
  sub_24ACD0000();
  v33 = swift_task_alloc();
  *(v0 + 192) = v33;
  *v33 = v0;
  v33[1] = sub_24AC41374;
  v34 = *(v0 + 104);

  return sub_24AC27600(v34);
}

uint64_t sub_24AC41374(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 192);
  v6 = *v2;
  v4[25] = a1;
  v4[26] = v1;

  if (v1)
  {
    v7 = v4[8];

    return MEMORY[0x2822009F8](sub_24AC41628, v7, 0);
  }

  else
  {
    v8 = swift_task_alloc();
    v4[27] = v8;
    *v8 = v6;
    v8[1] = sub_24AC414FC;
    v9 = v4[7];

    return sub_24AC4952C(v9);
  }
}

uint64_t sub_24AC414FC()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v4 = *v1;
  *(*v1 + 224) = v0;

  v5 = *(v2 + 64);
  if (v0)
  {
    v6 = sub_24AC41954;
  }

  else
  {
    v6 = sub_24AC47C1C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24AC41628()
{
  v35 = v0;
  v1 = *(v0 + 184);
  v2 = *(v0 + 136);
  v3 = *(v0 + 112);
  v4 = *(v0 + 120);
  v6 = *(v0 + 96);
  v5 = *(v0 + 104);
  v7 = *(v0 + 88);

  (*(v6 + 8))(v5, v7);
  (*(v4 + 8))(v2, v3);
  v8 = *(v0 + 208);
  if (qword_27EF9DC38 != -1)
  {
    swift_once();
  }

  v9 = *(v0 + 64);
  v10 = sub_24ACD0490();
  __swift_project_value_buffer(v10, qword_27EF9E010);

  v11 = v8;
  v12 = sub_24ACD0470();
  v13 = sub_24ACD0920();

  if (os_log_type_enabled(v12, v13))
  {
    v15 = *(v0 + 72);
    v14 = *(v0 + 80);
    v16 = *(v0 + 64);
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v34 = v19;
    *v17 = 136446722;
    sub_24AC2A3DC(v16 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_peerPath, v14);
    v20 = (v14 + *(v15 + 32));
    v21 = *v20;
    v22 = v20[1];

    sub_24AC47AEC(v14, type metadata accessor for PeerPath);
    v23 = sub_24AC29E20(v21, v22, &v34);

    *(v17 + 4) = v23;
    *(v17 + 12) = 2082;
    *(v17 + 14) = sub_24AC29E20(0xD000000000000032, 0x800000024ACD9640, &v34);
    *(v17 + 22) = 2114;
    v24 = v8;
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 24) = v25;
    *v18 = v25;
    _os_log_impl(&dword_24AC18000, v12, v13, "%{public}s: Error in Peripheral delegate %{public}s: %{public}@", v17, 0x20u);
    sub_24AC212F4(v18, &qword_27EF9E6A0, &qword_24ACD5590);
    MEMORY[0x24C22DC60](v18, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C22DC60](v19, -1, -1);
    MEMORY[0x24C22DC60](v17, -1, -1);
  }

  else
  {
  }

  v27 = *(v0 + 160);
  v26 = *(v0 + 168);
  v29 = *(v0 + 128);
  v28 = *(v0 + 136);
  v30 = *(v0 + 104);
  v31 = *(v0 + 80);

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_24AC41954()
{
  v37 = v0;
  v1 = v0[25];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[17];
  v5 = v0[14];
  v6 = v0[15];
  v8 = v0[12];
  v7 = v0[13];
  v9 = v0[11];

  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v4, v5);
  v10 = v0[28];
  if (qword_27EF9DC38 != -1)
  {
    swift_once();
  }

  v11 = v0[8];
  v12 = sub_24ACD0490();
  __swift_project_value_buffer(v12, qword_27EF9E010);

  v13 = v10;
  v14 = sub_24ACD0470();
  v15 = sub_24ACD0920();

  if (os_log_type_enabled(v14, v15))
  {
    v17 = v0[9];
    v16 = v0[10];
    v18 = v0[8];
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v36 = v21;
    *v19 = 136446722;
    sub_24AC2A3DC(v18 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_peerPath, v16);
    v22 = (v16 + *(v17 + 32));
    v23 = *v22;
    v24 = v22[1];

    sub_24AC47AEC(v16, type metadata accessor for PeerPath);
    v25 = sub_24AC29E20(v23, v24, &v36);

    *(v19 + 4) = v25;
    *(v19 + 12) = 2082;
    *(v19 + 14) = sub_24AC29E20(0xD000000000000032, 0x800000024ACD9640, &v36);
    *(v19 + 22) = 2114;
    v26 = v10;
    v27 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 24) = v27;
    *v20 = v27;
    _os_log_impl(&dword_24AC18000, v14, v15, "%{public}s: Error in Peripheral delegate %{public}s: %{public}@", v19, 0x20u);
    sub_24AC212F4(v20, &qword_27EF9E6A0, &qword_24ACD5590);
    MEMORY[0x24C22DC60](v20, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C22DC60](v21, -1, -1);
    MEMORY[0x24C22DC60](v19, -1, -1);
  }

  else
  {
  }

  v29 = v0[20];
  v28 = v0[21];
  v31 = v0[16];
  v30 = v0[17];
  v32 = v0[13];
  v33 = v0[10];

  v34 = v0[1];

  return v34();
}

uint64_t sub_24AC41C88(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for PeerPath();
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v5 = sub_24ACD0420();
  v2[6] = v5;
  v6 = *(v5 - 8);
  v2[7] = v6;
  v7 = *(v6 + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC41D84, v1, 0);
}

uint64_t sub_24AC41D84()
{
  v35 = v0;
  v1 = v0[3];
  sub_24ACD0120();
  v2 = *(v1 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_delegateQueue);
  if ((sub_24ACD0100() & 1) == 0)
  {
    return sub_24ACD0B20();
  }

  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[6];
  v6 = v0[7];
  v8 = v0[2];
  v7 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  sub_24ACCFFE0();
  v9 = [v8 identifier];
  sub_24ACD03F0();

  LOBYTE(v9) = _s15FindMyBluetooth11ServiceUUIDV2eeoiySbAC_ACtFZ_0();
  v10 = *(v6 + 8);
  v10(v4, v5);
  v10(v3, v5);
  if ((v9 & 1) == 0)
  {
    return sub_24ACD0B20();
  }

  if (qword_27EF9DC38 != -1)
  {
    swift_once();
  }

  v12 = v0[2];
  v11 = v0[3];
  v13 = sub_24ACD0490();
  __swift_project_value_buffer(v13, qword_27EF9E010);

  v14 = v12;
  v15 = sub_24ACD0470();
  v16 = sub_24ACD0930();

  if (os_log_type_enabled(v15, v16))
  {
    v18 = v0[4];
    v17 = v0[5];
    v20 = v0[2];
    v19 = v0[3];
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v34 = v23;
    *v21 = 136446466;
    sub_24AC2A3DC(v19 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_peerPath, v17);
    v24 = (v17 + *(v18 + 32));
    v25 = *v24;
    v26 = v24[1];

    sub_24AC47AEC(v17, type metadata accessor for PeerPath);
    v27 = sub_24AC29E20(v25, v26, &v34);

    *(v21 + 4) = v27;
    *(v21 + 12) = 2112;
    *(v21 + 14) = v20;
    *v22 = v20;
    v28 = v20;
    _os_log_impl(&dword_24AC18000, v15, v16, "%{public}s: NOT IMPLEMENTED -- peripheralIsReadyToSendWithoutWriteResponse: %@", v21, 0x16u);
    sub_24AC212F4(v22, &qword_27EF9E6A0, &qword_24ACD5590);
    MEMORY[0x24C22DC60](v22, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x24C22DC60](v23, -1, -1);
    MEMORY[0x24C22DC60](v21, -1, -1);
  }

  v30 = v0[8];
  v29 = v0[9];
  v31 = v0[5];

  v32 = v0[1];

  return v32();
}

uint64_t sub_24AC42148(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v7 = sub_24ACD0490();
  __swift_allocate_value_buffer(v7, a2);
  v8 = __swift_project_value_buffer(v7, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v7, a4);
  v10 = *(*(v7 - 8) + 16);

  return v10(v8, v9, v7);
}

uint64_t sub_24AC42230(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_24ACD0420();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC422FC, 0, 0);
}

uint64_t sub_24AC422FC()
{
  v1 = v0[2];
  Strong = swift_weakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_24AC423BC, Strong, 0);
  }

  else
  {
    v4 = v0[6];
    v3 = v0[7];

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_24AC423BC()
{
  v1 = v0[7];
  v2 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v6 = v0[3];
  v5 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  sub_24ACCFFE0();
  v7 = [v6 identifier];
  sub_24ACD03F0();

  LOBYTE(v7) = _s15FindMyBluetooth11ServiceUUIDV2eeoiySbAC_ACtFZ_0();
  v8 = *(v4 + 8);
  v8(v3, v5);
  v8(v1, v5);
  if ((v7 & 1) == 0)
  {
    return sub_24ACD0B20();
  }

  v9 = v0[8];

  v11 = v0[6];
  v10 = v0[7];

  v12 = v0[1];

  return v12();
}

uint64_t sub_24AC425B0(void *a1, uint64_t a2)
{
  v5 = sub_24ACD04C0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *&v2[OBJC_IVAR____TtC15FindMyBluetooth46DelegateTrampoline_CBPeripheralPrivateDelegate_delegateQueue];
  *v9 = v10;
  (*(v6 + 104))(v9, *MEMORY[0x277D85200], v5);
  v11 = v10;
  LOBYTE(v10) = sub_24ACD04D0();
  result = (*(v6 + 8))(v9, v5);
  if (v10)
  {
    v13 = *&v2[OBJC_IVAR____TtC15FindMyBluetooth46DelegateTrampoline_CBPeripheralPrivateDelegate_workItemQueue];
    v14 = swift_allocObject();
    v14[2] = v2;
    v14[3] = a1;
    v14[4] = a2;
    v15 = v2;
    v16 = a1;

    sub_24ACD0110();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24AC42738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_24AC4275C, 0, 0);
}

uint64_t sub_24AC4275C()
{
  v1 = v0[2];
  Strong = swift_weakLoadStrong();
  v0[5] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[6] = v3;
    *v3 = v0;
    v3[1] = sub_24AC42840;
    v5 = v0[3];
    v4 = v0[4];

    return sub_24AC3B9DC(v5, v4);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_24AC42840()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_24AC42A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_24AC42A28, 0, 0);
}

uint64_t sub_24AC42A28()
{
  v1 = *(v0 + 16);
  Strong = swift_weakLoadStrong();
  *(v0 + 48) = Strong;
  if (Strong)
  {
    v3 = [*(v0 + 32) integerValue];
    v4 = swift_task_alloc();
    *(v0 + 56) = v4;
    *v4 = v0;
    v4[1] = sub_24AC42B28;
    v5 = *(v0 + 40);
    v6 = *(v0 + 24);

    return sub_24AC3BEAC(v6, v3, v5);
  }

  else
  {
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_24AC42B28()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_24AC42C54(void *a1, void *a2)
{
  v5 = sub_24ACD04C0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *&v2[OBJC_IVAR____TtC15FindMyBluetooth46DelegateTrampoline_CBPeripheralPrivateDelegate_delegateQueue];
  *v9 = v10;
  (*(v6 + 104))(v9, *MEMORY[0x277D85200], v5);
  v11 = v10;
  LOBYTE(v10) = sub_24ACD04D0();
  result = (*(v6 + 8))(v9, v5);
  if (v10)
  {
    v13 = *&v2[OBJC_IVAR____TtC15FindMyBluetooth46DelegateTrampoline_CBPeripheralPrivateDelegate_workItemQueue];
    v14 = swift_allocObject();
    v14[2] = v2;
    v14[3] = a1;
    v14[4] = a2;
    v15 = v2;
    v16 = a1;
    v17 = a2;
    sub_24ACD0110();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24AC42DDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_24AC42E00, 0, 0);
}

uint64_t sub_24AC42E00()
{
  v1 = v0[2];
  Strong = swift_weakLoadStrong();
  v0[5] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[6] = v3;
    *v3 = v0;
    v3[1] = sub_24AC47C04;
    v5 = v0[3];
    v4 = v0[4];

    return sub_24AC3C3BC(v5, v4);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_24AC42F78(void *a1, void *a2, void *a3)
{
  v7 = sub_24ACD04C0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = (&v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *&v3[OBJC_IVAR____TtC15FindMyBluetooth46DelegateTrampoline_CBPeripheralPrivateDelegate_delegateQueue];
  *v11 = v12;
  (*(v8 + 104))(v11, *MEMORY[0x277D85200], v7);
  v13 = v12;
  LOBYTE(v12) = sub_24ACD04D0();
  result = (*(v8 + 8))(v11, v7);
  if (v12)
  {
    v15 = *&v3[OBJC_IVAR____TtC15FindMyBluetooth46DelegateTrampoline_CBPeripheralPrivateDelegate_workItemQueue];
    v16 = swift_allocObject();
    v16[2] = v3;
    v16[3] = a1;
    v16[4] = a2;
    v16[5] = a3;
    v17 = v3;
    v18 = a1;
    v19 = a2;
    v20 = a3;
    sub_24ACD0110();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24AC43104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_24AC43128, 0, 0);
}

uint64_t sub_24AC43128()
{
  v1 = v0[2];
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_24AC47C08;
    v4 = v0[4];
    v5 = v0[5];
    v6 = v0[3];

    return sub_24AC3CA50(v6, v4, v5);
  }

  else
  {
    v8 = v0[1];

    return v8();
  }
}

void sub_24AC43228(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void (*a6)(id, id, void *))
{
  v10 = a3;
  v11 = a4;
  v12 = a1;
  v13 = a5;
  a6(v10, v11, a5);
}

uint64_t sub_24AC432C4(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = sub_24ACD0420();
  v61 = *(v8 - 8);
  v9 = *(v61 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24ACD04C0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *&v4[OBJC_IVAR____TtC15FindMyBluetooth46DelegateTrampoline_CBPeripheralPrivateDelegate_delegateQueue];
  *v16 = v17;
  (*(v13 + 104))(v16, *MEMORY[0x277D85200], v12);
  v18 = v17;
  LOBYTE(v17) = sub_24ACD04D0();
  (*(v13 + 8))(v16, v12);
  if (v17)
  {
    v19 = [a2 value];
    if (v19)
    {
      v20 = v19;
      v12 = sub_24ACD02D0();
      v16 = v21;
    }

    else
    {
      v12 = 0;
      v16 = 0xF000000000000000;
    }

    v60 = v8;
    if (qword_27EF9DC40 == -1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_6:
  v22 = sub_24ACD0490();
  __swift_project_value_buffer(v22, qword_27EF9E028);
  v23 = a1;
  v24 = a2;
  v25 = a3;
  sub_24AC4661C(v12, v16);
  v26 = sub_24ACD0470();
  v27 = sub_24ACD0930();

  sub_24AC46684(v12, v16);
  if (os_log_type_enabled(v26, v27))
  {
    v57 = v27;
    v58 = v26;
    v59 = v4;
    v28 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v64 = v56;
    *v28 = 136446978;
    v29 = [v23 identifier];
    sub_24ACD03F0();

    sub_24AC46D0C(&qword_27EF9E4E0, MEMORY[0x277CC95F0]);
    v30 = v60;
    v31 = sub_24ACD0C20();
    v33 = v32;
    v34 = v30;
    v35 = v55;
    (*(v61 + 8))(v11, v34);
    v36 = sub_24AC29E20(v31, v33, &v64);

    *(v28 + 4) = v36;
    *(v28 + 12) = 2114;
    v37 = [v24 UUID];
    *(v28 + 14) = v37;
    *v35 = v37;
    *(v28 + 22) = 2082;
    v62 = a3;
    v38 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E0C0, &qword_24ACD4468);
    v39 = sub_24ACD05A0();
    v41 = sub_24AC29E20(v39, v40, &v64);

    *(v28 + 24) = v41;
    *(v28 + 32) = 2082;
    if (v16 >> 60 == 15)
    {
      v42 = 0;
      v43 = 0xE000000000000000;
    }

    else
    {
      v62 = v12;
      v63 = v16;
      sub_24AC467AC();
      v42 = sub_24ACD0180();
      v43 = v44;
    }

    v45 = sub_24AC29E20(v42, v43, &v64);

    *(v28 + 34) = v45;
    v46 = v58;
    _os_log_impl(&dword_24AC18000, v58, v57, "%{public}s/%{public}@: error: %{public}s didUpdateValue %{public}s", v28, 0x2Au);
    sub_24AC212F4(v35, &qword_27EF9E6A0, &qword_24ACD5590);
    MEMORY[0x24C22DC60](v35, -1, -1);
    v47 = v56;
    swift_arrayDestroy();
    MEMORY[0x24C22DC60](v47, -1, -1);
    MEMORY[0x24C22DC60](v28, -1, -1);

    v4 = v59;
  }

  else
  {
  }

  v48 = *&v4[OBJC_IVAR____TtC15FindMyBluetooth46DelegateTrampoline_CBPeripheralPrivateDelegate_workItemQueue];
  v49 = swift_allocObject();
  v49[2] = v4;
  v49[3] = v23;
  v49[4] = v24;
  v49[5] = v12;
  v49[6] = v16;
  v49[7] = a3;
  v50 = v23;
  v51 = v24;
  v52 = a3;
  sub_24AC4661C(v12, v16);
  v53 = v4;
  sub_24ACD0110();

  return sub_24AC46684(v12, v16);
}

uint64_t sub_24AC43850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_24AC43878, 0, 0);
}

uint64_t sub_24AC43878()
{
  v1 = v0[2];
  Strong = swift_weakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[9] = v3;
    *v3 = v0;
    v3[1] = sub_24AC43964;
    v4 = v0[6];
    v5 = v0[7];
    v6 = v0[4];
    v7 = v0[5];
    v8 = v0[3];

    return sub_24AC3D4E4(v8, v6, v7, v4, v5);
  }

  else
  {
    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_24AC43964()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_24AC43A90(void *a1, void *a2, void *a3)
{
  v7 = sub_24ACD0420();
  v50 = *(v7 - 8);
  v8 = *(v50 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24ACD04C0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = (&v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *&v3[OBJC_IVAR____TtC15FindMyBluetooth46DelegateTrampoline_CBPeripheralPrivateDelegate_delegateQueue];
  *v15 = v16;
  (*(v12 + 104))(v15, *MEMORY[0x277D85200], v11);
  v17 = v16;
  LOBYTE(v16) = sub_24ACD04D0();
  v19 = *(v12 + 8);
  v18 = v12 + 8;
  v19(v15, v11);
  if (v16)
  {
    v51 = v3;
    v18 = v7;
    if (qword_27EF9DC40 == -1)
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
  v20 = sub_24ACD0490();
  __swift_project_value_buffer(v20, qword_27EF9E028);
  v21 = a1;
  v22 = a2;
  v23 = a3;
  v24 = sub_24ACD0470();
  v25 = sub_24ACD0930();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v53 = v49;
    *v26 = 136315906;
    *(v26 + 4) = sub_24AC29E20(0xD000000000000025, 0x800000024ACD96E0, &v53);
    *(v26 + 12) = 2082;
    v27 = [v21 identifier];
    sub_24ACD03F0();

    sub_24AC46D0C(&qword_27EF9E4E0, MEMORY[0x277CC95F0]);
    v28 = v18;
    v29 = sub_24ACD0C20();
    v31 = v30;
    (*(v50 + 8))(v10, v28);
    v32 = sub_24AC29E20(v29, v31, &v53);

    *(v26 + 14) = v32;
    *(v26 + 22) = 2114;
    v33 = [v22 UUID];
    *(v26 + 24) = v33;
    v34 = v48;
    *v48 = v33;
    *(v26 + 32) = 2082;
    v52 = a3;
    v35 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E0C0, &qword_24ACD4468);
    v36 = sub_24ACD05A0();
    v38 = sub_24AC29E20(v36, v37, &v53);

    *(v26 + 34) = v38;
    _os_log_impl(&dword_24AC18000, v24, v25, "%s %{public}s/%{public}@: error: %{public}s", v26, 0x2Au);
    sub_24AC212F4(v34, &qword_27EF9E6A0, &qword_24ACD5590);
    MEMORY[0x24C22DC60](v34, -1, -1);
    v39 = v49;
    swift_arrayDestroy();
    MEMORY[0x24C22DC60](v39, -1, -1);
    MEMORY[0x24C22DC60](v26, -1, -1);
  }

  v40 = v51;
  v41 = *&v51[OBJC_IVAR____TtC15FindMyBluetooth46DelegateTrampoline_CBPeripheralPrivateDelegate_workItemQueue];
  v42 = swift_allocObject();
  v42[2] = v40;
  v42[3] = v21;
  v42[4] = v22;
  v42[5] = a3;
  v43 = v21;
  v44 = v22;
  v45 = a3;
  v46 = v40;
  sub_24ACD0110();
}

uint64_t sub_24AC43F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_24AC43F8C, 0, 0);
}

uint64_t sub_24AC43F8C()
{
  v1 = v0[2];
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_24AC47C08;
    v4 = v0[4];
    v5 = v0[5];
    v6 = v0[3];

    return sub_24AC3F094(v6, v4, v5);
  }

  else
  {
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_24AC4408C(void *a1, void *a2, void *a3)
{
  v7 = sub_24ACD0420();
  v50 = *(v7 - 8);
  v8 = *(v50 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24ACD04C0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = (&v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *&v3[OBJC_IVAR____TtC15FindMyBluetooth46DelegateTrampoline_CBPeripheralPrivateDelegate_delegateQueue];
  *v15 = v16;
  (*(v12 + 104))(v15, *MEMORY[0x277D85200], v11);
  v17 = v16;
  LOBYTE(v16) = sub_24ACD04D0();
  v19 = *(v12 + 8);
  v18 = v12 + 8;
  v19(v15, v11);
  if (v16)
  {
    v51 = v3;
    v18 = v7;
    if (qword_27EF9DC40 == -1)
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
  v20 = sub_24ACD0490();
  __swift_project_value_buffer(v20, qword_27EF9E028);
  v21 = a1;
  v22 = a2;
  v23 = a3;
  v24 = sub_24ACD0470();
  v25 = sub_24ACD0930();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v53 = v49;
    *v26 = 136315906;
    *(v26 + 4) = sub_24AC29E20(0xD000000000000032, 0x800000024ACD9640, &v53);
    *(v26 + 12) = 2082;
    v27 = [v21 identifier];
    sub_24ACD03F0();

    sub_24AC46D0C(&qword_27EF9E4E0, MEMORY[0x277CC95F0]);
    v28 = v18;
    v29 = sub_24ACD0C20();
    v31 = v30;
    (*(v50 + 8))(v10, v28);
    v32 = sub_24AC29E20(v29, v31, &v53);

    *(v26 + 14) = v32;
    *(v26 + 22) = 2114;
    v33 = [v22 UUID];
    *(v26 + 24) = v33;
    v34 = v48;
    *v48 = v33;
    *(v26 + 32) = 2082;
    v52 = a3;
    v35 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E0C0, &qword_24ACD4468);
    v36 = sub_24ACD05A0();
    v38 = sub_24AC29E20(v36, v37, &v53);

    *(v26 + 34) = v38;
    _os_log_impl(&dword_24AC18000, v24, v25, "%s %{public}s/%{public}@: error: %{public}s", v26, 0x2Au);
    sub_24AC212F4(v34, &qword_27EF9E6A0, &qword_24ACD5590);
    MEMORY[0x24C22DC60](v34, -1, -1);
    v39 = v49;
    swift_arrayDestroy();
    MEMORY[0x24C22DC60](v39, -1, -1);
    MEMORY[0x24C22DC60](v26, -1, -1);
  }

  v40 = v51;
  v41 = *&v51[OBJC_IVAR____TtC15FindMyBluetooth46DelegateTrampoline_CBPeripheralPrivateDelegate_workItemQueue];
  v42 = swift_allocObject();
  v42[2] = v40;
  v42[3] = v21;
  v42[4] = v22;
  v42[5] = a3;
  v43 = v21;
  v44 = v22;
  v45 = a3;
  v46 = v40;
  sub_24ACD0110();
}

uint64_t sub_24AC44564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_24AC44588, 0, 0);
}

uint64_t sub_24AC44588()
{
  v1 = v0[2];
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_24AC47C08;
    v4 = v0[4];
    v5 = v0[5];
    v6 = v0[3];

    return sub_24AC40710(v6, v4, v5);
  }

  else
  {
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_24AC446A8(void *a1)
{
  v3 = sub_24ACD04C0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = (&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *&v1[OBJC_IVAR____TtC15FindMyBluetooth46DelegateTrampoline_CBPeripheralPrivateDelegate_delegateQueue];
  *v7 = v8;
  (*(v4 + 104))(v7, *MEMORY[0x277D85200], v3);
  v9 = v8;
  LOBYTE(v8) = sub_24ACD04D0();
  result = (*(v4 + 8))(v7, v3);
  if (v8)
  {
    v11 = *&v1[OBJC_IVAR____TtC15FindMyBluetooth46DelegateTrampoline_CBPeripheralPrivateDelegate_workItemQueue];
    v12 = swift_allocObject();
    *(v12 + 16) = v1;
    *(v12 + 24) = a1;
    v13 = v1;
    v14 = a1;
    sub_24ACD0110();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24AC44814(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_24AC44834, 0, 0);
}

uint64_t sub_24AC44834()
{
  v1 = v0[2];
  Strong = swift_weakLoadStrong();
  v0[4] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[5] = v3;
    *v3 = v0;
    v3[1] = sub_24AC44918;
    v4 = v0[3];

    return sub_24AC41C88(v4);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_24AC44918()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

id sub_24AC44AC4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DelegateTrampoline_CBPeripheralPrivateDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24AC44B54()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_24AC214AC;

  return sub_24AC2F094();
}

uint64_t sub_24AC44C08(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 24);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24AC214AC;

  return sub_24AC3083C(a1, v4, v8, v5, v6, v7);
}

uint64_t type metadata accessor for Peripheral()
{
  result = qword_2814AE190;
  if (!qword_2814AE190)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24AC44D70(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AC214AC;

  return sub_24AC33F4C(a1, v4, v5, v6);
}

uint64_t sub_24AC44EAC(uint64_t a1)
{
  *(a1 + 8) = sub_24AC46D0C(&unk_2814AE1B8, type metadata accessor for Peripheral);
  result = sub_24AC46D0C(&qword_2814AE1A0, type metadata accessor for Peripheral);
  *(a1 + 16) = result;
  return result;
}

void sub_24AC44F80()
{
  sub_24AC4633C(319, &qword_2814AE260, type metadata accessor for Peripheral, MEMORY[0x277D088B0]);
  if (v1 <= 0x3F)
  {
    v10 = *(v0 - 8) + 64;
    sub_24AC4633C(319, &qword_2814AE218, MEMORY[0x277D088D0], MEMORY[0x277D83D88]);
    if (v3 <= 0x3F)
    {
      v11 = *(v2 - 8) + 64;
      v4 = sub_24ACD0360();
      if (v5 <= 0x3F)
      {
        v12 = *(v4 - 8) + 64;
        v6 = type metadata accessor for PeerPath();
        if (v7 <= 0x3F)
        {
          v13 = *(v6 - 8) + 64;
          sub_24AC2AA7C();
          if (v9 <= 0x3F)
          {
            v14 = *(v8 - 8) + 64;
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t dispatch thunk of Peripheral.pairingInfo.getter(uint64_t a1)
{
  v4 = *(*v1 + 352);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24AC214AC;

  return v8(a1);
}

uint64_t dispatch thunk of Peripheral.connect()()
{
  v2 = *(*v0 + 568);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24AC214AC;

  return v6();
}

uint64_t dispatch thunk of Peripheral.connect(useCase:options:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 576);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_24AC214AC;

  return v10(a1, a2);
}

uint64_t dispatch thunk of Peripheral.cancelConnection()()
{
  v2 = *(*v0 + 584);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24AC214AC;

  return v6();
}

uint64_t dispatch thunk of Peripheral.cancelConnection(options:)(uint64_t a1)
{
  v4 = *(*v1 + 592);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24AC214AC;

  return v8(a1);
}

uint64_t dispatch thunk of Peripheral.isPaired.getter()
{
  v2 = *(*v0 + 600);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24AC2A800;

  return v6();
}

uint64_t dispatch thunk of Peripheral.pair()()
{
  v2 = *(*v0 + 608);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24AC214AC;

  return v6();
}

uint64_t dispatch thunk of Peripheral.unpair()()
{
  v2 = *(*v0 + 616);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24AC214AC;

  return v6();
}

uint64_t dispatch thunk of Peripheral.set(macAddress:)(uint64_t a1)
{
  v4 = *(*v1 + 624);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24AC214AC;

  return v8(a1);
}

uint64_t dispatch thunk of Peripheral.discover(serviceIdentifiers:)(uint64_t a1)
{
  v4 = *(*v1 + 632);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24AC2A800;

  return v8(a1);
}

uint64_t dispatch thunk of Peripheral.subscript.getter(uint64_t a1)
{
  v4 = *(*v1 + 640);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24AC2BA00;

  return v8(a1);
}

uint64_t dispatch thunk of Peripheral.customPropertyNames.getter()
{
  v2 = *(*v0 + 688);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24AC1DF38;

  return v6();
}

void sub_24AC4633C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_24AC463C4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_24AC4642C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24AC214AC;

  return sub_24AC44814(v2, v3);
}

uint64_t sub_24AC464C4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_24AC214AC;

  return sub_24AC44564(v2, v3, v5, v4);
}

uint64_t sub_24AC46570()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_24AC214AC;

  return sub_24AC43F68(v2, v3, v5, v4);
}

uint64_t sub_24AC4661C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_24AC46630(a1, a2);
  }

  return a1;
}

uint64_t sub_24AC46630(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_24AC46684(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_24AC46698(a1, a2);
  }

  return a1;
}

uint64_t sub_24AC46698(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_24AC466EC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_24AC214AC;

  return sub_24AC43850(v2, v3, v4, v5, v7, v6);
}

unint64_t sub_24AC467AC()
{
  result = qword_27EF9E0D8;
  if (!qword_27EF9E0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9E0D8);
  }

  return result;
}

uint64_t sub_24AC46800()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_24AC214AC;

  return sub_24AC43104(v2, v3, v5, v4);
}

uint64_t sub_24AC468AC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_24AC214AC;

  return sub_24AC42DDC(v2, v3, v4);
}

uint64_t objectdestroy_81Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24AC469A4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_24AC20274;

  return sub_24AC42A04(v2, v3, v5, v4);
}

uint64_t objectdestroy_106Tm(void (*a1)(void))
{
  a1(*(v1 + 32));

  return MEMORY[0x2821FE8E8](v1, 40, 7);
}

uint64_t sub_24AC46AA8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_24AC214AC;

  return sub_24AC42738(v2, v3, v4);
}

uint64_t sub_24AC46B50()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24AC214AC;

  return sub_24AC42230(v2, v3);
}

uint64_t sub_24AC46BE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E048, &qword_24ACD5910);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AC46C58(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AC214AC;

  return sub_24AC370F8(a1, v4, v5, v6);
}

uint64_t sub_24AC46D0C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24AC46D60@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_24AC2B940((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}

uint64_t sub_24AC46DAC@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_24AC2B940(*(v3 + 56) + 32 * v13, v22);
    *&v23 = v16;
    *(&v23 + 1) = v15;
    sub_24AC1BFB8(v22, &v24);

    v18 = *(&v23 + 1);
    v19 = v23;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v18)
    {
      v21 = v1[5];
      v20 = v1[6];
      *&v22[0] = v19;
      *(&v22[0] + 1) = v18;
      v22[1] = v24;
      v22[2] = v25;
      v21(v22);
      return sub_24AC212F4(v22, &qword_27EF9E160, &qword_24ACD45C8);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v18 = 0;
        v19 = 0;
        v12 = 0;
        v24 = 0u;
        v25 = 0u;
        v23 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24AC46F0C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24AC214AC;

  return sub_24AC36880(a1, v4, v5, v6, v7);
}

uint64_t sub_24AC46FD4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24AC20274;

  return sub_24AC3214C(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_24AC470AC(unsigned __int8 *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E170, &qword_24ACD61D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v33[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E068, &qword_24ACD4140);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v33[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v14 = &v33[-v13];
  v15 = *a1;
  if (v15 == 20)
  {
    v16 = type metadata accessor for Peripheral.Options();
    v17 = 0;
    if ((*(*(v16 - 8) + 48))(a2, 1, v16) == 1)
    {
      return v17;
    }

    v17 = MEMORY[0x277D84F98];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9DCE0, &unk_24ACD4600);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24ACD39E0;
    v19 = *MEMORY[0x277CBDE98];
    *(inited + 32) = sub_24ACD0590();
    *(inited + 40) = v20;
    LOBYTE(v34) = v15;
    v21 = sub_24AC70AE4();
    *(inited + 72) = MEMORY[0x277D84CC0];
    *(inited + 48) = v21;
    v22 = sub_24AC9ED64(inited);
    swift_setDeallocating();
    sub_24AC212F4(inited + 32, qword_27EF9E180, &qword_24ACD3790);
    v23 = MEMORY[0x277D84F98];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = v23;
    sub_24AC4753C(v22, sub_24AC46D60, 0, isUniquelyReferenced_nonNull_native, &v34);

    v17 = v34;
  }

  sub_24AC2B5DC(a2, v14, &qword_27EF9E068, &qword_24ACD4140);
  v25 = type metadata accessor for Peripheral.Options();
  v26 = *(*(v25 - 8) + 48);
  if (v26(v14, 1, v25) == 1)
  {
    sub_24AC212F4(v14, &qword_27EF9E068, &qword_24ACD4140);
  }

  else
  {
    v27 = sub_24ACA7230();
    sub_24AC47AEC(v14, type metadata accessor for Peripheral.Options);
    if (v27)
    {
      v28 = swift_isUniquelyReferenced_nonNull_native();
      v34 = v17;
      sub_24AC4753C(v27, sub_24AC46D60, 0, v28, &v34);

      v17 = v34;
    }
  }

  sub_24AC2B5DC(a2, v12, &qword_27EF9E068, &qword_24ACD4140);
  if (v26(v12, 1, v25) == 1)
  {
    sub_24AC212F4(v12, &qword_27EF9E068, &qword_24ACD4140);
  }

  else
  {
    sub_24AC2B5DC(&v12[*(v25 + 20)], v7, &unk_27EF9E170, &qword_24ACD61D0);
    sub_24AC47AEC(v12, type metadata accessor for Peripheral.Options);
    v29 = type metadata accessor for PeripheralPairingInfo();
    if ((*(*(v29 - 8) + 48))(v7, 1, v29) == 1)
    {
      sub_24AC212F4(v7, &unk_27EF9E170, &qword_24ACD61D0);
    }

    else
    {
      v30 = sub_24ACBD398();
      sub_24AC47AEC(v7, type metadata accessor for PeripheralPairingInfo);
      v31 = swift_isUniquelyReferenced_nonNull_native();
      v34 = v17;
      sub_24AC4753C(v30, sub_24AC46D60, 0, v31, &v34);

      return v34;
    }
  }

  return v17;
}

unint64_t sub_24AC4753C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v47 = a1;
  v48 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v49 = v8;
  v50 = 0;
  v51 = v11 & v9;
  v52 = a2;
  v53 = a3;

  sub_24AC46DAC(&v45);
  v12 = *(&v45 + 1);
  if (!*(&v45 + 1))
  {
    goto LABEL_25;
  }

  v13 = v45;
  sub_24AC1BFB8(v46, v44);
  v14 = *a5;
  result = sub_24AC2AB50(v13, v12);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (v14[3] < v20)
  {
    sub_24AC5C328(v20, a4 & 1);
    v22 = *a5;
    result = sub_24AC2AB50(v13, v12);
    if ((v21 & 1) == (v23 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_24ACD0C80();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v27 = result;
    sub_24AC5E670();
    result = v27;
    v24 = *a5;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v24 = *a5;
  if (v21)
  {
LABEL_11:
    v25 = result;

    v26 = (v24[7] + 32 * v25);
    __swift_destroy_boxed_opaque_existential_0(v26);
    sub_24AC1BFB8(v44, v26);
    goto LABEL_15;
  }

LABEL_13:
  v24[(result >> 6) + 8] |= 1 << result;
  v28 = (v24[6] + 16 * result);
  *v28 = v13;
  v28[1] = v12;
  result = sub_24AC1BFB8(v44, (v24[7] + 32 * result));
  v29 = v24[2];
  v19 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (!v19)
  {
    v24[2] = v30;
LABEL_15:
    sub_24AC46DAC(&v45);
    v12 = *(&v45 + 1);
    if (*(&v45 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v45;
        sub_24AC1BFB8(v46, v44);
        v33 = *a5;
        result = sub_24AC2AB50(v13, v12);
        v35 = v33[2];
        v36 = (v34 & 1) == 0;
        v19 = __OFADD__(v35, v36);
        v37 = v35 + v36;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v34;
        if (v33[3] < v37)
        {
          sub_24AC5C328(v37, 1);
          v38 = *a5;
          result = sub_24AC2AB50(v13, v12);
          if ((a4 & 1) != (v39 & 1))
          {
            goto LABEL_8;
          }
        }

        v40 = *a5;
        if (a4)
        {
          v31 = result;

          v32 = (v40[7] + 32 * v31);
          __swift_destroy_boxed_opaque_existential_0(v32);
          sub_24AC1BFB8(v44, v32);
        }

        else
        {
          v40[(result >> 6) + 8] |= 1 << result;
          v41 = (v40[6] + 16 * result);
          *v41 = v13;
          v41[1] = v12;
          result = sub_24AC1BFB8(v44, (v40[7] + 32 * result));
          v42 = v40[2];
          v19 = __OFADD__(v42, 1);
          v43 = v42 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v40[2] = v43;
        }

        sub_24AC46DAC(&v45);
        v12 = *(&v45 + 1);
      }

      while (*(&v45 + 1));
    }

LABEL_25:
    sub_24AC4784C();
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_24AC47854(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AC214AC;

  return sub_24AC314F8(a1, v4, v5, v6);
}

uint64_t sub_24AC4791C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E068, &qword_24ACD4140);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AC4798C(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E068, &qword_24ACD4140) - 8);
  v6 = (*(v5 + 80) + 41) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + v7);
  v11 = *(v1 + 32);
  v12 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = *(v1 + 40);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_24AC214AC;

  return sub_24AC30EBC(a1, v8, v9, v11, v13, v1 + v6, v10);
}

uint64_t sub_24AC47AEC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24AC47B4C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24AC214AC;

  return sub_24AC9D730(a1, v5);
}

uint64_t sub_24AC47C2C(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_24AC47CC0()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_24AC47D84(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7;
    if (!v5)
    {
      break;
    }

LABEL_8:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v7 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_24AC2B940(*(a1 + 56) + 32 * v11, v33);
    v32[0] = v14;
    v32[1] = v13;
    *&v29 = v14;
    *(&v29 + 1) = v13;
    v15 = v34;
    v16 = __swift_project_boxed_opaque_existential_0(v33, v34);
    *(&v31 + 1) = v15;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v30);
    (*(*(v15 - 8) + 16))(boxed_opaque_existential_0, v16, v15);
    swift_bridgeObjectRetain_n();
    sub_24AC212F4(v32, &qword_27EF9E210, &qword_24ACD4670);
    if (*(&v29 + 1))
    {
      v26 = v29;
      v27 = v30;
      v28 = v31;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_24AC1D31C(0, v8[2] + 1, 1, v8);
      }

      v19 = v8[2];
      v18 = v8[3];
      v20 = v19 + 1;
      if (v19 >= v18 >> 1)
      {
        v22 = sub_24AC1D31C((v18 > 1), v19 + 1, 1, v8);
        v20 = v19 + 1;
        v8 = v22;
      }

      v8[2] = v20;
      v21 = &v8[6 * v19];
      v21[3] = v27;
      v21[4] = v28;
      v21[2] = v26;
    }

    else
    {
      sub_24AC212F4(&v29, &qword_27EF9E218, &qword_24ACD4678);
    }
  }

  while (1)
  {
    v7 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    if (v7 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v7);
    ++v9;
    if (v5)
    {
      goto LABEL_8;
    }
  }

  if (v8[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E710, &unk_24ACD4680);
    v23 = sub_24ACD0B60();
  }

  else
  {
    v23 = MEMORY[0x277D84F98];
  }

  v32[0] = v23;

  sub_24AC480DC(v24, 1, v32);

  return v32[0];
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void sub_24AC480DC(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_22;
  }

  sub_24AC48498(a1 + 32, &v46);
  v8 = v46;
  v7 = v47;
  v44 = v46;
  v45 = v47;
  sub_24AC1BFB8(v48, v43);
  v9 = *a3;
  v10 = sub_24AC2AB50(v8, v7);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_24AC5C328(v15, a2 & 1);
    v17 = *a3;
    v10 = sub_24AC2AB50(v8, v7);
    if ((v16 & 1) != (v18 & 1))
    {
LABEL_5:
      sub_24ACD0C80();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v21 = v10;
  sub_24AC5E670();
  v10 = v21;
  if (v16)
  {
LABEL_9:
    v19 = swift_allocError();
    swift_willThrow();
    v49 = v19;
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EC00, &qword_24ACD4690);
    if ((swift_dynamicCast() & 1) == 0)
    {

      __swift_destroy_boxed_opaque_existential_0(v43);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v22 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v23 = (v22[6] + 16 * v10);
  *v23 = v8;
  v23[1] = v7;
  sub_24AC1BFB8(v43, (v22[7] + 32 * v10));
  v24 = v22[2];
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (!v14)
  {
    v22[2] = v25;
    if (v4 == 1)
    {
LABEL_22:

      return;
    }

    v26 = a1 + 80;
    v27 = 1;
    while (v27 < *(a1 + 16))
    {
      sub_24AC48498(v26, &v46);
      v29 = v46;
      v28 = v47;
      v44 = v46;
      v45 = v47;
      sub_24AC1BFB8(v48, v43);
      v30 = *a3;
      v31 = sub_24AC2AB50(v29, v28);
      v33 = v30[2];
      v34 = (v32 & 1) == 0;
      v14 = __OFADD__(v33, v34);
      v35 = v33 + v34;
      if (v14)
      {
        goto LABEL_23;
      }

      v36 = v32;
      if (v30[3] < v35)
      {
        sub_24AC5C328(v35, 1);
        v37 = *a3;
        v31 = sub_24AC2AB50(v29, v28);
        if ((v36 & 1) != (v38 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v36)
      {
        goto LABEL_9;
      }

      v39 = *a3;
      *(*a3 + 8 * (v31 >> 6) + 64) |= 1 << v31;
      v40 = (v39[6] + 16 * v31);
      *v40 = v29;
      v40[1] = v28;
      sub_24AC1BFB8(v43, (v39[7] + 32 * v31));
      v41 = v39[2];
      v14 = __OFADD__(v41, 1);
      v42 = v41 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v27;
      v39[2] = v42;
      v26 += 48;
      if (v4 == v27)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  sub_24ACD0A20();
  MEMORY[0x24C22CD50](0xD00000000000001BLL, 0x800000024ACD9B00);
  sub_24ACD0B10();
  MEMORY[0x24C22CD50](39, 0xE100000000000000);
  sub_24ACD0B20();
  __break(1u);
}

uint64_t sub_24AC48498(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EF9E180, &qword_24ACD3790);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AC48538(uint64_t a1)
{
  v2[23] = a1;
  v2[24] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
  v2[25] = v3;
  v4 = *(v3 - 8);
  v2[26] = v4;
  v5 = *(v4 + 64) + 15;
  v2[27] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F0, &unk_24ACD4130) - 8) + 64) + 15;
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E0F0, &qword_24ACD44C0);
  v2[31] = v7;
  v8 = *(v7 - 8);
  v2[32] = v8;
  v9 = *(v8 + 64) + 15;
  v2[33] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E0E8, &qword_24ACD44B8) - 8) + 64) + 15;
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v11 = type metadata accessor for PeerPath();
  v2[36] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v2[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC48730, v1, 0);
}

uint64_t sub_24AC48730()
{
  v74 = v0;
  if (qword_27EF9DC48 != -1)
  {
    swift_once();
  }

  v2 = v0[23];
  v1 = v0[24];
  v3 = sub_24ACD0490();
  __swift_project_value_buffer(v3, qword_27EF9E220);

  v4 = v2;
  v5 = sub_24ACD0470();
  v6 = sub_24ACD0930();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[36];
    v8 = v0[37];
    v9 = v0[24];
    v72 = v0[23];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v73 = v12;
    *v10 = 136446722;
    sub_24AC2A3DC(v9 + OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_peerPath, v8);
    v13 = (v8 + *(v7 + 32));
    v15 = *v13;
    v14 = v13[1];

    sub_24AC234B4(v8);
    v16 = sub_24AC29E20(v15, v14, &v73);

    *(v10 + 4) = v16;
    *(v10 + 12) = 2082;
    v17 = sub_24AC52ADC();
    v19 = sub_24AC29E20(v17, v18, &v73);

    *(v10 + 14) = v19;
    *(v10 + 22) = 2114;
    v20 = v72;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 24) = v21;
    *v11 = v21;
    _os_log_impl(&dword_24AC18000, v5, v6, "%{public}s: Invalidate characteristic: %{public}s error %{public}@", v10, 0x20u);
    sub_24AC212F4(v11, &qword_27EF9E6A0, &qword_24ACD5590);
    MEMORY[0x24C22DC60](v11, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C22DC60](v12, -1, -1);
    MEMORY[0x24C22DC60](v10, -1, -1);
  }

  v22 = v0[35];
  v23 = v0[31];
  v24 = v0[32];
  v25 = v0[24];
  v26 = OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_updateValueContinuation;
  swift_beginAccess();
  sub_24AC2B5DC(v25 + v26, v22, &qword_27EF9E0E8, &qword_24ACD44B8);
  v27 = (*(v24 + 48))(v22, 1, v23);
  v28 = v0[35];
  if (v27)
  {
    sub_24AC212F4(v0[35], &qword_27EF9E0E8, &qword_24ACD44B8);
  }

  else
  {
    v30 = v0[32];
    v29 = v0[33];
    v31 = v0[31];
    v32 = v0[23];
    (*(v30 + 16))(v29, v0[35], v31);
    sub_24AC212F4(v28, &qword_27EF9E0E8, &qword_24ACD44B8);
    v0[22] = v32;
    v33 = v32;
    sub_24ACD08A0();
    (*(v30 + 8))(v29, v31);
  }

  v34 = v0[34];
  (*(v0[32] + 56))(v34, 1, 1, v0[31]);
  swift_beginAccess();
  sub_24AC463C4(v34, v25 + v26, &qword_27EF9E0E8, &qword_24ACD44B8);
  swift_endAccess();
  if ((sub_24ACD0840() & 1) == 0)
  {
    v35 = v0[30];
    v36 = v0[25];
    v37 = v0[26];
    v38 = v0[24];
    v39 = OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_writeValueContinuation;
    swift_beginAccess();
    sub_24AC2B5DC(v38 + v39, v35, &qword_27EF9E4F0, &unk_24ACD4130);
    v40 = *(v37 + 48);
    v41 = v40(v35, 1, v36);
    v42 = v0[30];
    if (v41)
    {
      sub_24AC212F4(v0[30], &qword_27EF9E4F0, &unk_24ACD4130);
    }

    else
    {
      v44 = v0[26];
      v43 = v0[27];
      v45 = v0[25];
      v46 = v0[23];
      (*(v44 + 16))(v43, v0[30], v45);
      sub_24AC212F4(v42, &qword_27EF9E4F0, &unk_24ACD4130);
      v0[21] = v46;
      v47 = v46;
      sub_24ACD0750();
      (*(v44 + 8))(v43, v45);
    }

    v48 = v0[29];
    v50 = v0[24];
    v49 = v0[25];
    v51 = OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_notificationStateContinuation;
    swift_beginAccess();
    sub_24AC2B5DC(v50 + v51, v48, &qword_27EF9E4F0, &unk_24ACD4130);
    v52 = v40(v48, 1, v49);
    v53 = v0[29];
    if (v52)
    {
      sub_24AC212F4(v0[29], &qword_27EF9E4F0, &unk_24ACD4130);
    }

    else
    {
      v55 = v0[26];
      v54 = v0[27];
      v56 = v0[25];
      v57 = v0[23];
      (*(v55 + 16))(v54, v0[29], v56);
      sub_24AC212F4(v53, &qword_27EF9E4F0, &unk_24ACD4130);
      v0[20] = v57;
      v58 = v57;
      sub_24ACD0750();
      (*(v55 + 8))(v54, v56);
    }
  }

  v59 = v0[37];
  v69 = v0[35];
  v70 = v0[34];
  v60 = v0[33];
  v71 = v0[30];
  v61 = v0[28];
  v62 = v0[25];
  v63 = v0[24];
  v64 = *(v0[26] + 56);
  v64(v61, 1, 1, v62);
  v65 = OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_writeValueContinuation;
  swift_beginAccess();
  sub_24AC463C4(v61, v63 + v65, &qword_27EF9E4F0, &unk_24ACD4130);
  swift_endAccess();
  v64(v61, 1, 1, v62);
  v66 = OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_notificationStateContinuation;
  swift_beginAccess();
  sub_24AC463C4(v61, v63 + v66, &qword_27EF9E4F0, &unk_24ACD4130);
  swift_endAccess();
  *(v63 + OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_updatingState) = 0;

  v67 = v0[1];

  return v67();
}

uint64_t sub_24AC48E28(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F0, &unk_24ACD4130) - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
  v2[13] = v4;
  v5 = *(v4 - 8);
  v2[14] = v5;
  v6 = *(v5 + 64) + 15;
  v2[15] = swift_task_alloc();
  v7 = type metadata accessor for PeerPath();
  v2[16] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC48F68, v1, 0);
}

uint64_t sub_24AC48F68()
{
  v61 = v0;
  if (qword_27EF9DC48 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = v0[10];
  v3 = sub_24ACD0490();
  __swift_project_value_buffer(v3, qword_27EF9E220);

  v4 = v1;
  v5 = sub_24ACD0470();
  v6 = sub_24ACD0930();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[16];
    v8 = v0[17];
    v9 = v0[10];
    v57 = v0[9];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v60[0] = v12;
    *v10 = 136446466;
    sub_24AC2A3DC(v9 + OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_peerPath, v8);
    v13 = (v8 + *(v7 + 32));
    v15 = *v13;
    v14 = v13[1];

    sub_24AC234B4(v8);
    v16 = sub_24AC29E20(v15, v14, v60);

    *(v10 + 4) = v16;
    *(v10 + 12) = 2114;
    v17 = v57;
    if (v57)
    {
      v18 = v1;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      v17 = v19;
    }

    else
    {
      v19 = 0;
    }

    *(v10 + 14) = v19;
    *v11 = v17;
    _os_log_impl(&dword_24AC18000, v5, v6, "%{public}s: writeValueContinuation with error %{public}@", v10, 0x16u);
    sub_24AC212F4(v11, &qword_27EF9E6A0, &qword_24ACD5590);
    MEMORY[0x24C22DC60](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x24C22DC60](v12, -1, -1);
    MEMORY[0x24C22DC60](v10, -1, -1);
  }

  else
  {
  }

  v20 = v0[13];
  v21 = v0[14];
  v22 = v0[12];
  v23 = v0[10];
  v24 = OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_writeValueContinuation;
  swift_beginAccess();
  sub_24AC2B5DC(v23 + v24, v22, &qword_27EF9E4F0, &unk_24ACD4130);
  v25 = (*(v21 + 48))(v22, 1, v20);
  v26 = v0[12];
  if (v25 == 1)
  {
    v27 = v0[17];
    v28 = v0[15];
    v29 = v0[11];
    sub_24AC212F4(v0[12], &qword_27EF9E4F0, &unk_24ACD4130);
    type metadata accessor for CentralManager.Error();
    sub_24AC54A58(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v30 = v0[1];
  }

  else
  {
    v31 = v0[9];
    (*(v0[14] + 32))(v0[15], v0[12], v0[13]);
    v32 = v0[15];
    v33 = v0[13];
    if (v31)
    {
      v0[8] = v1;
      v34 = v1;
      sub_24ACD0750();
    }

    else
    {
      v35 = v0[13];
      sub_24ACD0760();
    }

    v36 = v0[10];

    v37 = sub_24ACD0470();
    v38 = sub_24ACD0930();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = v0[16];
      v40 = v0[17];
      v56 = v0[14];
      v58 = v0[13];
      v59 = v0[15];
      v41 = v0[10];
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v60[0] = v43;
      *v42 = 136446210;
      sub_24AC2A3DC(v41 + OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_peerPath, v40);
      v44 = (v40 + *(v39 + 32));
      v45 = *v44;
      v46 = v44[1];

      sub_24AC234B4(v40);
      v47 = sub_24AC29E20(v45, v46, v60);

      *(v42 + 4) = v47;
      _os_log_impl(&dword_24AC18000, v37, v38, "%{public}s: Clearing writeValueContinuation", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v43);
      MEMORY[0x24C22DC60](v43, -1, -1);
      MEMORY[0x24C22DC60](v42, -1, -1);

      (*(v56 + 8))(v59, v58);
    }

    else
    {
      v49 = v0[14];
      v48 = v0[15];
      v50 = v0[13];

      (*(v49 + 8))(v48, v50);
    }

    v51 = v0[17];
    v52 = v0[15];
    v53 = v0[12];
    v54 = v0[11];
    (*(v0[14] + 56))(v54, 1, 1, v0[13]);
    swift_beginAccess();
    sub_24AC463C4(v54, v23 + v24, &qword_27EF9E4F0, &unk_24ACD4130);
    swift_endAccess();

    v30 = v0[1];
  }

  return v30();
}

uint64_t sub_24AC4952C(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F0, &unk_24ACD4130) - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
  v2[13] = v4;
  v5 = *(v4 - 8);
  v2[14] = v5;
  v6 = *(v5 + 64) + 15;
  v2[15] = swift_task_alloc();
  v7 = type metadata accessor for PeerPath();
  v2[16] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC4966C, v1, 0);
}

uint64_t sub_24AC4966C()
{
  v61 = v0;
  if (qword_27EF9DC48 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = v0[10];
  v3 = sub_24ACD0490();
  __swift_project_value_buffer(v3, qword_27EF9E220);

  v4 = v1;
  v5 = sub_24ACD0470();
  v6 = sub_24ACD0930();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[16];
    v8 = v0[17];
    v9 = v0[10];
    v57 = v0[9];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v60[0] = v12;
    *v10 = 136446466;
    sub_24AC2A3DC(v9 + OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_peerPath, v8);
    v13 = (v8 + *(v7 + 32));
    v15 = *v13;
    v14 = v13[1];

    sub_24AC234B4(v8);
    v16 = sub_24AC29E20(v15, v14, v60);

    *(v10 + 4) = v16;
    *(v10 + 12) = 2114;
    v17 = v57;
    if (v57)
    {
      v18 = v1;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      v17 = v19;
    }

    else
    {
      v19 = 0;
    }

    *(v10 + 14) = v19;
    *v11 = v17;
    _os_log_impl(&dword_24AC18000, v5, v6, "%{public}s: updateNotificationState with error %{public}@", v10, 0x16u);
    sub_24AC212F4(v11, &qword_27EF9E6A0, &qword_24ACD5590);
    MEMORY[0x24C22DC60](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x24C22DC60](v12, -1, -1);
    MEMORY[0x24C22DC60](v10, -1, -1);
  }

  else
  {
  }

  v20 = v0[13];
  v21 = v0[14];
  v22 = v0[12];
  v23 = v0[10];
  v24 = OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_notificationStateContinuation;
  swift_beginAccess();
  sub_24AC2B5DC(v23 + v24, v22, &qword_27EF9E4F0, &unk_24ACD4130);
  v25 = (*(v21 + 48))(v22, 1, v20);
  v26 = v0[12];
  if (v25 == 1)
  {
    v27 = v0[17];
    v28 = v0[15];
    v29 = v0[11];
    sub_24AC212F4(v0[12], &qword_27EF9E4F0, &unk_24ACD4130);
    type metadata accessor for CentralManager.Error();
    sub_24AC54A58(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v30 = v0[1];
  }

  else
  {
    v31 = v0[9];
    (*(v0[14] + 32))(v0[15], v0[12], v0[13]);
    v32 = v0[15];
    v33 = v0[13];
    if (v31)
    {
      v0[8] = v1;
      v34 = v1;
      sub_24ACD0750();
    }

    else
    {
      v35 = v0[13];
      sub_24ACD0760();
    }

    v36 = v0[10];

    v37 = sub_24ACD0470();
    v38 = sub_24ACD0930();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = v0[16];
      v40 = v0[17];
      v56 = v0[14];
      v58 = v0[13];
      v59 = v0[15];
      v41 = v0[10];
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v60[0] = v43;
      *v42 = 136446210;
      sub_24AC2A3DC(v41 + OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_peerPath, v40);
      v44 = (v40 + *(v39 + 32));
      v45 = *v44;
      v46 = v44[1];

      sub_24AC234B4(v40);
      v47 = sub_24AC29E20(v45, v46, v60);

      *(v42 + 4) = v47;
      _os_log_impl(&dword_24AC18000, v37, v38, "%{public}s: Clearing notificationStateContinuation", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v43);
      MEMORY[0x24C22DC60](v43, -1, -1);
      MEMORY[0x24C22DC60](v42, -1, -1);

      (*(v56 + 8))(v59, v58);
    }

    else
    {
      v49 = v0[14];
      v48 = v0[15];
      v50 = v0[13];

      (*(v49 + 8))(v48, v50);
    }

    v51 = v0[17];
    v52 = v0[15];
    v53 = v0[12];
    v54 = v0[11];
    (*(v0[14] + 56))(v54, 1, 1, v0[13]);
    swift_beginAccess();
    sub_24AC463C4(v54, v23 + v24, &qword_27EF9E4F0, &unk_24ACD4130);
    swift_endAccess();

    v30 = v0[1];
  }

  return v30();
}

uint64_t sub_24AC49C30()
{
  v0 = sub_24ACD0490();
  __swift_allocate_value_buffer(v0, qword_27EF9E220);
  v1 = __swift_project_value_buffer(v0, qword_27EF9E220);
  if (qword_2814AD278 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_2814AD280);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t Characteristic.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_id;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DDE8, &unk_24ACD37D0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_24AC49D7C@<X0>(uint64_t *a1@<X8>)
{
  v3 = [*(v1 + OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_underlyingObject) properties];

  return sub_24AC1C24C(v3, a1);
}

uint64_t sub_24AC49DF4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E090, &qword_24ACD37C0);
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E110, &unk_24ACD4540) - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DFE0, &qword_24ACD4098) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  v3[12] = v9;
  v10 = *(v9 - 8);
  v3[13] = v10;
  v11 = *(v10 + 64) + 15;
  v3[14] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E120, &qword_24ACD4550);
  v3[15] = v12;
  v13 = *(v12 - 8);
  v3[16] = v13;
  v14 = *(v13 + 64) + 15;
  v3[17] = swift_task_alloc();
  v15 = type metadata accessor for PeerPath();
  v3[18] = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v17 = sub_24ACD0420();
  v3[21] = v17;
  v18 = *(v17 - 8);
  v3[22] = v18;
  v19 = *(v18 + 64) + 15;
  v3[23] = swift_task_alloc();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DDE8, &unk_24ACD37D0);
  v3[24] = v20;
  v21 = *(v20 - 8);
  v3[25] = v21;
  v22 = *(v21 + 64) + 15;
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC4A128, 0, 0);
}

uint64_t sub_24AC4A128()
{
  v1 = v0[27];
  v2 = v0[24];
  v58 = v0[25];
  v64 = v0[23];
  v61 = v0[22];
  v62 = v0[21];
  v60 = v0[19];
  v76 = v0[18];
  v3 = v0[17];
  v78 = v0[16];
  v65 = v0[15];
  v66 = v0[14];
  v80 = v0[13];
  v59 = v0[12];
  v63 = v0[10];
  v72 = v0[11];
  v74 = v0[9];
  v68 = v0[6];
  v70 = v0[5];
  v4 = v0[4];
  v56 = v0[3];
  v5 = v0[2];
  swift_defaultActor_initialize();
  *(v4 + OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_updatingState) = 0;
  v6 = OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_updateValueContinuation;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E0F0, &qword_24ACD44C0);
  (*(*(v7 - 8) + 56))(v4 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_writeValueContinuation;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
  v10 = *(*(v9 - 8) + 56);
  v10(v4 + v8, 1, 1, v9);
  v10(v4 + OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_notificationStateContinuation, 1, 1, v9);
  swift_weakInit();
  v11 = *(v56 + 16);
  *(v4 + OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_underlyingObject) = v11;
  v12 = [v11 UUID];
  CBUUID.uuidValue.getter(v64);

  type metadata accessor for Characteristic();
  sub_24ACD0000();
  v13 = OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_id;
  v54 = *(v58 + 32);
  v54(v4 + OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_id, v1, v2);
  swift_weakAssign();
  v14 = v5 + OBJC_IVAR____TtC15FindMyBluetooth7Service_peerPath;
  v57 = *(v78 + 16);
  v57(v3, v5 + OBJC_IVAR____TtC15FindMyBluetooth7Service_peerPath, v65);
  v55 = *(v80 + 16);
  v55(v66, v14 + v76[5], v59);
  (*(v68 + 16))(v72, v5 + OBJC_IVAR____TtC15FindMyBluetooth7Service_id, v70);
  (*(v68 + 56))(v72, 0, 1, v70);
  (*(v58 + 16))(v74, v4 + v13, v2);
  (*(v58 + 56))(v74, 0, 1, v2);
  v57(v60, v3, v65);
  v55(v60 + v76[5], v66, v59);
  sub_24AC2B5DC(v72, v60 + v76[6], &qword_27EF9DFE0, &qword_24ACD4098);
  sub_24AC2B5DC(v74, v60 + v76[7], &unk_27EF9E110, &unk_24ACD4540);
  sub_24ACCFFE0();
  sub_24AC54A58(&qword_27EF9E4E0, MEMORY[0x277CC95F0]);
  v15 = sub_24ACD0C20();
  v17 = v16;
  v18 = *(v61 + 8);
  v18(v64, v62);
  MEMORY[0x24C22CD50](47, 0xE100000000000000);
  sub_24ACCFFE0();
  v19 = sub_24ACD0C20();
  MEMORY[0x24C22CD50](v19);

  v18(v64, v62);
  v83 = v15;
  v84 = v17;
  sub_24AC2B5DC(v72, v63, &qword_27EF9DFE0, &qword_24ACD4098);
  if ((*(v68 + 48))(v63, 1, v70) == 1)
  {
    sub_24AC212F4(v0[10], &qword_27EF9DFE0, &qword_24ACD4098);
  }

  else
  {
    v20 = v0[23];
    v81 = v18;
    v21 = v0[21];
    v23 = v0[6];
    v22 = v0[7];
    v24 = v0[5];
    (*(v23 + 32))(v22, v0[10], v24);
    sub_24ACCFFE0();
    v25 = shortCBUUIDDescription(uuid:)(v20);
    v27 = v26;
    v28 = v21;
    v18 = v81;
    v81(v20, v28);
    MEMORY[0x24C22CD50](v25, v27);

    MEMORY[0x24C22CD50](47, 0xE100000000000000);

    (*(v23 + 8))(v22, v24);
  }

  v29 = v0[24];
  v30 = v0[25];
  v31 = v0[8];
  sub_24AC2B5DC(v0[9], v31, &unk_27EF9E110, &unk_24ACD4540);
  if ((*(v30 + 48))(v31, 1, v29) == 1)
  {
    v33 = v0[16];
    v32 = v0[17];
    v35 = v0[14];
    v34 = v0[15];
    v36 = v0[12];
    v37 = v0[13];
    v38 = v0[11];
    v39 = v0[8];
    sub_24AC212F4(v0[9], &unk_27EF9E110, &unk_24ACD4540);
    sub_24AC212F4(v38, &qword_27EF9DFE0, &qword_24ACD4098);
    (*(v37 + 8))(v35, v36);
    (*(v33 + 8))(v32, v34);
    sub_24AC212F4(v39, &unk_27EF9E110, &unk_24ACD4540);
  }

  else
  {
    v40 = v0[25];
    v41 = v0[26];
    v42 = v0[23];
    v43 = v0[24];
    v67 = v0[21];
    v77 = v0[16];
    v79 = v0[15];
    v82 = v0[17];
    v44 = v0[13];
    v73 = v0[12];
    v75 = v0[14];
    v69 = v0[9];
    v71 = v0[11];
    v54(v41, v0[8], v43);
    sub_24ACCFFE0();
    v45 = shortCBUUIDDescription(uuid:)(v42);
    v46 = v18;
    v48 = v47;
    v46(v42, v67);
    MEMORY[0x24C22CD50](v45, v48);

    MEMORY[0x24C22CD50](47, 0xE100000000000000);

    (*(v40 + 8))(v41, v43);
    sub_24AC212F4(v69, &unk_27EF9E110, &unk_24ACD4540);
    sub_24AC212F4(v71, &qword_27EF9DFE0, &qword_24ACD4098);
    (*(v44 + 8))(v75, v73);
    (*(v77 + 8))(v82, v79);
  }

  v49 = v0[19];
  v50 = v0[20];
  v51 = v0[4];
  v52 = (v49 + *(v0[18] + 32));
  *v52 = v83;
  v52[1] = v84;
  sub_24AC2B644(v49, v50);
  sub_24AC2B644(v50, v51 + OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_peerPath);

  return MEMORY[0x2822009F8](sub_24AC4A990, v51, 0);
}

uint64_t sub_24AC4A990()
{
  v31 = v0;
  if (qword_27EF9DC48 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = sub_24ACD0490();
  __swift_project_value_buffer(v2, qword_27EF9E220);

  v3 = sub_24ACD0470();
  v4 = sub_24ACD0900();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[3];
    v5 = v0[4];
    v7 = v0[2];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v30 = v9;
    *v8 = 136315138;
    v10 = sub_24ACA2CB0();
    v12 = sub_24AC29E20(v10, v11, &v30);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_24AC18000, v3, v4, "%s init", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x24C22DC60](v9, -1, -1);
    MEMORY[0x24C22DC60](v8, -1, -1);
  }

  else
  {
    v14 = v0[2];
    v13 = v0[3];
  }

  v16 = v0[26];
  v15 = v0[27];
  v17 = v0[23];
  v19 = v0[19];
  v18 = v0[20];
  v20 = v0[17];
  v21 = v0[14];
  v23 = v0[10];
  v22 = v0[11];
  v24 = v0[9];
  v28 = v0[8];
  v29 = v0[7];

  v25 = v0[1];
  v26 = v0[4];

  return v25(v26);
}

uint64_t Characteristic.deinit()
{
  v1 = v0;
  if (qword_27EF9DC48 != -1)
  {
    swift_once();
  }

  v2 = sub_24ACD0490();
  __swift_project_value_buffer(v2, qword_27EF9E220);

  v3 = sub_24ACD0470();
  v4 = sub_24ACD0900();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    v7 = sub_24AC52ADC();
    v9 = sub_24AC29E20(v7, v8, &v13);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_24AC18000, v3, v4, "%s deinit", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x24C22DC60](v6, -1, -1);
    MEMORY[0x24C22DC60](v5, -1, -1);
  }

  v10 = OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_id;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DDE8, &unk_24ACD37D0);
  (*(*(v11 - 8) + 8))(v1 + v10, v11);
  sub_24AC234B4(v1 + OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_peerPath);
  sub_24AC212F4(v1 + OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_updateValueContinuation, &qword_27EF9E0E8, &qword_24ACD44B8);
  sub_24AC212F4(v1 + OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_writeValueContinuation, &qword_27EF9E4F0, &unk_24ACD4130);
  sub_24AC212F4(v1 + OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_notificationStateContinuation, &qword_27EF9E4F0, &unk_24ACD4130);
  swift_weakDestroy();

  swift_defaultActor_destroy();
  return v1;
}

uint64_t Characteristic.__deallocating_deinit()
{
  Characteristic.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_24AC4AE6C()
{
  v1 = v0[2];
  Strong = swift_weakLoadStrong();
  v0[3] = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_24AC4AF94, Strong, 0);
  }

  else
  {
    type metadata accessor for CentralManager.Error();
    sub_24AC54A58(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_24AC4AF94()
{
  v1 = v0[3];
  Strong = swift_weakLoadStrong();
  v0[4] = Strong;
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_24AC4B0A4;
  }

  else
  {
    v5 = v0[2];
    type metadata accessor for CentralManager.Error();
    sub_24AC54A58(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
    v0[6] = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v4 = sub_24AC32D74;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24AC4B0A4()
{
  v1 = v0[3];
  v0[5] = [*(v0[4] + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_underlyingObject) maximumWriteValueLengthForType_];

  return MEMORY[0x2822009F8](sub_24AC4B12C, v1, 0);
}

uint64_t sub_24AC4B12C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);

  return MEMORY[0x2822009F8](sub_24AC4B198, v2, 0);
}

uint64_t sub_24AC4B198()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2(v3);
}

uint64_t sub_24AC4B200(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = type metadata accessor for PeerPath();
  v2[10] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E248, &qword_24ACD46A8);
  v2[12] = v5;
  v6 = *(v5 - 8);
  v2[13] = v6;
  v7 = *(v6 + 64) + 15;
  v2[14] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E0E8, &qword_24ACD44B8) - 8) + 64) + 15;
  v2[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC4B334, v1, 0);
}

uint64_t sub_24AC4B334()
{
  v39 = v0;
  v1 = v0[9];
  Strong = swift_weakLoadStrong();
  v0[16] = Strong;
  if (!Strong)
  {
    type metadata accessor for CentralManager.Error();
    sub_24AC54A58(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_9:
    v10 = v0[14];
    v9 = v0[15];
    v11 = v0[11];

    v12 = v0[1];

    return v12();
  }

  v3 = Strong;
  v4 = *(v0[9] + OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_underlyingObject);
  v0[17] = v4;
  sub_24AC1C24C([v4 properties], v38);
  if ((v38[0] & 2) == 0)
  {
    type metadata accessor for CentralManager.Error();
    sub_24AC54A58(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
    swift_allocError();
    *v5 = 2;
LABEL_8:
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    goto LABEL_9;
  }

  v6 = v0[9];
  v7 = OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_updatingState;
  v8 = *(v6 + OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_updatingState);
  if (v8 == 2 || v8 == 1)
  {
    type metadata accessor for CentralManager.Error();
    sub_24AC54A58(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
    swift_allocError();
    goto LABEL_8;
  }

  v14 = v0[15];
  v15 = OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_updateValueContinuation;
  swift_beginAccess();
  sub_24AC2B5DC(v6 + v15, v14, &qword_27EF9E0E8, &qword_24ACD44B8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E0F0, &qword_24ACD44C0);
  LODWORD(v15) = (*(*(v16 - 8) + 48))(v14, 1, v16);
  sub_24AC212F4(v14, &qword_27EF9E0E8, &qword_24ACD44B8);
  if (v15 == 1)
  {
    v17 = v0[13];
    v18 = v0[14];
    v19 = v0[12];
    v21 = v0[8];
    v20 = v0[9];
    *(v6 + v7) = 1;
    (*(v17 + 104))(v18, *MEMORY[0x277D858A0], v19);
    sub_24ACD08D0();
    if (qword_27EF9DC48 != -1)
    {
      swift_once();
    }

    v22 = v0[9];
    v23 = sub_24ACD0490();
    __swift_project_value_buffer(v23, qword_27EF9E220);

    v24 = sub_24ACD0470();
    v25 = sub_24ACD0930();

    if (os_log_type_enabled(v24, v25))
    {
      v27 = v0[10];
      v26 = v0[11];
      v28 = v0[9];
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v38[0] = v30;
      *v29 = 136446210;
      sub_24AC2A3DC(v28 + OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_peerPath, v26);
      v31 = (v26 + *(v27 + 32));
      v32 = *v31;
      v33 = v31[1];

      sub_24AC234B4(v26);
      v34 = sub_24AC29E20(v32, v33, v38);

      *(v29 + 4) = v34;
      _os_log_impl(&dword_24AC18000, v24, v25, "%{public}s: read()", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x24C22DC60](v30, -1, -1);
      MEMORY[0x24C22DC60](v29, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DFF8, &qword_24ACD40B0);
    inited = swift_initStackObject();
    v0[18] = inited;
    *(inited + 16) = v4;
    v36 = v4;

    return MEMORY[0x2822009F8](sub_24AC4B908, v3, 0);
  }

  else
  {
    v37 = v0[9];
    return sub_24AC4BE00();
  }
}