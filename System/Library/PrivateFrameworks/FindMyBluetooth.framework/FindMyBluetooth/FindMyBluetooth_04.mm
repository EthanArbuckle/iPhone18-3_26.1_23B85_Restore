void sub_24AC761A4()
{
  if (!v0[3])
  {
    __break(1u);
    goto LABEL_8;
  }

  v1 = v0[4];
  if (!v1)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v2 = v0[6];
  if (!v2)
  {
LABEL_9:
    __break(1u);
    return;
  }

  [v2 integerValue];
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_24AC76284;
  v4 = v0[5];
  v5 = v0[2];

  (sub_24AC784DC)(v1, v4);
}

uint64_t sub_24AC76284()
{
  v1 = *(*v0 + 56);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

id sub_24AC76454()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DelegateTrampoline_CBPairingAgentDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_24AC76548()
{
  result = qword_27EF9E4B0;
  if (!qword_27EF9E4B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF9E4B8, &qword_24ACD54D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9E4B0);
  }

  return result;
}

uint64_t sub_24AC765AC(void *a1)
{
  a1[1] = sub_24AC78D78(&qword_27EF9E4C0, type metadata accessor for PairingAgent);
  a1[2] = sub_24AC78D78(&qword_27EF9E4C8, type metadata accessor for PairingAgent);
  result = sub_24AC78D78(&unk_27EF9E4D0, type metadata accessor for PairingAgent);
  a1[3] = result;
  return result;
}

uint64_t sub_24AC76658(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_24AC214AC;

  return sub_24AC7617C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_24AC76734(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_24ACD0420();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC76800, v1, 0);
}

uint64_t sub_24AC76800()
{
  v36 = v0;
  v1 = *(v0 + 80);
  v2 = *(v0 + 48);
  v3 = [*(v0 + 40) identifier];
  sub_24ACD03F0();

  v4 = OBJC_IVAR____TtC15FindMyBluetooth12PairingAgent_pairingPeripherals;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (*(v5 + 16))
  {
    v6 = *(v0 + 80);

    v7 = sub_24AC2ABC8(v6);
    if (v8)
    {
      v9 = *(v0 + 80);
      v10 = *(v0 + 56);
      v11 = *(v0 + 64);
      *(v0 + 88) = *(*(v5 + 56) + 8 * v7);
      v12 = *(v11 + 8);

      v12(v9, v10);

      v13 = swift_task_alloc();
      *(v0 + 96) = v13;
      *v13 = v0;
      v13[1] = sub_24AC76B74;

      return sub_24AC3B2B0(0);
    }
  }

  v15 = *(*(v0 + 64) + 8);
  v15(*(v0 + 80), *(v0 + 56));
  if (qword_2814ADB68 != -1)
  {
    swift_once();
  }

  v16 = *(v0 + 40);
  v17 = sub_24ACD0490();
  __swift_project_value_buffer(v17, qword_2814ADB70);
  v18 = v16;
  v19 = sub_24ACD0470();
  v20 = sub_24ACD0910();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = *(v0 + 72);
    v22 = *(v0 + 56);
    v23 = *(v0 + 40);
    v24 = swift_slowAlloc();
    v34 = v15;
    v35 = swift_slowAlloc();
    v25 = v35;
    *v24 = 136446210;
    v26 = [v23 identifier];
    sub_24ACD03F0();

    sub_24AC78D78(&qword_27EF9E4E0, MEMORY[0x277CC95F0]);
    v27 = sub_24ACD0C20();
    v29 = v28;
    v34(v21, v22);
    v30 = sub_24AC29E20(v27, v29, &v35);

    *(v24 + 4) = v30;
    _os_log_impl(&dword_24AC18000, v19, v20, "peerDidComplete for unknown peripheral: %{public}s!", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x24C22DC60](v25, -1, -1);
    MEMORY[0x24C22DC60](v24, -1, -1);
  }

  v32 = *(v0 + 72);
  v31 = *(v0 + 80);

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_24AC76B74()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;
  *(*v1 + 104) = v0;

  v5 = *(v2 + 48);
  if (v0)
  {
    v6 = sub_24AC76E74;
  }

  else
  {
    v6 = sub_24AC76CA0;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24AC76CA0()
{
  v18 = v0;
  if (qword_2814ADB68 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = sub_24ACD0490();
  __swift_project_value_buffer(v2, qword_2814ADB70);

  v3 = sub_24ACD0470();
  v4 = sub_24ACD08F0();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[11];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;

    v9 = sub_24AC39074();
    v11 = v10;

    v12 = sub_24AC29E20(v9, v11, &v17);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_24AC18000, v3, v4, "Pairing completed for %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x24C22DC60](v8, -1, -1);
    MEMORY[0x24C22DC60](v7, -1, -1);
  }

  else
  {
  }

  v14 = v0[9];
  v13 = v0[10];

  v15 = v0[1];

  return v15();
}

uint64_t sub_24AC76E74()
{
  v20 = v0;
  if (qword_2814ADB68 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = sub_24ACD0490();
  __swift_project_value_buffer(v2, qword_2814ADB70);
  v3 = v1;
  v4 = sub_24ACD0470();
  v5 = sub_24ACD0910();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[13];
  v8 = v0[11];
  if (v6)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v9 = 136315394;
    *(v9 + 4) = sub_24AC29E20(0xD000000000000027, 0x800000024ACDA210, &v19);
    *(v9 + 12) = 2114;
    v12 = v7;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v13;
    *v10 = v13;
    _os_log_impl(&dword_24AC18000, v4, v5, "%s failed with %{public}@!", v9, 0x16u);
    sub_24AC78B24(v10);
    MEMORY[0x24C22DC60](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x24C22DC60](v11, -1, -1);
    MEMORY[0x24C22DC60](v9, -1, -1);
  }

  else
  {
    v14 = v0[11];
  }

  v16 = v0[9];
  v15 = v0[10];

  v17 = v0[1];

  return v17();
}

uint64_t sub_24AC7708C(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = sub_24ACD0420();
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC7715C, v2, 0);
}

uint64_t sub_24AC7715C()
{
  v62 = v0;
  v1 = *(v0 + 88);
  v2 = *(v0 + 56);
  v3 = [*(v0 + 40) identifier];
  sub_24ACD03F0();

  v4 = OBJC_IVAR____TtC15FindMyBluetooth12PairingAgent_pairingPeripherals;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (*(v5 + 16))
  {
    v6 = *(v0 + 88);

    v7 = sub_24AC2ABC8(v6);
    if (v8)
    {
      v9 = *(v0 + 88);
      v10 = *(v0 + 64);
      v11 = *(v0 + 72);
      v12 = *(v0 + 48);
      *(v0 + 96) = *(*(v5 + 56) + 8 * v7);
      v13 = *(v11 + 8);

      v13(v9, v10);

      if (v12)
      {
        v14 = *(v0 + 48);
        v15 = v14;
        if (qword_2814ADB68 != -1)
        {
          swift_once();
        }

        v16 = sub_24ACD0490();
        __swift_project_value_buffer(v16, qword_2814ADB70);

        v17 = v14;
        v18 = sub_24ACD0470();
        v19 = sub_24ACD0910();

        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          v22 = swift_slowAlloc();
          v61 = v22;
          *v20 = 136315394;

          v23 = sub_24AC39074();
          v25 = v24;

          v26 = sub_24AC29E20(v23, v25, &v61);

          *(v20 + 4) = v26;
          *(v20 + 12) = 2114;
          v27 = v14;
          v28 = _swift_stdlib_bridgeErrorToNSError();
          *(v20 + 14) = v28;
          *v21 = v28;
          _os_log_impl(&dword_24AC18000, v18, v19, "Pairing failed for %s, error: %{public}@", v20, 0x16u);
          sub_24AC78B24(v21);
          MEMORY[0x24C22DC60](v21, -1, -1);
          __swift_destroy_boxed_opaque_existential_0(v22);
          MEMORY[0x24C22DC60](v22, -1, -1);
          MEMORY[0x24C22DC60](v20, -1, -1);
        }

        else
        {
        }
      }

      else
      {
        if (qword_2814ADB68 != -1)
        {
          swift_once();
        }

        v49 = sub_24ACD0490();
        __swift_project_value_buffer(v49, qword_2814ADB70);

        v50 = sub_24ACD0470();
        v51 = sub_24ACD0910();

        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          v61 = v53;
          *v52 = 136315138;

          v54 = sub_24AC39074();
          v56 = v55;

          v57 = sub_24AC29E20(v54, v56, &v61);

          *(v52 + 4) = v57;
          _os_log_impl(&dword_24AC18000, v50, v51, "Pairing failed for %s", v52, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v53);
          MEMORY[0x24C22DC60](v53, -1, -1);
          MEMORY[0x24C22DC60](v52, -1, -1);
        }
      }

      v58 = swift_task_alloc();
      *(v0 + 104) = v58;
      *v58 = v0;
      v58[1] = sub_24AC777D0;
      v59 = *(v0 + 48);

      return sub_24AC3B2B0(v59);
    }
  }

  v29 = *(*(v0 + 72) + 8);
  v29(*(v0 + 88), *(v0 + 64));
  if (qword_2814ADB68 != -1)
  {
    swift_once();
  }

  v30 = *(v0 + 40);
  v31 = sub_24ACD0490();
  __swift_project_value_buffer(v31, qword_2814ADB70);
  v32 = v30;
  v33 = sub_24ACD0470();
  v34 = sub_24ACD0910();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = *(v0 + 80);
    v36 = *(v0 + 64);
    v37 = *(v0 + 40);
    v38 = swift_slowAlloc();
    v60 = v29;
    v61 = swift_slowAlloc();
    v39 = v61;
    *v38 = 136446210;
    v40 = [v37 identifier];
    sub_24ACD03F0();

    sub_24AC78D78(&qword_27EF9E4E0, MEMORY[0x277CC95F0]);
    v41 = sub_24ACD0C20();
    v43 = v42;
    v60(v35, v36);
    v44 = sub_24AC29E20(v41, v43, &v61);

    *(v38 + 4) = v44;
    _os_log_impl(&dword_24AC18000, v33, v34, "peerDidFailToCompletePairing for unknown peripheral: %{public}s!", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x24C22DC60](v39, -1, -1);
    MEMORY[0x24C22DC60](v38, -1, -1);
  }

  v46 = *(v0 + 80);
  v45 = *(v0 + 88);

  v47 = *(v0 + 8);

  return v47();
}

uint64_t sub_24AC777D0()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;
  *(*v1 + 112) = v0;

  v5 = *(v2 + 56);
  if (v0)
  {
    v6 = sub_24AC7796C;
  }

  else
  {
    v6 = sub_24AC778FC;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24AC778FC()
{
  v1 = v0[12];

  v3 = v0[10];
  v2 = v0[11];

  v4 = v0[1];

  return v4();
}

uint64_t sub_24AC7796C()
{
  v20 = v0;
  if (qword_2814ADB68 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = sub_24ACD0490();
  __swift_project_value_buffer(v2, qword_2814ADB70);
  v3 = v1;
  v4 = sub_24ACD0470();
  v5 = sub_24ACD0910();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[14];
  v8 = v0[12];
  if (v6)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v9 = 136315394;
    *(v9 + 4) = sub_24AC29E20(0xD000000000000033, 0x800000024ACDA1D0, &v19);
    *(v9 + 12) = 2114;
    v12 = v7;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v13;
    *v10 = v13;
    _os_log_impl(&dword_24AC18000, v4, v5, "%s failed with %{public}@!", v9, 0x16u);
    sub_24AC78B24(v10);
    MEMORY[0x24C22DC60](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x24C22DC60](v11, -1, -1);
    MEMORY[0x24C22DC60](v9, -1, -1);
  }

  else
  {
    v14 = v0[12];
  }

  v16 = v0[10];
  v15 = v0[11];

  v17 = v0[1];

  return v17();
}

uint64_t sub_24AC77B84(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_24ACD0420();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC77C50, v1, 0);
}

uint64_t sub_24AC77C50()
{
  v36 = v0;
  v1 = *(v0 + 80);
  v2 = *(v0 + 48);
  v3 = [*(v0 + 40) identifier];
  sub_24ACD03F0();

  v4 = OBJC_IVAR____TtC15FindMyBluetooth12PairingAgent_pairingPeripherals;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (*(v5 + 16))
  {
    v6 = *(v0 + 80);

    v7 = sub_24AC2ABC8(v6);
    if (v8)
    {
      v9 = *(v0 + 80);
      v10 = *(v0 + 56);
      v11 = *(v0 + 64);
      *(v0 + 88) = *(*(v5 + 56) + 8 * v7);
      v12 = *(v11 + 8);

      v12(v9, v10);

      v13 = swift_task_alloc();
      *(v0 + 96) = v13;
      *v13 = v0;
      v13[1] = sub_24AC77FC4;

      return sub_24AC3B2B0(0);
    }
  }

  v15 = *(*(v0 + 64) + 8);
  v15(*(v0 + 80), *(v0 + 56));
  if (qword_2814ADB68 != -1)
  {
    swift_once();
  }

  v16 = *(v0 + 40);
  v17 = sub_24ACD0490();
  __swift_project_value_buffer(v17, qword_2814ADB70);
  v18 = v16;
  v19 = sub_24ACD0470();
  v20 = sub_24ACD0910();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = *(v0 + 72);
    v22 = *(v0 + 56);
    v23 = *(v0 + 40);
    v24 = swift_slowAlloc();
    v34 = v15;
    v35 = swift_slowAlloc();
    v25 = v35;
    *v24 = 136446210;
    v26 = [v23 identifier];
    sub_24ACD03F0();

    sub_24AC78D78(&qword_27EF9E4E0, MEMORY[0x277CC95F0]);
    v27 = sub_24ACD0C20();
    v29 = v28;
    v34(v21, v22);
    v30 = sub_24AC29E20(v27, v29, &v35);

    *(v24 + 4) = v30;
    _os_log_impl(&dword_24AC18000, v19, v20, "peerDidUnpair for unknown peripheral: %{public}s!", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x24C22DC60](v25, -1, -1);
    MEMORY[0x24C22DC60](v24, -1, -1);
  }

  v32 = *(v0 + 72);
  v31 = *(v0 + 80);

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_24AC77FC4()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;
  *(*v1 + 104) = v0;

  v5 = *(v2 + 48);
  if (v0)
  {
    v6 = sub_24AC782C4;
  }

  else
  {
    v6 = sub_24AC780F0;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24AC780F0()
{
  v18 = v0;
  if (qword_2814ADB68 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = sub_24ACD0490();
  __swift_project_value_buffer(v2, qword_2814ADB70);

  v3 = sub_24ACD0470();
  v4 = sub_24ACD08F0();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[11];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;

    v9 = sub_24AC39074();
    v11 = v10;

    v12 = sub_24AC29E20(v9, v11, &v17);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_24AC18000, v3, v4, "Unpaired %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x24C22DC60](v8, -1, -1);
    MEMORY[0x24C22DC60](v7, -1, -1);
  }

  else
  {
  }

  v14 = v0[9];
  v13 = v0[10];

  v15 = v0[1];

  return v15();
}

uint64_t sub_24AC782C4()
{
  v20 = v0;
  if (qword_2814ADB68 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = sub_24ACD0490();
  __swift_project_value_buffer(v2, qword_2814ADB70);
  v3 = v1;
  v4 = sub_24ACD0470();
  v5 = sub_24ACD0910();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[13];
  v8 = v0[11];
  if (v6)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v9 = 136315394;
    *(v9 + 4) = sub_24AC29E20(0xD00000000000001ELL, 0x800000024ACDA1B0, &v19);
    *(v9 + 12) = 2114;
    v12 = v7;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v13;
    *v10 = v13;
    _os_log_impl(&dword_24AC18000, v4, v5, "%s failed with %{public}@!", v9, 0x16u);
    sub_24AC78B24(v10);
    MEMORY[0x24C22DC60](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x24C22DC60](v11, -1, -1);
    MEMORY[0x24C22DC60](v9, -1, -1);
  }

  else
  {
    v14 = v0[11];
  }

  v16 = v0[9];
  v15 = v0[10];

  v17 = v0[1];

  return v17();
}

uint64_t sub_24AC784DC(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = sub_24ACD0420();
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC785AC, v2, 0);
}

uint64_t sub_24AC785AC()
{
  v48 = v0;
  v1 = *(v0 + 88);
  v2 = *(v0 + 56);
  v3 = [*(v0 + 40) identifier];
  sub_24ACD03F0();

  v4 = OBJC_IVAR____TtC15FindMyBluetooth12PairingAgent_pairingPeripherals;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (*(v5 + 16))
  {
    v6 = *(v0 + 88);

    v7 = sub_24AC2ABC8(v6);
    if (v8)
    {
      v9 = *(v0 + 88);
      v10 = *(v0 + 64);
      v11 = *(*(v5 + 56) + 8 * v7);
      v12 = *(*(v0 + 72) + 8);

      v12(v9, v10);

      if (qword_2814ADB68 != -1)
      {
        swift_once();
      }

      v13 = sub_24ACD0490();
      __swift_project_value_buffer(v13, qword_2814ADB70);

      v14 = sub_24ACD0470();
      v15 = sub_24ACD08F0();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v47 = v17;
        *v16 = 136315138;

        v18 = sub_24AC39074();
        v20 = v19;

        v21 = sub_24AC29E20(v18, v20, &v47);

        *(v16 + 4) = v21;
        _os_log_impl(&dword_24AC18000, v14, v15, "Accepting pairing request for %s", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v17);
        MEMORY[0x24C22DC60](v17, -1, -1);
        MEMORY[0x24C22DC60](v16, -1, -1);
      }

      v22 = *(v0 + 48);
      v23 = *(v0 + 40);
      v24 = *(*(v0 + 56) + OBJC_IVAR____TtC15FindMyBluetooth12PairingAgent_underlyingObject);
      sub_24AC9F0B8(MEMORY[0x277D84F90]);
      v25 = sub_24ACD04F0();

      [v24 respondToPairingRequest:v23 type:v22 accept:1 data:v25];

      goto LABEL_14;
    }
  }

  v26 = *(*(v0 + 72) + 8);
  v26(*(v0 + 88), *(v0 + 64));
  if (qword_2814ADB68 != -1)
  {
    swift_once();
  }

  v27 = *(v0 + 40);
  v28 = sub_24ACD0490();
  __swift_project_value_buffer(v28, qword_2814ADB70);
  v29 = v27;
  v30 = sub_24ACD0470();
  v31 = sub_24ACD0910();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = *(v0 + 80);
    v33 = *(v0 + 64);
    v34 = *(v0 + 40);
    v35 = swift_slowAlloc();
    v46 = v26;
    v47 = swift_slowAlloc();
    v36 = v47;
    *v35 = 136446210;
    v37 = [v34 identifier];
    sub_24ACD03F0();

    sub_24AC78D78(&qword_27EF9E4E0, MEMORY[0x277CC95F0]);
    v38 = sub_24ACD0C20();
    v40 = v39;
    v46(v32, v33);
    v41 = sub_24AC29E20(v38, v40, &v47);

    *(v35 + 4) = v41;
    _os_log_impl(&dword_24AC18000, v30, v31, "peerDidRequestPairing for unknown peripheral: %{public}s!", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v36);
    MEMORY[0x24C22DC60](v36, -1, -1);
    MEMORY[0x24C22DC60](v35, -1, -1);
  }

LABEL_14:
  v43 = *(v0 + 80);
  v42 = *(v0 + 88);

  v44 = *(v0 + 8);

  return v44();
}

uint64_t sub_24AC78A5C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24AC20274;

  return sub_24AC75CC4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_24AC78B24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E6A0, &qword_24ACD5590);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24AC78B8C(uint64_t a1)
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

  return sub_24AC75810(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t objectdestroy_23Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24AC78CB0(uint64_t a1)
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

  return sub_24AC75464(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_24AC78D78(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24AC78DFC(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = *(v1 + v7);
  v12 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_24AC214AC;

  return sub_24AC73CE8(a1, v8, v9, v10, v1 + v6, v11);
}

uint64_t objectdestroy_43Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_24AC79084(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E070, &qword_24ACD4150) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = *(v1 + v7);
  v12 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_24AC214AC;

  return sub_24AC74C18(a1, v8, v9, v10, v1 + v6, v11);
}

uint64_t type metadata accessor for PeerPath()
{
  result = qword_2814AD0E8;
  if (!qword_2814AD0E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24AC79250()
{
  sub_24AC79374(319, &qword_2814AE250, type metadata accessor for CentralManager);
  if (v0 <= 0x3F)
  {
    sub_24AC79374(319, &qword_2814AE260, type metadata accessor for Peripheral);
    if (v1 <= 0x3F)
    {
      sub_24AC542BC(319, &qword_2814AE220, &unk_27EF9E090, &qword_24ACD37C0);
      if (v2 <= 0x3F)
      {
        sub_24AC542BC(319, &qword_2814AE238, &qword_27EF9DDE8, &unk_24ACD37D0);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24AC79374(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24ACCFFF0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_24AC793C8(uint64_t a1)
{
  v2 = (v1 + *(a1 + 32));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

BOOL sub_24AC79400(char a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = *(a2 + 40);
  sub_24ACD0D10();
  v5 = qword_24ACD57E0[a1];
  MEMORY[0x24C22D480](v5);
  v6 = sub_24ACD0D50();
  v7 = -1 << *(a2 + 32);
  v8 = v6 & ~v7;
  if (((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  do
  {
    v10 = qword_24ACD57E0[*(*(a2 + 48) + v8)];
    result = v10 == v5;
    if (v10 == v5)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
  }

  while (((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  return result;
}

uint64_t sub_24AC794E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_24ACD0D10();
  sub_24ACD05E0();
  v7 = sub_24ACD0D50();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_24ACD0C40() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_24AC795D8(uint64_t a1, uint64_t a2)
{
  v3 = sub_24ACD0420();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v8 = *(a2 + 40), sub_24AC7EA24(&qword_2814AE200, MEMORY[0x277CC95F0]), v9 = sub_24ACD0520(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, v20 = a2 + 56, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v19 = a2;
    v12 = ~v10;
    v13 = v4 + 16;
    v14 = *(v4 + 16);
    v15 = *(v13 + 56);
    v16 = (v13 - 8);
    do
    {
      v14(v7, *(v19 + 48) + v15 * v11, v3);
      sub_24AC7EA24(&unk_2814AE1F0, MEMORY[0x277CC95F0]);
      v17 = sub_24ACD0550();
      (*v16)(v7, v3);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_24AC797F0(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24AC214AC;

  return CentralManagerProtocol.await(state:)(a1, a2, a3);
}

uint64_t sub_24AC7989C(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 113) = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E740, &unk_24ACD5E50);
  *(v2 + 24) = v3;
  v4 = *(v3 - 8);
  *(v2 + 32) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 40) = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F8, &qword_24ACD5640);
  *(v2 + 48) = v6;
  v7 = *(v6 - 8);
  *(v2 + 56) = v7;
  v8 = *(v7 + 64) + 15;
  *(v2 + 64) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC799D4, v1, 0);
}

uint64_t sub_24AC799D4()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager__state);
  if (v1 > 2)
  {
    switch(v1)
    {
      case 3:
        v2 = *(v0 + 113);
        if (*(v0 + 113) > 2u)
        {
          if (*(v0 + 113) <= 4u)
          {
            if (v2 == 3)
            {
              goto LABEL_57;
            }

            goto LABEL_50;
          }

          goto LABEL_47;
        }

        goto LABEL_40;
      case 4:
        v2 = *(v0 + 113);
        if (*(v0 + 113) > 2u)
        {
          if (*(v0 + 113) <= 4u)
          {
            if (v2 != 3)
            {
              goto LABEL_57;
            }

LABEL_46:
            v2 = 3;
            goto LABEL_54;
          }

          goto LABEL_47;
        }

        goto LABEL_40;
      case 5:
        v2 = *(v0 + 113);
        if (*(v0 + 113) > 2u)
        {
          if (*(v0 + 113) <= 4u)
          {
            goto LABEL_45;
          }

          if (v2 == 5)
          {
            goto LABEL_57;
          }

          goto LABEL_49;
        }

        goto LABEL_40;
    }

    goto LABEL_25;
  }

  if (!v1)
  {
    v2 = *(v0 + 113);
    if (*(v0 + 113) <= 2u)
    {
      if (*(v0 + 113))
      {
        if (v2 != 1)
        {
          v2 = 2;
        }

        goto LABEL_54;
      }

      goto LABEL_57;
    }

    goto LABEL_44;
  }

  if (v1 == 1)
  {
    v2 = *(v0 + 113);
    if (*(v0 + 113) <= 2u)
    {
      if (!*(v0 + 113))
      {
        goto LABEL_54;
      }

      if (v2 == 1)
      {
        goto LABEL_57;
      }

LABEL_53:
      v2 = 2;
      goto LABEL_54;
    }

    goto LABEL_44;
  }

  if (v1 != 2)
  {
LABEL_25:
    if (qword_2814AD8F0 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 113);
    if (qword_2814AEE28 == v1)
    {
      if (*(v0 + 113) > 2u)
      {
        if (*(v0 + 113) <= 4u)
        {
          goto LABEL_45;
        }

        if (v2 != 5)
        {
          goto LABEL_57;
        }

LABEL_48:
        v2 = 5;
        goto LABEL_54;
      }

LABEL_40:
      if (!v2)
      {
        goto LABEL_54;
      }

      if (v2 == 1)
      {
LABEL_42:
        v2 = 1;
        goto LABEL_54;
      }

      goto LABEL_53;
    }

    if (*(v0 + 113) <= 2u)
    {
      if (!*(v0 + 113))
      {
        goto LABEL_57;
      }

      if (v2 == 1)
      {
        goto LABEL_54;
      }

      goto LABEL_53;
    }

LABEL_44:
    if (v2 <= 4)
    {
LABEL_45:
      if (v2 == 3)
      {
        goto LABEL_46;
      }

LABEL_50:
      v2 = 4;
      goto LABEL_54;
    }

LABEL_47:
    if (v2 == 5)
    {
      goto LABEL_48;
    }

LABEL_49:
    v2 = 10;
    goto LABEL_54;
  }

  v2 = *(v0 + 113);
  if (*(v0 + 113) > 2u)
  {
    goto LABEL_44;
  }

  if (!*(v0 + 113))
  {
LABEL_54:
    *(v0 + 72) = v2;
    v3 = sub_24AC7EA24(&qword_27EF9E510, type metadata accessor for CentralManager);
    v4 = *(v3 + 88);
    v5 = type metadata accessor for CentralManager(0);
    v14 = (v4 + *v4);
    v6 = v4[1];
    v7 = swift_task_alloc();
    *(v0 + 80) = v7;
    *v7 = v0;
    v7[1] = sub_24AC79D44;
    v8 = *(v0 + 40);
    v9 = *(v0 + 16);

    return v14(v8, v5, v3);
  }

  if (v2 == 1)
  {
    goto LABEL_42;
  }

LABEL_57:
  v11 = *(v0 + 64);
  v12 = *(v0 + 40);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_24AC79D44()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24AC79E54, v2, 0);
}

uint64_t sub_24AC79E54()
{
  v1 = v0[8];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];
  sub_24ACD0800();
  (*(v3 + 8))(v2, v4);
  v5 = sub_24AC7EA24(&unk_2814AD870, type metadata accessor for CentralManager);
  v0[11] = v5;
  v0[12] = 0;
  v6 = v0[2];
  v7 = *(MEMORY[0x277D85798] + 4);
  v8 = swift_task_alloc();
  v0[13] = v8;
  *v8 = v0;
  v8[1] = sub_24AC79F70;
  v9 = v0[8];
  v10 = v0[6];

  return MEMORY[0x2822003E8](v0 + 14, v6, v5, v10);
}

uint64_t sub_24AC79F70()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24AC7A080, v2, 0);
}

uint64_t sub_24AC7A080()
{
  v1 = *(v0 + 112);
  if (v1 == 7)
  {
    goto LABEL_2;
  }

  v5 = *(v0 + 96);
  sub_24ACD0850();
  if (v5)
  {
    v6 = *(v0 + 40);
    (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));

    v4 = *(v0 + 8);
    goto LABEL_5;
  }

  if (qword_24ACD57E0[v1] == *(v0 + 72))
  {
LABEL_2:
    (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));
    v2 = *(v0 + 64);
    v3 = *(v0 + 40);

    v4 = *(v0 + 8);
LABEL_5:

    return v4();
  }

  *(v0 + 96) = 0;
  v8 = *(v0 + 88);
  v9 = *(v0 + 16);
  v10 = *(MEMORY[0x277D85798] + 4);
  v11 = swift_task_alloc();
  *(v0 + 104) = v11;
  *v11 = v0;
  v11[1] = sub_24AC79F70;
  v12 = *(v0 + 64);
  v13 = *(v0 + 48);

  return MEMORY[0x2822003E8](v0 + 112, v9, v8, v13);
}

uint64_t sub_24AC7A21C(char a1)
{
  *(v2 + 40) = v1;
  *(v2 + 137) = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E740, &unk_24ACD5E50);
  *(v2 + 48) = v3;
  v4 = *(v3 - 8);
  *(v2 + 56) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 64) = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F8, &qword_24ACD5640);
  *(v2 + 72) = v6;
  v7 = *(v6 - 8);
  *(v2 + 80) = v7;
  v8 = *(v7 + 64) + 15;
  *(v2 + 88) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC7A354, v1, 0);
}

uint64_t sub_24AC7A354()
{
  v1 = *(v0 + 40);
  v2 = OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_state;
  swift_beginAccess();
  v3 = qword_24ACD57E0[*(v1 + v2)];
  v4 = qword_24ACD57E0[*(v0 + 137)];
  *(v0 + 96) = v4;
  if (v3 == v4)
  {
    v5 = *(v0 + 88);
    v6 = *(v0 + 64);

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v9 = sub_24AC7EA24(&qword_27EF9E500, type metadata accessor for MockCentralManager);
    v10 = *(v9 + 88);
    v11 = type metadata accessor for MockCentralManager();
    v16 = (v10 + *v10);
    v12 = v10[1];
    v13 = swift_task_alloc();
    *(v0 + 104) = v13;
    *v13 = v0;
    v13[1] = sub_24AC7A548;
    v14 = *(v0 + 64);
    v15 = *(v0 + 40);

    return v16(v14, v11, v9);
  }
}

uint64_t sub_24AC7A548()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24AC7A658, v2, 0);
}

