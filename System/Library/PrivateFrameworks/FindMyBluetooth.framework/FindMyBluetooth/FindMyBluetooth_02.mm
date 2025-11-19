uint64_t sub_24AC4B908()
{
  v1 = v0[16];
  Strong = swift_weakLoadStrong();
  v0[19] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[20] = v3;
    *v3 = v0;
    v3[1] = sub_24AC4BA8C;
    v4 = v0[18];

    return sub_24AC2BA08(v4);
  }

  else
  {
    v6 = v0[18];
    type metadata accessor for CentralManager.Error();
    sub_24AC54A58(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
    v7 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v0[22] = v7;
    v8 = v0[9];

    return MEMORY[0x2822009F8](sub_24AC4BD30, v8, 0);
  }
}

uint64_t sub_24AC4BA8C()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *v1;
  *(*v1 + 168) = v0;

  v5 = *(v2 + 128);
  if (v0)
  {
    v6 = sub_24AC4BCB8;
  }

  else
  {
    v6 = sub_24AC4BBB8;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24AC4BBB8()
{
  v1 = v0[19];
  v2 = v0[17];
  v3 = v0[9];

  return MEMORY[0x2822009F8](sub_24AC4BC2C, v3, 0);
}

uint64_t sub_24AC4BC2C()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  v4 = v0[11];

  v5 = v0[1];

  return v5();
}

uint64_t sub_24AC4BCB8()
{
  v2 = v0[18];
  v1 = v0[19];

  v0[22] = v0[21];
  v3 = v0[9];

  return MEMORY[0x2822009F8](sub_24AC4BD30, v3, 0);
}

uint64_t sub_24AC4BD30()
{
  v1 = v0[16];
  v2 = v0[8];

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E250, &qword_24ACD46B0);
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v0[22];
  v6 = v0[14];
  v5 = v0[15];
  v7 = v0[11];

  v8 = v0[1];

  return v8();
}

uint64_t sub_24AC4BE00()
{
  v1 = type metadata accessor for PeerPath();
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_updatingState))
  {
    type metadata accessor for CentralManager.Error();
    sub_24AC54A58(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
    swift_allocError();
  }

  else
  {
    v6 = v3;
    if (qword_27EF9DC48 != -1)
    {
      swift_once();
    }

    v7 = sub_24ACD0490();
    __swift_project_value_buffer(v7, qword_27EF9E220);

    v8 = v0;
    v9 = sub_24ACD0470();
    v10 = sub_24ACD0920();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v19 = v12;
      *v11 = 136446210;
      sub_24AC2A3DC(v8 + OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_peerPath, v5);
      v13 = &v5[*(v6 + 32)];
      v14 = *v13;
      v15 = v13[1];

      sub_24AC234B4(v5);
      v16 = sub_24AC29E20(v14, v15, &v19);

      *(v11 + 4) = v16;
      _os_log_impl(&dword_24AC18000, v9, v10, "%{public}s: Unexpectedly in .idle updateMode while having a continuation!", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x24C22DC60](v12, -1, -1);
      MEMORY[0x24C22DC60](v11, -1, -1);
    }

    type metadata accessor for CentralManager.Error();
    sub_24AC54A58(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
    swift_allocError();
  }

  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

uint64_t sub_24AC4C130()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24AC20274;

  return sub_24AC4C1C0();
}

uint64_t sub_24AC4C1C0()
{
  v1[12] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F0, &unk_24ACD4130) - 8) + 64) + 15;
  v1[13] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E0F0, &qword_24ACD44C0);
  v1[14] = v3;
  v4 = *(v3 - 8);
  v1[15] = v4;
  v5 = *(v4 + 64) + 15;
  v1[16] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E0E8, &qword_24ACD44B8) - 8) + 64) + 15;
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v7 = type metadata accessor for PeerPath();
  v1[19] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v1[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC4C338, v0, 0);
}

uint64_t sub_24AC4C338()
{
  v59 = v0;
  if (qword_27EF9DC48 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = sub_24ACD0490();
  __swift_project_value_buffer(v2, qword_27EF9E220);

  v3 = sub_24ACD0470();
  v4 = sub_24ACD0930();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[19];
    v5 = v0[20];
    v7 = v0[12];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v58 = v9;
    *v8 = 136446210;
    sub_24AC2A3DC(v7 + OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_peerPath, v5);
    v10 = (v5 + *(v6 + 32));
    v11 = *v10;
    v12 = v10[1];

    sub_24AC234B4(v5);
    v13 = sub_24AC29E20(v11, v12, &v58);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_24AC18000, v3, v4, "%{public}s: Setting updatingState to .idle", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x24C22DC60](v9, -1, -1);
    MEMORY[0x24C22DC60](v8, -1, -1);
  }

  *(v0[12] + OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_updatingState) = 0;

  v14 = sub_24ACD0470();
  v15 = sub_24ACD0930();

  if (os_log_type_enabled(v14, v15))
  {
    v17 = v0[19];
    v16 = v0[20];
    v18 = v0[12];
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v58 = v20;
    *v19 = 136446210;
    sub_24AC2A3DC(v18 + OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_peerPath, v16);
    v21 = (v16 + *(v17 + 32));
    v22 = *v21;
    v23 = v21[1];

    sub_24AC234B4(v16);
    v24 = sub_24AC29E20(v22, v23, &v58);

    *(v19 + 4) = v24;
    _os_log_impl(&dword_24AC18000, v14, v15, "%{public}s: Clearing updateValueContinuation", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x24C22DC60](v20, -1, -1);
    MEMORY[0x24C22DC60](v19, -1, -1);
  }

  v25 = v0[18];
  v26 = v0[14];
  v27 = v0[15];
  v28 = v0[12];
  v29 = OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_updateValueContinuation;
  swift_beginAccess();
  sub_24AC2B5DC(v28 + v29, v25, &qword_27EF9E0E8, &qword_24ACD44B8);
  v30 = (*(v27 + 48))(v25, 1, v26);
  v31 = v0[18];
  if (v30)
  {
    sub_24AC212F4(v0[18], &qword_27EF9E0E8, &qword_24ACD44B8);
  }

  else
  {
    v33 = v0[15];
    v32 = v0[16];
    v34 = v0[14];
    (*(v33 + 16))(v32, v0[18], v34);
    sub_24AC212F4(v31, &qword_27EF9E0E8, &qword_24ACD44B8);
    v0[11] = 0;
    sub_24ACD08A0();
    (*(v33 + 8))(v32, v34);
  }

  v35 = v0[17];
  v36 = v0[12];
  (*(v0[15] + 56))(v35, 1, 1, v0[14]);
  swift_beginAccess();
  sub_24AC463C4(v35, v28 + v29, &qword_27EF9E0E8, &qword_24ACD44B8);
  swift_endAccess();

  v37 = sub_24ACD0470();
  v38 = sub_24ACD0930();

  if (os_log_type_enabled(v37, v38))
  {
    v40 = v0[19];
    v39 = v0[20];
    v41 = v0[12];
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v58 = v43;
    *v42 = 136446210;
    sub_24AC2A3DC(v41 + OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_peerPath, v39);
    v44 = (v39 + *(v40 + 32));
    v45 = *v44;
    v46 = v44[1];

    sub_24AC234B4(v39);
    v47 = sub_24AC29E20(v45, v46, &v58);

    *(v42 + 4) = v47;
    _os_log_impl(&dword_24AC18000, v37, v38, "%{public}s: Clearing notificationStateContinuation", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v43);
    MEMORY[0x24C22DC60](v43, -1, -1);
    MEMORY[0x24C22DC60](v42, -1, -1);
  }

  v48 = v0[20];
  v49 = v0[17];
  v50 = v0[18];
  v51 = v0[16];
  v53 = v0[12];
  v52 = v0[13];
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
  (*(*(v54 - 8) + 56))(v52, 1, 1, v54);
  v55 = OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_notificationStateContinuation;
  swift_beginAccess();
  sub_24AC463C4(v52, v53 + v55, &qword_27EF9E4F0, &unk_24ACD4130);
  swift_endAccess();

  v56 = v0[1];

  return v56();
}

uint64_t sub_24AC4C950()
{
  v1[5] = v0;
  v2 = type metadata accessor for PeerPath();
  v1[6] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC4C9E4, v0, 0);
}

uint64_t sub_24AC4C9E4()
{
  v25 = v0;
  v1 = v0[5];
  Strong = swift_weakLoadStrong();
  v0[8] = Strong;
  if (!Strong)
  {
    type metadata accessor for CentralManager.Error();
    sub_24AC54A58(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_5;
  }

  v3 = Strong;
  v4 = *(v0[5] + OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_underlyingObject);
  v0[9] = v4;
  sub_24AC1C24C([v4 properties], v24);
  if ((v24[0] & 2) == 0)
  {
    type metadata accessor for CentralManager.Error();
    sub_24AC54A58(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
    swift_allocError();
    *v5 = 2;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

LABEL_5:
    v6 = v0[7];

    v7 = v0[1];

    return v7();
  }

  if (qword_27EF9DC48 != -1)
  {
    swift_once();
  }

  v9 = v0[5];
  v10 = sub_24ACD0490();
  __swift_project_value_buffer(v10, qword_27EF9E220);

  v11 = sub_24ACD0470();
  v12 = sub_24ACD0930();

  if (os_log_type_enabled(v11, v12))
  {
    v14 = v0[6];
    v13 = v0[7];
    v15 = v0[5];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v24[0] = v17;
    *v16 = 136446210;
    sub_24AC2A3DC(v15 + OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_peerPath, v13);
    v18 = (v13 + *(v14 + 32));
    v19 = *v18;
    v20 = v18[1];

    sub_24AC234B4(v13);
    v21 = sub_24AC29E20(v19, v20, v24);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_24AC18000, v11, v12, "%{public}s: read()", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x24C22DC60](v17, -1, -1);
    MEMORY[0x24C22DC60](v16, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DFF8, &qword_24ACD40B0);
  inited = swift_initStackObject();
  v0[10] = inited;
  *(inited + 16) = v4;
  v23 = v4;

  return MEMORY[0x2822009F8](sub_24AC4CD70, v3, 0);
}

uint64_t sub_24AC4CD70()
{
  v1 = v0[8];
  Strong = swift_weakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[12] = v3;
    *v3 = v0;
    v3[1] = sub_24AC4CEDC;
    v4 = v0[10];

    return sub_24AC2BA08(v4);
  }

  else
  {
    type metadata accessor for CentralManager.Error();
    sub_24AC54A58(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
    v6 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v0[14] = v6;
    v7 = v0[5];

    return MEMORY[0x2822009F8](sub_24AC4D158, v7, 0);
  }
}

uint64_t sub_24AC4CEDC()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;
  *(*v1 + 104) = v0;

  v5 = *(v2 + 64);
  if (v0)
  {
    v6 = sub_24AC4D0E8;
  }

  else
  {
    v6 = sub_24AC4D008;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24AC4D008()
{
  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[5];

  return MEMORY[0x2822009F8](sub_24AC4D07C, v3, 0);
}

uint64_t sub_24AC4D07C()
{
  v2 = v0[7];
  v1 = v0[8];

  v3 = v0[1];

  return v3();
}

uint64_t sub_24AC4D0E8()
{
  v1 = v0[11];

  v0[14] = v0[13];
  v2 = v0[5];

  return MEMORY[0x2822009F8](sub_24AC4D158, v2, 0);
}

uint64_t sub_24AC4D158()
{
  v1 = v0[8];
  v2 = v0[9];

  v3 = v0[14];
  v4 = v0[7];

  v5 = v0[1];

  return v5();
}

uint64_t sub_24AC4D1C8(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = type metadata accessor for PeerPath();
  v2[13] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F0, &unk_24ACD4130) - 8) + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC4D2A0, v1, 0);
}

uint64_t sub_24AC4D2A0()
{
  v22 = v0;
  v1 = v0[11];
  v2 = *(v1 + 16);
  v0[17] = v2;
  if (!v2)
  {
    goto LABEL_11;
  }

  v3 = (v1 + 40);
  do
  {
    v4 = *(v3 - 1);
    v5 = *v3 >> 62;
    if (v5 > 1)
    {
      if (v5 != 2 || *(v4 + 16) == *(v4 + 24))
      {
        goto LABEL_11;
      }
    }

    else if (v5)
    {
      if (v4 == v4 >> 32)
      {
        goto LABEL_11;
      }
    }

    else if ((*v3 & 0xFF000000000000) == 0)
    {
      goto LABEL_11;
    }

    v3 += 2;
    --v2;
  }

  while (v2);
  v11 = v0[12];
  Strong = swift_weakLoadStrong();
  v0[18] = Strong;
  if (!Strong)
  {
LABEL_11:
    type metadata accessor for CentralManager.Error();
    sub_24AC54A58(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_12:
    v7 = v0[15];
    v6 = v0[16];
    v8 = v0[14];

    v9 = v0[1];

    return v9();
  }

  v13 = v0[16];
  v14 = v0[12];
  v15 = OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_writeValueContinuation;
  v0[19] = OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_writeValueContinuation;
  swift_beginAccess();
  sub_24AC2B5DC(v14 + v15, v13, &qword_27EF9E4F0, &unk_24ACD4130);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
  v0[20] = v16;
  v17 = *(v16 - 8);
  v0[21] = v17;
  LODWORD(v14) = (*(v17 + 48))(v13, 1, v16);
  sub_24AC212F4(v13, &qword_27EF9E4F0, &unk_24ACD4130);
  if (v14 != 1)
  {
    type metadata accessor for CentralManager.Error();
    sub_24AC54A58(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
    swift_allocError();
    goto LABEL_21;
  }

  sub_24AC1C24C([*(v0[12] + OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_underlyingObject) properties], &v21);
  if ((v21 & 8) == 0)
  {
    type metadata accessor for CentralManager.Error();
    sub_24AC54A58(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
    swift_allocError();
    *v18 = 8;
LABEL_21:
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    goto LABEL_12;
  }

  v19 = swift_task_alloc();
  v0[22] = v19;
  *v19 = v0;
  v19[1] = sub_24AC4D6E0;
  v20 = v0[12];

  return sub_24AC4AE4C();
}

uint64_t sub_24AC4D6E0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 176);
  v6 = *v2;
  *(v4 + 184) = a1;
  *(v4 + 192) = v1;

  v7 = *(v3 + 96);
  if (v1)
  {
    v8 = sub_24AC4E4E8;
  }

  else
  {
    v8 = sub_24AC4D814;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_24AC4D814()
{
  v75 = v0;
  v1 = 0;
  v2 = v0[23];
  v3 = (v0[11] + 40);
  while (1)
  {
    v4 = *(v3 - 1);
    v5 = *v3 >> 62;
    if (v5 <= 1)
    {
      if (v5)
      {
        v6 = __OFSUB__(HIDWORD(v4), v4);
        LODWORD(v4) = HIDWORD(v4) - v4;
        if (v6)
        {
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          swift_once();
          v72 = v0[11];
LABEL_18:
          v17 = v0[12];
          v18 = sub_24ACD0490();
          v0[25] = __swift_project_value_buffer(v18, qword_27EF9E220);

          v19 = sub_24ACD0470();
          v20 = sub_24ACD0930();

          v21 = &unk_27EFA5000;
          if (os_log_type_enabled(v19, v20))
          {
            v22 = v0[17];
            v24 = v0[13];
            v23 = v0[14];
            v25 = v0[11];
            v26 = v0[12];
            v27 = swift_slowAlloc();
            v28 = swift_slowAlloc();
            v74 = v28;
            *v27 = 136446466;
            sub_24AC2A3DC(v26 + OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_peerPath, v23);
            v29 = (v23 + *(v24 + 32));
            v30 = *v29;
            v31 = v29[1];

            sub_24AC234B4(v23);
            v32 = sub_24AC29E20(v30, v31, &v74);

            *(v27 + 4) = v32;
            *(v27 + 12) = 2048;
            *(v27 + 14) = v22;

            _os_log_impl(&dword_24AC18000, v19, v20, "%{public}s: Sending %ld packets.", v27, 0x16u);
            __swift_destroy_boxed_opaque_existential_0(v28);
            MEMORY[0x24C22DC60](v28, -1, -1);
            v33 = v27;
            v21 = &unk_27EFA5000;
            MEMORY[0x24C22DC60](v33, -1, -1);
          }

          else
          {
            v34 = v0[11];
          }

          v35 = v0[12];
          v36 = sub_24AC54A58(&qword_27EF9E258, type metadata accessor for Characteristic);
          v44 = v21[426];
          v0[26] = v36;
          v0[27] = v44;
          v0[28] = 0;
          if (v0[17])
          {
            v45 = v0[25];
            v46 = v0[11];
            v47 = *(v46 + 32);
            v0[29] = v47;
            v48 = *(v46 + 40);
            v0[30] = v48;
            sub_24AC46630(v47, v48);

            sub_24AC46630(v47, v48);
            v49 = sub_24ACD0470();
            v50 = sub_24ACD0930();

            if (!os_log_type_enabled(v49, v50))
            {
              sub_24AC46698(v47, v48);
              goto LABEL_35;
            }

            v51 = v0[27];
            v53 = v0[13];
            v52 = v0[14];
            v54 = v0[12];
            v55 = swift_slowAlloc();
            v73 = swift_slowAlloc();
            v0[10] = v73;
            *v55 = 136446722;
            sub_24AC2A3DC(v54 + v51, v52);
            v56 = (v52 + *(v53 + 32));
            v57 = *v56;
            v58 = v56[1];

            sub_24AC234B4(v52);
            v59 = sub_24AC29E20(v57, v58, v0 + 10);

            *(v55 + 4) = v59;
            *(v55 + 12) = 2048;
            v60 = v48 >> 62;
            if ((v48 >> 62) > 1)
            {
              if (v60 != 2)
              {
                v61 = 0;
                goto LABEL_34;
              }

              v63 = *(v47 + 16);
              v62 = *(v47 + 24);
              v6 = __OFSUB__(v62, v63);
              v61 = v62 - v63;
              if (!v6)
              {
                goto LABEL_34;
              }

              __break(1u);
            }

            else if (!v60)
            {
              v61 = BYTE6(v48);
LABEL_34:
              *(v55 + 14) = v61;
              sub_24AC46698(v47, v48);
              *(v55 + 22) = 2080;
              v0[8] = v47;
              v0[9] = v48;
              sub_24AC467AC();
              v64 = sub_24ACD0180();
              v66 = sub_24AC29E20(v64, v65, v0 + 10);

              *(v55 + 24) = v66;
              _os_log_impl(&dword_24AC18000, v49, v50, "%{public}s: Sending packet [%ld bytes]: %s", v55, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x24C22DC60](v73, -1, -1);
              MEMORY[0x24C22DC60](v55, -1, -1);
LABEL_35:

              v67 = v0[26];
              v68 = v0[18];
              v69 = v0[12];
              v70 = swift_task_alloc();
              v0[31] = v70;
              v70[2] = v69;
              v70[3] = v68;
              v70[4] = v47;
              v70[5] = v48;
              v71 = *(MEMORY[0x277D85A40] + 4);
              v36 = swift_task_alloc();
              v0[32] = v36;
              *v36 = v0;
              v36[1] = sub_24AC4DE6C;
              v41 = sub_24AC53714;
              v40 = 0x800000024ACD9B20;
              v43 = MEMORY[0x277D84F78] + 8;
              v37 = v69;
              v38 = v67;
              v39 = 0xD00000000000001BLL;
              v42 = v70;

              return MEMORY[0x2822008A0](v36, v37, v38, v39, v40, v41, v42, v43);
            }

            LODWORD(v61) = HIDWORD(v47) - v47;
            if (!__OFSUB__(HIDWORD(v47), v47))
            {
              v61 = v61;
              goto LABEL_34;
            }
          }

          else
          {
            __break(1u);
          }

          __break(1u);
          return MEMORY[0x2822008A0](v36, v37, v38, v39, v40, v41, v42, v43);
        }

        v4 = v4;
      }

      else
      {
        v4 = BYTE6(*v3);
      }

      goto LABEL_3;
    }

    if (v5 == 2)
    {
      v9 = v4 + 16;
      v7 = *(v4 + 16);
      v8 = *(v9 + 8);
      v6 = __OFSUB__(v8, v7);
      v4 = v8 - v7;
      if (v6)
      {
        goto LABEL_39;
      }

LABEL_3:
      if (v2 < v4)
      {
        break;
      }

      goto LABEL_4;
    }

    if (v2 < 0)
    {
      break;
    }

LABEL_4:
    ++v1;
    v3 += 2;
    if (v1 == v0[17])
    {
      if (qword_27EF9DC48 == -1)
      {
        goto LABEL_18;
      }

      goto LABEL_40;
    }
  }

  v10 = v0[18];
  type metadata accessor for CentralManager.Error();
  sub_24AC54A58(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
  swift_allocError();
  *v11 = v2;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  v13 = v0[15];
  v12 = v0[16];
  v14 = v0[14];

  v15 = v0[1];

  return v15();
}

uint64_t sub_24AC4DE6C()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v4 = *v1;
  *(*v1 + 264) = v0;

  v5 = *(v2 + 248);
  v6 = *(v2 + 96);

  if (v0)
  {
    v7 = sub_24AC4E570;
  }

  else
  {
    v7 = sub_24AC4DFB4;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_24AC4DFB4()
{
  v65 = v0;
  v1 = v0[17];
  v2 = v0[28] + 1;
  v3 = sub_24AC46698(v0[29], v0[30]);
  if (v2 != v1)
  {
    v26 = v0[28] + 1;
    v0[28] = v26;
    if (v26 == v0[17])
    {
      __break(1u);
    }

    else
    {
      v27 = v0[25];
      v28 = v0[12];
      v29 = v0[11] + 16 * v26;
      v30 = *(v29 + 32);
      v0[29] = v30;
      v31 = *(v29 + 40);
      v0[30] = v31;
      sub_24AC46630(v30, v31);

      sub_24AC46630(v30, v31);
      v32 = sub_24ACD0470();
      v33 = sub_24ACD0930();

      if (!os_log_type_enabled(v32, v33))
      {
        sub_24AC46698(v30, v31);
        goto LABEL_22;
      }

      v34 = v0[27];
      v36 = v0[13];
      v35 = v0[14];
      v37 = v0[12];
      v38 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v0[10] = v63;
      *v38 = 136446722;
      sub_24AC2A3DC(v37 + v34, v35);
      v39 = (v35 + *(v36 + 32));
      v40 = *v39;
      v41 = v39[1];

      sub_24AC234B4(v35);
      v42 = sub_24AC29E20(v40, v41, v0 + 10);

      *(v38 + 4) = v42;
      *(v38 + 12) = 2048;
      v43 = v31 >> 62;
      if ((v31 >> 62) > 1)
      {
        if (v43 != 2)
        {
          v44 = 0;
          goto LABEL_21;
        }

        v53 = *(v30 + 16);
        v52 = *(v30 + 24);
        v54 = __OFSUB__(v52, v53);
        v44 = v52 - v53;
        if (!v54)
        {
          goto LABEL_21;
        }

        __break(1u);
      }

      else if (!v43)
      {
        v44 = BYTE6(v31);
LABEL_21:
        *(v38 + 14) = v44;
        sub_24AC46698(v30, v31);
        *(v38 + 22) = 2080;
        v0[8] = v30;
        v0[9] = v31;
        sub_24AC467AC();
        v55 = sub_24ACD0180();
        v57 = sub_24AC29E20(v55, v56, v0 + 10);

        *(v38 + 24) = v57;
        _os_log_impl(&dword_24AC18000, v32, v33, "%{public}s: Sending packet [%ld bytes]: %s", v38, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x24C22DC60](v63, -1, -1);
        MEMORY[0x24C22DC60](v38, -1, -1);
LABEL_22:

        v58 = v0[26];
        v59 = v0[18];
        v60 = v0[12];
        v61 = swift_task_alloc();
        v0[31] = v61;
        v61[2] = v60;
        v61[3] = v59;
        v61[4] = v30;
        v61[5] = v31;
        v62 = *(MEMORY[0x277D85A40] + 4);
        v3 = swift_task_alloc();
        v0[32] = v3;
        *v3 = v0;
        v3[1] = sub_24AC4DE6C;
        v8 = sub_24AC53714;
        v7 = 0x800000024ACD9B20;
        v10 = MEMORY[0x277D84F78] + 8;
        v4 = v60;
        v5 = v58;
        v6 = 0xD00000000000001BLL;
        v9 = v61;

        return MEMORY[0x2822008A0](v3, v4, v5, v6, v7, v8, v9, v10);
      }

      LODWORD(v44) = HIDWORD(v30) - v30;
      if (!__OFSUB__(HIDWORD(v30), v30))
      {
        v44 = v44;
        goto LABEL_21;
      }
    }

    __break(1u);
    return MEMORY[0x2822008A0](v3, v4, v5, v6, v7, v8, v9, v10);
  }

  v11 = v0[25];
  v12 = v0[12];

  v13 = sub_24ACD0470();
  v14 = sub_24ACD0930();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = v0[27];
    v16 = v0[18];
    v18 = v0[13];
    v17 = v0[14];
    v19 = v0[12];
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v64 = v21;
    *v20 = 136446210;
    sub_24AC2A3DC(v19 + v15, v17);
    v22 = (v17 + *(v18 + 32));
    v23 = *v22;
    v24 = v22[1];

    sub_24AC234B4(v17);
    v25 = sub_24AC29E20(v23, v24, &v64);

    *(v20 + 4) = v25;
    _os_log_impl(&dword_24AC18000, v13, v14, "%{public}s: Clearing writeValueContinuation", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x24C22DC60](v21, -1, -1);
    MEMORY[0x24C22DC60](v20, -1, -1);
  }

  else
  {
    v45 = v0[18];
  }

  v46 = v0[19];
  v47 = v0[15];
  v48 = v0[14];
  v49 = v0[12];
  (*(v0[21] + 56))(v47, 1, 1, v0[20]);
  swift_beginAccess();
  sub_24AC463C4(v47, v49 + v46, &qword_27EF9E4F0, &unk_24ACD4130);
  swift_endAccess();

  v50 = v0[1];

  return v50();
}

uint64_t sub_24AC4E4E8()
{
  v1 = v0[18];

  v2 = v0[24];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[14];

  v6 = v0[1];

  return v6();
}

uint64_t sub_24AC4E570()
{
  v1 = v0[18];
  sub_24AC46698(v0[29], v0[30]);

  v2 = v0[33];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[14];

  v6 = v0[1];

  return v6();
}

uint64_t sub_24AC4E604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[14] = a6;
  v7[15] = a7;
  v7[12] = a4;
  v7[13] = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
  v7[16] = v9;
  v10 = *(v9 - 8);
  v7[17] = v10;
  v11 = *(v10 + 64) + 15;
  v7[18] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F0, &unk_24ACD4130) - 8) + 64) + 15;
  v7[19] = swift_task_alloc();
  v7[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC4E71C, a7, 0);
}

