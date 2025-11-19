uint64_t Task.timeout(_:throwingIfExpired:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v20 - v15;
  if (a2)
  {
    v17 = sub_1D1E67E7C();
    (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
    v18 = swift_allocObject();
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = a5;
    v18[5] = a6;
    v18[6] = a7;
    v18[7] = a4;

    return sub_1D1B150D0(0, 0, v16, &unk_1D1E97D60, v18);
  }

  else
  {

    return Task.timeout(_:throwingIfExpired:)(1, a4, a5, a6, a7, *&a1);
  }
}

uint64_t Task.timeout(_:throwingIfExpired:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v19 - v14;
  v16 = sub_1D1E67E7C();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  *(v17 + 32) = a3;
  *(v17 + 40) = a4;
  *(v17 + 48) = a5;
  *(v17 + 56) = a2;
  *(v17 + 64) = a6;
  *(v17 + 72) = a1;

  return sub_1D1B150D0(0, 0, v15, &unk_1D1E97D70, v17);
}

uint64_t sub_1D1B155D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *(MEMORY[0x1E69E86A8] + 4);
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = sub_1D17C4BFC;

  return MEMORY[0x1EEE6DA10](a1, a4, a5, a6, a7);
}

uint64_t sub_1D1B156A0(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D17C4BFC;

  return sub_1D1B155D4(a1, v6, v7, v8, v4, v5, v9);
}

uint64_t sub_1D1B15774(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 48) = a8;
  *(v9 + 56) = a9;
  *(v9 + 40) = a7;
  *(v9 + 88) = a6;
  *(v9 + 32) = a2;
  *(v9 + 16) = a1;
  *(v9 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1D1B157A4, 0, 0);
}

uint64_t sub_1D1B157A4()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 88);
  v3 = *(v0 + 32);
  v4 = *(v0 + 24);
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  v6 = *(v0 + 40);
  *(v5 + 16) = v6;
  *(v5 + 32) = v1;
  *(v5 + 40) = v4;
  *(v5 + 48) = v3;
  *(v5 + 56) = v2;
  v7 = sub_1D1D7D224(v6, v6);
  v8 = *(MEMORY[0x1E69E88A0] + 4);
  v9 = swift_task_alloc();
  *(v0 + 72) = v9;
  *v9 = v0;
  v9[1] = sub_1D1B158C4;
  v10 = *(v0 + 40);
  v11 = *(v0 + 16);

  return MEMORY[0x1EEE6DD58](v11, v10, v7, 0, 0, &unk_1D1E97D80, v5, v10);
}

uint64_t sub_1D1B158C4()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D1B15A00, 0, 0);
  }

  else
  {
    v4 = v3[8];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1D1B15A00()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t sub_1D1B15A64(uint64_t a1)
{
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = *(v1 + 72);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1D17C4CF0;

  return sub_1D1B15774(a1, v10, v6, v7, v9, v11, v4, v5, v8);
}

uint64_t sub_1D1B15B50(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  *(v8 + 56) = a6;
  *(v8 + 64) = a7;
  *(v8 + 48) = a5;
  *(v8 + 136) = a4;
  *(v8 + 40) = a8;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 16) = a1;
  v9 = sub_1D1E685AC();
  *(v8 + 72) = v9;
  v10 = *(v9 - 8);
  *(v8 + 80) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 88) = swift_task_alloc();
  *(v8 + 96) = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0) - 8) + 64) + 15;
  *(v8 + 104) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1B15C6C, 0, 0);
}

uint64_t sub_1D1B15C6C()
{
  v1 = *(v0 + 104);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v18 = v3;
  v4 = *(v0 + 48);
  v20 = *(v0 + 136);
  v5 = *(v0 + 40);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  v8 = sub_1D1E67E7C();
  v19 = *(*(v8 - 8) + 56);
  v19(v1, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v4;
  v9[5] = v3;
  v9[6] = v2;
  v9[7] = v7;
  v10 = v2;

  *(v0 + 112) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC64A360, &qword_1D1E73FC0);
  v11 = sub_1D1E6800C();
  sub_1D1D7D040(v1, &unk_1D1E97D90, v9, v11);
  sub_1D1B14EB4(v1);
  v19(v1, 1, 1, v8);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = v4;
  *(v12 + 40) = v18;
  *(v12 + 48) = v10;
  *(v12 + 56) = v5;
  *(v12 + 64) = v7;
  *(v12 + 72) = v20;

  sub_1D1D7D040(v1, &unk_1D1E97DA0, v12, v11);
  sub_1D1B14EB4(v1);
  v13 = *(MEMORY[0x1E69E8708] + 4);
  v14 = swift_task_alloc();
  *(v0 + 120) = v14;
  *v14 = v0;
  v14[1] = sub_1D1B15EC0;
  v15 = *(v0 + 96);
  v16 = *(v0 + 24);

  return MEMORY[0x1EEE6DAC8](v15, 0, 0, v11);
}

uint64_t sub_1D1B15EC0()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_1D1B16134;
  }

  else
  {
    v3 = sub_1D1B15FD4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D1B15FD4()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  v4 = *(v0 + 72);
  v5 = *(v0 + 80);
  v6 = *(v0 + 48);
  v7 = **(v0 + 24);
  sub_1D1E67FFC();
  (*(v5 + 16))(v2, v3, v4);
  v8 = *(v6 - 8);
  result = (*(v8 + 48))(v2, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v10 = *(v0 + 104);
    v11 = *(v0 + 88);
    v12 = *(v0 + 48);
    v13 = *(v0 + 16);
    (*(*(v0 + 80) + 8))(*(v0 + 96), *(v0 + 72));
    (*(v8 + 32))(v13, v11, v12);

    v14 = *(v0 + 8);

    return v14();
  }

  return result;
}

uint64_t sub_1D1B16134()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];

  v4 = v0[1];
  v5 = v0[16];

  return v4();
}

uint64_t sub_1D1B161AC(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = *(v2 + 48);
  v11 = *(v2 + 56);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1D17C4CF0;

  return sub_1D1B15B50(a1, a2, v9, v11, v6, v7, v8, v10);
}

uint64_t sub_1D1B1628C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *(MEMORY[0x1E69E86A8] + 4);
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = sub_1D17C4CF0;

  return MEMORY[0x1EEE6DA10](a1, a4, a5, a6, a7);
}

uint64_t objectdestroyTm_8(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();
  v4 = *(v1 + 56);

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t sub_1D1B163A4(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D17C4CF0;

  return sub_1D1B1628C(a1, v6, v7, v8, v4, v5, v9);
}

uint64_t sub_1D1B16478(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 48) = a8;
  *(v9 + 56) = a9;
  *(v9 + 112) = a6;
  *(v9 + 32) = a5;
  *(v9 + 40) = a7;
  *(v9 + 24) = a2;
  *(v9 + 16) = a1;
  v10 = sub_1D1E68A4C();
  *(v9 + 64) = v10;
  v11 = *(v10 - 8);
  *(v9 + 72) = v11;
  v12 = *(v11 + 64) + 15;
  *(v9 + 80) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1B16548, 0, 0);
}

uint64_t sub_1D1B16548()
{
  v1 = v0[10];
  v2 = v0[3];
  v3 = sub_1D1E693AC();
  v5 = v4;
  sub_1D1E6912C();
  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = sub_1D1B16624;
  v7 = v0[10];

  return sub_1D1A01910(v3, v5, 0, 0, 1);
}

uint64_t sub_1D1B16624()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v8 = *v1;
  *(*v1 + 96) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_1D1B168C8;
  }

  else
  {
    v6 = sub_1D1B16794;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1D1B16794()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 112);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  sub_1D1E67F5C();
  if (v3 == 1)
  {
    sub_1D1E67D8C();
    sub_1D19DD0B4();
    swift_allocError();
    sub_1D1E6759C();
    swift_willThrow();
    v6 = *(v0 + 80);

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v9 = *(MEMORY[0x1E69E86A8] + 4);
    v10 = swift_task_alloc();
    *(v0 + 104) = v10;
    *v10 = v0;
    v10[1] = sub_1D1B1692C;
    v11 = *(v0 + 48);
    v12 = *(v0 + 56);
    v13 = *(v0 + 32);
    v14 = *(v0 + 40);
    v15 = *(v0 + 16);

    return MEMORY[0x1EEE6DA10](v15, v13, v14, v11, v12);
  }
}

uint64_t sub_1D1B168C8()
{
  v1 = v0[12];
  v2 = v0[10];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D1B1692C()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v6 = *v0;

  v3 = *(v1 + 80);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1D1B16A44(uint64_t a1)
{
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = *(v1 + 72);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1D17C4CF0;

  return sub_1D1B16478(a1, v9, v7, v8, v10, v11, v4, v5, v6);
}

uint64_t sub_1D1B16B34@<X0>(uint64_t result@<X0>, uint64_t *a2@<X5>, uint64_t *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];

    result = swift_task_create();
    *a3 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D1B16C34()
{
  MEMORY[0x1D3893750](v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1D1B16C88(uint64_t a1, uint64_t a2)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC64AC70, &qword_1D1E97E00) + 16);
  sub_1D1E6858C();
  v4 = *(a2 + 16);
  type metadata accessor for WeakMutex.WeakWrapper();
  v5 = *(sub_1D1E66E3C() + 16);

  return sub_1D1E6858C();
}

uint64_t AsyncStreamBatchManager.__allocating_init(name:stream:continuation:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v11 = *(v5 + 48);
  v12 = *(v5 + 52);
  v13 = swift_allocObject();
  AsyncStreamBatchManager.init(name:stream:continuation:)(a1, a2, a3, a4, a5);
  return v13;
}

void AsyncStreamBatchManager.start(block:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(v6 + 80);
  v8 = sub_1D1E67F2C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v76 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v76 - v15;
  v17 = *(v6 + 144);
  swift_beginAccess();
  if (*(*(v3 + v17) + 16))
  {
    if (qword_1EE07B800 != -1)
    {
      swift_once();
    }

    v18 = sub_1D1E6709C();
    __swift_project_value_buffer(v18, qword_1EE07B808);

    v19 = sub_1D1E6707C();
    v20 = sub_1D1E6833C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v91[0] = v22;
      *v21 = 136446210;
      v23 = v3 + *(*v3 + 112);
      v24 = *v23;
      v25 = *(v23 + 1);
      v26 = v23[16];
      v27 = sub_1D1E6888C();
      v29 = v28;

      v30 = sub_1D1B1312C(v27, v29, v91);

      *(v21 + 4) = v30;
      v31 = "Requested to start %{public}s when it is already active!";
LABEL_11:
      _os_log_impl(&dword_1D16EC000, v19, v20, v31, v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x1D3893640](v22, -1, -1);
      MEMORY[0x1D3893640](v21, -1, -1);
LABEL_13:

      return;
    }

    goto LABEL_12;
  }

  v88 = v12;
  v89 = a1;
  v90 = v7;
  v32 = *v3;
  if (*(v3 + *(*v3 + 160)))
  {
    if (qword_1EE07B800 != -1)
    {
      swift_once();
    }

    v33 = sub_1D1E6709C();
    __swift_project_value_buffer(v33, qword_1EE07B808);

    v19 = sub_1D1E6707C();
    v20 = sub_1D1E6834C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v91[0] = v22;
      *v21 = 136446210;
      v34 = v3 + *(*v3 + 112);
      v35 = *v34;
      v36 = *(v34 + 1);
      v37 = v34[16];
      v38 = sub_1D1E6888C();
      v40 = v39;

      v41 = sub_1D1B1312C(v38, v40, v91);

      *(v21 + 4) = v41;
      v31 = "Calling start on %{public}s when it has finished";
      goto LABEL_11;
    }

LABEL_12:

    goto LABEL_13;
  }

  v87 = a2;
  v42 = *(v32 + 96);
  v43 = sub_1D1E67E7C();
  v44 = *(v43 - 8);
  v45 = *(v44 + 56);
  v46 = v16;
  v85 = v43;
  v82 = v44 + 56;
  v83 = v45;
  (v45)(v16, 1, 1);
  v47 = swift_allocObject();
  swift_weakInit();
  v48 = v3 + v42;
  v49 = v9;
  v50 = v88;
  v80 = *(v9 + 16);
  v81 = v9 + 16;
  v80(v88, v48, v8);
  v51 = *(v9 + 80);
  v52 = (v51 + 40) & ~v51;
  v53 = (v10 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
  v79 = v51;
  v54 = swift_allocObject();
  v54[2] = 0;
  v54[3] = 0;
  v55 = v8;
  v56 = v50;
  v54[4] = v90;
  v57 = *(v49 + 32);
  v84 = v52;
  v58 = v54 + v52;
  v59 = v55;
  v78 = v57;
  v57(v58, v50, v55);
  v86 = v53;
  *(v54 + v53) = v47;
  v60 = sub_1D1B18B90(0, 0, v46, &unk_1D1E97E40, v54);
  sub_1D1741A30(v46, &unk_1EC6442C0, &qword_1D1E741A0);
  swift_beginAccess();
  v61 = *(v3 + v17);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + v17) = v61;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v61 = sub_1D177D5EC(0, v61[2] + 1, 1, v61);
    *(v3 + v17) = v61;
  }

  v64 = v61[2];
  v63 = v61[3];
  if (v64 >= v63 >> 1)
  {
    v61 = sub_1D177D5EC((v63 > 1), v64 + 1, 1, v61);
  }

  v77 = *(*v3 + 120);
  v61[2] = v64 + 1;
  v61[v64 + 4] = v60;
  *(v3 + v17) = v61;
  swift_endAccess();
  sub_1D1E67E3C();
  v83(v46, 0, 1, v85);
  v65 = swift_allocObject();
  swift_weakInit();
  v80(v56, v3 + v77, v59);
  v66 = v86;
  v67 = (v86 + 15) & 0xFFFFFFFFFFFFFFF8;
  v68 = swift_allocObject();
  *(v68 + 2) = 0;
  *(v68 + 3) = 0;
  *(v68 + 4) = v90;
  v78(&v68[v84], v56, v59);
  *&v68[v66] = v65;
  v69 = &v68[v67];
  v70 = v87;
  *v69 = v89;
  *(v69 + 1) = v70;

  v71 = sub_1D1B18B90(0, 0, v46, &unk_1D1E97E50, v68);
  sub_1D1741A30(v46, &unk_1EC6442C0, &qword_1D1E741A0);
  swift_beginAccess();
  v72 = *(v3 + v17);
  v73 = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + v17) = v72;
  if ((v73 & 1) == 0)
  {
    v72 = sub_1D177D5EC(0, v72[2] + 1, 1, v72);
    *(v3 + v17) = v72;
  }

  v75 = v72[2];
  v74 = v72[3];
  if (v75 >= v74 >> 1)
  {
    v72 = sub_1D177D5EC((v74 > 1), v75 + 1, 1, v72);
  }

  v72[2] = v75 + 1;
  v72[v75 + 4] = v71;
  *(v3 + v17) = v72;
  swift_endAccess();
}

Swift::Void __swiftcall AsyncStreamBatchManager.finish()()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(*v0 + 104);
  v4 = *(v2 + 80);
  sub_1D1E67EEC();
  sub_1D1E67EDC();
  v5 = v1 + *(*v1 + 128);
  sub_1D1E67EDC();
  v6 = *(*v1 + 144);
  swift_beginAccess();
  v13 = v6;
  v7 = *(v1 + v6);
  v8 = *(v7 + 16);

  if (v8)
  {
    v9 = 0;
    while (v9 < *(v7 + 16))
    {
      v10 = v9 + 1;
      v11 = *(v7 + 32 + 8 * v9);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
      sub_1D1E67F5C();

      v9 = v10;
      if (v8 == v10)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:

    v12 = *(v1 + v13);
    *(v1 + v13) = MEMORY[0x1E69E7CC0];

    *(v1 + *(*v1 + 160)) = 1;
  }
}

uint64_t AsyncStreamBatchManager.originStream.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 80);
  v5 = sub_1D1E67F2C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v1 + v3, v5);
}

uint64_t AsyncStreamBatchManager.originStreamContinuation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 80);
  v5 = sub_1D1E67EEC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v1 + v3, v5);
}

uint64_t AsyncStreamBatchManager.name.getter()
{
  v1 = (v0 + *(*v0 + 112));
  result = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  return result;
}

uint64_t AsyncStreamBatchManager.init(name:stream:continuation:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v34 = a4;
  v35 = a5;
  v33 = a3;
  v31 = a1;
  v32 = a2;
  v6 = *(*v5 + 80);
  v29 = sub_1D1E67EBC();
  v7 = *(v29 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v10 = (&v28 - v9);
  v30 = sub_1D1E67EEC();
  v11 = *(v30 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v14 = &v28 - v13;
  v15 = sub_1D1E67F2C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v28 - v18;
  swift_defaultActor_initialize();
  v20 = *(*v5 + 136);
  *(v5 + v20) = sub_1D1E67C7C();
  *(v5 + *(*v5 + 144)) = MEMORY[0x1E69E7CC0];
  *(v5 + *(*v5 + 152)) = 0;
  *(v5 + *(*v5 + 160)) = 0;
  *v10 = 1;
  v21 = v29;
  (*(v7 + 104))(v10, *MEMORY[0x1E69E8640], v29);
  sub_1D1E67E8C();
  (*(v7 + 8))(v10, v21);
  v22 = v5 + *(*v5 + 112);
  v23 = v32;
  *v22 = v31;
  *(v22 + 8) = v23;
  *(v22 + 16) = v33;
  v24 = *(v16 + 32);
  v24(v5 + *(*v5 + 96), v34, v15);
  v25 = *(v11 + 32);
  v26 = v30;
  v25(v5 + *(*v5 + 104), v35, v30);
  v24(v5 + *(*v5 + 120), v19, v15);
  v25(v5 + *(*v5 + 128), v14, v26);
  return v5;
}

uint64_t sub_1D1B17BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v7 = *(a6 - 8);
  v6[8] = v7;
  v8 = *(v7 + 64) + 15;
  v6[9] = swift_task_alloc();
  v9 = *(*(sub_1D1E685AC() - 8) + 64) + 15;
  v6[10] = swift_task_alloc();
  v10 = sub_1D1E67F1C();
  v6[11] = v10;
  v11 = *(v10 - 8);
  v6[12] = v11;
  v12 = *(v11 + 64) + 15;
  v6[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1B17D48, 0, 0);
}

uint64_t sub_1D1B17D48()
{
  v1 = v0[13];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
  sub_1D1E67F2C();
  sub_1D1E67EFC();
  swift_beginAccess();
  v5 = *(MEMORY[0x1E69E8678] + 4);
  v6 = swift_task_alloc();
  v0[14] = v6;
  *v6 = v0;
  v6[1] = sub_1D1B17E24;
  v7 = v0[13];
  v8 = v0[10];
  v9 = v0[11];

  return MEMORY[0x1EEE6D9C8](v8, 0, 0, v9);
}

uint64_t sub_1D1B17E24()
{
  v1 = *(*v0 + 112);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D1B17F20, 0, 0);
}

uint64_t sub_1D1B17F20()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  if ((*(v3 + 48))(v1, 1, v2) != 1)
  {
    (*(v3 + 32))(v0[9], v1, v2);
    if ((sub_1D1E67F7C() & 1) == 0)
    {
      v4 = v0[6];
      Strong = swift_weakLoadStrong();
      v0[15] = Strong;
      if (Strong)
      {

        return MEMORY[0x1EEE6DFA0](sub_1D1B1807C, Strong, 0);
      }
    }

    (*(v0[8] + 8))(v0[9], v0[7]);
    v6 = v0[10];
  }

  v7 = v0[9];
  (*(v0[12] + 8))(v0[13], v0[11]);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1D1B1807C()
{
  v1 = *(v0 + 120);
  sub_1D1B18248(*(v0 + 72));

  return MEMORY[0x1EEE6DFA0](sub_1D1B180E8, 0, 0);
}

uint64_t sub_1D1B180E8()
{
  v1 = v0[15];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[7];
  v5 = sub_1D1E67F7C();

  (*(v3 + 8))(v2, v4);
  if (v5)
  {
    v6 = v0[10];
    v7 = v0[9];
    (*(v0[12] + 8))(v0[13], v0[11]);

    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = *(MEMORY[0x1E69E8678] + 4);
    v11 = swift_task_alloc();
    v0[14] = v11;
    *v11 = v0;
    v11[1] = sub_1D1B17E24;
    v12 = v0[13];
    v13 = v0[10];
    v14 = v0[11];

    return MEMORY[0x1EEE6D9C8](v13, 0, 0, v14);
  }
}

void sub_1D1B18248(uint64_t a1)
{
  v2 = v1;
  v4 = *(*v2 + 80);
  v5 = sub_1D1E67E9C();
  v79 = *(v5 - 8);
  v6 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v78 = &v73 - v7;
  v8 = sub_1D1E66FDC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v73 - v15;
  v17 = *(*(v4 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v14);
  v20 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v73 - v21;
  v24 = *(v23 + 16);
  v81 = v23 + 16;
  v82 = a1;
  v80 = v24;
  v24(&v73 - v21, a1, v4);
  v25 = *(*v2 + 136);
  swift_beginAccess();
  sub_1D1E67D1C();
  v77 = v22;
  sub_1D1E67CDC();
  swift_endAccess();
  if (qword_1EE07B280 != -1)
  {
    swift_once();
  }

  if (byte_1EE07B288 == 1)
  {
    v80(v20, v82, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64ACF8, &qword_1D1E97F20);
    if (swift_dynamicCast())
    {
      __swift_project_boxed_opaque_existential_1(&v83, *(&v84 + 1));
      v76 = sub_1D1E68FAC();
      v27 = v26;
      __swift_destroy_boxed_opaque_existential_1(&v83);
    }

    else
    {
      v85 = 0;
      v83 = 0u;
      v84 = 0u;
      sub_1D1741A30(&v83, &qword_1EC64AD00, &unk_1D1EA26F0);
      v27 = 0xEF29656C62616269;
      v76 = 0x72637365646E6928;
    }

    if (qword_1EE07AE48 != -1)
    {
      swift_once();
    }

    v49 = sub_1D1E6701C();
    __swift_project_value_buffer(v49, qword_1EE07AE50);

    sub_1D1E66FCC();
    v50 = sub_1D1E66FFC();
    v51 = sub_1D1E683FC();

    if (sub_1D1E6855C())
    {
      v52 = swift_slowAlloc();
      v74 = v8;
      v53 = v52;
      v54 = swift_slowAlloc();
      v75 = v5;
      v55 = v54;
      *&v83 = v54;
      *v53 = 136315138;
      *(v53 + 4) = sub_1D1B1312C(v76, v27, &v83);
      v56 = sub_1D1E66FBC();
      _os_signpost_emit_with_name_impl(&dword_1D16EC000, v50, v51, v56, "AsyncStreamBatchManager", "added %s", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v55);
      v57 = v55;
      v5 = v75;
      MEMORY[0x1D3893640](v57, -1, -1);
      MEMORY[0x1D3893640](v53, -1, -1);

      (*(v9 + 8))(v16, v74);
    }

    else
    {

      (*(v9 + 8))(v16, v8);
    }

    if (qword_1EE07B800 != -1)
    {
      swift_once();
    }

    v58 = sub_1D1E6709C();
    __swift_project_value_buffer(v58, qword_1EE07B808);

    v36 = sub_1D1E6707C();
    v59 = sub_1D1E6831C();

    if (os_log_type_enabled(v36, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      *&v83 = v61;
      *v60 = 136315394;
      v62 = (v2 + *(*v2 + 112));
      v63 = *v62;
      v64 = v62[1];
      v65 = *(v62 + 16);
      v66 = sub_1D1E6888C();
      v68 = v67;

      v69 = sub_1D1B1312C(v66, v68, &v83);

      *(v60 + 4) = v69;
      *(v60 + 12) = 2080;
      v70 = sub_1D1B1312C(v76, v27, &v83);

      *(v60 + 14) = v70;
      _os_log_impl(&dword_1D16EC000, v36, v59, "%s added %s", v60, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v61, -1, -1);
      v48 = v60;
      goto LABEL_24;
    }
  }

  else
  {
    if (qword_1EE07AE48 != -1)
    {
      swift_once();
    }

    v28 = sub_1D1E6701C();
    __swift_project_value_buffer(v28, qword_1EE07AE50);
    sub_1D1E66FCC();
    v29 = sub_1D1E66FFC();
    v30 = sub_1D1E683FC();
    if (sub_1D1E6855C())
    {
      v31 = v8;
      v32 = swift_slowAlloc();
      *v32 = 0;
      v33 = sub_1D1E66FBC();
      _os_signpost_emit_with_name_impl(&dword_1D16EC000, v29, v30, v33, "AsyncStreamBatchManager", "added element", v32, 2u);
      v34 = v32;
      v8 = v31;
      MEMORY[0x1D3893640](v34, -1, -1);
    }

    (*(v9 + 8))(v13, v8);
    if (qword_1EE07B800 != -1)
    {
      swift_once();
    }

    v35 = sub_1D1E6709C();
    __swift_project_value_buffer(v35, qword_1EE07B808);

    v36 = sub_1D1E6707C();
    v37 = sub_1D1E6831C();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *&v83 = v39;
      *v38 = 136446210;
      v40 = (v2 + *(*v2 + 112));
      v41 = *v40;
      v42 = v40[1];
      v43 = *(v40 + 16);
      v44 = sub_1D1E6888C();
      v46 = v45;

      v47 = sub_1D1B1312C(v44, v46, &v83);

      *(v38 + 4) = v47;
      _os_log_impl(&dword_1D16EC000, v36, v37, "%{public}s added element", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v39);
      MEMORY[0x1D3893640](v39, -1, -1);
      v48 = v38;
LABEL_24:
      MEMORY[0x1D3893640](v48, -1, -1);
      goto LABEL_27;
    }
  }

LABEL_27:

  if ((*(v2 + *(*v2 + 152)) & 1) == 0)
  {
    v71 = *(*v2 + 128);
    v80(v77, v82, v4);
    sub_1D1E67EEC();
    v72 = v78;
    sub_1D1E67ECC();
    (*(v79 + 8))(v72, v5);
  }
}

uint64_t sub_1D1B18B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v24 - v10;
  sub_1D1A08410(a3, v24 - v10);
  v12 = sub_1D1E67E7C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1D1741A30(v11, &unk_1EC6442C0, &qword_1D1E741A0);
  }

  else
  {
    sub_1D1E67E6C();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1D1E67D4C();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1D1E678CC() + 32;

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

  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1D1B18DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[6] = a4;
  v9 = sub_1D1E6702C();
  v8[11] = v9;
  v10 = *(v9 - 8);
  v8[12] = v10;
  v11 = *(v10 + 64) + 15;
  v8[13] = swift_task_alloc();
  v12 = sub_1D1E66FDC();
  v8[14] = v12;
  v13 = *(v12 - 8);
  v8[15] = v13;
  v14 = *(v13 + 64) + 15;
  v8[16] = swift_task_alloc();
  v8[17] = swift_task_alloc();
  v8[18] = swift_task_alloc();
  v15 = sub_1D1E685AC();
  v8[19] = v15;
  v16 = *(v15 - 8);
  v8[20] = v16;
  v17 = *(v16 + 64) + 15;
  v8[21] = swift_task_alloc();
  v18 = sub_1D1E67F1C();
  v8[22] = v18;
  v19 = *(v18 - 8);
  v8[23] = v19;
  v20 = *(v19 + 64) + 15;
  v8[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1B18FEC, 0, 0);
}

