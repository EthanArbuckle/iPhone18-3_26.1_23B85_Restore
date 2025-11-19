uint64_t sub_1D128E28C()
{
  v1 = v0[24];
  if (v1)
  {
    v0[26] = *(v0[10] + 24);
    v2 = v1;
    v3 = swift_task_alloc();
    v0[27] = v3;
    *v3 = v0;
    v3[1] = sub_1D128E3A8;

    return sub_1D1318C14(v2);
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1D128E3A8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 192);
  v5 = *v1;
  *(v3 + 224) = a1;

  v6 = swift_task_alloc();
  *(v3 + 232) = v6;
  *v6 = v5;
  v6[1] = sub_1D128E51C;

  return sub_1D1290214(v3 + 16, a1);
}

uint64_t sub_1D128E51C()
{
  v1 = *v0;

  v2 = *(v1 + 168);
  v3 = *(v1 + 160);

  return MEMORY[0x1EEE6DFA0](sub_1D128E63C, v3, v2);
}

uint64_t sub_1D128E63C()
{
  v1 = v0[10];
  sub_1D12890AC();
  v2 = *(v1 + 16);
  v0[30] = v2;
  v3 = swift_task_alloc();
  v0[31] = v3;
  *v3 = v0;
  v3[1] = sub_1D128E6E4;

  return sub_1D12D5090(v2);
}

uint64_t sub_1D128E6E4()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  v3 = *(v2 + 168);
  v4 = *(v2 + 160);
  if (v0)
  {
    v5 = sub_1D128EB4C;
  }

  else
  {
    v5 = sub_1D128E820;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D128E820()
{

  v1 = [objc_opt_self() defaultCenter];
  if (qword_1EC608D78 != -1)
  {
    swift_once();
  }

  v2 = v0[28];
  v3 = v0[24];
  [v1 postNotificationName:qword_1EC60DA28 object:v0[10]];

  sub_1D12927F8((v0 + 2));

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D128E93C()
{
  v21 = v0;
  v1 = *(v0 + 200);

  sub_1D138F06C();
  v2 = v1;
  v3 = sub_1D138F0AC();
  v4 = sub_1D139080C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 200);
    v18 = *(v0 + 136);
    v19 = *(v0 + 176);
    v6 = *(v0 + 112);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136315138;
    *(v0 + 56) = v5;
    v9 = v5;
    sub_1D10922EC();
    v10 = sub_1D13901EC();
    v12 = sub_1D11DF718(v10, v11, &v20);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_1D101F000, v3, v4, "Failed to persist and migrate upgraded account: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1D38882F0](v8, -1, -1);
    MEMORY[0x1D38882F0](v7, -1, -1);

    v19(v18, v6);
  }

  else
  {
    v13 = *(v0 + 176);
    v14 = *(v0 + 136);
    v15 = *(v0 + 112);

    v13(v14, v15);
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1D128EB4C()
{
  v40 = v0;
  v1 = v0[32];

  sub_1D138F06C();

  v2 = v1;
  v3 = sub_1D138F0AC();
  v4 = sub_1D13907FC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[30];
    v32 = v0[32];
    v33 = v0[15];
    v6 = v0[13];
    v35 = v0[14];
    v37 = v0[16];
    v8 = v0[11];
    v7 = v0[12];
    v9 = v0[10];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v39 = v11;
    *v10 = 136315650;
    *(v10 + 4) = sub_1D11DF718(*(v9 + 48), *(v9 + 56), &v39);
    *(v10 + 12) = 2080;
    v12 = [v5 identifier];
    sub_1D138D5CC();

    sub_1D12927B4(&qword_1EC60D1C0);
    v13 = sub_1D13915CC();
    v15 = v14;
    (*(v7 + 8))(v6, v8);
    v16 = sub_1D11DF718(v13, v15, &v39);

    *(v10 + 14) = v16;
    *(v10 + 22) = 2080;
    v0[8] = v32;
    v17 = v32;
    sub_1D10922EC();
    v18 = sub_1D13901EC();
    v20 = sub_1D11DF718(v18, v19, &v39);

    *(v10 + 24) = v20;
    _os_log_impl(&dword_1D101F000, v3, v4, "%s failed to delete old account during upgrade of account %s: %s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D38882F0](v11, -1, -1);
    MEMORY[0x1D38882F0](v10, -1, -1);

    (*(v33 + 8))(v37, v35);
  }

  else
  {
    v22 = v0[15];
    v21 = v0[16];
    v23 = v0[14];

    (*(v22 + 8))(v21, v23);
  }

  v24 = objc_opt_self();
  if (qword_1EE06AD00 != -1)
  {
    swift_once();
  }

  v25 = v0[32];
  v36 = v0[24];
  v38 = v0[28];
  v34 = v0[10];
  sub_1D138D1CC();
  v26 = sub_1D139012C();

  sub_1D138D1CC();
  v27 = sub_1D139012C();

  v28 = sub_1D138D2AC();
  v29 = [v24 basicAlertControllerWithTitle:v26 message:v27 internalError:{v28, 0xE000000000000000}];

  [*(v34 + 32) presentViewController:v29 animated:1 completion:0];
  sub_1D12927F8((v0 + 2));

  v30 = v0[1];

  return v30();
}

uint64_t sub_1D128EFB8(uint64_t a1)
{
  v2[21] = a1;
  v2[22] = v1;
  v3 = sub_1D138D5EC();
  v2[23] = v3;
  v2[24] = *(v3 - 8);
  v2[25] = swift_task_alloc();
  v4 = sub_1D138F0BC();
  v2[26] = v4;
  v2[27] = *(v4 - 8);
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  sub_1D1292328(0, &qword_1EC60A5F0, MEMORY[0x1E6968FB0]);
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D128F140, 0, 0);
}

uint64_t sub_1D128F140()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  v0[33] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = v0[21];
    v4 = *(*(v0[22] + 24) + 24);
    v0[34] = v4;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1D128F3C0;
    v5 = swift_continuation_init();
    sub_1D12937D4(0, &qword_1EC60E258, &qword_1EC609A00);
    v0[17] = v6;
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1D1121DF8;
    v0[13] = &block_descriptor_51;
    v0[14] = v5;
    v7 = v3;
    [v4 persistEphemeralAccount:v2 triggerIngestion:1 completion:v0 + 10];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    sub_1D138F06C();
    v8 = sub_1D138F0AC();
    v9 = sub_1D139080C();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[30];
    v12 = v0[26];
    v13 = v0[27];
    if (v10)
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1D101F000, v8, v9, "ClinicalAccountUpgradeManager got a real account instead of an ephemeral account during account upgrade, won't attempt to persist", v14, 2u);
      MEMORY[0x1D38882F0](v14, -1, -1);
    }

    (*(v13 + 8))(v11, v12);

    v15 = v0[1];

    return v15(0);
  }
}

