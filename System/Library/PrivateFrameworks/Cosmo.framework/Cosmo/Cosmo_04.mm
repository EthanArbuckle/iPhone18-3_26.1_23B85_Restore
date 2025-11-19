uint64_t sub_247DB49E4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = *(a1 + 24);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6[0] = v1;
    v6[1] = v2;
    v6[2] = v3;
    v7 = v4;
    sub_247DB4A68(v6);
  }

  return result;
}

void sub_247DB4A68(uint64_t a1)
{
  v2 = v1;
  v4 = sub_247DD2ABC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  v13 = *(v2 + 16);
  *v8 = v13;
  (*(v5 + 104))(v8, *MEMORY[0x277D85200], v4);
  v14 = v13;
  LOBYTE(v13) = sub_247DD2ADC();
  v16 = *(v5 + 8);
  v15 = v5 + 8;
  v16(v8, v4);
  if ((v13 & 1) == 0)
  {
    __break(1u);
LABEL_22:
    swift_once();
    goto LABEL_10;
  }

  v15 = OBJC_IVAR____TtC5Cosmo14TransferClient_state;
  if (*(v2 + OBJC_IVAR____TtC5Cosmo14TransferClient_state) <= 0xFu)
  {
    if (v12)
    {
      if (qword_27EE73290 != -1)
      {
        swift_once();
      }

      v17 = sub_247DD23CC();
      __swift_project_value_buffer(v17, qword_27EE7B908);
      sub_247DBB5B8(v9, v10, v11, 1);

      v18 = sub_247DD23AC();
      v19 = sub_247DD2F0C();
      sub_247DBB5A8(v9, v10, v11, 1);

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v47 = v9;
        v48 = v21;
        *v20 = 136315394;
        v22 = v9;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73C10, &qword_247DD4330);
        v23 = sub_247DD2CFC();
        v25 = sub_247D72868(v23, v24, &v48);

        *(v20 + 4) = v25;
        *(v20 + 12) = 2080;
        LOBYTE(v47) = *(v2 + v15);
        v26 = TransferClient.State.description.getter();
        v28 = sub_247D72868(v26, v27, &v48);

        *(v20 + 14) = v28;
        _os_log_impl(&dword_247D56000, v18, v19, "[Lease] Failed to receive response, error=%s, state=%s", v20, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C1BAF60](v21, -1, -1);
        MEMORY[0x24C1BAF60](v20, -1, -1);
      }

      LOBYTE(v48) = 2;
      sub_247DAEE90(&v48, 0xD000000000000016, 0x8000000247DDA190);
    }

    else
    {
      if (v11)
      {
        v37 = v10;
        v38 = v11;
      }

      else
      {
        sub_247DBB5A8(v9, v10, 0, 0);
        v38 = 0xE200000000000000;
        v37 = 16718;
      }

      sub_247DBB5B8(v9, v10, v11, 0);
      if (qword_27EE73290 != -1)
      {
        swift_once();
      }

      v39 = sub_247DD23CC();
      __swift_project_value_buffer(v39, qword_27EE7B908);

      v40 = sub_247DD23AC();
      v41 = sub_247DD2F2C();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v48 = v43;
        *v42 = 136315394;
        *(v42 + 4) = sub_247D72868(v37, v38, &v48);
        *(v42 + 12) = 2080;
        LOBYTE(v47) = *(v2 + v15);
        v44 = TransferClient.State.description.getter();
        v46 = sub_247D72868(v44, v45, &v48);

        *(v42 + 14) = v46;
        _os_log_impl(&dword_247D56000, v40, v41, "[Lease] Remote TransferHost ended lease with reason=%s, state=%s", v42, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C1BAF60](v43, -1, -1);
        MEMORY[0x24C1BAF60](v42, -1, -1);
      }

      LOBYTE(v48) = 5;
      sub_247DAEE90(&v48, v37, v38);
    }

    return;
  }

  if (qword_27EE73290 != -1)
  {
    goto LABEL_22;
  }

LABEL_10:
  v29 = sub_247DD23CC();
  __swift_project_value_buffer(v29, qword_27EE7B908);

  v30 = sub_247DD23AC();
  v31 = sub_247DD2F2C();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v48 = v33;
    *v32 = 136315138;
    LOBYTE(v47) = *(v2 + v15);
    v34 = TransferClient.State.description.getter();
    v36 = sub_247D72868(v34, v35, &v48);

    *(v32 + 4) = v36;
    _os_log_impl(&dword_247D56000, v30, v31, "[Lease] Disconnect detected, ignoring, state=%s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v33);
    MEMORY[0x24C1BAF60](v33, -1, -1);
    MEMORY[0x24C1BAF60](v32, -1, -1);
  }
}

uint64_t sub_247DB5074(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 16);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5[0] = v1;
    v5[1] = v2;
    v6 = v3;
    sub_247DB50F0(v5);
  }

  return result;
}

void sub_247DB50F0(uint64_t a1)
{
  v3 = v1;
  v5 = sub_247DD2ABC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (&v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *a1;
  v10 = *(a1 + 8);
  v12 = *(a1 + 16);
  v13 = *(v3 + 16);
  *v9 = v13;
  (*(v6 + 104))(v9, *MEMORY[0x277D85200], v5);
  v14 = v13;
  LOBYTE(v13) = sub_247DD2ADC();
  (*(v6 + 8))(v9, v5);
  if ((v13 & 1) == 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  v2 = OBJC_IVAR____TtC5Cosmo14TransferClient_state;
  v15 = *(v3 + OBJC_IVAR____TtC5Cosmo14TransferClient_state);
  if (v15 > 0xF)
  {
    if (qword_27EE73290 == -1)
    {
LABEL_11:
      v28 = sub_247DD23CC();
      __swift_project_value_buffer(v28, qword_27EE7B908);

      v29 = sub_247DD23AC();
      v30 = sub_247DD2F2C();

      if (!os_log_type_enabled(v29, v30))
      {
LABEL_18:

        return;
      }

      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v60 = v32;
      *v31 = 136315138;
      LOBYTE(v59) = *(v3 + v2);
      v33 = TransferClient.State.description.getter();
      v35 = sub_247D72868(v33, v34, &v60);

      *(v31 + 4) = v35;
      v36 = "[FileList] Disconnect detected, ignoring, state=%s";
LABEL_17:
      _os_log_impl(&dword_247D56000, v29, v30, v36, v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v32);
      MEMORY[0x24C1BAF60](v32, -1, -1);
      MEMORY[0x24C1BAF60](v31, -1, -1);
      goto LABEL_18;
    }

LABEL_30:
    swift_once();
    goto LABEL_11;
  }

  if (v15 != 13)
  {
    if (qword_27EE73290 != -1)
    {
      swift_once();
    }

    v37 = sub_247DD23CC();
    __swift_project_value_buffer(v37, qword_27EE7B908);

    v29 = sub_247DD23AC();
    v30 = sub_247DD2F0C();

    if (!os_log_type_enabled(v29, v30))
    {
      goto LABEL_18;
    }

    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v60 = v32;
    *v31 = 136315138;
    LOBYTE(v59) = *(v3 + v2);
    v38 = TransferClient.State.description.getter();
    v40 = sub_247D72868(v38, v39, &v60);

    *(v31 + 4) = v40;
    v36 = "[FileList] Unexpected state, state=%s";
    goto LABEL_17;
  }

  if (v12)
  {
    if (qword_27EE73290 != -1)
    {
      swift_once();
    }

    v16 = sub_247DD23CC();
    __swift_project_value_buffer(v16, qword_27EE7B908);

    sub_247DBB4A0(v11, v10, 1);
    v17 = sub_247DD23AC();
    v18 = sub_247DD2F0C();
    sub_247DBB490(v11, v10, 1);

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v59 = v11;
      v60 = v20;
      *v19 = 136315394;
      v21 = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73C10, &qword_247DD4330);
      v22 = sub_247DD2CFC();
      v24 = sub_247D72868(v22, v23, &v60);

      *(v19 + 4) = v24;
      *(v19 + 12) = 2080;
      LOBYTE(v59) = *(v3 + v2);
      v25 = TransferClient.State.description.getter();
      v27 = sub_247D72868(v25, v26, &v60);

      *(v19 + 14) = v27;
      _os_log_impl(&dword_247D56000, v17, v18, "[FileList] Failed to receive file-list-request-response, error=%s state=%s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1BAF60](v20, -1, -1);
      MEMORY[0x24C1BAF60](v19, -1, -1);
    }

    LOBYTE(v60) = 2;
    sub_247DAEE90(&v60, 0xD000000000000024, 0x8000000247DDA160);
    return;
  }

  LOBYTE(v60) = 14;
  sub_247DAC1A4(&v60);
  v41 = *(v10 + 16);
  if (!v41)
  {
    if (qword_27EE73290 != -1)
    {
      swift_once();
    }

    v54 = sub_247DD23CC();
    __swift_project_value_buffer(v54, qword_27EE7B908);

    v29 = sub_247DD23AC();
    v30 = sub_247DD2F0C();

    if (!os_log_type_enabled(v29, v30))
    {
      goto LABEL_18;
    }

    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v60 = v32;
    *v31 = 136315138;
    LOBYTE(v59) = *(v3 + v2);
    v55 = TransferClient.State.description.getter();
    v57 = sub_247D72868(v55, v56, &v60);

    *(v31 + 4) = v57;
    v36 = "[FileList] Received empty-list, state=%s";
    goto LABEL_17;
  }

  if (qword_27EE73290 != -1)
  {
    swift_once();
  }

  v42 = sub_247DD23CC();
  __swift_project_value_buffer(v42, qword_27EE7B908);

  sub_247DBB4A0(v11, v10, 0);
  v43 = sub_247DD23AC();
  v44 = sub_247DD2F2C();
  sub_247DBB490(v11, v10, 0);

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v60 = v46;
    *v45 = 134218498;
    *(v45 + 4) = v41;
    *(v45 + 12) = 2080;
    sub_247DD225C();
    sub_247DBAE20(&qword_27EE738D0, MEMORY[0x277CC95F0]);
    v47 = sub_247DD2C4C();
    v49 = sub_247D72868(v47, v48, &v60);

    *(v45 + 14) = v49;
    *(v45 + 22) = 2080;
    LOBYTE(v59) = *(v3 + v2);
    v50 = TransferClient.State.description.getter();
    v52 = sub_247D72868(v50, v51, &v60);

    *(v45 + 24) = v52;
    _os_log_impl(&dword_247D56000, v43, v44, "[FileList] Received list, count=%ld list=%s, state=%s", v45, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1BAF60](v46, -1, -1);
    MEMORY[0x24C1BAF60](v45, -1, -1);
  }

  v53 = sub_247DB593C(v10);
  swift_getKeyPath();
  swift_getKeyPath();
  v60 = v53;

  sub_247DD242C();
}

uint64_t sub_247DB593C(uint64_t a1)
{
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73F60, &qword_247DD6598);
  v3 = *(*(v65 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v65);
  v58 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v57 = &v50 - v6;
  v7 = type metadata accessor for TransferClient.FileDescriptor(0);
  v55 = *(v7 - 8);
  v56 = v7;
  v8 = *(v55 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  if (!v11)
  {
    return v12;
  }

  v50 = v1;
  v66 = MEMORY[0x277D84F90];
  sub_247DBA1AC(0, v11, 0);
  v12 = v66;
  v13 = a1 + 64;
  v14 = -1 << *(a1 + 32);
  result = sub_247DD300C();
  v16 = result;
  v17 = 0;
  v18 = *(a1 + 36);
  v51 = a1 + 72;
  v52 = v11;
  v53 = v18;
  v54 = a1 + 64;
  v64 = a1;
  while ((v16 & 0x8000000000000000) == 0 && v16 < 1 << *(a1 + 32))
  {
    if ((*(v13 + 8 * (v16 >> 6)) & (1 << v16)) == 0)
    {
      goto LABEL_22;
    }

    if (v18 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v60 = 1 << v16;
    v61 = v16 >> 6;
    v59 = v17;
    v20 = v57;
    v21 = v10;
    v22 = &v57[*(v65 + 48)];
    v23 = *(a1 + 48);
    v24 = sub_247DD225C();
    v25 = *(v24 - 8);
    v26 = v25;
    v27 = v23 + *(v25 + 72) * v16;
    v63 = v12;
    v28 = *(v25 + 16);
    v28(v20, v27, v24);
    v29 = (*(v64 + 56) + 24 * v16);
    v30 = *v29;
    v31 = v29[1];
    v32 = v29[2];
    *v22 = v30;
    *(v22 + 1) = v31;
    *(v22 + 2) = v32;
    v33 = *(v26 + 32);
    v62 = v16;
    v34 = v58;
    v33(v58, v20, v24);
    v35 = (v34 + *(v65 + 48));
    v37 = *v22;
    v36 = *(v22 + 1);
    v38 = *(v22 + 2);
    *v35 = v37;
    v35[1] = v36;
    v35[2] = v38;
    v28(v21, v34, v24);
    v12 = v63;
    v39 = v56;
    v40 = (v21 + *(v56 + 20));
    *v40 = v37;
    v40[1] = v36;
    *(v21 + *(v39 + 24)) = v38;
    v10 = v21;

    sub_247D6BAD4(v34, &qword_27EE73F60, &qword_247DD6598);
    v66 = v12;
    v42 = *(v12 + 16);
    v41 = *(v12 + 24);
    if (v42 >= v41 >> 1)
    {
      sub_247DBA1AC(v41 > 1, v42 + 1, 1);
      v12 = v66;
    }

    *(v12 + 16) = v42 + 1;
    sub_247DBAA04(v21, v12 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v42, type metadata accessor for TransferClient.FileDescriptor);
    a1 = v64;
    v19 = 1 << *(v64 + 32);
    result = v62;
    if (v62 >= v19)
    {
      goto LABEL_24;
    }

    v13 = v54;
    v43 = *(v54 + 8 * v61);
    if ((v43 & v60) == 0)
    {
      goto LABEL_25;
    }

    LODWORD(v18) = v53;
    if (v53 != *(v64 + 36))
    {
      goto LABEL_26;
    }

    v44 = v43 & (-2 << (v62 & 0x3F));
    if (v44)
    {
      v19 = __clz(__rbit64(v44)) | v62 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v45 = v61 << 6;
      v46 = v61 + 1;
      v47 = (v51 + 8 * v61);
      while (v46 < (v19 + 63) >> 6)
      {
        v49 = *v47++;
        v48 = v49;
        v45 += 64;
        ++v46;
        if (v49)
        {
          result = sub_247DBB4B0(v62, v53, 0);
          v19 = __clz(__rbit64(v48)) + v45;
          goto LABEL_4;
        }
      }

      result = sub_247DBB4B0(v62, v53, 0);
    }

LABEL_4:
    v17 = v59 + 1;
    v16 = v19;
    if (v59 + 1 == v52)
    {
      return v12;
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

Cosmo::PinCode __swiftcall TransferClient.auth()()
{
  static PinCode.random(length:)(4, v5);
  v4[0] = v5[0];
  v4[1] = v5[1];
  v0.value._countAndFlagsBits = v4;
  TransferClient.auth(pinCode:)(v0);

  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

Cosmo::PinCode __swiftcall TransferClient.auth(pinCode:)(Cosmo::PinCode pinCode)
{
  countAndFlagsBits = pinCode.value._countAndFlagsBits;
  v24 = v1;
  v4 = sub_247DD2A0C();
  v23 = *(v4 - 8);
  v5 = *(v23 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_247DD2A2C();
  v8 = *(v22 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v22);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *countAndFlagsBits;
  v13 = countAndFlagsBits[1];
  v20 = *(v2 + 16);
  v21 = v12;
  v14 = swift_allocObject();
  v14[2] = v2;
  v14[3] = v12;
  v14[4] = v13;
  aBlock[4] = sub_247DB686C;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_247D598D4;
  aBlock[3] = &block_descriptor_8_0;
  v15 = _Block_copy(aBlock);

  sub_247DD2A1C();
  v25 = MEMORY[0x277D84F90];
  sub_247DBAE20(&unk_27EE73AF0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE733C0, &qword_247DD83B0);
  sub_247D6AE30(&qword_27EE73B00, &unk_27EE733C0, &qword_247DD83B0);
  sub_247DD2FFC();
  MEMORY[0x24C1BA270](0, v11, v7, v15);
  _Block_release(v15);
  (*(v23 + 8))(v7, v4);
  (*(v8 + 8))(v11, v22);

  v16 = v24;
  *v24 = v21;
  v16[1] = v13;

  result.value._object = v18;
  result.value._countAndFlagsBits = v17;
  return result;
}

void sub_247DB6150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (a1 + OBJC_IVAR____TtC5Cosmo14TransferClient_pinCode);
  v7 = *(a1 + OBJC_IVAR____TtC5Cosmo14TransferClient_pinCode + 8);
  *v6 = a2;
  v6[1] = a3;

  v8 = OBJC_IVAR____TtC5Cosmo14TransferClient_attestationResult;
  v9 = *(a1 + OBJC_IVAR____TtC5Cosmo14TransferClient_attestationResult);
  if (v9 == 2)
  {
    v10 = 0;
    v11 = 0xE000000000000000;
  }

  else
  {
    sub_247DD304C();

    v44 = 0xD000000000000018;
    v45 = 0x8000000247DD9E10;
    if (v9)
    {
      v12 = 0x6572756C696166;
    }

    else
    {
      v12 = 0x73736563637573;
    }

    MEMORY[0x24C1BA0A0](v12, 0xE700000000000000);

    MEMORY[0x24C1BA0A0](41, 0xE100000000000000);
    v10 = v44;
    v11 = v45;
  }

  sub_247DD304C();

  v44 = 0x3D6E69702D77656ELL;
  v45 = 0xE800000000000000;
  MEMORY[0x24C1BA0A0](a2, a3);
  MEMORY[0x24C1BA0A0](0x756F697665727020, 0xEE003D6E69702D73);
  if (v6[1])
  {
    v41 = *v6;

    v13 = sub_247DD2CFC();
    v15 = v14;
  }

  else
  {

    v15 = 0xE300000000000000;
    v13 = 7104878;
  }

  MEMORY[0x24C1BA0A0](v13, v15);

  MEMORY[0x24C1BA0A0](32, 0xE100000000000000);
  MEMORY[0x24C1BA0A0](v10, v11);

  MEMORY[0x24C1BA0A0](0x3D657461747320, 0xE700000000000000);
  v16 = OBJC_IVAR____TtC5Cosmo14TransferClient_state;
  v42 = *(a1 + OBJC_IVAR____TtC5Cosmo14TransferClient_state);
  v17 = TransferClient.State.description.getter();
  MEMORY[0x24C1BA0A0](v17);

  v19 = v44;
  v18 = v45;
  v20 = *(a1 + v16);
  if (v20 > 2)
  {
    if (v20 == 3)
    {
LABEL_20:

      sub_247DADD20();
      return;
    }

    if (v20 == 7)
    {
      v29 = *(a1 + v8);
      if (v29 == 2)
      {
        goto LABEL_20;
      }

      if ((v29 & 1) == 0)
      {
LABEL_34:
        if (qword_27EE73290 != -1)
        {
          swift_once();
        }

        v39 = sub_247DD23CC();
        __swift_project_value_buffer(v39, qword_27EE7B908);

        v31 = sub_247DD23AC();
        v32 = sub_247DD2F2C();

        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          v44 = v34;
          *v33 = 136315138;
          v40 = sub_247D72868(v19, v18, &v44);

          *(v33 + 4) = v40;
          v36 = "[Auth] Ignoring, %s";
          goto LABEL_38;
        }

        goto LABEL_39;
      }

      if ((sub_247DD322C() & 1) == 0)
      {
        goto LABEL_20;
      }

      v20 = *(a1 + v16);
    }

    if (v20 - 4 <= 2)
    {
      if (*(a1 + OBJC_IVAR____TtC5Cosmo14TransferClient_usePinlessPair) == 1)
      {
        goto LABEL_12;
      }

      if (qword_27EE73290 != -1)
      {
        swift_once();
      }

      v37 = sub_247DD23CC();
      __swift_project_value_buffer(v37, qword_27EE7B908);

      v31 = sub_247DD23AC();
      v32 = sub_247DD2F2C();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v44 = v34;
        *v33 = 136315138;
        v38 = sub_247D72868(v19, v18, &v44);

        *(v33 + 4) = v38;
        v36 = "[Auth] Queuing PIN in case we need to re-attest, %s";
        goto LABEL_38;
      }

LABEL_39:

      goto LABEL_40;
    }

    goto LABEL_34;
  }

  if (*(a1 + OBJC_IVAR____TtC5Cosmo14TransferClient_usePinlessPair) != 1)
  {
    if (qword_27EE73290 != -1)
    {
      swift_once();
    }

    v30 = sub_247DD23CC();
    __swift_project_value_buffer(v30, qword_27EE7B908);

    v31 = sub_247DD23AC();
    v32 = sub_247DD2F2C();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v44 = v34;
      *v33 = 136315138;
      v35 = sub_247D72868(v19, v18, &v44);

      *(v33 + 4) = v35;
      v36 = "[Auth] Queuing PIN until attestation-channel is available, %s";
LABEL_38:
      _os_log_impl(&dword_247D56000, v31, v32, v36, v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v34);
      MEMORY[0x24C1BAF60](v34, -1, -1);
      MEMORY[0x24C1BAF60](v33, -1, -1);
LABEL_40:

      return;
    }

    goto LABEL_39;
  }

LABEL_12:

  if (qword_27EE73290 != -1)
  {
    swift_once();
  }

  v21 = sub_247DD23CC();
  __swift_project_value_buffer(v21, qword_27EE7B908);

  v22 = sub_247DD23AC();
  v23 = sub_247DD2F2C();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v44 = v25;
    *v24 = 136315138;
    v43 = *(a1 + v16);
    v26 = TransferClient.State.description.getter();
    v28 = sub_247D72868(v26, v27, &v44);

    *(v24 + 4) = v28;
    _os_log_impl(&dword_247D56000, v22, v23, "[Auth] Ignoring, using PIN-less pair, state=%s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v25);
    MEMORY[0x24C1BAF60](v25, -1, -1);
    MEMORY[0x24C1BAF60](v24, -1, -1);
  }
}

void sub_247DB68A0(uint64_t a1, void (*a2)(uint64_t *), unint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73F08, &qword_247DD6580);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v71 - v10);
  v12 = type metadata accessor for FileRequest(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for TransferClient.FileDescriptor(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16 - 8);
  v21 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v71 - v22;
  v24 = *(a1 + OBJC_IVAR____TtC5Cosmo14TransferClient_state);
  if (v24 > 0xF)
  {
    return;
  }

  v73 = v15;
  v74 = OBJC_IVAR____TtC5Cosmo14TransferClient_state;
  v75 = a2;
  if ((~v24 & 0xE) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_247DD241C();

    v25 = *(v76 + 16);

    if (v25)
    {
      v71 = v8;
      v72 = a3;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_247DD241C();

      v26 = 0;
      v27 = v76;
      v28 = *(v76 + 16);
      do
      {
        if (v28 == v26)
        {

          v76 = 0;
          v77 = 0xE000000000000000;
          sub_247DD304C();
          MEMORY[0x24C1BA0A0](0xD00000000000003BLL, 0x8000000247DD9D90);
          sub_247DD225C();
          sub_247DBAE20(&unk_27EE73510, MEMORY[0x277CC95F0]);
          v59 = sub_247DD321C();
          MEMORY[0x24C1BA0A0](v59);

          v60 = v76;
          v61 = v77;
          sub_247D6ADD0();
          v62 = swift_allocError();
          *v63 = v60;
          v63[1] = v61;
          *v11 = v62;
          swift_storeEnumTagMultiPayload();
          v75(v11);
          goto LABEL_18;
        }

        if (v26 >= *(v27 + 16))
        {
          __break(1u);
          goto LABEL_25;
        }

        sub_247DBAB44(v27 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v26++, v23, type metadata accessor for TransferClient.FileDescriptor);
        v29 = sub_247DD221C();
        sub_247DBAA6C(v23, type metadata accessor for TransferClient.FileDescriptor);
      }

      while ((v29 & 1) == 0);

      v30 = OBJC_IVAR____TtC5Cosmo14TransferClient_filesRequestedCount;
      v31 = *(a1 + OBJC_IVAR____TtC5Cosmo14TransferClient_filesRequestedCount);
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        __break(1u);
      }

      else
      {
        *(a1 + OBJC_IVAR____TtC5Cosmo14TransferClient_filesRequestedCount) = v33;
        v26 = v72;
        if (*(a1 + v74) != 15)
        {
          LOBYTE(v76) = 15;
          sub_247DAC1A4(&v76);
        }

        if (qword_27EE73290 == -1)
        {
          goto LABEL_12;
        }
      }

      swift_once();
LABEL_12:
      v34 = sub_247DD23CC();
      __swift_project_value_buffer(v34, qword_27EE7B908);
      sub_247DBAB44(a4, v21, type metadata accessor for TransferClient.FileDescriptor);
      swift_retain_n();
      v35 = sub_247DD23AC();
      v36 = sub_247DD2F2C();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v38 = v76;
        *v37 = 136315650;
        v39 = TransferClient.FileDescriptor.description.getter();
        v41 = v40;
        sub_247DBAA6C(v21, type metadata accessor for TransferClient.FileDescriptor);
        v42 = sub_247D72868(v39, v41, &v76);

        *(v37 + 4) = v42;
        *(v37 + 12) = 2048;
        v43 = *(a1 + v30);

        *(v37 + 14) = v43;

        *(v37 + 22) = 2080;
        v78 = *(a1 + v74);
        v44 = TransferClient.State.description.getter();
        v46 = sub_247D72868(v44, v45, &v76);

        *(v37 + 24) = v46;
        _os_log_impl(&dword_247D56000, v35, v36, "[Request] Requesting file=%s, files-requested-count=%ld state=%s", v37, 0x20u);
        swift_arrayDestroy();
        v47 = v38;
        v26 = v72;
        MEMORY[0x24C1BAF60](v47, -1, -1);
        MEMORY[0x24C1BAF60](v37, -1, -1);
      }

      else
      {

        sub_247DBAA6C(v21, type metadata accessor for TransferClient.FileDescriptor);
      }

      v64 = v75;
      v65 = v73;
      if (*(a1 + OBJC_IVAR____TtC5Cosmo14TransferClient_fileTransferClient))
      {
        v66 = sub_247DD225C();
        (*(*(v66 - 8) + 16))(v65, a4, v66);
        v67 = v64;
        v68 = swift_allocObject();
        swift_weakInit();
        v69 = v65;
        v70 = swift_allocObject();
        v70[2] = v68;
        v70[3] = v67;
        v70[4] = v26;

        sub_247DA7CA0(v69, 0, sub_247DBAC38, v70);

        sub_247DBAA6C(v69, type metadata accessor for FileRequest);
      }

      return;
    }
  }

  if (qword_27EE73290 != -1)
  {
LABEL_25:
    swift_once();
  }

  v48 = sub_247DD23CC();
  __swift_project_value_buffer(v48, qword_27EE7B908);

  v49 = sub_247DD23AC();
  v50 = sub_247DD2F0C();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v76 = v52;
    *v51 = 136315138;
    v78 = *(a1 + v74);
    v53 = TransferClient.State.description.getter();
    v55 = sub_247D72868(v53, v54, &v76);

    *(v51 + 4) = v55;
    _os_log_impl(&dword_247D56000, v49, v50, "[Request] Must be invoked after having received the file-list, state=%s", v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v52);
    MEMORY[0x24C1BAF60](v52, -1, -1);
    MEMORY[0x24C1BAF60](v51, -1, -1);
  }

  v56 = v75;
  sub_247D6ADD0();
  v57 = swift_allocError();
  *v58 = xmmword_247DD3ED0;
  *v11 = v57;
  swift_storeEnumTagMultiPayload();
  v56(v11);