uint64_t sub_1D1B18FEC()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 80);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  sub_1D1E67F2C();
  sub_1D1E67EFC();
  swift_beginAccess();
  *(v0 + 264) = *MEMORY[0x1E69E93E8];
  v5 = *(MEMORY[0x1E69E8678] + 4);
  v6 = swift_task_alloc();
  *(v0 + 200) = v6;
  *v6 = v0;
  v6[1] = sub_1D1B190D8;
  v7 = *(v0 + 192);
  v8 = *(v0 + 168);
  v9 = *(v0 + 176);

  return MEMORY[0x1EEE6D9C8](v8, 0, 0, v9);
}

uint64_t sub_1D1B190D8()
{
  v1 = *(*v0 + 200);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D1B191D4, 0, 0);
}

uint64_t sub_1D1B191D4()
{
  v1 = v0 + 21;
  if ((*(*(v0[10] - 8) + 48))(v0[21], 1) == 1)
  {
    v2 = (v0[23] + 8);
    v1 = v0 + 24;
    v3 = v0 + 22;
LABEL_9:
    v6 = *v1;
    v7 = v0[24];
    v8 = v0[21];
    v10 = v0[17];
    v9 = v0[18];
    v11 = v0[16];
    v12 = v0[13];
    (*v2)(v6, *v3);

    v13 = v0[1];

    return v13();
  }

  if ((sub_1D1E67F7C() & 1) != 0 || (v4 = v0[7], Strong = swift_weakLoadStrong(), (v0[26] = Strong) == 0))
  {
    (*(v0[23] + 8))(v0[24], v0[22]);
    v3 = v0 + 19;
    v2 = (v0[20] + 8);
    goto LABEL_9;
  }

  return MEMORY[0x1EEE6DFA0](sub_1D1B19370, Strong, 0);
}

uint64_t sub_1D1B19370()
{
  v1 = *(v0 + 208);
  *(v0 + 216) = sub_1D1B19DD0();

  return MEMORY[0x1EEE6DFA0](sub_1D1B193DC, 0, 0);
}

uint64_t sub_1D1B193DC()
{
  v65 = v0;
  v0[5] = v0[27];
  v1 = v0[10];
  sub_1D1E67D1C();
  swift_getWitnessTable();
  if (sub_1D1E682AC())
  {
    v3 = v0[26];
    v2 = v0[27];

    (*(v0[20] + 8))(v0[21], v0[19]);
    v4 = *(MEMORY[0x1E69E8678] + 4);
    v5 = swift_task_alloc();
    v0[25] = v5;
    *v5 = v0;
    v5[1] = sub_1D1B190D8;
    v6 = v0[24];
    v7 = v0[21];
    v8 = v0[22];

    return MEMORY[0x1EEE6D9C8](v7, 0, 0, v8);
  }

  if (qword_1EE07B800 != -1)
  {
    swift_once();
  }

  v9 = v0[26];
  v10 = v0[27];
  v11 = sub_1D1E6709C();
  __swift_project_value_buffer(v11, qword_1EE07B808);
  swift_bridgeObjectRetain_n();

  v12 = sub_1D1E6707C();
  v13 = sub_1D1E6835C();
  v14 = os_log_type_enabled(v12, v13);
  v16 = v0[26];
  v15 = v0[27];
  if (v14)
  {
    v17 = v0[10];
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v64 = v19;
    *v18 = 136446466;
    v20 = (v16 + *(*v16 + 112));
    v21 = *v20;
    v22 = v20[1];
    v23 = *(v20 + 16);
    v24 = sub_1D1E6888C();
    v26 = v25;

    v27 = sub_1D1B1312C(v24, v26, &v64);

    *(v18 + 4) = v27;
    *(v18 + 12) = 2050;
    v28 = sub_1D1E67CBC();

    *(v18 + 14) = v28;

    _os_log_impl(&dword_1D16EC000, v12, v13, "%{public}s processing %{public}ld elements", v18, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x1D3893640](v19, -1, -1);
    MEMORY[0x1D3893640](v18, -1, -1);

    if ((sub_1D1E67F7C() & 1) == 0)
    {
LABEL_9:
      if (qword_1EE07AE48 != -1)
      {
        swift_once();
      }

      v29 = v0[27];
      v30 = v0[18];
      v31 = sub_1D1E6701C();
      v0[28] = __swift_project_value_buffer(v31, qword_1EE07AE50);

      sub_1D1E66FCC();
      v32 = sub_1D1E66FFC();
      v33 = sub_1D1E683EC();
      v34 = sub_1D1E6855C();
      v35 = v0[27];
      if (v34)
      {
        v36 = v0[18];
        v37 = v0[10];
        v38 = swift_slowAlloc();
        *v38 = 134349056;
        *(v38 + 4) = sub_1D1E67CBC();

        v39 = sub_1D1E66FBC();
        _os_signpost_emit_with_name_impl(&dword_1D16EC000, v32, v33, v39, "AsyncStreamBatchManager", "Processing %{public}ld elements", v38, 0xCu);
        MEMORY[0x1D3893640](v38, -1, -1);
      }

      else
      {
        v49 = v0[27];
      }

      v50 = v0[18];
      v51 = v0[14];
      v52 = v0[15];
      v53 = v0[8];
      (*(v52 + 16))(v0[17], v50, v51);
      v54 = sub_1D1E6705C();
      v55 = *(v54 + 48);
      v56 = *(v54 + 52);
      swift_allocObject();
      v0[29] = sub_1D1E6704C();
      v57 = *(v52 + 8);
      v0[30] = v57;
      v0[31] = (v52 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v57(v50, v51);
      v63 = (v53 + *v53);
      v58 = v53[1];
      v59 = swift_task_alloc();
      v0[32] = v59;
      *v59 = v0;
      v59[1] = sub_1D1B199F8;
      v60 = v0[27];
      v61 = v0[9];

      return v63(v60);
    }
  }

  else
  {
    v40 = v0[27];
    swift_bridgeObjectRelease_n();

    if ((sub_1D1E67F7C() & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v41 = v0[26];
  v42 = v0[27];
  (*(v0[23] + 8))(v0[24], v0[22]);

  v43 = v0[24];
  v44 = v0[18];
  v46 = v0[16];
  v45 = v0[17];
  v47 = v0[13];
  (*(v0[20] + 8))(v0[21], v0[19]);

  v48 = v0[1];

  return v48();
}

uint64_t sub_1D1B199F8()
{
  v1 = *(*v0 + 256);
  v2 = *(*v0 + 216);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D1B19B10, 0, 0);
}

uint64_t sub_1D1B19B10()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 128);
  v4 = sub_1D1E66FFC();
  sub_1D1E6703C();
  v5 = sub_1D1E683DC();
  if (sub_1D1E6855C())
  {
    v6 = *(v0 + 232);
    v7 = *(v0 + 264);
    v9 = *(v0 + 96);
    v8 = *(v0 + 104);
    v10 = *(v0 + 88);

    sub_1D1E6706C();

    if ((*(v9 + 88))(v8, v10) == v7)
    {
      v11 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
      v11 = "";
    }

    v12 = *(v0 + 128);
    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = sub_1D1E66FBC();
    _os_signpost_emit_with_name_impl(&dword_1D16EC000, v4, v5, v14, "AsyncStreamBatchManager", v11, v13, 2u);
    MEMORY[0x1D3893640](v13, -1, -1);
  }

  v16 = *(v0 + 240);
  v15 = *(v0 + 248);
  v17 = *(v0 + 232);
  v18 = *(v0 + 208);
  v19 = *(v0 + 128);
  v20 = *(v0 + 112);

  v16(v19, v20);
  v21 = sub_1D1E67F7C();

  if (v21)
  {
    (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));
    v22 = *(v0 + 192);
    v23 = *(v0 + 144);
    v25 = *(v0 + 128);
    v24 = *(v0 + 136);
    v26 = *(v0 + 104);
    (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));

    v27 = *(v0 + 8);

    return v27();
  }

  else
  {
    (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
    v29 = *(MEMORY[0x1E69E8678] + 4);
    v30 = swift_task_alloc();
    *(v0 + 200) = v30;
    *v30 = v0;
    v30[1] = sub_1D1B190D8;
    v31 = *(v0 + 192);
    v32 = *(v0 + 168);
    v33 = *(v0 + 176);

    return MEMORY[0x1EEE6D9C8](v32, 0, 0, v33);
  }
}

uint64_t sub_1D1B19DD0()
{
  v1 = *v0;
  v2 = *(*v0 + 136);
  swift_beginAccess();
  v3 = *(v0 + v2);
  swift_beginAccess();
  v4 = *(v1 + 80);
  sub_1D1E67D1C();

  sub_1D1E67D0C();
  swift_endAccess();
  return v3;
}

Swift::Void __swiftcall AsyncStreamBatchManager.pauseOutput()()
{
  v1 = v0;
  v2 = *(*v0 + 152);
  if ((*(v0 + v2) & 1) == 0)
  {
    if (qword_1EE07B800 != -1)
    {
      swift_once();
    }

    v3 = sub_1D1E6709C();
    __swift_project_value_buffer(v3, qword_1EE07B808);

    v4 = sub_1D1E6707C();
    v5 = sub_1D1E6835C();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v16 = v7;
      *v6 = 136446210;
      v8 = (v1 + *(*v1 + 112));
      v9 = *v8;
      v10 = v8[1];
      v11 = *(v8 + 16);
      v12 = sub_1D1E6888C();
      v14 = v13;

      v15 = sub_1D1B1312C(v12, v14, &v16);

      *(v6 + 4) = v15;
      _os_log_impl(&dword_1D16EC000, v4, v5, "%{public}s beginning hold", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      MEMORY[0x1D3893640](v7, -1, -1);
      MEMORY[0x1D3893640](v6, -1, -1);
    }

    else
    {
    }
  }

  *(v1 + v2) = 1;
}

Swift::Void __swiftcall AsyncStreamBatchManager.resumeOutput()()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(v2 + 80);
  v4 = sub_1D1E67E9C();
  v54 = *(v4 - 8);
  v55 = v4;
  v5 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v53 = &v50 - v6;
  v7 = sub_1D1E685AC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v50 - v11;
  v13 = *(v3 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v10);
  v52 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v50 - v17;
  *(v1 + *(v2 + 152)) = 0;
  v19 = *(*v1 + 136);
  swift_beginAccess();
  v51 = v19;
  v56 = *(v1 + v19);
  sub_1D1E67D1C();

  swift_getWitnessTable();
  sub_1D1E676FC();
  if ((*(v13 + 48))(v12, 1, v3) == 1)
  {
    (*(v8 + 8))(v12, v7);

    if (qword_1EE07B800 != -1)
    {
      swift_once();
    }

    v20 = sub_1D1E6709C();
    __swift_project_value_buffer(v20, qword_1EE07B808);

    v21 = sub_1D1E6707C();
    v22 = sub_1D1E6835C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v56 = v24;
      *v23 = 136446210;
      v25 = v1 + *(*v1 + 112);
      v26 = *v25;
      v27 = *(v25 + 1);
      v28 = v25[16];
      v29 = sub_1D1E6888C();
      v31 = v30;

      v32 = sub_1D1B1312C(v29, v31, &v56);

      *(v23 + 4) = v32;
      _os_log_impl(&dword_1D16EC000, v21, v22, "%{public}s ended hold with no buffered elements", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x1D3893640](v24, -1, -1);
      MEMORY[0x1D3893640](v23, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v50 = v13;
    (*(v13 + 32))(v18, v12, v3);

    if (qword_1EE07B800 != -1)
    {
      swift_once();
    }

    v33 = sub_1D1E6709C();
    __swift_project_value_buffer(v33, qword_1EE07B808);
    swift_retain_n();
    v34 = sub_1D1E6707C();
    v35 = sub_1D1E6835C();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v56 = v37;
      *v36 = 136446466;
      v38 = v1 + *(*v1 + 112);
      v39 = *v38;
      v40 = *(v38 + 1);
      v41 = v38[16];
      v42 = sub_1D1E6888C();
      v44 = sub_1D1B1312C(v42, v43, &v56);

      *(v36 + 4) = v44;
      *(v36 + 12) = 2050;
      v45 = *(v1 + v51);

      v46 = sub_1D1E67CBC();

      *(v36 + 14) = v46;

      _os_log_impl(&dword_1D16EC000, v34, v35, "%{public}s ended hold with %{public}ld buffered elements", v36, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x1D3893640](v37, -1, -1);
      MEMORY[0x1D3893640](v36, -1, -1);
    }

    else
    {
    }

    v47 = *(*v1 + 128);
    v48 = v50;
    (*(v50 + 16))(v52, v18, v3);
    sub_1D1E67EEC();
    v49 = v53;
    sub_1D1E67ECC();
    (*(v54 + 8))(v49, v55);
    (*(v48 + 8))(v18, v3);
  }
}

uint64_t AsyncStreamBatchManager.deinit()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 80);
  v3 = sub_1D1E67F2C();
  v4 = *(*(v3 - 8) + 8);
  v4(v0 + v1, v3);
  v5 = *(*v0 + 104);
  v6 = sub_1D1E67EEC();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v5, v6);
  v4(v0 + *(*v0 + 120), v3);
  v7(v0 + *(*v0 + 128), v6);
  v8 = *(v0 + *(*v0 + 136));

  v9 = *(v0 + *(*v0 + 144));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t AsyncStreamBatchManager.__deallocating_deinit()
{
  AsyncStreamBatchManager.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1D1B1A864(uint64_t a1)
{
  v4 = v1[4];
  v5 = *(sub_1D1E67F2C() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D17C4CF0;

  return sub_1D1B17BF8(a1, v7, v8, v1 + v6, v9, v4);
}

uint64_t sub_1D1B1A998(uint64_t a1)
{
  v3 = v2;
  v5 = v1[4];
  v6 = *(sub_1D1E67F2C() - 8);
  v7 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v1 + v8);
  v11 = v1[2];
  v12 = v1[3];
  v13 = *(v1 + v9);
  v14 = *(v1 + v9 + 8);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_1D17C4BFC;

  return sub_1D1B18DEC(a1, v11, v12, v1 + v7, v10, v13, v14, v5);
}

uint64_t sub_1D1B1AAF0(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = sub_1D1E67F2C();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = sub_1D1E67EEC();
    if (v5 <= 0x3F)
    {
      v6 = *(result - 8) + 64;
      return swift_initClassMetadata2();
    }
  }

  return result;
}