uint64_t sub_1D128F3C0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 280) = v1;
  if (v1)
  {
    v2 = sub_1D128F9AC;
  }

  else
  {
    v2 = sub_1D128F4D0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D128F4D0()
{
  v1 = v0[34];
  v2 = v0[18];
  v0[36] = v2;
  v3 = v2;

  if (qword_1EE06A170 != -1)
  {
    swift_once();
  }

  v4 = *(v0[22] + 16);
  v0[37] = v4;
  v5 = [v4 gateway];
  if (!v5)
  {
    v9 = v0[32];
    v10 = sub_1D138D39C();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
LABEL_9:
    sub_1D12936B8(v0[32], &qword_1EC60A5F0, MEMORY[0x1E6968FB0]);
    v15 = 0;
    goto LABEL_11;
  }

  v6 = v5;
  v7 = [v5 baseURL];

  if (v7)
  {
    sub_1D138D33C();

    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v12 = v0[31];
  v11 = v0[32];
  v13 = sub_1D138D39C();
  v14 = *(v13 - 8);
  (*(v14 + 56))(v12, v8, 1, v13);
  sub_1D1293714(v12, v11, &qword_1EC60A5F0, MEMORY[0x1E6968FB0]);
  if ((*(v14 + 48))(v11, 1, v13) == 1)
  {
    goto LABEL_9;
  }

  v16 = v0[32];
  v15 = sub_1D138D30C();
  (*(v14 + 8))(v16, v13);
LABEL_11:
  sub_1D122101C(12, 8, v15);

  v17 = swift_task_alloc();
  v0[38] = v17;
  *v17 = v0;
  v17[1] = sub_1D128F7A8;

  return sub_1D1290B70(v3);
}

uint64_t sub_1D128F7A8(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 312) = v1;

  if (v1)
  {
    v5 = sub_1D128FE58;
  }

  else
  {
    *(v4 + 320) = a1;
    v5 = sub_1D128F8EC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D128F8EC()
{
  v1 = *(v0 + 168);

  v2 = *(v0 + 320);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1D128F9AC()
{
  v32 = v0;
  v1 = *(v0 + 272);
  v2 = *(v0 + 280);
  swift_willThrow();

  sub_1D138F06C();

  v3 = v2;
  v4 = sub_1D138F0AC();
  v5 = sub_1D13907FC();

  if (os_log_type_enabled(v4, v5))
  {
    v27 = *(v0 + 280);
    v28 = *(v0 + 216);
    v29 = *(v0 + 208);
    v30 = *(v0 + 232);
    v7 = *(v0 + 192);
    v6 = *(v0 + 200);
    v8 = *(v0 + 176);
    v9 = *(v0 + 184);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v31[0] = v11;
    *v10 = 136315650;
    *(v10 + 4) = sub_1D11DF718(*(v8 + 48), *(v8 + 56), v31);
    *(v10 + 12) = 2080;
    v12 = [*(v8 + 16) identifier];
    sub_1D138D5CC();

    sub_1D12927B4(&qword_1EC60D1C0);
    v13 = sub_1D13915CC();
    v15 = v14;
    (*(v7 + 8))(v6, v9);
    v16 = sub_1D11DF718(v13, v15, v31);

    *(v10 + 14) = v16;
    *(v10 + 22) = 2080;
    *(v0 + 152) = v27;
    v17 = v27;
    sub_1D10922EC();
    v18 = sub_1D13901EC();
    v20 = sub_1D11DF718(v18, v19, v31);

    *(v10 + 24) = v20;
    _os_log_impl(&dword_1D101F000, v4, v5, "%s failed to persist new account during upgrade of account %s: %s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D38882F0](v11, -1, -1);
    MEMORY[0x1D38882F0](v10, -1, -1);

    (*(v28 + 8))(v30, v29);
  }

  else
  {
    v21 = *(v0 + 232);
    v22 = *(v0 + 208);
    v23 = *(v0 + 216);

    (*(v23 + 8))(v21, v22);
  }

  *(v0 + 328) = [*(v0 + 264) gateway];
  sub_1D13905AC();
  *(v0 + 336) = sub_1D139059C();
  v25 = sub_1D139055C();

  return MEMORY[0x1EEE6DFA0](sub_1D128FCBC, v25, v24);
}

uint64_t sub_1D128FCBC()
{

  if (qword_1EE069ED0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 328);
  v2 = *(v0 + 176);
  v3 = sub_1D1299A40(v1, *(v0 + 280));
  [*(v2 + 32) presentViewController:v3 animated:1 completion:0];

  return MEMORY[0x1EEE6DFA0](sub_1D128FD98, 0, 0);
}

uint64_t sub_1D128FD98()
{
  v1 = *(v0 + 280);

  v2 = *(v0 + 8);

  return v2(0);
}

uint64_t sub_1D128FE58()
{
  v44 = v0;
  v1 = *(v0 + 312);
  v2 = *(v0 + 288);
  sub_1D138F06C();
  v3 = v2;

  v4 = v1;
  v5 = sub_1D138F0AC();
  v6 = sub_1D13907FC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 288);
    v35 = *(v0 + 296);
    v36 = *(v0 + 312);
    v41 = *(v0 + 208);
    v42 = *(v0 + 224);
    v38 = v6;
    v9 = *(v0 + 192);
    v8 = *(v0 + 200);
    v10 = *(v0 + 176);
    v11 = *(v0 + 184);
    v39 = *(v0 + 168);
    v40 = *(v0 + 216);
    v12 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v43 = v37;
    *v12 = 136315906;
    *(v12 + 4) = sub_1D11DF718(*(v10 + 48), *(v10 + 56), &v43);
    *(v12 + 12) = 2080;
    v13 = [v7 identifier];
    sub_1D138D5CC();

    sub_1D12927B4(&qword_1EC60D1C0);
    v14 = sub_1D13915CC();
    v16 = v15;
    v17 = *(v9 + 8);
    v17(v8, v11);
    v18 = sub_1D11DF718(v14, v16, &v43);

    *(v12 + 14) = v18;
    *(v12 + 22) = 2080;
    v19 = [v35 identifier];
    sub_1D138D5CC();

    v20 = sub_1D13915CC();
    v22 = v21;
    v17(v8, v11);
    v23 = sub_1D11DF718(v20, v22, &v43);

    *(v12 + 24) = v23;
    *(v12 + 32) = 2080;
    *(v0 + 160) = v36;
    v24 = v36;
    sub_1D10922EC();
    v25 = sub_1D13901EC();
    v27 = sub_1D11DF718(v25, v26, &v43);

    *(v12 + 34) = v27;
    _os_log_impl(&dword_1D101F000, v5, v38, "%s failed to apply existing Oslo properties to new account %s during upgrade of account %s: %s", v12, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1D38882F0](v37, -1, -1);
    MEMORY[0x1D38882F0](v12, -1, -1);

    (*(v40 + 8))(v42, v41);
  }

  else
  {
    v28 = *(v0 + 312);
    v30 = *(v0 + 216);
    v29 = *(v0 + 224);
    v31 = *(v0 + 208);

    (*(v30 + 8))(v29, v31);
  }

  v32 = *(v0 + 288);

  v33 = *(v0 + 8);

  return v33(v32);
}

uint64_t sub_1D1290214(uint64_t a1, uint64_t a2)
{
  v3[31] = a2;
  v3[32] = v2;
  v3[30] = a1;
  sub_1D13905AC();
  v3[33] = sub_1D139059C();
  v5 = sub_1D139055C();

  return MEMORY[0x1EEE6DFA0](sub_1D12902B0, v5, v4);
}

uint64_t sub_1D12902B0()
{
  v52 = v0;
  v1 = *(v0 + 256);

  v2 = *(v1 + 32);
  sub_1D129334C(*(v1 + 16), v2, (v0 + 16));
  v3 = *(v0 + 48);
  *(v0 + 96) = v3;
  if (v3 && *(v3 + qword_1EC60E7A8))
  {

    sub_1D138F64C();
  }

  v4 = *(v0 + 32);
  *(v0 + 104) = v4;
  if (v4 && *(v4 + OBJC_IVAR___HRMedicalRecordTimelineViewController_accountStateCancellable))
  {

    sub_1D138F64C();
  }

  v5 = *(v0 + 248);
  sub_1D128989C(v0 + 56);
  v6 = *(v0 + 56);
  v7 = sub_1D1291EE4(v5);
  v8 = v7;
  v10 = *(v0 + 64);
  v9 = *(v0 + 72);
  v11 = *(v0 + 80);
  v12 = *(v0 + 88);
  if (v12 <= 1)
  {
    if (!*(v0 + 88))
    {
      if (v9 >= v10)
      {
        v20 = *(v0 + 64);
      }

      else
      {
        v20 = *(v0 + 72);
      }

      v21 = v6;
      sub_1D1289E2C(v20);
      v18 = v22;
      sub_1D12935A8(v0 + 56);

      *(v0 + 208) = *(v0 + 24);
      sub_1D12934B8(v0 + 208);
      sub_1D12936B8(v0 + 104, &qword_1EC60E900, type metadata accessor for MedicalRecordTimelineViewController);
      *(v0 + 216) = *(v0 + 40);
      v19 = v0 + 216;
      goto LABEL_20;
    }

    v49 = v7;
    v30 = v9;
    sub_1D1289E2C(v10);
    if (v31)
    {
      v32 = v31;
      v33 = [v6 popToViewController:v31 animated:1];
    }

    v34 = [v30 viewControllers];
    sub_1D106F934(0, &unk_1EC6099E0);
    v35 = sub_1D139045C();

    if (v35 >> 62)
    {
      v44 = sub_1D13910DC();

      if (v44)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v36)
      {
LABEL_30:
        sub_1D1289E2C(v11);
        v18 = v37;
        sub_1D12935A8(v0 + 56);

        *(v0 + 176) = *(v0 + 24);
        sub_1D12934B8(v0 + 176);
        sub_1D12936B8(v0 + 104, &qword_1EC60E900, type metadata accessor for MedicalRecordTimelineViewController);
        *(v0 + 184) = *(v0 + 40);
        sub_1D12934B8(v0 + 184);
        sub_1D12936B8(v0 + 96, &qword_1EC60E908, type metadata accessor for ClinicalAccountDetailsViewController);
        v38 = v2;
        v26 = 1;
        v6 = v9;
        v8 = v50;
        goto LABEL_21;
      }
    }

    if (qword_1EE069ED0 != -1)
    {
      swift_once();
    }

    v45 = *(v0 + 248);
    v46 = *(*(*(v0 + 256) + 24) + 16);
    v51 = 0;
    v47 = objc_allocWithZone(type metadata accessor for ClinicalAccountDetailsViewController());
    v48 = sub_1D127988C(v45, v46, &v51, 0, 0);
    sub_1D127B668();

    sub_1D1082CC4(0, &qword_1EE06A4C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1D139E810;
    *(v8 + 32) = v48;

    sub_1D12935A8(v0 + 56);
    *(v0 + 192) = *(v0 + 24);
    sub_1D12934B8(v0 + 192);
    sub_1D12936B8(v0 + 104, &qword_1EC60E900, type metadata accessor for MedicalRecordTimelineViewController);
    *(v0 + 200) = *(v0 + 40);
    sub_1D12934B8(v0 + 200);
    sub_1D12936B8(v0 + 96, &qword_1EC60E908, type metadata accessor for ClinicalAccountDetailsViewController);
    v6 = 0;
    v18 = 0;
    v26 = 2;
    v2 = v9;
    goto LABEL_21;
  }

  if (v12 == 2)
  {
    v23 = v6;
    sub_1D1289E2C(v10);
    v18 = v24;
    sub_1D12935A8(v0 + 56);

    *(v0 + 160) = *(v0 + 24);
    sub_1D12934B8(v0 + 160);
    sub_1D12936B8(v0 + 104, &qword_1EC60E900, type metadata accessor for MedicalRecordTimelineViewController);
    *(v0 + 168) = *(v0 + 40);
    v19 = v0 + 168;
    goto LABEL_20;
  }

  if (v12 == 3)
  {
    v13 = v7;
    v14 = [v6 viewControllers];
    sub_1D106F934(0, &unk_1EC6099E0);
    v15 = sub_1D139045C();

    if (v15 >> 62)
    {
      v16 = sub_1D13910DC();
    }

    else
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = v13;

    if (v16)
    {
      sub_1D1289E2C(v10);
      v18 = v17;
      sub_1D12935A8(v0 + 56);

      *(v0 + 128) = *(v0 + 24);
      sub_1D12934B8(v0 + 128);
      sub_1D12936B8(v0 + 104, &qword_1EC60E900, type metadata accessor for MedicalRecordTimelineViewController);
      *(v0 + 136) = *(v0 + 40);
      v19 = v0 + 136;
LABEL_20:
      sub_1D12934B8(v19);
      sub_1D12936B8(v0 + 96, &qword_1EC60E908, type metadata accessor for ClinicalAccountDetailsViewController);
      v25 = v2;
      v26 = 1;
      goto LABEL_21;
    }

    if (qword_1EE069ED0 != -1)
    {
      swift_once();
    }

    v39 = *(v0 + 248);
    v40 = *(*(*(v0 + 256) + 24) + 16);
    v51 = 0;
    v41 = objc_allocWithZone(type metadata accessor for ClinicalAccountDetailsViewController());
    v42 = sub_1D127988C(v39, v40, &v51, 0, 0);
    sub_1D127B668();

    sub_1D1082CC4(0, &qword_1EE06A4C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_1D139E810;
    *(v43 + 32) = v42;

    sub_1D12935A8(v0 + 56);
    *(v0 + 144) = *(v0 + 24);
    sub_1D12934B8(v0 + 144);
    sub_1D12936B8(v0 + 104, &qword_1EC60E900, type metadata accessor for MedicalRecordTimelineViewController);
    *(v0 + 152) = *(v0 + 40);
    sub_1D12934B8(v0 + 152);
    sub_1D12936B8(v0 + 96, &qword_1EC60E908, type metadata accessor for ClinicalAccountDetailsViewController);
    v18 = 0;
    v26 = 2;
    v2 = v6;
    v8 = v43;
    v6 = 0;
  }

  else
  {
    v2 = *(v0 + 16);
    if (v9 | v10 | v6 | v11)
    {
      *(v0 + 112) = *(v0 + 24);
      sub_1D12934B8(v0 + 112);
      sub_1D12936B8(v0 + 104, &qword_1EC60E900, type metadata accessor for MedicalRecordTimelineViewController);
      *(v0 + 120) = *(v0 + 40);
      sub_1D12934B8(v0 + 120);
      sub_1D12936B8(v0 + 96, &qword_1EC60E908, type metadata accessor for ClinicalAccountDetailsViewController);
      v6 = 0;
      v18 = 0;
      v26 = 0;
    }

    else
    {
      *(v0 + 224) = *(v0 + 24);
      sub_1D12934B8(v0 + 224);
      sub_1D12936B8(v0 + 104, &qword_1EC60E900, type metadata accessor for MedicalRecordTimelineViewController);
      *(v0 + 232) = *(v0 + 40);
      sub_1D12934B8(v0 + 232);
      sub_1D12936B8(v0 + 96, &qword_1EC60E908, type metadata accessor for ClinicalAccountDetailsViewController);
      v6 = 0;
      v18 = 0;
      v26 = 3;
    }
  }

LABEL_21:
  v27 = *(v0 + 240);
  *v27 = v2;
  *(v27 + 8) = v8;
  *(v27 + 16) = v6;
  *(v27 + 24) = v18;
  *(v27 + 32) = v26;
  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_1D1290B70(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1D138D5EC();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  sub_1D1292328(0, &qword_1EE06B500, MEMORY[0x1E6969530]);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1290C9C, 0, 0);
}

uint64_t sub_1D1290C9C()
{
  v1 = *(*(v0 + 24) + 16);
  *(v0 + 88) = v1;
  if ([v1 isSharingToProvider])
  {
    v2 = [v1 clinicalSharingStatus];
    *(v0 + 96) = v2;
    v3 = [v2 firstSharedDate];
    if (v3)
    {
      v4 = v3;
      sub_1D138D52C();

      v5 = 0;
    }

    else
    {
      v5 = 1;
    }

    v11 = *(v0 + 72);
    v10 = *(v0 + 80);
    v12 = sub_1D138D57C();
    v13 = *(v12 - 8);
    v14 = *(v13 + 56);
    v14(v10, v5, 1, v12);
    v14(v11, 1, 1, v12);
    v32 = [v2 featureStatus];
    v31 = [v2 userStatus];
    v15 = [v2 primaryDeviceName];
    if (v15)
    {
      v16 = v15;
      sub_1D139016C();
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v19 = *(v0 + 80);
    v20 = *(v13 + 48);
    if (v20(v19, 1, v12) == 1)
    {
      v21 = 0;
    }

    else
    {
      v21 = sub_1D138D4EC();
      (*(v13 + 8))(v19, v12);
    }

    v22 = *(v0 + 72);
    if (v20(v22, 1, v12) == 1)
    {
      v23 = 0;
      if (v18)
      {
LABEL_16:
        v24 = sub_1D139012C();

LABEL_19:
        v26 = *(v0 + 16);
        v25 = *(v0 + 24);
        v27 = [objc_allocWithZone(MEMORY[0x1E69A3F80]) initWithFirstSharedDate:v21 lastSharedDate:v23 featureStatus:v32 userStatus:v31 multiDeviceStatus:3 primaryDeviceName:v24];
        *(v0 + 104) = v27;

        *(v0 + 112) = *(v25 + 24);
        v28 = [v26 identifier];
        sub_1D138D5CC();

        v29 = swift_task_alloc();
        *(v0 + 120) = v29;
        *v29 = v0;
        v29[1] = sub_1D1291084;
        v30 = *(v0 + 64);

        return sub_1D13192F8(v30, v27);
      }
    }

    else
    {
      v23 = sub_1D138D4EC();
      (*(v13 + 8))(v22, v12);
      if (v18)
      {
        goto LABEL_16;
      }
    }

    v24 = 0;
    goto LABEL_19;
  }

  v6 = *(v0 + 16);

  v7 = *(v0 + 8);
  v8 = *(v0 + 16);

  return v7(v8);
}

uint64_t sub_1D1291084()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v2[16] = v0;

  v6 = *(v4 + 8);
  v2[17] = v6;
  v2[18] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v5);
  if (v0)
  {
    v7 = sub_1D1291770;
  }

  else
  {
    v7 = sub_1D1291208;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D1291208()
{
  v1 = [*(v0 + 88) identifier];
  sub_1D138D5CC();

  v2 = swift_task_alloc();
  *(v0 + 152) = v2;
  *v2 = v0;
  v2[1] = sub_1D12912CC;
  v3 = *(v0 + 56);

  return sub_1D131991C(v3);
}

uint64_t sub_1D12912CC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 136);
  v6 = *(*v2 + 56);
  v7 = *(*v2 + 32);
  *(*v2 + 160) = v1;

  v5(v6, v7);
  if (v1)
  {
    v8 = sub_1D1291824;
  }

  else
  {
    *(v4 + 168) = a1;
    v8 = sub_1D1291460;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1D1291460()
{
  v1 = [*(v0 + 16) identifier];
  sub_1D138D5CC();

  v2 = swift_task_alloc();
  *(v0 + 176) = v2;
  *v2 = v0;
  v2[1] = sub_1D1291528;
  v3 = *(v0 + 168);
  v4 = *(v0 + 48);

  return sub_1D1319C90(v3, v4);
}

uint64_t sub_1D1291528()
{
  v2 = *(*v1 + 136);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 32);
  *(*v1 + 184) = v0;

  v2(v3, v4);

  if (v0)
  {
    v5 = sub_1D12918D8;
  }

  else
  {
    v5 = sub_1D12916C4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D12916C4()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 16);

  v4 = *(v0 + 8);
  v5 = *(v0 + 16);

  return v4(v5);
}

uint64_t sub_1D1291770()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D1291824()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D12918D8()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 8);

  return v2();
}

BOOL sub_1D129198C(void *a1, void *a2)
{
  v4 = sub_1D138D5EC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D107F5C8();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1292328(0, &qword_1EC60D6B0, MEMORY[0x1E69695A8]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v42 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v39 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v39 - v18;
  type metadata accessor for MedicalRecordTimelineViewController();
  v20 = swift_dynamicCastClass();
  if (!v20)
  {
    return 0;
  }

  v39 = v7;
  v40 = a2;
  v21 = *(v20 + OBJC_IVAR___HRMedicalRecordTimelineViewController_account);
  v41 = a1;
  if (v21)
  {
    v22 = a1;
    v23 = [v21 identifier];
    sub_1D138D5CC();

    v24 = *(v5 + 56);
    v24(v19, 0, 1, v4);
  }

  else
  {
    v24 = *(v5 + 56);
    v24(v19, 1, 1, v4);
    v25 = a1;
  }

  v26 = [v40 &selRef:v39 initWithDictionary:?];
  sub_1D138D5CC();

  v24(v16, 0, 1, v4);
  v27 = *(v9 + 48);
  v28 = MEMORY[0x1E69695A8];
  sub_1D12935D8(v19, v11, &qword_1EC60D6B0, MEMORY[0x1E69695A8]);
  sub_1D12935D8(v16, &v11[v27], &qword_1EC60D6B0, v28);
  v29 = *(v5 + 48);
  if (v29(v11, 1, v4) != 1)
  {
    v31 = v42;
    sub_1D12935D8(v11, v42, &qword_1EC60D6B0, MEMORY[0x1E69695A8]);
    if (v29(&v11[v27], 1, v4) != 1)
    {
      v34 = v39;
      (*(v5 + 32))(v39, &v11[v27], v4);
      sub_1D12927B4(&qword_1EC6098A0);
      v35 = sub_1D139011C();

      v36 = v31;
      v37 = *(v5 + 8);
      v37(v34, v4);
      v38 = MEMORY[0x1E69695A8];
      sub_1D12936B8(v16, &qword_1EC60D6B0, MEMORY[0x1E69695A8]);
      sub_1D12936B8(v19, &qword_1EC60D6B0, v38);
      v37(v36, v4);
      sub_1D12936B8(v11, &qword_1EC60D6B0, v38);
      return (v35 & 1) != 0;
    }

    v32 = MEMORY[0x1E69695A8];
    sub_1D12936B8(v16, &qword_1EC60D6B0, MEMORY[0x1E69695A8]);
    sub_1D12936B8(v19, &qword_1EC60D6B0, v32);
    (*(v5 + 8))(v31, v4);
LABEL_10:
    sub_1D1293644(v11);
    return 0;
  }

  v30 = MEMORY[0x1E69695A8];
  sub_1D12936B8(v16, &qword_1EC60D6B0, MEMORY[0x1E69695A8]);
  sub_1D12936B8(v19, &qword_1EC60D6B0, v30);
  if (v29(&v11[v27], 1, v4) != 1)
  {
    goto LABEL_10;
  }

  sub_1D12936B8(v11, &qword_1EC60D6B0, MEMORY[0x1E69695A8]);
  return 1;
}

id sub_1D1291EE4(void *a1)
{
  if (qword_1EE069ED0 != -1)
  {
    swift_once();
  }

  v3 = *(*(v1 + 24) + 16);
  v8 = 0;
  v4 = objc_allocWithZone(type metadata accessor for ClinicalAccountDetailsViewController());
  v5 = sub_1D127988C(a1, v3, &v8, 0, 0);
  sub_1D127B668();
  v6 = [objc_allocWithZone(MEMORY[0x1E69A4420]) initWithRootViewController_];
  [v6 setModalPresentationStyle_];

  return v6;
}

uint64_t sub_1D1291FC0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_1D12FFAC8(v3);
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

uint64_t sub_1D1292050()
{

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ClinicalAccountUpgradeManager.SessionState()
{
  result = qword_1EC60E8E0;
  if (!qword_1EC60E8E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D1292120()
{
  sub_1D1292328(319, &qword_1EC60D6B0, MEMORY[0x1E69695A8]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1D12921E0()
{
  v1 = 0x206E776F6E6B6E75;
  v2 = 0xD00000000000002BLL;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000025;
  }

  if (*v0)
  {
    v1 = 0xD00000000000001ALL;
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

uint64_t sub_1D1292280(uint64_t a1, uint64_t a2)
{
  sub_1D1292328(0, &qword_1EC60D6B0, MEMORY[0x1E69695A8]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_55(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1D1292328(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D1390F3C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D129237C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D108077C;

  return sub_1D128C8DC(a1, v4, v5, v6, v7, v8);
}

uint64_t *sub_1D1292444(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = *v4;
  v9 = sub_1D138D5EC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ClinicalAccountUpgradeManager.SessionState();
  v13 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v13 + 112) = 0;
  (*(v10 + 56))(v13 + OBJC_IVAR____TtCC15HealthRecordsUI29ClinicalAccountUpgradeManagerP33_C1E9680787D6FC085CDD3D854B2FD8D912SessionState_loginSessionState, 1, 1, v9);
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = v13;
  v21 = 91;
  v22 = 0xE100000000000000;
  v20[1] = v8;
  swift_getMetatypeMetadata();
  v14 = a1;

  v15 = a3;
  v16 = sub_1D13901EC();
  MEMORY[0x1D3885C10](v16);

  MEMORY[0x1D3885C10](10272, 0xE200000000000000);
  sub_1D138D5DC();
  sub_1D12927B4(&qword_1EC60D1C0);
  v17 = sub_1D13915CC();
  MEMORY[0x1D3885C10](v17);

  (*(v10 + 8))(v12, v9);
  MEMORY[0x1D3885C10](14941, 0xE200000000000000);
  v18 = v22;
  v4[6] = v21;
  v4[7] = v18;
  return v4;
}

uint64_t sub_1D1292660(uint64_t a1)
{
  v3 = v2;
  sub_1D1292328(0, &qword_1EC60D6B0, MEMORY[0x1E69695A8]);
  v6 = (*(*(v5 - 8) + 80) + 48) & ~*(*(v5 - 8) + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = *(v1 + ((*(*(v5 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1D10819BC;

  return sub_1D128CA54(a1, v7, v8, v9, v10, v1 + v6, v11);
}

uint64_t sub_1D12927B4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D138D5EC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D1292828(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D10819BC;

  return sub_1D12893F4(a1, v4, v5, v7, v6);
}

uint64_t sub_1D1292900(void *a1, void *a2)
{
  v31 = a2;
  sub_1D1082CC4(0, &qword_1EE06A4C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D139E810;
  *(v3 + 32) = a1;
  v34 = v3;
  v4 = a1;
  while (1)
  {
    if (v3 >> 62)
    {
      if (!sub_1D13910DC())
      {
LABEL_46:

        return 0;
      }
    }

    else if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_46;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (v3 >> 62 || (result & 1) == 0)
    {
      result = sub_1D12FFAC8(v3);
      v3 = result;
    }

    v6 = v3 & 0xFFFFFFFFFFFFFF8;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      break;
    }

    v8 = v7 - 1;
    v9 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20);
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v8;
    if (sub_1D129198C(v9, v31))
    {

      return v9;
    }

    v10 = [v9 childViewControllers];
    sub_1D106F934(0, &unk_1EC6099E0);
    v11 = sub_1D139045C();

    v12 = v11 >> 62;
    if (v11 >> 62)
    {
      v13 = sub_1D13910DC();
      v14 = v3 >> 62;
      if (!(v3 >> 62))
      {
LABEL_12:
        result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v15 = result + v13;
        if (__OFADD__(result, v13))
        {
          goto LABEL_50;
        }

        goto LABEL_13;
      }
    }

    else
    {
      v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v14 = v3 >> 62;
      if (!(v3 >> 62))
      {
        goto LABEL_12;
      }
    }

    result = sub_1D13910DC();
    v15 = result + v13;
    if (__OFADD__(result, v13))
    {
      goto LABEL_50;
    }

LABEL_13:
    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (!v14)
      {
        if (v15 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }

LABEL_18:
      sub_1D13910DC();
      goto LABEL_19;
    }

    if (v14)
    {
      goto LABEL_18;
    }

LABEL_19:
    result = sub_1D139122C();
    v3 = result;
    v6 = result & 0xFFFFFFFFFFFFFF8;
LABEL_20:
    v16 = *(v6 + 16);
    v17 = *(v6 + 24);
    if (v12)
    {
      result = sub_1D13910DC();
      v18 = result;
      if (!result)
      {
LABEL_26:

        if (v13 > 0)
        {
          goto LABEL_51;
        }

        goto LABEL_34;
      }
    }

    else
    {
      v18 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v18)
      {
        goto LABEL_26;
      }
    }

    if (((v17 >> 1) - v16) < v13)
    {
      goto LABEL_52;
    }

    v32 = v13;
    if (v12)
    {
      if (v18 < 1)
      {
        goto LABEL_54;
      }

      sub_1D1293540(0, &qword_1EC60B100, &unk_1EC6099E0, 0x1E69DD258, MEMORY[0x1E69E62F8]);
      sub_1D11169A4();
      for (i = 0; i != v18; ++i)
      {
        v20 = sub_1D1112FB8(v33, i, v11);
        v22 = *v21;
        (v20)(v33, 0);
        *(v6 + 8 * v16 + 32 + 8 * i) = v22;
      }
    }

    else
    {
      swift_arrayInitWithCopy();
    }

    if (v32 >= 1)
    {
      v23 = *(v6 + 16);
      v24 = __OFADD__(v23, v32);
      v25 = v23 + v32;
      if (v24)
      {
        goto LABEL_53;
      }

      *(v6 + 16) = v25;
    }

LABEL_34:
    v34 = v3;
    v26 = [v9 presentedViewController];
    if (v26)
    {
      v27 = v26;
      MEMORY[0x1D3885D90]();
      if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D13904BC();
      }

      sub_1D13904FC();
    }

    objc_opt_self();
    v28 = swift_dynamicCastObjCClass();
    if (v28)
    {
      v29 = [v28 viewControllers];
      v30 = sub_1D139045C();

      sub_1D11228D0(v30);
    }

    v3 = v34;
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
  return result;
}

uint64_t sub_1D1292D64(void *a1, void *a2)
{
  v48 = a2;
  v47 = sub_1D138D5EC();
  v3 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v46 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v45 = &v44 - v6;
  sub_1D1082CC4(0, &qword_1EE06A4C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D139E810;
  *(v7 + 32) = a1;
  v54 = v7;
  v44 = (v3 + 8);
  v8 = a1;
  while (1)
  {
    if (v7 >> 62)
    {
      if (!sub_1D13910DC())
      {
LABEL_47:

        return 0;
      }
    }

    else if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_47;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (v7 >> 62 || (result & 1) == 0)
    {
      result = sub_1D12FFAC8(v7);
      v7 = result;
    }

    v10 = v7 & 0xFFFFFFFFFFFFFF8;
    v11 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v11)
    {
      break;
    }

    v12 = v11 - 1;
    v13 = *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v12 + 0x20);
    *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) = v12;
    type metadata accessor for ClinicalAccountDetailsViewController();
    if (swift_dynamicCastClass())
    {
      v14 = v13;

      sub_1D138F6CC();

      v15 = v53[0];
      v16 = [v53[0] identifier];

      v17 = v45;
      sub_1D138D5CC();

      v18 = [v48 identifier];
      v19 = v46;
      sub_1D138D5CC();

      LOBYTE(v18) = sub_1D138D5BC();
      v20 = *v44;
      v21 = v19;
      v22 = v47;
      (*v44)(v21, v47);
      v20(v17, v22);
      if (v18)
      {

        return v14;
      }
    }

    v23 = [v13 childViewControllers];
    v52 = sub_1D106F934(0, &unk_1EC6099E0);
    v24 = sub_1D139045C();

    v25 = v24 >> 62;
    if (v24 >> 62)
    {
      v26 = sub_1D13910DC();
      v27 = v7 >> 62;
      if (!(v7 >> 62))
      {
LABEL_13:
        result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v28 = result + v26;
        if (__OFADD__(result, v26))
        {
          goto LABEL_51;
        }

        goto LABEL_14;
      }
    }

    else
    {
      v26 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v27 = v7 >> 62;
      if (!(v7 >> 62))
      {
        goto LABEL_13;
      }
    }

    result = sub_1D13910DC();
    v28 = result + v26;
    if (__OFADD__(result, v26))
    {
      goto LABEL_51;
    }

LABEL_14:
    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (!v27)
      {
        if (v28 <= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }

LABEL_19:
      sub_1D13910DC();
      goto LABEL_20;
    }

    if (v27)
    {
      goto LABEL_19;
    }

LABEL_20:
    result = sub_1D139122C();
    v7 = result;
    v10 = result & 0xFFFFFFFFFFFFFF8;
LABEL_21:
    v29 = *(v10 + 16);
    v30 = *(v10 + 24);
    if (v25)
    {
      result = sub_1D13910DC();
      v31 = result;
      if (!result)
      {
LABEL_27:

        if (v26 > 0)
        {
          goto LABEL_52;
        }

        goto LABEL_35;
      }
    }

    else
    {
      v31 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v31)
      {
        goto LABEL_27;
      }
    }

    if (((v30 >> 1) - v29) < v26)
    {
      goto LABEL_53;
    }

    v50 = v7;
    v51 = v13;
    v49 = v26;
    if (v25)
    {
      if (v31 < 1)
      {
        goto LABEL_55;
      }

      sub_1D1293540(0, &qword_1EC60B100, &unk_1EC6099E0, 0x1E69DD258, MEMORY[0x1E69E62F8]);
      sub_1D11169A4();
      for (i = 0; i != v31; ++i)
      {
        v33 = sub_1D1112FB8(v53, i, v24);
        v35 = *v34;
        (v33)(v53, 0);
        *(v10 + 8 * v29 + 32 + 8 * i) = v35;
      }
    }

    else
    {
      swift_arrayInitWithCopy();
    }

    v7 = v50;
    v13 = v51;
    if (v49 >= 1)
    {
      v36 = *(v10 + 16);
      v37 = __OFADD__(v36, v49);
      v38 = v36 + v49;
      if (v37)
      {
        goto LABEL_54;
      }

      *(v10 + 16) = v38;
    }

LABEL_35:
    v54 = v7;
    v39 = [v13 presentedViewController];
    if (v39)
    {
      v40 = v39;
      MEMORY[0x1D3885D90]();
      if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D13904BC();
      }

      sub_1D13904FC();
    }

    objc_opt_self();
    v41 = swift_dynamicCastObjCClass();
    if (v41)
    {
      v42 = [v41 viewControllers];
      v43 = sub_1D139045C();

      sub_1D11228D0(v43);
    }

    v7 = v54;
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
  return result;
}

id sub_1D129334C@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  for (i = a2; ; i = v6)
  {
    v7 = [i parentViewController];
    if (!v7)
    {
      v7 = [i presentingViewController];
      if (!v7)
      {
        break;
      }
    }

    v6 = v7;
  }

  v8 = a1;
  v9 = sub_1D1292900(i, v8);

  if (v9)
  {
    type metadata accessor for MedicalRecordTimelineViewController();
    v10 = swift_dynamicCastClass();
    if (!v10)
    {
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = v8;
  v12 = sub_1D1292D64(i, v11);

  if (!v12)
  {
    v13 = 0;
    v14 = &selRef_deselectRowAtIndexPath_animated_;
    if (v10)
    {
      goto LABEL_13;
    }

LABEL_16:
    v15 = 0;
    if (v13)
    {
      goto LABEL_14;
    }

LABEL_17:
    result = 0;
    goto LABEL_18;
  }

  type metadata accessor for ClinicalAccountDetailsViewController();
  v13 = swift_dynamicCastClass();
  if (!v13)
  {
  }

  v14 = &selRef_deselectRowAtIndexPath_animated_;
  if (!v10)
  {
    goto LABEL_16;
  }

LABEL_13:
  v15 = [v10 v14[386]];
  if (!v13)
  {
    goto LABEL_17;
  }

LABEL_14:
  result = [v13 v14[386]];
LABEL_18:
  *a3 = i;
  a3[1] = v15;
  a3[2] = v10;
  a3[3] = result;
  a3[4] = v13;
  return result;
}

uint64_t sub_1D12934B8(uint64_t a1)
{
  sub_1D1293540(0, &qword_1EC60E8F0, &qword_1EC60E8F8, 0x1E69DCCD8, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D1293540(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D106F934(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1D12935D8(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1D1292328(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D1293644(uint64_t a1)
{
  sub_1D107F5C8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D12936B8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D1292328(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D1293714(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1D1292328(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_1D1293780()
{
  result = qword_1EC60E910;
  if (!qword_1EC60E910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60E910);
  }

  return result;
}

void sub_1D12937D4(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1D106F934(255, a3);
    sub_1D10922EC();
    v4 = sub_1D139061C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_15HealthRecordsUI26UpgradeFlowViewEnvironment33_C1E9680787D6FC085CDD3D854B2FD8D9LLV0fG4TypeO(uint64_t a1)
{
  if ((*(a1 + 32) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 32) & 7;
  }
}

uint64_t sub_1D1293878(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 33))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 32);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D12938C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D1293908(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t sub_1D1293940(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 33))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 32);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D1293988(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

unint64_t sub_1D12939F0()
{
  result = qword_1EC60E928;
  if (!qword_1EC60E928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60E928);
  }

  return result;
}

uint64_t type metadata accessor for CategorySearchViewController()
{
  result = qword_1EC60E968;
  if (!qword_1EC60E968)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1D1293B6C()
{
  v1 = qword_1EC60E960;
  if (*(v0 + qword_1EC60E960))
  {
    v2 = *(v0 + qword_1EC60E960);
  }

  else
  {
    sub_1D139092C();
    v3 = *(v0 + qword_1EC60E938);
    v4 = [v3 healthStore];
    v5 = sub_1D1294118();
    v6 = [v3 healthStore];
    v7 = [v6 profileIdentifier];

    type metadata accessor for CategorySearchSectionDataSourceProvider();
    v2 = swift_allocObject();
    v2[2] = 0;
    v2[11] = 0;
    sub_1D102CC18(&v9, (v2 + 3));
    v2[9] = v7;
    v2[10] = v5;
    v2[8] = v4;
    *(v0 + v1) = v2;
  }

  return v2;
}

void sub_1D1293C78(uint64_t a1)
{
  v1 = (a1 + qword_1EC60E958);
  *v1 = 0;
  v1[1] = 0;
  *(a1 + qword_1EC60E960) = 0;
  sub_1D13913BC();
  __break(1u);
}

void sub_1D1293CF0()
{
  v1 = sub_1D1293B6C();
  v10 = type metadata accessor for CategorySearchSectionDataSourceProvider();
  v11 = sub_1D1295A80(&qword_1EC60E990, v2, type metadata accessor for CategorySearchSectionDataSourceProvider);
  v9 = v1;
  sub_1D138EC5C();
  v8.receiver = v0;
  v8.super_class = type metadata accessor for CategorySearchViewController();
  objc_msgSendSuper2(&v8, sel_viewDidLoad);
  v3 = [v0 collectionView];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_opt_self() systemGroupedBackgroundColor];
    [v4 setBackgroundColor_];

    v6 = [v0 collectionView];
    if (v6)
    {
      v7 = v6;
      [v6 setKeyboardDismissMode_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1D1293E24(void *a1)
{
  v1 = a1;
  sub_1D1293CF0();
}

void sub_1D1293E6C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1D138F1AC();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1D138DEBC();
  v7 = MEMORY[0x1EEE9AC00](v6);
  (*(v9 + 104))(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69A3558], v7);
  v10 = a1;
  sub_1D139096C();
  sub_1D138F18C();
  sub_1D139097C();
  v11 = type metadata accessor for CategorySearchViewController();
  v12.receiver = v10;
  v12.super_class = v11;
  objc_msgSendSuper2(&v12, sel_viewIsAppearing_, a3);
}

id sub_1D1293FE8(void *a1, uint64_t a2, uint64_t a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for CategorySearchViewController();
  return objc_msgSendSuper2(&v5, sel_viewDidAppear_, a3);
}

void sub_1D1294034()
{
  v1 = v0;
  sub_1D138EC6C();
  v2 = sub_1D138EC7C();
  v2();
  v3 = [v0 collectionView];
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = v3;
  sub_1D138EB6C();
  sub_1D13908CC();

  sub_1D138EC3C();
  v5 = [v1 collectionView];
  if (!v5)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v6 = v5;
  sub_1D138E83C();
}

uint64_t sub_1D1294118()
{
  sub_1D1295350(0, &qword_1EC60B290, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v36 - v2;
  v39 = v0;
  v4 = (v0 + qword_1EC60E958);
  swift_beginAccess();
  v5 = v4[1];
  v6 = MEMORY[0x1E69E6158];
  v38 = v4;
  if (v5)
  {
    v7 = *v4;
    sub_1D106F934(0, &qword_1EE06B790);
    sub_1D11044D4(0, &qword_1EE06B080, &qword_1EE06B070);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1D139E710;
    *(v8 + 56) = v6;
    v9 = sub_1D1089930();
    strcpy((v8 + 32), "localizedTitle");
    *(v8 + 47) = -18;
    *(v8 + 96) = v6;
    *(v8 + 104) = v9;
    *(v8 + 64) = v9;
    *(v8 + 72) = v7;
    *(v8 + 80) = v5;

    v10 = sub_1D139076C();
  }

  else
  {
    v10 = 0;
  }

  v41[4] = v10;
  v11 = sub_1D106F934(0, &qword_1EE06B790);
  sub_1D11044D4(0, &qword_1EE06B080, &qword_1EE06B070);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D139E710;
  *(v12 + 56) = v6;
  v13 = sub_1D1089930();
  strcpy((v12 + 32), "pluginPackage");
  *(v12 + 46) = -4864;
  *(v12 + 96) = v6;
  *(v12 + 104) = v13;
  *(v12 + 64) = v13;
  *(v12 + 72) = 0xD000000000000025;
  *(v12 + 80) = 0x80000001D13BCBC0;
  v36[1] = v11;
  v41[5] = sub_1D139076C();
  sub_1D138DB9C();
  sub_1D1295350(0, &qword_1EC60B298, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
  v14 = sub_1D138D97C();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = swift_allocObject();
  v37 = xmmword_1D139E700;
  *(v17 + 16) = xmmword_1D139E700;
  (*(v15 + 104))(v17 + v16, *MEMORY[0x1E69A3BB0], v14);
  sub_1D138DA6C();
  v18 = sub_1D138CFBC();
  (*(*(v18 - 8) + 56))(v3, 1, 1, v18);
  sub_1D10A5C9C(0, &qword_1EC60A0A8);
  v19 = swift_allocObject();
  *(v19 + 16) = v37;
  v20 = v39;
  v21 = [*(v39 + qword_1EC60E938) healthStore];
  v22 = [v21 profileIdentifier];

  *(v19 + 32) = v22;
  v23 = sub_1D138DB4C();

  sub_1D111C068(v3);
  v24 = *(v20 + qword_1EC60E940);
  v41[6] = v23;
  v41[7] = v24;
  v25 = *v38;
  v26 = v38[1];

  v27 = v24;
  v28 = sub_1D1295750(v25, v26);

  v30 = 0;
  v41[8] = v28;
  v40 = MEMORY[0x1E69E7CC0];
LABEL_5:
  if (v30 <= 5)
  {
    v31 = 5;
  }

  else
  {
    v31 = v30;
  }

  while (1)
  {
    if (v30 == 5)
    {
      sub_1D1080A7C(0, &qword_1EE06B788, &qword_1EE06B790);
      swift_arrayDestroy();
      v34 = sub_1D139044C();

      v35 = [objc_opt_self() andPredicateWithSubpredicates_];

      return v35;
    }

    if (v31 == v30)
    {
      break;
    }

    v32 = v41[v30++ + 4];
    if (v32)
    {
      v33 = v32;
      MEMORY[0x1D3885D90]();
      if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D13904BC();
      }

      result = sub_1D13904FC();
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

id sub_1D12946EC(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_1D138D82C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138D7EC();
  v9 = a3;
  v10 = a1;
  v11 = sub_1D138D7DC();
  v12 = type metadata accessor for CategorySearchViewController();
  v16.receiver = v10;
  v16.super_class = v12;
  objc_msgSendSuper2(&v16, sel_collectionView_didSelectItemAtIndexPath_, v9, v11);

  result = [v10 collectionView];
  if (result)
  {
    v14 = result;
    v15 = sub_1D138D7DC();
    [v14 deselectItemAtIndexPath:v15 animated:1];

    return (*(v6 + 8))(v8, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D12948C4()
{
  v1 = *(v0 + qword_1EC60E930 + 8);
}

id sub_1D1294994()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CategorySearchViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D12949CC(uint64_t a1)
{
  v2 = *(a1 + qword_1EC60E930 + 8);
}

uint64_t sub_1D1294AA8()
{
  v1 = (v0 + qword_1EC60E958);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

void sub_1D1294B00(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = (v3 + qword_1EC60E958);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;

  sub_1D1293B6C();
  sub_1D1294CE0();

  v7 = sub_1D138E0FC();

  sub_1D1294118();
  sub_1D138EB0C();
}

void (*sub_1D1294BA8(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D1294C0C;
}

void sub_1D1294C0C(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1D1293B6C();
    sub_1D1294CE0();

    v3 = sub_1D138E0FC();

    sub_1D1294118();
    sub_1D138EB0C();
  }
}

uint64_t sub_1D1294CE0()
{
  sub_1D12952B0(0, &qword_1EC60E988, MEMORY[0x1E69A35F8]);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v23 - v4;
  v6 = sub_1D138E6BC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1295350(0, &qword_1EC60BE38, MEMORY[0x1E69A36C0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v23 - v11;
  if (*(v0 + 16))
  {
    v13 = *(v0 + 16);
  }

  else
  {
    v14 = v0;
    sub_1D129501C();
    sub_1D138E65C();
    sub_1D138E66C();
    sub_1D11580B0();
    v16 = *(v15 + 48);
    (*(v7 + 32))(v12, v9, v6);
    *&v12[v16] = 0;
    v17 = *MEMORY[0x1E69A36B0];
    v18 = sub_1D138E5EC();
    v19 = *(v18 - 8);
    (*(v19 + 104))(v12, v17, v18);
    (*(v19 + 56))(v12, 0, 1, v18);
    sub_1D10A5CE8();
    v21 = objc_allocWithZone(v20);
    sub_1D138E0CC();
    (*(v3 + 104))(v5, *MEMORY[0x1E69A35F0], v2);
    sub_1D1295290(0);
    swift_allocObject();
    v13 = sub_1D138E17C();
    *(v14 + 16) = v13;
  }

  return v13;
}

id sub_1D129501C()
{
  v1 = v0[11];
  if (v1)
  {
    v2 = v0[11];
  }

  else
  {
    __swift_project_boxed_opaque_existential_1Tm(v0 + 3, v0[6]);
    v3 = v0;
    v4 = sub_1D138D8BC();
    sub_1D10A5C9C(0, &qword_1EE06A4C0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1D139E810;
    v6 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
    v7 = sub_1D139012C();
    v8 = [v6 initWithKey:v7 ascending:1 selector:sel_localizedStandardCompare_];

    *(v5 + 32) = v8;
    v9 = sub_1D1390B6C();

    v10 = v3[11];
    v3[11] = v9;
    v2 = v9;

    v1 = 0;
  }

  v11 = v1;
  return v2;
}

uint64_t sub_1D1295164()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 3));

  return swift_deallocClassInstance();
}

uint64_t sub_1D12951E8()
{
  sub_1D11044D4(0, &qword_1EC60A098, &qword_1EC60A0A0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D139E700;
  v1 = sub_1D1294CE0();
  v2 = sub_1D1295A80(&qword_1EC60E978, 255, sub_1D1295290);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  return v0;
}

void sub_1D12952B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1D10A5CE8();
    v7 = v6;
    v8 = sub_1D1295A80(&qword_1EC60A0C0, 255, sub_1D10A5CE8);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1D1295350(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

id sub_1D12953B4(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = *(a1 + 48);
  v35 = *(a1 + 32);
  v5 = v35;
  v36 = v6;
  v37 = *(a1 + 64);
  v7 = v37;
  v8 = *(a1 + 16);
  v34[0] = *a1;
  v9 = v34[0];
  v34[1] = v8;
  v10 = &v3[qword_1EC60E958];
  *v10 = 0;
  *(v10 + 1) = 0;
  *&v3[qword_1EC60E960] = 0;
  v11 = &v3[qword_1EC60E930];
  *(v11 + 2) = v5;
  *(v11 + 3) = v6;
  *(v11 + 8) = v7;
  *v11 = v9;
  *(v11 + 1) = v8;
  *&v3[qword_1EC60E938] = a2;
  LOBYTE(v32) = v34[0];
  sub_1D1082914(v34, v33);
  v12 = a2;
  v13 = [v12 healthStore];
  v14 = [v13 profileIdentifier];

  v15 = _s14HealthPlatform8FeedItemC0A9RecordsUIE029predicateForUserDomainConceptC5Items12categoryKind13sourceProfileSo11NSPredicateCAD15DisplayCategoryV0N0OSg_AA06SourceP0OtFZ_0(&v32);
  sub_1D1080D98(v34);

  sub_1D10A5C9C(0, &qword_1EE06A4C0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1D139E6E0;
  *(v16 + 32) = v15;
  v30 = v15;
  v17 = [v12 healthStore];
  v18 = [v17 profileIdentifier];

  v19 = _s14HealthPlatform8FeedItemC0A9RecordsUIE019predicateForGeneralaE10Onboarding9profileIdSo11NSPredicateCSo19HKProfileIdentifierC_tFZ_0(v18);
  *(v16 + 40) = v19;
  sub_1D106F934(0, &qword_1EE06B790);
  v20 = sub_1D139044C();

  v21 = [objc_opt_self() orPredicateWithSubpredicates_];

  *&v3[qword_1EC60E940] = v21;
  v22 = qword_1EE06AF70;
  v23 = v21;
  if (v22 != -1)
  {
    swift_once();
  }

  v24 = qword_1EE06BB58;
  v25 = [v12 healthStore];
  v26 = [v25 profileIdentifier];

  v32 = *(v24 + OBJC_IVAR___HRProfileManager_lock);
  MEMORY[0x1EEE9AC00](v27);
  sub_1D138D96C();
  sub_1D138EF2C();
  sub_1D1295A80(&qword_1EE06B048, 255, MEMORY[0x1E69A3B50]);

  sub_1D138ED0C();

  *&v3[qword_1EC60E948] = v33[0];
  *&v3[qword_1EC60E950] = 4;
  v31.receiver = v3;
  v31.super_class = type metadata accessor for CategorySearchViewController();
  v28 = objc_msgSendSuper2(&v31, sel_initWithCollectionViewLayout_, 0);

  return v28;
}

id sub_1D1295750(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  sub_1D106F934(0, &qword_1EE06B790);
  sub_1D11044D4(0, &qword_1EE06B080, &qword_1EE06B070);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D139E710;
  v6 = MEMORY[0x1E69E6158];
  *(v5 + 56) = MEMORY[0x1E69E6158];
  v7 = sub_1D1089930();
  strcpy((v5 + 32), "localizedTitle");
  *(v5 + 47) = -18;
  *(v5 + 96) = v6;
  *(v5 + 104) = v7;
  *(v5 + 64) = v7;
  *(v5 + 72) = a1;
  *(v5 + 80) = a2;
  swift_bridgeObjectRetain_n();
  v8 = sub_1D139076C();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D139E710;
  *(v9 + 56) = v6;
  *(v9 + 64) = v7;
  *(v9 + 32) = 0xD000000000000014;
  *(v9 + 40) = 0x80000001D13C9780;
  *(v9 + 96) = v6;
  *(v9 + 104) = v7;
  *(v9 + 72) = a1;
  *(v9 + 80) = a2;
  v10 = sub_1D139076C();
  sub_1D10A5C9C(0, &qword_1EE06A4C0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D139E6E0;
  *(v11 + 32) = v8;
  *(v11 + 40) = v10;
  v12 = v8;
  v13 = v10;
  v14 = sub_1D139044C();

  v15 = objc_opt_self();
  v16 = [v15 orPredicateWithSubpredicates_];

  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1D139E700;
  *(v17 + 56) = v6;
  *(v17 + 64) = v7;
  strcpy((v17 + 32), "indexForSearch");
  *(v17 + 47) = -18;
  v18 = sub_1D139076C();
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1D139E6E0;
  *(v19 + 32) = v16;
  *(v19 + 40) = v18;
  v20 = v16;
  v21 = v18;
  v22 = sub_1D139044C();

  v23 = [v15 andPredicateWithSubpredicates_];

  return v23;
}

uint64_t sub_1D1295A80(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id ViewControllerFactory.makeUserDomainConceptDetailViewController(for:using:)(void *a1, void *a2)
{
  v4 = objc_allocWithZone(type metadata accessor for UserDomainConceptDetailViewController());
  v5 = a1;
  v6 = a2;
  v7 = sub_1D12288FC(v5, v6);

  return v7;
}

void __swiftcall ViewControllerFactory.makeTimelineViewController(for:showsInitialSearchBar:using:queryPredicateByType:)(UIViewController *__return_ptr retstr, WDMedicalRecordCategory *a2, Swift::Bool showsInitialSearchBar, HRProfile *using, Swift::OpaquePointer queryPredicateByType)
{
  v8 = sub_1D138D5EC();
  v53 = *(v8 - 8);
  v9 = v53;
  MEMORY[0x1EEE9AC00](v8);
  v52 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D129C088(0, &qword_1EC60D6B0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v55 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v51 - v15;
  (*(v9 + 56))(&v51 - v15, 1, 1, v8, v14);
  v54 = type metadata accessor for MedicalRecordTimelineViewController();
  v17 = objc_allocWithZone(v54);
  v18 = &v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_overrideTitle];
  *v18 = 0;
  v18[1] = 0;
  *&v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_displayItemProvider] = 0;
  *&v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_observer] = 0;
  *&v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_account] = 0;
  v19 = OBJC_IVAR___HRMedicalRecordTimelineViewController_ontologyConcept;
  *&v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_ontologyConcept] = 0;
  v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_chartLoaded] = 0;
  *&v17[OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___contentStatusView] = 0;
  *&v17[OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___clinicalAccountStore] = 0;
  *&v17[OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___dataProvider] = 0;
  *&v17[OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___accountStateProvider] = 0;
  *&v17[OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___dataSourceProvider] = 0;
  *&v17[OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___dataSource] = 0;
  *&v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_cloudSyncObserver] = 0;
  *&v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_queryReturnedCancellable] = 0;
  *&v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_accountStateCancellable] = 0;
  *&v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_ingestionStateCancellable] = 0;
  *&v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_indexManagerStateCancellable] = 0;
  v20 = &v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_ingestionState];
  *v20 = 0;
  v20[8] = 1;
  v21 = &v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_indexManagerState];
  *v21 = 0;
  v21[8] = 1;
  v22 = &v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_gradientView];
  sub_1D138E37C();
  v23 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v24 = a2;

  v25 = using;
  v26 = [v23 init];
  v27 = MEMORY[0x1E69A3658];
  *v22 = v26;
  v22[1] = v27;
  v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_showGradientBackgroundForAllRecordsRoom] = 0;
  *&v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_gradientSubscriber] = 0;
  *&v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_profile] = v25;
  *&v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_category] = a2;
  sub_1D1127E2C(v16, &v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_accountId]);
  *&v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_conceptIdentifier] = 0;
  *&v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_userDomainConcept] = 0;
  *&v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_additionalPredicatesPerSampleType] = queryPredicateByType;
  v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_isDisplayingRemovedRecords] = 0;
  v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_showExportButton] = 0;
  v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_cloudSyncActive] = 0;
  *&v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_preloadedRemovedRecords] = 0;
  v28 = *&v17[v19];
  v29 = &v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_displayState];
  *v29 = 0;
  *(v29 + 1) = 0;
  *(v29 + 2) = v28;
  *(v29 + 3) = a2;
  v29[32] = 0;
  v30 = objc_opt_self();
  v31 = v28;
  v32 = v53;
  v33 = v24;

  v34 = v25;
  v35 = [v30 clearColor];
  v58 = sub_1D138E90C();
  v59 = MEMORY[0x1E69A3750];
  __swift_allocate_boxed_opaque_existential_1(&v57);
  sub_1D138E8FC();
  sub_1D102CC18(&v57, &v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_gradientColorProvider]);
  v36 = [(HRProfile *)v34 healthStore];
  v37 = sub_1D107D9D8(v36, a2, 0, 0, queryPredicateByType._rawValue, v16, 0);

  *&v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_timelinePagedDataSource] = v37;
  v38 = [objc_allocWithZone(MEMORY[0x1E69DC840]) init];
  v56.receiver = v17;
  v56.super_class = v54;
  v39 = [(UIViewController *)&v56 initWithCollectionViewLayout:v38];

  v40 = v39;
  sub_1D1072338();

  sub_1D138F6CC();

  v41 = BYTE8(v57);
  v42 = v40 + OBJC_IVAR___HRMedicalRecordTimelineViewController_ingestionState;
  *v42 = v57;
  v42[8] = v41;

  sub_1D138F6CC();
  v43 = v55;

  v44 = v57;
  v45 = BYTE8(v57);
  if (v57 <= 1)
  {
    v46 = 1;
  }

  else
  {
    v46 = v57;
  }

  if (!BYTE8(v57))
  {
    v44 = v46;
  }

  v47 = v40 + OBJC_IVAR___HRMedicalRecordTimelineViewController_indexManagerState;
  *v47 = v44;
  v47[8] = v45;
  sub_1D1127E2C(v16, v43);
  if ((*(v32 + 48))(v43, 1, v8) == 1)
  {
    sub_1D129C0EC(v43, &qword_1EC60D6B0, MEMORY[0x1E69695A8]);
  }

  else
  {
    v48 = v52;
    (*(v32 + 32))(v52, v43, v8);
    sub_1D107B54C(v48);
    (*(v32 + 8))(v48, v8);
  }

  sub_1D107A01C();

  sub_1D129C0EC(v16, &qword_1EC60D6B0, MEMORY[0x1E69695A8]);
  v49 = v40;
  v50 = [(UIViewController *)v49 navigationItem];
  [(UINavigationItem *)v50 setLargeTitleDisplayMode:2];
}

id ViewControllerFactory.makeUserDomainConceptListViewController(for:listType:using:)(unsigned __int8 *a1, uint64_t a2, void *a3)
{
  v6 = *a1;
  objc_allocWithZone(type metadata accessor for UserDomainConceptListViewController());
  return sub_1D137AFD8(&v6, a2, a3);
}

void ViewControllerFactory.makeHealthRecordsPrivacyPresenter()()
{
  v0 = sub_1D139012C();
  v1 = [objc_opt_self() presenterForPrivacySplashWithIdentifier_];

  if (!v1)
  {
    __break(1u);
  }
}

id sub_1D12962C0()
{
  result = [objc_allocWithZone(type metadata accessor for ViewControllerFactory()) init];
  qword_1EE06AA70 = result;
  return result;
}

id ViewControllerFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static ViewControllerFactory.shared.getter()
{
  if (qword_1EE069ED0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE06AA70;

  return v1;
}

uint64_t sub_1D12963DC(uint64_t a1, void *a2)
{
  v20 = a2;
  sub_1D129C088(0, &qword_1EC60D6B0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  v9 = sub_1D138D5EC();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v10 + 16);
  v14(v13, a1, v9, v11);
  objc_allocWithZone(type metadata accessor for MedicalRecordTimelineViewController());
  ObjectType = swift_getObjectType();
  (v14)(v8, v13, v9);
  v16 = *(v10 + 56);
  v16(v8, 0, 1, v9);
  v16(v5, 1, 1, v9);
  v17 = (*(ObjectType + 968))(v20, 0, v8, 0, 0, v5, 0, 0, 0, 1);
  (*(v10 + 8))(v13, v9);
  swift_deallocPartialClassInstance();
  return v17;
}

void sub_1D1296680(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    v10[4] = a4;
    v10[5] = a5;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1107296256;
    v10[2] = sub_1D10CBD3C;
    v10[3] = &block_descriptor_41_2;
    v7 = a3;
    v8 = _Block_copy(v10);

    a3 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (a1)
  {
    v9 = a1;
  }

  else
  {
    v9 = a2;
  }

  [v9 presentViewController:a3 animated:1 completion:v8];
  _Block_release(v8);
}

char *sub_1D129688C(void *a1, void *a2, char *a3, void (*a4)(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t)), void (*a5)(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t)), char a6)
{
  v13 = *a3;
  objc_allocWithZone(type metadata accessor for ClinicalAccountDetailsViewController());

  v11 = sub_1D127988C(a1, a2, &v13, a4, a5);
  if (a6)
  {
    sub_1D127B668();
  }

  return v11;
}

char *sub_1D129692C(void *a1, void *a2, void (*a3)(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t)), void (*a4)(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t)))
{
  v9 = 0;
  objc_allocWithZone(type metadata accessor for ClinicalAccountDetailsViewController());

  return sub_1D127988C(a1, a2, &v9, a3, a4);
}

uint64_t sub_1D1296B34(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v4[2] = sub_1D13905AC();
  v4[3] = sub_1D139059C();
  v8 = (a4 + *a4);
  v6 = swift_task_alloc();
  v4[4] = v6;
  *v6 = v4;
  v6[1] = sub_1D1296C44;

  return v8();
}

uint64_t sub_1D1296C44()
{

  v1 = sub_1D139055C();

  return MEMORY[0x1EEE6DFA0](sub_1D129C174, v1, v0);
}

uint64_t sub_1D1296DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1D129C088(0, &qword_1EE06A650, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v16 - v9;
  v11 = sub_1D13905DC();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_1D13905AC();

  v12 = sub_1D139059C();
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E85E0];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = a2;
  v13[5] = a3;
  sub_1D107877C(0, 0, v10, a5, v13);
}

uint64_t sub_1D1296EE8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v4[2] = sub_1D13905AC();
  v4[3] = sub_1D139059C();
  v8 = (a4 + *a4);
  v6 = swift_task_alloc();
  v4[4] = v6;
  *v6 = v4;
  v6[1] = sub_1D10AA380;

  return v8();
}

_BYTE *sub_1D1297030(uint64_t a1, void *a2)
{
  v55 = a2;
  sub_1D129C088(0, &qword_1EC60D6B0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v53 - v7;
  v9 = sub_1D138D5EC();
  v54 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v53 - v13;
  v15 = type metadata accessor for BrowseCategory();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v53 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v53 - v22;
  sub_1D129AA7C(a1, &v53 - v22, type metadata accessor for BrowseCategory);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0;
  if (EnumCaseMultiPayload > 4)
  {
    if ((EnumCaseMultiPayload - 6) < 2)
    {
LABEL_7:
      v28 = objc_allocWithZone(WDClinicalOnboardingOAuthNavigationViewController);
      v29 = v55;
      v30 = [v28 initWithContext:2 onboardingOptions:0 sourceIdentifier:0 profile:v55 existingAccount:0];
      v31 = [v29 onboardingManager];
      [v31 registerInflightOnboardingViewController:v30 completion:0];
      swift_storeEnumTagMultiPayload();
      v32 = BrowseCategory.rawValue.getter();
      v34 = v33;
      if (v32 == BrowseCategory.rawValue.getter() && v34 == v35)
      {

        v36 = 2;
      }

      else
      {
        v45 = sub_1D139162C();

        if (v45)
        {
          v36 = 2;
        }

        else
        {
          v36 = 1;
        }
      }

      sub_1D129AAE4(v17, type metadata accessor for BrowseCategory);
      if (qword_1EE06A170 != -1)
      {
        swift_once();
      }

      sub_1D122101C(v36, 2, 0);

      return v30;
    }

    if (EnumCaseMultiPayload != 5)
    {
      return sub_1D129AEAC(v55);
    }
  }

  else
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        if (EnumCaseMultiPayload != 3)
        {
          type metadata accessor for MedicalRecordTimelineViewController();
          v26 = MedicalRecordTimelineViewController.__allocating_init(profile:)(v55);
          swift_storeEnumTagMultiPayload();
          BrowseCategory.localizedTitle.getter();
          sub_1D129AAE4(v20, type metadata accessor for BrowseCategory);
          v27 = sub_1D139012C();

          [v26 setTitle_];

          return v26;
        }

        return result;
      }

      goto LABEL_7;
    }

    if (EnumCaseMultiPayload)
    {
      sub_1D107D12C();

      v46 = v54;
      (*(v54 + 32))(v14, v23, v9);
      v47 = v46[2];
      v47(v11, v14, v9);
      objc_allocWithZone(type metadata accessor for MedicalRecordTimelineViewController());
      ObjectType = swift_getObjectType();
      v47(v8, v11, v9);
      v49 = v46[7];
      v49(v8, 0, 1, v9);
      v49(v5, 1, 1, v9);
      v50 = (*(ObjectType + 968))(v55, 0, v8, 0, 0, v5, 0, 0, 0, 1);
      v51 = v46[1];
      v51(v11, v9);
      swift_deallocPartialClassInstance();
      v51(v14, v9);
      return v50;
    }

    v37 = *v23;
    if (qword_1EE069F78 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v38 = off_1EE069F80;
    if (*(off_1EE069F80 + 2) && (v39 = sub_1D12A2F78(v37), (v40 & 1) != 0))
    {
      v41 = v38[7] + 72 * v39;
      v57 = *v41;
      v43 = *(v41 + 32);
      v42 = *(v41 + 48);
      v44 = *(v41 + 64);
      v58 = *(v41 + 16);
      v59 = v43;
      v61 = v44;
      v60 = v42;
      swift_endAccess();
      v64 = v59;
      v65 = v60;
      v66 = v61;
      v62 = v57;
      v63 = v58;
      sub_1D1082914(&v57, v56);
    }

    else
    {
      swift_endAccess();
      result = [objc_opt_self() unknownRecordCategory];
      if (!result)
      {
        __break(1u);
        return result;
      }

      sub_1D123E1C4(result, &v62);
    }

    v59 = v64;
    v60 = v65;
    v61 = v66;
    v57 = v62;
    v58 = v63;
    v52 = [v53 makeViewControllerForCategory_usingProfile_];
    sub_1D1080D98(&v57);
    return v52;
  }

  return result;
}