LABEL_18:
  sub_247D6BAD4(v11, &qword_27EE73F08, &qword_247DD6580);
}

uint64_t sub_247DB715C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4)
{
  v66 = a3;
  v6 = type metadata accessor for CosmoFileHttpResponse(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v65 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73F10, &unk_247DD6588);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = (v65 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73F08, &qword_247DD6580);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = (v65 - v19);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    sub_247D6ADD0();
    v42 = swift_allocError();
    *v43 = 0xD000000000000017;
    v43[1] = 0x8000000247DD9DD0;
    *v20 = v42;
    swift_storeEnumTagMultiPayload();
    v66(v20);
    return sub_247D6BAD4(v20, &qword_27EE73F08, &qword_247DD6580);
  }

  v22 = Strong;
  v65[0] = a4;
  v65[1] = v17;
  sub_247D6BA6C(a1, v16, &qword_27EE73F10, &unk_247DD6588);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = *v16;
    v24 = qword_27EE73290;

    if (v24 != -1)
    {
      swift_once();
    }

    v25 = sub_247DD23CC();
    __swift_project_value_buffer(v25, qword_27EE7B908);

    v26 = v23;
    v27 = sub_247DD23AC();
    v28 = sub_247DD2F0C();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v67 = v23;
      v68 = v30;
      *v29 = 136315650;
      v31 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73C10, &qword_247DD4330);
      v32 = sub_247DD2CFC();
      v34 = sub_247D72868(v32, v33, &v68);

      *(v29 + 4) = v34;
      *(v29 + 12) = 2080;
      v35 = sub_247DB78CC(v22);
      v37 = sub_247D72868(v35, v36, &v68);

      *(v29 + 14) = v37;
      *(v29 + 22) = 2080;
      LOBYTE(v67) = *(v22 + OBJC_IVAR____TtC5Cosmo14TransferClient_state);
      v38 = TransferClient.State.description.getter();
      v40 = sub_247D72868(v38, v39, &v68);

      *(v29 + 24) = v40;
      _os_log_impl(&dword_247D56000, v27, v28, "[Request] Received error=%s, %s state=%s", v29, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C1BAF60](v30, -1, -1);
      MEMORY[0x24C1BAF60](v29, -1, -1);
    }

    *v20 = v23;
    swift_storeEnumTagMultiPayload();
    v41 = v23;
    v66(v20);

    return sub_247D6BAD4(v20, &qword_27EE73F08, &qword_247DD6580);
  }

  sub_247DBAA04(v16, v12, type metadata accessor for CosmoFileHttpResponse);
  v45 = *(v22 + OBJC_IVAR____TtC5Cosmo14TransferClient_filesReceivedCount);
  v46 = __OFADD__(v45, 1);
  v47 = v45 + 1;
  if (v46)
  {
    __break(1u);
    goto LABEL_17;
  }

  *(v22 + OBJC_IVAR____TtC5Cosmo14TransferClient_filesReceivedCount) = v47;
  v48 = qword_27EE73290;

  if (v48 != -1)
  {
LABEL_17:
    swift_once();
  }

  v49 = sub_247DD23CC();
  __swift_project_value_buffer(v49, qword_27EE7B908);
  sub_247DBAB44(v12, v10, type metadata accessor for CosmoFileHttpResponse);

  v50 = sub_247DD23AC();
  v51 = sub_247DD2F2C();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v68 = v53;
    *v52 = 136315650;
    sub_247DD20DC();
    sub_247DBAE20(&qword_27EE735C0, MEMORY[0x277CC9260]);
    v54 = sub_247DD321C();
    v56 = v55;
    sub_247DBAA6C(v10, type metadata accessor for CosmoFileHttpResponse);
    v57 = sub_247D72868(v54, v56, &v68);

    *(v52 + 4) = v57;
    *(v52 + 12) = 2080;
    v58 = sub_247DB78CC(v22);
    v60 = sub_247D72868(v58, v59, &v68);

    *(v52 + 14) = v60;
    *(v52 + 22) = 2080;
    LOBYTE(v67) = *(v22 + OBJC_IVAR____TtC5Cosmo14TransferClient_state);
    v61 = TransferClient.State.description.getter();
    v63 = sub_247D72868(v61, v62, &v68);

    *(v52 + 24) = v63;
    _os_log_impl(&dword_247D56000, v50, v51, "[Request] Received file-response at file=%s, %s state=%s", v52, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1BAF60](v53, -1, -1);
    MEMORY[0x24C1BAF60](v52, -1, -1);
  }

  else
  {

    sub_247DBAA6C(v10, type metadata accessor for CosmoFileHttpResponse);
  }

  v64 = sub_247DD20DC();
  (*(*(v64 - 8) + 16))(v20, v12, v64);
  swift_storeEnumTagMultiPayload();
  v66(v20);

  sub_247D6BAD4(v20, &qword_27EE73F08, &qword_247DD6580);
  return sub_247DBAA6C(v12, type metadata accessor for CosmoFileHttpResponse);
}

unint64_t sub_247DB78CC(uint64_t a1)
{
  sub_247DD304C();

  v5 = *(a1 + OBJC_IVAR____TtC5Cosmo14TransferClient_filesRequestedCount);
  v2 = sub_247DD321C();
  MEMORY[0x24C1BA0A0](v2);

  MEMORY[0x24C1BA0A0](0xD000000000000016, 0x8000000247DD9DF0);
  v6 = *(a1 + OBJC_IVAR____TtC5Cosmo14TransferClient_filesReceivedCount);
  v3 = sub_247DD321C();
  MEMORY[0x24C1BA0A0](v3);

  return 0xD000000000000016;
}

uint64_t sub_247DB7A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30 = a6;
  v27 = a2;
  v28 = a5;
  v7 = v6;
  v10 = sub_247DD2A0C();
  v33 = *(v10 - 8);
  v11 = *(v33 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_247DD2A2C();
  v31 = *(v14 - 8);
  v32 = v14;
  v15 = *(v31 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for TransferClient.FileDescriptor(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(v7 + 16);
  sub_247DBAB44(a1, v21, type metadata accessor for TransferClient.FileDescriptor);
  v22 = (*(v19 + 80) + 40) & ~*(v19 + 80);
  v23 = swift_allocObject();
  v24 = v27;
  v23[2] = v7;
  v23[3] = v24;
  v23[4] = a3;
  sub_247DBAA04(v21, v23 + v22, type metadata accessor for TransferClient.FileDescriptor);
  aBlock[4] = v28;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_247D598D4;
  aBlock[3] = v30;
  v25 = _Block_copy(aBlock);

  sub_247DD2A1C();
  v34 = MEMORY[0x277D84F90];
  sub_247DBAE20(&unk_27EE73AF0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE733C0, &qword_247DD83B0);
  sub_247D6AE30(&qword_27EE73B00, &unk_27EE733C0, &qword_247DD83B0);
  sub_247DD2FFC();
  MEMORY[0x24C1BA270](0, v17, v13, v25);
  _Block_release(v25);
  (*(v33 + 8))(v13, v10);
  (*(v31 + 8))(v17, v32);
}

void sub_247DB7DA0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for RejectFileRequest(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v73 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TransferClient.FileDescriptor(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v68 - v16;
  MEMORY[0x28223BE20](v15);
  v20 = &v68 - v19;
  v21 = OBJC_IVAR____TtC5Cosmo14TransferClient_state;
  v22 = *(a1 + OBJC_IVAR____TtC5Cosmo14TransferClient_state);
  if (v22 <= 0xF)
  {
    v72 = v18;
    v74 = a1;
    if ((~v22 & 0xE) != 0 || (swift_getKeyPath(), swift_getKeyPath(), sub_247DD241C(), , , v23 = *(v75 + 16), , !v23))
    {
      v17 = v21;
      if (qword_27EE73290 != -1)
      {
LABEL_23:
        swift_once();
      }

      v45 = sub_247DD23CC();
      __swift_project_value_buffer(v45, qword_27EE7B908);
      v46 = v74;

      v47 = sub_247DD23AC();
      v48 = sub_247DD2F0C();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = a2;
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v75 = v51;
        *v50 = 136315138;
        v77 = v17[v46];
        v52 = TransferClient.State.description.getter();
        v54 = sub_247D72868(v52, v53, &v75);

        *(v50 + 4) = v54;
        _os_log_impl(&dword_247D56000, v47, v48, "[Reject] Ignoring, no file-list received, state=%s", v50, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v51);
        MEMORY[0x24C1BAF60](v51, -1, -1);
        v55 = v50;
        a2 = v49;
        MEMORY[0x24C1BAF60](v55, -1, -1);
      }

      sub_247D6ADD0();
      v56 = swift_allocError();
      *v57 = xmmword_247DD3ED0;
      (a2)(v56, 1);
LABEL_16:
    }

    else
    {
      v69 = v21;
      v70 = a2;
      v71 = a3;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_247DD241C();

      a2 = 0;
      v24 = v75;
      v25 = *(v75 + 16);
      do
      {
        if (v25 == a2)
        {

          v75 = 0;
          v76 = 0xE000000000000000;
          sub_247DD304C();
          MEMORY[0x24C1BA0A0](0xD00000000000003BLL, 0x8000000247DD9D90);
          sub_247DD225C();
          sub_247DBAE20(&unk_27EE73510, MEMORY[0x277CC95F0]);
          v58 = sub_247DD321C();
          MEMORY[0x24C1BA0A0](v58);

          v59 = v75;
          v60 = v76;
          sub_247D6ADD0();
          v56 = swift_allocError();
          *v61 = v59;
          v61[1] = v60;
          v70(v56, 1);
          goto LABEL_16;
        }

        if (a2 >= *(v24 + 16))
        {
          __break(1u);
          goto LABEL_23;
        }

        v26 = *(v12 + 80);
        sub_247DBAB44(v24 + ((v26 + 32) & ~v26) + *(v12 + 72) * a2++, v20, type metadata accessor for TransferClient.FileDescriptor);
        v27 = sub_247DD221C();
        sub_247DBAA6C(v20, type metadata accessor for TransferClient.FileDescriptor);
      }

      while ((v27 & 1) == 0);

      if (qword_27EE73290 != -1)
      {
        swift_once();
      }

      v28 = sub_247DD23CC();
      __swift_project_value_buffer(v28, qword_27EE7B908);
      sub_247DBAB44(a4, v17, type metadata accessor for TransferClient.FileDescriptor);
      v29 = v74;

      v30 = sub_247DD23AC();
      v31 = sub_247DD2F2C();

      v32 = os_log_type_enabled(v30, v31);
      v33 = v71;
      if (v32)
      {
        v34 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v75 = v68;
        *v34 = 136315394;
        v35 = v31;
        v36 = TransferClient.FileDescriptor.description.getter();
        v38 = v37;
        sub_247DBAA6C(v17, type metadata accessor for TransferClient.FileDescriptor);
        v39 = sub_247D72868(v36, v38, &v75);

        *(v34 + 4) = v39;
        *(v34 + 12) = 2080;
        v77 = *(v29 + v69);
        v40 = TransferClient.State.description.getter();
        v42 = sub_247D72868(v40, v41, &v75);

        *(v34 + 14) = v42;
        v43 = v35;
        v33 = v71;
        _os_log_impl(&dword_247D56000, v30, v43, "[Reject] Rejecting file=%s, state=%s", v34, 0x16u);
        v44 = v68;
        swift_arrayDestroy();
        MEMORY[0x24C1BAF60](v44, -1, -1);
        MEMORY[0x24C1BAF60](v34, -1, -1);
      }

      else
      {

        sub_247DBAA6C(v17, type metadata accessor for TransferClient.FileDescriptor);
      }

      v62 = v72;
      if (*(v29 + OBJC_IVAR____TtC5Cosmo14TransferClient_fileTransferClient))
      {
        v63 = sub_247DD225C();
        v64 = v73;
        (*(*(v63 - 8) + 16))(v73, a4, v63);
        v65 = swift_allocObject();
        swift_weakInit();
        sub_247DBAB44(a4, v62, type metadata accessor for TransferClient.FileDescriptor);
        v66 = swift_allocObject();
        v67 = v70;
        v66[2] = v65;
        v66[3] = v67;
        v66[4] = v33;
        sub_247DBAA04(v62, v66 + ((v26 + 40) & ~v26), type metadata accessor for TransferClient.FileDescriptor);

        sub_247DA806C(v64, 0, sub_247DBAACC, v66);

        sub_247DBAA6C(v64, type metadata accessor for RejectFileRequest);
      }
    }
  }
}

uint64_t objectdestroy_10Tm()
{
  v1 = (type metadata accessor for TransferClient.FileDescriptor(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);

  v6 = *(v0 + 32);

  v7 = sub_247DD225C();
  (*(*(v7 - 8) + 8))(v0 + v3, v7);
  v8 = *(v0 + v3 + v1[7] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_247DB86EC(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, char *))
{
  v2 = *(type metadata accessor for TransferClient.FileDescriptor(0) - 8);
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1 + ((*(v2 + 80) + 40) & ~*(v2 + 80));

  return a1(v3, v4, v5, v6);
}

void sub_247DB8768(uint64_t a1, uint64_t a2, void (*a3)(void, void), uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for TransferClient.FileDescriptor(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v55 - v13;
  v15 = *a1;
  v16 = *(a1 + 8);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    if (v16)
    {
      if (qword_27EE73290 != -1)
      {
        swift_once();
      }

      v19 = sub_247DD23CC();
      __swift_project_value_buffer(v19, qword_27EE7B908);
      sub_247DBAB44(a5, v12, type metadata accessor for TransferClient.FileDescriptor);

      sub_247D6BC90(v15, 1);
      v20 = sub_247DD23AC();
      v21 = sub_247DD2F0C();
      sub_247D6B9F8(v15, 1);

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v55 = a3;
        v23 = v22;
        v24 = swift_slowAlloc();
        v57 = v24;
        *v23 = 136315650;
        v25 = TransferClient.FileDescriptor.description.getter();
        v27 = v26;
        sub_247DBAA6C(v12, type metadata accessor for TransferClient.FileDescriptor);
        v28 = sub_247D72868(v25, v27, &v57);

        *(v23 + 4) = v28;
        *(v23 + 12) = 2080;
        v56 = v15;
        v29 = v15;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73C10, &qword_247DD4330);
        v30 = sub_247DD2CFC();
        v32 = sub_247D72868(v30, v31, &v57);

        *(v23 + 14) = v32;
        *(v23 + 22) = 2080;
        LOBYTE(v56) = *(v18 + OBJC_IVAR____TtC5Cosmo14TransferClient_state);
        v33 = TransferClient.State.description.getter();
        v35 = sub_247D72868(v33, v34, &v57);

        *(v23 + 24) = v35;
        _os_log_impl(&dword_247D56000, v20, v21, "[Reject] Failed to reject file=%s, error=%s state=%s", v23, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x24C1BAF60](v24, -1, -1);
        v36 = v23;
        a3 = v55;
        MEMORY[0x24C1BAF60](v36, -1, -1);
      }

      else
      {

        sub_247DBAA6C(v12, type metadata accessor for TransferClient.FileDescriptor);
      }

      v53 = v15;
      v54 = 1;
    }

    else
    {
      if (qword_27EE73290 != -1)
      {
        swift_once();
      }

      v39 = sub_247DD23CC();
      __swift_project_value_buffer(v39, qword_27EE7B908);
      sub_247DBAB44(a5, v14, type metadata accessor for TransferClient.FileDescriptor);

      v40 = sub_247DD23AC();
      v41 = sub_247DD2F2C();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = a3;
        v44 = swift_slowAlloc();
        v57 = v44;
        *v42 = 136315394;
        v45 = TransferClient.FileDescriptor.description.getter();
        v47 = v46;
        sub_247DBAA6C(v14, type metadata accessor for TransferClient.FileDescriptor);
        v48 = sub_247D72868(v45, v47, &v57);

        *(v42 + 4) = v48;
        *(v42 + 12) = 2080;
        LOBYTE(v56) = *(v18 + OBJC_IVAR____TtC5Cosmo14TransferClient_state);
        v49 = TransferClient.State.description.getter();
        v51 = sub_247D72868(v49, v50, &v57);

        *(v42 + 14) = v51;
        _os_log_impl(&dword_247D56000, v40, v41, "[Reject] Host rejected file=%s, state=(%s)", v42, 0x16u);
        swift_arrayDestroy();
        v52 = v44;
        a3 = v43;
        MEMORY[0x24C1BAF60](v52, -1, -1);
        MEMORY[0x24C1BAF60](v42, -1, -1);
      }

      else
      {

        sub_247DBAA6C(v14, type metadata accessor for TransferClient.FileDescriptor);
      }

      v53 = 0;
      v54 = 0;
    }

    a3(v53, v54);
  }

  else
  {
    sub_247D6ADD0();
    v37 = swift_allocError();
    *v38 = 0xD000000000000017;
    v38[1] = 0x8000000247DD9DD0;
    a3(v37, 1);
  }
}

Swift::Void __swiftcall TransferClient.disconnect()()
{
  v1 = sub_247DD2A0C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_247DD2A2C();
  v6 = *(v12 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v12);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11[1] = *(v0 + 16);
  aBlock[4] = sub_247DB916C;
  v15 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_247D598D4;
  aBlock[3] = &block_descriptor_23_0;
  v10 = _Block_copy(aBlock);

  sub_247DD2A1C();
  v13 = MEMORY[0x277D84F90];
  sub_247DBAE20(&unk_27EE73AF0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE733C0, &qword_247DD83B0);
  sub_247D6AE30(&qword_27EE73B00, &unk_27EE733C0, &qword_247DD83B0);
  sub_247DD2FFC();
  MEMORY[0x24C1BA270](0, v9, v5, v10);
  _Block_release(v10);
  (*(v2 + 8))(v5, v1);
  (*(v6 + 8))(v9, v12);
}

void sub_247DB8FA8(uint64_t a1)
{
  v1 = OBJC_IVAR____TtC5Cosmo14TransferClient_state;
  v2 = *(a1 + OBJC_IVAR____TtC5Cosmo14TransferClient_state);
  if (v2 <= 0xF)
  {
    if (v2 - 3 > 8)
    {
      v14 = 3;
      sub_247DAEE90(&v14, 0xD00000000000001ALL, 0x8000000247DD9D70);
    }

    else
    {
      if (qword_27EE73290 != -1)
      {
        swift_once();
      }

      v4 = sub_247DD23CC();
      __swift_project_value_buffer(v4, qword_27EE7B908);

      v5 = sub_247DD23AC();
      v6 = sub_247DD2F2C();

      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v13 = v8;
        *v7 = 136315138;
        v12 = *(a1 + v1);
        v9 = TransferClient.State.description.getter();
        v11 = sub_247D72868(v9, v10, &v13);

        *(v7 + 4) = v11;
        _os_log_impl(&dword_247D56000, v5, v6, "[Disconnect] Queueing disconnect until file-transfer-channel established, state=%s", v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v8);
        MEMORY[0x24C1BAF60](v8, -1, -1);
        MEMORY[0x24C1BAF60](v7, -1, -1);
      }

      *(a1 + OBJC_IVAR____TtC5Cosmo14TransferClient_stateAtDisconnect) = *(a1 + v1);
    }
  }
}

unint64_t sub_247DB91C0()
{
  result = qword_27EE73EA0;
  if (!qword_27EE73EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE73EA0);
  }

  return result;
}

unint64_t sub_247DB9218()
{
  result = qword_27EE73EA8;
  if (!qword_27EE73EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE73EA8);
  }

  return result;
}

uint64_t sub_247DB9274@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC5Cosmo14TransferClient_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_247DB92D0(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2 + OBJC_IVAR____TtC5Cosmo14TransferClient_delegate;
  swift_beginAccess();
  *(v4 + 8) = v3;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_247DB9394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_247DD225C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_247DB9468(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_247DD225C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_247DB9524()
{
  result = sub_247DD225C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TransferClient.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TransferClient.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_247DB9710()
{
  sub_247DB9914();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_247DB9978();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_247DB9914()
{
  if (!qword_27EE73EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE73DF8, &unk_247DD61A0);
    v0 = sub_247DD243C();
    if (!v1)
    {
      atomic_store(v0, &qword_27EE73EE0);
    }
  }
}

void sub_247DB9978()
{
  if (!qword_27EE733F0)
  {
    sub_247DD225C();
    v0 = sub_247DD2F9C();
    if (!v1)
    {
      atomic_store(v0, &qword_27EE733F0);
    }
  }
}

uint64_t sub_247DB99D0(uint64_t a1, char a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    if (qword_27EE73290 != -1)
    {
      swift_once();
    }

    v5 = sub_247DD23CC();
    __swift_project_value_buffer(v5, qword_27EE7B908);

    v6 = sub_247DD23AC();
    v7 = sub_247DD2F2C();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v14 = v9;
      *v8 = 136315138;
      v13 = *(v4 + OBJC_IVAR____TtC5Cosmo14TransferClient_state);
      v10 = TransferClient.State.description.getter();
      v12 = sub_247D72868(v10, v11, &v14);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_247D56000, v6, v7, "[Close] Failsafe triggered, state=%s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v9);
      MEMORY[0x24C1BAF60](v9, -1, -1);
      MEMORY[0x24C1BAF60](v8, -1, -1);
    }

    LOBYTE(v14) = a2;
    sub_247DBA4B0(&v14);
  }

  return result;
}

uint64_t sub_247DB9B7C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    sub_247DD2A9C();
    if (v6)
    {
      if (qword_27EE73290 != -1)
      {
        swift_once();
      }

      v9 = sub_247DD23CC();
      __swift_project_value_buffer(v9, qword_27EE7B908);

      sub_247D6BC90(v5, 1);
      v10 = sub_247DD23AC();
      v11 = sub_247DD2F0C();
      sub_247D6B9F8(v5, 1);

      if (!os_log_type_enabled(v10, v11))
      {
        goto LABEL_12;
      }

      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v31 = v13;
      *v12 = 136315394;
      v14 = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73C10, &qword_247DD4330);
      v15 = sub_247DD2CFC();
      v17 = sub_247D72868(v15, v16, &v31);

      *(v12 + 4) = v17;
      *(v12 + 12) = 2080;
      v29 = *(v8 + OBJC_IVAR____TtC5Cosmo14TransferClient_state);
      v18 = TransferClient.State.description.getter();
      v20 = sub_247D72868(v18, v19, &v31);

      *(v12 + 14) = v20;
      _os_log_impl(&dword_247D56000, v10, v11, "[Close] Failed to receive ack from TransferHost, error=%s, state=%s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1BAF60](v13, -1, -1);
      v21 = v12;
    }

    else
    {
      if (qword_27EE73290 != -1)
      {
        swift_once();
      }

      v22 = sub_247DD23CC();
      __swift_project_value_buffer(v22, qword_27EE7B908);

      v10 = sub_247DD23AC();
      v23 = sub_247DD2F2C();

      if (!os_log_type_enabled(v10, v23))
      {
        goto LABEL_12;
      }

      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v31 = v25;
      *v24 = 136315138;
      v30 = *(v8 + OBJC_IVAR____TtC5Cosmo14TransferClient_state);
      v26 = TransferClient.State.description.getter();
      v28 = sub_247D72868(v26, v27, &v31);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_247D56000, v10, v23, "[Close] TransferHost acked request, state=%s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v25);
      MEMORY[0x24C1BAF60](v25, -1, -1);
      v21 = v24;
    }

    MEMORY[0x24C1BAF60](v21, -1, -1);
LABEL_12:

    LOBYTE(v31) = a4;
    sub_247DBA4B0(&v31);
  }

  return result;
}