void sub_1D1B1AC44(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v90 = a3;
  v91 = a5;
  v92 = a2;
  v93 = a4;
  v108 = sub_1D1E66A7C();
  v6 = *(*(v108 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v108);
  v9 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v85 = &v84 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v89 = &v84 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v104 = &v84 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v106 = &v84 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v103 = &v84 - v19;
  v20 = *(a1 + 16);
  if (!v20)
  {
    v86 = MEMORY[0x1E69E7CC0];
    return;
  }

  v21 = 0;
  v96 = a1 + 32;
  v105 = v18 + 16;
  v107 = (v18 + 8);
  v86 = MEMORY[0x1E69E7CC0];
  v87 = v18;
  v88 = v9;
  v95 = v20;
  while (v21 < v20)
  {
    v22 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      goto LABEL_45;
    }

    v23 = v96 + 24 * v21;
    v25 = *v23;
    v24 = *(v23 + 8);
    LODWORD(v26) = *(v23 + 16);
    v100 = v21 + 1;
    v101 = v21 + 1;
    v98 = v25;
    v99 = v24;
    v97 = v26;
    if (v26 == 2)
    {
      v52 = *v93;
      sub_1D1A28388(v25, v24, 2u);
      v53 = v24;

      v94 = v53;
      v54 = [v53 uniqueIdentifier];
      sub_1D1E66A5C();

      v102 = v52;
      if (*(v52 + 16))
      {
        v55 = v102;
        v56 = *(v102 + 40);
        sub_1D174A5FC(qword_1EE07DD78);
        v57 = sub_1D1E676DC();
        v58 = v55 + 56;
        v59 = -1 << *(v55 + 32);
        v60 = v57 & ~v59;
        if ((*(v55 + 56 + ((v60 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v60))
        {
          v61 = ~v59;
          v62 = *(v87 + 72);
          v63 = *(v87 + 16);
          while (1)
          {
            v64 = v106;
            v65 = v108;
            v63(v106, *(v102 + 48) + v62 * v60, v108);
            sub_1D174A5FC(&qword_1EE07D170);
            v66 = sub_1D1E6775C();
            v42 = *v107;
            (*v107)(v64, v65);
            if (v66)
            {
              break;
            }

            v60 = (v60 + 1) & v61;
            if (((*(v58 + ((v60 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v60) & 1) == 0)
            {
              goto LABEL_21;
            }
          }

          v75 = v104;
LABEL_30:
          v42(v75, v108);

          goto LABEL_31;
        }
      }

LABEL_21:

      v43 = *v107;
      (*v107)(v104, v108);
      v67 = v94;
      v68 = [v94 uniqueIdentifier];
      v69 = v88;
      sub_1D1E66A5C();

      v70 = *v91;
      if (!*(*v91 + 16) || (v71 = sub_1D1742188(v69), (v72 & 1) == 0))
      {

        v74 = v69;
        goto LABEL_27;
      }

      v25 = *(*(v70 + 56) + 8 * v71);

      v43(v69, v108);
      v20 = v95;
      v22 = v100;
      v73 = v97;
      if (!v25[2])
      {

        v51 = v73;
        v21 = v101;
        goto LABEL_32;
      }

      v80 = [v67 uniqueIdentifier];
      v81 = v85;
      sub_1D1E66A5C();

      v26 = v106;
      sub_1D1762CB8(v106, v81);
      v43(v26, v108);
      LOBYTE(v26) = 2;
      v24 = v99;
      sub_1D1A283E8(v98, v99, 2u);
      v21 = v101;
LABEL_35:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v86 = sub_1D177F110(0, *(v86 + 2) + 1, 1, v86);
      }

      v77 = *(v86 + 2);
      v76 = *(v86 + 3);
      if (v77 >= v76 >> 1)
      {
        v86 = sub_1D177F110((v76 > 1), v77 + 1, 1, v86);
      }

      v78 = v86;
      *(v86 + 2) = v77 + 1;
      v79 = &v78[24 * v77];
      *(v79 + 4) = v25;
      *(v79 + 5) = v24;
      v79[48] = v26;
      if (v22 == v20)
      {
        return;
      }
    }

    else
    {
      if (v26 != 1)
      {
        ++v21;
        sub_1D1A28388(v25, v24, v26);
        goto LABEL_35;
      }

      v27 = *v92;
      sub_1D1A28388(v25, v24, 1u);
      v28 = v24;

      v94 = v28;
      v29 = [v28 uniqueIdentifier];
      sub_1D1E66A5C();

      v102 = v27;
      if (*(v27 + 16))
      {
        v30 = v102;
        v31 = *(v102 + 40);
        sub_1D174A5FC(qword_1EE07DD78);
        v32 = sub_1D1E676DC();
        v33 = v30 + 56;
        v34 = -1 << *(v30 + 32);
        v35 = v32 & ~v34;
        if ((*(v30 + 56 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35))
        {
          v36 = ~v34;
          v37 = *(v87 + 72);
          v38 = *(v87 + 16);
          while (1)
          {
            v39 = v106;
            v40 = v108;
            v38(v106, *(v102 + 48) + v37 * v35, v108);
            sub_1D174A5FC(&qword_1EE07D170);
            v41 = sub_1D1E6775C();
            v42 = *v107;
            (*v107)(v39, v40);
            if (v41)
            {
              break;
            }

            v35 = (v35 + 1) & v36;
            if (((*(v33 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
            {
              goto LABEL_12;
            }
          }

          v75 = v103;
          goto LABEL_30;
        }
      }

LABEL_12:

      v43 = *v107;
      (*v107)(v103, v108);
      v44 = v94;
      v45 = [v94 uniqueIdentifier];
      v46 = v89;
      sub_1D1E66A5C();

      v47 = *v90;
      if (!*(*v90 + 16) || (v48 = sub_1D1742188(v46), (v49 & 1) == 0))
      {

        v74 = v46;
LABEL_27:
        v43(v74, v108);
LABEL_31:
        v20 = v95;
        v22 = v100;
        v21 = v101;
        v51 = v97;
        goto LABEL_32;
      }

      v25 = *(*(v47 + 56) + 8 * v48);

      v43(v46, v108);
      v20 = v95;
      v22 = v100;
      v21 = v101;
      v50 = v97;
      if (v25[2])
      {
        v82 = [v44 uniqueIdentifier];
        v83 = v85;
        sub_1D1E66A5C();

        v26 = v106;
        sub_1D1762CB8(v106, v83);
        v43(v26, v108);
        LOBYTE(v26) = 1;
        v24 = v99;
        sub_1D1A283E8(v98, v99, 1u);
        goto LABEL_35;
      }

      v51 = v50;
LABEL_32:
      sub_1D1A283E8(v98, v99, v51);
      if (v22 == v20)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
}

void sub_1D1B1B4FC(uint64_t a1, _BYTE *a2, uint64_t *a3, _BYTE *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v101 = a7;
  v107 = a6;
  v104 = a5;
  v103 = a4;
  v105 = a3;
  v106 = a2;
  v8 = sub_1D1E66A7C();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v102 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v100 = &v100 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v100 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v120 = &v100 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v122 = &v100 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v118 = &v100 - v22;
  v23 = *(a1 + 16);
  if (!v23)
  {
    return;
  }

  v24 = 0;
  v112 = a1 + 32;
  v121 = v21 + 16;
  v25 = MEMORY[0x1E69E7CC0];
  v108 = v21;
  v109 = v23;
  v123 = (v21 + 8);
  v110 = v16;
  do
  {
    v111 = v25;
    while (1)
    {
      if (v24 >= v23)
      {
        __break(1u);
LABEL_49:
        __break(1u);
        return;
      }

      v28 = (v24 + 1);
      if (__OFADD__(v24, 1))
      {
        goto LABEL_49;
      }

      v29 = v112 + 24 * v24;
      v31 = *v29;
      v30 = *(v29 + 8);
      v24 = (v24 + 1);
      v32 = *(v29 + 16);
      if (v32 > 1)
      {
        break;
      }

      v115 = v28;
      v116 = v30;
      v113 = v28;
      v114 = v32;
      v117 = v31;
      if (v32)
      {
        v45 = *v104;
        sub_1D1A28388(v31, v30, 1u);

        v46 = [v30 uniqueIdentifier];
        sub_1D1E66A5C();

        v119 = v45;
        if (!*(v45 + 16) || (v47 = v119, v48 = *(v119 + 40), sub_1D174A5FC(qword_1EE07DD78), v49 = sub_1D1E676DC(), v50 = v47 + 56, v51 = -1 << *(v47 + 32), v52 = v49 & ~v51, ((*(v50 + ((v52 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v52) & 1) == 0))
        {
LABEL_28:

          v62 = *v123;
          (*v123)(v120, v8);
          v63 = v116;
          v64 = [v116 uniqueIdentifier];
          v65 = v102;
          sub_1D1E66A5C();

          v66 = *v107;
          if (*(*v107 + 16))
          {
            v67 = sub_1D1742188(v65);
            v23 = v109;
            if (v68)
            {
              v69 = *(*(v66 + 56) + 8 * v67);
            }

            else
            {
              v69 = MEMORY[0x1E69E7CD0];
            }
          }

          else
          {
            v69 = MEMORY[0x1E69E7CD0];
            v23 = v109;
          }

          v24 = v113;
          v62(v65, v8);
          v125 = v69;
          sub_1D19309C4(v117);
          v70 = [v63 uniqueIdentifier];
          v71 = v122;
          sub_1D1E66A5C();

          v72 = v125;
          v73 = v107;
          v74 = *v107;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v124 = *v73;
          *v73 = 0x8000000000000000;
          sub_1D175631C(v72, v71, isUniquelyReferenced_nonNull_native);
          v62(v71, v8);
          *v73 = v124;
          v16 = v110;
          v25 = v111;
          goto LABEL_34;
        }

        v53 = ~v51;
        v54 = *(v108 + 72);
        v55 = *(v108 + 16);
        while (1)
        {
          v56 = v8;
          v57 = v122;
          v55(v122, *(v119 + 48) + v54 * v52, v56);
          sub_1D174A5FC(&qword_1EE07D170);
          v58 = sub_1D1E6775C();
          v59 = *v123;
          v60 = v57;
          v8 = v56;
          (*v123)(v60, v56);
          if (v58)
          {
            break;
          }

          v52 = (v52 + 1) & v53;
          if (((*(v50 + ((v52 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v52) & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        v59(v120, v56);
        v61 = v117;

        v27 = v61;
      }

      else
      {
        v33 = *v105;
        sub_1D1A28388(v31, v30, 0);

        v34 = [v31 uniqueIdentifier];
        sub_1D1E66A5C();

        if (*(v33 + 16) && (v35 = *(v33 + 40), sub_1D174A5FC(qword_1EE07DD78), v36 = sub_1D1E676DC(), v37 = -1 << *(v33 + 32), v38 = v36 & ~v37, v119 = v33 + 56, ((*(v33 + 56 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) != 0))
        {
          v39 = ~v37;
          v40 = *(v108 + 72);
          v41 = *(v108 + 16);
          while (1)
          {
            v42 = v122;
            v41(v122, *(v33 + 48) + v40 * v38, v8);
            sub_1D174A5FC(&qword_1EE07D170);
            v43 = sub_1D1E6775C();
            v44 = *v123;
            (*v123)(v42, v8);
            if (v43)
            {
              break;
            }

            v38 = (v38 + 1) & v39;
            if (((*(v119 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
            {
              goto LABEL_4;
            }
          }

          v44(v118, v8);
          v27 = v117;
        }

        else
        {
LABEL_4:

          v26 = *v123;
          (*v123)(v118, v8);
          v27 = v117;
          if ((*v103 & 1) == 0)
          {
            v91 = [v117 uniqueIdentifier];
            v92 = v100;
            sub_1D1E66A5C();

            v93 = v122;
            sub_1D1762CB8(v122, v92);
            v26(v93, v8);
            v23 = v109;
            v16 = v110;
            v24 = v113;
            v25 = v111;
            goto LABEL_34;
          }
        }
      }

      sub_1D1A283E8(v27, v116, v114);
      v23 = v109;
      v16 = v110;
      v24 = v113;
      v25 = v111;
      v28 = v115;
LABEL_6:
      if (v28 == v23)
      {
        return;
      }
    }

    if (v32 == 4)
    {
      if ((*v106 & 1) == 0)
      {
        v116 = *(v29 + 8);
        v117 = v31;
        v114 = 4;
        v115 = v28;
        *v106 = 1;
        goto LABEL_34;
      }

      goto LABEL_6;
    }

    v116 = *(v29 + 8);
    v117 = v31;
    v115 = v28;
    v114 = v32;
    if (v32 == 2)
    {
      v82 = v116;
      v83 = v117;
      sub_1D1A28388(v117, v116, 2u);

      v84 = [v82 uniqueIdentifier];
      sub_1D1E66A5C();

      v85 = *v101;
      v86 = *(*v101 + 16);
      v119 = v123 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      if (v86 && (v87 = sub_1D1742188(v16), (v88 & 1) != 0))
      {
        v89 = *(*(v85 + 56) + 8 * v87);
        v90 = *v123;

        v113 = v90;
        v90(v16, v8);
      }

      else
      {
        v113 = *v123;
        v113(v16, v8);
        v89 = MEMORY[0x1E69E7CD0];
      }

      v125 = v89;
      sub_1D19309C4(v83);
      v94 = [v82 uniqueIdentifier];
      v95 = v122;
      sub_1D1E66A5C();

      v96 = v125;
      v97 = v101;
      v98 = *v101;
      v99 = swift_isUniquelyReferenced_nonNull_native();
      v124 = *v97;
      *v97 = 0x8000000000000000;
      sub_1D175631C(v96, v95, v99);
      v113(v95, v8);
      *v97 = v124;
    }

LABEL_34:
    v76 = swift_isUniquelyReferenced_nonNull_native();
    v126 = v25;
    if ((v76 & 1) == 0)
    {
      sub_1D178DA58(0, *(v25 + 16) + 1, 1);
      v25 = v126;
    }

    v77 = v115;
    v79 = *(v25 + 16);
    v78 = *(v25 + 24);
    if (v79 >= v78 >> 1)
    {
      sub_1D178DA58((v78 > 1), v79 + 1, 1);
      v25 = v126;
    }

    *(v25 + 16) = v79 + 1;
    v80 = v25 + 24 * v79;
    v81 = v116;
    *(v80 + 32) = v117;
    *(v80 + 40) = v81;
    *(v80 + 48) = v114;
  }

  while (v77 != v23);
}

void sub_1D1B1BEB8(uint64_t a1, uint64_t *a2, uint64_t a3, _BYTE *a4)
{
  v51 = a4;
  v53 = a3;
  v6 = sub_1D1E66A7C();
  v63 = *(v6 - 8);
  v7 = *(v63 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v47 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v57 = &v47 - v14;
  v15 = *(a1 + 16);
  if (v15)
  {
    v16 = 0;
    v17 = a1 + 32;
    v18 = (v63 + 8);
    v59 = v15;
    v60 = v63 + 32;
    v48 = (v53 + 40);
    v49 = v63 + 16;
    v52 = a2;
    v58 = v17;
    v55 = (v63 + 8);
    v56 = v13;
    v50 = v10;
    do
    {
      v23 = v17 + 24 * v16;
      v24 = *v23;
      v25 = *(v23 + 8);
      v26 = *(v23 + 16);
      if (v26)
      {
        if (v26 == 4 && (v25 | v24) == 0)
        {
          v28 = *(v53 + 16);
          v54 = v16;
          if (v28)
          {
            v64 = MEMORY[0x1E69E7CC0];
            sub_1D178CEFC(0, v28, 0);
            v29 = v64;
            v30 = v48;
            do
            {
              v31 = v6;
              v32 = *(v30 - 1);
              v33 = *v30;
              ObjectType = swift_getObjectType();
              v35 = *(v33 + 16);
              v36 = *(v35 + 128);
              swift_unknownObjectRetain();
              v36(ObjectType, v35);
              swift_unknownObjectRelease();
              v64 = v29;
              v38 = *(v29 + 16);
              v37 = *(v29 + 24);
              if (v38 >= v37 >> 1)
              {
                sub_1D178CEFC(v37 > 1, v38 + 1, 1);
                v29 = v64;
              }

              *(v29 + 16) = v38 + 1;
              v6 = v31;
              (*(v63 + 32))(v29 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v38, v10, v31);
              v30 += 2;
              --v28;
            }

            while (v28);
            a2 = v52;
            v15 = v59;
            v16 = v54;
            v18 = v55;
          }

          else
          {
            v29 = MEMORY[0x1E69E7CC0];
          }

          v39 = *(v29 + 16);
          v40 = sub_1D174A5FC(qword_1EE07DD78);
          v64 = MEMORY[0x1D38917C0](v39, v6, v40);
          if (v39)
          {
            v42 = v56;
            v41 = v57;
            v43 = v6;
            v44 = v29 + ((*(v63 + 80) + 32) & ~*(v63 + 80));
            v45 = *(v63 + 72);
            v61 = *(v63 + 16);
            v62 = v45;
            do
            {
              v61(v42, v44, v43);
              sub_1D1762CB8(v41, v42);
              (*v18)(v41, v43);
              v44 += v62;
              --v39;
            }

            while (v39);

            a2 = v52;
            v10 = v50;
            v6 = v43;
            v15 = v59;
            v16 = v54;
          }

          else
          {
          }

          v46 = *a2;
          *a2 = v64;

          *v51 = 1;
          sub_1D1A283E8(0, 0, 4u);
          v17 = v58;
        }
      }

      else
      {
        v19 = [v24 uniqueIdentifier];
        v20 = v56;
        sub_1D1E66A5C();

        v18 = v55;
        v21 = v57;
        sub_1D1762CB8(v57, v20);
        sub_1D1A283E8(v24, v25, 0);
        v22 = v21;
        v15 = v59;
        (*v18)(v22, v6);
        sub_1D1A283E8(v24, v25, 0);
        v17 = v58;
      }

      ++v16;
    }

    while (v16 != v15);
  }
}

uint64_t _s13HomeDataModel19MatterStateSnapshotV10UpdateTypeO6unique7updates2inSayAEGAI_SayAA0A8Protocol_pGtFZ_0(uint64_t a1, uint64_t a2)
{
  v67 = sub_1D1E66A7C();
  v4 = *(v67 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v67);
  v8 = v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v58 = v54 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AD08, &qword_1D1E97F28);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v54 - v15;
  v17 = MEMORY[0x1E69E7CD0];
  v75[0] = MEMORY[0x1E69E7CD0];
  v74 = 0;

  sub_1D1B1BEB8(a1, v75, a2, &v74);

  v73[0] = 0;
  v72 = v17;
  v70 = MEMORY[0x1E69E7CC8];
  v71 = MEMORY[0x1E69E7CC8];

  sub_1D1B1B4FC(v18, v73, &v72, &v74, v75, &v71, &v70);
  v55 = v19;
  v54[1] = 0;
  v20 = v16;

  v21 = v70 + 64;
  v22 = 1 << *(v70 + 32);
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  else
  {
    v23 = -1;
  }

  v24 = v23 & *(v70 + 64);
  v25 = (v22 + 63) >> 6;
  v56 = v4 + 16;
  v66 = (v4 + 32);
  v59 = v4;
  v60 = v70;
  v61 = (v4 + 8);

  v27 = 0;
  v63 = v16;
  v64 = v14;
  v57 = v21;
  v65 = v8;
  while (v24)
  {
    v29 = v27;
LABEL_17:
    v32 = __clz(__rbit64(v24));
    v24 &= v24 - 1;
    v33 = v32 | (v29 << 6);
    v35 = v59;
    v34 = v60;
    (*(v59 + 16))(v58, *(v60 + 48) + *(v59 + 72) * v33, v67);
    v36 = *(*(v34 + 56) + 8 * v33);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AD10, &qword_1D1E97F30);
    v38 = *(v37 + 48);
    v14 = v64;
    (*(v35 + 32))();
    *&v14[v38] = v36;
    (*(*(v37 - 8) + 56))(v14, 0, 1, v37);

    v20 = v63;
    v8 = v65;
    v21 = v57;
LABEL_18:
    sub_1D1B1C948(v14, v20);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AD10, &qword_1D1E97F30);
    if ((*(*(v39 - 8) + 48))(v20, 1, v39) == 1)
    {

      v68[0] = MEMORY[0x1E69E7CD0];
      v69 = MEMORY[0x1E69E7CD0];
      sub_1D1B1AC44(v55, v68, &v71, &v69, &v70);
      v53 = v52;

      return v53;
    }

    v40 = *(v20 + *(v39 + 48));
    (*v66)(v8, v20, v67);
    v41 = sub_1D1C77248(v68);
    v43 = *v42;
    if (*v42)
    {
      v62 = v41;
      if (*(v43 + 16))
      {
        v44 = 1 << *(v40 + 32);
        if (v44 < 64)
        {
          v45 = ~(-1 << v44);
        }

        else
        {
          v45 = -1;
        }

        v46 = v45 & *(v40 + 56);
        v47 = (v44 + 63) >> 6;

        for (i = 0; v46; result = sub_1D1AE08F8(*(*(v40 + 48) + ((v49 << 9) | (8 * v50)))))
        {
          v49 = i;
LABEL_30:
          v50 = __clz(__rbit64(v46));
          v46 &= v46 - 1;
        }

        while (1)
        {
          v49 = i + 1;
          if (__OFADD__(i, 1))
          {
            break;
          }

          if (v49 >= v47)
          {

            v14 = v64;
            v8 = v65;
            v20 = v63;
            goto LABEL_34;
          }

          v46 = *(v40 + 56 + 8 * v49);
          ++i;
          if (v46)
          {
            i = v49;
            goto LABEL_30;
          }
        }

        __break(1u);
        goto LABEL_38;
      }

LABEL_34:
      (v62)(v68, 0);
    }

    else
    {
      v28 = v41;

      (v28)(v68, 0);
    }

    result = (*v61)(v8, v67);
  }

  if (v25 <= v27 + 1)
  {
    v30 = v27 + 1;
  }

  else
  {
    v30 = v25;
  }

  v31 = v30 - 1;
  while (1)
  {
    v29 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v29 >= v25)
    {
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AD10, &qword_1D1E97F30);
      (*(*(v51 - 8) + 56))(v14, 1, 1, v51);
      v24 = 0;
      v27 = v31;
      goto LABEL_18;
    }

    v24 = *(v21 + 8 * v29);
    ++v27;
    if (v24)
    {
      v27 = v29;
      goto LABEL_17;
    }
  }

LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1D1B1C948(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AD08, &qword_1D1E97F28);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_1D1B1C9B8()
{
  v2 = v1;
  v68 = *MEMORY[0x1E69E9840];
  v3 = sub_1D1E669FC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v0[5];
  v65 = v0[4];
  v66 = v8;
  v67[0] = v0[6];
  *(v67 + 15) = *(v0 + 111);
  v9 = v0[1];
  v61 = *v0;
  v62 = v9;
  v10 = v0[3];
  v63 = v0[2];
  v64 = v10;
  v11 = sub_1D1E65F8C();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = sub_1D1E65F7C();
  sub_1D1749DB4();
  v15 = sub_1D1E65F6C();
  v17 = v16;

  if (v1)
  {
    goto LABEL_21;
  }

  v18 = objc_opt_self();
  v19 = sub_1D1E6688C();
  v60[0] = 0;
  v14 = [v18 JSONObjectWithData:v19 options:4 error:v60];

  if (!v14)
  {
    v42 = v60[0];
    sub_1D1E6656C();

    swift_willThrow();
    v43 = v15;
LABEL_20:
    sub_1D174E7C4(v43, v17);
    goto LABEL_21;
  }

  v55 = v15;
  v20 = v60[0];
  sub_1D1E6866C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E68, &unk_1D1E717F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    [objc_allocWithZone(MEMORY[0x1E696ABC0]) init];
    swift_willThrow();
    v43 = v55;
    goto LABEL_20;
  }

  v51 = v17;
  v52 = v7;
  v53 = v4;
  v54 = v3;
  v21 = v58;
  v59 = v58;
  sub_1D174E20C(v58);
  v23 = 0;
  v57 = v22;
  v24 = 1 << *(v22 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v22 + 64;
  v27 = v25 & *(v22 + 64);
  v28 = (v24 + 63) >> 6;
  while (v27)
  {
LABEL_14:
    v31 = __clz(__rbit64(v27)) | (v23 << 6);
    v32 = (*(v57 + 48) + 16 * v31);
    v33 = *v32;
    v34 = v32[1];
    v35 = *(*(v57 + 56) + 8 * v31);

    v36 = sub_1D171D2F0(v33, v34);
    if (v37)
    {
      v38 = v36;
      v56 = v2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v60[0] = v21;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D1734030();
        v21 = v60[0];
      }

      v40 = *(v21[6] + 16 * v38 + 8);

      v41 = *(v21[7] + 8 * v38);
      sub_1D174F220(v38, v21);

      v2 = v56;
    }

    else
    {
    }

    v27 &= v27 - 1;
    v29 = swift_isUniquelyReferenced_nonNull_native();
    v60[0] = v21;
    sub_1D1757628(v35, sub_1D17575DC, 0, v29, v60);

    v21 = v60[0];
  }

  while (1)
  {
    v30 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
    }

    if (v30 >= v28)
    {
      break;
    }

    v27 = *(v26 + 8 * v30);
    ++v23;
    if (v27)
    {
      v23 = v30;
      goto LABEL_14;
    }
  }

  v59 = v21;

  v46 = v52;
  _s13HomeDataModel012IntentLaunchbC0C03setE19InitiationTimestamp4date4withy10Foundation4DateV_ShyAG4UUIDVGtFfA__0();
  sub_1D1E6699C();
  v47 = sub_1D1E680EC();
  v48 = v59;
  v49 = swift_isUniquelyReferenced_nonNull_native();
  v60[0] = v48;
  sub_1D175263C(v47, 0x6D617473656D6974, 0xE900000000000070, v49);
  sub_1D174E7C4(v55, v51);
  v14 = v60[0];
  v59 = v60[0];
  (*(v53 + 8))(v46, v54);
LABEL_21:
  v44 = *MEMORY[0x1E69E9840];
  return v14;
}

uint64_t sub_1D1B1CF14()
{
  v2 = v1;
  v73 = *MEMORY[0x1E69E9840];
  v3 = sub_1D1E669FC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v0[9];
  v71 = v0[8];
  *v72 = v8;
  *&v72[15] = *(v0 + 159);
  v9 = v0[5];
  v67 = v0[4];
  v68 = v9;
  v10 = v0[7];
  v69 = v0[6];
  v70 = v10;
  v11 = v0[1];
  v63 = *v0;
  v12 = v0[2];
  v66 = v0[3];
  v64 = v11;
  v65 = v12;
  v13 = sub_1D1E65F8C();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  sub_1D1E65F7C();
  sub_1D174C3F8();
  v16 = sub_1D1E65F6C();
  v18 = v17;

  if (v1)
  {
    goto LABEL_21;
  }

  v20 = objc_opt_self();
  v21 = sub_1D1E6688C();
  v62[0] = 0;
  v22 = [v20 JSONObjectWithData:v21 options:4 error:v62];

  if (!v22)
  {
    v45 = v62[0];
    sub_1D1E6656C();

    swift_willThrow();
    v46 = v16;
LABEL_20:
    result = sub_1D174E7C4(v46, v18);
    goto LABEL_21;
  }

  v57 = v16;
  v23 = v62[0];
  sub_1D1E6866C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E68, &unk_1D1E717F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    [objc_allocWithZone(MEMORY[0x1E696ABC0]) init];
    swift_willThrow();
    v46 = v57;
    goto LABEL_20;
  }

  v53 = v18;
  v54 = v7;
  v55 = v4;
  v56 = v3;
  v24 = v60;
  payload._rawValue = v60;
  sub_1D174E20C(v60);
  v26 = 0;
  v59 = v25;
  v27 = 1 << *(v25 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v25 + 64;
  v30 = v28 & *(v25 + 64);
  v31 = (v27 + 63) >> 6;
  while (v30)
  {
LABEL_14:
    v34 = __clz(__rbit64(v30)) | (v26 << 6);
    v35 = (*(v59 + 48) + 16 * v34);
    v36 = *v35;
    v37 = v35[1];
    v38 = *(*(v59 + 56) + 8 * v34);

    v39 = sub_1D171D2F0(v36, v37);
    if (v40)
    {
      v41 = v39;
      v58 = v2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v62[0] = v24;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D1734030();
        v24 = v62[0];
      }

      v43 = *(v24[6] + 16 * v41 + 8);

      v44 = *(v24[7] + 8 * v41);
      sub_1D174F220(v41, v24);

      v2 = v58;
    }

    else
    {
    }

    v30 &= v30 - 1;
    v32 = swift_isUniquelyReferenced_nonNull_native();
    v62[0] = v24;
    sub_1D1757628(v38, sub_1D17575DC, 0, v32, v62);

    v24 = v62[0];
  }

  while (1)
  {
    v33 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
    }

    if (v33 >= v31)
    {
      break;
    }

    v30 = *(v29 + 8 * v33);
    ++v26;
    if (v30)
    {
      v26 = v33;
      goto LABEL_14;
    }
  }

  payload._rawValue = v24;

  v48 = v54;
  _s13HomeDataModel012IntentLaunchbC0C03setE19InitiationTimestamp4date4withy10Foundation4DateV_ShyAG4UUIDVGtFfA__0();
  sub_1D1E6699C();
  v49 = sub_1D1E680EC();
  rawValue = payload._rawValue;
  v51 = swift_isUniquelyReferenced_nonNull_native();
  v62[0] = rawValue;
  sub_1D175263C(v49, 0x6D617473656D6974, 0xE900000000000070, v51);
  payload._rawValue = v62[0];
  (*(v55 + 8))(v48, v56);
  TileInteractionEvent.transform(payload:)(&payload);
  sub_1D174E7C4(v57, v53);
  result = payload._rawValue;
LABEL_21:
  v47 = *MEMORY[0x1E69E9840];
  return result;
}

id sub_1D1B1D4B0()
{
  v36 = *MEMORY[0x1E69E9840];
  v2 = sub_1D1E669FC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v0[5];
  v33 = v0[4];
  v34 = v7;
  v35 = v0[6];
  v8 = v0[1];
  v29 = *v0;
  v30 = v8;
  v9 = v0[3];
  v31 = v0[2];
  v32 = v9;
  v10 = sub_1D1E65F8C();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = sub_1D1E65F7C();
  sub_1D1B22ADC();
  v14 = sub_1D1E65F6C();
  v16 = v15;

  if (!v1)
  {
    v17 = objc_opt_self();
    v18 = sub_1D1E6688C();
    v28[0] = 0;
    v13 = [v17 JSONObjectWithData:v18 options:4 error:v28];

    if (v13)
    {
      v19 = v28[0];
      sub_1D1E6866C();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E68, &unk_1D1E717F0);
      if (swift_dynamicCast())
      {
        v27 = v26;

        _s13HomeDataModel012IntentLaunchbC0C03setE19InitiationTimestamp4date4withy10Foundation4DateV_ShyAG4UUIDVGtFfA__0();
        sub_1D1E6699C();
        v20 = sub_1D1E680EC();
        v21 = v27;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v28[0] = v21;
        sub_1D175263C(v20, 0x6D617473656D6974, 0xE900000000000070, isUniquelyReferenced_nonNull_native);
        sub_1D174E7C4(v14, v16);
        v13 = v28[0];
        v27 = v28[0];
        (*(v3 + 8))(v6, v2);
        goto LABEL_8;
      }

      [objc_allocWithZone(MEMORY[0x1E696ABC0]) init];
    }

    else
    {
      v23 = v28[0];
      sub_1D1E6656C();
    }

    swift_willThrow();
    sub_1D174E7C4(v14, v16);
  }

LABEL_8:
  v24 = *MEMORY[0x1E69E9840];
  return v13;
}

uint64_t sub_1D1B1D814(uint64_t a1)
{
  if (qword_1EE07AE68 != -1)
  {
    swift_once();
  }

  if (byte_1EE081450 == 1)
  {
    if (qword_1EE079BB0 != -1)
    {
      swift_once();
    }

    sub_1D1E6835C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1D1E6F900;
    v4 = MEMORY[0x1E69E6158];
    *(v3 + 56) = MEMORY[0x1E69E6158];
    v5 = sub_1D1757D20();
    *(v3 + 64) = v5;
    *(v3 + 32) = 0xD000000000000022;
    *(v3 + 40) = 0x80000001D1EC4B50;
    v6 = v1[3];
    if (v6)
    {
LABEL_11:
      v13 = v1[2];
      v14 = v6;

      MEMORY[0x1D3890F70](46, 0xE100000000000000);
      v7 = *v1;
      v8 = v1[1];

      MEMORY[0x1D3890F70](v7, v8);

      v10 = v13;
      v9 = v14;
      goto LABEL_13;
    }
  }

  else
  {
    if (qword_1EE079BB0 != -1)
    {
      swift_once();
    }

    sub_1D1E6835C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1D1E6F900;
    v4 = MEMORY[0x1E69E6158];
    *(v3 + 56) = MEMORY[0x1E69E6158];
    v5 = sub_1D1757D20();
    *(v3 + 64) = v5;
    *(v3 + 32) = 0xD000000000000022;
    *(v3 + 40) = 0x80000001D1EC4B50;
    v6 = v1[3];
    if (v6)
    {
      goto LABEL_11;
    }
  }

  v10 = *v1;
  v11 = v1[1];

LABEL_13:
  *(v3 + 96) = v4;
  *(v3 + 104) = v5;
  *(v3 + 72) = v10;
  *(v3 + 80) = v9;
  *(v3 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E68, &unk_1D1E717F0);
  *(v3 + 144) = sub_1D17D8EA8(&qword_1EE07A008, &qword_1EC642E68, &unk_1D1E717F0);
  *(v3 + 112) = a1;

  sub_1D1E66F9C();
}

uint64_t sub_1D1B1DBB0()
{
  if (qword_1EE079BB0 != -1)
  {
    swift_once();
  }

  sub_1D1E6833C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D1E6F900;
  v2 = MEMORY[0x1E69E6158];
  *(v1 + 56) = MEMORY[0x1E69E6158];
  v3 = sub_1D1757D20();
  *(v1 + 64) = v3;
  *(v1 + 32) = 0xD000000000000022;
  *(v1 + 40) = 0x80000001D1EC4B50;
  if (v0[3])
  {
    v12 = v0[2];
    v13 = v0[3];

    MEMORY[0x1D3890F70](46, 0xE100000000000000);
    v4 = *v0;
    v5 = v0[1];

    MEMORY[0x1D3890F70](v4, v5);

    v7 = v12;
    v6 = v13;
  }

  else
  {
    v7 = *v0;
    v8 = v0[1];
  }

  *(v1 + 96) = v2;
  *(v1 + 104) = v3;
  *(v1 + 72) = v7;
  *(v1 + 80) = v6;
  swift_getErrorValue();
  v9 = sub_1D1E6915C();
  *(v1 + 136) = v2;
  *(v1 + 144) = v3;
  *(v1 + 112) = v9;
  *(v1 + 120) = v10;
  sub_1D1E66F9C();
}

void sub_1D1B1DD5C()
{
  v1 = v0;
  v2 = *(v0 + 64);
  v3 = *(v0 + 80);
  v4 = *(v0 + 32);
  v25[3] = *(v0 + 48);
  v25[4] = v2;
  v5 = *(v0 + 96);
  v25[5] = v3;
  v25[6] = v5;
  v6 = *(v0 + 16);
  v25[0] = *v0;
  v25[1] = v6;
  v25[2] = v4;
  v7 = swift_allocObject();
  v8 = *(v0 + 80);
  v7[5] = *(v0 + 64);
  v7[6] = v8;
  v7[7] = *(v0 + 96);
  v9 = *(v0 + 16);
  v7[1] = *v0;
  v7[2] = v9;
  v10 = *(v0 + 48);
  v7[3] = *(v0 + 32);
  v7[4] = v10;
  sub_1D1B22A14(v0, &aBlock);
  sub_1D1B22A14(v25, &aBlock);
  if (qword_1EE07AE68 != -1)
  {
    swift_once();
  }

  if (byte_1EE081450 == 1)
  {
    sub_1D1B22A70(v25);
    v11 = *(v0 + 24);
    if (v11)
    {
      aBlock = *(v0 + 16);
      v20 = v11;

      MEMORY[0x1D3890F70](46, 0xE100000000000000);
      v13 = *v0;
      v12 = *(v0 + 8);

      MEMORY[0x1D3890F70](v13, v12);
    }

    else
    {
      v15 = *v0;
      v16 = *(v1 + 8);
    }

    v17 = sub_1D1E677EC();

    v23 = sub_1D1B22A0C;
    v24 = v7;
    aBlock = MEMORY[0x1E69E9820];
    v20 = 1107296256;
    v21 = sub_1D174DCDC;
    v22 = &block_descriptor_45;
    v18 = _Block_copy(&aBlock);

    AnalyticsSendEventLazy();

    _Block_release(v18);
  }

  else
  {
    v14 = sub_1D1B1D4B0();
    sub_1D1B1D814(v14);
    sub_1D1B22A70(v25);
  }
}

uint64_t sub_1D1B1DFC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_1D1A08410(a3, v27 - v11);
  v13 = sub_1D1E67E7C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1D1741A30(v12, &unk_1EC6442C0, &qword_1D1E741A0);
  }

  else
  {
    sub_1D1E67E6C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1D1E67D4C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1D1E678CC() + 32;
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

uint64_t sub_1D1B1E270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_1D1A08410(a3, v27 - v11);
  v13 = sub_1D1E67E7C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1D1741A30(v12, &unk_1EC6442C0, &qword_1D1E741A0);
  }

  else
  {
    sub_1D1E67E6C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1D1E67D4C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1D1E678CC() + 32;
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

uint64_t PhoenixMetricsAggregator.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_1D1E68A3C();
  v4 = OBJC_IVAR____TtC13HomeDataModel24PhoenixMetricsAggregator_intervalBuffer;
  v5 = MEMORY[0x1E69E7CC0];
  *(v3 + v4) = sub_1D18DB1BC(MEMORY[0x1E69E7CC0]);
  *(v3 + OBJC_IVAR____TtC13HomeDataModel24PhoenixMetricsAggregator_batchEvents) = v5;
  *(v3 + OBJC_IVAR____TtC13HomeDataModel24PhoenixMetricsAggregator_timer) = 0;
  return v3;
}

uint64_t PhoenixMetricsAggregator.init()()
{
  swift_defaultActor_initialize();
  sub_1D1E68A3C();
  v1 = OBJC_IVAR____TtC13HomeDataModel24PhoenixMetricsAggregator_intervalBuffer;
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + v1) = sub_1D18DB1BC(MEMORY[0x1E69E7CC0]);
  *(v0 + OBJC_IVAR____TtC13HomeDataModel24PhoenixMetricsAggregator_batchEvents) = v2;
  *(v0 + OBJC_IVAR____TtC13HomeDataModel24PhoenixMetricsAggregator_timer) = 0;
  return v0;
}

void sub_1D1B1E610()
{
  v1 = v0;
  v2 = *v0;
  v3 = OBJC_IVAR____TtC13HomeDataModel24PhoenixMetricsAggregator_timer;
  [*(v0 + OBJC_IVAR____TtC13HomeDataModel24PhoenixMetricsAggregator_timer) invalidate];
  if (qword_1EE07B800 != -1)
  {
    swift_once();
  }

  v4 = sub_1D1E6709C();
  __swift_project_value_buffer(v4, qword_1EE07B808);
  v5 = sub_1D1E6707C();
  v6 = sub_1D1E6835C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136315394;
    v9 = sub_1D1E6940C();
    v11 = sub_1D1B1312C(v9, v10, &v15);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2048;
    *(v7 + 14) = 0x405E000000000000;
    _os_log_impl(&dword_1D16EC000, v5, v6, "%s beginning metrics aggregation with interval %f", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1D3893640](v8, -1, -1);
    MEMORY[0x1D3893640](v7, -1, -1);
  }

  v12 = [objc_opt_self() timerWithTimeInterval:v1 target:sel_timerFired selector:0 userInfo:1 repeats:120.0];
  v13 = [objc_opt_self() mainRunLoop];
  [v13 addTimer:v12 forMode:*MEMORY[0x1E695DA28]];

  v14 = *(v1 + v3);
  *(v1 + v3) = v12;
}

uint64_t sub_1D1B1E850(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4[5] = a4;
  v4[6] = *a4;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0) - 8) + 64) + 15;
  v4[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1B1E918, a4, 0);
}

uint64_t sub_1D1B1E918()
{
  v1 = v0[5];
  v2 = OBJC_IVAR____TtC13HomeDataModel24PhoenixMetricsAggregator_intervalBuffer;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = OBJC_IVAR____TtC13HomeDataModel24PhoenixMetricsAggregator_batchEvents;
  v5 = *(v1 + OBJC_IVAR____TtC13HomeDataModel24PhoenixMetricsAggregator_batchEvents);
  if (*(v3 + 16) || *(v5 + 16))
  {
    v7 = v0[6];
    v6 = v0[7];
    v8 = v0[5];
    *(v1 + v2) = MEMORY[0x1E69E7CC8];
    *(v8 + v4) = MEMORY[0x1E69E7CC0];
    v9 = sub_1D1E67E7C();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v5;
    v10[5] = v3;
    v10[6] = v7;
    sub_1D1B1DFC0(0, 0, v6, &unk_1D1E97FF0, v10);

    sub_1D1741A30(v6, &unk_1EC6442C0, &qword_1D1E741A0);
  }

  v11 = v0[7];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1D1B1EB98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[52] = a5;
  v6[53] = a6;
  v6[51] = a4;
  v7 = _s8IntervalVMa(0);
  v6[54] = v7;
  v8 = *(v7 - 8);
  v6[55] = v8;
  v9 = *(v8 + 64) + 15;
  v6[56] = swift_task_alloc();
  v10 = _s8IntervalV11AggregationVMa(0);
  v6[57] = v10;
  v11 = *(v10 - 8);
  v6[58] = v11;
  v12 = *(v11 + 64) + 15;
  v6[59] = swift_task_alloc();
  v6[60] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1B1ECC4, 0, 0);
}

uint64_t sub_1D1B1ECC4()
{
  v1 = v0[52];
  v2 = v0[53];
  v3 = v0[51];
  sub_1D1B1F3AC((v0 + 44));
  v4 = sub_1D1B1F8E8(v1);
  v5 = sub_1D1E6939C();
  v7 = v6;
  v8 = *(v4 + 16);
  if (v8)
  {
    v9 = v0[58];
    v79 = v0[57];
    v10 = v0[60] + *(v79 + 20);
    v11 = v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v12 = *(v9 + 72);
    v13 = v11;
    v14 = v8;
    do
    {
      v15 = v0[60];
      sub_1D1B22EB8(v13, v15, _s8IntervalV11AggregationVMa);
      v16 = *(v10 + 8);
      v17 = *(v10 + 16);
      v18 = sub_1D1E6936C();
      v7 = v19;
      sub_1D1B23038(v15, _s8IntervalV11AggregationVMa);
      v13 += v12;
      --v14;
    }

    while (v14);
    v76 = v18;
    v20 = 0;
    v21 = v0[59];
    v22 = *(v79 + 20);
    while (1)
    {
      v23 = v0[59];
      sub_1D1B22EB8(v11, v23, _s8IntervalV11AggregationVMa);
      v24 = *(v21 + v22);
      result = sub_1D1B23038(v23, _s8IntervalV11AggregationVMa);
      v26 = __CFADD__(v20, v24);
      v20 += v24;
      if (v26)
      {
        break;
      }

      v11 += v12;
      if (!--v8)
      {

        v5 = v76;
        goto LABEL_9;
      }
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
  }

  else
  {

    v20 = 0;
LABEL_9:
    v78 = v0[55];
    v28 = v0[52];
    v27 = v0[53];
    v29 = sub_1D1B2320C();
    v80 = v0;
    sub_1D1B229B8((v0 + 44));
    v75 = v7;
    v77 = v5;
    sub_1D1B20444(v5, v7, v20, v29);
    v30 = -1;
    v31 = -1 << *(v28 + 32);
    if (-v31 < 64)
    {
      v30 = ~(-1 << -v31);
    }

    v32 = v30 & *(v28 + 64);
    v33 = (63 - v31) >> 6;

    v34 = 0;
    v35 = MEMORY[0x1E69E7CC0];
    while (v32)
    {
LABEL_18:
      v37 = (v34 << 9) | (8 * __clz(__rbit64(v32)));
      v38 = *(*(v28 + 56) + v37);
      v39 = *(v38 + 16);
      v40 = v35[2];
      v41 = v40 + v39;
      if (__OFADD__(v40, v39))
      {
        goto LABEL_42;
      }

      v42 = *(*(v28 + 56) + v37);

      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || v41 > v35[3] >> 1)
      {
        if (v40 <= v41)
        {
          v43 = v40 + v39;
        }

        else
        {
          v43 = v40;
        }

        result = sub_1D177F684(result, v43, 1, v35);
        v35 = result;
      }

      v32 &= v32 - 1;
      if (*(v38 + 16))
      {
        if ((v35[3] >> 1) - v35[2] < v39)
        {
          goto LABEL_44;
        }

        v44 = v80[54];
        v45 = (*(v78 + 80) + 32) & ~*(v78 + 80);
        v46 = *(v78 + 72);
        swift_arrayInitWithCopy();

        if (v39)
        {
          v47 = v35[2];
          v48 = __OFADD__(v47, v39);
          v49 = v47 + v39;
          if (v48)
          {
            goto LABEL_45;
          }

          v35[2] = v49;
        }
      }

      else
      {

        if (v39)
        {
          goto LABEL_43;
        }
      }
    }

    while (1)
    {
      v36 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        __break(1u);
        goto LABEL_41;
      }

      if (v36 >= v33)
      {
        break;
      }

      v32 = *(v28 + 64 + 8 * v36);
      ++v34;
      if (v32)
      {
        v34 = v36;
        goto LABEL_18;
      }
    }

    v50 = v80;
    v51 = v80[52];

    v52 = v35[2];
    if (v52)
    {
      v53 = v80[54];
      v81 = MEMORY[0x1E69E7CC0];
      sub_1D178DB70(0, v52, 0);
      v54 = v81;
      v55 = v35 + ((*(v78 + 80) + 32) & ~*(v78 + 80));
      v56 = *(v78 + 72);
      do
      {
        v57 = v50[56];
        sub_1D1B22EB8(v55, v57, _s8IntervalVMa);
        v58 = *(v53 + 24);
        v59 = v57 + *(v53 + 20);
        v60 = sub_1D1E68A1C();
        v62 = v61;
        sub_1D1B23038(v57, _s8IntervalVMa);
        v64 = v81[2];
        v63 = v81[3];
        if (v64 >= v63 >> 1)
        {
          sub_1D178DB70((v63 > 1), v64 + 1, 1);
        }

        v81[2] = v64 + 1;
        v65 = &v81[2 * v64];
        v65[4] = v60;
        v65[5] = v62;
        v55 += v56;
        --v52;
        v50 = v80;
      }

      while (v52);
    }

    else
    {

      v54 = MEMORY[0x1E69E7CC0];
    }

    v66 = sub_1D1745BC4(v54);
    v68 = v67;
    v70 = v69;

    v71 = sub_1D1E693AC();
    v73 = v72;
    v74 = swift_task_alloc();
    v50[61] = v74;
    *v74 = v50;
    v74[1] = sub_1D1B1F1D4;

    return PhoenixMetricsAggregator.HighSnapshotActivityAnalyticsEvent.init(totalSnapshotTime:aggregationInterval:maxSnapshotTime:)((v50 + 30), v77, v75, v71, v73, v66, v68, v70 & 1);
  }

  return result;
}

uint64_t sub_1D1B1F1D4()
{
  v1 = *(*v0 + 488);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D1B1F2D0, 0, 0);
}

uint64_t sub_1D1B1F2D0()
{
  v1 = *(v0 + 320);
  *(v0 + 192) = *(v0 + 304);
  *(v0 + 208) = v1;
  *(v0 + 224) = *(v0 + 336);
  v2 = *(v0 + 256);
  *(v0 + 128) = *(v0 + 240);
  *(v0 + 144) = v2;
  v3 = *(v0 + 288);
  *(v0 + 160) = *(v0 + 272);
  *(v0 + 176) = v3;
  v4 = *(v0 + 136);
  if (v4)
  {
    *(v0 + 16) = *(v0 + 128);
    *(v0 + 24) = v4;
    v5 = *(v0 + 192);
    *(v0 + 64) = *(v0 + 176);
    *(v0 + 80) = v5;
    v6 = *(v0 + 224);
    *(v0 + 96) = *(v0 + 208);
    *(v0 + 112) = v6;
    v7 = *(v0 + 160);
    *(v0 + 32) = *(v0 + 144);
    *(v0 + 48) = v7;
    sub_1D1B1DD5C();
    sub_1D1741A30(v0 + 128, &qword_1EC64AD20, &qword_1D1E98010);
  }

  v9 = *(v0 + 472);
  v8 = *(v0 + 480);
  v10 = *(v0 + 448);

  v11 = *(v0 + 8);

  return v11();
}

double sub_1D1B1F3AC@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1D1E65F4C();
  v3 = *(v2 - 8);
  v4 = v3;
  v5 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1D1B29C3C(v8, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AD48, &qword_1D1E98030);
  v9 = *(v3 + 72);
  v10 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D1E73A90;
  sub_1D1E65F3C();
  sub_1D1E65F2C();
  v28 = v11;
  sub_1D1B22C48(&qword_1EE07D1A0, MEMORY[0x1E6967F78]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AD50, &qword_1D1E98038);
  sub_1D17D8EA8(&qword_1EE07B758, &qword_1EC64AD50, &qword_1D1E98038);
  sub_1D1E6868C();
  v12 = sub_1D1B23438(v7);
  v14 = v13;
  v15 = v12;
  (*(v4 + 8))(v7, v2);
  if (qword_1EE07B800 != -1)
  {
    swift_once();
  }

  v16 = sub_1D1E6709C();
  __swift_project_value_buffer(v16, qword_1EE07B808);

  v17 = sub_1D1E6707C();
  v18 = sub_1D1E6835C();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v28 = v20;
    *v19 = 136315394;
    v21 = sub_1D1E6940C();
    v23 = sub_1D1B1312C(v21, v22, &v28);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2080;
    v24 = sub_1D1B1312C(v15, v14, &v28);

    *(v19 + 14) = v24;
    _os_log_impl(&dword_1D16EC000, v17, v18, "%s batches: %s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v20, -1, -1);
    MEMORY[0x1D3893640](v19, -1, -1);
  }

  else
  {
  }

  v25 = v29[1];
  *a1 = v29[0];
  *(a1 + 16) = v25;
  result = *&v30;
  *(a1 + 32) = v30;
  *(a1 + 48) = v31;
  return result;
}

uint64_t sub_1D1B1F8E8(uint64_t a1)
{
  v2 = sub_1D1E6786C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v92 = &v92 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D1E65F4C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v107 = &v92 - v11;
  v12 = _s8IntervalV11AggregationVMa(0);
  v102 = *(v12 - 8);
  v103 = v12;
  v13 = *(v102 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v111 = &v92 - v17;
  v18 = type metadata accessor for PhoenixMetricsAggregator.IntervalKey(0);
  v96 = *(v18 - 8);
  v19 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v108 = &v92 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AD30, &qword_1D1E98018);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8);
  v25 = &v92 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v105 = &v92 - v26;
  v27 = *(a1 + 64);
  v93 = a1 + 64;
  v28 = 1 << *(a1 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & v27;
  v31 = (v28 + 63) >> 6;
  v99 = (v6 + 8);
  v100 = (v6 + 16);
  v97 = a1;

  v33 = 0;
  v34 = 0;
  v110 = MEMORY[0x1E69E7CC0];
  *&v35 = 136315394;
  v94 = v35;
  v109 = v5;
  v104 = v10;
  v106 = v25;
  v101 = v16;
  while (v30)
  {
    v36 = v33;
LABEL_15:
    v39 = __clz(__rbit64(v30));
    v30 &= v30 - 1;
    v40 = v39 | (v36 << 6);
    v41 = v97;
    v42 = v108;
    sub_1D1B22EB8(*(v97 + 48) + *(v96 + 72) * v40, v108, type metadata accessor for PhoenixMetricsAggregator.IntervalKey);
    v43 = *(*(v41 + 56) + 8 * v40);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AD38, &unk_1D1E98020);
    v45 = *(v44 + 48);
    v46 = v42;
    v25 = v106;
    sub_1D1B22D58(v46, v106, type metadata accessor for PhoenixMetricsAggregator.IntervalKey);
    *&v25[v45] = v43;
    (*(*(v44 - 8) + 56))(v25, 0, 1, v44);

    v38 = v36;
LABEL_16:
    v47 = v105;
    sub_1D1B22B84(v25, v105);
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AD38, &unk_1D1E98020);
    if ((*(*(v48 - 8) + 48))(v47, 1, v48) == 1)
    {

      return v110;
    }

    v49 = *(v47 + *(v48 + 48));
    v50 = v108;
    sub_1D1B22D58(v47, v108, type metadata accessor for PhoenixMetricsAggregator.IntervalKey);
    v51 = v111;
    sub_1D1B2364C(v50, v49, v111);
    sub_1D1B22EB8(v51, v16, _s8IntervalV11AggregationVMa);
    v52 = v110;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v52 = sub_1D177F65C(0, v52[2] + 1, 1, v52);
    }

    v54 = v52[2];
    v53 = v52[3];
    if (v54 >= v53 >> 1)
    {
      v52 = sub_1D177F65C(v53 > 1, v54 + 1, 1, v52);
    }

    v52[2] = v54 + 1;
    v55 = (*(v102 + 80) + 32) & ~*(v102 + 80);
    v110 = v52;
    sub_1D1B22D58(v16, v52 + v55 + *(v102 + 72) * v54, _s8IntervalV11AggregationVMa);
    v56 = v107;
    sub_1D1E65F3C();
    v57 = sub_1D1E65F8C();
    v58 = *(v57 + 48);
    v59 = *(v57 + 52);
    swift_allocObject();
    sub_1D1E65F7C();
    (*v100)(v104, v56, v109);
    sub_1D1E65F5C();
    sub_1D1B22C48(&qword_1EE07A208, _s8IntervalV11AggregationVMa);
    v60 = sub_1D1E65F6C();
    if (v34)
    {
      (*v99)(v56, v109);

LABEL_23:
      if (qword_1EE07B800 != -1)
      {
        swift_once();
      }

      v62 = sub_1D1E6709C();
      __swift_project_value_buffer(v62, qword_1EE07B808);
      v63 = v34;
      v64 = sub_1D1E6707C();
      v65 = sub_1D1E6835C();

      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v98 = v38;
        v68 = v67;
        v69 = swift_slowAlloc();
        v112[0] = v69;
        *v66 = v94;
        v70 = sub_1D1E6940C();
        v95 = 0;
        v72 = sub_1D1B1312C(v70, v71, v112);

        *(v66 + 4) = v72;
        v25 = v106;
        *(v66 + 12) = 2112;
        v73 = v34;
        v74 = _swift_stdlib_bridgeErrorToNSError();
        *(v66 + 14) = v74;
        *v68 = v74;
        _os_log_impl(&dword_1D16EC000, v64, v65, "%s interval aggregation failed to convert to JSON with error: %@", v66, 0x16u);
        sub_1D1741A30(v68, &unk_1EC644000, &unk_1D1E75B00);
        MEMORY[0x1D3893640](v68, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v69);
        MEMORY[0x1D3893640](v69, -1, -1);
        MEMORY[0x1D3893640](v66, -1, -1);

        result = sub_1D1B23038(v111, _s8IntervalV11AggregationVMa);
        v33 = v98;
        v34 = v95;
      }

      else
      {

        result = sub_1D1B23038(v111, _s8IntervalV11AggregationVMa);
        v33 = v38;
        v34 = 0;
      }

      goto LABEL_5;
    }

    v75 = v60;
    v76 = v61;
    sub_1D1E6785C();
    v77 = sub_1D1E6782C();
    if (!v78)
    {
      sub_1D1B22BF4();
      v34 = swift_allocError();
      swift_willThrow();

      sub_1D174E7C4(v75, v76);
      (*v99)(v107, v109);
      goto LABEL_23;
    }

    v79 = v77;
    v80 = v78;
    (*v99)(v107, v109);
    sub_1D174E7C4(v75, v76);

    if (qword_1EE07B800 != -1)
    {
      swift_once();
    }

    v81 = sub_1D1E6709C();
    __swift_project_value_buffer(v81, qword_1EE07B808);

    v82 = sub_1D1E6707C();
    v83 = sub_1D1E6835C();

    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v98 = v38;
      v86 = v85;
      v112[0] = v85;
      *v84 = v94;
      v87 = sub_1D1E6940C();
      v95 = v79;
      v89 = sub_1D1B1312C(v87, v88, v112);

      *(v84 + 4) = v89;
      v25 = v106;
      *(v84 + 12) = 2080;
      v90 = sub_1D1B1312C(v95, v80, v112);

      *(v84 + 14) = v90;
      _os_log_impl(&dword_1D16EC000, v82, v83, "%s interval aggregation: %s", v84, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v86, -1, -1);
      MEMORY[0x1D3893640](v84, -1, -1);

      result = sub_1D1B23038(v111, _s8IntervalV11AggregationVMa);
      v33 = v98;
    }

    else
    {

      result = sub_1D1B23038(v111, _s8IntervalV11AggregationVMa);
      v33 = v38;
    }

LABEL_5:
    v16 = v101;
  }

  if (v31 <= v33 + 1)
  {
    v37 = v33 + 1;
  }

  else
  {
    v37 = v31;
  }

  v38 = v37 - 1;
  while (1)
  {
    v36 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v36 >= v31)
    {
      v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AD38, &unk_1D1E98020);
      (*(*(v91 - 8) + 56))(v25, 1, 1, v91);
      v30 = 0;
      goto LABEL_16;
    }

    v30 = *(v93 + 8 * v36);
    ++v33;
    if (v30)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

void sub_1D1B20444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D1E6931C();
  sub_1D1E6811C();
  MEMORY[0x1D3890F70](29549, 0xE200000000000000);
  if (a3)
  {
    sub_1D1B22B30();
    sub_1D1E6935C();
    v18[0] = a3;
    sub_1D1E6933C();
  }

  else
  {
    sub_1D1E6939C();
  }

  sub_1D1E6931C();
  v18[0] = 0;
  v18[1] = 0xE000000000000000;
  sub_1D1E6811C();
  MEMORY[0x1D3890F70](29549, 0xE200000000000000);
  if (qword_1EE07B800 != -1)
  {
    swift_once();
  }

  v6 = sub_1D1E6709C();
  __swift_project_value_buffer(v6, qword_1EE07B808);

  v7 = sub_1D1E6707C();
  v8 = sub_1D1E6835C();

  if (os_log_type_enabled(v7, v8))
  {
    v17 = a3;
    v9 = swift_slowAlloc();
    v18[0] = swift_slowAlloc();
    v10 = v18[0];
    *v9 = 136316162;
    v11 = sub_1D1E6940C();
    v13 = a4;
    v14 = sub_1D1B1312C(v11, v12, v18);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2080;
    v15 = sub_1D1B1312C(0, 0xE000000000000000, v18);

    *(v9 + 14) = v15;
    *(v9 + 22) = 2048;
    *(v9 + 24) = v17;
    *(v9 + 32) = 2048;
    *(v9 + 34) = v13;
    *(v9 + 42) = 2080;
    v16 = sub_1D1B1312C(0, 0xE000000000000000, v18);

    *(v9 + 44) = v16;
    _os_log_impl(&dword_1D16EC000, v7, v8, "%s total snapshot time in interval: %s in %lu snapshots out of %lu unfiltered (est. %s)", v9, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v10, -1, -1);
    MEMORY[0x1D3893640](v9, -1, -1);
  }

  else
  {
  }
}

uint64_t PhoenixMetricsAggregator.deinit()
{
  v1 = OBJC_IVAR____TtC13HomeDataModel24PhoenixMetricsAggregator_clock;
  v2 = sub_1D1E68A4C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC13HomeDataModel24PhoenixMetricsAggregator_intervalBuffer);

  v4 = *(v0 + OBJC_IVAR____TtC13HomeDataModel24PhoenixMetricsAggregator_batchEvents);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t PhoenixMetricsAggregator.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC13HomeDataModel24PhoenixMetricsAggregator_clock;
  v2 = sub_1D1E68A4C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC13HomeDataModel24PhoenixMetricsAggregator_intervalBuffer);

  v4 = *(v0 + OBJC_IVAR____TtC13HomeDataModel24PhoenixMetricsAggregator_batchEvents);

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1D1B208D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v22 - v4;
  v6 = _s8IntervalVMa(0);
  v7 = v6 - 8;
  v23 = *(v6 - 8);
  v8 = *(v23 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22 - v11;
  sub_1D1B22EB8(a1, &v22 - v11, type metadata accessor for PhoenixMetricsAggregator.IntervalKey);
  v13 = *(type metadata accessor for PhoenixMetricsAggregator.OpenInterval(0) + 20);
  v14 = *(v7 + 28);
  v15 = sub_1D1E68A2C();
  (*(*(v15 - 8) + 16))(&v12[v14], a1 + v13, v15);
  v16 = &v12[*(v7 + 32)];
  sub_1D1E689FC();
  v17 = sub_1D1E67E7C();
  (*(*(v17 - 8) + 56))(v5, 1, 1, v17);
  v18 = swift_allocObject();
  swift_weakInit();
  sub_1D1B22EB8(v12, v10, _s8IntervalVMa);
  v19 = (*(v23 + 80) + 40) & ~*(v23 + 80);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = v18;
  sub_1D1B22D58(v10, v20 + v19, _s8IntervalVMa);
  sub_1D17C71F0(0, 0, v5, &unk_1D1E98058, v20);

  return sub_1D1B23038(v12, _s8IntervalVMa);
}

uint64_t sub_1D1B20B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D1B20BC0, 0, 0);
}