id ViewControllerFactory.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ViewControllerFactory();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ViewControllerFactory.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ViewControllerFactory();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D1297950(uint64_t a1, void *a2)
{
  v4 = sub_1D138D5EC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MedicalRecordTimelineViewController();
  (*(v5 + 16))(v7, a1, v4);
  return MedicalRecordTimelineViewController.__allocating_init(profile:accountId:)(a2, v7);
}

void __swiftcall ViewControllerFactory.makeViewController(for:using:)(UIViewController *__return_ptr retstr, WDMedicalRecordCategory *a2, HRProfile *using)
{
  v6 = [(WDMedicalRecordCategory *)a2 categoryType];
  if (qword_1F4D04F18 == v6 || unk_1F4D04F20 == v6)
  {
    v8 = [v3 makeTimelineViewControllerForCategory:a2 showsInitialSearchBar:0 usingProfile:using filterPredicatesByType:0];

    v9 = v8;
  }

  else
  {
    v21 = v3;
    sub_1D123E1C4(a2, v25);
    if (qword_1EE06AF70 != -1)
    {
      swift_once();
    }

    v10 = qword_1EE06BB58;
    v11 = [(HRProfile *)using healthStore];
    v12 = [(HKHealthStore *)v11 profileIdentifier];

    v13 = OBJC_IVAR___HRProfileManager_lock;
    v22[0] = *(v10 + OBJC_IVAR___HRProfileManager_lock);
    MEMORY[0x1EEE9AC00](v14);
    sub_1D138D96C();
    type metadata accessor for CountProviderCollection();
    sub_1D10DC8AC();

    sub_1D138ED0C();

    v23[2] = v25[2];
    v23[3] = v25[3];
    v24 = v26;
    v23[0] = v25[0];
    v23[1] = v25[1];
    sub_1D1082914(v25, v22);
    v15 = sub_1D12E4360(v23);
    sub_1D1080D98(v25);
    v16 = [(HRProfile *)using healthStore];
    v17 = [(HKHealthStore *)v16 profileIdentifier];

    v22[0] = *(v10 + v13);
    MEMORY[0x1EEE9AC00](v18);
    type metadata accessor for AccountStateProvider();

    sub_1D138ED0C();

    v19 = *&v23[0];
    v20 = objc_allocWithZone(type metadata accessor for RecordCategoryViewController());
    sub_1D12988E4(v25, using, v15, v19, v21, v20);
  }
}