uint64_t sub_24AC4E71C()
{
  v1 = v0[12];
  v2 = *(v0[15] + OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_underlyingObject);
  v0[21] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DFF8, &qword_24ACD40B0);
  inited = swift_initStackObject();
  v0[22] = inited;
  *(inited + 16) = v2;
  v4 = v2;

  return MEMORY[0x2822009F8](sub_24AC4E7C8, v1, 0);
}

uint64_t sub_24AC4E7C8()
{
  v1 = v0[12];
  Strong = swift_weakLoadStrong();
  v0[23] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[24] = v3;
    *v3 = v0;
    v3[1] = sub_24AC4E93C;
    v4 = v0[22];
    v6 = v0[13];
    v5 = v0[14];

    return sub_24AC2C34C(v6, v5, v4, 0);
  }

  else
  {
    type metadata accessor for CentralManager.Error();
    sub_24AC54A58(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
    v8 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v0[26] = v8;
    v9 = v0[15];

    return MEMORY[0x2822009F8](sub_24AC4EB5C, v9, 0);
  }
}

uint64_t sub_24AC4E93C()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *v1;
  *(*v1 + 200) = v0;

  v5 = *(v2 + 96);
  if (v0)
  {
    v6 = sub_24AC4EAEC;
  }

  else
  {
    v6 = sub_24AC4EA68;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24AC4EA68()
{
  v1 = v0[23];
  v2 = v0[21];

  v4 = v0[19];
  v3 = v0[20];
  v5 = v0[18];

  v6 = v0[1];

  return v6();
}

uint64_t sub_24AC4EAEC()
{
  v1 = v0[23];

  v0[26] = v0[25];
  v2 = v0[15];

  return MEMORY[0x2822009F8](sub_24AC4EB5C, v2, 0);
}

uint64_t sub_24AC4EB5C()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);
  v4 = *(v0 + 120);

  v5 = OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_writeValueContinuation;
  swift_beginAccess();
  sub_24AC2B5DC(v4 + v5, v1, &qword_27EF9E4F0, &unk_24ACD4130);
  if ((*(v3 + 48))(v1, 1, v2))
  {
    v6 = *(v0 + 160);

    sub_24AC212F4(v6, &qword_27EF9E4F0, &unk_24ACD4130);
  }

  else
  {
    v7 = *(v0 + 208);
    v8 = *(v0 + 160);
    v10 = *(v0 + 136);
    v9 = *(v0 + 144);
    v11 = *(v0 + 128);
    (*(v10 + 16))(v9, v8, v11);
    sub_24AC212F4(v8, &qword_27EF9E4F0, &unk_24ACD4130);
    *(v0 + 88) = v7;
    sub_24ACD0750();
    (*(v10 + 8))(v9, v11);
  }

  v12 = *(v0 + 152);
  (*(*(v0 + 136) + 56))(v12, 1, 1, *(v0 + 128));
  swift_beginAccess();
  sub_24AC463C4(v12, v4 + v5, &qword_27EF9E4F0, &unk_24ACD4130);
  swift_endAccess();
  v14 = *(v0 + 152);
  v13 = *(v0 + 160);
  v15 = *(v0 + 144);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_24AC4ED48(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  v4 = type metadata accessor for PeerPath();
  v3[14] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[15] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F0, &unk_24ACD4130) - 8) + 64) + 15;
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC4EE24, v2, 0);
}

uint64_t sub_24AC4EE24()
{
  v22 = v0;
  v1 = v0[12];
  v2 = *(v1 + 16);
  v0[18] = v2;
  if (!v2)
  {
    goto LABEL_11;
  }

  v3 = (v1 + 40);
  do
  {
    v4 = *(v3 - 1);
    v5 = *v3 >> 62;
    if (v5 > 1)
    {
      if (v5 != 2 || *(v4 + 16) == *(v4 + 24))
      {
        goto LABEL_11;
      }
    }

    else if (v5)
    {
      if (v4 == v4 >> 32)
      {
        goto LABEL_11;
      }
    }

    else if ((*v3 & 0xFF000000000000) == 0)
    {
      goto LABEL_11;
    }

    v3 += 2;
    --v2;
  }

  while (v2);
  v11 = v0[13];
  Strong = swift_weakLoadStrong();
  v0[19] = Strong;
  if (!Strong)
  {
LABEL_11:
    type metadata accessor for CentralManager.Error();
    sub_24AC54A58(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_12:
    v7 = v0[16];
    v6 = v0[17];
    v8 = v0[15];

    v9 = v0[1];

    return v9();
  }

  v13 = v0[17];
  v14 = v0[13];
  v15 = OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_writeValueContinuation;
  v0[20] = OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_writeValueContinuation;
  swift_beginAccess();
  sub_24AC2B5DC(v14 + v15, v13, &qword_27EF9E4F0, &unk_24ACD4130);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
  v0[21] = v16;
  v17 = *(v16 - 8);
  v0[22] = v17;
  LODWORD(v14) = (*(v17 + 48))(v13, 1, v16);
  sub_24AC212F4(v13, &qword_27EF9E4F0, &unk_24ACD4130);
  if (v14 != 1)
  {
    type metadata accessor for CentralManager.Error();
    sub_24AC54A58(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
    swift_allocError();
    goto LABEL_21;
  }

  sub_24AC1C24C([*(v0[13] + OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_underlyingObject) properties], &v21);
  if ((v21 & 8) == 0)
  {
    type metadata accessor for CentralManager.Error();
    sub_24AC54A58(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
    swift_allocError();
    *v18 = 8;
LABEL_21:
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    goto LABEL_12;
  }

  v19 = swift_task_alloc();
  v0[23] = v19;
  *v19 = v0;
  v19[1] = sub_24AC4F264;
  v20 = v0[13];

  return sub_24AC4AE4C();
}

uint64_t sub_24AC4F264(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 184);
  v6 = *v2;
  *(v4 + 192) = a1;
  *(v4 + 200) = v1;

  v7 = *(v3 + 104);
  if (v1)
  {
    v8 = sub_24AC5023C;
  }

  else
  {
    v8 = sub_24AC4F398;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

void sub_24AC4F398()
{
  v1 = 0;
  v2 = v0[24];
  for (i = (v0[12] + 40); ; i += 2)
  {
    v4 = *(i - 1);
    v5 = *i >> 62;
    if (v5 <= 1)
    {
      if (v5)
      {
        v6 = __OFSUB__(HIDWORD(v4), v4);
        LODWORD(v4) = HIDWORD(v4) - v4;
        if (v6)
        {
          __break(1u);
LABEL_21:
          __break(1u);
          return;
        }

        v4 = v4;
      }

      else
      {
        v4 = BYTE6(*i);
      }

      goto LABEL_3;
    }

    if (v5 == 2)
    {
      v9 = v4 + 16;
      v7 = *(v4 + 16);
      v8 = *(v9 + 8);
      v6 = __OFSUB__(v8, v7);
      v4 = v8 - v7;
      if (v6)
      {
        goto LABEL_21;
      }

LABEL_3:
      if (v2 < v4)
      {
        break;
      }

      goto LABEL_4;
    }

    if (v2 < 0)
    {
      break;
    }

LABEL_4:
    if (++v1 == v0[18])
    {
      v16 = swift_task_alloc();
      v0[26] = v16;
      *v16 = v0;
      v16[1] = sub_24AC4F598;
      v17 = v0[13];
      v18 = v0[11];

      sub_24AC50B8C(v18);
      return;
    }
  }

  v10 = v0[19];
  type metadata accessor for CentralManager.Error();
  sub_24AC54A58(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
  swift_allocError();
  *v11 = v2;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  v13 = v0[16];
  v12 = v0[17];
  v14 = v0[15];

  v15 = v0[1];

  v15();
}

uint64_t sub_24AC4F598()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *v1;
  *(*v1 + 216) = v0;

  v5 = *(v2 + 104);
  if (v0)
  {
    v6 = sub_24AC502C4;
  }

  else
  {
    v6 = sub_24AC4F6C4;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24AC4F6C4()
{
  v61 = v0;
  if (qword_27EF9DC48 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = v0[13];
  v3 = sub_24ACD0490();
  v0[28] = __swift_project_value_buffer(v3, qword_27EF9E220);

  v4 = sub_24ACD0470();
  v5 = sub_24ACD0930();

  v6 = &unk_27EFA5000;
  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[18];
    v9 = v0[14];
    v8 = v0[15];
    v10 = v0[12];
    v11 = v0[13];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v60 = v13;
    *v12 = 136446466;
    sub_24AC2A3DC(v11 + OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_peerPath, v8);
    v14 = (v8 + *(v9 + 32));
    v15 = *v14;
    v16 = v14[1];

    sub_24AC234B4(v8);
    v17 = sub_24AC29E20(v15, v16, &v60);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2048;
    *(v12 + 14) = v7;

    _os_log_impl(&dword_24AC18000, v4, v5, "%{public}s: Sending %ld packets.", v12, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x24C22DC60](v13, -1, -1);
    v18 = v12;
    v6 = &unk_27EFA5000;
    MEMORY[0x24C22DC60](v18, -1, -1);
  }

  else
  {
    v19 = v0[12];
  }

  v20 = v0[13];
  v21 = sub_24AC54A58(&qword_27EF9E258, type metadata accessor for Characteristic);
  v29 = v6[426];
  v0[29] = v21;
  v0[30] = v29;
  v0[31] = 0;
  if (!v0[18])
  {
    __break(1u);
    goto LABEL_24;
  }

  v30 = v0[28];
  v31 = v0[12];
  v32 = *(v31 + 32);
  v0[32] = v32;
  v33 = *(v31 + 40);
  v0[33] = v33;
  sub_24AC46630(v32, v33);

  sub_24AC46630(v32, v33);
  v34 = sub_24ACD0470();
  v35 = sub_24ACD0930();

  if (!os_log_type_enabled(v34, v35))
  {
    sub_24AC46698(v32, v33);
    goto LABEL_20;
  }

  v36 = v0[30];
  v38 = v0[14];
  v37 = v0[15];
  v39 = v0[13];
  v40 = swift_slowAlloc();
  v59 = swift_slowAlloc();
  v0[10] = v59;
  *v40 = 136446722;
  sub_24AC2A3DC(v39 + v36, v37);
  v41 = (v37 + *(v38 + 32));
  v42 = *v41;
  v43 = v41[1];

  sub_24AC234B4(v37);
  v44 = sub_24AC29E20(v42, v43, v0 + 10);

  *(v40 + 4) = v44;
  *(v40 + 12) = 2048;
  v45 = v33 >> 62;
  if ((v33 >> 62) > 1)
  {
    if (v45 != 2)
    {
      v46 = 0;
      goto LABEL_19;
    }

    v48 = *(v32 + 16);
    v47 = *(v32 + 24);
    v49 = __OFSUB__(v47, v48);
    v46 = v47 - v48;
    if (!v49)
    {
      goto LABEL_19;
    }

    __break(1u);
LABEL_16:
    LODWORD(v46) = HIDWORD(v32) - v32;
    if (!__OFSUB__(HIDWORD(v32), v32))
    {
      v46 = v46;
      goto LABEL_19;
    }

LABEL_24:
    __break(1u);
    return MEMORY[0x2822008A0](v21, v22, v23, v24, v25, v26, v27, v28);
  }

  if (v45)
  {
    goto LABEL_16;
  }

  v46 = BYTE6(v33);
LABEL_19:
  *(v40 + 14) = v46;
  sub_24AC46698(v32, v33);
  *(v40 + 22) = 2080;
  v0[8] = v32;
  v0[9] = v33;
  sub_24AC467AC();
  v50 = sub_24ACD0180();
  v52 = sub_24AC29E20(v50, v51, v0 + 10);

  *(v40 + 24) = v52;
  _os_log_impl(&dword_24AC18000, v34, v35, "%{public}s: Sending packet [%ld bytes]: %s", v40, 0x20u);
  swift_arrayDestroy();
  MEMORY[0x24C22DC60](v59, -1, -1);
  MEMORY[0x24C22DC60](v40, -1, -1);
LABEL_20:

  v53 = v0[29];
  v54 = v0[19];
  v55 = v0[13];
  v56 = swift_task_alloc();
  v0[34] = v56;
  v56[2] = v55;
  v56[3] = v54;
  v56[4] = v32;
  v56[5] = v33;
  v57 = *(MEMORY[0x277D85A40] + 4);
  v21 = swift_task_alloc();
  v0[35] = v21;
  *v21 = v0;
  v21[1] = sub_24AC4FBBC;
  v26 = sub_24AC53750;
  v24 = 0x6164286574697277;
  v25 = 0xEC000000293A6174;
  v28 = MEMORY[0x277D84F78] + 8;
  v22 = v55;
  v23 = v53;
  v27 = v56;

  return MEMORY[0x2822008A0](v21, v22, v23, v24, v25, v26, v27, v28);
}

uint64_t sub_24AC4FBBC()
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v4 = *v1;
  *(*v1 + 288) = v0;

  v5 = *(v2 + 272);
  v6 = *(v2 + 104);

  if (v0)
  {
    v7 = sub_24AC5034C;
  }

  else
  {
    v7 = sub_24AC4FD04;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_24AC4FD04()
{
  v65 = v0;
  v1 = v0[18];
  v2 = v0[31] + 1;
  v3 = sub_24AC46698(v0[32], v0[33]);
  if (v2 != v1)
  {
    v26 = v0[31] + 1;
    v0[31] = v26;
    if (v26 == v0[18])
    {
      __break(1u);
    }

    else
    {
      v27 = v0[28];
      v28 = v0[13];
      v29 = v0[12] + 16 * v26;
      v30 = *(v29 + 32);
      v0[32] = v30;
      v31 = *(v29 + 40);
      v0[33] = v31;
      sub_24AC46630(v30, v31);

      sub_24AC46630(v30, v31);
      v32 = sub_24ACD0470();
      v33 = sub_24ACD0930();

      if (!os_log_type_enabled(v32, v33))
      {
        sub_24AC46698(v30, v31);
        goto LABEL_22;
      }

      v34 = v0[30];
      v36 = v0[14];
      v35 = v0[15];
      v37 = v0[13];
      v38 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v0[10] = v63;
      *v38 = 136446722;
      sub_24AC2A3DC(v37 + v34, v35);
      v39 = (v35 + *(v36 + 32));
      v40 = *v39;
      v41 = v39[1];

      sub_24AC234B4(v35);
      v42 = sub_24AC29E20(v40, v41, v0 + 10);

      *(v38 + 4) = v42;
      *(v38 + 12) = 2048;
      v43 = v31 >> 62;
      if ((v31 >> 62) > 1)
      {
        if (v43 != 2)
        {
          v44 = 0;
          goto LABEL_21;
        }

        v53 = *(v30 + 16);
        v52 = *(v30 + 24);
        v54 = __OFSUB__(v52, v53);
        v44 = v52 - v53;
        if (!v54)
        {
          goto LABEL_21;
        }

        __break(1u);
      }

      else if (!v43)
      {
        v44 = BYTE6(v31);
LABEL_21:
        *(v38 + 14) = v44;
        sub_24AC46698(v30, v31);
        *(v38 + 22) = 2080;
        v0[8] = v30;
        v0[9] = v31;
        sub_24AC467AC();
        v55 = sub_24ACD0180();
        v57 = sub_24AC29E20(v55, v56, v0 + 10);

        *(v38 + 24) = v57;
        _os_log_impl(&dword_24AC18000, v32, v33, "%{public}s: Sending packet [%ld bytes]: %s", v38, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x24C22DC60](v63, -1, -1);
        MEMORY[0x24C22DC60](v38, -1, -1);
LABEL_22:

        v58 = v0[29];
        v59 = v0[19];
        v60 = v0[13];
        v61 = swift_task_alloc();
        v0[34] = v61;
        v61[2] = v60;
        v61[3] = v59;
        v61[4] = v30;
        v61[5] = v31;
        v62 = *(MEMORY[0x277D85A40] + 4);
        v3 = swift_task_alloc();
        v0[35] = v3;
        *v3 = v0;
        v3[1] = sub_24AC4FBBC;
        v8 = sub_24AC53750;
        v6 = 0x6164286574697277;
        v7 = 0xEC000000293A6174;
        v10 = MEMORY[0x277D84F78] + 8;
        v4 = v60;
        v5 = v58;
        v9 = v61;

        return MEMORY[0x2822008A0](v3, v4, v5, v6, v7, v8, v9, v10);
      }

      LODWORD(v44) = HIDWORD(v30) - v30;
      if (!__OFSUB__(HIDWORD(v30), v30))
      {
        v44 = v44;
        goto LABEL_21;
      }
    }

    __break(1u);
    return MEMORY[0x2822008A0](v3, v4, v5, v6, v7, v8, v9, v10);
  }

  v11 = v0[28];
  v12 = v0[13];

  v13 = sub_24ACD0470();
  v14 = sub_24ACD0930();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = v0[30];
    v16 = v0[19];
    v18 = v0[14];
    v17 = v0[15];
    v19 = v0[13];
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v64 = v21;
    *v20 = 136446210;
    sub_24AC2A3DC(v19 + v15, v17);
    v22 = (v17 + *(v18 + 32));
    v23 = *v22;
    v24 = v22[1];

    sub_24AC234B4(v17);
    v25 = sub_24AC29E20(v23, v24, &v64);

    *(v20 + 4) = v25;
    _os_log_impl(&dword_24AC18000, v13, v14, "%{public}s: Clearing writeValueContinuation", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x24C22DC60](v21, -1, -1);
    MEMORY[0x24C22DC60](v20, -1, -1);
  }

  else
  {
    v45 = v0[19];
  }

  v46 = v0[20];
  v47 = v0[16];
  v48 = v0[15];
  v49 = v0[13];
  (*(v0[22] + 56))(v47, 1, 1, v0[21]);
  swift_beginAccess();
  sub_24AC463C4(v47, v49 + v46, &qword_27EF9E4F0, &unk_24ACD4130);
  swift_endAccess();

  v50 = v0[1];

  return v50();
}

uint64_t sub_24AC5023C()
{
  v1 = v0[19];

  v2 = v0[25];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[15];

  v6 = v0[1];

  return v6();
}

uint64_t sub_24AC502C4()
{
  v1 = v0[19];

  v2 = v0[27];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[15];

  v6 = v0[1];

  return v6();
}

uint64_t sub_24AC5034C()
{
  v1 = v0[32];
  v2 = v0[33];
  v3 = v0[19];
  v4 = v0[11];

  sub_24AC46698(v1, v2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E250, &qword_24ACD46B0);
  (*(*(v5 - 8) + 8))(v4, v5);
  v6 = v0[36];
  v8 = v0[16];
  v7 = v0[17];
  v9 = v0[15];

  v10 = v0[1];

  return v10();
}

uint64_t sub_24AC5042C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a5;
  v29 = a7;
  v27 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF00, &qword_24ACD3BC8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v27 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F0, &unk_24ACD4130);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v27 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
  v20 = *(v19 - 8);
  (*(v20 + 16))(v18, a1, v19);
  (*(v20 + 56))(v18, 0, 1, v19);
  v21 = OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_writeValueContinuation;
  swift_beginAccess();
  sub_24AC463C4(v18, a2 + v21, &qword_27EF9E4F0, &unk_24ACD4130);
  swift_endAccess();
  v22 = sub_24ACD07C0();
  (*(*(v22 - 8) + 56))(v14, 1, 1, v22);
  v23 = sub_24AC54A58(&qword_27EF9E258, type metadata accessor for Characteristic);
  v24 = swift_allocObject();
  v24[2] = a2;
  v24[3] = v23;
  v24[4] = a3;
  v24[5] = a4;
  v25 = v28;
  v24[6] = v28;
  v24[7] = a2;
  swift_retain_n();

  sub_24AC46630(a4, v25);
  sub_24AC7EA6C(0, 0, v14, v29, v24);
}

uint64_t sub_24AC506B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[14] = a6;
  v7[15] = a7;
  v7[12] = a4;
  v7[13] = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
  v7[16] = v9;
  v10 = *(v9 - 8);
  v7[17] = v10;
  v11 = *(v10 + 64) + 15;
  v7[18] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F0, &unk_24ACD4130) - 8) + 64) + 15;
  v7[19] = swift_task_alloc();
  v7[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC507D0, a7, 0);
}