uint64_t sub_1D1B20BC0()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D1B20C84, Strong, 0);
  }

  else
  {
    **(v0 + 40) = 1;
    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_1D1B20C84()
{
  v1 = *(v0 + 64);
  sub_1D1B20D1C(*(v0 + 56));

  return MEMORY[0x1EEE6DFA0](sub_1D1B20CF4, 0, 0);
}

uint64_t sub_1D1B20D1C(uint64_t *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = _s8IntervalVMa(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5 - 8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v36 - v11;
  v13 = OBJC_IVAR____TtC13HomeDataModel24PhoenixMetricsAggregator_intervalBuffer;
  swift_beginAccess();
  v14 = *(v1 + v13);
  v15 = *(v14 + 16);

  if (v15 && (v16 = sub_1D171DF0C(a1), (v17 & 1) != 0))
  {
    v18 = *(*(v14 + 56) + 8 * v16);
  }

  else
  {
    v18 = MEMORY[0x1E69E7CC0];
  }

  if (sub_1D17C5014(a1, v18))
  {
  }

  sub_1D1B22EB8(a1, v12, _s8IntervalVMa);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v18 = sub_1D177F684(0, v18[2] + 1, 1, v18);
  }

  v21 = v18[2];
  v20 = v18[3];
  if (v21 >= v20 >> 1)
  {
    v18 = sub_1D177F684(v20 > 1, v21 + 1, 1, v18);
  }

  v18[2] = v21 + 1;
  sub_1D1B22D58(v12, v18 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v21, _s8IntervalVMa);
  if (qword_1EE07B800 != -1)
  {
    swift_once();
  }

  v22 = sub_1D1E6709C();
  __swift_project_value_buffer(v22, qword_1EE07B808);
  sub_1D1B22EB8(a1, v10, _s8IntervalVMa);
  v23 = sub_1D1E6707C();
  v24 = sub_1D1E6832C();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v38[0] = v36;
    *v25 = 136315394;
    v26 = sub_1D1E6940C();
    v28 = sub_1D1B1312C(v26, v27, v38);

    *(v25 + 4) = v28;
    *(v25 + 12) = 2080;
    v29 = sub_1D1B25F38();
    v31 = v30;
    sub_1D1B23038(v10, _s8IntervalVMa);
    v32 = sub_1D1B1312C(v29, v31, v38);

    *(v25 + 14) = v32;
    _os_log_impl(&dword_1D16EC000, v23, v24, "%s adding interval %s", v25, 0x16u);
    v33 = v36;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v33, -1, -1);
    MEMORY[0x1D3893640](v25, -1, -1);
  }

  else
  {

    sub_1D1B23038(v10, _s8IntervalVMa);
  }

  swift_beginAccess();
  v34 = *(v2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v37 = *(v2 + v13);
  *(v2 + v13) = 0x8000000000000000;
  sub_1D175654C(v18, a1, isUniquelyReferenced_nonNull_native);
  *(v2 + v13) = v37;
  return swift_endAccess();
}