uint64_t sub_247DB9ECC(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      sub_247DD2C1C();
      sub_247DBAE20(&qword_27EE73AC0, MEMORY[0x277CC5540]);
      result = sub_247DD2AFC();
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_247DBA0AC(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_247DBA0AC(uint64_t a1, uint64_t a2)
{
  result = sub_247DD1FFC();
  if (!result || (result = sub_247DD202C(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_247DD201C();
      sub_247DD2C1C();
      sub_247DBAE20(&qword_27EE73AC0, MEMORY[0x277CC5540]);
      return sub_247DD2AFC();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_247DBA18C(char *a1, int64_t a2, char a3)
{
  result = sub_247DBA1CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_247DBA1AC(size_t a1, int64_t a2, char a3)
{
  result = sub_247DBA2D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_247DBA1CC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73F90, &qword_247DD5980);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_247DBA2D8(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73F68, &unk_247DD65A0);
  v10 = *(type metadata accessor for TransferClient.FileDescriptor(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for TransferClient.FileDescriptor(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_247DBA4B0(char *a1)
{
  v3 = v1;
  v5 = sub_247DD2ABC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v36[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v10 = *a1;
  v11 = *(v3 + 16);
  *v9 = v11;
  (*(v6 + 104))(v9, *MEMORY[0x277D85200], v5);
  v12 = v11;
  LOBYTE(v11) = sub_247DD2ADC();
  result = (*(v6 + 8))(v9, v5);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (*(v3 + OBJC_IVAR____TtC5Cosmo14TransferClient_state) > 0x10u)
  {
    return result;
  }

  v36[0] = 17;
  sub_247DAC1A4(v36);
  *(v3 + OBJC_IVAR____TtC5Cosmo14TransferClient_stateAtDisconnect) = 18;
  v2 = (v3 + OBJC_IVAR____TtC5Cosmo14TransferClient_onAttestationChannelConnected);
  v9 = *(v3 + OBJC_IVAR____TtC5Cosmo14TransferClient_onAttestationChannelConnected);
  v14 = *(v3 + OBJC_IVAR____TtC5Cosmo14TransferClient_onAttestationChannelConnected + 8);
  if (v9)
  {
    v15 = qword_27EE73290;
    v16 = *(v3 + OBJC_IVAR____TtC5Cosmo14TransferClient_onAttestationChannelConnected + 8);

    if (v15 == -1)
    {
LABEL_5:
      v17 = sub_247DD23CC();
      __swift_project_value_buffer(v17, qword_27EE7B908);
      v18 = sub_247DD23AC();
      v19 = sub_247DD2F2C();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_247D56000, v18, v19, "[Close] Found incomplete onConnect() lambda, completing with error", v20, 2u);
        MEMORY[0x24C1BAF60](v20, -1, -1);
      }

      sub_247D6ADD0();
      v21 = swift_allocError();
      *v22 = xmmword_247DD6140;
      (v9)(v21, 1);

      sub_247D6A24C(v9);
      v23 = *v2;
      v24 = v2[1];
      goto LABEL_9;
    }

LABEL_17:
    swift_once();
    goto LABEL_5;
  }

  v23 = 0;
LABEL_9:
  *v2 = 0;
  v2[1] = 0;
  sub_247D6A24C(v23);
  *(v3 + OBJC_IVAR____TtC5Cosmo14TransferClient_attestationResult) = 2;
  sub_247DB47B4();
  v25 = OBJC_IVAR____TtC5Cosmo14TransferClient_fileTransferBrowser;
  if (*(v3 + OBJC_IVAR____TtC5Cosmo14TransferClient_fileTransferBrowser))
  {
    v26 = *(v3 + OBJC_IVAR____TtC5Cosmo14TransferClient_fileTransferBrowser);

    sub_247D9B824();

    v27 = *(v3 + v25);
  }

  *(v3 + v25) = 0;

  v28 = OBJC_IVAR____TtC5Cosmo14TransferClient_fileTransferClient;
  if (*(v3 + OBJC_IVAR____TtC5Cosmo14TransferClient_fileTransferClient))
  {
    v29 = *(v3 + OBJC_IVAR____TtC5Cosmo14TransferClient_fileTransferClient);

    sub_247D9DBEC();

    v30 = *(v3 + v28);
  }

  *(v3 + v28) = 0;

  v31 = *(v3 + OBJC_IVAR____TtC5Cosmo14TransferClient_spake2Verifier);
  *(v3 + OBJC_IVAR____TtC5Cosmo14TransferClient_spake2Verifier) = 0;

  v32 = v3 + OBJC_IVAR____TtC5Cosmo14TransferClient_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v33 = *(v32 + 8);
    ObjectType = swift_getObjectType();
    HIBYTE(v35) = v10;
    (*(v33 + 24))(&v35 + 7, ObjectType, v33);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_247DBA840()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_247DBA878()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_247DBA8B8()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return sub_247DB99D0(*(v0 + 16), *(v0 + 24));
}

uint64_t sub_247DBA8C8()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_247DBA910(uint64_t a1)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  return sub_247DB9B7C(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32));
}

unint64_t sub_247DBA9B0()
{
  result = qword_27EE73EF8;
  if (!qword_27EE73EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE73EF8);
  }

  return result;
}

uint64_t sub_247DBAA04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_247DBAA6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_247DBAACC(uint64_t a1)
{
  v3 = *(type metadata accessor for TransferClient.FileDescriptor(0) - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  sub_247DB8768(a1, v4, v5, v6, v7);
}

uint64_t sub_247DBAB44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_139Tm(uint64_t (*a1)(void))
{
  v2 = *(a1(0) - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64) + v4;
  v6 = *(v1 + 16);

  v7 = *(v1 + 32);

  v8 = sub_247DD225C();
  (*(*(v8 - 8) + 8))(v1 + v4, v8);

  return MEMORY[0x2821FE8E8](v1, v5 + 1, v3 | 7);
}

uint64_t sub_247DBAD70(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t, uint64_t, char *, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2 + ((*(v3 + 80) + 40) & ~*(v3 + 80));
  v7 = v6[*(v3 + 64)];
  v8 = v2[4];

  return a2(v4, v5, v8, v6, v7);
}

uint64_t sub_247DBAE20(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_247DBAE98()
{
  v1 = v0[2];

  v2 = v0[4];

  sub_247D6A1F8(v0[6], v0[7]);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

unint64_t sub_247DBAF04()
{
  result = qword_27EE73F20;
  if (!qword_27EE73F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE73F20);
  }

  return result;
}

unint64_t sub_247DBAF8C()
{
  result = qword_27EE73F28;
  if (!qword_27EE73F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE73F28);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{
  v1 = v0[2];

  v2 = v0[4];

  sub_247D6A1F8(v0[5], v0[6]);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

unint64_t sub_247DBB070()
{
  result = qword_27EE73F30;
  if (!qword_27EE73F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE73F30);
  }

  return result;
}

unint64_t sub_247DBB144()
{
  result = qword_27EE73F38;
  if (!qword_27EE73F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE73F38);
  }

  return result;
}

uint64_t sub_247DBB1A0()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

unint64_t sub_247DBB218()
{
  result = qword_27EE73F40;
  if (!qword_27EE73F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE73F40);
  }

  return result;
}

uint64_t sub_247DBB26C(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, char a5)
{
  if (a5)
  {

    return sub_247D6AD68(a1, a2, a3);
  }

  else
  {
  }
}

unint64_t sub_247DBB2E4()
{
  result = qword_27EE73F48;
  if (!qword_27EE73F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE73F48);
  }

  return result;
}

uint64_t sub_247DBB338(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, char a5)
{
  if (a5)
  {

    return sub_247D6B69C(a1, a2, a3);
  }

  else
  {
  }
}

uint64_t sub_247DBB388(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE733A8, &unk_247DD61B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_247DBB43C()
{
  result = qword_27EE73F58;
  if (!qword_27EE73F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE73F58);
  }

  return result;
}

void sub_247DBB490(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

id sub_247DBB4A0(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t sub_247DBB4B0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t objectdestroy_4Tm(void (*a1)(void), uint64_t a2)
{
  v5 = *(v2 + 16);

  a1(*(v2 + 32));

  return MEMORY[0x2821FE8E8](v2, a2, 7);
}

unint64_t sub_247DBB554()
{
  result = qword_27EE73F70;
  if (!qword_27EE73F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE73F70);
  }

  return result;
}

void sub_247DBB5A8(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
  }
}

id sub_247DBB5B8(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return a1;
  }

  else
  {
  }
}

void *CosmoSerialChannelHost.__allocating_init(name:descriptor:queue:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  swift_allocObject();
  v11 = sub_247DBE028(a1, a2, a3, a4);

  return v11;
}

uint64_t sub_247DBB6FC()
{
  v0 = sub_247DD23CC();
  __swift_allocate_value_buffer(v0, qword_27EE73FA0);
  v1 = __swift_project_value_buffer(v0, qword_27EE73FA0);
  if (qword_27EE73278 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27EE7B8C0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

Cosmo::CosmoSerialChannelHost::State_optional __swiftcall CosmoSerialChannelHost.State.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_247DD312C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t CosmoSerialChannelHost.State.rawValue.getter()
{
  if (*v0)
  {
    result = 0x6164696C61766E69;
  }

  else
  {
    result = 0x7964616572;
  }

  *v0;
  return result;
}

uint64_t sub_247DBB868@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_247DD312C();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_247DBB8C8@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_247D83A78;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_247D6ACFC(v4);
}

uint64_t sub_247DBB95C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_247D83A50;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  sub_247D6ACFC(v3);
  return sub_247D6A24C(v8);
}

void *CosmoSerialChannelHost.init(name:descriptor:queue:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = sub_247DBE028(a1, a2, a3, a4);

  return v5;
}

uint64_t sub_247DBBA68(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC5Cosmo22CosmoSerialChannelHost_listener);
  v2 = swift_allocObject();
  swift_weakInit();
  swift_beginAccess();
  v3 = v1[2];
  v4 = v1[3];
  v1[2] = sub_247DBE814;
  v1[3] = v2;

  sub_247D6A24C(v3);

  v5 = swift_allocObject();
  swift_weakInit();
  swift_beginAccess();
  v6 = v1[4];
  v7 = v1[5];
  v1[4] = sub_247DBE844;
  v1[5] = v5;

  sub_247D6A24C(v6);

  if (qword_27EE732B8 != -1)
  {
    swift_once();
  }

  v8 = sub_247DD23CC();
  __swift_project_value_buffer(v8, qword_27EE73FA0);

  v9 = sub_247DD23AC();
  v10 = sub_247DD2F2C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136315138;
    v13 = CosmoSerialChannelHost.description.getter();
    v15 = sub_247D72868(v13, v14, &v17);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_247D56000, v9, v10, "[Start] Listener starting, %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x24C1BAF60](v12, -1, -1);
    MEMORY[0x24C1BAF60](v11, -1, -1);
  }

  return sub_247D90EF8();
}

uint64_t sub_247DBBCB0(void *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_247DBC3F8(a1);
  }

  return result;
}

uint64_t sub_247DBBD30(uint64_t a1, uint64_t a2)
{
  v5 = sub_247DD2A0C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_247DD2A2C();
  v10 = *(v17 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v17);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *(v2 + 48);
  aBlock[4] = a1;
  v20 = v2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_247D598D4;
  aBlock[3] = a2;
  v14 = _Block_copy(aBlock);

  sub_247DD2A1C();
  v18 = MEMORY[0x277D84F90];
  sub_247D86968(&unk_27EE73AF0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE733C0, &qword_247DD83B0);
  sub_247D869B0(&qword_27EE73B00, &unk_27EE733C0, &qword_247DD83B0);
  sub_247DD2FFC();
  MEMORY[0x24C1BA270](0, v13, v9, v14);
  _Block_release(v14);
  (*(v6 + 8))(v9, v5);
  (*(v10 + 8))(v13, v17);
}

uint64_t sub_247DBBFC0(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = sub_247DD2ABC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v36[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *a1;
  v10 = v2[6];
  *v8 = v10;
  (*(v5 + 104))(v8, *MEMORY[0x277D85200], v4);
  v11 = v10;
  LOBYTE(v10) = sub_247DD2ADC();
  (*(v5 + 8))(v8, v4);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_17:
    swift_once();
LABEL_4:
    v12 = sub_247DD23CC();
    __swift_project_value_buffer(v12, qword_27EE73FA0);

    v13 = sub_247DD23AC();
    v14 = sub_247DD2F2C();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v36[0] = v16;
      *v15 = 136315394;
      HIBYTE(v35) = v9;
      v17 = sub_247DD2CFC();
      v19 = sub_247D72868(v17, v18, v36);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2080;
      v20 = CosmoSerialChannelHost.description.getter();
      v22 = sub_247D72868(v20, v21, v36);

      *(v15 + 14) = v22;
      _os_log_impl(&dword_247D56000, v13, v14, "Listener invalidated, state=%s %s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1BAF60](v16, -1, -1);
      MEMORY[0x24C1BAF60](v15, -1, -1);
    }

    result = swift_beginAccess();
    v24 = v2[2];
    if (v24)
    {
      v25 = v2[3];
      HIBYTE(v35) = 1;
LABEL_14:

      v24(&v35 + 7);
      return sub_247D6A24C(v24);
    }

    return result;
  }

  if (v9)
  {
    *(v2 + OBJC_IVAR____TtC5Cosmo22CosmoSerialChannelHost_ready) = 0;
    *(v2 + OBJC_IVAR____TtC5Cosmo22CosmoSerialChannelHost_terminated) = 1;
    if (qword_27EE732B8 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_17;
  }

  *(v2 + OBJC_IVAR____TtC5Cosmo22CosmoSerialChannelHost_ready) = 1;
  if (qword_27EE732B8 != -1)
  {
    swift_once();
  }

  v26 = sub_247DD23CC();
  __swift_project_value_buffer(v26, qword_27EE73FA0);

  v27 = sub_247DD23AC();
  v28 = sub_247DD2F2C();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v36[0] = v30;
    *v29 = 136315138;
    v31 = CosmoSerialChannelHost.description.getter();
    v33 = sub_247D72868(v31, v32, v36);

    *(v29 + 4) = v33;
    _os_log_impl(&dword_247D56000, v27, v28, "Listener ready, %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v30);
    MEMORY[0x24C1BAF60](v30, -1, -1);
    MEMORY[0x24C1BAF60](v29, -1, -1);
  }

  result = swift_beginAccess();
  v24 = v2[2];
  if (v24)
  {
    v34 = v2[3];
    HIBYTE(v35) = 0;
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_247DBC3F8(void *a1)
{
  v2 = v1;
  v4 = sub_247DD2ABC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v39[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(v2 + 48);
  *v8 = v9;
  (*(v5 + 104))(v8, *MEMORY[0x277D85200], v4);
  v10 = v9;
  LOBYTE(v9) = sub_247DD2ADC();
  (*(v5 + 8))(v8, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = OBJC_IVAR____TtC5Cosmo22CosmoSerialChannelHost_incomingConnection;
  if (*(v2 + OBJC_IVAR____TtC5Cosmo22CosmoSerialChannelHost_incomingConnection))
  {
    if (qword_27EE732B8 == -1)
    {
LABEL_4:
      v12 = sub_247DD23CC();
      __swift_project_value_buffer(v12, qword_27EE73FA0);

      v13 = sub_247DD23AC();
      v14 = sub_247DD2F2C();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v40[0] = v16;
        *v15 = 136315138;
        v17 = CosmoSerialChannelHost.description.getter();
        v19 = sub_247D72868(v17, v18, v40);

        *(v15 + 4) = v19;
        _os_log_impl(&dword_247D56000, v13, v14, "Ignoring incoming connection, %s", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v16);
        MEMORY[0x24C1BAF60](v16, -1, -1);
        MEMORY[0x24C1BAF60](v15, -1, -1);
      }

      return sub_247D8E4CC();
    }

LABEL_13:
    swift_once();
    goto LABEL_4;
  }

  v21 = *(v2 + OBJC_IVAR____TtC5Cosmo22CosmoSerialChannelHost_acceptedConnectionCount);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
    __break(1u);
    goto LABEL_15;
  }

  *(v2 + OBJC_IVAR____TtC5Cosmo22CosmoSerialChannelHost_acceptedConnectionCount) = v23;
  if (qword_27EE732B8 != -1)
  {
LABEL_15:
    swift_once();
  }

  v24 = sub_247DD23CC();
  __swift_project_value_buffer(v24, qword_27EE73FA0);

  v25 = sub_247DD23AC();
  v26 = sub_247DD2F2C();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v40[0] = v28;
    *v27 = 136315138;
    v29 = CosmoSerialChannelHost.description.getter();
    v31 = sub_247D72868(v29, v30, v40);

    *(v27 + 4) = v31;
    _os_log_impl(&dword_247D56000, v25, v26, "Received incoming channel, %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v28);
    MEMORY[0x24C1BAF60](v28, -1, -1);
    MEMORY[0x24C1BAF60](v27, -1, -1);
  }

  v32 = *(v2 + v11);
  *(v2 + v11) = a1;

  v33 = swift_allocObject();
  swift_weakInit();
  swift_beginAccess();
  v34 = a1[2];
  v35 = a1[3];
  a1[2] = sub_247DBE7B8;
  a1[3] = v33;

  sub_247D6A24C(v34);

  v36 = swift_allocObject();
  swift_weakInit();
  swift_beginAccess();
  v37 = a1[4];
  v38 = a1[5];
  a1[4] = sub_247DBE7E8;
  a1[5] = v36;

  sub_247D6A24C(v37);

  return sub_247D8BC28();
}

uint64_t sub_247DBC884(char *a1, uint64_t a2, void (*a3)(char *))
{
  v4 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = v4;
    a3(&v6);
  }

  return result;
}

uint64_t sub_247DBC8F8(unsigned int a1, uint64_t a2, unint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_247DBCD00(a1, a2, a3);
  }

  return result;
}

void sub_247DBC974(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = sub_247DD2ABC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *a1;
  v10 = *(v2 + 48);
  *v8 = v10;
  (*(v5 + 104))(v8, *MEMORY[0x277D85200], v4);
  v11 = v10;
  LOBYTE(v10) = sub_247DD2ADC();
  (*(v5 + 8))(v8, v4);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v9)
  {
    if (qword_27EE732B8 == -1)
    {
LABEL_4:
      v12 = sub_247DD23CC();
      __swift_project_value_buffer(v12, qword_27EE73FA0);

      v13 = sub_247DD23AC();
      v14 = sub_247DD2F2C();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v32 = v16;
        *v15 = 136315138;
        v17 = CosmoSerialChannelHost.description.getter();
        v19 = sub_247D72868(v17, v18, &v32);

        *(v15 + 4) = v19;
        _os_log_impl(&dword_247D56000, v13, v14, "Channel closed, %s", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v16);
        MEMORY[0x24C1BAF60](v16, -1, -1);
        MEMORY[0x24C1BAF60](v15, -1, -1);
      }

      v20 = OBJC_IVAR____TtC5Cosmo22CosmoSerialChannelHost_incomingConnection;
      if (*(v2 + OBJC_IVAR____TtC5Cosmo22CosmoSerialChannelHost_incomingConnection))
      {
        v21 = *(v2 + OBJC_IVAR____TtC5Cosmo22CosmoSerialChannelHost_incomingConnection);

        sub_247D8E4CC();

        v22 = *(v2 + v20);
      }

      *(v2 + v20) = 0;

      return;
    }

LABEL_15:
    swift_once();
    goto LABEL_4;
  }

  if (qword_27EE732B8 != -1)
  {
    swift_once();
  }

  v23 = sub_247DD23CC();
  __swift_project_value_buffer(v23, qword_27EE73FA0);

  v24 = sub_247DD23AC();
  v25 = sub_247DD2F2C();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v32 = v27;
    *v26 = 136315138;
    v28 = CosmoSerialChannelHost.description.getter();
    v30 = sub_247D72868(v28, v29, &v32);

    *(v26 + 4) = v30;
    _os_log_impl(&dword_247D56000, v24, v25, "Channel ready, %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v27);
    MEMORY[0x24C1BAF60](v27, -1, -1);
    MEMORY[0x24C1BAF60](v26, -1, -1);
  }
}

uint64_t sub_247DBCD00(unsigned int a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = sub_247DD2ABC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = (&v37[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v4 + 48);
  *v12 = v13;
  (*(v9 + 104))(v12, *MEMORY[0x277D85200], v8);
  v14 = v13;
  LOBYTE(v13) = sub_247DD2ADC();
  (*(v9 + 8))(v12, v8);
  if ((v13 & 1) == 0)
  {
    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_9;
  }

  v15 = OBJC_IVAR____TtC5Cosmo22CosmoSerialChannelHost_handlers;
  swift_beginAccess();
  v16 = *(v4 + v15);
  if (*(v16 + 16))
  {
    v17 = sub_247D94BE0(a1);
    if (v18)
    {
      v19 = *(v16 + 56) + 16 * v17;
      v21 = *v19;
      v20 = *(v19 + 8);
      if (a3 >> 60 == 15)
      {
        a2 = 0;
        v22 = 0xC000000000000000;
      }

      else
      {
        v22 = a3;
      }

      v23 = swift_allocObject();
      swift_weakInit();
      v24 = swift_allocObject();
      *(v24 + 16) = v23;
      *(v24 + 24) = a1;
      v38 = a2;
      v39 = v22;
      v25 = swift_allocObject();
      *(v25 + 16) = sub_247DBE698;
      *(v25 + 24) = v24;
      v37[0] = sub_247DBE6E0;
      v37[1] = v25;

      v21(&v38, v37);
    }
  }

  if (qword_27EE732B8 != -1)
  {
    goto LABEL_13;
  }

LABEL_9:
  v27 = sub_247DD23CC();
  __swift_project_value_buffer(v27, qword_27EE73FA0);

  v28 = sub_247DD23AC();
  v29 = sub_247DD2F0C();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v38 = v31;
    *v30 = 67109378;
    *(v30 + 4) = a1;
    *(v30 + 8) = 2080;
    v32 = CosmoSerialChannelHost.description.getter();
    v34 = sub_247D72868(v32, v33, &v38);

    *(v30 + 10) = v34;
    _os_log_impl(&dword_247D56000, v28, v29, "No handler registered for incoming messageType=%u, %s", v30, 0x12u);
    __swift_destroy_boxed_opaque_existential_0Tm(v31);
    MEMORY[0x24C1BAF60](v31, -1, -1);
    MEMORY[0x24C1BAF60](v30, -1, -1);
  }

  v38 = 0;
  v39 = 0xE000000000000000;
  sub_247DD304C();

  v38 = 0xD00000000000001BLL;
  v39 = 0x8000000247DDA2B0;
  LODWORD(v37[0]) = a1;
  v35 = sub_247DD321C();
  MEMORY[0x24C1BA0A0](v35);

  sub_247DBD8C0(v38, v39);
}

uint64_t sub_247DBD0F4(void *a1, uint64_t a2, unint64_t a3, char a4, uint64_t a5, int a6)
{
  v26 = a6;
  v10 = sub_247DD2A0C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_247DD2A2C();
  v27 = *(v15 - 8);
  v16 = *(v27 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v24 = *(result + 48);
    v20 = result;
    v21 = swift_allocObject();
    *(v21 + 16) = a1;
    *(v21 + 24) = a2;
    *(v21 + 32) = a3;
    v25 = v15;
    v22 = a4 & 1;
    *(v21 + 40) = a4 & 1;
    *(v21 + 48) = v20;
    *(v21 + 56) = v26;
    aBlock[4] = sub_247DBE774;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_247D598D4;
    aBlock[3] = &block_descriptor_7;
    v23 = _Block_copy(aBlock);
    sub_247DBE7A4(a1, a2, a3, v22);

    sub_247DD2A1C();
    v28 = MEMORY[0x277D84F90];
    sub_247D86968(&unk_27EE73AF0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE733C0, &qword_247DD83B0);
    sub_247D869B0(&qword_27EE73B00, &unk_27EE733C0, &qword_247DD83B0);
    sub_247DD2FFC();
    MEMORY[0x24C1BA270](0, v18, v14, v23);
    _Block_release(v23);
    (*(v11 + 8))(v14, v10);
    (*(v27 + 8))(v18, v25);
  }

  return result;
}

void sub_247DBD428(void *a1, uint64_t a2, unint64_t a3, char a4, uint64_t a5)
{
  if (a4)
  {
    if (qword_27EE732B8 != -1)
    {
      swift_once();
    }

    v8 = sub_247DD23CC();
    __swift_project_value_buffer(v8, qword_27EE73FA0);
    sub_247DBE7A4(a1, a2, a3, 1);

    v9 = sub_247DD23AC();
    v10 = sub_247DD2F2C();
    sub_247DBE760(a1, a2, a3, 1);

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v29 = v12;
      *v11 = 136315394;
      v13 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73C10, &qword_247DD4330);
      v14 = sub_247DD2CFC();
      v16 = sub_247D72868(v14, v15, &v29);

      *(v11 + 4) = v16;
      *(v11 + 12) = 2080;
      v17 = CosmoSerialChannelHost.description.getter();
      v19 = sub_247D72868(v17, v18, &v29);

      *(v11 + 14) = v19;
      _os_log_impl(&dword_247D56000, v9, v10, "Handler completed with error=%s, %s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1BAF60](v12, -1, -1);
      MEMORY[0x24C1BAF60](v11, -1, -1);
    }

    v29 = 0;
    v30 = 0xE000000000000000;
    sub_247DD304C();

    v29 = 0xD000000000000018;
    v30 = 0x8000000247DDA2D0;
    v20 = sub_247DD321C();
    MEMORY[0x24C1BA0A0](v20);

    MEMORY[0x24C1BA0A0](0x64656C69616620, 0xE700000000000000);
    sub_247DBD8C0(v29, v30);
  }

  else if (*(a5 + OBJC_IVAR____TtC5Cosmo22CosmoSerialChannelHost_incomingConnection))
  {
    sub_247DBE7A4(a1, a2, a3, 0);

    sub_247D8EB14(a2, a3, a1);

    sub_247DBE760(a1, a2, a3, 0);
  }

  else
  {
    sub_247D6A2E8(a2, a3);
    if (qword_27EE732B8 != -1)
    {
      swift_once();
    }

    v21 = sub_247DD23CC();
    __swift_project_value_buffer(v21, qword_27EE73FA0);

    oslog = sub_247DD23AC();
    v22 = sub_247DD2F0C();

    if (os_log_type_enabled(oslog, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v29 = v24;
      *v23 = 136315138;
      v25 = CosmoSerialChannelHost.description.getter();
      v27 = sub_247D72868(v25, v26, &v29);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_247D56000, oslog, v22, "No channel to write response on, %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v24);
      MEMORY[0x24C1BAF60](v24, -1, -1);
      MEMORY[0x24C1BAF60](v23, -1, -1);
      sub_247DBE760(a1, a2, a3, 0);
    }

    else
    {
      sub_247DBE760(a1, a2, a3, 0);
    }
  }
}

void sub_247DBD8C0(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_247DD2ABC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = (&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v3 + 48);
  *v10 = v11;
  (*(v7 + 104))(v10, *MEMORY[0x277D85200], v6);
  v12 = v11;
  LOBYTE(v11) = sub_247DD2ADC();
  (*(v7 + 8))(v10, v6);
  if (v11)
  {
    if (qword_27EE732B8 == -1)
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
  v13 = sub_247DD23CC();
  __swift_project_value_buffer(v13, qword_27EE73FA0);

  v14 = sub_247DD23AC();
  v15 = sub_247DD2F2C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v26 = v17;
    *v16 = 136315394;
    *(v16 + 4) = sub_247D72868(a1, a2, &v26);
    *(v16 + 12) = 2080;
    v18 = CosmoSerialChannelHost.description.getter();
    v20 = sub_247D72868(v18, v19, &v26);

    *(v16 + 14) = v20;
    _os_log_impl(&dword_247D56000, v14, v15, "[Close] Closing, reason='%s' %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1BAF60](v17, -1, -1);
    MEMORY[0x24C1BAF60](v16, -1, -1);
  }

  v21 = OBJC_IVAR____TtC5Cosmo22CosmoSerialChannelHost_incomingConnection;
  if (*(v3 + OBJC_IVAR____TtC5Cosmo22CosmoSerialChannelHost_incomingConnection))
  {
    v22 = *(v3 + OBJC_IVAR____TtC5Cosmo22CosmoSerialChannelHost_incomingConnection);

    sub_247D8E4CC();

    v23 = *(v3 + v21);
  }

  *(v3 + v21) = 0;

  v24 = *(v3 + OBJC_IVAR____TtC5Cosmo22CosmoSerialChannelHost_listener);
  sub_247D93540();
}

uint64_t CosmoSerialChannelHost.deinit()
{
  v1 = *(v0 + 24);
  sub_247D6A24C(*(v0 + 16));
  v2 = *(v0 + 40);

  sub_247D8690C(v0 + OBJC_IVAR____TtC5Cosmo22CosmoSerialChannelHost_descriptor);
  v3 = *(v0 + OBJC_IVAR____TtC5Cosmo22CosmoSerialChannelHost_listener);

  v4 = *(v0 + OBJC_IVAR____TtC5Cosmo22CosmoSerialChannelHost_incomingConnection);

  v5 = *(v0 + OBJC_IVAR____TtC5Cosmo22CosmoSerialChannelHost_handlers);

  return v0;
}

uint64_t CosmoSerialChannelHost.__deallocating_deinit()
{
  v1 = *(v0 + 24);
  sub_247D6A24C(*(v0 + 16));
  v2 = *(v0 + 40);

  sub_247D8690C(v0 + OBJC_IVAR____TtC5Cosmo22CosmoSerialChannelHost_descriptor);
  v3 = *(v0 + OBJC_IVAR____TtC5Cosmo22CosmoSerialChannelHost_listener);

  v4 = *(v0 + OBJC_IVAR____TtC5Cosmo22CosmoSerialChannelHost_incomingConnection);

  v5 = *(v0 + OBJC_IVAR____TtC5Cosmo22CosmoSerialChannelHost_handlers);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v6, v7);
}

uint64_t CosmoSerialChannelHost.description.getter()
{
  v18[0] = 0x3D656D616ELL;
  v18[1] = 0xE500000000000000;
  v1 = 0xE500000000000000;
  MEMORY[0x24C1BA0A0](*(v0 + 32), *(v0 + 40));
  strcpy(v18, "descriptor=");
  HIDWORD(v18[1]) = -352321536;
  v2 = NetworkDescriptor.description.getter();
  MEMORY[0x24C1BA0A0](v2);

  v16 = v18[0];
  v13 = v18[1];
  sub_247DD304C();

  v18[0] = 0x632D657669746361;
  v18[1] = 0xEF3D6C656E6E6168;
  v3 = *(v0 + OBJC_IVAR____TtC5Cosmo22CosmoSerialChannelHost_incomingConnection);
  if (v3)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (v3)
  {
    v1 = 0xE400000000000000;
  }

  MEMORY[0x24C1BA0A0](v4, v1);

  v5 = v18[1];
  v15 = v18[0];
  sub_247DD304C();

  v18[0] = 0xD000000000000017;
  v18[1] = 0x8000000247DDA1F0;
  v17 = *(v0 + OBJC_IVAR____TtC5Cosmo22CosmoSerialChannelHost_acceptedConnectionCount);
  v6 = sub_247DD321C();
  MEMORY[0x24C1BA0A0](v6);

  strcpy(v18, "isReady=");
  BYTE1(v18[1]) = 0;
  WORD1(v18[1]) = 0;
  HIDWORD(v18[1]) = -402653184;
  if (*(v0 + OBJC_IVAR____TtC5Cosmo22CosmoSerialChannelHost_ready))
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC5Cosmo22CosmoSerialChannelHost_ready))
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x24C1BA0A0](v7, v8);

  v9 = v18[1];
  v14 = v18[0];
  strcpy(v18, "isTerminated=");
  HIWORD(v18[1]) = -4864;
  if (*(v0 + OBJC_IVAR____TtC5Cosmo22CosmoSerialChannelHost_terminated))
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC5Cosmo22CosmoSerialChannelHost_terminated))
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  MEMORY[0x24C1BA0A0](v10, v11);

  sub_247DD304C();

  MEMORY[0x24C1BA0A0](32, 0xE100000000000000);
  MEMORY[0x24C1BA0A0](v16, v13);

  MEMORY[0x24C1BA0A0](32, 0xE100000000000000);
  MEMORY[0x24C1BA0A0](v15, v5);

  MEMORY[0x24C1BA0A0](32, 0xE100000000000000);
  MEMORY[0x24C1BA0A0](0xD000000000000017, 0x8000000247DDA1F0);

  MEMORY[0x24C1BA0A0](32, 0xE100000000000000);
  MEMORY[0x24C1BA0A0](v14, v9);

  MEMORY[0x24C1BA0A0](32, 0xE100000000000000);
  MEMORY[0x24C1BA0A0](v18[0], v18[1]);

  return 0x3D656D616ELL;
}