uint64_t sub_24AC507D0()
{
  v1 = v0[12];
  v2 = *(v0[15] + OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_underlyingObject);
  v0[21] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DFF8, &qword_24ACD40B0);
  inited = swift_initStackObject();
  v0[22] = inited;
  *(inited + 16) = v2;
  v4 = v2;

  return MEMORY[0x2822009F8](sub_24AC5087C, v1, 0);
}

uint64_t sub_24AC5087C()
{
  v1 = v0[12];
  Strong = swift_weakLoadStrong();
  v0[23] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[24] = v3;
    *v3 = v0;
    v3[1] = sub_24AC509F0;
    v4 = v0[22];
    v6 = v0[13];
    v5 = v0[14];

    return sub_24AC2C34C(v6, v5, v4, 0);
  }

  else
  {
    type metadata accessor for CentralManager.Error();
    sub_24AC54A58(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
    v8 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v0[26] = v8;
    v9 = v0[15];

    return MEMORY[0x2822009F8](sub_24AC54AA8, v9, 0);
  }
}

uint64_t sub_24AC509F0()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *v1;
  *(*v1 + 200) = v0;

  v5 = *(v2 + 96);
  if (v0)
  {
    v6 = sub_24AC50B1C;
  }

  else
  {
    v6 = sub_24AC54AA4;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24AC50B1C()
{
  v1 = v0[23];

  v0[26] = v0[25];
  v2 = v0[15];

  return MEMORY[0x2822009F8](sub_24AC54AA8, v2, 0);
}

uint64_t sub_24AC50B8C(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E248, &qword_24ACD46A8);
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E0E8, &qword_24ACD44B8) - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F0, &unk_24ACD4130) - 8) + 64) + 15;
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC50CC8, v1, 0);
}

uint64_t sub_24AC50CC8()
{
  v33 = v0;
  v1 = v0[9];
  Strong = swift_weakLoadStrong();
  v0[15] = Strong;
  if (!Strong)
  {
    type metadata accessor for CentralManager.Error();
    sub_24AC54A58(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_11:
    v10 = v0[13];
    v9 = v0[14];
    v11 = v0[12];

    v12 = v0[1];

    return v12();
  }

  v3 = Strong;
  v4 = *(v0[9] + OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_underlyingObject);
  sub_24AC1C24C([v4 properties], v32);
  if ((v32[0] & 0x10) == 0)
  {
    sub_24AC1C24C([v4 properties], v32);
    if ((v32[0] & 0x20) == 0)
    {
      type metadata accessor for CentralManager.Error();
      sub_24AC54A58(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
      swift_allocError();
      *v5 = 48;
LABEL_10:
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      goto LABEL_11;
    }
  }

  v6 = v0[9];
  v7 = OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_updatingState;
  v8 = *(v6 + OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_updatingState);
  if (v8 == 2 || v8 == 1)
  {
    type metadata accessor for CentralManager.Error();
    sub_24AC54A58(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
    swift_allocError();
    goto LABEL_10;
  }

  v14 = v0[14];
  v15 = OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_notificationStateContinuation;
  swift_beginAccess();
  sub_24AC2B5DC(v6 + v15, v14, &qword_27EF9E4F0, &unk_24ACD4130);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
  LODWORD(v15) = (*(*(v16 - 8) + 48))(v14, 1, v16);
  sub_24AC212F4(v14, &qword_27EF9E4F0, &unk_24ACD4130);
  if (v15 != 1)
  {
    goto LABEL_19;
  }

  v17 = v0[13];
  v18 = v0[9];
  v19 = OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_updateValueContinuation;
  swift_beginAccess();
  sub_24AC2B5DC(v18 + v19, v17, &qword_27EF9E0E8, &qword_24ACD44B8);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E0F0, &qword_24ACD44C0);
  LODWORD(v18) = (*(*(v20 - 8) + 48))(v17, 1, v20);
  sub_24AC212F4(v17, &qword_27EF9E0E8, &qword_24ACD44B8);
  if (v18 == 1)
  {
    v21 = v0[11];
    v22 = v0[12];
    v24 = v0[9];
    v23 = v0[10];
    v25 = v0[8];
    *(v6 + v7) = 2;
    (*(v21 + 104))(v22, *MEMORY[0x277D858A0], v23);
    sub_24ACD08D0();
    v26 = sub_24AC54A58(&qword_27EF9E258, type metadata accessor for Characteristic);
    v27 = swift_task_alloc();
    v0[16] = v27;
    *(v27 + 16) = v24;
    *(v27 + 24) = v3;
    v28 = *(MEMORY[0x277D85A40] + 4);
    v29 = swift_task_alloc();
    v0[17] = v29;
    *v29 = v0;
    v29[1] = sub_24AC5129C;
    v30 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v29, v24, v26, 0x2928796669746F6ELL, 0xE800000000000000, sub_24AC537BC, v27, v30);
  }

  else
  {
LABEL_19:
    v31 = v0[9];
    return sub_24AC4BE00();
  }
}

uint64_t sub_24AC5129C()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;
  *(*v1 + 144) = v0;

  v5 = *(v2 + 128);
  v6 = *(v2 + 72);

  if (v0)
  {
    v7 = sub_24AC5146C;
  }

  else
  {
    v7 = sub_24AC513E4;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_24AC513E4()
{
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[12];
  v3 = v0[13];

  v5 = v0[1];

  return v5();
}

uint64_t sub_24AC5146C()
{
  v1 = v0[15];
  v2 = v0[8];

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E250, &qword_24ACD46B0);
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v0[18];
  v6 = v0[13];
  v5 = v0[14];
  v7 = v0[12];

  v8 = v0[1];

  return v8();
}

uint64_t sub_24AC5153C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E0E8, &qword_24ACD44B8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E0F0, &qword_24ACD44C0);
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, a1, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  v10 = OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_updateValueContinuation;
  swift_beginAccess();
  sub_24AC463C4(v7, a2 + v10, &qword_27EF9E0E8, &qword_24ACD44B8);
  swift_endAccess();

  return sub_24ACD0880();
}

uint64_t sub_24AC516A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, void, char *, uint64_t, void *))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF00, &qword_24ACD3BC8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v15 - v10;
  v12 = sub_24ACD07C0();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a2;

  a5(0, 0, v11, a4, v13);
}

uint64_t sub_24AC517B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_24AC5184C;

  return sub_24AC4C1C0();
}

uint64_t sub_24AC5184C()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 32) = v4;
  *v4 = v3;
  v4[1] = sub_24AC5198C;
  v5 = *(v1 + 16);

  return sub_24AC51A80();
}

uint64_t sub_24AC5198C()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_24AC51A80()
{
  *(v1 + 40) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F0, &unk_24ACD4130) - 8) + 64) + 15;
  *(v1 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC51B1C, v0, 0);
}

uint64_t sub_24AC51B1C()
{
  v20 = v0;
  v1 = v0[5];
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (!Strong)
  {
    type metadata accessor for CentralManager.Error();
    sub_24AC54A58(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_12:
    v16 = v0[6];

    v17 = v0[1];

    return v17();
  }

  v3 = Strong;
  sub_24AC1C24C([*(v0[5] + OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_underlyingObject) properties], &v19);
  if ((v19 & 0x20) == 0)
  {
    type metadata accessor for CentralManager.Error();
    sub_24AC54A58(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
    swift_allocError();
    *v4 = 32;
LABEL_11:
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    goto LABEL_12;
  }

  v5 = v0[5];
  v6 = OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_updatingState;
  if (*(v5 + OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_updatingState) != 2)
  {
    type metadata accessor for CentralManager.Error();
    sub_24AC54A58(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
    swift_allocError();
    goto LABEL_11;
  }

  v7 = v0[6];
  v8 = OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_notificationStateContinuation;
  swift_beginAccess();
  sub_24AC2B5DC(v5 + v8, v7, &qword_27EF9E4F0, &unk_24ACD4130);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
  LODWORD(v8) = (*(*(v9 - 8) + 48))(v7, 1, v9);
  sub_24AC212F4(v7, &qword_27EF9E4F0, &unk_24ACD4130);
  v10 = v0[5];
  if (v8 != 1)
  {
    return sub_24AC4BE00();
  }

  *(v5 + v6) = 0;
  v11 = sub_24AC54A58(&qword_27EF9E258, type metadata accessor for Characteristic);
  v12 = swift_task_alloc();
  v0[8] = v12;
  *(v12 + 16) = v10;
  *(v12 + 24) = v3;
  v13 = *(MEMORY[0x277D85A40] + 4);
  v14 = swift_task_alloc();
  v0[9] = v14;
  *v14 = v0;
  v14[1] = sub_24AC51F3C;
  v15 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v14, v10, v11, 0x69746F4E706F7473, 0xEF2928676E697966, sub_24AC54620, v12, v15);
}

uint64_t sub_24AC51F3C()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v9 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = *(v2 + 40);
    v5 = sub_24AC520D0;
  }

  else
  {
    v6 = *(v2 + 64);
    v7 = *(v2 + 40);

    v5 = sub_24AC52064;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_24AC52064()
{
  v2 = v0[6];
  v1 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t sub_24AC520D0()
{
  v1 = v0[7];
  v2 = v0[8];

  v3 = v0[10];
  v4 = v0[6];

  v5 = v0[1];

  return v5();
}

uint64_t sub_24AC52144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F0, &unk_24ACD4130) - 8) + 64) + 15;
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
  v5[16] = v8;
  v9 = *(v8 - 8);
  v5[17] = v9;
  v10 = *(v9 + 64) + 15;
  v5[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC52258, a5, 0);
}

uint64_t sub_24AC52258()
{
  v1 = *(v0[13] + OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_underlyingObject);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DFF8, &qword_24ACD40B0);
  inited = swift_initStackObject();
  v0[19] = inited;
  *(inited + 16) = v1;
  v3 = v1;
  v4 = swift_task_alloc();
  v0[20] = v4;
  *v4 = v0;
  v4[1] = sub_24AC52338;
  v5 = v0[12];

  return sub_24AC29454(1, inited);
}

uint64_t sub_24AC52338()
{
  v2 = *(*v1 + 160);
  v3 = *v1;
  v3[21] = v0;

  if (v0)
  {
    v4 = v3[13];

    return MEMORY[0x2822009F8](sub_24AC54AA0, v4, 0);
  }

  else
  {
    v5 = v3[19];
    swift_setDeallocating();

    v6 = v3[18];
    v7 = v3[14];
    v8 = v3[15];

    v9 = v3[1];

    return v9();
  }
}

uint64_t sub_24AC524A8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_id;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DDE8, &unk_24ACD37D0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_24AC5252C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24AC1E290;

  return sub_24AC4AE4C();
}

uint64_t sub_24AC525B8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AC214AC;

  return sub_24AC4B200(a1);
}

uint64_t sub_24AC52650()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24AC20274;

  return sub_24AC4C950();
}

uint64_t sub_24AC526DC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AC214AC;

  return sub_24AC4D1C8(a1);
}

uint64_t sub_24AC52770(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24AC214AC;

  return sub_24AC4ED48(a1, a2);
}

uint64_t sub_24AC52818(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AC214AC;

  return sub_24AC50B8C(a1);
}

uint64_t sub_24AC528D0()
{
  v1 = *(v0 + 16);
  v2 = sub_24ACA2CB0();
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_24AC52954()
{
  sub_24ACD0A20();

  v0 = type metadata accessor for MockCharacteristic();
  v1 = sub_24AC54A58(&qword_27EF9E280, type metadata accessor for MockCharacteristic);
  v2 = sub_24ACD0C00();
  MEMORY[0x24C22CD50](v2);

  MEMORY[0x24C22CD50](8250, 0xE200000000000000);
  v3 = MEMORY[0x24C22D370](v0, v1);
  MEMORY[0x24C22CD50](v3);

  MEMORY[0x24C22CD50](0x69746E656469202CLL, 0xEF203D2072656966);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DDE8, &unk_24ACD37D0);
  sub_24AC537F4();
  v4 = sub_24ACD0C20();
  MEMORY[0x24C22CD50](v4);

  MEMORY[0x24C22CD50](62, 0xE100000000000000);
  return 60;
}

uint64_t sub_24AC52ADC()
{
  sub_24ACD0A20();

  v0 = type metadata accessor for Characteristic();
  v1 = sub_24AC54A58(&qword_27EF9E268, type metadata accessor for Characteristic);
  v2 = sub_24ACD0C00();
  MEMORY[0x24C22CD50](v2);

  MEMORY[0x24C22CD50](8250, 0xE200000000000000);
  v3 = MEMORY[0x24C22D370](v0, v1);
  MEMORY[0x24C22CD50](v3);

  MEMORY[0x24C22CD50](0x69746E656469202CLL, 0xEF203D2072656966);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DDE8, &unk_24ACD37D0);
  sub_24AC537F4();
  v4 = sub_24ACD0C20();
  MEMORY[0x24C22CD50](v4);

  MEMORY[0x24C22CD50](62, 0xE100000000000000);
  return 60;
}

uint64_t sub_24AC52C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a5;
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
  v18 = OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_notificationStateContinuation;
  swift_beginAccess();
  sub_24AC463C4(v15, a2 + v18, &qword_27EF9E4F0, &unk_24ACD4130);
  swift_endAccess();
  v19 = sub_24ACD07C0();
  (*(*(v19 - 8) + 56))(v11, 1, 1, v19);
  v20 = sub_24AC54A58(&qword_27EF9E258, type metadata accessor for Characteristic);
  v21 = swift_allocObject();
  v21[2] = a2;
  v21[3] = v20;
  v21[4] = a3;
  v21[5] = a2;
  swift_retain_n();

  sub_24AC7EA6C(0, 0, v11, v23, v21);
}

uint64_t sub_24AC52EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F0, &unk_24ACD4130) - 8) + 64) + 15;
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
  v5[16] = v8;
  v9 = *(v8 - 8);
  v5[17] = v9;
  v10 = *(v9 + 64) + 15;
  v5[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC52FF8, a5, 0);
}