uint64_t sub_24AC7A658()
{
  v1 = v0[11];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
  sub_24ACD0800();
  (*(v3 + 8))(v2, v4);
  v5 = sub_24AC7EA24(&qword_27EF9E508, type metadata accessor for MockCentralManager);
  v0[14] = v5;
  v0[15] = 0;
  v6 = v0[5];
  v7 = *(MEMORY[0x277D85798] + 4);
  v8 = swift_task_alloc();
  v0[16] = v8;
  *v8 = v0;
  v8[1] = sub_24AC7A774;
  v9 = v0[11];
  v10 = v0[9];

  return MEMORY[0x2822003E8](v0 + 17, v6, v5, v10);
}

uint64_t sub_24AC7A774()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24AC7A884, v2, 0);
}

uint64_t sub_24AC7A884()
{
  v1 = *(v0 + 136);
  if (v1 == 7)
  {
    goto LABEL_2;
  }

  v5 = *(v0 + 120);
  sub_24ACD0850();
  if (v5)
  {
    v6 = *(v0 + 64);
    (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));

    v4 = *(v0 + 8);
    goto LABEL_5;
  }

  if (qword_24ACD57E0[v1] == *(v0 + 96))
  {
LABEL_2:
    (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
    v2 = *(v0 + 88);
    v3 = *(v0 + 64);

    v4 = *(v0 + 8);
LABEL_5:

    return v4();
  }

  *(v0 + 120) = 0;
  v8 = *(v0 + 112);
  v9 = *(v0 + 40);
  v10 = *(MEMORY[0x277D85798] + 4);
  v11 = swift_task_alloc();
  *(v0 + 128) = v11;
  *v11 = v0;
  v11[1] = sub_24AC7A774;
  v12 = *(v0 + 88);
  v13 = *(v0 + 72);

  return MEMORY[0x2822003E8](v0 + 136, v9, v8, v13);
}

uint64_t CentralManagerProtocol.await(state:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E740, &unk_24ACD5E50);
  *(v4 + 40) = v8;
  v9 = *(v8 - 8);
  *(v4 + 48) = v9;
  v10 = *(v9 + 64) + 15;
  *(v4 + 56) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F8, &qword_24ACD5640);
  *(v4 + 64) = v11;
  v12 = *(v11 - 8);
  *(v4 + 72) = v12;
  v13 = *(v12 + 64) + 15;
  *(v4 + 80) = swift_task_alloc();
  *(v4 + 154) = *a1;
  v14 = *(a3 + 72);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v4 + 88) = v16;
  *v16 = v4;
  v16[1] = sub_24AC7AC2C;

  return v18(v4 + 152, a2, a3);
}

uint64_t sub_24AC7AC2C()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 24);
  v5 = *(*v0 + 16);
  v9 = *v0;

  v1[12] = *(*(v4 + 8) + 8);
  v7 = sub_24ACD0740();
  v1[13] = v7;
  v1[14] = v6;

  return MEMORY[0x2822009F8](sub_24AC7AD88, v7, v6);
}

uint64_t sub_24AC7AD88()
{
  v1 = qword_24ACD57E0[*(v0 + 152)];
  v2 = qword_24ACD57E0[*(v0 + 154)];
  *(v0 + 120) = v2;
  if (v1 == v2)
  {
    v3 = *(v0 + 80);
    v4 = *(v0 + 56);

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v13 = (*(v0 + 24) + 88);
    v14 = (*v13 + **v13);
    v7 = (*v13)[1];
    v8 = swift_task_alloc();
    *(v0 + 128) = v8;
    *v8 = v0;
    v8[1] = sub_24AC7AF04;
    v9 = *(v0 + 56);
    v10 = *(v0 + 24);
    v11 = *(v0 + 32);
    v12 = *(v0 + 16);

    return v14(v9, v12, v10);
  }
}

uint64_t sub_24AC7AF04()
{
  v1 = *v0;
  v2 = *(*v0 + 128);
  v6 = *v0;

  v3 = *(v1 + 112);
  v4 = *(v1 + 104);

  return MEMORY[0x2822009F8](sub_24AC7B024, v4, v3);
}

uint64_t sub_24AC7B024()
{
  v1 = v0[10];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
  sub_24ACD0800();
  (*(v3 + 8))(v2, v4);
  v0[17] = 0;
  v5 = v0[12];
  v6 = v0[4];
  v7 = *(MEMORY[0x277D85798] + 4);
  v8 = swift_task_alloc();
  v0[18] = v8;
  *v8 = v0;
  v8[1] = sub_24AC7B10C;
  v9 = v0[10];
  v10 = v0[8];

  return MEMORY[0x2822003E8](v0 + 153, v6, v5, v10);
}

uint64_t sub_24AC7B10C()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v6 = *v0;

  v3 = *(v1 + 112);
  v4 = *(v1 + 104);

  return MEMORY[0x2822009F8](sub_24AC7B22C, v4, v3);
}

uint64_t sub_24AC7B22C()
{
  v1 = *(v0 + 153);
  if (v1 == 7)
  {
    goto LABEL_2;
  }

  v5 = *(v0 + 136);
  sub_24ACD0850();
  if (v5)
  {
    v6 = *(v0 + 56);
    (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));

    v4 = *(v0 + 8);
    goto LABEL_5;
  }

  if (qword_24ACD57E0[v1] == *(v0 + 120))
  {
LABEL_2:
    (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
    v2 = *(v0 + 80);
    v3 = *(v0 + 56);

    v4 = *(v0 + 8);
LABEL_5:

    return v4();
  }

  *(v0 + 136) = 0;
  v8 = *(v0 + 96);
  v9 = *(v0 + 32);
  v10 = *(MEMORY[0x277D85798] + 4);
  v11 = swift_task_alloc();
  *(v0 + 144) = v11;
  *v11 = v0;
  v11[1] = sub_24AC7B10C;
  v12 = *(v0 + 80);
  v13 = *(v0 + 64);

  return MEMORY[0x2822003E8](v0 + 153, v9, v8, v13);
}

uint64_t sub_24AC7B3C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24AC214AC;

  return CentralManagerProtocol.await(states:)(a1, a2, a3);
}

uint64_t sub_24AC7B474(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E740, &unk_24ACD5E50);
  v2[13] = v3;
  v4 = *(v3 - 8);
  v2[14] = v4;
  v5 = *(v4 + 64) + 15;
  v2[15] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F8, &qword_24ACD5640);
  v2[16] = v6;
  v7 = *(v6 - 8);
  v2[17] = v7;
  v8 = *(v7 + 64) + 15;
  v2[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC7B5A8, v1, 0);
}

uint64_t sub_24AC7B5A8()
{
  v18 = v0;
  v2 = v0[11];
  v1 = v0[12];

  v4 = sub_24AC655B8(v3);
  v0[19] = v4;

  sub_24AC81B94(&v17);
  if (sub_24AC79400(v17, v4))
  {

    v5 = v0[18];
    v6 = v0[15];

    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = sub_24AC7EA24(&qword_27EF9E510, type metadata accessor for CentralManager);
    v10 = *(v9 + 88);
    v11 = type metadata accessor for CentralManager(0);
    v16 = (v10 + *v10);
    v12 = v10[1];
    v13 = swift_task_alloc();
    v0[20] = v13;
    *v13 = v0;
    v13[1] = sub_24AC7B794;
    v14 = v0[15];
    v15 = v0[12];

    return v16(v14, v11, v9);
  }
}

uint64_t sub_24AC7B794()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 96);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24AC7B8A4, v2, 0);
}

uint64_t sub_24AC7B8A4()
{
  v1 = v0[18];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];
  sub_24ACD0800();
  (*(v3 + 8))(v2, v4);
  v5 = sub_24AC7EA24(&unk_2814AD870, type metadata accessor for CentralManager);
  v0[21] = v5;
  v0[22] = 0;
  v6 = v0[12];
  v7 = *(MEMORY[0x277D85798] + 4);
  v8 = swift_task_alloc();
  v0[23] = v8;
  *v8 = v0;
  v8[1] = sub_24AC7B9C0;
  v9 = v0[18];
  v10 = v0[16];

  return MEMORY[0x2822003E8](v0 + 24, v6, v5, v10);
}

uint64_t sub_24AC7B9C0()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 96);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24AC7BAD0, v2, 0);
}

uint64_t sub_24AC7BAD0()
{
  v1 = *(v0 + 192);
  if (v1 == 7)
  {
    v2 = *(v0 + 152);
    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));

LABEL_3:
    v3 = *(v0 + 144);
    v4 = *(v0 + 120);

    v5 = *(v0 + 8);
LABEL_6:

    return v5();
  }

  v6 = *(v0 + 176);
  sub_24ACD0850();
  v7 = *(v0 + 152);
  if (v6)
  {
    v8 = *(v0 + 120);
    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));

    v5 = *(v0 + 8);
    goto LABEL_6;
  }

  if (*(v7 + 16))
  {
    v10 = *(v7 + 40);
    sub_24ACD0D10();
    v11 = qword_24ACD57E0[v1];
    v12 = *(v0 + 152);
    MEMORY[0x24C22D480](v11);
    v13 = sub_24ACD0D50();
    v14 = -1 << *(v12 + 32);
    v15 = v13 & ~v14;
    if ((*(v12 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v15))
    {
      v16 = ~v14;
      v17 = *(v0 + 152);
      while (qword_24ACD57E0[*(*(v17 + 48) + v15)] != v11)
      {
        v15 = (v15 + 1) & v16;
        if (((*(v17 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      v25 = *(v0 + 136);
      v24 = *(v0 + 144);
      v26 = *(v0 + 128);

      (*(v25 + 8))(v24, v26);
      goto LABEL_3;
    }
  }

LABEL_14:
  *(v0 + 176) = 0;
  v18 = *(v0 + 168);
  v19 = *(v0 + 96);
  v20 = *(MEMORY[0x277D85798] + 4);
  v21 = swift_task_alloc();
  *(v0 + 184) = v21;
  *v21 = v0;
  v21[1] = sub_24AC7B9C0;
  v22 = *(v0 + 144);
  v23 = *(v0 + 128);

  return MEMORY[0x2822003E8](v0 + 192, v19, v18, v23);
}

uint64_t sub_24AC7BD34(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E740, &unk_24ACD5E50);
  v2[16] = v3;
  v4 = *(v3 - 8);
  v2[17] = v4;
  v5 = *(v4 + 64) + 15;
  v2[18] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F8, &qword_24ACD5640);
  v2[19] = v6;
  v7 = *(v6 - 8);
  v2[20] = v7;
  v8 = *(v7 + 64) + 15;
  v2[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC7BE68, v1, 0);
}

uint64_t sub_24AC7BE68()
{
  v1 = v0[14];
  v2 = v0[15];

  v4 = sub_24AC655B8(v3);
  v0[22] = v4;

  v5 = OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_state;
  swift_beginAccess();
  if (sub_24AC79400(*(v2 + v5), v4))
  {

    v6 = v0[21];
    v7 = v0[18];

    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = sub_24AC7EA24(&qword_27EF9E500, type metadata accessor for MockCentralManager);
    v11 = *(v10 + 88);
    v12 = type metadata accessor for MockCentralManager();
    v17 = (v11 + *v11);
    v13 = v11[1];
    v14 = swift_task_alloc();
    v0[23] = v14;
    *v14 = v0;
    v14[1] = sub_24AC7C06C;
    v15 = v0[18];
    v16 = v0[15];

    return v17(v15, v12, v10);
  }
}

uint64_t sub_24AC7C06C()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 120);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24AC7C17C, v2, 0);
}

uint64_t sub_24AC7C17C()
{
  v1 = v0[21];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[16];
  sub_24ACD0800();
  (*(v3 + 8))(v2, v4);
  v5 = sub_24AC7EA24(&qword_27EF9E508, type metadata accessor for MockCentralManager);
  v0[24] = v5;
  v0[25] = 0;
  v6 = v0[15];
  v7 = *(MEMORY[0x277D85798] + 4);
  v8 = swift_task_alloc();
  v0[26] = v8;
  *v8 = v0;
  v8[1] = sub_24AC7C298;
  v9 = v0[21];
  v10 = v0[19];

  return MEMORY[0x2822003E8](v0 + 27, v6, v5, v10);
}

uint64_t sub_24AC7C298()
{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 120);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24AC7C3A8, v2, 0);
}

uint64_t sub_24AC7C3A8()
{
  v1 = *(v0 + 216);
  if (v1 == 7)
  {
    v2 = *(v0 + 176);
    (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));

LABEL_3:
    v3 = *(v0 + 168);
    v4 = *(v0 + 144);

    v5 = *(v0 + 8);
LABEL_6:

    return v5();
  }

  v6 = *(v0 + 200);
  sub_24ACD0850();
  v7 = *(v0 + 176);
  if (v6)
  {
    v8 = *(v0 + 144);
    (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));

    v5 = *(v0 + 8);
    goto LABEL_6;
  }

  if (*(v7 + 16))
  {
    v10 = *(v7 + 40);
    sub_24ACD0D10();
    v11 = qword_24ACD57E0[v1];
    v12 = *(v0 + 176);
    MEMORY[0x24C22D480](v11);
    v13 = sub_24ACD0D50();
    v14 = -1 << *(v12 + 32);
    v15 = v13 & ~v14;
    if ((*(v12 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v15))
    {
      v16 = ~v14;
      v17 = *(v0 + 176);
      while (qword_24ACD57E0[*(*(v17 + 48) + v15)] != v11)
      {
        v15 = (v15 + 1) & v16;
        if (((*(v17 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      v25 = *(v0 + 160);
      v24 = *(v0 + 168);
      v26 = *(v0 + 152);

      (*(v25 + 8))(v24, v26);
      goto LABEL_3;
    }
  }

LABEL_14:
  *(v0 + 200) = 0;
  v18 = *(v0 + 192);
  v19 = *(v0 + 120);
  v20 = *(MEMORY[0x277D85798] + 4);
  v21 = swift_task_alloc();
  *(v0 + 208) = v21;
  *v21 = v0;
  v21[1] = sub_24AC7C298;
  v22 = *(v0 + 168);
  v23 = *(v0 + 152);

  return MEMORY[0x2822003E8](v0 + 216, v19, v18, v23);
}

uint64_t CentralManagerProtocol.await(states:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[13] = a3;
  v4[14] = v3;
  v4[11] = a1;
  v4[12] = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E740, &unk_24ACD5E50);
  v4[15] = v6;
  v7 = *(v6 - 8);
  v4[16] = v7;
  v8 = *(v7 + 64) + 15;
  v4[17] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E4F8, &qword_24ACD5640);
  v4[18] = v9;
  v10 = *(v9 - 8);
  v4[19] = v10;
  v11 = *(v10 + 64) + 15;
  v4[20] = swift_task_alloc();
  v4[21] = *(*(a3 + 8) + 8);
  v13 = sub_24ACD0740();
  v4[22] = v13;
  v4[23] = v12;

  return MEMORY[0x2822009F8](sub_24AC7C770, v13, v12);
}

uint64_t sub_24AC7C770()
{
  v11 = v0[13];
  v1 = v0[11];

  v0[24] = sub_24AC655B8(v2);

  v3 = *(v11 + 72);
  v10 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[25] = v5;
  *v5 = v0;
  v5[1] = sub_24AC7C8A4;
  v6 = v0[13];
  v7 = v0[14];
  v8 = v0[12];

  return (v10)(v0 + 29, v8, v6);
}

uint64_t sub_24AC7C8A4()
{
  v1 = *v0;
  v2 = *(*v0 + 200);
  v6 = *v0;

  v3 = *(v1 + 184);
  v4 = *(v1 + 176);

  return MEMORY[0x2822009F8](sub_24AC7C9C4, v4, v3);
}

uint64_t sub_24AC7C9C4()
{
  if (sub_24AC79400(*(v0 + 232), *(v0 + 192)))
  {
    v1 = *(v0 + 192);

    v2 = *(v0 + 160);
    v3 = *(v0 + 136);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v12 = (*(v0 + 104) + 88);
    v13 = (*v12 + **v12);
    v6 = (*v12)[1];
    v7 = swift_task_alloc();
    *(v0 + 208) = v7;
    *v7 = v0;
    v7[1] = sub_24AC7CB34;
    v8 = *(v0 + 136);
    v9 = *(v0 + 104);
    v10 = *(v0 + 112);
    v11 = *(v0 + 96);

    return v13(v8, v11, v9);
  }
}

uint64_t sub_24AC7CB34()
{
  v1 = *v0;
  v2 = *(*v0 + 208);
  v6 = *v0;

  v3 = *(v1 + 184);
  v4 = *(v1 + 176);

  return MEMORY[0x2822009F8](sub_24AC7CC54, v4, v3);
}

uint64_t sub_24AC7CC54()
{
  v1 = v0[20];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[15];
  sub_24ACD0800();
  (*(v3 + 8))(v2, v4);
  v0[27] = 0;
  v5 = v0[21];
  v6 = v0[14];
  v7 = *(MEMORY[0x277D85798] + 4);
  v8 = swift_task_alloc();
  v0[28] = v8;
  *v8 = v0;
  v8[1] = sub_24AC7CD3C;
  v9 = v0[20];
  v10 = v0[18];

  return MEMORY[0x2822003E8](v0 + 233, v6, v5, v10);
}

uint64_t sub_24AC7CD3C()
{
  v1 = *v0;
  v2 = *(*v0 + 224);
  v6 = *v0;

  v3 = *(v1 + 184);
  v4 = *(v1 + 176);

  return MEMORY[0x2822009F8](sub_24AC7CE5C, v4, v3);
}

uint64_t sub_24AC7CE5C()
{
  v1 = *(v0 + 233);
  if (v1 == 7)
  {
    v2 = *(v0 + 192);
    (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));

LABEL_3:
    v3 = *(v0 + 160);
    v4 = *(v0 + 136);

    v5 = *(v0 + 8);
LABEL_6:

    return v5();
  }

  v6 = *(v0 + 216);
  sub_24ACD0850();
  v7 = *(v0 + 192);
  if (v6)
  {
    v8 = *(v0 + 136);
    (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));

    v5 = *(v0 + 8);
    goto LABEL_6;
  }

  if (*(v7 + 16))
  {
    v10 = *(v7 + 40);
    sub_24ACD0D10();
    v11 = qword_24ACD57E0[v1];
    v12 = *(v0 + 192);
    MEMORY[0x24C22D480](v11);
    v13 = sub_24ACD0D50();
    v14 = -1 << *(v12 + 32);
    v15 = v13 & ~v14;
    if ((*(v12 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v15))
    {
      v16 = ~v14;
      v17 = *(v0 + 192);
      while (qword_24ACD57E0[*(*(v17 + 48) + v15)] != v11)
      {
        v15 = (v15 + 1) & v16;
        if (((*(v17 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      v25 = *(v0 + 152);
      v24 = *(v0 + 160);
      v26 = *(v0 + 144);

      (*(v25 + 8))(v24, v26);
      goto LABEL_3;
    }
  }

LABEL_14:
  *(v0 + 216) = 0;
  v18 = *(v0 + 168);
  v19 = *(v0 + 112);
  v20 = *(MEMORY[0x277D85798] + 4);
  v21 = swift_task_alloc();
  *(v0 + 224) = v21;
  *v21 = v0;
  v21[1] = sub_24AC7CD3C;
  v22 = *(v0 + 160);
  v23 = *(v0 + 144);

  return MEMORY[0x2822003E8](v0 + 233, v19, v18, v23);
}

uint64_t CentralManagerProtocol.isolatedDescription.getter(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E120, &qword_24ACD4550);
  v3[8] = v5;
  v6 = *(v5 - 8);
  v3[9] = v6;
  v7 = *(v6 + 64) + 15;
  v3[10] = swift_task_alloc();
  v8 = *(*(a2 + 8) + 8);
  v10 = sub_24ACD0740();
  v3[11] = v10;
  v3[12] = v9;

  return MEMORY[0x2822009F8](sub_24AC7D1B0, v10, v9);
}

uint64_t sub_24AC7D1B0()
{
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[5];
  v18 = v0[6];
  sub_24ACD0A20();
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  MEMORY[0x24C22CD50](60, 0xE100000000000000);
  v0[4] = v4;
  v6 = *(v18 + 16);
  v7 = sub_24ACD0C00();
  MEMORY[0x24C22CD50](v7);

  MEMORY[0x24C22CD50](8250, 0xE200000000000000);
  v8 = MEMORY[0x24C22D370](v5, v6);
  MEMORY[0x24C22CD50](v8);

  MEMORY[0x24C22CD50](0x69746E656469202CLL, 0xEF203D2072656966);
  (*(v18 + 56))(v5);
  sub_24AC7DB5C();
  v9 = sub_24ACD0C20();
  MEMORY[0x24C22CD50](v9);

  (*(v2 + 8))(v1, v3);
  MEMORY[0x24C22CD50](0x206574617473202CLL, 0xEA0000000000203DLL);
  v10 = *(v18 + 72);
  v17 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  v0[13] = v12;
  *v12 = v0;
  v12[1] = sub_24AC7D428;
  v13 = v0[6];
  v14 = v0[7];
  v15 = v0[5];

  return (v17)(v0 + 14, v15, v13);
}

uint64_t sub_24AC7D428()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v6 = *v0;

  v3 = *(v1 + 96);
  v4 = *(v1 + 88);

  return MEMORY[0x2822009F8](sub_24AC7D548, v4, v3);
}

uint64_t sub_24AC7D548()
{
  v1 = *(v0 + 80);
  *(v0 + 113) = *(v0 + 112);
  sub_24ACD0B10();
  MEMORY[0x24C22CD50](62, 0xE100000000000000);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  v4 = *(v0 + 8);

  return v4(v2, v3);
}

uint64_t CentralManagerProtocol.description.getter(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E120, &qword_24ACD4550);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  if ((*(a2 + 64))(a1, a2))
  {
    v22 = 0;
    v23 = 0xE000000000000000;
    sub_24ACD0A20();

    v22 = 60;
    v23 = 0xE100000000000000;
    v21 = v2;
    v10 = *(a2 + 16);
    v11 = sub_24ACD0C00();
    MEMORY[0x24C22CD50](v11);

    MEMORY[0x24C22CD50](8250, 0xE200000000000000);
    v12 = MEMORY[0x24C22D370](a1, v10);
    MEMORY[0x24C22CD50](v12);

    v13 = 0x800000024ACDA2D0;
    v14 = 0xD00000000000001DLL;
  }

  else
  {
    v22 = 0;
    v23 = 0xE000000000000000;
    sub_24ACD0A20();

    v22 = 60;
    v23 = 0xE100000000000000;
    v21 = v2;
    v15 = *(a2 + 16);
    v16 = sub_24ACD0C00();
    MEMORY[0x24C22CD50](v16);

    MEMORY[0x24C22CD50](8250, 0xE200000000000000);
    v17 = MEMORY[0x24C22D370](a1, v15);
    MEMORY[0x24C22CD50](v17);

    v14 = 0x69746E656469202CLL;
    v13 = 0xEF203D2072656966;
  }

  MEMORY[0x24C22CD50](v14, v13);
  (*(a2 + 56))(a1, a2);
  sub_24AC7DB5C();
  v18 = sub_24ACD0C20();
  MEMORY[0x24C22CD50](v18);

  (*(v6 + 8))(v9, v5);
  MEMORY[0x24C22CD50](62, 0xE100000000000000);
  return v22;
}

uint64_t sub_24AC7D8A4(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AC20274;

  return sub_24AC7989C(v2);
}

uint64_t sub_24AC7D954(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AC214AC;

  return (sub_24AC7B474)(a1);
}

uint64_t sub_24AC7DA00(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AC214AC;

  return sub_24AC7A21C(v2);
}

uint64_t sub_24AC7DAB0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AC214AC;

  return sub_24AC7BD34(a1);
}

unint64_t sub_24AC7DB5C()
{
  result = qword_2814AE258;
  if (!qword_2814AE258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF9E120, &qword_24ACD4550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814AE258);
  }

  return result;
}

uint64_t dispatch thunk of static CentralManagerProtocol.pairingCentralManager.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 48);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AC2A800;

  return v9(a1, a2);
}