void __swiftcall ViewControllerFactory.makeTimelineViewController(for:showsInitialSearchBar:using:filterPredicatesByType:)(UIViewController *__return_ptr retstr, WDMedicalRecordCategory *a2, Swift::Bool showsInitialSearchBar, HRProfile *using, Swift::OpaquePointer_optional filterPredicatesByType)
{
  rawValue = filterPredicatesByType.value._rawValue;
  v8 = sub_1D138D5EC();
  v52 = v8;
  v54 = *(v8 - 8);
  v9 = v54;
  MEMORY[0x1EEE9AC00](v8);
  v51 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D129C088(0, &qword_1EC60D6B0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v55 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v51 - v15;
  (*(v9 + 56))(&v51 - v15, 1, 1, v8, v14);
  v53 = type metadata accessor for MedicalRecordTimelineViewController();
  v17 = objc_allocWithZone(v53);
  v18 = &v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_overrideTitle];
  *v18 = 0;
  v18[1] = 0;
  *&v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_displayItemProvider] = 0;
  *&v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_observer] = 0;
  *&v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_account] = 0;
  v19 = OBJC_IVAR___HRMedicalRecordTimelineViewController_ontologyConcept;
  *&v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_ontologyConcept] = 0;
  v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_chartLoaded] = 0;
  *&v17[OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___contentStatusView] = 0;
  *&v17[OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___clinicalAccountStore] = 0;
  *&v17[OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___dataProvider] = 0;
  *&v17[OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___accountStateProvider] = 0;
  *&v17[OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___dataSourceProvider] = 0;
  *&v17[OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___dataSource] = 0;
  *&v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_cloudSyncObserver] = 0;
  *&v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_queryReturnedCancellable] = 0;
  *&v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_accountStateCancellable] = 0;
  *&v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_ingestionStateCancellable] = 0;
  *&v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_indexManagerStateCancellable] = 0;
  v20 = &v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_ingestionState];
  *v20 = 0;
  v20[8] = 1;
  v21 = &v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_indexManagerState];
  *v21 = 0;
  v21[8] = 1;
  v22 = &v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_gradientView];
  sub_1D138E37C();
  v23 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  v24 = a2;
  v25 = using;
  v26 = [v23 init];
  v27 = MEMORY[0x1E69A3658];
  *v22 = v26;
  v22[1] = v27;
  v28 = v16;
  v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_showGradientBackgroundForAllRecordsRoom] = 0;
  *&v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_gradientSubscriber] = 0;
  *&v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_profile] = v25;
  *&v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_category] = a2;
  sub_1D1127E2C(v16, &v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_accountId]);
  *&v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_conceptIdentifier] = 0;
  *&v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_userDomainConcept] = 0;
  *&v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_additionalPredicatesPerSampleType] = rawValue;
  v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_isDisplayingRemovedRecords] = 0;
  v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_showExportButton] = 0;
  v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_cloudSyncActive] = 0;
  *&v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_preloadedRemovedRecords] = 0;
  v29 = *&v17[v19];
  v30 = &v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_displayState];
  *v30 = 0;
  *(v30 + 1) = 0;
  *(v30 + 2) = v29;
  *(v30 + 3) = a2;
  v30[32] = 0;
  v31 = objc_opt_self();
  v32 = v29;
  v33 = v52;
  v34 = v24;
  v35 = v25;

  v36 = [v31 clearColor];
  v58 = sub_1D138E90C();
  v59 = MEMORY[0x1E69A3750];
  __swift_allocate_boxed_opaque_existential_1(&v57);
  sub_1D138E8FC();
  sub_1D102CC18(&v57, &v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_gradientColorProvider]);
  v37 = [(HRProfile *)v35 healthStore];
  v38 = sub_1D107D9D8(v37, a2, 0, 0, rawValue, v16, 0);

  *&v17[OBJC_IVAR___HRMedicalRecordTimelineViewController_timelinePagedDataSource] = v38;
  v39 = [objc_allocWithZone(MEMORY[0x1E69DC840]) init];
  v56.receiver = v17;
  v56.super_class = v53;
  v40 = [(UIViewController *)&v56 initWithCollectionViewLayout:v39];

  v41 = v40;
  sub_1D1072338();

  sub_1D138F6CC();
  v42 = v54;

  v43 = BYTE8(v57);
  v44 = v41 + OBJC_IVAR___HRMedicalRecordTimelineViewController_ingestionState;
  *v44 = v57;
  v44[8] = v43;

  sub_1D138F6CC();
  v45 = v55;

  v46 = v57;
  v47 = BYTE8(v57);
  if (v57 <= 1)
  {
    v48 = 1;
  }

  else
  {
    v48 = v57;
  }

  if (!BYTE8(v57))
  {
    v46 = v48;
  }

  v49 = v41 + OBJC_IVAR___HRMedicalRecordTimelineViewController_indexManagerState;
  *v49 = v46;
  v49[8] = v47;
  sub_1D1127E2C(v28, v45);
  if ((*(v42 + 48))(v45, 1, v33) == 1)
  {
    sub_1D129C0EC(v45, &qword_1EC60D6B0, MEMORY[0x1E69695A8]);
  }

  else
  {
    v50 = v51;
    (*(v42 + 32))(v51, v45, v33);
    sub_1D107B54C(v50);
    (*(v42 + 8))(v50, v33);
  }

  sub_1D107A01C();

  sub_1D129C0EC(v28, &qword_1EC60D6B0, MEMORY[0x1E69695A8]);
}

void __swiftcall ViewControllerFactory.makeAlphabeticalViewController(for:using:)(UIViewController *__return_ptr retstr, WDMedicalRecordCategory *a2, HRProfile *using)
{
  sub_1D123E1C4(a2, v5);
  v4 = objc_allocWithZone(type metadata accessor for ConceptListViewController());
  sub_1D133BFA4(v5, using);
}

void ViewControllerFactory.makeImproveHealthRecordsPrivacyPresenter()()
{
  v0 = sub_1D139012C();
  v1 = [objc_opt_self() presenterForPrivacySplashWithIdentifier_];

  if (!v1)
  {
    __break(1u);
  }
}

id sub_1D12988E4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, _BYTE *a6)
{
  *&a6[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_recordCanceller] = 0;
  *&a6[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_aToZCanceller] = 0;
  *&a6[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_labsCanceller] = 0;
  a6[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_shouldShowPinnedLabsTip] = 0;
  *&a6[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_cancellable] = 0;
  a6[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_requiresOnboarding] = 0;
  v12 = &a6[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_recordCount];
  *v12 = 0;
  v12[8] = 1;
  *&a6[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_currentViewController] = 0;
  a6[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_isSearching] = 0;
  v13 = &a6[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_gradientView];
  sub_1D138E37C();
  v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v15 = MEMORY[0x1E69A3658];
  *v13 = v14;
  v13[1] = v15;
  *&a6[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_gradientSubscriber] = 0;
  *&a6[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_labsTipTimer] = 0;
  *&a6[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_currentPalette] = 0;
  *&a6[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_modePickerState] = 2;
  *&a6[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController____lazy_storage___modePicker] = 0;
  v16 = &a6[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController____lazy_storage___resultViewController];
  *v16 = 0;
  v16[1] = 0;
  *&a6[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController____lazy_storage___searchController] = 0;
  *&a6[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController____lazy_storage___changeProvider] = 0;
  *&a6[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController____lazy_storage___listManager] = 0;
  *&a6[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController____lazy_storage___viewDataPublisher] = 0;
  *&a6[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController____lazy_storage___udcListViewController] = 1;
  *&a6[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController____lazy_storage___latestViewContoller] = 1;
  *&a6[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController____lazy_storage___lastUpdatedViewController] = 0;
  *&a6[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController____lazy_storage___alphabeticalViewController] = 0;
  *&a6[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_labsOnboardingViewController] = 0;
  *&a6[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController____lazy_storage___labsOnboardingTileDisplayEvaluator] = 0;
  *&a6[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController____lazy_storage___customEditButton] = 0;
  *&a6[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_profile] = a2;
  v17 = &a6[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_category];
  v18 = *(a1 + 48);
  *(v17 + 2) = *(a1 + 32);
  *(v17 + 3) = v18;
  v19 = *a1;
  v20 = *(a1 + 16);
  *(v17 + 8) = *(a1 + 64);
  *v17 = v19;
  *(v17 + 1) = v20;
  *&a6[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_countProvider] = a3;
  *&a6[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_accountStateProvider] = a4;
  *&a6[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_factory] = a5;
  a6[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_displayMode] = 0x80;
  v21 = *a1;
  v38 = a5;
  if ((*a1 & 0xFC) == 4)
  {
    v22 = a2;
    sub_1D1082914(a1, &v41);

    v23 = a5;
    v24 = 2;
  }

  else
  {
    v39[0] = *a1;
    v25 = a2;
    sub_1D1082914(a1, &v41);

    v26 = a5;
    v27 = sub_1D11AF4E4(v39);
    if (*(v27 + 2))
    {
      v24 = v27[32];
    }

    else
    {

      v24 = 1;
    }
  }

  a6[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_preferredSegment] = v24;
  v28 = [objc_opt_self() clearColor];
  v29 = sub_1D138E90C();
  v30 = MEMORY[0x1E69A3750];
  v42 = v29;
  v43 = MEMORY[0x1E69A3750];
  __swift_allocate_boxed_opaque_existential_1(&v41);
  sub_1D138E8FC();
  v31 = OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_gradientColorProvider;
  sub_1D102CC18(&v41, &a6[OBJC_IVAR____TtC15HealthRecordsUI28RecordCategoryViewController_gradientColorProvider]);
  LOBYTE(v41) = v21;
  v32 = DisplayCategory.Kind.hkDisplayCategory.getter();
  if (v32)
  {
    v33 = v32;
    if ([v32 color])
    {
      v42 = v29;
      v43 = v30;
      __swift_allocate_boxed_opaque_existential_1(&v41);
      sub_1D138E8FC();

      swift_beginAccess();
      __swift_destroy_boxed_opaque_existential_1Tm(&a6[v31]);
      sub_1D102CC18(&v41, &a6[v31]);
      swift_endAccess();
    }

    else
    {
    }
  }

  v34 = type metadata accessor for RecordCategoryViewController();
  v40.receiver = a6;
  v40.super_class = v34;
  v35 = objc_msgSendSuper2(&v40, sel_initWithNibName_bundle_, 0, 0);
  v36 = sub_1D139012C();
  sub_1D1080D98(a1);
  [v35 setTitle_];

  return v35;
}