uint64_t sub_24AC52FF8()
{
  v1 = *(v0[13] + OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_underlyingObject);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DFF8, &qword_24ACD40B0);
  inited = swift_initStackObject();
  v0[19] = inited;
  *(inited + 16) = v1;
  v3 = v1;
  v4 = swift_task_alloc();
  v0[20] = v4;
  *v4 = v0;
  v4[1] = sub_24AC530D8;
  v5 = v0[12];

  return sub_24AC29454(0, inited);
}

uint64_t sub_24AC530D8()
{
  v2 = *(*v1 + 160);
  v3 = *v1;
  v3[21] = v0;

  if (v0)
  {
    v4 = v3[13];

    return MEMORY[0x2822009F8](sub_24AC5323C, v4, 0);
  }

  else
  {
    v5 = v3[19];
    swift_setDeallocating();

    v6 = v3[18];
    v7 = v3[14];
    v8 = v3[15];

    v9 = v3[1];

    return v9();
  }
}

uint64_t sub_24AC5323C()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);
  v5 = *(v0 + 104);
  v4 = *(v0 + 112);
  swift_setDeallocating();

  v6 = OBJC_IVAR____TtC15FindMyBluetooth14Characteristic_notificationStateContinuation;
  swift_beginAccess();
  sub_24AC2B5DC(v5 + v6, v4, &qword_27EF9E4F0, &unk_24ACD4130);
  if ((*(v3 + 48))(v4, 1, v2))
  {
    v7 = *(v0 + 112);

    sub_24AC212F4(v7, &qword_27EF9E4F0, &unk_24ACD4130);
  }

  else
  {
    v8 = *(v0 + 168);
    v10 = *(v0 + 136);
    v9 = *(v0 + 144);
    v11 = *(v0 + 128);
    v12 = *(v0 + 112);
    (*(v10 + 16))(v9, v12, v11);
    sub_24AC212F4(v12, &qword_27EF9E4F0, &unk_24ACD4130);
    *(v0 + 88) = v8;
    sub_24ACD0750();
    (*(v10 + 8))(v9, v11);
  }

  v13 = *(v0 + 120);
  (*(*(v0 + 136) + 56))(v13, 1, 1, *(v0 + 128));
  swift_beginAccess();
  sub_24AC463C4(v13, v5 + v6, &qword_27EF9E4F0, &unk_24ACD4130);
  swift_endAccess();
  v14 = *(v0 + 144);
  v15 = *(v0 + 112);
  v16 = *(v0 + 120);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t Characteristic.UpdatingState.hashValue.getter(unsigned __int8 a1)
{
  sub_24ACD0D10();
  MEMORY[0x24C22D480](a1);
  return sub_24ACD0D50();
}

uint64_t _s15FindMyBluetooth11CBDiscoveryC5ErrorO9hashValueSivg_0()
{
  v1 = *v0;
  sub_24ACD0D10();
  MEMORY[0x24C22D480](v1);
  return sub_24ACD0D50();
}

uint64_t sub_24AC534E8()
{
  v1 = *v0;
  sub_24ACD0D10();
  MEMORY[0x24C22D480](v1);
  return sub_24ACD0D50();
}

uint64_t type metadata accessor for Characteristic()
{
  result = qword_2814AD3F0;
  if (!qword_2814AD3F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24AC537F4()
{
  result = qword_27EF9DFD0;
  if (!qword_27EF9DFD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF9DDE8, &unk_24ACD37D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9DFD0);
  }

  return result;
}

uint64_t sub_24AC53858(uint64_t a1)
{
  *(a1 + 8) = sub_24AC54A58(&qword_27EF9E260, type metadata accessor for Characteristic);
  result = sub_24AC54A58(&qword_27EF9E268, type metadata accessor for Characteristic);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_24AC53928()
{
  result = qword_27EF9E270;
  if (!qword_27EF9E270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9E270);
  }

  return result;
}

void sub_24AC53984()
{
  sub_24AC54264();
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    v2 = type metadata accessor for PeerPath();
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_24AC542BC(319, &qword_27EF9E278, &qword_27EF9E0F0, &qword_24ACD44C0);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_24AC542BC(319, &qword_2814AD010, &unk_27EF9E070, &qword_24ACD4150);
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t dispatch thunk of Characteristic.mtu.getter()
{
  v2 = *(*v0 + 296);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24AC2A800;

  return v6();
}

uint64_t dispatch thunk of Characteristic.read()(uint64_t a1)
{
  v4 = *(*v1 + 304);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24AC214AC;

  return v8(a1);
}

uint64_t dispatch thunk of Characteristic.readUnderlying()()
{
  v2 = *(*v0 + 312);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24AC20274;

  return v6();
}

uint64_t dispatch thunk of Characteristic.writeWithoutResponse(data:)(uint64_t a1)
{
  v4 = *(*v1 + 320);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24AC214AC;

  return v8(a1);
}

uint64_t dispatch thunk of Characteristic.write(data:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 328);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_24AC214AC;

  return v10(a1, a2);
}

uint64_t dispatch thunk of Characteristic.notify()(uint64_t a1)
{
  v4 = *(*v1 + 336);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24AC214AC;

  return v8(a1);
}

void sub_24AC54264()
{
  if (!qword_2814AE240)
  {
    type metadata accessor for Characteristic();
    v0 = sub_24ACCFFF0();
    if (!v1)
    {
      atomic_store(v0, &qword_2814AE240);
    }
  }
}

void sub_24AC542BC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_24ACD0970();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for Characteristic.UpdatingState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Characteristic.UpdatingState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_24AC54460(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24AC214AC;

  return sub_24AC52144(a1, v4, v5, v7, v6);
}

uint64_t sub_24AC5456C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AC214AC;

  return sub_24AC517B8(a1, v4, v5, v6);
}

uint64_t objectdestroyTm_1()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24AC546A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24AC20274;

  return sub_24AC52EE4(a1, v4, v5, v7, v6);
}

uint64_t sub_24AC54760(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24AC214AC;

  return sub_24AC506B8(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t objectdestroy_72Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  sub_24AC46698(v0[5], v0[6]);
  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24AC54884(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24AC214AC;

  return sub_24AC4E604(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_24AC549A4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_24AC214AC;

  return sub_24AC4C130();
}

uint64_t sub_24AC54A58(unint64_t *a1, void (*a2)(uint64_t))
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

FindMyBluetooth::PeripheralState_optional __swiftcall PeripheralState.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if ((rawValue + 1) < 5)
  {
    v2 = rawValue + 1;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_24AC54AD4()
{
  result = qword_27EF9E288;
  if (!qword_27EF9E288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9E288);
  }

  return result;
}

uint64_t sub_24AC54B28()
{
  v1 = *v0;
  sub_24ACD0D10();
  MEMORY[0x24C22D480](v1 - 1);
  return sub_24ACD0D50();
}

uint64_t sub_24AC54BA0()
{
  v1 = *v0;
  sub_24ACD0D10();
  MEMORY[0x24C22D480](v1 - 1);
  return sub_24ACD0D50();
}

uint64_t getEnumTagSinglePayload for PeripheralState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PeripheralState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t CBUUID.uuidValue.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v67 = a1;
  v68[3] = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EC40, &qword_24ACD8620);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v66 = &v62 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v65 = &v62 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v62 - v12;
  v14 = sub_24ACD0420();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v64 = &v62 - v20;
  v21 = [v2 data];
  v22 = sub_24ACD02D0();
  v24 = v22;
  v25 = v23;
  v26 = v23 >> 62;
  if ((v23 >> 62) > 1)
  {
    v63 = v19;
    if (v26 != 2)
    {
LABEL_48:
      sub_24AC46698(v24, v25);
      goto LABEL_49;
    }

    v28 = v14;
    v29 = v2;
    v30 = v7;
    v31 = v21;
    v32 = v15;
    v33 = *(v22 + 16);
    v34 = *(v22 + 24);
    sub_24AC46698(v22, v23);
    v27 = v34 - v33;
    if (!__OFSUB__(v34, v33))
    {
      v15 = v32;
      v21 = v31;
      v7 = v30;
      v2 = v29;
      v14 = v28;
      v19 = v63;
      if (v27 == 16)
      {
        goto LABEL_14;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v26)
  {
    v41 = HIDWORD(v22);
    sub_24AC46698(v22, v23);
    LODWORD(v27) = v41 - v24;
    if (!__OFSUB__(v41, v24))
    {
      v27 = v27;
      if (v27 == 16)
      {
        goto LABEL_14;
      }

LABEL_8:
      if (v27 == 4)
      {
        v25 = v2;
        v64 = v21;
        v65 = v7;
        v35 = v66;
        sub_24ACD03B0();
        v36 = *(v15 + 48);
        if (v36(v35, 1, v14) != 1)
        {
          v66 = *(v15 + 32);
          (v66)(v19, v35, v14);
          v68[0] = sub_24ACD03A0();
          v37 = [v2 data];
          v24 = sub_24ACD02D0();
          v39 = v38;

          v25 = v15;
          sub_24AC561E0(v24, v39, v68, sub_24AC55FE0, sub_24AC55FE0);
          sub_24AC46698(v24, v39);

          v40 = v65;
          sub_24ACD0390();
          if (v36(v40, 1, v14) != 1)
          {
            (*(v15 + 8))(v19, v14);

            (v66)(v67, v40, v14);
LABEL_21:

LABEL_38:
            v61 = *MEMORY[0x277D85DE8];
            return result;
          }

          goto LABEL_46;
        }

        __break(1u);
      }

      else
      {
        if (v27 != 2)
        {
LABEL_49:
          result = sub_24ACD0B20();
          __break(1u);
          return result;
        }

        sub_24ACD03B0();
        v66 = *(v15 + 48);
        if ((v66)(v13, 1, v14) != 1)
        {
          v47 = *(v15 + 32);
          v48 = v64;
          v47();
          v68[0] = sub_24ACD03A0();
          v49 = [v2 data];
          v50 = sub_24ACD02D0();
          v52 = v51;

          v25 = v15;
          sub_24AC561E0(v50, v52, v68, sub_24AC55F24, sub_24AC55F24);
          sub_24AC46698(v50, v52);
          v24 = v68[0];

          v53 = v65;
          sub_24ACD0390();
          if ((v66)(v53, 1, v14) != 1)
          {
            (*(v25 + 8))(v48, v14);

            (v47)(v67, v53, v14);
            goto LABEL_21;
          }

          goto LABEL_47;
        }
      }

      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    goto LABEL_40;
  }

  sub_24AC46698(v22, v23);
  v27 = BYTE6(v25);
  if (BYTE6(v25) != 16)
  {
    goto LABEL_8;
  }

LABEL_14:

  v42 = [v2 data];
  v43 = sub_24ACD02D0();
  v45 = v44;

  v46 = v45 >> 62;
  if ((v45 >> 62) > 1)
  {
    if (v46 != 2)
    {
      memset(v68, 0, 14);
      goto LABEL_37;
    }

    v55 = *(v43 + 16);
    v56 = *(v43 + 24);
    v57 = sub_24ACD01C0();
    if (v57)
    {
      v58 = sub_24ACD01F0();
      if (__OFSUB__(v55, v58))
      {
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      v57 += v55 - v58;
    }

    if (!__OFSUB__(v56, v55))
    {
      goto LABEL_33;
    }

    __break(1u);
  }

  else if (!v46)
  {
    v68[0] = v43;
    LOWORD(v68[1]) = v45;
    BYTE2(v68[1]) = BYTE2(v45);
    BYTE3(v68[1]) = BYTE3(v45);
    BYTE4(v68[1]) = BYTE4(v45);
    BYTE5(v68[1]) = BYTE5(v45);
LABEL_37:
    sub_24AC5611C(v68);
    result = sub_24AC46698(v43, v45);
    goto LABEL_38;
  }

  if (v43 >> 32 < v43)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v57 = sub_24ACD01C0();
  if (v57)
  {
    v59 = sub_24ACD01F0();
    if (!__OFSUB__(v43, v59))
    {
      v57 += v43 - v59;
      goto LABEL_33;
    }

LABEL_43:
    __break(1u);
  }

LABEL_33:
  sub_24ACD01E0();
  sub_24AC5611C(v57);
  v60 = *MEMORY[0x277D85DE8];

  return sub_24AC46698(v43, v45);
}

uint64_t shortCBUUIDDescription(uuid:)(uint64_t a1)
{
  v92 = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EC40, &qword_24ACD8620);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v76 - v4;
  sub_24ACD03B0();
  v6 = sub_24ACD0420();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_24AC563B4(v5);
    result = sub_24ACD0B20();
    __break(1u);
    return result;
  }

  v8 = sub_24ACD0370();
  v10 = v9;
  v11 = *(v7 + 8);
  v76[0] = v6;
  v11(v5, v6);
  v12 = v8;
  v76[1] = a1;
  v13 = sub_24ACD0370();
  v15 = v14;
  v16 = v10 >> 62;
  v81 = HIDWORD(v8);
  v82 = BYTE6(v10);
  if ((v10 >> 62) <= 1)
  {
    if (!v16)
    {
      v17 = v82;
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  if (v16 != 2)
  {
    goto LABEL_13;
  }

  v19 = *(v8 + 16);
  v18 = *(v8 + 24);
  v20 = __OFSUB__(v18, v19);
  v17 = v18 - v19;
  if (v20)
  {
    __break(1u);
LABEL_9:
    if (__OFSUB__(v81, v8))
    {
      goto LABEL_136;
    }

    v17 = v81 - v8;
  }

  if ((v17 & 0x8000000000000000) == 0)
  {
    goto LABEL_14;
  }

  __break(1u);
LABEL_13:
  v17 = 0;
LABEL_14:
  v77 = 0;
  v78 = 0;
  v21 = 0;
  v79 = v8 >> 32;
  v80 = v8;
  v88 = v17;
  v89 = -v17;
  v83 = v10;
  v85 = v8;
  v86 = v10 >> 62;
LABEL_15:
  v22 = v21 - 1;
  while (v89 + v22 != -1)
  {
    v24 = v22 + 1;
    if (v22 + 1 >= v17)
    {
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
LABEL_122:
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
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
    }

    v87 = v22 + 2;
    if (__OFADD__(v24, 1))
    {
      goto LABEL_109;
    }

    if (v16 > 1)
    {
      if (v16 != 2)
      {
        goto LABEL_137;
      }

      if (v24 < *(v12 + 16))
      {
        goto LABEL_110;
      }

      if (v24 >= *(v12 + 24))
      {
        goto LABEL_113;
      }

      v26 = sub_24ACD01C0();
      if (!v26)
      {
        goto LABEL_140;
      }

      v27 = v26;
      v28 = sub_24ACD01F0();
      v29 = v24 - v28;
      if (__OFSUB__(v24, v28))
      {
        goto LABEL_116;
      }

      goto LABEL_36;
    }

    if (v16)
    {
      if (v24 < v80 || v24 >= v79)
      {
        goto LABEL_112;
      }

      v30 = sub_24ACD01C0();
      if (!v30)
      {
        goto LABEL_138;
      }

      v27 = v30;
      v31 = sub_24ACD01F0();
      v29 = v24 - v31;
      if (__OFSUB__(v24, v31))
      {
        goto LABEL_114;
      }

LABEL_36:
      v25 = *(v27 + v29);
      goto LABEL_37;
    }

    if (v24 >= v82)
    {
      goto LABEL_111;
    }

    LOWORD(v90) = v12;
    BYTE2(v90) = BYTE2(v12);
    BYTE3(v90) = BYTE3(v12);
    BYTE4(v90) = v81;
    BYTE5(v90) = BYTE5(v12);
    BYTE6(v90) = BYTE6(v12);
    HIBYTE(v90) = HIBYTE(v12);
    LOWORD(v91) = v10;
    BYTE2(v91) = BYTE2(v10);
    BYTE3(v91) = BYTE3(v10);
    BYTE4(v91) = BYTE4(v10);
    BYTE5(v91) = BYTE5(v10);
    v25 = *(&v90 + v22 + 1);
LABEL_37:
    v32 = v15 >> 62;
    if ((v15 >> 62) > 1)
    {
      if (v32 != 2)
      {
        goto LABEL_139;
      }

      if (v24 < *(v13 + 16))
      {
        goto LABEL_117;
      }

      if (v24 >= *(v13 + 24))
      {
        goto LABEL_119;
      }

      v34 = v15 & 0x3FFFFFFFFFFFFFFFLL;
      v35 = sub_24ACD01C0();
      if (!v35)
      {
        goto LABEL_142;
      }

      v36 = v35;
      v37 = sub_24ACD01F0();
      if (__OFSUB__(v24, v37))
      {
        goto LABEL_121;
      }

      if (v24 < *(v13 + 16))
      {
        goto LABEL_123;
      }

      if (v24 >= *(v13 + 24))
      {
        goto LABEL_127;
      }

      v38 = *(v36 + v24 - v37);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = *(v13 + 16);
        v39 = *(v13 + 24);
        if (sub_24ACD01C0())
        {
          if (__OFSUB__(v40, sub_24ACD01F0()))
          {
            goto LABEL_134;
          }

          if (__OFSUB__(v39, v40))
          {
            goto LABEL_132;
          }
        }

        else if (__OFSUB__(v39, v40))
        {
          goto LABEL_132;
        }

        v53 = sub_24ACD0200();
        v54 = *(v53 + 48);
        v55 = *(v53 + 52);
        swift_allocObject();
        v56 = sub_24ACD01A0();

        v34 = v56;
        v10 = v83;
        LODWORD(v16) = v86;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = *(v13 + 16);
        v57 = *(v13 + 24);
        sub_24ACD0280();
        v58 = swift_allocObject();
        *(v58 + 16) = v16;
        *(v58 + 24) = v57;
        LODWORD(v16) = v86;

        v13 = v58;
      }

      sub_24ACD0190();
      v59 = sub_24ACD01C0();
      if (!v59)
      {
        goto LABEL_146;
      }

      v60 = v59;
      v61 = sub_24ACD01F0();
      if (__OFSUB__(v24, v61))
      {
        goto LABEL_131;
      }

      *(v60 + v24 - v61) = v38 ^ v25;
      v15 = v34 | 0x8000000000000000;
      goto LABEL_72;
    }

    if (v32)
    {
      if (v24 >= v13 >> 32 || v24 < v13)
      {
        goto LABEL_118;
      }

      v41 = v15 & 0x3FFFFFFFFFFFFFFFLL;
      v42 = sub_24ACD01C0();
      if (!v42)
      {
        goto LABEL_141;
      }

      v43 = v42;
      v44 = sub_24ACD01F0();
      if (__OFSUB__(v24, v44))
      {
        goto LABEL_120;
      }

      v45 = *(v43 + v24 - v44);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {

        if (sub_24ACD01C0() && __OFSUB__(v13, sub_24ACD01F0()))
        {
          goto LABEL_133;
        }

        v46 = sub_24ACD0200();
        v47 = *(v46 + 48);
        v48 = *(v46 + 52);
        swift_allocObject();
        v49 = sub_24ACD01A0();

        v41 = v49;
      }

      sub_24ACD0190();
      v50 = sub_24ACD01C0();
      if (!v50)
      {
        goto LABEL_143;
      }

      v51 = v50;
      v52 = sub_24ACD01F0();
      v10 = v83;
      LODWORD(v16) = v86;
      if (__OFSUB__(v24, v52))
      {
        goto LABEL_122;
      }

      *(v51 + v24 - v52) = v45 ^ v25;
      v15 = v41 | 0x4000000000000000;
LABEL_72:
      v12 = v85;
      goto LABEL_73;
    }

    if (v24 >= BYTE6(v15))
    {
      goto LABEL_115;
    }

    v90 = v13;
    LOWORD(v91) = v15;
    BYTE2(v91) = BYTE2(v15);
    BYTE3(v91) = BYTE3(v15);
    BYTE4(v91) = BYTE4(v15);
    BYTE5(v91) = BYTE5(v15);
    v33 = *(&v90 + v22 + 1);
    v90 = v13;
    BYTE6(v91) = BYTE6(v15);
    WORD2(v91) = WORD2(v15);
    LODWORD(v91) = v15;
    *(&v90 + v22 + 1) = v33 ^ v25;
    v13 = v90;
    v15 = v84 & 0xF00000000000000 | v91 | ((WORD2(v91) | (BYTE6(v91) << 16)) << 32);
    v84 = v15;
LABEL_73:
    v62 = v15 >> 62;
    if ((v15 >> 62) > 1)
    {
      if (v62 != 2)
      {
        goto LABEL_144;
      }

      if (v24 < *(v13 + 16))
      {
        goto LABEL_125;
      }

      if (v24 >= *(v13 + 24))
      {
        goto LABEL_128;
      }

      v63 = sub_24ACD01C0();
      if (!v63)
      {
        goto LABEL_147;
      }

      v64 = v63;
      v65 = sub_24ACD01F0();
      v66 = v24 - v65;
      if (__OFSUB__(v24, v65))
      {
        goto LABEL_130;
      }
    }

    else
    {
      if (!v62)
      {
        if (v24 >= BYTE6(v15))
        {
          goto LABEL_124;
        }

        v90 = v13;
        LOWORD(v91) = v15;
        BYTE2(v91) = BYTE2(v15);
        BYTE3(v91) = BYTE3(v15);
        BYTE4(v91) = BYTE4(v15);
        BYTE5(v91) = BYTE5(v15);
        v23 = *(&v90 + v22 + 1);
        goto LABEL_17;
      }

      if (v24 >= v13 >> 32 || v24 < v13)
      {
        goto LABEL_126;
      }

      v67 = sub_24ACD01C0();
      if (!v67)
      {
        goto LABEL_145;
      }

      v64 = v67;
      v68 = sub_24ACD01F0();
      v66 = v24 - v68;
      if (__OFSUB__(v24, v68))
      {
        goto LABEL_129;
      }
    }

    v23 = *(v64 + v66);
LABEL_17:
    ++v22;
    v17 = v88;
    if (v23)
    {
      if (__OFADD__(v78, 1))
      {
        goto LABEL_135;
      }

      if ((v78 + 1) > 4)
      {
        goto LABEL_104;
      }

      ++v78;
      if (v22 < 2)
      {
        LODWORD(v77) = 1;
        v21 = v87;
      }

      else
      {
        v21 = v87;
        if (v22 - 2 <= 1)
        {
          HIDWORD(v77) = 1;
        }
      }

      goto LABEL_15;
    }
  }

  if (v78 < 1)
  {
    goto LABEL_105;
  }

  if ((v77 & 0x100000000) == 0)
  {
    if ((v77 & (v78 < 5)) != 0)
    {
      goto LABEL_102;
    }

LABEL_104:
    sub_24AC5641C();
    v70 = sub_24ACD0C20();
    goto LABEL_107;
  }

  if ((v77 & 1) == 0)
  {
    if (v78 > 2)
    {
      goto LABEL_104;
    }

LABEL_105:
    v69 = 2;
    goto LABEL_106;
  }

  if (v78 > 4)
  {
    goto LABEL_104;
  }

LABEL_102:
  v69 = 0;
LABEL_106:
  v71 = sub_24AC56174(v69, 3, v13, v15);
  v73 = v72;
  v90 = v71;
  v91 = v72;
  sub_24AC467AC();
  sub_24ACD0180();
  sub_24AC46698(v71, v73);
  v70 = sub_24ACD05B0();

LABEL_107:
  sub_24AC46698(v12, v10);
  sub_24AC46698(v13, v15);
  v74 = *MEMORY[0x277D85DE8];
  return v70;
}

uint64_t sub_24AC55F24(_BYTE *a1, uint64_t a2, char **a3)
{
  v4 = a1;
  v5 = *a1;
  v6 = *a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_24AC56474(v6);
    *a3 = v6;
  }

  if (*(v6 + 2) < 3uLL)
  {
    __break(1u);
  }

  else
  {
    v6[34] = v5;
    v6 = *a3;
    LOBYTE(v4) = v4[1];
    result = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v6;
    if (result)
    {
      goto LABEL_5;
    }
  }

  result = sub_24AC56474(v6);
  v6 = result;
  *a3 = result;
LABEL_5:
  if (*(v6 + 2) < 4uLL)
  {
    __break(1u);
  }

  else
  {
    v6[35] = v4;
  }

  return result;
}

uint64_t sub_24AC55FE0(_BYTE *a1, uint64_t a2, char **a3)
{
  v4 = a1;
  v5 = *a1;
  v6 = *a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v6;
  if (isUniquelyReferenced_nonNull_native)
  {
    if (*(v6 + 2))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = sub_24AC56474(v6);
    *a3 = v6;
    if (*(v6 + 2))
    {
LABEL_3:
      v6[32] = v5;
      v6 = *a3;
      v5 = v4[1];
      v8 = swift_isUniquelyReferenced_nonNull_native();
      *a3 = v6;
      if (v8)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_12:
  v6 = sub_24AC56474(v6);
  *a3 = v6;
LABEL_4:
  if (*(v6 + 2) < 2uLL)
  {
    __break(1u);
  }

  else
  {
    v6[33] = v5;
    v6 = *a3;
    v5 = v4[2];
    v9 = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v6;
    if (v9)
    {
      goto LABEL_6;
    }
  }

  v6 = sub_24AC56474(v6);
  *a3 = v6;
LABEL_6:
  if (*(v6 + 2) < 3uLL)
  {
    __break(1u);
  }

  else
  {
    v6[34] = v5;
    v6 = *a3;
    LOBYTE(v4) = v4[3];
    result = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v6;
    if (result)
    {
      goto LABEL_8;
    }
  }

  result = sub_24AC56474(v6);
  v6 = result;
  *a3 = result;
LABEL_8:
  if (*(v6 + 2) < 4uLL)
  {
    __break(1u);
  }

  else
  {
    v6[35] = v4;
  }

  return result;
}

uint64_t sub_24AC5611C(unsigned __int8 *a1)
{
  v1 = *(a1 + 1);
  v2 = a1[7];
  v3 = a1[6];
  v4 = a1[5];
  v5 = a1[4];
  v6 = a1[3];
  v7 = a1[2];
  v8 = a1[1];
  v9 = *a1;
  return sub_24ACD0400();
}

uint64_t sub_24AC56174(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v7 = *(a3 + 16);
      v6 = *(a3 + 24);
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }
  }

  else
  {
    v5 = v4 == 0;
    if (v4)
    {
      v6 = a3 >> 32;
    }

    else
    {
      v6 = BYTE6(a4);
    }

    if (v5)
    {
      v7 = 0;
    }

    else
    {
      v7 = a3;
    }
  }

  if (v7 > a2)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v6 <= a2)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (a2 + 1 >= result)
  {
    return sub_24ACD02A0();
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_24AC561E0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t (*a4)(void *, char *), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  v11[2] = *MEMORY[0x277D85DE8];
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      memset(v11, 0, 14);
      v6 = v11;
      goto LABEL_9;
    }

    v7 = *(a1 + 16);
    v8 = *(a1 + 24);
  }

  else
  {
    if (!v5)
    {
      v11[0] = a1;
      LOWORD(v11[1]) = a2;
      BYTE2(v11[1]) = BYTE2(a2);
      BYTE3(v11[1]) = BYTE3(a2);
      BYTE4(v11[1]) = BYTE4(a2);
      BYTE5(v11[1]) = BYTE5(a2);
      v6 = v11 + BYTE6(a2);
LABEL_9:
      result = a4(v11, v6);
      goto LABEL_10;
    }

    v7 = a1;
    v8 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_24AC56308(v7, v8, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a5);
LABEL_10:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_24AC56308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  result = sub_24ACD01C0();
  v10 = result;
  if (result)
  {
    result = sub_24ACD01F0();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v10 += a1 - result;
  }

  v11 = __OFSUB__(a2, a1);
  v12 = a2 - a1;
  if (v11)
  {
    __break(1u);
    goto LABEL_13;
  }

  v13 = sub_24ACD01E0();
  if (v13 >= v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  v15 = v14 + v10;
  if (v10)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  return a5(v10, v16, a4);
}

uint64_t sub_24AC563B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EC40, &qword_24ACD8620);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24AC5641C()
{
  result = qword_27EF9E4E0;
  if (!qword_27EF9E4E0)
  {
    sub_24ACD0420();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9E4E0);
  }

  return result;
}

uint64_t sub_24AC56488()
{
  v1[3] = v0;
  v2 = sub_24ACD0420();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC56548, v0, 0);
}