void *sub_247DBE028(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v10 = type metadata accessor for NetworkDescriptor();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_247DD2F6C();
  v33 = *(v14 - 8);
  v34 = v14;
  v15 = *(v33 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_247DD2F3C();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v20 = sub_247DD2A2C();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v4[2] = 0;
  v4[3] = 0;
  *(v4 + OBJC_IVAR____TtC5Cosmo22CosmoSerialChannelHost_incomingConnection) = 0;
  *(v4 + OBJC_IVAR____TtC5Cosmo22CosmoSerialChannelHost_handlers) = MEMORY[0x277D84F98];
  *(v4 + OBJC_IVAR____TtC5Cosmo22CosmoSerialChannelHost_ready) = 0;
  *(v4 + OBJC_IVAR____TtC5Cosmo22CosmoSerialChannelHost_terminated) = 0;
  *(v4 + OBJC_IVAR____TtC5Cosmo22CosmoSerialChannelHost_acceptedConnectionCount) = 0;
  v4[4] = a1;
  v4[5] = a2;
  v22 = a4;
  if (a4)
  {
    v23 = a4;
  }

  else
  {
    v24 = sub_247D6A0F4();
    v32[1] = &OBJC_IVAR____TtC5Cosmo22CosmoSerialChannelHost_listenerStateChangedCallback;
    v32[2] = v24;
    sub_247DD2A1C();
    v35 = MEMORY[0x277D84F90];
    v32[0] = sub_247D86968(&unk_27EE73390, MEMORY[0x277D85230]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE739B0, &unk_247DD3F70);
    sub_247D869B0(&qword_27EE733A0, &unk_27EE739B0, &unk_247DD3F70);
    sub_247DD2FFC();
    (*(v33 + 104))(v17, *MEMORY[0x277D85260], v34);
    v23 = sub_247DD2F8C();
  }

  v5[6] = v23;
  sub_247D86A04(a3, v5 + OBJC_IVAR____TtC5Cosmo22CosmoSerialChannelHost_descriptor);
  sub_247D86A04(a3, v13);
  v25 = type metadata accessor for CosmoListener();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  v28 = swift_allocObject();
  v28[1] = 0u;
  v28[2] = 0u;
  v28[3] = 0u;
  *(v28 + OBJC_IVAR____TtC5Cosmo13CosmoListener_listener) = 0;
  *(v28 + OBJC_IVAR____TtC5Cosmo13CosmoListener_restarting) = 0;
  sub_247D86A04(v13, v28 + OBJC_IVAR____TtC5Cosmo13CosmoListener_descriptor);
  v29 = v22;
  v30 = v23;
  sub_247D8690C(v13);
  *(v28 + OBJC_IVAR____TtC5Cosmo13CosmoListener_queue) = v30;
  sub_247D8690C(a3);
  *(v5 + OBJC_IVAR____TtC5Cosmo22CosmoSerialChannelHost_listener) = v28;
  return v5;
}

unint64_t sub_247DBE3E0()
{
  result = qword_27EE73FE0;
  if (!qword_27EE73FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE73FE0);
  }

  return result;
}

uint64_t type metadata accessor for CosmoSerialChannelHost()
{
  result = qword_27EE73FE8;
  if (!qword_27EE73FE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_247DBE4A0()
{
  result = type metadata accessor for NetworkDescriptor();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_247DBE628()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_247DBE660()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 28, 7);
}

uint64_t sub_247DBE6A8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_247DBE6E0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24));
}

uint64_t sub_247DBE718()
{
  sub_247DBE760(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));
  v1 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 60, 7);
}

void sub_247DBE760(void *a1, uint64_t a2, unint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
    sub_247D6A1F8(a2, a3);
  }
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_247DBE7A4(void *a1, uint64_t a2, unint64_t a3, char a4)
{
  if (a4)
  {
    return a1;
  }

  else
  {
    return sub_247D6A2E8(a2, a3);
  }
}

uint64_t sub_247DBE864()
{
  result = sub_247DD321C();
  qword_27EE73FF8 = result;
  unk_27EE74000 = v1;
  return result;
}

uint64_t static Constants.Test.PinCode.getter@<X0>(void *a1@<X8>)
{
  if (qword_27EE732C0 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = unk_27EE74000;
  *a1 = qword_27EE73FF8;
  a1[1] = v2;
}

uint64_t sub_247DBE928()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE733A8, &unk_247DD61B0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v8 - v2;
  v4 = sub_247DD225C();
  __swift_allocate_value_buffer(v4, qword_27EE74008);
  v5 = __swift_project_value_buffer(v4, qword_27EE74008);
  sub_247DD21FC();
  v6 = *(v4 - 8);
  result = (*(v6 + 48))(v3, 1, v4);
  if (result != 1)
  {
    return (*(v6 + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

uint64_t static Constants.Test.serviceUUID.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EE732C8 != -1)
  {
    swift_once();
  }

  v2 = sub_247DD225C();
  v3 = __swift_project_value_buffer(v2, qword_27EE74008);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_247DBEB80(uint64_t a1, uint64_t *a2, unint64_t *a3)
{
  result = sub_247DD210C();
  if (v6 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    *a2 = result;
    *a3 = v6;
  }

  return result;
}

uint64_t sub_247DBEC14(uint64_t a1, uint64_t *a2, unint64_t *a3)
{
  result = sub_247DD210C();
  if (v6 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    *a2 = result;
    *a3 = v6;
  }

  return result;
}

uint64_t sub_247DBEC98(void *a1, uint64_t *a2, unint64_t *a3)
{
  if (*a1 != -1)
  {
    v5 = a2;
    v6 = a3;
    swift_once();
    a2 = v5;
    a3 = v6;
  }

  v3 = *a2;
  sub_247D6A2E8(*a2, *a3);
  return v3;
}

uint64_t sub_247DBECF8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73988, &qword_247DD5278);
  __swift_allocate_value_buffer(v0, qword_27EE74060);
  __swift_project_value_buffer(v0, qword_27EE74060);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE74098, &qword_247DD6790);
  return sub_247DD237C();
}

uint64_t static Constants.Parsing.outNameRegex.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EE732F0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73988, &qword_247DD5278);
  v3 = __swift_project_value_buffer(v2, qword_27EE74060);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_247DBEE3C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73970, &qword_247DD5260);
  __swift_allocate_value_buffer(v0, qword_27EE74078);
  __swift_project_value_buffer(v0, qword_27EE74078);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE74090, &qword_247DD6788);
  return sub_247DD237C();
}

uint64_t static Constants.Parsing.inNameRegex.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EE732F8 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73970, &qword_247DD5260);
  v3 = __swift_project_value_buffer(v2, qword_27EE74078);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_247DBF050()
{
  result = sub_247D97644(0xD00000000000001CLL, 0x8000000247DDA530);
  qword_27EE7B9C0 = result;
  *algn_27EE7B9C8 = v1;
  return result;
}

uint64_t sub_247DBF08C()
{
  result = sub_247D97644(0x746E65696C63, 0xE600000000000000);
  qword_27EE7B9D0 = result;
  *algn_27EE7B9D8 = v1;
  return result;
}

uint64_t sub_247DBF0C0()
{
  result = sub_247D97644(0x726576726573, 0xE600000000000000);
  qword_27EE7B9E0 = result;
  *algn_27EE7B9E8 = v1;
  return result;
}

uint64_t sub_247DBF0F4()
{
  result = sub_247D97644(0x69746E6568747561, 0xED0000726F746163);
  qword_27EE7B9F0 = result;
  *algn_27EE7B9F8 = v1;
  return result;
}

uint64_t sub_247DBF138()
{
  result = sub_247D97644(7955819, 0xE300000000000000);
  qword_27EE7BA00 = result;
  *algn_27EE7BA08 = v1;
  return result;
}

uint64_t sub_247DBF168()
{
  result = sub_247D97644(0x65636E6F6ELL, 0xE500000000000000);
  qword_27EE7BA10 = result;
  *algn_27EE7BA18 = v1;
  return result;
}

uint64_t sub_247DBF19C(uint64_t a1, uint64_t a2)
{
  v39 = a1;
  v40 = a2;
  v3 = sub_247DD2BEC();
  v37 = *(v3 - 8);
  v38 = v3;
  v4 = *(v37 + 64);
  MEMORY[0x28223BE20](v3);
  v43 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE740F0, &qword_247DD67C8);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v42 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v36 - v10;
  v12 = sub_247DD2BBC();
  v44 = *(v12 - 8);
  v45 = v12;
  v13 = *(v44 + 64);
  MEMORY[0x28223BE20](v12);
  v41 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE740F8, &unk_247DD67D0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v36 - v17;
  v19 = sub_247DD2B6C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = OBJC_IVAR____TtC5Cosmo10Spake2Peer_derivedSymmetricKey;
  swift_beginAccess();
  sub_247D6BA6C(v2 + v24, v18, &qword_27EE740F8, &unk_247DD67D0);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    v25 = &qword_27EE740F8;
    v26 = &unk_247DD67D0;
    v27 = v18;
LABEL_5:
    sub_247D6BAD4(v27, v25, v26);
    return 0;
  }

  (*(v20 + 32))(v23, v18, v19);
  v28 = OBJC_IVAR____TtC5Cosmo10Spake2Peer_derivedNonce;
  swift_beginAccess();
  sub_247D6BA6C(v2 + v28, v11, &qword_27EE740F0, &qword_247DD67C8);
  v30 = v44;
  v29 = v45;
  if ((*(v44 + 48))(v11, 1, v45) == 1)
  {
    (*(v20 + 8))(v23, v19);
    v25 = &qword_27EE740F0;
    v26 = &qword_247DD67C8;
    v27 = v11;
    goto LABEL_5;
  }

  v32 = v41;
  (*(v30 + 32))(v41, v11, v29);
  v46 = v39;
  v47 = v40;
  v33 = v42;
  (*(v30 + 16))(v42, v32, v29);
  (*(v30 + 56))(v33, 0, 1, v29);
  sub_247D8A434();
  v34 = v43;
  v35 = v48;
  sub_247DD2B9C();
  sub_247D6BAD4(v33, &qword_27EE740F0, &qword_247DD67C8);
  if (v35)
  {
    (*(v30 + 8))(v32, v29);
    return (*(v20 + 8))(v23, v19);
  }

  else
  {
    v48 = sub_247DD2BCC();
    (*(v37 + 8))(v34, v38);
    (*(v30 + 8))(v32, v29);
    (*(v20 + 8))(v23, v19);
    return v48;
  }
}

uint64_t sub_247DBF6AC(uint64_t a1, unint64_t a2)
{
  v34 = a1;
  v35 = a2;
  v3 = sub_247DD2BEC();
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x28223BE20](v3);
  v36 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE740F0, &qword_247DD67C8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE740F8, &unk_247DD67D0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v31 - v12;
  v14 = sub_247DD2B6C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC5Cosmo10Spake2Peer_derivedSymmetricKey;
  swift_beginAccess();
  sub_247D6BA6C(v2 + v19, v13, &qword_27EE740F8, &unk_247DD67D0);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    v20 = &qword_27EE740F8;
    v21 = &unk_247DD67D0;
    v22 = v13;
LABEL_5:
    sub_247D6BAD4(v22, v20, v21);
    return 0;
  }

  (*(v15 + 32))(v18, v13, v14);
  v23 = OBJC_IVAR____TtC5Cosmo10Spake2Peer_derivedNonce;
  swift_beginAccess();
  sub_247D6BA6C(v2 + v23, v9, &qword_27EE740F0, &qword_247DD67C8);
  v24 = sub_247DD2BBC();
  if ((*(*(v24 - 8) + 48))(v9, 1, v24) == 1)
  {
    (*(v15 + 8))(v18, v14);
    v20 = &qword_27EE740F0;
    v21 = &qword_247DD67C8;
    v22 = v9;
    goto LABEL_5;
  }

  sub_247D6BAD4(v9, &qword_27EE740F0, &qword_247DD67C8);
  v27 = v34;
  v26 = v35;
  sub_247D6A2E8(v34, v35);
  v28 = v36;
  v29 = v37;
  sub_247DBFAB0(v27, v26);
  if (v29)
  {
    return (*(v15 + 8))(v18, v14);
  }

  v30 = sub_247DD2B8C();
  (*(v32 + 8))(v28, v33);
  (*(v15 + 8))(v18, v14);
  return v30;
}

uint64_t sub_247DBFAB0(uint64_t a1, unint64_t a2)
{
  v30[5] = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_8;
    }

    v4 = *(a1 + 16);
    v3 = *(a1 + 24);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      if (v6 < 28)
      {
        goto LABEL_8;
      }

LABEL_11:
      v30[3] = MEMORY[0x277CC9318];
      v30[4] = MEMORY[0x277CC9300];
      v30[0] = a1;
      v30[1] = a2;
      v10 = __swift_project_boxed_opaque_existential_1(v30, MEMORY[0x277CC9318]);
      v11 = *v10;
      v12 = v10[1];
      v13 = v12 >> 62;
      if ((v12 >> 62) > 1)
      {
        if (v13 != 2)
        {
          memset(v28, 0, 14);
          v15 = v28;
          v14 = v28;
          goto LABEL_33;
        }

        v16 = *(v11 + 16);
        v17 = *(v11 + 24);
        v18 = sub_247DD1FFC();
        if (v18)
        {
          v19 = sub_247DD202C();
          v11 = v16 - v19;
          if (__OFSUB__(v16, v19))
          {
LABEL_38:
            __break(1u);
            goto LABEL_39;
          }

          v18 += v11;
        }

        v5 = __OFSUB__(v17, v16);
        v20 = v17 - v16;
        if (!v5)
        {
          goto LABEL_25;
        }

        __break(1u);
      }

      else if (!v13)
      {
        v28[0] = *v10;
        LOWORD(v28[1]) = v12;
        BYTE2(v28[1]) = BYTE2(v12);
        BYTE3(v28[1]) = BYTE3(v12);
        BYTE4(v28[1]) = BYTE4(v12);
        BYTE5(v28[1]) = BYTE5(v12);
        v14 = v28 + BYTE6(v12);
        v15 = v28;
LABEL_33:
        sub_247D98CB0(v15, v14, &v29);
        __swift_destroy_boxed_opaque_existential_0Tm(v30);
        result = sub_247DD2BDC();
        goto LABEL_34;
      }

      v21 = v11;
      v22 = v11 >> 32;
      v20 = v22 - v21;
      if (v22 >= v21)
      {
        v18 = sub_247DD1FFC();
        if (!v18)
        {
LABEL_25:
          v24 = sub_247DD201C();
          if (v24 >= v20)
          {
            v25 = v20;
          }

          else
          {
            v25 = v24;
          }

          v26 = (v25 + v18);
          if (v18)
          {
            v14 = v26;
          }

          else
          {
            v14 = 0;
          }

          v15 = v18;
          goto LABEL_33;
        }

        v23 = sub_247DD202C();
        if (!__OFSUB__(v21, v23))
        {
          v18 += v21 - v23;
          goto LABEL_25;
        }

LABEL_39:
        __break(1u);
      }

LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v2)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 < 28)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }

    goto LABEL_36;
  }

  if (BYTE6(a2) >= 0x1CuLL)
  {
    goto LABEL_11;
  }

LABEL_8:
  sub_247D6A1F8(a1, a2);
  v7 = sub_247DD2AEC();
  sub_247DC2248(&qword_27EE74100, MEMORY[0x277CC51E8]);
  swift_allocError();
  (*(*(v7 - 8) + 104))(v8, *MEMORY[0x277CC51E0], v7);
  result = swift_willThrow();