uint64_t sub_1D1B2115C(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v78 - v7;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v9 = *(updated - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](updated);
  v84 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v85 = &v78 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v78 - v16;
  result = MEMORY[0x1EEE9AC00](v15);
  v20 = &v78 - v19;
  v21 = *(a1 + 16);
  if (v21 >= 2)
  {
    v80 = a2;
    v81 = v2;
    v82 = v8;
    v87 = MEMORY[0x1E69E7CC0];
    sub_1D178DB90(0, v21, 0);
    v79 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v22 = a1 + v79;
    v23 = v87;
    v86 = *(v9 + 72);
    do
    {
      sub_1D1B22EB8(v22, v20, type metadata accessor for StateSnapshot.UpdateType);
      sub_1D1B22EB8(v20, v17, type metadata accessor for StateSnapshot.UpdateType);
      v24 = "StateSnapshot.unknownHome";
      v25 = 25;
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          v26 = *v17;
          v27 = *(v17 + 1);
          v28 = v17[16];
          if (v28 <= 1)
          {
            if (v17[16])
            {
              sub_1D1AC373C(v26, v27, 1u);
              v24 = "StateSnapshot.characteristics.loadingStates";
              v25 = 43;
            }

            else
            {
              sub_1D1AC373C(v26, v27, 0);
              v24 = "StateSnapshot.characteristics.refresh";
              v25 = 37;
            }
          }

          else if (v28 == 2)
          {
            sub_1D1AC373C(v26, v27, 2u);
            v24 = "StateSnapshot.characteristics.overrideValues";
            v25 = 44;
          }

          else if (v28 == 3)
          {
            sub_1D1AC373C(v26, v27, 3u);
            v24 = "StateSnapshot.characteristics.localOverrideValues";
            v25 = 49;
          }

          else
          {
            sub_1D1AC373C(v26, v27, 4u);
            v24 = "StateSnapshot.characteristics.statelessValues";
            v25 = 45;
          }

          break;
        case 2u:
          sub_1D1B23038(v17, type metadata accessor for StateSnapshot.UpdateType);
          v24 = "StateSnapshot.actionSets";
          v25 = 24;
          break;
        case 3u:
          sub_1D1B23038(v17, type metadata accessor for StateSnapshot.UpdateType);
          v24 = "StateSnapshot.userActionPredictions";
          v25 = 35;
          break;
        case 4u:
          v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A280, &qword_1D1E98090);

          v32 = sub_1D1E66A7C();
          (*(*(v32 - 8) + 8))(v17, v32);
          v24 = "StateSnapshot.softwareUpdate";
          v25 = 28;
          break;
        case 5u:
          v36 = sub_1D1E66A7C();
          (*(*(v36 - 8) + 8))(v17, v36);
          v24 = "StateSnapshot.softwareUpdateOverride";
          v25 = 36;
          break;
        case 6u:
          v29 = *&v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A768, &unk_1D1E9C690) + 48)];

          v30 = sub_1D1E66A7C();
          (*(*(v30 - 8) + 8))(v17, v30);
          v24 = "StateSnapshot.profiles";
          v25 = 22;
          break;
        case 7u:
          v38 = *&v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9C8, &unk_1D1E98080) + 48)];

          v39 = sub_1D1E66A7C();
          (*(*(v39 - 8) + 8))(v17, v39);
          v24 = "StateSnapshot.lightProfile";
          v25 = 26;
          break;
        case 8u:
          v24 = "StateSnapshot.snapshotStream";
          v25 = 28;
          break;
        case 9u:

          v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AD58, &unk_1D1EA1810);
          sub_1D1B23038(&v17[*(v37 + 48)], type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
          v24 = "StateSnapshot.adaptiveTemperatureSetting";
          v25 = 40;
          break;
        case 0xAu:
          sub_1D1B23038(v17, type metadata accessor for StateSnapshot.UpdateType);
          v24 = "StateSnapshot.adaptiveTemperatureSleepSchedule";
          v25 = 46;
          break;
        case 0xBu:
          sub_1D1B23038(v17, type metadata accessor for StateSnapshot.UpdateType);
          v24 = "StateSnapshot.cleanEnergySetting";
          v25 = 32;
          break;
        case 0xCu:
          v33 = *v17;

          v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A740, &unk_1D1E96B20) + 48);
          v35 = sub_1D1E66A7C();
          (*(*(v35 - 8) + 8))(&v17[v34], v35);
          v24 = "StateSnapshot.matterDevices";
          v25 = 27;
          break;
        case 0xDu:
          break;
        default:
          sub_1D1B23038(v17, type metadata accessor for StateSnapshot.UpdateType);
          v24 = "StateSnapshot.all";
          v25 = 17;
          break;
      }

      sub_1D1B23038(v20, type metadata accessor for StateSnapshot.UpdateType);
      v87 = v23;
      v41 = *(v23 + 16);
      v40 = *(v23 + 24);
      if (v41 >= v40 >> 1)
      {
        sub_1D178DB90((v40 > 1), v41 + 1, 1);
        v23 = v87;
      }

      *(v23 + 16) = v41 + 1;
      v42 = v23 + 24 * v41;
      *(v42 + 32) = v24;
      *(v42 + 40) = v25;
      *(v42 + 48) = 2;
      v22 += v86;
      --v21;
    }

    while (v21);
    v43 = v80;
    v44 = *(v80 + 16);
    v45 = MEMORY[0x1E69E7CC0];
    if (v44)
    {
      v87 = MEMORY[0x1E69E7CC0];
      sub_1D178DB90(0, v44, 0);
      v46 = v43 + v79;
      v45 = v87;
      do
      {
        v47 = v85;
        sub_1D1B22EB8(v46, v85, type metadata accessor for StateSnapshot.UpdateType);
        sub_1D1B22EB8(v47, v84, type metadata accessor for StateSnapshot.UpdateType);
        v48 = 25;
        v49 = "StateSnapshot.unknownHome";
        switch(swift_getEnumCaseMultiPayload())
        {
          case 1u:
            v50 = *v84;
            v51 = *(v84 + 8);
            v52 = *(v84 + 16);
            if (v52 <= 1)
            {
              if (*(v84 + 16))
              {
                sub_1D1AC373C(v50, v51, 1u);
                v49 = "StateSnapshot.characteristics.loadingStates";
                v48 = 43;
              }

              else
              {
                sub_1D1AC373C(v50, v51, 0);
                v49 = "StateSnapshot.characteristics.refresh";
                v48 = 37;
              }
            }

            else if (v52 == 2)
            {
              sub_1D1AC373C(v50, v51, 2u);
              v49 = "StateSnapshot.characteristics.overrideValues";
              v48 = 44;
            }

            else if (v52 == 3)
            {
              sub_1D1AC373C(v50, v51, 3u);
              v49 = "StateSnapshot.characteristics.localOverrideValues";
              v48 = 49;
            }

            else
            {
              sub_1D1AC373C(v50, v51, 4u);
              v49 = "StateSnapshot.characteristics.statelessValues";
              v48 = 45;
            }

            break;
          case 2u:
            sub_1D1B23038(v84, type metadata accessor for StateSnapshot.UpdateType);
            v49 = "StateSnapshot.actionSets";
            v48 = 24;
            break;
          case 3u:
            sub_1D1B23038(v84, type metadata accessor for StateSnapshot.UpdateType);
            v49 = "StateSnapshot.userActionPredictions";
            v48 = 35;
            break;
          case 4u:
            v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A280, &qword_1D1E98090);
            v58 = v84;

            v59 = sub_1D1E66A7C();
            (*(*(v59 - 8) + 8))(v58, v59);
            v49 = "StateSnapshot.softwareUpdate";
            v48 = 28;
            break;
          case 5u:
            v64 = sub_1D1E66A7C();
            (*(*(v64 - 8) + 8))(v84, v64);
            v49 = "StateSnapshot.softwareUpdateOverride";
            v48 = 36;
            break;
          case 6u:
            v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A768, &unk_1D1E9C690);
            v54 = v84;
            v55 = *(v84 + *(v53 + 48));

            v56 = sub_1D1E66A7C();
            (*(*(v56 - 8) + 8))(v54, v56);
            v49 = "StateSnapshot.profiles";
            v48 = 22;
            break;
          case 7u:
            v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9C8, &unk_1D1E98080);
            v68 = v84;
            v69 = *(v84 + *(v67 + 48));

            v70 = sub_1D1E66A7C();
            (*(*(v70 - 8) + 8))(v68, v70);
            v49 = "StateSnapshot.lightProfile";
            v48 = 26;
            break;
          case 8u:
            v49 = "StateSnapshot.snapshotStream";
            v48 = 28;
            break;
          case 9u:
            v65 = v84;

            v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AD58, &unk_1D1EA1810);
            sub_1D1B23038(v65 + *(v66 + 48), type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
            v49 = "StateSnapshot.adaptiveTemperatureSetting";
            v48 = 40;
            break;
          case 0xAu:
            sub_1D1B23038(v84, type metadata accessor for StateSnapshot.UpdateType);
            v49 = "StateSnapshot.adaptiveTemperatureSleepSchedule";
            v48 = 46;
            break;
          case 0xBu:
            sub_1D1B23038(v84, type metadata accessor for StateSnapshot.UpdateType);
            v49 = "StateSnapshot.cleanEnergySetting";
            v48 = 32;
            break;
          case 0xCu:
            v60 = v84;
            v61 = *v84;

            v62 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A740, &unk_1D1E96B20) + 48);
            v63 = sub_1D1E66A7C();
            (*(*(v63 - 8) + 8))(v60 + v62, v63);
            v49 = "StateSnapshot.matterDevices";
            v48 = 27;
            break;
          case 0xDu:
            break;
          default:
            sub_1D1B23038(v84, type metadata accessor for StateSnapshot.UpdateType);
            v49 = "StateSnapshot.all";
            v48 = 17;
            break;
        }

        sub_1D1B23038(v85, type metadata accessor for StateSnapshot.UpdateType);
        v87 = v45;
        v72 = *(v45 + 16);
        v71 = *(v45 + 24);
        if (v72 >= v71 >> 1)
        {
          sub_1D178DB90((v71 > 1), v72 + 1, 1);
          v45 = v87;
        }

        *(v45 + 16) = v72 + 1;
        v73 = v45 + 24 * v72;
        *(v73 + 32) = v49;
        *(v73 + 40) = v48;
        *(v73 + 48) = 2;
        v46 += v86;
        --v44;
      }

      while (v44);
    }

    v74 = sub_1D1E67E7C();
    v75 = v82;
    (*(*(v74 - 8) + 56))(v82, 1, 1, v74);
    v76 = swift_allocObject();
    swift_weakInit();
    v77 = swift_allocObject();
    v77[2] = 0;
    v77[3] = 0;
    v77[4] = v76;
    v77[5] = v23;
    v77[6] = v45;
    sub_1D17C71F0(0, 0, v75, &unk_1D1E98070, v77);
  }

  return result;
}

uint64_t sub_1D1B21DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a1;
  v6[6] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D1B21DE4, 0, 0);
}

uint64_t sub_1D1B21DE4()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 72) = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D1B21EA8, Strong, 0);
  }

  else
  {
    **(v0 + 40) = 1;
    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_1D1B21EA8()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  v4 = OBJC_IVAR____TtC13HomeDataModel24PhoenixMetricsAggregator_batchEvents;
  v5 = *(v2 + OBJC_IVAR____TtC13HomeDataModel24PhoenixMetricsAggregator_batchEvents);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v4) = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_1D177F424(0, *(v5 + 2) + 1, 1, v5);
    *(v2 + v4) = v5;
  }

  v8 = *(v5 + 2);
  v7 = *(v5 + 3);
  if (v8 >= v7 >> 1)
  {
    v5 = sub_1D177F424((v7 > 1), v8 + 1, 1, v5);
  }

  v9 = v0[9];
  v10 = *(v0 + 7);
  *(v5 + 2) = v8 + 1;
  *&v5[16 * v8 + 32] = v10;
  *(v2 + v4) = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D1B21FB8, 0, 0);
}

uint64_t sub_1D1B21FE0(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v6 = *(*(v5 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = v49 - v8;
  v10 = *(a1 + 16);
  if (v10 >= 2)
  {
    v49[0] = a2;
    v49[1] = v2;
    v50 = v9;
    v51 = MEMORY[0x1E69E7CC0];
    sub_1D178DB90(0, v10, 0);
    v11 = (a1 + 48);
    v12 = v51;
    v13 = "MatterStateSnapshot.devicesWithReads";
    do
    {
      v15 = *v11;
      v11 += 24;
      v14 = v15;
      v16 = v15 == 3;
      if (v15 == 3)
      {
        v17 = "MatterStateSnapshot.snapshotStreamDisabled";
      }

      else
      {
        v17 = "MatterStateSnapshot.all";
      }

      if (v16)
      {
        v18 = 42;
      }

      else
      {
        v18 = 23;
      }

      if (v14 == 2)
      {
        v17 = v13;
        v18 = 36;
      }

      if (v14)
      {
        v19 = "MatterStateSnapshot.devices";
      }

      else
      {
        v19 = "MatterStateSnapshot.home";
      }

      if (v14)
      {
        v20 = 27;
      }

      else
      {
        v20 = 24;
      }

      if (v14 <= 1)
      {
        v21 = v19;
      }

      else
      {
        v21 = v17;
      }

      if (v14 <= 1)
      {
        v22 = v20;
      }

      else
      {
        v22 = v18;
      }

      v51 = v12;
      v24 = *(v12 + 16);
      v23 = *(v12 + 24);
      if (v24 >= v23 >> 1)
      {
        v26 = v13;
        sub_1D178DB90((v23 > 1), v24 + 1, 1);
        v13 = v26;
        v12 = v51;
      }

      *(v12 + 16) = v24 + 1;
      v25 = v12 + 24 * v24;
      *(v25 + 32) = v21;
      *(v25 + 40) = v22;
      *(v25 + 48) = 2;
      --v10;
    }

    while (v10);
    v27 = v49[0];
    v28 = *(v49[0] + 16);
    v29 = MEMORY[0x1E69E7CC0];
    if (v28)
    {
      v51 = MEMORY[0x1E69E7CC0];
      sub_1D178DB90(0, v28, 0);
      v30 = (v27 + 48);
      v29 = v51;
      v31 = "MatterStateSnapshot.devicesWithReads";
      do
      {
        v33 = *v30;
        v30 += 24;
        v32 = v33;
        v34 = v33 == 3;
        if (v33 == 3)
        {
          v35 = "MatterStateSnapshot.snapshotStreamDisabled";
        }

        else
        {
          v35 = "MatterStateSnapshot.all";
        }

        if (v34)
        {
          v36 = 42;
        }

        else
        {
          v36 = 23;
        }

        if (v32 == 2)
        {
          v35 = v31;
          v36 = 36;
        }

        if (v32)
        {
          v37 = "MatterStateSnapshot.devices";
        }

        else
        {
          v37 = "MatterStateSnapshot.home";
        }

        if (v32)
        {
          v38 = 27;
        }

        else
        {
          v38 = 24;
        }

        if (v32 <= 1)
        {
          v39 = v37;
        }

        else
        {
          v39 = v35;
        }

        if (v32 <= 1)
        {
          v40 = v38;
        }

        else
        {
          v40 = v36;
        }

        v51 = v29;
        v42 = *(v29 + 16);
        v41 = *(v29 + 24);
        if (v42 >= v41 >> 1)
        {
          v44 = v31;
          sub_1D178DB90((v41 > 1), v42 + 1, 1);
          v31 = v44;
          v29 = v51;
        }

        *(v29 + 16) = v42 + 1;
        v43 = v29 + 24 * v42;
        *(v43 + 32) = v39;
        *(v43 + 40) = v40;
        *(v43 + 48) = 2;
        --v28;
      }

      while (v28);
    }

    v45 = sub_1D1E67E7C();
    v46 = v50;
    (*(*(v45 - 8) + 56))(v50, 1, 1, v45);
    v47 = swift_allocObject();
    swift_weakInit();
    v48 = swift_allocObject();
    v48[2] = 0;
    v48[3] = 0;
    v48[4] = v47;
    v48[5] = v12;
    v48[6] = v29;
    sub_1D17C71F0(0, 0, v46, &unk_1D1E98048, v48);
  }

  return result;
}

uint64_t sub_1D1B22394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a1;
  v6[6] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D1B223B8, 0, 0);
}

uint64_t sub_1D1B223B8()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 72) = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D1B2247C, Strong, 0);
  }

  else
  {
    **(v0 + 40) = 1;
    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_1D1B2247C()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  v4 = OBJC_IVAR____TtC13HomeDataModel24PhoenixMetricsAggregator_batchEvents;
  v5 = *(v2 + OBJC_IVAR____TtC13HomeDataModel24PhoenixMetricsAggregator_batchEvents);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v4) = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_1D177F424(0, *(v5 + 2) + 1, 1, v5);
    *(v2 + v4) = v5;
  }

  v8 = *(v5 + 2);
  v7 = *(v5 + 3);
  if (v8 >= v7 >> 1)
  {
    v5 = sub_1D177F424((v7 > 1), v8 + 1, 1, v5);
  }

  v9 = v0[9];
  v10 = *(v0 + 7);
  *(v5 + 2) = v8 + 1;
  *&v5[16 * v8 + 32] = v10;
  *(v2 + v4) = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D1B23208, 0, 0);
}

uint64_t sub_1D1B2258C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D1A44134;

  return v7(a1);
}

id sub_1D1B22684(__int128 *a1)
{
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v1 = sub_1D1B1D4B0();
  sub_1D1B1D814(v1);
  return v1;
}

uint64_t type metadata accessor for PhoenixMetricsAggregator()
{
  result = qword_1EE07C148;
  if (!qword_1EE07C148)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D1B2275C()
{
  result = sub_1D1E68A4C();
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

uint64_t sub_1D1B2283C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D17C4BFC;

  return sub_1D1B1E850(a1, v4, v5, v6);
}

uint64_t sub_1D1B228F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D17C4CF0;

  return sub_1D1B1EB98(a1, v4, v5, v6, v7, v8);
}

uint64_t block_copy_helper_45(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1D1B22ADC()
{
  result = qword_1EC64AD28;
  if (!qword_1EC64AD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64AD28);
  }

  return result;
}

unint64_t sub_1D1B22B30()
{
  result = qword_1EE07A020;
  if (!qword_1EE07A020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE07A020);
  }

  return result;
}

uint64_t sub_1D1B22B84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AD30, &qword_1D1E98018);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D1B22BF4()
{
  result = qword_1EC64AD40;
  if (!qword_1EC64AD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64AD40);
  }

  return result;
}