uint64_t sub_24AC56548()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  sub_24ACD0A20();

  v0[2] = v3;
  v5 = type metadata accessor for Service();
  v6 = sub_24AC66384(&qword_27EF9DFB0, type metadata accessor for Service);
  v7 = sub_24ACD0C00();
  MEMORY[0x24C22CD50](v7);

  MEMORY[0x24C22CD50](8250, 0xE200000000000000);
  v8 = MEMORY[0x24C22D370](v5, v6);
  MEMORY[0x24C22CD50](v8);

  MEMORY[0x24C22CD50](0x69746E656469202CLL, 0xEF203D2072656966);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E090, &qword_24ACD37C0);
  sub_24AC2B6A8(&qword_27EF9E0D0, &unk_27EF9E090, &qword_24ACD37C0);
  v9 = sub_24ACD0C00();
  MEMORY[0x24C22CD50](v9);

  MEMORY[0x24C22CD50](32, 0xE100000000000000);
  sub_24ACCFFE0();
  v10 = shortCBUUIDDescription(uuid:)(v1);
  v12 = v11;
  (*(v2 + 8))(v1, v4);
  MEMORY[0x24C22CD50](v10, v12);

  MEMORY[0x24C22CD50](93, 0xE100000000000000);
  MEMORY[0x24C22CD50](91, 0xE100000000000000);

  MEMORY[0x24C22CD50](0x6D6972507369202CLL, 0xED0000203A797261);
  v13 = [*(v3 + OBJC_IVAR____TtC15FindMyBluetooth7Service_underlyingObject) isPrimary];
  v14 = v13 == 0;
  if (v13)
  {
    v15 = 1702195828;
  }

  else
  {
    v15 = 0x65736C6166;
  }

  if (v14)
  {
    v16 = 0xE500000000000000;
  }

  else
  {
    v16 = 0xE400000000000000;
  }

  MEMORY[0x24C22CD50](v15, v16);

  MEMORY[0x24C22CD50](62, 0xE100000000000000);

  v17 = v0[1];

  return v17(60, 0xE100000000000000);
}

uint64_t sub_24AC56860()
{
  v1[3] = v0;
  v2 = sub_24ACD0420();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC56920, v0, 0);
}

uint64_t sub_24AC56920()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  sub_24ACD0A20();

  v0[2] = v3;
  v5 = type metadata accessor for MockService();
  v6 = sub_24AC66384(&qword_27EF9DFB8, type metadata accessor for MockService);
  v7 = sub_24ACD0C00();
  MEMORY[0x24C22CD50](v7);

  MEMORY[0x24C22CD50](8250, 0xE200000000000000);
  v8 = MEMORY[0x24C22D370](v5, v6);
  MEMORY[0x24C22CD50](v8);

  MEMORY[0x24C22CD50](0x69746E656469202CLL, 0xEF203D2072656966);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E090, &qword_24ACD37C0);
  sub_24AC2B6A8(&qword_27EF9E0D0, &unk_27EF9E090, &qword_24ACD37C0);
  v9 = sub_24ACD0C00();
  MEMORY[0x24C22CD50](v9);

  MEMORY[0x24C22CD50](32, 0xE100000000000000);
  sub_24ACCFFE0();
  v10 = shortCBUUIDDescription(uuid:)(v1);
  v12 = v11;
  (*(v2 + 8))(v1, v4);
  MEMORY[0x24C22CD50](v10, v12);

  MEMORY[0x24C22CD50](93, 0xE100000000000000);
  MEMORY[0x24C22CD50](91, 0xE100000000000000);

  MEMORY[0x24C22CD50](0x6D6972507369202CLL, 0xED0000203A797261);
  if (*(v3 + OBJC_IVAR____TtC15FindMyBluetooth11MockService_isPrimary))
  {
    v13 = 1702195828;
  }

  else
  {
    v13 = 0x65736C6166;
  }

  if (*(v3 + OBJC_IVAR____TtC15FindMyBluetooth11MockService_isPrimary))
  {
    v14 = 0xE400000000000000;
  }

  else
  {
    v14 = 0xE500000000000000;
  }

  MEMORY[0x24C22CD50](v13, v14);

  MEMORY[0x24C22CD50](62, 0xE100000000000000);

  v15 = v0[1];

  return v15(60, 0xE100000000000000);
}

uint64_t MockService.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15FindMyBluetooth11MockService_id;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E090, &qword_24ACD37C0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id sub_24AC56CBC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15FindMyBluetooth11MockService_mockBehavior);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a2 = *v3;
  a2[1] = v5;
  a2[2] = v6;
  return sub_24AC56E10(v4, v5, v6);
}

void sub_24AC56D1C(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = (*a2 + OBJC_IVAR____TtC15FindMyBluetooth11MockService_mockBehavior);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[2];
  *v5 = v2;
  v5[1] = v3;
  v5[2] = v4;
  sub_24AC56E10(v2, v3, v4);
  sub_24AC56E90(v6, v7, v8);
}

id sub_24AC56DB4@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC15FindMyBluetooth11MockService_mockBehavior);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  return sub_24AC56E10(v4, v5, v6);
}

id sub_24AC56E10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    return (a3 & 0x7FFFFFFFFFFFFFFFLL);
  }

  return result;
}

__n128 sub_24AC56E20(__int128 *a1)
{
  v8 = *a1;
  v2 = *(a1 + 2);
  v3 = (v1 + OBJC_IVAR____TtC15FindMyBluetooth11MockService_mockBehavior);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *v3 = v8;
  v3[2] = v2;
  sub_24AC56E90(v4, v5, v6);
  return result;
}

void sub_24AC56E90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
  }
}

uint64_t sub_24AC56F00(uint64_t a1)
{
  *(v2 + 88) = v1;
  *(v2 + 96) = *a1;
  *(v2 + 112) = *(a1 + 16);
  return MEMORY[0x2822009F8](sub_24AC56F30, v1, 0);
}

uint64_t sub_24AC56F30()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  v4 = (v0[11] + OBJC_IVAR____TtC15FindMyBluetooth11MockService_mockBehavior);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  *v4 = v3;
  v4[1] = v1;
  v4[2] = v2;
  sub_24AC56E10(v3, v1, v2);
  sub_24AC56E90(v5, v6, v7);
  Strong = swift_weakLoadStrong();
  v0[15] = Strong;
  if (Strong)
  {
    v9 = Strong;
    Strong = sub_24AC5701C;
    v10 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](Strong, v9, v10);
}

uint64_t sub_24AC5701C()
{
  v1 = v0[14];
  v3 = v0[12];
  v2 = v0[13];
  v4 = (v0[15] + OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_mockBehavior);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  *v4 = v3;
  v4[1] = v2;
  v4[2] = v1;
  sub_24AC56E10(v3, v2, v1);
  sub_24AC56E90(v5, v6, v7);
  Strong = swift_weakLoadStrong();
  v0[16] = Strong;
  if (Strong)
  {
    v9 = Strong;
    Strong = sub_24AC57110;
    v10 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](Strong, v9, v10);
}

uint64_t sub_24AC57110()
{
  v1 = v0[15];
  v2 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[12];

  v6 = (v2 + OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_mockBehavior);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[2];
  *v6 = v5;
  v6[1] = v4;
  v6[2] = v3;
  sub_24AC56E10(v5, v4, v3);
  sub_24AC56E90(v7, v8, v9);

  v10 = v0[1];

  return v10();
}

uint64_t MockService.__allocating_init(peripheral:identifier:isPrimary:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 16) = a1;
  v8 = *(v3 + 48);
  v9 = *(v3 + 52);
  swift_allocObject();
  v10 = swift_task_alloc();
  *(v4 + 24) = v10;
  *v10 = v4;
  v10[1] = sub_24AC572C8;

  return (sub_24AC65860)(a1, a2, a3);
}

uint64_t sub_24AC572C8(uint64_t a1)
{
  v4 = *(*v2 + 24);
  v5 = *(*v2 + 16);
  v9 = *v2;

  v7 = *(v9 + 8);
  if (!v1)
  {
    v6 = a1;
  }

  return v7(v6);
}

uint64_t MockService.init(peripheral:identifier:isPrimary:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = sub_24AC663CC;

  return (sub_24AC65860)(a1, a2, a3);
}

uint64_t sub_24AC574B4(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DDE8, &unk_24ACD37D0);
  v2[19] = v3;
  v4 = *(v3 - 8);
  v2[20] = v4;
  v5 = *(v4 + 64) + 15;
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v6 = sub_24ACD0AF0();
  v2[26] = v6;
  v7 = *(v6 - 8);
  v2[27] = v7;
  v8 = *(v7 + 64) + 15;
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC57618, v1, 0);
}

uint64_t sub_24AC57618()
{
  v1 = v0[18];
  Strong = swift_weakLoadStrong();
  v0[30] = Strong;
  if (!Strong)
  {
    type metadata accessor for CentralManager.Error();
    sub_24AC66384(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_5;
  }

  v3 = v0[18];
  v4 = OBJC_IVAR____TtC15FindMyBluetooth11MockService_discoveryInProgress;
  v0[31] = OBJC_IVAR____TtC15FindMyBluetooth11MockService_discoveryInProgress;
  if (*(v3 + v4))
  {
    type metadata accessor for CentralManager.Error();
    sub_24AC66384(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

LABEL_5:
    v6 = v0[28];
    v5 = v0[29];
    v8 = v0[24];
    v7 = v0[25];
    v10 = v0[22];
    v9 = v0[23];
    v11 = v0[21];

    v12 = v0[1];

    return v12();
  }

  return MEMORY[0x2822009F8](sub_24AC57830, Strong, 0);
}

uint64_t sub_24AC57830()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 144);
  v3 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_state;
  swift_beginAccess();
  *(v0 + 312) = *(v1 + v3);

  return MEMORY[0x2822009F8](sub_24AC578C8, v2, 0);
}