LABEL_34:
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_247DBFDC0()
{
  sub_247D6BAD4(v0 + OBJC_IVAR____TtC5Cosmo10Spake2Peer_derivedSymmetricKey, &qword_27EE740F8, &unk_247DD67D0);
  sub_247D6BAD4(v0 + OBJC_IVAR____TtC5Cosmo10Spake2Peer_derivedNonce, &qword_27EE740F0, &qword_247DD67C8);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_247DBFE7C()
{
  sub_247DBFF80(319, &qword_27EE740B0, MEMORY[0x277CC5330]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_247DBFF80(319, &qword_27EE740B8, MEMORY[0x277CC5408]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_247DBFF80(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_247DD2F9C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_247DBFFD4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v33 = sub_247DD22BC();
  v6 = *(v33 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v33);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_247DD235C();
  v31 = *(v10 - 8);
  v32 = v10;
  v11 = *(v31 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = 0x3D74706D65747461;
  v40 = 0xE800000000000000;
  v38 = a3;
  v14 = sub_247DD321C();
  MEMORY[0x24C1BA0A0](v14);

  v15 = sub_247D97644(v39, v40);
  v17 = v16;
  v35 = a1;
  sub_247D6A2E8(a1, a2);
  if (qword_27EE73300 != -1)
  {
    swift_once();
  }

  v34 = v13;
  sub_247D6A2E8(qword_27EE7B9C0, *algn_27EE7B9C8);
  v37 = v15;
  sub_247D6A2E8(v15, v17);
  if (qword_27EE73310 != -1)
  {
    swift_once();
  }

  v18 = a2;
  sub_247D6A2E8(qword_27EE7B9E0, *algn_27EE7B9E8);
  if (qword_27EE73308 != -1)
  {
    swift_once();
  }

  v19 = qword_27EE7B9D0;
  v20 = *algn_27EE7B9D8;
  (*(v6 + 104))(v9, *MEMORY[0x277D02FC0], v33);
  sub_247D6A2E8(v19, v20);
  v22 = v34;
  v21 = v35;
  v23 = v37;
  sub_247DD233C();
  sub_247D6A1F8(v21, v18);
  sub_247D6A1F8(v23, v17);
  v24 = v36;
  (*(v31 + 32))(v36 + OBJC_IVAR____TtC5Cosmo14Spake2Verifier_verifier, v22, v32);
  v25 = OBJC_IVAR____TtC5Cosmo10Spake2Peer_derivedSymmetricKey;
  v26 = sub_247DD2B6C();
  (*(*(v26 - 8) + 56))(v24 + v25, 1, 1, v26);
  v27 = OBJC_IVAR____TtC5Cosmo10Spake2Peer_derivedNonce;
  v28 = sub_247DD2BBC();
  (*(*(v28 - 8) + 56))(v24 + v27, 1, 1, v28);
  return v24;
}

uint64_t sub_247DC0588(uint64_t a1, char *a2)
{
  v75 = a1;
  v76 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE740F0, &qword_247DD67C8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v68 = &v58 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE740F8, &unk_247DD67D0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v66 = &v58 - v8;
  v70 = sub_247DD2BBC();
  v67 = *(v70 - 8);
  v9 = *(v67 + 64);
  v10 = MEMORY[0x28223BE20](v70);
  v74 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v69 = &v58 - v12;
  v71 = sub_247DD2B6C();
  v73 = *(v71 - 8);
  v13 = *(v73 + 64);
  v14 = MEMORY[0x28223BE20](v71);
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v58 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v58 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v58 - v23;
  v25 = sub_247DD22AC();
  v72 = *(v25 - 8);
  v26 = *(v72 + 64);
  MEMORY[0x28223BE20](v25);
  v28 = &v58 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v29 = v81;
  sub_247DD231C();
  result = swift_endAccess();
  if (!v29)
  {
    v81 = 0;
    v60 = v2;
    v64 = v16;
    v75 = v25;
    v76 = v28;
    v59 = v24;
    v65 = v19;
    if (qword_27EE73310 != -1)
    {
      swift_once();
    }

    v31 = qword_27EE7B9E0;
    v62 = *algn_27EE7B9E8;
    v32 = v81;
    sub_247DD229C();
    v81 = v32;
    v63 = v77;
    sub_247D6A2E8(v77, *(&v77 + 1));
    sub_247DD2B5C();
    if (qword_27EE73320 != -1)
    {
      swift_once();
    }

    v77 = xmmword_27EE7BA00;
    sub_247D6A2E8(xmmword_27EE7BA00, *(&xmmword_27EE7BA00 + 1));
    v33 = sub_247DD2C1C();
    sub_247DC2248(&qword_27EE73AC0, MEMORY[0x277CC5540]);
    sub_247D8A434();
    v34 = MEMORY[0x277CC9318];
    v61 = v33;
    sub_247DD2BFC();
    sub_247D6A1F8(v77, *(&v77 + 1));
    if (qword_27EE73328 != -1)
    {
      swift_once();
    }

    v35 = xmmword_27EE7BA10;
    v36 = v62;
    *&v80 = v31;
    *(&v80 + 1) = v62;
    v78 = v34;
    v79 = MEMORY[0x277CC9300];
    v77 = xmmword_27EE7BA10;
    v37 = __swift_project_boxed_opaque_existential_1(&v77, v34);
    v39 = *v37;
    v38 = v37[1];
    sub_247D6A2E8(v31, v36);
    sub_247D6A2E8(v35, *(&v35 + 1));
    v40 = v81;
    sub_247DC1E5C(v39, v38);
    __swift_destroy_boxed_opaque_existential_0Tm(&v77);
    v77 = v80;
    v41 = v64;
    sub_247DD2BFC();
    sub_247D6A1F8(v77, *(&v77 + 1));
    sub_247DD2B4C();
    v42 = v73;
    v43 = *(v73 + 8);
    v44 = v41;
    v45 = v71;
    v43(v44, v71);
    v46 = v74;
    sub_247DD2BAC();
    v81 = v40;
    sub_247D6A1F8(v63, *(&v63 + 1));
    if (v40)
    {
      v43(v65, v45);
      v43(v22, v45);
      return (*(v72 + 8))(v76, v75);
    }

    else
    {
      v43(v22, v45);
      (*(v72 + 8))(v76, v75);
      v47 = v46;
      v48 = *(v42 + 32);
      v49 = v59;
      v48(v59, v65, v45);
      v50 = v67;
      v51 = *(v67 + 32);
      v51(v69, v47, v70);
      v52 = v66;
      v48(v66, v49, v45);
      (*(v42 + 56))(v52, 0, 1, v45);
      v53 = OBJC_IVAR____TtC5Cosmo10Spake2Peer_derivedSymmetricKey;
      v54 = v60;
      swift_beginAccess();
      sub_247D6B4B4(v52, v54 + v53, &qword_27EE740F8, &unk_247DD67D0);
      swift_endAccess();
      v55 = v68;
      v56 = v70;
      v51(v68, v69, v70);
      (*(v50 + 56))(v55, 0, 1, v56);
      v57 = OBJC_IVAR____TtC5Cosmo10Spake2Peer_derivedNonce;
      swift_beginAccess();
      sub_247D6B4B4(v55, v54 + v57, &qword_27EE740F0, &qword_247DD67C8);
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_247DC0E24(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v33 = sub_247DD22BC();
  v6 = *(v33 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v33);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_247DD230C();
  v31 = *(v10 - 8);
  v32 = v10;
  v11 = *(v31 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = 0x3D74706D65747461;
  v40 = 0xE800000000000000;
  v38 = a3;
  v14 = sub_247DD321C();
  MEMORY[0x24C1BA0A0](v14);

  v15 = sub_247D97644(v39, v40);
  v17 = v16;
  v35 = a1;
  sub_247D6A2E8(a1, a2);
  if (qword_27EE73300 != -1)
  {
    swift_once();
  }

  v34 = v13;
  sub_247D6A2E8(qword_27EE7B9C0, *algn_27EE7B9C8);
  v37 = v15;
  sub_247D6A2E8(v15, v17);
  if (qword_27EE73310 != -1)
  {
    swift_once();
  }

  v18 = a2;
  sub_247D6A2E8(qword_27EE7B9E0, *algn_27EE7B9E8);
  if (qword_27EE73308 != -1)
  {
    swift_once();
  }

  v19 = qword_27EE7B9D0;
  v20 = *algn_27EE7B9D8;
  (*(v6 + 104))(v9, *MEMORY[0x277D02FC0], v33);
  sub_247D6A2E8(v19, v20);
  v22 = v34;
  v21 = v35;
  v23 = v37;
  sub_247DD22EC();
  sub_247D6A1F8(v21, v18);
  sub_247D6A1F8(v23, v17);
  v24 = v36;
  (*(v31 + 32))(v36 + OBJC_IVAR____TtC5Cosmo12Spake2Prover_prover, v22, v32);
  v25 = OBJC_IVAR____TtC5Cosmo10Spake2Peer_derivedSymmetricKey;
  v26 = sub_247DD2B6C();
  (*(*(v26 - 8) + 56))(v24 + v25, 1, 1, v26);
  v27 = OBJC_IVAR____TtC5Cosmo10Spake2Peer_derivedNonce;
  v28 = sub_247DD2BBC();
  (*(*(v28 - 8) + 56))(v24 + v27, 1, 1, v28);
  return v24;
}

uint64_t sub_247DC13D8(uint64_t a1, char *a2)
{
  v75 = a1;
  v76 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE740F0, &qword_247DD67C8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v68 = &v58 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE740F8, &unk_247DD67D0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v66 = &v58 - v8;
  v70 = sub_247DD2BBC();
  v67 = *(v70 - 8);
  v9 = *(v67 + 64);
  v10 = MEMORY[0x28223BE20](v70);
  v74 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v69 = &v58 - v12;
  v71 = sub_247DD2B6C();
  v73 = *(v71 - 8);
  v13 = *(v73 + 64);
  v14 = MEMORY[0x28223BE20](v71);
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v58 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v58 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v58 - v23;
  v25 = sub_247DD22AC();
  v72 = *(v25 - 8);
  v26 = *(v72 + 64);
  MEMORY[0x28223BE20](v25);
  v28 = &v58 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v29 = v81;
  sub_247DD22CC();
  result = swift_endAccess();
  if (!v29)
  {
    v81 = 0;
    v60 = v2;
    v64 = v16;
    v75 = v25;
    v76 = v28;
    v59 = v24;
    v65 = v19;
    if (qword_27EE73308 != -1)
    {
      swift_once();
    }

    v31 = qword_27EE7B9D0;
    v62 = *algn_27EE7B9D8;
    v32 = v81;
    sub_247DD229C();
    v81 = v32;
    v63 = v77;
    sub_247D6A2E8(v77, *(&v77 + 1));
    sub_247DD2B5C();
    if (qword_27EE73320 != -1)
    {
      swift_once();
    }

    v77 = xmmword_27EE7BA00;
    sub_247D6A2E8(xmmword_27EE7BA00, *(&xmmword_27EE7BA00 + 1));
    v33 = sub_247DD2C1C();
    sub_247DC2248(&qword_27EE73AC0, MEMORY[0x277CC5540]);
    sub_247D8A434();
    v34 = MEMORY[0x277CC9318];
    v61 = v33;
    sub_247DD2BFC();
    sub_247D6A1F8(v77, *(&v77 + 1));
    if (qword_27EE73328 != -1)
    {
      swift_once();
    }

    v35 = xmmword_27EE7BA10;
    v36 = v62;
    *&v80 = v31;
    *(&v80 + 1) = v62;
    v78 = v34;
    v79 = MEMORY[0x277CC9300];
    v77 = xmmword_27EE7BA10;
    v37 = __swift_project_boxed_opaque_existential_1(&v77, v34);
    v39 = *v37;
    v38 = v37[1];
    sub_247D6A2E8(v31, v36);
    sub_247D6A2E8(v35, *(&v35 + 1));
    v40 = v81;
    sub_247DC1E5C(v39, v38);
    __swift_destroy_boxed_opaque_existential_0Tm(&v77);
    v77 = v80;
    v41 = v64;
    sub_247DD2BFC();
    sub_247D6A1F8(v77, *(&v77 + 1));
    sub_247DD2B4C();
    v42 = v73;
    v43 = *(v73 + 8);
    v44 = v41;
    v45 = v71;
    v43(v44, v71);
    v46 = v74;
    sub_247DD2BAC();
    v81 = v40;
    sub_247D6A1F8(v63, *(&v63 + 1));
    if (v40)
    {
      v43(v65, v45);
      v43(v22, v45);
      return (*(v72 + 8))(v76, v75);
    }

    else
    {
      v43(v22, v45);
      (*(v72 + 8))(v76, v75);
      v47 = v46;
      v48 = *(v42 + 32);
      v49 = v59;
      v48(v59, v65, v45);
      v50 = v67;
      v51 = *(v67 + 32);
      v51(v69, v47, v70);
      v52 = v66;
      v48(v66, v49, v45);
      (*(v42 + 56))(v52, 0, 1, v45);
      v53 = OBJC_IVAR____TtC5Cosmo10Spake2Peer_derivedSymmetricKey;
      v54 = v60;
      swift_beginAccess();
      sub_247D6B4B4(v52, v54 + v53, &qword_27EE740F8, &unk_247DD67D0);
      swift_endAccess();
      v55 = v68;
      v56 = v70;
      v51(v68, v69, v70);
      (*(v50 + 56))(v55, 0, 1, v56);
      v57 = OBJC_IVAR____TtC5Cosmo10Spake2Peer_derivedNonce;
      swift_beginAccess();
      sub_247D6B4B4(v55, v54 + v57, &qword_27EE740F0, &qword_247DD67C8);
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_247DC1C14(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = a2(0);
  v5 = *(*(v4 - 8) + 8);

  return v5(v2 + v3, v4);
}

uint64_t sub_247DC1C9C(uint64_t *a1, uint64_t (*a2)(void))
{
  sub_247D6BAD4(v2 + OBJC_IVAR____TtC5Cosmo10Spake2Peer_derivedSymmetricKey, &qword_27EE740F8, &unk_247DD67D0);
  sub_247D6BAD4(v2 + OBJC_IVAR____TtC5Cosmo10Spake2Peer_derivedNonce, &qword_27EE740F0, &qword_247DD67C8);
  v5 = *a1;
  v6 = a2(0);
  (*(*(v6 - 8) + 8))(v2 + v5, v6);
  v7 = *(*v2 + 48);
  v8 = *(*v2 + 52);

  return MEMORY[0x2821FE8D8](v2, v7, v8);
}

uint64_t sub_247DC1DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_247DC1E5C(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      result = sub_247DD213C();
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_247DC1F94(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_247DC1F94(uint64_t a1, uint64_t a2)
{
  result = sub_247DD1FFC();
  if (!result || (result = sub_247DD202C(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_247DD201C();
      return sub_247DD213C();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_247DC2028(uint64_t a1, unint64_t a2)
{
  v4 = sub_247DD2B6C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v14[-v10];
  v15 = a1;
  v16 = a2;
  sub_247D6A2E8(a1, a2);
  sub_247DD2B5C();
  if (qword_27EE73318 != -1)
  {
    swift_once();
  }

  v15 = qword_27EE7B9F0;
  v16 = *algn_27EE7B9F8;
  sub_247D6A2E8(qword_27EE7B9F0, *algn_27EE7B9F8);
  sub_247DD2C1C();
  sub_247DC2248(&qword_27EE73AC0, MEMORY[0x277CC5540]);
  sub_247D8A434();
  sub_247DD2BFC();
  sub_247D6A1F8(v15, v16);
  v12 = *(v5 + 8);
  v12(v9, v4);
  sub_247DD2B4C();
  v12(v11, v4);
  return v15;
}

uint64_t sub_247DC2248(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t FileTransferMetadata.init(name:size:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t FileListRequest.Response.init(fileTransferMetadata:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = 200;
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_247DC22B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_247DD225C();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_247DC2320()
{
  v1 = *v0;
  sub_247DD32BC();
  sub_247DD32DC();
  return sub_247DD32EC();
}

uint64_t sub_247DC2394()
{
  v1 = *v0;
  sub_247DD32BC();
  sub_247DD32DC();
  return sub_247DD32EC();
}

uint64_t sub_247DC23D8@<X0>(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_247DC7E98(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_247DC2410(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v15 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE74328, &qword_247DD7C88);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_247DC7DF0();
  sub_247DD331C();
  LOBYTE(v16) = 0;
  sub_247DD31BC();
  if (!v4)
  {
    v16 = a3;
    v17 = v15;
    v18 = 1;
    sub_247D6A2E8(a3, v15);
    sub_247DC7E44();
    sub_247DD31DC();
    sub_247D6A1F8(v16, v17);
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_247DC25C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x506572616873 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_247DD322C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_247DC2644(uint64_t a1)
{
  v2 = sub_247DC7EA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_247DC2680(uint64_t a1)
{
  v2 = sub_247DC7EA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_247DC2750()
{
  if (*v0)
  {
    result = 0x566572616873;
  }

  else
  {
    result = 0x6C6F636F746F7270;
  }

  *v0;
  return result;
}

uint64_t sub_247DC2794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C6F636F746F7270 && a2 == 0xEF6E6F6973726556;
  if (v6 || (sub_247DD322C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x566572616873 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_247DD322C();

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

uint64_t sub_247DC2874(uint64_t a1)
{
  v2 = sub_247DC7DF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_247DC28B0(uint64_t a1)
{
  v2 = sub_247DC7DF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_247DC28EC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_247DC7FA4(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 1) = BYTE1(result) & 1;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_247DC2954(void *a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v17 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v16 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17();
  sub_247DD331C();
  v18 = a2;
  v19 = a3;
  sub_247D6A2E8(a2, a3);
  sub_247DC7E44();
  sub_247DD31DC();
  sub_247D6A1F8(v18, v19);
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_247DC2ADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x506D7269666E6F63 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_247DD322C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_247DC2B64(uint64_t a1)
{
  v2 = sub_247DC8168();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_247DC2BA0(uint64_t a1)
{
  v2 = sub_247DC8168();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_247DC2C20@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, void (*a4)(void)@<X5>, void *a5@<X8>)
{
  result = sub_247DC8210(a1, a2, a3, a4);
  if (!v5)
  {
    *a5 = result;
    a5[1] = v8;
  }

  return result;
}

uint64_t sub_247DC2CBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x566D7269666E6F63 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_247DD322C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_247DC2D44(uint64_t a1)
{
  v2 = sub_247DC7F50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_247DC2D80(uint64_t a1)
{
  v2 = sub_247DC7F50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_247DC2E48(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE743C0, &unk_247DD7CE0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_247DC8578();
  sub_247DD331C();
  v16 = 0;
  sub_247DD31CC();
  if (!v5)
  {
    v15 = 1;
    sub_247DD31CC();
  }

  return (*(v8 + 8))(v11, v7);
}

unint64_t sub_247DC2FDC()
{
  if (*v0)
  {
    result = 0xD000000000000014;
  }

  else
  {
    result = 0xD000000000000012;
  }

  *v0;
  return result;
}

uint64_t sub_247DC3018@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x8000000247DDA570 == a2 || (sub_247DD322C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000247DDA590 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_247DD322C();

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

uint64_t sub_247DC30FC(uint64_t a1)
{
  v2 = sub_247DC8578();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_247DC3138(uint64_t a1)
{
  v2 = sub_247DC8578();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_247DC3174@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_247DC8394(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_247DC31E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x8000000247DDA570 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_247DD322C();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_247DC3274(uint64_t a1)
{
  v2 = sub_247DC81BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_247DC32B0(uint64_t a1)
{
  v2 = sub_247DC81BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_247DC32EC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE743B8, &qword_247DD7CD8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_247DC81BC();
  sub_247DD330C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v11 = sub_247DD315C();
  v13 = v12;
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
  *a2 = v11;
  a2[1] = v13;
  return result;
}

uint64_t sub_247DC3468(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE74378, &qword_247DD7CA8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_247DC81BC();
  sub_247DD331C();
  sub_247DD31CC();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_247DC35E8()
{
  if (*v0)
  {
    return 0x6E6F73616572;
  }

  else
  {
    return 0x737574617473;
  }
}

uint64_t sub_247DC3614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x737574617473 && a2 == 0xE600000000000000;
  if (v6 || (sub_247DD322C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_247DD322C();

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

uint64_t sub_247DC36E8(uint64_t a1)
{
  v2 = sub_247DC38F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_247DC3724(uint64_t a1)
{
  v2 = sub_247DC38F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LeaseRequest.Response.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE74108, &qword_247DD67E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v13 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v13[0] = *(v1 + 2);
  v13[1] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_247DC38F0();
  sub_247DD331C();
  v15 = 0;
  sub_247DD31FC();
  if (!v2)
  {
    v14 = 1;
    sub_247DD31AC();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_247DC38F0()
{
  result = qword_27EE74110;
  if (!qword_27EE74110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE74110);
  }

  return result;
}

uint64_t LeaseRequest.Response.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE74118, &qword_247DD67E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_247DC38F0();
  sub_247DD330C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v18 = 0;
  v11 = sub_247DD318C();
  v17 = 1;
  v12 = sub_247DD313C();
  v14 = v13;
  (*(v6 + 8))(v9, v5);
  *a2 = v11;
  *(a2 + 8) = v12;
  *(a2 + 16) = v14;

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_247DC3B4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_247DD322C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_247DC3BD4(uint64_t a1)
{
  v2 = sub_247DC3D84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_247DC3C10(uint64_t a1)
{
  v2 = sub_247DC3D84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LeaseRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE74120, &qword_247DD67F0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = a1[4];
  v9 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_247DC3D84();
  sub_247DD331C();
  sub_247DD31EC();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_247DC3D84()
{
  result = qword_27EE74128;
  if (!qword_27EE74128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE74128);
  }

  return result;
}

uint64_t LeaseRequest.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE74130, &qword_247DD67F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_247DC3D84();
  sub_247DD330C();
  if (!v2)
  {
    v11 = sub_247DD317C();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_247DC3F68(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE74120, &qword_247DD67F0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = a1[4];
  v9 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_247DC3D84();
  sub_247DD331C();
  sub_247DD31EC();
  return (*(v4 + 8))(v7, v3);
}

uint64_t FileTransferMetadata.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_247DC40D8()
{
  if (*v0)
  {
    return 1702521203;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_247DC40FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_247DD322C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1702521203 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_247DD322C();

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

uint64_t sub_247DC41D8(uint64_t a1)
{
  v2 = sub_247DC43E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_247DC4214(uint64_t a1)
{
  v2 = sub_247DC43E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FileTransferMetadata.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE74138, &qword_247DD6800);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v13 - v6;
  v8 = *v1;
  v9 = v1[1];
  v13[0] = v1[2];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_247DC43E4();
  sub_247DD331C();
  v15 = 0;
  v11 = v13[1];
  sub_247DD31CC();
  if (!v11)
  {
    v14 = 1;
    sub_247DD320C();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_247DC43E4()
{
  result = qword_27EE74140;
  if (!qword_27EE74140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE74140);
  }

  return result;
}

uint64_t FileTransferMetadata.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE74148, &qword_247DD6808);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_247DC43E4();
  sub_247DD330C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v19 = 0;
  v11 = sub_247DD315C();
  v13 = v12;
  v14 = v11;
  v18 = 1;
  v15 = sub_247DD319C();
  (*(v6 + 8))(v9, v5);
  *a2 = v14;
  a2[1] = v13;
  a2[2] = v15;

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

unint64_t sub_247DC4690()
{
  if (*v0)
  {
    result = 0xD000000000000014;
  }

  else
  {
    result = 0x737574617473;
  }

  *v0;
  return result;
}

uint64_t sub_247DC46CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x737574617473 && a2 == 0xE600000000000000;
  if (v6 || (sub_247DD322C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000247DDA550 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_247DD322C();

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

uint64_t sub_247DC47AC(uint64_t a1)
{
  v2 = sub_247DC49C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_247DC47E8(uint64_t a1)
{
  v2 = sub_247DC49C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FileListRequest.Response.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE74150, &qword_247DD6810);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v12 - v7;
  v9 = *v1;
  v12[0] = *(v1 + 1);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_247DC49C4();
  sub_247DD331C();
  v14 = 0;
  sub_247DD31FC();
  if (!v2)
  {
    v12[1] = v12[0];
    v13 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE74160, &qword_247DD6818);
    sub_247DC4A18();
    sub_247DD31DC();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_247DC49C4()
{
  result = qword_27EE74158;
  if (!qword_27EE74158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE74158);
  }

  return result;
}

unint64_t sub_247DC4A18()
{
  result = qword_27EE74168;
  if (!qword_27EE74168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE74160, &qword_247DD6818);
    sub_247DC4DD4(&qword_27EE74170, MEMORY[0x277CC95F0]);
    sub_247DC4AD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE74168);
  }

  return result;
}

unint64_t sub_247DC4AD4()
{
  result = qword_27EE74178;
  if (!qword_27EE74178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE74178);
  }

  return result;
}

uint64_t FileListRequest.Response.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE74180, &qword_247DD6820);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_247DC49C4();
  sub_247DD330C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v16 = 0;
  v11 = sub_247DD318C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE74160, &qword_247DD6818);
  v15 = 1;
  sub_247DC4D18();
  sub_247DD316C();
  (*(v6 + 8))(v9, v5);
  v12 = v14[1];
  *a2 = v11;
  *(a2 + 8) = v12;

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

unint64_t sub_247DC4D18()
{
  result = qword_27EE74188;
  if (!qword_27EE74188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE74160, &qword_247DD6818);
    sub_247DC4DD4(&qword_27EE74190, MEMORY[0x277CC95F0]);
    sub_247DC4E1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE74188);
  }

  return result;
}

uint64_t sub_247DC4DD4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_247DC4E1C()
{
  result = qword_27EE74198;
  if (!qword_27EE74198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE74198);
  }

  return result;
}

uint64_t sub_247DC4EAC(uint64_t a1)
{
  v2 = sub_247DC4F68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_247DC4EE8(uint64_t a1)
{
  v2 = sub_247DC4F68();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_247DC4F68()
{
  result = qword_27EE741A8;
  if (!qword_27EE741A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE741A8);
  }

  return result;
}

uint64_t sub_247DC504C(uint64_t a1)
{
  v2 = sub_247DC5108();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_247DC5088(uint64_t a1)
{
  v2 = sub_247DC5108();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_247DC5108()
{
  result = qword_27EE741B8;
  if (!qword_27EE741B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE741B8);
  }

  return result;
}

uint64_t FileRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = sub_247DD225C();
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  MEMORY[0x28223BE20](v4);
  v23 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE741C0, &qword_247DD6838);
  v21 = *(v7 - 8);
  v8 = *(v21 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - v9;
  v11 = type metadata accessor for FileRequest(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_247DC5108();
  sub_247DD330C();
  if (!v2)
  {
    v16 = v20;
    v17 = v22;
    sub_247DC4DD4(&qword_27EE74190, MEMORY[0x277CC95F0]);
    sub_247DD316C();
    (*(v21 + 8))(v10, v7);
    (*(v16 + 32))(v14, v23, v4);
    sub_247DC5C4C(v14, v17, type metadata accessor for FileRequest);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_247DC54C8(uint64_t a1)
{
  v2 = sub_247DC5584();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_247DC5504(uint64_t a1)
{
  v2 = sub_247DC5584();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_247DC5584()
{
  result = qword_27EE741D0;
  if (!qword_27EE741D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE741D0);
  }

  return result;
}

uint64_t sub_247DC5678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701603686 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_247DD322C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_247DC5700(uint64_t a1)
{
  v2 = sub_247DC593C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_247DC573C(uint64_t a1)
{
  v2 = sub_247DC593C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_247DC57BC(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_247DD331C();
  sub_247DD225C();
  sub_247DC4DD4(&qword_27EE74170, MEMORY[0x277CC95F0]);
  sub_247DD31DC();
  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_247DC593C()
{
  result = qword_27EE741E8;
  if (!qword_27EE741E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE741E8);
  }

  return result;
}

uint64_t RejectFileRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = sub_247DD225C();
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  MEMORY[0x28223BE20](v4);
  v23 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE741F0, &qword_247DD6858);
  v21 = *(v7 - 8);
  v8 = *(v21 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - v9;
  v11 = type metadata accessor for RejectFileRequest(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_247DC593C();
  sub_247DD330C();
  if (!v2)
  {
    v16 = v20;
    v17 = v22;
    sub_247DC4DD4(&qword_27EE74190, MEMORY[0x277CC95F0]);
    sub_247DD316C();
    (*(v21 + 8))(v10, v7);
    (*(v16 + 32))(v14, v23, v4);
    sub_247DC5C4C(v14, v17, type metadata accessor for RejectFileRequest);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_247DC5C4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_247DC5D30(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v15 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a6();
  sub_247DD331C();
  sub_247DD225C();
  sub_247DC4DD4(&qword_27EE74170, MEMORY[0x277CC95F0]);
  sub_247DD31DC();
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_247DC5F04(uint64_t a1)
{
  v2 = sub_247DC6100();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_247DC5F40(uint64_t a1)
{
  v2 = sub_247DC6100();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_247DC5FC0(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v15 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  v11 = *v4;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15();
  sub_247DD331C();
  sub_247DD31FC();
  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_247DC6100()
{
  result = qword_27EE74200;
  if (!qword_27EE74200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE74200);
  }

  return result;
}

uint64_t sub_247DC6198@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, _DWORD *a5@<X8>)
{
  v17 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v18 = *(v8 - 8);
  v9 = *(v18 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_247DD330C();
  if (!v5)
  {
    v13 = v17;
    v14 = sub_247DD318C();
    (*(v18 + 8))(v11, v8);
    *v13 = v14;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_247DC6354(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v17 = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - v11;
  v13 = *v6;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17();
  sub_247DD331C();
  sub_247DD31FC();
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_247DC6494@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_247DC64C4(uint64_t a1)
{
  v2 = sub_247DC66A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_247DC6500(uint64_t a1)
{
  v2 = sub_247DC66A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_247DC6580(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_247DD331C();
  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_247DC66A0()
{
  result = qword_27EE74218;
  if (!qword_27EE74218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE74218);
  }

  return result;
}

uint64_t sub_247DC681C(uint64_t a1)
{
  *(a1 + 16) = sub_247DC4DD4(&qword_27EE735F0, type metadata accessor for FileRequest);
  result = sub_247DC4DD4(&qword_27EE737C8, type metadata accessor for FileRequest);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_247DC68D0(uint64_t a1)
{
  *(a1 + 16) = sub_247DC4DD4(&qword_27EE735C8, type metadata accessor for RejectFileRequest);
  result = sub_247DC4DD4(&qword_27EE737B0, type metadata accessor for RejectFileRequest);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_247DC69D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 16) = a4();
  result = a5();
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_247DC6A7C(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v15 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a6();
  sub_247DD331C();
  return (*(v9 + 8))(v12, v8);
}

uint64_t getEnumTagSinglePayload for LeaseRequest(unsigned __int8 *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for LeaseRequest(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_247DC6CC4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_247DC6D20(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_247DC6D84(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_247DC6DCC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2)
{
  v4 = sub_247DD225C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2)
{
  v4 = sub_247DD225C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_247DC6F7C()
{
  result = sub_247DD225C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t _s5Cosmo17RejectFileRequestV8ResponseVwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s5Cosmo17RejectFileRequestV8ResponseVwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

unint64_t sub_247DC7118()
{
  result = qword_27EE74240;
  if (!qword_27EE74240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE74240);
  }

  return result;
}

unint64_t sub_247DC7170()
{
  result = qword_27EE74248;
  if (!qword_27EE74248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE74248);
  }

  return result;
}

unint64_t sub_247DC71C8()
{
  result = qword_27EE74250;
  if (!qword_27EE74250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE74250);
  }

  return result;
}

unint64_t sub_247DC7220()
{
  result = qword_27EE74258;
  if (!qword_27EE74258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE74258);
  }

  return result;
}

unint64_t sub_247DC7278()
{
  result = qword_27EE74260;
  if (!qword_27EE74260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE74260);
  }

  return result;
}

unint64_t sub_247DC72D0()
{
  result = qword_27EE74268;
  if (!qword_27EE74268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE74268);
  }

  return result;
}

unint64_t sub_247DC7328()
{
  result = qword_27EE74270;
  if (!qword_27EE74270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE74270);
  }

  return result;
}

unint64_t sub_247DC7380()
{
  result = qword_27EE74278;
  if (!qword_27EE74278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE74278);
  }

  return result;
}

unint64_t sub_247DC73D8()
{
  result = qword_27EE74280;
  if (!qword_27EE74280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE74280);
  }

  return result;
}

unint64_t sub_247DC7430()
{
  result = qword_27EE74288;
  if (!qword_27EE74288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE74288);
  }

  return result;
}

unint64_t sub_247DC7488()
{
  result = qword_27EE74290;
  if (!qword_27EE74290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE74290);
  }

  return result;
}

unint64_t sub_247DC74E0()
{
  result = qword_27EE74298;
  if (!qword_27EE74298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE74298);
  }

  return result;
}

unint64_t sub_247DC7538()
{
  result = qword_27EE742A0;
  if (!qword_27EE742A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE742A0);
  }

  return result;
}

unint64_t sub_247DC7590()
{
  result = qword_27EE742A8;
  if (!qword_27EE742A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE742A8);
  }

  return result;
}

unint64_t sub_247DC75E8()
{
  result = qword_27EE742B0;
  if (!qword_27EE742B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE742B0);
  }

  return result;
}

unint64_t sub_247DC7640()
{
  result = qword_27EE742B8;
  if (!qword_27EE742B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE742B8);
  }

  return result;
}

unint64_t sub_247DC7698()
{
  result = qword_27EE742C0;
  if (!qword_27EE742C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE742C0);
  }

  return result;
}

unint64_t sub_247DC76F0()
{
  result = qword_27EE742C8;
  if (!qword_27EE742C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE742C8);
  }

  return result;
}

unint64_t sub_247DC7748()
{
  result = qword_27EE742D0;
  if (!qword_27EE742D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE742D0);
  }

  return result;
}

unint64_t sub_247DC77A0()
{
  result = qword_27EE742D8;
  if (!qword_27EE742D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE742D8);
  }

  return result;
}

unint64_t sub_247DC77F8()
{
  result = qword_27EE742E0;
  if (!qword_27EE742E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE742E0);
  }

  return result;
}

unint64_t sub_247DC7850()
{
  result = qword_27EE742E8;
  if (!qword_27EE742E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE742E8);
  }

  return result;
}

unint64_t sub_247DC78A8()
{
  result = qword_27EE742F0;
  if (!qword_27EE742F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE742F0);
  }

  return result;
}

unint64_t sub_247DC7900()
{
  result = qword_27EE742F8;
  if (!qword_27EE742F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE742F8);
  }

  return result;
}

unint64_t sub_247DC7958()
{
  result = qword_27EE74300;
  if (!qword_27EE74300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE74300);
  }

  return result;
}

unint64_t sub_247DC79B0()
{
  result = qword_27EE74308;
  if (!qword_27EE74308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE74308);
  }

  return result;
}

unint64_t sub_247DC7A08()
{
  result = qword_27EE74310;
  if (!qword_27EE74310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE74310);
  }

  return result;
}

unint64_t sub_247DC7A60()
{
  result = qword_27EE74318;
  if (!qword_27EE74318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE74318);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_247DC7AC0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_247DC7B08(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_247DC7BA0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 24))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 16) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 16) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_247DC7BF4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_247DC7C54()
{
  result = qword_27EE74320;
  if (!qword_27EE74320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE74320);
  }

  return result;
}

uint64_t sub_247DC7DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_247DC7DF0()
{
  result = qword_27EE74330;
  if (!qword_27EE74330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE74330);
  }

  return result;
}

unint64_t sub_247DC7E44()
{
  result = qword_27EE74338;
  if (!qword_27EE74338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE74338);
  }

  return result;
}

uint64_t sub_247DC7E98(uint64_t result)
{
  if (result >= 7)
  {
    return 7;
  }

  else
  {
    return result;
  }
}

unint64_t sub_247DC7EA8()
{
  result = qword_27EE74348;
  if (!qword_27EE74348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE74348);
  }

  return result;
}

unint64_t sub_247DC7EFC()
{
  result = qword_27EE74350;
  if (!qword_27EE74350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE74350);
  }

  return result;
}

unint64_t sub_247DC7F50()
{
  result = qword_27EE74360;
  if (!qword_27EE74360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE74360);
  }

  return result;
}

uint64_t sub_247DC7FA4(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE74398, &qword_247DD7CB8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_247DC7DF0();
  sub_247DD330C();
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v11[16] = 0;
  v9 = sub_247DD314C();
  v11[15] = 1;
  sub_247DC7EFC();
  sub_247DD316C();
  (*(v4 + 8))(v7, v3);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v9 & 0x1FF;
}

unint64_t sub_247DC8168()
{
  result = qword_27EE74370;
  if (!qword_27EE74370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE74370);
  }

  return result;
}

unint64_t sub_247DC81BC()
{
  result = qword_27EE74380;
  if (!qword_27EE74380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE74380);
  }

  return result;
}

void *sub_247DC8210(uint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v16 = *(v7 - 8);
  v8 = *(v16 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - v9;
  v11 = a1[4];
  v12 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  v13 = v12;
  sub_247DD330C();
  if (v4)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    sub_247DC7EFC();
    sub_247DD316C();
    (*(v16 + 8))(v10, v7);
    v13 = v15;
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v13;
}

uint64_t sub_247DC8394(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE74388, &qword_247DD7CB0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_247DC8578();
  sub_247DD330C();
  if (!v1)
  {
    v12 = 0;
    v8 = sub_247DD315C();
    v11 = 1;
    sub_247DD315C();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v8;
}

unint64_t sub_247DC8578()
{
  result = qword_27EE74390;
  if (!qword_27EE74390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE74390);
  }

  return result;
}

unint64_t sub_247DC8640()
{
  result = qword_27EE743C8;
  if (!qword_27EE743C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE743C8);
  }

  return result;
}

unint64_t sub_247DC8698()
{
  result = qword_27EE743D0;
  if (!qword_27EE743D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE743D0);
  }

  return result;
}

unint64_t sub_247DC86F0()
{
  result = qword_27EE743D8;
  if (!qword_27EE743D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE743D8);
  }

  return result;
}

unint64_t sub_247DC8748()
{
  result = qword_27EE743E0;
  if (!qword_27EE743E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE743E0);
  }

  return result;
}

unint64_t sub_247DC87A0()
{
  result = qword_27EE743E8;
  if (!qword_27EE743E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE743E8);
  }

  return result;
}

unint64_t sub_247DC87F8()
{
  result = qword_27EE743F0;
  if (!qword_27EE743F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE743F0);
  }

  return result;
}

unint64_t sub_247DC8850()
{
  result = qword_27EE743F8;
  if (!qword_27EE743F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE743F8);
  }

  return result;
}

unint64_t sub_247DC88A8()
{
  result = qword_27EE74400;
  if (!qword_27EE74400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE74400);
  }

  return result;
}

unint64_t sub_247DC8900()
{
  result = qword_27EE74408;
  if (!qword_27EE74408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE74408);
  }

  return result;
}

unint64_t sub_247DC8958()
{
  result = qword_27EE74410;
  if (!qword_27EE74410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE74410);
  }

  return result;
}

unint64_t sub_247DC89B0()
{
  result = qword_27EE74418;
  if (!qword_27EE74418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE74418);
  }

  return result;
}

unint64_t sub_247DC8A08()
{
  result = qword_27EE74420;
  if (!qword_27EE74420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE74420);
  }

  return result;
}

unint64_t sub_247DC8A60()
{
  result = qword_27EE74428;
  if (!qword_27EE74428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE74428);
  }

  return result;
}

unint64_t sub_247DC8AB8()
{
  result = qword_27EE74430;
  if (!qword_27EE74430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE74430);
  }

  return result;
}

unint64_t sub_247DC8B10()
{
  result = qword_27EE74438;
  if (!qword_27EE74438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE74438);
  }

  return result;
}

unint64_t sub_247DC8B68()
{
  result = qword_27EE74440;
  if (!qword_27EE74440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE74440);
  }

  return result;
}

unint64_t sub_247DC8BC0()
{
  result = qword_27EE74448;
  if (!qword_27EE74448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE74448);
  }

  return result;
}

unint64_t sub_247DC8C18()
{
  result = qword_27EE74450;
  if (!qword_27EE74450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE74450);
  }

  return result;
}

unint64_t sub_247DC8C70()
{
  result = qword_27EE74458;
  if (!qword_27EE74458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE74458);
  }

  return result;
}

void *CosmoMultiplexChannelHost.__allocating_init(name:descriptor:queue:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  swift_allocObject();
  v11 = sub_247DD0DF0(a1, a2, a3, a4);

  return v11;
}

uint64_t sub_247DC8DD8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_247DD0218(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_247DC8E68()
{
  v0 = sub_247DD23CC();
  __swift_allocate_value_buffer(v0, qword_27EE74460);
  v1 = __swift_project_value_buffer(v0, qword_27EE74460);
  if (qword_27EE73280 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27EE7B8D8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

Cosmo::CosmoMultiplexChannelHost::State_optional __swiftcall CosmoMultiplexChannelHost.State.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_247DD312C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t CosmoMultiplexChannelHost.State.rawValue.getter()
{
  if (*v0)
  {
    result = 0x6164696C61766E69;
  }

  else
  {
    result = 0x7964616572;
  }

  *v0;
  return result;
}

uint64_t sub_247DC8FD4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_247DD312C();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_247DC9034@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_247D83A78;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_247D6ACFC(v4);
}

uint64_t sub_247DC90C8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_247D83A50;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  sub_247D6ACFC(v3);
  return sub_247D6A24C(v8);
}

void *CosmoMultiplexChannelHost.init(name:descriptor:queue:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = sub_247DD0DF0(a1, a2, a3, a4);

  return v5;
}

uint64_t sub_247DC91D4(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC5Cosmo25CosmoMultiplexChannelHost_listener);
  v2 = swift_allocObject();
  swift_weakInit();
  swift_beginAccess();
  v3 = v1[2];
  v4 = v1[3];
  v1[2] = sub_247DD1D98;
  v1[3] = v2;

  sub_247D6A24C(v3);

  v5 = swift_allocObject();
  swift_weakInit();
  v6 = v1[6];
  v7 = v1[7];
  v1[6] = sub_247DD1DC8;
  v1[7] = v5;

  sub_247D6A24C(v6);

  if (qword_27EE73330 != -1)
  {
    swift_once();
  }

  v8 = sub_247DD23CC();
  __swift_project_value_buffer(v8, qword_27EE74460);

  v9 = sub_247DD23AC();
  v10 = sub_247DD2F2C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136315138;
    v13 = CosmoMultiplexChannelHost.description.getter();
    v15 = sub_247D72868(v13, v14, &v17);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_247D56000, v9, v10, "[Start] Listener starting, %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x24C1BAF60](v12, -1, -1);
    MEMORY[0x24C1BAF60](v11, -1, -1);
  }

  return sub_247D90EF8();
}

uint64_t sub_247DC9408(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_247DCB09C(a1);
  }

  return result;
}

uint64_t sub_247DC9488(uint64_t a1, uint64_t a2)
{
  v5 = sub_247DD2A0C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_247DD2A2C();
  v10 = *(v17 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v17);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *(v2 + 48);
  aBlock[4] = a1;
  v20 = v2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_247D598D4;
  aBlock[3] = a2;
  v14 = _Block_copy(aBlock);

  sub_247DD2A1C();
  v18 = MEMORY[0x277D84F90];
  sub_247DD1DD0(&unk_27EE73AF0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE733C0, &qword_247DD83B0);
  sub_247D869B0(&qword_27EE73B00, &unk_27EE733C0, &qword_247DD83B0);
  sub_247DD2FFC();
  MEMORY[0x24C1BA270](0, v13, v9, v14);
  _Block_release(v14);
  (*(v6 + 8))(v9, v5);
  (*(v10 + 8))(v13, v17);
}

uint64_t sub_247DC9718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v27[0] = a7;
  v15 = sub_247DD2A0C();
  v30 = *(v15 - 8);
  v16 = *(v30 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_247DD2A2C();
  v28 = *(v19 - 8);
  v29 = v19;
  v20 = *(v28 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27[1] = *(v8 + 48);
  v23 = swift_allocObject();
  v24 = v27[0];
  v23[2] = a6;
  v23[3] = v24;
  v23[4] = a1;
  v23[5] = v8;
  v23[6] = a2;
  v23[7] = a3;
  v23[8] = a4;
  v23[9] = a5;
  aBlock[4] = sub_247DD1230;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_247D598D4;
  aBlock[3] = &block_descriptor_6_0;
  v25 = _Block_copy(aBlock);

  sub_247D6ACFC(a4);
  sub_247DD2A1C();
  v31 = MEMORY[0x277D84F90];
  sub_247DD1DD0(&unk_27EE73AF0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE733C0, &qword_247DD83B0);
  sub_247D869B0(&qword_27EE73B00, &unk_27EE733C0, &qword_247DD83B0);
  sub_247DD2FFC();
  MEMORY[0x24C1BA270](0, v22, v18, v25);
  _Block_release(v25);
  (*(v30 + 8))(v18, v15);
  (*(v28 + 8))(v22, v29);
}

void sub_247DC9A14(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_247DD1F5C();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  sub_247DD1F4C();
  v15 = *(a6 + 16);
  sub_247DD1F3C();
  if (!v6)
  {

    return;
  }

  v46 = a3;

  v16 = sub_247DD03F8(a1, a2);
  if (v17)
  {
    goto LABEL_10;
  }

  v42 = a1;
  v43 = a2;
  sub_247D6A2E8(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73530, &unk_247DD4320);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v41 = 0;
    memset(v40, 0, sizeof(v40));
    sub_247D6BAD4(v40, &qword_27EE73538, &qword_247DD6100);
LABEL_9:
    v16 = sub_247DD0170(a1, a2);
LABEL_10:
    v18 = v16;
    v19 = v17;
    goto LABEL_11;
  }

  sub_247D6B5A8(v40, v44);
  __swift_project_boxed_opaque_existential_1(v44, v45);
  if ((sub_247DD310C() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v44);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(v44, v45);
  sub_247DD30FC();
  v19 = *(&v40[0] + 1);
  v18 = *&v40[0];
  __swift_destroy_boxed_opaque_existential_0Tm(v44);
LABEL_11:
  if (qword_27EE73330 != -1)
  {
    swift_once();
  }

  v20 = sub_247DD23CC();
  __swift_project_value_buffer(v20, qword_27EE74460);

  v21 = v6;

  v22 = sub_247DD23AC();
  v23 = sub_247DD2F0C();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = v18;
    v27 = v25;
    v44[0] = v25;
    *v24 = 136315906;
    v28 = sub_247D72868(v26, v19, v44);

    *(v24 + 4) = v28;
    *(v24 + 12) = 2080;
    v29 = (*(a6 + 48))(a5, a6);
    v31 = sub_247D72868(v29, v30, v44);

    *(v24 + 14) = v31;
    *(v24 + 22) = 2080;
    *&v40[0] = v6;
    v32 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE73C10, &qword_247DD4330);
    v33 = sub_247DD2CFC();
    v35 = sub_247D72868(v33, v34, v44);

    *(v24 + 24) = v35;
    *(v24 + 32) = 2080;
    v36 = CosmoMultiplexChannelHost.description.getter();
    v38 = sub_247D72868(v36, v37, v44);

    *(v24 + 34) = v38;
    _os_log_impl(&dword_247D56000, v22, v23, "[Respond] Failed to deserialize request from body=%s, type=%s error=%s %s", v24, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x24C1BAF60](v27, -1, -1);
    MEMORY[0x24C1BAF60](v24, -1, -1);
  }

  else
  {
  }

  sub_247D6AFB0();
  swift_allocError();
  *v39 = xmmword_247DD3EF0;
  *(v39 + 16) = 2;
  swift_willThrow();
}

uint64_t sub_247DC9E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a8;
  v34 = (*(a8 + 48))(a7, a8);
  v13 = v12;
  if (qword_27EE73330 != -1)
  {
    swift_once();
  }

  v14 = sub_247DD23CC();
  __swift_project_value_buffer(v14, qword_27EE74460);

  v15 = sub_247DD23AC();
  v16 = sub_247DD2F2C();

  if (os_log_type_enabled(v15, v16))
  {
    v29 = v8;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v36[0] = v18;
    *v17 = 136315394;
    *(v17 + 4) = sub_247D72868(v34, v13, v36);
    *(v17 + 12) = 2080;
    v19 = CosmoMultiplexChannelHost.description.getter();
    v21 = sub_247D72868(v19, v20, v36);

    *(v17 + 14) = v21;
    _os_log_impl(&dword_247D56000, v15, v16, "[Respond] Registered handler for path=%s, %s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1BAF60](v18, -1, -1);
    v22 = v17;
    v8 = v29;
    MEMORY[0x24C1BAF60](v22, -1, -1);
  }

  v23 = swift_allocObject();
  v23[2] = a7;
  v23[3] = v8;
  v23[4] = a1;
  v23[5] = a2;
  v23[6] = a3;
  v23[7] = a4;
  v24 = swift_allocObject();
  v24[2] = a7;
  v24[3] = v8;
  v24[4] = a5;
  v24[5] = a6;
  v24[6] = a1;
  v24[7] = a2;
  v25 = OBJC_IVAR____TtC5Cosmo25CosmoMultiplexChannelHost_handlers;
  swift_beginAccess();
  swift_retain_n();

  sub_247D6ACFC(a5);
  v26 = *(a2 + v25);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v35 = *(a2 + v25);
  *(a2 + v25) = 0x8000000000000000;
  sub_247DCF568(sub_247DD1CA4, v23, sub_247DD1D1C, v24, v34, v13, isUniquelyReferenced_nonNull_native);

  *(a2 + v25) = v35;
  return swift_endAccess();
}

uint64_t sub_247DCA15C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(char *, uint64_t (*)(uint64_t a1), void *), uint64_t a8, uint64_t a9, uint64_t a10)
{
  v13 = *(a9 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](a1);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v26 - v19;
  sub_247DC9A14(v18, v21, v22, v23, a9, a10);
  (*(v13 + 32))(v20, v17, a9);
  v24 = swift_allocObject();
  v24[2] = a9;
  v24[3] = a10;
  v24[4] = a3;
  v24[5] = a4;

  a7(v20, sub_247DD1D8C, v24);

  return (*(v13 + 8))(v20, a9);
}

uint64_t sub_247DCA33C(uint64_t a1, void (*a2)(__int128 *))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = &v17 - v7;
  sub_247D6AFB0();
  v9 = sub_247DD32FC();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v17 - v11;
  (*(v13 + 16))(&v17 - v11, a1, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = v12[16];
    v17 = *v12;
    v18 = v14;
    v21 = 1;
    a2(&v17);
  }

  else
  {
    (*(v5 + 32))(v8, v12, AssociatedTypeWitness);
    v19 = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v17);
    (*(v5 + 16))(boxed_opaque_existential_1, v8, AssociatedTypeWitness);
    v21 = 0;
    a2(&v17);
    (*(v5 + 8))(v8, AssociatedTypeWitness);
  }

  return sub_247D6BAD4(&v17, &qword_27EE73588, &qword_247DD4350);
}

uint64_t sub_247DCA5AC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, int a5, void (*a6)(void, void, void, void), uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v66 = a8;
  v60 = a5;
  v61 = a4;
  v62 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = sub_247DD2F9C();
  v56 = *(v16 - 8);
  v57 = v16;
  v17 = *(v56 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v59 = &v52 - v19;
  v58 = *(AssociatedTypeWitness - 8);
  v20 = *(v58 + 64);
  MEMORY[0x28223BE20](v18);
  v55 = &v52 - v21;
  sub_247D6AFB0();
  v22 = sub_247DD32FC();
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v52 - v25;
  v65 = *(a10 - 8);
  v27 = *(v65 + 64);
  v28 = MEMORY[0x28223BE20](v24);
  v30 = &v52 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v28);
  v64 = &v52 - v33;
  if (a6)
  {
    v53 = v32;
    v54 = result;
    v63 = a6;

    sub_247DC9A14(a1, a2, v66, a9, a10, a11);
    v66 = a7;
    v35 = v64;
    v34 = v65;
    (*(v65 + 32))(v64, v30, a10);
    sub_247D6BA6C(v62, &v75, &qword_27EE73588, &qword_247DD4350);
    if (v77)
    {
      v36 = v76;
      *v26 = v75;
      v26[16] = v36;
      v37 = v54;
LABEL_6:
      swift_storeEnumTagMultiPayload();
      v42 = v63;
      v63(v35, v26, v61, v60 & 1);
      sub_247D6A24C(v42);
      (*(v53 + 8))(v26, v37);
      return (*(v34 + 8))(v35, a10);
    }

    sub_247D6B5A8(&v75, v74);
    sub_247D6B5C0(v74, v73);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73590, &qword_247DD4358);
    v38 = v59;
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0Tm(v74);
      v39 = v58;
      (*(v58 + 56))(v38, 0, 1, AssociatedTypeWitness);
      v40 = *(v39 + 32);
      v41 = v55;
      v40(v55, v38, AssociatedTypeWitness);
      v40(v26, v41, AssociatedTypeWitness);
      v37 = v54;
      goto LABEL_6;
    }

    (*(v58 + 56))(v38, 1, 1, AssociatedTypeWitness);
    (*(v56 + 8))(v38, v57);
    if (qword_27EE73330 != -1)
    {
      swift_once();
    }

    v43 = sub_247DD23CC();
    __swift_project_value_buffer(v43, qword_27EE74460);
    sub_247D6B5C0(v74, v73);
    v44 = sub_247DD23AC();
    v45 = sub_247DD2F0C();
    if (!os_log_type_enabled(v44, v45))
    {
      sub_247D6A24C(v63);

      __swift_destroy_boxed_opaque_existential_0Tm(v73);
      __swift_destroy_boxed_opaque_existential_0Tm(v74);
      return (*(v34 + 8))(v35, a10);
    }

    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v72 = v47;
    *v46 = 136315138;
    sub_247D6B5C0(v73, v71);
    sub_247D6BA6C(v71, &v69, &qword_27EE73598, &qword_247DD4360);
    if (v70)
    {
      sub_247D6B5A8(&v69, v68);
      sub_247D6B5C0(v68, &v67);
      v48 = sub_247DD2CFC();
      v50 = v49;
      __swift_destroy_boxed_opaque_existential_0Tm(v68);
    }

    else
    {
      v50 = 0xE300000000000000;
      v48 = 7104878;
    }

    sub_247D6BAD4(v71, &qword_27EE73598, &qword_247DD4360);
    __swift_destroy_boxed_opaque_existential_0Tm(v73);
    v51 = sub_247D72868(v48, v50, &v72);

    *(v46 + 4) = v51;
    _os_log_impl(&dword_247D56000, v44, v45, "[Respond] Could not cast %s into response type", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v47);
    MEMORY[0x24C1BAF60](v47, -1, -1);
    MEMORY[0x24C1BAF60](v46, -1, -1);
    sub_247D6A24C(v63);

    __swift_destroy_boxed_opaque_existential_0Tm(v74);
    return (*(v65 + 8))(v64, a10);
  }

  return result;
}

uint64_t sub_247DCAC64(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = sub_247DD2ABC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v36[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *a1;
  v10 = v2[6];
  *v8 = v10;
  (*(v5 + 104))(v8, *MEMORY[0x277D85200], v4);
  v11 = v10;
  LOBYTE(v10) = sub_247DD2ADC();
  (*(v5 + 8))(v8, v4);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_17:
    swift_once();
LABEL_4:
    v12 = sub_247DD23CC();
    __swift_project_value_buffer(v12, qword_27EE74460);

    v13 = sub_247DD23AC();
    v14 = sub_247DD2F2C();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v36[0] = v16;
      *v15 = 136315394;
      HIBYTE(v35) = v9;
      v17 = sub_247DD2CFC();
      v19 = sub_247D72868(v17, v18, v36);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2080;
      v20 = CosmoMultiplexChannelHost.description.getter();
      v22 = sub_247D72868(v20, v21, v36);

      *(v15 + 14) = v22;
      _os_log_impl(&dword_247D56000, v13, v14, "Listener invalidated, state=%s %s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1BAF60](v16, -1, -1);
      MEMORY[0x24C1BAF60](v15, -1, -1);
    }

    result = swift_beginAccess();
    v24 = v2[2];
    if (v24)
    {
      v25 = v2[3];
      HIBYTE(v35) = 1;
LABEL_14:

      v24(&v35 + 7);
      return sub_247D6A24C(v24);
    }

    return result;
  }

  if (v9)
  {
    *(v2 + OBJC_IVAR____TtC5Cosmo25CosmoMultiplexChannelHost_ready) = 0;
    *(v2 + OBJC_IVAR____TtC5Cosmo25CosmoMultiplexChannelHost_terminated) = 1;
    if (qword_27EE73330 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_17;
  }

  *(v2 + OBJC_IVAR____TtC5Cosmo25CosmoMultiplexChannelHost_ready) = 1;
  if (qword_27EE73330 != -1)
  {
    swift_once();
  }

  v26 = sub_247DD23CC();
  __swift_project_value_buffer(v26, qword_27EE74460);

  v27 = sub_247DD23AC();
  v28 = sub_247DD2F2C();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v36[0] = v30;
    *v29 = 136315138;
    v31 = CosmoMultiplexChannelHost.description.getter();
    v33 = sub_247D72868(v31, v32, v36);

    *(v29 + 4) = v33;
    _os_log_impl(&dword_247D56000, v27, v28, "Listener ready, %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v30);
    MEMORY[0x24C1BAF60](v30, -1, -1);
    MEMORY[0x24C1BAF60](v29, -1, -1);
  }

  result = swift_beginAccess();
  v24 = v2[2];
  if (v24)
  {
    v34 = v2[3];
    HIBYTE(v35) = 0;
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_247DCB09C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_247DD2ABC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v34[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + 48);
  *v8 = v9;
  (*(v5 + 104))(v8, *MEMORY[0x277D85200], v4);
  v10 = v9;
  LOBYTE(v9) = sub_247DD2ADC();
  (*(v5 + 8))(v8, v4);
  if (v9)
  {
    v11 = *(v2 + OBJC_IVAR____TtC5Cosmo25CosmoMultiplexChannelHost_acceptedStreamCount);
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (!v12)
    {
      *(v2 + OBJC_IVAR____TtC5Cosmo25CosmoMultiplexChannelHost_acceptedStreamCount) = v13;
      if (qword_27EE73330 == -1)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_11:
  swift_once();
LABEL_4:
  v14 = sub_247DD23CC();
  __swift_project_value_buffer(v14, qword_27EE74460);

  v15 = sub_247DD23AC();
  v16 = sub_247DD2F2C();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v34[0] = v18;
    *v17 = 136315394;
    *(v17 + 4) = sub_247D72868(*(a1 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_name), *(a1 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_name + 8), v34);
    *(v17 + 12) = 2080;
    v19 = CosmoMultiplexChannelHost.description.getter();
    v21 = sub_247D72868(v19, v20, v34);

    *(v17 + 14) = v21;
    _os_log_impl(&dword_247D56000, v15, v16, "Received incoming stream, name=%s, %s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1BAF60](v18, -1, -1);
    MEMORY[0x24C1BAF60](v17, -1, -1);
  }

  v22 = type metadata accessor for PendingResponse(0);
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();

  v25 = sub_247DD1AB8(a1, v2);

  v26 = swift_allocObject();
  swift_weakInit();
  v27 = v25[2];
  v28 = v25[3];
  v25[2] = sub_247DD1BF4;
  v25[3] = v26;

  sub_247D6A24C(v27);

  v29 = OBJC_IVAR____TtC5Cosmo25CosmoMultiplexChannelHost_activeResponses;
  swift_beginAccess();

  MEMORY[0x24C1BA170](v30);
  if (*((*(v2 + v29) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v29) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v32 = *((*(v2 + v29) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_247DD2E9C();
  }

  sub_247DD2EBC();
  swift_endAccess();
  sub_247DCBE70();
}

uint64_t sub_247DCB45C()
{
  v1 = sub_247DD2ABC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = (v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v7 = result;
  v8 = *(result + 48);
  *v5 = v8;
  (*(v2 + 104))(v5, *MEMORY[0x277D85200], v1);
  v9 = v8;
  v10 = sub_247DD2ADC();
  (*(v2 + 8))(v5, v1);
  if (v10)
  {
    v11 = OBJC_IVAR____TtC5Cosmo25CosmoMultiplexChannelHost_activeResponses;
    swift_beginAccess();
    v17[1] = v11;
    v17[2] = v7;
    v1 = *(v7 + v11);
    v0 = v1 & 0xFFFFFFFFFFFFFF8;
    if (!(v1 >> 62))
    {
      v12 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_5;
    }
  }

  else
  {
LABEL_20:
    __break(1u);
  }

  v12 = sub_247DD30BC();
LABEL_5:

  v13 = 0;
  while (1)
  {
    if (v12 == v13)
    {
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      MEMORY[0x24C1BA360](v13, v1);
    }

    else
    {
      if (v13 >= *(v0 + 16))
      {
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      v14 = *(v1 + 8 * v13 + 32);
    }

    v15 = sub_247DD221C();

    if (v15)
    {
      break;
    }

    if (__OFADD__(v13++, 1))
    {
      goto LABEL_19;
    }
  }

  swift_beginAccess();
  sub_247DC8DD8(v13);
  swift_endAccess();
}

void sub_247DCB6D4(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_247DD2ABC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = (&v29[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v3 + 48);
  *v10 = v11;
  (*(v7 + 104))(v10, *MEMORY[0x277D85200], v6);
  v12 = v11;
  LOBYTE(v11) = sub_247DD2ADC();
  (*(v7 + 8))(v10, v6);
  if (v11)
  {
    if (qword_27EE73330 == -1)
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
  v13 = sub_247DD23CC();
  __swift_project_value_buffer(v13, qword_27EE74460);

  v14 = sub_247DD23AC();
  v15 = sub_247DD2F2C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v29[0] = v17;
    *v16 = 136315394;
    *(v16 + 4) = sub_247D72868(a1, a2, v29);
    *(v16 + 12) = 2080;
    v18 = CosmoMultiplexChannelHost.description.getter();
    v20 = sub_247D72868(v18, v19, v29);

    *(v16 + 14) = v20;
    _os_log_impl(&dword_247D56000, v14, v15, "[Close] Closing, reason='%s' %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1BAF60](v17, -1, -1);
    MEMORY[0x24C1BAF60](v16, -1, -1);
  }

  v21 = OBJC_IVAR____TtC5Cosmo25CosmoMultiplexChannelHost_activeResponses;
  swift_beginAccess();
  v22 = *(v3 + v21);
  if (v22 >> 62)
  {
    if (v22 < 0)
    {
      v27 = *(v3 + v21);
    }

    v23 = sub_247DD30BC();
    if (!v23)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v23)
    {
LABEL_14:
      v26 = *(v3 + OBJC_IVAR____TtC5Cosmo25CosmoMultiplexChannelHost_listener);
      sub_247D93540();
      return;
    }
  }

  if (v23 >= 1)
  {

    for (i = 0; i != v23; ++i)
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        MEMORY[0x24C1BA360](i, v22);
      }

      else
      {
        v25 = *(v22 + 8 * i + 32);
      }

      sub_247DCC118(a1, a2);
    }

    goto LABEL_14;
  }

  __break(1u);
}

uint64_t CosmoMultiplexChannelHost.deinit()
{
  v1 = *(v0 + 24);
  sub_247D6A24C(*(v0 + 16));
  v2 = *(v0 + 40);

  sub_247D8690C(v0 + OBJC_IVAR____TtC5Cosmo25CosmoMultiplexChannelHost_descriptor);
  v3 = *(v0 + OBJC_IVAR____TtC5Cosmo25CosmoMultiplexChannelHost_listener);

  v4 = *(v0 + OBJC_IVAR____TtC5Cosmo25CosmoMultiplexChannelHost_handlers);

  v5 = *(v0 + OBJC_IVAR____TtC5Cosmo25CosmoMultiplexChannelHost_activeResponses);

  return v0;
}

uint64_t CosmoMultiplexChannelHost.__deallocating_deinit()
{
  v1 = *(v0 + 24);
  sub_247D6A24C(*(v0 + 16));
  v2 = *(v0 + 40);

  sub_247D8690C(v0 + OBJC_IVAR____TtC5Cosmo25CosmoMultiplexChannelHost_descriptor);
  v3 = *(v0 + OBJC_IVAR____TtC5Cosmo25CosmoMultiplexChannelHost_listener);

  v4 = *(v0 + OBJC_IVAR____TtC5Cosmo25CosmoMultiplexChannelHost_handlers);

  v5 = *(v0 + OBJC_IVAR____TtC5Cosmo25CosmoMultiplexChannelHost_activeResponses);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v6, v7);
}

uint64_t CosmoMultiplexChannelHost.description.getter()
{
  v13[0] = 0x3D656D616ELL;
  v13[1] = 0xE500000000000000;
  MEMORY[0x24C1BA0A0](*(v0 + 32), *(v0 + 40));
  strcpy(v13, "endpoint=");
  HIDWORD(v13[1]) = -385875968;
  v1 = NetworkDescriptor.description.getter();
  MEMORY[0x24C1BA0A0](v1);

  v2 = v13[1];
  v11 = v13[0];
  sub_247DD304C();

  v13[0] = 0xD000000000000016;
  v13[1] = 0x8000000247DDA5B0;
  v12 = *(v0 + OBJC_IVAR____TtC5Cosmo25CosmoMultiplexChannelHost_acceptedStreamCount);
  v3 = sub_247DD321C();
  MEMORY[0x24C1BA0A0](v3);

  strcpy(v13, "isReady=");
  BYTE1(v13[1]) = 0;
  WORD1(v13[1]) = 0;
  HIDWORD(v13[1]) = -402653184;
  if (*(v0 + OBJC_IVAR____TtC5Cosmo25CosmoMultiplexChannelHost_ready))
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC5Cosmo25CosmoMultiplexChannelHost_ready))
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x24C1BA0A0](v4, v5);

  v7 = v13[0];
  v6 = v13[1];
  strcpy(v13, "isTerminated=");
  HIWORD(v13[1]) = -4864;
  if (*(v0 + OBJC_IVAR____TtC5Cosmo25CosmoMultiplexChannelHost_terminated))
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC5Cosmo25CosmoMultiplexChannelHost_terminated))
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  MEMORY[0x24C1BA0A0](v8, v9);

  MEMORY[0x24C1BA0A0](32, 0xE100000000000000);
  MEMORY[0x24C1BA0A0](v11, v2);

  MEMORY[0x24C1BA0A0](32, 0xE100000000000000);
  MEMORY[0x24C1BA0A0](0xD000000000000016, 0x8000000247DDA5B0);

  MEMORY[0x24C1BA0A0](32, 0xE100000000000000);
  MEMORY[0x24C1BA0A0](v7, v6);

  MEMORY[0x24C1BA0A0](32, 0xE100000000000000);
  MEMORY[0x24C1BA0A0](v13[0], v13[1]);

  return 0x3D656D616ELL;
}

uint64_t sub_247DCBDFC(char *a1, uint64_t a2, void (*a3)(char *))
{
  v4 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = v4;
    a3(&v6);
  }

  return result;
}

uint64_t sub_247DCBE70()
{
  v1 = v0;
  v2 = sub_247DD2ABC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + 32);
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x277D85200], v2);
  v8 = v7;
  LOBYTE(v7) = sub_247DD2ADC();
  result = (*(v3 + 8))(v6, v2);
  if (v7)
  {
    v10 = *(v1 + OBJC_IVAR____TtC5CosmoP33_0223C41AA06A946641CC9494FD9F743D15PendingResponse_stream);
    v11 = swift_allocObject();
    swift_weakInit();
    v12 = v10[4];
    v13 = v10[5];
    v10[4] = sub_247DD1AA8;
    v10[5] = v11;

    sub_247D6A24C(v12);

    v14 = swift_allocObject();
    swift_weakInit();
    v15 = v10[10];
    v16 = v10[11];
    v10[10] = sub_247DD1AB0;
    v10[11] = v14;

    sub_247D6A24C(v15);

    return sub_247D765E0();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_247DCC03C(uint64_t *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_247DCCDF8(a1);
  }

  return result;
}

