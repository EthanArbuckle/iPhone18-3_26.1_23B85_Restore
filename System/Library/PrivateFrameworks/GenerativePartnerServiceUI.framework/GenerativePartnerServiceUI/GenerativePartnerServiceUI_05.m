uint64_t sub_1BE53435C()
{
  v18 = v0;
  (*(*(v0[4] - 8) + 8))(v0[3]);
  if (qword_1EBDABAC0 != -1)
  {
    sub_1BE536D04();
  }

  v1 = v0[6];
  v2 = sub_1BE54B2EC();
  sub_1BE4C52BC(v2, qword_1EBDB0C80);
  v3 = v1;
  v4 = sub_1BE54B2BC();
  v5 = sub_1BE54C98C();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[6];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = sub_1BE50AAC4();
    v17 = v10;
    *v8 = 136446466;
    sub_1BE4FFAA0();
    *(v8 + 4) = sub_1BE4C5338(0xD000000000000013, v11, &v17);
    *(v8 + 12) = 2114;
    v12 = v7;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v13;
    *v9 = v13;
    _os_log_impl(&dword_1BE4B8000, v4, v5, "%{public}s: ExternalAIAuthenticator.signOut() exception: %{public}@", v8, 0x16u);
    sub_1BE4D0E58(v9, &qword_1EBDAC2F0, &qword_1BE54F880);
    sub_1BE4C75DC();
    sub_1BE4C58A8(v10);
    sub_1BE4C75DC();
    sub_1BE4C75DC();
  }

  else
  {
  }

  v14 = v0[3];

  sub_1BE4E01E0();

  return v15();
}