uint64_t sub_1D1B22C48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D1B22C90(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D17C4CF0;

  return sub_1D1B22394(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1D1B22D58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1B22DC0(uint64_t a1)
{
  v4 = *(_s8IntervalVMa(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D17C4CF0;

  return sub_1D1B20B9C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1D1B22EB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_36Tm_0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D1B22F70(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D17C4CF0;

  return sub_1D1B21DC0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1D1B23038(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1B23098(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D17C4CF0;

  return sub_1D17C914C(a1, v5);
}

uint64_t sub_1D1B23150(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D17C4BFC;

  return sub_1D17C914C(a1, v5);
}

uint64_t sub_1D1B2320C()
{
  v1 = v0;
  v2 = *(v0 + 48);
  v3 = v2 + 64;
  v4 = 1 << *(v2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v2 + 64);
  result = sub_1D1B2AA10(v1, v35);
  v8 = 0;
  v9 = 0;
  v10 = (v4 + 63) >> 6;
  v11 = MEMORY[0x1E69E7CC0];
  v32 = v2;
  while (v6)
  {
LABEL_9:
    v13 = __clz(__rbit64(v6)) | (v8 << 6);
    v14 = *(v2 + 56);
    v15 = *(v2 + 48) + 16 * v13;
    v16 = *(v15 + 8);
    v17 = *(v14 + 8 * v13);
    v18 = *(v17 + 16);
    if (v18)
    {
      v33 = v9;
      v34 = *(v15 + 8);
      v35[0] = v11;

      result = sub_1D178D4BC(0, v18, 0);
      v11 = v35[0];
      v19 = (v17 + 32);
      v20 = *(v35[0] + 16);
      do
      {
        v22 = *v19;
        v19 += 2;
        v21 = v22;
        v35[0] = v11;
        v23 = *(v11 + 24);
        v24 = v20 + 1;
        if (v20 >= v23 >> 1)
        {
          result = sub_1D178D4BC((v23 > 1), v20 + 1, 1);
          v11 = v35[0];
        }

        *(v11 + 16) = v24;
        *(v11 + 8 * v20++ + 32) = v21;
        --v18;
      }

      while (v18);
      v2 = v32;
      v9 = v33;
LABEL_16:
      v27 = 0;
      v28 = 32;
      do
      {
        v29 = *(v11 + v28);
        v30 = __OFADD__(v27, v29);
        v27 += v29;
        if (v30)
        {
          __break(1u);
          goto LABEL_26;
        }

        v28 += 8;
        --v24;
      }

      while (v24);

      v11 = MEMORY[0x1E69E7CC0];
      if (v27 < 0)
      {
        goto LABEL_27;
      }

      goto LABEL_20;
    }

    v25 = *(v14 + 8 * v13);
    v24 = *(v11 + 16);
    v26 = *(v15 + 8);

    if (v24)
    {
      goto LABEL_16;
    }

    v27 = 0;
LABEL_20:
    v6 &= v6 - 1;
    v31 = __CFADD__(v9, v27);
    v9 += v27;
    if (v31)
    {
      goto LABEL_28;
    }
  }

  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v10)
    {

      return v9;
    }

    v6 = *(v3 + 8 * v12);
    ++v8;
    if (v6)
    {
      v8 = v12;
      goto LABEL_9;
    }
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

char *sub_1D1B23438(uint64_t a1)
{
  v4 = sub_1D1E6786C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D1E65F4C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D1E65F8C();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  sub_1D1E65F7C();
  (*(v9 + 16))(v12, a1, v8);
  sub_1D1E65F5C();
  v16 = *(v1 + 16);
  v24[0] = *v1;
  v24[1] = v16;
  v24[2] = *(v1 + 32);
  v25 = *(v1 + 48);
  sub_1D1B2AB30();
  v17 = sub_1D1E65F6C();
  if (!v2)
  {
    v19 = v17;
    v20 = v18;
    sub_1D1E6785C();
    v21 = sub_1D1E6782C();
    if (v22)
    {
      v7 = v21;
      sub_1D174E7C4(v19, v20);

      return v7;
    }

    sub_1D1B22BF4();
    swift_allocError();
    swift_willThrow();
    sub_1D174E7C4(v19, v20);
  }

  return v7;
}

double sub_1D1B2364C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = _s8IntervalVMa(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v28 = a1;
    v29 = a3;
    *&v31[0] = MEMORY[0x1E69E7CC0];
    sub_1D178DB70(0, v11, 0);
    v12 = *&v31[0];
    v13 = *(v7 + 80);
    v27[1] = a2;
    v14 = a2 + ((v13 + 32) & ~v13);
    v30 = *(v7 + 72);
    do
    {
      sub_1D1B2AA48(v14, v10, _s8IntervalVMa);
      v15 = *(v6 + 24);
      v16 = &v10[*(v6 + 20)];
      v17 = sub_1D1E68A1C();
      v19 = v18;
      sub_1D1B2AAB0(v10, _s8IntervalVMa);
      *&v31[0] = v12;
      v21 = v12[2];
      v20 = v12[3];
      if (v21 >= v20 >> 1)
      {
        sub_1D178DB70((v20 > 1), v21 + 1, 1);
        v12 = *&v31[0];
      }

      v12[2] = v21 + 1;
      v22 = &v12[2 * v21];
      v22[4] = v17;
      v22[5] = v19;
      v14 += v30;
      --v11;
    }

    while (v11);

    a1 = v28;
    a3 = v29;
  }

  else
  {

    v12 = MEMORY[0x1E69E7CC0];
  }

  sub_1D1B2AA48(a1, a3, type metadata accessor for PhoenixMetricsAggregator.IntervalKey);
  sub_1D1B2BACC(v12, v31);

  sub_1D1B2AAB0(a1, type metadata accessor for PhoenixMetricsAggregator.IntervalKey);
  v23 = a3 + *(_s8IntervalV11AggregationVMa(0) + 20);
  v24 = v31[3];
  *(v23 + 32) = v31[2];
  *(v23 + 48) = v24;
  *(v23 + 64) = v31[4];
  *(v23 + 80) = v32;
  result = *v31;
  v26 = v31[1];
  *v23 = v31[0];
  *(v23 + 16) = v26;
  return result;
}

uint64_t PhoenixMetricsAggregator.HighSnapshotActivityAnalyticsEvent.init(totalSnapshotTime:aggregationInterval:maxSnapshotTime:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 481) = a8;
  *(v8 + 392) = a6;
  *(v8 + 400) = a7;
  *(v8 + 376) = a4;
  *(v8 + 384) = a5;
  *(v8 + 360) = a2;
  *(v8 + 368) = a3;
  *(v8 + 352) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D1B238C8, 0, 0);
}

uint64_t sub_1D1B238C8()
{
  v1 = v0[47];
  v2 = v0[48];
  v4 = v0[45];
  v3 = v0[46];
  v5 = [objc_opt_self() processInfo];
  v6 = [v5 processName];

  v7 = sub_1D1E6781C();
  v9 = v8;

  v0[51] = v7;
  v0[52] = v9;
  v10 = sub_1D1E6931C();
  v0[53] = v10;
  v0[54] = v11;
  v12 = v10 * 1000000000.0 + v11 * 0.000000001;
  v13 = sub_1D1E6931C();
  v0[55] = v13;
  v0[56] = v14;
  if (v12 / (v13 * 1000000000.0 + v14 * 0.000000001) <= 0.1)
  {
    v17 = v0[44];

    v17[5] = 0u;
    v17[6] = 0u;
    v17[3] = 0u;
    v17[4] = 0u;
    v17[1] = 0u;
    v17[2] = 0u;
    *v17 = 0u;
    v18 = v0[1];

    return v18();
  }

  else
  {
    sub_1D1E67E1C();
    v0[57] = sub_1D1E67E0C();
    v16 = sub_1D1E67D4C();

    return MEMORY[0x1EEE6DFA0](sub_1D1B23AAC, v16, v15);
  }
}

uint64_t sub_1D1B23AAC()
{
  v1 = *(v0 + 456);

  sub_1D1B25844((v0 + 16));
  *(v0 + 464) = *(v0 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1D1B23B5C, 0, 0);
}

uint64_t sub_1D1B23B5C()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 368);
  result = sub_1D1E6931C();
  v5 = round((result * 1000000000.0 + v4 * 0.000000001) / 1000000.0);
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v5 <= -1.0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v5 >= 1.84467441e19)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v6 = *(v0 + 376);
  v7 = *(v0 + 384);
  result = sub_1D1E6931C();
  v9 = round((result * 1000000000.0 + v8 * 0.000000001) / 1000000.0);
  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v9 <= -1.0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v9 >= 1.84467441e19)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if ((*(v0 + 481) & 1) == 0)
  {
    v12 = *(v0 + 392);
    v13 = *(v0 + 400);
    result = sub_1D1E6931C();
    v15 = round((result * 1000000000.0 + v14 * 0.000000001) / 1000000.0);
    if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v15 > -1.0)
      {
        if (v15 < 1.84467441e19)
        {
          v10 = v15;
          v11 = *(v0 + 481);
          goto LABEL_13;
        }

LABEL_24:
        __break(1u);
        return result;
      }

LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v10 = 0;
  v11 = 1;
LABEL_13:
  v17 = *(v0 + 464);
  v16 = *(v0 + 472);
  v19 = *(v0 + 408);
  v18 = *(v0 + 416);
  v20 = *(v0 + 352);
  v21 = *(v0 + 432) * 0.000000001 + *(v0 + 424) * 1000000000.0;
  v22 = *(v0 + 448) * 0.000000001 + *(v0 + 440) * 1000000000.0;
  v23 = v11 & 1;
  *(v0 + 480) = v23;
  *(v0 + 128) = 0xD000000000000014;
  *(v0 + 136) = 0x80000001D1EC4E70;
  *(v0 + 144) = 0xD000000000000018;
  *(v0 + 152) = 0x80000001D1EC4E90;
  *(v0 + 160) = v5;
  v24 = v21 / v22;
  *(v0 + 168) = v9;
  *(v0 + 176) = v10;
  *(v0 + 184) = v23;
  *(v0 + 192) = v24;
  *(v0 + 200) = v17;
  *(v0 + 208) = v16;
  *(v0 + 216) = 1;
  *(v0 + 224) = v19;
  *(v0 + 232) = v18;
  v25 = *(v0 + 128);
  v26 = *(v0 + 160);
  v20[1] = *(v0 + 144);
  v20[2] = v26;
  *v20 = v25;
  v27 = *(v0 + 224);
  v29 = *(v0 + 176);
  v28 = *(v0 + 192);
  v20[5] = *(v0 + 208);
  v20[6] = v27;
  v20[3] = v29;
  v20[4] = v28;
  *(v0 + 16) = 0xD000000000000014;
  *(v0 + 24) = 0x80000001D1EC4E70;
  *(v0 + 32) = 0xD000000000000018;
  *(v0 + 40) = 0x80000001D1EC4E90;
  *(v0 + 48) = v5;
  *(v0 + 56) = v9;
  *(v0 + 64) = v10;
  *(v0 + 72) = v23;
  *(v0 + 80) = v24;
  *(v0 + 88) = v17;
  *(v0 + 96) = v16;
  *(v0 + 104) = 1;
  *(v0 + 112) = v19;
  *(v0 + 120) = v18;
  sub_1D1B22A14(v0 + 128, v0 + 240);
  sub_1D1B22A70(v0 + 16);
  v30 = *(v0 + 8);

  return v30();
}

uint64_t PhoenixMetricsAggregator.IntervalKey.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PhoenixMetricsAggregator.IntervalKey.homeId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PhoenixMetricsAggregator.IntervalKey(0) + 20);

  return sub_1D17783E0(v3, a1);
}

uint64_t PhoenixMetricsAggregator.IntervalKey.description.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = v16 - v3;
  v5 = sub_1D1E66A7C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PhoenixMetricsAggregator.IntervalKey(0);
  sub_1D17783E0(v0 + *(v10 + 20), v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1D1741A30(v4, &qword_1EC642590, qword_1D1E71260);
    v12 = *v0;
    v11 = v0[1];
  }

  else
  {
    (*(v6 + 32))(v9, v4, v5);
    v13 = v0[1];
    v16[0] = *v0;
    v16[1] = v13;

    MEMORY[0x1D3890F70](43, 0xE100000000000000);
    sub_1D1B293CC(&qword_1EE07B250, MEMORY[0x1E69695A8]);
    v14 = sub_1D1E68FAC();
    MEMORY[0x1D3890F70](v14);

    v12 = v16[0];
    (*(v6 + 8))(v9, v5);
  }

  return v12;
}

uint64_t PhoenixMetricsAggregator.IntervalKey.init(identifier:homeId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  v5 = a4 + *(type metadata accessor for PhoenixMetricsAggregator.IntervalKey(0) + 20);

  return sub_1D1778308(a3, v5);
}

uint64_t sub_1D1B24138()
{
  if (*v0)
  {
    result = 0x6449656D6F68;
  }

  else
  {
    result = 0x696669746E656469;
  }

  *v0;
  return result;
}

uint64_t sub_1D1B24174@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (sub_1D1E6904C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6449656D6F68 && a2 == 0xE600000000000000)
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

uint64_t sub_1D1B24254(uint64_t a1)
{
  v2 = sub_1D1B29378();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1B24290(uint64_t a1)
{
  v2 = sub_1D1B29378();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PhoenixMetricsAggregator.IntervalKey.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AD60, &qword_1D1E980E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1B29378();
  sub_1D1E6930C();
  v11 = *v3;
  v12 = v3[1];
  v15[15] = 0;
  sub_1D1E68ECC();
  if (!v2)
  {
    v13 = *(type metadata accessor for PhoenixMetricsAggregator.IntervalKey(0) + 20);
    v15[14] = 1;
    sub_1D1E66A7C();
    sub_1D1B293CC(&qword_1EE07B258, MEMORY[0x1E69695A8]);
    sub_1D1E68E5C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t PhoenixMetricsAggregator.IntervalKey.hash(into:)()
{
  v1 = sub_1D1E66A7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v14 - v8;
  v10 = *v0;
  v11 = v0[1];
  sub_1D1E678EC();
  v12 = type metadata accessor for PhoenixMetricsAggregator.IntervalKey(0);
  sub_1D17783E0(v0 + *(v12 + 20), v9);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    return sub_1D1E6922C();
  }

  (*(v2 + 32))(v5, v9, v1);
  sub_1D1E6922C();
  sub_1D1B293CC(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  return (*(v2 + 8))(v5, v1);
}

uint64_t PhoenixMetricsAggregator.IntervalKey.hashValue.getter()
{
  v1 = sub_1D1E66A7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v14 - v8;
  sub_1D1E6920C();
  v10 = *v0;
  v11 = v0[1];
  sub_1D1E678EC();
  v12 = type metadata accessor for PhoenixMetricsAggregator.IntervalKey(0);
  sub_1D17783E0(v0 + *(v12 + 20), v9);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v2 + 32))(v5, v9, v1);
    sub_1D1E6922C();
    sub_1D1B293CC(qword_1EE07DD78, MEMORY[0x1E69695A8]);
    sub_1D1E676EC();
    (*(v2 + 8))(v5, v1);
  }

  return sub_1D1E6926C();
}

uint64_t PhoenixMetricsAggregator.IntervalKey.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AD68, &qword_1D1E980E8);
  v22 = *(v8 - 8);
  v23 = v8;
  v9 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - v10;
  v12 = type metadata accessor for PhoenixMetricsAggregator.IntervalKey(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1B29378();
  sub_1D1E692FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = v12;
  v17 = v22;
  v25 = 0;
  *v15 = sub_1D1E68D2C();
  v15[1] = v18;
  sub_1D1E66A7C();
  v24 = 1;
  sub_1D1B293CC(&qword_1EC644B20, MEMORY[0x1E69695A8]);
  sub_1D1E68CBC();
  (*(v17 + 8))(v11, v23);
  sub_1D1778308(v7, v15 + *(v20 + 20));
  sub_1D1B2AA48(v15, v21, type metadata accessor for PhoenixMetricsAggregator.IntervalKey);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D1B2AAB0(v15, type metadata accessor for PhoenixMetricsAggregator.IntervalKey);
}

uint64_t sub_1D1B24B5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v16 - v11;
  v13 = *v2;
  v14 = v2[1];
  sub_1D1E678EC();
  sub_1D17783E0(v2 + *(a2 + 20), v12);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    return sub_1D1E6922C();
  }

  (*(v5 + 32))(v8, v12, v4);
  sub_1D1E6922C();
  sub_1D1B293CC(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  sub_1D1E676EC();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1D1B24D40(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v16 - v11;
  sub_1D1E6920C();
  v13 = *v2;
  v14 = v2[1];
  sub_1D1E678EC();
  sub_1D17783E0(v2 + *(a2 + 20), v12);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
    sub_1D1E6922C();
    sub_1D1B293CC(qword_1EE07DD78, MEMORY[0x1E69695A8]);
    sub_1D1E676EC();
    (*(v5 + 8))(v8, v4);
  }

  return sub_1D1E6926C();
}

uint64_t PhoenixMetricsAggregator.OpenInterval.hash(into:)()
{
  v1 = v0;
  v2 = sub_1D1E66A7C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v16 - v9;
  v11 = *v1;
  v12 = v1[1];
  sub_1D1E678EC();
  v13 = type metadata accessor for PhoenixMetricsAggregator.IntervalKey(0);
  sub_1D17783E0(v1 + *(v13 + 20), v10);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    sub_1D1E6922C();
    sub_1D1B293CC(qword_1EE07DD78, MEMORY[0x1E69695A8]);
    sub_1D1E676EC();
    (*(v3 + 8))(v6, v2);
  }

  v14 = *(type metadata accessor for PhoenixMetricsAggregator.OpenInterval(0) + 20);
  sub_1D1E68A2C();
  sub_1D1B293CC(&qword_1EC64AD70, MEMORY[0x1E69E87E8]);
  return sub_1D1E676EC();
}

uint64_t PhoenixMetricsAggregator.OpenInterval.hashValue.getter()
{
  v1 = v0;
  v2 = sub_1D1E66A7C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v16 - v9;
  sub_1D1E6920C();
  v11 = *v1;
  v12 = v1[1];
  sub_1D1E678EC();
  v13 = type metadata accessor for PhoenixMetricsAggregator.IntervalKey(0);
  sub_1D17783E0(v1 + *(v13 + 20), v10);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    sub_1D1E6922C();
    sub_1D1B293CC(qword_1EE07DD78, MEMORY[0x1E69695A8]);
    sub_1D1E676EC();
    (*(v3 + 8))(v6, v2);
  }

  v14 = *(type metadata accessor for PhoenixMetricsAggregator.OpenInterval(0) + 20);
  sub_1D1E68A2C();
  sub_1D1B293CC(&qword_1EC64AD70, MEMORY[0x1E69E87E8]);
  sub_1D1E676EC();
  return sub_1D1E6926C();
}

uint64_t sub_1D1B2541C(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = sub_1D1E66A7C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v19 - v12;
  sub_1D1E6920C();
  v14 = *v4;
  v15 = v4[1];
  sub_1D1E678EC();
  v16 = type metadata accessor for PhoenixMetricsAggregator.IntervalKey(0);
  sub_1D17783E0(v4 + *(v16 + 20), v13);
  if ((*(v6 + 48))(v13, 1, v5) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v6 + 32))(v9, v13, v5);
    sub_1D1E6922C();
    sub_1D1B293CC(qword_1EE07DD78, MEMORY[0x1E69695A8]);
    sub_1D1E676EC();
    (*(v6 + 8))(v9, v5);
  }

  v17 = *(a2 + 20);
  sub_1D1E68A2C();
  sub_1D1B293CC(&qword_1EC64AD70, MEMORY[0x1E69E87E8]);
  sub_1D1E676EC();
  return sub_1D1E6926C();
}

uint64_t PhoenixMetricsAggregator.HighSnapshotActivityAnalyticsEvent.eventName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PhoenixMetricsAggregator.HighSnapshotActivityAnalyticsEvent.domainPrefix.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t PhoenixMetricsAggregator.HighSnapshotActivityAnalyticsEvent.maxSnapshotTime.getter()
{
  result = *(v0 + 48);
  v2 = *(v0 + 56);
  return result;
}

uint64_t PhoenixMetricsAggregator.HighSnapshotActivityAnalyticsEvent.maxSnapshotTime.setter(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

uint64_t PhoenixMetricsAggregator.HighSnapshotActivityAnalyticsEvent.processName.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return v1;
}