char *sub_1D1298D48(void *a1, void *a2)
{
  v4 = type metadata accessor for PresentationContext(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v81 - v8;
  v10 = sub_1D138D5EC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D129C088(0, &qword_1EC60D6B0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v18 = MEMORY[0x1EEE9AC00](v17).n128_u64[0];
  v89 = &v81 - v19;
  v20 = [a1 primaryConcept];
  v21 = [v20 groupByConcept];

  if (![v21 isQualifiedForConceptRoom])
  {
    (*(v11 + 56))(v9, 1, 1, v10);
    sub_1D129AA7C(v9, v6, type metadata accessor for PresentationContext);
    v31 = objc_allocWithZone(type metadata accessor for MedicalRecordDetailViewController(0));
    v32 = a2;
    v33 = a1;
    v34 = sub_1D131237C(v33, v32, v6);

    v35 = v34;
    v36 = [v35 navigationItem];
    [v36 setLargeTitleDisplayMode_];

    sub_1D129AAE4(v9, type metadata accessor for PresentationContext);
    return v35;
  }

  v87 = a2;
  HKMedicalRecord.categoryKind.getter(&v99);
  v22 = v99;
  if (qword_1EE069F78 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v23 = off_1EE069F80;
  v24 = *(off_1EE069F80 + 2);
  v82 = v13;
  v88 = v16;
  if (v24)
  {
    v25 = sub_1D12A2F78(v22);
    if (v26)
    {
      v27 = v23[7] + 72 * v25;
      v94 = *v27;
      v29 = *(v27 + 32);
      v28 = *(v27 + 48);
      v30 = *(v27 + 64);
      v95 = *(v27 + 16);
      v96 = v29;
      v98 = v30;
      v97 = v28;
      swift_endAccess();
      v102 = v96;
      v103 = v97;
      v104 = v98;
      v100 = v94;
      v101 = v95;
      sub_1D1082914(&v94, &v90);
LABEL_10:
      v97 = v103;
      v98 = v104;
      v95 = v101;
      v96 = v102;
      v94 = v100;
      v86 = v21;
      v38 = [v21 identifier];
      v39 = v98;
      v40 = v89;
      (*(v11 + 56))(v89, 1, 1, v10);
      v83 = type metadata accessor for MedicalRecordTimelineViewController();
      v41 = objc_allocWithZone(v83);
      v42 = &v41[OBJC_IVAR___HRMedicalRecordTimelineViewController_overrideTitle];
      *v42 = 0;
      v42[1] = 0;
      *&v41[OBJC_IVAR___HRMedicalRecordTimelineViewController_displayItemProvider] = 0;
      *&v41[OBJC_IVAR___HRMedicalRecordTimelineViewController_observer] = 0;
      *&v41[OBJC_IVAR___HRMedicalRecordTimelineViewController_account] = 0;
      v43 = OBJC_IVAR___HRMedicalRecordTimelineViewController_ontologyConcept;
      *&v41[OBJC_IVAR___HRMedicalRecordTimelineViewController_ontologyConcept] = 0;
      v41[OBJC_IVAR___HRMedicalRecordTimelineViewController_chartLoaded] = 0;
      *&v41[OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___contentStatusView] = 0;
      *&v41[OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___clinicalAccountStore] = 0;
      *&v41[OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___dataProvider] = 0;
      *&v41[OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___accountStateProvider] = 0;
      *&v41[OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___dataSourceProvider] = 0;
      *&v41[OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___dataSource] = 0;
      *&v41[OBJC_IVAR___HRMedicalRecordTimelineViewController_cloudSyncObserver] = 0;
      *&v41[OBJC_IVAR___HRMedicalRecordTimelineViewController_queryReturnedCancellable] = 0;
      *&v41[OBJC_IVAR___HRMedicalRecordTimelineViewController_accountStateCancellable] = 0;
      *&v41[OBJC_IVAR___HRMedicalRecordTimelineViewController_ingestionStateCancellable] = 0;
      *&v41[OBJC_IVAR___HRMedicalRecordTimelineViewController_indexManagerStateCancellable] = 0;
      v44 = &v41[OBJC_IVAR___HRMedicalRecordTimelineViewController_ingestionState];
      *v44 = 0;
      v44[8] = 1;
      v45 = &v41[OBJC_IVAR___HRMedicalRecordTimelineViewController_indexManagerState];
      *v45 = 0;
      v45[8] = 1;
      v85 = v11;
      v84 = v10;
      v46 = &v41[OBJC_IVAR___HRMedicalRecordTimelineViewController_gradientView];
      sub_1D138E37C();
      v47 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v48 = v40;
      v49 = v39;
      v50 = v38;
      v51 = v87;
      v52 = [v47 init];
      v53 = MEMORY[0x1E69A3658];
      *v46 = v52;
      v46[1] = v53;
      v41[OBJC_IVAR___HRMedicalRecordTimelineViewController_showGradientBackgroundForAllRecordsRoom] = 0;
      *&v41[OBJC_IVAR___HRMedicalRecordTimelineViewController_gradientSubscriber] = 0;
      *&v41[OBJC_IVAR___HRMedicalRecordTimelineViewController_profile] = v51;
      *&v41[OBJC_IVAR___HRMedicalRecordTimelineViewController_category] = v39;
      sub_1D1127E2C(v48, &v41[OBJC_IVAR___HRMedicalRecordTimelineViewController_accountId]);
      *&v41[OBJC_IVAR___HRMedicalRecordTimelineViewController_conceptIdentifier] = v38;
      *&v41[OBJC_IVAR___HRMedicalRecordTimelineViewController_userDomainConcept] = 0;
      *&v41[OBJC_IVAR___HRMedicalRecordTimelineViewController_additionalPredicatesPerSampleType] = 0;
      v41[OBJC_IVAR___HRMedicalRecordTimelineViewController_isDisplayingRemovedRecords] = 0;
      v41[OBJC_IVAR___HRMedicalRecordTimelineViewController_showExportButton] = 0;
      v41[OBJC_IVAR___HRMedicalRecordTimelineViewController_cloudSyncActive] = 0;
      *&v41[OBJC_IVAR___HRMedicalRecordTimelineViewController_preloadedRemovedRecords] = 0;
      v54 = *&v41[v43];
      v55 = &v41[OBJC_IVAR___HRMedicalRecordTimelineViewController_displayState];
      *v55 = 0;
      *(v55 + 1) = v38;
      *(v55 + 2) = v54;
      *(v55 + 3) = v39;
      v55[32] = 0;
      v56 = objc_opt_self();
      v57 = v54;
      v58 = v84;
      v59 = v85;
      v60 = v49;
      v61 = v50;
      v87 = v60;
      v62 = v61;
      v63 = v51;
      v64 = v58;
      v65 = v59;
      v66 = [v56 clearColor];
      v91 = sub_1D138E90C();
      v92 = MEMORY[0x1E69A3750];
      __swift_allocate_boxed_opaque_existential_1(&v90);
      sub_1D138E8FC();
      sub_1D102CC18(&v90, &v41[OBJC_IVAR___HRMedicalRecordTimelineViewController_gradientColorProvider]);
      v67 = [v63 healthStore];
      v68 = v89;
      v69 = sub_1D107D9D8(v67, v39, v38, 0, 0, v89, 0);

      *&v41[OBJC_IVAR___HRMedicalRecordTimelineViewController_timelinePagedDataSource] = v69;
      v70 = [objc_allocWithZone(MEMORY[0x1E69DC840]) init];
      v93.receiver = v41;
      v93.super_class = v83;
      v71 = objc_msgSendSuper2(&v93, sel_initWithCollectionViewLayout_, v70);

      v35 = v71;
      sub_1D1072338();

      sub_1D138F6CC();

      v72 = BYTE8(v90);
      v73 = &v35[OBJC_IVAR___HRMedicalRecordTimelineViewController_ingestionState];
      *v73 = v90;
      v73[8] = v72;

      sub_1D138F6CC();

      v74 = v90;
      v75 = BYTE8(v90);
      if (v90 <= 1)
      {
        v76 = 1;
      }

      else
      {
        v76 = v90;
      }

      if (!BYTE8(v90))
      {
        v74 = v76;
      }

      v77 = &v35[OBJC_IVAR___HRMedicalRecordTimelineViewController_indexManagerState];
      *v77 = v74;
      v77[8] = v75;
      v78 = v68;
      v79 = v88;
      sub_1D1127E2C(v68, v88);
      if ((*(v65 + 48))(v79, 1, v64) == 1)
      {
        sub_1D129C0EC(v79, &qword_1EC60D6B0, MEMORY[0x1E69695A8]);
      }

      else
      {
        v80 = v82;
        (*(v65 + 32))(v82, v79, v64);
        sub_1D107B54C(v80);
        (*(v65 + 8))(v80, v64);
      }

      sub_1D107AEBC();

      sub_1D129C0EC(v78, &qword_1EC60D6B0, MEMORY[0x1E69695A8]);
      sub_1D1080D98(&v94);

      return v35;
    }
  }

  swift_endAccess();
  result = [objc_opt_self() unknownRecordCategory];
  if (result)
  {
    sub_1D123E1C4(result, &v100);
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

void sub_1D1299750(void *a1, void *a2, void *a3)
{
  v6 = sub_1D138F0BC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PresentationContext(0);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v25 - v14;
  v16 = sub_1D138D5EC();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  sub_1D129AA7C(v15, v13, type metadata accessor for PresentationContext);
  objc_allocWithZone(type metadata accessor for MedicalRecordDetailViewController(0));
  v17 = a1;
  v18 = a3;
  v19 = sub_1D131237C(v17, v18, v13);

  v20 = [v19 navigationItem];
  [v20 setLargeTitleDisplayMode_];

  sub_1D129AAE4(v15, type metadata accessor for PresentationContext);
  v25[1] = &unk_1F4DADB50;
  v21 = swift_dynamicCastObjCProtocolConditional();
  if (v21)
  {
    [a2 showAdaptively:v21 sender:a2 animated:1];
  }

  else
  {

    sub_1D138F06C();
    v22 = sub_1D138F0AC();
    v23 = sub_1D139080C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1D101F000, v22, v23, "Could not make AdaptiveModalPresentedViewController from factory makeDetailViewController(for:using:)", v24, 2u);
      MEMORY[0x1D38882F0](v24, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
  }
}

id sub_1D1299A40(void *a1, void *a2)
{
  sub_1D129C088(0, &qword_1EC60DF40, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v20 - v5;
  if (a1)
  {
    v7 = a1;
    if (sub_1D10C696C(a2))
    {
      v20[3] = a2;
      if (qword_1EE06AD00 != -1)
      {
        swift_once();
      }

      v20[2] = qword_1EE06BB10;
      sub_1D138D1CC();
      v20[1] = "_UNAVAILABLE_ALERT_TITLE";
      v8 = sub_1D138D67C();
      (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
      sub_1D129C088(0, &qword_1EE06B080, sub_1D10898CC, MEMORY[0x1E69E6F90]);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1D139E700;
      v10 = [v7 title];
      v11 = sub_1D139016C();
      v13 = v12;

      *(v9 + 56) = MEMORY[0x1E69E6158];
      *(v9 + 64) = sub_1D1089930();
      *(v9 + 32) = v11;
      *(v9 + 40) = v13;
      sub_1D138D1CC();
      if (*(v9 + 16))
      {
        sub_1D139019C();

        sub_1D129C0EC(v6, &qword_1EC60DF40, MEMORY[0x1E6969770]);
      }

      else
      {
        sub_1D129C0EC(v6, &qword_1EC60DF40, MEMORY[0x1E6969770]);
      }

      goto LABEL_11;
    }
  }

  if (qword_1EE06AD00 != -1)
  {
    swift_once();
  }

  sub_1D138D1CC();
  sub_1D138D1CC();
LABEL_11:
  v14 = objc_opt_self();
  v15 = sub_1D139012C();

  v16 = sub_1D139012C();

  v17 = sub_1D138D2AC();
  v18 = [v14 basicAlertControllerWithTitle:v15 message:v16 internalError:v17];

  return v18;
}

char *sub_1D1299EBC(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_1D138D5EC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v54 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D129C088(0, &qword_1EC60D6B0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v54 - v14;
  if (*(a2 + 8))
  {
    v16 = *(a2 + 64);
    v17 = v16;
  }

  else
  {
    v16 = 0;
  }

  (*(v8 + 56))(v15, 1, 1, v7);
  v56 = type metadata accessor for MedicalRecordTimelineViewController();
  v18 = objc_allocWithZone(v56);
  v57 = v8;
  v19 = v18;
  v20 = &v18[OBJC_IVAR___HRMedicalRecordTimelineViewController_overrideTitle];
  *v20 = 0;
  v20[1] = 0;
  *&v18[OBJC_IVAR___HRMedicalRecordTimelineViewController_displayItemProvider] = 0;
  *&v18[OBJC_IVAR___HRMedicalRecordTimelineViewController_observer] = 0;
  *&v18[OBJC_IVAR___HRMedicalRecordTimelineViewController_account] = 0;
  v58 = v7;
  v21 = OBJC_IVAR___HRMedicalRecordTimelineViewController_ontologyConcept;
  *&v18[OBJC_IVAR___HRMedicalRecordTimelineViewController_ontologyConcept] = 0;
  v18[OBJC_IVAR___HRMedicalRecordTimelineViewController_chartLoaded] = 0;
  *&v18[OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___contentStatusView] = 0;
  *&v18[OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___clinicalAccountStore] = 0;
  *&v18[OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___dataProvider] = 0;
  *&v18[OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___accountStateProvider] = 0;
  *&v18[OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___dataSourceProvider] = 0;
  *&v18[OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___dataSource] = 0;
  *&v18[OBJC_IVAR___HRMedicalRecordTimelineViewController_cloudSyncObserver] = 0;
  *&v18[OBJC_IVAR___HRMedicalRecordTimelineViewController_queryReturnedCancellable] = 0;
  *&v18[OBJC_IVAR___HRMedicalRecordTimelineViewController_accountStateCancellable] = 0;
  *&v18[OBJC_IVAR___HRMedicalRecordTimelineViewController_ingestionStateCancellable] = 0;
  *&v18[OBJC_IVAR___HRMedicalRecordTimelineViewController_indexManagerStateCancellable] = 0;
  v22 = &v18[OBJC_IVAR___HRMedicalRecordTimelineViewController_ingestionState];
  *v22 = 0;
  v22[8] = 1;
  v23 = &v18[OBJC_IVAR___HRMedicalRecordTimelineViewController_indexManagerState];
  *v23 = 0;
  v23[8] = 1;
  v24 = &v18[OBJC_IVAR___HRMedicalRecordTimelineViewController_gradientView];
  sub_1D138E37C();
  v25 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v26 = a1;
  v27 = a4;
  v28 = [v25 init];
  v29 = MEMORY[0x1E69A3658];
  *v24 = v28;
  v24[1] = v29;
  v19[OBJC_IVAR___HRMedicalRecordTimelineViewController_showGradientBackgroundForAllRecordsRoom] = 0;
  *&v19[OBJC_IVAR___HRMedicalRecordTimelineViewController_gradientSubscriber] = 0;
  *&v19[OBJC_IVAR___HRMedicalRecordTimelineViewController_profile] = v27;
  *&v19[OBJC_IVAR___HRMedicalRecordTimelineViewController_category] = v16;
  sub_1D1127E2C(v15, &v19[OBJC_IVAR___HRMedicalRecordTimelineViewController_accountId]);
  *&v19[OBJC_IVAR___HRMedicalRecordTimelineViewController_conceptIdentifier] = a1;
  *&v19[OBJC_IVAR___HRMedicalRecordTimelineViewController_userDomainConcept] = 0;
  *&v19[OBJC_IVAR___HRMedicalRecordTimelineViewController_additionalPredicatesPerSampleType] = 0;
  v19[OBJC_IVAR___HRMedicalRecordTimelineViewController_isDisplayingRemovedRecords] = 0;
  v19[OBJC_IVAR___HRMedicalRecordTimelineViewController_showExportButton] = 0;
  v19[OBJC_IVAR___HRMedicalRecordTimelineViewController_cloudSyncActive] = 0;
  *&v19[OBJC_IVAR___HRMedicalRecordTimelineViewController_preloadedRemovedRecords] = 0;
  v30 = *&v19[v21];
  v31 = &v19[OBJC_IVAR___HRMedicalRecordTimelineViewController_displayState];
  *v31 = 0;
  *(v31 + 1) = a1;
  *(v31 + 2) = v30;
  *(v31 + 3) = v16;
  v31[32] = 0;
  v32 = objc_opt_self();
  v33 = v30;
  v34 = v26;
  v35 = v16;
  v55 = v34;
  v36 = v27;
  v37 = v35;
  v38 = [v32 clearColor];
  v61 = sub_1D138E90C();
  v62 = MEMORY[0x1E69A3750];
  __swift_allocate_boxed_opaque_existential_1(&v60);
  sub_1D138E8FC();
  sub_1D102CC18(&v60, &v19[OBJC_IVAR___HRMedicalRecordTimelineViewController_gradientColorProvider]);
  v39 = [v36 healthStore];
  v40 = sub_1D107D9D8(v39, v16, a1, 0, 0, v15, 0);

  *&v19[OBJC_IVAR___HRMedicalRecordTimelineViewController_timelinePagedDataSource] = v40;
  v41 = [objc_allocWithZone(MEMORY[0x1E69DC840]) init];
  v42 = v57;
  v59.receiver = v19;
  v59.super_class = v56;
  v43 = objc_msgSendSuper2(&v59, sel_initWithCollectionViewLayout_, v41);

  v44 = v43;
  sub_1D1072338();

  v45 = v58;

  sub_1D138F6CC();

  v46 = BYTE8(v60);
  v47 = &v44[OBJC_IVAR___HRMedicalRecordTimelineViewController_ingestionState];
  *v47 = v60;
  v47[8] = v46;

  sub_1D138F6CC();

  v48 = v60;
  v49 = BYTE8(v60);
  if (v60 <= 1)
  {
    v50 = 1;
  }

  else
  {
    v50 = v60;
  }

  if (!BYTE8(v60))
  {
    v48 = v50;
  }

  v51 = &v44[OBJC_IVAR___HRMedicalRecordTimelineViewController_indexManagerState];
  *v51 = v48;
  v51[8] = v49;
  sub_1D1127E2C(v15, v12);
  if ((*(v42 + 48))(v12, 1, v45) == 1)
  {
    sub_1D129C0EC(v12, &qword_1EC60D6B0, MEMORY[0x1E69695A8]);
  }

  else
  {
    v52 = v54;
    (*(v42 + 32))(v54, v12, v45);
    sub_1D107B54C(v52);
    (*(v42 + 8))(v52, v45);
  }

  sub_1D107AEBC();

  sub_1D129C0EC(v15, &qword_1EC60D6B0, MEMORY[0x1E69695A8]);
  return v44;
}

void sub_1D129A54C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a6)
  {
    v14 = sub_1D139012C();
  }

  else
  {
    v14 = 0;
  }

  v15 = [objc_allocWithZone(WDClinicalOnboardingOAuthNavigationViewController) initWithContext:a3 onboardingOptions:0 sourceIdentifier:v14 profile:a1 existingAccount:0];

  if (a4)
  {
    [v15 setGatewayProxyToTry_];
  }

  else
  {
    v16 = [a1 onboardingManager];
    v17 = [v16 getPendingOnboardingGatewayAndClear];

    [v15 setGatewayProxyToTry_];
  }

  v18 = [a1 onboardingManager];
  v19 = swift_allocObject();
  v19[2] = a2;
  v19[3] = v15;
  v19[4] = a7;
  v19[5] = a8;
  v23[4] = sub_1D11ECB40;
  v23[5] = v19;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 1107296256;
  v23[2] = sub_1D116B84C;
  v23[3] = &block_descriptor_38_0;
  v20 = _Block_copy(v23);
  v21 = a2;
  v22 = v15;
  sub_1D102CE24(a7);

  [v18 registerInflightOnboardingViewController:v22 completion:v20];
  _Block_release(v20);
}

void sub_1D129A740(void *a1, void *a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v14 = type metadata accessor for OnboardingTileViewController();
  v15 = objc_allocWithZone(v14);
  *&v15[OBJC_IVAR____TtC15HealthRecordsUI28OnboardingTileViewController_profile] = a1;
  v16 = &v15[OBJC_IVAR____TtC15HealthRecordsUI28OnboardingTileViewController_sourceIdentifier];
  *v16 = a3;
  *(v16 + 1) = a4;
  v24.receiver = v15;
  v24.super_class = v14;
  v17 = a1;

  v18 = objc_msgSendSuper2(&v24, sel_initWithStyle_, 1);
  v19 = [objc_allocWithZone(MEMORY[0x1E69A4420]) initWithRootViewController_];
  v20 = swift_allocObject();
  v20[2] = a6;
  v20[3] = a7;
  v20[4] = v19;
  v23[4] = sub_1D129C058;
  v23[5] = v20;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 1107296256;
  v23[2] = sub_1D10CBD3C;
  v23[3] = &block_descriptor_32;
  v21 = _Block_copy(v23);
  sub_1D102CE24(a6);
  v22 = v19;

  [a2 presentViewController:v22 animated:a5 & 1 completion:v21];
  _Block_release(v21);
}

char *sub_1D129A8E4(int a1, id a2, char *a3, void (*a4)(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t)), void (*a5)(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t)), char a6)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v10 = *a3;
  v11 = [a2 healthStore];
  v12 = [objc_allocWithZone(MEMORY[0x1E69A3F10]) initWithHealthStore_];

  v13 = sub_1D138D5AC();
  v21[0] = 0;
  v14 = [v12 accountWithIdentifier:v13 error:v21];

  v15 = v21[0];
  if (v14)
  {
    LOBYTE(v21[0]) = v10;
    objc_allocWithZone(type metadata accessor for ClinicalAccountDetailsViewController());

    v16 = v14;
    v17 = a2;
    v18 = v15;
    v15 = sub_1D127988C(v16, v17, v21, a4, a5);
    if (a6)
    {
      sub_1D127B668();
    }
  }

  else
  {
    v19 = v21[0];
    sub_1D138D2BC();

    swift_willThrow();
  }

  return v15;
}

uint64_t sub_1D129AA7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D129AAE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D129AB44(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (qword_1EE06AD00 != -1)
  {
    swift_once();
  }

  sub_1D138D1CC();
  sub_1D138D1CC();
  v6 = sub_1D139012C();

  v7 = sub_1D139012C();

  v8 = [objc_opt_self() alertControllerWithTitle:v6 message:v7 preferredStyle:{1, 0xE000000000000000}];

  sub_1D138D1CC();
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;

  v10 = sub_1D139012C();

  aBlock[4] = sub_1D129BEB8;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D10CB11C;
  aBlock[3] = &block_descriptor_55;
  v11 = _Block_copy(aBlock);

  v12 = objc_opt_self();
  v13 = [v12 actionWithTitle:v10 style:0 handler:{v11, 0xE000000000000000}];
  _Block_release(v11);

  [v8 addAction_];
  sub_1D138D1CC();
  v14 = sub_1D139012C();

  v15 = [v12 actionWithTitle:v14 style:2 handler:{0, 0xE000000000000000}];

  [v8 addAction_];
  [a2 presentViewController:v8 animated:1 completion:0];
}

id sub_1D129AEAC(void *a1)
{
  v2 = type metadata accessor for BrowseCategory();
  MEMORY[0x1EEE9AC00](v2);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_opt_self();
  v6 = [a1 healthStore];
  v7 = [v5 sharedInstanceForHealthStore_];

  swift_storeEnumTagMultiPayload();
  v13[0] = sub_1D139024C();
  v13[1] = v8;
  MEMORY[0x1D3885C10](95, 0xE100000000000000);
  v9 = sub_1D13567F8();
  MEMORY[0x1D3885C10](v9);

  sub_1D129AAE4(v4, type metadata accessor for BrowseCategory);
  v10 = sub_1D139012C();

  v11 = [v7 createClinicalDocumentOverviewViewControllerWithSidebarIdentifier_];

  return v11;
}

id sub_1D129B020(void *a1, void *a2)
{
  v4 = type metadata accessor for PresentationContext(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v17 - v8;
  v10 = sub_1D138D5EC();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_1D129AA7C(v9, v6, type metadata accessor for PresentationContext);
  objc_allocWithZone(type metadata accessor for MedicalRecordDetailViewController(0));
  v11 = a1;
  v12 = a2;
  v13 = sub_1D131237C(v11, v12, v6);

  v14 = v13;
  v15 = [v14 navigationItem];
  [v15 setLargeTitleDisplayMode_];

  sub_1D129AAE4(v9, type metadata accessor for PresentationContext);
  return v14;
}

char *_s15HealthRecordsUI21ViewControllerFactoryC018makeOutOfRangeLabsdE05usingSo06UIViewE0CSo9HRProfileC_tF_0(void *a1)
{
  v2 = sub_1D138D5EC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D129C088(0, &qword_1EC60D6B0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v61 - v10;
  if (qword_1EE069F78 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v12 = off_1EE069F80;
  v13 = *(off_1EE069F80 + 2);
  v61 = v5;
  v64 = a1;
  v65 = v8;
  if (v13 && (v14 = sub_1D12A2F78(2), (v15 & 1) != 0))
  {
    v16 = v12[7] + 72 * v14;
    v70 = *v16;
    v18 = *(v16 + 32);
    v17 = *(v16 + 48);
    v19 = *(v16 + 64);
    v71 = *(v16 + 16);
    v72 = v18;
    v74 = v19;
    v73 = v17;
    swift_endAccess();
    v77 = v72;
    v78 = v73;
    v79 = v74;
    v75 = v70;
    v76 = v71;
    sub_1D1082914(&v70, &v66);
  }

  else
  {
    swift_endAccess();
    result = [objc_opt_self() unknownRecordCategory];
    if (!result)
    {
      __break(1u);
      return result;
    }

    sub_1D123E1C4(result, &v75);
  }

  v72 = v77;
  v73 = v78;
  v74 = v79;
  v70 = v75;
  v71 = v76;
  v21 = v79;
  sub_1D1080D98(&v70);
  sub_1D129C088(0, &qword_1EC60E998, sub_1D129BFC8, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D139E700;
  *(inited + 32) = [objc_opt_self() diagnosticTestResultType];
  *(inited + 40) = [objc_opt_self() predicateForDiagnosticTestResultWithReferenceRangeStatus_];
  v23 = sub_1D109FD78(inited);
  swift_setDeallocating();
  sub_1D129AAE4(inited + 32, sub_1D129BFC8);
  sub_1D1098E00(v23);
  v25 = v24;

  v26 = v11;
  (*(v3 + 56))(v11, 1, 1, v2);
  v62 = type metadata accessor for MedicalRecordTimelineViewController();
  v27 = objc_allocWithZone(v62);
  v28 = &v27[OBJC_IVAR___HRMedicalRecordTimelineViewController_overrideTitle];
  *v28 = 0;
  v28[1] = 0;
  *&v27[OBJC_IVAR___HRMedicalRecordTimelineViewController_displayItemProvider] = 0;
  *&v27[OBJC_IVAR___HRMedicalRecordTimelineViewController_observer] = 0;
  *&v27[OBJC_IVAR___HRMedicalRecordTimelineViewController_account] = 0;
  v29 = OBJC_IVAR___HRMedicalRecordTimelineViewController_ontologyConcept;
  *&v27[OBJC_IVAR___HRMedicalRecordTimelineViewController_ontologyConcept] = 0;
  v27[OBJC_IVAR___HRMedicalRecordTimelineViewController_chartLoaded] = 0;
  *&v27[OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___contentStatusView] = 0;
  *&v27[OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___clinicalAccountStore] = 0;
  *&v27[OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___dataProvider] = 0;
  *&v27[OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___accountStateProvider] = 0;
  *&v27[OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___dataSourceProvider] = 0;
  *&v27[OBJC_IVAR___HRMedicalRecordTimelineViewController____lazy_storage___dataSource] = 0;
  *&v27[OBJC_IVAR___HRMedicalRecordTimelineViewController_cloudSyncObserver] = 0;
  *&v27[OBJC_IVAR___HRMedicalRecordTimelineViewController_queryReturnedCancellable] = 0;
  *&v27[OBJC_IVAR___HRMedicalRecordTimelineViewController_accountStateCancellable] = 0;
  *&v27[OBJC_IVAR___HRMedicalRecordTimelineViewController_ingestionStateCancellable] = 0;
  *&v27[OBJC_IVAR___HRMedicalRecordTimelineViewController_indexManagerStateCancellable] = 0;
  v30 = &v27[OBJC_IVAR___HRMedicalRecordTimelineViewController_ingestionState];
  *v30 = 0;
  v30[8] = 1;
  v31 = &v27[OBJC_IVAR___HRMedicalRecordTimelineViewController_indexManagerState];
  *v31 = 0;
  v31[8] = 1;
  v63 = v3;
  v32 = v2;
  v33 = &v27[OBJC_IVAR___HRMedicalRecordTimelineViewController_gradientView];
  sub_1D138E37C();
  v34 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v35 = v64;
  v36 = [v34 init];
  v37 = MEMORY[0x1E69A3658];
  *v33 = v36;
  v33[1] = v37;
  v27[OBJC_IVAR___HRMedicalRecordTimelineViewController_showGradientBackgroundForAllRecordsRoom] = 0;
  *&v27[OBJC_IVAR___HRMedicalRecordTimelineViewController_gradientSubscriber] = 0;
  *&v27[OBJC_IVAR___HRMedicalRecordTimelineViewController_profile] = v35;
  *&v27[OBJC_IVAR___HRMedicalRecordTimelineViewController_category] = v21;
  sub_1D1127E2C(v26, &v27[OBJC_IVAR___HRMedicalRecordTimelineViewController_accountId]);
  *&v27[OBJC_IVAR___HRMedicalRecordTimelineViewController_conceptIdentifier] = 0;
  *&v27[OBJC_IVAR___HRMedicalRecordTimelineViewController_userDomainConcept] = 0;
  *&v27[OBJC_IVAR___HRMedicalRecordTimelineViewController_additionalPredicatesPerSampleType] = v25;
  v27[OBJC_IVAR___HRMedicalRecordTimelineViewController_isDisplayingRemovedRecords] = 0;
  v27[OBJC_IVAR___HRMedicalRecordTimelineViewController_showExportButton] = 0;
  v27[OBJC_IVAR___HRMedicalRecordTimelineViewController_cloudSyncActive] = 0;
  *&v27[OBJC_IVAR___HRMedicalRecordTimelineViewController_preloadedRemovedRecords] = 0;
  v38 = *&v27[v29];
  v39 = &v27[OBJC_IVAR___HRMedicalRecordTimelineViewController_displayState];
  *v39 = 0;
  *(v39 + 1) = 0;
  *(v39 + 2) = v38;
  *(v39 + 3) = v21;
  v39[32] = 0;
  v40 = objc_opt_self();
  v41 = v38;
  v42 = v21;
  v43 = v35;

  v44 = v32;
  v45 = v63;
  v46 = [v40 clearColor];
  v67 = sub_1D138E90C();
  v68 = MEMORY[0x1E69A3750];
  __swift_allocate_boxed_opaque_existential_1(&v66);
  sub_1D138E8FC();
  sub_1D102CC18(&v66, &v27[OBJC_IVAR___HRMedicalRecordTimelineViewController_gradientColorProvider]);
  v47 = [v43 healthStore];
  v48 = sub_1D107D9D8(v47, v21, 0, 0, v25, v26, 0);

  v49 = v26;

  *&v27[OBJC_IVAR___HRMedicalRecordTimelineViewController_timelinePagedDataSource] = v48;
  v50 = [objc_allocWithZone(MEMORY[0x1E69DC840]) init];
  v69.receiver = v27;
  v69.super_class = v62;
  v51 = objc_msgSendSuper2(&v69, sel_initWithCollectionViewLayout_, v50);

  v52 = v51;
  sub_1D1072338();

  sub_1D138F6CC();

  v53 = BYTE8(v66);
  v54 = &v52[OBJC_IVAR___HRMedicalRecordTimelineViewController_ingestionState];
  *v54 = v66;
  v54[8] = v53;

  sub_1D138F6CC();

  v56 = v65;
  v55 = v66;
  v57 = BYTE8(v66);
  if (v66 <= 1)
  {
    v58 = 1;
  }

  else
  {
    v58 = v66;
  }

  if (!BYTE8(v66))
  {
    v55 = v58;
  }

  v59 = &v52[OBJC_IVAR___HRMedicalRecordTimelineViewController_indexManagerState];
  *v59 = v55;
  v59[8] = v57;
  sub_1D1127E2C(v49, v56);
  if ((*(v45 + 48))(v56, 1, v44) == 1)
  {
    sub_1D129C0EC(v56, &qword_1EC60D6B0, MEMORY[0x1E69695A8]);
  }

  else
  {
    v60 = v61;
    (*(v45 + 32))(v61, v56, v44);
    sub_1D107B54C(v60);
    (*(v45 + 8))(v60, v44);
  }

  sub_1D107A01C();

  sub_1D129C0EC(v49, &qword_1EC60D6B0, MEMORY[0x1E69695A8]);
  return v52;
}

uint64_t dispatch thunk of ViewControllerFactory.makeViewController(for:using:)()
{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0xB0))();
}

{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0xC0))();
}

uint64_t sub_1D129BD38(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D108077C;

  return sub_1D1296EE8(a1, v4, v5, v6);
}

uint64_t sub_1D129BDF8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D10819BC;

  return sub_1D1296B34(a1, v4, v5, v6);
}

uint64_t block_copy_helper_56(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D129BF08(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D10819BC;

  return sub_1D1296B34(a1, v4, v5, v6);
}

void sub_1D129BFC8()
{
  if (!qword_1EC60E9A0)
  {
    sub_1D106F934(255, &qword_1EC609F60);
    sub_1D106F934(255, &qword_1EE06B790);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC60E9A0);
    }
  }
}

uint64_t sub_1D129C058()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1(*(v0 + 32));
  }

  return result;
}