uint64_t dispatch thunk of CentralManagerProtocol.state.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 72);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_24AC214AC;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of CentralManagerProtocol.init(options:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 80);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_24AC1DF38;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of CentralManagerProtocol.stateStream()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 88);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_24AC20274;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of CentralManagerProtocol.await(state:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 96);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_24AC214AC;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of CentralManagerProtocol.await(states:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 104);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_24AC214AC;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of CentralManagerProtocol.scanForPeripherals(scanMode:garbageCollectInterval:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 112);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_24AC20274;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of CentralManagerProtocol.retrievePeripheral(macAddress:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 120);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_24AC2BA00;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of CentralManagerProtocol.retrievePeripherals(serialNumbers:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 128);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_24AC2BA00;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of CentralManagerProtocol.retrievePeripherals(beaconIdentifiers:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 136);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_24AC2BA00;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of CentralManagerProtocol.retrievePeripherals(identifiers:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 144);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_24AC2BA00;

  return v11(a1, a2, a3);
}

uint64_t sub_24AC7E90C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_24AC7E974(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_24AC7E9BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_24AC7EA24(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24AC7EA6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF00, &qword_24ACD3BC8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_24AC2B5DC(a3, v27 - v11, &qword_27EF9DF00, &qword_24ACD3BC8);
  v13 = sub_24ACD07C0();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_24AC212F4(v12, &qword_27EF9DF00, &qword_24ACD3BC8);
  }

  else
  {
    sub_24ACD07B0();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_24ACD0740();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_24ACD05C0() + 32;
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

      sub_24AC212F4(a3, &qword_27EF9DF00, &qword_24ACD3BC8);

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

  sub_24AC212F4(a3, &qword_27EF9DF00, &qword_24ACD3BC8);
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

uint64_t sub_24AC7ED6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF00, &qword_24ACD3BC8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_24AC2B5DC(a3, v27 - v11, &qword_27EF9DF00, &qword_24ACD3BC8);
  v13 = sub_24ACD07C0();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_24AC212F4(v12, &qword_27EF9DF00, &qword_24ACD3BC8);
  }

  else
  {
    sub_24ACD07B0();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_24ACD0740();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_24ACD05C0() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E680, &qword_24ACD5CB8);
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

      sub_24AC212F4(a3, &qword_27EF9DF00, &qword_24ACD3BC8);

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

  sub_24AC212F4(a3, &qword_27EF9DF00, &qword_24ACD3BC8);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E680, &qword_24ACD5CB8);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_24AC7F080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF00, &qword_24ACD3BC8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_24AC2B5DC(a3, v24 - v10, &qword_27EF9DF00, &qword_24ACD3BC8);
  v12 = sub_24ACD07C0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_24AC212F4(v11, &qword_27EF9DF00, &qword_24ACD3BC8);
  }

  else
  {
    sub_24ACD07B0();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_24ACD0740();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_24ACD05C0() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_24AC212F4(a3, &qword_27EF9DF00, &qword_24ACD3BC8);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_24AC212F4(a3, &qword_27EF9DF00, &qword_24ACD3BC8);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_24AC7F32C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v2;
    sub_24AC633D4(a1, a2, isUniquelyReferenced_nonNull_native);
    v8 = sub_24ACD0420();
    result = (*(*(v8 - 8) + 8))(a2, v8);
    *v2 = v24;
  }

  else
  {
    v10 = *v2;
    v11 = sub_24AC2ABC8(a2);
    if (v12)
    {
      v13 = v11;
      v14 = *v3;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v3;
      v25 = *v3;
      if (!v15)
      {
        sub_24AC5E3F0();
        v16 = v25;
      }

      v17 = *(v16 + 48);
      v18 = sub_24ACD0420();
      v19 = *(v18 - 8);
      v20 = *(v19 + 8);
      v20(v17 + *(v19 + 72) * v13, v18);
      v21 = *(*(v16 + 56) + 8 * v13);

      sub_24AC9DAD8(v13, v16);
      result = (v20)(a2, v18);
      *v3 = v16;
    }

    else
    {
      v22 = sub_24ACD0420();
      v23 = *(*(v22 - 8) + 8);

      return v23(a2, v22);
    }
  }

  return result;
}

uint64_t sub_24AC7F518(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t), void (*a4)(void))
{
  v5 = v4;
  if (a1)
  {
    v9 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = *v4;
    a3(a1, a2, isUniquelyReferenced_nonNull_native);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
    result = (*(*(v11 - 8) + 8))(a2, v11);
    *v4 = v28;
  }

  else
  {
    v14 = *v4;
    v15 = sub_24AC2AC60(a2);
    if (v16)
    {
      v17 = v15;
      v18 = *v5;
      v19 = swift_isUniquelyReferenced_nonNull_native();
      v20 = *v5;
      v29 = *v5;
      if (!v19)
      {
        a4();
        v20 = v29;
      }

      v21 = *(v20 + 48);
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
      v23 = *(v22 - 8);
      v24 = *(v23 + 8);
      v24(v21 + *(v23 + 72) * v17, v22);
      v25 = *(*(v20 + 56) + 8 * v17);

      sub_24AC9DDF8(v17, v20);
      result = (v24)(a2, v22);
      *v5 = v20;
    }

    else
    {
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
      v27 = *(*(v26 - 8) + 8);

      return v27(a2, v26);
    }
  }

  return result;
}

uint64_t sub_24AC7F70C(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E6E8, &qword_24ACD9140);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E690, &qword_24ACD4C10);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - v12;
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_24AC212F4(a1, &qword_27EF9E6E8, &qword_24ACD9140);
    sub_24AC9D920(a2, v8);
    v14 = sub_24ACD0420();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_24AC212F4(v8, &qword_27EF9E6E8, &qword_24ACD9140);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_24AC63BDC(v13, a2, isUniquelyReferenced_nonNull_native);
    v18 = sub_24ACD0420();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_24AC7F940(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v2;
    sub_24AC63DEC(a1, a2, isUniquelyReferenced_nonNull_native);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
    result = (*(*(v8 - 8) + 8))(a2, v8);
    *v2 = v24;
  }

  else
  {
    v10 = *v2;
    v11 = sub_24AC2AC60(a2);
    if (v12)
    {
      v13 = v11;
      v14 = *v3;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v3;
      v25 = *v3;
      if (!v15)
      {
        sub_24AC5F240();
        v16 = v25;
      }

      v17 = *(v16 + 48);
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
      v19 = *(v18 - 8);
      v20 = *(v19 + 8);
      v20(v17 + *(v19 + 72) * v13, v18);
      v21 = *(*(v16 + 56) + 8 * v13);

      sub_24AC9DDF8(v13, v16);
      result = (v20)(a2, v18);
      *v3 = v16;
    }

    else
    {
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
      v23 = *(*(v22 - 8) + 8);

      return v23(a2, v22);
    }
  }

  return result;
}

int *sub_24AC7FB24@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E048, &qword_24ACD5910);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v55 - v7;
  v9 = sub_24ACD0090();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *(v2 + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_underlyingObject);
  if (!result)
  {
    __break(1u);
    return result;
  }

  v15 = [result retrievePairingInfoForPeripheral_];
  v16 = sub_24ACD0500();

  v17 = sub_24AC924B8(v16);

  if (!v17)
  {
    if (qword_2814AD278 != -1)
    {
      swift_once();
    }

    v45 = sub_24ACD0490();
    __swift_project_value_buffer(v45, qword_2814AD280);
    v46 = sub_24ACD0470();
    v47 = sub_24ACD0910();
    if (!os_log_type_enabled(v46, v47))
    {
      goto LABEL_29;
    }

    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v63[0] = v49;
    *v48 = 136446210;
    *(v48 + 4) = sub_24AC29E20(0xD000000000000017, 0x800000024ACDA6E0, v63);
    v50 = "%{public}s Missing pairing info!";
    goto LABEL_28;
  }

  v59 = v13;
  if (qword_2814AD278 != -1)
  {
    swift_once();
  }

  v18 = sub_24ACD0490();
  v19 = __swift_project_value_buffer(v18, qword_2814AD280);

  v63[5] = v19;
  v20 = sub_24ACD0470();
  v21 = sub_24ACD0900();

  v22 = os_log_type_enabled(v20, v21);
  v60 = v10;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v63[0] = v57;
    *v23 = 136315138;
    v24 = sub_24ACD0510();
    v58 = v9;
    v26 = v8;
    v27 = sub_24AC29E20(v24, v25, v63);
    v9 = v58;

    *(v23 + 4) = v27;
    v8 = v26;
    _os_log_impl(&dword_24AC18000, v20, v21, "Pairing info: %s", v23, 0xCu);
    v28 = v57;
    __swift_destroy_boxed_opaque_existential_0(v57);
    MEMORY[0x24C22DC60](v28, -1, -1);
    MEMORY[0x24C22DC60](v23, -1, -1);
  }

  if (!*(v17 + 16))
  {
    goto LABEL_25;
  }

  v29 = sub_24AC2AB50(0xD000000000000016, 0x800000024ACDA700);
  if ((v30 & 1) == 0)
  {
    goto LABEL_25;
  }

  sub_24AC2B940(*(v17 + 56) + 32 * v29, v63);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_25;
  }

  v32 = v61;
  v31 = v62;
  if (!*(v17 + 16))
  {
    goto LABEL_24;
  }

  v33 = sub_24AC2AB50(0xD00000000000001ALL, 0x800000024ACDA720);
  if ((v34 & 1) == 0)
  {
    goto LABEL_24;
  }

  sub_24AC2B940(*(v17 + 56) + 32 * v33, v63);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_31;
  }

  if (!*(v17 + 16) || (v58 = v61, v35 = sub_24AC2AB50(0xD000000000000012, 0x800000024ACDA740), (v36 & 1) == 0))
  {
LABEL_24:
    sub_24AC46698(v32, v31);
LABEL_25:

LABEL_26:
    v46 = sub_24ACD0470();
    v47 = sub_24ACD0910();
    if (!os_log_type_enabled(v46, v47))
    {
LABEL_29:

      type metadata accessor for CentralManager.Error();
      sub_24AC9FA1C(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      return swift_willThrow();
    }

    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v63[0] = v49;
    *v48 = 136446210;
    *(v48 + 4) = sub_24AC29E20(0xD000000000000017, 0x800000024ACDA6E0, v63);
    v50 = "%{public}s Invalid pairing info!";
LABEL_28:
    _os_log_impl(&dword_24AC18000, v46, v47, v50, v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v49);
    MEMORY[0x24C22DC60](v49, -1, -1);
    MEMORY[0x24C22DC60](v48, -1, -1);
    goto LABEL_29;
  }

  sub_24AC2B940(*(v17 + 56) + 32 * v35, v63);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_31:
    sub_24AC46698(v32, v31);
    goto LABEL_26;
  }

  v56 = v62;
  v57 = v61;
  v37 = v31;
  sub_24AC46630(v32, v31);
  sub_24ACD0070();
  v38 = v60;
  if ((*(v60 + 48))(v8, 1, v9) == 1)
  {
    v39 = v56;
    sub_24AC212F4(v8, &qword_27EF9E048, &qword_24ACD5910);
    v40 = sub_24ACD0470();
    v41 = sub_24ACD0910();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v63[0] = v43;
      *v42 = 136446210;
      *(v42 + 4) = sub_24AC29E20(0xD000000000000017, 0x800000024ACDA6E0, v63);
      _os_log_impl(&dword_24AC18000, v40, v41, "%{public}s Invalid remote address!", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v43);
      v37 = v31;
      MEMORY[0x24C22DC60](v43, -1, -1);
      MEMORY[0x24C22DC60](v42, -1, -1);
    }

    v44 = v57;
    type metadata accessor for CentralManager.Error();
    sub_24AC9FA1C(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_24AC46698(v44, v39);
    return sub_24AC46698(v32, v37);
  }

  else
  {
    sub_24AC46698(v32, v31);
    v51 = *(v38 + 32);
    v52 = v59;
    v51(v59, v8, v9);
    v51(a2, v52, v9);
    result = type metadata accessor for PeripheralPairingInfo();
    v53 = &a2[result[5]];
    v54 = v56;
    *v53 = v57;
    *(v53 + 1) = v54;
  }

  return result;
}

uint64_t sub_24AC803C8(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return MEMORY[0x2822009F8](sub_24AC803F0, a1, 0);
}

uint64_t sub_24AC803F0()
{
  v1 = v0[7];
  v2 = v0[5];
  v0[8] = swift_weakLoadStrong();

  return MEMORY[0x2822009F8](sub_24AC80470, v1, 0);
}

uint64_t sub_24AC80470()
{
  v32 = v0;
  v1 = v0[8];
  if (!v1)
  {
    goto LABEL_4;
  }

  if (v1 != v0[7])
  {

LABEL_4:
    type metadata accessor for CentralManager.Error();
    sub_24AC9FA1C(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v2 = v0[1];
    goto LABEL_14;
  }

  if (qword_2814AD8B0 != -1)
  {
    swift_once();
  }

  v4 = v0[5];
  v3 = v0[6];
  v5 = sub_24ACD0490();
  __swift_project_value_buffer(v5, qword_2814AD8C0);

  v6 = sub_24ACD0470();
  v7 = sub_24ACD0930();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[5];
    v9 = v0[6];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v31[0] = v11;
    *v10 = 136446466;
    v12 = sub_24AC39074();
    v14 = sub_24AC29E20(v12, v13, v31);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2082;
    v0[2] = v9;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E168, &unk_24ACD45F0);
    v15 = sub_24ACD05A0();
    v17 = sub_24AC29E20(v15, v16, v31);

    *(v10 + 14) = v17;
    _os_log_impl(&dword_24AC18000, v6, v7, "CentralManger.connect() for %{public}s options: %{public}s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C22DC60](v11, -1, -1);
    MEMORY[0x24C22DC60](v10, -1, -1);
  }

  v18 = v0[7];
  v19 = v0[5];
  v20 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_id;
  v21 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_connected;
  swift_beginAccess();

  v22 = *(v18 + v21);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31[0] = *(v18 + v21);
  *(v18 + v21) = 0x8000000000000000;
  sub_24AC635A0(v19, v19 + v20, isUniquelyReferenced_nonNull_native);
  *(v18 + v21) = v31[0];
  result = swift_endAccess();
  v25 = *(v18 + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_underlyingObject);
  if (!v25)
  {
    __break(1u);
    return result;
  }

  v26 = v0[6];
  v27 = *(v0[5] + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_underlyingObject);
  v28 = v25;
  if (v26)
  {
    sub_24AC82C24(v3);
    v29 = sub_24ACD04F0();
  }

  else
  {
    v29 = 0;
  }

  v30 = v0[8];
  [v28 connectPeripheral:v27 options:v29];

  v2 = v0[1];
LABEL_14:

  return v2();
}

uint64_t sub_24AC80820(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  return MEMORY[0x2822009F8](sub_24AC80848, a1, 0);
}

uint64_t sub_24AC80848()
{
  v1 = v0[8];
  v2 = v0[6];
  v0[9] = swift_weakLoadStrong();

  return MEMORY[0x2822009F8](sub_24AC808C8, v1, 0);
}

void sub_24AC808C8()
{
  v31 = v0;
  v1 = v0[9];
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = v0[8];
  if (v1 != v2)
  {

LABEL_4:
    type metadata accessor for CentralManager.Error();
    sub_24AC9FA1C(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_5:
    v3 = v0[1];
    goto LABEL_6;
  }

  v4 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_connected;
  swift_beginAccess();
  if (!*(*(v2 + v4) + 16) || (v5 = v0[6], v6 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_id, , sub_24AC2AC60(v5 + v6), LOBYTE(v5) = v7, , (v5 & 1) == 0))
  {
    v28 = v0[9];
    type metadata accessor for CentralManager.Error();
    sub_24AC9FA1C(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    goto LABEL_5;
  }

  if (qword_2814AD8B0 != -1)
  {
    swift_once();
  }

  v9 = v0[6];
  v8 = v0[7];
  v10 = sub_24ACD0490();
  __swift_project_value_buffer(v10, qword_2814AD8C0);

  v11 = sub_24ACD0470();
  v12 = sub_24ACD0930();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = v0[6];
    v14 = v0[7];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v30[0] = v16;
    *v15 = 136446466;
    v17 = sub_24AC39074();
    v19 = sub_24AC29E20(v17, v18, v30);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2082;
    v0[5] = v14;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E168, &unk_24ACD45F0);
    v20 = sub_24ACD05A0();
    v22 = sub_24AC29E20(v20, v21, v30);

    *(v15 + 14) = v22;
    _os_log_impl(&dword_24AC18000, v11, v12, "Calling cancelConnection() for %{public}s options: %{public}s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C22DC60](v16, -1, -1);
    MEMORY[0x24C22DC60](v15, -1, -1);
  }

  v23 = *(v0[8] + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_underlyingObject);
  if (!v23)
  {
    __break(1u);
    return;
  }

  v24 = v0[7];
  v25 = *(v0[6] + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_underlyingObject);
  v26 = v23;
  if (v24)
  {
    sub_24AC82EB0(v8);
    v27 = sub_24ACD04F0();
  }

  else
  {
    v27 = 0;
  }

  v29 = v0[9];
  [v26 cancelPeripheralConnection:v25 options:v27];

  v3 = v0[1];
LABEL_6:

  v3();
}

uint64_t sub_24AC80CDC()
{
  v1[8] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E048, &qword_24ACD5910);
  v1[9] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC80D7C, v0, 0);
}

uint64_t sub_24AC80D7C()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);
  sub_24ACD0A20();
  *(v0 + 40) = 0;
  *(v0 + 48) = 0xE000000000000000;
  MEMORY[0x24C22CD50](60, 0xE100000000000000);
  *(v0 + 56) = v3;
  v4 = type metadata accessor for Peripheral();
  v5 = sub_24AC9FA1C(&qword_2814AE1A0, type metadata accessor for Peripheral);
  v6 = sub_24ACD0C00();
  MEMORY[0x24C22CD50](v6);

  MEMORY[0x24C22CD50](8250, 0xE200000000000000);
  v7 = MEMORY[0x24C22D370](v4, v5);
  MEMORY[0x24C22CD50](v7);

  MEMORY[0x24C22CD50](0x69746E656469202CLL, 0xEF203D2072656966);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  sub_24AC2B6A8(&qword_27EF9E108, &qword_27EF9E040, qword_24ACD4100);
  v8 = sub_24ACD0C20();
  MEMORY[0x24C22CD50](v8);

  MEMORY[0x24C22CD50](0x203D2043414D202CLL, 0xE800000000000000);
  v9 = OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_macAddress;
  swift_beginAccess();
  sub_24AC2B5DC(v3 + v9, v1, &qword_27EF9E048, &qword_24ACD5910);
  v10 = sub_24ACD05A0();
  MEMORY[0x24C22CD50](v10);

  MEMORY[0x24C22CD50](0x206574617473202CLL, 0xEA0000000000203DLL);
  v11 = [*(v3 + OBJC_IVAR____TtC15FindMyBluetooth10Peripheral_underlyingObject) state];
  if (v11 < 4)
  {
    v12 = v11 + 1;
  }

  else
  {
    v12 = 0;
  }

  v13 = *(v0 + 80);
  *(v0 + 88) = v12;
  sub_24ACD0B10();
  MEMORY[0x24C22CD50](62, 0xE100000000000000);
  v14 = *(v0 + 40);
  v15 = *(v0 + 48);

  v16 = *(v0 + 8);

  return v16(v14, v15);
}

uint64_t sub_24AC8106C()
{
  v1[11] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E048, &qword_24ACD5910);
  v1[12] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC8110C, v0, 0);
}

uint64_t sub_24AC8110C()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 88);
  sub_24ACD0A20();
  *(v0 + 64) = 0;
  *(v0 + 72) = 0xE000000000000000;
  MEMORY[0x24C22CD50](60, 0xE100000000000000);
  *(v0 + 80) = v3;
  v4 = type metadata accessor for MockPeripheral();
  v5 = sub_24AC9FA1C(&qword_27EF9E100, type metadata accessor for MockPeripheral);
  v6 = sub_24ACD0C00();
  MEMORY[0x24C22CD50](v6);

  MEMORY[0x24C22CD50](8250, 0xE200000000000000);
  v7 = MEMORY[0x24C22D370](v4, v5);
  MEMORY[0x24C22CD50](v7);

  MEMORY[0x24C22CD50](0x69746E656469202CLL, 0xEF203D2072656966);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  sub_24AC2B6A8(&qword_27EF9E108, &qword_27EF9E040, qword_24ACD4100);
  v8 = sub_24ACD0C20();
  MEMORY[0x24C22CD50](v8);

  MEMORY[0x24C22CD50](0x203D2043414D202CLL, 0xE800000000000000);
  v9 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_macAddress;
  swift_beginAccess();
  sub_24AC2B5DC(v3 + v9, v1, &qword_27EF9E048, &qword_24ACD5910);
  v10 = sub_24ACD05A0();
  MEMORY[0x24C22CD50](v10);

  MEMORY[0x24C22CD50](0x206574617473202CLL, 0xEA0000000000203DLL);
  v11 = OBJC_IVAR____TtC15FindMyBluetooth14MockPeripheral_state;
  swift_beginAccess();
  *(v0 + 112) = *(v3 + v11);
  sub_24ACD0B10();
  MEMORY[0x24C22CD50](62, 0xE100000000000000);
  v12 = *(v0 + 64);
  v13 = *(v0 + 72);

  v14 = *(v0 + 8);

  return v14(v12, v13);
}

uint64_t sub_24AC813FC()
{
  if (*(v0 + OBJC_IVAR____TtC15FindMyBluetooth18MockCentralManager_isPairingCentralManager) == 1)
  {
    sub_24ACD0A20();

    v1 = type metadata accessor for MockCentralManager();
    v2 = sub_24AC9FA1C(&qword_27EF9E6E0, type metadata accessor for MockCentralManager);
    v3 = sub_24ACD0C00();
    MEMORY[0x24C22CD50](v3);

    MEMORY[0x24C22CD50](8250, 0xE200000000000000);
    v4 = MEMORY[0x24C22D370](v1, v2);
    MEMORY[0x24C22CD50](v4);

    v5 = 0x800000024ACDA2D0;
    v6 = 0xD00000000000001DLL;
  }

  else
  {
    sub_24ACD0A20();

    v7 = type metadata accessor for MockCentralManager();
    v8 = sub_24AC9FA1C(&qword_27EF9E6E0, type metadata accessor for MockCentralManager);
    v9 = sub_24ACD0C00();
    MEMORY[0x24C22CD50](v9);

    MEMORY[0x24C22CD50](8250, 0xE200000000000000);
    v10 = MEMORY[0x24C22D370](v7, v8);
    MEMORY[0x24C22CD50](v10);

    v6 = 0x69746E656469202CLL;
    v5 = 0xEF203D2072656966;
  }

  MEMORY[0x24C22CD50](v6, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E120, &qword_24ACD4550);
  sub_24AC2B6A8(&qword_2814AE258, &qword_27EF9E120, &qword_24ACD4550);
  v11 = sub_24ACD0C20();
  MEMORY[0x24C22CD50](v11);

  MEMORY[0x24C22CD50](62, 0xE100000000000000);
  return 60;
}

uint64_t sub_24AC816B0()
{
  if (*(v0 + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_isPairingCentralManager) == 1)
  {
    sub_24ACD0A20();

    v1 = type metadata accessor for CentralManager(0);
    v2 = sub_24AC9FA1C(&qword_2814AD858, type metadata accessor for CentralManager);
    v3 = sub_24ACD0C00();
    MEMORY[0x24C22CD50](v3);

    MEMORY[0x24C22CD50](8250, 0xE200000000000000);
    v4 = MEMORY[0x24C22D370](v1, v2);
    MEMORY[0x24C22CD50](v4);

    v5 = 0x800000024ACDA2D0;
    v6 = 0xD00000000000001DLL;
  }

  else
  {
    sub_24ACD0A20();

    v7 = type metadata accessor for CentralManager(0);
    v8 = sub_24AC9FA1C(&qword_2814AD858, type metadata accessor for CentralManager);
    v9 = sub_24ACD0C00();
    MEMORY[0x24C22CD50](v9);

    MEMORY[0x24C22CD50](8250, 0xE200000000000000);
    v10 = MEMORY[0x24C22D370](v7, v8);
    MEMORY[0x24C22CD50](v10);

    v6 = 0x69746E656469202CLL;
    v5 = 0xEF203D2072656966;
  }

  MEMORY[0x24C22CD50](v6, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E120, &qword_24ACD4550);
  sub_24AC2B6A8(&qword_2814AE258, &qword_27EF9E120, &qword_24ACD4550);
  v11 = sub_24ACD0C20();
  MEMORY[0x24C22CD50](v11);

  MEMORY[0x24C22CD50](62, 0xE100000000000000);
  return 60;
}

uint64_t sub_24AC8195C()
{
  v0 = sub_24ACD0490();
  __swift_allocate_value_buffer(v0, qword_2814AD8C0);
  v1 = __swift_project_value_buffer(v0, qword_2814AD8C0);
  if (qword_2814AD278 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_2814AD280);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_24AC81A24()
{
  type metadata accessor for PairingManagerAccessController();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  result = swift_weakInit();
  qword_27EF9E518 = v0;
  return result;
}

uint64_t static CentralManager.pairingCentralManager.getter()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24AC1E290;

  return sub_24AC9F2E4();
}

uint64_t CentralManager.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_id;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E120, &qword_24ACD4550);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_24AC81B94@<X0>(_BYTE *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager__state);
  if (v2 >= 6)
  {
    if (qword_2814AD8F0 != -1)
    {
      v3 = a1;
      result = swift_once();
      a1 = v3;
    }

    if (qword_2814AEE28 == v2)
    {
      LOBYTE(v2) = 6;
    }

    else
    {
      LOBYTE(v2) = 0;
    }
  }

  *a1 = v2;
  return result;
}

uint64_t CentralManager.__allocating_init(options:)(uint64_t a1)
{
  v2 = *(a1 + 8);
  *(v1 + 16) = *a1;
  *(v1 + 24) = v2;
  v3 = type metadata accessor for CentralManager(0);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v6 = swift_task_alloc();
  *(v1 + 32) = v6;
  *v6 = v1;
  v6[1] = sub_24AC81CE8;

  return sub_24AC81DE4(0, (v1 + 16));
}

uint64_t sub_24AC81CE8(uint64_t a1)
{
  v3 = *(*v1 + 32);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_24AC81DE4(char a1, uint64_t *a2)
{
  *(v3 + 48) = v2;
  *(v3 + 144) = a1;
  v5 = sub_24ACD0940();
  *(v3 + 56) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v3 + 64) = swift_task_alloc();
  v7 = *(*(sub_24ACD04B0() - 8) + 64) + 15;
  *(v3 + 72) = swift_task_alloc();
  v8 = sub_24ACD0950();
  *(v3 + 80) = v8;
  v9 = *(v8 - 8);
  *(v3 + 88) = v9;
  v10 = *(v9 + 64) + 15;
  *(v3 + 96) = swift_task_alloc();
  v11 = *(*(sub_24ACD0420() - 8) + 64) + 15;
  v12 = swift_task_alloc();
  v13 = *a2;
  *(v3 + 104) = v12;
  *(v3 + 112) = v13;
  *(v3 + 145) = *(a2 + 8);

  return MEMORY[0x2822009F8](sub_24AC81F40, 0, 0);
}