uint64_t sub_1BE53455C()
{
  v0 = sub_1BE54B36C();
  v1 = sub_1BE4C7500(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v1);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v23 - v9;
  v11 = sub_1BE54B39C();
  v12 = sub_1BE4C7500(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1BE4C757C();
  v19 = v18 - v17;
  sub_1BE54B3AC();
  sub_1BE54B37C();
  (*(v14 + 8))(v19, v11);
  (*(v3 + 104))(v8, *MEMORY[0x1E698AA20], v0);
  v20 = sub_1BE54B35C();
  v21 = *(v3 + 8);
  v21(v8, v0);
  v21(v10, v0);
  return v20 & 1;
}

uint64_t sub_1BE534718()
{
  sub_1BE4E01D4();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_1BE4BF11C(&qword_1EBDAC5A8, &qword_1BE54F818);
  sub_1BE4C7570(v3);
  v5 = *(v4 + 64);
  v1[4] = sub_1BE51DB24();
  v6 = sub_1BE54B4FC();
  sub_1BE536D54(v6);
  v1[6] = v7;
  v9 = *(v8 + 64);
  v1[7] = sub_1BE51DB24();
  sub_1BE4CE6EC();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1BE5347E8()
{
  sub_1BE4E021C();
  v24 = v0;
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  sub_1BE533EC4();
  if (sub_1BE4C63BC(v2, 1, v1) == 1)
  {
    sub_1BE4D0E58(v0[4], &qword_1EBDAC5A8, &qword_1BE54F818);
    if (qword_1EBDABAC0 != -1)
    {
      sub_1BE536D04();
    }

    v4 = sub_1BE54B2EC();
    sub_1BE4C52BC(v4, qword_1EBDB0C80);
    v5 = sub_1BE54B2BC();
    v6 = sub_1BE54C98C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = sub_1BE50AB7C();
      v8 = sub_1BE50AAC4();
      v23 = v8;
      *v7 = 136446210;
      sub_1BE4FFAA0();
      *(v7 + 4) = sub_1BE4C5338(0xD000000000000012, v9, &v23);
      sub_1BE536D68(&dword_1BE4B8000, v10, v11, "%{public}s: Can't retrieve user info as authenticator is nil.");
      sub_1BE4C58A8(v8);
      sub_1BE4C75DC();
      sub_1BE4C75DC();
    }

    sub_1BE536D34();
    sub_1BE50A890();
    sub_1BE4C63F8(v12, v13, v14, v15);

    sub_1BE4E01E0();

    return v16();
  }

  else
  {
    (*(v0[6] + 32))(v0[7], v0[4], v0[5]);
    v18 = *(MEMORY[0x1E698AA78] + 4);
    swift_task_alloc();
    sub_1BE50A8BC();
    v0[8] = v19;
    *v19 = v20;
    v19[1] = sub_1BE534A04;
    v21 = v0[7];
    v22 = v0[2];

    return MEMORY[0x1EEDEB720](v22);
  }
}

uint64_t sub_1BE534A04()
{
  sub_1BE4E01D4();
  sub_1BE4E0228();
  v3 = *(v2 + 64);
  v4 = *v1;
  sub_1BE4E01C4();
  *v5 = v4;
  *(v6 + 72) = v0;

  sub_1BE4CE6EC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BE534B04()
{
  (*(v0[6] + 8))(v0[7], v0[5]);
  sub_1BE536D34();
  sub_1BE4CE728();
  sub_1BE4C63F8(v1, v2, v3, v4);

  sub_1BE4E01E0();

  return v5();
}

uint64_t sub_1BE534B9C()
{
  sub_1BE4E021C();
  if (qword_1EBDABAC0 != -1)
  {
    sub_1BE536D04();
  }

  v1 = v0[9];
  v2 = sub_1BE54B2EC();
  sub_1BE4C52BC(v2, qword_1EBDB0C80);
  v3 = v1;
  v4 = sub_1BE54B2BC();
  v5 = sub_1BE54C98C();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[9];
  if (v6)
  {
    v8 = sub_1BE50AB7C();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1BE4B8000, v4, v5, "retrieveUserInfo() failed: %{public}@", v8, 0xCu);
    sub_1BE4D0E58(v9, &qword_1EBDAC2F0, &qword_1BE54F880);
    sub_1BE4C75DC();
    sub_1BE4C75DC();
  }

  else
  {
  }

  (*(v0[6] + 8))(v0[7], v0[5]);
  sub_1BE536D34();
  sub_1BE50A890();
  sub_1BE4C63F8(v12, v13, v14, v15);

  sub_1BE4E01E0();

  return v16();
}

uint64_t sub_1BE534D4C(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_1BE4BF11C(&qword_1EBDAD390, &qword_1BE551940);
  v5 = sub_1BE4C7570(v4);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v38 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v37 - v10;
  v12 = sub_1BE54B0AC();
  v13 = sub_1BE4C7500(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1BE4C757C();
  v20 = (v19 - v18);
  v21 = OBJC_IVAR____TtC26GenerativePartnerServiceUI29ExternalAIAuthenticatorHelper__authenticationSession;
  *(v2 + v21) = swift_getKeyPath();
  sub_1BE4BF11C(&qword_1EBDAD398, &qword_1BE551948);
  swift_storeEnumTagMultiPayload();
  v22 = OBJC_IVAR____TtC26GenerativePartnerServiceUI29ExternalAIAuthenticatorHelper_modelBundle;
  sub_1BE50A890();
  sub_1BE4C63F8(v23, v24, v25, v12);
  v26 = a1[3];
  v27 = a1[4];
  v39 = a1;
  sub_1BE4C52F4(a1, v26);
  (*(v27 + 104))(v26, v27);
  sub_1BE4CE728();
  sub_1BE4C63F8(v28, v29, v30, v12);
  v31 = *(v15 + 32);
  v31(v20, v11, v12);
  v32 = v38;
  v31(v38, v20, v12);
  sub_1BE4CE728();
  sub_1BE4C63F8(v33, v34, v35, v12);
  swift_beginAccess();
  sub_1BE536C94(v32, v2 + v22);
  swift_endAccess();
  sub_1BE4C58A8(v39);
  return v2;
}

uint64_t sub_1BE535104(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1BE54AE3C();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_1BE54B4BC();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v10 = *(*(sub_1BE4BF11C(&qword_1EBDAC5A8, &qword_1BE54F818) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v11 = sub_1BE54B4FC();
  v3[12] = v11;
  v12 = *(v11 - 8);
  v3[13] = v12;
  v13 = *(v12 + 64) + 15;
  v3[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BE5352B8, 0, 0);
}

uint64_t sub_1BE5352B8()
{
  sub_1BE4E021C();
  v28 = v0;
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[4];
  sub_1BE533EC4();
  if (sub_1BE4C63BC(v2, 1, v1) == 1)
  {
    sub_1BE4D0E58(v0[11], &qword_1EBDAC5A8, &qword_1BE54F818);
    if (qword_1EBDABAC0 != -1)
    {
      sub_1BE536D04();
    }

    v4 = sub_1BE54B2EC();
    sub_1BE4C52BC(v4, qword_1EBDB0C80);
    v5 = sub_1BE54B2BC();
    v6 = sub_1BE54C98C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = sub_1BE50AB7C();
      v8 = sub_1BE50AAC4();
      v27 = v8;
      *v7 = 136446210;
      sub_1BE4FFAA0();
      *(v7 + 4) = sub_1BE4C5338(0xD000000000000010, v9, &v27);
      sub_1BE536D68(&dword_1BE4B8000, v10, v11, "%{public}s: Can't start sign in session as authenticator is nil.");
      sub_1BE4C58A8(v8);
      sub_1BE4C75DC();
      sub_1BE4C75DC();
    }

    v12 = sub_1BE54B3EC();
    sub_1BE5369A0();
    swift_allocError();
    (*(*(v12 - 8) + 104))(v13, *MEMORY[0x1E698AA28], v12);
    swift_willThrow();
    v14 = v0[14];
    v16 = v0[10];
    v15 = v0[11];
    v17 = v0[7];

    sub_1BE4E01E0();

    return v18();
  }

  else
  {
    v20 = v0[10];
    (*(v0[13] + 32))(v0[14], v0[11], v0[12]);
    sub_1BE54B47C();
    swift_task_alloc();
    sub_1BE50A8BC();
    v0[15] = v21;
    *v21 = v22;
    v21[1] = sub_1BE535558;
    v23 = v0[10];
    v24 = v0[7];
    v25 = v0[3];
    v26 = v0[4];

    return sub_1BE535A3C(v24, v25, v23);
  }
}

uint64_t sub_1BE535558()
{
  sub_1BE4E01D4();
  sub_1BE4E0228();
  v3 = v2;
  sub_1BE536D24();
  *v4 = v3;
  v6 = *(v5 + 120);
  v7 = *v1;
  sub_1BE4E01C4();
  *v8 = v7;
  v3[16] = v0;

  if (v0)
  {
    sub_1BE4CE6EC();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(MEMORY[0x1E698AA80] + 4);
    swift_task_alloc();
    sub_1BE50A8BC();
    v3[17] = v13;
    *v13 = v14;
    v13[1] = sub_1BE5356B4;
    v15 = v3[10];
    v16 = v3[7];
    v17 = v3[2];

    return MEMORY[0x1EEDEB740](v17, v16);
  }
}

uint64_t sub_1BE5356B4()
{
  sub_1BE4E01D4();
  sub_1BE4E0228();
  v3 = *(v2 + 136);
  v4 = *v1;
  sub_1BE4E01C4();
  *v5 = v4;
  *(v6 + 144) = v0;

  sub_1BE4CE6EC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BE5357B4()
{
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[8];
  (*(v0[6] + 8))(v0[7], v0[5]);
  (*(v6 + 8))(v5, v7);
  (*(v2 + 8))(v1, v3);

  sub_1BE4E01E0();

  return v8();
}

uint64_t sub_1BE53589C()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  (*(v0[9] + 8))(v0[10], v0[8]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[16];
  v5 = v0[14];
  v7 = v0[10];
  v6 = v0[11];
  v8 = v0[7];

  sub_1BE4E01E0();

  return v9();
}

uint64_t sub_1BE53595C()
{
  sub_1BE4E021C();
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[8];
  (*(v0[6] + 8))(v0[7], v0[5]);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v7 = v0[18];
  v8 = v0[14];
  v10 = v0[10];
  v9 = v0[11];
  v11 = v0[7];

  sub_1BE4E01E0();

  return v12();
}

uint64_t sub_1BE535A3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = *(*(sub_1BE4BF11C(&qword_1EBDAD388, &qword_1BE551938) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();
  v5 = sub_1BE54AE3C();
  v3[7] = v5;
  v6 = *(v5 - 8);
  v3[8] = v6;
  v7 = *(v6 + 64) + 15;
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v8 = sub_1BE54B4BC();
  v3[11] = v8;
  v9 = *(v8 - 8);
  v3[12] = v9;
  v10 = *(v9 + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BE535BB8, 0, 0);
}

uint64_t sub_1BE535BB8()
{
  v80 = v0;
  v1 = [objc_opt_self() mainBundle];
  v2 = sub_1BE536C24(v1);
  v0[15] = v3;
  if (v3)
  {
    v4 = v2;
    v5 = v3;
    if (qword_1EBDABAC0 != -1)
    {
      sub_1BE536D04();
    }

    v6 = v0[14];
    v8 = v0[11];
    v7 = v0[12];
    v9 = v0[4];
    v10 = sub_1BE54B2EC();
    sub_1BE4C52BC(v10, qword_1EBDB0C80);
    (*(v7 + 16))(v6, v9, v8);

    v11 = sub_1BE54B2BC();
    v12 = sub_1BE54C96C();

    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[14];
    v16 = v0[11];
    v15 = v0[12];
    if (v13)
    {
      v17 = sub_1BE50AAC4();
      v79 = swift_slowAlloc();
      *v17 = 136446722;
      sub_1BE4FFAA0();
      *(v17 + 4) = sub_1BE4C5338(0xD00000000000002ALL, v18, &v79);
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_1BE4C5338(v4, v5, &v79);
      *(v17 + 22) = 2082;
      v19 = v4;
      v20 = sub_1BE54B49C();
      v78 = v12;
      v22 = v21;
      (*(v15 + 8))(v14, v16);
      v23 = v20;
      v4 = v19;
      v24 = sub_1BE4C5338(v23, v22, &v79);

      *(v17 + 24) = v24;
      _os_log_impl(&dword_1BE4B8000, v11, v78, "%{public}s: Bundle.main.bundleIdentifier = %s, callbackURL scheme: %{public}s", v17, 0x20u);
      swift_arrayDestroy();
      sub_1BE4C75DC();
      sub_1BE4C75DC();
    }

    else
    {

      (*(v15 + 8))(v14, v16);
    }

    v42 = v0[10];
    v43 = v0[6];
    v44 = v0[4];
    sub_1BE54B48C();
    v45 = objc_opt_self();
    sub_1BE54B49C();
    v46 = sub_1BE54C6DC();

    v47 = [v45 callbackWithCustomScheme_];
    v0[16] = v47;

    sub_1BE54B2FC();
    sub_1BE54B30C();
    sub_1BE4CE728();
    sub_1BE4C63F8(v48, v49, v50, v51);
    v52 = sub_1BE54C61C();
    v0[17] = v52;
    v53 = *(MEMORY[0x1E6985C10] + 4);
    swift_task_alloc();
    sub_1BE50A8BC();
    v0[18] = v54;
    *v54 = v55;
    v54[1] = sub_1BE53618C;
    v56 = v0[10];
    v57 = v0[6];
    v58 = v0[2];
    v59 = v0[3];

    return MEMORY[0x1EEDE8988](v58, v56, v47, v57, v52, v4, v5);
  }

  else
  {
    if (qword_1EBDABAC0 != -1)
    {
      sub_1BE536D04();
    }

    v26 = v0[12];
    v25 = v0[13];
    v27 = v0[11];
    v28 = v0[4];
    v29 = sub_1BE54B2EC();
    sub_1BE4C52BC(v29, qword_1EBDB0C80);
    (*(v26 + 16))(v25, v28, v27);
    v30 = sub_1BE54B2BC();
    v31 = sub_1BE54C98C();
    v32 = os_log_type_enabled(v30, v31);
    v34 = v0[12];
    v33 = v0[13];
    v35 = v0[11];
    if (v32)
    {
      v36 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      *v36 = 136446466;
      sub_1BE4FFAA0();
      *(v36 + 4) = sub_1BE4C5338(0xD00000000000002ALL, v37, &v79);
      *(v36 + 12) = 2082;
      v38 = sub_1BE54B49C();
      v40 = v39;
      (*(v34 + 8))(v33, v35);
      v41 = sub_1BE4C5338(v38, v40, &v79);

      *(v36 + 14) = v41;
      _os_log_impl(&dword_1BE4B8000, v30, v31, "%{public}s: Bundle.main.bundleIdentifier = nil. callbackURL scheme: %{public}s", v36, 0x16u);
      swift_arrayDestroy();
      sub_1BE4C75DC();
      sub_1BE4C75DC();
    }

    else
    {

      (*(v34 + 8))(v33, v35);
    }

    v60 = v0[9];
    v62 = v0[4];
    v61 = v0[5];
    sub_1BE54B48C();
    v63 = sub_1BE54B49C();
    v65 = v64;
    v0[20] = v64;
    sub_1BE54B2FC();
    sub_1BE54B30C();
    sub_1BE4CE728();
    sub_1BE4C63F8(v66, v67, v68, v69);
    v70 = *(MEMORY[0x1E6985C08] + 4);
    swift_task_alloc();
    sub_1BE50A8BC();
    v0[21] = v71;
    *v71 = v72;
    v71[1] = sub_1BE5363E0;
    v73 = v0[9];
    v74 = v0[5];
    v75 = v0[2];
    v76 = v0[3];

    return MEMORY[0x1EEDE8980](v75, v73, v63, v65, v74);
  }
}

uint64_t sub_1BE53618C()
{
  sub_1BE4E0228();
  v3 = v2;
  sub_1BE536D24();
  *v4 = v3;
  v6 = v5[18];
  v7 = v5[17];
  v8 = v5[16];
  v9 = v5[15];
  v10 = v5[10];
  v11 = v5[8];
  v12 = v5[7];
  v13 = v5[6];
  v14 = *v1;
  sub_1BE4E01C4();
  *v15 = v14;
  v3[19] = v0;

  sub_1BE4D0E58(v13, &qword_1EBDAD388, &qword_1BE551938);
  (*(v11 + 8))(v10, v12);
  if (v0)
  {
    sub_1BE4CE6EC();

    return MEMORY[0x1EEE6DFA0](v16, v17, v18);
  }

  else
  {
    v20 = v3[13];
    v19 = v3[14];
    v22 = v3[9];
    v21 = v3[10];
    v25 = v3 + 5;
    v23 = v3[5];
    v24 = v25[1];

    sub_1BE4E01E0();

    return v26();
  }
}

uint64_t sub_1BE5363E0()
{
  sub_1BE4E0228();
  v3 = v2;
  sub_1BE536D24();
  *v4 = v3;
  v6 = v5[21];
  v7 = v5[20];
  v8 = v5[9];
  v9 = v5[8];
  v10 = v5[7];
  v11 = v5[5];
  v12 = *v1;
  sub_1BE4E01C4();
  *v13 = v12;
  v3[22] = v0;

  sub_1BE4D0E58(v11, &qword_1EBDAD388, &qword_1BE551938);
  (*(v9 + 8))(v8, v10);
  if (v0)
  {
    sub_1BE4CE6EC();

    return MEMORY[0x1EEE6DFA0](v14, v15, v16);
  }

  else
  {
    v18 = v3[13];
    v17 = v3[14];
    v20 = v3[9];
    v19 = v3[10];
    v23 = v3 + 5;
    v21 = v3[5];
    v22 = v23[1];

    sub_1BE4E01E0();

    return v24();
  }
}

uint64_t sub_1BE5365F4()
{
  sub_1BE4E021C();
  v1 = v0[22];
  v3 = v0[13];
  v2 = v0[14];
  v5 = v0[9];
  v4 = v0[10];
  v7 = v0[5];
  v6 = v0[6];

  sub_1BE4E01E0();

  return v8();
}

uint64_t sub_1BE536690()
{
  sub_1BE4E021C();
  v1 = v0[19];
  v3 = v0[13];
  v2 = v0[14];
  v5 = v0[9];
  v4 = v0[10];
  v7 = v0[5];
  v6 = v0[6];

  sub_1BE4E01E0();

  return v8();
}

uint64_t sub_1BE53672C()
{
  sub_1BE4D0E58(v0 + OBJC_IVAR____TtC26GenerativePartnerServiceUI29ExternalAIAuthenticatorHelper__authenticationSession, &qword_1EBDAD380, &qword_1BE551918);
  sub_1BE4D0E58(v0 + OBJC_IVAR____TtC26GenerativePartnerServiceUI29ExternalAIAuthenticatorHelper_modelBundle, &qword_1EBDAD390, &qword_1BE551940);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t type metadata accessor for ExternalAIAuthenticatorHelper()
{
  result = qword_1EBDAD360;
  if (!qword_1EBDAD360)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BE536814()
{
  sub_1BE53693C(319, &qword_1EBDAD370, MEMORY[0x1E6985C18], MEMORY[0x1E697DCB8]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1BE53693C(319, &qword_1EBDAD378, MEMORY[0x1E69DA6C8], MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1BE53693C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1BE5369A0()
{
  result = qword_1EBDAC5C8;
  if (!qword_1EBDAC5C8)
  {
    sub_1BE54B3EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC5C8);
  }

  return result;
}

uint64_t sub_1BE536A20@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_1BE54B9EC();
  v11 = sub_1BE4C7500(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1BE4C757C();
  v18 = v17 - v16;
  v19 = sub_1BE4BF11C(a1, a2);
  v20 = sub_1BE4C7470(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = (&v30 - v23);
  sub_1BE4C6EFC(v8, &v30 - v23, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = a3(0);
    sub_1BE4C7470(v25);
    return (*(v26 + 32))(a4, v24);
  }

  else
  {
    v28 = *v24;
    sub_1BE54C99C();
    v29 = sub_1BE54BE0C();
    sub_1BE54B2AC();

    sub_1BE54B9DC();
    swift_getAtKeyPath();

    return (*(v13 + 8))(v18, v10);
  }
}

uint64_t sub_1BE536C24(void *a1)
{
  v2 = [a1 bundleIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1BE54C70C();

  return v3;
}

uint64_t sub_1BE536C94(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE4BF11C(&qword_1EBDAD390, &qword_1BE551940);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BE536D04()
{

  return swift_once();
}

uint64_t sub_1BE536D34()
{
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[2];

  return sub_1BE54B52C();
}

uint64_t sub_1BE536D54(uint64_t a1)
{
  *(v1 + 40) = a1;
  v3 = *(a1 - 8);
  return a1 - 8;
}

void sub_1BE536D68(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t sub_1BE536D88()
{
  if (qword_1EBDABA78 != -1)
  {
    sub_1BE5378DC();
  }

  v0 = qword_1EBDB0BF8;
  if (!qword_1EBDB0BF8)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_12:
    sub_1BE537874(&v6);
    return 2;
  }

  v1 = sub_1BE54C6DC();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_1BE54CA3C();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  else
  {
    return 2;
  }
}

unint64_t sub_1BE536EA0(char a1)
{
  result = 0x656C62616E457369;
  switch(a1)
  {
    case 1:
      result = 0x6F72507075746573;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0xD000000000000018;
      break;
    case 5:
      result = 0xD00000000000002ALL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1BE536F7C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1BE4BF11C(&qword_1EBDAC3B0, &qword_1BE54F570);
    v2 = sub_1BE54CBEC();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
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
  while (v5)
  {
    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    v24 = *(*(a1 + 56) + v11);

    swift_dynamicCast();
    sub_1BE4E3E7C(&v25, v27);
    sub_1BE4E3E7C(v27, v28);
    sub_1BE4E3E7C(v28, &v26);
    result = sub_1BE52F67C();
    v15 = result;
    if (v16)
    {
      v17 = (v2[6] + 16 * result);
      v18 = v17[1];
      *v17 = v14;
      v17[1] = v13;

      v19 = (v2[7] + 32 * v15);
      sub_1BE4C58A8(v19);
      result = sub_1BE4E3E7C(&v26, v19);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v20 = (v2[6] + 16 * result);
      *v20 = v14;
      v20[1] = v13;
      result = sub_1BE4E3E7C(&v26, (v2[7] + 32 * result));
      v21 = v2[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_20;
      }

      v2[2] = v23;
      v8 = v9;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1BE5371B8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1BE4BF11C(&qword_1EBDAD3A8, &qword_1BE5519D8);
    v2 = sub_1BE54CBEC();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
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
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = (v9 << 10) | (16 * __clz(__rbit64(v5)));
    v12 = (*(a1 + 48) + v11);
    v13 = v12[1];
    v14 = (*(a1 + 56) + v11);
    v16 = *v14;
    v15 = v14[1];
    *&v35[0] = *v12;
    *(&v35[0] + 1) = v13;

    swift_dynamicCast();
    swift_dynamicCast();
    v31 = v27;
    v32 = v28;
    v33 = v29;
    sub_1BE4E3E7C(&v30, v34);
    v27 = v31;
    v28 = v32;
    v29 = v33;
    sub_1BE4E3E7C(v34, v35);
    v17 = *(v2 + 40);
    result = sub_1BE54CA7C();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v7 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *(v7 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    v26 = *(v2 + 48) + 40 * v21;
    *v26 = v27;
    *(v26 + 16) = v28;
    *(v26 + 32) = v29;
    result = sub_1BE4E3E7C(v35, (*(v2 + 56) + 32 * v21));
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

id sub_1BE53747C()
{
  result = sub_1BE53749C();
  qword_1EBDB0BF8 = result;
  return result;
}

id sub_1BE53749C()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1BE537810(0xD00000000000002ALL, 0x80000001BE555A40);
  v2 = sub_1BE54C61C();
  if (v1)
  {
    v3 = v1;
    sub_1BE536F7C(v2);

    v4 = sub_1BE54C5DC();

    [v3 registerDefaults_];
  }

  else
  {
  }

  return v1;
}

void sub_1BE537594(char a1, char a2)
{
  if (qword_1EBDABA78 != -1)
  {
    sub_1BE5378DC();
  }

  v4 = qword_1EBDB0BF8;
  if (qword_1EBDB0BF8)
  {
    sub_1BE536EA0(a2);
    v5 = sub_1BE54C6DC();

    [v4 setBool:a1 & 1 forKey:v5];
  }
}

void sub_1BE537650(uint64_t a1, uint64_t a2)
{
  if (sub_1BE54B01C() == a1 && v3 == a2)
  {

    sub_1BE537594(1, 0);
    goto LABEL_8;
  }

  v5 = sub_1BE54CCDC();

  sub_1BE537594(v5 & 1, 0);
  if (v5)
  {
LABEL_8:
    sub_1BE537594(1, 4);
    sub_1BE537594(1, 5);
  }
}

id sub_1BE5376F4(char a1)
{
  if (qword_1EBDABA78 != -1)
  {
    sub_1BE5378DC();
  }

  v2 = qword_1EBDB0BF8;
  if (!qword_1EBDB0BF8)
  {
    return 0;
  }

  sub_1BE536EA0(a1);
  v3 = sub_1BE54C6DC();

  v4 = [v2 BOOLForKey_];

  return v4;
}

id sub_1BE53778C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_1BE537810(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1BE54C6DC();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName_];

  return v4;
}

uint64_t sub_1BE537874(uint64_t a1)
{
  v2 = sub_1BE4BF11C(&qword_1EBDAD3A0, &qword_1BE5519D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BE5378DC()
{

  return swift_once();
}

id sub_1BE537920()
{
  type metadata accessor for ResourceBundleHelper();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_1EBDB0C00 = result;
  return result;
}

uint64_t sub_1BE537978()
{
  v0 = sub_1BE54AD8C();
  sub_1BE51286C(v0, qword_1EBDB0C08);
  v1 = sub_1BE4C52BC(v0, qword_1EBDB0C08);
  *v1 = type metadata accessor for ResourceBundleHelper();
  v2 = *MEMORY[0x1E6968E00];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_1BE537A34()
{
  v0 = sub_1BE54B2EC();
  sub_1BE51286C(v0, qword_1EBDB0C20);
  sub_1BE4C52BC(v0, qword_1EBDB0C20);
  return sub_1BE54B2CC();
}

uint64_t sub_1BE537AF8()
{
  v0 = sub_1BE54B2EC();
  sub_1BE51286C(v0, qword_1EBDB0C50);
  sub_1BE4C52BC(v0, qword_1EBDB0C50);
  return sub_1BE54B2CC();
}

uint64_t sub_1BE537C3C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1BE54B2EC();
  sub_1BE51286C(v3, a2);
  sub_1BE4C52BC(v3, a2);
  return sub_1BE54B2CC();
}

uint64_t sub_1BE537CBC(void *a1)
{
  v2 = sub_1BE54B3EC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[1] = a1;
  v7 = a1;
  sub_1BE4BF11C(&qword_1EBDAC5C0, qword_1BE551A00);
  if (!swift_dynamicCast())
  {
    return 1;
  }

  (*(v3 + 8))(v6, v2);
  return 0;
}

_BYTE *storeEnumTagSinglePayload for SignInErrorType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1BE537EA4()
{
  result = qword_1EBDAD3B0;
  if (!qword_1EBDAD3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAD3B0);
  }

  return result;
}

uint64_t sub_1BE537EF8()
{
  v0 = sub_1BE54AF6C();
  sub_1BE51286C(v0, qword_1EBDAD3B8);
  sub_1BE4C52BC(v0, qword_1EBDAD3B8);
  return sub_1BE54AEEC();
}

id sub_1BE537F58()
{
  type metadata accessor for GenerativePartnerServiceProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_1EBDAD3D0 = result;
  return result;
}

uint64_t sub_1BE537FC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE4BF11C(&qword_1EBDAD3D8, &qword_1BE551AA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BE538038(uint64_t a1)
{
  v2 = sub_1BE4BF11C(&qword_1EBDAD3D8, &qword_1BE551AA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BE5380C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v54 = a4;
  v55 = a5;
  v8 = sub_1BE4BF11C(&qword_1EBDAD3D8, &qword_1BE551AA0);
  v9 = sub_1BE4C7570(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v53 - v12;
  v14 = sub_1BE54AF6C();
  v15 = sub_1BE4C7500(v14);
  v58 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1BE4C757C();
  v59 = v20 - v19;
  v21 = sub_1BE54C6BC();
  v22 = sub_1BE4C7570(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  sub_1BE4C757C();
  v57 = v26 - v25;
  v27 = sub_1BE54B2EC();
  v28 = sub_1BE4C7500(v27);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v28);
  sub_1BE4C757C();
  v35 = v34 - v33;
  v56 = a1;
  sub_1BE538D68(a1);
  if (v36)
  {
    sub_1BE54B29C();
    v37 = sub_1BE54B2BC();
    v38 = sub_1BE54C98C();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v53 = v13;
      v40 = v39;
      *v39 = 0;
      _os_log_impl(&dword_1BE4B8000, v37, v38, "No locale provided, falling back to en-US.", v39, 2u);
      v41 = v40;
      v13 = v53;
      MEMORY[0x1BFB48AC0](v41, -1, -1);
    }

    (*(v30 + 8))(v35, v27);
  }

  v42 = (*(a3 + 32))(a2, a3);
  if (!v43)
  {
    return 0;
  }

  v44 = v42;
  v45 = v43;
  (*(a3 + 24))(a2, a3);
  if (v46)
  {
    v60 = v44;
    v61 = v45;
    MEMORY[0x1BFB47CA0](v54, v55);
    sub_1BE54C6CC();
    if (qword_1EBDABAE8 != -1)
    {
      sub_1BE538D48();
    }

    v47 = qword_1EBDAD3D0;
    sub_1BE537FC8(v56, v13);
    sub_1BE538D68(v13);
    if (v36)
    {
      v48 = qword_1EBDABAE0;
      v49 = v47;
      if (v48 != -1)
      {
        sub_1BE538D88();
      }

      v50 = sub_1BE4C52BC(v14, qword_1EBDAD3B8);
      (*(v58 + 16))(v59, v50, v14);
      sub_1BE538D68(v13);
      if (!v36)
      {
        sub_1BE538038(v13);
      }
    }

    else
    {
      (*(v58 + 32))(v59, v13, v14);
      v52 = v47;
    }

    return sub_1BE54C71C();
  }

  else
  {

    return 0;
  }
}

id AdvancedCapabilityModifierUISupport.icon.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 40))();
  if (!v3)
  {
    return 0;
  }

  v4 = v2;
  v5 = v3;
  sub_1BE538C8C();
  if (qword_1EBDABAE8 != -1)
  {
    sub_1BE538D48();
  }

  v6 = qword_1EBDAD3D0;
  v7 = qword_1EBDAD3D0;
  return sub_1BE538540(v4, v5, v6);
}

id sub_1BE538540(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v4 = sub_1BE54C6DC();
  }

  else
  {
    v4 = 0;
  }

  v5 = [swift_getObjCClassFromMetadata() imageNamed:v4 inBundle:a3];

  return v5;
}

uint64_t sub_1BE53860C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v49 = a2;
  v5 = sub_1BE4BF11C(&qword_1EBDAD3D8, &qword_1BE551AA0);
  v6 = sub_1BE4C7570(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v46 - v9;
  v11 = sub_1BE54AF6C();
  v12 = sub_1BE4C7500(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1BE4C757C();
  v19 = v18 - v17;
  v20 = sub_1BE54C6BC();
  v21 = sub_1BE4C7570(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1BE4C757C();
  v24 = sub_1BE54B2EC();
  v25 = sub_1BE4C7500(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v25);
  sub_1BE4C757C();
  v32 = v31 - v30;
  sub_1BE538D68(a1);
  if (v33)
  {
    v47 = a3;
    v48 = a1;
    sub_1BE54B29C();
    v34 = sub_1BE54B2BC();
    v35 = sub_1BE54C98C();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v46 = v19;
      v37 = v36;
      *v36 = 0;
      _os_log_impl(&dword_1BE4B8000, v34, v35, "No locale provided, falling back to en-US.", v36, 2u);
      v38 = v37;
      v19 = v46;
      MEMORY[0x1BFB48AC0](v38, -1, -1);
    }

    (*(v27 + 8))(v32, v24);
    a3 = v47;
    a1 = v48;
  }

  v50 = _s16GenerativeModels0aB12AvailabilityV12CapabilitiesV5StyleO0A16PartnerServiceUIE10descriptorSSSgvg_0();
  v51 = v39;
  MEMORY[0x1BFB47CA0](v49, a3);
  sub_1BE54C6CC();
  if (qword_1EBDABAE8 != -1)
  {
    sub_1BE538D48();
  }

  v40 = qword_1EBDAD3D0;
  sub_1BE537FC8(a1, v10);
  sub_1BE538D68(v10);
  if (v33)
  {
    v41 = qword_1EBDABAE0;
    v42 = v40;
    if (v41 != -1)
    {
      sub_1BE538D88();
    }

    v43 = sub_1BE4C52BC(v11, qword_1EBDAD3B8);
    (*(v14 + 16))(v19, v43, v11);
    sub_1BE538D68(v10);
    if (!v33)
    {
      sub_1BE538038(v10);
    }
  }

  else
  {
    (*(v14 + 32))(v19, v10, v11);
    v44 = v40;
  }

  return sub_1BE54C71C();
}

id GenerativeModelsAvailability.Capabilities.Style.icon.getter()
{
  v1 = sub_1BE54B16C();
  v2 = sub_1BE4C7500(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1BE4C757C();
  v8 = sub_1BE538DA8(v7);
  v9(v8);
  v10 = sub_1BE538DDC();
  v12 = v11(v10);
  if (v12 == *MEMORY[0x1E69A1228] || v12 == *MEMORY[0x1E69A1240] || v12 == *MEMORY[0x1E69A1220] || v12 == *MEMORY[0x1E69A1230] || v12 == *MEMORY[0x1E69A1248] || v12 == *MEMORY[0x1E69A1250] || v12 == *MEMORY[0x1E69A1238] || v12 == *MEMORY[0x1E69A1218])
  {
    sub_1BE538C8C();
    if (qword_1EBDABAE8 != -1)
    {
      sub_1BE538D48();
    }

    v20 = qword_1EBDAD3D0;
    v21 = qword_1EBDAD3D0;
    v22 = sub_1BE538DC8();
    return sub_1BE538540(v22, 0xEC0000006C6C6966, v20);
  }

  else
  {
    (*(v4 + 8))(v0, v1);
    return 0;
  }
}

uint64_t GenerativeModelsAvailability.Capabilities.Style.iconName.getter()
{
  v1 = sub_1BE54B16C();
  v2 = sub_1BE4C7500(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1BE4C757C();
  v8 = sub_1BE538DA8(v7);
  v9(v8);
  v10 = sub_1BE538DDC();
  v12 = v11(v10);
  if (v12 == *MEMORY[0x1E69A1228] || v12 == *MEMORY[0x1E69A1240] || v12 == *MEMORY[0x1E69A1220] || v12 == *MEMORY[0x1E69A1230] || v12 == *MEMORY[0x1E69A1248] || v12 == *MEMORY[0x1E69A1250] || v12 == *MEMORY[0x1E69A1238] || v12 == *MEMORY[0x1E69A1218])
  {
    return sub_1BE538DC8();
  }

  (*(v4 + 8))(v0, v1);
  return 0;
}

unint64_t sub_1BE538C8C()
{
  result = qword_1EBDAD3E0;
  if (!qword_1EBDAD3E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBDAD3E0);
  }

  return result;
}

uint64_t sub_1BE538D48()
{

  return swift_once();
}

uint64_t sub_1BE538D88()
{

  return swift_once();
}

uint64_t sub_1BE538DA8@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 - a1;
  v4 = *(v2 + 16);
  return v3;
}

uint64_t sub_1BE538DF8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v5 = result;
  v6 = 0;
  v7 = *(a3 + 16);
  v8 = a3 + 32;
  v9 = MEMORY[0x1E69E7CC0];
  v24 = result;
  v23 = v7;
  while (1)
  {
    if (v7 == v6)
    {
      goto LABEL_14;
    }

    if (v6 >= *(v4 + 16))
    {
      break;
    }

    sub_1BE4C6918(v8, v29);
    v10 = v5(v29);
    if (v3)
    {
      sub_1BE4C58A8(v29);

LABEL_14:

      return v9;
    }

    if (v10)
    {
      sub_1BE4BF094(v29, v26);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30 = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1BE52B7A8(0, *(v9 + 16) + 1, 1);
        v9 = v30;
      }

      v13 = *(v9 + 16);
      v12 = *(v9 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1BE52B7A8((v12 > 1), v13 + 1, 1);
      }

      v14 = v27;
      v15 = v28;
      sub_1BE50A568(v26, v27);
      sub_1BE53E944();
      v17 = *(v16 + 64);
      MEMORY[0x1EEE9AC00](v18);
      sub_1BE4C757C();
      v21 = v20 - v19;
      (*(v22 + 16))(v20 - v19);
      sub_1BE53DC34(v13, v21, &v30, v14, v15);
      result = sub_1BE4C58A8(v26);
      v9 = v30;
      v5 = v24;
      v4 = a3;
      v7 = v23;
    }

    else
    {
      result = sub_1BE4C58A8(v29);
    }

    v8 += 40;
    ++v6;
  }

  __break(1u);
  return result;
}

void sub_1BE539004(uint64_t a1, uint64_t a2)
{
  sub_1BE52C7AC();
  v8 = sub_1BE54B0EC();
  v9 = sub_1BE4C7500(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1BE4D981C();
  v13 = MEMORY[0x1EEE9AC00](v12);
  sub_1BE53E818(v13, v14, v15, v16, v17, v18, v19, v20, v41);
  MEMORY[0x1EEE9AC00](v21);
  sub_1BE53E994();
  if (!v22 && *(v2 + 16) == *(a2 + 16))
  {
    sub_1BE53E5E0();
    if (v24)
    {
      while (2)
      {
        sub_1BE53E884();
LABEL_10:
        v26 = sub_1BE53E6C4();
        v6(v26);
        v27 = sub_1BE53E78C();
        v28(v27);
        v29 = *(a2 + 40);
        sub_1BE53E6A0();
        sub_1BE53E41C(&qword_1EDDD66C0, v30);
        sub_1BE53E9E4();
        sub_1BE53E96C();
        do
        {
          sub_1BE53E754(v31);
          if ((v32 & 1) == 0)
          {
            v38 = *v3;
            v39 = sub_1BE53E918();
            v40(v39);
            return;
          }

          v33 = sub_1BE53E738();
          v6(v33);
          sub_1BE53E6A0();
          sub_1BE53E41C(&qword_1EDDD66B8, v34);
          sub_1BE53E8B4();
          v35 = sub_1BE53E924();
          v4(v35);
          v31 = a2 + 1;
        }

        while ((v29 & 1) == 0);
        v36 = sub_1BE53E918();
        v4(v36);
        sub_1BE53E89C();
        if (v37)
        {
          continue;
        }

        break;
      }
    }

    v25 = v5;
    while (1)
    {
      v5 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v5 >= v23)
      {
        return;
      }

      ++v25;
      if (*(v42 + 8 * v5))
      {
        sub_1BE53E86C();
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_1BE539210(uint64_t a1, uint64_t a2)
{
  sub_1BE52C7AC();
  v8 = sub_1BE54B0BC();
  v9 = sub_1BE4C7500(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1BE4D981C();
  v13 = MEMORY[0x1EEE9AC00](v12);
  sub_1BE53E818(v13, v14, v15, v16, v17, v18, v19, v20, v41);
  MEMORY[0x1EEE9AC00](v21);
  sub_1BE53E994();
  if (!v22 && *(v2 + 16) == *(a2 + 16))
  {
    sub_1BE53E5E0();
    if (v24)
    {
      while (2)
      {
        sub_1BE53E884();
LABEL_10:
        v26 = sub_1BE53E6C4();
        v6(v26);
        v27 = sub_1BE53E78C();
        v28(v27);
        v29 = *(a2 + 40);
        sub_1BE53E688();
        sub_1BE53E41C(&qword_1EBDACD80, v30);
        sub_1BE53E9E4();
        sub_1BE53E96C();
        do
        {
          sub_1BE53E754(v31);
          if ((v32 & 1) == 0)
          {
            v38 = *v3;
            v39 = sub_1BE53E918();
            v40(v39);
            return;
          }

          v33 = sub_1BE53E738();
          v6(v33);
          sub_1BE53E688();
          sub_1BE53E41C(&qword_1EBDAD2E0, v34);
          sub_1BE53E8B4();
          v35 = sub_1BE53E924();
          v4(v35);
          v31 = a2 + 1;
        }

        while ((v29 & 1) == 0);
        v36 = sub_1BE53E918();
        v4(v36);
        sub_1BE53E89C();
        if (v37)
        {
          continue;
        }

        break;
      }
    }

    v25 = v5;
    while (1)
    {
      v5 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v5 >= v23)
      {
        return;
      }

      ++v25;
      if (*(v42 + 8 * v5))
      {
        sub_1BE53E86C();
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_1BE53941C(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_1BE525E18();
    if (*(v4 + 16) == *(v5 + 16))
    {
      v6 = 0;
      v9 = *(v3 + 56);
      v8 = v3 + 56;
      v7 = v9;
      v10 = 1 << *(v8 - 24);
      if (v10 < 64)
      {
        v11 = ~(-1 << v10);
      }

      else
      {
        v11 = -1;
      }

      v12 = v11 & v7;
      v13 = (v10 + 63) >> 6;
      while (v12)
      {
LABEL_12:
        v12 &= v12 - 1;
        v15 = *(v2 + 40);
        sub_1BE54CD8C();
        MEMORY[0x1BFB482A0](0);
        v16 = sub_1BE54CDAC() & ~(-1 << *(v2 + 32));
        if (((*(v2 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
        {
          return;
        }
      }

      while (1)
      {
        v14 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        if (v14 >= v13)
        {
          return;
        }

        v12 = *(v8 + 8 * v14);
        ++v6;
        if (v12)
        {
          v6 = v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_1BE53952C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1BE539588(v4);
}

uint64_t sub_1BE539558()
{
  sub_1BE50AA7C();
  v1 = *(v0 + 16);
}

uint64_t sub_1BE539588(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

id sub_1BE539620()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v3 = [objc_allocWithZone(type metadata accessor for GenerativePartnerServiceUserDefaults()) init];
    v4 = *(v0 + 24);
    *(v0 + 24) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t GenerativePartnerServiceProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  GenerativePartnerServiceProvider.init()();
  return v0;
}

void *GenerativePartnerServiceProvider.init()()
{
  v0[2] = MEMORY[0x1E69E7CC0];
  v0[3] = 0;
  v0[4] = MEMORY[0x1E69E7CD0];
  type metadata accessor for GenerativePartnerServiceUserDefaults();
  sub_1BE53EC68(0xD00000000000002ALL, 0x80000001BE555A40);
  sub_1BE53B438(0);
  sub_1BE53974C(0);
  sub_1BE53DA44();
  sub_1BE539C38(0);
  return v0;
}

void sub_1BE53974C(char a1)
{
  LOBYTE(v1) = a1;
  if (qword_1EDDD6570 != -1)
  {
LABEL_28:
    sub_1BE53E598();
    swift_once();
  }

  v2 = sub_1BE54B2EC();
  sub_1BE4C52BC(v2, qword_1EDDD7078);
  v3 = sub_1BE54B2BC();
  v4 = sub_1BE54C9AC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = sub_1BE50AB7C();
    sub_1BE53E6B8();
    v6 = swift_slowAlloc();
    *&v58 = v6;
    *v5 = 136446210;
    if (v1)
    {
      v7 = 0xD000000000000012;
    }

    else
    {
      v7 = 46;
    }

    if (v1)
    {
      v8 = 0x80000001BE555C10;
    }

    else
    {
      v8 = 0xE100000000000000;
    }

    v9 = sub_1BE4C5338(v7, v8, &v58);

    *(v5 + 4) = v9;
    sub_1BE53E8FC(&dword_1BE4B8000, v10, v4, "Loading llms%{public}s");
    sub_1BE4C58A8(v6);
    v11 = sub_1BE53E5C4();
    MEMORY[0x1BFB48AC0](v11);
    sub_1BE53E5D4();
    MEMORY[0x1BFB48AC0]();
  }

  v12 = sub_1BE54986C();
  sub_1BE549D98(v12, v1 & 1);
  sub_1BE50A968();

  v1 = 0;
  isa = v3[2].isa;
  v13 = MEMORY[0x1E69E7CC0];
  v53 = v3;
  v14 = &v3[4];
  while (isa != v1)
  {
    if (v1 >= v53[2].isa)
    {
      __break(1u);
      goto LABEL_28;
    }

    sub_1BE4C6918(v14, &v58);
    type metadata accessor for GenerativePartnerServiceUserDefaults();
    v15 = v59;
    v16 = v60;
    sub_1BE4C52F4(&v58, v59);
    sub_1BE4C75D0(v16);
    v18 = v17(v15, v16);
    v20 = sub_1BE53F5E0(v18, v19);

    if (v20)
    {
      sub_1BE4C6918(&v58, v55);
      v21 = sub_1BE54B2BC();
      v22 = sub_1BE54C9AC();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = sub_1BE50AB7C();
        sub_1BE53E6B8();
        v24 = swift_slowAlloc();
        v54 = v24;
        *v23 = 136446210;
        v26 = v56;
        v25 = v57;
        sub_1BE4C52F4(v55, v56);
        sub_1BE4C75D0(v25);
        v28 = v27(v26, v25);
        v30 = v29;
        sub_1BE4C58A8(v55);
        v31 = sub_1BE4C5338(v28, v30, &v54);

        *(v23 + 4) = v31;
        _os_log_impl(&dword_1BE4B8000, v21, v22, "LLM with id: %{public}s is unavailable and removed from the available LLM list", v23, 0xCu);
        sub_1BE4C58A8(v24);
        v32 = sub_1BE53E5C4();
        MEMORY[0x1BFB48AC0](v32);
        sub_1BE53E5D4();
        MEMORY[0x1BFB48AC0]();
      }

      else
      {

        sub_1BE4C58A8(v55);
      }

      sub_1BE4C58A8(&v58);
    }

    else
    {
      sub_1BE4BF094(&v58, v55);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v61 = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1BE52B7A8(0, *(v13 + 16) + 1, 1);
        v13 = v61;
      }

      v35 = *(v13 + 16);
      v34 = *(v13 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_1BE52B7A8((v34 > 1), v35 + 1, 1);
      }

      v36 = v56;
      v37 = v57;
      sub_1BE50A568(v55, v56);
      sub_1BE53E944();
      v39 = *(v38 + 64);
      MEMORY[0x1EEE9AC00](v40);
      sub_1BE4C757C();
      (*(v43 + 16))(v42 - v41);
      v44 = sub_1BE53E938();
      sub_1BE53DC34(v44, v45, v46, v36, v37);
      sub_1BE4C58A8(v55);
      v13 = v61;
    }

    v14 += 40;
    v1 = (v1 + 1);
  }

  swift_beginAccess();
  v47 = *(v51 + 16);
  *(v51 + 16) = v13;

  v48 = sub_1BE54B2BC();
  v49 = sub_1BE54C9AC();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = sub_1BE50AB7C();
    *v50 = 134349056;
    *(v50 + 4) = *(*(v51 + 16) + 16);

    _os_log_impl(&dword_1BE4B8000, v48, v49, "%{public}ld llms available", v50, 0xCu);
    sub_1BE53E5D4();
    MEMORY[0x1BFB48AC0]();
  }

  else
  {
  }
}

uint64_t sub_1BE539C38(char a1)
{
  v3 = *v1;
  v4 = sub_1BE4BF11C(&qword_1EBDAC3A8, &qword_1BE550DA0);
  v5 = sub_1BE4C7570(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  sub_1BE54C8FC();
  v10 = sub_1BE54C91C();
  sub_1BE4C63F8(v9, 0, 1, v10);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 32) = a1;
  *(v11 + 40) = v1;
  *(v11 + 48) = v3;

  sub_1BE50BA3C();
}

uint64_t sub_1BE539D5C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 160) = a5;
  *(v6 + 168) = a6;
  *(v6 + 444) = a4;
  v7 = *(*(sub_1BE4BF11C(&qword_1EBDAC3A8, &qword_1BE550DA0) - 8) + 64) + 15;
  *(v6 + 176) = swift_task_alloc();
  *(v6 + 184) = swift_task_alloc();
  v8 = sub_1BE54B12C();
  *(v6 + 192) = v8;
  v9 = *(v8 - 8);
  *(v6 + 200) = v9;
  *(v6 + 208) = *(v9 + 64);
  *(v6 + 216) = swift_task_alloc();
  *(v6 + 224) = swift_task_alloc();
  v10 = *(*(sub_1BE4BF11C(&qword_1EBDACCD8, &qword_1BE550500) - 8) + 64) + 15;
  *(v6 + 232) = swift_task_alloc();
  v11 = sub_1BE54B1AC();
  *(v6 + 240) = v11;
  v12 = *(v11 - 8);
  *(v6 + 248) = v12;
  v13 = *(v12 + 64) + 15;
  *(v6 + 256) = swift_task_alloc();
  v14 = sub_1BE54B19C();
  *(v6 + 264) = v14;
  v15 = *(v14 - 8);
  *(v6 + 272) = v15;
  v16 = *(v15 + 64) + 15;
  *(v6 + 280) = swift_task_alloc();
  v17 = sub_1BE54B1BC();
  *(v6 + 288) = v17;
  v18 = *(v17 - 8);
  *(v6 + 296) = v18;
  v19 = *(v18 + 64) + 15;
  *(v6 + 304) = swift_task_alloc();
  v20 = sub_1BE54B14C();
  *(v6 + 312) = v20;
  v21 = *(v20 - 8);
  *(v6 + 320) = v21;
  v22 = *(v21 + 64) + 15;
  *(v6 + 328) = swift_task_alloc();
  v23 = sub_1BE54B1EC();
  *(v6 + 336) = v23;
  v24 = *(v23 - 8);
  *(v6 + 344) = v24;
  v25 = *(v24 + 64) + 15;
  *(v6 + 352) = swift_task_alloc();
  v26 = sub_1BE54B05C();
  *(v6 + 360) = v26;
  v27 = *(v26 - 8);
  *(v6 + 368) = v27;
  v28 = *(v27 + 64) + 15;
  *(v6 + 376) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BE53A0D8, 0, 0);
}

uint64_t sub_1BE53A0D8()
{
  v51 = v1;
  v7 = *(v1 + 444);
  v8 = sub_1BE54986C();
  v9 = sub_1BE549D98(v8, v7);
  *(v1 + 384) = v9;

  v10 = *(v9 + 16);
  *(v1 + 392) = v10;
  if (!v10)
  {
LABEL_21:

    sub_1BE53E6EC();

    sub_1BE4E01E0();

    return v47();
  }

  v11 = *(v1 + 160);
  sub_1BE50AA7C();
  v12 = 0;
  *(v1 + 440) = *MEMORY[0x1E69A12B8];
  while (2)
  {
    sub_1BE53E980(v12);
    if (v14)
    {
      __break(1u);
LABEL_25:
      sub_1BE53E598();
      swift_once();
      goto LABEL_16;
    }

    sub_1BE53E7C4(v13);
    sub_1BE53E7A8();
    v15 = sub_1BE53E5AC();
    v3 = v16(v15);
    v2 = v17;
    *(v1 + 408) = v3;
    *(v1 + 416) = v17;
    sub_1BE53E7A8();
    v18 = *(v0 + 112);
    v19 = sub_1BE50A968();
    v20(v19, v0);
    sub_1BE4C58A8((v1 + 16));
    sub_1BE54B03C();
    v21 = sub_1BE53E800();
    v22(v21);
    v23 = v5[4];
    if (*(v23 + 16))
    {
      v24 = *(v23 + 40);
      sub_1BE54CD8C();

      sub_1BE53E848();
      sub_1BE54C77C();
      sub_1BE54CDAC();
      sub_1BE53E854();
      do
      {
        sub_1BE53E830(v25);
        if ((v26 & 1) == 0)
        {

          goto LABEL_15;
        }

        sub_1BE53E958();
        v28 = v28 && v27 == v8;
        if (v28)
        {
          break;
        }

        v29 = sub_1BE53E770();
        v25 = v5 + 1;
      }

      while ((v29 & 1) == 0);

      v12 = *(v1 + 400) + 1;
      if (v12 != *(v1 + 392))
      {
        continue;
      }

      v30 = *(v1 + 384);
      goto LABEL_21;
    }

    break;
  }

LABEL_15:
  sub_1BE53E8D8();

  sub_1BE53E848();
  sub_1BE53007C(v31, v32, v33);
  v34 = *(v1 + 144);
  swift_endAccess();

  if (qword_1EDDD6570 != -1)
  {
    goto LABEL_25;
  }

LABEL_16:
  v35 = sub_1BE54B2EC();
  sub_1BE4C52BC(v35, qword_1EDDD7078);

  v36 = sub_1BE54B2BC();
  v37 = sub_1BE54C9AC();

  if (os_log_type_enabled(v36, v37))
  {
    v4 = sub_1BE50AB7C();
    sub_1BE53E6B8();
    v5 = swift_slowAlloc();
    v50 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1BE4C5338(v3, v2, &v50);
    sub_1BE53E9C4(&dword_1BE4B8000, v38, v39, "Subscribing to availability changes for LLM id: %{public}s");
    sub_1BE4C58A8(v5);
    sub_1BE53E5D4();
    MEMORY[0x1BFB48AC0]();
    sub_1BE53E5D4();
    MEMORY[0x1BFB48AC0]();
  }

  sub_1BE53E714();
  v49 = v40;
  (*(v41 + 104))(v37);
  sub_1BE4FFBD8();
  sub_1BE54B13C();
  sub_1BE54B1DC();
  (*(v6 + 8))(v2, v3);
  sub_1BE54B1CC();
  sub_1BE54B18C();
  (*(v4 + 8))(v5, v49);
  sub_1BE53E670();
  sub_1BE53E41C(v42, v43);
  v44 = *(MEMORY[0x1E69E85A8] + 4);
  v45 = swift_task_alloc();
  *(v1 + 424) = v45;
  *v45 = v1;
  v46 = sub_1BE53E63C(v45);

  return MEMORY[0x1EEE6D8C8](v46);
}

uint64_t sub_1BE53A51C()
{
  sub_1BE4E01D4();
  sub_1BE4E0228();
  v3 = *(v2 + 424);
  v4 = *v1;
  sub_1BE4E01C4();
  *v5 = v4;
  *(v6 + 432) = v0;

  if (v0)
  {
    v7 = sub_1BE53AD88;
  }

  else
  {
    v7 = sub_1BE53A620;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1BE53A63C()
{
  v87 = v0;
  v3 = v0[24];
  v4 = sub_1BE4C63BC(v0[29], 1, v3);
  v5 = v0[52];
  if (v4 != 1)
  {
    v36 = v0[27];
    v35 = v0[28];
    v37 = v0[25];
    v80 = v0[26];
    v38 = v0[23];
    v84 = v0[22];
    v82 = v0[51];
    v83 = v0[21];
    v78 = v36;
    v81 = *(v37 + 32);
    v39 = sub_1BE4D9800();
    v40(v39);
    sub_1BE54C8FC();
    v79 = sub_1BE54C91C();
    sub_1BE4C63F8(v38, 0, 1, v79);
    v41 = swift_allocObject();
    swift_weakInit();
    (*(v37 + 16))(v36, v35, v3);
    sub_1BE54C8CC();

    v42 = sub_1BE54C8BC();
    v43 = (*(v37 + 80) + 48) & ~*(v37 + 80);
    v44 = (v80 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
    v45 = swift_allocObject();
    v46 = MEMORY[0x1E69E85E0];
    *(v45 + 2) = v42;
    *(v45 + 3) = v46;
    *(v45 + 4) = v82;
    *(v45 + 5) = v5;
    v81(&v45[v43], v78, v3);
    *&v45[v44] = v41;
    *&v45[(v44 + 15) & 0xFFFFFFFFFFFFFFF8] = v83;

    sub_1BE53E294(v38, v84, &qword_1EBDAC3A8, &qword_1BE550DA0);
    v47 = sub_1BE4C63BC(v84, 1, v79);

    v48 = v0[22];
    if (v47 == 1)
    {
      sub_1BE511848(v0[22], &qword_1EBDAC3A8, &qword_1BE550DA0);
    }

    else
    {
      sub_1BE54C90C();
      sub_1BE50A884(v79);
      (*(v60 + 8))(v48, v79);
    }

    v62 = *(v45 + 2);
    v61 = *(v45 + 3);
    swift_unknownObjectRetain();

    if (v62)
    {
      swift_getObjectType();
      v63 = sub_1BE54C87C();
      v65 = v64;
      swift_unknownObjectRelease();
    }

    else
    {
      v63 = 0;
      v65 = 0;
    }

    sub_1BE511848(v0[23], &qword_1EBDAC3A8, &qword_1BE550DA0);
    v66 = swift_allocObject();
    *(v66 + 16) = &unk_1BE551BA0;
    *(v66 + 24) = v45;
    if (v65 | v63)
    {
      v0[7] = 0;
      v0[8] = 0;
      v0[9] = v63;
      v0[10] = v65;
    }

    v67 = v0[28];
    v68 = v0[24];
    v69 = v0[25];
    swift_task_create();

    (*(v69 + 8))(v67, v68);
    goto LABEL_28;
  }

  v7 = v0[43];
  v6 = v0[44];
  v8 = v0[42];
  v10 = v0[34];
  v9 = v0[35];
  v11 = v0[33];
  v12 = v0[52];

  v14 = *(v10 + 8);
  v13 = v10 + 8;
  v14(v9, v11);
  v16 = *(v7 + 8);
  v15 = v7 + 8;
  v16(v6, v8);
LABEL_3:
  v17 = v0[50] + 1;
  if (v17 != v0[49])
  {
    sub_1BE53E980(v17);
    if (v19)
    {
      __break(1u);
    }

    else
    {
      sub_1BE53E7C4(v18);
      sub_1BE53E7A8();
      v20 = sub_1BE53E5AC();
      v15 = v21(v20);
      v11 = v22;
      v0[51] = v15;
      v0[52] = v22;
      sub_1BE53E7A8();
      v23 = *(v9 + 112);
      v24 = sub_1BE50A968();
      v25(v24, v9);
      sub_1BE4C58A8(v0 + 2);
      sub_1BE54B03C();
      v26 = sub_1BE53E800();
      v27(v26);
      v28 = v1[4];
      if (*(v28 + 16))
      {
        v29 = *(v28 + 40);
        sub_1BE54CD8C();

        sub_1BE53E848();
        sub_1BE54C77C();
        sub_1BE54CDAC();
        sub_1BE53E854();
        while (1)
        {
          sub_1BE53E830(v30);
          if ((v31 & 1) == 0)
          {
            break;
          }

          sub_1BE53E958();
          v33 = v33 && v32 == v8;
          if (!v33)
          {
            v34 = sub_1BE53E770();
            v30 = v1 + 1;
            if ((v34 & 1) == 0)
            {
              continue;
            }
          }

          goto LABEL_3;
        }
      }

      sub_1BE53E8D8();

      sub_1BE53E848();
      sub_1BE53007C(v49, v50, v51);
      v52 = v0[18];
      swift_endAccess();

      if (qword_1EDDD6570 == -1)
      {
        goto LABEL_18;
      }
    }

    sub_1BE53E598();
    swift_once();
LABEL_18:
    v53 = sub_1BE54B2EC();
    sub_1BE4C52BC(v53, qword_1EDDD7078);

    v54 = sub_1BE54B2BC();
    v55 = sub_1BE54C9AC();

    if (os_log_type_enabled(v54, v55))
    {
      v13 = sub_1BE50AB7C();
      sub_1BE53E6B8();
      v1 = swift_slowAlloc();
      v86 = v1;
      *v13 = 136446210;
      *(v13 + 4) = sub_1BE4C5338(v15, v11, &v86);
      sub_1BE53E9C4(&dword_1BE4B8000, v56, v57, "Subscribing to availability changes for LLM id: %{public}s");
      sub_1BE4C58A8(v1);
      sub_1BE53E5D4();
      MEMORY[0x1BFB48AC0]();
      sub_1BE53E5D4();
      MEMORY[0x1BFB48AC0]();
    }

    sub_1BE53E714();
    v85 = v58;
    (*(v59 + 104))(v55);
    sub_1BE4FFBD8();
    sub_1BE54B13C();
    sub_1BE54B1DC();
    (*(v2 + 8))(v11, v15);
    sub_1BE54B1CC();
    sub_1BE54B18C();
    (*(v13 + 8))(v1, v85);
LABEL_28:
    sub_1BE53E670();
    sub_1BE53E41C(v70, v71);
    v72 = *(MEMORY[0x1E69E85A8] + 4);
    v73 = swift_task_alloc();
    v0[53] = v73;
    *v73 = v0;
    v74 = sub_1BE53E63C();

    return MEMORY[0x1EEE6D8C8](v74);
  }

  v75 = v0[48];

  sub_1BE53E6EC();

  sub_1BE4E01E0();

  return v76();
}

uint64_t sub_1BE53AD88()
{
  sub_1BE4E01D4();
  *(v0 + 152) = *(v0 + 432);
  sub_1BE4BF11C(&qword_1EBDAC5C0, qword_1BE551A00);
  v1 = MEMORY[0x1E69E73E0];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEE6C240](v2, v1, v3);
}

uint64_t sub_1BE53AE10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[13] = a6;
  v7[14] = a7;
  v7[11] = a4;
  v7[12] = a5;
  v8 = sub_1BE54B12C();
  v7[15] = v8;
  v9 = *(v8 - 8);
  v7[16] = v9;
  v7[17] = *(v9 + 64);
  v7[18] = swift_task_alloc();
  v7[19] = swift_task_alloc();
  sub_1BE54C8CC();
  v7[20] = sub_1BE54C8BC();
  v11 = sub_1BE54C87C();

  return MEMORY[0x1EEE6DFA0](sub_1BE53AF1C, v11, v10);
}

uint64_t sub_1BE53AF1C()
{
  v56 = v0;
  v1 = v0[20];

  type metadata accessor for GenerativePartnerServiceUserDefaults();
  v54 = sub_1BE53F5FC();
  v3 = v2;
  if (qword_1EDDD6570 != -1)
  {
    sub_1BE53E598();
    swift_once();
  }

  v4 = v0[19];
  v6 = v0[15];
  v5 = v0[16];
  v8 = v0[12];
  v7 = v0[13];
  v9 = sub_1BE54B2EC();
  sub_1BE4C52BC(v9, qword_1EDDD7078);
  v53 = *(v5 + 16);
  v53(v4, v7, v6);

  v10 = sub_1BE54B2BC();
  v11 = sub_1BE54C9AC();

  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[19];
  v15 = v0[15];
  v14 = v0[16];
  if (v12)
  {
    v16 = v0[11];
    v17 = v0[12];
    v18 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    *v18 = 136446466;
    v19 = sub_1BE53E938();
    *(v18 + 4) = sub_1BE4C5338(v19, v20, v21);
    *(v18 + 12) = 2082;
    sub_1BE53E41C(&unk_1EDDD6510, MEMORY[0x1E69A11A8]);
    sub_1BE54CC9C();
    (*(v14 + 8))(v13, v15);
    v22 = sub_1BE53E938();
    v25 = sub_1BE4C5338(v22, v23, v24);

    *(v18 + 14) = v25;
    _os_log_impl(&dword_1BE4B8000, v10, v11, "Availability change detected for LLM id: %{public}s: %{public}s; reloading", v18, 0x16u);
    swift_arrayDestroy();
    sub_1BE53E5D4();
    MEMORY[0x1BFB48AC0]();
    sub_1BE53E5D4();
    MEMORY[0x1BFB48AC0]();
  }

  else
  {

    (*(v14 + 8))(v13, v15);
  }

  v26 = v0[14];
  sub_1BE50AA7C();
  if (swift_weakLoadStrong())
  {
    v27 = sub_1BE52C7AC();
    sub_1BE53B438(v27);
  }

  v28 = v0[14];
  sub_1BE50AA7C();
  if (swift_weakLoadStrong())
  {
    sub_1BE53974C(0);
  }

  v29 = sub_1BE53F5E0(v54, v3);

  if (v29)
  {
    v30 = v0[12];

    v31 = sub_1BE54B2BC();
    v32 = sub_1BE54C98C();

    if (os_log_type_enabled(v31, v32))
    {
      v34 = v0[11];
      v33 = v0[12];
      v35 = sub_1BE50AB7C();
      sub_1BE53E6B8();
      v36 = swift_slowAlloc();
      v55 = v36;
      *v35 = 136446210;
      *(v35 + 4) = sub_1BE4C5338(v34, v33, &v55);
      _os_log_impl(&dword_1BE4B8000, v31, v32, "Selected LLM id: %{public}s was disabled due to availability change", v35, 0xCu);
      sub_1BE4C58A8(v36);
      sub_1BE53E5D4();
      MEMORY[0x1BFB48AC0]();
      v37 = sub_1BE53E5C4();
      MEMORY[0x1BFB48AC0](v37);
    }
  }

  v38 = v0[14];
  sub_1BE50AA7C();
  if (swift_weakLoadStrong())
  {
    v40 = v0[17];
    v39 = v0[18];
    v41 = v0[15];
    v42 = v0[16];
    v44 = v0[12];
    v43 = v0[13];
    v45 = v0[11];
    v46 = sub_1BE539620();

    v53(v39, v43, v41);
    v47 = (*(v42 + 80) + 32) & ~*(v42 + 80);
    v48 = swift_allocObject();
    *(v48 + 16) = v45;
    *(v48 + 24) = v44;
    (*(v42 + 32))(v48 + v47, v39, v41);

    sub_1BE53F6AC();
  }

  v50 = v0[18];
  v49 = v0[19];

  sub_1BE4E01E0();

  return v51();
}

uint64_t sub_1BE53B438(void (*a1)(void))
{
  v2 = sub_1BE54986C();
  v3 = sub_1BE549D98(v2, 0);

  if (qword_1EDDD6570 != -1)
  {
    sub_1BE53E598();
    swift_once();
  }

  v4 = sub_1BE54B2EC();
  sub_1BE4C52BC(v4, qword_1EDDD7078);
  sub_1BE50A968();

  v5 = sub_1BE54B2BC();
  v6 = sub_1BE54C9AC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = sub_1BE50AB7C();
    *v7 = 134349056;
    *(v7 + 4) = *(v3 + 16);

    sub_1BE53E8FC(&dword_1BE4B8000, v8, v6, "updateLLMAvailability for: %{public}ld LLMs");
    sub_1BE53E5D4();
    MEMORY[0x1BFB48AC0]();
  }

  else
  {
  }

  v9 = *(v3 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = v3 + 32;
    type metadata accessor for GenerativePartnerServiceUserDefaults();
    v38 = a1;
    while (1)
    {
      sub_1BE4C6918(v11, v41);
      v12 = v42;
      v13 = v43;
      sub_1BE4C52F4(v41, v42);
      sub_1BE4C75D0(v13);
      v15 = v14(v12, v13);
      v17 = sub_1BE53F5E0(v15, v16) & 1;

      v18 = sub_1BE53B80C(v41);
      if (v17 == (v18 & 1))
      {
        if ((v10 & 1) == 0)
        {
          v10 = 0;
          if (!a1)
          {
            goto LABEL_18;
          }

LABEL_17:
          sub_1BE4C52F4(v41, v42);
          v34 = sub_1BE53E5AC();
          v36 = v35(v34);
          a1(v36);

          goto LABEL_18;
        }
      }

      else
      {
        sub_1BE4C6918(v41, v40);
        v19 = sub_1BE54B2BC();
        v20 = sub_1BE54C9AC();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          sub_1BE53E6B8();
          v39 = swift_slowAlloc();
          *v21 = 136446466;
          v22 = v40[4];
          sub_1BE4C52F4(v40, v40[3]);
          v23 = *(v22 + 8);
          v24 = sub_1BE50A968();
          v25(v24, v22);
          sub_1BE4C58A8(v40);
          v26 = sub_1BE4D9800();
          v29 = sub_1BE4C5338(v26, v27, v28);

          *(v21 + 4) = v29;
          *(v21 + 12) = 1026;
          *(v21 + 14) = v18 & 1;
          _os_log_impl(&dword_1BE4B8000, v19, v20, "LLM with id %{public}s unavailability status changed to: unavailable = %{BOOL,public}d", v21, 0x12u);
          sub_1BE4C58A8(v39);
          sub_1BE53E5D4();
          MEMORY[0x1BFB48AC0]();
          sub_1BE53E5D4();
          MEMORY[0x1BFB48AC0]();
        }

        else
        {

          sub_1BE4C58A8(v40);
        }

        a1 = v38;
        sub_1BE4C52F4(v41, v42);
        v30 = sub_1BE53E5AC();
        v32 = v31(v30);
        sub_1BE53F8D8(v18 & 1, v32, v33);
      }

      sub_1BE53974C(0);
      v10 = 1;
      if (a1)
      {
        goto LABEL_17;
      }

LABEL_18:
      sub_1BE4C58A8(v41);
      v11 += 40;
      if (!--v9)
      {
      }
    }
  }
}

uint64_t sub_1BE53B80C(void *a1)
{
  v139 = sub_1BE54B10C();
  v137 = *(v139 - 8);
  v2 = *(v137 + 64);
  v3 = MEMORY[0x1EEE9AC00](v139);
  v136 = &v135 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v138 = &v135 - v5;
  v146 = sub_1BE54B0DC();
  v140 = *(v146 - 8);
  v6 = *(v140 + 64);
  v7 = MEMORY[0x1EEE9AC00](v146);
  v141 = &v135 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v145 = &v135 - v9;
  v10 = sub_1BE54B1BC();
  v151 = *(v10 - 8);
  v152 = v10;
  v11 = *(v151 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v150 = &v135 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = sub_1BE54B05C();
  v13 = *(v155 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v155);
  v16 = &v135 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1BE54B14C();
  v148 = *(v17 - 8);
  v149 = v17;
  v18 = *(v148 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v135 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = sub_1BE54B1EC();
  v21 = *(v147 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v147);
  v24 = &v135 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = sub_1BE54B12C();
  v154 = *(v156 - 8);
  v25 = *(v154 + 64);
  v26 = MEMORY[0x1EEE9AC00](v156);
  v28 = &v135 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v135 - v29;
  v31 = a1[3];
  v32 = a1[4];
  v153 = a1;
  sub_1BE4C52F4(a1, v31);
  v33 = *(v32 + 112);
  v34 = v32;
  v35 = v30;
  v33(v31, v34);
  sub_1BE54B03C();
  v36 = *(v13 + 8);
  v143 = v16;
  v144 = v13 + 8;
  v142 = v36;
  v36(v16, v155);
  (*(v151 + 104))(v150, *MEMORY[0x1E69A12B8], v152);
  sub_1BE54B13C();
  sub_1BE54B1DC();
  (*(v148 + 8))(v20, v149);
  sub_1BE54B17C();
  v37 = v156;
  (*(v21 + 8))(v24, v147);
  v38 = v154;
  (*(v154 + 16))(v28, v30, v37);
  v39 = (*(v38 + 88))(v28, v37);
  if (v39 == *MEMORY[0x1E69A0EF8])
  {
    (*(v38 + 96))(v28, v156);
    v40 = v140;
    v41 = v145;
    v42 = v146;
    (*(v140 + 32))(v145, v28, v146);
    if (qword_1EDDD6570 != -1)
    {
      swift_once();
    }

    v43 = sub_1BE54B2EC();
    sub_1BE4C52BC(v43, qword_1EDDD7078);
    v44 = v153;
    sub_1BE4C6918(v153, v161);
    sub_1BE4C6918(v44, v158);
    v45 = v141;
    (*(v40 + 16))(v141, v41, v42);
    v46 = sub_1BE54B2BC();
    v47 = sub_1BE54C9AC();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v152 = v35;
      v49 = v48;
      v153 = swift_slowAlloc();
      v157 = v153;
      *v49 = 136446722;
      v50 = v40;
      v51 = v162;
      v52 = v163;
      sub_1BE4C52F4(v161, v162);
      v53 = (*(v52 + 8))(v51, v52);
      v55 = v54;
      sub_1BE4C58A8(v161);
      v56 = sub_1BE4C5338(v53, v55, &v157);

      *(v49 + 4) = v56;
      *(v49 + 12) = 2082;
      v57 = v159;
      v58 = v160;
      sub_1BE4C52F4(v158, v159);
      v59 = v45;
      v60 = v143;
      (*(v58 + 112))(v57, v58);
      v61 = sub_1BE54B03C();
      v63 = v62;
      v142(v60, v155);
      sub_1BE4C58A8(v158);
      v64 = sub_1BE4C5338(v61, v63, &v157);

      *(v49 + 14) = v64;
      *(v49 + 22) = 2082;
      sub_1BE53E41C(&qword_1EBDAD400, MEMORY[0x1E69A0FC8]);
      v65 = v146;
      v66 = sub_1BE54CC9C();
      v68 = v67;
      v69 = *(v50 + 8);
      v69(v59, v65);
      v70 = sub_1BE4C5338(v66, v68, &v157);

      *(v49 + 24) = v70;
      _os_log_impl(&dword_1BE4B8000, v46, v47, "updateLLMAvailability: LLM %{public}s use case %{public}s is restricted: %{public}s", v49, 0x20u);
      v71 = v153;
      swift_arrayDestroy();
      MEMORY[0x1BFB48AC0](v71, -1, -1);
      MEMORY[0x1BFB48AC0](v49, -1, -1);

      v69(v145, v65);
      (*(v38 + 8))(v152, v156);
      return 1;
    }

    v85 = *(v40 + 8);
    v85(v45, v42);
    v85(v41, v42);
    (*(v38 + 8))(v35, v156);
LABEL_10:
    sub_1BE4C58A8(v158);
    sub_1BE4C58A8(v161);
    return 1;
  }

  if (v39 == *MEMORY[0x1E69A0F00])
  {
    (*(v38 + 96))(v28, v156);
    v72 = v137;
    v73 = v138;
    v74 = v28;
    v75 = v139;
    (*(v137 + 32))(v138, v74, v139);
    v76 = sub_1BE54B0FC();
    sub_1BE4BF11C(&qword_1EBDACD90, &qword_1BE5516E0);
    v77 = sub_1BE54B0EC();
    v78 = *(v77 - 8);
    v79 = *(v78 + 72);
    v80 = (*(v78 + 80) + 32) & ~*(v78 + 80);
    v81 = swift_allocObject();
    *(v81 + 16) = xmmword_1BE54E1A0;
    (*(v78 + 104))(v81 + v80, *MEMORY[0x1E69A10B8], v77);
    sub_1BE5322D8(v81, v76);
    v83 = v82;
    swift_setDeallocating();
    sub_1BE52B6AC();
    sub_1BE539004(v83, MEMORY[0x1E69E7CD0]);
    LOBYTE(v81) = v84;

    if ((v81 & 1) == 0)
    {
      v152 = v35;
      if (qword_1EDDD6570 != -1)
      {
        swift_once();
      }

      v106 = sub_1BE54B2EC();
      sub_1BE4C52BC(v106, qword_1EDDD7078);
      v107 = v153;
      sub_1BE4C6918(v153, v161);
      sub_1BE4C6918(v107, v158);
      v108 = v136;
      (*(v72 + 16))(v136, v73, v75);
      v109 = v73;
      v110 = sub_1BE54B2BC();
      v111 = sub_1BE54C9AC();
      if (os_log_type_enabled(v110, v111))
      {
        v112 = swift_slowAlloc();
        v113 = swift_slowAlloc();
        v157 = v113;
        *v112 = 136446722;
        v114 = v162;
        v115 = v163;
        sub_1BE4C52F4(v161, v162);
        v116 = (*(v115 + 8))(v114, v115);
        v118 = v117;
        sub_1BE4C58A8(v161);
        v119 = sub_1BE4C5338(v116, v118, &v157);

        *(v112 + 4) = v119;
        *(v112 + 12) = 2082;
        v120 = v159;
        v121 = v160;
        sub_1BE4C52F4(v158, v159);
        v122 = v72;
        v123 = v143;
        (*(v121 + 112))(v120, v121);
        v124 = sub_1BE54B03C();
        v126 = v125;
        v142(v123, v155);
        sub_1BE4C58A8(v158);
        v127 = sub_1BE4C5338(v124, v126, &v157);

        *(v112 + 14) = v127;
        *(v112 + 22) = 2082;
        sub_1BE53E41C(&qword_1EBDAD3F8, MEMORY[0x1E69A1188]);
        v128 = v139;
        v129 = sub_1BE54CC9C();
        v131 = v130;
        v132 = *(v122 + 8);
        v132(v108, v128);
        v133 = sub_1BE4C5338(v129, v131, &v157);

        *(v112 + 24) = v133;
        _os_log_impl(&dword_1BE4B8000, v110, v111, "updateLLMAvailability: LLM %{public}s use case %{public}s is unavailable: %{public}s", v112, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1BFB48AC0](v113, -1, -1);
        MEMORY[0x1BFB48AC0](v112, -1, -1);

        v132(v138, v128);
        (*(v154 + 8))(v152, v156);
        return 1;
      }

      v134 = *(v72 + 8);
      v134(v108, v75);
      v134(v109, v75);
      (*(v38 + 8))(v152, v156);
      goto LABEL_10;
    }

    (*(v72 + 8))(v73, v75);
  }

  else
  {
    (*(v38 + 8))(v28, v156);
  }

  if (qword_1EDDD6570 != -1)
  {
    swift_once();
  }

  v87 = sub_1BE54B2EC();
  sub_1BE4C52BC(v87, qword_1EDDD7078);
  v88 = v153;
  sub_1BE4C6918(v153, v161);
  sub_1BE4C6918(v88, v158);
  v89 = sub_1BE54B2BC();
  v90 = sub_1BE54C9AC();
  if (os_log_type_enabled(v89, v90))
  {
    v91 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    v157 = v92;
    *v91 = 136446466;
    v93 = v162;
    v94 = v163;
    sub_1BE4C52F4(v161, v162);
    v95 = (*(v94 + 8))(v93, v94);
    v97 = v96;
    sub_1BE4C58A8(v161);
    v98 = sub_1BE4C5338(v95, v97, &v157);

    *(v91 + 4) = v98;
    *(v91 + 12) = 2082;
    v99 = v159;
    v100 = v160;
    sub_1BE4C52F4(v158, v159);
    v101 = v143;
    (*(v100 + 112))(v99, v100);
    v102 = sub_1BE54B03C();
    v104 = v103;
    v142(v101, v155);
    sub_1BE4C58A8(v158);
    v105 = sub_1BE4C5338(v102, v104, &v157);

    *(v91 + 14) = v105;
    _os_log_impl(&dword_1BE4B8000, v89, v90, "updateLLMAvailability: LLM %{public}s use case %{public}s is available", v91, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFB48AC0](v92, -1, -1);
    MEMORY[0x1BFB48AC0](v91, -1, -1);

    (*(v38 + 8))(v35, v156);
  }

  else
  {

    (*(v38 + 8))(v35, v156);
    sub_1BE4C58A8(v161);
    sub_1BE4C58A8(v158);
  }

  return 0;
}

void *sub_1BE53C898()
{
  type metadata accessor for GenerativePartnerServiceProvider();
  v0 = swift_allocObject();
  result = GenerativePartnerServiceProvider.init()();
  off_1EDDD6898 = v0;
  return result;
}

uint64_t static GenerativePartnerServiceProvider.shared.getter()
{
  if (qword_1EDDD6890 != -1)
  {
    swift_once();
  }
}

void sub_1BE53C930(uint64_t a1@<X8>)
{
  sub_1BE50AA7C();
  v3 = *(v1 + 16);
  v4 = *(v3 + 16);
  v5 = v3 + 32;

  for (i = 0; ; ++i)
  {
    if (v4 == i)
    {

      sub_1BE53E7F0();
      return;
    }

    if (i >= *(v3 + 16))
    {
      break;
    }

    sub_1BE4C6918(v5, &v16);
    v7 = v17;
    v8 = v18;
    sub_1BE4C52F4(&v16, v17);
    sub_1BE4C75D0(v8);
    v10 = v9(v7, v8);
    v12 = v11;
    if (v10 == sub_1BE54B01C() && v12 == v13)
    {

LABEL_12:

      sub_1BE4BF094(&v16, a1);
      return;
    }

    v15 = sub_1BE54CCDC();

    if (v15)
    {
      goto LABEL_12;
    }

    sub_1BE4C58A8(&v16);
    v5 += 40;
  }

  __break(1u);
}

void sub_1BE53CA80(uint64_t a1@<X8>)
{
  type metadata accessor for GenerativePartnerServiceUserDefaults();
  v4 = sub_1BE53F5FC();
  v5 = v3;
  if (!v4 && v3 == 0xE000000000000000 || (sub_1BE533A68(), (sub_1BE54CCDC() & 1) != 0))
  {
    sub_1BE53E7F0();
    sub_1BE53E9A8();

    return;
  }

  v7 = sub_1BE533A68();
  if ((sub_1BE53F5E0(v7, v8) & 1) == 0)
  {
    sub_1BE50AA7C();
    v19 = *(v1 + 16);
    v20 = *(v19 + 16);
    v21 = v19 + 32;

    for (i = 0; ; ++i)
    {
      if (v20 == i)
      {

        goto LABEL_23;
      }

      if (i >= *(v19 + 16))
      {
        break;
      }

      sub_1BE4C6918(v21, &v29);
      v23 = v30;
      v24 = v31;
      sub_1BE4C52F4(&v29, v30);
      sub_1BE4C75D0(v24);
      if (v25(v23, v24) == v4 && v26 == v5)
      {

LABEL_26:

        sub_1BE4BF094(&v29, a1);
        goto LABEL_27;
      }

      v28 = sub_1BE54CCDC();

      if (v28)
      {

        goto LABEL_26;
      }

      sub_1BE4C58A8(&v29);
      v21 += 40;
    }

    __break(1u);
    goto LABEL_29;
  }

  if (qword_1EDDD6570 != -1)
  {
LABEL_29:
    sub_1BE53E598();
    swift_once();
  }

  v9 = sub_1BE54B2EC();
  sub_1BE4C52BC(v9, qword_1EDDD7078);

  v10 = sub_1BE54B2BC();
  v11 = sub_1BE54C98C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = sub_1BE50AB7C();
    sub_1BE53E6B8();
    v13 = swift_slowAlloc();
    *&v29 = v13;
    *v12 = 136446210;
    v14 = sub_1BE533A68();
    v17 = sub_1BE4C5338(v14, v15, v16);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_1BE4B8000, v10, v11, "LLM with id %{public}s is currently selected, but unavailable", v12, 0xCu);
    sub_1BE4C58A8(v13);
    sub_1BE53E5D4();
    MEMORY[0x1BFB48AC0]();
    v18 = sub_1BE53E5C4();
    MEMORY[0x1BFB48AC0](v18);
  }

  else
  {
  }

LABEL_23:
  sub_1BE53E7F0();
LABEL_27:
  sub_1BE53E9A8();
}

void sub_1BE53CD40()
{
  sub_1BE525E18();
  sub_1BE50AA7C();
  v3 = *(v1 + 16);
  v4 = *(v3 + 16);
  v5 = v3 + 32;

  v6 = -1;
  while (v6 - v4 != -1)
  {
    if (++v6 >= *(v3 + 16))
    {
      __break(1u);
      goto LABEL_25;
    }

    sub_1BE4C6918(v5, v30);
    v7 = v31;
    v8 = v32;
    sub_1BE4C52F4(v30, v31);
    sub_1BE4C75D0(v8);
    if (v9(v7, v8) == v2 && v10 == v0)
    {

      sub_1BE4C58A8(v30);
LABEL_15:

      type metadata accessor for GenerativePartnerServiceUserDefaults();
      if (sub_1BE53F5FC() == v2 && v23 == v0)
      {
      }

      else
      {
        v25 = sub_1BE53E770();

        if ((v25 & 1) == 0)
        {
          v26 = sub_1BE4FFBD8();
          sub_1BE53F930(v26, v27);
        }
      }

      v28 = sub_1BE4FFBD8();
      sub_1BE53F998(v28, v29, 0);
      goto LABEL_23;
    }

    v5 += 40;
    v12 = sub_1BE53E770();

    sub_1BE4C58A8(v30);
    if (v12)
    {
      goto LABEL_15;
    }
  }

  if (qword_1EDDD6570 == -1)
  {
    goto LABEL_11;
  }

LABEL_25:
  sub_1BE53E598();
  swift_once();
LABEL_11:
  v13 = sub_1BE54B2EC();
  sub_1BE4C52BC(v13, qword_1EDDD7078);
  sub_1BE50A968();

  v14 = sub_1BE54B2BC();
  v15 = sub_1BE54C98C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = sub_1BE50AB7C();
    sub_1BE53E6B8();
    v17 = swift_slowAlloc();
    v30[0] = v17;
    *v16 = 136446210;
    v18 = sub_1BE4FFBD8();
    *(v16 + 4) = sub_1BE4C5338(v18, v19, v20);
    sub_1BE53E8FC(&dword_1BE4B8000, v21, v15, "Unable to select new llm with id: %{public}s");
    sub_1BE4C58A8(v17);
    v22 = sub_1BE53E5C4();
    MEMORY[0x1BFB48AC0](v22);
    sub_1BE53E5D4();
    MEMORY[0x1BFB48AC0]();
  }

LABEL_23:
  sub_1BE53E9A8();
}

uint64_t sub_1BE53CF84()
{
  type metadata accessor for GenerativePartnerServiceUserDefaults();
  v0 = sub_1BE52C7AC();
  return sub_1BE53F998(v0, 0xE000000000000000, 0);
}

void (*sub_1BE53D020(uint64_t a1))(uint64_t *a1)
{
  *a1 = type metadata accessor for GenerativePartnerServiceUserDefaults();
  *(a1 + 8) = sub_1BE53FB20() & 1;
  return sub_1BE53D078;
}

uint64_t sub_1BE53D0D0()
{
  v0 = sub_1BE54AD8C();
  sub_1BE51286C(v0, qword_1EDDD7048);
  v1 = sub_1BE4D9800();
  v3 = sub_1BE4C52BC(v1, v2);
  *v3 = type metadata accessor for GenerativePartnerServiceProvider();
  v4 = *MEMORY[0x1E6968E00];
  sub_1BE50A884(v0);
  v6 = *(v5 + 104);

  return v6(v3);
}

uint64_t sub_1BE53D160@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v92 = a1;
  v93 = a2;
  v82 = a3;
  v3 = sub_1BE54B07C();
  v4 = sub_1BE4C7570(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1BE4C757C();
  v90 = v8 - v7;
  v9 = sub_1BE4BF11C(&qword_1EBDAD390, &qword_1BE551940);
  v10 = sub_1BE4C7570(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1BE4D981C();
  v83 = v13 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v84 = &v81 - v16;
  v17 = sub_1BE4BF11C(&qword_1EBDAD3E8, &qword_1BE551B80);
  v18 = sub_1BE4C7570(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v81 - v21;
  v23 = sub_1BE54AF4C();
  v24 = sub_1BE4C7500(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v24);
  sub_1BE4C757C();
  v29 = sub_1BE54AF6C();
  v30 = sub_1BE4C7500(v29);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v30);
  sub_1BE4D981C();
  v87 = v35 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v81 - v38;
  v40 = sub_1BE54AF1C();
  v41 = sub_1BE4C7500(v40);
  v89 = v42;
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v41);
  sub_1BE4C757C();
  v47 = v46 - v45;
  sub_1BE54AF2C();
  sub_1BE54AF5C();
  v48 = *(v32 + 8);
  v88 = v29;
  v85 = v48;
  v86 = v32 + 8;
  v48(v39, v29);
  sub_1BE54AF3C();
  v49 = *(v26 + 8);
  v50 = sub_1BE53E938();
  v51(v50);
  if (sub_1BE4C63BC(v22, 1, v40) == 1)
  {
    sub_1BE511848(v22, &qword_1EBDAD3E8, &qword_1BE551B80);
    sub_1BE53E030();
    v52 = swift_allocError();
    *v53 = 1;
    swift_willThrow();
    v54 = v93;
  }

  else
  {
    v55 = v89;
    (*(v89 + 32))(v47, v22, v40);
    sub_1BE4BF11C(&qword_1EBDAD160, &qword_1BE551250);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BE54E1A0;
    *(inited + 32) = 0x65676175676E616CLL;
    *(inited + 40) = 0xE800000000000000;
    v57 = v93;

    *(inited + 48) = sub_1BE54AF0C();
    *(inited + 56) = v58;
    sub_1BE54C61C();
    v59 = v91;
    sub_1BE54B06C();
    v52 = v59;
    v54 = v57;
    if (v59)
    {
      (*(v55 + 8))(v47, v40);
    }

    else
    {
      v60 = v40;
      v61 = v84;
      sub_1BE54B09C();
      v62 = v83;
      sub_1BE53E294(v61, v83, &qword_1EBDAD390, &qword_1BE551940);
      v63 = sub_1BE54B0AC();
      if (sub_1BE4C63BC(v62, 1, v63) != 1)
      {
        sub_1BE511848(v61, &qword_1EBDAD390, &qword_1BE551940);
        (*(v55 + 8))(v47, v60);
        sub_1BE50A884(v63);
        return (*(v80 + 32))(v82, v62, v63);
      }

      sub_1BE511848(v62, &qword_1EBDAD390, &qword_1BE551940);
      sub_1BE53E030();
      v52 = swift_allocError();
      *v64 = 0;
      swift_willThrow();
      sub_1BE511848(v61, &qword_1EBDAD390, &qword_1BE551940);
      (*(v55 + 8))(v47, v60);
      v54 = v57;
    }
  }

  if (qword_1EDDD6570 != -1)
  {
    sub_1BE53E598();
    swift_once();
  }

  v65 = sub_1BE54B2EC();
  sub_1BE4C52BC(v65, qword_1EDDD7078);
  sub_1BE50A968();

  v66 = v52;
  v67 = sub_1BE54B2BC();
  v68 = sub_1BE54C98C();

  if (os_log_type_enabled(v67, v68))
  {
    sub_1BE53E6B8();
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    *v69 = 136446722;
    *(v69 + 4) = sub_1BE4C5338(v92, v54, &v94);
    *(v69 + 12) = 2082;
    v71 = v87;
    sub_1BE54AF2C();
    v72 = sub_1BE54AEFC();
    v74 = v73;
    v85(v71, v88);
    v75 = sub_1BE4C5338(v72, v74, &v94);

    *(v69 + 14) = v75;
    *(v69 + 22) = 2114;
    v76 = v52;
    v77 = _swift_stdlib_bridgeErrorToNSError();
    *(v69 + 24) = v77;
    *v70 = v77;
    _os_log_impl(&dword_1BE4B8000, v67, v68, "Unable to construct resourceBundleQuery for ModelBundle(%{public}s: locale: %{public}s. Error: %{public}@", v69, 0x20u);
    sub_1BE511848(v70, &qword_1EBDAC2F0, &qword_1BE54F880);
    v78 = sub_1BE53E5C4();
    MEMORY[0x1BFB48AC0](v78);
    swift_arrayDestroy();
    sub_1BE53E5D4();
    MEMORY[0x1BFB48AC0]();
    sub_1BE53E5D4();
    MEMORY[0x1BFB48AC0]();
  }

  return swift_willThrow();
}

void sub_1BE53D884()
{
  sub_1BE525E18();
  ObjectType = swift_getObjectType();

  sub_1BE53DCCC(v2, v1, ObjectType, v0);
}

void sub_1BE53D8D0()
{
  v1 = v0;
  v2 = sub_1BE539620();
  v3 = sub_1BE5412A4();

  v4 = *(v3 + 16);

  if (v4)
  {
    v5 = *(v1 + 24);
    sub_1BE533A68();
    sub_1BE53FE28();

    v6 = *(v1 + 24);
    v7 = *(sub_1BE5412A4() + 16);

    if (!v7)
    {
      v8 = *(v1 + 24);
      sub_1BE53FEC0();
    }
  }
}

void sub_1BE53D9A0()
{
  v1 = v0;
  v2 = sub_1BE539620();
  v3 = sub_1BE5412A4();

  v4 = *(v3 + 16);

  if (v4)
  {
    v5 = *(v1 + 24);
    sub_1BE53FF78();

    v6 = *(v1 + 24);
    sub_1BE53FEC0();
  }
}

uint64_t sub_1BE53DA44()
{
  type metadata accessor for GenerativePartnerServiceUserDefaults();
  if (sub_1BE53F5FC() || v0 != 0xE000000000000000)
  {
    sub_1BE4FFBD8();
    if ((sub_1BE54CCDC() & 1) == 0)
    {
      v1 = sub_1BE4FFBD8();
      if (!sub_1BE53FFBC(v1, v2))
      {
        v3 = sub_1BE4FFBD8();
        if ((sub_1BE53F5E0(v3, v4) & 1) == 0)
        {
          sub_1BE53E848();
          sub_1BE53FFC0(v5, v6, v7);
        }
      }
    }
  }
}

uint64_t GenerativePartnerServiceProvider.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t GenerativePartnerServiceProvider.__deallocating_deinit()
{
  GenerativePartnerServiceProvider.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t sub_1BE53DB44(uint64_t a1, int *a2)
{
  v8 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  v5 = sub_1BE4E4408(v4);
  *v5 = v6;
  v5[1] = sub_1BE4E3C38;

  return v8(a1);
}

uint64_t sub_1BE53DC34(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_1BE50B648(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_1BE4BF094(&v12, v10 + 40 * a1 + 32);
}

void sub_1BE53DCCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1BE539620();
  sub_1BE53FD60();

  v9 = *(a2 + 24);
  sub_1BE542E44(a1, v9, a3, a4);
}

unint64_t sub_1BE53E030()
{
  result = qword_1EBDAD3F0;
  if (!qword_1EBDAD3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAD3F0);
  }

  return result;
}

uint64_t sub_1BE53E084(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v7 = *(v1 + 40);
  v6 = *(v1 + 48);
  v8 = swift_task_alloc();
  v9 = sub_1BE4E4408(v8);
  *v9 = v10;
  v9[1] = sub_1BE4DF8E8;

  return sub_1BE539D5C(a1, v3, v4, v5, v7, v6);
}

uint64_t sub_1BE53E144(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1BE54B12C() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = v1[5];
  v12 = *(v1 + v7);
  v13 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1BE4E43A8;

  return sub_1BE53AE10(a1, v8, v9, v10, v11, v1 + v6, v12);
}

uint64_t sub_1BE53E294(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_1BE4BF11C(a3, a4);
  sub_1BE50A884(v5);
  v7 = *(v6 + 16);
  v8 = sub_1BE4D9800();
  v9(v8);
  return a2;
}

uint64_t sub_1BE53E2F4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = swift_task_alloc();
  v6 = sub_1BE4E4408(v5);
  *v6 = v7;
  v6[1] = sub_1BE4DF8E8;

  return sub_1BE53DB44(a1, v4);
}

uint64_t sub_1BE53E3A4()
{
  sub_1BE525E18();
  v1 = sub_1BE54B12C();
  sub_1BE4C7570(v1);
  v3 = *(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = sub_1BE4FFBD8();

  return sub_1BE53B3C8(v6, v7, v8, v9, v10);
}

uint64_t sub_1BE53E41C(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for GenerativePartnerServiceProvider.ModelBundleError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1BE53E544()
{
  result = qword_1EBDAD408;
  if (!qword_1EBDAD408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAD408);
  }

  return result;
}

void sub_1BE53E5E0()
{
  v5 = *(v1 + 56);
  *(v4 - 168) = v1 + 56;
  v6 = 1 << *(v1 + 32);
  *(v4 - 120) = v2 + 32;
  *(v4 - 104) = v0 + 56;
  *(v4 - 96) = v2 + 16;
  *(v4 - 160) = (v6 + 63) >> 6;
  *(v4 - 152) = v3;
  *(v4 - 144) = v2;
  *(v4 - 136) = v1;
}

uint64_t sub_1BE53E63C(uint64_t a1)
{
  *(a1 + 8) = sub_1BE53A51C;
  v2 = v1[35];
  v3 = v1[33];
  return v1[29];
}

uint64_t sub_1BE53E6C4()
{
  v4 = *(v0 + 48);
  *(v3 - 112) = *(v1 + 72);
  v5 = *(v1 + 16);
  result = v2;
  v7 = *(v3 - 96);
  return result;
}

uint64_t sub_1BE53E6EC()
{
  result = v0[47];
  v2 = v0[44];
  v3 = v0[41];
  v4 = v0[38];
  v5 = v0[35];
  v6 = v0[32];
  v8 = v0[28];
  v7 = v0[29];
  v9 = v0[27];
  v10 = v0[22];
  v11 = v0[23];
  return result;
}

void sub_1BE53E714()
{
  v1 = *(v0 + 440);
  v2 = *(v0 + 352);
  v4 = *(v0 + 320);
  v3 = *(v0 + 328);
  v6 = *(v0 + 304);
  v5 = *(v0 + 312);
  v7 = *(v0 + 288);
  v8 = *(v0 + 296);
  v9 = *(v0 + 280);
  v10 = *(v0 + 248);
  v11 = *(v0 + 256);
  v12 = *(v0 + 240);
}

uint64_t sub_1BE53E738()
{
  v4 = *(v1 + 48) + v0 * *(v3 - 112);
  result = v2;
  v6 = *(v3 - 96);
  return result;
}

uint64_t sub_1BE53E770()
{

  return sub_1BE54CCDC();
}

uint64_t sub_1BE53E78C()
{
  v2 = *(v0 + 32);
  result = *(v1 - 88);
  v4 = *(v1 - 120);
  return result;
}

void *sub_1BE53E7A8()
{
  v2 = v0[6];
  v3 = v0[5];

  return sub_1BE4C52F4(v0 + 2, v3);
}

uint64_t sub_1BE53E7C4@<X0>(uint64_t a1@<X8>)
{
  v5 = v2[46];
  v4 = v2[47];
  v6 = v2[45];
  v7 = v2[20];

  return sub_1BE4C6918(v1 + 40 * a1 + 32, (v2 + 2));
}

double sub_1BE53E7F0()
{
  *(v0 + 32) = 0;
  result = 0.0;
  *v0 = 0u;
  *(v0 + 16) = 0u;
  return result;
}

void sub_1BE53E89C()
{
  v2 = *(v0 - 144);
  v1 = *(v0 - 136);
  v3 = *(v0 - 160);
  v4 = *(v0 - 152);
  v5 = *(v0 - 128);
}

uint64_t sub_1BE53E8B4()
{
  v2 = *(v0 - 88);

  return sub_1BE54C64C();
}

uint64_t sub_1BE53E8D8()
{
  v2 = *(v0 + 160);

  return swift_beginAccess();
}

void sub_1BE53E8FC(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t sub_1BE53E958()
{
  v2 = (*(v0 + 48) + 16 * v1);
  result = *v2;
  v4 = v2[1];
  return result;
}

void sub_1BE53E9C4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_1BE53E9E4()
{

  return sub_1BE54C62C();
}

uint64_t sub_1BE53EA04()
{
  if (qword_1EDDD68A0 != -1)
  {
    sub_1BE543164();
  }

  if (!qword_1EDDD7090)
  {
    return 1;
  }

  v0 = qword_1EDDD7090;
  v1 = sub_1BE54C6DC();
  v2 = [v0 BOOLForKey_];

  return v2;
}

uint64_t sub_1BE53EAA8()
{
  if (qword_1EDDD68A0 != -1)
  {
    sub_1BE543164();
  }

  if (qword_1EDDD7090)
  {
    v0 = qword_1EDDD7090;
    v1 = sub_1BE54C6DC();
    v2 = sub_1BE543228();
    v4 = [v2 v3];
  }

  else
  {
    v4 = 0;
  }

  type metadata accessor for LegacyGATUserDefaults();
  v5 = sub_1BE5376F4(2);
  v6 = v5 & 1;
  if (v4 != v6 && qword_1EDDD7090)
  {
    v7 = v5;
    v8 = qword_1EDDD7090;
    v9 = sub_1BE54337C();
    [v4 setBool:v7 & 1 forKey:v9];
  }

  return v6;
}

void sub_1BE53EBAC(char a1, char a2)
{
  if (qword_1EDDD68A0 != -1)
  {
    sub_1BE543164();
  }

  if (qword_1EDDD7090)
  {
    v5 = qword_1EDDD7090;
    v6 = sub_1BE54337C();
    [v2 setBool:a1 & 1 forKey:v6];
  }

  if ((a2 & 1) == 0)
  {
    type metadata accessor for LegacyGATUserDefaults();
    sub_1BE537594(a1 & 1, 2);
    if (a1)
    {
      sub_1BE537594(1, 5);
    }
  }
}

void sub_1BE53EC68(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = qword_1EBDAD410;
  v7 = off_1EBDAD418;

  LOBYTE(v6) = sub_1BE540798(v6, v7);

  oslog = a1;
  v8 = sub_1BE540798(a1, a2);
  v9 = v8;
  if (v6)
  {
    if (v8)
    {
      goto LABEL_25;
    }

    v10 = 1;
  }

  else
  {
    sub_1BE543284();
    if (!v11)
    {
      sub_1BE533A24();
    }

    v12 = sub_1BE54B2EC();
    sub_1BE52C7B8(v12, qword_1EDDD7030);
    v13 = sub_1BE54B2BC();
    v14 = sub_1BE54C98C();
    v81 = v3;
    if (os_log_type_enabled(v13, v14))
    {
      v15 = sub_1BE50AB7C();
      v16 = sub_1BE50AAC4();
      *&v86 = v16;
      *v15 = 136446210;
      v18 = qword_1EBDAD410;
      v17 = off_1EBDAD418;

      v19 = sub_1BE4C5338(v18, v17, &v86);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_1BE4B8000, v13, v14, "Missing target shared prefs read-write entitlement for %{public}s. Performing manual read/write check...", v15, 0xCu);
      sub_1BE4C58A8(v16);
      sub_1BE4C75DC();
      sub_1BE4C75DC();
    }

    sub_1BE54085C();
    v21 = v20;
    v22 = sub_1BE54B2BC();
    v23 = sub_1BE54C9AC();
    if (sub_1BE5432D8(v23))
    {
      v24 = swift_slowAlloc();
      v25 = v9;
      v26 = sub_1BE50AAC4();
      *&v86 = v26;
      *v24 = 136446466;
      v27 = qword_1EBDAD410;
      v28 = off_1EBDAD418;

      v29 = sub_1BE4C5338(v27, v28, &v86);

      *(v24 + 4) = v29;
      *(v24 + 12) = 1026;
      v10 = v21;
      *(v24 + 14) = v21 & 1;
      _os_log_impl(&dword_1BE4B8000, v22, v23, "read/write shared prefs access for %{public}s confirmed: %{BOOL,public}d", v24, 0x12u);
      sub_1BE4C58A8(v26);
      v9 = v25;
      sub_1BE4C75DC();
      sub_1BE4C75DC();
    }

    else
    {
      v10 = v21;
    }

    LOBYTE(v3) = v81;
    if (v9)
    {
      if (v10)
      {
        goto LABEL_25;
      }

LABEL_13:
      sub_1BE543284();
      if (!v11)
      {
        sub_1BE533A24();
      }

      v30 = sub_1BE54B2EC();
      sub_1BE52C7B8(v30, qword_1EDDD7030);
      osloga = sub_1BE54B2BC();
      v31 = sub_1BE54C98C();
      if (os_log_type_enabled(osloga, v31))
      {
        v32 = sub_1BE5433D4();
        *v32 = 0;
        _os_log_impl(&dword_1BE4B8000, osloga, v31, "Full read/write access is not confirmed; please file a radar for this process", v32, 2u);
        sub_1BE4C75DC();
      }

      v33 = osloga;
      goto LABEL_33;
    }
  }

  sub_1BE543284();
  if (!v11)
  {
    sub_1BE533A24();
  }

  v34 = sub_1BE54B2EC();
  sub_1BE52C7B8(v34, qword_1EDDD7030);

  v35 = sub_1BE54B2BC();
  sub_1BE54C98C();
  sub_1BE5433BC();
  if (os_log_type_enabled(v35, v3))
  {
    v36 = sub_1BE50AB7C();
    v37 = sub_1BE50AAC4();
    *&v86 = v37;
    *v36 = 136446210;
    v38 = sub_1BE533A68();
    *(v36 + 4) = sub_1BE4C5338(v38, v39, v40);
    _os_log_impl(&dword_1BE4B8000, v35, v3, "Missing legacy shared prefs entitlement for %{public}s. Performing manual read/write check...", v36, 0xCu);
    sub_1BE4C58A8(v37);
    sub_1BE4C75DC();
    sub_1BE4C75DC();
  }

  sub_1BE533A68();
  sub_1BE540D24();
  v42 = v41;

  v43 = sub_1BE54B2BC();
  sub_1BE54C9AC();
  sub_1BE5433BC();
  if (os_log_type_enabled(v43, v3))
  {
    v44 = swift_slowAlloc();
    v45 = sub_1BE50AAC4();
    *&v86 = v45;
    *v44 = 136446466;
    v46 = sub_1BE533A68();
    *(v44 + 4) = sub_1BE4C5338(v46, v47, v48);
    *(v44 + 12) = 1026;
    *(v44 + 14) = v42 & 1;
    _os_log_impl(&dword_1BE4B8000, v43, v3, "read/write shared prefs access for %{public}s confirmed: %{BOOL,public}d", v44, 0x12u);
    sub_1BE4C58A8(v45);
    sub_1BE4C75DC();
    sub_1BE4C75DC();
  }

  if ((v10 & v42 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_25:
  if (qword_1EDDD68A0 != -1)
  {
    sub_1BE543164();
  }

  if (qword_1EDDD7090)
  {
    v82 = qword_1EDDD7090;
    v49 = sub_1BE54C6DC();
    v50 = [v82 BOOLForKey:v49];

    if (v50)
    {
      goto LABEL_32;
    }

    v51 = sub_1BE54C6DC();
    sub_1BE54329C();
    [v52 v53];

    v54 = sub_1BE53F5FC();
    v56 = v55;

    v57 = HIBYTE(v56) & 0xF;
    if ((v56 & 0x2000000000000000) == 0)
    {
      v57 = v54 & 0xFFFFFFFFFFFFLL;
    }

    if (v57)
    {
      goto LABEL_32;
    }

    v58 = [objc_opt_self() standardUserDefaults];
    v59 = sub_1BE54C6DC();
    v60 = [v58 persistentDomainForName_];

    if (v60)
    {
      v61 = sub_1BE54C5FC();

      sub_1BE543308();
      sub_1BE50B814(v61, &v86);
      if (v87)
      {
        if (sub_1BE543234() && (v85 & 0x100000000000000) != 0)
        {
          sub_1BE543284();
          if (!v11)
          {
            sub_1BE533A24();
          }

          v62 = sub_1BE54B2EC();
          sub_1BE52C7B8(v62, qword_1EDDD7030);

          v63 = sub_1BE54B2BC();
          v64 = sub_1BE54C9AC();

          if (os_log_type_enabled(v63, v64))
          {
            v65 = sub_1BE50AAC4();
            *&v86 = swift_slowAlloc();
            *v65 = 136446722;
            v66 = sub_1BE54CE0C();
            v68 = sub_1BE4C5338(v66, v67, &v86);

            *(v65 + 4) = v68;
            *(v65 + 12) = 2082;
            *(v65 + 14) = sub_1BE54339C("migrateLegacyUserDefaults(from:)", v81, v82, oslog, v85);
            *(v65 + 22) = 2082;
            v69 = sub_1BE54C60C();
            v71 = sub_1BE4C5338(v69, v70, &v86);

            *(v65 + 24) = v71;
            _os_log_impl(&dword_1BE4B8000, v63, v64, "%{public}s.%{public}s: first run - migrating legacy GenerativeAssistantSettings: %{public}s", v65, 0x20u);
            swift_arrayDestroy();
            sub_1BE4C75DC();
            sub_1BE4C75DC();
          }

          v72 = sub_1BE54B01C();
          sub_1BE53F998(v72, v73, 1);
        }
      }

      else
      {
        sub_1BE537874(&v86);
      }

      sub_1BE5431C4();
      sub_1BE50B814(v61, &v86);
      if (v87)
      {
        if (sub_1BE543234())
        {
          sub_1BE53FA78(SHIBYTE(v85), 1);
        }
      }

      else
      {
        sub_1BE537874(&v86);
      }

      sub_1BE50B814(v61, &v86);

      if (!v87)
      {

        sub_1BE537874(&v86);
        return;
      }

      if (sub_1BE543234())
      {
        sub_1BE53EBAC(SHIBYTE(v85), 1);
      }
    }

    else
    {
      sub_1BE543284();
      if (!v11)
      {
        sub_1BE533A24();
      }

      v74 = sub_1BE54B2EC();
      sub_1BE52C7B8(v74, qword_1EDDD7030);
      v75 = sub_1BE54B2BC();
      v76 = sub_1BE54C9AC();
      if (!sub_1BE5432D8(v76))
      {

LABEL_32:
        v33 = v82;
LABEL_33:

        return;
      }

      v77 = swift_slowAlloc();
      *&v86 = swift_slowAlloc();
      *v77 = 136446466;
      v78 = sub_1BE54CE0C();
      v80 = sub_1BE4C5338(v78, v79, &v86);

      *(v77 + 4) = v80;
      *(v77 + 12) = 2082;
      *(v77 + 14) = sub_1BE54339C("migrateLegacyUserDefaults(from:)", v81, v82, oslog, v85);
      _os_log_impl(&dword_1BE4B8000, v75, v76, "%{public}s.%{public}s: first run - no legacy GenerativeAssistantSettings found", v77, 0x16u);
      swift_arrayDestroy();
      sub_1BE4C75DC();
      sub_1BE4C75DC();
    }
  }
}

uint64_t sub_1BE53F5FC()
{
  if (qword_1EDDD68A0 != -1)
  {
    sub_1BE543164();
  }

  if (!qword_1EDDD7090)
  {
    return 0;
  }

  v0 = qword_1EDDD7090;
  v1 = sub_1BE543194();
  v2 = sub_1BE543228();
  v4 = [v2 v3];

  if (!v4)
  {
    return 0;
  }

  v5 = sub_1BE54C70C();

  return v5;
}

void sub_1BE53F6AC()
{
  sub_1BE543290();
  swift_getObjectType();
  v2 = *(sub_1BE5412A4() + 16);

  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC26GenerativePartnerServiceUI36GenerativePartnerServiceUserDefaults____lazy_storage___observers);
    v4 = *(v3 + 16);
    if (v4)
    {
      v5 = v3 + 32;
      v6 = *(v0 + OBJC_IVAR____TtC26GenerativePartnerServiceUI36GenerativePartnerServiceUserDefaults____lazy_storage___observers);

      do
      {
        sub_1BE51196C(v5, &v14);
        if (swift_unknownObjectWeakLoadStrong())
        {
          v1();
          swift_unknownObjectRelease();
        }

        sub_1BE5119C8(&v14);
        v5 += 16;
        --v4;
      }

      while (v4);
    }
  }

  else
  {
    if (qword_1EDDD63E0 != -1)
    {
      sub_1BE533A24();
    }

    v7 = sub_1BE54B2EC();
    sub_1BE52C7B8(v7, qword_1EDDD7030);
    oslog = sub_1BE54B2BC();
    v8 = sub_1BE54C97C();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v9 = 136446466;
      v10 = sub_1BE54CE0C();
      v12 = sub_1BE4C5338(v10, v11, &v14);

      *(v9 + 4) = v12;
      *(v9 + 12) = 2082;
      *(v9 + 14) = sub_1BE4C5338(0xD000000000000013, 0x80000001BE555DF0, &v14);
      _os_log_impl(&dword_1BE4B8000, oslog, v8, "%{public}s.%{public}s: no observers registered.", v9, 0x16u);
      swift_arrayDestroy();
      sub_1BE4C75DC();
      sub_1BE4C75DC();
    }

    else
    {
    }
  }
}

uint64_t sub_1BE53F8D8(char a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BE540440(a2, a3);

  return sub_1BE540608(v6, a1, a2, a3);
}

uint64_t sub_1BE53F930(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE540440(a1, a2);
  sub_1BE540440(a1, a2);
  result = v4 + 1;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    v7 = v5 & 1;

    return sub_1BE540608(result, v7, a1, a2);
  }

  return result;
}

uint64_t sub_1BE53F998(uint64_t a1, uint64_t a2, char a3)
{
  if (qword_1EDDD68A0 != -1)
  {
    sub_1BE543164();
  }

  if (qword_1EDDD7090)
  {
    v6 = qword_1EDDD7090;
    v7 = sub_1BE54C6DC();
    v8 = sub_1BE543194();
    [v6 setObject:v7 forKey:v8];
  }

  if ((a3 & 1) == 0)
  {
    type metadata accessor for LegacyGATUserDefaults();
    sub_1BE537650(a1, a2);
  }

  return notify_post("com.apple.generativepartnerservicesettings");
}

void sub_1BE53FA78(char a1, char a2)
{
  if (qword_1EDDD68A0 != -1)
  {
    sub_1BE543164();
  }

  if (qword_1EDDD7090)
  {
    v4 = qword_1EDDD7090;
    sub_1BE5431C4();
    v5 = sub_1BE54C6DC();
    [v4 setBool:a1 & 1 forKey:v5];
  }

  if ((a2 & 1) == 0)
  {
    type metadata accessor for LegacyGATUserDefaults();
    sub_1BE537594(a1 & 1, 1);
  }
}

id sub_1BE53FB20()
{
  if (qword_1EDDD68A0 != -1)
  {
    sub_1BE543164();
  }

  if (!qword_1EDDD7090)
  {
    return 0;
  }

  v0 = qword_1EDDD7090;
  sub_1BE5431C4();
  v1 = sub_1BE54C6DC();
  v2 = [v0 BOOLForKey_];

  return v2;
}

uint64_t sub_1BE53FBB0()
{
  sub_1BE54CADC();
  sub_1BE543350();
  MEMORY[0x1BFB47CA0](0xD000000000000010);
  v0 = sub_1BE53F5FC();
  MEMORY[0x1BFB47CA0](v0);

  sub_1BE543350();
  MEMORY[0x1BFB47CA0](0xD000000000000010);
  v1 = sub_1BE53FB20();
  v2 = (v1 & 1) == 0;
  if (v1)
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  MEMORY[0x1BFB47CA0](v3, v4);

  sub_1BE543350();
  MEMORY[0x1BFB47CA0]();
  v5 = sub_1BE53EAA8();
  v6 = (v5 & 1) == 0;
  if (v5)
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (v6)
  {
    v8 = 0xE500000000000000;
  }

  else
  {
    v8 = 0xE400000000000000;
  }

  MEMORY[0x1BFB47CA0](v7, v8);

  sub_1BE543350();
  MEMORY[0x1BFB47CA0]();
  sub_1BE5404AC();
  sub_1BE4BF11C(&qword_1EBDAD440, &qword_1BE551D20);
  v9 = sub_1BE54C60C();
  v11 = v10;

  MEMORY[0x1BFB47CA0](v9, v11);

  return 0;
}

void sub_1BE53FD60()
{
  v1 = OBJC_IVAR____TtC26GenerativePartnerServiceUI36GenerativePartnerServiceUserDefaults_isObserving;
  if ((*(v0 + OBJC_IVAR____TtC26GenerativePartnerServiceUI36GenerativePartnerServiceUserDefaults_isObserving) & 1) == 0)
  {
    if (qword_1EDDD68A0 != -1)
    {
      sub_1BE543164();
    }

    if (qword_1EDDD7090)
    {
      v2 = qword_1EDDD7090;
      v3 = sub_1BE543194();
      v4 = sub_1BE543204();
      [v4 v5];

      sub_1BE543214();
      v6 = sub_1BE54C6DC();
      v7 = sub_1BE543204();
      [v7 v8];

      *(v0 + v1) = 1;
    }
  }
}

uint64_t sub_1BE53FE28()
{
  sub_1BE543290();
  v5 = sub_1BE5412A4();
  swift_unknownObjectRetain();
  result = sub_1BE542AA0(&v5, v1);
  v3 = *(v5 + 16);
  if (v3 < result)
  {
    __break(1u);
  }

  else
  {
    sub_1BE542CD4(result, v3);
    v4 = *(v0 + OBJC_IVAR____TtC26GenerativePartnerServiceUI36GenerativePartnerServiceUserDefaults____lazy_storage___observers);
    *(v0 + OBJC_IVAR____TtC26GenerativePartnerServiceUI36GenerativePartnerServiceUserDefaults____lazy_storage___observers) = v5;
  }

  return result;
}

void sub_1BE53FEC0()
{
  v1 = OBJC_IVAR____TtC26GenerativePartnerServiceUI36GenerativePartnerServiceUserDefaults_isObserving;
  if (*(v0 + OBJC_IVAR____TtC26GenerativePartnerServiceUI36GenerativePartnerServiceUserDefaults_isObserving) == 1)
  {
    if (qword_1EDDD68A0 != -1)
    {
      sub_1BE543164();
    }

    if (qword_1EDDD7090)
    {
      v2 = qword_1EDDD7090;
      v3 = sub_1BE543194();
      v4 = sub_1BE543204();
      [v4 v5];

      sub_1BE543214();
      v6 = sub_1BE54C6DC();
      v7 = sub_1BE543204();
      [v7 v8];

      *(v0 + v1) = 0;
    }
  }
}

uint64_t sub_1BE53FF78()
{
  sub_1BE5412A4();

  v1 = *(v0 + OBJC_IVAR____TtC26GenerativePartnerServiceUI36GenerativePartnerServiceUserDefaults____lazy_storage___observers);
  *(v0 + OBJC_IVAR____TtC26GenerativePartnerServiceUI36GenerativePartnerServiceUserDefaults____lazy_storage___observers) = MEMORY[0x1E69E7CC0];
}

uint64_t sub_1BE53FFC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BE543290();
  sub_1BE540440(v6, v7);
  v9 = v8 & 1;

  return sub_1BE540608(v4, v9, v3, a3);
}

id sub_1BE540018()
{
  result = sub_1BE540038();
  qword_1EDDD7090 = result;
  return result;
}

id sub_1BE540038()
{
  v0 = qword_1EBDAD410;
  v1 = off_1EBDAD418;
  objc_allocWithZone(MEMORY[0x1E695E000]);

  v2 = sub_1BE537810(v0, v1);
  sub_1BE4BF11C(&qword_1EBDAD438, &unk_1BE551D10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE551C80;
  strcpy((inited + 32), "selectedLLMId");
  *(inited + 46) = -4864;
  v4 = MEMORY[0x1E69E6158];
  *(inited + 48) = 0;
  *(inited + 56) = 0xE000000000000000;
  *(inited + 72) = v4;
  *(inited + 80) = 0x6F72507075746573;
  *(inited + 88) = 0xEB0000000074706DLL;
  v5 = MEMORY[0x1E69E6370];
  *(inited + 96) = 1;
  *(inited + 120) = v5;
  *(inited + 128) = 0xD000000000000016;
  *(inited + 136) = 0x80000001BE552840;
  *(inited + 144) = 1;
  *(inited + 168) = v5;
  *(inited + 176) = 0xD000000000000027;
  *(inited + 184) = 0x80000001BE555D20;
  *(inited + 216) = v5;
  *(inited + 192) = 1;
  sub_1BE54C61C();
  if (v2)
  {
    v6 = v2;
    v7 = sub_1BE54C5DC();

    [v6 registerDefaults_];
  }

  else
  {
  }

  return v2;
}

id sub_1BE5401F8()
{
  ObjectType = swift_getObjectType();
  sub_1BE53FEC0();
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1BE540278(uint64_t a1)
{
  sub_1BE50B814(a1, &v5);
  if (v6)
  {
    if (sub_1BE54335C())
    {
      v2 = v4;
      goto LABEL_6;
    }
  }

  else
  {
    sub_1BE537874(&v5);
  }

  v2 = 0;
LABEL_6:
  sub_1BE50B814(a1, &v5);

  if (v6)
  {
    sub_1BE54335C();
  }

  else
  {
    sub_1BE537874(&v5);
  }

  return v2;
}

uint64_t sub_1BE540368(uint64_t a1, char a2)
{
  sub_1BE4BF11C(&qword_1EBDAD438, &unk_1BE551D10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE54DC10;
  *(inited + 32) = 0x656D656C62616E65;
  *(inited + 40) = 0xEF746E756F43746ELL;
  v5 = MEMORY[0x1E69E6530];
  *(inited + 48) = a1;
  *(inited + 72) = v5;
  *(inited + 80) = 0x616C696176616E75;
  *(inited + 88) = 0xEB00000000656C62;
  *(inited + 120) = MEMORY[0x1E69E6370];
  *(inited + 96) = a2;
  return sub_1BE54C61C();
}

uint64_t sub_1BE540440(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE5404AC();
  v5 = sub_1BE50B878(a1, a2, v4);

  if (v5)
  {
    return sub_1BE540278(v5);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BE5404AC()
{
  if (qword_1EDDD68A0 != -1)
  {
    sub_1BE543164();
  }

  if (!qword_1EDDD7090)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    sub_1BE537874(&v6);
    goto LABEL_12;
  }

  v0 = qword_1EDDD7090;
  v1 = sub_1BE54C6DC();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_1BE54CA3C();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  sub_1BE4BF11C(&qword_1EBDAD450, &qword_1BE551D30);
  if (sub_1BE5432F0())
  {
    return v4;
  }

LABEL_12:
  sub_1BE4BF11C(&qword_1EBDAD440, &qword_1BE551D20);
  return sub_1BE54C61C();
}

uint64_t sub_1BE540608(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  sub_1BE5404AC();
  sub_1BE540368(a1, a2);
  swift_isUniquelyReferenced_nonNull_native();
  v7 = sub_1BE533A68();
  sub_1BE542798(v7, v8, a4);
  sub_1BE5406A4();
}

void sub_1BE5406A4()
{
  if (qword_1EDDD68A0 != -1)
  {
    sub_1BE543164();
  }

  if (qword_1EDDD7090)
  {
    v0 = qword_1EDDD7090;
    sub_1BE4BF11C(&qword_1EBDAD440, &qword_1BE551D20);
    v1 = sub_1BE54C5DC();
    v2 = sub_1BE54C6DC();
    [v0 setObject:v1 forKey:v2];
  }
}

BOOL sub_1BE540798(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE52E310();
  if (v4)
  {
    v5 = v4;
    v9[0] = a1;
    v9[1] = a2;
    MEMORY[0x1EEE9AC00](v4);
    v8[2] = v9;
    v6 = sub_1BE54729C(sub_1BE4E1F04, v8, v5);
  }

  else
  {
    return 0;
  }

  return v6;
}

void sub_1BE54085C()
{
  sub_1BE4FFB64();
  v0 = sub_1BE54AEDC();
  sub_1BE543254();
  v2 = v1;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1BE4C757C();
  v8 = v7 - v6;
  if (qword_1EDDD68A0 != -1)
  {
    sub_1BE543164();
  }

  if (qword_1EDDD7090)
  {
    v9 = qword_1EDDD7090;
    v10 = sub_1BE54C6DC();
    v11 = [v9 objectForKey:v10];

    if (!v11)
    {
      v46 = 0u;
      v47 = 0u;
      sub_1BE537874(&v46);
      if (qword_1EDDD63E0 != -1)
      {
        sub_1BE533A24();
      }

      v20 = sub_1BE54B2EC();
      sub_1BE52C7B8(v20, qword_1EDDD7030);
      v21 = sub_1BE54B2BC();
      v22 = sub_1BE54C98C();
      if (sub_1BE5432D8(v22))
      {
        v23 = sub_1BE5433D4();
        *v23 = 0;
        _os_log_impl(&dword_1BE4B8000, v21, v22, "Could not find migration key in GPS domain. Cannot verify read/write access.", v23, 2u);
        sub_1BE4C75DC();
      }

      goto LABEL_35;
    }

    sub_1BE54CA3C();
    swift_unknownObjectRelease();
    sub_1BE537874(&v46);
    sub_1BE54AECC();
    sub_1BE54AEAC();
    v12 = *(v2 + 8);
    v12(v8, v0);
    sub_1BE54AECC();
    v13 = sub_1BE54AEAC();
    v15 = v14;
    v12(v8, v0);
    v16 = sub_1BE54C6DC();
    sub_1BE533A68();
    v17 = sub_1BE54C6DC();
    [v9 setValue:v16 forKey:v17];

    sub_1BE533A68();
    v18 = sub_1BE54C6DC();
    v19 = [v9 objectForKey:v18];

    if (v19)
    {
      sub_1BE54CA3C();
      swift_unknownObjectRelease();
    }

    else
    {
      v44 = 0u;
      v45 = 0u;
    }

    v46 = v44;
    v47 = v45;
    if (*(&v45 + 1))
    {
      if (sub_1BE5432F0())
      {
        if (v42 == v13 && v43 == v15)
        {

LABEL_30:
          if (qword_1EDDD63E0 != -1)
          {
            sub_1BE533A24();
          }

          v34 = sub_1BE54B2EC();
          sub_1BE52C7B8(v34, qword_1EDDD7030);
          v27 = sub_1BE54B2BC();
          v35 = sub_1BE54C9AC();
          if (sub_1BE5432D8(v35))
          {
            *sub_1BE5433D4() = 0;
            sub_1BE543274();
            _os_log_impl(v36, v37, v38, v39, v40, 2u);
            sub_1BE4C75DC();
          }

LABEL_34:

          sub_1BE533A68();
          v41 = sub_1BE54C6DC();

          [v9 removeObjectForKey:v41];
          v21 = v9;
          v9 = v41;
LABEL_35:

          goto LABEL_36;
        }

        v25 = sub_1BE54CCDC();

        if (v25)
        {
          goto LABEL_30;
        }
      }

      else
      {
      }
    }

    else
    {

      sub_1BE537874(&v46);
    }

    if (qword_1EDDD63E0 != -1)
    {
      sub_1BE533A24();
    }

    v26 = sub_1BE54B2EC();
    sub_1BE52C7B8(v26, qword_1EDDD7030);
    v27 = sub_1BE54B2BC();
    v28 = sub_1BE54C98C();
    if (sub_1BE5432D8(v28))
    {
      *sub_1BE5433D4() = 0;
      sub_1BE543274();
      _os_log_impl(v29, v30, v31, v32, v33, 2u);
      sub_1BE4C75DC();
    }

    goto LABEL_34;
  }

LABEL_36:
  sub_1BE4FFB4C();
}

void sub_1BE540D24()
{
  sub_1BE4FFB64();
  sub_1BE543290();
  v0 = sub_1BE54AEDC();
  sub_1BE543254();
  v2 = v1;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1BE4C757C();
  v8 = v7 - v6;
  objc_allocWithZone(MEMORY[0x1E695E000]);

  v9 = sub_1BE533A68();
  v11 = sub_1BE537810(v9, v10);
  if (v11)
  {
    v12 = v11;
    sub_1BE543308();
    v13 = sub_1BE54C6DC();
    v14 = [v12 objectForKey_];

    if (v14)
    {
      sub_1BE54CA3C();
      swift_unknownObjectRelease();
      sub_1BE537874(&v61);
      sub_1BE54AECC();
      sub_1BE54AEAC();
      v15 = *(v2 + 8);
      v15(v8, v0);
      sub_1BE54AECC();
      v16 = sub_1BE54AEAC();
      v18 = v17;
      v15(v8, v0);
      v19 = sub_1BE54C6DC();
      v20 = sub_1BE54C6DC();
      [v12 setValue:v19 forKey:v20];

      v21 = sub_1BE54C6DC();
      v22 = [v12 objectForKey_];

      if (v22)
      {
        sub_1BE54CA3C();
        swift_unknownObjectRelease();
      }

      else
      {
        v59 = 0u;
        v60 = 0u;
      }

      v61 = v59;
      v62 = v60;
      if (*(&v60 + 1))
      {
        if (sub_1BE5432F0())
        {
          if (v57 == v16 && v58 == v18)
          {

LABEL_28:
            if (qword_1EDDD63E0 != -1)
            {
              sub_1BE533A24();
            }

            v49 = sub_1BE54B2EC();
            sub_1BE52C7B8(v49, qword_1EDDD7030);

            v38 = sub_1BE54B2BC();
            sub_1BE54C98C();
            sub_1BE5433BC();
            if (os_log_type_enabled(v38, v16))
            {
              v50 = sub_1BE50AB7C();
              v51 = sub_1BE50AAC4();
              *&v61 = v51;
              *v50 = 136446210;
              v52 = sub_1BE533A68();
              *(v50 + 4) = sub_1BE4C5338(v52, v53, v54);
              sub_1BE53E9C4(&dword_1BE4B8000, v55, v56, "Verified read/write access to legacy domain (%{public}s");
              sub_1BE4C58A8(v51);
              sub_1BE4C75DC();
              sub_1BE4C75DC();
            }

LABEL_25:

            v46 = sub_1BE54C6DC();

            v47 = sub_1BE543228();
            [v47 v48];

            goto LABEL_26;
          }

          LOBYTE(v16) = sub_1BE54CCDC();

          if (v16)
          {
            goto LABEL_28;
          }
        }

        else
        {
        }
      }

      else
      {

        sub_1BE537874(&v61);
      }

      if (qword_1EDDD63E0 != -1)
      {
        sub_1BE533A24();
      }

      v37 = sub_1BE54B2EC();
      sub_1BE52C7B8(v37, qword_1EDDD7030);

      v38 = sub_1BE54B2BC();
      sub_1BE54C98C();
      sub_1BE5433BC();
      if (os_log_type_enabled(v38, v16))
      {
        v39 = sub_1BE50AB7C();
        v40 = sub_1BE50AAC4();
        *&v61 = v40;
        *v39 = 136446210;
        v41 = sub_1BE533A68();
        *(v39 + 4) = sub_1BE4C5338(v41, v42, v43);
        sub_1BE53E9C4(&dword_1BE4B8000, v44, v45, "Could not retrieve key/value written to legacy domain (%{public}s. Cannot verify read/write access.");
        sub_1BE4C58A8(v40);
        sub_1BE4C75DC();
        sub_1BE4C75DC();
      }

      goto LABEL_25;
    }

    v61 = 0u;
    v62 = 0u;
    sub_1BE537874(&v61);
    if (qword_1EDDD63E0 != -1)
    {
      sub_1BE533A24();
    }

    v23 = sub_1BE54B2EC();
    sub_1BE52C7B8(v23, qword_1EDDD7030);

    v24 = sub_1BE54B2BC();
    v25 = sub_1BE54C98C();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = sub_1BE50AB7C();
      v27 = sub_1BE50AAC4();
      *&v61 = v27;
      *v26 = 136446210;
      v28 = sub_1BE533A68();
      *(v26 + 4) = sub_1BE4C5338(v28, v29, v30);
      sub_1BE543274();
      _os_log_impl(v31, v32, v33, v34, v35, 0xCu);
      sub_1BE4C58A8(v27);
      sub_1BE4C75DC();
      sub_1BE4C75DC();
    }
  }

LABEL_26:
  sub_1BE4FFB4C();
}

uint64_t sub_1BE5412A4()
{
  if (*(v0 + OBJC_IVAR____TtC26GenerativePartnerServiceUI36GenerativePartnerServiceUserDefaults____lazy_storage___observers))
  {
    v1 = *(v0 + OBJC_IVAR____TtC26GenerativePartnerServiceUI36GenerativePartnerServiceUserDefaults____lazy_storage___observers);
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC0];
    *(v0 + OBJC_IVAR____TtC26GenerativePartnerServiceUI36GenerativePartnerServiceUserDefaults____lazy_storage___observers) = MEMORY[0x1E69E7CC0];
  }

  return v1;
}

void sub_1BE5412EC()
{
  sub_1BE4FFB64();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  ObjectType = swift_getObjectType();
  v11 = sub_1BE5412A4();
  v12 = *(v11 + 16);
  if (!v12)
  {

    v14 = MEMORY[0x1E69E7CC0];
    if (v8)
    {
      goto LABEL_11;
    }

LABEL_35:

    v40 = 0;
    goto LABEL_36;
  }

  v60 = v10;
  v61 = v6;
  v62 = v4;
  v64 = v2;
  v13 = v11 + 32;
  v14 = MEMORY[0x1E69E7CC0];
  do
  {
    sub_1BE51196C(v13, &v69);
    sub_1BE51196C(&v69, &v71);
    Strong = swift_unknownObjectWeakLoadStrong();
    v16 = v72;
    sub_1BE5119C8(&v71);
    sub_1BE5119C8(&v69);
    if (Strong)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = v14[2];
        sub_1BE54329C();
        v14 = sub_1BE5422E4(v20, v21, v22, v23);
      }

      v17 = v14[2];
      if (v17 >= v14[3] >> 1)
      {
        sub_1BE54329C();
        v14 = sub_1BE5422E4(v24, v25, v26, v27);
      }

      v14[2] = v17 + 1;
      v18 = &v14[2 * v17];
      v18[4] = Strong;
      v18[5] = v16;
    }

    v13 += 16;
    --v12;
  }

  while (v12);

  v4 = v62;
  v2 = v64;
  v10 = v60;
  v6 = v61;
  if (!v8)
  {
    goto LABEL_35;
  }

LABEL_11:
  v29 = v10 == sub_1BE5432B4() && v8 == v28;
  if (!v29 && (sub_1BE54CCDC() & 1) == 0)
  {
    v52 = v10 == sub_1BE543214() && v8 == 0xE700000000000000;
    if (v52 || (sub_1BE54CCDC() & 1) != 0)
    {
      if (v4)
      {
        sub_1BE50B9D8(*MEMORY[0x1E696A4F0], v4, &v69);
        if (*(&v70 + 1))
        {
          if (sub_1BE5432F0())
          {
            v53 = v14[2];
            if (v53)
            {
              v54 = v71;
              v55 = v14 + 5;
              do
              {
                v56 = *(v55 - 1);
                v57 = *v55;
                v58 = swift_getObjectType();
                v59 = *(v57 + 16);
                swift_unknownObjectRetain();
                v59(v54, v58, v57);
                swift_unknownObjectRelease();
                v55 += 2;
                --v53;
              }

              while (v53);
            }
          }

          goto LABEL_33;
        }

        goto LABEL_55;
      }

LABEL_51:

      v69 = 0u;
      v70 = 0u;
LABEL_56:
      sub_1BE537874(&v69);
      goto LABEL_57;
    }

    v40 = sub_1BE54C6DC();
LABEL_36:
    sub_1BE541A00(v6, &v69);
    v41 = *(&v70 + 1);
    if (*(&v70 + 1))
    {
      sub_1BE4C52F4(&v69, *(&v70 + 1));
      sub_1BE543254();
      v43 = v42;
      v45 = *(v44 + 64);
      MEMORY[0x1EEE9AC00](v46);
      sub_1BE4C757C();
      v49 = v48 - v47;
      (*(v43 + 16))(v48 - v47);
      v50 = sub_1BE54CCBC();
      (*(v43 + 8))(v49, v41);
      sub_1BE4C58A8(&v69);
      if (v4)
      {
LABEL_38:
        type metadata accessor for NSKeyValueChangeKey();
        sub_1BE5419A8();
        v51 = sub_1BE54C5DC();
LABEL_54:
        v68.receiver = v0;
        v68.super_class = ObjectType;
        objc_msgSendSuper2(&v68, sel_observeValueForKeyPath_ofObject_change_context_, v40, v50, v51, v2);

        swift_unknownObjectRelease();
        goto LABEL_57;
      }
    }

    else
    {
      v50 = 0;
      if (v4)
      {
        goto LABEL_38;
      }
    }

    v51 = 0;
    goto LABEL_54;
  }

  if (!v4)
  {
    goto LABEL_51;
  }

  sub_1BE50B9D8(*MEMORY[0x1E696A4F0], v4, &v69);
  if (!*(&v70 + 1))
  {
LABEL_55:

    goto LABEL_56;
  }

  if (sub_1BE5432F0())
  {
    v30 = v14[2];
    if (v30)
    {
      v31 = v71;
      v63 = v72;
      if (v71)
      {
        v32 = 0;
      }

      else
      {
        v32 = v72 == 0xE000000000000000;
      }

      v33 = v32;
      v65 = v33;
      v34 = v14 + 5;
      v67 = v71;
      do
      {
        v35 = *(v34 - 1);
        v36 = *v34;
        if (v65 & 1) != 0 || (v37 = v63, (sub_1BE54CCDC()))
        {
          v31 = 0;
          v37 = 0;
        }

        else
        {
        }

        v38 = swift_getObjectType();
        v39 = *(v36 + 8);
        swift_unknownObjectRetain();
        v39(v31, v37, v38, v36);
        swift_unknownObjectRelease();

        v34 += 2;
        --v30;
        v31 = v67;
      }

      while (v30);
    }
  }

LABEL_33:

LABEL_57:
  sub_1BE4FFB4C();
}

id sub_1BE541900()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC26GenerativePartnerServiceUI36GenerativePartnerServiceUserDefaults____lazy_storage___observers] = 0;
  v0[OBJC_IVAR____TtC26GenerativePartnerServiceUI36GenerativePartnerServiceUserDefaults_isObserving] = 0;
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_init);
}

unint64_t sub_1BE5419A8()
{
  result = qword_1EBDABDC8;
  if (!qword_1EBDABDC8)
  {
    type metadata accessor for NSKeyValueChangeKey();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDABDC8);
  }

  return result;
}

uint64_t sub_1BE541A00(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE4BF11C(&qword_1EBDAD3A0, &qword_1BE5519D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

size_t sub_1BE541A70(size_t result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_1BE542414(v9, a2, &qword_1EBDAD478, &qword_1BE551D68, type metadata accessor for OBKSheetData.BulletPoint);
  v11 = *(type metadata accessor for OBKSheetData.BulletPoint(0) - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_1BE54256C(a4 + v12, v9, v10 + v12, type metadata accessor for OBKSheetData.BulletPoint);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1BE541B94()
{
  sub_1BE543330();
  if (v3)
  {
    sub_1BE5431F4();
    if (v5 != v6)
    {
      sub_1BE5432A8();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1BE5431E4();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    sub_1BE4BF11C(&qword_1EBDAD2C8, &qword_1BE551728);
    v9 = swift_allocObject();
    v10 = j__malloc_size(v9);
    *(v9 + 2) = v7;
    *(v9 + 3) = 2 * ((v10 - 32) / 24);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[24 * v7] <= v11)
    {
      memmove(v11, v12, 24 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

size_t sub_1BE541C90(size_t result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_1BE542414(v9, a2, &qword_1EBDAC308, &qword_1BE551D60, MEMORY[0x1E6968178]);
  v11 = *(sub_1BE54ACDC() - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_1BE54256C(a4 + v12, v9, v10 + v12, MEMORY[0x1E6968178]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1BE541DB4()
{
  sub_1BE543330();
  if (v5)
  {
    sub_1BE5431F4();
    if (v7 != v8)
    {
      sub_1BE5432A8();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1BE5431E4();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_1BE543264(v6);
  if (v3)
  {
    sub_1BE4BF11C(&qword_1EBDAD460, &qword_1BE551D40);
    v9 = swift_allocObject();
    v10 = j__malloc_size(v9);
    *(v9 + 2) = v2;
    *(v9 + 3) = 2 * ((v10 - 32) / 32);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[32 * v2] <= v11)
    {
      memmove(v11, v12, 32 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1BE541ED4(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  if ((a3 & 1) == 0)
  {
    v8 = a2;
    goto LABEL_7;
  }

  sub_1BE5431F4();
  if (v9 == v10)
  {
LABEL_7:
    v11 = *(a4 + 16);
    if (v8 <= v11)
    {
      v12 = *(a4 + 16);
    }

    else
    {
      v12 = v8;
    }

    if (v12)
    {
      sub_1BE4BF11C(a5, a6);
      v13 = swift_allocObject();
      j__malloc_size(v13);
      sub_1BE54331C();
      v13[2] = v11;
      v13[3] = v14;
      if (a1)
      {
LABEL_12:
        sub_1BE542634(a4 + 32, v11, (v13 + 4));
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v13 = MEMORY[0x1E69E7CC0];
      if (a1)
      {
        goto LABEL_12;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_15;
  }

  sub_1BE5432A8();
  if (!v9)
  {
    sub_1BE5431E4();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1BE541FB8()
{
  sub_1BE543330();
  if (v5)
  {
    sub_1BE5431F4();
    if (v7 != v8)
    {
      sub_1BE5432A8();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1BE5431E4();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_1BE543264(v6);
  if (v3)
  {
    sub_1BE4BF11C(&qword_1EBDAD2D0, &unk_1BE551730);
    v9 = swift_allocObject();
    v10 = j__malloc_size(v9);
    v9[2] = v2;
    v9[3] = 2 * ((v10 - 32) / 40);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  if (v1)
  {
    if (v9 != v0 || &v0[5 * v2 + 4] <= v9 + 4)
    {
      memmove(v9 + 4, v0 + 4, 40 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    sub_1BE4BF11C(&unk_1EBDABCB8, &qword_1BE54DE88);
    swift_arrayInitWithCopy();
  }
}

void *sub_1BE5420D0(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_1BE4BF11C(&qword_1EBDACF60, &unk_1BE5508E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1BE4BF11C(&qword_1EBDABAF8, &qword_1BE54DC20);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1BE542208()
{
  sub_1BE543330();
  if (v5)
  {
    sub_1BE5431F4();
    if (v7 != v8)
    {
      sub_1BE5432A8();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1BE5431E4();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_1BE543264(v6);
  if (v3)
  {
    sub_1BE4BF11C(&qword_1EBDAD0E0, &qword_1BE551740);
    v9 = swift_allocObject();
    j__malloc_size(v9);
    sub_1BE54331C();
    *(v9 + 2) = v2;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v2] <= v11)
    {
      memmove(v11, v12, 16 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void *sub_1BE5422E4(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_1BE4BF11C(&qword_1EBDAD430, &unk_1BE551D00);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[2 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1BE4BF11C(&qword_1EBDACDA0, &qword_1BE5506B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1BE542414(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
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

  sub_1BE4BF11C(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = j__malloc_size(v11);
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

char *sub_1BE542510(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return sub_1BE543184(a3, result);
  }

  return result;
}

char *sub_1BE542548(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return sub_1BE543184(a3, result);
  }

  return result;
}

uint64_t sub_1BE54256C(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (result = (a4)(0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    a4(0);
    v12 = sub_1BE54333C();

    return MEMORY[0x1EEE6BD00](v12, v13, v14);
  }

  else if (a3 != a1)
  {
    v9 = sub_1BE54333C();

    return MEMORY[0x1EEE6BCF8](v9, v10, v11);
  }

  return result;
}

unint64_t sub_1BE542634(unint64_t result, uint64_t a2, unint64_t a3)
{
  if (a3 < result || result + 16 * a2 <= a3)
  {
    return MEMORY[0x1EEE6BD00](a3, result, a2);
  }

  if (a3 != result)
  {
    return MEMORY[0x1EEE6BCF8](a3, result, a2);
  }

  return result;
}

uint64_t sub_1BE5426A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    if (*(v6 + 16) > a1)
    {
      v8 = *(v6 + 16);
    }

    result = a3();
    *v3 = result;
  }

  return result;
}

void sub_1BE542718(uint64_t a1, char a2)
{
  v5 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!isUniquelyReferenced_nonNull_native || a1 > *(v5 + 24) >> 1)
  {
    if (*(v5 + 16) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 16);
    }

    sub_1BE541ED4(isUniquelyReferenced_nonNull_native, v7, a2 & 1, v5, &qword_1EBDAD458, &qword_1BE551D38);
    *v2 = v8;
  }
}

uint64_t sub_1BE542798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1BE52F67C();
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  sub_1BE4BF11C(&qword_1EBDAD448, &qword_1BE551D28);
  if ((sub_1BE54CBAC() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = *v4;
  v14 = sub_1BE52F67C();
  if ((v12 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_1BE54CCFC();
    __break(1u);
    return result;
  }

  v11 = v14;
LABEL_5:
  v16 = *v4;
  if (v12)
  {
    v17 = v16[7];
    v18 = *(v17 + 8 * v11);
    *(v17 + 8 * v11) = a1;
  }

  else
  {
    sub_1BE542A0C(v11, a2, a3, a1, v16);
  }
}

uint64_t sub_1BE5428D4()
{
  sub_1BE4FFB64();
  v3 = v0;
  v5 = v4;
  v7 = v6;
  sub_1BE543290();
  v8 = *v0;
  v9 = sub_1BE52F67C();
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  sub_1BE4BF11C(&qword_1EBDAD470, &qword_1BE551D58);
  if ((sub_1BE54CBAC() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = *v3;
  v14 = sub_1BE52F67C();
  if ((v12 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_1BE54CCFC();
    __break(1u);
    return result;
  }

  v11 = v14;
LABEL_5:
  v16 = *v3;
  if (v12)
  {
    v17 = (v16[7] + 16 * v11);
    v18 = v17[1];
    *v17 = v2;
    v17[1] = v1;
    sub_1BE4FFB4C();
  }

  else
  {
    sub_1BE542A54(v11, v7, v5, v2, v1, v16);
    sub_1BE4FFB4C();
  }
}

unint64_t sub_1BE542A0C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

unint64_t sub_1BE542A54(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

uint64_t sub_1BE542AA0(uint64_t *a1, uint64_t a2)
{
  v6 = *a1;
  swift_unknownObjectRetain();
  result = sub_1BE542C3C(v6, a2);
  if (v2)
  {
    swift_unknownObjectRelease();
    return v3;
  }

  if (v8)
  {
    v3 = *(v6 + 16);
LABEL_5:
    swift_unknownObjectRelease();
    return v3;
  }

  v3 = result;
  v9 = result + 1;
  if (!__OFADD__(result, 1))
  {
    for (i = 16 * result + 48; ; i += 16)
    {
      v11 = *(v6 + 16);
      if (v9 == v11)
      {
        goto LABEL_5;
      }

      if (v9 >= v11)
      {
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        break;
      }

      sub_1BE51196C(v6 + i, v17);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v13 = Strong;
        swift_unknownObjectRelease();
        result = sub_1BE5119C8(v17);
        if (v13 == a2)
        {
          goto LABEL_24;
        }
      }

      else
      {
        result = sub_1BE5119C8(v17);
      }

      if (v9 != v3)
      {
        if ((v3 & 0x8000000000000000) != 0)
        {
          goto LABEL_26;
        }

        v14 = *(v6 + 16);
        if (v3 >= v14)
        {
          goto LABEL_27;
        }

        result = sub_1BE51196C(v6 + 32 + 16 * v3, v17);
        if (v9 >= v14)
        {
          goto LABEL_28;
        }

        sub_1BE51196C(v6 + i, v16);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1BE542DCC(v6);
          v6 = v15;
        }

        result = sub_1BE542E0C(v16, v6 + 16 * v3 + 32);
        if (v9 >= *(v6 + 16))
        {
          goto LABEL_29;
        }

        result = sub_1BE542E0C(v17, v6 + i);
        *a1 = v6;
      }

      ++v3;
LABEL_24:
      ++v9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BE542C3C(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a1 + 16);
  for (i = a1 + 32; ; i += 16)
  {
    if (v4 == v3)
    {
      v8 = 0;
      goto LABEL_8;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      swift_unknownObjectRelease();
      if (v7 == a2)
      {
        break;
      }
    }

    ++v3;
  }

  v8 = v3;
LABEL_8:
  swift_unknownObjectRelease();
  return v8;
}

uint64_t sub_1BE542CD4(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1BE542718(result, 1);
  v8 = *v2;
  v9 = *v2 + 32;
  v10 = v9 + 16 * v5;
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v11 = *(v8 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_16;
  }

  result = sub_1BE542634(v9 + 16 * a2, v11 - a2, v10);
  v12 = *(v8 + 16);
  v13 = __OFADD__(v12, v7);
  v14 = v12 - v6;
  if (!v13)
  {
    *(v8 + 16) = v14;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_1BE542E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v8 = sub_1BE5412A4();
  v9 = v8;
  v10 = *(v8 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = v8 + 32;
    while (1)
    {
      if (v11 >= *(v9 + 16))
      {
        __break(1u);
        goto LABEL_17;
      }

      sub_1BE51196C(v12, &v42);
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1BE5119C8(&v42);
      if (Strong)
      {
        swift_unknownObjectRelease();
        if (Strong == a1)
        {
          break;
        }
      }

      ++v11;
      v12 += 16;
      if (v10 == v11)
      {
        goto LABEL_7;
      }
    }

    if (qword_1EDDD63E0 != -1)
    {
      sub_1BE533A24();
    }

    v16 = sub_1BE54B2EC();
    sub_1BE52C7B8(v16, qword_1EDDD7030);
    swift_unknownObjectRetain();
    v17 = sub_1BE54B2BC();
    v18 = sub_1BE54C98C();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = sub_1BE50AAC4();
      v41 = swift_slowAlloc();
      *v19 = 136446722;
      v20 = sub_1BE54CE0C();
      v22 = sub_1BE4C5338(v20, v21, &v41);

      *(v19 + 4) = v22;
      *(v19 + 12) = 2082;
      *(v19 + 14) = sub_1BE4C5338(0xD000000000000014, 0x80000001BE554D40, &v41);
      *(v19 + 22) = 2082;
      v42 = a1;
      v43 = a4;
      swift_unknownObjectRetain();
      sub_1BE4BF11C(&qword_1EBDACDA0, &qword_1BE5506B0);
      v23 = sub_1BE54C73C();
      v25 = sub_1BE4C5338(v23, v24, &v41);

      *(v19 + 24) = v25;
      _os_log_impl(&dword_1BE4B8000, v17, v18, "%{public}s.%{public}s: observer %{public}s already registered. Ignoring.", v19, 0x20u);
      swift_arrayDestroy();
      sub_1BE4C75DC();
      sub_1BE4C75DC();
    }
  }

  else
  {
LABEL_7:

    v43 = a4;
    swift_unknownObjectWeakInit();
    ObjectType = OBJC_IVAR____TtC26GenerativePartnerServiceUI36GenerativePartnerServiceUserDefaults____lazy_storage___observers;
    a1 = *(a2 + OBJC_IVAR____TtC26GenerativePartnerServiceUI36GenerativePartnerServiceUserDefaults____lazy_storage___observers);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_17:
      v26 = *(a1 + 16);
      sub_1BE54329C();
      sub_1BE541ED4(v27, v28, v29, v30, v31, v32);
      a1 = v33;
    }

    v14 = *(a1 + 16);
    if (v14 >= *(a1 + 24) >> 1)
    {
      sub_1BE54329C();
      sub_1BE541ED4(v34, v35, v36, v37, v38, v39);
      a1 = v40;
    }

    *(a1 + 16) = v14 + 1;
    sub_1BE511A1C(&v42, a1 + 16 * v14 + 32);
    v15 = *(a2 + ObjectType);
    *(a2 + ObjectType) = a1;
  }
}

uint64_t sub_1BE543164()
{

  return swift_once();
}

uint64_t sub_1BE543194()
{

  return sub_1BE54C6DC();
}

uint64_t sub_1BE543234()
{

  return swift_dynamicCast();
}

void sub_1BE543264(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

BOOL sub_1BE5432D8(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_1BE5432F0()
{

  return swift_dynamicCast();
}

uint64_t sub_1BE54335C()
{

  return swift_dynamicCast();
}

uint64_t sub_1BE54337C()
{

  return sub_1BE54C6DC();
}

uint64_t sub_1BE54339C@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  return sub_1BE4C5338(v5 + 11, (a1 - 32) | 0x8000000000000000, va);
}

uint64_t sub_1BE5433BC()
{
}

uint64_t sub_1BE5433D4()
{

  return swift_slowAlloc();
}

uint64_t sub_1BE5433EC(uint64_t a1)
{
  if (a1 == 6)
  {
    v1 = &unk_1F3CCA9E8;
  }

  else
  {
    v1 = &unk_1F3CCAA10;
  }

  sub_1BE5106E4(v1);
  v3 = v2;
  v4 = [objc_opt_self() currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if (v5)
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v6 = &unk_1F3CCAA38;
  }

  return sub_1BE543494(v6, v3);
}

uint64_t sub_1BE543494(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 32;
    do
    {
      sub_1BE52FE34(&v7, *(a1 + v4++));
      --v3;
    }

    while (v3);

    return v8;
  }

  else
  {
    v5 = a2;
  }

  return v5;
}

GenerativePartnerServiceUI::LLMCapabilityForOnboardingDisplay_optional __swiftcall LLMCapabilityForOnboardingDisplay.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1BE54CC0C();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t LLMCapabilityForOnboardingDisplay.rawValue.getter()
{
  result = 0x65746E4969726973;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000016;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1BE543624@<X0>(unint64_t *a1@<X8>)
{
  result = LLMCapabilityForOnboardingDisplay.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1BE543650()
{
  result = qword_1EBDAD480;
  if (!qword_1EBDAD480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAD480);
  }

  return result;
}

unint64_t sub_1BE5436C0()
{
  result = qword_1EBDAD488;
  if (!qword_1EBDAD488)
  {
    sub_1BE4C5948(&qword_1EBDAD490, &qword_1BE551DE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAD488);
  }

  return result;
}

uint64_t sub_1BE543794(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_1BE4D9C40();
}

_BYTE *storeEnumTagSinglePayload for LLMCapabilityForOnboardingDisplay(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1BE54387C()
{
  result = qword_1EDDD6580;
  if (!qword_1EDDD6580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDD6580);
  }

  return result;
}

Swift::String __swiftcall LLMProvider.localizedAttributionDisplayName()()
{
  v3 = v1;
  v4 = v0;
  v5 = sub_1BE4BF11C(&qword_1EBDAD3D8, &qword_1BE551AA0);
  sub_1BE4C7570(v5);
  v7 = *(v6 + 64);
  sub_1BE4FFC80();
  MEMORY[0x1EEE9AC00](v8);
  sub_1BE546A24();
  v9 = sub_1BE54ADAC();
  v10 = sub_1BE4C7570(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1BE4C757C();
  v15 = v14 - v13;
  (*(v3 + 200))(v4, v3);
  v16 = sub_1BE54AF6C();
  sub_1BE4C63F8(v2, 1, 1, v16);
  sub_1BE544E30(v2, v15);

  sub_1BE4E4348(v2, &qword_1EBDAD3D8, &qword_1BE551AA0);
  v17 = sub_1BE54C72C();
  result._object = v18;
  result._countAndFlagsBits = v17;
  return result;
}

Swift::String __swiftcall LLMProvider.localizedTermsTitle()()
{
  v3 = v1;
  v4 = v0;
  v39 = sub_1BE54AF6C();
  v5 = *(*(v39 - 8) + 64);
  MEMORY[0x1EEE9AC00](v39);
  sub_1BE4C757C();
  v6 = sub_1BE54AD8C();
  v7 = sub_1BE4C7500(v6);
  v38 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1BE4C757C();
  v13 = v12 - v11;
  v14 = sub_1BE54C6BC();
  v15 = sub_1BE4C7570(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1BE4C757C();
  v18 = sub_1BE54C69C();
  v19 = sub_1BE4C7570(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1BE4C757C();
  v22 = sub_1BE4BF11C(&qword_1EBDAD3D8, &qword_1BE551AA0);
  sub_1BE4C7570(v22);
  v24 = *(v23 + 64);
  sub_1BE4FFC80();
  MEMORY[0x1EEE9AC00](v25);
  sub_1BE546A24();
  v26 = sub_1BE54ADAC();
  v27 = sub_1BE4C7570(v26);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  sub_1BE4C757C();
  v32 = v31 - v30;
  (*(v3 + 184))(v4, v3);
  if (v33)
  {
    sub_1BE4C63F8(v2, 1, 1, v39);
    sub_1BE544E30(v2, v32);

    sub_1BE4E4348(v2, &qword_1EBDAD3D8, &qword_1BE551AA0);
  }

  else
  {
    sub_1BE54C68C();
    sub_1BE54C67C();
    LLMProvider.localizedAttributionDisplayName()();
    sub_1BE54C66C();

    sub_1BE54C67C();
    sub_1BE54C6AC();
    if (qword_1EDDD63E8 != -1)
    {
      sub_1BE5469DC();
    }

    v34 = sub_1BE4C52BC(v6, qword_1EDDD7048);
    (*(v38 + 16))(v13, v34, v6);
    sub_1BE54AF2C();
    sub_1BE54ADBC();
  }

  v35 = sub_1BE54C72C();
  result._object = v36;
  result._countAndFlagsBits = v35;
  return result;
}

uint64_t LLMProvider.id.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))();
  v2 = sub_1BE54C74C();

  return v2;
}

uint64_t sub_1BE543DBC()
{
  if (qword_1EDDD6890 != -1)
  {
    swift_once();
  }

  sub_1BE53CA80(&v7);
  if (v8)
  {
    sub_1BE4BF094(&v7, v9);
    v1 = v10;
    v2 = v11;
    sub_1BE4C52F4(v9, v10);
    if ((*(v2 + 8))(v1, v2) == *(v0 + 16) && v3 == *(v0 + 24))
    {
      v5 = 1;
    }

    else
    {
      v5 = sub_1BE54CCDC();
    }

    sub_1BE4C58A8(v9);
  }

  else
  {
    sub_1BE4E4348(&v7, &qword_1EBDABAF8, &qword_1BE54DC20);
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t LLMProvider.isEnabled.getter(uint64_t a1, uint64_t a2)
{
  if (qword_1EDDD6890 != -1)
  {
    sub_1BE5469C8();
    swift_once();
  }

  sub_1BE53CA80(&v13);
  if (v14)
  {
    sub_1BE4BF094(&v13, v15);
    v4 = v16;
    v5 = v17;
    sub_1BE4C52F4(v15, v16);
    v6 = (*(v5 + 8))(v4, v5);
    v8 = v7;
    if (v6 == (*(a2 + 8))(a1, a2) && v8 == v9)
    {
      v11 = 1;
    }

    else
    {
      v11 = sub_1BE54CCDC();
    }

    sub_1BE4C58A8(v15);
  }

  else
  {
    sub_1BE4E4348(&v13, &qword_1EBDABAF8, &qword_1BE54DC20);
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t LLMProvider.enablementCount.getter()
{
  type metadata accessor for GenerativePartnerServiceUserDefaults();
  v0 = sub_1BE546A8C();
  v2 = v1(v0);
  v4 = sub_1BE53FFBC(v2, v3);

  return v4;
}

uint64_t LLMProvider.enablementCount.setter(uint64_t a1)
{
  type metadata accessor for GenerativePartnerServiceUserDefaults();
  v2 = sub_1BE546A8C();
  v4 = v3(v2);
  sub_1BE53FFC0(a1, v4, v5);
}

uint64_t (*sub_1BE544180(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  v6 = sub_1BE508994(0x28uLL);
  *a1 = v6;
  v6[4] = LLMProvider.enablementCount.modify(v6, a2, a3);
  return sub_1BE5441F4;
}

uint64_t (*LLMProvider.enablementCount.modify(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t *a1)
{
  a1[2] = a3;
  a1[3] = v3;
  a1[1] = a2;
  *a1 = LLMProvider.enablementCount.getter();
  return sub_1BE54424C;
}

uint64_t sub_1BE54424C(uint64_t *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = a1[1];
  return LLMProvider.enablementCount.setter(*a1);
}

uint64_t sub_1BE544294(void (*a1)(uint64_t *__return_ptr))
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  if (qword_1EDDD6890 != -1)
  {
    sub_1BE5469C8();
    swift_once();
  }

  a1(v13);
  if (v14)
  {
    sub_1BE4C52F4(v13, v14);
    v5 = sub_1BE546A4C();
    v7 = v6(v5);
    v9 = v8;
    sub_1BE4C58A8(v13);
    if (v3 == v7 && v4 == v9)
    {

      v11 = 1;
    }

    else
    {
      v11 = sub_1BE54CCDC();
    }
  }

  else
  {
    sub_1BE4E4348(v13, &qword_1EBDABAF8, &qword_1BE54DC20);
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_1BE5443BC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr))
{
  v4 = (*(a2 + 8))();
  v6 = v5;
  if (qword_1EDDD6890 != -1)
  {
    sub_1BE5469C8();
    swift_once();
  }

  a3(v15);
  if (v16)
  {
    sub_1BE4C52F4(v15, v16);
    v7 = sub_1BE546A4C();
    v9 = v8(v7);
    v11 = v10;
    sub_1BE4C58A8(v15);
    if (v4 == v9 && v6 == v11)
    {

      v13 = 1;
    }

    else
    {
      v13 = sub_1BE54CCDC();
    }
  }

  else
  {
    sub_1BE4E4348(v15, &qword_1EBDABAF8, &qword_1BE54DC20);

    v13 = 0;
  }

  return v13 & 1;
}

id sub_1BE544508()
{
  v1 = *(v0 + 40);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v0 + 32);
  sub_1BE538C8C();

  return sub_1BE544DC0(v2, v1);
}

id LLMProvider.icon.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 96))();
  if (!v3)
  {
    return 0;
  }

  v4 = v2;
  v5 = v3;
  sub_1BE538C8C();
  return sub_1BE544DC0(v4, v5);
}

uint64_t sub_1BE5445DC@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDDD6890 != -1)
  {
    swift_once();
  }

  return sub_1BE53D160(*(v1 + 16), *(v1 + 24), a1);
}

uint64_t LLMProvider.modelBundle()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (qword_1EDDD6890 != -1)
  {
    sub_1BE5469C8();
    swift_once();
  }

  v6 = (*(a2 + 8))(a1, a2);
  sub_1BE53D160(v6, v7, a3);
}

uint64_t (*sub_1BE544800(void *a1, uint64_t a2, uint64_t a3))()
{
  v6 = sub_1BE508994(0x28uLL);
  *a1 = v6;
  v6[4] = LLMProvider.useConfirmationPrompts.modify(v6, a2, a3);
  return sub_1BE5469B8;
}

void sub_1BE544874(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void (*LLMProvider.useConfirmationPrompts.modify(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  *(a1 + 8) = a3;
  *(a1 + 16) = v3;
  *a1 = a2;
  *(a1 + 24) = LLMProvider.useConfirmationPrompts.getter() & 1;
  return sub_1BE54490C;
}

uint64_t sub_1BE544978()
{
  sub_1BE54CADC();
  MEMORY[0x1BFB47CA0](0xD000000000000046, 0x80000001BE555EA0);
  MEMORY[0x1BFB47CA0](*(v0 + 16), *(v0 + 24));
  sub_1BE54AE1C();
}

uint64_t LLMProvider.partnerSettingsPageDeepLink.getter()
{
  sub_1BE546A04();
  sub_1BE54CADC();
  MEMORY[0x1BFB47CA0](0xD000000000000046, 0x80000001BE555EA0);
  v0 = sub_1BE546A34();
  v2 = v1(v0);
  MEMORY[0x1BFB47CA0](v2);

  sub_1BE54AE1C();
}

uint64_t sub_1BE544ACC()
{
  sub_1BE54CADC();
  MEMORY[0x1BFB47CA0](0xD00000000000005BLL, 0x80000001BE555EF0);
  MEMORY[0x1BFB47CA0](*(v0 + 16), *(v0 + 24));
  sub_1BE54AE1C();
}

uint64_t LLMProvider.partnerSignInPageDeepLink.getter()
{
  sub_1BE546A04();
  sub_1BE54CADC();
  MEMORY[0x1BFB47CA0](0xD00000000000005BLL, 0x80000001BE555EF0);
  v0 = sub_1BE546A34();
  v2 = v1(v0);
  MEMORY[0x1BFB47CA0](v2);

  sub_1BE54AE1C();
}

uint64_t LLMProvider.termsURL.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE54AE3C();

  return sub_1BE4C63F8(a1, 1, 1, v2);
}

uint64_t sub_1BE544D14@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v4 = *(a1 + a2 - 16);
  v5 = *(a1 + a2 - 8);
  result = LLMProvider.enablementCount.getter();
  *a3 = result;
  return result;
}

uint64_t sub_1BE544D48(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  return LLMProvider.enablementCount.setter(*a1);
}

uint64_t sub_1BE544D78@<X0>(_BYTE *a1@<X8>)
{
  result = LLMProvider.useConfirmationPrompts.getter();
  *a1 = result & 1;
  return result;
}

id sub_1BE544DC0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_1BE54C6DC();
  }

  else
  {
    v2 = 0;
  }

  v3 = [swift_getObjCClassFromMetadata() _systemImageNamed_];

  return v3;
}

uint64_t sub_1BE544E30@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v33 = a1;
  v34 = a2;
  v2 = sub_1BE54AD8C();
  v3 = sub_1BE4C7500(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1BE4C757C();
  v10 = v9 - v8;
  v11 = sub_1BE4BF11C(&qword_1EBDAD3D8, &qword_1BE551AA0);
  sub_1BE4C7570(v11);
  v13 = *(v12 + 64);
  sub_1BE4FFC80();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v32 - v15;
  v17 = sub_1BE54AF6C();
  v18 = sub_1BE4C7500(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1BE4C757C();
  v25 = v24 - v23;
  v26 = sub_1BE54C6BC();
  v27 = sub_1BE4C7570(v26);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  sub_1BE4C757C();

  sub_1BE54C6CC();
  sub_1BE537FC8(v33, v16);
  if (sub_1BE4C63BC(v16, 1, v17) == 1)
  {
    sub_1BE54AF2C();
    if (sub_1BE4C63BC(v16, 1, v17) != 1)
    {
      sub_1BE4E4348(v16, &qword_1EBDAD3D8, &qword_1BE551AA0);
    }
  }

  else
  {
    (*(v20 + 32))(v25, v16, v17);
  }

  if (qword_1EDDD63E8 != -1)
  {
    sub_1BE5469DC();
  }

  v30 = sub_1BE4C52BC(v2, qword_1EDDD7048);
  (*(v5 + 16))(v10, v30, v2);
  return sub_1BE54ADBC();
}

uint64_t SignInAvailability.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_1BE4BF11C(&qword_1EBDAD498, &qword_1BE551EC0);
  sub_1BE4C7500(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1BE4FFC80();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v16 - v11;
  v13 = a1[4];
  sub_1BE4C52F4(a1, a1[3]);
  sub_1BE545304();
  sub_1BE54CDBC();
  if (!v2)
  {
    v17 = 0;
    v14 = sub_1BE54CC4C() & 1;
    (*(v7 + 8))(v12, v5);
    *a2 = v14;
  }

  return sub_1BE4C58A8(a1);
}

unint64_t sub_1BE545304()
{
  result = qword_1EDDD65C8[0];
  if (!qword_1EDDD65C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDD65C8);
  }

  return result;
}

unint64_t sub_1BE545358()
{
  result = qword_1EBDAD4A0;
  if (!qword_1EBDAD4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAD4A0);
  }

  return result;
}

uint64_t static SignInAvailability.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 >> 6)
  {
    if (v2 >> 6 == 1)
    {
      if ((v3 & 0xC0) != 0x40)
      {
        goto LABEL_9;
      }

      goto LABEL_6;
    }

    if (v3 == 128)
    {
      v4 = 1;
      return v4 & 1;
    }

LABEL_9:
    v4 = 0;
    return v4 & 1;
  }

  if (v3 >= 0x40)
  {
    goto LABEL_9;
  }

LABEL_6:
  v4 = v3 ^ v2 ^ 1;
  return v4 & 1;
}

uint64_t sub_1BE545404(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x704F6E496E676973 && a2 == 0xEE006C616E6F6974;
  if (v4 || (sub_1BE54CCDC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x80000001BE5560B0 == a2;
    if (v6 || (sub_1BE54CCDC() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x65526E496E676973 && a2 == 0xEE00646572697571)
    {

      return 2;
    }

    else
    {
      v8 = sub_1BE54CCDC();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1BE545540(char a1)
{
  if (!a1)
  {
    return 0x704F6E496E676973;
  }

  if (a1 == 1)
  {
    return 0xD000000000000011;
  }

  return 0x65526E496E676973;
}

uint64_t sub_1BE5455BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BE545404(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BE545604@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BE54552C();
  *a1 = result;
  return result;
}

uint64_t sub_1BE54562C(uint64_t a1)
{
  v2 = sub_1BE545304();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BE545668(uint64_t a1)
{
  v2 = sub_1BE545304();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BE5456C4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000001FLL && 0x80000001BE5560D0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1BE54CCDC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1BE545760@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BE4DA290();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1BE54578C(uint64_t a1)
{
  v2 = sub_1BE545D40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BE5457C8(uint64_t a1)
{
  v2 = sub_1BE545D40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BE545808@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BE5456A4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1BE545834(uint64_t a1)
{
  v2 = sub_1BE545C98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BE545870(uint64_t a1)
{
  v2 = sub_1BE545C98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BE5458AC(uint64_t a1)
{
  v2 = sub_1BE545CEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BE5458E8(uint64_t a1)
{
  v2 = sub_1BE545CEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SignInAvailability.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1BE4BF11C(&qword_1EBDAD4A8, &qword_1BE551EC8);
  v6 = sub_1BE4C7500(v5);
  v43 = v7;
  v44 = v6;
  v9 = *(v8 + 64);
  sub_1BE4FFC80();
  MEMORY[0x1EEE9AC00](v10);
  v41 = &v38 - v11;
  v42 = sub_1BE4BF11C(&qword_1EBDAD4B0, &qword_1BE551ED0);
  sub_1BE4C7500(v42);
  v40 = v12;
  v14 = *(v13 + 64);
  sub_1BE4FFC80();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v38 - v16;
  v18 = sub_1BE4BF11C(&qword_1EBDAD4B8, &qword_1BE551ED8);
  v19 = sub_1BE4C7500(v18);
  v38 = v20;
  v39 = v19;
  v22 = *(v21 + 64);
  sub_1BE4FFC80();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v38 - v24;
  v26 = sub_1BE4BF11C(&qword_1EBDAD4C0, &qword_1BE551EE0);
  sub_1BE4C7500(v26);
  v28 = v27;
  v30 = *(v29 + 64);
  sub_1BE4FFC80();
  MEMORY[0x1EEE9AC00](v31);
  sub_1BE546A24();
  v32 = *v3;
  v33 = a1[4];
  sub_1BE4C52F4(a1, a1[3]);
  sub_1BE545304();
  sub_1BE54CDCC();
  if (!(v32 >> 6))
  {
    v45 = 0;
    sub_1BE545D40();
    sub_1BE546A70(&type metadata for SignInAvailability.SignInOptionalCodingKeys, &v45);
    v35 = v39;
    sub_1BE54CC8C();
    (*(v38 + 8))(v25, v35);
    return (*(v28 + 8))(v2, v26);
  }

  if (v32 >> 6 == 1)
  {
    v46 = 1;
    sub_1BE545CEC();
    sub_1BE546A70(&type metadata for SignInAvailability.SignInUnavailableCodingKeys, &v46);
    v34 = v42;
    sub_1BE54CC8C();
    (*(v40 + 8))(v17, v34);
    return (*(v28 + 8))(v2, v26);
  }

  v47 = 2;
  sub_1BE545C98();
  v37 = v41;
  sub_1BE546A70(&type metadata for SignInAvailability.SignInRequiredCodingKeys, &v47);
  (*(v43 + 8))(v37, v44);
  return (*(v28 + 8))(v2, v26);
}

unint64_t sub_1BE545C98()
{
  result = qword_1EBDAD4C8;
  if (!qword_1EBDAD4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAD4C8);
  }

  return result;
}

unint64_t sub_1BE545CEC()
{
  result = qword_1EBDAD4D0;
  if (!qword_1EBDAD4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAD4D0);
  }

  return result;
}

unint64_t sub_1BE545D40()
{
  result = qword_1EBDAD4D8;
  if (!qword_1EBDAD4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAD4D8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SignInAvailability(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return v5 + 1;
  }

  if (a2 >= 0x7E)
  {
    if (a2 + 130 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 130) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 131;
    return v5 + 1;
  }

LABEL_17:
  v5 = ((*a1 >> 6) & 0xFFFFFF83 | (4 * ((*a1 >> 1) & 0x1F))) ^ 0x7F;
  if (v5 >= 0x7D)
  {
    v5 = -1;
  }

  return v5 + 1;
}

_BYTE *storeEnumTagSinglePayload for SignInAvailability(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 130 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 130) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x7E)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x7D)
  {
    v6 = ((a2 - 126) >> 8) + 1;
    *result = a2 - 126;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1BE5461A4(_BYTE *a1)
{
  v1 = *a1;
  if (v1 >= 0)
  {
    return *a1 >> 6;
  }

  else
  {
    return v1 & 1 | 2u;
  }
}

_BYTE *sub_1BE5461D0(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *result & 1 | (a2 << 6);
  }

  else
  {
    v2 = a2 & 1 | 0x80;
  }

  *result = v2;
  return result;
}

_BYTE *sub_1BE546214(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1BE5462D0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BE546310(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SignInAvailability.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1BE546438()
{
  result = qword_1EBDAD4E0;
  if (!qword_1EBDAD4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAD4E0);
  }

  return result;
}

unint64_t sub_1BE546490()
{
  result = qword_1EBDAD4E8;
  if (!qword_1EBDAD4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAD4E8);
  }

  return result;
}

unint64_t sub_1BE5464E8()
{
  result = qword_1EBDAD4F0;
  if (!qword_1EBDAD4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAD4F0);
  }

  return result;
}

unint64_t sub_1BE546540()
{
  result = qword_1EBDAD4F8;
  if (!qword_1EBDAD4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAD4F8);
  }

  return result;
}

unint64_t sub_1BE546598()
{
  result = qword_1EBDAD500;
  if (!qword_1EBDAD500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAD500);
  }

  return result;
}

unint64_t sub_1BE5465F0()
{
  result = qword_1EBDAD508;
  if (!qword_1EBDAD508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAD508);
  }

  return result;
}

unint64_t sub_1BE546648()
{
  result = qword_1EBDAD510;
  if (!qword_1EBDAD510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAD510);
  }

  return result;
}

unint64_t sub_1BE5466A0()
{
  result = qword_1EBDAD518;
  if (!qword_1EBDAD518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAD518);
  }

  return result;
}

unint64_t sub_1BE5466F8()
{
  result = qword_1EBDAD520;
  if (!qword_1EBDAD520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAD520);
  }

  return result;
}

unint64_t sub_1BE546750()
{
  result = qword_1EDDD65B8;
  if (!qword_1EDDD65B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDD65B8);
  }

  return result;
}

unint64_t sub_1BE5467A8()
{
  result = qword_1EDDD65C0;
  if (!qword_1EDDD65C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDD65C0);
  }

  return result;
}

uint64_t (*sub_1BE546808(uint64_t *a1))(uint64_t *a1)
{
  v3 = type metadata accessor for GenerativePartnerServiceUserDefaults();
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  *a1 = sub_1BE53FFBC(v4, v5);
  return sub_1BE546868;
}

void (*sub_1BE546918(uint64_t a1))(uint64_t *a1)
{
  *a1 = type metadata accessor for GenerativePartnerServiceUserDefaults();
  *(a1 + 8) = sub_1BE53EAA8() & 1;
  return sub_1BE546970;
}

uint64_t sub_1BE5469DC()
{

  return swift_once();
}

uint64_t sub_1BE546A70(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x1EEE6AD70](a1, a2, v2, a1);
}

uint64_t sub_1BE546AA0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x80000001BE5560F0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1BE54CCDC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1BE546B40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BE546AA0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1BE546B6C(uint64_t a1)
{
  v2 = sub_1BE546D10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BE546BA8(uint64_t a1)
{
  v2 = sub_1BE546D10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LLMProviderInternalConfig.encode(to:)(void *a1)
{
  v4 = sub_1BE4BF11C(&qword_1EBDAD528, &qword_1BE552460);
  v5 = sub_1BE547160(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v16 - v10;
  v12 = *v1;
  v13 = v1[1];
  v14 = a1[4];
  sub_1BE4C52F4(a1, a1[3]);
  sub_1BE546D10();
  sub_1BE54CDCC();
  sub_1BE54CC7C();
  return (*(v7 + 8))(v11, v2);
}

unint64_t sub_1BE546D10()
{
  result = qword_1EDDD65A8;
  if (!qword_1EDDD65A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDD65A8);
  }

  return result;
}

uint64_t LLMProviderInternalConfig.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = sub_1BE4BF11C(&qword_1EBDAD530, &qword_1BE552468);
  v7 = sub_1BE547160(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v13 = &v19 - v12;
  v14 = a1[4];
  sub_1BE4C52F4(a1, a1[3]);
  sub_1BE546D10();
  sub_1BE54CDBC();
  if (!v2)
  {
    v15 = sub_1BE54CC1C();
    v17 = v16;
    (*(v9 + 8))(v13, v3);
    *a2 = v15;
    a2[1] = v17;
  }

  return sub_1BE4C58A8(a1);
}

uint64_t sub_1BE546EF8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BE546F4C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LLMProviderInternalConfig.CodingKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1BE54705C()
{
  result = qword_1EBDAD538;
  if (!qword_1EBDAD538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAD538);
  }

  return result;
}

unint64_t sub_1BE5470B4()
{
  result = qword_1EDDD6598;
  if (!qword_1EDDD6598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDD6598);
  }

  return result;
}

unint64_t sub_1BE54710C()
{
  result = qword_1EDDD65A0;
  if (!qword_1EDDD65A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDD65A0);
  }

  return result;
}

uint64_t ProviderDeclarations.provider(id:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = result;
  v7 = 0;
  v8 = *(v3 + 8);
  v9 = *(v8 + 16);
  for (i = v8 + 32; ; i += 40)
  {
    if (v9 == v7)
    {
      *(a3 + 32) = 0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }

    if (v7 >= *(v8 + 16))
    {
      break;
    }

    sub_1BE4C6918(i, &v16);
    v11 = v17;
    v12 = v18;
    sub_1BE4C52F4(&v16, v17);
    if ((*(v12 + 8))(v11, v12) == v5 && v13 == a2)
    {

      return sub_1BE4BF094(&v16, a3);
    }

    v15 = sub_1BE54CCDC();

    if (v15)
    {
      return sub_1BE4BF094(&v16, a3);
    }

    result = sub_1BE4C58A8(&v16);
    ++v7;
  }

  __break(1u);
  return result;
}

BOOL sub_1BE54729C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

uint64_t sub_1BE54734C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v21 = a1;
  v22 = a2;
  v2 = sub_1BE54AD8C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE4BF11C(&qword_1EBDAD3D8, &qword_1BE551AA0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v20 - v9;
  v11 = sub_1BE54AF6C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1BE54C6BC();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);

  sub_1BE54C6CC();
  sub_1BE549810(v21, v10, &qword_1EBDAD3D8, &qword_1BE551AA0);
  if (sub_1BE4C63BC(v10, 1, v11) == 1)
  {
    sub_1BE54AF2C();
    if (sub_1BE4C63BC(v10, 1, v11) != 1)
    {
      sub_1BE4D0E58(v10, &qword_1EBDAD3D8, &qword_1BE551AA0);
    }
  }

  else
  {
    (*(v12 + 32))(v15, v10, v11);
  }

  if (qword_1EDDD63E8 != -1)
  {
    swift_once();
  }

  v18 = sub_1BE4C52BC(v2, qword_1EDDD7048);
  (*(v3 + 16))(v6, v18, v2);
  return sub_1BE54ADBC();
}

Swift::String __swiftcall DecodedLLMProvider.localizedDisplayName()()
{
  v2 = sub_1BE54ADAC();
  v3 = sub_1BE4C7570(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1BE4C757C();
  v8 = v7 - v6;
  v9 = sub_1BE4BF11C(&qword_1EBDAD3D8, &qword_1BE551AA0);
  v10 = sub_1BE4C7570(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1BE54A73C();
  v13 = sub_1BE54AF6C();
  sub_1BE4C63F8(v1, 1, 1, v13);
  v14 = *v0;
  v15 = v0[1];
  sub_1BE54734C(v1, v8);
  sub_1BE54C72C();
  sub_1BE4D0E58(v1, &qword_1EBDAD3D8, &qword_1BE551AA0);
  v16 = sub_1BE4D9800();
  result._object = v17;
  result._countAndFlagsBits = v16;
  return result;
}

uint64_t DecodedLLMProvider.localizedDisplayName(locale:)()
{
  sub_1BE4D97A4();
  v2 = sub_1BE54ADAC();
  v3 = sub_1BE4C7570(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1BE4C757C();
  v6 = *v1;
  v7 = v1[1];
  sub_1BE54734C(v0, v9 - v8);
  return sub_1BE54C72C();
}

uint64_t DecodedLLMProvider.id.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return sub_1BE4D9800();
}

uint64_t DecodedLLMProvider.id.setter()
{
  sub_1BE525E18();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t DecodedLLMProvider.iconSymbolName.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return sub_1BE4D9800();
}

uint64_t DecodedLLMProvider.iconSymbolName.setter()
{
  sub_1BE525E18();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t DecodedLLMProvider.availabilityIdentifier.getter()
{
  v2 = *(sub_1BE54A724() + 28);
  v3 = sub_1BE54B05C();
  v4 = sub_1BE4C7470(v3);
  v6 = *(v5 + 16);

  return v6(v0, v1 + v2, v4);
}

uint64_t type metadata accessor for DecodedLLMProvider()
{
  result = qword_1EDDD6680;
  if (!qword_1EDDD6680)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DecodedLLMProvider.availabilityIdentifier.setter()
{
  sub_1BE4D97A4();
  v2 = *(type metadata accessor for DecodedLLMProvider() + 28);
  v3 = sub_1BE54B05C();
  sub_1BE4C7470(v3);
  v5 = *(v4 + 40);

  return v5(v1 + v2, v0);
}

uint64_t DecodedLLMProvider.availabilityIdentifier.modify()
{
  sub_1BE4D97A4();
  v0 = *(type metadata accessor for DecodedLLMProvider() + 28);
  return sub_1BE4D9850();
}

uint64_t DecodedLLMProvider.termsURL.setter()
{
  sub_1BE4D97A4();
  v2 = v1 + *(type metadata accessor for DecodedLLMProvider() + 32);

  return sub_1BE547AA0(v0, v2);
}

uint64_t sub_1BE547AA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE4BF11C(&qword_1EBDABEE8, &unk_1BE54F050);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t DecodedLLMProvider.termsURL.modify()
{
  sub_1BE4D97A4();
  v0 = *(type metadata accessor for DecodedLLMProvider() + 32);
  return sub_1BE4D9850();
}

uint64_t DecodedLLMProvider.termsTitle.getter()
{
  v0 = type metadata accessor for DecodedLLMProvider();
  sub_1BE54A6B4(*(v0 + 36));
  return sub_1BE4D9800();
}

uint64_t DecodedLLMProvider.termsTitle.setter()
{
  sub_1BE525E18();
  v3 = type metadata accessor for DecodedLLMProvider();
  result = sub_1BE54A750(*(v3 + 36));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t DecodedLLMProvider.termsTitle.modify()
{
  sub_1BE4D97A4();
  v0 = *(type metadata accessor for DecodedLLMProvider() + 36);
  return sub_1BE4D9850();
}

uint64_t DecodedLLMProvider.reportURL.setter()
{
  sub_1BE4D97A4();
  v2 = v1 + *(type metadata accessor for DecodedLLMProvider() + 40);

  return sub_1BE547AA0(v0, v2);
}

uint64_t DecodedLLMProvider.reportURL.modify()
{
  sub_1BE4D97A4();
  v0 = *(type metadata accessor for DecodedLLMProvider() + 40);
  return sub_1BE4D9850();
}

uint64_t DecodedLLMProvider.attributionDisplayName.getter()
{
  v0 = type metadata accessor for DecodedLLMProvider();
  sub_1BE54A6B4(*(v0 + 44));
  return sub_1BE4D9800();
}

uint64_t DecodedLLMProvider.attributionDisplayName.setter()
{
  sub_1BE525E18();
  v3 = type metadata accessor for DecodedLLMProvider();
  result = sub_1BE54A750(*(v3 + 44));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t DecodedLLMProvider.attributionDisplayName.modify()
{
  sub_1BE4D97A4();
  v0 = *(type metadata accessor for DecodedLLMProvider() + 44);
  return sub_1BE4D9850();
}

uint64_t DecodedLLMProvider.associatedAppBundleIdentifier.getter()
{
  v0 = type metadata accessor for DecodedLLMProvider();
  sub_1BE54A6B4(*(v0 + 48));
  return sub_1BE4D9800();
}

uint64_t DecodedLLMProvider.associatedAppBundleIdentifier.setter()
{
  sub_1BE525E18();
  v3 = type metadata accessor for DecodedLLMProvider();
  result = sub_1BE54A750(*(v3 + 48));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t DecodedLLMProvider.associatedAppBundleIdentifier.modify()
{
  sub_1BE4D97A4();
  v0 = *(type metadata accessor for DecodedLLMProvider() + 48);
  return sub_1BE4D9850();
}

uint64_t DecodedLLMProvider.signInAvailability.getter()
{
  result = sub_1BE54A724();
  *v0 = *(v1 + *(result + 52));
  return result;
}

uint64_t DecodedLLMProvider.signInAvailability.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for DecodedLLMProvider();
  *(v1 + *(result + 52)) = v2;
  return result;
}

uint64_t DecodedLLMProvider.signInAvailability.modify()
{
  sub_1BE4D97A4();
  v0 = *(type metadata accessor for DecodedLLMProvider() + 52);
  return sub_1BE4D9850();
}

uint64_t DecodedLLMProvider.capabilitiesForOnboardingDisplay.getter()
{
  v1 = *(v0 + *(type metadata accessor for DecodedLLMProvider() + 56));
}

uint64_t DecodedLLMProvider.capabilitiesForOnboardingDisplay.setter()
{
  sub_1BE4D97A4();
  v2 = *(type metadata accessor for DecodedLLMProvider() + 56);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t DecodedLLMProvider.capabilitiesForOnboardingDisplay.modify()
{
  sub_1BE4D97A4();
  v0 = *(type metadata accessor for DecodedLLMProvider() + 56);
  return sub_1BE4D9850();
}

uint64_t DecodedLLMProvider.feedbackPrefillQuestionModelMetadataString.getter()
{
  v0 = type metadata accessor for DecodedLLMProvider();
  sub_1BE54A6B4(*(v0 + 60));
  return sub_1BE4D9800();
}

uint64_t DecodedLLMProvider.feedbackPrefillQuestionModelMetadataString.setter()
{
  sub_1BE525E18();
  v3 = type metadata accessor for DecodedLLMProvider();
  result = sub_1BE54A750(*(v3 + 60));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t DecodedLLMProvider.feedbackPrefillQuestionModelMetadataString.modify()
{
  sub_1BE4D97A4();
  v0 = *(type metadata accessor for DecodedLLMProvider() + 60);
  return sub_1BE4D9850();
}

uint64_t DecodedLLMProvider.internalConfig.getter()
{
  v2 = (v1 + *(sub_1BE54A724() + 64));
  v3 = *v2;
  v4 = v2[1];
  *v0 = *v2;
  v0[1] = v4;

  return sub_1BE54804C(v3, v4);
}

uint64_t sub_1BE54804C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t DecodedLLMProvider.internalConfig.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + *(type metadata accessor for DecodedLLMProvider() + 64));
  result = sub_1BE5480A4(*v4, v4[1]);
  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t sub_1BE5480A4(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t DecodedLLMProvider.internalConfig.modify()
{
  sub_1BE4D97A4();
  v0 = *(type metadata accessor for DecodedLLMProvider() + 64);
  return sub_1BE4D9850();
}

uint64_t sub_1BE5480F8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1BE54CCDC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 25705 && a2 == 0xE200000000000000;
    if (v6 || (sub_1BE54CCDC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x626D79536E6F6369 && a2 == 0xEE00656D614E6C6FLL;
      if (v7 || (sub_1BE54CCDC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000016 && 0x80000001BE556110 == a2;
        if (v8 || (sub_1BE54CCDC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x4C5255736D726574 && a2 == 0xE800000000000000;
          if (v9 || (sub_1BE54CCDC() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x746954736D726574 && a2 == 0xEA0000000000656CLL;
            if (v10 || (sub_1BE54CCDC() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x525574726F706572 && a2 == 0xE90000000000004CLL;
              if (v11 || (sub_1BE54CCDC() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000016 && 0x80000001BE556130 == a2;
                if (v12 || (sub_1BE54CCDC() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD00000000000001DLL && 0x80000001BE556150 == a2;
                  if (v13 || (sub_1BE54CCDC() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000012 && 0x80000001BE556170 == a2;
                    if (v14 || (sub_1BE54CCDC() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000020 && 0x80000001BE556190 == a2;
                      if (v15 || (sub_1BE54CCDC() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD00000000000002ALL && 0x80000001BE5561C0 == a2;
                        if (v16 || (sub_1BE54CCDC() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x6C616E7265746E69 && a2 == 0xEE006769666E6F43;
                          if (v17 || (sub_1BE54CCDC() & 1) != 0)
                          {

                            return 12;
                          }

                          else if (a1 == 0x656972746E756F63 && a2 == 0xE900000000000073)
                          {

                            return 13;
                          }

                          else
                          {
                            v19 = sub_1BE54CCDC();

                            if (v19)
                            {
                              return 13;
                            }

                            else
                            {
                              return 14;
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1BE548544(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 25705;
      break;
    case 2:
      result = 0x626D79536E6F6369;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
      result = 0x4C5255736D726574;
      break;
    case 5:
      result = 0x746954736D726574;
      break;
    case 6:
      result = 0x525574726F706572;
      break;
    case 7:
      result = 0xD000000000000016;
      break;
    case 8:
      result = 0xD00000000000001DLL;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0xD000000000000020;
      break;
    case 11:
      result = 0xD00000000000002ALL;
      break;
    case 12:
      result = 0x6C616E7265746E69;
      break;
    case 13:
      result = 0x656972746E756F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BE5486F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BE5480F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BE54871C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BE54853C();
  *a1 = result;
  return result;
}

uint64_t sub_1BE548744(uint64_t a1)
{
  v2 = sub_1BE5490B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BE548780(uint64_t a1)
{
  v2 = sub_1BE5490B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DecodedLLMProvider.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v94 = a2;
  v4 = sub_1BE4BF11C(&qword_1EBDABEE8, &unk_1BE54F050);
  v5 = sub_1BE4C7570(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1BE4D981C();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v91 - v12;
  v14 = sub_1BE54B05C();
  v15 = sub_1BE4C7500(v14);
  v97 = v16;
  v98 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1BE4C757C();
  v21 = v20 - v19;
  v22 = sub_1BE4BF11C(&qword_1EBDAD540, &qword_1BE552620);
  v23 = sub_1BE4C7500(v22);
  v95 = v24;
  v96 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v23);
  sub_1BE54A73C();
  v27 = type metadata accessor for DecodedLLMProvider();
  v28 = sub_1BE4C7470(v27);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  sub_1BE4C757C();
  v33 = (v32 - v31);
  v35 = *(v34 + 32);
  v36 = sub_1BE54AE3C();
  v104 = v35;
  sub_1BE4C63F8(v33 + v35, 1, 1, v36);
  v103 = *(v27 + 40);
  sub_1BE4C63F8(v33 + v103, 1, 1, v36);
  v105 = v33;
  v106 = v27;
  v37 = (v33 + *(v27 + 64));
  v100 = a1;
  v101 = v37;
  *v37 = xmmword_1BE5518D0;
  v38 = a1[4];
  sub_1BE4C52F4(a1, a1[3]);
  sub_1BE5490B8();
  v39 = v102;
  sub_1BE54CDBC();
  if (v39)
  {
    v102 = v39;
    v45 = 0;
    v46 = 0;
    sub_1BE54A620();
    v99 = 0;
  }

  else
  {
    v40 = v21;
    v102 = v36;
    v41 = v13;
    v42 = v10;
    v43 = v95;
    LOBYTE(v107) = 0;
    v44 = sub_1BE54CC3C();
    v57 = v105;
    *v105 = v44;
    v57[1] = v58;
    LOBYTE(v107) = 1;
    v93 = v2;
    v45 = v43;
    v57[2] = sub_1BE54CC3C();
    v57[3] = v59;
    LOBYTE(v107) = 2;
    v57[4] = sub_1BE54CC1C();
    v57[5] = v60;
    v99 = v60;
    LOBYTE(v107) = 3;
    sub_1BE54A560(&qword_1EDDD66C8, MEMORY[0x1E69B2400]);
    v92 = v40;
    v61 = v98;
    sub_1BE54CC5C();
    (*(v97 + 32))(v57 + v106[7], v92, v61);
    LOBYTE(v107) = 4;
    sub_1BE54A560(&qword_1EDDD66D8, MEMORY[0x1E6968FB0]);
    sub_1BE54CC2C();
    v62 = v105;
    sub_1BE547AA0(v41, v105 + v104);
    sub_1BE54A670(5);
    v63 = sub_1BE54CC1C();
    v64 = (v62 + v106[9]);
    *v64 = v63;
    v64[1] = v65;
    LOBYTE(v107) = 6;
    sub_1BE54CC2C();
    sub_1BE547AA0(v42, v62 + v103);
    sub_1BE54A670(7);
    v66 = sub_1BE54CC3C();
    v67 = v105;
    v68 = (v105 + v106[11]);
    *v68 = v66;
    v68[1] = v69;
    LOBYTE(v107) = 8;
    v70 = sub_1BE54CC1C();
    v102 = 0;
    v72 = (v67 + v106[12]);
    *v72 = v70;
    v72[1] = v71;
    v109 = 9;
    sub_1BE54910C();
    v46 = v93;
    v73 = v102;
    sub_1BE54CC5C();
    v102 = v73;
    if (!v73)
    {
      *(v105 + v106[13]) = v107;
      sub_1BE4BF11C(&qword_1EBDAD490, &qword_1BE551DE8);
      v109 = 10;
      sub_1BE549160();
      sub_1BE54A684();
      v51 = 1;
      v102 = 0;
      *(v105 + v106[14]) = v107;
      sub_1BE54A670(11);
      v76 = v102;
      v77 = sub_1BE54CC3C();
      v102 = v76;
      if (v76)
      {
        v79 = sub_1BE54A630();
        v80(v79);
        v50 = 0;
      }

      else
      {
        v81 = (v105 + v106[15]);
        *v81 = v77;
        v81[1] = v78;
        v109 = 12;
        sub_1BE549238();
        v82 = v102;
        sub_1BE54CC2C();
        v102 = v82;
        if (!v82)
        {
          v84 = v107;
          v83 = v108;
          v85 = v101;
          sub_1BE5480A4(*v101, v101[1]);
          *v85 = v84;
          v85[1] = v83;
          sub_1BE4BF11C(&qword_1EBDAD080, qword_1BE550B60);
          v109 = 13;
          sub_1BE54928C();
          sub_1BE54A684();
          v102 = 0;
          v88 = sub_1BE54A630();
          v89(v88);
          v90 = v105;
          *(v105 + v106[17]) = v107;
          sub_1BE5338F0(v90, v94);
          sub_1BE4C58A8(v100);
          return sub_1BE533954(v90);
        }

        v86 = sub_1BE54A630();
        v87(v86);
        v50 = 1;
      }

      sub_1BE4C58A8(v100);
      LOBYTE(v46) = 1;
      LODWORD(v10) = 1;
      v47 = v105;
      v48 = v105[1];

      v52 = v106;
LABEL_5:
      v49 = v47[3];

      if ((v46 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v74 = sub_1BE54A630();
    v75(v74);
    sub_1BE54A640();
    LODWORD(v10) = 1;
  }

  v47 = v105;
  sub_1BE4C58A8(v100);
  v50 = 0;
  v51 = 0;
  v52 = v106;
  if (v45)
  {
    goto LABEL_5;
  }

  if (v46)
  {
LABEL_9:
    (*(v97 + 8))(v47 + v52[7], v98);
  }

LABEL_10:
  sub_1BE4D0E58(v47 + v104, &qword_1EBDABEE8, &unk_1BE54F050);

  sub_1BE4D0E58(v47 + v103, &qword_1EBDABEE8, &unk_1BE54F050);
  if (v10)
  {
    v53 = *(v47 + v52[11] + 8);
  }

  if (v51)
  {
    v54 = *(v47 + v52[14]);
  }

  if (v50)
  {
    v55 = *(v47 + v52[15] + 8);
  }

  return sub_1BE5480A4(*v101, v101[1]);
}

unint64_t sub_1BE5490B8()
{
  result = qword_1EDDD66A8;
  if (!qword_1EDDD66A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDD66A8);
  }

  return result;
}

unint64_t sub_1BE54910C()
{
  result = qword_1EDDD65B0;
  if (!qword_1EDDD65B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDD65B0);
  }

  return result;
}

unint64_t sub_1BE549160()
{
  result = qword_1EDDD6540;
  if (!qword_1EDDD6540)
  {
    sub_1BE4C5948(&qword_1EBDAD490, &qword_1BE551DE8);
    sub_1BE5491E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDD6540);
  }

  return result;
}

unint64_t sub_1BE5491E4()
{
  result = qword_1EDDD6578;
  if (!qword_1EDDD6578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDD6578);
  }

  return result;
}

unint64_t sub_1BE549238()
{
  result = qword_1EDDD6590;
  if (!qword_1EDDD6590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDD6590);
  }

  return result;
}

unint64_t sub_1BE54928C()
{
  result = qword_1EDDD6528;
  if (!qword_1EDDD6528)
  {
    sub_1BE4C5948(&qword_1EBDAD080, qword_1BE550B60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDD6528);
  }

  return result;
}

uint64_t sub_1BE549388()
{
  sub_1BE549544(319, &qword_1EDDD6558, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    v3 = sub_1BE54B05C();
    if (v4 > 0x3F)
    {
      return v3;
    }

    sub_1BE524E50();
    if (v5 > 0x3F)
    {
      return v3;
    }

    else
    {
      sub_1BE549544(319, &qword_1EDDD6548, &type metadata for LLMCapabilityForOnboardingDisplay, MEMORY[0x1E69E62F8]);
      v1 = v6;
      if (v7 <= 0x3F)
      {
        sub_1BE549544(319, &qword_1EDDD6588, &type metadata for LLMProviderInternalConfig, MEMORY[0x1E69E6720]);
        v1 = v8;
        if (v9 <= 0x3F)
        {
          sub_1BE549544(319, &qword_1EDDD6538, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
          v1 = v10;
          if (v11 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v1;
}

void sub_1BE549544(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for DecodedLLMProvider.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF3)
  {
    if (a2 + 13 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 13) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 14;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v5 = v6 - 14;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DecodedLLMProvider.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF2)
  {
    v6 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 13;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1BE54970C()
{
  result = qword_1EBDAD548;
  if (!qword_1EBDAD548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAD548);
  }

  return result;
}

unint64_t sub_1BE549764()
{
  result = qword_1EDDD6698;
  if (!qword_1EDDD6698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDD6698);
  }

  return result;
}

unint64_t sub_1BE5497BC()
{
  result = qword_1EDDD66A0;
  if (!qword_1EDDD66A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDD66A0);
  }

  return result;
}

uint64_t sub_1BE549810(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_1BE4BF11C(a3, a4);
  sub_1BE4C7470(v5);
  v7 = *(v6 + 16);
  v8 = sub_1BE4D9800();
  v9(v8);
  return a2;
}

uint64_t sub_1BE54986C()
{
  v0 = sub_1BE54AE3C();
  v1 = sub_1BE4C7500(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  sub_1BE4D981C();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v34 - v10;
  type metadata accessor for GenerativePartnerServiceProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = objc_opt_self();
  v14 = [v13 bundleForClass_];
  v15 = sub_1BE54A350(0xD000000000000014, 0x80000001BE5526E0, 0x7473696C70, 0xE500000000000000, v14);

  if (v15)
  {
    sub_1BE54AE0C();

    (*(v3 + 32))(v11, v8, v0);
    v16 = sub_1BE54AD6C();
    v17 = *(v16 + 48);
    v18 = *(v16 + 52);
    swift_allocObject();
    sub_1BE54AD5C();
    v19 = sub_1BE54AE4C();
    v21 = v20;
    sub_1BE4BF11C(&qword_1EBDAD550, &unk_1BE552830);
    sub_1BE54A4AC();
    sub_1BE54AD4C();
    v28 = v34;
    if (qword_1EDDD6560 != -1)
    {
      sub_1BE54A600();
    }

    v30 = sub_1BE54B2EC();
    sub_1BE4C52BC(v30, qword_1EDDD7060);

    v31 = sub_1BE54B2BC();
    v32 = sub_1BE54C97C();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 134349056;
      *(v33 + 4) = *(v28 + 16);

      _os_log_impl(&dword_1BE4B8000, v31, v32, "Loaded %{public}ld providers", v33, 0xCu);
      sub_1BE4C75DC();
      sub_1BE54A5A8(v19, v21);
    }

    else
    {
      sub_1BE54A5A8(v19, v21);
    }

    (*(v3 + 8))(v11, v0);
  }

  else
  {
    if (qword_1EDDD6560 != -1)
    {
      sub_1BE54A600();
    }

    v22 = sub_1BE54B2EC();
    sub_1BE4C52BC(v22, qword_1EDDD7060);
    v23 = sub_1BE54B2BC();
    v24 = sub_1BE54C98C();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138543362;
      v27 = [v13 bundleForClass_];
      *(v25 + 4) = v27;
      *v26 = v27;
      _os_log_impl(&dword_1BE4B8000, v23, v24, "Did not find any provider declarations in bundle: %{public}@", v25, 0xCu);
      sub_1BE4D0E58(v26, &qword_1EBDAC2F0, &qword_1BE54F880);
      sub_1BE4C75DC();
      sub_1BE4C75DC();
    }

    return MEMORY[0x1E69E7CC0];
  }

  return v28;
}

uint64_t sub_1BE549D98(uint64_t a1, int a2)
{
  v77 = type metadata accessor for DecodedLLMProvider();
  v4 = sub_1BE4C7500(v77);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1BE4D981C();
  v11 = v9 - v10;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v75 = &v72[-v14];
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v72[-v16];
  v18 = MEMORY[0x1EEE9AC00](v15);
  v74 = &v72[-v19];
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v72[-v20];
  v73 = a2;
  v22 = a1;
  if (a2)
  {
    v23 = 0;
    v24 = *(a1 + 16);
    v76 = MEMORY[0x1E69E7CC0];
    while (v24 != v23)
    {
      v25 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v26 = *(v6 + 72);
      sub_1BE5338F0(a1 + v25 + v26 * v23, v21);
      v27 = *&v21[*(v77 + 68)];
      sub_1BE54A6E8();
      MEMORY[0x1EEE9AC00](v28);
      sub_1BE54A6D0();
      if (sub_1BE54729C(sub_1BE4E1F30, v29, v30))
      {
        sub_1BE54A3E4(v21, v74);
        v31 = v76;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v79 = v31;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1BE54A700();
          v31 = v79;
        }

        v34 = *(v31 + 2);
        v33 = *(v31 + 3);
        v35 = (v34 + 1);
        if (v34 >= v33 >> 1)
        {
          v75 = *(v31 + 2);
          v76 = (v34 + 1);
          sub_1BE52B7E8(v33 > 1, v34 + 1, 1);
          v34 = v75;
          v35 = v76;
          v31 = v79;
        }

        ++v23;
        *(v31 + 2) = v35;
        v76 = v31;
        sub_1BE54A3E4(v74, &v31[v25 + v34 * v26]);
        a1 = v22;
      }

      else
      {
        sub_1BE533954(v21);
        ++v23;
        a1 = v22;
      }
    }
  }

  else
  {
    v36 = 0;
    v37 = *(a1 + 16);
    v76 = MEMORY[0x1E69E7CC0];
    while (v37 != v36)
    {
      v38 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v39 = *(v6 + 72);
      sub_1BE5338F0(a1 + v38 + v39 * v36, v17);
      v40 = *&v17[*(v77 + 68)];
      sub_1BE54A6E8();
      MEMORY[0x1EEE9AC00](v41);
      sub_1BE54A6D0();
      if (sub_1BE54729C(sub_1BE4E1F04, v42, v43))
      {
        sub_1BE533954(v17);
        ++v36;
        a1 = v22;
      }

      else
      {
        sub_1BE54A3E4(v17, v75);
        v44 = v76;
        v45 = swift_isUniquelyReferenced_nonNull_native();
        v79 = v44;
        if ((v45 & 1) == 0)
        {
          sub_1BE54A700();
          v44 = v79;
        }

        v47 = *(v44 + 2);
        v46 = *(v44 + 3);
        v48 = (v47 + 1);
        if (v47 >= v46 >> 1)
        {
          v76 = (v47 + 1);
          v74 = v47;
          sub_1BE52B7E8(v46 > 1, v47 + 1, 1);
          v48 = v76;
          v47 = v74;
          v44 = v79;
        }

        ++v36;
        *(v44 + 2) = v48;
        v76 = v44;
        sub_1BE54A3E4(v75, &v44[v38 + v47 * v39]);
        a1 = v22;
      }
    }
  }

  v49 = v76;
  v50 = *(v76 + 2);
  v51 = MEMORY[0x1E69E7CC0];
  if (v50)
  {
    v78 = MEMORY[0x1E69E7CC0];
    sub_1BE52B7C8(0, v50, 0);
    v51 = v78;
    v52 = &v49[(*(v6 + 80) + 32) & ~*(v6 + 80)];
    v53 = *(v6 + 72);
    do
    {
      sub_1BE5338F0(v52, v11);
      v55 = *(v11 + 16);
      v54 = *(v11 + 24);

      sub_1BE533954(v11);
      v78 = v51;
      v57 = *(v51 + 16);
      v56 = *(v51 + 24);
      if (v57 >= v56 >> 1)
      {
        sub_1BE52B7C8(v56 > 1, v57 + 1, 1);
        v51 = v78;
      }

      *(v51 + 16) = v57 + 1;
      v58 = v51 + 16 * v57;
      *(v58 + 32) = v55;
      *(v58 + 40) = v54;
      v52 += v53;
      --v50;
    }

    while (v50);
  }

  v78 = v51;
  sub_1BE4BF11C(&qword_1EBDAD080, qword_1BE550B60);
  sub_1BE54A448();
  v59 = sub_1BE54C63C();
  v61 = v60;

  if (qword_1EDDD6560 != -1)
  {
    sub_1BE54A600();
  }

  v62 = sub_1BE54B2EC();
  sub_1BE4C52BC(v62, qword_1EDDD7060);

  v63 = sub_1BE54B2BC();
  v64 = sub_1BE54C97C();

  v65 = os_log_type_enabled(v63, v64);
  v66 = v76;
  if (v65)
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v78 = v68;
    *v67 = 67240450;
    *(v67 + 4) = v73 & 1;
    *(v67 + 8) = 2082;
    v69 = sub_1BE4C5338(v59, v61, &v78);

    *(v67 + 10) = v69;
    _os_log_impl(&dword_1BE4B8000, v63, v64, "Returning available providers filtered by .isChina=%{BOOL,public}d: %{public}s", v67, 0x12u);
    sub_1BE4C58A8(v68);
    sub_1BE4C75DC();
    sub_1BE4C75DC();
  }

  else
  {
  }

  v70 = sub_1BE52DF88(v66);

  return v70;
}

id sub_1BE54A350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_1BE54C6DC();

  v7 = sub_1BE54C6DC();

  v8 = [a5 URLForResource:v6 withExtension:v7];

  return v8;
}

uint64_t sub_1BE54A3E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DecodedLLMProvider();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BE54A448()
{
  result = qword_1EDDD6530;
  if (!qword_1EDDD6530)
  {
    sub_1BE4C5948(&qword_1EBDAD080, qword_1BE550B60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDD6530);
  }

  return result;
}

unint64_t sub_1BE54A4AC()
{
  result = qword_1EDDD6550;
  if (!qword_1EDDD6550)
  {
    sub_1BE4C5948(&qword_1EBDAD550, &unk_1BE552830);
    sub_1BE54A560(&qword_1EDDD6690, type metadata accessor for DecodedLLMProvider);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDD6550);
  }

  return result;
}

uint64_t sub_1BE54A560(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BE54A5A8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1BE54A600()
{

  return swift_once();
}

uint64_t sub_1BE54A630()
{
  v2 = *(v0 + 8);
  result = *(v1 - 208);
  v4 = *(v1 - 184);
  return result;
}

uint64_t sub_1BE54A650()
{
  v2 = *(v0 + 8);
  result = *(v1 - 208);
  v4 = *(v1 - 184);
  return result;
}

uint64_t sub_1BE54A670@<X0>(char a1@<W8>)
{
  *(v1 - 96) = a1;
  result = v1 - 96;
  v3 = *(v1 - 184);
  v4 = *(v1 - 208);
  return result;
}

uint64_t sub_1BE54A684()
{
  v2 = *(v0 - 184);
  v3 = *(v0 - 208);
  v4 = *(v0 - 136);

  return sub_1BE54CC5C();
}

uint64_t sub_1BE54A6B4@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v4 = *v3;
  v5 = v3[1];
}

size_t sub_1BE54A700()
{
  v2 = *(v0 + 16) + 1;

  return sub_1BE52B7E8(0, v2, 1);
}

uint64_t sub_1BE54A724()
{

  return type metadata accessor for DecodedLLMProvider();
}

uint64_t sub_1BE54A750@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1 + 8);
}

uint64_t sub_1BE54A794(uint64_t a1, int a2, int a3, int a4)
{
  v16 = *MEMORY[0x1E69E9840];
  if (qword_1EBDB0B88 == -1)
  {
    if (qword_1EBDB0B90)
    {
LABEL_3:
      result = _availability_version_check();
      v5 = *MEMORY[0x1E69E9840];
      return result;
    }
  }

  else
  {
    v6 = a4;
    v7 = a3;
    v8 = a2;
    sub_1BE54AC5C();
    a2 = v8;
    a3 = v7;
    a4 = v6;
    if (qword_1EBDB0B90)
    {
      goto LABEL_3;
    }
  }

  if (qword_1EBDB0B80 != -1)
  {
    v13 = a4;
    v14 = a3;
    v15 = a2;
    sub_1BE54AC74();
    a3 = v14;
    a4 = v13;
    v9 = dword_1EBDB0B70 < v15;
    if (dword_1EBDB0B70 > v15)
    {
      goto LABEL_11;
    }

LABEL_7:
    if (!v9)
    {
      if (dword_1EBDB0B74 > a3)
      {
        goto LABEL_11;
      }

      if (dword_1EBDB0B74 >= a3)
      {
        result = dword_1EBDB0B78 >= a4;
        v12 = *MEMORY[0x1E69E9840];
        return result;
      }
    }

    result = 0;
    v10 = *MEMORY[0x1E69E9840];
    return result;
  }

  v9 = dword_1EBDB0B70 < a2;
  if (dword_1EBDB0B70 <= a2)
  {
    goto LABEL_7;
  }

LABEL_11:
  result = 1;
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t sub_1BE54A928(unint64_t result)
{
  v30 = *MEMORY[0x1E69E9840];
  v1 = qword_1EBDB0B90;
  if (qword_1EBDB0B90)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x1EEE9AC60])
    {
      v1 = MEMORY[0x1EEE9AC60];
      qword_1EBDB0B90 = MEMORY[0x1EEE9AC60];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v28 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v27 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x1BFB48480](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v26 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v26, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v27)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v28(v23, v29, 32, 134217984))
                                        {
                                          sscanf(v29, "%d.%d.%d", &dword_1EBDB0B70, &dword_1EBDB0B74, &dword_1EBDB0B78);
                                        }
                                      }
                                    }
                                  }

                                  (v27)(v20);
                                }

                                (v27)(v18);
                                v16 = v26;
                              }

                              else
                              {
                                v16 = v26;
                              }
                            }
                          }

                          free(v16);
                          result = fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v25 = *MEMORY[0x1E69E9840];
  return result;
}

double sub_1BE54D74C(double result)
{
  if (!atomic_load(&unk_1EBDAD558))
  {
    return sub_1BE54D770(result);
  }

  return result;
}