uint64_t sub_24AC578C8()
{
  if (*(v0 + 312) == 3)
  {
    v1 = (*(v0 + 144) + OBJC_IVAR____TtC15FindMyBluetooth11MockService_mockBehavior);
    swift_beginAccess();
    v2 = *v1;
    *(v0 + 256) = *v1;
    v3 = v1[1];
    *(v0 + 264) = v3;
    v4 = v1[2];
    *(v0 + 272) = v4;
    v5 = *(v0 + 248);
    v6 = *(v0 + 144);
    if (v4 < 0)
    {
      v20 = *(v0 + 224);
      *(v6 + v5) = 1;
      v21 = (v4 & 0x7FFFFFFFFFFFFFFFLL);
      sub_24ACD0CB0();
      v22 = swift_task_alloc();
      *(v0 + 280) = v22;
      *v22 = v0;
      v22[1] = sub_24AC57B70;
      v23 = *(v0 + 224);
    }

    else
    {
      v7 = *(v0 + 232);
      *(v6 + v5) = 1;
      sub_24ACD0CB0();
      v8 = swift_task_alloc();
      *(v0 + 296) = v8;
      *v8 = v0;
      v8[1] = sub_24AC57CEC;
      v9 = *(v0 + 232);
    }

    return sub_24AC59658(v2, v3, 0, 0, 1);
  }

  else
  {
    v10 = *(v0 + 240);
    type metadata accessor for CentralManager.Error();
    sub_24AC66384(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v12 = *(v0 + 224);
    v11 = *(v0 + 232);
    v14 = *(v0 + 192);
    v13 = *(v0 + 200);
    v16 = *(v0 + 176);
    v15 = *(v0 + 184);
    v17 = *(v0 + 168);

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_24AC57B70()
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v4 = *v1;
  *(*v1 + 288) = v0;

  v5 = v2[28];
  v6 = v2[27];
  v7 = v2[26];
  v8 = v2[18];
  (*(v6 + 8))(v5, v7);
  if (v0)
  {
    v9 = sub_24AC58B84;
  }

  else
  {
    v9 = sub_24AC58AA8;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_24AC57CEC()
{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v4 = *v1;
  *(*v1 + 304) = v0;

  v5 = v2[29];
  v6 = v2[27];
  v7 = v2[26];
  v8 = v2[18];
  (*(v6 + 8))(v5, v7);
  if (v0)
  {
    v9 = sub_24AC589E8;
  }

  else
  {
    v9 = sub_24AC57E68;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

unint64_t sub_24AC57E68()
{
  v1 = v0[18];
  if (v0[17])
  {
    v2 = v0[17];
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  v111 = sub_24AC65400(v2, &qword_27EF9DDE8, &unk_24ACD37D0, &qword_27EF9DF98, sub_24AC59B10);

  v3 = OBJC_IVAR____TtC15FindMyBluetooth11MockService_mockCharacteristics;
  v4 = *&v1[OBJC_IVAR____TtC15FindMyBluetooth11MockService_mockCharacteristics];
  if (v4 >> 62)
  {
    goto LABEL_36;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
  v6 = MEMORY[0x277D84F90];
  v130 = v0;
  if (v5)
  {
    v139 = MEMORY[0x277D84F90];
    v7 = v4;

    result = sub_24AC64CA8(0, v5 & ~(v5 >> 63), 0);
    if (v5 < 0)
    {
      goto LABEL_89;
    }

    v9 = 0;
    v10 = v0[20];
    v6 = v139;
    v11 = v7;
    v131 = v1;
    v135 = v7 & 0xC000000000000001;
    v12 = (v10 + 16);
    v13 = v7;
    do
    {
      v14 = v0[25];
      v15 = v0[19];
      if (v135)
      {
        v16 = MEMORY[0x24C22D1B0](v9, v11);
        (*v12)(v14, v16 + OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_id, v15);
        v0 = v130;
        swift_unknownObjectRelease();
      }

      else
      {
        (*v12)(v0[25], *(v11 + 8 * v9 + 32) + OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_id, v0[19]);
      }

      v18 = *(v139 + 16);
      v17 = *(v139 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_24AC64CA8(v17 > 1, v18 + 1, 1);
      }

      v19 = v0[25];
      v20 = v0[19];
      ++v9;
      *(v139 + 16) = v18 + 1;
      (*(v10 + 32))(v139 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v18, v19, v20);
      v11 = v13;
    }

    while (v5 != v9);

    v1 = v131;
  }

  v132 = sub_24AC65400(v6, &qword_27EF9DDE8, &unk_24ACD37D0, &qword_27EF9DF98, sub_24AC59B10);

  v21 = *&v1[v3];
  if (v21 >> 62)
  {
    v40 = *&v1[v3];
    v1 = sub_24ACD0B30();
    v21 = v40;
    v22 = &unk_27EF9E000;
    if (v1)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v1 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = &unk_27EF9E000;
    if (v1)
    {
LABEL_18:
      v119 = v21 & 0xC000000000000001;
      v112 = v22[84];
      v113 = v0[18];
      v114 = v21 + 32;
      v115 = v21 & 0xFFFFFFFFFFFFFF8;
      v128 = v132 + 56;
      v116 = v0[20];
      v117 = v21;
      v124 = (v116 + 8);

      v23 = 0;
      v118 = v1;
      while (1)
      {
        if (v119)
        {
          v4 = MEMORY[0x24C22D1B0](v23, v117);
          v136 = v4;
          v27 = __OFADD__(v23, 1);
          v28 = v23 + 1;
          if (v27)
          {
            goto LABEL_34;
          }
        }

        else
        {
          if (v23 >= *(v115 + 16))
          {
            goto LABEL_35;
          }

          v136 = *(v114 + 8 * v23);

          v27 = __OFADD__(v23, 1);
          v28 = v23 + 1;
          if (v27)
          {
LABEL_34:
            __break(1u);
LABEL_35:
            __break(1u);
LABEL_36:
            v39 = v4;
            v5 = sub_24ACD0B30();
            v4 = v39;
            goto LABEL_6;
          }
        }

        v121 = v28;
        if (*(v132 + 16))
        {
          v3 = v0[19];
          v29 = OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_id;
          v1 = v132;
          v30 = *(v132 + 40);
          sub_24AC2B6A8(&qword_27EF9DF98, &qword_27EF9DDE8, &unk_24ACD37D0);
          v31 = sub_24ACD0520();
          v32 = -1 << *(v132 + 32);
          v33 = v31 & ~v32;
          if ((*(v128 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33))
          {
            v34 = ~v32;
            v35 = *(v116 + 72);
            v1 = *(v116 + 16);
            while (1)
            {
              v3 = v0[24];
              v36 = v0[19];
              (v1)(v3, *(v132 + 48) + v33 * v35, v36);
              sub_24AC2B6A8(&qword_27EF9DFE8, &qword_27EF9DDE8, &unk_24ACD37D0);
              v37 = sub_24ACD0550();
              v38 = *v124;
              (*v124)(v3, v36);
              if (v37)
              {
                break;
              }

              v33 = (v33 + 1) & v34;
              v0 = v130;
              if (((*(v128 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
              {
                goto LABEL_20;
              }
            }

            v0 = v130;
            v3 = v130[24];
            v24 = v130[19];
            (v1)(v3, v136 + v29, v24);
            v1 = v113;
            swift_beginAccess();

            v25 = *&v113[v112];
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v140 = *&v113[v112];
            *&v113[v112] = 0x8000000000000000;
            sub_24AC637CC(v136, v3, isUniquelyReferenced_nonNull_native, &qword_27EF9E350, &qword_24ACD4C68);
            v38(v3, v24);
            *&v113[v112] = v140;
            swift_endAccess();
          }
        }

LABEL_20:

        v23 = v121;
        if (v121 == v118)
        {

          break;
        }
      }
    }
  }

  v41 = v0[20];
  v42 = v0[18];

  v43 = OBJC_IVAR____TtC15FindMyBluetooth11MockService_characteristics;
  swift_beginAccess();
  v133 = v43;
  v137 = v42;
  v44 = *(v42 + v43);
  v45 = -1;
  v46 = -1 << *(v44 + 32);
  if (-v46 < 64)
  {
    v45 = ~(-1 << -v46);
  }

  v47 = v45 & *(v44 + 64);
  v48 = (63 - v46) >> 6;
  v127 = v41;
  v129 = (v41 + 16);
  v49 = (v41 + 32);
  result = swift_bridgeObjectRetain_n();
  v50 = 0;
  v51 = MEMORY[0x277D84F90];
  if (!v47)
  {
    goto LABEL_43;
  }

  do
  {
LABEL_41:
    while (1)
    {
      v52 = __clz(__rbit64(v47));
      v47 &= v47 - 1;
      v53 = *(*(v44 + 56) + ((v50 << 9) | (8 * v52)));
      if (v53)
      {
        break;
      }

      if (!v47)
      {
        goto LABEL_43;
      }
    }

    v55 = v0[22];
    v122 = v0[23];
    v56 = v0[19];
    (*v129)(v55, v53 + OBJC_IVAR____TtC15FindMyBluetooth18MockCharacteristic_id, v56);
    v57 = *v49;
    (*v49)(v122, v55, v56);
    v125 = v49;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v51 = sub_24AC1D2D4(0, v51[2] + 1, 1, v51);
    }

    v59 = v51[2];
    v58 = v51[3];
    v60 = v57;
    if (v59 >= v58 >> 1)
    {
      v51 = sub_24AC1D2D4(v58 > 1, v59 + 1, 1, v51);
    }

    v0 = v130;
    v61 = v130[23];
    v62 = v130[19];
    v51[2] = v59 + 1;
    v63 = v51 + ((*(v127 + 80) + 32) & ~*(v127 + 80)) + *(v127 + 72) * v59;
    v49 = v125;
    result = v60(v63, v61, v62);
  }

  while (v47);
LABEL_43:
  while (1)
  {
    v54 = v50 + 1;
    if (__OFADD__(v50, 1))
    {
      break;
    }

    if (v54 >= v48)
    {

      v64 = sub_24AC65400(v51, &qword_27EF9DDE8, &unk_24ACD37D0, &qword_27EF9DF98, sub_24AC59B10);

      if (*(v64 + 16) <= *(v111 + 16) >> 3)
      {
        sub_24AC5A620(v64);

        v65 = v111;
      }

      else
      {
        v65 = sub_24AC5AA68(v64, v111);
      }

      v66 = v0[20];
      v67 = v65 + 56;
      v68 = -1 << *(v65 + 32);
      if (-v68 < 64)
      {
        v69 = ~(-1 << -v68);
      }

      else
      {
        v69 = -1;
      }

      v70 = v69 & *(v65 + 56);
      result = swift_beginAccess();
      v71 = 0;
      v72 = (63 - v68) >> 6;
      v120 = (v66 + 8);
      v123 = v65 + 56;
      v126 = v65;
      while (2)
      {
        if (!v70)
        {
          v79 = v130;
          while (1)
          {
            v80 = v71 + 1;
            if (__OFADD__(v71, 1))
            {
              goto LABEL_86;
            }

            if (v80 >= v72)
            {
              v100 = v130[30];
              v101 = v130[31];
              v103 = v130[28];
              v102 = v130[29];
              v105 = v130[24];
              v104 = v130[25];
              v106 = v130[23];
              v134 = v130[22];
              v138 = v130[21];
              v107 = v130[18];
              swift_endAccess();

              *(v107 + v101) = 0;

              v108 = v130[1];
              v109 = MEMORY[0x277D84F90];

              return v108(v109);
            }

            v70 = *(v67 + 8 * v80);
            ++v71;
            if (v70)
            {
              v71 = v80;
              goto LABEL_69;
            }
          }
        }

        v79 = v130;
LABEL_69:
        v81 = v79[21];
        v82 = *(v127 + 72);
        v83 = *(v127 + 16);
        v83(v81, *(v65 + 48) + v82 * (__clz(__rbit64(v70)) | (v71 << 6)), v79[19]);
        v84 = *(v137 + v133);
        v85 = swift_isUniquelyReferenced_nonNull_native();
        v141 = *(v137 + v133);
        v86 = v141;
        *(v137 + v133) = 0x8000000000000000;
        result = sub_24AC2A3B8(v81);
        v88 = v141[2];
        v89 = (v87 & 1) == 0;
        v27 = __OFADD__(v88, v89);
        v90 = v88 + v89;
        if (v27)
        {
          goto LABEL_87;
        }

        v91 = v87;
        if (v141[3] >= v90)
        {
          if (v85)
          {
            goto LABEL_74;
          }

          v99 = result;
          sub_24AC5EB0C(&qword_27EF9DDE8, &unk_24ACD37D0, &qword_27EF9E350, &qword_24ACD4C68);
          result = v99;
          v86 = v141;
          if (v91)
          {
            goto LABEL_60;
          }

LABEL_75:
          v75 = v130;
          v94 = v130[21];
          v95 = v130[19];
          v86[(result >> 6) + 8] |= 1 << result;
          v96 = result;
          result = (v83)(v86[6] + result * v82, v94, v95);
          *(v86[7] + 8 * v96) = 0;
          v97 = v86[2];
          v27 = __OFADD__(v97, 1);
          v98 = v97 + 1;
          if (v27)
          {
            goto LABEL_88;
          }

          v86[2] = v98;
          v74 = 1;
        }

        else
        {
          v92 = v130[21];
          sub_24AC5C5F4(v90, v85, &qword_27EF9E350, &qword_24ACD4C68);
          v86 = v141;
          result = sub_24AC2A3B8(v92);
          if ((v91 & 1) != (v93 & 1))
          {
            v110 = v130[19];

            return sub_24ACD0C80();
          }

LABEL_74:
          if ((v91 & 1) == 0)
          {
            goto LABEL_75;
          }

LABEL_60:
          v73 = v86[7];
          v74 = *(v73 + 8 * result);
          *(v73 + 8 * result) = 0;
          v75 = v130;
        }

        v70 &= v70 - 1;
        v76 = v75;
        v77 = v75[21];
        v78 = v76[19];
        *(v137 + v133) = v86;
        sub_24AC2B7BC(v74);
        result = (*v120)(v77, v78);
        v67 = v123;
        v65 = v126;
        continue;
      }
    }

    v47 = *(v44 + 64 + 8 * v54);
    ++v50;
    if (v47)
    {
      v50 = v54;
      goto LABEL_41;
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
  __break(1u);
  return result;
}

uint64_t sub_24AC589E8()
{
  v1 = v0[30];

  v2 = v0[38];
  v4 = v0[28];
  v3 = v0[29];
  v6 = v0[24];
  v5 = v0[25];
  v8 = v0[22];
  v7 = v0[23];
  v9 = v0[21];

  v10 = v0[1];

  return v10();
}

uint64_t sub_24AC58AA8()
{
  v1 = v0[34];
  v2 = v0[30];
  *(v0[18] + v0[31]) = 0;
  swift_willThrow();

  v3 = v0[34];
  v5 = v0[28];
  v4 = v0[29];
  v7 = v0[24];
  v6 = v0[25];
  v9 = v0[22];
  v8 = v0[23];
  v10 = v0[21];

  v11 = v0[1];

  return v11();
}

uint64_t sub_24AC58B84()
{
  v1 = v0[30];
  sub_24AC56E90(v0[32], v0[33], v0[34]);

  v2 = v0[36];
  v4 = v0[28];
  v3 = v0[29];
  v6 = v0[24];
  v5 = v0[25];
  v8 = v0[22];
  v7 = v0[23];
  v9 = v0[21];

  v10 = v0[1];

  return v10();
}

uint64_t sub_24AC58C54(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2822009F8](sub_24AC58C74, v1, 0);
}

uint64_t sub_24AC58C74()
{
  v1 = *(v0 + 48);
  v2 = OBJC_IVAR____TtC15FindMyBluetooth11MockService_characteristics;
  *(v0 + 56) = OBJC_IVAR____TtC15FindMyBluetooth11MockService_characteristics;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (*(v3 + 16))
  {
    v4 = *(v0 + 40);

    v5 = sub_24AC2A3B8(v4);
    if (v6)
    {
      v7 = *(*(v3 + 56) + 8 * v5);

      if (v7)
      {
        v8 = *(v0 + 8);

        return v8(v7);
      }
    }

    else
    {
    }
  }

  v10 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DDE0, &qword_24ACD37C8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DDE8, &unk_24ACD37D0);
  *(v0 + 64) = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 72);
  v14 = *(v12 + 80);
  *(v0 + 96) = v14;
  v15 = (v14 + 32) & ~v14;
  v16 = swift_allocObject();
  *(v0 + 72) = v16;
  *(v16 + 16) = xmmword_24ACD39E0;
  (*(v12 + 16))(v16 + v15, v10, v11);
  v17 = swift_task_alloc();
  *(v0 + 80) = v17;
  *v17 = v0;
  v17[1] = sub_24AC58E94;
  v18 = *(v0 + 48);

  return sub_24AC574B4(v16);
}

uint64_t sub_24AC58E94()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v12 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = *(v2 + 48);
    v5 = sub_24AC59164;
  }

  else
  {
    v6 = *(v2 + 96);
    v8 = *(v2 + 64);
    v7 = *(v2 + 72);
    v9 = *(v2 + 48);

    swift_setDeallocating();
    v10 = *(v7 + 16);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v5 = sub_24AC59008;
    v4 = v9;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_24AC59008()
{
  v1 = *(v0[6] + v0[7]);
  if (*(v1 + 16))
  {
    v2 = v0[5];
    v3 = *(v0[6] + v0[7]);

    v4 = sub_24AC2A3B8(v2);
    if (v5)
    {
      v6 = *(*(v1 + 56) + 8 * v4);

      if (v6)
      {
        v7 = v0[1];

        return v7(v6);
      }
    }

    else
    {
    }
  }

  type metadata accessor for CentralManager.Error();
  sub_24AC66384(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  v9 = v0[1];

  return v9();
}

uint64_t sub_24AC59164()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = (*(v0 + 96) + 32) & ~*(v0 + 96);
  swift_setDeallocating();
  v4 = *(v2 + 16);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v5 = *(v0 + 88);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_24AC59200(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15FindMyBluetooth11MockService_mockCharacteristics);
  *(v1 + OBJC_IVAR____TtC15FindMyBluetooth11MockService_mockCharacteristics) = a1;
}

uint64_t MockService.deinit()
{
  v1 = OBJC_IVAR____TtC15FindMyBluetooth11MockService_id;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E090, &qword_24ACD37C0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_weakDestroy();
  v3 = *(v0 + OBJC_IVAR____TtC15FindMyBluetooth11MockService_mockCharacteristics);

  v4 = *(v0 + OBJC_IVAR____TtC15FindMyBluetooth11MockService_characteristics);

  sub_24AC56E90(*(v0 + OBJC_IVAR____TtC15FindMyBluetooth11MockService_mockBehavior), *(v0 + OBJC_IVAR____TtC15FindMyBluetooth11MockService_mockBehavior + 8), *(v0 + OBJC_IVAR____TtC15FindMyBluetooth11MockService_mockBehavior + 16));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t MockService.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15FindMyBluetooth11MockService_id;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E090, &qword_24ACD37C0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_weakDestroy();
  v3 = *(v0 + OBJC_IVAR____TtC15FindMyBluetooth11MockService_mockCharacteristics);

  v4 = *(v0 + OBJC_IVAR____TtC15FindMyBluetooth11MockService_characteristics);

  sub_24AC56E90(*(v0 + OBJC_IVAR____TtC15FindMyBluetooth11MockService_mockBehavior), *(v0 + OBJC_IVAR____TtC15FindMyBluetooth11MockService_mockBehavior + 8), *(v0 + OBJC_IVAR____TtC15FindMyBluetooth11MockService_mockBehavior + 16));
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_24AC593D8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15FindMyBluetooth11MockService_id;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E090, &qword_24ACD37C0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_24AC5946C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AC1E290;

  return sub_24AC574B4(a1);
}

uint64_t sub_24AC59500(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AC214BC;

  return sub_24AC58C54(a1);
}

uint64_t sub_24AC59594()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24AC283BC;

  return sub_24AC56860();
}

uint64_t sub_24AC59658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_24ACD0AE0();
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

  return MEMORY[0x2822009F8](sub_24AC59758, 0, 0);
}

uint64_t sub_24AC59758()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = sub_24ACD0AF0();
  v7 = sub_24AC66384(&qword_27EF9E358, MEMORY[0x277D85928]);
  sub_24ACD0C90();
  sub_24AC66384(&qword_27EF9E360, MEMORY[0x277D858F8]);
  sub_24ACD0B00();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = *(MEMORY[0x277D85A58] + 4);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_24AC598E8;
  v11 = v0[11];
  v12 = v0[7];

  return MEMORY[0x2822008C8](v11, v0 + 2, v6, v7);
}

uint64_t sub_24AC598E8()
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

    return MEMORY[0x2822009F8](sub_24AC59AA4, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_24AC59AA4()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t sub_24AC59B10(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DDE8, &unk_24ACD37D0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v27 - v9;
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_24AC2B6A8(&qword_27EF9DF98, &qword_27EF9DDE8, &unk_24ACD37D0);
  v34 = a2;
  v13 = sub_24ACD0520();
  v32 = v11 + 56;
  v33 = v11;
  v14 = -1 << *(v11 + 32);
  v15 = v13 & ~v14;
  if ((*(v11 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v29 = v2;
    v30 = a1;
    v31 = ~v14;
    v28 = v7;
    v17 = v7 + 16;
    v16 = *(v7 + 16);
    v18 = (v7 + 8);
    v19 = *(v17 + 56);
    v27[1] = v17 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v16;
      v16(v10, *(v33 + 48) + v19 * v15, v6);
      sub_24AC2B6A8(&qword_27EF9DFE8, &qword_27EF9DDE8, &unk_24ACD37D0);
      v21 = sub_24ACD0550();
      v22 = *v18;
      (*v18)(v10, v6);
      if (v21)
      {
        break;
      }

      v15 = (v15 + 1) & v31;
      v16 = v20;
      if (((*(v32 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        v3 = v29;
        a1 = v30;
        v7 = v28;
        goto LABEL_7;
      }
    }

    v22(v34, v6);
    v20(v30, *(v33 + 48) + v19 * v15, v6);
    return 0;
  }

  else
  {
    v16 = *(v7 + 16);
LABEL_7:
    v23 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v34;
    v16(v10, v34, v6);
    v35 = *v3;
    sub_24AC64194(v10, v15, isUniquelyReferenced_nonNull_native);
    *v3 = v35;
    (*(v7 + 32))(a1, v25, v6);
    return 1;
  }
}

uint64_t sub_24AC59DF4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E090, &qword_24ACD37C0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v27 - v9;
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_24AC2B6A8(&qword_27EF9DFD8, &unk_27EF9E090, &qword_24ACD37C0);
  v34 = a2;
  v13 = sub_24ACD0520();
  v32 = v11 + 56;
  v33 = v11;
  v14 = -1 << *(v11 + 32);
  v15 = v13 & ~v14;
  if ((*(v11 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v29 = v2;
    v30 = a1;
    v31 = ~v14;
    v28 = v7;
    v17 = v7 + 16;
    v16 = *(v7 + 16);
    v18 = (v7 + 8);
    v19 = *(v17 + 56);
    v27[1] = v17 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v16;
      v16(v10, *(v33 + 48) + v19 * v15, v6);
      sub_24AC2B6A8(&qword_27EF9E140, &unk_27EF9E090, &qword_24ACD37C0);
      v21 = sub_24ACD0550();
      v22 = *v18;
      (*v18)(v10, v6);
      if (v21)
      {
        break;
      }

      v15 = (v15 + 1) & v31;
      v16 = v20;
      if (((*(v32 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        v3 = v29;
        a1 = v30;
        v7 = v28;
        goto LABEL_7;
      }
    }

    v22(v34, v6);
    v20(v30, *(v33 + 48) + v19 * v15, v6);
    return 0;
  }

  else
  {
    v16 = *(v7 + 16);
LABEL_7:
    v23 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v34;
    v16(v10, v34, v6);
    v35 = *v3;
    sub_24AC64458(v10, v15, isUniquelyReferenced_nonNull_native);
    *v3 = v35;
    (*(v7 + 32))(a1, v25, v6);
    return 1;
  }
}

uint64_t sub_24AC5A0D8(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_24ACD0D10();
  v7 = qword_24ACD4C88[a2];
  MEMORY[0x24C22D480](v7);
  v8 = sub_24ACD0D50();
  v9 = -1 << *(v5 + 32);
  v10 = v8 & ~v9;
  if ((*(v5 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (qword_24ACD4C88[*(*(v5 + 48) + v10)] != v7)
    {
      v10 = (v10 + 1) & v11;
      if (((*(v5 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    LOBYTE(a2) = *(*(v5 + 48) + v10);
  }

  else
  {
LABEL_5:
    v12 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_24AC6471C(a2, v10, isUniquelyReferenced_nonNull_native);
    *v2 = v15;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_24AC5A1F0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_24ACD0D10();
  sub_24ACD05E0();
  v9 = sub_24ACD0D50();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_24ACD0C40() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_24AC64884(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_24AC5A340(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_24ACD0420();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_24AC66384(&qword_2814AE200, MEMORY[0x277CC95F0]);
  v36 = a2;
  v13 = sub_24ACD0520();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_24AC66384(&unk_2814AE1F0, MEMORY[0x277CC95F0]);
      v23 = sub_24ACD0550();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_24AC64A04(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_24AC5A620(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E110, &unk_24ACD4540);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DDE8, &unk_24ACD37D0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  result = MEMORY[0x28223BE20](v7);
  v12 = v20 - v11;
  if (*(*v1 + 16))
  {
    v13 = 1 << *(a1 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(a1 + 56);
    v16 = (v13 + 63) >> 6;
    v20[0] = v8 + 8;
    v20[1] = v8 + 16;

    for (i = 0; v15; result = sub_24AC212F4(v6, &unk_27EF9E110, &unk_24ACD4540))
    {
      v18 = i;
LABEL_10:
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      (*(v8 + 16))(v12, *(a1 + 48) + *(v8 + 72) * (v19 | (v18 << 6)), v7);
      sub_24AC5F750(v12, v6);
      (*(v8 + 8))(v12, v7);
    }

    while (1)
    {
      v18 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v18 >= v16)
      {
      }

      v15 = *(a1 + 56 + 8 * v18);
      ++i;
      if (v15)
      {
        i = v18;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24AC5A844(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DFE0, &qword_24ACD4098);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E090, &qword_24ACD37C0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  result = MEMORY[0x28223BE20](v7);
  v12 = v20 - v11;
  if (*(*v1 + 16))
  {
    v13 = 1 << *(a1 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(a1 + 56);
    v16 = (v13 + 63) >> 6;
    v20[0] = v8 + 8;
    v20[1] = v8 + 16;

    for (i = 0; v15; result = sub_24AC212F4(v6, &qword_27EF9DFE0, &qword_24ACD4098))
    {
      v18 = i;
LABEL_10:
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      (*(v8 + 16))(v12, *(a1 + 48) + *(v8 + 72) * (v19 | (v18 << 6)), v7);
      sub_24AC5FA30(v12, v6);
      (*(v8 + 8))(v12, v7);
    }

    while (1)
    {
      v18 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v18 >= v16)
      {
      }

      v15 = *(a1 + 56 + 8 * v18);
      ++i;
      if (v15)
      {
        i = v18;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24AC5AA68(unint64_t a1, uint64_t a2)
{
  v98 = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E110, &unk_24ACD4540);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v72 = (&v70 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DDE8, &unk_24ACD37D0);
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = MEMORY[0x28223BE20](v10);
  v90 = (&v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x28223BE20](v13);
  v17 = (&v70 - v16);
  MEMORY[0x28223BE20](v15);
  v85 = (&v70 - v18);
  if (!*(a2 + 16))
  {

    a2 = MEMORY[0x277D84FA0];
    goto LABEL_54;
  }

  v74 = v8;
  v20 = a1 + 56;
  v19 = *(a1 + 56);
  v21 = -1 << *(a1 + 32);
  v71 = ~v21;
  if (-v21 < 64)
  {
    v22 = ~(-1 << -v21);
  }

  else
  {
    v22 = -1;
  }

  v23 = v22 & v19;
  v77 = (63 - v21) >> 6;
  v91 = v11 + 2;
  v83 = (v11 + 6);
  v84 = (v11 + 7);
  v80 = (v11 + 4);
  v81 = a1;
  v87 = (a2 + 56);
  v93 = (v11 + 1);

  v25 = 0;
  v73 = v11;
  for (i = a1 + 56; ; v20 = i)
  {
    v26 = v23;
    v27 = v25;
    if (v23)
    {
LABEL_14:
      a1 = (v26 - 1) & v26;
      v31 = v81[6] + v11[9] * (__clz(__rbit64(v26)) | (v27 << 6));
      v32 = v11[2];
      v33 = v72;
      v32(v72, v31, v10);
      v34 = 0;
      v29 = v27;
    }

    else
    {
      v28 = v77 <= (v25 + 1) ? v25 + 1 : v77;
      v29 = v28 - 1;
      v30 = v25;
      while (1)
      {
        v27 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          goto LABEL_57;
        }

        if (v27 >= v77)
        {
          break;
        }

        v26 = *(v20 + 8 * v27);
        ++v30;
        if (v26)
        {
          goto LABEL_14;
        }
      }

      a1 = 0;
      v34 = 1;
      v33 = v72;
    }

    v79 = *v84;
    v79(v33, v34, 1, v10);
    v78 = *v83;
    if (v78(v33, 1, v10) == 1)
    {
      sub_24AC212F4(v33, &unk_27EF9E110, &unk_24ACD4540);
      goto LABEL_52;
    }

    v76 = *v80;
    v76(v85, v33, v10);
    v35 = *(a2 + 40);
    v75 = sub_24AC2B6A8(&qword_27EF9DF98, &qword_27EF9DDE8, &unk_24ACD37D0);
    v36 = sub_24ACD0520();
    v37 = -1 << *(a2 + 32);
    v25 = v36 & ~v37;
    v27 = v25 >> 6;
    v20 = 1 << v25;
    if (((1 << v25) & v87[v25 >> 6]) != 0)
    {
      break;
    }

    v11 = v73;
    (*v93)(v85, v10);
LABEL_22:
    v25 = v29;
    v23 = a1;
  }

  v70 = v93 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v86 = ~v37;
  v38 = v73[9];
  v88 = v73[2];
  v89 = v38;
  while (1)
  {
    v88(v17, *(a2 + 48) + v89 * v25, v10);
    v39 = sub_24AC2B6A8(&qword_27EF9DFE8, &qword_27EF9DDE8, &unk_24ACD37D0);
    v40 = sub_24ACD0550();
    v92 = *v93;
    v92(v17, v10);
    if (v40)
    {
      break;
    }

    v25 = (v25 + 1) & v86;
    v27 = v25 >> 6;
    v20 = 1 << v25;
    if (((1 << v25) & v87[v25 >> 6]) == 0)
    {
      v11 = v73;
      v92(v85, v10);
      goto LABEL_22;
    }
  }

  v86 = v39;
  v95 = v71;
  v96 = v29;
  v97 = a1;
  v11 = v81;
  v94[0] = v81;
  v94[1] = i;
  v41 = (v92)(v85, v10);
  v42 = *(a2 + 32);
  v70 = ((1 << v42) + 63) >> 6;
  v24 = 8 * v70;
  if ((v42 & 0x3Fu) > 0xD)
  {
    goto LABEL_58;
  }

  while (2)
  {
    v72 = &v70;
    MEMORY[0x28223BE20](v41);
    v44 = &v70 - ((v43 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v44, v87, v43);
    v45 = *&v44[8 * v27] & ~v20;
    v46 = *(a2 + 16);
    v85 = v44;
    *&v44[8 * v27] = v45;
    v47 = v46 - 1;
    v27 = i;
    v48 = v74;
    v49 = v77;
LABEL_26:
    v73 = v47;
    while (a1)
    {
      v50 = v29;
LABEL_38:
      v53 = __clz(__rbit64(a1));
      a1 &= a1 - 1;
      v88(v48, v11[6] + (v53 | (v50 << 6)) * v89, v10);
      v54 = 0;
LABEL_39:
      v79(v48, v54, 1, v10);
      if (v78(v48, 1, v10) == 1)
      {
        sub_24AC212F4(v48, &unk_27EF9E110, &unk_24ACD4540);
        a2 = sub_24AC61598(v85, v70, v73, a2);
        goto LABEL_52;
      }

      v76(v90, v48, v10);
      v55 = *(a2 + 40);
      v56 = sub_24ACD0520();
      v57 = a2;
      v58 = -1 << *(a2 + 32);
      v25 = v56 & ~v58;
      v59 = v25 >> 6;
      v20 = 1 << v25;
      if (((1 << v25) & v87[v25 >> 6]) != 0)
      {
        v88(v17, *(v57 + 48) + v25 * v89, v10);
        v60 = sub_24ACD0550();
        v92(v17, v10);
        if ((v60 & 1) == 0)
        {
          v61 = ~v58;
          do
          {
            v25 = (v25 + 1) & v61;
            v59 = v25 >> 6;
            v20 = 1 << v25;
            if (((1 << v25) & v87[v25 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v88(v17, *(v57 + 48) + v25 * v89, v10);
            v62 = sub_24ACD0550();
            v92(v17, v10);
          }

          while ((v62 & 1) == 0);
        }

        v92(v90, v10);
        v63 = v85[v59];
        v85[v59] = v63 & ~v20;
        a2 = v57;
        v11 = v81;
        v27 = i;
        v48 = v74;
        v49 = v77;
        if ((v63 & v20) != 0)
        {
          v47 = v73 - 1;
          if (__OFSUB__(v73, 1))
          {
            __break(1u);
          }

          if (v73 == 1)
          {

            a2 = MEMORY[0x277D84FA0];
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v92(v90, v10);
        a2 = v57;
        v11 = v81;
        v27 = i;
        v48 = v74;
        v49 = v77;
      }
    }

    if (v49 <= (v29 + 1))
    {
      v51 = v29 + 1;
    }

    else
    {
      v51 = v49;
    }

    v52 = v51 - 1;
    while (1)
    {
      v50 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v50 >= v49)
      {
        a1 = 0;
        v54 = 1;
        v29 = v52;
        goto LABEL_39;
      }

      a1 = *(v27 + 8 * v50);
      ++v29;
      if (a1)
      {
        v29 = v50;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v66 = v24;

    v85 = a2;
    v67 = v66;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v68 = v85;

      a2 = v68;
      continue;
    }

    break;
  }

  v69 = swift_slowAlloc();
  memcpy(v69, v87, v67);
  a2 = sub_24AC60BE8(v69, v70, v85, v25, v94);

  MEMORY[0x24C22DC60](v69, -1, -1);
  v71 = v95;
LABEL_52:
  sub_24AC4784C();
LABEL_54:
  v64 = *MEMORY[0x277D85DE8];
  return a2;
}

uint64_t sub_24AC5B4D0(unint64_t a1, uint64_t a2)
{
  v98 = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DFE0, &qword_24ACD4098);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v72 = (&v70 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E090, &qword_24ACD37C0);
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = MEMORY[0x28223BE20](v10);
  v90 = (&v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x28223BE20](v13);
  v17 = (&v70 - v16);
  MEMORY[0x28223BE20](v15);
  v85 = (&v70 - v18);
  if (!*(a2 + 16))
  {

    a2 = MEMORY[0x277D84FA0];
    goto LABEL_54;
  }

  v74 = v8;
  v20 = a1 + 56;
  v19 = *(a1 + 56);
  v21 = -1 << *(a1 + 32);
  v71 = ~v21;
  if (-v21 < 64)
  {
    v22 = ~(-1 << -v21);
  }

  else
  {
    v22 = -1;
  }

  v23 = v22 & v19;
  v77 = (63 - v21) >> 6;
  v91 = v11 + 2;
  v83 = (v11 + 6);
  v84 = (v11 + 7);
  v80 = (v11 + 4);
  v81 = a1;
  v87 = (a2 + 56);
  v93 = (v11 + 1);

  v25 = 0;
  v73 = v11;
  for (i = a1 + 56; ; v20 = i)
  {
    v26 = v23;
    v27 = v25;
    if (v23)
    {
LABEL_14:
      a1 = (v26 - 1) & v26;
      v31 = v81[6] + v11[9] * (__clz(__rbit64(v26)) | (v27 << 6));
      v32 = v11[2];
      v33 = v72;
      v32(v72, v31, v10);
      v34 = 0;
      v29 = v27;
    }

    else
    {
      v28 = v77 <= (v25 + 1) ? v25 + 1 : v77;
      v29 = v28 - 1;
      v30 = v25;
      while (1)
      {
        v27 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          goto LABEL_57;
        }

        if (v27 >= v77)
        {
          break;
        }

        v26 = *(v20 + 8 * v27);
        ++v30;
        if (v26)
        {
          goto LABEL_14;
        }
      }

      a1 = 0;
      v34 = 1;
      v33 = v72;
    }

    v79 = *v84;
    v79(v33, v34, 1, v10);
    v78 = *v83;
    if (v78(v33, 1, v10) == 1)
    {
      sub_24AC212F4(v33, &qword_27EF9DFE0, &qword_24ACD4098);
      goto LABEL_52;
    }

    v76 = *v80;
    v76(v85, v33, v10);
    v35 = *(a2 + 40);
    v75 = sub_24AC2B6A8(&qword_27EF9DFD8, &unk_27EF9E090, &qword_24ACD37C0);
    v36 = sub_24ACD0520();
    v37 = -1 << *(a2 + 32);
    v25 = v36 & ~v37;
    v27 = v25 >> 6;
    v20 = 1 << v25;
    if (((1 << v25) & v87[v25 >> 6]) != 0)
    {
      break;
    }

    v11 = v73;
    (*v93)(v85, v10);
LABEL_22:
    v25 = v29;
    v23 = a1;
  }

  v70 = v93 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v86 = ~v37;
  v38 = v73[9];
  v88 = v73[2];
  v89 = v38;
  while (1)
  {
    v88(v17, *(a2 + 48) + v89 * v25, v10);
    v39 = sub_24AC2B6A8(&qword_27EF9E140, &unk_27EF9E090, &qword_24ACD37C0);
    v40 = sub_24ACD0550();
    v92 = *v93;
    v92(v17, v10);
    if (v40)
    {
      break;
    }

    v25 = (v25 + 1) & v86;
    v27 = v25 >> 6;
    v20 = 1 << v25;
    if (((1 << v25) & v87[v25 >> 6]) == 0)
    {
      v11 = v73;
      v92(v85, v10);
      goto LABEL_22;
    }
  }

  v86 = v39;
  v95 = v71;
  v96 = v29;
  v97 = a1;
  v11 = v81;
  v94[0] = v81;
  v94[1] = i;
  v41 = (v92)(v85, v10);
  v42 = *(a2 + 32);
  v70 = ((1 << v42) + 63) >> 6;
  v24 = 8 * v70;
  if ((v42 & 0x3Fu) > 0xD)
  {
    goto LABEL_58;
  }

  while (2)
  {
    v72 = &v70;
    MEMORY[0x28223BE20](v41);
    v44 = &v70 - ((v43 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v44, v87, v43);
    v45 = *&v44[8 * v27] & ~v20;
    v46 = *(a2 + 16);
    v85 = v44;
    *&v44[8 * v27] = v45;
    v47 = v46 - 1;
    v27 = i;
    v48 = v74;
    v49 = v77;
LABEL_26:
    v73 = v47;
    while (a1)
    {
      v50 = v29;
LABEL_38:
      v53 = __clz(__rbit64(a1));
      a1 &= a1 - 1;
      v88(v48, v11[6] + (v53 | (v50 << 6)) * v89, v10);
      v54 = 0;
LABEL_39:
      v79(v48, v54, 1, v10);
      if (v78(v48, 1, v10) == 1)
      {
        sub_24AC212F4(v48, &qword_27EF9DFE0, &qword_24ACD4098);
        a2 = sub_24AC618C4(v85, v70, v73, a2);
        goto LABEL_52;
      }

      v76(v90, v48, v10);
      v55 = *(a2 + 40);
      v56 = sub_24ACD0520();
      v57 = a2;
      v58 = -1 << *(a2 + 32);
      v25 = v56 & ~v58;
      v59 = v25 >> 6;
      v20 = 1 << v25;
      if (((1 << v25) & v87[v25 >> 6]) != 0)
      {
        v88(v17, *(v57 + 48) + v25 * v89, v10);
        v60 = sub_24ACD0550();
        v92(v17, v10);
        if ((v60 & 1) == 0)
        {
          v61 = ~v58;
          do
          {
            v25 = (v25 + 1) & v61;
            v59 = v25 >> 6;
            v20 = 1 << v25;
            if (((1 << v25) & v87[v25 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v88(v17, *(v57 + 48) + v25 * v89, v10);
            v62 = sub_24ACD0550();
            v92(v17, v10);
          }

          while ((v62 & 1) == 0);
        }

        v92(v90, v10);
        v63 = v85[v59];
        v85[v59] = v63 & ~v20;
        a2 = v57;
        v11 = v81;
        v27 = i;
        v48 = v74;
        v49 = v77;
        if ((v63 & v20) != 0)
        {
          v47 = v73 - 1;
          if (__OFSUB__(v73, 1))
          {
            __break(1u);
          }

          if (v73 == 1)
          {

            a2 = MEMORY[0x277D84FA0];
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v92(v90, v10);
        a2 = v57;
        v11 = v81;
        v27 = i;
        v48 = v74;
        v49 = v77;
      }
    }

    if (v49 <= (v29 + 1))
    {
      v51 = v29 + 1;
    }

    else
    {
      v51 = v49;
    }

    v52 = v51 - 1;
    while (1)
    {
      v50 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v50 >= v49)
      {
        a1 = 0;
        v54 = 1;
        v29 = v52;
        goto LABEL_39;
      }

      a1 = *(v27 + 8 * v50);
      ++v29;
      if (a1)
      {
        v29 = v50;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v66 = v24;

    v85 = a2;
    v67 = v66;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v68 = v85;

      a2 = v68;
      continue;
    }

    break;
  }

  v69 = swift_slowAlloc();
  memcpy(v69, v87, v67);
  a2 = sub_24AC610C0(v69, v70, v85, v25, v94);

  MEMORY[0x24C22DC60](v69, -1, -1);
  v71 = v95;
LABEL_52:
  sub_24AC4784C();
LABEL_54:
  v64 = *MEMORY[0x277D85DE8];
  return a2;
}

uint64_t sub_24AC5BF4C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_24ACD0420();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E370, &qword_24ACD4C78);
  v43 = a2;
  result = sub_24ACD0B50();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_24AC66384(&qword_2814AE200, MEMORY[0x277CC95F0]);
      result = sub_24ACD0520();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_24AC5C328(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E710, &unk_24ACD4680);
  v36 = a2;
  result = sub_24ACD0B50();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_24AC1BFB8(v25, v37);
      }

      else
      {
        sub_24AC2B940(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_24ACD0D10();
      sub_24ACD05E0();
      result = sub_24ACD0D50();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_24AC1BFB8(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_24AC5C5F4(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DDE8, &unk_24ACD37D0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v42 - v13;
  v15 = *v7;
  if (*(*v7 + 24) > a1)
  {
    v16 = *(*v7 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v47 = a2;
  result = sub_24ACD0B50();
  v18 = result;
  if (*(v15 + 16))
  {
    v51 = v14;
    v43 = v7;
    v19 = 0;
    v20 = (v15 + 64);
    v21 = 1 << *(v15 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v15 + 64);
    v24 = (v21 + 63) >> 6;
    v44 = (v11 + 16);
    v45 = v15;
    v46 = v11;
    v48 = (v11 + 32);
    v25 = result + 64;
    while (v23)
    {
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_17:
      v30 = v27 | (v19 << 6);
      v31 = *(v15 + 48);
      v50 = *(v46 + 72);
      v32 = v31 + v50 * v30;
      if (v47)
      {
        (*v48)(v51, v32, v10);
        v49 = *(*(v15 + 56) + 8 * v30);
      }

      else
      {
        (*v44)(v51, v32, v10);
        v49 = *(*(v15 + 56) + 8 * v30);
      }

      v33 = *(v18 + 40);
      sub_24AC2B6A8(&qword_27EF9DF98, &qword_27EF9DDE8, &unk_24ACD37D0);
      result = sub_24ACD0520();
      v34 = -1 << *(v18 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v25 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v25 + 8 * v36);
          if (v40 != -1)
          {
            v26 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v35) & ~*(v25 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      result = (*v48)(*(v18 + 48) + v50 * v26, v51, v10);
      *(*(v18 + 56) + 8 * v26) = v49;
      ++*(v18 + 16);
      v15 = v45;
    }

    v28 = v19;
    while (1)
    {
      v19 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v19 >= v24)
      {
        break;
      }

      v29 = v20[v19];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v23 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v47 & 1) == 0)
    {

      v7 = v43;
      goto LABEL_36;
    }

    v41 = 1 << *(v15 + 32);
    v7 = v43;
    if (v41 >= 64)
    {
      bzero(v20, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v41;
    }

    *(v15 + 16) = 0;
  }

LABEL_36:
  *v7 = v18;
  return result;
}

uint64_t sub_24AC5C9D4(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v42 - v13;
  v15 = *v7;
  if (*(*v7 + 24) > a1)
  {
    v16 = *(*v7 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v47 = a2;
  result = sub_24ACD0B50();
  v18 = result;
  if (*(v15 + 16))
  {
    v51 = v14;
    v43 = v7;
    v19 = 0;
    v20 = (v15 + 64);
    v21 = 1 << *(v15 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v15 + 64);
    v24 = (v21 + 63) >> 6;
    v44 = (v11 + 16);
    v45 = v15;
    v46 = v11;
    v48 = (v11 + 32);
    v25 = result + 64;
    while (v23)
    {
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_17:
      v30 = v27 | (v19 << 6);
      v31 = *(v15 + 48);
      v50 = *(v46 + 72);
      v32 = v31 + v50 * v30;
      if (v47)
      {
        (*v48)(v51, v32, v10);
        v49 = *(*(v15 + 56) + 8 * v30);
      }

      else
      {
        (*v44)(v51, v32, v10);
        v49 = *(*(v15 + 56) + 8 * v30);
      }

      v33 = *(v18 + 40);
      sub_24AC2B6A8(&qword_27EF9DFC0, &qword_27EF9E040, qword_24ACD4100);
      result = sub_24ACD0520();
      v34 = -1 << *(v18 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v25 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v25 + 8 * v36);
          if (v40 != -1)
          {
            v26 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v35) & ~*(v25 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      result = (*v48)(*(v18 + 48) + v50 * v26, v51, v10);
      *(*(v18 + 56) + 8 * v26) = v49;
      ++*(v18 + 16);
      v15 = v45;
    }

    v28 = v19;
    while (1)
    {
      v19 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v19 >= v24)
      {
        break;
      }

      v29 = v20[v19];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v23 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v47 & 1) == 0)
    {

      v7 = v43;
      goto LABEL_36;
    }

    v41 = 1 << *(v15 + 32);
    v7 = v43;
    if (v41 >= 64)
    {
      bzero(v20, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v41;
    }

    *(v15 + 16) = 0;
  }

LABEL_36:
  *v7 = v18;
  return result;
}

uint64_t sub_24AC5CDC8(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E090, &qword_24ACD37C0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v42 - v13;
  v15 = *v7;
  if (*(*v7 + 24) > a1)
  {
    v16 = *(*v7 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v47 = a2;
  result = sub_24ACD0B50();
  v18 = result;
  if (*(v15 + 16))
  {
    v51 = v14;
    v43 = v7;
    v19 = 0;
    v20 = (v15 + 64);
    v21 = 1 << *(v15 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v15 + 64);
    v24 = (v21 + 63) >> 6;
    v44 = (v11 + 16);
    v45 = v15;
    v46 = v11;
    v48 = (v11 + 32);
    v25 = result + 64;
    while (v23)
    {
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_17:
      v30 = v27 | (v19 << 6);
      v31 = *(v15 + 48);
      v50 = *(v46 + 72);
      v32 = v31 + v50 * v30;
      if (v47)
      {
        (*v48)(v51, v32, v10);
        v49 = *(*(v15 + 56) + 8 * v30);
      }

      else
      {
        (*v44)(v51, v32, v10);
        v49 = *(*(v15 + 56) + 8 * v30);
      }

      v33 = *(v18 + 40);
      sub_24AC2B6A8(&qword_27EF9DFD8, &unk_27EF9E090, &qword_24ACD37C0);
      result = sub_24ACD0520();
      v34 = -1 << *(v18 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v25 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v25 + 8 * v36);
          if (v40 != -1)
          {
            v26 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v35) & ~*(v25 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      result = (*v48)(*(v18 + 48) + v50 * v26, v51, v10);
      *(*(v18 + 56) + 8 * v26) = v49;
      ++*(v18 + 16);
      v15 = v45;
    }

    v28 = v19;
    while (1)
    {
      v19 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v19 >= v24)
      {
        break;
      }

      v29 = v20[v19];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v23 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v47 & 1) == 0)
    {

      v7 = v43;
      goto LABEL_36;
    }

    v41 = 1 << *(v15 + 32);
    v7 = v43;
    if (v41 >= 64)
    {
      bzero(v20, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v41;
    }

    *(v15 + 16) = 0;
  }

LABEL_36:
  *v7 = v18;
  return result;
}

uint64_t sub_24AC5D1A8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E300, &qword_24ACD5DC0);
  result = sub_24ACD0B50();
  v8 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + v20);
      v31 = *(*(v5 + 56) + 16 * v20);
      if ((a2 & 1) == 0)
      {
        sub_24AC46630(v31, *(&v31 + 1));
      }

      result = MEMORY[0x24C22D460](*(v8 + 40), v21, 1);
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      *(*(v8 + 56) + 16 * v16) = v31;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v30;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_24AC5D424(uint64_t a1, int a2)
{
  v3 = v2;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E690, &qword_24ACD4C10);
  v6 = *(v57 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v57);
  v56 = &v45 - v8;
  v9 = sub_24ACD0420();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v58 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E2F8, &qword_24ACD4C18);
  v52 = a2;
  result = sub_24ACD0B50();
  v16 = result;
  if (*(v13 + 16))
  {
    v17 = 0;
    v18 = v10;
    v19 = (v13 + 64);
    v20 = 1 << *(v13 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v13 + 64);
    v23 = (v20 + 63) >> 6;
    v48 = (v18 + 16);
    v49 = v18;
    v46 = v3;
    v47 = v6 + 16;
    v50 = v13;
    v51 = v6;
    v53 = (v6 + 32);
    v54 = (v18 + 32);
    v24 = result + 64;
    v25 = v18;
    while (v22)
    {
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_17:
      v30 = v27 | (v17 << 6);
      v31 = *(v13 + 48);
      v55 = *(v25 + 72);
      v32 = v31 + v55 * v30;
      if (v52)
      {
        (*v54)(v58, v32, v9);
        v33 = *(v13 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 32))(v56, v33 + v34 * v30, v57);
      }

      else
      {
        (*v48)(v58, v32, v9);
        v35 = *(v13 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 16))(v56, v35 + v34 * v30, v57);
      }

      v36 = *(v16 + 40);
      sub_24AC66384(&qword_2814AE200, MEMORY[0x277CC95F0]);
      result = sub_24ACD0520();
      v37 = -1 << *(v16 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v24 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v24 + 8 * v39);
          if (v43 != -1)
          {
            v26 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v38) & ~*(v24 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v24 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      (*v54)((*(v16 + 48) + v55 * v26), v58, v9);
      result = (*v53)(*(v16 + 56) + v34 * v26, v56, v57);
      ++*(v16 + 16);
      v25 = v49;
      v13 = v50;
    }

    v28 = v17;
    while (1)
    {
      v17 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v23)
      {
        break;
      }

      v29 = v19[v17];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v22 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v52 & 1) == 0)
    {

      v3 = v46;
      goto LABEL_36;
    }

    v44 = 1 << *(v13 + 32);
    v3 = v46;
    if (v44 >= 64)
    {
      bzero(v19, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v44;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

uint64_t sub_24AC5D8D4(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - v9;
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E320, &qword_24ACD4C38);
  v43 = a2;
  result = sub_24ACD0B50();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_24AC2B6A8(&qword_27EF9DFC0, &qword_27EF9E040, qword_24ACD4100);
      result = sub_24ACD0520();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_24AC5DCB4(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - v9;
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E2D8, &qword_24ACD4BE0);
  v43 = a2;
  result = sub_24ACD0B50();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_24AC2B6A8(&qword_27EF9DFC0, &qword_27EF9E040, qword_24ACD4100);
      result = sub_24ACD0520();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_24AC5E094(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_24ACD0420();
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

uint64_t sub_24AC5E14C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
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

uint64_t sub_24AC5E210(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a4[6];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  *(a4[7] + 8 * a1) = a3;
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

uint64_t sub_24AC5E2CC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_24ACD0420();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E690, &qword_24ACD4C10);
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

char *sub_24AC5E3F0()
{
  v1 = v0;
  v34 = sub_24ACD0420();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E370, &qword_24ACD4C78);
  v4 = *v0;
  v5 = sub_24ACD0B40();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;

        v14 = v37;
      }

      while (v37);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_24AC5E670()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E710, &unk_24ACD4680);
  v2 = *v0;
  v3 = sub_24ACD0B40();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_24AC2B940(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_24AC1BFB8(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

char *sub_24AC5E860(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  v40 = *(v38 - 8);
  v6 = *(v40 + 64);
  MEMORY[0x28223BE20](v38);
  v37 = &v32 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v8 = *v2;
  v9 = sub_24ACD0B40();
  v10 = v9;
  if (*(v8 + 16))
  {
    result = (v9 + 64);
    v12 = (v8 + 64);
    v13 = ((1 << *(v10 + 32)) + 63) >> 6;
    v33 = v5;
    v34 = v8 + 64;
    if (v10 != v8 || result >= &v12[8 * v13])
    {
      result = memmove(result, v12, 8 * v13);
    }

    v14 = 0;
    v15 = *(v8 + 16);
    v39 = v10;
    *(v10 + 16) = v15;
    v16 = 1 << *(v8 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v8 + 64);
    v19 = (v16 + 63) >> 6;
    v35 = v40 + 32;
    v36 = v40 + 16;
    if (v18)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v41 = (v18 - 1) & v18;
LABEL_14:
        v23 = v20 | (v14 << 6);
        v24 = v40;
        v25 = *(v40 + 72) * v23;
        v27 = v37;
        v26 = v38;
        (*(v40 + 16))(v37, *(v8 + 48) + v25, v38);
        v28 = *(*(v8 + 56) + 8 * v23);
        v29 = v8;
        v30 = v39;
        (*(v24 + 32))(*(v39 + 48) + v25, v27, v26);
        v31 = *(v30 + 56);
        v8 = v29;
        *(v31 + 8 * v23) = v28;

        v18 = v41;
      }

      while (v41);
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v5 = v33;
        v10 = v39;
        goto LABEL_18;
      }

      v22 = *(v34 + 8 * v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v41 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v5 = v10;
  }

  return result;
}

void *sub_24AC5EB0C(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v40 = *(v38 - 8);
  v8 = *(v40 + 64);
  MEMORY[0x28223BE20](v38);
  v37 = &v32 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v10 = *v4;
  v11 = sub_24ACD0B40();
  v12 = v11;
  if (*(v10 + 16))
  {
    result = (v11 + 64);
    v14 = ((1 << *(v12 + 32)) + 63) >> 6;
    v33 = v7;
    v34 = (v10 + 64);
    if (v12 != v10 || result >= v10 + 64 + 8 * v14)
    {
      result = memmove(result, v34, 8 * v14);
    }

    v16 = 0;
    v17 = *(v10 + 16);
    v39 = v12;
    *(v12 + 16) = v17;
    v18 = 1 << *(v10 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v10 + 64);
    v21 = (v18 + 63) >> 6;
    v35 = v40 + 32;
    v36 = v40 + 16;
    if (v20)
    {
      do
      {
        v22 = __clz(__rbit64(v20));
        v41 = (v20 - 1) & v20;
LABEL_17:
        v25 = v22 | (v16 << 6);
        v26 = v40;
        v27 = *(v40 + 72) * v25;
        v29 = v37;
        v28 = v38;
        (*(v40 + 16))(v37, *(v10 + 48) + v27, v38);
        v30 = *(*(v10 + 56) + 8 * v25);
        v31 = v39;
        (*(v26 + 32))(*(v39 + 48) + v27, v29, v28);
        *(*(v31 + 56) + 8 * v25) = v30;

        v20 = v41;
      }

      while (v41);
    }

    v23 = v16;
    while (1)
    {
      v16 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v16 >= v21)
      {

        v7 = v33;
        v12 = v39;
        goto LABEL_21;
      }

      v24 = *(v34 + v16);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v41 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v7 = v12;
  }

  return result;
}

void *sub_24AC5ED7C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E300, &qword_24ACD5DC0);
  v2 = *v0;
  v3 = sub_24ACD0B40();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 16 * v17) = v18;
        result = sub_24AC46630(v18, *(&v18 + 1));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *sub_24AC5EEE4()
{
  v1 = v0;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E690, &qword_24ACD4C10);
  v46 = *(v43 - 8);
  v2 = *(v46 + 64);
  MEMORY[0x28223BE20](v43);
  v42 = &v32 - v3;
  v41 = sub_24ACD0420();
  v45 = *(v41 - 8);
  v4 = *(v45 + 64);
  MEMORY[0x28223BE20](v41);
  v40 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E2F8, &qword_24ACD4C18);
  v6 = *v0;
  v7 = sub_24ACD0B40();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v44 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = v45 + 16;
    v38 = v17;
    v35 = v45 + 32;
    v36 = v46 + 16;
    v34 = v46 + 32;
    v39 = v6;
    v19 = v40;
    v18 = v41;
    if (v16)
    {
      do
      {
        v20 = __clz(__rbit64(v16));
        v47 = (v16 - 1) & v16;
LABEL_14:
        v23 = v20 | (v12 << 6);
        v24 = v45;
        v25 = *(v45 + 72) * v23;
        (*(v45 + 16))(v19, *(v6 + 48) + v25, v18);
        v26 = v46;
        v27 = *(v46 + 72) * v23;
        v28 = v42;
        v29 = v43;
        (*(v46 + 16))(v42, *(v6 + 56) + v27, v43);
        v30 = v44;
        (*(v24 + 32))(*(v44 + 48) + v25, v19, v18);
        v31 = *(v30 + 56);
        v6 = v39;
        result = (*(v26 + 32))(v31 + v27, v28, v29);
        v17 = v38;
        v16 = v47;
      }

      while (v47);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v32;
        v8 = v44;
        goto LABEL_18;
      }

      v22 = *(v33 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v47 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

char *sub_24AC5F240()
{
  v1 = v0;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E320, &qword_24ACD4C38);
  v4 = *v0;
  v5 = sub_24ACD0B40();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;

        v14 = v37;
      }

      while (v37);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

char *sub_24AC5F4C8()
{
  v1 = v0;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E2D8, &qword_24ACD4BE0);
  v4 = *v0;
  v5 = sub_24ACD0B40();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;

        v14 = v37;
      }

      while (v37);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_24AC5F750@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DDE8, &unk_24ACD37D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - v8;
  v10 = *v2;
  v11 = *(*v2 + 40);
  sub_24AC2B6A8(&qword_27EF9DF98, &qword_27EF9DDE8, &unk_24ACD37D0);
  v34 = a1;
  v12 = sub_24ACD0520();
  v32 = v10 + 56;
  v33 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v12 & ~v13;
  if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v29 = v2;
    v30 = v6;
    v31 = a2;
    v15 = ~v13;
    v18 = *(v6 + 16);
    v17 = v6 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    while (1)
    {
      v20 = v19 * v14;
      v16(v9, *(v33 + 48) + v19 * v14, v5);
      sub_24AC2B6A8(&qword_27EF9DFE8, &qword_27EF9DDE8, &unk_24ACD37D0);
      v21 = sub_24ACD0550();
      (*(v17 - 8))(v9, v5);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v32 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v22 = 1;
        v6 = v30;
        a2 = v31;
        return (*(v6 + 56))(a2, v22, 1, v5);
      }
    }

    v23 = v29;
    v24 = *v29;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v23;
    v35 = *v23;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_24AC61BF0(&qword_27EF9DDE8, &unk_24ACD37D0, &qword_27EF9E348, &qword_24ACD4C60);
      v26 = v35;
    }

    v6 = v30;
    a2 = v31;
    (*(v30 + 32))(v31, *(v26 + 48) + v20, v5);
    sub_24AC630B0(v14, &qword_27EF9DDE8, &unk_24ACD37D0, &qword_27EF9DF98);
    v22 = 0;
    *v23 = v35;
  }

  else
  {
    v22 = 1;
  }

  return (*(v6 + 56))(a2, v22, 1, v5);
}

uint64_t sub_24AC5FA30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E090, &qword_24ACD37C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - v8;
  v10 = *v2;
  v11 = *(*v2 + 40);
  sub_24AC2B6A8(&qword_27EF9DFD8, &unk_27EF9E090, &qword_24ACD37C0);
  v34 = a1;
  v12 = sub_24ACD0520();
  v32 = v10 + 56;
  v33 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v12 & ~v13;
  if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v29 = v2;
    v30 = v6;
    v31 = a2;
    v15 = ~v13;
    v18 = *(v6 + 16);
    v17 = v6 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    while (1)
    {
      v20 = v19 * v14;
      v16(v9, *(v33 + 48) + v19 * v14, v5);
      sub_24AC2B6A8(&qword_27EF9E140, &unk_27EF9E090, &qword_24ACD37C0);
      v21 = sub_24ACD0550();
      (*(v17 - 8))(v9, v5);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v32 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v22 = 1;
        v6 = v30;
        a2 = v31;
        return (*(v6 + 56))(a2, v22, 1, v5);
      }
    }

    v23 = v29;
    v24 = *v29;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v23;
    v35 = *v23;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_24AC61BF0(&unk_27EF9E090, &qword_24ACD37C0, &qword_27EF9E338, &qword_24ACD4C50);
      v26 = v35;
    }

    v6 = v30;
    a2 = v31;
    (*(v30 + 32))(v31, *(v26 + 48) + v20, v5);
    sub_24AC630B0(v14, &unk_27EF9E090, &qword_24ACD37C0, &qword_27EF9DFD8);
    v22 = 0;
    *v23 = v35;
  }

  else
  {
    v22 = 1;
  }

  return (*(v6 + 56))(a2, v22, 1, v5);
}

uint64_t sub_24AC5FD10(uint64_t a1)
{
  v2 = v1;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DDE8, &unk_24ACD37D0);
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - v6;
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E348, &qword_24ACD4C60);
  result = sub_24ACD09F0();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_24AC2B6A8(&qword_27EF9DF98, &qword_27EF9DDE8, &unk_24ACD37D0);
      result = sub_24ACD0520();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}