void sub_1D129C088(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D129C0EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D129C088(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

UIColor __swiftcall MedicalRecordChartDataTransformer.defaultInactiveSeriesMain()()
{
  v0 = [objc_opt_self() hk_chartInactiveSeriesColor];

  return v0;
}

void sub_1D129C1BC()
{
  v1 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI37MedicalRecordAnnotationViewDataSource_dateGroup);
  v2 = [v1 superview];
  if (v2)
  {
    v3 = v2;
    [v2 intrinsicContentSize];
  }

  else
  {

    [v1 intrinsicContentSize];
  }
}

void *sub_1D129C248(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15HealthRecordsUI37MedicalRecordAnnotationViewDataSource_dateGroup);
  if (a1 == 1)
  {
    [*(v1 + OBJC_IVAR____TtC15HealthRecordsUI37MedicalRecordAnnotationViewDataSource_dateGroup) setAxis_];
    v3 = *(v1 + OBJC_IVAR____TtC15HealthRecordsUI37MedicalRecordAnnotationViewDataSource_dividerLabel);
    v4 = [*(v1 + OBJC_IVAR____TtC15HealthRecordsUI37MedicalRecordAnnotationViewDataSource_timeLabel) text];
    if (v4)
    {
      v5 = v4;
      v6 = sub_1D139016C();
      v8 = v7;

      v9 = HIBYTE(v8) & 0xF;
      if ((v8 & 0x2000000000000000) == 0)
      {
        v9 = v6 & 0xFFFFFFFFFFFFLL;
      }

      v10 = v9 == 0;
    }

    else
    {
      v10 = 1;
    }

    [v3 setHidden_];
  }

  else if (!a1)
  {
    [*(v1 + OBJC_IVAR____TtC15HealthRecordsUI37MedicalRecordAnnotationViewDataSource_dateGroup) setAxis_];
    [*(v1 + OBJC_IVAR____TtC15HealthRecordsUI37MedicalRecordAnnotationViewDataSource_dividerLabel) setHidden_];
  }

  v11 = v2;
  return v2;
}

void sub_1D129C354(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  sub_1D129CE14(a1, v2, ObjectType, a2);
}

id sub_1D129C3A4(void *a1, uint64_t a2)
{
  v41 = a2;
  v4 = sub_1D138CFBC();
  v43 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v42 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D138D57C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v39 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v38 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v38 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v40 = &v38 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  *&v21 = MEMORY[0x1EEE9AC00](v20).n128_u64[0];
  v23 = &v38 - v22;
  v24 = [a1 startDate];
  if (!v24)
  {
    goto LABEL_6;
  }

  v25 = v24;
  v38 = v4;
  sub_1D138D52C();

  v26 = *(v7 + 32);
  v26(v23, v19, v6);
  v27 = [a1 endDate];
  if (!v27)
  {
    (*(v7 + 8))(v23, v6);
LABEL_6:
    [*(v2 + OBJC_IVAR____TtC15HealthRecordsUI37MedicalRecordAnnotationViewDataSource_monthYearLabel) setText_];
    return [*(v2 + OBJC_IVAR____TtC15HealthRecordsUI37MedicalRecordAnnotationViewDataSource_timeLabel) setText_];
  }

  v28 = v27;
  sub_1D138D52C();

  v29 = v40;
  v26(v40, v14, v6);
  v30 = *(v7 + 16);
  v30(v11, v23, v6);
  v30(v39, v29, v6);
  v31 = v42;
  sub_1D138CF8C();
  v32 = *(v2 + OBJC_IVAR____TtC15HealthRecordsUI37MedicalRecordAnnotationViewDataSource_monthYearLabel);
  sub_1D10CACA4(v31, v41);
  if (v33)
  {
    v34 = sub_1D139012C();
  }

  else
  {
    v34 = 0;
  }

  v35 = v38;
  [v32 setText_];

  (*(v43 + 8))(v31, v35);
  v36 = *(v7 + 8);
  v36(v29, v6);
  v36(v23, v6);
  return [*(v2 + OBJC_IVAR____TtC15HealthRecordsUI37MedicalRecordAnnotationViewDataSource_timeLabel) setText_];
}

id sub_1D129C760(id result, id a2)
{
  if (result == 1)
  {
    [a2 setAxis_];
    v5 = *(v2 + OBJC_IVAR____TtC15HealthRecordsUI37MedicalRecordAnnotationViewDataSource_dividerLabel);
    v6 = [*(v2 + OBJC_IVAR____TtC15HealthRecordsUI37MedicalRecordAnnotationViewDataSource_timeLabel) text];
    if (v6)
    {
      v7 = v6;
      v8 = sub_1D139016C();
      v10 = v9;

      v11 = HIBYTE(v10) & 0xF;
      if ((v10 & 0x2000000000000000) == 0)
      {
        v11 = v8 & 0xFFFFFFFFFFFFLL;
      }

      v4 = v11 == 0;
    }

    else
    {
      v4 = 1;
    }

    v3 = v5;
  }

  else
  {
    if (result)
    {
      return result;
    }

    [a2 setAxis_];
    v3 = *(v2 + OBJC_IVAR____TtC15HealthRecordsUI37MedicalRecordAnnotationViewDataSource_dividerLabel);
    v4 = 1;
  }

  return [v3 setHidden_];
}

id MedicalRecordAnnotationViewDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *MedicalRecordAnnotationViewDataSource.init()()
{
  v1 = [objc_opt_self() hk_chartLollipopLabelColor];
  v2 = [objc_opt_self() hk_chartCurrentValueDateFont];
  v3 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  v4 = v2;
  [v3 setFont_];
  v5 = v1;
  [v3 setTextColor_];
  LODWORD(v6) = 1144750080;
  [v3 setContentHuggingPriority:0 forAxis:v6];
  *&v0[OBJC_IVAR____TtC15HealthRecordsUI37MedicalRecordAnnotationViewDataSource_monthYearLabel] = v3;
  v7 = objc_allocWithZone(MEMORY[0x1E69DCC10]);
  v25 = v3;
  v8 = [v7 init];
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  [v8 setFont_];
  [v8 setTextColor_];
  if (qword_1EC608CB0 != -1)
  {
    swift_once();
  }

  sub_1D138D1CC();
  v9 = sub_1D139012C();

  [v8 setText_];

  [v8 setHidden_];
  LODWORD(v10) = 1144750080;
  [v8 setContentHuggingPriority:0 forAxis:v10];
  *&v0[OBJC_IVAR____TtC15HealthRecordsUI37MedicalRecordAnnotationViewDataSource_dividerLabel] = v8;
  v11 = objc_allocWithZone(MEMORY[0x1E69DCC10]);
  v12 = v8;
  v13 = [v11 init];
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  [v13 setFont_];

  [v13 setTextColor_];
  *&v0[OBJC_IVAR____TtC15HealthRecordsUI37MedicalRecordAnnotationViewDataSource_timeLabel] = v13;
  sub_1D106F424();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1D139E6F0;
  *(v14 + 32) = v25;
  *(v14 + 40) = v12;
  *(v14 + 48) = v13;
  v15 = objc_allocWithZone(MEMORY[0x1E69DCF90]);
  sub_1D129D104();
  v16 = v13;
  v17 = sub_1D139044C();

  v18 = [v15 initWithArrangedSubviews_];

  [v18 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v0[OBJC_IVAR____TtC15HealthRecordsUI37MedicalRecordAnnotationViewDataSource_dateGroup] = v18;
  v26.receiver = v0;
  v26.super_class = type metadata accessor for MedicalRecordAnnotationViewDataSource();
  v19 = v18;
  v20 = objc_msgSendSuper2(&v26, sel_init);
  v21 = *&v20[OBJC_IVAR____TtC15HealthRecordsUI37MedicalRecordAnnotationViewDataSource_dateGroup];
  v22 = v20;
  v23 = v21;
  [v23 setAxis_];
  [*&v22[OBJC_IVAR____TtC15HealthRecordsUI37MedicalRecordAnnotationViewDataSource_dividerLabel] setHidden_];

  return v22;
}

id MedicalRecordAnnotationViewDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicalRecordAnnotationViewDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D129CE14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1D138D57C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(a2 + OBJC_IVAR____TtC15HealthRecordsUI37MedicalRecordAnnotationViewDataSource_monthYearLabel);
  v25 = a2;
  (*(a4 + 16))(a3, a4, v9);
  v12 = HKDateFormatterFromTemplate();
  if (!v12)
  {
    v12 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  }

  v22 = *(a4 + 8);
  v22(a3, a4);
  v13 = sub_1D138D4EC();
  v14 = *(v8 + 8);
  v23 = v7;
  v21 = v14;
  v14(v11, v7);
  v15 = [v12 stringFromDate_];

  if (!v15)
  {
    sub_1D139016C();
    v15 = sub_1D139012C();
  }

  [v24 setText_];

  v16 = *(v25 + OBJC_IVAR____TtC15HealthRecordsUI37MedicalRecordAnnotationViewDataSource_timeLabel);
  if ((*(a4 + 24))(a3, a4))
  {
    v17 = HKDateFormatterFromTemplate();
    if (!v17)
    {
      v17 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    }

    v22(a3, a4);
    v18 = sub_1D138D4EC();
    v21(v11, v23);
    v19 = [v17 stringFromDate_];

    if (!v19)
    {
      sub_1D139016C();
      v19 = sub_1D139012C();
    }
  }

  else
  {
    v19 = 0;
  }

  [v16 setText_];
}

unint64_t sub_1D129D104()
{
  result = qword_1EC609680;
  if (!qword_1EC609680)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC609680);
  }

  return result;
}