uint64_t sub_24AC81F40()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);
  v5 = *(v0 + 72);
  v18 = *(v0 + 64);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v19 = *(v0 + 144);
  swift_defaultActor_initialize();
  sub_24ACD0410();
  type metadata accessor for CentralManager(0);
  sub_24ACD0000();
  v17 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_delegateQueue;
  sub_24AC2B8F8(0, &qword_2814ACFC8, 0x277D85C78);
  (*(v3 + 104))(v1, *MEMORY[0x277D85268], v4);
  sub_24ACD04A0();
  *(v0 + 32) = MEMORY[0x277D84F90];
  sub_24AC9FA1C(&qword_2814ACFD0, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E758, &unk_24ACD5EA0);
  sub_24AC2B6A8(&unk_2814AD020, &qword_27EF9E758, &unk_24ACD5EA0);
  sub_24ACD0990();
  *(v6 + v17) = sub_24ACD0960();
  *(v6 + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_delegateTrampoline) = 0;
  *(v6 + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_underlyingObject) = 0;
  *(v6 + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager__state) = 0;
  v8 = v6 + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_garbageCollectInterval;
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 1;
  v9 = MEMORY[0x277D84F98];
  *(v6 + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_garbageCollectTasks) = MEMORY[0x277D84F98];
  v10 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_scanContinuation;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E5B8, &qword_24ACD58D8);
  (*(*(v11 - 8) + 56))(v6 + v10, 1, 1, v11);
  *(v6 + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_discovered) = v9;
  *(v6 + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_connected) = v9;
  *(v6 + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_stateContinuations) = v9;
  *(v6 + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_pairingAgent) = 0;
  *(v6 + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_peripheralCreationInProgress) = v9;
  v12 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_connectionEventsStream;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E578, qword_24ACD8D30);
  (*(*(v13 - 8) + 56))(v6 + v12, 1, 1, v13);
  v14 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_connectionEventsStreamContinuation;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E580, &qword_24ACD5890);
  (*(*(v15 - 8) + 56))(v6 + v14, 1, 1, v15);
  *(v6 + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_connectionEventMonitoringTask) = 0;
  *(v6 + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_isPairingCentralManager) = v19;

  return MEMORY[0x2822009F8](sub_24AC822EC, v6, 0);
}

void sub_24AC822EC()
{
  v41 = v0;
  v1 = *(v0 + 48);
  v2 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_delegateQueue;
  v3 = *(v1 + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_delegateQueue);
  v4 = type metadata accessor for DelegateTrampoline_CBCentralManagerPrivateDelegate();
  v5 = objc_allocWithZone(v4);
  swift_weakInit();
  *&v5[OBJC_IVAR____TtC15FindMyBluetoothP33_70F3B43C606FCD1D14F1E1CF221D31A750DelegateTrampoline_CBCentralManagerPrivateDelegate_delegateQueue] = v3;
  swift_weakAssign();
  *(v0 + 16) = v5;
  *(v0 + 24) = v4;
  v6 = v3;
  v7 = objc_msgSendSuper2((v0 + 16), sel_init);
  v8 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_delegateTrampoline;
  v9 = *(v1 + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_delegateTrampoline);
  *(v1 + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_delegateTrampoline) = v7;

  if (qword_2814AD8B0 != -1)
  {
    swift_once();
  }

  v10 = sub_24ACD0490();
  *(v0 + 120) = __swift_project_value_buffer(v10, qword_2814AD8C0);
  v11 = sub_24ACD0470();
  v12 = sub_24ACD0930();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = *(v0 + 145);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v39 = v15;
    *v14 = 136446210;
    if (v13)
    {
      v16 = 0;
    }

    else
    {
      v40 = *(v0 + 112);
      v16 = sub_24ACBDD38();
    }

    *(v0 + 40) = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E168, &unk_24ACD45F0);
    v17 = sub_24ACD05A0();
    v19 = sub_24AC29E20(v17, v18, &v39);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_24AC18000, v11, v12, "Creating CBCentralManager with options: %{public}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x24C22DC60](v15, -1, -1);
    MEMORY[0x24C22DC60](v14, -1, -1);
  }

  v20 = *(v1 + v8);
  v21 = *(v1 + v2);
  if (*(v0 + 145) == 1)
  {
    v22 = v20;
    v23 = v21;
  }

  else
  {
    v40 = *(v0 + 112);
    v24 = v20;
    v25 = v21;
    v26 = sub_24ACBDD38();
    if (v26)
    {
      sub_24AC82C24(v26);

      v27 = sub_24ACD04F0();

      goto LABEL_13;
    }
  }

  v27 = 0;
LABEL_13:
  v28 = *(v0 + 48);
  v29 = [objc_allocWithZone(MEMORY[0x277CBDFF8]) initWithDelegate:v20 queue:v21 options:v27];

  v30 = *(v28 + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_underlyingObject);
  *(v28 + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_underlyingObject) = v29;
  v31 = v29;

  if (!v31)
  {
    __break(1u);
    goto LABEL_19;
  }

  v32 = [v31 sharedPairingAgent];

  if (!v32)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v33 = *(v0 + 48);
  v34 = type metadata accessor for PairingAgent();
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();

  v37 = swift_task_alloc();
  *(v0 + 128) = v37;
  *v37 = v0;
  v37[1] = sub_24AC826AC;
  v38 = *(v0 + 48);

  sub_24AC72428(v38, v32);
}

uint64_t sub_24AC826AC(uint64_t a1)
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 136) = a1;

  sub_24AC9FA1C(&unk_2814AD870, type metadata accessor for CentralManager);
  swift_getObjectType();
  v5 = sub_24ACD0740();

  return MEMORY[0x2822009F8](sub_24AC82814, v5, v4);
}

uint64_t sub_24AC82814()
{
  v21 = v0;
  v1 = v0[15];
  v2 = v0[6];
  v3 = *(v2 + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_pairingAgent);
  *(v2 + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_pairingAgent) = v0[17];

  v4 = sub_24ACD0470();
  v5 = sub_24ACD0900();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[6];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136315138;

    v9 = sub_24AC816B0();
    v11 = v10;

    v12 = sub_24AC29E20(v9, v11, &v20);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_24AC18000, v4, v5, "[%s] init", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x24C22DC60](v8, -1, -1);
    MEMORY[0x24C22DC60](v7, -1, -1);
  }

  v14 = v0[12];
  v13 = v0[13];
  v16 = v0[8];
  v15 = v0[9];

  v17 = v0[1];
  v18 = v0[6];

  return v17(v18);
}

unint64_t sub_24AC829BC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E710, &unk_24ACD4680);
    v2 = sub_24ACD0B60();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = (v13 << 10) | (16 * v14);
        v16 = (*(a1 + 48) + v15);
        v18 = *v16;
        v17 = v16[1];
        v24 = *(*(a1 + 56) + v15);

        sub_24AC46630(v24, *(&v24 + 1));
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E5D0, &qword_24ACD5900);
        swift_dynamicCast();
        sub_24AC1BFB8(&v25, v27);
        sub_24AC1BFB8(v27, v28);
        sub_24AC1BFB8(v28, &v26);
        result = sub_24AC2AB50(v18, v17);
        if (v19)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_0(v12);
          result = sub_24AC1BFB8(&v26, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v20 = (v2[6] + 16 * result);
          *v20 = v18;
          v20[1] = v17;
          result = sub_24AC1BFB8(&v26, (v2[7] + 32 * result));
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_24AC82C24(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E700, &qword_24ACD5E08);
    v2 = sub_24ACD0B60();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v17 = *v16;
        v18 = v16[1];
        sub_24AC2B940(*(a1 + 56) + 32 * v15, v31);
        *&v30 = v17;
        *(&v30 + 1) = v18;
        v28[2] = v30;
        v29[0] = v31[0];
        v29[1] = v31[1];
        v19 = v30;
        sub_24AC1BFB8(v29, &v24);

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E5D0, &qword_24ACD5900);
        swift_dynamicCast();
        sub_24AC1BFB8(&v25, v27);
        sub_24AC1BFB8(v27, v28);
        sub_24AC1BFB8(v28, &v26);
        result = sub_24AC2AB50(v19, *(&v19 + 1));
        if (v20)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v19;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_0(v12);
          result = sub_24AC1BFB8(&v26, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v19;
          result = sub_24AC1BFB8(&v26, (v2[7] + 32 * result));
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_24AC82EB0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E6D0, &qword_24ACD5DA0);
    v2 = sub_24ACD0B60();
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
    sub_24AC2B940(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];

    swift_dynamicCast();
    sub_24AC1BFB8(v34, v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E5D0, &qword_24ACD5900);
    swift_dynamicCast();
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_24AC1BFB8(&v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_24AC1BFB8(v32, v33);
    v17 = *(v2 + 40);
    result = sub_24ACD09C0();
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
    result = sub_24AC1BFB8(v33, (*(v2 + 56) + 32 * v10));
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

uint64_t sub_24AC831AC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E720, &qword_24ACD5E20);
    v3 = sub_24ACD0B60();
  }

  else
  {
    v3 = MEMORY[0x277D84F98];
  }

  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  v8 = v3 + 64;

  v10 = 0;
  while (v6)
  {
LABEL_15:
    v13 = (v10 << 9) | (8 * __clz(__rbit64(v6)));
    v14 = *(*(a1 + 48) + v13);
    v29 = *(*(a1 + 56) + v13);
    v15 = v14;

    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    swift_dynamicCast();
    sub_24AC1BFB8((v30 + 8), v28);
    sub_24AC1BFB8(v28, v30);
    v16 = *(v3 + 40);
    sub_24ACD0590();
    sub_24ACD0D10();
    sub_24ACD05E0();
    v17 = sub_24ACD0D50();

    v18 = -1 << *(v3 + 32);
    v19 = v17 & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v8 + 8 * (v19 >> 6))) == 0)
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
        v24 = *(v8 + 8 * v20);
        if (v24 != -1)
        {
          v11 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v11 = __clz(__rbit64((-1 << v19) & ~*(v8 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v8 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
    v6 &= v6 - 1;
    *(*(v3 + 48) + 8 * v11) = v15;
    result = sub_24AC1BFB8(v30, (*(v3 + 56) + 32 * v11));
    ++*(v3 + 16);
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v7)
    {

      return v3;
    }

    v6 = *(a1 + 64 + 8 * v12);
    ++v10;
    if (v6)
    {
      v10 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t CentralManager.deinit()
{
  v1 = v0;
  if (qword_2814AD8B0 != -1)
  {
    swift_once();
  }

  v2 = sub_24ACD0490();
  __swift_project_value_buffer(v2, qword_2814AD8C0);

  v3 = sub_24ACD0470();
  v4 = sub_24ACD0900();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v5 = 136315138;
    v7 = sub_24AC816B0();
    v9 = sub_24AC29E20(v7, v8, &v20);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_24AC18000, v3, v4, "[%s] deinit", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x24C22DC60](v6, -1, -1);
    MEMORY[0x24C22DC60](v5, -1, -1);
  }

  v10 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_id;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E120, &qword_24ACD4550);
  (*(*(v11 - 8) + 8))(v1 + v10, v11);

  v12 = *(v1 + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_garbageCollectTasks);

  sub_24AC212F4(v1 + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_scanContinuation, &qword_27EF9E540, &qword_24ACD5868);
  v13 = *(v1 + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_discovered);

  v14 = *(v1 + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_connected);

  v15 = *(v1 + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_stateContinuations);

  v16 = *(v1 + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_pairingAgent);

  v17 = *(v1 + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_peripheralCreationInProgress);

  sub_24AC212F4(v1 + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_connectionEventsStream, &unk_27EF9E548, &qword_24ACD5870);
  sub_24AC212F4(v1 + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_connectionEventsStreamContinuation, &unk_27EF9E558, qword_24ACD5878);
  v18 = *(v1 + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_connectionEventMonitoringTask);

  swift_defaultActor_destroy();
  return v1;
}

uint64_t CentralManager.__deallocating_deinit()
{
  CentralManager.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_24AC83738(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E568, &qword_24ACD8D60);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC83804, v1, 0);
}

uint64_t sub_24AC83804()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  swift_allocObject();
  swift_weakInit();
  (*(v2 + 104))(v1, *MEMORY[0x277D85778], v3);
  sub_24ACD0820();

  v6 = v0[1];

  return v6();
}

uint64_t sub_24AC83900(uint64_t a1)
{
  v34 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E690, &qword_24ACD4C10);
  v2 = *(v1 - 8);
  v35 = v1;
  v36 = v2;
  v37 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v40 = &v28 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF00, &qword_24ACD3BC8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v39 = &v28 - v6;
  v7 = sub_24ACD0420();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v11 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - v12;
  v38 = &v28 - v12;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  sub_24ACD0410();
  v15 = *(v8 + 16);
  v29 = v7;
  v30 = v15;
  v15(v11, v13, v7);
  v16 = *(v8 + 80);
  v33 = v8;
  v31 = v16 | 7;
  v17 = swift_allocObject();
  *(v17 + 16) = Strong;
  v32 = *(v8 + 32);
  v32(v17 + ((v16 + 24) & ~v16), v11, v7);

  v18 = v34;
  v19 = v35;
  sub_24ACD07E0();
  v20 = sub_24ACD07C0();
  (*(*(v20 - 8) + 56))(v39, 1, 1, v20);
  v21 = v36;
  (*(v36 + 16))(v40, v18, v19);
  v22 = v29;
  v30(v11, v38, v29);
  v23 = v21;
  v24 = (*(v21 + 80) + 40) & ~*(v21 + 80);
  v25 = (v37 + v16 + v24) & ~v16;
  v26 = swift_allocObject();
  *(v26 + 2) = 0;
  *(v26 + 3) = 0;
  *(v26 + 4) = Strong;
  (*(v23 + 32))(&v26[v24], v40, v19);
  v32(&v26[v25], v11, v22);

  sub_24AC7ED6C(0, 0, v39, &unk_24ACD5E88, v26);

  return (*(v33 + 8))(v38, v22);
}

uint64_t sub_24AC83CE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_24ACD0420();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF00, &qword_24ACD3BC8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  v12 = sub_24ACD07C0();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  (*(v6 + 16))(&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v5);
  v13 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  *(v14 + 4) = a2;
  (*(v6 + 32))(&v14[v13], &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);

  sub_24AC7ED6C(0, 0, v11, &unk_24ACD5E98, v14);
}

uint64_t sub_24AC83EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_24AC83EE8, 0, 0);
}

uint64_t sub_24AC83EE8()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    return MEMORY[0x2822009F8](sub_24AC83F28, v1, 0);
  }

  **(v0 + 16) = 1;
  return (*(v0 + 8))();
}

uint64_t sub_24AC83F28()
{
  v1 = *(v0 + 24);
  sub_24AC83FB4(*(v0 + 32));

  return MEMORY[0x2822009F8](sub_24AC83F90, 0, 0);
}

uint64_t sub_24AC83FB4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E6E8, &qword_24ACD9140);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v27 - v4;
  v6 = sub_24ACD0420();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v31 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - v11;
  if (qword_2814AD8B0 != -1)
  {
    swift_once();
  }

  v13 = sub_24ACD0490();
  __swift_project_value_buffer(v13, qword_2814AD8C0);
  v30 = *(v7 + 16);
  v30(v12, a1, v6);
  v14 = sub_24ACD0470();
  v15 = sub_24ACD0900();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v29 = v5;
    v17 = v16;
    v27 = swift_slowAlloc();
    v32 = v27;
    *v17 = 136446210;
    sub_24AC9FA1C(&qword_27EF9E4E0, MEMORY[0x277CC95F0]);
    v18 = sub_24ACD0C20();
    v28 = a1;
    v20 = v19;
    (*(v7 + 8))(v12, v6);
    v21 = sub_24AC29E20(v18, v20, &v32);
    a1 = v28;

    *(v17 + 4) = v21;
    _os_log_impl(&dword_24AC18000, v14, v15, "Removing stateContinuation for %{public}s", v17, 0xCu);
    v22 = v27;
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x24C22DC60](v22, -1, -1);
    v23 = v17;
    v5 = v29;
    MEMORY[0x24C22DC60](v23, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v12, v6);
  }

  v24 = v31;
  v30(v31, a1, v6);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E690, &qword_24ACD4C10);
  (*(*(v25 - 8) + 56))(v5, 1, 1, v25);
  swift_beginAccess();
  sub_24AC7F70C(v5, v24);
  return swift_endAccess();
}

uint64_t sub_24AC84350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  return MEMORY[0x2822009F8](sub_24AC84374, 0, 0);
}

uint64_t sub_24AC84374()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    return MEMORY[0x2822009F8](sub_24AC843B4, v1, 0);
  }

  **(v0 + 16) = 1;
  return (*(v0 + 8))();
}

uint64_t sub_24AC843B4()
{
  v1 = *(v0 + 24);
  sub_24AC84420(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x2822009F8](sub_24ACA2610, 0, 0);
}

uint64_t sub_24AC84420(void (**a1)(char *, uint64_t), int64_t a2)
{
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E688, &unk_24ACD5CD0);
  v52 = *(v59 - 8);
  v4 = *(v52 + 64);
  MEMORY[0x28223BE20](v59);
  v58 = &v50 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E690, &qword_24ACD4C10);
  v60 = *(v6 - 8);
  v7 = v60[8];
  v8 = MEMORY[0x28223BE20](v6);
  v62 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v57 = &v50 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E6E8, &qword_24ACD9140);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v54 = &v50 - v13;
  v14 = sub_24ACD0420();
  v15 = *(v14 - 1);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v53 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v50 - v19;
  if (qword_2814AD8B0 != -1)
  {
LABEL_22:
    swift_once();
  }

  v21 = sub_24ACD0490();
  __swift_project_value_buffer(v21, qword_2814AD8C0);
  v56 = *(v15 + 16);
  v56(v20, a2, v14);
  v22 = sub_24ACD0470();
  v23 = sub_24ACD0900();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v50 = v24;
    v51 = swift_slowAlloc();
    v63 = v51;
    *v24 = 136446210;
    sub_24AC9FA1C(&qword_27EF9E4E0, MEMORY[0x277CC95F0]);
    v25 = sub_24ACD0C20();
    v55 = a1;
    v27 = v26;
    (*(v15 + 8))(v20, v14);
    v28 = sub_24AC29E20(v25, v27, &v63);
    a1 = v55;

    v29 = v50;
    *(v50 + 1) = v28;
    v30 = v29;
    _os_log_impl(&dword_24AC18000, v22, v23, "Storing stateContinuation for %{public}s", v29, 0xCu);
    v31 = v51;
    __swift_destroy_boxed_opaque_existential_0(v51);
    MEMORY[0x24C22DC60](v31, -1, -1);
    MEMORY[0x24C22DC60](v30, -1, -1);
  }

  else
  {

    (*(v15 + 8))(v20, v14);
  }

  v32 = v53;
  v56(v53, a2, v14);
  v33 = v60;
  v34 = v54;
  v55 = v60[2];
  v56 = (v60 + 2);
  (v55)(v54, a1, v6);
  v36 = v33[7];
  v35 = v33 + 7;
  v36(v34, 0, 1, v6);
  v37 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_stateContinuations;
  v38 = v61;
  swift_beginAccess();
  sub_24AC7F70C(v34, v32);
  swift_endAccess();
  v15 = *(v38 + v37);
  v20 = (v15 + 64);
  v39 = 1 << *(v15 + 32);
  v40 = -1;
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  v41 = v40 & *(v15 + 64);
  v42 = (v39 + 63) >> 6;
  v53 = (v35 - 3);
  v54 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager__state;
  a1 = (v52 + 8);
  v14 = (v35 - 6);

  a2 = 0;
  while (v41)
  {
LABEL_17:
    v47 = v60;
    v48 = v57;
    (v55)(v57, *(v15 + 56) + v60[9] * (__clz(__rbit64(v41)) | (a2 << 6)), v6);
    (v47[4])(v62, v48, v6);
    v43 = *&v54[v61];
    if (v43 >= 6)
    {
      if (qword_2814AD8F0 != -1)
      {
        swift_once();
      }

      if (qword_2814AEE28 == v43)
      {
        LOBYTE(v43) = 6;
      }

      else
      {
        LOBYTE(v43) = 0;
      }
    }

    v41 &= v41 - 1;
    LOBYTE(v63) = v43;
    v44 = v58;
    v45 = v62;
    sub_24ACD07F0();
    (*a1)(v44, v59);
    (*v14)(v45, v6);
  }

  while (1)
  {
    v46 = a2 + 1;
    if (__OFADD__(a2, 1))
    {
      __break(1u);
      goto LABEL_22;
    }

    if (v46 >= v42)
    {
    }

    v41 = *&v20[8 * v46];
    ++a2;
    if (v41)
    {
      a2 = v46;
      goto LABEL_17;
    }
  }
}

uint64_t sub_24AC84A88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a1;
  v5 = sub_24ACD0420();
  v54 = *(v5 - 8);
  v6 = *(v54 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E090, &qword_24ACD37C0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v53 = &v47 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E558, qword_24ACD5878);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v47 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E548, &qword_24ACD5870);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v47 - v19;
  if (*(v2 + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_isPairingCentralManager))
  {
    goto LABEL_8;
  }

  v58 = v5;
  v59 = v10;
  v51 = a2;
  v52 = v3;
  v21 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_connectionEventsStream;
  swift_beginAccess();
  sub_24AC2B5DC(v2 + v21, v20, &unk_27EF9E548, &qword_24ACD5870);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E578, qword_24ACD8D30);
  LODWORD(v21) = (*(*(v22 - 8) + 48))(v20, 1, v22);
  sub_24AC212F4(v20, &unk_27EF9E548, &qword_24ACD5870);
  if (v21 != 1)
  {
    goto LABEL_8;
  }

  v23 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_connectionEventsStreamContinuation;
  swift_beginAccess();
  sub_24AC2B5DC(v2 + v23, v16, &unk_27EF9E558, qword_24ACD5878);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E580, &qword_24ACD5890);
  v25 = (*(*(v24 - 8) + 48))(v16, 1, v24);
  sub_24AC212F4(v16, &unk_27EF9E558, qword_24ACD5878);
  if (v25 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E588, &qword_24ACD5898);
    inited = swift_initStackObject();
    v27 = inited;
    v28 = MEMORY[0x277CBDED8];
    *(inited + 16) = xmmword_24ACD39E0;
    v29 = *v28;
    *(inited + 32) = v29;
    v30 = inited + 32;
    v31 = v55;
    v32 = *(v55 + 16);
    if (v32)
    {
      v48 = inited + 32;
      v49 = inited;
      v50 = v2;
      v60 = MEMORY[0x277D84F90];
      v33 = v29;
      sub_24ACD0AB0();
      v34 = objc_opt_self();
      v56 = *(v59 + 16);
      v57 = v34;
      v35 = v31 + ((*(v59 + 80) + 32) & ~*(v59 + 80));
      v36 = *(v59 + 72);
      v37 = v53;
      v54 += 8;
      v55 = v36;
      v59 += 16;
      v38 = (v59 - 8);
      do
      {
        v56(v37, v35, v9);
        sub_24ACCFFE0();
        v39 = sub_24ACD03D0();
        v40 = [v57 UUIDWithNSUUID_];

        (*v54)(v8, v58);
        (*v38)(v37, v9);
        sub_24ACD0A90();
        v41 = *(v60 + 16);
        sub_24ACD0AC0();
        sub_24ACD0AD0();
        sub_24ACD0AA0();
        v35 += v55;
        --v32;
      }

      while (v32);
      v42 = v60;
      v27 = v49;
      v30 = v48;
    }

    else
    {
      v44 = v29;
      v42 = MEMORY[0x277D84F90];
    }

    *(v27 + 40) = v42;
    v45 = sub_24AC9F1F4(v27, &qword_27EF9E750, &qword_24ACD5E78);
    swift_setDeallocating();
    sub_24AC212F4(v30, &qword_27EF9E590, &unk_24ACD58A0);
    v46 = sub_24AC831AC(v45, &qword_27EF9E748, &qword_24ACD5E70);

    sub_24AC850E0(v46, v51);
  }

  else
  {
LABEL_8:
    type metadata accessor for CentralManager.Error();
    sub_24AC9FA1C(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }
}

uint64_t sub_24AC850E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v44 = a2;
  v47 = *v2;
  v48 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF00, &qword_24ACD3BC8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v46 = &v42 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E558, qword_24ACD5878);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v42 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E548, &qword_24ACD5870);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E738, &qword_24ACD5E38);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v42 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E580, &qword_24ACD5890);
  v45 = *(v20 - 8);
  v21 = *(v45 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v42 - v22;
  sub_24AC81B94(v49);
  if (v49[0] == 5 || (sub_24AC81B94(v49), v49[0] > 5u))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E6A8, &qword_24ACD5D00);
    (*(v16 + 104))(v19, *MEMORY[0x277D85778], v15);
    v43 = v20;
    v27 = v44;
    sub_24ACD07D0();
    (*(v16 + 8))(v19, v15);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E578, qword_24ACD8D30);
    v29 = *(v28 - 8);
    (*(v29 + 16))(v14, v27, v28);
    (*(v29 + 56))(v14, 0, 1, v28);
    v30 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_connectionEventsStream;
    swift_beginAccess();
    sub_24AC463C4(v14, v3 + v30, &unk_27EF9E548, &qword_24ACD5870);
    swift_endAccess();
    v31 = v45;
    v32 = v43;
    (*(v45 + 16))(v10, v23, v43);
    (*(v31 + 56))(v10, 0, 1, v32);
    v33 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_connectionEventsStreamContinuation;
    swift_beginAccess();
    sub_24AC463C4(v10, v3 + v33, &unk_27EF9E558, qword_24ACD5878);
    swift_endAccess();

    sub_24ACD07E0();
    v34 = sub_24ACD07C0();
    v35 = v46;
    (*(*(v34 - 8) + 56))(v46, 1, 1, v34);
    v36 = sub_24AC9FA1C(&unk_2814AD870, type metadata accessor for CentralManager);
    v37 = swift_allocObject();
    v37[2] = v3;
    v37[3] = v36;
    v38 = v47;
    v39 = v48;
    v37[4] = v3;
    v37[5] = v39;
    v37[6] = v38;
    swift_retain_n();

    v40 = sub_24AC7F080(0, 0, v35, &unk_24ACD5E48, v37);
    (*(v31 + 8))(v23, v32);
    v41 = *(v3 + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_connectionEventMonitoringTask);
    *(v3 + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_connectionEventMonitoringTask) = v40;
  }

  else
  {
    type metadata accessor for CentralManager.Error();
    sub_24AC9FA1C(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
    swift_allocError();
    v25 = v24;
    sub_24AC81B94(v49);
    *v25 = v49[0];
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }
}