uint64_t sub_247DCC09C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 16);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5[0] = v1;
    v5[1] = v2;
    v6 = v3;
    sub_247DCE0B8(v5);
  }

  return result;
}

uint64_t sub_247DCC118(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v57 = a1;
  v5 = sub_247DD2ABC();
  v6 = *(v5 - 8);
  v7 = v6[8];
  MEMORY[0x28223BE20](v5);
  v9 = (&v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v2 + 32);
  *v9 = v10;
  v11 = v6[13];
  v56 = *MEMORY[0x277D85200];
  v11(v9);
  v12 = v10;
  LOBYTE(v10) = sub_247DD2ADC();
  v13 = v6[1];
  result = v13(v9, v5);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (!*(v3 + 16))
  {
    return result;
  }

  v53 = v11;
  v54 = v12;
  v55 = v13;
  v59 = 0;
  v60 = 0xE000000000000000;
  sub_247DD304C();

  v59 = 0x43205D706F74535BLL;
  v60 = 0xEF20676E69736F6CLL;
  v15 = *(v3 + OBJC_IVAR____TtC5CosmoP33_0223C41AA06A946641CC9494FD9F743D15PendingResponse_stream);
  v16 = *(v15 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_connection);

  v58 = v15;
  v18 = sub_247D76840(v17);
  v20 = v19;

  MEMORY[0x24C1BA0A0](v18, v20);

  v12 = v59;
  v11 = v60;
  if (*(v3 + OBJC_IVAR____TtC5CosmoP33_0223C41AA06A946641CC9494FD9F743D15PendingResponse_requestData + 8) >> 60 == 15 || (*(v3 + OBJC_IVAR____TtC5CosmoP33_0223C41AA06A946641CC9494FD9F743D15PendingResponse_sentResponse) & 1) != 0)
  {
    if (qword_27EE73330 == -1)
    {
LABEL_6:
      v21 = sub_247DD23CC();
      __swift_project_value_buffer(v21, qword_27EE74460);

      v22 = sub_247DD23AC();
      v23 = sub_247DD2F2C();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v59 = v25;
        *v24 = 136315650;
        v26 = sub_247D72868(v12, v11, &v59);

        *(v24 + 4) = v26;
        *(v24 + 12) = 2080;
        *(v24 + 14) = sub_247D72868(v57, a2, &v59);
        *(v24 + 22) = 2080;
        v27 = sub_247DCE440();
        v29 = sub_247D72868(v27, v28, &v59);

        *(v24 + 24) = v29;
        _os_log_impl(&dword_247D56000, v22, v23, "%s, reason='%s' %s", v24, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x24C1BAF60](v25, -1, -1);
        MEMORY[0x24C1BAF60](v24, -1, -1);
      }

      else
      {
      }

      return sub_247D781D4();
    }

LABEL_22:
    swift_once();
    goto LABEL_6;
  }

  v52 = v59;
  v57 = OBJC_IVAR____TtC5CosmoP33_0223C41AA06A946641CC9494FD9F743D15PendingResponse_sentResponse;
  if (qword_27EE73330 != -1)
  {
    swift_once();
  }

  v30 = sub_247DD23CC();
  __swift_project_value_buffer(v30, qword_27EE74460);

  v31 = sub_247DD23AC();
  v32 = sub_247DD2F2C();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v59 = v34;
    *v33 = 136315394;
    v35 = sub_247D72868(v52, v11, &v59);
    v52 = v31;
    v36 = v35;

    *(v33 + 4) = v36;
    *(v33 + 12) = 2080;
    v37 = sub_247DCE440();
    v39 = sub_247D72868(v37, v38, &v59);

    *(v33 + 14) = v39;
    v31 = v52;
    swift_arrayDestroy();
    MEMORY[0x24C1BAF60](v34, -1, -1);
    MEMORY[0x24C1BAF60](v33, -1, -1);
  }

  else
  {
  }

  v41 = v53;
  v40 = v54;
  v42 = *(v3 + OBJC_IVAR____TtC5CosmoP33_0223C41AA06A946641CC9494FD9F743D15PendingResponse_completionHandler);
  if (v42)
  {
    v43 = *(v3 + OBJC_IVAR____TtC5CosmoP33_0223C41AA06A946641CC9494FD9F743D15PendingResponse_completionHandler + 8);
    v44 = swift_allocObject();
    v44[2] = v42;
    v44[3] = v43;
    v44[4] = v3;
    *v9 = v40;
    v41(v9, v56, v5);
    sub_247D6ACFC(v42);
    v45 = v40;

    sub_247D6ACFC(v42);
    v46 = sub_247DD2ADC();
    result = v55(v9, v5);
    if (v46)
    {
      v47 = v58;
      *(v3 + v57) = 1;
      sub_247DD05A4(500, sub_247DD1A48, v44, v47);
      sub_247D6A24C(v42);
    }

    __break(1u);
  }

  else
  {
    *v9 = v54;
    v41(v9, v56, v5);
    v48 = v40;
    v49 = sub_247DD2ADC();
    result = v55(v9, v5);
    if (v49)
    {
      v50 = v58;
      *(v3 + v57) = 1;
      return sub_247DD05A4(500, 0, 0, v50);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_247DCC790(uint64_t a1, char a2, void (*a3)(uint64_t, unint64_t, __int128 *, uint64_t, void), uint64_t a4, uint64_t a5)
{
  v8 = *(a5 + OBJC_IVAR____TtC5CosmoP33_0223C41AA06A946641CC9494FD9F743D15PendingResponse_requestData);
  v9 = *(a5 + OBJC_IVAR____TtC5CosmoP33_0223C41AA06A946641CC9494FD9F743D15PendingResponse_requestData + 8);
  if (v9 >> 60 == 15)
  {
    v10 = 0;
  }

  else
  {
    v10 = *(a5 + OBJC_IVAR____TtC5CosmoP33_0223C41AA06A946641CC9494FD9F743D15PendingResponse_requestData);
  }

  if (v9 >> 60 == 15)
  {
    v11 = 0xC000000000000000;
  }

  else
  {
    v11 = *(a5 + OBJC_IVAR____TtC5CosmoP33_0223C41AA06A946641CC9494FD9F743D15PendingResponse_requestData + 8);
  }

  v13 = xmmword_247DD5EA0;
  v14 = 2;
  v15 = 1;
  sub_247D6C0B0(v8, v9, a3);
  a3(v10, v11, &v13, a1, a2 & 1);
  sub_247D6A1F8(v10, v11);
  return sub_247D6BAD4(&v13, &qword_27EE73588, &qword_247DD4350);
}

void sub_247DCC858(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = sub_247DD2ABC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *a1;
  v10 = v2[4];
  *v8 = v10;
  (*(v5 + 104))(v8, *MEMORY[0x277D85200], v4);
  v11 = v10;
  LOBYTE(v10) = sub_247DD2ADC();
  (*(v5 + 8))(v8, v4);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_25:
    swift_once();
    goto LABEL_8;
  }

  if (v9)
  {
    v12 = v2[2];
    if (v12)
    {
      v13 = v2[3];
      v14 = *(v2 + OBJC_IVAR____TtC5CosmoP33_0223C41AA06A946641CC9494FD9F743D15PendingResponse_completionHandler);
      if (v14 && (*(v2 + OBJC_IVAR____TtC5CosmoP33_0223C41AA06A946641CC9494FD9F743D15PendingResponse_sentResponse) & 1) == 0)
      {
        v30 = *(v2 + OBJC_IVAR____TtC5CosmoP33_0223C41AA06A946641CC9494FD9F743D15PendingResponse_completionHandler + 8);
        v31 = v2[3];
        sub_247D6ACFC(v2[2]);
        v58 = v30;
        v59 = v14;
        sub_247D6ACFC(v14);
        if (qword_27EE73330 != -1)
        {
          swift_once();
        }

        v32 = sub_247DD23CC();
        __swift_project_value_buffer(v32, qword_27EE74460);

        v33 = sub_247DD23AC();
        v34 = sub_247DD2F2C();

        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          v57 = swift_slowAlloc();
          *&v60 = v57;
          *v35 = 136315394;
          v36 = *(*(v2 + OBJC_IVAR____TtC5CosmoP33_0223C41AA06A946641CC9494FD9F743D15PendingResponse_stream) + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_connection);

          v38 = sub_247D76840(v37);
          v40 = v39;

          v41 = sub_247D72868(v38, v40, &v60);

          *(v35 + 4) = v41;
          *(v35 + 12) = 2080;
          v42 = sub_247DCE440();
          v44 = sub_247D72868(v42, v43, &v60);

          *(v35 + 14) = v44;
          _os_log_impl(&dword_247D56000, v33, v34, "%s invalidated before sending response, %s", v35, 0x16u);
          v45 = v57;
          swift_arrayDestroy();
          MEMORY[0x24C1BAF60](v45, -1, -1);
          MEMORY[0x24C1BAF60](v35, -1, -1);
        }

        v46 = *(v2 + OBJC_IVAR____TtC5CosmoP33_0223C41AA06A946641CC9494FD9F743D15PendingResponse_requestData);
        v47 = *(v2 + OBJC_IVAR____TtC5CosmoP33_0223C41AA06A946641CC9494FD9F743D15PendingResponse_requestData + 8);
        if (v47 >> 60 == 15)
        {
          v48 = 0;
        }

        else
        {
          v48 = *(v2 + OBJC_IVAR____TtC5CosmoP33_0223C41AA06A946641CC9494FD9F743D15PendingResponse_requestData);
        }

        if (v47 >> 60 == 15)
        {
          v49 = 0xC000000000000000;
        }

        else
        {
          v49 = *(v2 + OBJC_IVAR____TtC5CosmoP33_0223C41AA06A946641CC9494FD9F743D15PendingResponse_requestData + 8);
        }

        v60 = xmmword_247DD5EA0;
        v61 = 2;
        v62 = 1;
        sub_247D6AFB0();
        v50 = swift_allocError();
        *v51 = xmmword_247DD83A0;
        *(v51 + 16) = 2;
        sub_247D6C0B0(v46, v47, v52);
        v53 = v59;
        v59(v48, v49, &v60, v50, 1);
        sub_247D6A24C(v53);

        sub_247D6A1F8(v48, v49);
        sub_247D6BAD4(&v60, &qword_27EE73588, &qword_247DD4350);
      }

      else
      {
        v15 = v2[3];
      }

      v12(v2);
      sub_247D6A24C(v12);
      v54 = v2[2];
      v55 = v2[3];
      v2[2] = 0;
      v2[3] = 0;
      sub_247D6A24C(v54);
    }

    return;
  }

  if (qword_27EE73330 != -1)
  {
    goto LABEL_25;
  }

LABEL_8:
  v16 = sub_247DD23CC();
  __swift_project_value_buffer(v16, qword_27EE74460);

  v17 = sub_247DD23AC();
  v18 = sub_247DD2F2C();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *&v60 = v20;
    *v19 = 136315394;
    v21 = *(*(v2 + OBJC_IVAR____TtC5CosmoP33_0223C41AA06A946641CC9494FD9F743D15PendingResponse_stream) + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_connection);

    v23 = sub_247D76840(v22);
    v25 = v24;

    v26 = sub_247D72868(v23, v25, &v60);

    *(v19 + 4) = v26;
    *(v19 + 12) = 2080;
    v27 = sub_247DCE440();
    v29 = sub_247D72868(v27, v28, &v60);

    *(v19 + 14) = v29;
    _os_log_impl(&dword_247D56000, v17, v18, "%s ready, awaiting request, %s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1BAF60](v20, -1, -1);
    MEMORY[0x24C1BAF60](v19, -1, -1);
  }
}