void sub_1D129D32C(unint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v1 = 0;
    v2 = 0;
    v3 = 0;
    v4 = sub_1D139135C() | 0x8000000000000000;
  }

  else
  {
    v5 = -1 << *(a1 + 32);
    v2 = ~v5;
    v1 = a1 + 64;
    v6 = -v5;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v3 = v7 & *(a1 + 64);
    v4 = a1;
  }

  v8 = 0;
  v28 = MEMORY[0x1E69E7CC0];
  while ((v4 & 0x8000000000000000) != 0)
  {
    v15 = sub_1D139139C();
    if (!v15 || (v17 = v16, *&v26[0] = v15, sub_1D106F934(0, &qword_1EE06B6C0), swift_dynamicCast(), v13 = *v25, *&v26[0] = v17, sub_1D106F934(0, &qword_1EE06B730), swift_dynamicCast(), (v14 = *v25) == 0))
    {
LABEL_24:
      sub_1D102CC30();
      return;
    }

LABEL_17:
    v18 = [v13 integerValue];
    if (v18 <= 0xA)
    {
      v19 = v18;
      v20 = v14;
      sub_1D123E1C4(v20, v26);

      v21 = v28;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_1D10F713C(0, v21[2] + 1, 1, v21);
      }

      v23 = v21[2];
      v22 = v21[3];
      if (v23 >= v22 >> 1)
      {
        v21 = sub_1D10F713C((v22 > 1), v23 + 1, 1, v21);
      }

      *&v25[71] = v27;
      *&v25[39] = v26[2];
      *&v25[55] = v26[3];
      *&v25[7] = v26[0];
      *&v25[23] = v26[1];
      v21[2] = v23 + 1;
      v28 = v21;
      v24 = &v21[10 * v23];
      *(v24 + 32) = v19;
      *(v24 + 33) = *v25;
      *(v24 + 6) = *&v25[63];
      *(v24 + 81) = *&v25[48];
      *(v24 + 65) = *&v25[32];
      *(v24 + 49) = *&v25[16];
    }

    else
    {
    }
  }

  v9 = v8;
  v10 = v3;
  if (v3)
  {
LABEL_13:
    v3 = (v10 - 1) & v10;
    v11 = (v8 << 9) | (8 * __clz(__rbit64(v10)));
    v12 = *(*(v4 + 56) + v11);
    v13 = *(*(v4 + 48) + v11);
    v14 = v12;
    if (!v13)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v8 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v8 >= ((v2 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v10 = *(v1 + 8 * v8);
    ++v9;
    if (v10)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t static DisplayItemProvider.supportedCategory(for:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (qword_1EE069F78 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = off_1EE069F80;
  if (*(off_1EE069F80 + 2) && (v5 = sub_1D129E570(v3), (v6 & 1) != 0))
  {
    v7 = v4[7] + 72 * v5;
    v15[0] = *v7;
    v9 = *(v7 + 32);
    v8 = *(v7 + 48);
    v10 = *(v7 + 64);
    v15[1] = *(v7 + 16);
    v15[2] = v9;
    v16 = v10;
    v15[3] = v8;
    v11 = *(v7 + 48);
    *(a2 + 32) = *(v7 + 32);
    *(a2 + 48) = v11;
    *(a2 + 64) = *(v7 + 64);
    v12 = *(v7 + 16);
    *a2 = *v7;
    *(a2 + 16) = v12;
    sub_1D1082914(v15, v14);
  }

  else
  {
    *(a2 + 64) = 0;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return swift_endAccess();
}

void static DisplayItemProvider.displayCategory(for:)(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (qword_1EE069F78 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = off_1EE069F80;
  if (*(off_1EE069F80 + 2) && (v5 = sub_1D129E570(v3), (v6 & 1) != 0))
  {
    v7 = v4[7] + 72 * v5;
    v15 = *v7;
    v9 = *(v7 + 32);
    v8 = *(v7 + 48);
    v10 = *(v7 + 64);
    v16 = *(v7 + 16);
    v17 = v9;
    v19 = v10;
    v18 = v8;
    swift_endAccess();
    v11 = v18;
    *(a2 + 32) = v17;
    *(a2 + 48) = v11;
    *(a2 + 64) = v19;
    v12 = v16;
    *a2 = v15;
    *(a2 + 16) = v12;
    sub_1D1082914(&v15, v14);
  }

  else
  {
    swift_endAccess();
    v13 = [objc_opt_self() unknownRecordCategory];
    if (v13)
    {
      sub_1D123E1C4(v13, a2);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t static DisplayItemProvider.supportedSampleTypes.getter()
{
  v0 = [objc_opt_self() allSupportedSampleTypes];
  if (!v0)
  {
    return MEMORY[0x1E69E7CD0];
  }

  v1 = v0;
  sub_1D106F934(0, &qword_1EE06B780);
  v2 = sub_1D139045C();

  v3 = sub_1D12DEFE8(v2);

  return v3;
}

char *static DisplayItemProvider.orderedSupportedCategories.getter()
{
  v0 = _s15HealthRecordsUI19DisplayItemProviderC19supportedCategoriesShyAA0D8CategoryVGvgZ_0();
  v1 = v0;
  v2 = *(v0 + 2);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1D129F7B8(*(v0 + 2), 0);
  v4 = sub_1D12A1754(&v6, v3 + 32, v2, v1);

  sub_1D102CC30();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:
    v3 = MEMORY[0x1E69E7CC0];
  }

  v6 = v3;
  sub_1D129D9EC(&v6);

  return v6;
}

uint64_t sub_1D129D9EC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D1245E74(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = v2 + 32;
  v5[1] = v3;
  result = sub_1D129FCE4(v5);
  *a1 = v2;
  return result;
}

uint64_t static DisplayItemProvider.supportedCategoryTypes.getter()
{
  v0 = HKMedicalRecordAllSupportedCategoryTypes();
  if (!v0)
  {
    return MEMORY[0x1E69E7CD0];
  }

  v1 = v0;
  sub_1D106F934(0, &qword_1EE06B6C0);
  v2 = sub_1D139045C();

  if (v2 >> 62)
  {
LABEL_21:
    v3 = sub_1D13910DC();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v5 = MEMORY[0x1E69E7CC0];
  while (v3 != v4)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1D3886B70](v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v6 = *(v2 + 8 * v4 + 32);
    }

    v7 = v6;
    v8 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v9 = [v6 integerValue];

    ++v4;
    if (v9 < 0xB)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1D10F9B3C(0, *(v5 + 2) + 1, 1, v5);
      }

      v11 = *(v5 + 2);
      v10 = *(v5 + 3);
      if (v11 >= v10 >> 1)
      {
        v5 = sub_1D10F9B3C((v10 > 1), v11 + 1, 1, v5);
      }

      *(v5 + 2) = v11 + 1;
      v5[v11 + 32] = v9;
      v4 = v8;
    }
  }

  v12 = sub_1D12DF4F8(v5);

  return v12;
}

void static DisplayItemProvider.unknownCategory.getter(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() unknownRecordCategory];
  if (v2)
  {

    sub_1D123E1C4(v2, a1);
  }

  else
  {
    __break(1u);
  }
}

void *sub_1D129DC6C()
{
  result = sub_1D129DC8C();
  off_1EE069F80 = result;
  return result;
}

unint64_t sub_1D129DC8C()
{
  v0 = [objc_opt_self() supportedRecordCategoriesByCategoryType];
  if (v0)
  {
    v1 = v0;
    sub_1D106F934(0, &qword_1EE06B6C0);
    sub_1D106F934(0, &qword_1EE06B730);
    sub_1D109D274(&qword_1EE06B0C8, &qword_1EE06B6C0);
    v2 = sub_1D138FFFC();

    sub_1D129D32C(v2);
    v4 = v3;

    if (*(v4 + 16))
    {
      sub_1D10A0888();
      v5 = sub_1D139144C();
    }

    else
    {
      v5 = MEMORY[0x1E69E7CC8];
    }

    v8 = v5;
    sub_1D12A0940(v4, 1, &v8);
    return v8;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];

    return sub_1D109B51C(v6);
  }
}

unint64_t sub_1D129DE20(uint64_t a1)
{
  sub_1D139177C();
  if (*(a1 + 24))
  {
    sub_1D139179C();
    if (*(a1 + 40))
    {
LABEL_3:
      sub_1D139179C();
      sub_1D139027C();
      goto LABEL_6;
    }
  }

  else
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *a1;
    sub_1D139179C();
    MEMORY[0x1D38870E0](v4);
    MEMORY[0x1D38870E0](v3);
    MEMORY[0x1D38870E0](v2);
    if (*(a1 + 40))
    {
      goto LABEL_3;
    }
  }

  sub_1D139179C();
LABEL_6:
  v5 = sub_1D13917CC();

  return sub_1D129E8F8(a1, v5);
}

unint64_t sub_1D129DF64(void *a1)
{
  sub_1D139177C();
  v2 = a1[3];
  MEMORY[0x1D38870E0](*a1);
  sub_1D1390D9C();
  sub_1D139179C();
  if (v2)
  {
    sub_1D139027C();
  }

  v4 = a1[6];
  v3 = a1[7];
  sub_1D139027C();
  sub_1D123F520(v7, v4);
  sub_1D123F520(v7, v3);
  sub_1D1390D9C();
  v5 = sub_1D13917CC();

  return sub_1D129EA14(a1, v5);
}

unint64_t sub_1D129E09C(uint64_t a1)
{
  sub_1D139016C();
  sub_1D139177C();
  sub_1D139027C();
  v2 = sub_1D13917CC();

  return sub_1D129F25C(a1, v2);
}

unint64_t sub_1D129E12C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  sub_1D139177C();
  if (a2)
  {
    sub_1D139179C();
    sub_1D139027C();
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_1D139179C();
    if (a4)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  sub_1D139179C();
  if (!a3)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_1D139179C();
  v8 = a3;
  sub_1D1390D9C();

  if (a4)
  {
LABEL_4:
    sub_1D139179C();
    v9 = a4;
    sub_1D1390D9C();

    goto LABEL_8;
  }

LABEL_7:
  sub_1D139179C();
LABEL_8:
  v10 = sub_1D13917CC();

  return sub_1D129ECC8(a1, a2, a3, a4, v10);
}

unint64_t sub_1D129E240(uint64_t a1)
{
  sub_1D138D5EC();
  v2 = MEMORY[0x1E69695A8];
  sub_1D12A2D24(&qword_1EE06B4F8, MEMORY[0x1E69695A8]);
  v3 = sub_1D139006C();
  return sub_1D129F520(a1, v3, MEMORY[0x1E69695A8], &qword_1EC6098A0, v2, MEMORY[0x1E69695C8]);
}

unint64_t sub_1D129E314(double a1)
{
  v2 = sub_1D139176C();

  return sub_1D129EF08(v2, a1);
}

unint64_t sub_1D129E400(uint64_t a1)
{
  v2 = sub_1D139114C();

  return sub_1D129EF70(a1, v2);
}

unint64_t sub_1D129E444(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = a4 & 1;
  sub_1D139177C();
  AccountIcon.Size.hash(into:)();
  v8 = sub_1D13917CC();

  return sub_1D129F038(a1, a2, a3, v7, v8);
}

unint64_t sub_1D129E4DC(uint64_t a1)
{
  v2 = sub_1D139176C();

  return sub_1D129F180(a1, v2);
}

unint64_t sub_1D129E570(unsigned __int8 a1)
{
  sub_1D139177C();
  MEMORY[0x1D38870E0](a1);
  v2 = sub_1D13917CC();
  return sub_1D129F1EC(a1, v2);
}

unint64_t sub_1D129E5D8(uint64_t a1)
{
  sub_1D139177C();
  BrowseCategory.rawValue.getter();
  sub_1D139027C();

  v2 = sub_1D13917CC();

  return sub_1D129F360(a1, v2);
}

unint64_t sub_1D129E660(uint64_t a1)
{
  sub_1D139177C();
  MEMORY[0x1D38870E0](a1);
  v2 = sub_1D13917CC();
  return sub_1D129F180(a1, v2);
}

unint64_t sub_1D129E6C8(uint64_t a1)
{
  sub_1D138D57C();
  v2 = MEMORY[0x1E6969530];
  sub_1D12A2D24(&qword_1EC608ED8, MEMORY[0x1E6969530]);
  v3 = sub_1D139006C();
  return sub_1D129F520(a1, v3, MEMORY[0x1E6969530], &unk_1EC609370, v2, MEMORY[0x1E6969550]);
}

unint64_t sub_1D129E79C(char a1)
{
  sub_1D139177C();
  MEMORY[0x1D38870E0](a1 & 1);
  v2 = sub_1D13917CC();

  return sub_1D129F6C0(a1 & 1, v2);
}

unint64_t sub_1D129E8F8(uint64_t *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v7 = ~v4;
    v8 = *a1;
    v9 = a1[1];
    v10 = a1[2];
    v11 = *(a1 + 24);
    v12 = *(v2 + 48);
    do
    {
      v13 = v12 + 48 * v5;
      v14 = *(v13 + 32);
      v15 = *(v13 + 40);
      if (*(v13 + 24))
      {
        if (!v11)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v17 = *(v13 + 8);
        v16 = *(v13 + 16);
        if (*v13 == v8)
        {
          v18 = v11 ^ 1;
        }

        else
        {
          v18 = 0;
        }

        if (v18 != 1 || v17 != v9 || v16 != v10)
        {
          goto LABEL_4;
        }
      }

      v21 = a1[5];
      if (v15)
      {
        if (v21)
        {
          v22 = v14 == a1[4] && v15 == v21;
          if (v22 || (sub_1D139162C() & 1) != 0)
          {
            return v5;
          }
        }
      }

      else if (!v21)
      {
        return v5;
      }

LABEL_4:
      v5 = (v5 + 1) & v7;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1D129EA14(void *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = v2;
    v7 = ~v4;
    v8 = *a1;
    v9 = a1[3];
    v19 = a1[2];
    v20 = a1[4];
    v17 = a1[6];
    v18 = a1[5];
    v16 = a1[7];
    while (1)
    {
      v10 = *(v6 + 48) + 72 * v5;
      v22 = *v10;
      v12 = *(v10 + 32);
      v11 = *(v10 + 48);
      v13 = *(v10 + 16);
      v26 = *(v10 + 64);
      v24 = v12;
      v25 = v11;
      v23 = v13;
      if (v22 != v8)
      {
        goto LABEL_5;
      }

      sub_1D106F934(0, &qword_1EE06B0C0);
      sub_1D1082914(&v22, v21);
      if ((sub_1D1390D8C() & 1) == 0)
      {
        break;
      }

      if (*(&v23 + 1))
      {
        if (!v9 || v23 != __PAIR128__(v9, v19) && (sub_1D139162C() & 1) == 0)
        {
          break;
        }
      }

      else if (v9)
      {
        break;
      }

      if (v24 != __PAIR128__(v18, v20) && (sub_1D139162C() & 1) == 0 || (sub_1D1335054(v25, v17) & 1) == 0 || (sub_1D1335054(*(&v25 + 1), v16) & 1) == 0)
      {
        break;
      }

      v14 = sub_1D1390D8C();
      sub_1D1080D98(&v22);
      if (v14)
      {
        return v5;
      }

LABEL_5:
      v5 = (v5 + 1) & v7;
      if (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
      {
        return v5;
      }
    }

    sub_1D1080D98(&v22);
    goto LABEL_5;
  }

  return v5;
}

unint64_t sub_1D129EBFC(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a2 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    sub_1D106F934(0, a3);
    do
    {
      v7 = *(*(v3 + 48) + 8 * v5);
      v8 = sub_1D1390D8C();

      if (v8)
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1D129ECC8(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = v5;
    v10 = a3;
    v12 = a1;
    v13 = ~v7;
    v33 = v5 + 64;
    v34 = ~v7;
    do
    {
      v14 = (*(v9 + 48) + 32 * v8);
      v16 = v14[1];
      v15 = v14[2];
      v17 = v14[3];
      if (v16)
      {
        if (!a2)
        {
          goto LABEL_4;
        }

        if (*v14 != v12 || v16 != a2)
        {
          v19 = sub_1D139162C();
          v13 = v34;
          if ((v19 & 1) == 0)
          {
            goto LABEL_4;
          }
        }
      }

      else if (a2)
      {
        goto LABEL_4;
      }

      if (v15)
      {
        if (!v10)
        {
          goto LABEL_4;
        }

        sub_1D106F934(0, &qword_1EE06A540);
        v20 = v17;
        v21 = v10;

        v22 = v15;
        v23 = sub_1D1390D8C();

        if ((v23 & 1) == 0)
        {

          v12 = a1;
          v10 = a3;
          v6 = v33;
          v13 = v34;
          goto LABEL_4;
        }
      }

      else
      {
        if (v10)
        {
          goto LABEL_4;
        }

        v24 = v17;
      }

      if (!v17)
      {
        v28 = a4;

        v6 = v33;
        if (!a4)
        {
          return v8;
        }

        goto LABEL_25;
      }

      v6 = v33;
      if (!a4)
      {

LABEL_25:
        v12 = a1;
        v10 = a3;
        v13 = v34;
        goto LABEL_4;
      }

      sub_1D106F934(0, &qword_1EE06B6E0);
      v25 = v17;
      v26 = a4;
      v27 = sub_1D1390D8C();

      v12 = a1;
      v10 = a3;
      v13 = v34;
      if (v27)
      {
        return v8;
      }

LABEL_4:
      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

unint64_t sub_1D129EF08(uint64_t a1, double a2)
{
  v3 = -1 << *(v2 + 32);
  result = a1 & ~v3;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v5 = ~v3;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a2)
      {
        break;
      }

      result = (result + 1) & v5;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1D129EF70(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1D1186A80(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1D3886AB0](v9, a1);
      sub_1D1116E48(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1D129F038(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5)
{
  v7 = -1 << *(v5 + 32);
  result = a5 & ~v7;
  if ((*(v5 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v9 = ~v7;
    v10 = *&a1;
    v13 = a3 | a2;
    v14 = a3 | a2 | a1;
    v15 = (a1 - 1) < 2;
    v16 = a1 == 2;
    if (a3 | a2)
    {
      v15 = 0;
    }

    if (v13)
    {
      v17 = 0;
    }

    else
    {
      v17 = a1 == 1;
    }

    if (v13)
    {
      v18 = 0;
    }

    else
    {
      v18 = v16;
    }

    v19 = a4 ^ 1 | (v14 == 0) | v15;
    if (v14)
    {
      v20 = v17;
    }

    else
    {
      v20 = 1;
    }

    v21 = a4 ^ 1 | v20;
    do
    {
      v22 = *(v5 + 48) + 32 * result;
      v24 = *v22;
      v23 = *(v22 + 8);
      v25 = *(v22 + 16);
      if (*(v22 + 24) == 1)
      {
        v26 = *&v25 | *&v23;
        if (v26 | *&v24)
        {
          if (*&v24 == 1 && v26 == 0)
          {
            if ((a4 & (v14 != 0)) != 0 && v17)
            {
              return result;
            }
          }

          else if (*&v24 == 2 && v26 == 0)
          {
            if ((v21 & 1) == 0 && v18)
            {
              return result;
            }
          }

          else if ((v19 & 1) == 0)
          {
            return result;
          }
        }

        else if ((a4 & 1) != 0 && !v14)
        {
          return result;
        }
      }

      else if ((a4 & 1) == 0)
      {
        v29 = v24 == v10 && v23 == *&a2;
        if (v29 && v25 == *&a3)
        {
          return result;
        }
      }

      result = (result + 1) & v9;
    }

    while (((*(v5 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1D129F180(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1D129F1EC(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1D129F25C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_1D139016C();
      v8 = v7;
      if (v6 == sub_1D139016C() && v8 == v9)
      {
        break;
      }

      v11 = sub_1D139162C();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1D129F360(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = type metadata accessor for BrowseCategory() - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = -1 << *(v3 + 32);
  v10 = a2 & ~v9;
  if ((*(v3 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *(v6 + 72);
    while (1)
    {
      sub_1D12A2EA8(*(v3 + 48) + v12 * v10, v8, type metadata accessor for BrowseCategory);
      v13 = BrowseCategory.rawValue.getter();
      v15 = v14;
      if (v13 == BrowseCategory.rawValue.getter() && v15 == v16)
      {
        break;
      }

      v17 = sub_1D139162C();

      sub_1D10F3688(v8);
      if ((v17 & 1) == 0)
      {
        v10 = (v10 + 1) & v11;
        if ((*(v3 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
        {
          continue;
        }
      }

      return v10;
    }

    sub_1D10F3688(v8);
  }

  return v10;
}

unint64_t sub_1D129F520(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v21[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v21 - v10;
  v22 = v6;
  v12 = -1 << *(v6 + 32);
  v13 = a2 & ~v12;
  v21[0] = v6 + 64;
  if ((*(v6 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    do
    {
      v15(v11, *(v22 + 48) + v18 * v13, v8);
      sub_1D12A2D24(v23, v24);
      v19 = sub_1D139011C();
      (*(v16 - 8))(v11, v8);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v21[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

unint64_t sub_1D129F6C0(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (((*(*(v2 + 48) + result) ^ a1) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void *sub_1D129F730(uint64_t a1, uint64_t a2)
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

  sub_1D10A5C9C(0, &qword_1EE06B560);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_1D129F7B8(uint64_t a1, uint64_t a2)
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

  sub_1D10A5C9C(0, &qword_1EE06B698);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0xE38E38E38E38E39) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

void *sub_1D129F854(uint64_t a1, uint64_t a2)
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

  sub_1D10A5C9C(0, &qword_1EE06A4C0);
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

size_t sub_1D129F94C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(void))
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

  sub_1D12A2E44(0, a3, a4, MEMORY[0x1E69E6F90]);
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

void *sub_1D129FA60(uint64_t a1, uint64_t a2)
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

  sub_1D12A2E44(0, &qword_1EC60AEC0, sub_1D1104AC8, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_1D129FB08(uint64_t a1, uint64_t a2)
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

  sub_1D10A5C9C(0, &qword_1EE0694D8);
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
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_1D129FB90(uint64_t a1, uint64_t a2)
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

  sub_1D12A2D6C();
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
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_1D129FC3C(uint64_t a1, uint64_t a2)
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

  sub_1D12A2E44(0, &qword_1EC60ADA0, sub_1D11046D8, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 1;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 5);
  return result;
}

uint64_t sub_1D129FCE4(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_1D13915BC();
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
        v5 = sub_1D13904DC();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1D129FF30(v7, v8, a1, v4);
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
    return sub_1D129FDDC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1D129FDDC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = result;
    v6 = *a4;
    sub_1D10940C8();
    v7 = (v6 + 72 * v4);
    v8 = v5 - v4;
LABEL_5:
    v9 = v8;
    v10 = v7;
    while (1)
    {
      result = sub_1D1390FDC();
      if (result != -1)
      {
LABEL_4:
        ++v4;
        v7 = (v7 + 72);
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v11 = v10 - 72;
      v16 = v10[1];
      v17 = v10[2];
      v18 = v10[3];
      v19 = *(v10 + 8);
      v15 = *v10;
      v12 = *(v10 - 24);
      v10[2] = *(v10 - 40);
      v10[3] = v12;
      *(v10 + 8) = *(v10 - 1);
      v13 = *(v10 - 56);
      *v10 = *(v10 - 72);
      v10[1] = v13;
      *v11 = v15;
      *(v11 + 64) = v19;
      *(v11 + 32) = v17;
      *(v11 + 48) = v18;
      *(v11 + 16) = v16;
      v10 = (v10 - 72);
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D129FF30(uint64_t result, uint64_t a2, char *a3, uint64_t a4)
{
  v5 = v4;
  v86 = result;
  v6 = *(a3 + 1);
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v9 = v7;
      if (v7 + 1 >= v6)
      {
        v6 = (v7 + 1);
      }

      else
      {
        v84 = v5;
        v10 = 72 * v7;
        v11 = *a3 + 72 * v7;
        sub_1D10940C8();
        result = sub_1D1390FDC();
        v12 = result;
        v13 = (v7 + 2);
        v14 = v11 + 184;
        while (v6 != v13)
        {
          result = sub_1D1390FDC();
          ++v13;
          v14 += 72;
          if ((v12 == -1) == (result != -1))
          {
            v6 = v13 - 1;
            break;
          }
        }

        v5 = v84;
        if (v12 == -1)
        {
          v9 = v7;
          if (v6 < v7)
          {
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
            return result;
          }

          if (v7 < v6)
          {
            v63 = 72 * v6 - 72;
            v64 = v6;
            do
            {
              if (v7 != --v64)
              {
                v66 = *a3;
                if (!*a3)
                {
                  goto LABEL_127;
                }

                v65 = v66 + v63;
                v91 = *(v66 + v10 + 16);
                v93 = *(v66 + v10 + 32);
                v95 = *(v66 + v10 + 48);
                v97 = *(v66 + v10 + 64);
                v89 = *(v66 + v10);
                result = memmove((v66 + v10), (v66 + v63), 0x48uLL);
                *(v65 + 16) = v91;
                *(v65 + 32) = v93;
                *(v65 + 48) = v95;
                *(v65 + 64) = v97;
                *v65 = v89;
              }

              ++v7;
              v63 -= 72;
              v10 += 72;
            }

            while (v7 < v64);
            v5 = v84;
          }
        }

        else
        {
          v9 = v7;
        }
      }

      v15 = *(a3 + 1);
      if (v6 >= v15)
      {
        goto LABEL_20;
      }

      if (__OFSUB__(v6, v9))
      {
        goto LABEL_119;
      }

      if (&v6[-v9] >= a4)
      {
        goto LABEL_20;
      }

      if (__OFADD__(v9, a4))
      {
        goto LABEL_120;
      }

      if (v9 + a4 < v15)
      {
        v15 = (v9 + a4);
      }

      if (v15 < v9)
      {
LABEL_121:
        __break(1u);
        goto LABEL_122;
      }

      if (v6 == v15)
      {
LABEL_20:
        v7 = v6;
      }

      else
      {
        v87 = v15;
        v85 = v5;
        v67 = v9;
        v68 = *a3;
        sub_1D10940C8();
        v69 = (v68 + 72 * v6);
        v83 = v67;
        v70 = v67 - v6;
        do
        {
          v71 = v70;
          v72 = v69;
          do
          {
            result = sub_1D1390FDC();
            if (result != -1)
            {
              break;
            }

            if (!v68)
            {
              goto LABEL_124;
            }

            v73 = v72 - 72;
            v92 = v72[1];
            v94 = v72[2];
            v96 = v72[3];
            v98 = *(v72 + 8);
            v90 = *v72;
            v74 = *(v72 - 24);
            v72[2] = *(v72 - 40);
            v72[3] = v74;
            *(v72 + 8) = *(v72 - 1);
            v75 = *(v72 - 56);
            *v72 = *(v72 - 72);
            v72[1] = v75;
            *v73 = v90;
            *(v73 + 64) = v98;
            *(v73 + 32) = v94;
            *(v73 + 48) = v96;
            *(v73 + 16) = v92;
            v72 = (v72 - 72);
          }

          while (!__CFADD__(v71++, 1));
          ++v6;
          v69 = (v69 + 72);
          --v70;
        }

        while (v6 != v87);
        v9 = v83;
        v5 = v85;
        v7 = v87;
      }

      v6 = a3;
      if (v7 < v9)
      {
        goto LABEL_118;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1D10F7610(0, *(v8 + 2) + 1, 1, v8);
        v8 = result;
      }

      v17 = *(v8 + 2);
      v16 = *(v8 + 3);
      v18 = v17 + 1;
      if (v17 >= v16 >> 1)
      {
        result = sub_1D10F7610((v16 > 1), v17 + 1, 1, v8);
        v8 = result;
      }

      *(v8 + 2) = v18;
      v19 = &v8[16 * v17];
      *(v19 + 4) = v9;
      *(v19 + 5) = v7;
      v20 = *v86;
      if (!*v86)
      {
        goto LABEL_128;
      }

      if (v17)
      {
        while (1)
        {
          v21 = v18 - 1;
          if (v18 >= 4)
          {
            break;
          }

          if (v18 == 3)
          {
            v22 = *(v8 + 4);
            v23 = *(v8 + 5);
            v32 = __OFSUB__(v23, v22);
            v24 = v23 - v22;
            v25 = v32;
LABEL_41:
            if (v25)
            {
              goto LABEL_107;
            }

            v38 = &v8[16 * v18];
            v40 = *v38;
            v39 = *(v38 + 1);
            v41 = __OFSUB__(v39, v40);
            v42 = v39 - v40;
            v43 = v41;
            if (v41)
            {
              goto LABEL_110;
            }

            v44 = &v8[16 * v21 + 32];
            v46 = *v44;
            v45 = *(v44 + 1);
            v32 = __OFSUB__(v45, v46);
            v47 = v45 - v46;
            if (v32)
            {
              goto LABEL_113;
            }

            if (__OFADD__(v42, v47))
            {
              goto LABEL_114;
            }

            if (v42 + v47 >= v24)
            {
              if (v24 < v47)
              {
                v21 = v18 - 2;
              }

              goto LABEL_62;
            }

            goto LABEL_55;
          }

          v48 = &v8[16 * v18];
          v50 = *v48;
          v49 = *(v48 + 1);
          v32 = __OFSUB__(v49, v50);
          v42 = v49 - v50;
          v43 = v32;
LABEL_55:
          if (v43)
          {
            goto LABEL_109;
          }

          v51 = &v8[16 * v21];
          v53 = *(v51 + 4);
          v52 = *(v51 + 5);
          v32 = __OFSUB__(v52, v53);
          v54 = v52 - v53;
          if (v32)
          {
            goto LABEL_112;
          }

          if (v54 < v42)
          {
            goto LABEL_3;
          }

LABEL_62:
          v59 = v21 - 1;
          if (v21 - 1 >= v18)
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
            goto LABEL_121;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v60 = *&v8[16 * v59 + 32];
          v61 = *&v8[16 * v21 + 40];
          sub_1D12A0658((*a3 + 72 * v60), (*a3 + 72 * *&v8[16 * v21 + 32]), (*a3 + 72 * v61), v20);
          if (v5)
          {
          }

          if (v61 < v60)
          {
            goto LABEL_103;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_1D1245848(v8);
          }

          if (v59 >= *(v8 + 2))
          {
            goto LABEL_104;
          }

          v62 = &v8[16 * v59];
          *(v62 + 4) = v60;
          *(v62 + 5) = v61;
          result = sub_1D12457BC(v21);
          v18 = *(v8 + 2);
          if (v18 <= 1)
          {
            goto LABEL_3;
          }
        }

        v26 = &v8[16 * v18 + 32];
        v27 = *(v26 - 64);
        v28 = *(v26 - 56);
        v32 = __OFSUB__(v28, v27);
        v29 = v28 - v27;
        if (v32)
        {
          goto LABEL_105;
        }

        v31 = *(v26 - 48);
        v30 = *(v26 - 40);
        v32 = __OFSUB__(v30, v31);
        v24 = v30 - v31;
        v25 = v32;
        if (v32)
        {
          goto LABEL_106;
        }

        v33 = &v8[16 * v18];
        v35 = *v33;
        v34 = *(v33 + 1);
        v32 = __OFSUB__(v34, v35);
        v36 = v34 - v35;
        if (v32)
        {
          goto LABEL_108;
        }

        v32 = __OFADD__(v24, v36);
        v37 = v24 + v36;
        if (v32)
        {
          goto LABEL_111;
        }

        if (v37 >= v29)
        {
          v55 = &v8[16 * v21 + 32];
          v57 = *v55;
          v56 = *(v55 + 1);
          v32 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v32)
          {
            goto LABEL_115;
          }

          if (v24 < v58)
          {
            v21 = v18 - 2;
          }

          goto LABEL_62;
        }

        goto LABEL_41;
      }

LABEL_3:
      v6 = *(a3 + 1);
      if (v7 >= v6)
      {
        goto LABEL_90;
      }
    }
  }

  v8 = MEMORY[0x1E69E7CC0];
LABEL_90:
  v6 = *v86;
  if (!*v86)
  {
    goto LABEL_129;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_122:
    result = sub_1D1245848(v8);
    v8 = result;
  }

  v77 = v5;
  v78 = *(v8 + 2);
  if (v78 >= 2)
  {
    while (*a3)
    {
      v5 = v78 - 1;
      v79 = *&v8[16 * v78];
      v80 = *&v8[16 * v78 + 24];
      sub_1D12A0658((*a3 + 72 * v79), (*a3 + 72 * *&v8[16 * v78 + 16]), (*a3 + 72 * v80), v6);
      if (v77)
      {
      }

      if (v80 < v79)
      {
        goto LABEL_116;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_1D1245848(v8);
      }

      if (v78 - 2 >= *(v8 + 2))
      {
        goto LABEL_117;
      }

      v81 = &v8[16 * v78];
      *v81 = v79;
      *(v81 + 1) = v80;
      result = sub_1D12457BC(v5);
      v78 = *(v8 + 2);
      if (v78 <= 1)
      {
      }
    }

    goto LABEL_126;
  }
}

uint64_t sub_1D12A0658(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = (__dst - __src) / 72;
  v10 = a3 - __dst;
  v11 = (a3 - __dst) / 72;
  if (v9 >= v11)
  {
    if (a4 != __dst || &__dst[72 * v11] <= a4)
    {
      memmove(a4, __dst, 72 * v11);
    }

    v12 = &v4[72 * v11];
    if (v10 >= 72 && v6 > v7)
    {
      sub_1D10940C8();
      do
      {
        v5 -= 72;
        while (1)
        {
          v15 = v5 + 72;
          if (sub_1D1390FDC() == -1)
          {
            break;
          }

          v16 = (v12 - 72);
          if (v15 != v12)
          {
            memmove(v5, v12 - 72, 0x48uLL);
          }

          v5 -= 72;
          v12 -= 72;
          if (v16 <= v4)
          {
            v12 = v16;
            goto LABEL_36;
          }
        }

        v17 = v6 - 72;
        if (v15 != v6)
        {
          memmove(v5, v6 - 72, 0x48uLL);
        }

        if (v12 <= v4)
        {
          break;
        }

        v6 -= 72;
      }

      while (v17 > v7);
      v6 = v17;
    }
  }

  else
  {
    if (a4 != __src || &__src[72 * v9] <= a4)
    {
      memmove(a4, __src, 72 * v9);
    }

    v12 = &v4[72 * v9];
    if (v8 >= 72 && v6 < v5)
    {
      sub_1D10940C8();
      while (sub_1D1390FDC() == -1)
      {
        v13 = v6;
        v14 = v7 == v6;
        v6 += 72;
        if (!v14)
        {
          goto LABEL_10;
        }

LABEL_11:
        v7 += 72;
        if (v4 >= v12 || v6 >= v5)
        {
          v6 = v7;
          goto LABEL_36;
        }
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 72;
      if (v14)
      {
        goto LABEL_11;
      }

LABEL_10:
      memmove(v7, v13, 0x48uLL);
      goto LABEL_11;
    }

    v6 = v7;
  }

LABEL_36:
  v18 = (v12 - v4) / 72;
  if (v6 != v4 || v6 >= &v4[72 * v18])
  {
    memmove(v6, v4, 72 * v18);
  }

  return 1;
}

void sub_1D12A0940(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_23;
  }

  v7 = *(a1 + 96);
  *&v57[48] = *(a1 + 80);
  *&v57[64] = v7;
  v8 = *(a1 + 64);
  *&v57[16] = *(a1 + 48);
  *&v57[32] = v8;
  *v57 = *(a1 + 32);
  v9 = *&v57[72];
  v50 = *&v57[40];
  v52 = *&v57[56];
  v48 = *&v57[24];
  v54 = *&v57[8];
  v10 = v57[0];
  sub_1D12A2EA8(v57, v56, sub_1D12A2F10);
  if (!*(&v54 + 1))
  {
    goto LABEL_23;
  }

  *v57 = v54;
  *&v57[16] = v48;
  *&v57[32] = v50;
  *&v57[48] = v52;
  *&v57[64] = v9;
  v11 = *a3;
  v12 = sub_1D129E570(v10);
  v14 = v11[2];
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  LOBYTE(v18) = v13;
  if (v11[3] < v17)
  {
    sub_1D1179474(v17, a2 & 1);
    v12 = sub_1D129E570(v10);
    if ((v18 & 1) == (v19 & 1))
    {
      goto LABEL_8;
    }

LABEL_6:
    v12 = sub_1D13916CC();
    __break(1u);
  }

  if (a2)
  {
LABEL_8:
    if (v18)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v22 = v12;
  sub_1D1180B68();
  v12 = v22;
  if (v18)
  {
LABEL_9:
    v20 = swift_allocError();
    swift_willThrow();

    v21 = v20;
    sub_1D10922EC();
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_1D1080D98(v57);

      return;
    }

    goto LABEL_27;
  }

LABEL_12:
  v23 = *a3;
  *(*a3 + 8 * (v12 >> 6) + 64) |= 1 << v12;
  *(v23[6] + v12) = v10;
  v24 = v23[7] + 72 * v12;
  *v24 = *v57;
  v25 = *&v57[16];
  v26 = *&v57[32];
  v27 = *&v57[48];
  *(v24 + 64) = *&v57[64];
  *(v24 + 32) = v26;
  *(v24 + 48) = v27;
  *(v24 + 16) = v25;
  v28 = v23[2];
  v16 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (!v16)
  {
    v23[2] = v29;
    if (v4 != 1)
    {
      v18 = (a1 + 112);
      v30 = 1;
      while (v30 < *(a1 + 16))
      {
        v31 = v18[4];
        *&v57[48] = v18[3];
        *&v57[64] = v31;
        v32 = v18[2];
        *&v57[16] = v18[1];
        *&v57[32] = v32;
        *v57 = *v18;
        v33 = *&v57[72];
        v51 = *&v57[40];
        v53 = *&v57[56];
        v49 = *&v57[24];
        v55 = *&v57[8];
        v10 = v57[0];
        sub_1D12A2EA8(v57, v56, sub_1D12A2F10);
        if (!*(&v55 + 1))
        {
          goto LABEL_23;
        }

        *v57 = v55;
        *&v57[16] = v49;
        *&v57[32] = v51;
        *&v57[48] = v53;
        *&v57[64] = v33;
        v34 = *a3;
        v35 = sub_1D129E570(v10);
        v37 = v34[2];
        v38 = (v36 & 1) == 0;
        v16 = __OFADD__(v37, v38);
        v39 = v37 + v38;
        if (v16)
        {
          goto LABEL_25;
        }

        a2 = v36;
        if (v34[3] < v39)
        {
          sub_1D1179474(v39, 1);
          v35 = sub_1D129E570(v10);
          if ((a2 & 1) != (v40 & 1))
          {
            goto LABEL_6;
          }
        }

        if (a2)
        {
          goto LABEL_9;
        }

        v41 = *a3;
        *(*a3 + 8 * (v35 >> 6) + 64) |= 1 << v35;
        *(v41[6] + v35) = v10;
        v42 = v41[7] + 72 * v35;
        *v42 = *v57;
        v43 = *&v57[16];
        v44 = *&v57[32];
        v45 = *&v57[48];
        *(v42 + 64) = *&v57[64];
        *(v42 + 32) = v44;
        *(v42 + 48) = v45;
        *(v42 + 16) = v43;
        v46 = v41[2];
        v16 = __OFADD__(v46, 1);
        v47 = v46 + 1;
        if (v16)
        {
          goto LABEL_26;
        }

        ++v30;
        v41[2] = v47;
        v18 += 5;
        if (v4 == v30)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
      goto LABEL_25;
    }

LABEL_23:

    return;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  v56[0] = 0;
  v56[1] = 0xE000000000000000;
  sub_1D13911EC();
  MEMORY[0x1D3885C10](0xD00000000000001BLL, 0x80000001D13B9110);
  sub_1D139133C();
  MEMORY[0x1D3885C10](39, 0xE100000000000000);
  sub_1D13913BC();
  __break(1u);
}

void *sub_1D12A0DC4(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 16);

  sub_1D121E878();
  result = swift_allocObject();
  v10 = result;
  result[2] = v8;
  result[3] = 0;
  if (!a2)
  {
LABEL_20:
    a3 = 0;
    goto LABEL_22;
  }

  if (!a3)
  {
LABEL_22:
    *a1 = v10;
    return a3;
  }

  if (a3 < 0)
  {
    goto LABEL_26;
  }

  v11 = 0;
  while (1)
  {
    v12 = v10[2];
    if (v12 >> 62)
    {
      result = sub_1D13910DC();
    }

    else
    {
      result = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v13 = v10[3];
    if (v13 == result)
    {
      a3 = v11;
      goto LABEL_22;
    }

    v14 = v10[2];
    if ((v14 & 0xC000000000000001) == 0)
    {
      break;
    }

    result = MEMORY[0x1D3886B70](v10[3]);
    v15 = (v13 + 1);
    if (__OFADD__(v13, 1))
    {
      goto LABEL_19;
    }

LABEL_12:
    v10[3] = v15;
    *(a2 + 8 * v11) = result;
    if (a3 - 1 == v11)
    {
      goto LABEL_22;
    }

    if (__OFADD__(++v11, 1))
    {
      goto LABEL_25;
    }
  }

  if ((v13 & 0x8000000000000000) == 0)
  {
    if (v13 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_24;
    }

    result = *(v14 + 8 * v13 + 32);
    v15 = (v13 + 1);
    if (__OFADD__(v13, 1))
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    goto LABEL_12;
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1D12A0F10(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 80);

  sub_1D121E514();
  result = swift_allocObject();
  v10 = result;
  *(result + 16) = v8;
  *(result + 24) = 0;
  if (!a2)
  {
LABEL_20:
    a3 = 0;
    goto LABEL_22;
  }

  if (!a3)
  {
LABEL_22:
    *a1 = v10;
    return a3;
  }

  if (a3 < 0)
  {
    goto LABEL_26;
  }

  v11 = 0;
  while (1)
  {
    v12 = *(v10 + 16);
    if (v12 >> 62)
    {
      result = sub_1D13910DC();
    }

    else
    {
      result = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v13 = *(v10 + 24);
    if (v13 == result)
    {
      a3 = v11;
      goto LABEL_22;
    }

    v14 = *(v10 + 16);
    if ((v14 & 0xC000000000000001) == 0)
    {
      break;
    }

    result = MEMORY[0x1D3886B70](*(v10 + 24));
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      goto LABEL_19;
    }

LABEL_12:
    *(v10 + 24) = v15;
    *(a2 + 8 * v11) = result;
    if (a3 - 1 == v11)
    {
      goto LABEL_22;
    }

    if (__OFADD__(++v11, 1))
    {
      goto LABEL_25;
    }
  }

  if ((v13 & 0x8000000000000000) == 0)
  {
    if (v13 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_24;
    }

    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    goto LABEL_12;
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1D12A105C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 64);

  sub_1D121E3E8();
  result = swift_allocObject();
  v10 = result;
  *(result + 16) = v8;
  *(result + 24) = 0;
  if (!a2)
  {
LABEL_20:
    a3 = 0;
    goto LABEL_22;
  }

  if (!a3)
  {
LABEL_22:
    *a1 = v10;
    return a3;
  }

  if (a3 < 0)
  {
    goto LABEL_26;
  }

  v11 = 0;
  while (1)
  {
    v12 = *(v10 + 16);
    if (v12 >> 62)
    {
      result = sub_1D13910DC();
    }

    else
    {
      result = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v13 = *(v10 + 24);
    if (v13 == result)
    {
      a3 = v11;
      goto LABEL_22;
    }

    v14 = *(v10 + 16);
    if ((v14 & 0xC000000000000001) == 0)
    {
      break;
    }

    result = MEMORY[0x1D3886B70](*(v10 + 24));
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      goto LABEL_19;
    }

LABEL_12:
    *(v10 + 24) = v15;
    *(a2 + 8 * v11) = result;
    if (a3 - 1 == v11)
    {
      goto LABEL_22;
    }

    if (__OFADD__(++v11, 1))
    {
      goto LABEL_25;
    }
  }

  if ((v13 & 0x8000000000000000) == 0)
  {
    if (v13 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_24;
    }

    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    goto LABEL_12;
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1D12A11A8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 48);

  sub_1D121E6C4();
  result = swift_allocObject();
  v10 = result;
  *(result + 16) = v8;
  *(result + 24) = 0;
  if (!a2)
  {
LABEL_20:
    a3 = 0;
    goto LABEL_22;
  }

  if (!a3)
  {
LABEL_22:
    *a1 = v10;
    return a3;
  }

  if (a3 < 0)
  {
    goto LABEL_26;
  }

  v11 = 0;
  while (1)
  {
    v12 = *(v10 + 16);
    if (v12 >> 62)
    {
      result = sub_1D13910DC();
    }

    else
    {
      result = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v13 = *(v10 + 24);
    if (v13 == result)
    {
      a3 = v11;
      goto LABEL_22;
    }

    v14 = *(v10 + 16);
    if ((v14 & 0xC000000000000001) == 0)
    {
      break;
    }

    result = MEMORY[0x1D3886B70](*(v10 + 24));
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      goto LABEL_19;
    }

LABEL_12:
    *(v10 + 24) = v15;
    *(a2 + 8 * v11) = result;
    if (a3 - 1 == v11)
    {
      goto LABEL_22;
    }

    if (__OFADD__(++v11, 1))
    {
      goto LABEL_25;
    }
  }

  if ((v13 & 0x8000000000000000) == 0)
  {
    if (v13 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_24;
    }

    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    goto LABEL_12;
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1D12A12F4(uint64_t result, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 64;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v10 = v20 & *(v4 + 64);
    v22 = v9;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v15 = 0;
    a3 = 0;
    goto LABEL_32;
  }

  result = sub_1D139135C();
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v4 = result | 0x8000000000000000;
  v22 = 0;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v15 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  v23 = a3;
  a3 = 0;
  v11 = 0;
  v12 = (v9 + 64) >> 6;
  v13 = 1;
  while (1)
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      if (!sub_1D13913AC())
      {
        goto LABEL_31;
      }

      sub_1D106F934(0, &qword_1EE06B780);
      swift_dynamicCast();
      result = v24;
      v15 = v11;
      if (!v24)
      {
        goto LABEL_32;
      }

      goto LABEL_17;
    }

    v14 = v11;
    if (!v10)
    {
      break;
    }

    v15 = v11;
LABEL_13:
    v16 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_32;
    }

LABEL_17:
    *a2 = result;
    a3 = v23;
    if (v13 == v23)
    {
LABEL_31:
      v15 = v11;
      goto LABEL_32;
    }

    ++a2;
    a3 = v13;
    if (__OFADD__(v13++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v15 >= v12)
    {
      break;
    }

    v10 = *(v8 + 8 * v15);
    ++v14;
    if (v10)
    {
      v11 = v15;
      goto LABEL_13;
    }
  }

  v10 = 0;
  if (v12 <= v11 + 1)
  {
    v21 = v11 + 1;
  }

  else
  {
    v21 = v12;
  }

  v15 = v21 - 1;
LABEL_32:
  *v7 = v4;
  v7[1] = v8;
  v7[2] = v22;
  v7[3] = v15;
  v7[4] = v10;
  return a3;
}

uint64_t sub_1D12A14F0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem();
  v33 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v32 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v31 = &v28 - v12;
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
LABEL_18:
    v17 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v13;
    a1[2] = ~v14;
    a1[3] = v17;
    a1[4] = v16;
    return a3;
  }

  if (!a3)
  {
    v17 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v29 = a1;
    v30 = a3;
    result = 0;
    v17 = 0;
    v28 = v14;
    v18 = (63 - v14) >> 6;
    v19 = 1;
    while (v16)
    {
LABEL_14:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v23 = v32;
      a1 = *(v33 + 72);
      sub_1D12A2EA8(*(a4 + 48) + a1 * (v22 | (v17 << 6)), v32, type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem);
      v24 = v23;
      v25 = v31;
      sub_1D12A2DDC(v24, v31, type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem);
      sub_1D12A2DDC(v25, a2, type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem);
      if (v19 == v30)
      {
        a1 = v29;
        a3 = v30;
        goto LABEL_23;
      }

      a2 += a1;
      result = v19;
      if (__OFADD__(v19++, 1))
      {
        __break(1u);
        goto LABEL_18;
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
        v17 = v21;
        goto LABEL_14;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v27 = v17 + 1;
    }

    else
    {
      v27 = v18;
    }

    v17 = v27 - 1;
    a3 = result;
    a1 = v29;
LABEL_23:
    v14 = v28;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_1D12A1754(void *result, char *__dst, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!__dst)
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
    v11 = __dst;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 48) + 72 * (v17 | (v12 << 6)));
      v25[0] = *v18;
      v20 = v18[2];
      v19 = v18[3];
      v21 = v18[1];
      v26 = *(v18 + 8);
      v25[2] = v20;
      v25[3] = v19;
      v25[1] = v21;
      memmove(v11, v18, 0x48uLL);
      if (v14 == v10)
      {
        sub_1D1082914(v25, v24);
        goto LABEL_24;
      }

      v11 += 72;
      sub_1D1082914(v25, v24);
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
      v23 = v12 + 1;
    }

    else
    {
      v23 = (63 - v7) >> 6;
    }

    v12 = v23 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1D12A18E8(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

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
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1D12A1A40(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      *v11 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

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
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1D12A1BB0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_1D138ED5C();
  v42 = *(v40 - 8);
  v8 = MEMORY[0x1EEE9AC00](v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v8);
  v39 = &v33 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 56;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_1D12A1E54(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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
      v17 = __clz(__rbit64(v9)) | (v12 << 6);
      v18 = *(*(a4 + 56) + 8 * v17);
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 48) + v17);
      *(v11 + 8) = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 16;

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
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1D12A1FC8(void *result, void *a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t a6, unint64_t *a7)
{
  v8 = a4;
  v10 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v14 = 0;
    v23 = -1 << *(v8 + 32);
    v12 = v8 + 56;
    v13 = ~v23;
    v24 = -v23;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v15 = v25 & *(v8 + 56);
    v16 = a3;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v17 = 0;
    goto LABEL_32;
  }

  sub_1D139108C();
  sub_1D106F934(0, a5);
  sub_1D109D274(a7, a5);
  result = sub_1D139070C();
  v8 = v31;
  v12 = v32;
  v13 = v33;
  v14 = v34;
  v15 = v35;
  v16 = a3;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!v16)
  {
    v17 = 0;
    goto LABEL_32;
  }

  if (v16 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v28 = a5;
  v17 = 0;
  v27 = v13;
  a5 = ((v13 + 64) >> 6);
  v18 = 1;
  while (1)
  {
    if (v8 < 0)
    {
      if (!sub_1D139110C())
      {
        goto LABEL_30;
      }

      sub_1D106F934(0, v28);
      swift_dynamicCast();
      result = v30;
      v16 = a3;
      if (!v30)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v19 = v14;
    if (!v15)
    {
      break;
    }

    v20 = v14;
LABEL_13:
    v21 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    result = *(*(v8 + 48) + ((v20 << 9) | (8 * v21)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v18 == v16)
    {
      v17 = v16;
      goto LABEL_30;
    }

    ++a2;
    v17 = v18;
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

    v15 = *(v12 + 8 * v20);
    ++v19;
    if (v15)
    {
      v14 = v20;
      goto LABEL_13;
    }
  }

  v15 = 0;
  if (a5 <= (v14 + 1))
  {
    v26 = (v14 + 1);
  }

  else
  {
    v26 = a5;
  }

  v14 = v26 - 1;
LABEL_30:
  v13 = v27;
LABEL_32:
  *v10 = v8;
  v10[1] = v12;
  v10[2] = v13;
  v10[3] = v14;
  v10[4] = v15;
  return v17;
}

uint64_t sub_1D12A21F8(uint64_t result, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v6 = 0;
    a3 = 0;
    v5 = 1;
    goto LABEL_15;
  }

  v5 = a3 == 0;
  if (!a3)
  {
    v6 = 0;
    goto LABEL_15;
  }

  if (a3 < 0)
  {
    goto LABEL_19;
  }

  if (a5 >= a4)
  {
    *a2 = a5;
    if (a3 == 1)
    {
      v5 = 0;
      v6 = a5;
LABEL_15:
      *result = a4;
      *(result + 8) = a5;
      *(result + 16) = v6;
      *(result + 24) = v5;
      return a3;
    }

    v7 = 1;
    v6 = a5;
    while (1)
    {
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_17:
        v5 = 0;
        v6 = a4;
        a3 = v7;
        goto LABEL_15;
      }

      if (a4 == v6)
      {
        goto LABEL_17;
      }

      if (v6 <= a4)
      {
        break;
      }

      a2[v7++] = --v6;
      if (v8 == a3)
      {
        v5 = 0;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1D12A22B0(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      *v11 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

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
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_1D12A2404(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D1104BB4();
  v38 = v8;
  v36 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v37 = &v32 - v12;
  v39 = a4;
  v15 = *(a4 + 64);
  v14 = a4 + 64;
  v13 = v15;
  v16 = -1 << *(v14 - 32);
  if (-v16 < 64)
  {
    v17 = ~(-1 << -v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v13;
  if (!a2)
  {
LABEL_18:
    v25 = 0;
LABEL_25:
    *a1 = v39;
    a1[1] = v14;
    a1[2] = ~v16;
    a1[3] = v25;
    a1[4] = v18;
    return;
  }

  if (!a3)
  {
    v25 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(v14 - 32);
    v34 = a1;
    v19 = 0;
    v20 = (63 - v16) >> 6;
    v21 = 1;
    v35 = a3;
    while (v18)
    {
LABEL_14:
      v24 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v25 = v19;
      v26 = v24 | (v19 << 6);
      v27 = v39;
      v28 = *(v39 + 48);
      v29 = type metadata accessor for BrowseCategory();
      sub_1D12A2EA8(v28 + *(*(v29 - 8) + 72) * v26, v10, type metadata accessor for BrowseCategory);
      a1 = v37;
      *&v10[*(v38 + 48)] = *(*(v27 + 56) + 8 * v26);
      sub_1D12A2DDC(v10, a1, sub_1D1104BB4);
      sub_1D12A2DDC(a1, a2, sub_1D1104BB4);
      if (v21 == v35)
      {
        goto LABEL_23;
      }

      a2 += *(v36 + 72);
      v30 = __OFADD__(v21++, 1);
      v19 = v25;
      if (v30)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v22 = v19;
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v23 >= v20)
      {
        break;
      }

      v18 = *(v14 + 8 * v23);
      ++v22;
      if (v18)
      {
        v19 = v23;
        goto LABEL_14;
      }
    }

    v18 = 0;
    if (v20 <= v19 + 1)
    {
      v31 = v19 + 1;
    }

    else
    {
      v31 = v20;
    }

    v25 = v31 - 1;
LABEL_23:
    v16 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_27:
  __break(1u);
}

void *sub_1D12A2690(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      v18 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
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

void *sub_1D12A27E4(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
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
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

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
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1D12A293C(void *result, void *a2, uint64_t a3, uint64_t a4)
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
LABEL_25:
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
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v27 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (v12 << 10) | (16 * v17);
      v19 = (*(a4 + 48) + v18);
      v21 = *v19;
      v20 = v19[1];
      v22 = (*(a4 + 56) + v18);
      v23 = *v22;
      v24 = v22[1];
      *v11 = v21;
      v11[1] = v20;
      v11[2] = v23;
      v11[3] = v24;
      if (v14 == v10)
      {

        goto LABEL_23;
      }

      v11 += 4;

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
        goto LABEL_28;
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
    if (v13 <= v12 + 1)
    {
      v26 = v12 + 1;
    }

    else
    {
      v26 = v13;
    }

    v12 = v26 - 1;
    v10 = result;
LABEL_23:
    v7 = v27;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}