uint64_t sub_24AC85700@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  v57 = *(v54 - 8);
  v6 = *(v57 + 64);
  MEMORY[0x28223BE20](v54);
  v8 = &v45 - v7;
  v9 = sub_24ACD0420();
  v10 = *(v9 - 8);
  v55 = v9;
  v56 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E558, qword_24ACD5878);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v45 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E548, &qword_24ACD5870);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v45 - v20;
  if (*(v2 + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_isPairingCentralManager))
  {
    goto LABEL_10;
  }

  v52 = a1;
  v50 = v3;
  v22 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_connectionEventsStream;
  swift_beginAccess();
  sub_24AC2B5DC(v2 + v22, v21, &unk_27EF9E548, &qword_24ACD5870);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E578, qword_24ACD8D30);
  LODWORD(v22) = (*(*(v23 - 8) + 48))(v21, 1, v23);
  sub_24AC212F4(v21, &unk_27EF9E548, &qword_24ACD5870);
  if (v22 != 1)
  {
    goto LABEL_10;
  }

  v24 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_connectionEventsStreamContinuation;
  swift_beginAccess();
  sub_24AC2B5DC(v2 + v24, v17, &unk_27EF9E558, qword_24ACD5878);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E580, &qword_24ACD5890);
  LODWORD(v24) = (*(*(v25 - 8) + 48))(v17, 1, v25);
  sub_24AC212F4(v17, &unk_27EF9E558, qword_24ACD5878);
  if (v24 == 1)
  {
    v49 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E598, &qword_24ACD58B0);
    inited = swift_initStackObject();
    v27 = inited;
    v28 = MEMORY[0x277CBDED0];
    *(inited + 16) = xmmword_24ACD39E0;
    v29 = *v28;
    *(inited + 32) = v29;
    v30 = inited + 32;
    v31 = v52;
    v32 = *(v52 + 16);
    if (v32)
    {
      v46 = inited + 32;
      v47 = inited;
      v48 = v2;
      v58 = MEMORY[0x277D84F90];
      v33 = v29;
      sub_24AC64D48(0, v32, 0);
      v34 = v58;
      v35 = *(v57 + 16);
      v36 = v31 + ((*(v57 + 80) + 32) & ~*(v57 + 80));
      v52 = *(v57 + 72);
      v53 = v35;
      v57 += 16;
      v37 = (v57 - 8);
      v51 = v56 + 32;
      do
      {
        v38 = v54;
        v53(v8, v36, v54);
        sub_24ACCFFE0();
        (*v37)(v8, v38);
        v58 = v34;
        v40 = *(v34 + 16);
        v39 = *(v34 + 24);
        if (v40 >= v39 >> 1)
        {
          sub_24AC64D48(v39 > 1, v40 + 1, 1);
          v34 = v58;
        }

        *(v34 + 16) = v40 + 1;
        (*(v56 + 32))(v34 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v40, v13, v55);
        v36 += v52;
        --v32;
      }

      while (v32);
      v27 = v47;
      v30 = v46;
    }

    else
    {
      v42 = v29;
      v34 = MEMORY[0x277D84F90];
    }

    *(v27 + 40) = v34;
    v43 = sub_24AC9F1F4(v27, &qword_27EF9E730, &qword_24ACD5E30);
    swift_setDeallocating();
    sub_24AC212F4(v30, &unk_27EF9E5A0, &qword_24ACD58B8);
    v44 = sub_24AC831AC(v43, &qword_27EF9E728, &qword_24ACD5E28);

    sub_24AC850E0(v44, v49);
  }

  else
  {
LABEL_10:
    type metadata accessor for CentralManager.Error();
    sub_24AC9FA1C(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }
}

uint64_t sub_24AC85D58(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 64) = a4;
  *(v5 + 72) = v4;
  *(v5 + 48) = a1;
  *(v5 + 56) = a3;
  *(v5 + 80) = *v4;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF00, &qword_24ACD3BC8) - 8) + 64) + 15;
  *(v5 + 88) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E5B0, &qword_24ACD58D0);
  *(v5 + 96) = v8;
  v9 = *(v8 - 8);
  *(v5 + 104) = v9;
  v10 = *(v9 + 64) + 15;
  *(v5 + 112) = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E540, &qword_24ACD5868) - 8) + 64) + 15;
  v12 = swift_task_alloc();
  v13 = *a2;
  *(v5 + 120) = v12;
  *(v5 + 128) = v13;
  *(v5 + 136) = *(a2 + 8);

  return MEMORY[0x2822009F8](sub_24AC85ED0, v4, 0);
}

uint64_t sub_24AC85ED0()
{
  v48 = v0;
  v1 = *(v0 + 72);
  sub_24AC81B94(&v46);
  if (v46 != 5)
  {
    v2 = *(v0 + 72);
    sub_24AC81B94(&v46);
    if (v46 <= 5u)
    {
      v3 = *(v0 + 72);
      type metadata accessor for CentralManager.Error();
      sub_24AC9FA1C(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
      swift_allocError();
      v5 = v4;
      sub_24AC81B94(&v46);
      *v5 = v46;
LABEL_11:
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v43 = *(v0 + 112);
      v42 = *(v0 + 120);
      v44 = *(v0 + 88);

      v41 = *(v0 + 8);
      goto LABEL_12;
    }
  }

  v6 = *(v0 + 120);
  v7 = *(v0 + 72);
  v8 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_scanContinuation;
  swift_beginAccess();
  sub_24AC2B5DC(v7 + v8, v6, &qword_27EF9E540, &qword_24ACD5868);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E5B8, &qword_24ACD58D8);
  LODWORD(v7) = (*(*(v9 - 8) + 48))(v6, 1, v9);
  sub_24AC212F4(v6, &qword_27EF9E540, &qword_24ACD5868);
  if (v7 != 1)
  {
    type metadata accessor for CentralManager.Error();
    sub_24AC9FA1C(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
    swift_allocError();
    goto LABEL_11;
  }

  v10 = *(v0 + 136);
  v12 = *(v0 + 104);
  v11 = *(v0 + 112);
  v13 = *(v0 + 96);
  v15 = *(v0 + 64);
  v14 = *(v0 + 72);
  v16 = *(v0 + 48);
  v17 = *(v0 + 56);
  v46 = *(v0 + 128);
  v47 = v10;
  v18 = sub_24AC9F648(&v46);
  v20 = v19;
  v21 = v14 + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_garbageCollectInterval;
  *v21 = v17;
  *(v21 + 8) = v15;
  *(v21 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E5C8, &qword_24ACD58E0);
  (*(v12 + 104))(v11, *MEMORY[0x277D858A0], v13);
  sub_24ACD08D0();
  if (qword_2814AD8B0 != -1)
  {
    swift_once();
  }

  v22 = sub_24ACD0490();
  __swift_project_value_buffer(v22, qword_2814AD8C0);

  v23 = sub_24ACD0470();
  v24 = sub_24ACD08F0();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v46 = v26;
    *v25 = 136446466;
    *(v0 + 40) = v18;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E158, &qword_24ACD45B0);
    v27 = sub_24ACD05A0();
    v29 = sub_24AC29E20(v27, v28, &v46);

    *(v25 + 4) = v29;
    *(v25 + 12) = 2082;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E5D0, &qword_24ACD5900);
    v30 = sub_24ACD0510();
    v32 = sub_24AC29E20(v30, v31, &v46);

    *(v25 + 14) = v32;
    _os_log_impl(&dword_24AC18000, v23, v24, "Calling CBCentralManager.scanForPeripherals() with services: %{public}s options: %{public}s", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C22DC60](v26, -1, -1);
    MEMORY[0x24C22DC60](v25, -1, -1);
  }

  v33 = *(v0 + 112);
  v34 = *(v0 + 120);
  v36 = *(v0 + 80);
  v35 = *(v0 + 88);
  v37 = *(v0 + 72);
  v38 = sub_24ACD07C0();
  (*(*(v38 - 8) + 56))(v35, 1, 1, v38);
  v39 = sub_24AC9FA1C(&unk_2814AD870, type metadata accessor for CentralManager);
  v40 = swift_allocObject();
  v40[2] = v37;
  v40[3] = v39;
  v40[4] = v37;
  v40[5] = v18;
  v40[6] = v20;
  v40[7] = v36;
  swift_retain_n();
  sub_24AC7EA6C(0, 0, v35, &unk_24ACD58F0, v40);

  v41 = *(v0 + 8);
LABEL_12:

  return v41();
}

uint64_t sub_24AC8649C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E540, &qword_24ACD5868);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E5B8, &qword_24ACD58D8);
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, a1, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  v10 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_scanContinuation;
  swift_beginAccess();
  sub_24AC463C4(v7, a2 + v10, &qword_27EF9E540, &qword_24ACD5868);
  swift_endAccess();

  return sub_24ACD0880();
}

uint64_t sub_24AC86634()
{
  v1 = *(v0 + 16);
  sub_24AC86694();
  v2 = *(v0 + 8);

  return v2();
}

void *sub_24AC86694()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E540, &qword_24ACD5868);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v25 - v4;
  if (qword_2814AD8B0 != -1)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v6 = sub_24ACD0490();
    __swift_project_value_buffer(v6, qword_2814AD8C0);
    v7 = sub_24ACD0470();
    v8 = sub_24ACD08F0();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_24AC18000, v7, v8, "Calling CBCentralManager.stopScan()", v9, 2u);
      MEMORY[0x24C22DC60](v9, -1, -1);
    }

    result = *(v1 + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_underlyingObject);
    if (!result)
    {
      break;
    }

    [result stopScan];
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E5B8, &qword_24ACD58D8);
    (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
    v12 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_scanContinuation;
    swift_beginAccess();
    sub_24AC463C4(v5, v1 + v12, &qword_27EF9E540, &qword_24ACD5868);
    swift_endAccess();
    v13 = v1 + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_garbageCollectInterval;
    *v13 = 0;
    *(v13 + 8) = 0;
    *(v13 + 16) = 1;
    v14 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_garbageCollectTasks;
    swift_beginAccess();
    v15 = *(v1 + v14);
    v16 = 1 << *(v15 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v5 = v17 & *(v15 + 64);
    v18 = (v16 + 63) >> 6;
    v19 = *(v1 + v14);

    v20 = 0;
    while (v5)
    {
      v21 = v20;
LABEL_13:
      v22 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v23 = *(*(v15 + 56) + ((v21 << 9) | (8 * v22)));

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9EC00, &qword_24ACD4690);
      sub_24ACD0830();
    }

    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v21 >= v18)
      {

        v24 = *(v1 + v14);
        *(v1 + v14) = MEMORY[0x277D84F98];
      }

      v5 = *(v15 + 64 + 8 * v21);
      ++v20;
      if (v5)
      {
        v20 = v21;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_17:
    swift_once();
  }

  __break(1u);
  return result;
}

uint64_t sub_24AC869B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x2822009F8](sub_24AC869DC, a4, 0);
}

uint64_t sub_24AC869DC()
{
  sub_24AC86A40(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));
  v1 = *(v0 + 8);

  return v1();
}

void sub_24AC86A40(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_underlyingObject);
  if (v4)
  {
    v7 = a2;
    if (a2)
    {
      sub_24AC2B8F8(0, &qword_27EF9E150, 0x277CBE0A0);
      v8 = v4;
      v7 = sub_24ACD06F0();
    }

    else
    {
      v9 = v4;
    }

    sub_24AC82C24(a3);
    v10 = sub_24ACD04F0();

    v11 = swift_allocObject();
    swift_weakInit();
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    *(v12 + 24) = a4;
    v14[4] = sub_24ACA1EC0;
    v14[5] = v12;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 1107296256;
    v14[2] = sub_24AC873F8;
    v14[3] = &block_descriptor_222;
    v13 = _Block_copy(v14);

    [v4 scanForPeripheralsWithServices:v7 options:v10 completion:v13];
    _Block_release(v13);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24AC86BE4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9DF00, &qword_24ACD3BC8);
  v7 = *(*(v6 - 8) + 64);
  result = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v15 - v9;
  if (a1)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v11 = result;
      v12 = sub_24ACD07C0();
      (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
      v13 = swift_allocObject();
      v13[2] = 0;
      v13[3] = 0;
      v13[4] = a1;
      v13[5] = v11;
      v13[6] = a4;
      v14 = a1;
      sub_24AC7EA6C(0, 0, v10, &unk_24ACD5E00, v13);
    }
  }

  return result;
}

uint64_t sub_24AC86D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E5B8, &qword_24ACD58D8);
  v5[12] = v6;
  v7 = *(v6 - 8);
  v5[13] = v7;
  v8 = *(v7 + 64) + 15;
  v5[14] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E540, &qword_24ACD5868) - 8) + 64) + 15;
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC86E40, 0, 0);
}

uint64_t sub_24AC86E40()
{
  v1 = v0[10];
  v2 = sub_24ACD0210();
  v0[17] = v2;
  v3 = [v2 domain];
  v4 = sub_24ACD0590();
  v6 = v5;

  v7 = *MEMORY[0x277CBDEF0];
  if (v4 == sub_24ACD0590() && v6 == v8)
  {
  }

  else
  {
    v10 = sub_24ACD0C40();

    if ((v10 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  if ([v2 code] - 35 <= 1)
  {
    v11 = v0[11];
    v12 = sub_24AC870A8;
    goto LABEL_15;
  }

LABEL_10:
  if (qword_2814AD8B0 != -1)
  {
    swift_once();
  }

  v13 = v0[10];
  v14 = sub_24ACD0490();
  __swift_project_value_buffer(v14, qword_2814AD8C0);
  v15 = v13;
  v16 = sub_24ACD0470();
  v17 = sub_24ACD0900();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = v0[10];
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 138412290;
    v21 = v18;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 4) = v22;
    *v20 = v22;
    _os_log_impl(&dword_24AC18000, v16, v17, "STUB: unexpected error: %@", v19, 0xCu);
    sub_24AC212F4(v20, &qword_27EF9E6A0, &qword_24ACD5590);
    MEMORY[0x24C22DC60](v20, -1, -1);
    MEMORY[0x24C22DC60](v19, -1, -1);
  }

  v23 = v0[11];

  v12 = sub_24AC8728C;
  v11 = v23;
LABEL_15:

  return MEMORY[0x2822009F8](v12, v11, 0);
}

uint64_t sub_24AC870A8()
{
  v1 = v0[16];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[11];
  v5 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_scanContinuation;
  swift_beginAccess();
  sub_24AC2B5DC(v4 + v5, v1, &qword_27EF9E540, &qword_24ACD5868);
  if ((*(v3 + 48))(v1, 1, v2))
  {
    sub_24AC212F4(v0[16], &qword_27EF9E540, &qword_24ACD5868);
  }

  else
  {
    v6 = v0[16];
    v8 = v0[13];
    v7 = v0[14];
    v9 = v0[12];
    (*(v8 + 16))(v7, v6, v9);
    sub_24AC212F4(v6, &qword_27EF9E540, &qword_24ACD5868);
    v0[9] = 0;
    sub_24ACD08A0();
    (*(v8 + 8))(v7, v9);
  }

  return MEMORY[0x2822009F8](sub_24AC87208, 0, 0);
}

uint64_t sub_24AC87208()
{
  v1 = *(v0 + 128);
  v3 = *(v0 + 112);
  v2 = *(v0 + 120);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_24AC8728C()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[11];
  v5 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_scanContinuation;
  swift_beginAccess();
  sub_24AC2B5DC(v4 + v5, v1, &qword_27EF9E540, &qword_24ACD5868);
  if ((*(v3 + 48))(v1, 1, v2))
  {
    sub_24AC212F4(v0[15], &qword_27EF9E540, &qword_24ACD5868);
  }

  else
  {
    v6 = v0[14];
    v7 = v0[15];
    v8 = v0[12];
    v9 = v0[13];
    v10 = v0[10];
    (*(v9 + 16))(v6, v7, v8);
    sub_24AC212F4(v7, &qword_27EF9E540, &qword_24ACD5868);
    v0[8] = v10;
    v11 = v10;
    sub_24ACD08A0();
    (*(v9 + 8))(v6, v8);
  }

  return MEMORY[0x2822009F8](sub_24ACA25FC, 0, 0);
}

void sub_24AC873F8(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a2;
  v8 = a3;
  v6(a2, a3);
}

uint64_t sub_24AC87484(uint64_t a1)
{
  v2[16] = a1;
  v2[17] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E048, &qword_24ACD5910) - 8) + 64) + 15;
  v2[18] = swift_task_alloc();
  v4 = *(*(sub_24ACD0420() - 8) + 64) + 15;
  v2[19] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  v2[20] = v5;
  v6 = *(v5 - 8);
  v2[21] = v6;
  v7 = *(v6 + 64) + 15;
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC875CC, v1, 0);
}

uint64_t sub_24AC875CC()
{
  v140 = v0;
  v1 = v0[17];
  sub_24AC81B94(&v138);
  if (v138 != 5)
  {
    v2 = v0[17];
    sub_24AC81B94(&v138);
    if (v138 <= 5u)
    {
      v3 = v0[17];
      type metadata accessor for CentralManager.Error();
      sub_24AC9FA1C(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
      swift_allocError();
      v5 = v4;
      sub_24AC81B94(&v138);
      *v5 = v138;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v7 = v0[23];
      v6 = v0[24];
      v8 = v0[22];
      v10 = v0[18];
      v9 = v0[19];

      v11 = v0[1];

      return v11();
    }
  }

  v13 = v0[16];
  v14 = sub_24ACD0030();
  v16 = v15;
  if (sub_24ACD0080())
  {
    v17 = 0x6D6F646E6152;
  }

  else
  {
    v17 = 0x63696C627550;
  }

  v138 = v17 & 0xFFFFFFFFFFFFLL | 0x20000000000000;
  v139 = 0xE700000000000000;
  MEMORY[0x24C22CD50](v14, v16);

  v19 = v138;
  v18 = v139;
  if (qword_2814AD278 != -1)
  {
    swift_once();
  }

  v20 = sub_24ACD0490();
  __swift_project_value_buffer(v20, qword_2814AD280);

  v21 = sub_24ACD0470();
  v22 = sub_24ACD08F0();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v138 = v24;
    *v23 = 141558275;
    *(v23 + 4) = 1752392040;
    *(v23 + 12) = 2081;
    *(v23 + 14) = sub_24AC29E20(v19, v18, &v138);
    _os_log_impl(&dword_24AC18000, v21, v22, "retrievePeripheral for MAC: %{private,mask.hash}s.", v23, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x24C22DC60](v24, -1, -1);
    MEMORY[0x24C22DC60](v23, -1, -1);
  }

  v33 = *(v0[17] + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_underlyingObject);
  if (!v33)
  {
    __break(1u);
    return MEMORY[0x2822008A0](v25, v26, v27, v28, v29, v30, v31, v32);
  }

  v34 = v33;
  v35 = sub_24ACD0560();
  Strong = [v34 retrievePeripheralWithAddress_];
  v0[25] = Strong;

  if (Strong)
  {
    v37 = v0[24];
    v38 = v0[19];
    v39 = v0[17];
    v137 = Strong;
    v40 = [v137 identifier];
    sub_24ACD03F0();

    v136 = type metadata accessor for Peripheral();
    sub_24ACD0000();
    v41 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_discovered;
    swift_beginAccess();
    v42 = *(v39 + v41);
    v135 = v19;
    if (*(v42 + 16))
    {
      v43 = v0[24];

      v44 = sub_24AC2AC60(v43);
      if (v45)
      {
        v46 = v44;
        v47 = v0[24];
        v49 = v0[20];
        v48 = v0[21];

        v0[26] = *(*(v42 + 56) + 8 * v46);
        v50 = *(v48 + 8);

        v50(v47, v49);

        v51 = sub_24ACD0470();
        v52 = sub_24ACD0930();

        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          v138 = v54;
          *v53 = 141558531;
          *(v53 + 4) = 1752392040;
          *(v53 + 12) = 2081;
          v55 = sub_24AC29E20(v135, v18, &v138);

          *(v53 + 14) = v55;
          *(v53 + 22) = 2082;

          v56 = sub_24AC39074();
          v58 = v57;

          v59 = sub_24AC29E20(v56, v58, &v138);

          *(v53 + 24) = v59;
          _os_log_impl(&dword_24AC18000, v51, v52, "Injecting MAC: %{private,mask.hash}s into discovered peripheral %{public}s", v53, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x24C22DC60](v54, -1, -1);
          MEMORY[0x24C22DC60](v53, -1, -1);
        }

        else
        {
        }

        v87 = swift_task_alloc();
        v0[27] = v87;
        *v87 = v0;
        v88 = sub_24AC883A4;
LABEL_44:
        v87[1] = v88;
        v113 = v0[16];

        return sub_24AC33170(v113);
      }
    }

    v134 = v39;
    v61 = v0[23];
    v60 = v0[24];
    v62 = v0[20];
    v63 = v0[21];
    v64 = v0[19];
    v65 = v0[17];
    v66 = *(v63 + 8);
    v0[29] = v66;
    v0[30] = (v63 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v66(v60, v62);
    v67 = [v137 identifier];

    sub_24ACD03F0();
    sub_24ACD0000();
    v68 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_connected;
    swift_beginAccess();
    v69 = *(v65 + v68);
    if (*(v69 + 16))
    {
      v70 = v0[23];
      v71 = *(v65 + v68);

      v72 = sub_24AC2AC60(v70);
      if (v73)
      {
        v74 = v0[23];
        v75 = v0[20];
        v0[31] = *(*(v69 + 56) + 8 * v72);

        v66(v74, v75);

        v76 = sub_24ACD0470();
        v77 = sub_24ACD0930();

        if (os_log_type_enabled(v76, v77))
        {
          v78 = swift_slowAlloc();
          v79 = swift_slowAlloc();
          v138 = v79;
          *v78 = 141558531;
          *(v78 + 4) = 1752392040;
          *(v78 + 12) = 2081;
          v80 = sub_24AC29E20(v135, v18, &v138);

          *(v78 + 14) = v80;
          *(v78 + 22) = 2082;

          v81 = sub_24AC39074();
          v83 = v82;

          v84 = sub_24AC29E20(v81, v83, &v138);

          *(v78 + 24) = v84;
          _os_log_impl(&dword_24AC18000, v76, v77, "Injecting MAC: %{private,mask.hash}s into existing peripheral %{public}s", v78, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x24C22DC60](v79, -1, -1);
          MEMORY[0x24C22DC60](v78, -1, -1);
        }

        else
        {
        }

        v87 = swift_task_alloc();
        v0[32] = v87;
        *v87 = v0;
        v88 = sub_24AC88578;
        goto LABEL_44;
      }
    }

    v85 = v0[23];
    v86 = v0[20];

    v66(v85, v86);
    if ([v137 delegate])
    {
      type metadata accessor for DelegateTrampoline_CBPeripheralPrivateDelegate();
      if (swift_dynamicCastClass())
      {
        Strong = swift_weakLoadStrong();
        swift_unknownObjectRelease();
        if (Strong)
        {

          goto LABEL_39;
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    v89 = v0[22];
    v91 = v0[18];
    v90 = v0[19];
    v92 = v0[16];
    v93 = sub_24ACD0090();
    v94 = *(v93 - 8);
    (*(v94 + 16))(v91, v92, v93);
    (*(v94 + 56))(v91, 0, 1, v93);
    v95 = [v137 identifier];
    sub_24ACD03F0();

    sub_24ACD0000();
    v96 = *(v134 + v41);
    if (*(v96 + 16))
    {
      v97 = v0[22];
      v98 = *(v134 + v41);

      v99 = sub_24AC2AC60(v97);
      if (v100)
      {
LABEL_38:
        Strong = *(*(v96 + 56) + 8 * v99);

        v104 = v0[30];
        v105 = v0[25];
        v106 = v0[18];
        (v0[29])(v0[22], v0[20]);
        sub_24AC212F4(v106, &qword_27EF9E048, &qword_24ACD5910);

        goto LABEL_39;
      }
    }

    v96 = *(v65 + v68);
    if (*(v96 + 16))
    {
      v101 = v0[22];
      v102 = *(v65 + v68);

      v99 = sub_24AC2AC60(v101);
      if (v103)
      {
        goto LABEL_38;
      }
    }

    v114 = v0[17];
    v115 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_peripheralCreationInProgress;
    swift_beginAccess();
    if (*(*(v114 + v115) + 16) && (v116 = v0[22], v117 = *(v114 + v115), , sub_24AC2AC60(v116), LOBYTE(v116) = v118, , (v116 & 1) != 0))
    {
      v119 = v0[22];
      v120 = v0[17];
      v121 = sub_24AC9FA1C(&unk_2814AD870, type metadata accessor for CentralManager);
      v122 = swift_task_alloc();
      v0[37] = v122;
      *(v122 + 16) = v120;
      *(v122 + 24) = v119;
      v123 = *(MEMORY[0x277D85A40] + 4);
      v124 = swift_task_alloc();
      v0[38] = v124;
      *v124 = v0;
      v124[1] = sub_24AC88BD8;
      v30 = sub_24AC9FB3C;
      v25 = v0 + 15;
      v29 = 0x800000024ACDA2F0;
      v26 = v120;
      v27 = v121;
      v28 = 0xD000000000000055;
      v31 = v122;
    }

    else
    {
      v125 = v0[22];
      v126 = v0[17];
      v127 = v0[18];
      swift_beginAccess();
      v128 = *(v114 + v115);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v138 = *(v114 + v115);
      *(v114 + v115) = 0x8000000000000000;
      sub_24AC63DEC(MEMORY[0x277D84F90], v125, isUniquelyReferenced_nonNull_native);
      *(v114 + v115) = v138;
      swift_endAccess();
      v130 = sub_24AC9FA1C(&unk_2814AD870, type metadata accessor for CentralManager);
      v131 = swift_task_alloc();
      v0[34] = v131;
      *(v131 + 16) = v126;
      *(v131 + 24) = v125;
      *(v131 + 32) = v137;
      *(v131 + 40) = v127;
      *(v131 + 48) = 1;
      *(v131 + 56) = 0;
      *(v131 + 64) = 0;
      *(v131 + 72) = 1;
      v132 = *(MEMORY[0x277D85A40] + 4);
      v133 = swift_task_alloc();
      v0[35] = v133;
      *v133 = v0;
      v133[1] = sub_24AC88750;
      v30 = sub_24AC9FB38;
      v25 = v0 + 14;
      v29 = 0x800000024ACDA2F0;
      v26 = v126;
      v27 = v130;
      v28 = 0xD000000000000055;
      v31 = v131;
    }

    v32 = v136;

    return MEMORY[0x2822008A0](v25, v26, v27, v28, v29, v30, v31, v32);
  }

LABEL_39:
  v108 = v0[23];
  v107 = v0[24];
  v109 = v0[22];
  v111 = v0[18];
  v110 = v0[19];

  v112 = v0[1];

  return v112(Strong);
}

uint64_t sub_24AC883A4()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v4 = *v1;
  *(*v1 + 224) = v0;

  v5 = *(v2 + 136);
  if (v0)
  {
    v6 = sub_24AC88D00;
  }

  else
  {
    v6 = sub_24AC884D0;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24AC884D0()
{
  v1 = *(v0 + 208);

  v3 = *(v0 + 184);
  v2 = *(v0 + 192);
  v4 = *(v0 + 176);
  v6 = *(v0 + 144);
  v5 = *(v0 + 152);

  v7 = *(v0 + 8);

  return v7(v1);
}

uint64_t sub_24AC88578()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v4 = *v1;
  *(*v1 + 264) = v0;

  v5 = *(v2 + 136);
  if (v0)
  {
    v6 = sub_24AC88DA8;
  }

  else
  {
    v6 = sub_24AC886A4;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24AC886A4()
{
  v1 = *(v0 + 248);

  v3 = *(v0 + 184);
  v2 = *(v0 + 192);
  v4 = *(v0 + 176);
  v6 = *(v0 + 144);
  v5 = *(v0 + 152);

  v7 = *(v0 + 8);

  return v7(v1);
}

uint64_t sub_24AC88750()
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v9 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v4 = *(v2 + 136);
    v5 = sub_24AC88B00;
  }

  else
  {
    v6 = *(v2 + 272);
    v7 = *(v2 + 136);

    v5 = sub_24AC88A28;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_24AC88878()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 240);
  v3 = *(v0 + 200);
  v4 = *(v0 + 144);
  (*(v0 + 232))(*(v0 + 176), *(v0 + 160));
  sub_24AC212F4(v4, &qword_27EF9E048, &qword_24ACD5910);

  v6 = *(v0 + 184);
  v5 = *(v0 + 192);
  v7 = *(v0 + 176);
  v9 = *(v0 + 144);
  v8 = *(v0 + 152);

  v10 = *(v0 + 8);

  return v10(v1);
}

uint64_t sub_24AC88950()
{
  v1 = *(v0 + 296);

  v2 = *(v0 + 312);
  v3 = *(v0 + 240);
  v4 = *(v0 + 200);
  v5 = *(v0 + 144);
  (*(v0 + 232))(*(v0 + 176), *(v0 + 160));
  sub_24AC212F4(v5, &qword_27EF9E048, &qword_24ACD5910);

  v7 = *(v0 + 184);
  v6 = *(v0 + 192);
  v8 = *(v0 + 176);
  v10 = *(v0 + 144);
  v9 = *(v0 + 152);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_24AC88A28()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 240);
  v3 = *(v0 + 200);
  v4 = *(v0 + 144);
  (*(v0 + 232))(*(v0 + 176), *(v0 + 160));
  sub_24AC212F4(v4, &qword_27EF9E048, &qword_24ACD5910);

  v6 = *(v0 + 184);
  v5 = *(v0 + 192);
  v7 = *(v0 + 176);
  v9 = *(v0 + 144);
  v8 = *(v0 + 152);

  v10 = *(v0 + 8);

  return v10(v1);
}

uint64_t sub_24AC88B00()
{
  v1 = *(v0 + 272);

  v2 = *(v0 + 288);
  v3 = *(v0 + 240);
  v4 = *(v0 + 200);
  v5 = *(v0 + 144);
  (*(v0 + 232))(*(v0 + 176), *(v0 + 160));
  sub_24AC212F4(v5, &qword_27EF9E048, &qword_24ACD5910);

  v7 = *(v0 + 184);
  v6 = *(v0 + 192);
  v8 = *(v0 + 176);
  v10 = *(v0 + 144);
  v9 = *(v0 + 152);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_24AC88BD8()
{
  v2 = *v1;
  v3 = *(*v1 + 304);
  v9 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v4 = *(v2 + 136);
    v5 = sub_24AC88950;
  }

  else
  {
    v6 = *(v2 + 296);
    v7 = *(v2 + 136);

    v5 = sub_24AC88878;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_24AC88D00()
{
  v2 = v0[25];
  v1 = v0[26];

  v3 = v0[28];
  v5 = v0[23];
  v4 = v0[24];
  v6 = v0[22];
  v8 = v0[18];
  v7 = v0[19];

  v9 = v0[1];

  return v9();
}

uint64_t sub_24AC88DA8()
{
  v1 = v0[31];
  v2 = v0[25];

  v3 = v0[33];
  v5 = v0[23];
  v4 = v0[24];
  v6 = v0[22];
  v8 = v0[18];
  v7 = v0[19];

  v9 = v0[1];

  return v9();
}

uint64_t sub_24AC88E54(uint64_t a1)
{
  v2[34] = a1;
  v2[35] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E048, &qword_24ACD5910) - 8) + 64) + 15;
  v2[36] = swift_task_alloc();
  v4 = *(*(sub_24ACD0420() - 8) + 64) + 15;
  v2[37] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  v2[38] = v5;
  v6 = *(v5 - 8);
  v2[39] = v6;
  v7 = *(v6 + 64) + 15;
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC88F9C, v1, 0);
}