void sub_247DCCDF8(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_247DD2ABC();
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x28223BE20](v4);
  v8 = (&v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v1 + 32);
  *v8 = v9;
  v10 = *MEMORY[0x277D85200];
  v11 = v5[13];
  v11(v8, *MEMORY[0x277D85200], v4);
  v98 = v9;
  LOBYTE(v9) = sub_247DD2ADC();
  v12 = v5[1];
  v12(v8, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v97 = v12;
  v95 = v11;
  LODWORD(v96) = v10;
  v15 = a1[2];
  v14 = a1[3];
  v16 = (v2 + OBJC_IVAR____TtC5CosmoP33_0223C41AA06A946641CC9494FD9F743D15PendingResponse_requestData);
  v17 = *(v2 + OBJC_IVAR____TtC5CosmoP33_0223C41AA06A946641CC9494FD9F743D15PendingResponse_requestData);
  v18 = *(v2 + OBJC_IVAR____TtC5CosmoP33_0223C41AA06A946641CC9494FD9F743D15PendingResponse_requestData + 8);
  *v16 = v15;
  v16[1] = v14;
  sub_247D6C0B0(v15, v14, v13);
  sub_247D6C0B0(v15, v14, v19);
  sub_247D6C0AC(v17, v18);
  v20 = OBJC_IVAR____TtC5CosmoP33_0223C41AA06A946641CC9494FD9F743D15PendingResponse_sentResponse;
  if (*(v2 + OBJC_IVAR____TtC5CosmoP33_0223C41AA06A946641CC9494FD9F743D15PendingResponse_sentResponse))
  {
    sub_247D6C0AC(v15, v14);
    if (qword_27EE73330 == -1)
    {
LABEL_4:
      v21 = sub_247DD23CC();
      __swift_project_value_buffer(v21, qword_27EE74460);

      v22 = sub_247DD23AC();
      v23 = sub_247DD2F2C();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v99[0] = v25;
        *v24 = 136315394;
        *(v24 + 4) = sub_247D72868(0xD000000000000015, 0x8000000247DDA710, v99);
        *(v24 + 12) = 2080;
        v26 = sub_247DCE440();
        v28 = sub_247D72868(v26, v27, v99);

        *(v24 + 14) = v28;
        _os_log_impl(&dword_247D56000, v22, v23, "%s ignoring request, already sent response, %s", v24, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C1BAF60](v25, -1, -1);
        MEMORY[0x24C1BAF60](v24, -1, -1);
      }

      return;
    }

LABEL_31:
    swift_once();
    goto LABEL_4;
  }

  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v91 = v20;
    v92 = v2;
    v93 = a1;
    v30 = *a1;
    v31 = a1[1];
    v32 = OBJC_IVAR____TtC5Cosmo25CosmoMultiplexChannelHost_handlers;
    v33 = Strong;
    swift_beginAccess();
    v94 = v33;
    v34 = *(v33 + v32);
    v35 = *(v34 + 16);

    if (v35)
    {
      v36 = sub_247D94B68(v30, v31);
      if (v37)
      {
        v38 = *(v34 + 56) + 32 * v36;
        v39 = *(v38 + 8);
        v98 = *v38;
        v40 = *(v38 + 16);
        v41 = *(v38 + 24);

        v42 = v92;
        v43 = (v92 + OBJC_IVAR____TtC5CosmoP33_0223C41AA06A946641CC9494FD9F743D15PendingResponse_completionHandler);
        v44 = *(v92 + OBJC_IVAR____TtC5CosmoP33_0223C41AA06A946641CC9494FD9F743D15PendingResponse_completionHandler);
        v45 = *(v92 + OBJC_IVAR____TtC5CosmoP33_0223C41AA06A946641CC9494FD9F743D15PendingResponse_completionHandler + 8);
        *v43 = v40;
        v43[1] = v41;

        sub_247D6A24C(v44);
        if (qword_27EE73330 != -1)
        {
          swift_once();
        }

        v46 = sub_247DD23CC();
        __swift_project_value_buffer(v46, qword_27EE74460);

        v47 = v93;
        sub_247DD1720(v93, v99);
        v48 = sub_247DD23AC();
        v49 = sub_247DD2F2C();
        sub_247DD177C(v47);

        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          v96 = v41;
          v51 = v50;
          v95 = swift_slowAlloc();
          v99[0] = v95;
          *v51 = 136315650;
          v52 = *(v42 + OBJC_IVAR____TtC5CosmoP33_0223C41AA06A946641CC9494FD9F743D15PendingResponse_stream);
          v97 = v39;
          v53 = *(v52 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_connection);

          v55 = sub_247D76840(v54);
          v57 = v56;

          v58 = sub_247D72868(v55, v57, v99);

          *(v51 + 4) = v58;
          *(v51 + 12) = 2080;
          v59 = sub_247D74640();
          v61 = sub_247D72868(v59, v60, v99);

          *(v51 + 14) = v61;
          *(v51 + 22) = 2080;
          v62 = sub_247DCE440();
          v64 = sub_247D72868(v62, v63, v99);

          *(v51 + 24) = v64;
          _os_log_impl(&dword_247D56000, v48, v49, "%s received request=%s, %s", v51, 0x20u);
          v65 = v95;
          swift_arrayDestroy();
          MEMORY[0x24C1BAF60](v65, -1, -1);
          MEMORY[0x24C1BAF60](v51, -1, -1);
        }

        if (v14 >> 60 == 15)
        {
          v66 = 0;
        }

        else
        {
          v66 = v15;
        }

        if (v14 >> 60 == 15)
        {
          v14 = 0xC000000000000000;
        }

        v67 = swift_allocObject();
        swift_weakInit();
        v68 = swift_allocObject();
        *(v68 + 16) = v67;
        v69 = *(v47 + 16);
        *(v68 + 24) = *v47;
        *(v68 + 40) = v69;
        *(v68 + 56) = *(v47 + 32);
        sub_247DD1720(v47, v99);

        v98(v66, v14, sub_247DD1868, v68);

        sub_247D6A1F8(v66, v14);

        return;
      }
    }

    v90 = v30;
    sub_247D6C0AC(v15, v14);

    if (qword_27EE73330 != -1)
    {
      swift_once();
    }

    v70 = sub_247DD23CC();
    __swift_project_value_buffer(v70, qword_27EE74460);
    v71 = v93;
    sub_247DD1720(v93, v99);
    v72 = sub_247DD23AC();
    v73 = sub_247DD2F0C();
    sub_247DD177C(v71);
    if (os_log_type_enabled(v72, v73))
    {
      v74 = v31;
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v99[0] = v76;
      *v75 = 136315394;
      *(v75 + 4) = sub_247D72868(0xD000000000000015, 0x8000000247DDA710, v99);
      *(v75 + 12) = 2080;
      *(v75 + 14) = sub_247D72868(v90, v74, v99);
      _os_log_impl(&dword_247D56000, v72, v73, "%s no handler found for path=%s", v75, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1BAF60](v76, -1, -1);
      MEMORY[0x24C1BAF60](v75, -1, -1);
    }

    v78 = v97;
    v77 = v98;
    v79 = v92;
    *v8 = v98;
    v95(v8, v96, v4);
    v80 = v77;
    LOBYTE(v77) = sub_247DD2ADC();
    v78(v8, v4);
    if (v77)
    {
      *(v79 + v91) = 1;
      sub_247DD08C4(404, 0, 0, *(v79 + OBJC_IVAR____TtC5CosmoP33_0223C41AA06A946641CC9494FD9F743D15PendingResponse_stream));

      return;
    }

    __break(1u);
    goto LABEL_33;
  }

  sub_247D6C0AC(v15, v14);
  if (qword_27EE73330 != -1)
  {
LABEL_33:
    swift_once();
  }

  v81 = sub_247DD23CC();
  __swift_project_value_buffer(v81, qword_27EE74460);

  v82 = sub_247DD23AC();
  v83 = sub_247DD2F0C();

  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    v99[0] = v85;
    *v84 = 136315394;
    *(v84 + 4) = sub_247D72868(0xD000000000000015, 0x8000000247DDA710, v99);
    *(v84 + 12) = 2080;
    v86 = sub_247DCE440();
    v88 = sub_247D72868(v86, v87, v99);

    *(v84 + 14) = v88;
    swift_arrayDestroy();
    MEMORY[0x24C1BAF60](v85, -1, -1);
    MEMORY[0x24C1BAF60](v84, -1, -1);
  }

  sub_247DCC118(0xD000000000000028, 0x8000000247DDA6E0);
}

uint64_t sub_247DCD7E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_247DD2A0C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_247DD2A2C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v21[2] = *(result + 32);
    v16 = result;
    sub_247D6BA6C(a1, &v24, &qword_27EE73588, &qword_247DD4350);
    v17 = swift_allocObject();
    v18 = v25[0];
    *(v17 + 16) = v24;
    *(v17 + 32) = v18;
    *(v17 + 41) = *(v25 + 9);
    v19 = *(a3 + 16);
    *(v17 + 72) = *a3;
    *(v17 + 64) = v16;
    v21[1] = v16;
    *(v17 + 88) = v19;
    *(v17 + 104) = *(a3 + 32);
    aBlock[4] = sub_247DD18F4;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_247D598D4;
    aBlock[3] = &block_descriptor_61;
    v20 = _Block_copy(aBlock);

    sub_247DD1720(a3, v22);
    sub_247DD2A1C();
    v22[0] = MEMORY[0x277D84F90];
    sub_247DD1DD0(&unk_27EE73AF0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE733C0, &qword_247DD83B0);
    v21[0] = v10;
    sub_247D869B0(&qword_27EE73B00, &unk_27EE733C0, &qword_247DD83B0);
    sub_247DD2FFC();
    MEMORY[0x24C1BA270](0, v14, v9, v20);
    _Block_release(v20);
    (*(v6 + 8))(v9, v5);
    (*(v11 + 8))(v14, v21[0]);
  }

  return result;
}

uint64_t sub_247DCDB38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_247D6BA6C(a1, &v42, &qword_27EE73588, &qword_247DD4350);
  if ((v44 & 1) == 0)
  {
    sub_247D6B5A8(&v42, v39);
    sub_247D6BA6C(a1, &v37, &qword_27EE73588, &qword_247DD4350);
    v17 = swift_allocObject();
    *(v17 + 16) = a2;
    v18 = *(a3 + 16);
    *(v17 + 24) = *a3;
    *(v17 + 40) = v18;
    *(v17 + 56) = *(a3 + 32);
    v19 = v38[0];
    *(v17 + 64) = v37;
    *(v17 + 80) = v19;
    *(v17 + 89) = *(v38 + 9);
    v20 = v40;
    v21 = v41;
    v22 = __swift_project_boxed_opaque_existential_1(v39, v40);

    sub_247DD1720(a3, v36);
    v23 = sub_247DD1E54;
    goto LABEL_18;
  }

  v6 = v42;
  v7 = v43;
  if (v43 < 2u || v42 <= 3)
  {
    goto LABEL_4;
  }

  if (!(v42 ^ 4 | *(&v42 + 1)))
  {
    v40 = &type metadata for CosmoBadRequestHttpResponse;
    v41 = sub_247DD16CC();
    v8 = 400;
    goto LABEL_5;
  }

  if (v42 ^ 5 | *(&v42 + 1))
  {
LABEL_4:
    v40 = &type metadata for CosmoInternalServerErrorHttpResponse;
    v41 = sub_247DD1678();
    sub_247D6AD68(v6, *(&v6 + 1), v7);
    v8 = 500;
  }

  else
  {
    v40 = &type metadata for CosmoNotFoundHttpResponse;
    v41 = sub_247DD1930();
    v8 = 404;
  }

LABEL_5:
  LODWORD(v39[0]) = v8;
  if (qword_27EE73330 != -1)
  {
    swift_once();
  }

  v9 = sub_247DD23CC();
  __swift_project_value_buffer(v9, qword_27EE74460);
  sub_247D6B5C0(v39, &v37);

  v10 = sub_247DD23AC();
  v11 = sub_247DD2F2C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v35 = v13;
    *v12 = 136315394;
    sub_247D6B5C0(&v37, v36);
    sub_247D6BA6C(v36, &v33, &qword_27EE73598, &qword_247DD4360);
    if (v34)
    {
      sub_247D6B5A8(&v33, v32);
      sub_247D6B5C0(v32, v31);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE73590, &qword_247DD4358);
      v14 = sub_247DD2CFC();
      v16 = v15;
      __swift_destroy_boxed_opaque_existential_0Tm(v32);
    }

    else
    {
      v16 = 0xE300000000000000;
      v14 = 7104878;
    }

    sub_247D6BAD4(v36, &qword_27EE73598, &qword_247DD4360);
    __swift_destroy_boxed_opaque_existential_0Tm(&v37);
    v24 = sub_247D72868(v14, v16, &v35);

    *(v12 + 4) = v24;
    *(v12 + 12) = 2080;
    v25 = sub_247DCE440();
    v27 = sub_247D72868(v25, v26, &v35);

    *(v12 + 14) = v27;
    _os_log_impl(&dword_247D56000, v10, v11, "HTTP stream sending response=%s, %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1BAF60](v13, -1, -1);
    MEMORY[0x24C1BAF60](v12, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(&v37);
  }

  sub_247D6BA6C(a1, &v37, &qword_27EE73588, &qword_247DD4350);
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  v28 = *(a3 + 16);
  *(v17 + 24) = *a3;
  *(v17 + 40) = v28;
  *(v17 + 56) = *(a3 + 32);
  v29 = v38[0];
  *(v17 + 64) = v37;
  *(v17 + 80) = v29;
  *(v17 + 89) = *(v38 + 9);
  v20 = v40;
  v21 = v41;
  v22 = __swift_project_boxed_opaque_existential_1(v39, v40);

  sub_247DD1720(a3, v36);
  v23 = sub_247DD1908;
LABEL_18:
  sub_247DD0BE4(v22, v23, v17, a2, v20, v21);

  return __swift_destroy_boxed_opaque_existential_0Tm(v39);
}