uint64_t sub_1D1B25844@<X0>(uint64_t *a1@<X8>)
{
  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  v2 = qword_1EE07DC60;
  v3 = OBJC_IVAR____TtC13HomeDataModel9DataModel_homeManager;
  swift_beginAccess();
  v4 = *(v2 + v3);
  if (!v4)
  {
    v7 = 0;
    goto LABEL_7;
  }

  v5 = [v4 homes];
  sub_1D1821898();
  v6 = sub_1D1E67C1C();

  if (!(v6 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);

LABEL_7:
    swift_getKeyPath();
    sub_1D1B293CC(&qword_1EE07CFB0, type metadata accessor for DataModel);
    sub_1D1E66CAC();

    swift_beginAccess();
    result = sub_1D1B2B9EC();
    *a1 = v7;
    a1[1] = result;
    return result;
  }

  v7 = sub_1D1E6873C();

  if ((v7 & 0x8000000000000000) == 0)
  {
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1B25A18(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v4 = 0xD000000000000014;
    v5 = 0x4E737365636F7270;
    if (a1 == 8)
    {
      v5 = 0xD000000000000010;
    }

    if (a1 != 7)
    {
      v4 = v5;
    }

    v6 = 0xD00000000000001BLL;
    if (a1 != 5)
    {
      v6 = 0x664F7265626D756ELL;
    }

    if (a1 <= 6u)
    {
      return v6;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v1 = 0x6D614E746E657665;
    v2 = 0xD000000000000013;
    if (a1 != 3)
    {
      v2 = 0x7370616E5378616DLL;
    }

    if (a1 == 2)
    {
      v2 = 0xD000000000000011;
    }

    if (a1)
    {
      v1 = 0x72506E69616D6F64;
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

uint64_t sub_1D1B25BA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D1B2A6C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D1B25BC8(uint64_t a1)
{
  v2 = sub_1D1B29434();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1B25C04(uint64_t a1)
{
  v2 = sub_1D1B29434();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PhoenixMetricsAggregator.HighSnapshotActivityAnalyticsEvent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AD78, &qword_1D1E980F0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v18 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v26 = v1[3];
  v27 = v10;
  v11 = v1[4];
  v24 = v1[5];
  v25 = v11;
  v23 = v1[6];
  v22 = *(v1 + 56);
  v12 = v1[8];
  v13 = v1[9];
  v20 = v1[10];
  v21 = v13;
  v19 = *(v1 + 88);
  v14 = v1[13];
  v18[0] = v1[12];
  v18[1] = v14;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1B29434();
  sub_1D1E6930C();
  v38 = 0;
  v16 = v28;
  sub_1D1E68ECC();
  if (!v16)
  {
    v37 = 1;
    sub_1D1E68E0C();
    v36 = 2;
    sub_1D1E68F0C();
    v35 = 3;
    sub_1D1E68F0C();
    v34 = 4;
    sub_1D1E68E4C();
    v33 = 5;
    sub_1D1E68EEC();
    v32 = 6;
    sub_1D1E68F0C();
    v31 = 7;
    sub_1D1E68F0C();
    v30 = 8;
    sub_1D1E68EDC();
    v29 = 9;
    sub_1D1E68ECC();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1D1B25EF0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_1D1B25F38()
{
  MEMORY[0x1D3890F70](60, 0xE100000000000000);
  v0 = PhoenixMetricsAggregator.IntervalKey.description.getter();
  MEMORY[0x1D3890F70](v0);

  MEMORY[0x1D3890F70](8236, 0xE200000000000000);
  v1 = _s8IntervalVMa(0);
  v2 = *(v1 + 20);
  sub_1D1E68A2C();
  sub_1D1E68ABC();
  MEMORY[0x1D3890F70](45, 0xE100000000000000);
  v3 = *(v1 + 24);
  sub_1D1E68ABC();
  MEMORY[0x1D3890F70](61, 0xE100000000000000);
  sub_1D1E68A1C();
  sub_1D1E6931C();
  sub_1D1E6811C();
  MEMORY[0x1D3890F70](29549, 0xE200000000000000);
  MEMORY[0x1D3890F70](0, 0xE000000000000000);

  MEMORY[0x1D3890F70](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_1D1B260D4()
{
  *&v8 = 0;
  *(&v8 + 1) = 0xE000000000000000;
  sub_1D1E6884C();

  strcpy(v7, "[Aggregation-");
  HIWORD(v7[1]) = -4864;
  v1 = PhoenixMetricsAggregator.IntervalKey.description.getter();
  MEMORY[0x1D3890F70](v1);

  MEMORY[0x1D3890F70](0x7363697274656D2CLL, 0xE90000000000003ALL);
  v2 = (v0 + *(_s8IntervalV11AggregationVMa(0) + 20));
  v3 = v2[3];
  v9 = v2[2];
  v10 = v3;
  v11 = v2[4];
  v12 = *(v2 + 10);
  v4 = v2[1];
  v8 = *v2;
  v5 = sub_1D1B261E0();
  MEMORY[0x1D3890F70](v5);

  MEMORY[0x1D3890F70](93, 0xE100000000000000);
  return v7[0];
}

uint64_t sub_1D1B261E0()
{
  sub_1D1E6884C();
  MEMORY[0x1D3890F70](3826555, 0xE300000000000000);
  v3 = *v0;
  v1 = sub_1D1E68FAC();
  MEMORY[0x1D3890F70](v1);

  MEMORY[0x1D3890F70](0x3A6D75732CLL, 0xE500000000000000);
  v4 = *(v0 + 1);
  sub_1D1E68ABC();
  MEMORY[0x1D3890F70](0x3A6E696D2CLL, 0xE500000000000000);
  v5 = *(v0 + 3);
  sub_1D1E68ABC();
  MEMORY[0x1D3890F70](0x3A78616D2CLL, 0xE500000000000000);
  v6 = *(v0 + 5);
  sub_1D1E68ABC();
  MEMORY[0x1D3890F70](0x3A6776612CLL, 0xE500000000000000);
  v7 = *(v0 + 7);
  sub_1D1E68ABC();
  MEMORY[0x1D3890F70](0x3A7665647474732CLL, 0xE800000000000000);
  v8 = *(v0 + 9);
  sub_1D1E68ABC();
  MEMORY[0x1D3890F70](125, 0xE100000000000000);
  return 0;
}

uint64_t sub_1D1B263C4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64ADC8, &qword_1D1E988D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1B2AD9C();
  sub_1D1E6930C();
  v22 = 0;
  type metadata accessor for PhoenixMetricsAggregator.IntervalKey(0);
  sub_1D1B293CC(&qword_1EE07A300, type metadata accessor for PhoenixMetricsAggregator.IntervalKey);
  sub_1D1E68F1C();
  if (!v2)
  {
    v11 = (v3 + *(_s8IntervalV11AggregationVMa(0) + 20));
    v12 = v11[3];
    v18 = v11[2];
    v19 = v12;
    v20 = v11[4];
    v21 = *(v11 + 10);
    v13 = v11[1];
    v16 = *v11;
    v17 = v13;
    v15[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64ADD0, &qword_1D1E988D8);
    sub_1D17D8EA8(&qword_1EE079E58, &qword_1EC64ADD0, &qword_1D1E988D8);
    sub_1D1E68F1C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1D1B265F0()
{
  v1 = v0;
  v2 = sub_1D1E66A7C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v26 - v9;
  v11 = *v1;
  v12 = v1[1];
  sub_1D1E678EC();
  v13 = type metadata accessor for PhoenixMetricsAggregator.IntervalKey(0);
  sub_1D17783E0(v1 + *(v13 + 20), v10);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    sub_1D1E6922C();
    sub_1D1B293CC(qword_1EE07DD78, MEMORY[0x1E69695A8]);
    sub_1D1E676EC();
    (*(v3 + 8))(v6, v2);
  }

  v14 = (v1 + *(_s8IntervalV11AggregationVMa(0) + 20));
  v15 = *v14;
  v16 = v14[1];
  v17 = v14[2];
  v18 = v14[3];
  v19 = v14[4];
  v20 = v14[5];
  v21 = v14[6];
  v22 = v14[7];
  v24 = v14[8];
  v23 = v14[9];
  v26[0] = v14[10];
  v26[1] = v23;
  MEMORY[0x1D3892850](v15);
  sub_1D1E6938C();
  sub_1D1E6938C();
  sub_1D1E6938C();
  sub_1D1E6938C();
  return sub_1D1E6938C();
}

uint64_t sub_1D1B26868()
{
  v1 = v0;
  v2 = sub_1D1E66A7C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v26 - v9;
  sub_1D1E6920C();
  v11 = *v1;
  v12 = v1[1];
  sub_1D1E678EC();
  v13 = type metadata accessor for PhoenixMetricsAggregator.IntervalKey(0);
  sub_1D17783E0(v1 + *(v13 + 20), v10);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    sub_1D1E6922C();
    sub_1D1B293CC(qword_1EE07DD78, MEMORY[0x1E69695A8]);
    sub_1D1E676EC();
    (*(v3 + 8))(v6, v2);
  }

  v14 = (v1 + *(_s8IntervalV11AggregationVMa(0) + 20));
  v15 = *v14;
  v16 = v14[1];
  v17 = v14[2];
  v18 = v14[3];
  v19 = v14[4];
  v20 = v14[5];
  v21 = v14[6];
  v22 = v14[7];
  v23 = v14[8];
  v24 = v14[9];
  v26 = v14[10];
  MEMORY[0x1D3892850](v15);
  sub_1D1E6938C();
  sub_1D1E6938C();
  sub_1D1E6938C();
  sub_1D1E6938C();
  sub_1D1E6938C();
  return sub_1D1E6926C();
}

uint64_t sub_1D1B26AF0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = type metadata accessor for PhoenixMetricsAggregator.IntervalKey(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v27 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AE30, &qword_1D1E98918);
  v26 = *(v28 - 8);
  v7 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v9 = &v24 - v8;
  v10 = _s8IntervalV11AggregationVMa(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1B2AD9C();
  sub_1D1E692FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v24 = v10;
  v15 = v26;
  v16 = v13;
  LOBYTE(v29) = 0;
  sub_1D1B293CC(&qword_1EC64AE38, type metadata accessor for PhoenixMetricsAggregator.IntervalKey);
  v18 = v27;
  v17 = v28;
  sub_1D1E68D7C();
  sub_1D1B2B538(v18, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64ADD0, &qword_1D1E988D8);
  v35 = 1;
  sub_1D17D8EA8(&qword_1EC64AE40, &qword_1EC64ADD0, &qword_1D1E988D8);
  sub_1D1E68D7C();
  (*(v15 + 8))(v9, v17);
  v19 = v25;
  v20 = v16 + *(v24 + 20);
  v21 = v32;
  *(v20 + 32) = v31;
  *(v20 + 48) = v21;
  *(v20 + 64) = v33;
  *(v20 + 80) = v34;
  v22 = v30;
  *v20 = v29;
  *(v20 + 16) = v22;
  sub_1D1B2AA48(v16, v19, _s8IntervalV11AggregationVMa);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D1B2AAB0(v16, _s8IntervalV11AggregationVMa);
}

uint64_t sub_1D1B26E6C()
{
  v1 = v0;
  v2 = sub_1D1E66A7C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v18 - v9;
  v11 = *v1;
  v12 = v1[1];
  sub_1D1E678EC();
  v13 = type metadata accessor for PhoenixMetricsAggregator.IntervalKey(0);
  sub_1D17783E0(v1 + *(v13 + 20), v10);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    sub_1D1E6922C();
    sub_1D1B293CC(qword_1EE07DD78, MEMORY[0x1E69695A8]);
    sub_1D1E676EC();
    (*(v3 + 8))(v6, v2);
  }

  v14 = _s8IntervalVMa(0);
  v15 = *(v14 + 20);
  sub_1D1E68A2C();
  sub_1D1B293CC(&qword_1EC64AD70, MEMORY[0x1E69E87E8]);
  sub_1D1E676EC();
  v16 = v1 + *(v14 + 24);
  return sub_1D1E676EC();
}

uint64_t sub_1D1B270D0()
{
  v1 = v0;
  v2 = sub_1D1E66A7C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v18 - v9;
  sub_1D1E6920C();
  v11 = *v1;
  v12 = v1[1];
  sub_1D1E678EC();
  v13 = type metadata accessor for PhoenixMetricsAggregator.IntervalKey(0);
  sub_1D17783E0(v1 + *(v13 + 20), v10);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    sub_1D1E6922C();
    sub_1D1B293CC(qword_1EE07DD78, MEMORY[0x1E69695A8]);
    sub_1D1E676EC();
    (*(v3 + 8))(v6, v2);
  }

  v14 = _s8IntervalVMa(0);
  v15 = *(v14 + 20);
  sub_1D1E68A2C();
  sub_1D1B293CC(&qword_1EC64AD70, MEMORY[0x1E69E87E8]);
  sub_1D1E676EC();
  v16 = v1 + *(v14 + 24);
  sub_1D1E676EC();
  return sub_1D1E6926C();
}

uint64_t sub_1D1B27348()
{
  if (*v0)
  {
    result = 0x7363697274656DLL;
  }

  else
  {
    result = 7955819;
  }

  *v0;
  return result;
}

uint64_t sub_1D1B2737C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v5 || (sub_1D1E6904C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7363697274656DLL && a2 == 0xE700000000000000)
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

uint64_t sub_1D1B27458(uint64_t a1)
{
  v2 = sub_1D1B2AD9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1B27494(uint64_t a1)
{
  v2 = sub_1D1B2AD9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1B274D8(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = sub_1D1E66A7C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v29 - v12;
  sub_1D1E6920C();
  v14 = *v4;
  v15 = v4[1];
  sub_1D1E678EC();
  v16 = type metadata accessor for PhoenixMetricsAggregator.IntervalKey(0);
  sub_1D17783E0(v4 + *(v16 + 20), v13);
  if ((*(v6 + 48))(v13, 1, v5) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v6 + 32))(v9, v13, v5);
    sub_1D1E6922C();
    sub_1D1B293CC(qword_1EE07DD78, MEMORY[0x1E69695A8]);
    sub_1D1E676EC();
    (*(v6 + 8))(v9, v5);
  }

  v17 = (v4 + *(a2 + 20));
  v18 = *v17;
  v19 = v17[1];
  v20 = v17[2];
  v21 = v17[3];
  v22 = v17[4];
  v23 = v17[5];
  v24 = v17[6];
  v25 = v17[7];
  v26 = v17[8];
  v27 = v17[9];
  v29 = v17[10];
  MEMORY[0x1D3892850](v18);
  sub_1D1E6938C();
  sub_1D1E6938C();
  sub_1D1E6938C();
  sub_1D1E6938C();
  sub_1D1E6938C();
  return sub_1D1E6926C();
}

uint64_t sub_1D1B277A0(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = sub_1D1E66A7C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v20 - v12;
  sub_1D1E6920C();
  v14 = *v4;
  v15 = v4[1];
  sub_1D1E678EC();
  v16 = type metadata accessor for PhoenixMetricsAggregator.IntervalKey(0);
  sub_1D17783E0(v4 + *(v16 + 20), v13);
  if ((*(v6 + 48))(v13, 1, v5) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v6 + 32))(v9, v13, v5);
    sub_1D1E6922C();
    sub_1D1B293CC(qword_1EE07DD78, MEMORY[0x1E69695A8]);
    sub_1D1E676EC();
    (*(v6 + 8))(v9, v5);
  }

  v17 = *(a2 + 20);
  sub_1D1E68A2C();
  sub_1D1B293CC(&qword_1EC64AD70, MEMORY[0x1E69E87E8]);
  sub_1D1E676EC();
  v18 = v4 + *(a2 + 24);
  sub_1D1E676EC();
  return sub_1D1E6926C();
}

uint64_t sub_1D1B27A24(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AE00, &qword_1D1E98908);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1B2B0FC();
  sub_1D1E6930C();
  v12 = 0;
  sub_1D1E68EFC();
  if (!v1)
  {
    v11 = 1;
    sub_1D1E68EFC();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1D1B27BAC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x7265746C69665F31;
  }

  else
  {
    v4 = 0x746E756F635F30;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xEA00000000006465;
  }

  if (*a2)
  {
    v6 = 0x7265746C69665F31;
  }

  else
  {
    v6 = 0x746E756F635F30;
  }

  if (*a2)
  {
    v7 = 0xEA00000000006465;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1D1E6904C();
  }

  return v9 & 1;
}

uint64_t sub_1D1B27C58()
{
  v1 = *v0;
  sub_1D1E6920C();
  sub_1D1E678EC();

  return sub_1D1E6926C();
}

uint64_t sub_1D1B27CE0()
{
  *v0;
  sub_1D1E678EC();
}

uint64_t sub_1D1B27D54()
{
  v1 = *v0;
  sub_1D1E6920C();
  sub_1D1E678EC();

  return sub_1D1E6926C();
}

void sub_1D1B27DE4(uint64_t *a1@<X8>)
{
  v2 = 0x746E756F635F30;
  if (*v1)
  {
    v2 = 0x7265746C69665F31;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xEA00000000006465;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D1B27E28()
{
  if (*v0)
  {
    result = 0x7265746C69665F31;
  }

  else
  {
    result = 0x746E756F635F30;
  }

  *v0;
  return result;
}

uint64_t sub_1D1B27E74(uint64_t a1)
{
  v2 = sub_1D1B2B0FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1B27EB0(uint64_t a1)
{
  v2 = sub_1D1B2B0FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1B27EEC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D1B2AF54(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_1D1B27F18(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  return sub_1D1B27A24(a1);
}

uint64_t sub_1D1B27F34(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64ADD8, &qword_1D1E988E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1B2ADF0();
  sub_1D1E6930C();
  v11 = v3[1];
  v15 = *v3;
  v16 = v11;
  v17 = v3[2];
  v14 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64ADE0, &qword_1D1E988E8);
  sub_1D17D8EA8(qword_1EE079E60, &qword_1EC64ADE0, &qword_1D1E988E8);
  sub_1D1E68F1C();
  if (!v2)
  {
    *&v15 = *(v3 + 6);
    v14 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64ADE8, &qword_1D1E988F0);
    sub_1D1B2AE44();
    sub_1D1E68F1C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1D1B28124(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x73746E756F635F31;
  }

  else
  {
    v4 = 0x4D6F697461725F30;
  }

  if (v3)
  {
    v5 = 0xEE00736369727465;
  }

  else
  {
    v5 = 0xE800000000000000;
  }

  if (*a2)
  {
    v6 = 0x73746E756F635F31;
  }

  else
  {
    v6 = 0x4D6F697461725F30;
  }

  if (*a2)
  {
    v7 = 0xE800000000000000;
  }

  else
  {
    v7 = 0xEE00736369727465;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1D1E6904C();
  }

  return v9 & 1;
}

uint64_t sub_1D1B281D8()
{
  v1 = *v0;
  sub_1D1E6920C();
  sub_1D1E678EC();

  return sub_1D1E6926C();
}

uint64_t sub_1D1B28268()
{
  *v0;
  sub_1D1E678EC();
}

uint64_t sub_1D1B282E4()
{
  v1 = *v0;
  sub_1D1E6920C();
  sub_1D1E678EC();

  return sub_1D1E6926C();
}

uint64_t sub_1D1B2837C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1D1E68C2C();

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

void sub_1D1B283D8(uint64_t *a1@<X8>)
{
  v2 = 0x4D6F697461725F30;
  if (*v1)
  {
    v2 = 0x73746E756F635F31;
  }

  v3 = 0xEE00736369727465;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D1B28424()
{
  if (*v0)
  {
    result = 0x73746E756F635F31;
  }

  else
  {
    result = 0x4D6F697461725F30;
  }

  *v0;
  return result;
}

uint64_t sub_1D1B28478@<X0>(char *a1@<X8>)
{
  v2 = sub_1D1E68C2C();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1D1B284D8(uint64_t a1)
{
  v2 = sub_1D1B2ADF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1B28514(uint64_t a1)
{
  v2 = sub_1D1B2ADF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D1B28550@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D1B2B150(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t sub_1D1B285B8(void *a1, void *a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v27 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1D1E6904C() & 1) == 0)
  {
    goto LABEL_13;
  }

  v17 = *(type metadata accessor for PhoenixMetricsAggregator.IntervalKey(0) + 20);
  v18 = *(v13 + 48);
  sub_1D17783E0(a1 + v17, v16);
  sub_1D17783E0(a2 + v17, &v16[v18]);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_1D1741A30(v16, &qword_1EC642590, qword_1D1E71260);
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  sub_1D17783E0(v16, v12);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_9:
    sub_1D1741A30(v16, &qword_1EC642980, &unk_1D1E6E6E0);
LABEL_13:
    v25 = 0;
    return v25 & 1;
  }

  (*(v5 + 32))(v8, &v16[v18], v4);
  sub_1D1B293CC(&qword_1EE07D170, MEMORY[0x1E69695A8]);
  v20 = sub_1D1E6775C();
  v21 = *(v5 + 8);
  v21(v8, v4);
  v21(v12, v4);
  sub_1D1741A30(v16, &qword_1EC642590, qword_1D1E71260);
  if ((v20 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  v22 = _s8IntervalVMa(0);
  v23 = *(v22 + 20);
  if ((sub_1D1E68A0C() & 1) == 0)
  {
    goto LABEL_13;
  }

  v24 = *(v22 + 24);
  v25 = sub_1D1E68A0C();
  return v25 & 1;
}

uint64_t sub_1D1B28918(void *a1, void *a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v44 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v44 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1D1E6904C() & 1) == 0)
  {
    return 0;
  }

  v17 = *(type metadata accessor for PhoenixMetricsAggregator.IntervalKey(0) + 20);
  v18 = *(v13 + 48);
  sub_1D17783E0(a1 + v17, v16);
  sub_1D17783E0(a2 + v17, &v16[v18]);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_1D17783E0(v16, v12);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v16[v18], v4);
      sub_1D1B293CC(&qword_1EE07D170, MEMORY[0x1E69695A8]);
      v20 = sub_1D1E6775C();
      v21 = *(v5 + 8);
      v21(v8, v4);
      v21(v12, v4);
      sub_1D1741A30(v16, &qword_1EC642590, qword_1D1E71260);
      if ((v20 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_11;
    }

    (*(v5 + 8))(v12, v4);
LABEL_9:
    sub_1D1741A30(v16, &qword_1EC642980, &unk_1D1E6E6E0);
    return 0;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_9;
  }

  sub_1D1741A30(v16, &qword_1EC642590, qword_1D1E71260);
LABEL_11:
  v22 = *(_s8IntervalV11AggregationVMa(0) + 20);
  v23 = (a1 + v22);
  v24 = *(a1 + v22);
  v25 = (a2 + v22);
  if (v24 == *v25)
  {
    v26 = v23[3];
    v27 = v23[4];
    v28 = v23[5];
    v29 = v23[6];
    v30 = v23[7];
    v44[4] = v23[8];
    v44[5] = v30;
    v31 = v23[9];
    v44[2] = v23[10];
    v44[3] = v31;
    v32 = v25[3];
    v33 = v25[4];
    v34 = v25[5];
    v35 = v25[6];
    v36 = v25[7];
    v37 = v25[8];
    v38 = v25[9];
    v44[0] = v25[10];
    v44[1] = v38;
    v39 = v25[1];
    v40 = v25[2];
    v41 = v23[1];
    v42 = v23[2];
    if (sub_1D1E6937C() & 1) != 0 && (sub_1D1E6937C() & 1) != 0 && (sub_1D1E6937C() & 1) != 0 && (sub_1D1E6937C() & 1) != 0 && (sub_1D1E6937C())
    {
      return 1;
    }
  }

  return 0;
}

uint64_t _s13HomeDataModel24PhoenixMetricsAggregatorC12OpenIntervalV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v25 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1D1E6904C() & 1) == 0)
  {
    goto LABEL_10;
  }

  v17 = *(type metadata accessor for PhoenixMetricsAggregator.IntervalKey(0) + 20);
  v18 = *(v13 + 48);
  sub_1D17783E0(a1 + v17, v16);
  sub_1D17783E0(a2 + v17, &v16[v18]);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_1D1741A30(v16, &qword_1EC642590, qword_1D1E71260);
LABEL_12:
      v23 = *(type metadata accessor for PhoenixMetricsAggregator.OpenInterval(0) + 20);
      v20 = sub_1D1E68A0C();
      return v20 & 1;
    }

    goto LABEL_9;
  }

  sub_1D17783E0(v16, v12);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_9:
    sub_1D1741A30(v16, &qword_1EC642980, &unk_1D1E6E6E0);
    goto LABEL_10;
  }

  (*(v5 + 32))(v8, &v16[v18], v4);
  sub_1D1B293CC(&qword_1EE07D170, MEMORY[0x1E69695A8]);
  v21 = sub_1D1E6775C();
  v22 = *(v5 + 8);
  v22(v8, v4);
  v22(v12, v4);
  sub_1D1741A30(v16, &qword_1EC642590, qword_1D1E71260);
  if (v21)
  {
    goto LABEL_12;
  }

LABEL_10:
  v20 = 0;
  return v20 & 1;
}

BOOL _s13HomeDataModel24PhoenixMetricsAggregatorC11IntervalKeyV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v24 - v15;
  if (*a1 == *a2 && a1[1] == a2[1] || (v17 = sub_1D1E6904C(), result = 0, (v17 & 1) != 0))
  {
    v19 = *(type metadata accessor for PhoenixMetricsAggregator.IntervalKey(0) + 20);
    v20 = *(v13 + 48);
    sub_1D17783E0(a1 + v19, v16);
    sub_1D17783E0(a2 + v19, &v16[v20]);
    v21 = *(v5 + 48);
    if (v21(v16, 1, v4) == 1)
    {
      if (v21(&v16[v20], 1, v4) == 1)
      {
        sub_1D1741A30(v16, &qword_1EC642590, qword_1D1E71260);
        return 1;
      }
    }

    else
    {
      sub_1D17783E0(v16, v12);
      if (v21(&v16[v20], 1, v4) != 1)
      {
        (*(v5 + 32))(v8, &v16[v20], v4);
        sub_1D1B293CC(&qword_1EE07D170, MEMORY[0x1E69695A8]);
        v22 = sub_1D1E6775C();
        v23 = *(v5 + 8);
        v23(v8, v4);
        v23(v12, v4);
        sub_1D1741A30(v16, &qword_1EC642590, qword_1D1E71260);
        return (v22 & 1) != 0;
      }

      (*(v5 + 8))(v12, v4);
    }

    sub_1D1741A30(v16, &qword_1EC642980, &unk_1D1E6E6E0);
    return 0;
  }

  return result;
}

unint64_t sub_1D1B29378()
{
  result = qword_1EE07A318[0];
  if (!qword_1EE07A318[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE07A318);
  }

  return result;
}

uint64_t sub_1D1B293CC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D1B29434()
{
  result = qword_1EC64AD80;
  if (!qword_1EC64AD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64AD80);
  }

  return result;
}

unint64_t sub_1D1B29518(uint64_t a1)
{
  result = sub_1D1B22ADC();
  *(a1 + 8) = result;
  return result;
}

void sub_1D1B29568()
{
  sub_1D177868C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_1D1B29648(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_1D1B29690(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_11Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PhoenixMetricsAggregator.IntervalKey(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1D1E68A2C();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t __swift_store_extra_inhabitant_index_12Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for PhoenixMetricsAggregator.IntervalKey(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1D1E68A2C();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1D1B29940()
{
  result = type metadata accessor for PhoenixMetricsAggregator.IntervalKey(319);
  if (v1 <= 0x3F)
  {
    result = sub_1D1E68A2C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1D1B299E8()
{
  result = qword_1EC64AD90;
  if (!qword_1EC64AD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64AD90);
  }

  return result;
}

unint64_t sub_1D1B29A40()
{
  result = qword_1EC64AD98;
  if (!qword_1EC64AD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64AD98);
  }

  return result;
}

unint64_t sub_1D1B29AE0()
{
  result = qword_1EC64ADA8;
  if (!qword_1EC64ADA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64ADA8);
  }

  return result;
}

unint64_t sub_1D1B29B38()
{
  result = qword_1EC64ADB0;
  if (!qword_1EC64ADB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64ADB0);
  }

  return result;
}

unint64_t sub_1D1B29B90()
{
  result = qword_1EE07A308;
  if (!qword_1EE07A308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE07A308);
  }

  return result;
}

unint64_t sub_1D1B29BE8()
{
  result = qword_1EE07A310;
  if (!qword_1EE07A310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE07A310);
  }

  return result;
}

uint64_t sub_1D1B29C3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v168 = MEMORY[0x1E69E7CC0];
    sub_1D178D49C(0, v3, 0);
    v4 = v168;
    v5 = *(v168 + 16);
    v6 = v2 + 40;
    do
    {
      v7 = *(*v6 + 16);
      v8 = *(*(v6 - 8) + 16);
      v168 = v4;
      v9 = *(v4 + 24);
      if (v5 >= v9 >> 1)
      {
        sub_1D178D49C((v9 > 1), v5 + 1, 1);
        v4 = v168;
      }

      *(v4 + 16) = v5 + 1;
      *(v4 + 8 * v5 + 32) = -(1.0 - v7 / v8);
      v6 += 16;
      ++v5;
      --v3;
    }

    while (v3);
    v2 = a1;
  }

  sub_1D1B2BD3C(v4, &v168);

  v149 = v168;
  v150 = v170;
  v151 = v169;
  v10 = v171;
  v153 = *(v2 + 16);
  if (v153)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v154 = v2 + 32;
    v15 = MEMORY[0x1E69E7CC8];
LABEL_10:
    if (v14 >= *(v2 + 16))
    {
LABEL_110:
      __break(1u);
      goto LABEL_111;
    }

    v163 = v13;
    v165 = v15;
    v157 = v12;
    v158 = v14;
    v16 = (v154 + 16 * v14);
    v17 = *v16;
    v18 = v16[1];
    v19 = *(*v16 + 16);
    if (!v19)
    {
      v156 = v11;

      v35 = MEMORY[0x1E69E7CC8];
      v38 = *(v18 + 16);
      if (v38)
      {
        goto LABEL_43;
      }

      goto LABEL_71;
    }

    v20 = *v16;
    swift_bridgeObjectRetain_n();
    v161 = v18;

    if (*(v17 + 16))
    {
      v21 = *(v17 + 32);
      v22 = *(v17 + 40);
      v23 = *(v17 + 48);
      v24 = sub_1D1E6888C();
      v26 = v25;
      sub_1D17169C0(v11);
      v27 = MEMORY[0x1E69E7CC8];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30 = sub_1D171D2F0(v24, v26);
      v31 = *(v27 + 16);
      v32 = (v29 & 1) == 0;
      v33 = v31 + v32;
      if (!__OFADD__(v31, v32))
      {
        v34 = v29;
        if (*(MEMORY[0x1E69E7CC8] + 24) < v33)
        {
          sub_1D172F118(v33, isUniquelyReferenced_nonNull_native);
          v35 = v27;
          v36 = sub_1D171D2F0(v24, v26);
          if ((v34 & 1) != (v37 & 1))
          {
LABEL_111:
            result = sub_1D1E690FC();
            __break(1u);
            return result;
          }

          v30 = v36;
          if ((v34 & 1) == 0)
          {
            goto LABEL_24;
          }

LABEL_22:

          goto LABEL_26;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          v35 = MEMORY[0x1E69E7CC8];
          if (v29)
          {
            goto LABEL_22;
          }
        }

        else
        {
          sub_1D173CB00();
          v35 = v27;
          if (v34)
          {
            goto LABEL_22;
          }
        }

LABEL_24:
        *(v35 + 8 * (v30 >> 6) + 64) |= 1 << v30;
        v39 = (*(v35 + 48) + 16 * v30);
        *v39 = v24;
        v39[1] = v26;
        v40 = (*(v35 + 56) + 16 * v30);
        *v40 = 0;
        v40[1] = 0;
        v41 = *(v35 + 16);
        v42 = __OFADD__(v41, 1);
        v43 = v41 + 1;
        if (v42)
        {
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
          goto LABEL_110;
        }

        *(v35 + 16) = v43;
LABEL_26:
        v44 = (*(v35 + 56) + 16 * v30);
        if (!__OFADD__(*v44, 1))
        {
          ++*v44;
          if (v19 != 1)
          {
            v45 = (v17 + 72);
            v46 = 1;
            while (1)
            {
              if (v46 >= *(v17 + 16))
              {
                goto LABEL_100;
              }

              v47 = *(v45 - 2);
              v48 = *(v45 - 1);
              v49 = *v45;
              v50 = sub_1D1E6888C();
              v52 = v51;
              sub_1D17169C0(sub_1D1B2B8E4);
              v53 = swift_isUniquelyReferenced_nonNull_native();
              v166 = v35;
              v54 = sub_1D171D2F0(v50, v52);
              v56 = *(v35 + 16);
              v57 = (v55 & 1) == 0;
              v42 = __OFADD__(v56, v57);
              v58 = v56 + v57;
              if (v42)
              {
                goto LABEL_101;
              }

              v59 = v55;
              if (*(v35 + 24) < v58)
              {
                break;
              }

              if (v53)
              {
                goto LABEL_35;
              }

              v62 = v54;
              sub_1D173CB00();
              v54 = v62;
              v35 = v166;
              if ((v59 & 1) == 0)
              {
LABEL_38:
                *(v35 + 8 * (v54 >> 6) + 64) |= 1 << v54;
                v63 = (*(v35 + 48) + 16 * v54);
                *v63 = v50;
                v63[1] = v52;
                v64 = (*(v35 + 56) + 16 * v54);
                *v64 = 0;
                v64[1] = 0;
                v65 = *(v35 + 16);
                v42 = __OFADD__(v65, 1);
                v66 = v65 + 1;
                if (v42)
                {
                  goto LABEL_106;
                }

                *(v35 + 16) = v66;
                goto LABEL_40;
              }

LABEL_36:
              v61 = v54;

              v54 = v61;
LABEL_40:
              v67 = (*(v35 + 56) + 16 * v54);
              if (__OFADD__(*v67, 1))
              {
                goto LABEL_102;
              }

              ++v46;
              ++*v67;
              v45 += 24;
              if (v19 == v46)
              {
                goto LABEL_42;
              }
            }

            sub_1D172F118(v58, v53);
            v54 = sub_1D171D2F0(v50, v52);
            if ((v59 & 1) != (v60 & 1))
            {
              goto LABEL_111;
            }

LABEL_35:
            if ((v59 & 1) == 0)
            {
              goto LABEL_38;
            }

            goto LABEL_36;
          }

LABEL_42:
          swift_bridgeObjectRelease_n();
          v156 = sub_1D1B2B8E4;
          v18 = v161;
          v38 = *(v161 + 16);
          if (v38)
          {
LABEL_43:
            if (*(v18 + 16))
            {
              v68 = *(v18 + 32);
              v69 = *(v18 + 40);
              v70 = *(v18 + 48);
              v71 = sub_1D1E6888C();
              v73 = v72;
              sub_1D17169C0(v157);
              v74 = swift_isUniquelyReferenced_nonNull_native();
              v75 = sub_1D171D2F0(v71, v73);
              v77 = *(v35 + 16);
              v78 = (v76 & 1) == 0;
              v42 = __OFADD__(v77, v78);
              v79 = v77 + v78;
              if (!v42)
              {
                v80 = v76;
                if (*(v35 + 24) >= v79)
                {
                  if ((v74 & 1) == 0)
                  {
                    v83 = v75;
                    sub_1D173CB00();
                    v75 = v83;
                    if (v80)
                    {
                      goto LABEL_50;
                    }

                    goto LABEL_52;
                  }
                }

                else
                {
                  sub_1D172F118(v79, v74);
                  v75 = sub_1D171D2F0(v71, v73);
                  if ((v80 & 1) != (v81 & 1))
                  {
                    goto LABEL_111;
                  }
                }

                if (v80)
                {
LABEL_50:
                  v82 = v75;

                  v75 = v82;
LABEL_54:
                  v88 = *(v35 + 56) + 16 * v75;
                  v90 = *(v88 + 8);
                  v89 = (v88 + 8);
                  v91 = v90 + 1;
                  if (!__OFADD__(v90, 1))
                  {
                    *v89 = v91;
                    if (v38 != 1)
                    {
                      v92 = (v18 + 72);
                      v93 = 1;
                      while (1)
                      {
                        if (v93 >= *(v18 + 16))
                        {
                          goto LABEL_103;
                        }

                        v94 = *(v92 - 2);
                        v95 = *(v92 - 1);
                        v96 = *v92;
                        v97 = sub_1D1E6888C();
                        v99 = v98;
                        sub_1D17169C0(sub_1D1B2B8E4);
                        v100 = swift_isUniquelyReferenced_nonNull_native();
                        v167 = v35;
                        v101 = sub_1D171D2F0(v97, v99);
                        v103 = *(v35 + 16);
                        v104 = (v102 & 1) == 0;
                        v42 = __OFADD__(v103, v104);
                        v105 = v103 + v104;
                        if (v42)
                        {
                          goto LABEL_104;
                        }

                        v106 = v102;
                        if (*(v35 + 24) < v105)
                        {
                          break;
                        }

                        if (v100)
                        {
                          goto LABEL_63;
                        }

                        v109 = v101;
                        sub_1D173CB00();
                        v101 = v109;
                        v35 = v167;
                        if ((v106 & 1) == 0)
                        {
LABEL_66:
                          *(v35 + 8 * (v101 >> 6) + 64) |= 1 << v101;
                          v110 = (*(v35 + 48) + 16 * v101);
                          *v110 = v97;
                          v110[1] = v99;
                          v111 = (*(v35 + 56) + 16 * v101);
                          *v111 = 0;
                          v111[1] = 0;
                          v112 = *(v35 + 16);
                          v42 = __OFADD__(v112, 1);
                          v113 = v112 + 1;
                          if (v42)
                          {
                            goto LABEL_107;
                          }

                          *(v35 + 16) = v113;
                          goto LABEL_68;
                        }

LABEL_64:
                        v108 = v101;

                        v101 = v108;
LABEL_68:
                        v114 = *(v35 + 56) + 16 * v101;
                        v116 = *(v114 + 8);
                        v115 = (v114 + 8);
                        v117 = v116 + 1;
                        if (__OFADD__(v116, 1))
                        {
                          goto LABEL_105;
                        }

                        ++v93;
                        *v115 = v117;
                        v92 += 24;
                        if (v38 == v93)
                        {
                          goto LABEL_70;
                        }
                      }

                      sub_1D172F118(v105, v100);
                      v101 = sub_1D171D2F0(v97, v99);
                      if ((v106 & 1) != (v107 & 1))
                      {
                        goto LABEL_111;
                      }

LABEL_63:
                      if ((v106 & 1) == 0)
                      {
                        goto LABEL_66;
                      }

                      goto LABEL_64;
                    }

LABEL_70:
                    v157 = sub_1D1B2B8E4;
                    goto LABEL_71;
                  }

                  goto LABEL_105;
                }

LABEL_52:
                *(v35 + 8 * (v75 >> 6) + 64) |= 1 << v75;
                v84 = (*(v35 + 48) + 16 * v75);
                *v84 = v71;
                v84[1] = v73;
                v85 = (*(v35 + 56) + 16 * v75);
                *v85 = 0;
                v85[1] = 0;
                v86 = *(v35 + 16);
                v42 = __OFADD__(v86, 1);
                v87 = v86 + 1;
                if (v42)
                {
                  goto LABEL_107;
                }

                *(v35 + 16) = v87;
                goto LABEL_54;
              }

LABEL_104:
              __break(1u);
LABEL_105:
              __break(1u);
              goto LABEL_106;
            }

LABEL_103:
            __break(1u);
            goto LABEL_104;
          }

LABEL_71:
          v159 = v158 + 1;

          v118 = 0;
          v119 = 1 << *(v35 + 32);
          if (v119 < 64)
          {
            v120 = ~(-1 << v119);
          }

          else
          {
            v120 = -1;
          }

          v121 = v120 & *(v35 + 64);
          v122 = (v119 + 63) >> 6;
          v13 = v163;
          v160 = v122;
          if (!v121)
          {
            goto LABEL_75;
          }

          while (1)
          {
LABEL_79:
            v124 = (v118 << 10) | (16 * __clz(__rbit64(v121)));
            v125 = (*(v35 + 48) + v124);
            v126 = *v125;
            v127 = v125[1];
            v128 = (*(v35 + 56) + v124);
            v162 = v128[1];
            v164 = *v128;

            sub_1D17169C0(v13);
            v129 = v165;
            v130 = swift_isUniquelyReferenced_nonNull_native();
            v132 = sub_1D171D2F0(v126, v127);
            v133 = v165[2];
            v134 = (v131 & 1) == 0;
            v135 = v133 + v134;
            if (__OFADD__(v133, v134))
            {
              goto LABEL_108;
            }

            v136 = v131;
            if (v165[3] >= v135)
            {
              if (v130)
              {
                if ((v131 & 1) == 0)
                {
                  goto LABEL_88;
                }
              }

              else
              {
                sub_1D173C98C();
                v129 = v165;
                if ((v136 & 1) == 0)
                {
                  goto LABEL_88;
                }
              }
            }

            else
            {
              sub_1D172EE64(v135, v130);
              v137 = sub_1D171D2F0(v126, v127);
              if ((v136 & 1) != (v138 & 1))
              {
                goto LABEL_111;
              }

              v132 = v137;
              v129 = v165;
              if ((v136 & 1) == 0)
              {
LABEL_88:
                v129[(v132 >> 6) + 8] |= 1 << v132;
                v139 = (v129[6] + 16 * v132);
                *v139 = v126;
                v139[1] = v127;
                *(v129[7] + 8 * v132) = MEMORY[0x1E69E7CC0];
                v140 = v129[2];
                v42 = __OFADD__(v140, 1);
                v141 = v140 + 1;
                if (v42)
                {
                  goto LABEL_109;
                }

                v129[2] = v141;
                goto LABEL_90;
              }
            }

LABEL_90:
            v165 = v129;
            v142 = v129[7];
            v143 = *(v142 + 8 * v132);
            v144 = swift_isUniquelyReferenced_nonNull_native();
            *(v142 + 8 * v132) = v143;
            if ((v144 & 1) == 0)
            {
              v143 = sub_1D177F54C(0, *(v143 + 2) + 1, 1, v143);
              *(v142 + 8 * v132) = v143;
            }

            v146 = *(v143 + 2);
            v145 = *(v143 + 3);
            if (v146 >= v145 >> 1)
            {
              v143 = sub_1D177F54C((v145 > 1), v146 + 1, 1, v143);
              *(v142 + 8 * v132) = v143;
            }

            v121 &= v121 - 1;
            *(v143 + 2) = v146 + 1;
            v147 = &v143[16 * v146];
            *(v147 + 4) = v164;
            *(v147 + 5) = v162;
            v13 = sub_1D1716A4C;
            v122 = v160;
            if (!v121)
            {
              while (1)
              {
LABEL_75:
                v123 = v118 + 1;
                if (__OFADD__(v118, 1))
                {
                  __break(1u);
                  goto LABEL_100;
                }

                if (v123 >= v122)
                {
                  break;
                }

                v121 = *(v35 + 64 + 8 * v123);
                ++v118;
                if (v121)
                {
                  v118 = v123;
                  goto LABEL_79;
                }
              }

              v14 = v159;
              v11 = v156;
              v12 = v157;
              v2 = a1;
              v15 = v165;
              if (v159 != v153)
              {
                goto LABEL_10;
              }

              goto LABEL_98;
            }
          }
        }

LABEL_102:
        __break(1u);
        goto LABEL_103;
      }
    }

    else
    {
LABEL_100:
      __break(1u);
    }

LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  v11 = 0;
  v157 = 0;
  v13 = 0;
  v15 = MEMORY[0x1E69E7CC8];
LABEL_98:
  sub_1D17169C0(v11);
  sub_1D17169C0(v157);
  result = sub_1D17169C0(v13);
  *a2 = v149;
  *(a2 + 24) = v150;
  *(a2 + 8) = v151;
  *(a2 + 40) = v10;
  *(a2 + 48) = v15;
  return result;
}