uint64_t sub_24AC88F9C()
{
  v23 = v0;
  v1 = v0[35];
  v2 = sub_24AC81B94(&v20);
  if (v20 == 5 || (v3 = v0[35], v2 = sub_24AC81B94(&v21), v21 > 5u))
  {
    v14 = v0[35];
    v0[30] = MEMORY[0x277D84F90];
    v15 = *(v14 + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_underlyingObject);
    v0[43] = v15;
    if (v15)
    {
      v16 = v0[34];
      v17 = v15;
      v18 = sub_24ACD06F0();
      v0[44] = v18;
      v0[2] = v0;
      v0[7] = v0 + 31;
      v0[3] = sub_24AC8922C;
      v19 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E5E0, &qword_24ACD5920);
      v0[10] = MEMORY[0x277D85DD0];
      v0[11] = 1107296256;
      v0[12] = sub_24AC8B08C;
      v0[13] = &block_descriptor;
      v0[14] = v19;
      [v17 retrievePeripheralsWithFindMySerialNumberStrings:v18 completion:v0 + 10];
      v2 = (v0 + 2);
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200938](v2);
  }

  else
  {
    v4 = v0[35];
    type metadata accessor for CentralManager.Error();
    sub_24AC9FA1C(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
    swift_allocError();
    v6 = v5;
    sub_24AC81B94(v22);
    *v6 = v22[0];
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v8 = v0[41];
    v7 = v0[42];
    v9 = v0[40];
    v11 = v0[36];
    v10 = v0[37];

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_24AC8922C()
{
  v1 = *(*v0 + 280);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_24AC89320, v1, 0);
}

uint64_t sub_24AC89320()
{
  v1 = v0[43];
  v2 = v0[44];
  v3 = v0[31];
  v0[45] = v3;

  if (v3 >> 62)
  {
LABEL_47:
    v92 = sub_24ACD0B30();
    v0[46] = v92;
    if (v92)
    {
      goto LABEL_3;
    }

LABEL_48:
    v8 = MEMORY[0x277D84F90];
LABEL_49:
    v93 = v0[45];
    v95 = v0[41];
    v94 = v0[42];
    v96 = v0[40];
    v98 = v0[36];
    v97 = v0[37];

    v99 = v0[1];

    return v99(v8);
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v0[46] = v4;
  if (!v4)
  {
    goto LABEL_48;
  }

LABEL_3:
  v5 = v0[35];
  v6 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_connected;
  v0[47] = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_discovered;
  v0[48] = v6;
  v0[49] = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_peripheralCreationInProgress;
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v0[50] = v8;
    v16 = v0[45];
    if ((v16 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x24C22D1B0](v7);
    }

    else
    {
      if (v7 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_46;
      }

      v17 = *(v16 + 8 * v7 + 32);
    }

    v0[51] = v17;
    v0[52] = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v18 = v0[47];
    v19 = v0[42];
    v20 = v0[37];
    v21 = v0[35];
    v22 = v17;
    v23 = [v22 identifier];
    sub_24ACD03F0();

    v24 = type metadata accessor for Peripheral();
    sub_24ACD0000();
    v25 = *(v21 + v18);
    if (!*(v25 + 16))
    {
      break;
    }

    v26 = v0[42];
    v27 = *(v21 + v18);

    v28 = sub_24AC2AC60(v26);
    if ((v29 & 1) == 0)
    {

      break;
    }

    v9 = v28;
    v10 = v0[42];
    v12 = v0[38];
    v11 = v0[39];

    v13 = *(*(v25 + 56) + 8 * v9);
    v14 = *(v11 + 8);

    v14(v10, v12);
LABEL_5:

    MEMORY[0x24C22CE30](v15);
    if (*((v0[30] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[30] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v68 = *((v0[30] & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_24ACD0720();
    }

    sub_24ACD0730();

LABEL_8:

    v7 = v0[52];
    v8 = v0[30];
    if (v7 == v0[46])
    {
      goto LABEL_49;
    }
  }

  v30 = v0[48];
  v32 = v0[41];
  v31 = v0[42];
  v33 = v0[38];
  v34 = v0[39];
  v35 = v0[37];
  v36 = v0[35];
  v37 = *(v34 + 8);
  v0[53] = v37;
  v0[54] = (v34 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v37(v31, v33);
  v38 = [v22 identifier];

  sub_24ACD03F0();
  sub_24ACD0000();
  v39 = *(v36 + v30);
  if (!*(v39 + 16))
  {
    goto LABEL_21;
  }

  v40 = v0[41];
  v41 = *(v36 + v30);

  v42 = sub_24AC2AC60(v40);
  if (v43)
  {
    v44 = v0[41];
    v45 = v0[38];
    v46 = *(*(v39 + 56) + 8 * v42);

    v37(v44, v45);
    goto LABEL_5;
  }

LABEL_21:
  v37(v0[41], v0[38]);
  if (![v22 delegate])
  {
    goto LABEL_28;
  }

  type metadata accessor for DelegateTrampoline_CBPeripheralPrivateDelegate();
  if (swift_dynamicCastClass() && swift_weakLoadStrong())
  {

    MEMORY[0x24C22CE30](v47);
    if (*((v0[30] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[30] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v70 = *((v0[30] & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_24ACD0720();
    }

    sub_24ACD0730();
    swift_unknownObjectRelease();

    goto LABEL_8;
  }

  swift_unknownObjectRelease();
LABEL_28:
  v48 = v0[47];
  v49 = v0[40];
  v51 = v0[36];
  v50 = v0[37];
  v52 = v0[35];
  v53 = sub_24ACD0090();
  (*(*(v53 - 8) + 56))(v51, 1, 1, v53);
  v54 = [v22 identifier];
  sub_24ACD03F0();

  sub_24ACD0000();
  v55 = *(v52 + v48);
  if (*(v55 + 16))
  {
    v56 = v0[40];
    v57 = *(v52 + v48);

    v58 = sub_24AC2AC60(v56);
    if ((v59 & 1) == 0)
    {

      goto LABEL_31;
    }

LABEL_33:
    v63 = *(*(v55 + 56) + 8 * v58);

    v64 = v0[54];
    v65 = v0[36];
    (v0[53])(v0[40], v0[38]);
    sub_24AC212F4(v65, &qword_27EF9E048, &qword_24ACD5910);

    MEMORY[0x24C22CE30](v66);
    if (*((v0[30] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[30] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v69 = *((v0[30] & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_24ACD0720();
    }

    v67 = v0[51];
    sub_24ACD0730();

    goto LABEL_8;
  }

LABEL_31:
  v60 = v0[35];
  v55 = *(v60 + v0[48]);
  if (!*(v55 + 16))
  {
    goto LABEL_37;
  }

  v61 = v0[40];

  v58 = sub_24AC2AC60(v61);
  if (v62)
  {
    goto LABEL_33;
  }

  v60 = v0[35];
LABEL_37:
  v71 = v0[49];
  if (*(*(v60 + v71) + 16))
  {
    v72 = v0[40];
    v73 = *(v60 + v71);

    sub_24AC2AC60(v72);
    LOBYTE(v72) = v74;

    if (v72)
    {
      v75 = v0[40];
      v76 = v0[35];
      v77 = sub_24AC9FA1C(&unk_2814AD870, type metadata accessor for CentralManager);
      v78 = swift_task_alloc();
      v0[58] = v78;
      *(v78 + 16) = v76;
      *(v78 + 24) = v75;
      v79 = *(MEMORY[0x277D85A40] + 4);
      v80 = swift_task_alloc();
      v0[59] = v80;
      *v80 = v0;
      v80[1] = sub_24AC8AF3C;
      v81 = sub_24ACA261C;
      v82 = v0 + 33;
      v83 = v76;
      v84 = v77;
      goto LABEL_42;
    }

    v71 = v0[49];
    v60 = v0[35];
  }

  v85 = v0[40];
  v86 = v0[36];
  swift_beginAccess();
  v87 = *(v60 + v71);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v101 = *(v60 + v71);
  *(v60 + v71) = 0x8000000000000000;
  sub_24AC63DEC(MEMORY[0x277D84F90], v85, isUniquelyReferenced_nonNull_native);
  *(v60 + v71) = v101;
  swift_endAccess();
  v89 = sub_24AC9FA1C(&unk_2814AD870, type metadata accessor for CentralManager);
  v78 = swift_task_alloc();
  v0[55] = v78;
  *(v78 + 16) = v60;
  *(v78 + 24) = v85;
  *(v78 + 32) = v22;
  *(v78 + 40) = v86;
  *(v78 + 48) = 1;
  *(v78 + 56) = 0;
  *(v78 + 64) = 0;
  *(v78 + 72) = 1;
  v90 = *(MEMORY[0x277D85A40] + 4);
  v91 = swift_task_alloc();
  v0[56] = v91;
  *v91 = v0;
  v91[1] = sub_24AC89BE4;
  v81 = sub_24ACA2608;
  v82 = v0 + 32;
  v83 = v60;
  v84 = v89;
LABEL_42:

  return MEMORY[0x2822008A0](v82, v83, v84, 0xD000000000000055, 0x800000024ACDA2F0, v81, v78, v24);
}

uint64_t sub_24AC89BE4()
{
  v2 = *v1;
  v3 = *(*v1 + 448);
  v4 = *v1;
  v2[57] = v0;

  v5 = v2[55];
  if (v0)
  {
    v6 = v2[45];
    v7 = v2[35];

    v8 = sub_24AC8AE64;
  }

  else
  {
    v7 = v2[35];

    v8 = sub_24AC8A63C;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_24AC89D34()
{
  v1 = *(v0 + 264);
  v2 = &qword_24ACD5910;
LABEL_2:
  v3 = *(v0 + 432);
  v4 = *(v0 + 288);
  (*(v0 + 424))(*(v0 + 320), *(v0 + 304));
  sub_24AC212F4(v4, &qword_27EF9E048, v2);

  MEMORY[0x24C22CE30](v5);
  if (*((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v70 = *((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_24ACD0720();
  }

  v6 = *(v0 + 408);
  sub_24ACD0730();

  while (1)
  {

    v14 = *(v0 + 416);
    v15 = *(v0 + 240);
    if (v14 == *(v0 + 368))
    {
      break;
    }

    *(v0 + 400) = v15;
    v16 = *(v0 + 360);
    if ((v16 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x24C22D1B0](v14);
    }

    else
    {
      if (v14 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_48;
      }

      v7 = *(v16 + 8 * v14 + 32);
    }

    *(v0 + 408) = v7;
    *(v0 + 416) = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_48:
      __break(1u);
      return MEMORY[0x2822008A0](v7, v16, v8, v9, v10, v11, v12, v13);
    }

    v17 = *(v0 + 376);
    v18 = *(v0 + 336);
    v19 = *(v0 + 296);
    v20 = *(v0 + 280);
    v21 = v7;
    v22 = [v21 identifier];
    sub_24ACD03F0();

    v96 = type metadata accessor for Peripheral();
    sub_24ACD0000();
    v23 = *(v20 + v17);
    if (*(v23 + 16))
    {
      v24 = *(v0 + 336);
      v25 = *(v20 + v17);

      v26 = sub_24AC2AC60(v24);
      if (v27)
      {
        v28 = v26;
        v29 = *(v0 + 336);
        v31 = *(v0 + 304);
        v30 = *(v0 + 312);

        v32 = *(*(v23 + 56) + 8 * v28);
        v33 = *(v30 + 8);

        v33(v29, v31);
        goto LABEL_18;
      }
    }

    v34 = *(v0 + 384);
    v36 = *(v0 + 328);
    v35 = *(v0 + 336);
    v37 = *(v0 + 304);
    v38 = *(v0 + 312);
    v39 = *(v0 + 296);
    v40 = v2;
    v41 = *(v0 + 280);
    v42 = *(v38 + 8);
    *(v0 + 424) = v42;
    *(v0 + 432) = (v38 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v42(v35, v37);
    v43 = [v21 identifier];

    sub_24ACD03F0();
    sub_24ACD0000();
    v44 = *(v41 + v34);
    v2 = v40;
    if (*(v44 + 16))
    {
      v45 = *(v0 + 328);

      v46 = sub_24AC2AC60(v45);
      if ((v47 & 1) == 0)
      {

        goto LABEL_22;
      }

      v48 = *(v0 + 328);
      v49 = *(v0 + 304);
      v50 = *(*(v44 + 56) + 8 * v46);

      v42(v48, v49);
LABEL_18:

      MEMORY[0x24C22CE30](v51);
      if (*((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v53 = *((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_24ACD0720();
      }

      sub_24ACD0730();
    }

    else
    {
LABEL_22:
      v42(*(v0 + 328), *(v0 + 304));
      if (![v21 delegate])
      {
        goto LABEL_29;
      }

      type metadata accessor for DelegateTrampoline_CBPeripheralPrivateDelegate();
      if (!swift_dynamicCastClass() || !swift_weakLoadStrong())
      {
        swift_unknownObjectRelease();
LABEL_29:
        v55 = *(v0 + 376);
        v56 = *(v0 + 320);
        v58 = *(v0 + 288);
        v57 = *(v0 + 296);
        v59 = *(v0 + 280);
        v60 = sub_24ACD0090();
        (*(*(v60 - 8) + 56))(v58, 1, 1, v60);
        v61 = [v21 identifier];
        sub_24ACD03F0();

        sub_24ACD0000();
        v62 = *(v59 + v55);
        if (*(v62 + 16))
        {
          v63 = *(v0 + 320);

          v64 = sub_24AC2AC60(v63);
          if ((v65 & 1) == 0)
          {

            goto LABEL_32;
          }

LABEL_34:
          v69 = *(*(v62 + 56) + 8 * v64);

          goto LABEL_2;
        }

LABEL_32:
        v66 = *(v0 + 280);
        v62 = *(v66 + *(v0 + 384));
        if (*(v62 + 16))
        {
          v67 = *(v0 + 320);

          v64 = sub_24AC2AC60(v67);
          if (v68)
          {
            goto LABEL_34;
          }

          v66 = *(v0 + 280);
        }

        v79 = *(v0 + 392);
        if (*(*(v66 + v79) + 16))
        {
          v80 = *(v0 + 320);
          v81 = *(v66 + v79);

          sub_24AC2AC60(v80);
          LOBYTE(v80) = v82;

          v66 = *(v0 + 280);
          if (v80)
          {
            v83 = *(v0 + 320);
            v84 = sub_24AC9FA1C(&unk_2814AD870, type metadata accessor for CentralManager);
            v85 = swift_task_alloc();
            *(v0 + 464) = v85;
            *(v85 + 16) = v66;
            *(v85 + 24) = v83;
            v86 = *(MEMORY[0x277D85A40] + 4);
            v87 = swift_task_alloc();
            *(v0 + 472) = v87;
            *v87 = v0;
            v87[1] = sub_24AC8AF3C;
            v11 = sub_24ACA261C;
            v7 = (v0 + 264);
            v10 = 0x800000024ACDA2F0;
            v16 = v66;
            v8 = v84;
            v9 = 0xD000000000000055;
            v12 = v85;
LABEL_44:
            v13 = v96;

            return MEMORY[0x2822008A0](v7, v16, v8, v9, v10, v11, v12, v13);
          }

          v79 = *(v0 + 392);
        }

        v88 = *(v0 + 320);
        v89 = *(v0 + 288);
        swift_beginAccess();
        v90 = *(v66 + v79);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v97 = *(v66 + v79);
        *(v66 + v79) = 0x8000000000000000;
        sub_24AC63DEC(MEMORY[0x277D84F90], v88, isUniquelyReferenced_nonNull_native);
        *(v66 + v79) = v97;
        swift_endAccess();
        v92 = sub_24AC9FA1C(&unk_2814AD870, type metadata accessor for CentralManager);
        v93 = swift_task_alloc();
        *(v0 + 440) = v93;
        *(v93 + 16) = v66;
        *(v93 + 24) = v88;
        *(v93 + 32) = v21;
        *(v93 + 40) = v89;
        *(v93 + 48) = 1;
        *(v93 + 56) = 0;
        *(v93 + 64) = 0;
        *(v93 + 72) = 1;
        v94 = *(MEMORY[0x277D85A40] + 4);
        v95 = swift_task_alloc();
        *(v0 + 448) = v95;
        *v95 = v0;
        v95[1] = sub_24AC89BE4;
        v11 = sub_24ACA2608;
        v7 = (v0 + 256);
        v10 = 0x800000024ACDA2F0;
        v16 = v66;
        v8 = v92;
        v9 = 0xD000000000000055;
        v12 = v93;
        goto LABEL_44;
      }

      MEMORY[0x24C22CE30](v52);
      if (*((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v54 = *((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_24ACD0720();
      }

      sub_24ACD0730();
      swift_unknownObjectRelease();
    }
  }

  v71 = *(v0 + 360);
  v72 = *(v0 + 328);
  v73 = *(v0 + 336);
  v74 = *(v0 + 320);
  v76 = *(v0 + 288);
  v75 = *(v0 + 296);

  v77 = *(v0 + 8);

  return v77(v15);
}

uint64_t sub_24AC8A564()
{
  v1 = *(v0 + 480);
  v2 = *(v0 + 432);
  v3 = *(v0 + 400);
  v4 = *(v0 + 408);
  v5 = *(v0 + 288);
  (*(v0 + 424))(*(v0 + 320), *(v0 + 304));
  sub_24AC212F4(v5, &qword_27EF9E048, &qword_24ACD5910);

  v7 = *(v0 + 328);
  v6 = *(v0 + 336);
  v8 = *(v0 + 320);
  v10 = *(v0 + 288);
  v9 = *(v0 + 296);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_24AC8A63C()
{
  v1 = *(v0 + 256);
  v2 = &qword_24ACD5910;
LABEL_2:
  v3 = *(v0 + 432);
  v4 = *(v0 + 288);
  (*(v0 + 424))(*(v0 + 320), *(v0 + 304));
  sub_24AC212F4(v4, &qword_27EF9E048, v2);

  MEMORY[0x24C22CE30](v5);
  if (*((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v70 = *((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_24ACD0720();
  }

  v6 = *(v0 + 408);
  sub_24ACD0730();

  while (1)
  {

    v14 = *(v0 + 416);
    v15 = *(v0 + 240);
    if (v14 == *(v0 + 368))
    {
      break;
    }

    *(v0 + 400) = v15;
    v16 = *(v0 + 360);
    if ((v16 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x24C22D1B0](v14);
    }

    else
    {
      if (v14 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_48;
      }

      v7 = *(v16 + 8 * v14 + 32);
    }

    *(v0 + 408) = v7;
    *(v0 + 416) = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_48:
      __break(1u);
      return MEMORY[0x2822008A0](v7, v16, v8, v9, v10, v11, v12, v13);
    }

    v17 = *(v0 + 376);
    v18 = *(v0 + 336);
    v19 = *(v0 + 296);
    v20 = *(v0 + 280);
    v21 = v7;
    v22 = [v21 identifier];
    sub_24ACD03F0();

    v96 = type metadata accessor for Peripheral();
    sub_24ACD0000();
    v23 = *(v20 + v17);
    if (*(v23 + 16))
    {
      v24 = *(v0 + 336);
      v25 = *(v20 + v17);

      v26 = sub_24AC2AC60(v24);
      if (v27)
      {
        v28 = v26;
        v29 = *(v0 + 336);
        v31 = *(v0 + 304);
        v30 = *(v0 + 312);

        v32 = *(*(v23 + 56) + 8 * v28);
        v33 = *(v30 + 8);

        v33(v29, v31);
        goto LABEL_18;
      }
    }

    v34 = *(v0 + 384);
    v36 = *(v0 + 328);
    v35 = *(v0 + 336);
    v37 = *(v0 + 304);
    v38 = *(v0 + 312);
    v39 = *(v0 + 296);
    v40 = v2;
    v41 = *(v0 + 280);
    v42 = *(v38 + 8);
    *(v0 + 424) = v42;
    *(v0 + 432) = (v38 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v42(v35, v37);
    v43 = [v21 identifier];

    sub_24ACD03F0();
    sub_24ACD0000();
    v44 = *(v41 + v34);
    v2 = v40;
    if (*(v44 + 16))
    {
      v45 = *(v0 + 328);

      v46 = sub_24AC2AC60(v45);
      if ((v47 & 1) == 0)
      {

        goto LABEL_22;
      }

      v48 = *(v0 + 328);
      v49 = *(v0 + 304);
      v50 = *(*(v44 + 56) + 8 * v46);

      v42(v48, v49);
LABEL_18:

      MEMORY[0x24C22CE30](v51);
      if (*((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v53 = *((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_24ACD0720();
      }

      sub_24ACD0730();
    }

    else
    {
LABEL_22:
      v42(*(v0 + 328), *(v0 + 304));
      if (![v21 delegate])
      {
        goto LABEL_29;
      }

      type metadata accessor for DelegateTrampoline_CBPeripheralPrivateDelegate();
      if (!swift_dynamicCastClass() || !swift_weakLoadStrong())
      {
        swift_unknownObjectRelease();
LABEL_29:
        v55 = *(v0 + 376);
        v56 = *(v0 + 320);
        v58 = *(v0 + 288);
        v57 = *(v0 + 296);
        v59 = *(v0 + 280);
        v60 = sub_24ACD0090();
        (*(*(v60 - 8) + 56))(v58, 1, 1, v60);
        v61 = [v21 identifier];
        sub_24ACD03F0();

        sub_24ACD0000();
        v62 = *(v59 + v55);
        if (*(v62 + 16))
        {
          v63 = *(v0 + 320);

          v64 = sub_24AC2AC60(v63);
          if ((v65 & 1) == 0)
          {

            goto LABEL_32;
          }

LABEL_34:
          v69 = *(*(v62 + 56) + 8 * v64);

          goto LABEL_2;
        }

LABEL_32:
        v66 = *(v0 + 280);
        v62 = *(v66 + *(v0 + 384));
        if (*(v62 + 16))
        {
          v67 = *(v0 + 320);

          v64 = sub_24AC2AC60(v67);
          if (v68)
          {
            goto LABEL_34;
          }

          v66 = *(v0 + 280);
        }

        v79 = *(v0 + 392);
        if (*(*(v66 + v79) + 16))
        {
          v80 = *(v0 + 320);
          v81 = *(v66 + v79);

          sub_24AC2AC60(v80);
          LOBYTE(v80) = v82;

          if (v80)
          {
            v83 = *(v0 + 320);
            v84 = *(v0 + 280);
            v85 = sub_24AC9FA1C(&unk_2814AD870, type metadata accessor for CentralManager);
            v86 = swift_task_alloc();
            *(v0 + 464) = v86;
            *(v86 + 16) = v84;
            *(v86 + 24) = v83;
            v87 = *(MEMORY[0x277D85A40] + 4);
            v88 = swift_task_alloc();
            *(v0 + 472) = v88;
            *v88 = v0;
            v88[1] = sub_24AC8AF3C;
            v11 = sub_24ACA261C;
            v7 = (v0 + 264);
            v10 = 0x800000024ACDA2F0;
            v16 = v84;
            v8 = v85;
LABEL_44:
            v9 = 0xD000000000000055;
            v12 = v86;
            v13 = v96;

            return MEMORY[0x2822008A0](v7, v16, v8, v9, v10, v11, v12, v13);
          }

          v79 = *(v0 + 392);
          v66 = *(v0 + 280);
        }

        v89 = *(v0 + 320);
        v90 = *(v0 + 288);
        swift_beginAccess();
        v91 = *(v66 + v79);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v97 = *(v66 + v79);
        *(v66 + v79) = 0x8000000000000000;
        sub_24AC63DEC(MEMORY[0x277D84F90], v89, isUniquelyReferenced_nonNull_native);
        *(v66 + v79) = v97;
        swift_endAccess();
        v93 = sub_24AC9FA1C(&unk_2814AD870, type metadata accessor for CentralManager);
        v86 = swift_task_alloc();
        *(v0 + 440) = v86;
        *(v86 + 16) = v66;
        *(v86 + 24) = v89;
        *(v86 + 32) = v21;
        *(v86 + 40) = v90;
        *(v86 + 48) = 1;
        *(v86 + 56) = 0;
        *(v86 + 64) = 0;
        *(v86 + 72) = 1;
        v94 = *(MEMORY[0x277D85A40] + 4);
        v95 = swift_task_alloc();
        *(v0 + 448) = v95;
        *v95 = v0;
        v95[1] = sub_24AC89BE4;
        v11 = sub_24ACA2608;
        v7 = (v0 + 256);
        v10 = 0x800000024ACDA2F0;
        v16 = v66;
        v8 = v93;
        goto LABEL_44;
      }

      MEMORY[0x24C22CE30](v52);
      if (*((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v54 = *((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_24ACD0720();
      }

      sub_24ACD0730();
      swift_unknownObjectRelease();
    }
  }

  v71 = *(v0 + 360);
  v72 = *(v0 + 328);
  v73 = *(v0 + 336);
  v74 = *(v0 + 320);
  v76 = *(v0 + 288);
  v75 = *(v0 + 296);

  v77 = *(v0 + 8);

  return v77(v15);
}

uint64_t sub_24AC8AE64()
{
  v1 = *(v0 + 456);
  v2 = *(v0 + 432);
  v3 = *(v0 + 400);
  v4 = *(v0 + 408);
  v5 = *(v0 + 288);
  (*(v0 + 424))(*(v0 + 320), *(v0 + 304));
  sub_24AC212F4(v5, &qword_27EF9E048, &qword_24ACD5910);

  v7 = *(v0 + 328);
  v6 = *(v0 + 336);
  v8 = *(v0 + 320);
  v10 = *(v0 + 288);
  v9 = *(v0 + 296);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_24AC8AF3C()
{
  v2 = *v1;
  v3 = *(*v1 + 472);
  v4 = *v1;
  v2[60] = v0;

  v5 = v2[58];
  if (v0)
  {
    v6 = v2[45];
    v7 = v2[35];

    v8 = sub_24AC8A564;
  }

  else
  {
    v7 = v2[35];

    v8 = sub_24AC89D34;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_24AC8B08C(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  sub_24AC2B8F8(0, &qword_27EF9E6F0, 0x277CBE060);
  **(*(v1 + 64) + 40) = sub_24ACD0700();

  return MEMORY[0x282200948](v1);
}

uint64_t sub_24AC8B110(uint64_t a1)
{
  v2[34] = a1;
  v2[35] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E048, &qword_24ACD5910) - 8) + 64) + 15;
  v2[36] = swift_task_alloc();
  v4 = sub_24ACD0420();
  v2[37] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v2[38] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  v2[39] = v6;
  v7 = *(v6 - 8);
  v2[40] = v7;
  v8 = *(v7 + 64) + 15;
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC8B25C, v1, 0);
}

uint64_t sub_24AC8B25C()
{
  v24 = v0;
  v1 = v0[35];
  v2 = sub_24AC81B94(&v21);
  if (v21 == 5 || (v3 = v0[35], v2 = sub_24AC81B94(&v22), v22 > 5u))
  {
    v14 = v0[35];
    v0[30] = MEMORY[0x277D84F90];
    v15 = *(v14 + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_underlyingObject);
    v0[44] = v15;
    if (v15)
    {
      v16 = v0[37];
      v17 = v0[34];
      v18 = v15;
      v19 = sub_24ACD06F0();
      v0[45] = v19;
      v0[2] = v0;
      v0[7] = v0 + 31;
      v0[3] = sub_24AC8B4FC;
      v20 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E5E0, &qword_24ACD5920);
      v0[10] = MEMORY[0x277D85DD0];
      v0[11] = 1107296256;
      v0[12] = sub_24AC8B08C;
      v0[13] = &block_descriptor_21;
      v0[14] = v20;
      [v18 retrievePeripheralsWithFindMyIds:v19 completion:v0 + 10];
      v2 = (v0 + 2);
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200938](v2);
  }

  else
  {
    v4 = v0[35];
    type metadata accessor for CentralManager.Error();
    sub_24AC9FA1C(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
    swift_allocError();
    v6 = v5;
    sub_24AC81B94(v23);
    *v6 = v23[0];
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v8 = v0[42];
    v7 = v0[43];
    v9 = v0[41];
    v10 = v0[38];
    v11 = v0[36];

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_24AC8B4FC()
{
  v1 = *(*v0 + 280);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_24AC8B5F0, v1, 0);
}

uint64_t sub_24AC8B5F0()
{
  v1 = v0[44];
  v2 = v0[45];
  v3 = v0[31];
  v0[46] = v3;

  if (v3 >> 62)
  {
LABEL_47:
    v92 = sub_24ACD0B30();
    v0[47] = v92;
    if (v92)
    {
      goto LABEL_3;
    }

LABEL_48:
    v8 = MEMORY[0x277D84F90];
LABEL_49:
    v93 = v0[46];
    v95 = v0[42];
    v94 = v0[43];
    v96 = v0[41];
    v97 = v0[38];
    v98 = v0[36];

    v99 = v0[1];

    return v99(v8);
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v0[47] = v4;
  if (!v4)
  {
    goto LABEL_48;
  }

LABEL_3:
  v5 = v0[35];
  v6 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_connected;
  v0[48] = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_discovered;
  v0[49] = v6;
  v0[50] = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_peripheralCreationInProgress;
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v0[51] = v8;
    v16 = v0[46];
    if ((v16 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x24C22D1B0](v7);
    }

    else
    {
      if (v7 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_46;
      }

      v17 = *(v16 + 8 * v7 + 32);
    }

    v0[52] = v17;
    v0[53] = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v18 = v0[48];
    v19 = v0[43];
    v20 = v0[38];
    v21 = v0[35];
    v22 = v17;
    v23 = [v22 identifier];
    sub_24ACD03F0();

    v24 = type metadata accessor for Peripheral();
    sub_24ACD0000();
    v25 = *(v21 + v18);
    if (!*(v25 + 16))
    {
      break;
    }

    v26 = v0[43];
    v27 = *(v21 + v18);

    v28 = sub_24AC2AC60(v26);
    if ((v29 & 1) == 0)
    {

      break;
    }

    v9 = v28;
    v10 = v0[43];
    v12 = v0[39];
    v11 = v0[40];

    v13 = *(*(v25 + 56) + 8 * v9);
    v14 = *(v11 + 8);

    v14(v10, v12);
LABEL_5:

    MEMORY[0x24C22CE30](v15);
    if (*((v0[30] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[30] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v68 = *((v0[30] & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_24ACD0720();
    }

    sub_24ACD0730();

LABEL_8:

    v7 = v0[53];
    v8 = v0[30];
    if (v7 == v0[47])
    {
      goto LABEL_49;
    }
  }

  v30 = v0[49];
  v32 = v0[42];
  v31 = v0[43];
  v33 = v0[39];
  v34 = v0[40];
  v35 = v0[38];
  v36 = v0[35];
  v37 = *(v34 + 8);
  v0[54] = v37;
  v0[55] = (v34 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v37(v31, v33);
  v38 = [v22 identifier];

  sub_24ACD03F0();
  sub_24ACD0000();
  v39 = *(v36 + v30);
  if (!*(v39 + 16))
  {
    goto LABEL_21;
  }

  v40 = v0[42];
  v41 = *(v36 + v30);

  v42 = sub_24AC2AC60(v40);
  if (v43)
  {
    v44 = v0[42];
    v45 = v0[39];
    v46 = *(*(v39 + 56) + 8 * v42);

    v37(v44, v45);
    goto LABEL_5;
  }

LABEL_21:
  v37(v0[42], v0[39]);
  if (![v22 delegate])
  {
    goto LABEL_28;
  }

  type metadata accessor for DelegateTrampoline_CBPeripheralPrivateDelegate();
  if (swift_dynamicCastClass() && swift_weakLoadStrong())
  {

    MEMORY[0x24C22CE30](v47);
    if (*((v0[30] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[30] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v70 = *((v0[30] & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_24ACD0720();
    }

    sub_24ACD0730();
    swift_unknownObjectRelease();

    goto LABEL_8;
  }

  swift_unknownObjectRelease();
LABEL_28:
  v48 = v0[48];
  v49 = v0[41];
  v50 = v0[38];
  v51 = v0[35];
  v52 = v0[36];
  v53 = sub_24ACD0090();
  (*(*(v53 - 8) + 56))(v52, 1, 1, v53);
  v54 = [v22 identifier];
  sub_24ACD03F0();

  sub_24ACD0000();
  v55 = *(v51 + v48);
  if (*(v55 + 16))
  {
    v56 = v0[41];
    v57 = *(v51 + v48);

    v58 = sub_24AC2AC60(v56);
    if ((v59 & 1) == 0)
    {

      goto LABEL_31;
    }

LABEL_33:
    v63 = *(*(v55 + 56) + 8 * v58);

    v64 = v0[55];
    v65 = v0[36];
    (v0[54])(v0[41], v0[39]);
    sub_24AC212F4(v65, &qword_27EF9E048, &qword_24ACD5910);

    MEMORY[0x24C22CE30](v66);
    if (*((v0[30] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[30] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v69 = *((v0[30] & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_24ACD0720();
    }

    v67 = v0[52];
    sub_24ACD0730();

    goto LABEL_8;
  }

LABEL_31:
  v60 = v0[35];
  v55 = *(v60 + v0[49]);
  if (!*(v55 + 16))
  {
    goto LABEL_37;
  }

  v61 = v0[41];

  v58 = sub_24AC2AC60(v61);
  if (v62)
  {
    goto LABEL_33;
  }

  v60 = v0[35];
LABEL_37:
  v71 = v0[50];
  if (*(*(v60 + v71) + 16))
  {
    v72 = v0[41];
    v73 = *(v60 + v71);

    sub_24AC2AC60(v72);
    LOBYTE(v72) = v74;

    if (v72)
    {
      v75 = v0[41];
      v76 = v0[35];
      v77 = sub_24AC9FA1C(&unk_2814AD870, type metadata accessor for CentralManager);
      v78 = swift_task_alloc();
      v0[59] = v78;
      *(v78 + 16) = v76;
      *(v78 + 24) = v75;
      v79 = *(MEMORY[0x277D85A40] + 4);
      v80 = swift_task_alloc();
      v0[60] = v80;
      *v80 = v0;
      v80[1] = sub_24AC8D068;
      v81 = sub_24ACA261C;
      v82 = v0 + 33;
      v83 = v76;
      v84 = v77;
      goto LABEL_42;
    }

    v71 = v0[50];
    v60 = v0[35];
  }

  v85 = v0[41];
  v86 = v0[36];
  swift_beginAccess();
  v87 = *(v60 + v71);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v101 = *(v60 + v71);
  *(v60 + v71) = 0x8000000000000000;
  sub_24AC63DEC(MEMORY[0x277D84F90], v85, isUniquelyReferenced_nonNull_native);
  *(v60 + v71) = v101;
  swift_endAccess();
  v89 = sub_24AC9FA1C(&unk_2814AD870, type metadata accessor for CentralManager);
  v78 = swift_task_alloc();
  v0[56] = v78;
  *(v78 + 16) = v60;
  *(v78 + 24) = v85;
  *(v78 + 32) = v22;
  *(v78 + 40) = v86;
  *(v78 + 48) = 1;
  *(v78 + 56) = 0;
  *(v78 + 64) = 0;
  *(v78 + 72) = 1;
  v90 = *(MEMORY[0x277D85A40] + 4);
  v91 = swift_task_alloc();
  v0[57] = v91;
  *v91 = v0;
  v91[1] = sub_24AC8BEB8;
  v81 = sub_24ACA2608;
  v82 = v0 + 32;
  v83 = v60;
  v84 = v89;
LABEL_42:

  return MEMORY[0x2822008A0](v82, v83, v84, 0xD000000000000055, 0x800000024ACDA2F0, v81, v78, v24);
}

uint64_t sub_24AC8BEB8()
{
  v2 = *v1;
  v3 = *(*v1 + 456);
  v4 = *v1;
  v2[58] = v0;

  v5 = v2[56];
  if (v0)
  {
    v6 = v2[46];
    v7 = v2[35];

    v8 = sub_24ACA2604;
  }

  else
  {
    v7 = v2[35];

    v8 = sub_24AC8C83C;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_24AC8C008()
{
  v1 = *(v0 + 264);
  v2 = &qword_24ACD5910;
LABEL_2:
  v3 = *(v0 + 440);
  v4 = *(v0 + 288);
  (*(v0 + 432))(*(v0 + 328), *(v0 + 312));
  sub_24AC212F4(v4, &qword_27EF9E048, v2);

  MEMORY[0x24C22CE30](v5);
  if (*((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v70 = *((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_24ACD0720();
  }

  v6 = *(v0 + 416);
  sub_24ACD0730();

  while (1)
  {

    v14 = *(v0 + 424);
    v15 = *(v0 + 240);
    if (v14 == *(v0 + 376))
    {
      break;
    }

    *(v0 + 408) = v15;
    v16 = *(v0 + 368);
    if ((v16 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x24C22D1B0](v14);
    }

    else
    {
      if (v14 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_48;
      }

      v7 = *(v16 + 8 * v14 + 32);
    }

    *(v0 + 416) = v7;
    *(v0 + 424) = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_48:
      __break(1u);
      return MEMORY[0x2822008A0](v7, v16, v8, v9, v10, v11, v12, v13);
    }

    v17 = *(v0 + 384);
    v18 = *(v0 + 344);
    v19 = *(v0 + 304);
    v20 = *(v0 + 280);
    v21 = v7;
    v22 = [v21 identifier];
    sub_24ACD03F0();

    v96 = type metadata accessor for Peripheral();
    sub_24ACD0000();
    v23 = *(v20 + v17);
    if (*(v23 + 16))
    {
      v24 = *(v0 + 344);
      v25 = *(v20 + v17);

      v26 = sub_24AC2AC60(v24);
      if (v27)
      {
        v28 = v26;
        v29 = *(v0 + 344);
        v31 = *(v0 + 312);
        v30 = *(v0 + 320);

        v32 = *(*(v23 + 56) + 8 * v28);
        v33 = *(v30 + 8);

        v33(v29, v31);
        goto LABEL_18;
      }
    }

    v34 = *(v0 + 392);
    v36 = *(v0 + 336);
    v35 = *(v0 + 344);
    v37 = *(v0 + 312);
    v38 = *(v0 + 320);
    v39 = *(v0 + 304);
    v40 = v2;
    v41 = *(v0 + 280);
    v42 = *(v38 + 8);
    *(v0 + 432) = v42;
    *(v0 + 440) = (v38 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v42(v35, v37);
    v43 = [v21 identifier];

    sub_24ACD03F0();
    sub_24ACD0000();
    v44 = *(v41 + v34);
    v2 = v40;
    if (*(v44 + 16))
    {
      v45 = *(v0 + 336);

      v46 = sub_24AC2AC60(v45);
      if ((v47 & 1) == 0)
      {

        goto LABEL_22;
      }

      v48 = *(v0 + 336);
      v49 = *(v0 + 312);
      v50 = *(*(v44 + 56) + 8 * v46);

      v42(v48, v49);
LABEL_18:

      MEMORY[0x24C22CE30](v51);
      if (*((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v53 = *((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_24ACD0720();
      }

      sub_24ACD0730();
    }

    else
    {
LABEL_22:
      v42(*(v0 + 336), *(v0 + 312));
      if (![v21 delegate])
      {
        goto LABEL_29;
      }

      type metadata accessor for DelegateTrampoline_CBPeripheralPrivateDelegate();
      if (!swift_dynamicCastClass() || !swift_weakLoadStrong())
      {
        swift_unknownObjectRelease();
LABEL_29:
        v55 = *(v0 + 384);
        v56 = *(v0 + 328);
        v57 = *(v0 + 304);
        v58 = *(v0 + 280);
        v59 = *(v0 + 288);
        v60 = sub_24ACD0090();
        (*(*(v60 - 8) + 56))(v59, 1, 1, v60);
        v61 = [v21 identifier];
        sub_24ACD03F0();

        sub_24ACD0000();
        v62 = *(v58 + v55);
        if (*(v62 + 16))
        {
          v63 = *(v0 + 328);

          v64 = sub_24AC2AC60(v63);
          if ((v65 & 1) == 0)
          {

            goto LABEL_32;
          }

LABEL_34:
          v69 = *(*(v62 + 56) + 8 * v64);

          goto LABEL_2;
        }

LABEL_32:
        v66 = *(v0 + 280);
        v62 = *(v66 + *(v0 + 392));
        if (*(v62 + 16))
        {
          v67 = *(v0 + 328);

          v64 = sub_24AC2AC60(v67);
          if (v68)
          {
            goto LABEL_34;
          }

          v66 = *(v0 + 280);
        }

        v79 = *(v0 + 400);
        if (*(*(v66 + v79) + 16))
        {
          v80 = *(v0 + 328);
          v81 = *(v66 + v79);

          sub_24AC2AC60(v80);
          LOBYTE(v80) = v82;

          v66 = *(v0 + 280);
          if (v80)
          {
            v83 = *(v0 + 328);
            v84 = sub_24AC9FA1C(&unk_2814AD870, type metadata accessor for CentralManager);
            v85 = swift_task_alloc();
            *(v0 + 472) = v85;
            *(v85 + 16) = v66;
            *(v85 + 24) = v83;
            v86 = *(MEMORY[0x277D85A40] + 4);
            v87 = swift_task_alloc();
            *(v0 + 480) = v87;
            *v87 = v0;
            v87[1] = sub_24AC8D068;
            v11 = sub_24ACA261C;
            v7 = (v0 + 264);
            v10 = 0x800000024ACDA2F0;
            v16 = v66;
            v8 = v84;
            v9 = 0xD000000000000055;
            v12 = v85;
LABEL_44:
            v13 = v96;

            return MEMORY[0x2822008A0](v7, v16, v8, v9, v10, v11, v12, v13);
          }

          v79 = *(v0 + 400);
        }

        v88 = *(v0 + 328);
        v89 = *(v0 + 288);
        swift_beginAccess();
        v90 = *(v66 + v79);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v97 = *(v66 + v79);
        *(v66 + v79) = 0x8000000000000000;
        sub_24AC63DEC(MEMORY[0x277D84F90], v88, isUniquelyReferenced_nonNull_native);
        *(v66 + v79) = v97;
        swift_endAccess();
        v92 = sub_24AC9FA1C(&unk_2814AD870, type metadata accessor for CentralManager);
        v93 = swift_task_alloc();
        *(v0 + 448) = v93;
        *(v93 + 16) = v66;
        *(v93 + 24) = v88;
        *(v93 + 32) = v21;
        *(v93 + 40) = v89;
        *(v93 + 48) = 1;
        *(v93 + 56) = 0;
        *(v93 + 64) = 0;
        *(v93 + 72) = 1;
        v94 = *(MEMORY[0x277D85A40] + 4);
        v95 = swift_task_alloc();
        *(v0 + 456) = v95;
        *v95 = v0;
        v95[1] = sub_24AC8BEB8;
        v11 = sub_24ACA2608;
        v7 = (v0 + 256);
        v10 = 0x800000024ACDA2F0;
        v16 = v66;
        v8 = v92;
        v9 = 0xD000000000000055;
        v12 = v93;
        goto LABEL_44;
      }

      MEMORY[0x24C22CE30](v52);
      if (*((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v54 = *((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_24ACD0720();
      }

      sub_24ACD0730();
      swift_unknownObjectRelease();
    }
  }

  v71 = *(v0 + 368);
  v72 = *(v0 + 336);
  v73 = *(v0 + 344);
  v74 = *(v0 + 328);
  v75 = *(v0 + 304);
  v76 = *(v0 + 288);

  v77 = *(v0 + 8);

  return v77(v15);
}

uint64_t sub_24AC8C83C()
{
  v1 = *(v0 + 256);
  v2 = &qword_24ACD5910;
LABEL_2:
  v3 = *(v0 + 440);
  v4 = *(v0 + 288);
  (*(v0 + 432))(*(v0 + 328), *(v0 + 312));
  sub_24AC212F4(v4, &qword_27EF9E048, v2);

  MEMORY[0x24C22CE30](v5);
  if (*((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v70 = *((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_24ACD0720();
  }

  v6 = *(v0 + 416);
  sub_24ACD0730();

  while (1)
  {

    v14 = *(v0 + 424);
    v15 = *(v0 + 240);
    if (v14 == *(v0 + 376))
    {
      break;
    }

    *(v0 + 408) = v15;
    v16 = *(v0 + 368);
    if ((v16 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x24C22D1B0](v14);
    }

    else
    {
      if (v14 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_48;
      }

      v7 = *(v16 + 8 * v14 + 32);
    }

    *(v0 + 416) = v7;
    *(v0 + 424) = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_48:
      __break(1u);
      return MEMORY[0x2822008A0](v7, v16, v8, v9, v10, v11, v12, v13);
    }

    v17 = *(v0 + 384);
    v18 = *(v0 + 344);
    v19 = *(v0 + 304);
    v20 = *(v0 + 280);
    v21 = v7;
    v22 = [v21 identifier];
    sub_24ACD03F0();

    v96 = type metadata accessor for Peripheral();
    sub_24ACD0000();
    v23 = *(v20 + v17);
    if (*(v23 + 16))
    {
      v24 = *(v0 + 344);
      v25 = *(v20 + v17);

      v26 = sub_24AC2AC60(v24);
      if (v27)
      {
        v28 = v26;
        v29 = *(v0 + 344);
        v31 = *(v0 + 312);
        v30 = *(v0 + 320);

        v32 = *(*(v23 + 56) + 8 * v28);
        v33 = *(v30 + 8);

        v33(v29, v31);
        goto LABEL_18;
      }
    }

    v34 = *(v0 + 392);
    v36 = *(v0 + 336);
    v35 = *(v0 + 344);
    v37 = *(v0 + 312);
    v38 = *(v0 + 320);
    v39 = *(v0 + 304);
    v40 = v2;
    v41 = *(v0 + 280);
    v42 = *(v38 + 8);
    *(v0 + 432) = v42;
    *(v0 + 440) = (v38 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v42(v35, v37);
    v43 = [v21 identifier];

    sub_24ACD03F0();
    sub_24ACD0000();
    v44 = *(v41 + v34);
    v2 = v40;
    if (*(v44 + 16))
    {
      v45 = *(v0 + 336);

      v46 = sub_24AC2AC60(v45);
      if ((v47 & 1) == 0)
      {

        goto LABEL_22;
      }

      v48 = *(v0 + 336);
      v49 = *(v0 + 312);
      v50 = *(*(v44 + 56) + 8 * v46);

      v42(v48, v49);
LABEL_18:

      MEMORY[0x24C22CE30](v51);
      if (*((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v53 = *((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_24ACD0720();
      }

      sub_24ACD0730();
    }

    else
    {
LABEL_22:
      v42(*(v0 + 336), *(v0 + 312));
      if (![v21 delegate])
      {
        goto LABEL_29;
      }

      type metadata accessor for DelegateTrampoline_CBPeripheralPrivateDelegate();
      if (!swift_dynamicCastClass() || !swift_weakLoadStrong())
      {
        swift_unknownObjectRelease();
LABEL_29:
        v55 = *(v0 + 384);
        v56 = *(v0 + 328);
        v57 = *(v0 + 304);
        v58 = *(v0 + 280);
        v59 = *(v0 + 288);
        v60 = sub_24ACD0090();
        (*(*(v60 - 8) + 56))(v59, 1, 1, v60);
        v61 = [v21 identifier];
        sub_24ACD03F0();

        sub_24ACD0000();
        v62 = *(v58 + v55);
        if (*(v62 + 16))
        {
          v63 = *(v0 + 328);

          v64 = sub_24AC2AC60(v63);
          if ((v65 & 1) == 0)
          {

            goto LABEL_32;
          }

LABEL_34:
          v69 = *(*(v62 + 56) + 8 * v64);

          goto LABEL_2;
        }

LABEL_32:
        v66 = *(v0 + 280);
        v62 = *(v66 + *(v0 + 392));
        if (*(v62 + 16))
        {
          v67 = *(v0 + 328);

          v64 = sub_24AC2AC60(v67);
          if (v68)
          {
            goto LABEL_34;
          }

          v66 = *(v0 + 280);
        }

        v79 = *(v0 + 400);
        if (*(*(v66 + v79) + 16))
        {
          v80 = *(v0 + 328);
          v81 = *(v66 + v79);

          sub_24AC2AC60(v80);
          LOBYTE(v80) = v82;

          if (v80)
          {
            v83 = *(v0 + 328);
            v84 = *(v0 + 280);
            v85 = sub_24AC9FA1C(&unk_2814AD870, type metadata accessor for CentralManager);
            v86 = swift_task_alloc();
            *(v0 + 472) = v86;
            *(v86 + 16) = v84;
            *(v86 + 24) = v83;
            v87 = *(MEMORY[0x277D85A40] + 4);
            v88 = swift_task_alloc();
            *(v0 + 480) = v88;
            *v88 = v0;
            v88[1] = sub_24AC8D068;
            v11 = sub_24ACA261C;
            v7 = (v0 + 264);
            v10 = 0x800000024ACDA2F0;
            v16 = v84;
            v8 = v85;
LABEL_44:
            v9 = 0xD000000000000055;
            v12 = v86;
            v13 = v96;

            return MEMORY[0x2822008A0](v7, v16, v8, v9, v10, v11, v12, v13);
          }

          v79 = *(v0 + 400);
          v66 = *(v0 + 280);
        }

        v89 = *(v0 + 328);
        v90 = *(v0 + 288);
        swift_beginAccess();
        v91 = *(v66 + v79);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v97 = *(v66 + v79);
        *(v66 + v79) = 0x8000000000000000;
        sub_24AC63DEC(MEMORY[0x277D84F90], v89, isUniquelyReferenced_nonNull_native);
        *(v66 + v79) = v97;
        swift_endAccess();
        v93 = sub_24AC9FA1C(&unk_2814AD870, type metadata accessor for CentralManager);
        v86 = swift_task_alloc();
        *(v0 + 448) = v86;
        *(v86 + 16) = v66;
        *(v86 + 24) = v89;
        *(v86 + 32) = v21;
        *(v86 + 40) = v90;
        *(v86 + 48) = 1;
        *(v86 + 56) = 0;
        *(v86 + 64) = 0;
        *(v86 + 72) = 1;
        v94 = *(MEMORY[0x277D85A40] + 4);
        v95 = swift_task_alloc();
        *(v0 + 456) = v95;
        *v95 = v0;
        v95[1] = sub_24AC8BEB8;
        v11 = sub_24ACA2608;
        v7 = (v0 + 256);
        v10 = 0x800000024ACDA2F0;
        v16 = v66;
        v8 = v93;
        goto LABEL_44;
      }

      MEMORY[0x24C22CE30](v52);
      if (*((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v54 = *((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_24ACD0720();
      }

      sub_24ACD0730();
      swift_unknownObjectRelease();
    }
  }

  v71 = *(v0 + 368);
  v72 = *(v0 + 336);
  v73 = *(v0 + 344);
  v74 = *(v0 + 328);
  v75 = *(v0 + 304);
  v76 = *(v0 + 288);

  v77 = *(v0 + 8);

  return v77(v15);
}

uint64_t sub_24AC8D068()
{
  v2 = *v1;
  v3 = *(*v1 + 480);
  v4 = *v1;
  v2[61] = v0;

  v5 = v2[59];
  if (v0)
  {
    v6 = v2[46];
    v7 = v2[35];

    v8 = sub_24ACA2600;
  }

  else
  {
    v7 = v2[35];

    v8 = sub_24AC8C008;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_24AC8D1B8(uint64_t a1)
{
  v2[34] = a1;
  v2[35] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E048, &qword_24ACD5910) - 8) + 64) + 15;
  v2[36] = swift_task_alloc();
  v4 = sub_24ACD0420();
  v2[37] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v2[38] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9E040, qword_24ACD4100);
  v2[39] = v6;
  v7 = *(v6 - 8);
  v2[40] = v7;
  v8 = *(v7 + 64) + 15;
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AC8D304, v1, 0);
}

uint64_t sub_24AC8D304()
{
  v24 = v0;
  v1 = v0[35];
  v2 = sub_24AC81B94(&v21);
  if (v21 == 5 || (v3 = v0[35], v2 = sub_24AC81B94(&v22), v22 > 5u))
  {
    v14 = v0[35];
    v0[30] = MEMORY[0x277D84F90];
    v15 = *(v14 + OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_underlyingObject);
    v0[44] = v15;
    if (v15)
    {
      v16 = v0[37];
      v17 = v0[34];
      v18 = v15;
      v19 = sub_24ACD06F0();
      v0[45] = v19;
      v0[2] = v0;
      v0[7] = v0 + 31;
      v0[3] = sub_24AC8D5A4;
      v20 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9E5E0, &qword_24ACD5920);
      v0[10] = MEMORY[0x277D85DD0];
      v0[11] = 1107296256;
      v0[12] = sub_24AC8B08C;
      v0[13] = &block_descriptor_29;
      v0[14] = v20;
      [v18 retrievePeripheralsWithIdentifiers:v19 completion:v0 + 10];
      v2 = (v0 + 2);
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200938](v2);
  }

  else
  {
    v4 = v0[35];
    type metadata accessor for CentralManager.Error();
    sub_24AC9FA1C(&qword_27EF9E050, type metadata accessor for CentralManager.Error);
    swift_allocError();
    v6 = v5;
    sub_24AC81B94(v23);
    *v6 = v23[0];
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v8 = v0[42];
    v7 = v0[43];
    v9 = v0[41];
    v10 = v0[38];
    v11 = v0[36];

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_24AC8D5A4()
{
  v1 = *(*v0 + 280);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_24AC8D698, v1, 0);
}

uint64_t sub_24AC8D698()
{
  v1 = v0[44];
  v2 = v0[45];
  v3 = v0[31];
  v0[46] = v3;

  if (v3 >> 62)
  {
LABEL_47:
    v92 = sub_24ACD0B30();
    v0[47] = v92;
    if (v92)
    {
      goto LABEL_3;
    }

LABEL_48:
    v8 = MEMORY[0x277D84F90];
LABEL_49:
    v93 = v0[46];
    v95 = v0[42];
    v94 = v0[43];
    v96 = v0[41];
    v97 = v0[38];
    v98 = v0[36];

    v99 = v0[1];

    return v99(v8);
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v0[47] = v4;
  if (!v4)
  {
    goto LABEL_48;
  }

LABEL_3:
  v5 = v0[35];
  v6 = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_connected;
  v0[48] = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_discovered;
  v0[49] = v6;
  v0[50] = OBJC_IVAR____TtC15FindMyBluetooth14CentralManager_peripheralCreationInProgress;
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v0[51] = v8;
    v16 = v0[46];
    if ((v16 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x24C22D1B0](v7);
    }

    else
    {
      if (v7 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_46;
      }

      v17 = *(v16 + 8 * v7 + 32);
    }

    v0[52] = v17;
    v0[53] = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v18 = v0[48];
    v19 = v0[43];
    v20 = v0[38];
    v21 = v0[35];
    v22 = v17;
    v23 = [v22 identifier];
    sub_24ACD03F0();

    v24 = type metadata accessor for Peripheral();
    sub_24ACD0000();
    v25 = *(v21 + v18);
    if (!*(v25 + 16))
    {
      break;
    }

    v26 = v0[43];
    v27 = *(v21 + v18);

    v28 = sub_24AC2AC60(v26);
    if ((v29 & 1) == 0)
    {

      break;
    }

    v9 = v28;
    v10 = v0[43];
    v12 = v0[39];
    v11 = v0[40];

    v13 = *(*(v25 + 56) + 8 * v9);
    v14 = *(v11 + 8);

    v14(v10, v12);
LABEL_5:

    MEMORY[0x24C22CE30](v15);
    if (*((v0[30] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[30] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v68 = *((v0[30] & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_24ACD0720();
    }

    sub_24ACD0730();

LABEL_8:

    v7 = v0[53];
    v8 = v0[30];
    if (v7 == v0[47])
    {
      goto LABEL_49;
    }
  }

  v30 = v0[49];
  v32 = v0[42];
  v31 = v0[43];
  v33 = v0[39];
  v34 = v0[40];
  v35 = v0[38];
  v36 = v0[35];
  v37 = *(v34 + 8);
  v0[54] = v37;
  v0[55] = (v34 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v37(v31, v33);
  v38 = [v22 identifier];

  sub_24ACD03F0();
  sub_24ACD0000();
  v39 = *(v36 + v30);
  if (!*(v39 + 16))
  {
    goto LABEL_21;
  }

  v40 = v0[42];
  v41 = *(v36 + v30);

  v42 = sub_24AC2AC60(v40);
  if (v43)
  {
    v44 = v0[42];
    v45 = v0[39];
    v46 = *(*(v39 + 56) + 8 * v42);

    v37(v44, v45);
    goto LABEL_5;
  }

LABEL_21:
  v37(v0[42], v0[39]);
  if (![v22 delegate])
  {
    goto LABEL_28;
  }

  type metadata accessor for DelegateTrampoline_CBPeripheralPrivateDelegate();
  if (swift_dynamicCastClass() && swift_weakLoadStrong())
  {

    MEMORY[0x24C22CE30](v47);
    if (*((v0[30] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[30] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v70 = *((v0[30] & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_24ACD0720();
    }

    sub_24ACD0730();
    swift_unknownObjectRelease();

    goto LABEL_8;
  }

  swift_unknownObjectRelease();
LABEL_28:
  v48 = v0[48];
  v49 = v0[41];
  v50 = v0[38];
  v51 = v0[35];
  v52 = v0[36];
  v53 = sub_24ACD0090();
  (*(*(v53 - 8) + 56))(v52, 1, 1, v53);
  v54 = [v22 identifier];
  sub_24ACD03F0();

  sub_24ACD0000();
  v55 = *(v51 + v48);
  if (*(v55 + 16))
  {
    v56 = v0[41];
    v57 = *(v51 + v48);

    v58 = sub_24AC2AC60(v56);
    if ((v59 & 1) == 0)
    {

      goto LABEL_31;
    }

LABEL_33:
    v63 = *(*(v55 + 56) + 8 * v58);

    v64 = v0[55];
    v65 = v0[36];
    (v0[54])(v0[41], v0[39]);
    sub_24AC212F4(v65, &qword_27EF9E048, &qword_24ACD5910);

    MEMORY[0x24C22CE30](v66);
    if (*((v0[30] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[30] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v69 = *((v0[30] & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_24ACD0720();
    }

    v67 = v0[52];
    sub_24ACD0730();

    goto LABEL_8;
  }

LABEL_31:
  v60 = v0[35];
  v55 = *(v60 + v0[49]);
  if (!*(v55 + 16))
  {
    goto LABEL_37;
  }

  v61 = v0[41];

  v58 = sub_24AC2AC60(v61);
  if (v62)
  {
    goto LABEL_33;
  }

  v60 = v0[35];
LABEL_37:
  v71 = v0[50];
  if (*(*(v60 + v71) + 16))
  {
    v72 = v0[41];
    v73 = *(v60 + v71);

    sub_24AC2AC60(v72);
    LOBYTE(v72) = v74;

    if (v72)
    {
      v75 = v0[41];
      v76 = v0[35];
      v77 = sub_24AC9FA1C(&unk_2814AD870, type metadata accessor for CentralManager);
      v78 = swift_task_alloc();
      v0[59] = v78;
      *(v78 + 16) = v76;
      *(v78 + 24) = v75;
      v79 = *(MEMORY[0x277D85A40] + 4);
      v80 = swift_task_alloc();
      v0[60] = v80;
      *v80 = v0;
      v80[1] = sub_24AC8F2C8;
      v81 = sub_24ACA261C;
      v82 = v0 + 33;
      v83 = v76;
      v84 = v77;
      goto LABEL_42;
    }

    v71 = v0[50];
    v60 = v0[35];
  }

  v85 = v0[41];
  v86 = v0[36];
  swift_beginAccess();
  v87 = *(v60 + v71);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v101 = *(v60 + v71);
  *(v60 + v71) = 0x8000000000000000;
  sub_24AC63DEC(MEMORY[0x277D84F90], v85, isUniquelyReferenced_nonNull_native);
  *(v60 + v71) = v101;
  swift_endAccess();
  v89 = sub_24AC9FA1C(&unk_2814AD870, type metadata accessor for CentralManager);
  v78 = swift_task_alloc();
  v0[56] = v78;
  *(v78 + 16) = v60;
  *(v78 + 24) = v85;
  *(v78 + 32) = v22;
  *(v78 + 40) = v86;
  *(v78 + 48) = 1;
  *(v78 + 56) = 0;
  *(v78 + 64) = 0;
  *(v78 + 72) = 1;
  v90 = *(MEMORY[0x277D85A40] + 4);
  v91 = swift_task_alloc();
  v0[57] = v91;
  *v91 = v0;
  v91[1] = sub_24AC8DF60;
  v81 = sub_24ACA2608;
  v82 = v0 + 32;
  v83 = v60;
  v84 = v89;
LABEL_42:

  return MEMORY[0x2822008A0](v82, v83, v84, 0xD000000000000055, 0x800000024ACDA2F0, v81, v78, v24);
}

uint64_t sub_24AC8DF60()
{
  v2 = *v1;
  v3 = *(*v1 + 456);
  v4 = *v1;
  v2[58] = v0;

  v5 = v2[56];
  if (v0)
  {
    v6 = v2[46];
    v7 = v2[35];

    v8 = sub_24AC8F1EC;
  }

  else
  {
    v7 = v2[35];

    v8 = sub_24AC8E9C0;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_24AC8E0B0()
{
  v1 = *(v0 + 264);
  v2 = &qword_24ACD5910;
LABEL_2:
  v3 = *(v0 + 440);
  v4 = *(v0 + 288);
  (*(v0 + 432))(*(v0 + 328), *(v0 + 312));
  sub_24AC212F4(v4, &qword_27EF9E048, v2);

  MEMORY[0x24C22CE30](v5);
  if (*((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v70 = *((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_24ACD0720();
  }

  v6 = *(v0 + 416);
  sub_24ACD0730();

  while (1)
  {

    v14 = *(v0 + 424);
    v15 = *(v0 + 240);
    if (v14 == *(v0 + 376))
    {
      break;
    }

    *(v0 + 408) = v15;
    v16 = *(v0 + 368);
    if ((v16 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x24C22D1B0](v14);
    }

    else
    {
      if (v14 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_48;
      }

      v7 = *(v16 + 8 * v14 + 32);
    }

    *(v0 + 416) = v7;
    *(v0 + 424) = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_48:
      __break(1u);
      return MEMORY[0x2822008A0](v7, v16, v8, v9, v10, v11, v12, v13);
    }

    v17 = *(v0 + 384);
    v18 = *(v0 + 344);
    v19 = *(v0 + 304);
    v20 = *(v0 + 280);
    v21 = v7;
    v22 = [v21 identifier];
    sub_24ACD03F0();

    v96 = type metadata accessor for Peripheral();
    sub_24ACD0000();
    v23 = *(v20 + v17);
    if (*(v23 + 16))
    {
      v24 = *(v0 + 344);
      v25 = *(v20 + v17);

      v26 = sub_24AC2AC60(v24);
      if (v27)
      {
        v28 = v26;
        v29 = *(v0 + 344);
        v31 = *(v0 + 312);
        v30 = *(v0 + 320);

        v32 = *(*(v23 + 56) + 8 * v28);
        v33 = *(v30 + 8);

        v33(v29, v31);
        goto LABEL_18;
      }
    }

    v34 = *(v0 + 392);
    v36 = *(v0 + 336);
    v35 = *(v0 + 344);
    v37 = *(v0 + 312);
    v38 = *(v0 + 320);
    v39 = *(v0 + 304);
    v40 = v2;
    v41 = *(v0 + 280);
    v42 = *(v38 + 8);
    *(v0 + 432) = v42;
    *(v0 + 440) = (v38 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v42(v35, v37);
    v43 = [v21 identifier];

    sub_24ACD03F0();
    sub_24ACD0000();
    v44 = *(v41 + v34);
    v2 = v40;
    if (*(v44 + 16))
    {
      v45 = *(v0 + 336);

      v46 = sub_24AC2AC60(v45);
      if ((v47 & 1) == 0)
      {

        goto LABEL_22;
      }

      v48 = *(v0 + 336);
      v49 = *(v0 + 312);
      v50 = *(*(v44 + 56) + 8 * v46);

      v42(v48, v49);
LABEL_18:

      MEMORY[0x24C22CE30](v51);
      if (*((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v53 = *((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_24ACD0720();
      }

      sub_24ACD0730();
    }

    else
    {
LABEL_22:
      v42(*(v0 + 336), *(v0 + 312));
      if (![v21 delegate])
      {
        goto LABEL_29;
      }

      type metadata accessor for DelegateTrampoline_CBPeripheralPrivateDelegate();
      if (!swift_dynamicCastClass() || !swift_weakLoadStrong())
      {
        swift_unknownObjectRelease();
LABEL_29:
        v55 = *(v0 + 384);
        v56 = *(v0 + 328);
        v57 = *(v0 + 304);
        v58 = *(v0 + 280);
        v59 = *(v0 + 288);
        v60 = sub_24ACD0090();
        (*(*(v60 - 8) + 56))(v59, 1, 1, v60);
        v61 = [v21 identifier];
        sub_24ACD03F0();

        sub_24ACD0000();
        v62 = *(v58 + v55);
        if (*(v62 + 16))
        {
          v63 = *(v0 + 328);

          v64 = sub_24AC2AC60(v63);
          if ((v65 & 1) == 0)
          {

            goto LABEL_32;
          }

LABEL_34:
          v69 = *(*(v62 + 56) + 8 * v64);

          goto LABEL_2;
        }

LABEL_32:
        v66 = *(v0 + 280);
        v62 = *(v66 + *(v0 + 392));
        if (*(v62 + 16))
        {
          v67 = *(v0 + 328);

          v64 = sub_24AC2AC60(v67);
          if (v68)
          {
            goto LABEL_34;
          }

          v66 = *(v0 + 280);
        }

        v79 = *(v0 + 400);
        if (*(*(v66 + v79) + 16))
        {
          v80 = *(v0 + 328);
          v81 = *(v66 + v79);

          sub_24AC2AC60(v80);
          LOBYTE(v80) = v82;

          v66 = *(v0 + 280);
          if (v80)
          {
            v83 = *(v0 + 328);
            v84 = sub_24AC9FA1C(&unk_2814AD870, type metadata accessor for CentralManager);
            v85 = swift_task_alloc();
            *(v0 + 472) = v85;
            *(v85 + 16) = v66;
            *(v85 + 24) = v83;
            v86 = *(MEMORY[0x277D85A40] + 4);
            v87 = swift_task_alloc();
            *(v0 + 480) = v87;
            *v87 = v0;
            v87[1] = sub_24AC8F2C8;
            v11 = sub_24ACA261C;
            v7 = (v0 + 264);
            v10 = 0x800000024ACDA2F0;
            v16 = v66;
            v8 = v84;
            v9 = 0xD000000000000055;
            v12 = v85;
LABEL_44:
            v13 = v96;

            return MEMORY[0x2822008A0](v7, v16, v8, v9, v10, v11, v12, v13);
          }

          v79 = *(v0 + 400);
        }

        v88 = *(v0 + 328);
        v89 = *(v0 + 288);
        swift_beginAccess();
        v90 = *(v66 + v79);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v97 = *(v66 + v79);
        *(v66 + v79) = 0x8000000000000000;
        sub_24AC63DEC(MEMORY[0x277D84F90], v88, isUniquelyReferenced_nonNull_native);
        *(v66 + v79) = v97;
        swift_endAccess();
        v92 = sub_24AC9FA1C(&unk_2814AD870, type metadata accessor for CentralManager);
        v93 = swift_task_alloc();
        *(v0 + 448) = v93;
        *(v93 + 16) = v66;
        *(v93 + 24) = v88;
        *(v93 + 32) = v21;
        *(v93 + 40) = v89;
        *(v93 + 48) = 1;
        *(v93 + 56) = 0;
        *(v93 + 64) = 0;
        *(v93 + 72) = 1;
        v94 = *(MEMORY[0x277D85A40] + 4);
        v95 = swift_task_alloc();
        *(v0 + 456) = v95;
        *v95 = v0;
        v95[1] = sub_24AC8DF60;
        v11 = sub_24ACA2608;
        v7 = (v0 + 256);
        v10 = 0x800000024ACDA2F0;
        v16 = v66;
        v8 = v92;
        v9 = 0xD000000000000055;
        v12 = v93;
        goto LABEL_44;
      }

      MEMORY[0x24C22CE30](v52);
      if (*((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v54 = *((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_24ACD0720();
      }

      sub_24ACD0730();
      swift_unknownObjectRelease();
    }
  }

  v71 = *(v0 + 368);
  v72 = *(v0 + 336);
  v73 = *(v0 + 344);
  v74 = *(v0 + 328);
  v75 = *(v0 + 304);
  v76 = *(v0 + 288);

  v77 = *(v0 + 8);

  return v77(v15);
}

uint64_t sub_24AC8E8E4()
{
  v1 = *(v0 + 488);
  v2 = *(v0 + 440);
  v3 = *(v0 + 408);
  v4 = *(v0 + 416);
  v5 = *(v0 + 288);
  (*(v0 + 432))(*(v0 + 328), *(v0 + 312));
  sub_24AC212F4(v5, &qword_27EF9E048, &qword_24ACD5910);

  v7 = *(v0 + 336);
  v6 = *(v0 + 344);
  v8 = *(v0 + 328);
  v9 = *(v0 + 304);
  v10 = *(v0 + 288);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_24AC8E9C0()
{
  v1 = *(v0 + 256);
  v2 = &qword_24ACD5910;
LABEL_2:
  v3 = *(v0 + 440);
  v4 = *(v0 + 288);
  (*(v0 + 432))(*(v0 + 328), *(v0 + 312));
  sub_24AC212F4(v4, &qword_27EF9E048, v2);

  MEMORY[0x24C22CE30](v5);
  if (*((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v70 = *((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_24ACD0720();
  }

  v6 = *(v0 + 416);
  sub_24ACD0730();

  while (1)
  {

    v14 = *(v0 + 424);
    v15 = *(v0 + 240);
    if (v14 == *(v0 + 376))
    {
      break;
    }

    *(v0 + 408) = v15;
    v16 = *(v0 + 368);
    if ((v16 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x24C22D1B0](v14);
    }

    else
    {
      if (v14 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_48;
      }

      v7 = *(v16 + 8 * v14 + 32);
    }

    *(v0 + 416) = v7;
    *(v0 + 424) = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_48:
      __break(1u);
      return MEMORY[0x2822008A0](v7, v16, v8, v9, v10, v11, v12, v13);
    }

    v17 = *(v0 + 384);
    v18 = *(v0 + 344);
    v19 = *(v0 + 304);
    v20 = *(v0 + 280);
    v21 = v7;
    v22 = [v21 identifier];
    sub_24ACD03F0();

    v96 = type metadata accessor for Peripheral();
    sub_24ACD0000();
    v23 = *(v20 + v17);
    if (*(v23 + 16))
    {
      v24 = *(v0 + 344);
      v25 = *(v20 + v17);

      v26 = sub_24AC2AC60(v24);
      if (v27)
      {
        v28 = v26;
        v29 = *(v0 + 344);
        v31 = *(v0 + 312);
        v30 = *(v0 + 320);

        v32 = *(*(v23 + 56) + 8 * v28);
        v33 = *(v30 + 8);

        v33(v29, v31);
        goto LABEL_18;
      }
    }

    v34 = *(v0 + 392);
    v36 = *(v0 + 336);
    v35 = *(v0 + 344);
    v37 = *(v0 + 312);
    v38 = *(v0 + 320);
    v39 = *(v0 + 304);
    v40 = v2;
    v41 = *(v0 + 280);
    v42 = *(v38 + 8);
    *(v0 + 432) = v42;
    *(v0 + 440) = (v38 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v42(v35, v37);
    v43 = [v21 identifier];

    sub_24ACD03F0();
    sub_24ACD0000();
    v44 = *(v41 + v34);
    v2 = v40;
    if (*(v44 + 16))
    {
      v45 = *(v0 + 336);

      v46 = sub_24AC2AC60(v45);
      if ((v47 & 1) == 0)
      {

        goto LABEL_22;
      }

      v48 = *(v0 + 336);
      v49 = *(v0 + 312);
      v50 = *(*(v44 + 56) + 8 * v46);

      v42(v48, v49);
LABEL_18:

      MEMORY[0x24C22CE30](v51);
      if (*((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v53 = *((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_24ACD0720();
      }

      sub_24ACD0730();
    }

    else
    {
LABEL_22:
      v42(*(v0 + 336), *(v0 + 312));
      if (![v21 delegate])
      {
        goto LABEL_29;
      }

      type metadata accessor for DelegateTrampoline_CBPeripheralPrivateDelegate();
      if (!swift_dynamicCastClass() || !swift_weakLoadStrong())
      {
        swift_unknownObjectRelease();
LABEL_29:
        v55 = *(v0 + 384);
        v56 = *(v0 + 328);
        v57 = *(v0 + 304);
        v58 = *(v0 + 280);
        v59 = *(v0 + 288);
        v60 = sub_24ACD0090();
        (*(*(v60 - 8) + 56))(v59, 1, 1, v60);
        v61 = [v21 identifier];
        sub_24ACD03F0();

        sub_24ACD0000();
        v62 = *(v58 + v55);
        if (*(v62 + 16))
        {
          v63 = *(v0 + 328);

          v64 = sub_24AC2AC60(v63);
          if ((v65 & 1) == 0)
          {

            goto LABEL_32;
          }

LABEL_34:
          v69 = *(*(v62 + 56) + 8 * v64);

          goto LABEL_2;
        }

LABEL_32:
        v66 = *(v0 + 280);
        v62 = *(v66 + *(v0 + 392));
        if (*(v62 + 16))
        {
          v67 = *(v0 + 328);

          v64 = sub_24AC2AC60(v67);
          if (v68)
          {
            goto LABEL_34;
          }

          v66 = *(v0 + 280);
        }

        v79 = *(v0 + 400);
        if (*(*(v66 + v79) + 16))
        {
          v80 = *(v0 + 328);
          v81 = *(v66 + v79);

          sub_24AC2AC60(v80);
          LOBYTE(v80) = v82;

          if (v80)
          {
            v83 = *(v0 + 328);
            v84 = *(v0 + 280);
            v85 = sub_24AC9FA1C(&unk_2814AD870, type metadata accessor for CentralManager);
            v86 = swift_task_alloc();
            *(v0 + 472) = v86;
            *(v86 + 16) = v84;
            *(v86 + 24) = v83;
            v87 = *(MEMORY[0x277D85A40] + 4);
            v88 = swift_task_alloc();
            *(v0 + 480) = v88;
            *v88 = v0;
            v88[1] = sub_24AC8F2C8;
            v11 = sub_24ACA261C;
            v7 = (v0 + 264);
            v10 = 0x800000024ACDA2F0;
            v16 = v84;
            v8 = v85;
LABEL_44:
            v9 = 0xD000000000000055;
            v12 = v86;
            v13 = v96;

            return MEMORY[0x2822008A0](v7, v16, v8, v9, v10, v11, v12, v13);
          }

          v79 = *(v0 + 400);
          v66 = *(v0 + 280);
        }

        v89 = *(v0 + 328);
        v90 = *(v0 + 288);
        swift_beginAccess();
        v91 = *(v66 + v79);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v97 = *(v66 + v79);
        *(v66 + v79) = 0x8000000000000000;
        sub_24AC63DEC(MEMORY[0x277D84F90], v89, isUniquelyReferenced_nonNull_native);
        *(v66 + v79) = v97;
        swift_endAccess();
        v93 = sub_24AC9FA1C(&unk_2814AD870, type metadata accessor for CentralManager);
        v86 = swift_task_alloc();
        *(v0 + 448) = v86;
        *(v86 + 16) = v66;
        *(v86 + 24) = v89;
        *(v86 + 32) = v21;
        *(v86 + 40) = v90;
        *(v86 + 48) = 1;
        *(v86 + 56) = 0;
        *(v86 + 64) = 0;
        *(v86 + 72) = 1;
        v94 = *(MEMORY[0x277D85A40] + 4);
        v95 = swift_task_alloc();
        *(v0 + 456) = v95;
        *v95 = v0;
        v95[1] = sub_24AC8DF60;
        v11 = sub_24ACA2608;
        v7 = (v0 + 256);
        v10 = 0x800000024ACDA2F0;
        v16 = v66;
        v8 = v93;
        goto LABEL_44;
      }

      MEMORY[0x24C22CE30](v52);
      if (*((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v54 = *((*(v0 + 240) & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_24ACD0720();
      }

      sub_24ACD0730();
      swift_unknownObjectRelease();
    }
  }

  v71 = *(v0 + 368);
  v72 = *(v0 + 336);
  v73 = *(v0 + 344);
  v74 = *(v0 + 328);
  v75 = *(v0 + 304);
  v76 = *(v0 + 288);

  v77 = *(v0 + 8);

  return v77(v15);
}