uint64_t sub_247DCDFC8(uint64_t result, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a3 + OBJC_IVAR____TtC5CosmoP33_0223C41AA06A946641CC9494FD9F743D15PendingResponse_completionHandler);
  if (v5)
  {
    v8 = result;
    v9 = *(a3 + OBJC_IVAR____TtC5CosmoP33_0223C41AA06A946641CC9494FD9F743D15PendingResponse_completionHandler + 8);
    v10 = *(a4 + 16);
    v11 = *(a4 + 24);
    if (v11 >> 60 == 15)
    {
      v12 = 0;
    }

    else
    {
      v12 = *(a4 + 16);
    }

    if (v11 >> 60 == 15)
    {
      v13 = 0xC000000000000000;
    }

    else
    {
      v13 = *(a4 + 24);
    }

    v14 = *(a3 + OBJC_IVAR____TtC5CosmoP33_0223C41AA06A946641CC9494FD9F743D15PendingResponse_completionHandler + 8);
    sub_247D6ACFC(*(a3 + OBJC_IVAR____TtC5CosmoP33_0223C41AA06A946641CC9494FD9F743D15PendingResponse_completionHandler));
    sub_247D6C0B0(v10, v11, v15);
    v5(v12, v13, a5, v8, a2 & 1);
    sub_247D6A24C(v5);

    return sub_247D6A1F8(v12, v13);
  }

  return result;
}

uint64_t sub_247DCE0B8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_247DD2ABC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = *(v2 + 32);
  *v8 = v12;
  (*(v5 + 104))(v8, *MEMORY[0x277D85200], v4);
  v13 = v12;
  LOBYTE(v12) = sub_247DD2ADC();
  (*(v5 + 8))(v8, v4);
  if (v12)
  {
    if (qword_27EE73330 == -1)
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
  v14 = sub_247DD23CC();
  __swift_project_value_buffer(v14, qword_27EE74460);

  sub_247DA4C1C(v9, v10, v11);
  v15 = sub_247DD23AC();
  v16 = sub_247DD2F0C();
  sub_247D82AF0(v9, v10, v11);

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v39 = v38;
    *v17 = 136315650;
    v18 = *(*(v2 + OBJC_IVAR____TtC5CosmoP33_0223C41AA06A946641CC9494FD9F743D15PendingResponse_stream) + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_connection);

    v20 = sub_247D76840(v19);
    v22 = v21;

    v23 = sub_247D72868(v20, v22, &v39);

    *(v17 + 4) = v23;
    *(v17 + 12) = 2080;
    v40[0] = v9;
    v40[1] = v10;
    v41 = v11;
    sub_247DA4C1C(v9, v10, v11);
    v24 = sub_247DD2CFC();
    v26 = sub_247D72868(v24, v25, &v39);

    *(v17 + 14) = v26;
    *(v17 + 22) = 2080;
    v27 = sub_247DCE440();
    v29 = sub_247D72868(v27, v28, &v39);

    *(v17 + 24) = v29;
    _os_log_impl(&dword_247D56000, v15, v16, "%s encountered error=%s while receiving request, %s", v17, 0x20u);
    v30 = v38;
    swift_arrayDestroy();
    MEMORY[0x24C1BAF60](v30, -1, -1);
    MEMORY[0x24C1BAF60](v17, -1, -1);
  }

  if ((v11 - 1) >= 2u)
  {
    v31 = 400;
    v32 = &type metadata for CosmoBadRequestHttpResponse;
    v33 = sub_247DD16CC();
  }

  else
  {
    v31 = 500;
    v32 = &type metadata for CosmoInternalServerErrorHttpResponse;
    v33 = sub_247DD1678();
  }

  v34 = v33;
  v42 = v32;
  v43 = v33;
  LODWORD(v40[0]) = v31;
  v35 = __swift_project_boxed_opaque_existential_1(v40, v32);
  sub_247DD0BE4(v35, 0, 0, v2, v32, v34);
  return __swift_destroy_boxed_opaque_existential_0Tm(v40);
}

uint64_t sub_247DCE440()
{
  sub_247DD304C();
  MEMORY[0x24C1BA0A0](4023401, 0xE300000000000000);
  sub_247DD225C();
  sub_247DD1DD0(&unk_27EE73510, MEMORY[0x277CC95F0]);
  v1 = sub_247DD321C();
  MEMORY[0x24C1BA0A0](v1);

  MEMORY[0x24C1BA0A0](0xD000000000000012, 0x8000000247DDA6C0);
  if (*(v0 + OBJC_IVAR____TtC5CosmoP33_0223C41AA06A946641CC9494FD9F743D15PendingResponse_requestData + 8) >> 60 == 15)
  {
    v2 = 0x65736C6166;
  }

  else
  {
    v2 = 1702195828;
  }

  if (*(v0 + OBJC_IVAR____TtC5CosmoP33_0223C41AA06A946641CC9494FD9F743D15PendingResponse_requestData + 8) >> 60 == 15)
  {
    v3 = 0xE500000000000000;
  }

  else
  {
    v3 = 0xE400000000000000;
  }

  MEMORY[0x24C1BA0A0](v2, v3);

  MEMORY[0x24C1BA0A0](0x65722D746E657320, 0xEF3D65736E6F7073);
  if (*(v0 + OBJC_IVAR____TtC5CosmoP33_0223C41AA06A946641CC9494FD9F743D15PendingResponse_sentResponse))
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC5CosmoP33_0223C41AA06A946641CC9494FD9F743D15PendingResponse_sentResponse))
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x24C1BA0A0](v4, v5);

  MEMORY[0x24C1BA0A0](0x74656C706D6F6320, 0xEB000000003D6465);
  v6 = *(v0 + 16);
  if (v6)
  {
    v7 = 0x65736C6166;
  }

  else
  {
    v7 = 1702195828;
  }

  if (v6)
  {
    v8 = 0xE500000000000000;
  }

  else
  {
    v8 = 0xE400000000000000;
  }

  MEMORY[0x24C1BA0A0](v7, v8);

  return 0;
}

uint64_t sub_247DCE62C()
{
  v1 = *(v0 + 24);
  sub_247D6A24C(*(v0 + 16));

  v2 = OBJC_IVAR____TtC5CosmoP33_0223C41AA06A946641CC9494FD9F743D15PendingResponse_id;
  v3 = sub_247DD225C();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  swift_weakDestroy();
  v4 = *(v0 + OBJC_IVAR____TtC5CosmoP33_0223C41AA06A946641CC9494FD9F743D15PendingResponse_stream);

  v5 = *(v0 + OBJC_IVAR____TtC5CosmoP33_0223C41AA06A946641CC9494FD9F743D15PendingResponse_completionHandler + 8);
  sub_247D6A24C(*(v0 + OBJC_IVAR____TtC5CosmoP33_0223C41AA06A946641CC9494FD9F743D15PendingResponse_completionHandler));
  sub_247D6C0AC(*(v0 + OBJC_IVAR____TtC5CosmoP33_0223C41AA06A946641CC9494FD9F743D15PendingResponse_requestData), *(v0 + OBJC_IVAR____TtC5CosmoP33_0223C41AA06A946641CC9494FD9F743D15PendingResponse_requestData + 8));
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v6, v7);
}

uint64_t sub_247DCE720(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_247DD221C();
}

uint64_t sub_247DCE760(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE74508, &qword_247DD8600);
  v39 = a2;
  result = sub_247DD30DC();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
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
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v5 + 56) + 32 * v22;
      v40 = *v26;
      v41 = *(v26 + 8);
      v27 = *(v26 + 24);
      if ((v39 & 1) == 0)
      {
      }

      v28 = *(v8 + 40);
      sub_247DD32BC();
      sub_247DD2D7C();
      result = sub_247DD32EC();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = *(v8 + 56) + 32 * v16;
      *v18 = v40;
      *(v18 + 8) = v41;
      *(v18 + 24) = v27;
      ++*(v8 + 16);
      v5 = v38;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_247DCEA3C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE74518, &qword_247DD8610);
  result = sub_247DD30DC();
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
      v21 = *(*(v5 + 48) + 4 * v20);
      v31 = *(*(v5 + 56) + 16 * v20);
      if ((a2 & 1) == 0)
      {
      }

      result = MEMORY[0x24C1BA5A0](*(v8 + 40), v21, 4);
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
      *(*(v8 + 48) + 4 * v16) = v21;
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

uint64_t sub_247DCECB4(uint64_t a1, int a2)
{
  v3 = v2;
  v57 = sub_247DD20DC();
  v6 = *(v57 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v57);
  v56 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_247DD225C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v58 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE74510, &qword_247DD8608);
  v52 = a2;
  result = sub_247DD30DC();
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
      sub_247DD1DD0(&qword_27EE738D0, MEMORY[0x277CC95F0]);
      result = sub_247DD2C5C();
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

uint64_t sub_247DCF15C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_247DD225C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE74520, &qword_247DD8618);
  v49 = a2;
  result = sub_247DD30DC();
  v14 = result;
  if (*(v11 + 16))
  {
    v55 = v10;
    v45 = v3;
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
    v46 = (v7 + 16);
    v47 = v11;
    v48 = v7;
    v50 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v25 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v28 = v25 | (v15 << 6);
      v29 = *(v11 + 48);
      v54 = *(v48 + 72);
      v30 = v29 + v54 * v28;
      if (v49)
      {
        (*v50)(v55, v30, v6);
        v31 = (*(v11 + 56) + 24 * v28);
        v32 = *v31;
        v52 = v31[1];
        v53 = v32;
        v51 = v31[2];
      }

      else
      {
        (*v46)(v55, v30, v6);
        v33 = (*(v11 + 56) + 24 * v28);
        v34 = *v33;
        v52 = v33[1];
        v53 = v34;
        v51 = v33[2];
      }

      v35 = *(v14 + 40);
      sub_247DD1DD0(&qword_27EE738D0, MEMORY[0x277CC95F0]);
      result = sub_247DD2C5C();
      v36 = -1 << *(v14 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v21 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v21 + 8 * v38);
          if (v42 != -1)
          {
            v22 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v37) & ~*(v21 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v50)(*(v14 + 48) + v54 * v22, v55, v6);
      v23 = (*(v14 + 56) + 24 * v22);
      v24 = v52;
      *v23 = v53;
      v23[1] = v24;
      v23[2] = v51;
      ++*(v14 + 16);
      v11 = v47;
    }

    v26 = v15;
    while (1)
    {
      v15 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v27 = v16[v15];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v19 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v49 & 1) == 0)
    {

      v3 = v45;
      goto LABEL_36;
    }

    v43 = 1 << *(v11 + 32);
    v3 = v45;
    if (v43 >= 64)
    {
      bzero(v16, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v43;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_247DCF568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  v16 = *v7;
  v17 = sub_247D94B68(a5, a6);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_17;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a7 & 1) == 0)
  {
    if (v24 < v22 || (a7 & 1) != 0)
    {
      sub_247DCE760(v22, a7 & 1);
      v26 = *v8;
      v17 = sub_247D94B68(a5, a6);
      if ((v23 & 1) != (v27 & 1))
      {
LABEL_18:
        result = sub_247DD323C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v25 = v17;
      sub_247DCF874();
      v17 = v25;
    }
  }

  v28 = *v8;
  if (v23)
  {
    v29 = (v28[7] + 32 * v17);
    v30 = v29[1];
    v31 = v29[3];
    *v29 = a1;
    v29[1] = a2;
    v29[2] = a3;
    v29[3] = a4;
  }

  v28[(v17 >> 6) + 8] |= 1 << v17;
  v33 = (v28[6] + 16 * v17);
  *v33 = a5;
  v33[1] = a6;
  v34 = (v28[7] + 32 * v17);
  *v34 = a1;
  v34[1] = a2;
  v34[2] = a3;
  v34[3] = a4;
  v35 = v28[2];
  v21 = __OFADD__(v35, 1);
  v36 = v35 + 1;
  if (v21)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v28[2] = v36;
}

unint64_t sub_247DCF714(uint64_t a1, uint64_t a2, unsigned int a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_247D94BE0(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_247DCEA3C(v16, a4 & 1);
      v20 = *v5;
      result = sub_247D94BE0(a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_247DD323C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_247DCFA18();
      result = v19;
    }
  }

  v22 = *v5;
  if ((v17 & 1) == 0)
  {
    v22[(result >> 6) + 8] |= 1 << result;
    *(v22[6] + 4 * result) = a3;
    v25 = (v22[7] + 16 * result);
    *v25 = a1;
    v25[1] = a2;
    v26 = v22[2];
    v15 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (!v15)
    {
      v22[2] = v27;
      return result;
    }

    goto LABEL_15;
  }

  v23 = (v22[7] + 16 * result);
  v24 = v23[1];
  *v23 = a1;
  v23[1] = a2;
}

void *sub_247DCF874()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE74508, &qword_247DD8600);
  v2 = *v0;
  v3 = sub_247DD30CC();
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 32;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 24);
        v25 = (*(v4 + 48) + v18);
        v26 = *(v22 + 8);
        *v25 = v21;
        v25[1] = v20;
        v27 = *(v4 + 56) + v17;
        *v27 = v23;
        *(v27 + 8) = v26;
        *(v27 + 24) = v24;
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

void *sub_247DCFA18()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE74518, &qword_247DD8610);
  v2 = *v0;
  v3 = sub_247DD30CC();
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
        *(*(v4 + 48) + 4 * v17) = *(*(v2 + 48) + 4 * v17);
        *(*(v4 + 56) + 16 * v17) = v18;
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

char *sub_247DCFB7C()
{
  v1 = v0;
  v43 = sub_247DD20DC();
  v46 = *(v43 - 8);
  v2 = *(v46 + 64);
  MEMORY[0x28223BE20](v43);
  v42 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_247DD225C();
  v45 = *(v41 - 8);
  v4 = *(v45 + 64);
  MEMORY[0x28223BE20](v41);
  v40 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE74510, &qword_247DD8608);
  v6 = *v0;
  v7 = sub_247DD30CC();
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

char *sub_247DCFED0()
{
  v1 = v0;
  v37 = sub_247DD225C();
  v39 = *(v37 - 8);
  v2 = *(v39 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE74520, &qword_247DD8618);
  v4 = *v0;
  v5 = sub_247DD30CC();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v38 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v33 = v39 + 32;
    v34 = v39 + 16;
    v35 = v4;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v41 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v39;
        v21 = *(v39 + 72) * v19;
        v23 = v36;
        v22 = v37;
        (*(v39 + 16))(v36, *(v4 + 48) + v21, v37);
        v24 = 24 * v19;
        v25 = (*(v4 + 56) + 24 * v19);
        v26 = *v25;
        v27 = v25[1];
        v40 = v25[2];
        v28 = v38;
        (*(v20 + 32))(*(v38 + 48) + v21, v23, v22);
        v29 = (*(v28 + 56) + v24);
        *v29 = v26;
        v29[1] = v27;
        v4 = v35;
        v29[2] = v40;

        v14 = v41;
      }

      while (v41);
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

        v1 = v31;
        v6 = v38;
        goto LABEL_18;
      }

      v18 = *(v32 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v41 = (v18 - 1) & v18;
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

uint64_t sub_247DD0170(uint64_t a1, unint64_t a2)
{
  sub_247D6A2E8(a1, a2);
  v4 = *(sub_247DD027C(a1, a2) + 16);
  v5 = sub_247DD2D5C();

  return v5;
}

uint64_t sub_247DD01DC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_247DD2D5C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_247DD0218(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_247DD30BC();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_247DD307C();
}

uint64_t sub_247DD027C(uint64_t a1, unint64_t a2)
{
  v4 = sub_247DD219C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v10 != 2)
    {
LABEL_12:
      sub_247D6A1F8(a1, a2);
      return MEMORY[0x277D84F90];
    }

    v13 = *(a1 + 16);
    v12 = *(a1 + 24);
    v11 = v12 - v13;
    if (!__OFSUB__(v12, v13))
    {
      if (v11)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v10)
    {
      goto LABEL_10;
    }

    v11 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v14 = sub_247D80A0C(v11, 0);
      v15 = sub_247DD20FC();
      sub_247D6A1F8(a1, a2);
      v16 = *(v5 + 8);
      v5 += 8;
      v16(v9, v4);
      result = v14;
      if (v15 == v11)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v17 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v11 = v17;
      if (!v17)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t sub_247DD03F8(uint64_t a1, unint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  if (v2 != 2)
  {
    goto LABEL_16;
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  a1 = sub_247DD1FFC();
  if (a1)
  {
    a1 = sub_247DD202C();
    if (__OFSUB__(v3, a1))
    {
      goto LABEL_18;
    }
  }

  if (__OFSUB__(v4, v3))
  {
    __break(1u);
LABEL_10:
    v5 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!sub_247DD1FFC() || !__OFSUB__(v5, sub_247DD202C()))
      {
        goto LABEL_15;
      }

LABEL_19:
      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_15:
  sub_247DD201C();
LABEL_16:
  result = sub_247DD2D5C();
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_247DD05A4(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_247DD2A0C();
  v21 = *(v8 - 8);
  v9 = *(v21 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_247DD2A2C();
  v12 = *(v20 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v20);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25[3] = &type metadata for CosmoInternalServerErrorHttpResponse;
  v25[4] = &off_2859E47B0;
  LODWORD(v25[0]) = a1;
  v16 = *(a4 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_queue);
  sub_247D6B5C0(v25, v24);
  v17 = swift_allocObject();
  v17[2] = a4;
  v17[3] = a2;
  v17[4] = a3;
  sub_247D6B5A8(v24, (v17 + 5));
  aBlock[4] = sub_247DD1E3C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_247D598D4;
  aBlock[3] = &block_descriptor_83;
  v18 = _Block_copy(aBlock);

  sub_247D6ACFC(a2);
  sub_247DD2A1C();
  v22 = MEMORY[0x277D84F90];
  sub_247DD1DD0(&unk_27EE73AF0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE733C0, &qword_247DD83B0);
  sub_247D869B0(&qword_27EE73B00, &unk_27EE733C0, &qword_247DD83B0);
  sub_247DD2FFC();
  MEMORY[0x24C1BA270](0, v15, v11, v18);
  _Block_release(v18);
  (*(v21 + 8))(v11, v8);
  (*(v12 + 8))(v15, v20);

  return __swift_destroy_boxed_opaque_existential_0Tm(v25);
}

uint64_t sub_247DD08C4(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_247DD2A0C();
  v21 = *(v8 - 8);
  v9 = *(v21 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_247DD2A2C();
  v12 = *(v20 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v20);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25[3] = &type metadata for CosmoNotFoundHttpResponse;
  v25[4] = &off_2859E47D8;
  LODWORD(v25[0]) = a1;
  v16 = *(a4 + OBJC_IVAR____TtC5Cosmo19CosmoHttpConnection_queue);
  sub_247D6B5C0(v25, v24);
  v17 = swift_allocObject();
  v17[2] = a4;
  v17[3] = a2;
  v17[4] = a3;
  sub_247D6B5A8(v24, (v17 + 5));
  aBlock[4] = sub_247D8182C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_247D598D4;
  aBlock[3] = &block_descriptor_73;
  v18 = _Block_copy(aBlock);

  sub_247D6ACFC(a2);
  sub_247DD2A1C();
  v22 = MEMORY[0x277D84F90];
  sub_247DD1DD0(&unk_27EE73AF0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE733C0, &qword_247DD83B0);
  sub_247D869B0(&qword_27EE73B00, &unk_27EE733C0, &qword_247DD83B0);
  sub_247DD2FFC();
  MEMORY[0x24C1BA270](0, v15, v11, v18);
  _Block_release(v18);
  (*(v21 + 8))(v11, v8);
  (*(v12 + 8))(v15, v20);

  return __swift_destroy_boxed_opaque_existential_0Tm(v25);
}

uint64_t sub_247DD0BE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = a3;
  v11 = sub_247DD2ABC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = (&v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(a5 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v20, a1, a5);
  v21 = *(a4 + 32);
  *v16 = v21;
  (*(v12 + 104))(v16, *MEMORY[0x277D85200], v11);
  v22 = v21;
  LOBYTE(v21) = sub_247DD2ADC();
  result = (*(v12 + 8))(v16, v11);
  if (v21)
  {
    *(a4 + OBJC_IVAR____TtC5CosmoP33_0223C41AA06A946641CC9494FD9F743D15PendingResponse_sentResponse) = 1;
    sub_247D81480(v20, a2, v25, *(a4 + OBJC_IVAR____TtC5CosmoP33_0223C41AA06A946641CC9494FD9F743D15PendingResponse_stream), a5, *(a6 + 8));
    return (*(v17 + 8))(v20, a5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_247DD0DF0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v35 = a4;
  v9 = type metadata accessor for NetworkDescriptor();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_247DD2F6C();
  v33 = *(v13 - 8);
  v34 = v13;
  v14 = *(v33 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_247DD2F3C();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v19 = sub_247DD2A2C();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v4[2] = 0;
  v4[3] = 0;
  *(v4 + OBJC_IVAR____TtC5Cosmo25CosmoMultiplexChannelHost_handlers) = MEMORY[0x277D84F98];
  *(v4 + OBJC_IVAR____TtC5Cosmo25CosmoMultiplexChannelHost_ready) = 0;
  *(v4 + OBJC_IVAR____TtC5Cosmo25CosmoMultiplexChannelHost_terminated) = 0;
  *(v4 + OBJC_IVAR____TtC5Cosmo25CosmoMultiplexChannelHost_acceptedStreamCount) = 0;
  v21 = MEMORY[0x277D84F90];
  *(v4 + OBJC_IVAR____TtC5Cosmo25CosmoMultiplexChannelHost_activeResponses) = MEMORY[0x277D84F90];
  v4[4] = a1;
  v4[5] = a2;
  v22 = v35;
  if (v35)
  {
    v23 = v35;
  }

  else
  {
    v24 = sub_247D6A0F4();
    v32[2] = &enum case for CosmoMultiplexChannelHost.State.invalidated(_:);
    v32[3] = v24;
    sub_247DD2A1C();
    v36 = v21;
    v32[1] = sub_247DD1DD0(&unk_27EE73390, MEMORY[0x277D85230]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE739B0, &unk_247DD3F70);
    sub_247D869B0(&qword_27EE733A0, &unk_27EE739B0, &unk_247DD3F70);
    sub_247DD2FFC();
    (*(v33 + 104))(v16, *MEMORY[0x277D85260], v34);
    v23 = sub_247DD2F8C();
  }

  v5[6] = v23;
  sub_247D86A04(a3, v5 + OBJC_IVAR____TtC5Cosmo25CosmoMultiplexChannelHost_descriptor);
  sub_247D86A04(a3, v12);
  v25 = type metadata accessor for CosmoListener();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  v28 = swift_allocObject();
  v28[1] = 0u;
  v28[2] = 0u;
  v28[3] = 0u;
  *(v28 + OBJC_IVAR____TtC5Cosmo13CosmoListener_listener) = 0;
  *(v28 + OBJC_IVAR____TtC5Cosmo13CosmoListener_restarting) = 0;
  sub_247D86A04(v12, v28 + OBJC_IVAR____TtC5Cosmo13CosmoListener_descriptor);
  v29 = v22;
  v30 = v23;
  sub_247D8690C(v12);
  *(v28 + OBJC_IVAR____TtC5Cosmo13CosmoListener_queue) = v30;
  sub_247D8690C(a3);
  *(v5 + OBJC_IVAR____TtC5Cosmo25CosmoMultiplexChannelHost_listener) = v28;
  return v5;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_247DD11E0()
{
  v1 = v0[5];

  v2 = v0[7];

  if (v0[8])
  {
    v3 = v0[9];
  }

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

unint64_t sub_247DD1248()
{
  result = qword_27EE74498;
  if (!qword_27EE74498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE74498);
  }

  return result;
}

uint64_t sub_247DD12DC()
{
  result = type metadata accessor for NetworkDescriptor();
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

uint64_t sub_247DD150C()
{
  result = sub_247DD225C();
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

uint64_t sub_247DD15E0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_247DD1628(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_247DD1678()
{
  result = qword_27EE744F0;
  if (!qword_27EE744F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE744F0);
  }

  return result;
}

unint64_t sub_247DD16CC()
{
  result = qword_27EE744F8;
  if (!qword_27EE744F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE744F8);
  }

  return result;
}

uint64_t sub_247DD17D0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_247DD1808()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];
  if (v3 >> 60 != 15)
  {
    sub_247D6A1F8(v0[5], v3);
  }

  v4 = v0[7];
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_247DD1874()
{
  if (*(v0 + 56))
  {
    sub_247D6AD68(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  }

  v1 = *(v0 + 64);

  v2 = *(v0 + 80);

  v3 = *(v0 + 96);
  if (v3 >> 60 != 15)
  {
    sub_247D6A1F8(*(v0 + 88), v3);
  }

  v4 = *(v0 + 104);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

unint64_t sub_247DD1930()
{
  result = qword_27EE74500;
  if (!qword_27EE74500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE74500);
  }

  return result;
}

uint64_t objectdestroy_63Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);
  if (v3 >> 60 != 15)
  {
    sub_247D6A1F8(*(v0 + 40), v3);
  }

  v4 = *(v0 + 56);
  swift_unknownObjectRelease();
  if (*(v0 + 104))
  {
    sub_247D6AD68(*(v0 + 64), *(v0 + 72), *(v0 + 80));
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 64));
  }

  return MEMORY[0x2821FE8E8](v0, 105, 7);
}

uint64_t sub_247DD1A08()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroy_69Tm()
{
  v1 = v0[2];

  if (v0[3])
  {
    v2 = v0[4];
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 5);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

void *sub_247DD1AB8(uint64_t a1, uint64_t a2)
{
  v2[2] = 0;
  v2[3] = 0;
  sub_247DD224C();
  swift_weakInit();
  v5 = (v2 + OBJC_IVAR____TtC5CosmoP33_0223C41AA06A946641CC9494FD9F743D15PendingResponse_completionHandler);
  *v5 = 0;
  v5[1] = 0;
  *(v2 + OBJC_IVAR____TtC5CosmoP33_0223C41AA06A946641CC9494FD9F743D15PendingResponse_requestData) = xmmword_247DD3EC0;
  *(v2 + OBJC_IVAR____TtC5CosmoP33_0223C41AA06A946641CC9494FD9F743D15PendingResponse_sentResponse) = 0;
  *(v2 + OBJC_IVAR____TtC5CosmoP33_0223C41AA06A946641CC9494FD9F743D15PendingResponse_stream) = a1;
  swift_weakAssign();
  v6 = *(a2 + 48);

  v7 = v6;

  v2[4] = v7;
  v8 = swift_allocObject();
  swift_weakInit();
  swift_beginAccess();
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  *(a1 + 16) = sub_247DD1BFC;
  *(a1 + 24) = v8;

  sub_247D6A24C(v9);

  return v2;
}

uint64_t sub_247DD1C2C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_247DD1C64()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_247DD1CD4()
{
  if (v0[4])
  {
    v1 = v0[5];
  }

  v2 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_247DD1D54()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_247DD1D8C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  return sub_247DCA33C(a1, *(v1 + 32));
}

uint64_t sub_247DD1DD0(unint64_t *a1, void (*a2)(uint64_t))
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