uint64_t sub_1D1B2A6C0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D614E746E657665 && a2 == 0xE900000000000065;
  if (v4 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72506E69616D6F64 && a2 == 0xEC00000078696665 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D1EC4EB0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D1EC4ED0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7370616E5378616DLL && a2 == 0xEF656D6954746F68 || (sub_1D1E6904C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001D1EC4EF0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x664F7265626D756ELL && a2 == 0xED000073656D6F48 || (sub_1D1E6904C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D1EC4F10 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D1EC4F30 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x4E737365636F7270 && a2 == 0xEB00000000656D61)
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

uint64_t sub_1D1B2AA48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1B2AAB0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D1B2AB30()
{
  result = qword_1EE07A228;
  if (!qword_1EE07A228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE07A228);
  }

  return result;
}

uint64_t sub_1D1B2ABF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = type metadata accessor for PhoenixMetricsAggregator.IntervalKey(319);
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1D1B2AC80()
{
  if (!qword_1EE079E50)
  {
    v0 = _s14ElementMetricsVMa();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE079E50);
    }
  }
}

unint64_t sub_1D1B2AD48()
{
  result = qword_1EC64ADC0;
  if (!qword_1EC64ADC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64ADC0);
  }

  return result;
}

unint64_t sub_1D1B2AD9C()
{
  result = qword_1EE07A220;
  if (!qword_1EE07A220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE07A220);
  }

  return result;
}

unint64_t sub_1D1B2ADF0()
{
  result = qword_1EE07A260[0];
  if (!qword_1EE07A260[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE07A260);
  }

  return result;
}

unint64_t sub_1D1B2AE44()
{
  result = qword_1EE07A010;
  if (!qword_1EE07A010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64ADE8, &qword_1D1E988F0);
    sub_1D1B2B46C(&qword_1EE079E40, sub_1D1B2AF00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE07A010);
  }

  return result;
}

unint64_t sub_1D1B2AF00()
{
  result = qword_1EE07A230;
  if (!qword_1EE07A230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE07A230);
  }

  return result;
}

uint64_t sub_1D1B2AF54(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64ADF8, &qword_1D1E98900);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10[-v5];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1B2B0FC();
  sub_1D1E692FC();
  v10[15] = 0;
  v8 = sub_1D1E68D5C();
  v10[14] = 1;
  sub_1D1E68D5C();
  (*(v3 + 8))(v6, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

unint64_t sub_1D1B2B0FC()
{
  result = qword_1EE07A248;
  if (!qword_1EE07A248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE07A248);
  }

  return result;
}

uint64_t sub_1D1B2B150@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AE08, &qword_1D1E98910);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1B2ADF0();
  sub_1D1E692FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64ADE0, &qword_1D1E988E8);
  v18 = 0;
  sub_1D17D8EA8(&qword_1EC64AE10, &qword_1EC64ADE0, &qword_1D1E988E8);
  sub_1D1E68D7C();
  v11 = v19;
  v16 = v21;
  v17 = v20;
  v12 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64ADE8, &qword_1D1E988F0);
  v18 = 1;
  sub_1D1B2B3B0();
  sub_1D1E68D7C();
  (*(v6 + 8))(v9, v5);
  v13 = v19;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v11;
  v15 = v17;
  *(a2 + 24) = v16;
  *(a2 + 8) = v15;
  *(a2 + 40) = v12;
  *(a2 + 48) = v13;
  return result;
}

unint64_t sub_1D1B2B3B0()
{
  result = qword_1EC64AE18;
  if (!qword_1EC64AE18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64ADE8, &qword_1D1E988F0);
    sub_1D1B2B46C(&qword_1EC64AE20, sub_1D1B2B4E4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64AE18);
  }

  return result;
}

uint64_t sub_1D1B2B46C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64ADF0, &qword_1D1E988F8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D1B2B4E4()
{
  result = qword_1EC64AE28;
  if (!qword_1EC64AE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64AE28);
  }

  return result;
}

uint64_t sub_1D1B2B538(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhoenixMetricsAggregator.IntervalKey(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D1B2B5D0()
{
  result = qword_1EC64AE48;
  if (!qword_1EC64AE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64AE48);
  }

  return result;
}

unint64_t sub_1D1B2B628()
{
  result = qword_1EC64AE50;
  if (!qword_1EC64AE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64AE50);
  }

  return result;
}

unint64_t sub_1D1B2B680()
{
  result = qword_1EC64AE58;
  if (!qword_1EC64AE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64AE58);
  }

  return result;
}

unint64_t sub_1D1B2B6D8()
{
  result = qword_1EE07A238;
  if (!qword_1EE07A238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE07A238);
  }

  return result;
}

unint64_t sub_1D1B2B730()
{
  result = qword_1EE07A240;
  if (!qword_1EE07A240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE07A240);
  }

  return result;
}

unint64_t sub_1D1B2B788()
{
  result = qword_1EE07A250;
  if (!qword_1EE07A250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE07A250);
  }

  return result;
}

unint64_t sub_1D1B2B7E0()
{
  result = qword_1EE07A258;
  if (!qword_1EE07A258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE07A258);
  }

  return result;
}

unint64_t sub_1D1B2B838()
{
  result = qword_1EE07A210;
  if (!qword_1EE07A210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE07A210);
  }

  return result;
}

unint64_t sub_1D1B2B890()
{
  result = qword_1EE07A218;
  if (!qword_1EE07A218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE07A218);
  }

  return result;
}

uint64_t Duration.millisecondsString.getter()
{
  sub_1D1E6931C();
  sub_1D1E6811C();
  MEMORY[0x1D3890F70](29549, 0xE200000000000000);
  return 0;
}

uint64_t sub_1D1B2B9EC()
{
  result = type metadata accessor for StateSnapshot(0);
  v2 = *(*(v0 + *(result + 60)) + 16);
  v3 = *(*(v0 + *(result + 36)) + 16);
  v4 = __OFADD__(v2, v3);
  v5 = v2 + v3;
  if (v4)
  {
    __break(1u);
    goto LABEL_8;
  }

  v6 = *(*(v0 + *(result + 48)) + 16);
  v4 = __OFADD__(v5, v6);
  v7 = v5 + v6;
  if (v4)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v8 = *(*(v0 + *(result + 64)) + 16);
  v4 = __OFADD__(v7, v8);
  v9 = v7 + v8;
  if (v4)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = *(*(v0 + *(result + 52)) + 16);
  result = v9 + v10;
  if (__OFADD__(v9, v10))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (result < 0)
  {
LABEL_11:
    __break(1u);
  }

  return result;
}

void sub_1D1B2BACC(void *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[2];
  v5 = sub_1D1E6939C();
  if (v4)
  {
    v7 = a1 + 5;
    v8 = v4;
    do
    {
      v9 = *(v7 - 1);
      v10 = *v7;
      v5 = sub_1D1E6936C();
      v7 += 2;
      --v8;
    }

    while (v8);
  }

  v27 = v6;
  v11 = v5;
  v12 = sub_1D182F170(a1);
  if (v14)
  {
    v12 = sub_1D1E6939C();
  }

  v15 = v12;
  v16 = v13;
  v17 = sub_1D1745BC4(a1);
  if (v19)
  {
    v17 = sub_1D1E6939C();
  }

  v20 = v17;
  v21 = v18;
  v22 = sub_1D1B2CF28(a1);
  v24 = v23;
  sub_1D1B2CFAC(a1);
  *a2 = v4;
  a2[1] = v11;
  a2[2] = v27;
  a2[3] = v15;
  a2[4] = v16;
  a2[5] = v20;
  a2[6] = v21;
  a2[7] = v22;
  a2[8] = v24;
  a2[9] = v25;
  a2[10] = v26;
}

uint64_t sub_1D1B2BBAC(uint64_t a1)
{
  sub_1D1E6884C();
  MEMORY[0x1D3890F70](3826555, 0xE300000000000000);
  v11 = *v1;
  v3 = sub_1D1E68FAC();
  MEMORY[0x1D3890F70](v3);

  MEMORY[0x1D3890F70](0x3A6D75732CLL, 0xE500000000000000);
  v4 = *(a1 + 52);
  v5 = *(a1 + 16);
  sub_1D1E6900C();
  MEMORY[0x1D3890F70](0x3A6E696D2CLL, 0xE500000000000000);
  v6 = *(a1 + 56);
  sub_1D1E6900C();
  MEMORY[0x1D3890F70](0x3A78616D2CLL, 0xE500000000000000);
  v7 = *(a1 + 60);
  sub_1D1E6900C();
  MEMORY[0x1D3890F70](0x3A6776612CLL, 0xE500000000000000);
  v8 = *(a1 + 64);
  sub_1D1E6900C();
  MEMORY[0x1D3890F70](0x3A7665647474732CLL, 0xE800000000000000);
  v9 = *(a1 + 68);
  sub_1D1E6900C();
  MEMORY[0x1D3890F70](125, 0xE100000000000000);
  return 0;
}

void sub_1D1B2BD3C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    v6 = 0.0;
    goto LABEL_10;
  }

  if (v4 <= 3)
  {
    v5 = 0;
    v6 = 0.0;
LABEL_8:
    v10 = v4 - v5;
    v11 = (a1 + 8 * v5 + 32);
    do
    {
      v12 = *v11++;
      v6 = v6 + v12;
      --v10;
    }

    while (v10);
    goto LABEL_10;
  }

  v5 = v4 & 0x7FFFFFFFFFFFFFFCLL;
  v7 = a1 + 48;
  v6 = 0.0;
  v8 = v4 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v9 = *v7;
    v6 = v6 + *(v7 - 16) + *(v7 - 8) + *v7 + *(v7 + 8);
    v7 += 32;
    v8 -= 4;
  }

  while (v8);
  if (v4 != v5)
  {
    goto LABEL_8;
  }

LABEL_10:
  v13 = COERCE_DOUBLE(sub_1D182F12C(a1));
  v15 = v14;
  v16 = sub_1D1745ACC(a1);
  if (v17)
  {
    v18 = 0;
    if (v4)
    {
      goto LABEL_12;
    }

LABEL_15:
    v21 = 0.0;
    goto LABEL_22;
  }

  v18 = v16;
  if (!v4)
  {
    goto LABEL_15;
  }

LABEL_12:
  if (v4 > 3)
  {
    v19 = v4 & 0x7FFFFFFFFFFFFFFCLL;
    v22 = a1 + 48;
    v20 = 0.0;
    v23 = v4 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v24 = *v22;
      v20 = v20 + *(v22 - 16) + *(v22 - 8) + *v22 + *(v22 + 8);
      v22 += 32;
      v23 -= 4;
    }

    while (v23);
    if (v4 == v19)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v19 = 0;
    v20 = 0.0;
  }

  v25 = v4 - v19;
  v26 = (a1 + 8 * v19 + 32);
  do
  {
    v27 = *v26++;
    v20 = v20 + v27;
    --v25;
  }

  while (v25);
LABEL_21:
  v21 = v20 / v4;
LABEL_22:
  if (v15)
  {
    v28 = 0.0;
  }

  else
  {
    v28 = v13;
  }

  v29 = sub_1D1B2D198(a1);
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v28;
  *(a2 + 24) = v18;
  *(a2 + 32) = v21;
  *(a2 + 40) = v29;
}

uint64_t sub_1D1B2BED4(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v7 = _s14ElementMetricsVMa();
  v8 = v7[13];
  v9 = *(a6 + 8);
  if (sub_1D1E6775C() & 1) != 0 && (v10 = v7[14], (sub_1D1E6775C()) && (v11 = v7[15], (sub_1D1E6775C()) && (v12 = v7[16], (sub_1D1E6775C()))
  {
    v13 = v7[17];
    v14 = sub_1D1E6775C();
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_1D1B2BFE4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E756F63 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7173491 && a2 == 0xE300000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7235949 && a2 == 0xE300000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 7889261 && a2 == 0xE300000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65676172657661 && a2 == 0xE700000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x766564647473 && a2 == 0xE600000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1D1B2C210(unsigned __int8 a1)
{
  sub_1D1E6920C();
  MEMORY[0x1D3892850](a1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1B2C258(unsigned __int8 a1)
{
  v1 = 0x746E756F63;
  v2 = 7889261;
  v3 = 0x65676172657661;
  if (a1 != 4)
  {
    v3 = 0x766564647473;
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  v4 = 7173491;
  if (a1 != 1)
  {
    v4 = 7235949;
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D1B2C2F4(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 + 16);
  v6 = *(a2 + 32);
  v23 = a2;
  v22[0] = v6;
  v22[1] = v5;
  v24 = v5;
  v25 = v6;
  _s14ElementMetricsV10CodingKeysOMa();
  swift_getWitnessTable();
  v7 = sub_1D1E68F7C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v22 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1E6930C();
  v13 = *v3;
  LOBYTE(v24) = 0;
  v14 = v26;
  sub_1D1E68F0C();
  if (!v14)
  {
    v15 = v23;
    v16 = v23[13];
    LOBYTE(v24) = 1;
    sub_1D1E68F1C();
    v17 = v15[14];
    LOBYTE(v24) = 2;
    sub_1D1E68F1C();
    v18 = v15[15];
    LOBYTE(v24) = 3;
    sub_1D1E68F1C();
    v19 = v15[16];
    LOBYTE(v24) = 4;
    sub_1D1E68F1C();
    v20 = v15[17];
    LOBYTE(v24) = 5;
    sub_1D1E68F1C();
  }

  return (*(v8 + 8))(v11, v7);
}