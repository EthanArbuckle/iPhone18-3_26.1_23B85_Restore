uint64_t sub_1BE4EDB5C(uint64_t a1)
{
  v2 = type metadata accessor for GenerativePartnerSettingsPanelView();
  v3 = (a1 + *(v2 + 40));
  v4 = *v3;
  v5 = *(v3 + 1);
  LOBYTE(v21[0]) = *v3;
  v21[1] = v5;
  sub_1BE4BF11C(&qword_1EBDABD28, &qword_1BE54DE90);
  result = sub_1BE54C24C();
  if (v18 != 1)
  {
    return result;
  }

  sub_1BE54B24C();
  sub_1BE54B22C();
  sub_1BE54B20C();

  if (!v17)
  {
    sub_1BE4FF104(v16, &unk_1EBDAC550);
    v18 = 0u;
    v19 = 0u;
    v20 = 0;
    return sub_1BE4FF104(&v18, &qword_1EBDABAF8);
  }

  sub_1BE4C52F4(v16, v17);
  sub_1BE4EB2CC(&v18);
  sub_1BE4C58A8(v16);
  if (!*(&v19 + 1))
  {
    return sub_1BE4FF104(&v18, &qword_1EBDABAF8);
  }

  sub_1BE4BF094(&v18, v21);
  static GenerativePartnerRestrictionUtils.useCaseDoesNotAllowCurrentIPCountryCode(provider:)();
  if (v7)
  {
    if (qword_1EBDABAA8 != -1)
    {
      swift_once();
    }

    v8 = sub_1BE54B2EC();
    sub_1BE4C52BC(v8, qword_1EBDB0C38);
    v9 = sub_1BE54B2BC();
    v10 = sub_1BE54C97C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *&v18 = v12;
      *v11 = 136446210;
      *(v11 + 4) = sub_1BE4C5338(0xD000000000000019, 0x80000001BE553DF0, &v18);
      _os_log_impl(&dword_1BE4B8000, v9, v10, "%{public}s: Presenting regional unavailability alert, reason = useCaseDoesNotAllowCurrentIPCountryCode", v11, 0xCu);
      sub_1BE4C58A8(v12);
      MEMORY[0x1BFB48AC0](v12, -1, -1);
      MEMORY[0x1BFB48AC0](v11, -1, -1);
    }

    v13 = (a1 + *(v2 + 56));
    v14 = *v13;
    v15 = *(v13 + 1);
    LOBYTE(v18) = v14;
    *(&v18 + 1) = v15;
    LOBYTE(v16[0]) = 1;
    sub_1BE54C25C();
    LOBYTE(v18) = v4;
    *(&v18 + 1) = v5;
    LOBYTE(v16[0]) = 0;
    sub_1BE54C25C();
  }

  return sub_1BE4C58A8(v21);
}

uint64_t sub_1BE4EDE14(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for GenerativePartnerSettingsPanelView() + 36));
  v3 = *v1;
  v4 = v1[1];
  sub_1BE4BF11C(&qword_1EBDAC3D0, &unk_1BE54F5F8);
  sub_1BE54C24C();
  sub_1BE502848();

  sub_1BE519FC0(1);
}

uint64_t sub_1BE4EDE9C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE54BACC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = sub_1BE4BF11C(&qword_1EBDAC780, &qword_1BE54FA30);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - v6;
  if (sub_1BE4E948C())
  {
    sub_1BE54BABC();
    sub_1BE54BAAC();
    sub_1BE52636C();
    sub_1BE54BA9C();

    sub_1BE54BAAC();
    sub_1BE54BAEC();
    if (qword_1EBDABA80 != -1)
    {
      swift_once();
    }

    v8 = qword_1EBDB0C00;
    v9 = sub_1BE54BF6C();
    v11 = v10;
    v13 = v12;
    v15 = v14;
    KeyPath = swift_getKeyPath();
    v17 = &v7[*(v4 + 36)];
    v18 = *(sub_1BE4BF11C(&qword_1EBDAC790, &unk_1BE54FA38) + 28);
    sub_1BE54B6FC();
    *v17 = KeyPath;
    *v7 = v9;
    *(v7 + 1) = v11;
    v7[16] = v13 & 1;
    *(v7 + 3) = v15;
    sub_1BE4FE614();
    sub_1BE54C37C();
    v19 = sub_1BE4BF11C(&qword_1EBDACA50, &qword_1BE54FCF8);
    return sub_1BE4C63F8(a1, 0, 1, v19);
  }

  else
  {
    v21 = sub_1BE4BF11C(&qword_1EBDACA50, &qword_1BE54FCF8);

    return sub_1BE4C63F8(a1, 1, 1, v21);
  }
}

int *sub_1BE4EE190@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v4 = sub_1BE4BF11C(&qword_1EBDAC730, &qword_1BE54FA08);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v33 - v6;
  v8 = sub_1BE54BACC();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = sub_1BE4BF11C(&qword_1EBDAC6B0, &qword_1BE54F9C8);
  v34 = *(v10 - 8);
  v35 = v10;
  v11 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v33 - v12;
  v37 = v2;
  v38 = a1;
  sub_1BE54BABC();
  sub_1BE54BAAC();
  v14 = a1[3];
  v15 = a1[4];
  sub_1BE4C52F4(a1, v14);
  (*(v15 + 16))(v14, v15);
  sub_1BE54BA9C();

  sub_1BE54BAAC();
  sub_1BE54BAEC();
  if (qword_1EBDABA80 != -1)
  {
    swift_once();
  }

  v16 = qword_1EBDB0C00;
  v39 = sub_1BE54BF6C();
  v40 = v17;
  v41 = v18 & 1;
  v42 = v19;
  sub_1BE4EECC4(v2, a1, v7);
  KeyPath = swift_getKeyPath();
  v21 = &v7[*(sub_1BE4BF11C(&qword_1EBDAC740, &qword_1BE54FA10) + 36)];
  *v21 = KeyPath;
  *(v21 + 1) = 0;
  v21[16] = 1;
  v22 = swift_getKeyPath();
  v23 = &v7[*(v4 + 36)];
  v24 = *(sub_1BE4BF11C(&qword_1EBDAC790, &unk_1BE54FA38) + 28);
  sub_1BE54B6FC();
  *v23 = v22;
  sub_1BE4BF11C(&qword_1EBDAC6C0, &qword_1BE54F9D0);
  sub_1BE4FE0B8();
  sub_1BE4FE308();
  sub_1BE54C35C();
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v26 = result;
    v27 = [result isExternalIntelligenceSignInAllowed];

    if (v27)
    {
      type metadata accessor for GenerativePartnerServiceUserDefaults();
      v28 = sub_1BE53EA04() ^ 1;
    }

    else
    {
      v28 = 1;
    }

    v29 = swift_getKeyPath();
    v30 = swift_allocObject();
    *(v30 + 16) = v28 & 1;
    v31 = v36;
    (*(v34 + 32))(v36, v13, v35);
    result = sub_1BE4BF11C(&qword_1EBDAC650, &qword_1BE54F998);
    v32 = (v31 + result[9]);
    *v32 = v29;
    v32[1] = sub_1BE4FF8C4;
    v32[2] = v30;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BE4EE604@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1BE54BACC();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = sub_1BE4BF11C(&qword_1EBDAC7E0, &qword_1BE54FA70);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v35 - v10;
  v12 = sub_1BE4BF11C(&qword_1EBDAC7E8, &qword_1BE54FA78);
  v39 = *(v12 - 8);
  v13 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v35 - v14;
  v16 = *(type metadata accessor for GenerativePartnerSettingsPanelView() + 36);
  v40 = v2;
  v17 = (v2 + v16);
  v19 = *v17;
  v18 = v17[1];
  v45 = v19;
  v46 = v18;
  sub_1BE4BF11C(&qword_1EBDAC3D0, &unk_1BE54F5F8);
  sub_1BE54C24C();
  v20 = sub_1BE5023E4();

  if (v20)
  {
    v36 = v8;
    v37 = v7;
    v38 = a2;
    v35[2] = v35;
    MEMORY[0x1EEE9AC00](v21);
    v35[1] = &v35[-4];
    sub_1BE54BADC();
    if (qword_1EBDABA80 != -1)
    {
      swift_once();
    }

    v35[0] = qword_1EBDB0C00;
    v45 = sub_1BE54BF6C();
    v46 = v22;
    v47 = v23 & 1;
    v48 = v24;
    sub_1BE54BABC();
    sub_1BE54BAAC();
    v25 = a1[3];
    v26 = a1[4];
    sub_1BE4C52F4(a1, v25);
    (*(v26 + 16))(v25, v26);
    sub_1BE54BA9C();

    sub_1BE54BAAC();
    sub_1BE54BAEC();
    v27 = v35[0];
    v41 = sub_1BE54BF6C();
    v42 = v28;
    v43 = v29 & 1;
    v44 = v30;
    sub_1BE4BF11C(&qword_1EBDAC7F0, &qword_1BE54FA80);
    sub_1BE4FF864(&qword_1EBDAC7F8, &qword_1EBDAC7F0);
    v31 = sub_1BE54C35C();
    MEMORY[0x1EEE9AC00](v31);
    sub_1BE4BF11C(&qword_1EBDAC800, &qword_1BE54FA88);
    sub_1BE4FE810();
    sub_1BE4FE8CC();
    v32 = v37;
    sub_1BE54C04C();
    (*(v36 + 8))(v11, v32);
    a2 = v38;
    (*(v39 + 32))(v38, v15, v12);
    v33 = 0;
  }

  else
  {
    v33 = 1;
  }

  return sub_1BE4C63F8(a2, v33, 1, v12);
}

void sub_1BE4EEB50(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for GenerativePartnerSettingsPanelView();
  v5 = (a1 + *(v4 + 36));
  v13 = *v5;
  v14 = v5[1];
  sub_1BE4BF11C(&qword_1EBDAC3D0, &unk_1BE54F5F8);
  sub_1BE54C26C();
  swift_getKeyPath();
  sub_1BE4BF11C(&qword_1EBDAC520, &qword_1BE54F778);
  sub_1BE54C31C();

  v6 = (a1 + *(v4 + 60));
  v8 = *v6;
  v9 = v6[1];
  sub_1BE4BF11C(&qword_1EBDAC7C8, &qword_1BE54FA60);
  sub_1BE54C24C();
  *a2 = [objc_allocWithZone(MEMORY[0x1E698B3C8]) init];
  swift_unknownObjectWeakInit();
  *(a2 + 16) = v10;
  *(a2 + 32) = v11;
  *(a2 + 40) = v12;
  swift_unknownObjectWeakAssign();
}

id sub_1BE4EECC4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v77 = a3;
  v5 = sub_1BE54BACC();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v73 = sub_1BE4BF11C(&qword_1EBDAC780, &qword_1BE54FA30);
  v7 = *(*(v73 - 8) + 64);
  MEMORY[0x1EEE9AC00](v73);
  v9 = &v72 - v8;
  v74 = sub_1BE4BF11C(&qword_1EBDAC8E0, &qword_1BE54FB78);
  v10 = *(*(v74 - 8) + 64);
  MEMORY[0x1EEE9AC00](v74);
  v76 = (&v72 - v11);
  v12 = sub_1BE4BF11C(&qword_1EBDAC8E8, &qword_1BE54FB80);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v72 - v14;
  v75 = sub_1BE4BF11C(&qword_1EBDAC770, &qword_1BE54FA28);
  v16 = *(*(v75 - 8) + 64);
  MEMORY[0x1EEE9AC00](v75);
  v18 = &v72 - v17;
  v19 = type metadata accessor for SettingsViewModel.AccountSignInStatus(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = (a1 + *(type metadata accessor for GenerativePartnerSettingsPanelView() + 36));
  v25 = *v23;
  v24 = v23[1];
  *&v83[0] = v25;
  *(&v83[0] + 1) = v24;
  sub_1BE4BF11C(&qword_1EBDAC3D0, &unk_1BE54F5F8);
  sub_1BE54C24C();
  sub_1BE50149C();

  v26 = sub_1BE4BF11C(&qword_1EBDAC548, &qword_1BE54F7C8);
  v27 = sub_1BE4C63BC(v22, 4, v26);
  if (v27)
  {
    sub_1BE4FD560();
  }

  else
  {
    v28 = sub_1BE54B3DC();
    (*(*(v28 - 8) + 8))(v22, v28);
  }

  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v30 = result;
    v31 = [result isExternalIntelligenceSignInAllowed];

    if ((v31 & 1) == 0)
    {
      sub_1BE54BADC();
      if (qword_1EBDABA80 != -1)
      {
        swift_once();
      }

      v47 = qword_1EBDB0C00;
      v48 = sub_1BE54BF6C();
      v50 = v49;
      *v15 = v48;
      *(v15 + 1) = v49;
      v52 = v51 & 1;
      v15[16] = v51 & 1;
      *(v15 + 3) = v53;
      swift_storeEnumTagMultiPayload();
      sub_1BE4D91B0(v48, v50, v52);
      sub_1BE4FE614();

      sub_1BE54BC0C();
      sub_1BE4FF0AC();
      swift_storeEnumTagMultiPayload();
      sub_1BE4BF11C(&qword_1EBDAC690, &qword_1BE54F9C0);
      sub_1BE4FE588();
      sub_1BE4FDE34();
      sub_1BE54BC0C();
      sub_1BE4C68C8(v48, v50, v52);

      v45 = v18;
      v46 = &qword_1EBDAC770;
      return sub_1BE4FF104(v45, v46);
    }

    v32 = a2[3];
    v33 = a2[4];
    sub_1BE4C52F4(a2, v32);
    (*(v33 + 216))(v83, v32, v33);
    if (LOBYTE(v83[0]) == 128)
    {
      v72 = v12;
      sub_1BE54BABC();
      sub_1BE54BAAC();
      sub_1BE52636C();
      sub_1BE54BA9C();

      sub_1BE54BAAC();
      sub_1BE54BAEC();
      if (qword_1EBDABA80 != -1)
      {
        swift_once();
      }

      v34 = qword_1EBDB0C00;
      v35 = sub_1BE54BF6C();
      v37 = v36;
      v39 = v38;
      v41 = v40;
      KeyPath = swift_getKeyPath();
      v43 = &v9[*(v73 + 36)];
      v44 = *(sub_1BE4BF11C(&qword_1EBDAC790, &unk_1BE54FA38) + 28);
      sub_1BE54B6FC();
      *v43 = KeyPath;
      *v9 = v35;
      *(v9 + 1) = v37;
      v9[16] = v39 & 1;
      *(v9 + 3) = v41;
      sub_1BE4FF0AC();
      swift_storeEnumTagMultiPayload();
      sub_1BE4FE614();
      sub_1BE54BC0C();
      sub_1BE4FF0AC();
      swift_storeEnumTagMultiPayload();
      sub_1BE4BF11C(&qword_1EBDAC690, &qword_1BE54F9C0);
      sub_1BE4FE588();
      sub_1BE4FDE34();
      sub_1BE54BC0C();
      sub_1BE4FF104(v18, &qword_1EBDAC770);
      v45 = v9;
      v46 = &qword_1EBDAC780;
      return sub_1BE4FF104(v45, v46);
    }

    if (v27)
    {
      sub_1BE54BABC();
      sub_1BE54BAAC();
      v54 = a2[3];
      v55 = a2[4];
      sub_1BE4C52F4(a2, v54);
      (*(v55 + 16))(v54, v55);
      sub_1BE54BA9C();

      sub_1BE54BAAC();
      sub_1BE52636C();
      sub_1BE54BA9C();

      sub_1BE54BAAC();
      sub_1BE54BAEC();
      if (qword_1EBDABA80 != -1)
      {
        swift_once();
      }

      v56 = qword_1EBDB0C00;
      v57 = sub_1BE54BF6C();
      v59 = v57;
      v60 = v58;
      v62 = v61 & 1;
      v78 = v57;
      v79 = v58;
      v80 = v61 & 1;
      v81 = v63;
      v82 = 1;
    }

    else
    {
      sub_1BE54BABC();
      sub_1BE54BAAC();
      v64 = a2[3];
      v65 = a2[4];
      sub_1BE4C52F4(a2, v64);
      (*(v65 + 16))(v64, v65);
      sub_1BE54BA9C();

      sub_1BE54BAAC();
      sub_1BE52636C();
      sub_1BE54BA9C();

      sub_1BE54BAAC();
      sub_1BE54BAEC();
      if (qword_1EBDABA80 != -1)
      {
        swift_once();
      }

      v66 = qword_1EBDB0C00;
      v57 = sub_1BE54BF6C();
      v59 = v57;
      v60 = v58;
      v78 = v57;
      v79 = v58;
      v62 = v67 & 1;
      v80 = v67 & 1;
      v81 = v68;
      v82 = 0;
    }

    sub_1BE4D91B0(v57, v58, v62);

    sub_1BE54BC0C();
    v69 = v84;
    v70 = v83[1];
    v71 = v76;
    *v76 = v83[0];
    v71[1] = v70;
    *(v71 + 32) = v69;
    swift_storeEnumTagMultiPayload();
    sub_1BE4BF11C(&qword_1EBDAC690, &qword_1BE54F9C0);
    sub_1BE4FE588();
    sub_1BE4FDE34();
    sub_1BE54BC0C();
    sub_1BE4C68C8(v59, v60, v62);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BE4EF7D0(uint64_t a1)
{
  v51 = a1;
  v2 = type metadata accessor for GenerativePartnerSettingsPanelView();
  v48 = *(v2 - 8);
  v3 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v50 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BE4BF11C(&qword_1EBDAC3A8, &qword_1BE550DA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v49 = &v48 - v6;
  v7 = type metadata accessor for SettingsViewModel.AccountSignInStatus(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v48 - v12;
  v14 = *(v2 + 36);
  v52 = v1;
  v15 = (v1 + v14);
  v16 = *v15;
  v17 = v15[1];
  *&v59[0] = *v15;
  *(&v59[0] + 1) = v17;
  sub_1BE4BF11C(&qword_1EBDAC3D0, &unk_1BE54F5F8);
  sub_1BE54C24C();
  sub_1BE50149C();

  v18 = sub_1BE4BF11C(&qword_1EBDAC548, &qword_1BE54F7C8);
  sub_1BE4C63F8(v11, 1, 4, v18);
  sub_1BE5005B4(v13, v11);
  v20 = v19;
  sub_1BE4FD560();
  sub_1BE4FD560();
  if (v20)
  {
    goto LABEL_3;
  }

  *&v59[0] = v16;
  *(&v59[0] + 1) = v17;
  sub_1BE54C24C();
  sub_1BE50149C();

  sub_1BE4C63F8(v11, 4, 4, v18);
  sub_1BE5005B4(v13, v11);
  v22 = v21;
  sub_1BE4FD560();
  result = sub_1BE4FD560();
  if (v22)
  {
LABEL_3:
    *&v56 = v16;
    *(&v56 + 1) = v17;
    sub_1BE54C24C();
    sub_1BE5010B4(&v56);

    if (*(&v57 + 1) || (sub_1BE4FF104(&v56, &qword_1EBDABAF8), sub_1BE4FF0AC(), *(&v57 + 1)))
    {
      sub_1BE4BF094(&v56, &v54);
      sub_1BE4BF094(&v54, &v56);
    }

    else
    {
      sub_1BE4FF104(&v56, &qword_1EBDABAF8);
      if (qword_1EDDD6890 != -1)
      {
        swift_once();
      }

      sub_1BE53C930(&v56);
    }

    v59[0] = v56;
    v59[1] = v57;
    v60 = v58;
    sub_1BE4FF0AC();
    if (v55)
    {
      sub_1BE4BF094(&v54, &v56);
      static GenerativePartnerRestrictionUtils.useCaseDoesNotAllowCurrentIPCountryCode(provider:)();
      if (v24)
      {
        if (qword_1EBDABAA8 != -1)
        {
          swift_once();
        }

        v25 = sub_1BE54B2EC();
        sub_1BE4C52BC(v25, qword_1EBDB0C38);
        v26 = sub_1BE54B2BC();
        v27 = sub_1BE54C97C();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          *&v54 = v29;
          *v28 = 136446210;
          *(v28 + 4) = sub_1BE4C5338(0xD00000000000001FLL, 0x80000001BE553EC0, &v54);
          _os_log_impl(&dword_1BE4B8000, v26, v27, "%{public}s: Presenting regional unavailability alert, reason = useCaseDoesNotAllowCurrentIPCountryCode", v28, 0xCu);
          sub_1BE4C58A8(v29);
          MEMORY[0x1BFB48AC0](v29, -1, -1);
          MEMORY[0x1BFB48AC0](v28, -1, -1);
        }

        v30 = (v52 + *(v2 + 56));
        v31 = *v30;
        v32 = *(v30 + 1);
        LOBYTE(v54) = v31;
        *(&v54 + 1) = v32;
        LOBYTE(v53) = 1;
        sub_1BE4BF11C(&qword_1EBDABD28, &qword_1BE54DE90);
        sub_1BE54C25C();
      }

      else
      {
        *&v54 = v16;
        *(&v54 + 1) = v17;
        sub_1BE54C24C();
        sub_1BE4C63F8(v13, 2, 4, v18);
        sub_1BE5014C4();

        if (qword_1EBDABAA8 != -1)
        {
          swift_once();
        }

        v37 = sub_1BE54B2EC();
        sub_1BE4C52BC(v37, qword_1EBDB0C38);
        v38 = sub_1BE54B2BC();
        v39 = sub_1BE54C9AC();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          *&v54 = v41;
          *v40 = 136446466;
          *(v40 + 4) = sub_1BE4C5338(0xD000000000000022, 0x80000001BE54F6D0, &v54);
          *(v40 + 12) = 2082;
          *(v40 + 14) = sub_1BE4C5338(0xD00000000000001FLL, 0x80000001BE553EC0, &v54);
          _os_log_impl(&dword_1BE4B8000, v38, v39, "%{public}s.%{public}s: proceeding to spawn sign in task", v40, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1BFB48AC0](v41, -1, -1);
          MEMORY[0x1BFB48AC0](v40, -1, -1);
        }

        v42 = sub_1BE54C91C();
        sub_1BE4C63F8(v49, 1, 1, v42);
        v43 = v50;
        sub_1BE4FCF80();
        sub_1BE4C6918(&v56, &v54);
        sub_1BE54C8CC();
        v44 = sub_1BE54C8BC();
        v45 = (*(v48 + 80) + 32) & ~*(v48 + 80);
        v46 = swift_allocObject();
        v47 = MEMORY[0x1E69E85E0];
        *(v46 + 16) = v44;
        *(v46 + 24) = v47;
        sub_1BE4FCFD8(v43, v46 + v45);
        sub_1BE4BF094(&v54, v46 + ((v3 + v45 + 7) & 0xFFFFFFFFFFFFFFF8));
        sub_1BE50BA3C();
      }

      sub_1BE4C58A8(&v56);
    }

    else
    {
      sub_1BE4FF104(&v54, &qword_1EBDABAF8);
      if (qword_1EBDABAA8 != -1)
      {
        swift_once();
      }

      v33 = sub_1BE54B2EC();
      sub_1BE4C52BC(v33, qword_1EBDB0C38);
      v34 = sub_1BE54B2BC();
      v35 = sub_1BE54C97C();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_1BE4B8000, v34, v35, "signInTask: designatedProvider, currentLLM, and defaultLLM are all nil", v36, 2u);
        MEMORY[0x1BFB48AC0](v36, -1, -1);
      }
    }

    return sub_1BE4FF104(v59, &qword_1EBDABAF8);
  }

  return result;
}

uint64_t sub_1BE4F0064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[34] = a4;
  v5[35] = a5;
  v6 = sub_1BE54B3EC();
  v5[36] = v6;
  v7 = *(v6 - 8);
  v5[37] = v7;
  v8 = *(v7 + 64) + 15;
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();
  v5[40] = swift_task_alloc();
  v9 = *(*(type metadata accessor for SettingsViewModel.AccountSignInStatus(0) - 8) + 64) + 15;
  v5[41] = swift_task_alloc();
  v10 = sub_1BE54B39C();
  v5[42] = v10;
  v11 = *(v10 - 8);
  v5[43] = v11;
  v12 = *(v11 + 64) + 15;
  v5[44] = swift_task_alloc();
  v13 = sub_1BE54B3DC();
  v5[45] = v13;
  v14 = *(v13 - 8);
  v5[46] = v14;
  v15 = *(v14 + 64) + 15;
  v5[47] = swift_task_alloc();
  sub_1BE54C8CC();
  v5[48] = sub_1BE54C8BC();
  v17 = sub_1BE54C87C();
  v5[49] = v17;
  v5[50] = v16;

  return MEMORY[0x1EEE6DFA0](sub_1BE4F0254, v17, v16);
}

uint64_t sub_1BE4F0254()
{
  sub_1BE4E021C();
  v21 = v0;
  if (qword_1EBDABAA8 != -1)
  {
    sub_1BE4FFAF4();
  }

  v1 = sub_1BE54B2EC();
  v0[51] = sub_1BE4C52BC(v1, qword_1EBDB0C38);
  v2 = sub_1BE54B2BC();
  v3 = sub_1BE54C9AC();
  if (sub_1BE4FFCA4(v3))
  {
    v4 = swift_slowAlloc();
    v20 = sub_1BE4FFE98();
    *v4 = 136446466;
    v5 = sub_1BE4FFA88();
    *(v4 + 4) = sub_1BE4C5338(v5, v6, &v20);
    *(v4 + 12) = 2082;
    sub_1BE4FFAA0();
    *(v4 + 14) = sub_1BE4C5338(0xD00000000000001FLL, v7, &v20);
    sub_1BE4FFE08(&dword_1BE4B8000, v8, v9, "%{public}s.%{public}s: Calling ExternalAIAuthenticatorHelper().authenticateWithExternalAI()");
    swift_arrayDestroy();
    sub_1BE4C75DC();
    sub_1BE4C75DC();
  }

  v11 = v0[34];
  v10 = v0[35];
  v12 = (v11 + *(type metadata accessor for GenerativePartnerSettingsPanelView() + 36));
  v13 = *v12;
  v0[52] = *v12;
  v14 = v12[1];
  v0[53] = v14;
  v0[12] = v13;
  v0[13] = v14;
  v0[54] = sub_1BE4BF11C(&qword_1EBDAC3D0, &unk_1BE54F5F8);
  sub_1BE54C24C();
  v15 = v0[26];
  sub_1BE501CB8(0);

  sub_1BE4C6918(v10, (v0 + 2));
  v16 = type metadata accessor for ExternalAIAuthenticatorHelper();
  sub_1BE4FFCE4(v16);
  v0[55] = sub_1BE534D4C(v0 + 2);
  v17 = swift_task_alloc();
  v0[56] = v17;
  *v17 = v0;
  v17[1] = sub_1BE4F047C;
  v18 = v0[47];

  return sub_1BE533AE4();
}

uint64_t sub_1BE4F047C()
{
  sub_1BE4E01D4();
  v3 = *(*v1 + 448);
  v2 = *v1;
  sub_1BE4E01C4();
  *v4 = v2;
  v2[57] = v0;

  if (v0)
  {
    v5 = v2[49];
    v6 = v2[50];
    v7 = sub_1BE4F0834;
  }

  else
  {
    v8 = v2[55];

    v5 = v2[49];
    v6 = v2[50];
    v7 = sub_1BE4F058C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1BE4F058C()
{
  v2 = v0[53];
  v1 = v0[54];
  v3 = v0[52];
  v5 = v0[47];
  v4 = v0[48];
  v7 = v0[43];
  v6 = v0[44];
  v8 = v0[42];

  v0[18] = v3;
  v0[19] = v2;
  sub_1BE54C24C();
  v9 = v0[30];
  sub_1BE54B3AC();
  sub_1BE54B34C();
  (*(v7 + 8))(v6, v8);
  sub_1BE529A24();
  v11 = v10;

  sub_1BE501CB8((v11 & 1) == 0);

  v0[20] = v3;
  v0[21] = v2;
  sub_1BE54C24C();
  v12 = v0[31];
  LOBYTE(v1) = sub_1BE501CA4();

  if (v1)
  {
    v14 = v0[46];
    v13 = v0[47];
    v15 = v0[45];
    v16 = v0[34];
    sub_1BE4ED7BC(1, v0[35]);
    v17 = *(v14 + 8);
    v18 = sub_1BE4E0628();
    v19(v18);
    v0[14] = v0[52];
    v20 = v0[54];
    v21 = v0[41];
    v0[15] = v0[53];
    sub_1BE54C24C();
    v22 = v0[28];
    v23 = sub_1BE4BF11C(&qword_1EBDAC548, &qword_1BE54F7C8);
    sub_1BE4FFB88(v23);
  }

  else
  {
    v25 = v0[53];
    v24 = v0[54];
    v26 = v0[52];
    v28 = v0[46];
    v27 = v0[47];
    v29 = v0[45];
    v30 = v0[41];
    v31 = v0[35];
    v0[22] = v26;
    v0[23] = v25;
    sub_1BE54C24C();
    v32 = v0[32];
    sub_1BE4C6918(v31, (v0 + 7));
    sub_1BE5011B0((v0 + 7));

    v0[24] = v26;
    v0[25] = v25;
    sub_1BE54C24C();
    v33 = v0[33];
    (*(v28 + 16))(v30, v27, v29);
    v34 = sub_1BE4BF11C(&qword_1EBDAC548, &qword_1BE54F7C8);
    sub_1BE4C63F8(v30, 0, 4, v34);
    sub_1BE5014C4();

    v35 = *(v28 + 8);
    v36 = sub_1BE4E0628();
    v37(v36);
  }

  sub_1BE4FFE48();

  sub_1BE4E01E0();

  return v38();
}

uint64_t sub_1BE4F0834()
{
  v59 = v0;
  v1 = *(v0 + 456);
  v2 = *(v0 + 440);
  v3 = *(v0 + 384);
  v4 = *(v0 + 304);
  v5 = *(v0 + 288);

  *(v0 + 216) = v1;
  v6 = v1;
  sub_1BE4BF11C(&qword_1EBDAC5C0, qword_1BE551A00);
  sub_1BE4FFBD8();
  v7 = swift_dynamicCast();
  v8 = *(v0 + 456);
  v9 = *(v0 + 408);
  if (v7)
  {
    v11 = *(v0 + 312);
    v10 = *(v0 + 320);
    v13 = *(v0 + 296);
    v12 = *(v0 + 304);
    v14 = *(v0 + 288);

    (*(v13 + 32))(v10, v12, v14);
    v15 = *(v13 + 16);
    v15(v11, v10, v14);
    v16 = sub_1BE54B2BC();
    v17 = sub_1BE54C98C();
    v18 = sub_1BE4FFCA4(v17);
    v19 = *(v0 + 312);
    v21 = *(v0 + 288);
    v20 = *(v0 + 296);
    if (v18)
    {
      v22 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v58 = sub_1BE4FFE98();
      *v22 = 136446722;
      v23 = sub_1BE4FFA88();
      *(v22 + 4) = sub_1BE4C5338(v23, v24, &v58);
      *(v22 + 12) = 2082;
      sub_1BE4FFAA0();
      *(v22 + 14) = sub_1BE4C5338(0xD00000000000001FLL, v25, &v58);
      *(v22 + 22) = 2114;
      sub_1BE4FEB10(&qword_1EBDAC5C8, MEMORY[0x1E698AA30]);
      swift_allocError();
      log = v16;
      v26 = v4;
      v15(v27, v19, v21);
      v28 = _swift_stdlib_bridgeErrorToNSError();
      v29 = sub_1BE4FFC8C();
      (v15)(v29);
      *(v22 + 24) = v28;
      *v57 = v28;
      _os_log_impl(&dword_1BE4B8000, log, v26, "%{public}s.%{public}s: ExternalAIAuthenticatorHelper().authenticateWithExternalAI() exception: %{public}@", v22, 0x20u);
      sub_1BE4FF104(v57, &qword_1EBDAC2F0);
      sub_1BE4C75DC();
      swift_arrayDestroy();
      sub_1BE4C75DC();
      sub_1BE4C75DC();
    }

    else
    {

      v42 = sub_1BE4FFC8C();
      (v15)(v42);
    }

    v44 = *(v0 + 424);
    v43 = *(v0 + 432);
    v45 = *(v0 + 320);
    v46 = *(v0 + 288);
    *(v0 + 128) = *(v0 + 416);
    *(v0 + 136) = v44;
    sub_1BE54C24C();
    v47 = *(v0 + 232);
    sub_1BE501C7C(1);

    (v15)(v45, v46);
    v48 = *(v0 + 216);
  }

  else
  {

    v30 = v8;
    v31 = sub_1BE54B2BC();
    v32 = sub_1BE54C98C();

    v33 = os_log_type_enabled(v31, v32);
    v34 = *(v0 + 456);
    if (v33)
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v58 = sub_1BE4FFE98();
      *v35 = 136446722;
      v37 = sub_1BE4FFA88();
      *(v35 + 4) = sub_1BE4C5338(v37, v38, &v58);
      *(v35 + 12) = 2082;
      sub_1BE4FFAA0();
      *(v35 + 14) = sub_1BE4C5338(0xD00000000000001FLL, v39, &v58);
      *(v35 + 22) = 2114;
      v40 = v34;
      v41 = _swift_stdlib_bridgeErrorToNSError();
      *(v35 + 24) = v41;
      *v36 = v41;
      _os_log_impl(&dword_1BE4B8000, v31, v32, "%{public}s.%{public}s: ExternalAIAuthenticatorHelper().authenticateWithExternalAI() unknown exception type: %{public}@", v35, 0x20u);
      sub_1BE4FF104(v36, &qword_1EBDAC2F0);
      sub_1BE4C75DC();
      swift_arrayDestroy();
      sub_1BE4C75DC();
      sub_1BE4C75DC();

      goto LABEL_10;
    }

    v48 = v34;
  }

LABEL_10:
  v50 = *(v0 + 424);
  v49 = *(v0 + 432);
  v51 = *(v0 + 328);
  *(v0 + 112) = *(v0 + 416);
  *(v0 + 120) = v50;
  sub_1BE54C24C();
  v52 = *(v0 + 224);
  v53 = sub_1BE4BF11C(&qword_1EBDAC548, &qword_1BE54F7C8);
  sub_1BE4FFB88(v53);

  sub_1BE4FFE48();

  sub_1BE4E01E0();

  return v54();
}

uint64_t sub_1BE4F0D38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE4BF11C(&qword_1EBDAC878, &qword_1BE54FAE8);
  v28 = *(v4 - 8);
  v5 = v28;
  v6 = *(v28 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v27 - v10;
  v12 = sub_1BE54ADAC();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  (*(v15 + 16))(&v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v16 = sub_1BE54BF7C();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sub_1BE54B66C();
  v23 = *(v5 + 16);
  v23(v9, v11, v4);
  *a2 = v16;
  *(a2 + 8) = v18;
  v20 &= 1u;
  *(a2 + 16) = v20;
  *(a2 + 24) = v22;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  v24 = sub_1BE4BF11C(&qword_1EBDACA28, &qword_1BE54FCA0);
  v23((a2 + *(v24 + 64)), v9, v4);
  sub_1BE4D91B0(v16, v18, v20);
  v25 = *(v28 + 8);

  v25(v11, v4);
  v25(v9, v4);
  sub_1BE4C68C8(v16, v18, v20);
}

uint64_t sub_1BE4F0FA0@<X0>(uint64_t a1@<X8>)
{
  sub_1BE4BF11C(&qword_1EBDAC948, &qword_1BE54FBD0);
  sub_1BE4FF864(&qword_1EBDAC940, &qword_1EBDAC948);
  sub_1BE54C29C();
  KeyPath = swift_getKeyPath();
  v3 = swift_allocObject();
  *(v3 + 16) = 1;
  result = sub_1BE4BF11C(&qword_1EBDACAC8, &qword_1BE54FDE0);
  v5 = (a1 + *(result + 36));
  *v5 = KeyPath;
  v5[1] = sub_1BE4FF8C4;
  v5[2] = v3;
  return result;
}

uint64_t sub_1BE4F10C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for GenerativePartnerSettingsPanelView() + 64);
  *a2 = sub_1BE54BA4C();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v5 = sub_1BE4BF11C(&qword_1EBDACA20, &qword_1BE54FC98);
  return sub_1BE4F0D38(a1 + v4, a2 + *(v5 + 44));
}

uint64_t sub_1BE4F112C()
{
  v2 = 0;
  memset(v1, 0, sizeof(v1));
  sub_1BE4EF7D0(v1);
  return sub_1BE4FF104(v1, &qword_1EBDABAF8);
}

uint64_t sub_1BE4F1180(uint64_t a1)
{
  v2 = sub_1BE4BF11C(&qword_1EBDACA18, &qword_1BE54FC90);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v27 - v4;
  v6 = sub_1BE4BF11C(&qword_1EBDAC948, &qword_1BE54FBD0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v27 - v8;
  v10 = type metadata accessor for SettingsViewModel.AccountSignInStatus(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for GenerativePartnerSettingsPanelView();
  v15 = (a1 + *(v14 + 36));
  v17 = *v15;
  v16 = v15[1];
  v27[2] = v17;
  v27[3] = v16;
  sub_1BE4BF11C(&qword_1EBDAC3D0, &unk_1BE54F5F8);
  sub_1BE54C24C();
  sub_1BE50149C();

  v18 = sub_1BE4BF11C(&qword_1EBDAC548, &qword_1BE54F7C8);
  v19 = sub_1BE4C63BC(v13, 4, v18);
  sub_1BE4FD560();
  if (v19 == 2)
  {
    v20 = *(v14 + 64);
    *v9 = sub_1BE54BA4C();
    *(v9 + 1) = 0;
    v9[16] = 1;
    v21 = sub_1BE4BF11C(&qword_1EBDACA20, &qword_1BE54FC98);
    sub_1BE4F0D38(a1 + v20, &v9[*(v21 + 44)]);
    sub_1BE4FF0AC();
    swift_storeEnumTagMultiPayload();
    sub_1BE4FF864(&qword_1EBDAC940, &qword_1EBDAC948);
    sub_1BE54BC0C();
    return sub_1BE4FF104(v9, &qword_1EBDAC948);
  }

  else
  {
    sub_1BE54BADC();
    if (qword_1EBDABA80 != -1)
    {
      swift_once();
    }

    v23 = qword_1EBDB0C00;
    *v5 = sub_1BE54BF6C();
    *(v5 + 1) = v24;
    v5[16] = v25 & 1;
    *(v5 + 3) = v26;
    swift_storeEnumTagMultiPayload();
    sub_1BE4FF864(&qword_1EBDAC940, &qword_1EBDAC948);
    return sub_1BE54BC0C();
  }
}

uint64_t sub_1BE4F1538@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v104 = a2;
  v5 = sub_1BE54AF6C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v102 = v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_1BE54AD8C();
  v96 = *(v100 - 8);
  v8 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v100);
  v97 = v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE54C6BC();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v95 = v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BE54C69C();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v94 = v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_1BE54ADAC();
  v103 = *(v109 - 8);
  v16 = *(v103 + 64);
  v17 = MEMORY[0x1EEE9AC00](v109);
  v98 = v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v108 = v79 - v19;
  v20 = sub_1BE54BACC();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v105 = type metadata accessor for GenerativePartnerSettingsPanelView();
  v91 = *(v105 - 1);
  v22 = *(v91 + 8);
  MEMORY[0x1EEE9AC00](v105);
  v23 = sub_1BE4BF11C(&qword_1EBDABD68, &qword_1BE54DEE0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = v79 - v25;
  v106 = sub_1BE4BF11C(&qword_1EBDAC9A8, &qword_1BE54FC28);
  v92 = *(v106 - 8);
  v27 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v106);
  v29 = v79 - v28;
  v101 = sub_1BE4BF11C(&qword_1EBDAC9B0, &qword_1BE54FC30);
  v99 = *(v101 - 8);
  v30 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v101);
  v107 = v79 - v31;
  v32 = a1[3];
  v33 = a1[4];
  sub_1BE4C52F4(a1, v32);
  v34 = (*(v33 + 16))(v32, v33);
  v36 = v35;
  sub_1BE54B56C();
  v37 = sub_1BE54B58C();
  sub_1BE4C63F8(v26, 0, 1, v37);
  v93 = a1;
  sub_1BE4C6918(a1, &v111);
  sub_1BE4FCF80();
  v38 = (v91[80] + 56) & ~v91[80];
  v39 = swift_allocObject();
  sub_1BE4BF094(&v111, v39 + 16);
  sub_1BE4FCFD8(v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v39 + v38);
  v110 = v3;
  sub_1BE4BF11C(&qword_1EBDAC930, &qword_1BE54FBC8);
  sub_1BE4FEFF4();
  v91 = v29;
  sub_1BE54C28C();
  sub_1BE54BABC();
  sub_1BE54BAAC();
  v90 = v34;
  v40 = v36;
  sub_1BE54BA9C();
  sub_1BE54BAAC();
  sub_1BE54BAEC();
  if (qword_1EBDABA80 != -1)
  {
    swift_once();
  }

  v41 = qword_1EBDB0C00;
  v84 = sub_1BE54BF6C();
  v83 = v42;
  v81 = v43;
  v82 = v44;
  v45 = (v3 + *(v105 + 9));
  v47 = *v45;
  v46 = v45[1];
  v116 = v47;
  v117 = v46;
  sub_1BE4BF11C(&qword_1EBDAC3D0, &unk_1BE54F5F8);
  sub_1BE54C26C();
  v48 = v111;
  v87 = v3;
  v49 = v112;
  swift_getKeyPath();
  v111 = v48;
  v112 = v49;
  sub_1BE4BF11C(&qword_1EBDAC520, &qword_1BE54F778);
  sub_1BE54C31C();

  v79[2] = v116;
  v79[1] = v117;
  v80 = v118;

  v79[0] = v79;
  v51 = MEMORY[0x1EEE9AC00](v50);
  MEMORY[0x1EEE9AC00](v51);
  v52 = sub_1BE4BF11C(&qword_1EBDABB58, &unk_1BE54DC90);
  v53 = sub_1BE4BF11C(&qword_1EBDAC9B8, &qword_1BE54FC60);
  v54 = sub_1BE4FF864(&qword_1EBDAC9C0, &qword_1EBDAC9A8);
  v55 = sub_1BE4FF864(&qword_1EBDABC48, &qword_1EBDABB58);
  v85 = sub_1BE4FF1D0();
  v86 = v55;
  v88 = v54;
  v89 = v53;
  v93 = v52;
  v56 = v106;
  v57 = v81;
  v58 = v84;
  v59 = v83;
  v60 = v91;
  sub_1BE54C07C();

  sub_1BE4C68C8(v58, v59, v57 & 1);

  (*(v92 + 8))(v60, v56);
  sub_1BE54C68C();
  sub_1BE54C67C();
  sub_1BE54C66C();
  sub_1BE54C67C();
  sub_1BE54C6AC();
  v61 = v40;
  if (qword_1EBDABA88 != -1)
  {
    swift_once();
  }

  v62 = v100;
  v63 = sub_1BE4C52BC(v100, qword_1EBDB0C08);
  (*(v96 + 16))(v97, v63, v62);
  sub_1BE54AF2C();
  v64 = v108;
  sub_1BE54ADBC();
  v65 = (v87 + *(v105 + 13));
  v66 = *v65;
  v67 = *(v65 + 1);
  LOBYTE(v116) = v66;
  v117 = v67;
  sub_1BE4BF11C(&qword_1EBDABD28, &qword_1BE54DE90);
  v68 = sub_1BE54C26C();
  v105 = v79;
  v97 = *(&v111 + 1);
  v100 = v111;
  LODWORD(v102) = v112;
  v69 = MEMORY[0x1EEE9AC00](v68);
  MEMORY[0x1EEE9AC00](v69);
  v70 = v103;
  (*(v103 + 16))(v98, v64, v109);
  v71 = sub_1BE54BF7C();
  v73 = v72;
  v75 = v74;
  v98 = v61;
  sub_1BE4BF11C(&qword_1EBDACA00, &qword_1BE54FC80);
  *&v111 = v106;
  *(&v111 + 1) = v93;
  v112 = v89;
  v113 = v88;
  v114 = v86;
  v115 = v85;
  swift_getOpaqueTypeConformance2();
  sub_1BE4FF864(&qword_1EBDACA08, &qword_1EBDACA00);
  v76 = v101;
  v77 = v107;
  sub_1BE54C07C();
  sub_1BE4C68C8(v71, v73, v75 & 1);

  (*(v70 + 8))(v108, v109);
  return (*(v99 + 8))(v77, v76);
}

uint64_t sub_1BE4F22D0(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1BE4C52F4(a1, v3);
  (*(v4 + 216))(&v14, v3, v4);
  v5 = v14;
  v6 = type metadata accessor for GenerativePartnerSettingsPanelView();
  if (v5 == 128)
  {
    v7 = (a2 + *(v6 + 52));
    v8 = *v7;
    v9 = *(v7 + 1);
    LOBYTE(v14) = v8;
    v15 = v9;
    sub_1BE4BF11C(&qword_1EBDABD28, &qword_1BE54DE90);
    return sub_1BE54C25C();
  }

  else
  {
    v11 = (a2 + *(v6 + 36));
    v13 = *v11;
    v12 = v11[1];
    v14 = v13;
    v15 = v12;
    sub_1BE4BF11C(&qword_1EBDAC3D0, &unk_1BE54F5F8);
    sub_1BE54C24C();
    sub_1BE501D7C(1);
  }
}

uint64_t sub_1BE4F23D0(uint64_t a1)
{
  v2 = sub_1BE4BF11C(&qword_1EBDAC948, &qword_1BE54FBD0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v27 - v4;
  v6 = sub_1BE4BF11C(&qword_1EBDACA18, &qword_1BE54FC90);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v27 - v8;
  v10 = type metadata accessor for SettingsViewModel.AccountSignInStatus(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for GenerativePartnerSettingsPanelView();
  v15 = (a1 + *(v14 + 36));
  v17 = *v15;
  v16 = v15[1];
  v27[2] = v17;
  v27[3] = v16;
  sub_1BE4BF11C(&qword_1EBDAC3D0, &unk_1BE54F5F8);
  sub_1BE54C24C();
  sub_1BE50149C();

  v18 = sub_1BE4BF11C(&qword_1EBDAC548, &qword_1BE54F7C8);
  v19 = sub_1BE4C63BC(v13, 4, v18);
  sub_1BE4FD560();
  if (v19 == 3)
  {
    v20 = *(v14 + 68);
    *v5 = sub_1BE54BA4C();
    *(v5 + 1) = 0;
    v5[16] = 1;
    v21 = sub_1BE4BF11C(&qword_1EBDACA20, &qword_1BE54FC98);
    sub_1BE4F0D38(a1 + v20, &v5[*(v21 + 44)]);
    sub_1BE4FF0AC();
    swift_storeEnumTagMultiPayload();
    sub_1BE4FF864(&qword_1EBDAC940, &qword_1EBDAC948);
    sub_1BE54BC0C();
    return sub_1BE4FF104(v5, &qword_1EBDAC948);
  }

  else
  {
    sub_1BE54BADC();
    if (qword_1EBDABA80 != -1)
    {
      swift_once();
    }

    v23 = qword_1EBDB0C00;
    *v9 = sub_1BE54BF6C();
    *(v9 + 1) = v24;
    v9[16] = v25 & 1;
    *(v9 + 3) = v26;
    swift_storeEnumTagMultiPayload();
    sub_1BE4FF864(&qword_1EBDAC940, &qword_1EBDAC948);
    return sub_1BE54BC0C();
  }
}

uint64_t sub_1BE4F2780(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for GenerativePartnerSettingsPanelView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = sub_1BE4BF11C(&qword_1EBDABD68, &qword_1BE54DEE0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v14 - v8;
  sub_1BE54B56C();
  v10 = sub_1BE54B58C();
  sub_1BE4C63F8(v9, 0, 1, v10);
  sub_1BE4FCF80();
  sub_1BE4C6918(a2, v15);
  v11 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v12 = swift_allocObject();
  sub_1BE4FCFD8(&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  sub_1BE4BF094(v15, v12 + ((v5 + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_1BE54C28C();
}

uint64_t sub_1BE4F2990@<X0>(uint64_t a1@<X8>)
{
  sub_1BE54BADC();
  if (qword_1EBDABA80 != -1)
  {
    swift_once();
  }

  v2 = qword_1EBDB0C00;
  result = sub_1BE54BF6C();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_1BE4F2A6C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1BE54BACC();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v131 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v13 = a1[4];
  sub_1BE4C52F4(a1, v12);
  v14 = (*(v13 + 224))(v12, v13);
  v15 = v14;
  v16 = *(v14 + 16);
  switch(v16)
  {
    case 1:
      v134 = a2;
      v135 = a3;
      v136 = v11;
      v137 = a4;
      v138 = (v14 + 32);
      v23 = 32;
      while (2)
      {
        if (v23 == 33)
        {
          v38 = *(v15 + 16);
          v133 = 0x80000001BE552AD0;
          v39 = v138;
          while (2)
          {
            if (!v38)
            {
              v41 = *(v15 + 16);
              v42 = v138;
              while (2)
              {
                if (v41)
                {
                  switch(*v42)
                  {
                    case 2:

                      break;
                    default:
                      v43 = sub_1BE54CCDC();

                      ++v42;
                      --v41;
                      if ((v43 & 1) == 0)
                      {
                        continue;
                      }

                      break;
                  }

                  sub_1BE54BABC();
                  sub_1BE54BAAC();
                  sub_1BE54BA9C();
                  sub_1BE54BAAC();
                  sub_1BE54BAEC();
                  if (qword_1EBDABA80 != -1)
                  {
                    swift_once();
                  }

                  v123 = qword_1EBDB0C00;
                  v124 = sub_1BE54BF6C();
                  v53 = v124;
                  v54 = v125;
                  *&v139 = v124;
                  *(&v139 + 1) = v125;
                  v56 = v126 & 1;
                  *&v140 = v126 & 1;
                  *(&v140 + 1) = v127;
                  LOBYTE(v141) = 0;
                }

                else
                {
                  v61 = *(v15 + 16);
                  while (2)
                  {
                    if (!v61)
                    {

                      sub_1BE54BABC();
                      sub_1BE54BAAC();
                      sub_1BE54BA9C();
                      sub_1BE54BAAC();
                      sub_1BE54BAEC();
                      if (qword_1EBDABA80 != -1)
                      {
                        swift_once();
                      }

                      v119 = qword_1EBDB0C00;
                      *&v139 = sub_1BE54BF6C();
                      *(&v139 + 1) = v120;
                      *&v140 = v121 & 1;
                      *(&v140 + 1) = v122;
                      LOWORD(v141) = 0;
                      BYTE2(v141) = 1;
                      sub_1BE4BF11C(&qword_1EBDAC9F8, &qword_1BE54FC78);
                      sub_1BE4FEB58(&qword_1EBDAC9F0, &qword_1EBDAC9F8, &qword_1BE54FC78, sub_1BE4FDE34);
                      sub_1BE54BC0C();
                      goto LABEL_90;
                    }

                    switch(*v138)
                    {
                      case 3:

                        break;
                      default:
                        v62 = sub_1BE54CCDC();

                        ++v138;
                        --v61;
                        if ((v62 & 1) == 0)
                        {
                          continue;
                        }

                        break;
                    }

                    break;
                  }

                  sub_1BE54BABC();
                  sub_1BE54BAAC();
                  sub_1BE54BA9C();
                  sub_1BE54BAAC();
                  sub_1BE54BAEC();
                  if (qword_1EBDABA80 != -1)
                  {
                    swift_once();
                  }

                  v128 = qword_1EBDB0C00;
                  v124 = sub_1BE54BF6C();
                  v53 = v124;
                  v54 = v125;
                  *&v139 = v124;
                  *(&v139 + 1) = v125;
                  v56 = v129 & 1;
                  *&v140 = v129 & 1;
                  *(&v140 + 1) = v130;
                  LOBYTE(v141) = 1;
                }

                break;
              }

              sub_1BE4D91B0(v124, v125, v56);

              sub_1BE54BC0C();
              v139 = v143;
              v140 = v144;
              LOBYTE(v141) = v145;
              BYTE1(v141) = 1;
LABEL_86:
              sub_1BE4BF11C(&qword_1EBDAC690, &qword_1BE54F9C0);
              sub_1BE4FDE34();
              sub_1BE54BC0C();
              if (BYTE1(v145))
              {
                v100 = 256;
              }

              else
              {
                v100 = 0;
              }

              v139 = v143;
              v140 = v144;
              LOWORD(v141) = v100 | v145;
              BYTE2(v141) = 0;
              sub_1BE4BF11C(&qword_1EBDAC9F8, &qword_1BE54FC78);
              sub_1BE4FEB58(&qword_1EBDAC9F0, &qword_1EBDAC9F8, &qword_1BE54FC78, sub_1BE4FDE34);
              sub_1BE54BC0C();
              sub_1BE4C68C8(v53, v54, v56);

LABEL_90:
              v101 = v145;
              v102 = BYTE2(v145);
              v139 = v143;
              v140 = v144;
              LOWORD(v141) = v145;
              HIWORD(v141) = BYTE2(v145) != 0;
              v103 = v143;
              v104 = v144;
              v105 = *(&v144 + 1);
              v136 = *(&v144 + 1);
              v138 = v144;
              LODWORD(v134) = v145;
              LODWORD(v135) = BYTE2(v145);
              sub_1BE4FF3E4(v143, *(&v143 + 1), v144, *(&v144 + 1), v145, SBYTE2(v145));
              sub_1BE4FF3E4(v103, *(&v103 + 1), v104, v105, v101, v102);
              sub_1BE4BF11C(&qword_1EBDAC9E8, &qword_1BE54FC70);
              sub_1BE4BF11C(&qword_1EBDAC690, &qword_1BE54F9C0);
              sub_1BE4FF2E8();
              sub_1BE4FDE34();
              sub_1BE54BC0C();
              v106 = *(&v143 + 1);
              v107 = v144;
              v108 = v145 | (BYTE2(v145) << 16);
              v109 = HIBYTE(v145);
              if (HIBYTE(v145))
              {
                v110 = 0x1000000;
              }

              else
              {
                v110 = 0;
              }

              v132 = *(&v144 + 1);
              v133 = v143;
              v139 = v143;
              v140 = v144;
              v141 = v110 | v108;
              v142 = 0;
              sub_1BE4FF450(v143, *(&v143 + 1), v144, *(&v144 + 1), v145 | (BYTE2(v145) << 16), SHIBYTE(v145), sub_1BE4FF3E4, sub_1BE4FEEF0);
              sub_1BE4BF11C(&qword_1EBDAC9D8, &qword_1BE54FC68);
              sub_1BE4BF11C(&qword_1EBDAC8C0, &qword_1BE54FB08);
              sub_1BE4FF25C();
              sub_1BE4FEC88();
              sub_1BE54BC0C();
              v111 = v138;
              v112 = v136;
              v113 = v134;
              v114 = v135;
              sub_1BE4FF46C(v103, *(&v103 + 1), v138, v136, v134, v135);
              sub_1BE4FF450(v133, v106, v107, v132, v108, v109, sub_1BE4FF46C, sub_1BE4FEF90);
              result = sub_1BE4FF46C(v103, *(&v103 + 1), v111, v112, v113, v114);
              goto LABEL_94;
            }

            switch(*v39)
            {
              case 1:

                break;
              default:
                v40 = sub_1BE54CCDC();

                ++v39;
                --v38;
                if ((v40 & 1) == 0)
                {
                  continue;
                }

                break;
            }

            break;
          }

          sub_1BE54BABC();
          sub_1BE54BAAC();
          sub_1BE54BA9C();
          sub_1BE54BAAC();
          sub_1BE54BAEC();
          if (qword_1EBDABA80 != -1)
          {
            swift_once();
          }

          v97 = qword_1EBDB0C00;
          v51 = sub_1BE54BF6C();
          v53 = v51;
          v54 = v52;
          *&v139 = v51;
          *(&v139 + 1) = v52;
          v56 = v98 & 1;
          *&v140 = v98 & 1;
          *(&v140 + 1) = v99;
          LOBYTE(v141) = 1;
        }

        else
        {
          switch(*(v15 + v23))
          {
            case 1:
            case 2:
            case 3:
              v24 = sub_1BE54CCDC();

              ++v23;
              if ((v24 & 1) == 0)
              {
                continue;
              }

              break;
            default:

              break;
          }

          sub_1BE54BABC();
          sub_1BE54BAAC();
          sub_1BE54BA9C();
          sub_1BE54BAAC();
          sub_1BE54BAEC();
          if (qword_1EBDABA80 != -1)
          {
            swift_once();
          }

          v50 = qword_1EBDB0C00;
          v51 = sub_1BE54BF6C();
          v53 = v51;
          v54 = v52;
          *&v139 = v51;
          *(&v139 + 1) = v52;
          v56 = v55 & 1;
          *&v140 = v55 & 1;
          *(&v140 + 1) = v57;
          LOBYTE(v141) = 0;
        }

        break;
      }

      sub_1BE4D91B0(v51, v52, v56);

      sub_1BE54BC0C();
      v139 = v143;
      v140 = v144;
      LOWORD(v141) = v145;
      goto LABEL_86;
    case 2:
      v134 = a2;
      v135 = a3;
      v136 = v11;
      v137 = a4;
      v20 = (v14 + 32);
      v21 = 32;
      v138 = "moreVisualIntelligence";
      while (2)
      {
        if (v21 == 34)
        {
          goto LABEL_41;
        }

        switch(*(v15 + v21))
        {
          case 1:
          case 2:
          case 3:
            v22 = sub_1BE54CCDC();

            ++v21;
            if ((v22 & 1) == 0)
            {
              continue;
            }

            break;
          default:

            break;
        }

        break;
      }

      v44 = *(v15 + 16);
      v133 = 0x80000001BE552AD0;
      while (2)
      {
        if (!v44)
        {
LABEL_41:

          sub_1BE54BABC();
          sub_1BE54BAAC();
          sub_1BE54BA9C();
          sub_1BE54BAAC();
          sub_1BE54BAEC();
          if (qword_1EBDABA80 != -1)
          {
            swift_once();
          }

          v46 = qword_1EBDB0C00;
          *&v139 = sub_1BE54BF6C();
          *(&v139 + 1) = v47;
          *&v140 = v48 & 1;
          *(&v140 + 1) = v49;
          LOBYTE(v141) = 1;
        }

        else
        {
          switch(*v20)
          {
            case 2:

              break;
            default:
              v45 = sub_1BE54CCDC();

              ++v20;
              --v44;
              if ((v45 & 1) == 0)
              {
                continue;
              }

              break;
          }

          sub_1BE54BABC();
          sub_1BE54BAAC();
          sub_1BE54BA9C();
          sub_1BE54BAAC();
          sub_1BE54BAEC();
          if (qword_1EBDABA80 != -1)
          {
            swift_once();
          }

          v82 = qword_1EBDB0C00;
          *&v139 = sub_1BE54BF6C();
          *(&v139 + 1) = v83;
          *&v140 = v84 & 1;
          *(&v140 + 1) = v85;
          LOBYTE(v141) = 0;
        }

        break;
      }

      sub_1BE54BC0C();
      v139 = v143;
      v140 = v144;
      LOWORD(v141) = v145;
      HIWORD(v141) = 256;
      v87 = *(&v143 + 1);
      v86 = v143;
      v138 = v143;
      v88 = v144;
      v135 = v144;
      v136 = *(&v143 + 1);
      v134 = *(&v144 + 1);
      LODWORD(v133) = v145;
      sub_1BE4FEEF0(v143, *(&v143 + 1), v144);
      sub_1BE4FEEF0(v86, v87, v88);
      sub_1BE4BF11C(&qword_1EBDAC9E8, &qword_1BE54FC70);
      sub_1BE4BF11C(&qword_1EBDAC690, &qword_1BE54F9C0);
      sub_1BE4FF2E8();
      sub_1BE4FDE34();
      sub_1BE54BC0C();
      v89 = *(&v143 + 1);
      v90 = v144;
      v91 = v145 | (BYTE2(v145) << 16);
      v92 = HIBYTE(v145);
      if (HIBYTE(v145))
      {
        v93 = 0x1000000;
      }

      else
      {
        v93 = 0;
      }

      v132 = v143;
      v139 = v143;
      v140 = v144;
      v141 = v93 | v91;
      v142 = 0;
      sub_1BE4FF450(v143, *(&v143 + 1), v144, *(&v144 + 1), v145 | (BYTE2(v145) << 16), SHIBYTE(v145), sub_1BE4FF3E4, sub_1BE4FEEF0);
      sub_1BE4BF11C(&qword_1EBDAC9D8, &qword_1BE54FC68);
      sub_1BE4BF11C(&qword_1EBDAC8C0, &qword_1BE54FB08);
      sub_1BE4FF25C();
      sub_1BE4FEC88();
      sub_1BE54BC0C();
      v94 = v138;
      v96 = v135;
      v95 = v136;
      sub_1BE4FEF90(v138, v136, v135);
      sub_1BE4FF450(v132, v89, v90, *(&v90 + 1), v91, v92, sub_1BE4FF46C, sub_1BE4FEF90);
      v79 = v94;
      v80 = v95;
      v81 = v96;
      goto LABEL_80;
    case 3:
      v134 = a2;
      v135 = a3;
      v136 = v11;
      v137 = a4;
      v17 = (v14 + 32);
      v18 = 32;
      if (v18 == 35)
      {
        goto LABEL_65;
      }

      while (2)
      {
        switch(*(v15 + v18))
        {
          case 1:
          case 2:
          case 3:
            v19 = sub_1BE54CCDC();

            ++v18;
            if ((v19 & 1) == 0)
            {
              continue;
            }

            break;
          default:

            break;
        }

        break;
      }

      v58 = *(v15 + 16);
      v138 = 0x80000001BE552AD0;
      v59 = (v15 + 32);
      while (2)
      {
        if (!v58)
        {
          goto LABEL_65;
        }

        switch(*v59)
        {
          case 1:

            break;
          default:
            v60 = sub_1BE54CCDC();

            ++v59;
            --v58;
            if ((v60 & 1) == 0)
            {
              continue;
            }

            break;
        }

        break;
      }

      v63 = *(v15 + 16);
      while (2)
      {
        if (v63)
        {
          switch(*v17)
          {
            case 2:

              break;
            default:
              v64 = sub_1BE54CCDC();

              ++v17;
              --v63;
              if ((v64 & 1) == 0)
              {
                continue;
              }

              break;
          }

          sub_1BE54BABC();
          sub_1BE54BAAC();
          sub_1BE54BA9C();
          sub_1BE54BAAC();
          sub_1BE54BAEC();
          if (qword_1EBDABA80 != -1)
          {
            swift_once();
          }

          v115 = qword_1EBDB0C00;
          *&v139 = sub_1BE54BF6C();
          *(&v139 + 1) = v116;
          *&v140 = v117 & 1;
          *(&v140 + 1) = v118;
          LOBYTE(v141) = 0;
        }

        else
        {
LABEL_65:

          sub_1BE54BABC();
          sub_1BE54BAAC();
          sub_1BE54BA9C();
          sub_1BE54BAAC();
          sub_1BE54BAEC();
          if (qword_1EBDABA80 != -1)
          {
            swift_once();
          }

          v65 = qword_1EBDB0C00;
          *&v139 = sub_1BE54BF6C();
          *(&v139 + 1) = v66;
          *&v140 = v67 & 1;
          *(&v140 + 1) = v68;
          LOBYTE(v141) = 1;
        }

        break;
      }

      sub_1BE54BC0C();
      v139 = v143;
      v140 = v144;
      LOWORD(v141) = v145;
      v70 = *(&v143 + 1);
      v69 = v143;
      v138 = v143;
      v71 = v144;
      v135 = v144;
      v136 = *(&v143 + 1);
      v134 = *(&v144 + 1);
      LODWORD(v133) = v145;
      sub_1BE4FEEF0(v143, *(&v143 + 1), v144);
      sub_1BE4FEEF0(v69, v70, v71);
      sub_1BE4BF11C(&qword_1EBDAC690, &qword_1BE54F9C0);
      sub_1BE4FDE34();
      sub_1BE54BC0C();
      v72 = v143;
      v73 = v144;
      v74 = v145;
      LODWORD(v132) = BYTE1(v145);
      if (BYTE1(v145))
      {
        v75 = 256;
      }

      else
      {
        v75 = 0;
      }

      v139 = v143;
      v140 = v144;
      v141 = v75 | v145;
      v142 = 1;
      sub_1BE4FEE8C(v143, *(&v143 + 1), v144, *(&v144 + 1), v145, SBYTE1(v145));
      sub_1BE4BF11C(&qword_1EBDAC9D8, &qword_1BE54FC68);
      sub_1BE4BF11C(&qword_1EBDAC8C0, &qword_1BE54FB08);
      sub_1BE4FF25C();
      sub_1BE4FEC88();
      sub_1BE54BC0C();
      v76 = v138;
      v78 = v135;
      v77 = v136;
      sub_1BE4FEF90(v138, v136, v135);
      sub_1BE4FEF2C(v72, *(&v72 + 1), v73, *(&v73 + 1), v74, v132);
      v79 = v76;
      v80 = v77;
      v81 = v78;
LABEL_80:
      result = sub_1BE4FEF90(v79, v80, v81);
LABEL_94:
      v34 = v143;
      v35 = v144;
      v36 = v145;
      v37 = v146;
      a4 = v137;
      goto LABEL_95;
  }

  sub_1BE54BABC();
  sub_1BE54BAAC();
  sub_1BE54BA9C();
  sub_1BE54BAAC();
  sub_1BE54BAEC();
  if (qword_1EBDABA80 != -1)
  {
    swift_once();
  }

  v25 = qword_1EBDB0C00;
  v26 = sub_1BE54BF6C();
  v28 = v27;
  v30 = v29 & 1;
  *&v139 = v26;
  *(&v139 + 1) = v27;
  *&v140 = v29 & 1;
  *(&v140 + 1) = v31;
  LOWORD(v141) = 256;
  sub_1BE4D91B0(v26, v27, v29 & 1);

  sub_1BE4BF11C(&qword_1EBDAC690, &qword_1BE54F9C0);
  sub_1BE4FDE34();
  sub_1BE54BC0C();
  if (BYTE1(v145))
  {
    v32 = 256;
  }

  else
  {
    v32 = 0;
  }

  v139 = v143;
  v140 = v144;
  v141 = v32 | v145;
  v142 = 1;
  sub_1BE4BF11C(&qword_1EBDAC9D8, &qword_1BE54FC68);
  sub_1BE4BF11C(&qword_1EBDAC8C0, &qword_1BE54FB08);
  sub_1BE4FF25C();
  sub_1BE4FEC88();
  sub_1BE54BC0C();
  sub_1BE4C68C8(v26, v28, v30);

  v34 = v143;
  v35 = v144;
  v36 = v145;
  v37 = v146;
LABEL_95:
  *a4 = v34;
  *(a4 + 16) = v35;
  *(a4 + 32) = v36;
  *(a4 + 36) = v37;
  return result;
}

uint64_t sub_1BE4F44E8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v80 = a1;
  v90 = a2;
  v2 = type metadata accessor for GenerativePartnerSettingsPanelView();
  v77 = *(v2 - 8);
  v3 = *(v77 + 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v75 = v4;
  v5 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE4BF11C(&qword_1EBDABD68, &qword_1BE54DEE0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v70 - v11;
  v13 = sub_1BE54AF6C();
  v87 = *(v13 - 8);
  v88 = v13;
  v14 = *(v87 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v84 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v70 - v17;
  v19 = sub_1BE54AD8C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_1BE54C6BC();
  v78 = *(v81 - 8);
  v24 = *(v78 + 64);
  v25 = MEMORY[0x1EEE9AC00](v81);
  v79 = &v70 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v70 - v27;
  v29 = sub_1BE54ADAC();
  v30 = *(v29 - 8);
  v92 = v29;
  v93 = v30;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v70 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_1BE4BF11C(&qword_1EBDABB58, &unk_1BE54DC90);
  v89 = *(v82 - 8);
  v34 = *(v89 + 64);
  v35 = MEMORY[0x1EEE9AC00](v82);
  v86 = &v70 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x1EEE9AC00](v35);
  v85 = &v70 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v83 = &v70 - v40;
  MEMORY[0x1EEE9AC00](v39);
  v91 = &v70 - v41;
  sub_1BE54C65C();
  if (qword_1EBDABA88 != -1)
  {
    swift_once();
  }

  v42 = sub_1BE4C52BC(v19, qword_1EBDB0C08);
  (*(v20 + 16))(v23, v42, v19);
  sub_1BE54AF2C();
  sub_1BE54ADBC();
  sub_1BE54B56C();
  v76 = sub_1BE54B58C();
  sub_1BE4C63F8(v12, 0, 1, v76);
  sub_1BE4FCF80();
  v43 = *(v77 + 80);
  v73 = v23;
  v72 = v20;
  v44 = (v43 + 16) & ~v43;
  v45 = swift_allocObject();
  v71 = v19;
  v74 = v18;
  sub_1BE4FCFD8(v5, v45 + v44);
  sub_1BE4FF0AC();
  v46 = MEMORY[0x1EEE9AC00](v10);
  *(&v70 - 2) = v33;
  v80 = v46;
  sub_1BE54C28C();
  sub_1BE4FF104(v12, &qword_1EBDABD68);
  v47 = *(v93 + 8);
  v75 = v33;
  v93 += 8;
  v77 = v47;
  v47(v33, v92);
  sub_1BE54C65C();
  if (qword_1EBDABA80 != -1)
  {
    swift_once();
  }

  v48 = qword_1EBDB0C00;
  v49 = v74;
  sub_1BE54AF2C();
  v50 = v78;
  v51 = v81;
  (*(v78 + 16))(v79, v28, v81);
  v52 = v87;
  v53 = *(v87 + 16);
  v70 = v28;
  v54 = v88;
  v53(v84, v49, v88);
  v55 = [v48 bundleURL];
  v56 = v73;
  sub_1BE54AE0C();

  (*(v72 + 104))(v56, *MEMORY[0x1E6968DF8], v71);
  v57 = v75;
  sub_1BE54ADBC();
  (*(v52 + 8))(v49, v54);
  (*(v50 + 8))(v70, v51);
  sub_1BE54B57C();
  sub_1BE4C63F8(v12, 0, 1, v76);
  v58 = sub_1BE4FF0AC();
  MEMORY[0x1EEE9AC00](v58);
  *(&v70 - 2) = v57;
  v59 = v83;
  sub_1BE54C28C();
  sub_1BE4FF104(v12, &qword_1EBDABD68);
  v77(v57, v92);
  v60 = v89;
  v61 = *(v89 + 16);
  v62 = v85;
  v63 = v91;
  v64 = v82;
  v61(v85, v91, v82);
  v65 = v86;
  v61(v86, v59, v64);
  v66 = v90;
  v61(v90, v62, v64);
  v67 = sub_1BE4BF11C(&qword_1EBDACA10, &qword_1BE54FC88);
  v61(&v66[*(v67 + 48)], v65, v64);
  v68 = *(v60 + 8);
  v68(v59, v64);
  v68(v63, v64);
  v68(v65, v64);
  return (v68)(v62, v64);
}

uint64_t sub_1BE4F4E98(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for GenerativePartnerSettingsPanelView() + 36));
  v3 = *v1;
  v2 = v1[1];
  sub_1BE4BF11C(&qword_1EBDAC3D0, &unk_1BE54F5F8);
  sub_1BE54C24C();
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  sub_1BE5011B0(v5);
}

uint64_t sub_1BE4F4F18@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE54BACC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1BE54BABC();
  sub_1BE54BAAC();
  sub_1BE54BA9C();
  sub_1BE54BAAC();
  sub_1BE54BA9C();
  sub_1BE54BAAC();
  sub_1BE54BAEC();
  if (qword_1EBDABA80 != -1)
  {
    swift_once();
  }

  v4 = qword_1EBDB0C00;
  result = sub_1BE54BF6C();
  *a1 = result;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v8;
  return result;
}

uint64_t sub_1BE4F50B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v6 = *(*(type metadata accessor for SettingsViewModel.AccountSignInStatus(0) - 8) + 64) + 15;
  v5[12] = swift_task_alloc();
  sub_1BE54C8CC();
  v5[13] = sub_1BE54C8BC();
  v8 = sub_1BE54C87C();
  v5[14] = v8;
  v5[15] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1BE4F517C, v8, v7);
}

uint64_t sub_1BE4F517C()
{
  sub_1BE4E021C();
  v12 = v0;
  if (qword_1EBDABAA8 != -1)
  {
    sub_1BE4FFAF4();
  }

  v1 = sub_1BE54B2EC();
  sub_1BE4C52BC(v1, qword_1EBDB0C38);
  v2 = sub_1BE54B2BC();
  v3 = sub_1BE54C9AC();
  if (sub_1BE4FFCA4(v3))
  {
    v4 = swift_slowAlloc();
    v11 = sub_1BE4FFE98();
    *v4 = 136446466;
    *(v4 + 4) = sub_1BE4C5338(0xD000000000000022, 0x80000001BE54F6D0, &v11);
    *(v4 + 12) = 2082;
    sub_1BE4FFAA0();
    *(v4 + 14) = sub_1BE4C5338(0xD000000000000018, v5, &v11);
    sub_1BE4FFE08(&dword_1BE4B8000, v6, v7, "%{public}s.%{public}s: ExternalAIAuthenticatorHelper().signOutOpenAI()");
    swift_arrayDestroy();
    sub_1BE4C75DC();
    sub_1BE4C75DC();
  }

  sub_1BE4C6918(v0[10], (v0 + 2));
  v8 = type metadata accessor for ExternalAIAuthenticatorHelper();
  sub_1BE4FFCE4(v8);
  v0[16] = sub_1BE534D4C(v0 + 2);
  v9 = swift_task_alloc();
  v0[17] = v9;
  *v9 = v0;
  v9[1] = sub_1BE4F5344;

  return sub_1BE534080();
}

uint64_t sub_1BE4F5344()
{
  v1 = *v0;
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 128);
  v4 = *v0;
  sub_1BE4E01C4();
  *v5 = v4;

  v6 = *(v1 + 120);
  v7 = *(v1 + 112);

  return MEMORY[0x1EEE6DFA0](sub_1BE4F5480, v7, v6);
}

uint64_t sub_1BE4F5480()
{
  sub_1BE4E01D4();
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];

  v4 = type metadata accessor for GenerativePartnerSettingsPanelView();
  sub_1BE4FFDBC(v4);
  *(v3 + 56) = v5;
  v0[8] = v6;
  sub_1BE4BF11C(&qword_1EBDAC3D0, &unk_1BE54F5F8);
  sub_1BE54C24C();
  v7 = v0[9];
  v8 = sub_1BE4BF11C(&qword_1EBDAC548, &qword_1BE54F7C8);
  sub_1BE4FFB88(v8);

  sub_1BE4E01E0();

  return v9();
}

void sub_1BE4F5538(char *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = [objc_opt_self() sharedConnection];
  if (!v4)
  {
    __break(1u);
    return;
  }

  v5 = v4;
  v6 = [v4 isExternalIntelligenceSignInAllowed];

  if (v6)
  {
    v7 = type metadata accessor for GenerativePartnerSettingsPanelView();
    v8 = (v2 + *(v7 + 36));
    v9 = *v8;
    v10 = v8[1];
    *&v26 = *v8;
    *(&v26 + 1) = v10;
    sub_1BE4BF11C(&qword_1EBDAC3D0, &unk_1BE54F5F8);
    sub_1BE54C24C();
    sub_1BE5010B4(&v26);

    if (v27)
    {
      sub_1BE4BF094(&v26, v29);
      static GenerativePartnerRestrictionUtils.useCaseDoesNotAllowCurrentIPCountryCode(provider:)();
      if (v11)
      {
        if (qword_1EBDABAA8 != -1)
        {
          swift_once();
        }

        v12 = sub_1BE54B2EC();
        sub_1BE4C52BC(v12, qword_1EBDB0C38);
        v13 = sub_1BE54B2BC();
        v14 = sub_1BE54C97C();
        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          v16 = swift_slowAlloc();
          *&v26 = v16;
          *v15 = 136446210;
          *(v15 + 4) = sub_1BE4C5338(0xD000000000000025, 0x80000001BE553EE0, &v26);
          _os_log_impl(&dword_1BE4B8000, v13, v14, "%{public}s: Presenting regional unavailability alert, reason = useCaseDoesNotAllowCurrentIPCountryCode", v15, 0xCu);
          sub_1BE4C58A8(v16);
          MEMORY[0x1BFB48AC0](v16, -1, -1);
          MEMORY[0x1BFB48AC0](v15, -1, -1);
        }

        v17 = (v2 + *(v7 + 56));
        v18 = *v17;
        v19 = *(v17 + 1);
        LOBYTE(v26) = v18;
        *(&v26 + 1) = v19;
        LOBYTE(v28) = 1;
        sub_1BE4BF11C(&qword_1EBDABD28, &qword_1BE54DE90);
        sub_1BE54C25C();
        sub_1BE4C58A8(v29);
        return;
      }

      sub_1BE4C58A8(v29);
    }

    else
    {
      sub_1BE4FF104(&v26, &qword_1EBDABAF8);
    }

    if (qword_1EBDABA68 != -1)
    {
      swift_once();
    }

    v29[0] = v9;
    v29[1] = v10;
    v23 = qword_1EBDAD170;
    sub_1BE54C24C();
    v24 = sub_1BE502160();

    sub_1BE4FD8CC(v3, v23, v24);
  }

  else
  {
    if (qword_1EBDABAC8 != -1)
    {
      swift_once();
    }

    v20 = sub_1BE54B2EC();
    sub_1BE4C52BC(v20, qword_1EBDB0C98);
    oslog = sub_1BE54B2BC();
    v21 = sub_1BE54C9AC();
    if (os_log_type_enabled(oslog, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1BE4B8000, oslog, v21, "ExternalIntelligence sign in is not allowed", v22, 2u);
      MEMORY[0x1BFB48AC0](v22, -1, -1);
    }
  }
}

uint64_t sub_1BE4F5918@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v107 = a2;
  v109 = a3;
  v4 = sub_1BE54BACC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v106 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v103 = sub_1BE54B39C();
  *&v102 = *(v103 - 8);
  v7 = *(v102 + 64);
  v8 = MEMORY[0x1EEE9AC00](v103);
  v100 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v101 = &v96 - v10;
  v11 = sub_1BE4BF11C(&qword_1EBDAC980, &qword_1BE54FC08);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v96 - v13;
  v108 = sub_1BE4BF11C(&qword_1EBDAC900, &qword_1BE54FB98);
  v15 = *(*(v108 - 8) + 64);
  MEMORY[0x1EEE9AC00](v108);
  v17 = &v96 - v16;
  v18 = type metadata accessor for SettingsViewModel.AccountSignInStatus(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v96 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1BE54B3DC();
  v104 = *(v22 - 8);
  v105 = v22;
  v23 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v96 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a1[3];
  v26 = a1[4];
  sub_1BE4C52F4(a1, v27);
  (*(v26 + 216))(&v116, v27, v26);
  if (v116 == 128)
  {
    *&v116 = sub_1BE54B3CC();
    *(&v116 + 1) = v28;
    sub_1BE4FEA4C();
    v29 = sub_1BE54BF8C();
    v31 = v30;
    v33 = v32;
    v35 = v34;
    *v17 = sub_1BE54BA3C();
    *(v17 + 1) = 0;
    v17[16] = 1;
    v36 = sub_1BE4BF11C(&qword_1EBDAC958, &qword_1BE54FBE0);
    sub_1BE4F6410(v31, v35, &v17[*(v36 + 44)]);
    sub_1BE4C68C8(v29, v31, v33 & 1);

    sub_1BE4FF0AC();
    swift_storeEnumTagMultiPayload();
    sub_1BE4BF11C(&qword_1EBDAC988, &qword_1BE54FC10);
    sub_1BE4FF864(&qword_1EBDAC990, &qword_1EBDAC900);
    sub_1BE4FF864(&qword_1EBDAC998, &qword_1EBDAC988);
    sub_1BE54BC0C();
    return sub_1BE4FF104(v17, &qword_1EBDAC900);
  }

  v98 = v11;
  v99 = v14;
  v38 = (v107 + *(type metadata accessor for GenerativePartnerSettingsPanelView() + 36));
  v40 = *v38;
  v39 = v38[1];
  *&v116 = v40;
  *(&v116 + 1) = v39;
  sub_1BE4BF11C(&qword_1EBDAC3D0, &unk_1BE54F5F8);
  sub_1BE54C24C();
  sub_1BE50149C();

  v41 = sub_1BE4BF11C(&qword_1EBDAC548, &qword_1BE54F7C8);
  if (sub_1BE4C63BC(v21, 4, v41))
  {
    sub_1BE4FD560();
LABEL_11:
    sub_1BE54BABC();
    sub_1BE54BAAC();
    v60 = a1[3];
    v61 = a1[4];
    sub_1BE4C52F4(a1, v60);
    (*(v61 + 16))(v60, v61);
    sub_1BE54BA9C();

    sub_1BE54BAAC();
    sub_1BE54BAEC();
    if (qword_1EBDABA80 != -1)
    {
      swift_once();
    }

    v62 = qword_1EBDB0C00;
    v111 = sub_1BE54BF6C();
    v112 = v63;
    v113 = v64 & 1;
    v114 = v65;
    v115 = 1;
    sub_1BE54BC0C();
    goto LABEL_14;
  }

  v42 = v104;
  v43 = v105;
  (*(v104 + 32))(v25, v21, v105);
  if ((sub_1BE53455C() & 1) == 0)
  {
    goto LABEL_10;
  }

  v44 = v101;
  sub_1BE54B3AC();
  v45 = sub_1BE54B38C();
  v47 = v46;
  v48 = *(v102 + 8);
  v49 = v44;
  v50 = v103;
  v48(v49, v103);

  v51 = HIBYTE(v47) & 0xF;
  if ((v47 & 0x2000000000000000) == 0)
  {
    v51 = v45 & 0xFFFFFFFFFFFFLL;
  }

  if (!v51)
  {
LABEL_10:
    (*(v42 + 8))(v25, v43);
    goto LABEL_11;
  }

  v52 = v42;
  v53 = v100;
  sub_1BE54B3AC();
  v54 = sub_1BE54B38C();
  v56 = v55;
  v48(v53, v50);
  *&v116 = v54;
  *(&v116 + 1) = v56;
  sub_1BE4FEA4C();
  v111 = sub_1BE54BF8C();
  v112 = v57;
  v113 = v58 & 1;
  v114 = v59;
  v115 = 0;
  sub_1BE54BC0C();
  (*(v52 + 8))(v25, v43);
LABEL_14:
  v66 = v118;
  v102 = v117;
  v103 = v116;
  v106 = v117;
  v107 = v116;
  v104 = *(&v117 + 1);
  v105 = *(&v116 + 1);
  sub_1BE4FEEF0(v116, *(&v116 + 1), v117);
  *&v116 = sub_1BE54B3CC();
  *(&v116 + 1) = v67;
  sub_1BE4FEA4C();
  v68 = sub_1BE54BF8C();
  v70 = v69;
  v72 = v71;
  sub_1BE54BE8C();
  v73 = sub_1BE54BF5C();
  v75 = v74;
  v77 = v76;

  sub_1BE4C68C8(v68, v70, v72 & 1);

  LODWORD(v116) = sub_1BE54BCFC();
  v78 = sub_1BE54BF4C();
  v80 = v79;
  v97 = v79;
  v82 = v81;
  v84 = v83;
  sub_1BE4C68C8(v73, v75, v77 & 1);

  v110 = v66;
  LOBYTE(v116) = v66;
  LODWORD(v100) = v66;
  v85 = v82 & 1;
  LOBYTE(v111) = v82 & 1;
  sub_1BE4D91B0(v78, v80, v82 & 1);

  v87 = v106;
  v86 = v107;
  v88 = v105;
  sub_1BE4FEEF0(v107, v105, v106);
  sub_1BE4D91B0(v78, v80, v85);

  sub_1BE4C68C8(v78, v80, v85);

  sub_1BE4FEF90(v86, v88, v87);
  v89 = v99;
  v90 = v102;
  *v99 = v103;
  v89[1] = v90;
  *(v89 + 32) = v100;
  *(v89 + 5) = v78;
  v91 = v78;
  v101 = v78;
  v92 = v97;
  *(v89 + 6) = v97;
  *(v89 + 56) = v85;
  *(v89 + 8) = v84;
  swift_storeEnumTagMultiPayload();
  sub_1BE4FEEF0(v86, v88, v87);
  sub_1BE4D91B0(v91, v92, v85);

  sub_1BE4BF11C(&qword_1EBDAC988, &qword_1BE54FC10);
  sub_1BE4FF864(&qword_1EBDAC990, &qword_1EBDAC900);
  sub_1BE4FF864(&qword_1EBDAC998, &qword_1EBDAC988);
  sub_1BE54BC0C();
  LOBYTE(v88) = v106;
  v93 = v107;
  v94 = v105;
  sub_1BE4FEF90(v107, v105, v106);
  sub_1BE4FEF90(v93, v94, v88);
  v95 = v101;
  sub_1BE4C68C8(v101, v92, v85);

  sub_1BE4C68C8(v95, v92, v85);
}

uint64_t sub_1BE4F6410@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v28 = a1;
  v29 = a2;
  v30 = sub_1BE4BF11C(&qword_1EBDACA30, &qword_1BE54FCA8);
  v4 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30);
  v6 = &v26 - v5;
  v7 = sub_1BE4BF11C(&qword_1EBDABB58, &unk_1BE54DC90);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v26 - v10;
  v12 = sub_1BE4BF11C(&qword_1EBDACA38, &unk_1BE54FCB0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v26 - v17;
  sub_1BE54BE8C();
  v27 = sub_1BE54BF5C();
  v20 = v19;
  LODWORD(v28) = v21;
  v29 = v22;

  sub_1BE54C29C();
  (*(v8 + 16))(v6, v11, v7);
  swift_storeEnumTagMultiPayload();
  sub_1BE4BF11C(&qword_1EBDABB60, &unk_1BE54E4F0);
  sub_1BE4C5F2C();
  sub_1BE4FF864(&qword_1EBDABC48, &qword_1EBDABB58);
  sub_1BE54BC0C();
  (*(v8 + 8))(v11, v7);
  sub_1BE4FF0AC();
  v23 = v27;
  *a3 = v27;
  *(a3 + 8) = v20;
  LOBYTE(v11) = v28 & 1;
  *(a3 + 16) = v28 & 1;
  *(a3 + 24) = v29;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  v24 = *(sub_1BE4BF11C(&qword_1EBDACA40, &qword_1BE54FCC0) + 64);
  sub_1BE4FF0AC();
  sub_1BE4D91B0(v23, v20, v11);

  sub_1BE4FF104(v18, &qword_1EBDACA38);
  sub_1BE4FF104(v16, &qword_1EBDACA38);
  sub_1BE4C68C8(v23, v20, v11);
}

uint64_t sub_1BE4F6794@<X0>(uint64_t a1@<X8>)
{
  sub_1BE54BADC();
  if (qword_1EBDABA80 != -1)
  {
    swift_once();
  }

  v2 = qword_1EBDB0C00;
  result = sub_1BE54BF6C();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_1BE4F6874@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v173 = a2;
  v174 = a3;
  v158 = sub_1BE4BF11C(&qword_1EBDAC720, &qword_1BE54FA00);
  v4 = *(*(v158 - 8) + 64);
  MEMORY[0x1EEE9AC00](v158);
  v150 = v138 - v5;
  v6 = type metadata accessor for GenerativePartnerSettingsPanelView();
  v7 = v6 - 8;
  v144 = *(v6 - 8);
  v8 = *(v144 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v145 = v9;
  v146 = v138 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = sub_1BE4BF11C(&qword_1EBDAC8F0, &qword_1BE54FB88);
  v10 = *(*(v147 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v147);
  v148 = v138 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v149 = v138 - v13;
  v154 = sub_1BE4BF11C(&qword_1EBDAC8F8, &qword_1BE54FB90);
  v14 = *(*(v154 - 8) + 64);
  MEMORY[0x1EEE9AC00](v154);
  v156 = v138 - v15;
  v178 = sub_1BE4BF11C(&qword_1EBDAC700, &qword_1BE54F9F0);
  v16 = *(*(v178 - 8) + 64);
  MEMORY[0x1EEE9AC00](v178);
  v157 = v138 - v17;
  v155 = sub_1BE4BF11C(&qword_1EBDAC710, &qword_1BE54F9F8);
  v18 = *(*(v155 - 8) + 64);
  MEMORY[0x1EEE9AC00](v155);
  v142 = v138 - v19;
  v20 = sub_1BE4BF11C(&qword_1EBDAC900, &qword_1BE54FB98);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v141 = v138 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v143 = (v138 - v24);
  v167 = sub_1BE4BF11C(&qword_1EBDAC6F0, &qword_1BE54F9E8);
  v25 = *(*(v167 - 8) + 64);
  MEMORY[0x1EEE9AC00](v167);
  v153 = (v138 - v26);
  v175 = sub_1BE4BF11C(&qword_1EBDAC908, &qword_1BE54FBA0);
  v27 = *(*(v175 - 8) + 64);
  MEMORY[0x1EEE9AC00](v175);
  v177 = v138 - v28;
  v165 = sub_1BE4BF11C(&qword_1EBDAC910, &qword_1BE54FBA8);
  v29 = *(*(v165 - 8) + 64);
  MEMORY[0x1EEE9AC00](v165);
  v163 = v138 - v30;
  v176 = sub_1BE4BF11C(&qword_1EBDAC6D0, &qword_1BE54F9D8);
  v31 = *(*(v176 - 8) + 64);
  MEMORY[0x1EEE9AC00](v176);
  v164 = v138 - v32;
  v166 = sub_1BE4BF11C(&qword_1EBDAC6E0, &qword_1BE54F9E0);
  v33 = *(*(v166 - 8) + 64);
  MEMORY[0x1EEE9AC00](v166);
  v160 = v138 - v34;
  v35 = sub_1BE4BF11C(&qword_1EBDAC918, &qword_1BE54FBB0);
  v170 = *(v35 - 8);
  v171 = v35;
  v36 = v170[8];
  v37 = MEMORY[0x1EEE9AC00](v35);
  v161 = v138 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v172 = v138 - v39;
  v40 = sub_1BE4BF11C(&qword_1EBDAC920, &qword_1BE54FBB8);
  v41 = *(*(v40 - 8) + 64);
  v42 = MEMORY[0x1EEE9AC00](v40 - 8);
  v162 = v138 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v179 = v138 - v44;
  v45 = sub_1BE4BF11C(&qword_1EBDAC928, &qword_1BE54FBC0);
  v46 = *(*(v45 - 8) + 64);
  v47 = MEMORY[0x1EEE9AC00](v45 - 8);
  v159 = v138 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v169 = (v138 - v49);
  v50 = type metadata accessor for SettingsViewModel.AccountSignInStatus(0);
  v51 = *(*(v50 - 8) + 64);
  v52 = MEMORY[0x1EEE9AC00](v50 - 8);
  v152 = v138 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = MEMORY[0x1EEE9AC00](v52);
  v151 = v138 - v55;
  v56 = MEMORY[0x1EEE9AC00](v54);
  v58 = v138 - v57;
  MEMORY[0x1EEE9AC00](v56);
  v60 = v138 - v59;
  v168 = sub_1BE54B3DC();
  v61 = *(v168 - 8);
  v62 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v168);
  v64 = v138 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = (a1 + *(v7 + 44));
  v66 = *v65;
  v67 = v65[1];
  v180 = *v65;
  v181 = v67;
  v68 = sub_1BE4BF11C(&qword_1EBDAC3D0, &unk_1BE54F5F8);
  sub_1BE54C24C();
  sub_1BE50149C();

  v69 = sub_1BE4BF11C(&qword_1EBDAC548, &qword_1BE54F7C8);
  if (sub_1BE4C63BC(v60, 4, v69))
  {
    v70 = v173;
    sub_1BE4FD560();
    v180 = v66;
    v181 = v67;
    sub_1BE54C24C();
    sub_1BE50149C();

    v71 = sub_1BE4C63BC(v58, 4, v69);
    sub_1BE4FD560();
    if (v71 == 4)
    {
      v72 = sub_1BE54BA4C();
      v73 = v153;
      *v153 = v72;
      v73[1] = 0;
      *(v73 + 16) = 1;
      v74 = sub_1BE4BF11C(&qword_1EBDAC968, &qword_1BE54FBF0);
      sub_1BE4F8170(a1, v73 + *(v74 + 44));
      sub_1BE4FF0AC();
      swift_storeEnumTagMultiPayload();
      sub_1BE4FF864(&qword_1EBDAC6D8, &qword_1EBDAC6E0);
      sub_1BE4FF864(&qword_1EBDAC6E8, &qword_1EBDAC6F0);
      v75 = v164;
      sub_1BE54BC0C();
      sub_1BE4FF0AC();
      swift_storeEnumTagMultiPayload();
      sub_1BE4FE144();
      sub_1BE4FE228();
      sub_1BE54BC0C();
      sub_1BE4FF104(v75, &qword_1EBDAC6D0);
      v76 = v73;
      v77 = &qword_1EBDAC6F0;
    }

    else
    {
      v96 = v69;
      v97 = v70;
      v98 = v70[3];
      v99 = v70[4];
      sub_1BE4C52F4(v70, v98);
      (*(v99 + 216))(&v180, v98, v99);
      v100 = a1;
      v101 = v68;
      v102 = v152;
      v103 = v151;
      if (v180 != 128)
      {
        goto LABEL_8;
      }

      v180 = v66;
      v181 = v67;
      sub_1BE54C24C();
      sub_1BE50149C();

      sub_1BE4C63F8(v102, 1, 4, v96);
      sub_1BE5005B4(v103, v102);
      v105 = v104;
      sub_1BE4FD560();
      sub_1BE4FD560();
      if (v105)
      {
        goto LABEL_8;
      }

      v180 = v66;
      v181 = v67;
      sub_1BE54C24C();
      sub_1BE50149C();

      sub_1BE4C63F8(v102, 2, 4, v96);
      sub_1BE5005B4(v103, v102);
      v107 = v106;
      sub_1BE4FD560();
      sub_1BE4FD560();
      if (v107)
      {
LABEL_8:
        v138[1] = v100;
        v173 = v101;
        v108 = v146;
        sub_1BE4FCF80();
        v109 = (*(v144 + 80) + 16) & ~*(v144 + 80);
        v110 = swift_allocObject();
        v111 = sub_1BE4FCFD8(v108, v110 + v109);
        MEMORY[0x1EEE9AC00](v111);
        v138[-2] = v100;
        sub_1BE4BF11C(&qword_1EBDAC930, &qword_1BE54FBC8);
        sub_1BE4FEFF4();
        v112 = v149;
        sub_1BE54C29C();
        v180 = v66;
        v181 = v67;
        sub_1BE54C24C();
        sub_1BE50149C();

        sub_1BE4C63F8(v102, 2, 4, v96);
        sub_1BE5005B4(v103, v102);
        v114 = v113;
        sub_1BE4FD560();
        sub_1BE4FD560();
        KeyPath = swift_getKeyPath();
        v116 = swift_allocObject();
        *(v116 + 16) = v114 & 1;
        v117 = &v112[*(v147 + 36)];
        *v117 = KeyPath;
        v117[1] = sub_1BE4FF8C4;
        v117[2] = v116;
        v118 = v179;
        sub_1BE4F7E38(v179);
        v119 = v148;
        sub_1BE4FF0AC();
        v120 = v162;
        sub_1BE4FF0AC();
        v121 = v150;
        sub_1BE4FF0AC();
        v122 = *(sub_1BE4BF11C(&qword_1EBDAC950, &qword_1BE54FBD8) + 48);
        sub_1BE4FF0AC();
        sub_1BE4FF104(v120, &qword_1EBDAC920);
        sub_1BE4FF104(v119, &qword_1EBDAC8F0);
        sub_1BE4FF0AC();
        swift_storeEnumTagMultiPayload();
        sub_1BE4FF864(&qword_1EBDAC708, &qword_1EBDAC710);
        sub_1BE4FF864(&qword_1EBDAC718, &qword_1EBDAC720);
        v123 = v157;
        sub_1BE54BC0C();
        sub_1BE4FF0AC();
        swift_storeEnumTagMultiPayload();
        sub_1BE4FE144();
        sub_1BE4FE228();
        sub_1BE54BC0C();
        sub_1BE4FF104(v123, &qword_1EBDAC700);
        sub_1BE4FF104(v121, &qword_1EBDAC720);
        sub_1BE4FF104(v118, &qword_1EBDAC920);
        v76 = v112;
        v77 = &qword_1EBDAC8F0;
      }

      else
      {
        v124 = sub_1BE54BA3C();
        v125 = v143;
        *v143 = v124;
        v125[1] = 0;
        *(v125 + 16) = 1;
        v126 = sub_1BE4BF11C(&qword_1EBDAC958, &qword_1BE54FBE0);
        sub_1BE4F6410(0x80000001BE5540D0, MEMORY[0x1E69E7CC0], v125 + *(v126 + 44));
        v127 = v172;
        sub_1BE4F1538(v97, v172);
        v128 = v141;
        sub_1BE4FF0AC();
        v129 = v170;
        v130 = v170[2];
        v131 = v161;
        v132 = v127;
        v133 = v171;
        v130(v161, v132, v171);
        v134 = v142;
        sub_1BE4FF0AC();
        v135 = sub_1BE4BF11C(&qword_1EBDAC960, &qword_1BE54FBE8);
        v130((v134 + *(v135 + 48)), v131, v133);
        v136 = v129[1];
        v136(v131, v133);
        sub_1BE4FF104(v128, &qword_1EBDAC900);
        sub_1BE4FF0AC();
        swift_storeEnumTagMultiPayload();
        sub_1BE4FF864(&qword_1EBDAC708, &qword_1EBDAC710);
        sub_1BE4FF864(&qword_1EBDAC718, &qword_1EBDAC720);
        v137 = v157;
        sub_1BE54BC0C();
        sub_1BE4FF0AC();
        swift_storeEnumTagMultiPayload();
        sub_1BE4FE144();
        sub_1BE4FE228();
        sub_1BE54BC0C();
        sub_1BE4FF104(v137, &qword_1EBDAC700);
        sub_1BE4FF104(v134, &qword_1EBDAC710);
        v136(v172, v133);
        v76 = v143;
        v77 = &qword_1EBDAC900;
      }
    }

    return sub_1BE4FF104(v76, v77);
  }

  else
  {
    v140 = v61;
    v78 = *(v61 + 32);
    v139 = v64;
    v78(v64, v60, v168);
    v79 = sub_1BE54BB1C();
    v80 = v169;
    *v169 = v79;
    v80[1] = 0;
    *(v80 + 16) = 1;
    v81 = sub_1BE4BF11C(&qword_1EBDAC970, &qword_1BE54FBF8);
    v82 = v173;
    sub_1BE4F5918(v173, a1, v80 + *(v81 + 44));
    sub_1BE4F7E38(v179);
    v83 = v172;
    sub_1BE4F1538(v82, v172);
    v84 = v159;
    sub_1BE4FF0AC();
    v85 = v162;
    sub_1BE4FF0AC();
    v86 = v170[2];
    v87 = v161;
    v88 = v83;
    v89 = v171;
    v86(v161, v88, v171);
    v90 = v160;
    sub_1BE4FF0AC();
    v91 = sub_1BE4BF11C(&qword_1EBDAC978, &qword_1BE54FC00);
    v92 = *(v91 + 48);
    sub_1BE4FF0AC();
    v86((v90 + *(v91 + 64)), v87, v89);
    v93 = v170[1];
    v93(v87, v89);
    sub_1BE4FF104(v85, &qword_1EBDAC920);
    sub_1BE4FF104(v84, &qword_1EBDAC928);
    sub_1BE4FF0AC();
    swift_storeEnumTagMultiPayload();
    sub_1BE4FF864(&qword_1EBDAC6D8, &qword_1EBDAC6E0);
    sub_1BE4FF864(&qword_1EBDAC6E8, &qword_1EBDAC6F0);
    v94 = v164;
    sub_1BE54BC0C();
    sub_1BE4FF0AC();
    swift_storeEnumTagMultiPayload();
    sub_1BE4FE144();
    sub_1BE4FE228();
    sub_1BE54BC0C();
    sub_1BE4FF104(v94, &qword_1EBDAC6D0);
    sub_1BE4FF104(v90, &qword_1EBDAC6E0);
    v93(v172, v171);
    sub_1BE4FF104(v179, &qword_1EBDAC920);
    sub_1BE4FF104(v169, &qword_1EBDAC928);
    return (*(v140 + 8))(v139, v168);
  }
}

uint64_t sub_1BE4F7E38@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v2 = type metadata accessor for GenerativePartnerSettingsPanelView();
  v3 = v2 - 8;
  v26 = *(v2 - 8);
  v4 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = sub_1BE4BF11C(&qword_1EBDABB58, &unk_1BE54DC90);
  v28 = *(v5 - 8);
  v6 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - v7;
  v9 = sub_1BE4BF11C(&qword_1EBDABEE8, &unk_1BE54F050);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v25 - v11;
  v13 = *(v3 + 44);
  v27 = v1;
  v14 = (v1 + v13);
  v15 = *v14;
  v16 = v14[1];
  v30 = *v14;
  v31 = v16;
  sub_1BE4BF11C(&qword_1EBDAC3D0, &unk_1BE54F5F8);
  sub_1BE54C24C();
  v17 = sub_1BE5021C8();

  if (v17)
  {
    v30 = v15;
    v31 = v16;
    sub_1BE54C24C();
    sub_1BE502160();

    sub_1BE52051C(v12);

    v18 = sub_1BE54AE3C();
    v19 = 1;
    v20 = sub_1BE4C63BC(v12, 1, v18);
    sub_1BE4FF104(v12, &qword_1EBDABEE8);
    v21 = v29;
    if (v20 != 1)
    {
      sub_1BE4FCF80();
      v22 = (*(v26 + 80) + 16) & ~*(v26 + 80);
      v23 = swift_allocObject();
      sub_1BE4FCFD8(&v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22);
      sub_1BE54C29C();
      (*(v28 + 32))(v21, v8, v5);
      v19 = 0;
    }
  }

  else
  {
    v19 = 1;
    v21 = v29;
  }

  return sub_1BE4C63F8(v21, v19, 1, v5);
}

uint64_t sub_1BE4F8170@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = sub_1BE54ADAC();
  v53 = *(v3 - 8);
  v54 = v3;
  v4 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v52 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SettingsViewModel.AccountSignInStatus(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v50 - v11;
  v13 = type metadata accessor for GenerativePartnerSettingsPanelView();
  v14 = v13 - 8;
  v15 = *(v13 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = sub_1BE4BF11C(&qword_1EBDAC8F0, &qword_1BE54FB88);
  v18 = v17 - 8;
  v19 = *(*(v17 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v51 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v50 - v22;
  sub_1BE4FCF80();
  v24 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v25 = swift_allocObject();
  sub_1BE4FCFD8(&v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24);
  v56 = a1;
  sub_1BE4BF11C(&qword_1EBDAC930, &qword_1BE54FBC8);
  sub_1BE4FEFF4();
  sub_1BE54C29C();
  v26 = (a1 + *(v14 + 44));
  v28 = *v26;
  v27 = v26[1];
  v57 = v28;
  v58 = v27;
  sub_1BE4BF11C(&qword_1EBDAC3D0, &unk_1BE54F5F8);
  sub_1BE54C24C();
  sub_1BE50149C();

  v29 = sub_1BE4BF11C(&qword_1EBDAC548, &qword_1BE54F7C8);
  sub_1BE4C63F8(v10, 2, 4, v29);
  sub_1BE5005B4(v12, v10);
  LOBYTE(v15) = v30;
  sub_1BE4FD560();
  sub_1BE4FD560();
  KeyPath = swift_getKeyPath();
  v32 = swift_allocObject();
  *(v32 + 16) = v15 & 1;
  v33 = &v23[*(v18 + 44)];
  *v33 = KeyPath;
  v33[1] = sub_1BE4FF8C4;
  v33[2] = v32;
  (*(v53 + 16))(v52, a1 + *(v14 + 32), v54);
  v34 = sub_1BE54BF7C();
  v36 = v35;
  LOBYTE(v18) = v37;
  LODWORD(v57) = sub_1BE54BCFC();
  v38 = sub_1BE54BF4C();
  v40 = v39;
  LOBYTE(v14) = v41;
  v43 = v42;
  sub_1BE4C68C8(v34, v36, v18 & 1);

  v44 = v51;
  sub_1BE4FF0AC();
  v45 = v55;
  sub_1BE4FF0AC();
  v46 = sub_1BE4BF11C(&qword_1EBDAC9A0, &unk_1BE54FC18);
  v47 = v45 + *(v46 + 48);
  *v47 = 0;
  *(v47 + 8) = 1;
  v48 = v45 + *(v46 + 64);
  *v48 = v38;
  *(v48 + 8) = v40;
  *(v48 + 16) = v14 & 1;
  *(v48 + 24) = v43;
  sub_1BE4D91B0(v38, v40, v14 & 1);

  sub_1BE4FF104(v23, &qword_1EBDAC8F0);
  sub_1BE4C68C8(v38, v40, v14 & 1);

  return sub_1BE4FF104(v44, &qword_1EBDAC8F0);
}

uint64_t sub_1BE4F868C@<X0>(uint64_t a1@<X8>)
{
  sub_1BE54BADC();
  if (qword_1EBDABA80 != -1)
  {
    swift_once();
  }

  v2 = qword_1EBDB0C00;
  result = sub_1BE54BF6C();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_1BE4F876C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a1;
  v93 = a2;
  v82 = sub_1BE4BF11C(&qword_1EBDAC860, &qword_1BE54FAD0);
  v3 = *(*(v82 - 8) + 64);
  MEMORY[0x1EEE9AC00](v82);
  v84 = (&v78 - v4);
  v92 = sub_1BE4BF11C(&qword_1EBDAC868, &qword_1BE54FAD8);
  v5 = *(*(v92 - 8) + 64);
  MEMORY[0x1EEE9AC00](v92);
  v85 = &v78 - v6;
  v90 = sub_1BE4BF11C(&qword_1EBDAC870, &qword_1BE54FAE0);
  v7 = *(*(v90 - 8) + 64);
  MEMORY[0x1EEE9AC00](v90);
  v91 = &v78 - v8;
  v9 = sub_1BE54BD4C();
  v88 = *(v9 - 8);
  v89 = v9;
  v10 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BE4BF11C(&qword_1EBDAC878, &qword_1BE54FAE8);
  v86 = *(v13 - 8);
  v14 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v78 - v15;
  v17 = sub_1BE4BF11C(&qword_1EBDAC880, &qword_1BE54FAF0);
  v87 = *(v17 - 8);
  v18 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v78 - v19;
  v21 = type metadata accessor for SettingsViewModel.AccountSignInStatus(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v78 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(type metadata accessor for GenerativePartnerSettingsPanelView() + 36);
  v81 = v2;
  v26 = (v2 + v25);
  v27 = *v26;
  v28 = v26[1];
  *&v98 = *v26;
  *(&v98 + 1) = v28;
  sub_1BE4BF11C(&qword_1EBDAC3D0, &unk_1BE54F5F8);
  sub_1BE54C24C();
  sub_1BE50149C();

  v29 = sub_1BE4BF11C(&qword_1EBDAC548, &qword_1BE54F7C8);
  v83 = v24;
  if (sub_1BE4C63BC(v24, 4, v29) == 3)
  {
    sub_1BE54B66C();
    sub_1BE54BD3C();
    v30 = sub_1BE4FF864(&qword_1EBDAC888, &qword_1EBDAC878);
    v31 = sub_1BE4FEB10(&qword_1EBDAC890, MEMORY[0x1E697C9C8]);
    v32 = v89;
    sub_1BE54BFDC();
    (*(v88 + 8))(v12, v32);
    (*(v86 + 8))(v16, v13);
    v33 = v87;
    (*(v87 + 16))(v91, v20, v17);
    swift_storeEnumTagMultiPayload();
    *&v98 = v13;
    *(&v98 + 1) = v32;
    *&v99 = v30;
    *(&v99 + 1) = v31;
    swift_getOpaqueTypeConformance2();
    sub_1BE4FED14();
    sub_1BE54BC0C();
    return (*(v33 + 8))(v20, v17);
  }

  else
  {
    v35 = v88;
    v78 = v13;
    v79 = v17;
    type metadata accessor for LegacyGATUserDefaults();
    v36 = sub_1BE536D88();
    if (v36 == 2)
    {
      *&v98 = v27;
      *(&v98 + 1) = v28;
      sub_1BE54C24C();
      v37 = sub_1BE5024AC();

      v38 = sub_1BE50B920(v80, v37);

      if (v38 == 3)
      {
        sub_1BE54B66C();
        v39 = v12;
        sub_1BE54BD3C();
        v81 = sub_1BE4FF864(&qword_1EBDAC888, &qword_1EBDAC878);
        v40 = sub_1BE4FEB10(&qword_1EBDAC890, MEMORY[0x1E697C9C8]);
        v41 = v20;
        v42 = v78;
        v43 = v89;
        sub_1BE54BFDC();
        (*(v35 + 8))(v39, v43);
        (*(v86 + 8))(v16, v42);
        v44 = v43;
        v45 = v87;
        v46 = v20;
        v47 = v79;
        (*(v87 + 16))(v84, v46, v79);
        swift_storeEnumTagMultiPayload();
        v88 = sub_1BE4BF11C(&qword_1EBDAC898, &qword_1BE54FAF8);
        sub_1BE4FEB58(&qword_1EBDAC8A0, &qword_1EBDAC898, &qword_1BE54FAF8, sub_1BE4FEBD0);
        *&v98 = v42;
        *(&v98 + 1) = v43;
        *&v99 = v81;
        *(&v99 + 1) = v40;
        swift_getOpaqueTypeConformance2();
        v48 = v85;
        sub_1BE54BC0C();
        (*(v45 + 8))(v41, v47);
      }

      else
      {
        sub_1BE4F9450(v38, &v98);
        v63 = v98;
        v64 = v99;
        v65 = BYTE1(v100);
        v66 = v100;
        v67 = sub_1BE54BCFC();
        LODWORD(v86) = v65;
        v68 = 256;
        if (!v65)
        {
          v68 = 0;
        }

        v87 = *(&v63 + 1);
        v88 = v63;
        v94 = v63;
        v95 = v64;
        v96 = v68 & 0xFFFFFFFFFFFFFF00 | v66 | (v67 << 32);
        v97 = 1;
        sub_1BE4FEE8C(v63, *(&v63 + 1), v64, *(&v64 + 1), v66, v65);
        sub_1BE4BF11C(&qword_1EBDAC8B0, &qword_1BE54FB00);
        sub_1BE4FEBD0();
        sub_1BE54BC0C();
        v69 = v100;
        v70 = v101;
        v71 = v99;
        v72 = v84;
        *v84 = v98;
        v72[1] = v71;
        *(v72 + 4) = v69;
        *(v72 + 40) = v70;
        swift_storeEnumTagMultiPayload();
        sub_1BE4BF11C(&qword_1EBDAC898, &qword_1BE54FAF8);
        sub_1BE4FEB58(&qword_1EBDAC8A0, &qword_1EBDAC898, &qword_1BE54FAF8, sub_1BE4FEBD0);
        v73 = sub_1BE4FF864(&qword_1EBDAC888, &qword_1EBDAC878);
        v74 = sub_1BE4FEB10(&qword_1EBDAC890, MEMORY[0x1E697C9C8]);
        v75 = v78;
        v44 = v89;
        *&v98 = v78;
        *(&v98 + 1) = v89;
        *&v99 = v73;
        *(&v99 + 1) = v74;
        swift_getOpaqueTypeConformance2();
        v48 = v85;
        sub_1BE54BC0C();
        v42 = v75;
        sub_1BE4FEF2C(v88, v87, v64, *(&v64 + 1), v66, v86);
      }
    }

    else
    {
      if (v36)
      {
        v49 = 2;
      }

      else
      {
        v49 = 0;
      }

      sub_1BE4F9450(v49, &v98);
      v50 = v98;
      v51 = v99;
      v52 = BYTE1(v100);
      v53 = v100;
      v54 = sub_1BE54BCFC();
      LODWORD(v87) = v52;
      v55 = 256;
      if (!v52)
      {
        v55 = 0;
      }

      v88 = v50;
      v94 = v50;
      v95 = v51;
      v96 = v55 & 0xFFFFFFFFFFFFFF00 | v53 | (v54 << 32);
      v97 = 0;
      sub_1BE4FEE8C(v50, *(&v50 + 1), v51, *(&v51 + 1), v53, v52);
      sub_1BE4BF11C(&qword_1EBDAC8B0, &qword_1BE54FB00);
      sub_1BE4FEBD0();
      sub_1BE54BC0C();
      v56 = v100;
      v57 = v101;
      v58 = v99;
      v59 = v84;
      *v84 = v98;
      v59[1] = v58;
      *(v59 + 4) = v56;
      *(v59 + 40) = v57;
      swift_storeEnumTagMultiPayload();
      sub_1BE4BF11C(&qword_1EBDAC898, &qword_1BE54FAF8);
      sub_1BE4FEB58(&qword_1EBDAC8A0, &qword_1EBDAC898, &qword_1BE54FAF8, sub_1BE4FEBD0);
      v60 = sub_1BE4FF864(&qword_1EBDAC888, &qword_1EBDAC878);
      v61 = sub_1BE4FEB10(&qword_1EBDAC890, MEMORY[0x1E697C9C8]);
      v62 = v78;
      v44 = v89;
      *&v98 = v78;
      *(&v98 + 1) = v89;
      *&v99 = v60;
      *(&v99 + 1) = v61;
      swift_getOpaqueTypeConformance2();
      v48 = v85;
      sub_1BE54BC0C();
      v42 = v62;
      sub_1BE4FEF2C(v88, *(&v50 + 1), v51, *(&v51 + 1), v53, v87);
    }

    sub_1BE4FF0AC();
    swift_storeEnumTagMultiPayload();
    v76 = sub_1BE4FF864(&qword_1EBDAC888, &qword_1EBDAC878);
    v77 = sub_1BE4FEB10(&qword_1EBDAC890, MEMORY[0x1E697C9C8]);
    *&v98 = v42;
    *(&v98 + 1) = v44;
    *&v99 = v76;
    *(&v99 + 1) = v77;
    swift_getOpaqueTypeConformance2();
    sub_1BE4FED14();
    sub_1BE54BC0C();
    sub_1BE4FF104(v48, &qword_1EBDAC868);
    return sub_1BE4FD560();
  }
}

double sub_1BE4F9450@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if (!a1)
  {
    sub_1BE54BADC();
    if (qword_1EBDABA80 == -1)
    {
LABEL_6:
      v3 = qword_1EBDB0C00;
      v4 = sub_1BE54BF6C();
      v6 = v5;
      v8 = v7 & 1;
      sub_1BE4D91B0(v4, v5, v7 & 1);

      sub_1BE54BC0C();
      sub_1BE4BF11C(&qword_1EBDAC690, &qword_1BE54F9C0);
      sub_1BE4FDE34();
      sub_1BE54BC0C();
      sub_1BE4C68C8(v4, v6, v8);

      goto LABEL_10;
    }

LABEL_11:
    swift_once();
    goto LABEL_6;
  }

  if (a1 == 1)
  {
    sub_1BE54BADC();
    if (qword_1EBDABA80 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  sub_1BE54BADC();
  if (qword_1EBDABA80 != -1)
  {
    swift_once();
  }

  v9 = qword_1EBDB0C00;
  sub_1BE54BF6C();
  sub_1BE4BF11C(&qword_1EBDAC690, &qword_1BE54F9C0);
  sub_1BE4FDE34();
  sub_1BE54BC0C();
LABEL_10:
  result = *&v11;
  *a2 = v11;
  *(a2 + 16) = v12;
  *(a2 + 32) = v13;
  *(a2 + 33) = v14;
  return result;
}

uint64_t sub_1BE4F97C4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v40 = a3;
  v5 = sub_1BE4BF11C(&qword_1EBDAC830, &qword_1BE54FAA0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v39 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v38 = &v31 - v9;
  v35 = sub_1BE4BF11C(&qword_1EBDAC838, &qword_1BE54FAA8);
  v10 = *(*(v35 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v35);
  v37 = (&v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v31 - v13;
  *v14 = sub_1BE54BA4C();
  *(v14 + 1) = 0;
  v14[16] = 1;
  v32 = sub_1BE4BF11C(&qword_1EBDAC840, &qword_1BE54FAB0);
  v15 = *(v32 + 44);
  v36 = v14;
  v33 = a1;
  sub_1BE4F9BD8();
  v16 = a2[3];
  v17 = a2[4];
  sub_1BE4C52F4(a2, v16);
  v18 = (*(v17 + 224))(v16, v17);
  v19 = *(v18 + 16);
  v34 = v18;
  v20 = (v18 + 32);
  while (2)
  {
    if (v19)
    {
      switch(*v20)
      {
        case 3:

          break;
        default:
          v21 = sub_1BE54CCDC();

          ++v20;
          --v19;
          if ((v21 & 1) == 0)
          {
            continue;
          }

          break;
      }

      v26 = sub_1BE54BA4C();
      v25 = v37;
      *v37 = v26;
      *(v25 + 8) = 0;
      *(v25 + 16) = 1;
      v27 = v25 + *(v32 + 44);
      sub_1BE4F9BD8();
      v24 = v38;
      sub_1BE4BCB1C();
      v22 = 0;
      v23 = v39;
    }

    else
    {

      v22 = 1;
      v23 = v39;
      v25 = v37;
      v24 = v38;
    }

    break;
  }

  v28 = v36;
  sub_1BE4C63F8(v24, v22, 1, v35);
  sub_1BE4FF0AC();
  sub_1BE4FF0AC();
  sub_1BE4FF0AC();
  v29 = *(sub_1BE4BF11C(&qword_1EBDAC848, &qword_1BE54FAB8) + 48);
  sub_1BE4FF0AC();
  sub_1BE4FF104(v24, &qword_1EBDAC830);
  sub_1BE4FF104(v28, &qword_1EBDAC838);
  sub_1BE4FF104(v23, &qword_1EBDAC830);
  return sub_1BE4FF104(v25, &qword_1EBDAC838);
}

void sub_1BE4F9BD8()
{
  sub_1BE4FFB64();
  v36 = v1;
  v38 = v2;
  sub_1BE4FFD44();
  v39 = sub_1BE54B40C();
  v3 = sub_1BE4C7500(v39);
  v37 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1BE4C757C();
  v9 = v8 - v7;
  v10 = sub_1BE4BF11C(&qword_1EBDAC850, &qword_1BE54FAC0);
  v11 = sub_1BE4C7570(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1BE4CE5E4();
  v40 = v14;
  sub_1BE4CE6F8();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v35 - v16;
  sub_1BE54BADC();
  if (qword_1EBDABA80 != -1)
  {
    sub_1BE4FF8DC();
  }

  v18 = qword_1EBDB0C00;
  v19 = sub_1BE54BF6C();
  v21 = v20;
  v23 = v22;
  v41 = sub_1BE54BCEC();
  v24 = sub_1BE54BF4C();
  v26 = v25;
  HIDWORD(v35) = v27;
  v29 = v28;
  sub_1BE4C68C8(v19, v21, v23 & 1);

  v30 = v37;
  v31 = v39;
  (*(v37 + 104))(v9, *v36, v39);
  sub_1BE4F876C(v9, v17);
  (*(v30 + 8))(v9, v31);
  sub_1BE4FF0AC();
  *v0 = v24;
  *(v0 + 8) = v26;
  LOBYTE(v30) = BYTE4(v35) & 1;
  *(v0 + 16) = BYTE4(v35) & 1;
  *(v0 + 24) = v29;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  v32 = *(sub_1BE4BF11C(&qword_1EBDAC858, &qword_1BE54FAC8) + 64);
  sub_1BE4FF0AC();
  sub_1BE4D91B0(v24, v26, v30);

  sub_1BE4FF104(v17, &qword_1EBDAC850);
  v33 = sub_1BE4FFD2C();
  sub_1BE4FF104(v33, v34);
  sub_1BE4C68C8(v24, v26, v30);

  sub_1BE4FFB4C();
}

id sub_1BE4F9ED8@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v2 = type metadata accessor for GenerativePartnerSettingsPanelView();
  v3 = v2 - 8;
  v46 = *(v2 - 8);
  v4 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v47 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE4BF11C(&qword_1EBDABB58, &unk_1BE54DC90);
  v44 = *(v5 - 8);
  v45 = v5;
  v6 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v49 = &v42 - v7;
  v8 = sub_1BE4BF11C(&qword_1EBDAC820, &unk_1BE54FA90);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v43 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v42 = &v42 - v12;
  v13 = sub_1BE4BF11C(&qword_1EBDABEE8, &unk_1BE54F050);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v42 - v15;
  v17 = *(v3 + 44);
  v48 = v1;
  v18 = (v1 + v17);
  v19 = *v18;
  v20 = v18[1];
  v51 = *v18;
  v52 = v20;
  sub_1BE4BF11C(&qword_1EBDAC3D0, &unk_1BE54F5F8);
  sub_1BE54C24C();
  sub_1BE502160();

  sub_1BE52051C(v16);

  v21 = sub_1BE54AE3C();
  v22 = 1;
  v23 = sub_1BE4C63BC(v16, 1, v21);
  sub_1BE4FF104(v16, &qword_1EBDABEE8);
  v24 = v23 == 1;
  v25 = v50;
  if (v24)
  {
    return sub_1BE4C63F8(v25, v22, 1, v8);
  }

  v51 = v19;
  v52 = v20;
  sub_1BE54C24C();
  sub_1BE502160();

  v26 = sub_1BE5205BC();
  v28 = v27;

  if (!v28)
  {
    v22 = 1;
    return sub_1BE4C63F8(v25, v22, 1, v8);
  }

  v51 = v26;
  v52 = v28;
  v29 = v47;
  sub_1BE4FCF80();
  v30 = (*(v46 + 80) + 16) & ~*(v46 + 80);
  v31 = swift_allocObject();
  sub_1BE4FCFD8(v29, v31 + v30);
  sub_1BE4FEA4C();
  v32 = v49;
  sub_1BE54C2AC();
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v34 = result;
    v35 = [result isExternalIntelligenceSignInAllowed];

    if (v35)
    {
      type metadata accessor for GenerativePartnerServiceUserDefaults();
      v36 = sub_1BE53EA04() ^ 1;
    }

    else
    {
      v36 = 1;
    }

    KeyPath = swift_getKeyPath();
    v38 = swift_allocObject();
    *(v38 + 16) = v36 & 1;
    v39 = v43;
    (*(v44 + 32))(v43, v32, v45);
    v40 = (v39 + *(v8 + 36));
    *v40 = KeyPath;
    v40[1] = sub_1BE4FF8C4;
    v40[2] = v38;
    v41 = v42;
    sub_1BE4FEAA0(v39, v42);
    sub_1BE4FEAA0(v41, v25);
    v22 = 0;
    return sub_1BE4C63F8(v25, v22, 1, v8);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BE4FA368@<X0>(void (*a1)(char *, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1BE54BA4C();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = a2 + *(sub_1BE4BF11C(&qword_1EBDACA60, &qword_1BE54FD58) + 44);
  *v4 = sub_1BE54BB1C();
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  v5 = sub_1BE4BF11C(&qword_1EBDACA68, &qword_1BE54FD60);
  return sub_1BE4FADB4(a1, v4 + *(v5 + 44));
}

uint64_t sub_1BE4FA3E8@<X0>(__int128 *a1@<X8>)
{
  v67 = a1;
  v1 = sub_1BE54BACC();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v62 = sub_1BE54ACEC();
  v61 = *(v62 - 8);
  v3 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v60 = v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_1BE54ACFC();
  v57 = *(v58 - 8);
  v5 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v59 = v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE54AD1C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v56[1] = v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE54AD3C();
  v64 = *(v10 - 8);
  v11 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v63 = v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BE4BF11C(&qword_1EBDABEE8, &unk_1BE54F050);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = v56 - v18;
  v20 = sub_1BE54AF6C();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = sub_1BE54C6BC();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = sub_1BE54C69C();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  *&v66 = sub_1BE54ADAC();
  *&v65 = *(v66 - 8);
  v26 = *(v65 + 64);
  v27 = MEMORY[0x1EEE9AC00](v66);
  v29 = v56 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v31 = v56 - v30;
  sub_1BE54B24C();
  sub_1BE54B22C();
  sub_1BE54B20C();

  if (!v77)
  {
    sub_1BE4FF104(v76, &unk_1EBDAC550);
    v73 = 0u;
    v74 = 0u;
    v75 = 0;
    goto LABEL_8;
  }

  v56[0] = v10;
  sub_1BE4C52F4(v76, v77);
  sub_1BE4EB2CC(&v73);
  sub_1BE4C58A8(v76);
  if (!*(&v74 + 1))
  {
LABEL_8:
    result = sub_1BE4FF104(&v73, &qword_1EBDABAF8);
    v45 = 0uLL;
    v46 = -1;
    v47 = 0uLL;
    goto LABEL_11;
  }

  sub_1BE4BF094(&v73, v76);
  sub_1BE4C6918(v76, &v73);
  sub_1BE512114(&v73, v31);
  sub_1BE4FF104(&v73, &qword_1EBDABAF8);
  sub_1BE54C68C();
  sub_1BE54C67C();
  sub_1BE4C52F4(v76, v77);
  LLMProvider.localizedTermsTitle()();
  sub_1BE54C66C();

  sub_1BE54C67C();
  sub_1BE54C6AC();
  if (qword_1EBDABA80 != -1)
  {
    swift_once();
  }

  v32 = qword_1EBDB0C00;
  sub_1BE54AF2C();
  v33 = sub_1BE54C71C();
  v35 = v34;
  v36 = v77;
  v37 = v78;
  sub_1BE4C52F4(v76, v77);
  (*(v37 + 176))(v36, v37);
  v38 = sub_1BE54AE3C();
  if (sub_1BE4C63BC(v19, 1, v38) == 1)
  {

    sub_1BE4FF104(v19, &qword_1EBDABEE8);
    v39 = v65;
    v40 = v66;
    (*(v65 + 16))(v29, v31, v66);
    v68 = sub_1BE54BF7C();
    v69 = v41;
    v70 = v42 & 1;
    v71 = v43;
    v72 = 1;
    sub_1BE54BC0C();
    (*(v39 + 8))(v31, v40);
  }

  else
  {
    v48 = sub_1BE54ADEC();
    v50 = v49;
    (*(*(v38 - 8) + 8))(v19, v38);
    *&v73 = 91;
    *(&v73 + 1) = 0xE100000000000000;
    MEMORY[0x1BFB47CA0](v33, v35);

    MEMORY[0x1BFB47CA0](10333, 0xE200000000000000);
    MEMORY[0x1BFB47CA0](v48, v50);

    MEMORY[0x1BFB47CA0](41, 0xE100000000000000);
    sub_1BE4C63F8(v17, 1, 1, v38);
    (*(v57 + 104))(v59, *MEMORY[0x1E6968750], v58);
    (*(v61 + 104))(v60, *MEMORY[0x1E6968728], v62);
    sub_1BE54AD0C();
    v51 = v63;
    sub_1BE54AD2C();
    sub_1BE54BABC();
    sub_1BE54BAAC();
    sub_1BE54BA8C();
    sub_1BE54BAAC();
    sub_1BE54BA7C();
    sub_1BE54BAAC();
    sub_1BE54BAEC();
    v68 = sub_1BE54BF6C();
    v69 = v52;
    v70 = v53 & 1;
    v71 = v54;
    v72 = 0;
    sub_1BE54BC0C();
    (*(v64 + 8))(v51, v56[0]);
    (*(v65 + 8))(v31, v66);
  }

  v65 = v74;
  v66 = v73;
  v46 = v75;
  result = sub_1BE4C58A8(v76);
  v45 = v66;
  v47 = v65;
LABEL_11:
  v55 = v67;
  *v67 = v45;
  v55[1] = v47;
  *(v55 + 32) = v46;
  return result;
}

uint64_t sub_1BE4FADB4@<X0>(void (*a1)(char *, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1BE54BA4C();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = sub_1BE4BF11C(&qword_1EBDACA70, &qword_1BE54FD68);
  sub_1BE4FAE94(a1, a2 + *(v4 + 44));
  type metadata accessor for GenerativePartnerServiceUserDefaults();
  LOBYTE(a1) = sub_1BE53EA04();
  KeyPath = swift_getKeyPath();
  v6 = swift_allocObject();
  *(v6 + 16) = (a1 & 1) == 0;
  result = sub_1BE4BF11C(&qword_1EBDACA78, &qword_1BE54FD70);
  v8 = (a2 + *(result + 36));
  *v8 = KeyPath;
  v8[1] = sub_1BE4FF8C4;
  v8[2] = v6;
  return result;
}

uint64_t sub_1BE4FAE94@<X0>(void (*a1)(char *, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v106 = a2;
  v105 = sub_1BE4BF11C(&qword_1EBDACA80, &qword_1BE54FD78);
  v3 = *(*(v105 - 8) + 64);
  MEMORY[0x1EEE9AC00](v105);
  v101 = (&v75 - v4);
  v5 = type metadata accessor for GenerativePartnerSettingsPanelView();
  v6 = v5 - 8;
  v98 = *(v5 - 8);
  v7 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v99 = v8;
  v88 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_1BE54AD8C();
  v93 = *(v94 - 8);
  v9 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v94);
  v92 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_1BE54AF6C();
  v89 = *(v91 - 8);
  v11 = *(v89 + 64);
  v12 = MEMORY[0x1EEE9AC00](v91);
  v87 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v85 = &v75 - v14;
  v103 = sub_1BE54C6BC();
  v86 = *(v103 - 8);
  v15 = *(v86 + 64);
  v16 = MEMORY[0x1EEE9AC00](v103);
  v84 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v83 = &v75 - v18;
  v19 = sub_1BE54ADAC();
  v96 = *(v19 - 8);
  v97 = v19;
  v20 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v90 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_1BE4BF11C(&qword_1EBDABB58, &unk_1BE54DC90);
  v100 = *(v95 - 8);
  v22 = *(v100 + 64);
  v23 = MEMORY[0x1EEE9AC00](v95);
  v25 = &v75 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v75 - v26;
  v28 = sub_1BE54BACC();
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v104 = sub_1BE4BF11C(&qword_1EBDACA88, &qword_1BE54FD80);
  v30 = *(*(v104 - 8) + 64);
  MEMORY[0x1EEE9AC00](v104);
  v32 = &v75 - v31;
  v33 = sub_1BE4BF11C(&qword_1EBDAC7B8, &qword_1BE54FA50);
  v102 = *(v33 - 8);
  v34 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v75 - v35;
  v37 = *(v6 + 44);
  v107 = a1;
  v38 = a1 + v37;
  v39 = *v38;
  v40 = *(v38 + 1);
  v110 = *v38;
  v111 = v40;
  sub_1BE4BF11C(&qword_1EBDAC3D0, &unk_1BE54F5F8);
  sub_1BE54C24C();
  sub_1BE5010B4(&v110);

  v41 = v113;
  sub_1BE4FF104(&v110, &qword_1EBDABAF8);
  if (v41)
  {
    v108 = v39;
    v109 = v40;
    sub_1BE54C26C();
    v42 = v110;
    v43 = v111;
    v44 = v112;
    swift_getKeyPath();
    v110 = v42;
    v111 = v43;
    v112 = v44;
    sub_1BE4BF11C(&qword_1EBDAC520, &qword_1BE54F778);
    sub_1BE54C31C();

    MEMORY[0x1EEE9AC00](v45);
    sub_1BE54C2DC();
    v46 = v102;
    (*(v102 + 16))(v32, v36, v33);
    swift_storeEnumTagMultiPayload();
    sub_1BE4FF864(&qword_1EBDAC7B0, &qword_1EBDAC7B8);
    sub_1BE4FF864(&qword_1EBDACA98, &qword_1EBDACA80);
    sub_1BE54BC0C();
    return (*(v46 + 8))(v36, v33);
  }

  else
  {
    v48 = v83;
    v80 = v25;
    v82 = v27;
    v81 = v32;
    v102 = v33;
    sub_1BE54BABC();
    sub_1BE54BAAC();
    sub_1BE4E92F8();
    sub_1BE54BA9C();

    sub_1BE54BAAC();
    sub_1BE54BAEC();
    if (qword_1EBDABA80 != -1)
    {
      swift_once();
    }

    v49 = qword_1EBDB0C00;
    v77 = sub_1BE54BF6C();
    v76 = v50;
    v78 = v51;
    v79 = v52;
    v53 = v48;
    sub_1BE54C65C();
    v54 = v85;
    sub_1BE54AF2C();
    v55 = v86;
    (*(v86 + 16))(v84, v48, v103);
    v56 = v89;
    v57 = v91;
    (*(v89 + 16))(v87, v54, v91);
    v58 = [v49 bundleURL];
    v59 = v92;
    sub_1BE54AE0C();

    (*(v93 + 104))(v59, *MEMORY[0x1E6968DF8], v94);
    v60 = v90;
    sub_1BE54ADBC();
    (*(v56 + 8))(v54, v57);
    (*(v55 + 8))(v53, v103);
    v61 = v88;
    sub_1BE4FCF80();
    v62 = (*(v98 + 80) + 16) & ~*(v98 + 80);
    v63 = swift_allocObject();
    v64 = sub_1BE4FCFD8(v61, v63 + v62);
    MEMORY[0x1EEE9AC00](v64);
    v65 = v82;
    sub_1BE54C29C();
    (*(v96 + 8))(v60, v97);
    v66 = v100;
    v67 = *(v100 + 16);
    v68 = v80;
    v69 = v95;
    v67(v80, v65, v95);
    v70 = v101;
    v71 = v77;
    v72 = v76;
    *v101 = v77;
    *(v70 + 8) = v72;
    LOBYTE(v57) = v78 & 1;
    *(v70 + 16) = v78 & 1;
    *(v70 + 24) = v79;
    *(v70 + 32) = 0;
    *(v70 + 40) = 1;
    v73 = sub_1BE4BF11C(&qword_1EBDACA90, &qword_1BE54FD88);
    v67((v70 + *(v73 + 64)), v68, v69);
    sub_1BE4D91B0(v71, v72, v57);

    sub_1BE4D91B0(v71, v72, v57);
    v107 = *(v66 + 8);
    v74 = v107;

    v74(v68, v69);
    sub_1BE4C68C8(v71, v72, v57);

    sub_1BE4FF0AC();
    swift_storeEnumTagMultiPayload();
    sub_1BE4FF864(&qword_1EBDAC7B0, &qword_1EBDAC7B8);
    sub_1BE4FF864(&qword_1EBDACA98, &qword_1EBDACA80);
    sub_1BE54BC0C();
    sub_1BE4C68C8(v71, v72, v57);

    sub_1BE4FF104(v70, &qword_1EBDACA80);
    return (v107)(v82, v69);
  }
}

uint64_t sub_1BE4FBB64@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE54BACC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1BE54BABC();
  sub_1BE54BAAC();
  sub_1BE4E92F8();
  sub_1BE54BA9C();

  sub_1BE54BAAC();
  sub_1BE54BAEC();
  if (qword_1EBDABA80 != -1)
  {
    swift_once();
  }

  v4 = qword_1EBDB0C00;
  result = sub_1BE54BF6C();
  *a1 = result;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v8;
  return result;
}

uint64_t sub_1BE4FBCD4(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for GenerativePartnerSettingsPanelView() + 40));
  v3 = *v1;
  v4 = *(v1 + 1);
  sub_1BE4BF11C(&qword_1EBDABD28, &qword_1BE54DE90);
  return sub_1BE54C25C();
}

uint64_t sub_1BE4FBD48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22[1] = a2;
  v22[0] = sub_1BE4BF11C(&qword_1EBDACA58, &qword_1BE54FD00);
  v3 = *(*(v22[0] - 8) + 64);
  MEMORY[0x1EEE9AC00](v22[0]);
  v5 = v22 - v4;
  v6 = sub_1BE4BF11C(&qword_1EBDAC7B8, &qword_1BE54FA50);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v22 - v9;
  v11 = (a1 + *(type metadata accessor for GenerativePartnerSettingsPanelView() + 36));
  v13 = v11[1];
  v23 = *v11;
  v12 = v23;
  v24 = v13;
  sub_1BE4BF11C(&qword_1EBDAC3D0, &unk_1BE54F5F8);
  sub_1BE54C24C();
  sub_1BE5010B4(&v23);

  v14 = v26;
  sub_1BE4FF104(&v23, &qword_1EBDABAF8);
  v22[2] = v12;
  v22[3] = v13;
  sub_1BE54C26C();
  if (v14)
  {
    v15 = v23;
    v16 = v24;
    v17 = v25;
    swift_getKeyPath();
    v23 = v15;
    v24 = v16;
    v25 = v17;
  }

  else
  {
    v18 = v23;
    v19 = v24;
    v20 = v25;
    swift_getKeyPath();
    v23 = v18;
    v24 = v19;
    v25 = v20;
  }

  sub_1BE4BF11C(&qword_1EBDAC520, &qword_1BE54F778);
  sub_1BE54C31C();

  sub_1BE54C2DC();
  (*(v7 + 16))(v5, v10, v6);
  swift_storeEnumTagMultiPayload();
  sub_1BE4FF864(&qword_1EBDAC7B0, &qword_1EBDAC7B8);
  sub_1BE54BC0C();
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1BE4FC140(void *a1, uint64_t a2)
{
  sub_1BE4FFD44();
  v5 = sub_1BE54ADAC();
  v6 = sub_1BE4C7500(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1BE4C757C();
  v13 = v12 - v11;
  if (*a1 != -1)
  {
    swift_once();
  }

  v14 = sub_1BE4C52BC(v5, a2);
  (*(v8 + 16))(v13, v14, v5);
  result = sub_1BE54BF7C();
  *v2 = result;
  *(v2 + 8) = v16;
  *(v2 + 16) = v17 & 1;
  *(v2 + 24) = v18;
  return result;
}

uint64_t sub_1BE4FC244@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE54ADAC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (a1 + *(type metadata accessor for GenerativePartnerSettingsPanelView() + 36));
  v8 = *v6;
  v7 = v6[1];
  *&v16 = v8;
  *(&v16 + 1) = v7;
  sub_1BE4BF11C(&qword_1EBDAC3D0, &unk_1BE54F5F8);
  sub_1BE54C24C();
  sub_1BE5010B4(&v16);

  if (*(&v17 + 1))
  {
    sub_1BE4BF094(&v16, v19);
    sub_1BE511BAC(v19);
    sub_1BE54BF7C();
    sub_1BE54BC0C();
    result = sub_1BE4C58A8(v19);
    v10 = v16;
    v11 = v17;
    v12 = v18;
  }

  else
  {
    sub_1BE4FF104(&v16, &qword_1EBDABAF8);
    sub_1BE511E6C();
    *&v16 = sub_1BE54BF7C();
    *(&v16 + 1) = v14;
    *&v17 = v13 & 1;
    *(&v17 + 1) = v15;
    v18 = 1;
    result = sub_1BE54BC0C();
    v10 = v19[0];
    v11 = v19[1];
    v12 = v20;
  }

  *a2 = v10;
  *(a2 + 16) = v11;
  *(a2 + 32) = v12;
  return result;
}

uint64_t type metadata accessor for GenerativePartnerSettingsPanelView()
{
  result = qword_1EBDAC4B0;
  if (!qword_1EBDAC4B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BE4FC438(uint64_t a1)
{
  v2 = sub_1BE54B5BC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1BE54B84C();
}

unint64_t sub_1BE4FC524()
{
  result = qword_1EBDAC3F8;
  if (!qword_1EBDAC3F8)
  {
    sub_1BE4C5948(&qword_1EBDAC3F0, &qword_1BE54F620);
    sub_1BE4C5948(&qword_1EBDAC400, &qword_1BE54F628);
    sub_1BE54BA2C();
    sub_1BE4FC668();
    sub_1BE4FEB10(&qword_1EBDAC470, MEMORY[0x1E697C480]);
    swift_getOpaqueTypeConformance2();
    sub_1BE4FF864(&qword_1EBDAC478, &unk_1EBDAC480);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC3F8);
  }

  return result;
}

unint64_t sub_1BE4FC668()
{
  result = qword_1EBDAC408;
  if (!qword_1EBDAC408)
  {
    sub_1BE4C5948(&qword_1EBDAC400, &qword_1BE54F628);
    sub_1BE4FC720();
    sub_1BE4FF864(&qword_1EBDAC0B8, &qword_1EBDABF58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC408);
  }

  return result;
}

unint64_t sub_1BE4FC720()
{
  result = qword_1EBDAC410;
  if (!qword_1EBDAC410)
  {
    sub_1BE4C5948(&qword_1EBDAC418, &qword_1BE54F630);
    sub_1BE4FC7A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC410);
  }

  return result;
}

unint64_t sub_1BE4FC7A4()
{
  result = qword_1EBDAC420;
  if (!qword_1EBDAC420)
  {
    sub_1BE4C5948(&qword_1EBDAC428, &qword_1BE54F638);
    sub_1BE4FC830();
    sub_1BE4FC98C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC420);
  }

  return result;
}

unint64_t sub_1BE4FC830()
{
  result = qword_1EBDAC430;
  if (!qword_1EBDAC430)
  {
    sub_1BE4C5948(&qword_1EBDAC438, &qword_1BE54F640);
    sub_1BE4C5948(&qword_1EBDAC440, &qword_1BE54F648);
    sub_1BE4FF864(&qword_1EBDAC448, &qword_1EBDAC440);
    swift_getOpaqueTypeConformance2();
    sub_1BE4C5948(&qword_1EBDAC450, &qword_1BE54F650);
    sub_1BE4FF864(&qword_1EBDAC458, &qword_1EBDAC450);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC430);
  }

  return result;
}

unint64_t sub_1BE4FC98C()
{
  result = qword_1EBDAC460;
  if (!qword_1EBDAC460)
  {
    sub_1BE4C5948(&qword_1EBDAC468, &qword_1BE54F658);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC460);
  }

  return result;
}

uint64_t sub_1BE4FCA54()
{
  v0 = sub_1BE54ADAC();
  if (v1 <= 0x3F)
  {
    sub_1BE4FCCC8(319, &qword_1EBDAC030, &qword_1EBDAC038, qword_1BE54E6A8, MEMORY[0x1E697DCC0]);
    if (v3 > 0x3F)
    {
      return v2;
    }

    sub_1BE4FCD2C(319, &qword_1EBDAC4C0, MEMORY[0x1E697BE48], MEMORY[0x1E697DCC0]);
    if (v4 > 0x3F)
    {
      return v2;
    }

    sub_1BE4FCD2C(319, &qword_1EBDAC4C8, type metadata accessor for SettingsViewModel, MEMORY[0x1E6981790]);
    if (v5 > 0x3F)
    {
      return v2;
    }

    sub_1BE4FCC78();
    if (v7 > 0x3F)
    {
      return v6;
    }

    sub_1BE4FCCC8(319, &qword_1EBDAC4D0, &qword_1EBDAC3C8, &qword_1BE54F5F0, MEMORY[0x1E6981790]);
    if (v8 > 0x3F)
    {
      return v2;
    }

    sub_1BE4FCD2C(319, &qword_1EBDAC4D8, type metadata accessor for LockupViewDelegate, MEMORY[0x1E6981790]);
    if (v9 > 0x3F)
    {
      return v2;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v0;
}

void sub_1BE4FCC78()
{
  if (!qword_1EDDD63F8)
  {
    v0 = sub_1BE54C27C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDDD63F8);
    }
  }
}

void sub_1BE4FCCC8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1BE4C5948(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1BE4FCD2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1BE4FCD90()
{
  result = qword_1EBDAC4E0;
  if (!qword_1EBDAC4E0)
  {
    sub_1BE4C5948(&qword_1EBDAC498, &qword_1BE54F678);
    sub_1BE4C5948(&qword_1EBDAC3E0, &qword_1BE54F610);
    sub_1BE4C5948(&qword_1EBDAC3D8, &qword_1BE54F608);
    sub_1BE4FF864(&qword_1EBDAC488, &qword_1EBDAC3D8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1BE4FF864(&qword_1EBDAC4E8, &qword_1EBDAC4A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC4E0);
  }

  return result;
}

unint64_t sub_1BE4FCEFC()
{
  result = qword_1EBDAC530;
  if (!qword_1EBDAC530)
  {
    sub_1BE4C5948(&qword_1EBDAC528, &qword_1BE54F780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC530);
  }

  return result;
}

uint64_t sub_1BE4FCF80()
{
  sub_1BE4FFDA4();
  v2 = v1(0);
  sub_1BE4C7470(v2);
  v4 = *(v3 + 16);
  v5 = sub_1BE4D9800();
  v6(v5);
  return v0;
}

uint64_t sub_1BE4FCFD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerativePartnerSettingsPanelView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BE4FD03C()
{
  sub_1BE4FFD44();
  v2 = type metadata accessor for GenerativePartnerSettingsPanelView();
  sub_1BE4C7570(v2);
  v4 = *(v3 + 80);
  sub_1BE4FFBC0();

  return sub_1BE4EBFE8(v1 + v5, v0);
}

uint64_t sub_1BE4FD0A0()
{
  sub_1BE4D97A4();
  v2 = type metadata accessor for GenerativePartnerSettingsPanelView();
  sub_1BE4C7570(v2);
  v4 = *(v3 + 80);
  sub_1BE4FFBC0();

  return sub_1BE4EC158(v0, v1 + v5);
}

uint64_t sub_1BE4FD104()
{
  v2 = type metadata accessor for GenerativePartnerSettingsPanelView();
  sub_1BE4C7570(v2);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1BE4FF8B4;
  v8 = sub_1BE4E0628();

  return sub_1BE4EC34C(v8, v9, v10);
}

uint64_t sub_1BE4FD1F0()
{
  v0 = type metadata accessor for GenerativePartnerSettingsPanelView();
  sub_1BE4C7570(v0);
  v2 = *(v1 + 80);
  sub_1BE4FFBC0();
  return sub_1BE4EC4F0();
}

unint64_t sub_1BE4FD244()
{
  result = qword_1EBDAC588;
  if (!qword_1EBDAC588)
  {
    sub_1BE4C5948(&qword_1EBDAC578, &qword_1BE54F7F8);
    sub_1BE4C5948(&qword_1EBDAC528, &qword_1BE54F780);
    sub_1BE4FCEFC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC588);
  }

  return result;
}

uint64_t sub_1BE4FD30C()
{
  v0 = type metadata accessor for GenerativePartnerSettingsPanelView();
  sub_1BE4C7570(v0);
  v2 = *(v1 + 80);
  sub_1BE4FFBC0();
  v3 = sub_1BE4FFBD8();

  return sub_1BE4ECE70(v3, v4, v5);
}

uint64_t sub_1BE4FD380()
{
  v0 = type metadata accessor for GenerativePartnerSettingsPanelView();
  sub_1BE4C7570(v0);
  v2 = *(v1 + 80);
  sub_1BE4FFBC0();
  v3 = sub_1BE4FFBD8();

  return sub_1BE4ED264(v3, v4, v5);
}

unint64_t sub_1BE4FD3F4()
{
  result = qword_1EBDAC5A0;
  if (!qword_1EBDAC5A0)
  {
    sub_1BE4C5948(&qword_1EBDAC3C8, &qword_1BE54F5F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC5A0);
  }

  return result;
}

uint64_t sub_1BE4FD4A0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE54ADAC();
  v3 = sub_1BE4C7500(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1BE4C757C();
  v7 = *(v6 + 16);
  v8 = sub_1BE4FFBD8();
  v9(v8);
  result = sub_1BE54BF7C();
  *a1 = result;
  *(a1 + 8) = v11;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v13;
  return result;
}

uint64_t sub_1BE4FD560()
{
  v1 = sub_1BE4D97A4();
  v3 = v2(v1);
  sub_1BE4C745C(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1BE4FD5B0()
{
  sub_1BE4E021C();
  sub_1BE4D97A4();
  v1 = type metadata accessor for GenerativePartnerSettingsPanelView();
  sub_1BE4C7570(v1);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  v7 = sub_1BE4E4408(v6);
  *v7 = v8;
  v7[1] = sub_1BE4FF8B4;
  v9 = sub_1BE4FFA4C();

  return sub_1BE4F50B8(v9, v10, v11, v12, v13);
}

uint64_t sub_1BE4FD684()
{
  sub_1BE4E021C();
  sub_1BE4D97A4();
  v1 = *(type metadata accessor for GenerativePartnerSettingsPanelView() - 8);
  v2 = (*(v1 + 64) + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = swift_task_alloc();
  v6 = sub_1BE4E4408(v5);
  *v6 = v7;
  v6[1] = sub_1BE4FD784;
  v8 = sub_1BE4FFA4C();

  return sub_1BE4F0064(v8, v9, v10, v11, v12);
}

uint64_t sub_1BE4FD784()
{
  sub_1BE4E01D4();
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_1BE4E01C4();
  *v3 = v2;

  sub_1BE4E01E0();

  return v4();
}

uint64_t sub_1BE4FD868@<X0>(uint64_t a1@<X8>)
{
  result = sub_1BE54B99C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1BE4FD89C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_1BE54B9AC();
}

uint64_t sub_1BE4FD8CC(char a1, void *a2, uint64_t a3)
{
  v6 = sub_1BE4BF11C(&qword_1EBDAC3A8, &qword_1BE550DA0);
  sub_1BE4C7570(v6);
  v8 = *(v7 + 64);
  sub_1BE4FFC80();
  MEMORY[0x1EEE9AC00](v9);
  v17[3] = &type metadata for ImplicitEngagementPresenter;
  v17[4] = &off_1F3CCD2A0;
  v17[0] = a2;
  v10 = a2;
  switch(sub_1BE521FA8())
  {
    case 1u:
    case 5u:
      sub_1BE4C6918(v17, v16);
      v11 = swift_allocObject();
      *(v11 + 16) = a3;
      *(v11 + 24) = a1;
      sub_1BE4BF094(v16, v11 + 32);
      swift_getKeyPath();
      *&v16[0] = a3;
      sub_1BE4FEB10(&qword_1EBDAC5D0, type metadata accessor for SubscriptionInfo);

      sub_1BE4FFDD0();
      sub_1BE54AFCC();

      *&v16[0] = a3;
      swift_getKeyPath();
      sub_1BE4FFDD0();
      sub_1BE54AFEC();

      swift_beginAccess();
      sub_1BE5301B4(v15, sub_1BE4FDBD8, v11);
      swift_endAccess();

      *&v16[0] = a3;
      swift_getKeyPath();
      sub_1BE54AFDC();

      goto LABEL_4;
    case 3u:
      return sub_1BE4C58A8(v17);
    default:
      v12 = sub_1BE54C91C();
      sub_1BE4FFD50(v12);
      sub_1BE54C8CC();

      sub_1BE54C8BC();
      v13 = swift_allocObject();
      sub_1BE4FFCC0(v13, MEMORY[0x1E69E85E0]);
      sub_1BE50BA3C();
LABEL_4:

      break;
  }

  return sub_1BE4C58A8(v17);
}

uint64_t sub_1BE4FDBE8()
{
  sub_1BE4E021C();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = swift_task_alloc();
  v6 = sub_1BE4E4408(v5);
  *v6 = v7;
  v6[1] = sub_1BE4FF8B4;
  sub_1BE4FFA4C();

  return sub_1BE524758();
}

uint64_t sub_1BE4FDC98()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  sub_1BE4C58A8(v0 + 6);

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1BE4FDCE0()
{
  sub_1BE4E021C();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = swift_task_alloc();
  v6 = sub_1BE4E4408(v5);
  *v6 = v7;
  v6[1] = sub_1BE4FF8B4;
  sub_1BE4FFA4C();

  return sub_1BE52457C();
}

unint64_t sub_1BE4FDDB0()
{
  result = qword_1EBDAC680;
  if (!qword_1EBDAC680)
  {
    sub_1BE4C5948(&qword_1EBDAC670, &qword_1BE54F9B8);
    sub_1BE4FDE34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC680);
  }

  return result;
}

unint64_t sub_1BE4FDE34()
{
  result = qword_1EBDAC688;
  if (!qword_1EBDAC688)
  {
    sub_1BE4C5948(&qword_1EBDAC690, &qword_1BE54F9C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC688);
  }

  return result;
}

unint64_t sub_1BE4FDEB0()
{
  result = qword_1EBDAC698;
  if (!qword_1EBDAC698)
  {
    sub_1BE4C5948(&qword_1EBDAC648, &qword_1BE54F990);
    sub_1BE4FDF68();
    sub_1BE4FF864(&qword_1EBDAC798, &unk_1EBDAC628);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC698);
  }

  return result;
}

unint64_t sub_1BE4FDF68()
{
  result = qword_1EBDAC6A0;
  if (!qword_1EBDAC6A0)
  {
    sub_1BE4C5948(&qword_1EBDAC650, &qword_1BE54F998);
    sub_1BE4FE020();
    sub_1BE4FF864(&qword_1EBDAC478, &unk_1EBDAC480);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC6A0);
  }

  return result;
}

unint64_t sub_1BE4FE020()
{
  result = qword_1EBDAC6A8;
  if (!qword_1EBDAC6A8)
  {
    sub_1BE4C5948(&qword_1EBDAC6B0, &qword_1BE54F9C8);
    sub_1BE4FE0B8();
    sub_1BE4FE308();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC6A8);
  }

  return result;
}

unint64_t sub_1BE4FE0B8()
{
  result = qword_1EBDAC6B8;
  if (!qword_1EBDAC6B8)
  {
    sub_1BE4C5948(&qword_1EBDAC6C0, &qword_1BE54F9D0);
    sub_1BE4FE144();
    sub_1BE4FE228();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC6B8);
  }

  return result;
}

unint64_t sub_1BE4FE144()
{
  result = qword_1EBDAC6C8;
  if (!qword_1EBDAC6C8)
  {
    sub_1BE4C5948(&qword_1EBDAC6D0, &qword_1BE54F9D8);
    sub_1BE4FF864(&qword_1EBDAC6D8, &unk_1EBDAC6E0);
    sub_1BE4FF864(&qword_1EBDAC6E8, &unk_1EBDAC6F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC6C8);
  }

  return result;
}

unint64_t sub_1BE4FE228()
{
  result = qword_1EBDAC6F8;
  if (!qword_1EBDAC6F8)
  {
    sub_1BE4C5948(&qword_1EBDAC700, &qword_1BE54F9F0);
    sub_1BE4FF864(&qword_1EBDAC708, &unk_1EBDAC710);
    sub_1BE4FF864(&qword_1EBDAC718, &unk_1EBDAC720);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC6F8);
  }

  return result;
}

unint64_t sub_1BE4FE308()
{
  result = qword_1EBDAC728;
  if (!qword_1EBDAC728)
  {
    sub_1BE4C5948(&qword_1EBDAC730, &qword_1BE54FA08);
    sub_1BE4FE3C0();
    sub_1BE4FF864(&qword_1EBDAC788, &qword_1EBDAC790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC728);
  }

  return result;
}

unint64_t sub_1BE4FE3C0()
{
  result = qword_1EBDAC738;
  if (!qword_1EBDAC738)
  {
    sub_1BE4C5948(&qword_1EBDAC740, &qword_1BE54FA10);
    sub_1BE4FE478();
    sub_1BE4FF864(&qword_1EBDAC0F8, &qword_1EBDABF60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC738);
  }

  return result;
}

unint64_t sub_1BE4FE478()
{
  result = qword_1EBDAC748;
  if (!qword_1EBDAC748)
  {
    sub_1BE4C5948(&qword_1EBDAC750, &qword_1BE54FA18);
    sub_1BE4FE4FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC748);
  }

  return result;
}

unint64_t sub_1BE4FE4FC()
{
  result = qword_1EBDAC758;
  if (!qword_1EBDAC758)
  {
    sub_1BE4C5948(&qword_1EBDAC760, &qword_1BE54FA20);
    sub_1BE4FE588();
    sub_1BE4FDE34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC758);
  }

  return result;
}

unint64_t sub_1BE4FE588()
{
  result = qword_1EBDAC768;
  if (!qword_1EBDAC768)
  {
    sub_1BE4C5948(&qword_1EBDAC770, &qword_1BE54FA28);
    sub_1BE4FE614();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC768);
  }

  return result;
}

unint64_t sub_1BE4FE614()
{
  result = qword_1EBDAC778;
  if (!qword_1EBDAC778)
  {
    sub_1BE4C5948(&qword_1EBDAC780, &qword_1BE54FA30);
    sub_1BE4FF864(&qword_1EBDAC788, &unk_1EBDAC790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC778);
  }

  return result;
}

unint64_t sub_1BE4FE6D4()
{
  result = qword_1EBDAC7A8;
  if (!qword_1EBDAC7A8)
  {
    sub_1BE4C5948(&qword_1EBDAC7A0, &qword_1BE54FA48);
    sub_1BE4FF864(&qword_1EBDAC7B0, &qword_1EBDAC7B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC7A8);
  }

  return result;
}

unint64_t sub_1BE4FE78C()
{
  result = qword_1EBDAC7D0;
  if (!qword_1EBDAC7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC7D0);
  }

  return result;
}

id sub_1BE4FE7E8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 16);
  return sub_1BE4F9ED8(a1);
}

unint64_t sub_1BE4FE810()
{
  result = qword_1EBDAC808;
  if (!qword_1EBDAC808)
  {
    sub_1BE4C5948(&qword_1EBDAC7E0, &qword_1BE54FA70);
    sub_1BE4FF864(&qword_1EBDAC7F8, &unk_1EBDAC7F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC808);
  }

  return result;
}

unint64_t sub_1BE4FE8CC()
{
  result = qword_1EBDAC810;
  if (!qword_1EBDAC810)
  {
    sub_1BE4C5948(&qword_1EBDAC800, &qword_1BE54FA88);
    sub_1BE4FE950();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC810);
  }

  return result;
}

unint64_t sub_1BE4FE950()
{
  result = qword_1EBDAC818;
  if (!qword_1EBDAC818)
  {
    sub_1BE4C5948(&qword_1EBDAC820, &unk_1BE54FA90);
    sub_1BE4FF864(&qword_1EBDABC48, &qword_1EBDABB58);
    sub_1BE4FF864(&qword_1EBDAC478, &unk_1EBDAC480);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC818);
  }

  return result;
}

unint64_t sub_1BE4FEA4C()
{
  result = qword_1EBDAC828;
  if (!qword_1EBDAC828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC828);
  }

  return result;
}

uint64_t sub_1BE4FEAA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE4BF11C(&qword_1EBDAC820, &unk_1BE54FA90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BE4FEB10(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BE4FEB58(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = sub_1BE4FFD8C(0, a2);
    sub_1BE4C5948(v7, v8);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BE4FEBD0()
{
  result = qword_1EBDAC8A8;
  if (!qword_1EBDAC8A8)
  {
    sub_1BE4C5948(&qword_1EBDAC8B0, &qword_1BE54FB00);
    sub_1BE4FEC88();
    sub_1BE4FF864(&qword_1EBDAC8C8, &unk_1EBDAC8D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC8A8);
  }

  return result;
}

unint64_t sub_1BE4FEC88()
{
  result = qword_1EBDAC8B8;
  if (!qword_1EBDAC8B8)
  {
    sub_1BE4C5948(&qword_1EBDAC8C0, &qword_1BE54FB08);
    sub_1BE4FDE34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC8B8);
  }

  return result;
}

unint64_t sub_1BE4FED14()
{
  result = qword_1EBDAC8D8;
  if (!qword_1EBDAC8D8)
  {
    sub_1BE4C5948(&qword_1EBDAC868, &qword_1BE54FAD8);
    sub_1BE4FEB58(&qword_1EBDAC8A0, &unk_1EBDAC898, &unk_1BE54FAF8, sub_1BE4FEBD0);
    sub_1BE4C5948(&qword_1EBDAC878, &qword_1BE54FAE8);
    sub_1BE54BD4C();
    sub_1BE4FF864(&qword_1EBDAC888, &qword_1EBDAC878);
    sub_1BE4FEB10(&qword_1EBDAC890, MEMORY[0x1E697C9C8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC8D8);
  }

  return result;
}

uint64_t sub_1BE4FEE8C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    sub_1BE4D91B0(a1, a2, a3 & 1);
  }

  else
  {

    return sub_1BE4FEEF0(a1, a2, a3);
  }
}

uint64_t sub_1BE4FEEF0(uint64_t a1, uint64_t a2, char a3)
{
  sub_1BE4D91B0(a1, a2, a3 & 1);
}

uint64_t sub_1BE4FEF2C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    sub_1BE4C68C8(a1, a2, a3 & 1);
  }

  else
  {

    return sub_1BE4FEF90(a1, a2, a3);
  }
}

uint64_t sub_1BE4FEF90(uint64_t a1, uint64_t a2, char a3)
{
  sub_1BE4C68C8(a1, a2, a3 & 1);
}

unint64_t sub_1BE4FEFF4()
{
  result = qword_1EBDAC938;
  if (!qword_1EBDAC938)
  {
    sub_1BE4C5948(&qword_1EBDAC930, &qword_1BE54FBC8);
    sub_1BE4FF864(&qword_1EBDAC940, &unk_1EBDAC948);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC938);
  }

  return result;
}

uint64_t sub_1BE4FF0AC()
{
  sub_1BE4FFDA4();
  v3 = sub_1BE4BF11C(v1, v2);
  sub_1BE4C7470(v3);
  v5 = *(v4 + 16);
  v6 = sub_1BE4D9800();
  v7(v6);
  return v0;
}

uint64_t sub_1BE4FF104(uint64_t a1, uint64_t a2)
{
  v3 = sub_1BE4FFD8C(a1, a2);
  v5 = sub_1BE4BF11C(v3, v4);
  sub_1BE4C745C(v5);
  (*(v6 + 8))(a1);
  return a1;
}

uint64_t sub_1BE4FF154()
{
  v1 = type metadata accessor for GenerativePartnerSettingsPanelView();
  sub_1BE4C7570(v1);
  v3 = v0 + ((*(v2 + 80) + 56) & ~*(v2 + 80));

  return sub_1BE4F22D0((v0 + 16), v3);
}

unint64_t sub_1BE4FF1D0()
{
  result = qword_1EBDAC9C8;
  if (!qword_1EBDAC9C8)
  {
    sub_1BE4C5948(&qword_1EBDAC9B8, &qword_1BE54FC60);
    sub_1BE4FF25C();
    sub_1BE4FEC88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC9C8);
  }

  return result;
}

unint64_t sub_1BE4FF25C()
{
  result = qword_1EBDAC9D0;
  if (!qword_1EBDAC9D0)
  {
    sub_1BE4C5948(&qword_1EBDAC9D8, &qword_1BE54FC68);
    sub_1BE4FF2E8();
    sub_1BE4FDE34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC9D0);
  }

  return result;
}

unint64_t sub_1BE4FF2E8()
{
  result = qword_1EBDAC9E0;
  if (!qword_1EBDAC9E0)
  {
    sub_1BE4C5948(&qword_1EBDAC9E8, &qword_1BE54FC70);
    sub_1BE4FEB58(&qword_1EBDAC9F0, &unk_1EBDAC9F8, &unk_1BE54FC78, sub_1BE4FDE34);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC9E0);
  }

  return result;
}

uint64_t sub_1BE4FF3A8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1BE4F4F18(a1);
}

uint64_t sub_1BE4FF3E4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    sub_1BE4D91B0(a1, a2, a3 & 1);
  }

  else
  {

    return sub_1BE4FF448(a1, a2, a3);
  }
}

uint64_t sub_1BE4FF450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void), uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a6)
  {
    return a8(a1, a2, a3, a4, a5 & 1);
  }

  else
  {
    return a7(a1, a2, a3, a4, a5, WORD1(a5) & 1);
  }
}

uint64_t sub_1BE4FF46C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    sub_1BE4C68C8(a1, a2, a3 & 1);
  }

  else
  {

    return sub_1BE4FF4D0(a1, a2, a3);
  }
}

uint64_t sub_1BE4FF4D8()
{
  v1 = *(type metadata accessor for GenerativePartnerSettingsPanelView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_1BE4F2968(v0 + v2, v3);
}

uint64_t sub_1BE4FF564()
{
  sub_1BE4FFB64();
  v2 = type metadata accessor for GenerativePartnerSettingsPanelView();
  sub_1BE4C759C(v2);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  v7 = sub_1BE4FFEE0();
  sub_1BE4C7470(v7);
  v9 = *(v8 + 8);
  v10 = sub_1BE4FFBCC();
  v9(v10);
  v11 = sub_1BE4FFA28();
  v9(v11);
  v12 = sub_1BE4FFA18();
  v9(v12);
  sub_1BE4FF944();
  sub_1BE4BF11C(&qword_1EBDAC3C0, &qword_1BE54F5E8);
  if (sub_1BE4FFCFC() == 1)
  {
    v13 = sub_1BE54B5BC();
    sub_1BE4C745C(v13);
    (*(v14 + 8))(v0 + v1);
  }

  else
  {
    v15 = *(v0 + v1);
  }

  sub_1BE4FFC1C();
  v16 = *(v1 + 8);

  sub_1BE4FFB30();
  sub_1BE4FFC00();
  v17 = *(v1 + 16);

  sub_1BE4FFB14();
  sub_1BE4FFAD8();
  sub_1BE4FFABC();
  sub_1BE4FFBE4();
  v18 = *(v1 + 8);

  v19 = sub_1BE4FFA08();
  v9(v19);
  v20 = sub_1BE4FF9F8();
  v9(v20);
  sub_1BE4FFAAC();
  sub_1BE4FFB4C();

  return MEMORY[0x1EEE6BDD0](v21, v22, v23);
}

uint64_t sub_1BE4FF704(uint64_t (*a1)(uint64_t))
{
  v2 = type metadata accessor for GenerativePartnerSettingsPanelView();
  sub_1BE4C7570(v2);
  v4 = *(v3 + 80);
  sub_1BE4FFBC0();

  return a1(v1 + v5);
}

unint64_t sub_1BE4FF780()
{
  result = qword_1EBDACAD0;
  if (!qword_1EBDACAD0)
  {
    sub_1BE4C5948(&qword_1EBDACAC8, &qword_1BE54FDE0);
    sub_1BE4FF864(&qword_1EBDACAD8, &unk_1EBDACAE0);
    sub_1BE4FF864(&qword_1EBDAC478, &unk_1EBDAC480);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDACAD0);
  }

  return result;
}

uint64_t sub_1BE4FF864(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = sub_1BE4FFD8C(0, a2);
    sub_1BE4C5948(v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BE4FF8DC()
{

  return swift_once();
}

void sub_1BE4FF930()
{
  v2 = *(v1 - 120);
  *v0 = *(v1 - 128);
  *(v0 + 8) = v2;
}

uint64_t sub_1BE4FF944()
{
  result = sub_1BE4D89F8(*(v1 + *(v0 + 28)), *(v1 + *(v0 + 28) + 8), *(v1 + *(v0 + 28) + 16));
  v3 = *(v0 + 32);
  return result;
}

uint64_t sub_1BE4FF9CC()
{

  return sub_1BE54C65C();
}

void sub_1BE4FFA60()
{
  v2 = *(v1 - 120);
  *v0 = *(v1 - 128);
  *(v0 + 8) = v2;
}

void sub_1BE4FFA74()
{
  v2 = *(v1 - 120);
  *v0 = *(v1 - 128);
  *(v0 + 8) = v2;
}

uint64_t sub_1BE4FFABC()
{
  v3 = *(v1 + *(v0 + 56) + 8);
}

uint64_t sub_1BE4FFAD8()
{
  v3 = *(v1 + *(v0 + 52) + 8);
}

uint64_t sub_1BE4FFAF4()
{

  return swift_once();
}

uint64_t sub_1BE4FFB14()
{
  v3 = *(v1 + *(v0 + 48) + 8);
}

uint64_t sub_1BE4FFB30()
{
  v3 = *(v1 + *(v0 + 40) + 8);
}

uint64_t sub_1BE4FFB88(uint64_t a1)
{
  sub_1BE4C63F8(v1, 1, 4, a1);

  return sub_1BE5014C4();
}

void sub_1BE4FFBE4()
{
  v3 = *(v1 + *(v0 + 60));
}

uint64_t sub_1BE4FFC00()
{
  v3 = *(v1 + *(v0 + 44) + 8);
}

uint64_t sub_1BE4FFC1C()
{
  v3 = *(v1 + *(v0 + 36));
}

uint64_t sub_1BE4FFC58()
{
  v3 = *(v1 + *(v0 + 36));
}

BOOL sub_1BE4FFCA4(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_1BE4FFCC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + 16) = v3;
  *(a1 + 24) = a2;
  *(a1 + 32) = v2;
  *(a1 + 40) = v4;

  return sub_1BE4BF094((v6 - 144), v5 + 48);
}

uint64_t sub_1BE4FFCE4(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

uint64_t sub_1BE4FFCFC()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_1BE4FFD50(uint64_t a1)
{
  sub_1BE4C63F8(v1, 1, 1, a1);

  return sub_1BE4C6918(v2 - 104, v2 - 144);
}

uint64_t sub_1BE4FFDBC(uint64_t result)
{
  v2 = (v1 + *(result + 36));
  v4 = *v2;
  v3 = v2[1];
  return result;
}

void sub_1BE4FFE08(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0x16u);
}

uint64_t sub_1BE4FFE28()
{

  return sub_1BE54AD8C();
}

uint64_t sub_1BE4FFE48()
{
  v2 = v0[47];
  v3 = v0[44];
  v5 = v0[40];
  v4 = v0[41];
  v7 = v0[38];
  v6 = v0[39];
}

uint64_t sub_1BE4FFE68()
{

  return sub_1BE54ADBC();
}

uint64_t sub_1BE4FFE80()
{

  return sub_1BE54C65C();
}

uint64_t sub_1BE4FFE98()
{

  return swift_slowAlloc();
}

uint64_t sub_1BE4FFEB0()
{

  return sub_1BE54ADBC();
}

uint64_t sub_1BE4FFEC8()
{

  return sub_1BE54C65C();
}

uint64_t sub_1BE4FFEE0()
{

  return sub_1BE54ADAC();
}

uint64_t SettingsViewModel.IdentifiableDeepLinkParams.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1BE54AECC();
  result = type metadata accessor for SettingsViewModel.IdentifiableDeepLinkParams(0);
  *(a2 + *(result + 20)) = a1;
  return result;
}

uint64_t SettingsViewModel.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  SettingsViewModel.init()();
  return v3;
}

uint64_t sub_1BE4FFF88(uint64_t *a1)
{
  sub_1BE50A878(a1);
  v1 = sub_1BE501C68();
  return sub_1BE50A8D4(v1);
}

uint64_t sub_1BE4FFFD4(uint64_t *a1)
{
  sub_1BE50A878(a1);
  v1 = sub_1BE501CA4();
  return sub_1BE50A8D4(v1);
}

void sub_1BE500020(uint64_t a1@<X8>)
{
  v2 = sub_1BE4BF11C(&qword_1EBDAC5A8, &qword_1BE54F818);
  v3 = sub_1BE4C7570(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1BE4D981C();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v63 - v10;
  v12 = sub_1BE4BF11C(&qword_1EBDAC5B0, &unk_1BE54F820);
  v13 = sub_1BE4C7570(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1BE4D981C();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v63 - v20;
  v22 = sub_1BE54B3DC();
  v23 = sub_1BE4C7500(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v23);
  sub_1BE4C757C();
  v30 = (v29 - v28);
  v31 = [objc_opt_self() sharedConnection];
  if (v31)
  {
    v32 = v31;
    v33 = [v31 isExternalIntelligenceSignInAllowed];

    if (v33)
    {
      if (qword_1EDDD6890 != -1)
      {
        sub_1BE4C7480();
      }

      sub_1BE53CA80(&v65);
      if (v66)
      {
        v64 = a1;
        sub_1BE4BF094(&v65, v67);
        sub_1BE50A5B8(v67, &v65);
        v34 = type metadata accessor for ExternalAIAuthenticatorHelper();
        sub_1BE4FFCE4(v34);
        sub_1BE534D4C(&v65);
        sub_1BE533EC4();

        v35 = sub_1BE54B4FC();
        sub_1BE50AAE8(v11, 1, v35);
        if (v45)
        {
          sub_1BE4C58A8(v67);
          sub_1BE4D0E58(v11, &qword_1EBDAC5A8, &qword_1BE54F818);
          sub_1BE50A890();
          sub_1BE4C63F8(v36, v37, v38, v22);
        }

        else
        {
          sub_1BE54B45C();
          sub_1BE4C58A8(v67);
          sub_1BE50A884(v35);
          (*(v44 + 8))(v11, v35);
          sub_1BE50AAE8(v21, 1, v22);
          if (!v45)
          {
            v58 = *(v25 + 32);
            v58(v30, v21, v22);
            v59 = v64;
            v58(v64, v30, v22);
            v60 = sub_1BE4BF11C(&qword_1EBDAC548, &qword_1BE54F7C8);
            v61 = v59;
            v62 = 0;
LABEL_27:
            sub_1BE4C63F8(v61, v62, 4, v60);
            goto LABEL_28;
          }
        }

        sub_1BE4D0E58(v21, &qword_1EBDAC5B0, &unk_1BE54F820);
        a1 = v64;
      }

      else
      {
        sub_1BE4D0E58(&v65, &qword_1EBDABAF8, &qword_1BE54DC20);
      }

      sub_1BE53CA80(&v65);
      if (!v66)
      {
        sub_1BE4D0E58(&v65, &qword_1EBDABAF8, &qword_1BE54DC20);
LABEL_26:
        v60 = sub_1BE4BF11C(&qword_1EBDAC548, &qword_1BE54F7C8);
        v61 = a1;
        v62 = 1;
        goto LABEL_27;
      }

      sub_1BE4BF094(&v65, v67);
      sub_1BE50A5B8(v67, &v65);
      v46 = type metadata accessor for ExternalAIAuthenticatorHelper();
      sub_1BE4FFCE4(v46);
      sub_1BE534D4C(&v65);
      sub_1BE533EC4();

      v47 = sub_1BE54B4FC();
      sub_1BE50AAE8(v8, 1, v47);
      if (v45)
      {
        sub_1BE4D0E58(v8, &qword_1EBDAC5A8, &qword_1BE54F818);
        v48 = sub_1BE50A848();
        sub_1BE4C63F8(v48, v49, v50, v22);
      }

      else
      {
        sub_1BE54B45C();
        sub_1BE50A884(v47);
        (*(v51 + 8))(v8, v47);
        sub_1BE50AAE8(v18, 1, v22);
        if (!v52)
        {
          sub_1BE4D0E58(v18, &qword_1EBDAC5B0, &unk_1BE54F820);
LABEL_25:
          sub_1BE4C58A8(v67);
          goto LABEL_26;
        }
      }

      sub_1BE4D0E58(v18, &qword_1EBDAC5B0, &unk_1BE54F820);
      v53 = v67[4];
      sub_1BE4C52F4(v67, v67[3]);
      v54 = *(v53 + 216);
      v55 = sub_1BE4FFBCC();
      v56(v55);
      if (v65 == 128)
      {
        v57 = sub_1BE4BF11C(&qword_1EBDAC548, &qword_1BE54F7C8);
        sub_1BE4C63F8(a1, 4, 4, v57);
        sub_1BE4C58A8(v67);
LABEL_28:
        sub_1BE4FFB4C();
        return;
      }

      goto LABEL_25;
    }

    sub_1BE4BF11C(&qword_1EBDAC548, &qword_1BE54F7C8);
    sub_1BE4FFB4C();

    sub_1BE4C63F8(v39, v40, v41, v42);
  }

  else
  {
    __break(1u);
  }
}

void sub_1BE5005B4(uint64_t a1, uint64_t a2)
{
  v5 = sub_1BE54B3DC();
  v6 = sub_1BE4C7500(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1BE4C757C();
  sub_1BE50A994();
  v11 = type metadata accessor for SettingsViewModel.AccountSignInStatus(0);
  v12 = sub_1BE4C7570(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1BE4C757C();
  v17 = v16 - v15;
  v18 = sub_1BE4BF11C(&qword_1EBDACC10, &unk_1BE5500B0);
  sub_1BE4C7570(v18);
  v20 = *(v19 + 64);
  sub_1BE4FFC80();
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v29 - v23;
  v25 = *(v22 + 56);
  sub_1BE5096E4(a1, &v29 - v23, type metadata accessor for SettingsViewModel.AccountSignInStatus);
  sub_1BE5096E4(a2, &v24[v25], type metadata accessor for SettingsViewModel.AccountSignInStatus);
  v26 = sub_1BE4BF11C(&qword_1EBDAC548, &qword_1BE54F7C8);
  switch(sub_1BE4C63BC(v24, 4, v26))
  {
    case 1u:
      if (sub_1BE50A9C0() == 1)
      {
        goto LABEL_5;
      }

      goto LABEL_7;
    case 2u:
      if (sub_1BE50A9C0() != 2)
      {
        goto LABEL_7;
      }

      goto LABEL_5;
    case 3u:
      if (sub_1BE50A9C0() != 3)
      {
        goto LABEL_7;
      }

      goto LABEL_5;
    case 4u:
      if (sub_1BE50A9C0() != 4)
      {
        goto LABEL_7;
      }

LABEL_5:
      sub_1BE50A7C8();
      sub_1BE508F98();
      break;
    default:
      sub_1BE50A830();
      sub_1BE5096E4(v24, v17, v27);
      if (sub_1BE50A9C0())
      {
        (*(v8 + 8))(v17, v5);
LABEL_7:
        sub_1BE4D0E58(v24, &qword_1EBDACC10, &unk_1BE5500B0);
      }

      else
      {
        (*(v8 + 32))(v2, &v24[v25], v5);
        MEMORY[0x1BFB468C0](v17, v2);
        v28 = *(v8 + 8);
        v28(v2, v5);
        v28(v17, v5);
        sub_1BE50A7C8();
        sub_1BE508F98();
      }

      break;
  }

  sub_1BE4FFB4C();
}

uint64_t sub_1BE500860(uint64_t *a1)
{
  sub_1BE50A878(a1);
  result = sub_1BE502204();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_1BE500888(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  v5 = sub_1BE4E0628();
  return sub_1BE5022A8(v5, v6);
}

uint64_t sub_1BE5008C4(uint64_t *a1)
{
  sub_1BE50A878(a1);
  v1 = sub_1BE501D68();
  return sub_1BE50A8D4(v1);
}

uint64_t sub_1BE500910(uint64_t *a1)
{
  sub_1BE50A878(a1);
  v1 = sub_1BE501F10();
  return sub_1BE50A8D4(v1);
}

uint64_t sub_1BE50095C(uint64_t *a1)
{
  sub_1BE50A878(a1);
  v1 = sub_1BE502110();
  return sub_1BE50A8D4(v1);
}

uint64_t sub_1BE5009A8(uint64_t *a1)
{
  sub_1BE50A878(a1);
  v1 = sub_1BE501FC8();
  return sub_1BE50A8D4(v1);
}

uint64_t sub_1BE5009F4()
{
  sub_1BE54CC0C();
  sub_1BE50A968();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1BE500A3C(char a1)
{
  if (!a1)
  {
    return 0x6465636E61766461;
  }

  if (a1 == 1)
  {
    return 0x6369736162;
  }

  return 0x696D694C64726168;
}

uint64_t sub_1BE500ABC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1BE5009F4();
  *a2 = result;
  return result;
}

uint64_t sub_1BE500AEC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE500A3C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1BE500B18@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE54986C();
  v3 = sub_1BE549D98(v2, 0);

  v5 = 0;
  v6 = *(v3 + 16);
  for (i = v3 + 32; ; i += 40)
  {
    if (v6 == v5)
    {

      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      return result;
    }

    if (v5 >= *(v3 + 16))
    {
      break;
    }

    sub_1BE50A5B8(i, &v16);
    sub_1BE54B24C();
    sub_1BE54B22C();
    v8 = sub_1BE54B21C();
    v10 = v9;

    v11 = v17;
    v12 = v18;
    sub_1BE4C52F4(&v16, v17);
    if (v8 == (*(v12 + 8))(v11, v12) && v10 == v13)
    {

LABEL_12:

      return sub_1BE4BF094(&v16, a1);
    }

    v15 = sub_1BE54CCDC();

    if (v15)
    {
      goto LABEL_12;
    }

    result = sub_1BE4C58A8(&v16);
    ++v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BE500CA0(uint64_t a1)
{
  sub_1BE4D9250(a1, v22, &qword_1EBDABAF8, &qword_1BE54DC20);
  v1 = v23;
  if (v23)
  {
    v2 = v24;
    sub_1BE4C52F4(v22, v23);
    v3 = (*(v2 + 8))(v1, v2);
    v1 = v4;
    sub_1BE4C58A8(v22);
  }

  else
  {
    sub_1BE4D0E58(v22, &qword_1EBDABAF8, &qword_1BE54DC20);
    v3 = 0;
  }

  sub_1BE5010B4(v22);
  v5 = v23;
  if (!v23)
  {
    result = sub_1BE4D0E58(v22, &qword_1EBDABAF8, &qword_1BE54DC20);
    if (!v1)
    {
      return result;
    }

    goto LABEL_16;
  }

  v6 = v24;
  v7 = sub_1BE4C52F4(v22, v23);
  v8 = *(v5 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11);
  sub_1BE4D0E58(v22, &qword_1EBDABAF8, &qword_1BE54DC20);
  v12 = (*(v6 + 8))(v5, v6);
  v14 = v13;
  result = (*(v8 + 8))(v11, v5);
  if (!v1)
  {
    if (!v14)
    {
      return result;
    }

    goto LABEL_16;
  }

  if (!v14)
  {
LABEL_16:

LABEL_17:
    sub_1BE5010B4(&v20);
    if (v21)
    {
      sub_1BE4BF094(&v20, v22);
      if (qword_1EDDD6890 != -1)
      {
        swift_once();
      }

      v18 = v23;
      v19 = v24;
      sub_1BE4C52F4(v22, v23);
      (*(v19 + 8))(v18, v19);
      sub_1BE53CD40();

      return sub_1BE4C58A8(v22);
    }

    else
    {
      sub_1BE4D0E58(&v20, &qword_1EBDABAF8, &qword_1BE54DC20);
      if (qword_1EDDD6890 != -1)
      {
        swift_once();
      }

      type metadata accessor for GenerativePartnerServiceUserDefaults();
      return sub_1BE53F998(0, 0xE000000000000000, 0);
    }
  }

  if (v3 == v12 && v1 == v14)
  {
  }

  v17 = sub_1BE54CCDC();

  if ((v17 & 1) == 0)
  {
    goto LABEL_17;
  }

  return result;
}

uint64_t sub_1BE501010(uint64_t a1)
{
  sub_1BE50AA7C();
  sub_1BE50AB54();
  sub_1BE4D9250(v3, v4, v5, v6);
  sub_1BE50A9A0();
  swift_beginAccess();
  sub_1BE50A2F8(a1, v1 + 16);
  swift_endAccess();
  sub_1BE500CA0(v10);
  v7 = sub_1BE4E0628();
  sub_1BE4D0E58(v7, v8, &qword_1BE54DC20);
  return sub_1BE4D0E58(v10, &qword_1EBDABAF8, &qword_1BE54DC20);
}

uint64_t sub_1BE5010B4@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1BE50A7B0();
  v5 = sub_1BE508AD4(v3, v4);
  sub_1BE50A9E4(v5, v6, v7, v8, v9, v10, v11, v12, v14, v1);
  sub_1BE54AFCC();

  sub_1BE4DCFA4();
  return sub_1BE4D9250(v1 + 16, a1, &qword_1EBDABAF8, &qword_1BE54DC20);
}

uint64_t sub_1BE501164(uint64_t a1, uint64_t *a2)
{
  sub_1BE4D9250(a1, v5, &qword_1EBDABAF8, &qword_1BE54DC20);
  v3 = *a2;
  return sub_1BE5011B0(v5);
}

uint64_t sub_1BE5011B0(uint64_t a1)
{
  swift_getKeyPath();
  sub_1BE507D40();

  return sub_1BE4D0E58(a1, &qword_1EBDABAF8, &qword_1BE54DC20);
}

uint64_t sub_1BE50128C(uint64_t a1)
{
  v2 = type metadata accessor for SettingsViewModel.AccountSignInStatus(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - v7;
  sub_1BE50149C();
  sub_1BE5005B4(a1, v8);
  LOBYTE(a1) = v9;
  result = sub_1BE508F98();
  if ((a1 & 1) == 0)
  {
    sub_1BE50149C();
    v11 = sub_1BE4BF11C(&qword_1EBDAC548, &qword_1BE54F7C8);
    result = sub_1BE4C63BC(v6, 4, v11);
    if ((result - 2) >= 3)
    {
      if (!result)
      {
        v12 = sub_1BE54B3DC();
        (*(*(v12 - 8) + 8))(v6, v12);
      }

      return sub_1BE506954();
    }
  }

  return result;
}

uint64_t sub_1BE5013CC()
{
  v3 = sub_1BE4D97A4();
  v4 = type metadata accessor for SettingsViewModel.AccountSignInStatus(v3);
  v5 = sub_1BE4C7570(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1BE4C757C();
  sub_1BE50A994();
  v8 = OBJC_IVAR____TtC26GenerativePartnerServiceUI17SettingsViewModel__signInStatus;
  sub_1BE50AA7C();
  sub_1BE50A908();
  sub_1BE5096E4(v1 + v8, v2, v9);
  sub_1BE50A9A0();
  swift_beginAccess();
  sub_1BE50A278(v0, v1 + v8);
  swift_endAccess();
  sub_1BE50128C(v2);
  sub_1BE508F98();
  sub_1BE4FFBCC();
  return sub_1BE508F98();
}

uint64_t sub_1BE5014C4()
{
  v2 = sub_1BE4D97A4();
  v3 = type metadata accessor for SettingsViewModel.AccountSignInStatus(v2);
  v4 = sub_1BE4C7570(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1BE4C757C();
  sub_1BE50A994();
  v7 = OBJC_IVAR____TtC26GenerativePartnerServiceUI17SettingsViewModel__signInStatus;
  sub_1BE50AA7C();
  sub_1BE50A908();
  sub_1BE5096E4(v0 + v7, v1, v8);
  v9 = sub_1BE4FFBD8();
  sub_1BE5005B4(v9, v10);
  LOBYTE(v7) = v11;
  sub_1BE4FFBCC();
  sub_1BE508F98();
  if (v7)
  {
    sub_1BE50A830();
    v12 = sub_1BE4E0628();
    sub_1BE5096E4(v12, v13, v14);
    sub_1BE5013CC();
  }

  else
  {
    swift_getKeyPath();
    sub_1BE50A858();
    MEMORY[0x1EEE9AC00](v15);
    sub_1BE50A81C();
    sub_1BE50AB00();
  }

  sub_1BE50A7C8();
  return sub_1BE508F98();
}

uint64_t sub_1BE5015D4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SettingsViewModel.AccountSignInStatus(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1BE5096E4(a2, &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SettingsViewModel.AccountSignInStatus);
  return sub_1BE5013CC();
}

uint64_t (*sub_1BE50167C())()
{
  sub_1BE50A9A0();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1BE501740(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(char *))
{
  v11 = a5(0);
  sub_1BE4C7570(v11);
  v13 = *(v12 + 64);
  sub_1BE4FFC80();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v19 - v15;
  sub_1BE5096E4(a1, &v19 - v15, a6);
  v17 = *a2;
  return a7(v16);
}

uint64_t sub_1BE501804@<X0>(uint64_t *a1@<X1>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v6 = v3;
  swift_getKeyPath();
  sub_1BE50A7B0();
  v10 = sub_1BE508AD4(v8, v9);
  sub_1BE50A9E4(v10, v11, v12, v13, v14, v15, v16, v17, v20, v3);
  sub_1BE54AFCC();

  v18 = *a1;
  sub_1BE4DCFA4();
  return sub_1BE5096E4(v6 + v18, a3, a2);
}

uint64_t sub_1BE5018B4()
{
  v2 = sub_1BE4D97A4();
  v3 = type metadata accessor for SettingsViewModel.IdentifiableDeepLinkParams(v2);
  v4 = sub_1BE4C7570(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1BE4C757C();
  sub_1BE50A994();
  v7 = OBJC_IVAR____TtC26GenerativePartnerServiceUI17SettingsViewModel__deepLinkParams;
  sub_1BE50AA7C();
  sub_1BE5096E4(v0 + v7, v1, type metadata accessor for SettingsViewModel.IdentifiableDeepLinkParams);
  sub_1BE4FFBD8();
  v8 = _s26GenerativePartnerServiceUI17SettingsViewModelC26IdentifiableDeepLinkParamsV2eeoiySbAE_AEtFZ_0();
  sub_1BE4FFBCC();
  sub_1BE508F98();
  if (v8)
  {
    sub_1BE50A9F0();
    v9 = sub_1BE4E0628();
    sub_1BE5096E4(v9, v10, v11);
    sub_1BE50A9A0();
    swift_beginAccess();
    sub_1BE4E3630(v1, v0 + v7);
    swift_endAccess();
  }

  else
  {
    swift_getKeyPath();
    sub_1BE50A858();
    MEMORY[0x1EEE9AC00](v12);
    sub_1BE50A81C();
    sub_1BE50AB00();
  }

  sub_1BE50A950();
  return sub_1BE508F98();
}

uint64_t sub_1BE5019F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsViewModel.IdentifiableDeepLinkParams(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE5096E4(a2, v7, type metadata accessor for SettingsViewModel.IdentifiableDeepLinkParams);
  v8 = OBJC_IVAR____TtC26GenerativePartnerServiceUI17SettingsViewModel__deepLinkParams;
  swift_beginAccess();
  sub_1BE4E3630(v7, a1 + v8);
  return swift_endAccess();
}

void (*sub_1BE501AC0(void *a1))(void *a1)
{
  v3 = sub_1BE508994(0x40uLL);
  *a1 = v3;
  v3[4] = v1;
  swift_getKeyPath();
  v3[5] = OBJC_IVAR____TtC26GenerativePartnerServiceUI17SettingsViewModel___observationRegistrar;
  *v3 = v1;
  sub_1BE50A7B0();
  v3[6] = sub_1BE508AD4(v4, v5);
  sub_1BE54AFCC();

  *v3 = v1;
  swift_getKeyPath();
  sub_1BE54AFEC();

  v3[7] = sub_1BE50167C();
  return sub_1BE501BD4;
}

void sub_1BE501BD4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  v2 = v1[5];
  v3 = v1[6];
  *v1 = v1[4];
  swift_getKeyPath();
  sub_1BE54AFDC();

  free(v1);
}

uint64_t sub_1BE501CE0(uint64_t result, void *a2)
{
  if (*(v2 + *a2) == (result & 1))
  {
    *(v2 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BE50AA50();
  }

  return result;
}

uint64_t sub_1BE501DA4(char a1)
{
  v1 = a1 & 1;
  result = sub_1BE501F10();
  if ((result & 1) != v1)
  {
    if (sub_1BE501F10())
    {
      if (qword_1EDDD6890 != -1)
      {
        swift_once();
      }

      sub_1BE53C930(v5);
      v3 = v6;
      if (v6)
      {
        v4 = v7;
        sub_1BE4C52F4(v5, v6);
        (*(v4 + 8))(v3, v4);
        sub_1BE4C58A8(v5);
      }

      else
      {
        sub_1BE4D0E58(v5, &qword_1EBDABAF8, &qword_1BE54DC20);
      }

      sub_1BE53CD40();
    }

    else
    {
      if (qword_1EDDD6890 != -1)
      {
        swift_once();
      }

      type metadata accessor for GenerativePartnerServiceUserDefaults();
      return sub_1BE53F998(0, 0xE000000000000000, 0);
    }
  }

  return result;
}

uint64_t sub_1BE501EF8(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC26GenerativePartnerServiceUI17SettingsViewModel__legacyEnableToggleState);
  *(v1 + OBJC_IVAR____TtC26GenerativePartnerServiceUI17SettingsViewModel__legacyEnableToggleState) = a1;
  return sub_1BE501DA4(v2);
}

void sub_1BE501F60(char a1)
{
  *(v1 + OBJC_IVAR____TtC26GenerativePartnerServiceUI17SettingsViewModel__legacySetupPromptsOn) = a1;
  if (qword_1EDDD6890 != -1)
  {
    sub_1BE4C7480();
  }

  v2 = sub_1BE501FC8();
  type metadata accessor for GenerativePartnerServiceUserDefaults();
  sub_1BE53FA78(v2 & 1, 0);
}

uint64_t sub_1BE502018(char a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  if (*(v5 + *a2) == (a1 & 1))
  {
    v8 = a1 & 1;

    return a5(v8);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BE50AA50();
  }
}

void sub_1BE5020C8(char a1)
{
  *(v1 + OBJC_IVAR____TtC26GenerativePartnerServiceUI17SettingsViewModel__legacyConfirmationPromptsOn) = a1;
  type metadata accessor for GenerativePartnerServiceUserDefaults();
  v2 = sub_1BE502110();
  sub_1BE53EBAC(v2 & 1, 0);
}

uint64_t sub_1BE502174(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1BE5021A0(v4);
}

uint64_t sub_1BE502204()
{
  swift_getKeyPath();
  sub_1BE50A7B0();
  v3 = sub_1BE508AD4(v1, v2);
  sub_1BE50A9E4(v3, v4, v5, v6, v7, v8, v9, v10, v14, v0);
  sub_1BE54AFCC();

  v11 = *(v0 + OBJC_IVAR____TtC26GenerativePartnerServiceUI17SettingsViewModel__adamID);
  v12 = *(v0 + OBJC_IVAR____TtC26GenerativePartnerServiceUI17SettingsViewModel__adamID + 8);

  return sub_1BE4D9800();
}

uint64_t sub_1BE5022A8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC26GenerativePartnerServiceUI17SettingsViewModel__adamID);
  if (sub_1BE5080E8(*(v2 + OBJC_IVAR____TtC26GenerativePartnerServiceUI17SettingsViewModel__adamID), *(v2 + OBJC_IVAR____TtC26GenerativePartnerServiceUI17SettingsViewModel__adamID + 8), a1, a2))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BE50AB00();
  }

  else
  {
    *v5 = a1;
    v5[1] = a2;
  }
}

uint64_t sub_1BE50239C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtC26GenerativePartnerServiceUI17SettingsViewModel__adamID);
  v4 = *(a1 + OBJC_IVAR____TtC26GenerativePartnerServiceUI17SettingsViewModel__adamID + 8);
  *v3 = a2;
  v3[1] = a3;
}

uint64_t sub_1BE5023F8(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1BE50A7B0();
  v6 = sub_1BE508AD4(v4, v5);
  sub_1BE50A9E4(v6, v7, v8, v9, v10, v11, v12, v13, v15, v2);
  sub_1BE54AFCC();

  return *(v2 + *a2);
}

uint64_t sub_1BE5024AC()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1BE50A7B0();
  v4 = sub_1BE508AD4(v2, v3);
  sub_1BE50A9E4(v4, v5, v6, v7, v8, v9, v10, v11, v15, v0);
  sub_1BE54AFCC();

  v12 = OBJC_IVAR____TtC26GenerativePartnerServiceUI17SettingsViewModel__latestRateLimitStates;
  sub_1BE4DCFA4();
  v13 = *(v1 + v12);
}

uint64_t sub_1BE50254C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1BE502578(v4);
}

uint64_t sub_1BE502578(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26GenerativePartnerServiceUI17SettingsViewModel__latestRateLimitStates;
  swift_beginAccess();
  v4 = *(v1 + v3);

  v6 = sub_1BE509C4C(v5, a1);

  if (v6)
  {
    v7 = *(v1 + v3);
    *(v1 + v3) = a1;
  }

  else
  {
    swift_getKeyPath();
    sub_1BE50A858();
    MEMORY[0x1EEE9AC00](v9);
    sub_1BE50A81C();
    sub_1BE50AB00();
  }
}

uint64_t sub_1BE50264C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC26GenerativePartnerServiceUI17SettingsViewModel__latestRateLimitStates;
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + v4) = a2;
}

uint64_t sub_1BE5026E0(uint64_t a1)
{
  v4 = sub_1BE4BF11C(&qword_1EBDACB98, &qword_1BE54FE48);
  sub_1BE4C7570(v4);
  v6 = *(v5 + 64);
  sub_1BE4FFC80();
  MEMORY[0x1EEE9AC00](v7);
  sub_1BE50A994();
  v8 = OBJC_IVAR____TtC26GenerativePartnerServiceUI17SettingsViewModel__userAccountStatus;
  sub_1BE50AA7C();
  sub_1BE4D9250(v1 + v8, v2, &qword_1EBDACB98, &qword_1BE54FE48);
  v9 = sub_1BE4FFBD8();
  v11 = sub_1BE50813C(v9, v10);
  v12 = sub_1BE4FFBCC();
  sub_1BE4D0E58(v12, v13, &qword_1BE54FE48);
  if (v11)
  {
    swift_getKeyPath();
    sub_1BE50A858();
    MEMORY[0x1EEE9AC00](v14);
    sub_1BE50A81C();
    sub_1BE50AB00();
  }

  else
  {
    v15 = sub_1BE4E0628();
    sub_1BE4D9250(v15, v16, &qword_1EBDACB98, &qword_1BE54FE48);
    sub_1BE50A9A0();
    swift_beginAccess();
    sub_1BE4D2184(v2, v1 + v8, &qword_1EBDACB98, &qword_1BE54FE48);
    swift_endAccess();
  }

  return sub_1BE4D0E58(a1, &qword_1EBDACB98, &qword_1BE54FE48);
}

uint64_t sub_1BE50285C(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1BE50A7B0();
  v6 = sub_1BE508AD4(v4, v5);
  sub_1BE50A9E4(v6, v7, v8, v9, v10, v11, v12, v13, v16, v2);
  sub_1BE54AFCC();

  v14 = *(v2 + *a2);
}

uint64_t sub_1BE5028EC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1BE502918(v4);
}

uint64_t sub_1BE502940(uint64_t a1, void *a2)
{
  if (*(v2 + *a2) == a1)
  {
  }

  else
  {
    swift_getKeyPath();
    sub_1BE50A858();
    MEMORY[0x1EEE9AC00](v3);
    sub_1BE50A81C();
    sub_1BE507D40();
  }
}

uint64_t sub_1BE5029F4(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + *a3);
  *(a1 + *a3) = a2;
}

uint64_t sub_1BE502A58@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  v8 = v4;
  swift_getKeyPath();
  sub_1BE50A7B0();
  v12 = sub_1BE508AD4(v10, v11);
  sub_1BE50A9E4(v12, v13, v14, v15, v16, v17, v18, v19, v22, v4);
  sub_1BE54AFCC();

  v20 = *a1;
  sub_1BE4DCFA4();
  return sub_1BE4D9250(v8 + v20, a4, a2, a3);
}

uint64_t sub_1BE502B40(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v10 = sub_1BE4BF11C(a3, a4);
  sub_1BE4C7570(v10);
  v12 = *(v11 + 64);
  sub_1BE4FFC80();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v18 - v14;
  sub_1BE4D9250(a2, &v18 - v14, a3, a4);
  v16 = *a5;
  sub_1BE50A9A0();
  swift_beginAccess();
  sub_1BE4D2184(v15, a1 + v16, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1BE502C3C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v12 = sub_1BE4BF11C(a5, a6);
  sub_1BE4C7570(v12);
  v14 = *(v13 + 64);
  sub_1BE4FFC80();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v20 - v16;
  sub_1BE4D9250(a1, &v20 - v16, a5, a6);
  v18 = *a2;
  return a7(v17);
}

void sub_1BE502D08(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1BE4BF11C(&qword_1EBDACBA0, &qword_1BE54FE50);
  sub_1BE4C7570(v4);
  v6 = *(v5 + 64);
  sub_1BE4FFC80();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  v10 = *a2;
  sub_1BE50AA7C();
  sub_1BE50AB48();
  sub_1BE4D9250(v11, v12, v13, v14);
  LOBYTE(a2) = sub_1BE507DE8(v9, a1);
  sub_1BE4D0E58(v9, &qword_1EBDACBA0, &qword_1BE54FE50);
  if (a2)
  {
    swift_getKeyPath();
    sub_1BE50A858();
    MEMORY[0x1EEE9AC00](v15);
    sub_1BE50A81C();
    sub_1BE507D40();
  }

  else
  {
    sub_1BE50AB54();
    sub_1BE4D9250(v16, v17, v18, v19);
    sub_1BE50A9A0();
    swift_beginAccess();
    sub_1BE50AB54();
    sub_1BE4D2184(v20, v21, v22, v23);
    swift_endAccess();
  }

  sub_1BE4D0E58(a1, &qword_1EBDACBA0, &qword_1BE54FE50);
  sub_1BE4FFB4C();
}

uint64_t SettingsViewModel.init()()
{
  v2 = v0;
  v3 = type metadata accessor for SettingsViewModel.IdentifiableDeepLinkParams(0);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1BE4C757C();
  sub_1BE50A994();
  v6 = type metadata accessor for SettingsViewModel.AccountSignInStatus(0);
  v7 = sub_1BE4C7570(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1BE4C757C();
  v12 = v11 - v10;
  sub_1BE500B18(&aBlock);
  v13 = v53;
  *(v2 + 16) = aBlock;
  *(v2 + 32) = v13;
  *(v2 + 48) = v54;
  sub_1BE500020(v12);
  sub_1BE5089E8(v12, v2 + OBJC_IVAR____TtC26GenerativePartnerServiceUI17SettingsViewModel__signInStatus, type metadata accessor for SettingsViewModel.AccountSignInStatus);
  sub_1BE54AECC();
  *(v1 + *(v4 + 28)) = 0;
  sub_1BE5089E8(v1, v2 + OBJC_IVAR____TtC26GenerativePartnerServiceUI17SettingsViewModel__deepLinkParams, type metadata accessor for SettingsViewModel.IdentifiableDeepLinkParams);
  *(v2 + OBJC_IVAR____TtC26GenerativePartnerServiceUI17SettingsViewModel__showingSignInFailureAlert) = 0;
  *(v2 + OBJC_IVAR____TtC26GenerativePartnerServiceUI17SettingsViewModel__showSignInFailedDueToWorkspaceRestriction) = 0;
  *(v2 + OBJC_IVAR____TtC26GenerativePartnerServiceUI17SettingsViewModel__showingSignOutDialog) = 0;
  *(v2 + OBJC_IVAR____TtC26GenerativePartnerServiceUI17SettingsViewModel__legacyEnableToggleState) = 1;
  if (qword_1EDDD6890 != -1)
  {
    sub_1BE4C7480();
  }

  type metadata accessor for GenerativePartnerServiceUserDefaults();
  *(v2 + OBJC_IVAR____TtC26GenerativePartnerServiceUI17SettingsViewModel__legacySetupPromptsOn) = sub_1BE53FB20() & 1;
  *(v2 + OBJC_IVAR____TtC26GenerativePartnerServiceUI17SettingsViewModel__legacyConfirmationPromptsOn) = sub_1BE53EAA8() & 1;
  *(v2 + OBJC_IVAR____TtC26GenerativePartnerServiceUI17SettingsViewModel__showManageSubscription) = 0;
  v14 = (v2 + OBJC_IVAR____TtC26GenerativePartnerServiceUI17SettingsViewModel__adamID);
  *v14 = 0;
  v14[1] = 0;
  *(v2 + OBJC_IVAR____TtC26GenerativePartnerServiceUI17SettingsViewModel__showRateLimitStatus) = 0;
  v15 = OBJC_IVAR____TtC26GenerativePartnerServiceUI17SettingsViewModel_rateLimitCategories;
  sub_1BE4BF11C(&qword_1EBDACB50, &unk_1BE54FE38);
  v16 = sub_1BE54B40C();
  sub_1BE4C7500(v16);
  v18 = v17;
  v20 = *(v19 + 72);
  v21 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1BE54DC10;
  v23 = v22 + v21;
  v24 = *(v18 + 104);
  v24(v23, *MEMORY[0x1E698AA58], v16);
  v24(v23 + v20, *MEMORY[0x1E698AA48], v16);
  *(v2 + v15) = v22;
  sub_1BE508AD4(&qword_1EBDACB58, MEMORY[0x1E698AA60]);
  *(v2 + OBJC_IVAR____TtC26GenerativePartnerServiceUI17SettingsViewModel__latestRateLimitStates) = sub_1BE54C61C();
  sub_1BE54B50C();
  sub_1BE50A890();
  sub_1BE4C63F8(v25, v26, v27, v28);
  v29 = sub_1BE54AE9C();
  sub_1BE50A890();
  sub_1BE4C63F8(v30, v31, v32, v29);
  sub_1BE50A890();
  sub_1BE4C63F8(v33, v34, v35, v29);
  v36 = OBJC_IVAR____TtC26GenerativePartnerServiceUI17SettingsViewModel_observer;
  *(v2 + v36) = [objc_allocWithZone(type metadata accessor for SettingsObserver()) init];
  sub_1BE54AFFC();
  if (qword_1EBDABA60 != -1)
  {
    sub_1BE50A974();
  }

  sub_1BE50AA08(v37, v38, 0x80000001BE554730);
  *(v2 + OBJC_IVAR____TtC26GenerativePartnerServiceUI17SettingsViewModel__subscriptionInfo) = sub_1BE508E2C(2, v39, v40, v41, v42);
  type metadata accessor for BillingInfo();
  v43 = swift_allocObject();
  *(v2 + OBJC_IVAR____TtC26GenerativePartnerServiceUI17SettingsViewModel__billingInfo) = sub_1BE51D494();
  v44 = *(v2 + OBJC_IVAR____TtC26GenerativePartnerServiceUI17SettingsViewModel_observer);
  sub_1BE50A968();

  sub_1BE509BB0(v45, v43, &off_1F3CCC538);

  sub_1BE502160();
  sub_1BE50A968();

  sub_1BE520660();

  sub_1BE502848();
  swift_weakAssign();

  sub_1BE506954();
  v46 = [objc_opt_self() defaultCenter];
  v47 = *MEMORY[0x1E69ADD68];
  v48 = [objc_opt_self() mainQueue];
  v54 = sub_1BE508F78;
  v55 = v2;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v53 = sub_1BE5036B0;
  *(&v53 + 1) = &unk_1F3CCC510;
  v49 = _Block_copy(&aBlock);

  v50 = [v46 addObserverForName:v47 object:0 queue:v48 usingBlock:v49];
  _Block_release(v49);
  swift_unknownObjectRelease();

  return v2;
}

uint64_t sub_1BE503478(uint64_t a1, uint64_t a2)
{
  v3 = sub_1BE4BF11C(&qword_1EBDAC3A8, &qword_1BE550DA0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  v7 = sub_1BE54C91C();
  sub_1BE4C63F8(v6, 1, 1, v7);
  sub_1BE54C8CC();

  v8 = sub_1BE54C8BC();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E85E0];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = a2;
  sub_1BE50BA3C();
}

uint64_t sub_1BE503578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = *(*(type metadata accessor for SettingsViewModel.AccountSignInStatus(0) - 8) + 64) + 15;
  v4[3] = swift_task_alloc();
  sub_1BE54C8CC();
  v4[4] = sub_1BE54C8BC();
  v7 = sub_1BE54C87C();

  return MEMORY[0x1EEE6DFA0](sub_1BE50363C, v7, v6);
}

uint64_t sub_1BE50363C()
{
  sub_1BE4E01D4();
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  sub_1BE500020(v2);
  sub_1BE5014C4();

  sub_1BE4E01E0();

  return v4();
}

uint64_t sub_1BE5036B0(uint64_t a1)
{
  v2 = sub_1BE54ACBC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_1BE54ACAC();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1BE5037A4()
{
  if (qword_1EDDD6890 != -1)
  {
    sub_1BE4C7480();
  }

  sub_1BE53CA80(v2);
  sub_1BE5011B0(v2);
  sub_1BE5010B4(v2);
  v0 = v3 != 0;
  sub_1BE4D0E58(v2, &qword_1EBDABAF8, &qword_1BE54DC20);
  return sub_1BE501F24(v0);
}

uint64_t sub_1BE503840()
{
  if (qword_1EBDABA78 != -1)
  {
    swift_once();
  }

  v0 = qword_1EBDB0BF8;
  if (qword_1EBDB0BF8)
  {
    v1 = sub_1BE54C6DC();
    v2 = [v0 BOOLForKey_];
  }

  else
  {
    v2 = 1;
  }

  result = sub_1BE502110();
  if (v2 != (result & 1))
  {

    return sub_1BE502124(v2);
  }

  return result;
}

uint64_t sub_1BE503918()
{
  v1 = v0;
  v2 = sub_1BE4BF11C(&qword_1EBDAC3A8, &qword_1BE550DA0);
  sub_1BE4C7570(v2);
  v4 = *(v3 + 64);
  sub_1BE4FFC80();
  MEMORY[0x1EEE9AC00](v5);
  sub_1BE50A994();
  sub_1BE54C91C();
  v6 = sub_1BE50A848();
  sub_1BE4C63F8(v6, v7, v8, v9);
  sub_1BE54C8CC();
  sub_1BE50A968();

  v10 = sub_1BE54C8BC();
  sub_1BE50AADC();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v1;
  sub_1BE50A89C();
}

uint64_t sub_1BE5039EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_1BE54C8CC();
  v4[4] = sub_1BE54C8BC();
  v6 = sub_1BE54C87C();
  v4[5] = v6;
  v4[6] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1BE503A88, v6, v5);
}

uint64_t sub_1BE503A88()
{
  sub_1BE4E4418();
  if (qword_1EBDABA60 != -1)
  {
    sub_1BE50A974();
  }

  v1 = qword_1EBDAD030;
  swift_bridgeObjectRetain_n();
  sub_1BE50AA08(v1, v2, 0x80000001BE554730);
  v0[7] = v3;
  v0[8] = v4;
  v0[9] = v5;
  sub_1BE516C58(v3, v4, v6, v5);
  sub_1BE50AA08(v1, v7, 0x80000001BE554730);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v0[10] = v8;
  v0[11] = v10;
  v0[12] = v14;
  v16 = swift_task_alloc();
  v0[13] = v16;
  *v16 = v0;
  v16[1] = sub_1BE503BAC;

  return sub_1BE5171F0(0, 1, v9, v11, v13, v15);
}

uint64_t sub_1BE503BAC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;
  sub_1BE4E01C4();
  *v8 = v7;
  v9 = v6[13];
  *v8 = *v3;

  v10 = v6[12];
  v11 = v6[11];
  v12 = v6[10];
  if (v2)
  {

    a1 = 0;
    a2 = 0;
  }

  else
  {
  }

  v7[14] = a1;
  v7[15] = a2;

  return MEMORY[0x1EEE6DFA0](sub_1BE503D40, 0, 0);
}

uint64_t sub_1BE503D40()
{
  sub_1BE4E01D4();
  v1 = *(v0 + 24);
  *(v0 + 128) = sub_1BE54C8BC();
  sub_1BE50A968();
  sub_1BE54C87C();
  v2 = sub_1BE50AA94();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1BE503DBC()
{
  sub_1BE4E4418();
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  v4 = v0[2];

  v5 = sub_1BE4E0628();
  sub_1BE5022A8(v5, v6);
  v7 = v0[5];
  v8 = v0[6];

  return MEMORY[0x1EEE6DFA0](sub_1BE503E34, v7, v8);
}

uint64_t sub_1BE503E34()
{
  sub_1BE4E4418();
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = v0[4];

  sub_1BE4E01E0();

  return v5();
}

void sub_1BE503EB0()
{
  v0 = sub_1BE4BF11C(&qword_1EBDAC3A8, &qword_1BE550DA0);
  sub_1BE4C7570(v0);
  v2 = *(v1 + 64);
  sub_1BE4FFC80();
  MEMORY[0x1EEE9AC00](v3);
  v118 = &v115 - v4;
  v126 = sub_1BE54AE9C();
  v5 = sub_1BE4C7500(v126);
  v116 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1BE4C757C();
  v115 = v10 - v9;
  v11 = sub_1BE4BF11C(&qword_1EBDACBA0, &qword_1BE54FE50);
  v12 = sub_1BE4C7570(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1BE4D981C();
  v117 = v15 - v16;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v124 = &v115 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v115 - v20;
  v22 = sub_1BE54B36C();
  v23 = sub_1BE4C7500(v22);
  v122 = v24;
  v123 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v23);
  sub_1BE4C757C();
  v121 = v28 - v27;
  v29 = sub_1BE54B39C();
  v30 = sub_1BE4C7500(v29);
  v119 = v31;
  v120 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v30);
  sub_1BE4C757C();
  v36 = v35 - v34;
  v37 = type metadata accessor for SettingsViewModel.AccountSignInStatus(0);
  v38 = sub_1BE4C7570(v37);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  sub_1BE4C757C();
  v43 = v42 - v41;
  v44 = sub_1BE54B3DC();
  v45 = sub_1BE4C7500(v44);
  v47 = v46;
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v45);
  sub_1BE4C757C();
  v52 = v51 - v50;
  v53 = sub_1BE54AEDC();
  v54 = sub_1BE4C7500(v53);
  v56 = v55;
  v58 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v54);
  sub_1BE4C757C();
  v61 = v60 - v59;
  sub_1BE54AECC();
  v125 = sub_1BE54AEAC();
  v63 = v62;
  (*(v56 + 8))(v61, v53);
  v64 = v127;
  sub_1BE50149C();
  v65 = sub_1BE4BF11C(&qword_1EBDAC548, &qword_1BE54F7C8);
  if (sub_1BE4C63BC(v43, 4, v65))
  {
    sub_1BE50A7C8();
    sub_1BE508F98();
  }

  else
  {
    (*(v47 + 32))(v52, v43, v44);
    sub_1BE54B3AC();
    v66 = v121;
    sub_1BE54B37C();
    (*(v119 + 8))(v36, v120);
    (*(v47 + 8))(v52, v44);
    v68 = v122;
    v67 = v123;
    if ((*(v122 + 88))(v66, v123) == *MEMORY[0x1E698AA20])
    {

      (*(v68 + 8))(v66, v67);
      return;
    }

    (*(v68 + 8))(v66, v67);
  }

  v69 = v63;
  sub_1BE502C18(v21);
  v70 = v126;
  v71 = sub_1BE4C63BC(v21, 1, v126);
  sub_1BE4D0E58(v21, &qword_1EBDACBA0, &qword_1BE54FE50);
  if (v71 == 1)
  {
    v72 = v124;
    sub_1BE502A34(v124);
    sub_1BE50AAE8(v72, 1, v70);
    if (v73)
    {
      sub_1BE4D0E58(v72, &qword_1EBDACBA0, &qword_1BE54FE50);
    }

    else
    {
      v81 = v115;
      v80 = v116;
      (*(v116 + 32))(v115, v72, v70);
      sub_1BE54AE7C();
      v83 = fabs(v82);
      if (v83 < 2.0)
      {
        if (qword_1EBDABAC8 != -1)
        {
          sub_1BE50A7E0();
        }

        v84 = sub_1BE54B2EC();
        sub_1BE4C52BC(v84, qword_1EBDB0C98);

        v85 = sub_1BE54B2BC();
        v86 = sub_1BE54C97C();

        if (!os_log_type_enabled(v85, v86))
        {

          goto LABEL_41;
        }

        v87 = sub_1BE50AB18();
        v88 = sub_1BE50AAC4();
        v128 = v88;
        *v87 = 136446466;
        v89 = sub_1BE50AA34();

        *(v87 + 4) = v89;
        *(v87 + 12) = 2050;
        v90 = v83 * 1000.0;
        if (COERCE_UNSIGNED_INT64(v83 * 1000.0) >> 52 > 0x7FE)
        {
          __break(1u);
        }

        else if (v90 > -9.22337204e18)
        {
          if (v90 < 9.22337204e18)
          {
            *(v87 + 14) = v90;
            _os_log_impl(&dword_1BE4B8000, v85, v86, "Fetch %{public}s: Quelling rate limit fetch that occurred only %{public}ldms ago.", v87, 0x16u);
            sub_1BE4C58A8(v88);
            sub_1BE4C75DC();
            sub_1BE4C75DC();

LABEL_41:
            (*(v80 + 8))(v81, v70);
            return;
          }

          goto LABEL_44;
        }

        __break(1u);
LABEL_44:
        __break(1u);
        return;
      }

      (*(v80 + 8))(v81, v70);
    }

    if (qword_1EBDABAC8 != -1)
    {
      sub_1BE50A7E0();
    }

    v91 = sub_1BE54B2EC();
    sub_1BE4C52BC(v91, qword_1EBDB0C98);

    v92 = sub_1BE54B2BC();
    v93 = sub_1BE54C97C();

    if (os_log_type_enabled(v92, v93))
    {
      v94 = sub_1BE50AB7C();
      v95 = sub_1BE50AAC4();
      v128 = v95;
      *v94 = 136446210;
      *(v94 + 4) = sub_1BE50AA34();
      _os_log_impl(&dword_1BE4B8000, v92, v93, "Fetch %{public}s: Starting rate limit fetch", v94, 0xCu);
      sub_1BE4C58A8(v95);
      sub_1BE4C75DC();
      sub_1BE4C75DC();
    }

    v96 = v117;
    sub_1BE54AE8C();
    sub_1BE4C63F8(v96, 0, 1, v70);
    sub_1BE502CE0(v96);
    sub_1BE50A890();
    sub_1BE4C63F8(v97, v98, v99, v70);
    sub_1BE502B18(v96);
    type metadata accessor for LegacyGATUserDefaults();
    v100 = sub_1BE536D88();
    if (v100 != 2)
    {
      v101 = v100;

      v102 = sub_1BE54B2BC();
      v103 = sub_1BE54C9AC();

      if (os_log_type_enabled(v102, v103))
      {
        v104 = sub_1BE50AB18();
        v128 = swift_slowAlloc();
        *v104 = 136446466;
        *(v104 + 4) = sub_1BE50AA34();
        *(v104 + 12) = 2082;
        if (v101)
        {
          v105 = 1702195828;
        }

        else
        {
          v105 = 0x65736C6166;
        }

        if (v101)
        {
          v106 = 0xE400000000000000;
        }

        else
        {
          v106 = 0xE500000000000000;
        }

        v107 = sub_1BE4C5338(v105, v106, &v128);

        *(v104 + 14) = v107;
        _os_log_impl(&dword_1BE4B8000, v102, v103, "Fetch %{public}s: !! You have a rate limit override set to: forceRateLimitState = %{public}s", v104, 0x16u);
        swift_arrayDestroy();
        sub_1BE4C75DC();
        sub_1BE4C75DC();
      }
    }

    sub_1BE54C91C();
    v108 = sub_1BE50A848();
    sub_1BE4C63F8(v108, v109, v110, v111);
    sub_1BE54C8CC();

    v112 = sub_1BE54C8BC();
    v113 = swift_allocObject();
    v114 = MEMORY[0x1E69E85E0];
    v113[2] = v112;
    v113[3] = v114;
    v113[4] = v125;
    v113[5] = v69;
    v113[6] = v64;
    sub_1BE50A89C();
  }

  else
  {
    if (qword_1EBDABAC8 != -1)
    {
      sub_1BE50A7E0();
    }

    v74 = sub_1BE54B2EC();
    sub_1BE4C52BC(v74, qword_1EBDB0C98);

    v75 = sub_1BE54B2BC();
    v76 = sub_1BE54C97C();

    if (os_log_type_enabled(v75, v76))
    {
      v77 = sub_1BE50AB7C();
      v78 = sub_1BE50AAC4();
      v128 = v78;
      *v77 = 136446210;
      v79 = sub_1BE50AA34();

      *(v77 + 4) = v79;
      _os_log_impl(&dword_1BE4B8000, v75, v76, "Fetch %{public}s: Rate limit fetch currently pending; quelling new request", v77, 0xCu);
      sub_1BE4C58A8(v78);
      sub_1BE4C75DC();
      sub_1BE4C75DC();
    }

    else
    {
    }
  }
}

uint64_t sub_1BE50492C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[9] = a4;
  v7 = sub_1BE54B40C();
  v6[12] = v7;
  v8 = *(v7 - 8);
  v6[13] = v8;
  v9 = *(v8 + 64) + 15;
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();
  v10 = *(*(sub_1BE4BF11C(&qword_1EBDACC18, &qword_1BE5500D0) - 8) + 64) + 15;
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v11 = *(*(sub_1BE4BF11C(&qword_1EBDACBA0, &qword_1BE54FE50) - 8) + 64) + 15;
  v6[18] = swift_task_alloc();
  v6[19] = sub_1BE54C8CC();
  v6[20] = sub_1BE54C8BC();
  v13 = sub_1BE54C87C();
  v6[21] = v13;
  v6[22] = v12;

  return MEMORY[0x1EEE6DFA0](sub_1BE504AB0, v13, v12);
}

uint64_t sub_1BE504AB0()
{
  v23 = v0;
  if (qword_1EBDABAC8 != -1)
  {
    sub_1BE50A7E0();
  }

  v1 = v0[10];
  v2 = sub_1BE54B2EC();
  v0[23] = sub_1BE4C52BC(v2, qword_1EBDB0C98);

  v3 = sub_1BE54B2BC();
  v4 = sub_1BE54C97C();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[9];
    v5 = v0[10];
    v7 = sub_1BE50AB7C();
    v8 = sub_1BE50AAC4();
    v22 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_1BE4C5338(v6, v5, &v22);
    _os_log_impl(&dword_1BE4B8000, v3, v4, "Fetch %{public}s: Starting task group", v7, 0xCu);
    sub_1BE4C58A8(v8);
    sub_1BE4C75DC();
    sub_1BE4C75DC();
  }

  v9 = v0[19];
  v11 = v0[10];
  v10 = v0[11];
  v12 = v0[9];
  v13 = sub_1BE54C8BC();
  v0[24] = v13;
  v14 = swift_task_alloc();
  v0[25] = v14;
  v14[2] = v10;
  v14[3] = v12;
  v14[4] = v11;
  v15 = sub_1BE4BF11C(&qword_1EBDACC20, &qword_1BE5500E8);
  v16 = sub_1BE4BF11C(&qword_1EBDACC28, &qword_1BE5500F0);
  v17 = *(MEMORY[0x1E69E87D8] + 4);
  swift_task_alloc();
  sub_1BE50A8BC();
  v0[26] = v18;
  *v18 = v19;
  v18[1] = sub_1BE504CDC;
  v20 = MEMORY[0x1E69E85E0];
  v25 = v16;

  return MEMORY[0x1EEE6DBF8](v0 + 5, v15, v16, v13, v20, &unk_1BE5500E0, v14, v15);
}

uint64_t sub_1BE504CDC()
{
  sub_1BE4E4418();
  sub_1BE50AB30();
  v2 = v0[26];
  v3 = v0[25];
  v4 = v0[24];
  v5 = *v1;
  sub_1BE4E01C4();
  *v6 = v5;

  sub_1BE50AB3C();
  v8 = *(v7 + 176);
  v9 = v0[21];

  return MEMORY[0x1EEE6DFA0](sub_1BE504E28, v9, v8);
}

void sub_1BE504E28()
{
  v90 = v0;
  v1 = v0[23];
  v2 = v0[20];
  v3 = v0[18];
  v5 = v0[10];
  v4 = v0[11];

  v6 = v0[5];
  v7 = sub_1BE54AE9C();
  sub_1BE50A890();
  sub_1BE4C63F8(v8, v9, v10, v7);
  sub_1BE502CE0(v3);
  sub_1BE54AE8C();
  sub_1BE4C63F8(v3, 0, 1, v7);
  sub_1BE502B18(v3);

  v11 = sub_1BE54B2BC();
  v12 = sub_1BE54C97C();

  v79 = v6;
  if (os_log_type_enabled(v11, v12))
  {
    v14 = v0[9];
    v13 = v0[10];
    v15 = sub_1BE50AB18();
    v16 = sub_1BE50AAC4();
    v89 = v16;
    *v15 = 136446466;
    *(v15 + 4) = sub_1BE4C5338(v14, v13, &v89);
    *(v15 + 12) = 2050;
    *(v15 + 14) = *(v6 + 16);

    _os_log_impl(&dword_1BE4B8000, v11, v12, "Fetch %{public}s: Completed task group. budgets dictionary count: %{public}ld", v15, 0x16u);
    sub_1BE4C58A8(v16);
    sub_1BE4C75DC();
    sub_1BE4C75DC();
  }

  else
  {
  }

  v17 = v0[13];
  v88 = v0[11];
  v18 = v6 + 64;
  v19 = -1;
  v20 = -1 << *(v6 + 32);
  if (-v20 < 64)
  {
    v19 = ~(-1 << -v20);
  }

  v21 = v19 & *(v6 + 64);
  v87 = OBJC_IVAR____TtC26GenerativePartnerServiceUI17SettingsViewModel__latestRateLimitStates;
  v22 = (63 - v20) >> 6;
  v83 = v0[13];
  v84 = (v17 + 32);
  v82 = (v17 + 8);

  v23 = 0;
  v80 = v22;
  v81 = v6 + 64;
  if (v21)
  {
    while (1)
    {
      v24 = v23;
LABEL_12:
      v26 = v0[15];
      v25 = v0[16];
      v27 = v0[12];
      v28 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      v29 = v28 | (v24 << 6);
      (*(v83 + 16))(v26, v79[6] + *(v83 + 72) * v29, v27);
      v85 = *(v79[7] + v29);
      v30 = sub_1BE4BF11C(&qword_1EBDACC30, &qword_1BE5500F8);
      v31 = *(v30 + 48);
      v32 = v0;
      (*(v83 + 32))(v25, v26, v27);
      *(v25 + v31) = v85;
      sub_1BE4C63F8(v25, 0, 1, v30);
LABEL_13:
      v33 = v32[17];
      sub_1BE4D9204(v32[16], v33, &qword_1EBDACC18, &qword_1BE5500D0);
      v34 = sub_1BE4BF11C(&qword_1EBDACC30, &qword_1BE5500F8);
      sub_1BE50AAE8(v33, 1, v34);
      if (v35)
      {
        break;
      }

      v37 = v32[11];
      v36 = v32[12];
      v86 = *(v32[17] + *(v34 + 48));
      (*v84)(v32[14]);
      swift_getKeyPath();
      v32[6] = v37;
      sub_1BE50A7B0();
      sub_1BE508AD4(&qword_1EBDAC5B8, v38);
      sub_1BE54AFCC();

      v32[7] = v37;
      swift_getKeyPath();
      sub_1BE54AFEC();

      sub_1BE50A9A0();
      swift_beginAccess();
      v39 = *(v88 + v87);
      swift_isUniquelyReferenced_nonNull_native();
      v89 = *(v88 + v87);
      *(v88 + v87) = 0x8000000000000000;
      sub_1BE52F6F0();
      sub_1BE50AAB4();
      if (__OFADD__(v42, v43))
      {
        goto LABEL_35;
      }

      v44 = v40;
      v45 = v41;
      v0 = v32;
      sub_1BE4BF11C(&qword_1EBDACC38, &qword_1BE550128);
      v46 = sub_1BE54CBAC();
      v47 = v89;
      if (v46)
      {
        v48 = v32[14];
        v49 = sub_1BE52F6F0();
        if ((v45 & 1) != (v50 & 1))
        {
          v78 = v32[12];

          sub_1BE54CCFC();
          return;
        }

        v44 = v49;
      }

      v51 = v32[14];
      v52 = v32[12];
      if (v45)
      {
        *(v47[7] + v44) = v86;
        (*v82)(v51, v52);
      }

      else
      {
        v47[(v44 >> 6) + 8] |= 1 << v44;
        (*(v83 + 16))(v47[6] + *(v83 + 72) * v44, v51, v52);
        *(v47[7] + v44) = v86;
        (*(v83 + 8))(v51, v52);
        v53 = v47[2];
        v54 = __OFADD__(v53, 1);
        v55 = v53 + 1;
        if (v54)
        {
          goto LABEL_36;
        }

        v47[2] = v55;
      }

      v56 = v32[11];
      v57 = *(v88 + v87);
      *(v88 + v87) = v47;

      swift_endAccess();
      v32[8] = v56;
      swift_getKeyPath();
      sub_1BE54AFDC();

      v22 = v80;
      v18 = v81;
      if (!v21)
      {
        goto LABEL_8;
      }
    }

    v63 = v32[23];
    v64 = v32[10];

    v65 = sub_1BE54B2BC();
    v66 = sub_1BE54C97C();

    if (os_log_type_enabled(v65, v66))
    {
      v68 = v32[9];
      v67 = v32[10];
      v69 = sub_1BE50AB18();
      v70 = sub_1BE50AAC4();
      v89 = v70;
      *v69 = 136446466;
      *(v69 + 4) = sub_1BE4C5338(v68, v67, &v89);
      *(v69 + 12) = 2050;
      v71 = v79[2];

      *(v69 + 14) = v71;

      _os_log_impl(&dword_1BE4B8000, v65, v66, "Fetch %{public}s: Updated latestRateLimitStates dictionary, ending count: %{public}ld", v69, 0x16u);
      sub_1BE4C58A8(v70);
      sub_1BE4C75DC();
      sub_1BE4C75DC();
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    v73 = v32[17];
    v72 = v32[18];
    v75 = v32[15];
    v74 = v32[16];
    v76 = v32[14];

    v77 = v32[1];

    v77();
  }

  else
  {
LABEL_8:
    while (1)
    {
      v24 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v24 >= v22)
      {
        v58 = v0[16];
        v32 = v0;
        sub_1BE4BF11C(&qword_1EBDACC30, &qword_1BE5500F8);
        sub_1BE50AA28();
        sub_1BE50A890();
        sub_1BE4C63F8(v59, v60, v61, v62);
        v21 = 0;
        goto LABEL_13;
      }

      v21 = *(v18 + 8 * v24);
      ++v23;
      if (v21)
      {
        v23 = v24;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
  }
}

uint64_t sub_1BE5055AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a4;
  v5[16] = a5;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  v6 = sub_1BE54B43C();
  v5[17] = v6;
  v7 = *(v6 - 8);
  v5[18] = v7;
  v8 = *(v7 + 64) + 15;
  v5[19] = swift_task_alloc();
  v9 = *(*(sub_1BE4BF11C(&qword_1EBDACC40, &qword_1BE550130) - 8) + 64) + 15;
  v5[20] = swift_task_alloc();
  v10 = sub_1BE4BF11C(&qword_1EBDACC20, &qword_1BE5500E8);
  v5[21] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  v12 = sub_1BE54B40C();
  v5[28] = v12;
  v13 = *(v12 - 8);
  v5[29] = v13;
  v5[30] = *(v13 + 64);
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  v14 = *(*(sub_1BE4BF11C(&qword_1EBDAC3A8, &qword_1BE550DA0) - 8) + 64) + 15;
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  v5[35] = sub_1BE54C8CC();
  v5[36] = sub_1BE54C8BC();
  v16 = sub_1BE54C87C();
  v5[37] = v16;
  v5[38] = v15;

  return MEMORY[0x1EEE6DFA0](sub_1BE505810, v16, v15);
}

uint64_t sub_1BE505810()
{
  v1 = *(*(v0 + 112) + OBJC_IVAR____TtC26GenerativePartnerServiceUI17SettingsViewModel_rateLimitCategories);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 232);
    v39 = **(v0 + 104);
    v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v5 = v1 + v4;
    v37 = *(v3 + 72);
    v36 = (v3 + 16);
    v38 = v4;
    v34 = (v3 + 32);
    v35 = (*(v0 + 240) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
    v6 = sub_1BE54C91C();
    do
    {
      v40 = v2;
      v8 = *(v0 + 264);
      v7 = *(v0 + 272);
      v9 = *(v0 + 256);
      v10 = *(v0 + 224);
      v11 = *(v0 + 112);
      sub_1BE50A890();
      sub_1BE4C63F8(v12, v13, v14, v6);
      (*v36)(v9, v5, v10);
      v15 = swift_allocObject();
      *(v15 + 16) = 0;
      v16 = (v15 + 16);
      *(v15 + 24) = 0;
      (*v34)(v15 + v38, v9, v10);
      *(v15 + v35) = v11;
      sub_1BE4D9250(v7, v8, &qword_1EBDAC3A8, &qword_1BE550DA0);
      LODWORD(v8) = sub_1BE4C63BC(v8, 1, v6);

      v17 = *(v0 + 264);
      if (v8 == 1)
      {
        sub_1BE4D0E58(*(v0 + 264), &qword_1EBDAC3A8, &qword_1BE550DA0);
      }

      else
      {
        sub_1BE54C90C();
        (*(*(v6 - 8) + 8))(v17, v6);
      }

      if (*v16)
      {
        v18 = *(v15 + 24);
        v19 = *v16;
        swift_getObjectType();
        swift_unknownObjectRetain();
        v20 = sub_1BE54C87C();
        v22 = v21;
        swift_unknownObjectRelease();
      }

      else
      {
        v20 = 0;
        v22 = 0;
      }

      v23 = swift_allocObject();
      *(v23 + 16) = &unk_1BE550148;
      *(v23 + 24) = v15;

      if (v22 | v20)
      {
        v24 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v20;
        *(v0 + 40) = v22;
      }

      else
      {
        v24 = 0;
      }

      v25 = *(v0 + 272);
      v26 = *(v0 + 168);
      *(v0 + 48) = 1;
      *(v0 + 56) = v24;
      *(v0 + 64) = v39;
      swift_task_create();

      sub_1BE4D0E58(v25, &qword_1EBDAC3A8, &qword_1BE550DA0);
      v5 += v37;
      v2 = v40 - 1;
    }

    while (v40 != 1);
  }

  *(v0 + 336) = *MEMORY[0x1E698AA58];
  *(v0 + 340) = *MEMORY[0x1E698AA48];
  *(v0 + 344) = *MEMORY[0x1E698AA50];
  *(v0 + 348) = *MEMORY[0x1E698AA40];
  *(v0 + 312) = MEMORY[0x1E69E7CC8];
  v27 = *(v0 + 280);
  v28 = sub_1BE54C8BC();
  *(v0 + 320) = v28;
  v29 = *(MEMORY[0x1E69E8580] + 4);
  v30 = swift_task_alloc();
  *(v0 + 328) = v30;
  sub_1BE4BF11C(&qword_1EBDACC48, &qword_1BE550158);
  *v30 = v0;
  v31 = sub_1BE50A8E0();
  v32 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8A0](v31, v28, v32);
}

uint64_t sub_1BE505C08()
{
  sub_1BE4E4418();
  sub_1BE50AB30();
  v2 = v0[41];
  v3 = v0[40];
  v4 = *v1;
  sub_1BE4E01C4();
  *v5 = v4;

  sub_1BE50AB3C();
  v7 = *(v6 + 304);
  v8 = v0[37];

  return MEMORY[0x1EEE6DFA0](sub_1BE505D38, v8, v7);
}

uint64_t sub_1BE505D38()
{
  v144 = v0;
  v2 = *(v0 + 160);
  v3 = *(v0 + 168);
  sub_1BE50AAE8(v2, 1, v3);
  if (v27)
  {
    v4 = *(v0 + 312);
    v5 = *(v0 + 288);
    v7 = *(v0 + 264);
    v6 = *(v0 + 272);
    v9 = *(v0 + 248);
    v8 = *(v0 + 256);
    v11 = *(v0 + 208);
    v10 = *(v0 + 216);
    v134 = *(v0 + 200);
    v136 = *(v0 + 192);
    v138 = *(v0 + 184);
    v140 = *(v0 + 176);
    v142 = *(v0 + 152);
    v12 = *(v0 + 96);

    sub_1BE4D0E58(v2, &qword_1EBDACC40, &qword_1BE550130);
    *v12 = v4;

    sub_1BE4E01E0();
    sub_1BE50AB60();

    __asm { BRAA            X1, X16 }
  }

  v15 = *(v0 + 208);
  v16 = *(v0 + 216);
  v17 = *(v0 + 136);
  sub_1BE50AB48();
  sub_1BE4D9204(v18, v19, v20, v21);
  sub_1BE50AB48();
  sub_1BE4D9250(v22, v23, v24, v25);
  v26 = *(v3 + 48);
  sub_1BE50AAE8(v15 + v26, 1, v17);
  if (!v27)
  {
    v45 = *(v0 + 224);
    v46 = *(v0 + 232);
    v47 = *(v0 + 208);
    (*(*(v0 + 144) + 32))(*(v0 + 152), v15 + v26, *(v0 + 136));
    v48 = *(v46 + 8);
    v48(v47, v45);
    v49 = sub_1BE54B42C();
    if (v49)
    {
      v50 = 2;
    }

    else
    {
      v51 = *(v0 + 152);
      v50 = sub_1BE54B41C() & 1;
    }

    v52 = *(v0 + 312);
    sub_1BE4D9250(*(v0 + 216), *(v0 + 192), &qword_1EBDACC20, &qword_1BE5500E8);
    swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 80) = v52;
    sub_1BE52F6F0();
    sub_1BE50AAB4();
    if (!__OFADD__(v55, v56))
    {
      v57 = v53;
      v58 = v54;
      sub_1BE4BF11C(&qword_1EBDACC38, &qword_1BE550128);
      if (sub_1BE54CBAC())
      {
        v59 = *(v0 + 192);
        v60 = *(v0 + 80);
        v61 = sub_1BE52F6F0();
        if ((v58 & 1) != (v62 & 1))
        {
          goto LABEL_20;
        }

        v57 = v61;
      }

      v1 = *(v0 + 80);
      if (v58)
      {
        *(*(v1 + 56) + v57) = v50;
LABEL_34:
        v93 = *(v0 + 192);
        v94 = *(*(v0 + 168) + 48);
        v48(v93, *(v0 + 224));
        sub_1BE4D0E58(v93 + v94, &qword_1EBDACC50, &qword_1BE550160);
        if (qword_1EBDABAC8 != -1)
        {
          sub_1BE50A7E0();
        }

        v95 = *(v0 + 216);
        v96 = *(v0 + 184);
        v97 = *(v0 + 128);
        v98 = sub_1BE54B2EC();
        sub_1BE4C52BC(v98, qword_1EBDB0C98);
        sub_1BE4D9250(v95, v96, &qword_1EBDACC20, &qword_1BE5500E8);

        v99 = sub_1BE54B2BC();
        v100 = sub_1BE54C97C();

        if (os_log_type_enabled(v99, v100))
        {
          v135 = v100;
          v141 = v48;
          v137 = v50;
          v139 = v1;
          v133 = *(v0 + 336);
          v101 = *(v0 + 248);
          v103 = *(v0 + 224);
          v102 = *(v0 + 232);
          v105 = *(v0 + 176);
          v104 = *(v0 + 184);
          v106 = *(v0 + 120);
          v107 = *(v0 + 128);
          v108 = sub_1BE50AAC4();
          *(v0 + 88) = swift_slowAlloc();
          *v108 = 136446722;
          *(v108 + 4) = sub_1BE4C5338(v106, v107, (v0 + 88));
          *(v108 + 12) = 2082;
          sub_1BE4D9250(v104, v105, &qword_1EBDACC20, &qword_1BE5500E8);
          (*(v102 + 16))(v101, v105, v103);
          v109 = (*(v102 + 88))(v101, v103);
          if (v109 == v133)
          {
            v110 = 0xEF65736E6F707365;
            v111 = 0x526E6F6973736573;
            v112 = v137;
          }

          else
          {
            v112 = v137;
            if (v109 == *(v0 + 340))
            {
              v110 = 0xEE00726F74617265;
              v111 = 0x6E65476567616D69;
            }

            else if (v109 == *(v0 + 344))
            {
              v110 = 0xEF72657465727072;
              v111 = 0x65746E4965646F63;
            }

            else if (v109 == *(v0 + 348))
            {
              v110 = 0xEA00000000006461;
              v111 = 0x6F6C7055656C6966;
            }

            else
            {
              v141(*(v0 + 248), *(v0 + 224));
              v110 = 0xEF544C5541464544;
              v111 = 0x5F4E574F4E4B4E55;
            }
          }

          v118 = *(v0 + 224);
          v119 = *(v0 + 176);
          v120 = *(*(v0 + 168) + 48);
          sub_1BE4D0E58(*(v0 + 184), &qword_1EBDACC20, &qword_1BE5500E8);
          v141(v119, v118);
          sub_1BE4D0E58(v119 + v120, &qword_1EBDACC50, &qword_1BE550160);
          v121 = sub_1BE4C5338(v111, v110, (v0 + 88));

          *(v108 + 14) = v121;
          *(v108 + 22) = 2082;
          if (v112)
          {
            v1 = v139;
            if (v112 == 1)
            {
              v122 = 0xE500000000000000;
              v123 = 0x6369736162;
            }

            else
            {
              v122 = 0xEB00000000646574;
              v123 = 0x696D694C64726168;
            }
          }

          else
          {
            v122 = 0xE800000000000000;
            v123 = 0x6465636E61766461;
            v1 = v139;
          }

          v124 = *(v0 + 216);
          v125 = *(v0 + 144);
          v126 = *(v0 + 152);
          v127 = *(v0 + 136);
          v128 = sub_1BE4C5338(v123, v122, (v0 + 88));

          *(v108 + 24) = v128;
          _os_log_impl(&dword_1BE4B8000, v99, v135, "Fetch %{public}s: Retrieved rate limit for category %{public}s, value: %{public}s", v108, 0x20u);
          swift_arrayDestroy();
          sub_1BE4C75DC();
          sub_1BE4C75DC();

          (*(v125 + 8))(v126, v127);
          v85 = &qword_1EBDACC20;
          v86 = v124;
        }

        else
        {
          v113 = *(v0 + 216);
          v114 = *(v0 + 184);
          v116 = *(v0 + 144);
          v115 = *(v0 + 152);
          v117 = *(v0 + 136);

          sub_1BE4D0E58(v114, &qword_1EBDACC20, &qword_1BE5500E8);
          (*(v116 + 8))(v115, v117);
          v86 = sub_1BE4D9800();
        }

LABEL_53:
        sub_1BE4D0E58(v86, v85, &qword_1BE5500E8);
        *(v0 + 312) = v1;
        v129 = *(v0 + 280);
        *(v0 + 320) = sub_1BE54C8BC();
        v130 = *(MEMORY[0x1E69E8580] + 4);
        v131 = swift_task_alloc();
        *(v0 + 328) = v131;
        sub_1BE4BF11C(&qword_1EBDACC48, &qword_1BE550158);
        *v131 = v0;
        sub_1BE50A8E0();
        sub_1BE50AB60();

        return MEMORY[0x1EEE6D8A0]();
      }

      v87 = *(v0 + 224);
      v88 = *(v0 + 192);
      v89 = sub_1BE50A920(*(v0 + 232));
      v90(v89);
      *(*(v1 + 56) + v57) = v50;
      v91 = *(v1 + 16);
      v71 = __OFADD__(v91, 1);
      v92 = v91 + 1;
      if (!v71)
      {
        *(v1 + 16) = v92;
        goto LABEL_34;
      }

LABEL_60:
      __break(1u);
      return MEMORY[0x1EEE6D8A0]();
    }

    goto LABEL_57;
  }

  v28 = *(v0 + 312);
  v29 = *(v0 + 224);
  v30 = *(v0 + 232);
  v32 = *(v0 + 208);
  v31 = *(v0 + 216);
  v33 = *(v0 + 200);
  sub_1BE4D0E58(v15 + v26, &qword_1EBDACC50, &qword_1BE550160);
  v34 = *(v30 + 8);
  v34(v32, v29);
  sub_1BE4D9250(v31, v33, &qword_1EBDACC20, &qword_1BE5500E8);
  swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 72) = v28;
  sub_1BE52F6F0();
  sub_1BE50AAB4();
  if (__OFADD__(v37, v38))
  {
    __break(1u);
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v39 = v35;
  v40 = v36;
  sub_1BE4BF11C(&qword_1EBDACC38, &qword_1BE550128);
  if ((sub_1BE54CBAC() & 1) == 0)
  {
LABEL_12:
    v1 = *(v0 + 72);
    if (v40)
    {
      *(*(v1 + 56) + v39) = 0;
    }

    else
    {
      v66 = *(v0 + 224);
      v67 = *(v0 + 200);
      v68 = sub_1BE50A920(*(v0 + 232));
      v69(v68);
      *(*(v1 + 56) + v39) = 0;
      v70 = *(v1 + 16);
      v71 = __OFADD__(v70, 1);
      v72 = v70 + 1;
      if (v71)
      {
        __break(1u);
        goto LABEL_60;
      }

      *(v1 + 16) = v72;
    }

    v73 = *(v0 + 200);
    v74 = *(*(v0 + 168) + 48);
    v34(v73, *(v0 + 224));
    sub_1BE4D0E58(v73 + v74, &qword_1EBDACC50, &qword_1BE550160);
    if (qword_1EBDABAC8 == -1)
    {
LABEL_26:
      v75 = *(v0 + 128);
      v76 = sub_1BE54B2EC();
      sub_1BE4C52BC(v76, qword_1EBDB0C98);
      sub_1BE50A968();

      v77 = sub_1BE54B2BC();
      v78 = sub_1BE54C97C();

      v79 = os_log_type_enabled(v77, v78);
      v80 = *(v0 + 216);
      if (v79)
      {
        v82 = *(v0 + 120);
        v81 = *(v0 + 128);
        v83 = sub_1BE50AB7C();
        v84 = sub_1BE50AAC4();
        v143 = v84;
        *v83 = 136446210;
        *(v83 + 4) = sub_1BE4C5338(v82, v81, &v143);
        _os_log_impl(&dword_1BE4B8000, v77, v78, "Fetch %{public}s: value is nil, assigning state .advanced", v83, 0xCu);
        sub_1BE4C58A8(v84);
        sub_1BE4C75DC();
        sub_1BE4C75DC();
      }

      v85 = &qword_1EBDACC20;
      v86 = v80;
      goto LABEL_53;
    }

LABEL_58:
    sub_1BE50A7E0();
    goto LABEL_26;
  }

  v41 = *(v0 + 200);
  v42 = *(v0 + 72);
  v43 = sub_1BE52F6F0();
  if ((v40 & 1) == (v44 & 1))
  {
    v39 = v43;
    goto LABEL_12;
  }

LABEL_20:
  v63 = *(v0 + 224);
  sub_1BE50AB60();

  return sub_1BE54CCFC();
}

uint64_t sub_1BE50676C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1BE506790, 0, 0);
}

uint64_t sub_1BE506790()
{
  sub_1BE4E4418();
  v1 = v0[2];
  v2 = v0[3];
  v3 = *(sub_1BE4BF11C(&qword_1EBDACC20, &qword_1BE5500E8) + 48);
  v4 = sub_1BE54B40C();
  sub_1BE4C7470(v4);
  v6 = *(v5 + 16);
  v7 = sub_1BE4D9800();
  v8(v7);
  swift_task_alloc();
  sub_1BE50A8BC();
  v0[5] = v9;
  *v9 = v10;
  v9[1] = sub_1BE506874;
  v11 = v0[3];
  v12 = v0[4];

  return sub_1BE5075C4();
}

uint64_t sub_1BE506874()
{
  sub_1BE4E01D4();
  sub_1BE4E0228();
  v2 = *(v1 + 40);
  v3 = *v0;
  sub_1BE4E01C4();
  *v4 = v3;

  sub_1BE4E01E0();

  return v5();
}

uint64_t sub_1BE506954()
{
  v1 = v0;
  v2 = sub_1BE4BF11C(&qword_1EBDAC3A8, &qword_1BE550DA0);
  sub_1BE4C7570(v2);
  v4 = *(v3 + 64);
  sub_1BE4FFC80();
  MEMORY[0x1EEE9AC00](v5);
  sub_1BE50A994();
  v6 = sub_1BE54C91C();
  v7 = sub_1BE50A848();
  sub_1BE4C63F8(v7, v8, v9, v6);
  sub_1BE54C8CC();
  sub_1BE50A968();

  v10 = sub_1BE54C8BC();
  sub_1BE50AADC();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v0;
  sub_1BE50A89C();

  v13 = sub_1BE50A848();
  sub_1BE4C63F8(v13, v14, v15, v6);

  v16 = sub_1BE54C8BC();
  sub_1BE50AADC();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = v12;
  v17[4] = v1;
  sub_1BE50A89C();
}

uint64_t sub_1BE506A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = *(*(type metadata accessor for SettingsViewModel.AccountSignInStatus(0) - 8) + 64) + 15;
  v4[3] = swift_task_alloc();
  v6 = sub_1BE54B3DC();
  v4[4] = v6;
  v7 = *(v6 - 8);
  v4[5] = v7;
  v8 = *(v7 + 64) + 15;
  v4[6] = swift_task_alloc();
  v4[7] = sub_1BE54C8CC();
  v4[8] = sub_1BE54C8BC();
  v10 = sub_1BE54C87C();
  v4[9] = v10;
  v4[10] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1BE506BA8, v10, v9);
}

uint64_t sub_1BE506BA8()
{
  sub_1BE4E01D4();
  v1 = v0[2];
  v0[11] = sub_1BE502848();
  v2 = swift_task_alloc();
  v0[12] = v2;
  *v2 = v0;
  v2[1] = sub_1BE506C40;

  return sub_1BE51A0E4();
}

uint64_t sub_1BE506C40()
{
  sub_1BE4E4418();
  sub_1BE50AB30();
  v2 = v0[12];
  v3 = v0[11];
  v4 = *v1;
  sub_1BE4E01C4();
  *v5 = v4;

  sub_1BE50AB3C();
  v7 = *(v6 + 80);
  v8 = v0[9];

  return MEMORY[0x1EEE6DFA0](sub_1BE506D70, v8, v7);
}

uint64_t sub_1BE506D70()
{
  sub_1BE4E021C();
  v2 = v0[2];
  v1 = v0[3];
  sub_1BE50149C();
  v3 = sub_1BE4BF11C(&qword_1EBDAC548, &qword_1BE54F7C8);
  if (sub_1BE4C63BC(v1, 4, v3))
  {
    v4 = v0[3];
    sub_1BE50A7C8();
    sub_1BE508F98();
  }

  else
  {
    v5 = v0[5];
    v6 = v0[2];
    (*(v5 + 32))(v0[6], v0[3], v0[4]);
    sub_1BE502160();
    v7 = sub_1BE53455C();
    sub_1BE5206E4(v7 & 1);

    v8 = *(v5 + 8);
    v9 = sub_1BE4E0628();
    v10(v9);
  }

  v11 = v0[2];
  v0[13] = sub_1BE502160();
  v12 = swift_task_alloc();
  v0[14] = v12;
  *v12 = v0;
  v12[1] = sub_1BE506EBC;

  return sub_1BE5207AC();
}

uint64_t sub_1BE506EBC()
{
  sub_1BE4E01D4();
  sub_1BE4E0228();
  v2 = *(v1 + 112);
  v3 = *(v1 + 104);
  v4 = *v0;
  sub_1BE4E01C4();
  *v5 = v4;
  *(v7 + 128) = v6;

  v8 = sub_1BE50AAA4();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1BE506FC4()
{
  sub_1BE4E01D4();
  v1 = *(v0 + 56);
  *(v0 + 120) = sub_1BE54C8BC();
  sub_1BE50A968();
  sub_1BE54C87C();
  v2 = sub_1BE50AA94();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1BE507040()
{
  sub_1BE4E4418();
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  v3 = *(v0 + 16);

  sub_1BE502484((v2 & 0xFE) != 2);
  sub_1BE5021DC(v2 == 2);
  sub_1BE503EB0();
  v4 = *(v0 + 72);
  v5 = *(v0 + 80);

  return MEMORY[0x1EEE6DFA0](sub_1BE5070D4, v4, v5);
}

uint64_t sub_1BE5070D4()
{
  sub_1BE4E01D4();
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[3];

  sub_1BE4E01E0();

  return v4();
}

uint64_t sub_1BE507144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[17] = a4;
  v5 = *(*(sub_1BE4BF11C(&qword_1EBDACC78, &qword_1BE550438) - 8) + 64) + 15;
  v4[18] = swift_task_alloc();
  v6 = *(*(sub_1BE4BF11C(&qword_1EBDACB98, &qword_1BE54FE48) - 8) + 64) + 15;
  v4[19] = swift_task_alloc();
  sub_1BE54C8CC();
  v4[20] = sub_1BE54C8BC();
  v8 = sub_1BE54C87C();
  v4[21] = v8;
  v4[22] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1BE50724C, v8, v7);
}

uint64_t sub_1BE50724C()
{
  sub_1BE4E01D4();
  v1 = *(v0 + 136);
  sub_1BE5010B4(v0 + 56);
  if (*(v0 + 80))
  {
    sub_1BE4BF094((v0 + 56), v0 + 16);
    sub_1BE50A5B8(v0 + 16, v0 + 96);
    v2 = type metadata accessor for ExternalAIAuthenticatorHelper();
    sub_1BE4FFCE4(v2);
    *(v0 + 184) = sub_1BE534D4C((v0 + 96));
    swift_task_alloc();
    sub_1BE50A8BC();
    *(v0 + 192) = v3;
    *v3 = v4;
    v3[1] = sub_1BE507380;
    v5 = *(v0 + 144);

    return sub_1BE534718();
  }

  else
  {
    v7 = *(v0 + 160);

    sub_1BE4D0E58(v0 + 56, &qword_1EBDABAF8, &qword_1BE54DC20);
    v9 = *(v0 + 144);
    v8 = *(v0 + 152);

    sub_1BE4E01E0();

    return v10();
  }
}

uint64_t sub_1BE507380()
{
  sub_1BE4E4418();
  sub_1BE50AB30();
  v2 = v0[24];
  v3 = v0[23];
  v4 = *v1;
  sub_1BE4E01C4();
  *v5 = v4;

  sub_1BE50AB3C();
  v7 = *(v6 + 176);
  v8 = v0[21];

  return MEMORY[0x1EEE6DFA0](sub_1BE5074B0, v8, v7);
}

uint64_t sub_1BE5074B0()
{
  sub_1BE4E4418();
  v1 = v0[20];
  v2 = v0[18];

  v3 = sub_1BE54B52C();
  if (sub_1BE4C63BC(v2, 1, v3) == 1)
  {
    sub_1BE4D0E58(v0[18], &qword_1EBDACC78, &qword_1BE550438);
    sub_1BE54B50C();
    sub_1BE50AA28();
    sub_1BE50A890();
    sub_1BE4C63F8(v4, v5, v6, v7);
  }

  else
  {
    v8 = v0[19];
    v9 = v0[18];
    sub_1BE54B51C();
    sub_1BE50A884(v3);
    v11 = *(v10 + 8);
    v12 = sub_1BE4FFBD8();
    v13(v12);
  }

  v14 = v0[17];
  sub_1BE5026E0(v0[19]);
  sub_1BE4C58A8(v0 + 2);
  v16 = v0[18];
  v15 = v0[19];

  sub_1BE4E01E0();

  return v17();
}

uint64_t sub_1BE5075C4()
{
  sub_1BE4E01D4();
  v1[18] = v2;
  v1[19] = v0;
  v1[17] = v3;
  v4 = sub_1BE54B40C();
  v1[20] = v4;
  v5 = *(v4 - 8);
  v1[21] = v5;
  v6 = *(v5 + 64) + 15;
  v1[22] = swift_task_alloc();
  v7 = sub_1BE4BF11C(&qword_1EBDAC5A8, &qword_1BE54F818);
  sub_1BE4C7570(v7);
  v9 = *(v8 + 64) + 15;
  v1[23] = swift_task_alloc();
  v10 = sub_1BE50AAA4();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1BE5076B0()
{
  sub_1BE4E01D4();
  sub_1BE54C8CC();
  *(v0 + 192) = sub_1BE54C8BC();
  sub_1BE50A968();
  sub_1BE54C87C();
  v1 = sub_1BE50AA94();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1BE507734()
{
  sub_1BE4E01D4();
  v1 = *(v0 + 192);
  v2 = *(v0 + 152);

  sub_1BE5010B4(v0 + 56);
  v3 = sub_1BE50AAA4();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BE50779C()
{
  sub_1BE4E01D4();
  if (*(v0 + 80))
  {
    v1 = *(v0 + 184);
    sub_1BE4BF094((v0 + 56), v0 + 16);
    sub_1BE50A5B8(v0 + 16, v0 + 96);
    v2 = type metadata accessor for ExternalAIAuthenticatorHelper();
    sub_1BE4FFCE4(v2);
    sub_1BE534D4C((v0 + 96));
    sub_1BE533EC4();

    v3 = sub_1BE54B4FC();
    *(v0 + 200) = v3;
    sub_1BE50AAE8(v1, 1, v3);
    if (!v4)
    {
      v16 = *(MEMORY[0x1E698AA90] + 4);
      swift_task_alloc();
      sub_1BE50A8BC();
      *(v0 + 208) = v17;
      *v17 = v18;
      v17[1] = sub_1BE507948;
      v19 = *(v0 + 184);
      v20 = *(v0 + 136);
      v21 = *(v0 + 144);

      return MEMORY[0x1EEDEB758](v20, v21);
    }

    v5 = *(v0 + 184);
    v6 = *(v0 + 136);
    sub_1BE4C58A8((v0 + 16));
    sub_1BE4D0E58(v5, &qword_1EBDAC5A8, &qword_1BE54F818);
    sub_1BE54B43C();
  }

  else
  {
    v7 = *(v0 + 136);
    sub_1BE4D0E58(v0 + 56, &qword_1EBDABAF8, &qword_1BE54DC20);
    sub_1BE54B43C();
    sub_1BE50AA28();
  }

  sub_1BE50A890();
  sub_1BE4C63F8(v8, v9, v10, v11);
  v13 = *(v0 + 176);
  v12 = *(v0 + 184);

  sub_1BE4E01E0();

  return v14();
}

uint64_t sub_1BE507948()
{
  sub_1BE4E01D4();
  sub_1BE4E0228();
  v3 = v2;
  v4 = v2[26];
  v5 = *v1;
  sub_1BE4E01C4();
  *v6 = v5;
  v3[27] = v0;

  if (v0)
  {
    v7 = sub_1BE507AE0;
  }

  else
  {
    v8 = v3[23];
    sub_1BE50A884(v3[25]);
    (*(v9 + 8))();
    v7 = sub_1BE507A78;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1BE507A78()
{
  sub_1BE4E01D4();
  sub_1BE4C58A8(v0 + 2);
  v2 = v0[22];
  v1 = v0[23];

  sub_1BE4E01E0();

  return v3();
}

uint64_t sub_1BE507AE0()
{
  v1 = v0[25];
  v2 = v0[23];
  sub_1BE4C58A8(v0 + 2);
  sub_1BE50A884(v1);
  v4 = *(v3 + 8);
  v5 = sub_1BE4D9800();
  v6(v5);
  if (qword_1EBDABAC8 != -1)
  {
    sub_1BE50A7E0();
  }

  v7 = v0[27];
  v9 = v0[21];
  v8 = v0[22];
  v10 = v0[20];
  v11 = v0[18];
  v12 = sub_1BE54B2EC();
  sub_1BE4C52BC(v12, qword_1EBDB0C98);
  (*(v9 + 16))(v8, v11, v10);
  v13 = v7;
  v14 = sub_1BE54B2BC();
  v15 = sub_1BE54C98C();

  v16 = os_log_type_enabled(v14, v15);
  v17 = v0[27];
  v19 = v0[21];
  v18 = v0[22];
  v20 = v0[20];
  if (v16)
  {
    v21 = sub_1BE50AB18();
    v22 = swift_slowAlloc();
    *v21 = 134349314;
    v23 = MEMORY[0x1BFB46900]();
    (*(v19 + 8))(v18, v20);
    *(v21 + 4) = v23;
    *(v21 + 12) = 2114;
    v24 = v17;
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v21 + 14) = v25;
    *v22 = v25;
    _os_log_impl(&dword_1BE4B8000, v14, v15, "retrieveLatestRateLimitBudget for category %{public}ld failed with error: %{public}@", v21, 0x16u);
    sub_1BE4D0E58(v22, &qword_1EBDAC2F0, &qword_1BE54F880);
    sub_1BE4C75DC();
    sub_1BE4C75DC();
  }

  else
  {
    (*(v19 + 8))(v0[22], v0[20]);
  }

  v26 = v0[17];
  sub_1BE54B43C();
  sub_1BE50AA28();
  sub_1BE50A890();
  sub_1BE4C63F8(v27, v28, v29, v30);
  v32 = v0[22];
  v31 = v0[23];

  sub_1BE4E01E0();

  return v33();
}

uint64_t sub_1BE507D40()
{
  sub_1BE50A7B0();
  sub_1BE508AD4(v0, v1);
  return sub_1BE54AFBC();
}

uint64_t sub_1BE507DE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE54AE9C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE4BF11C(&qword_1EBDACBA0, &qword_1BE54FE50);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v23 - v11;
  v13 = sub_1BE4BF11C(&qword_1EBDACC58, &qword_1BE5501A0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v23 - v16;
  v18 = *(v15 + 56);
  sub_1BE4D9250(a1, &v23 - v16, &qword_1EBDACBA0, &qword_1BE54FE50);
  sub_1BE4D9250(a2, &v17[v18], &qword_1EBDACBA0, &qword_1BE54FE50);
  if (sub_1BE4C63BC(v17, 1, v4) != 1)
  {
    sub_1BE4D9250(v17, v12, &qword_1EBDACBA0, &qword_1BE54FE50);
    if (sub_1BE4C63BC(&v17[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      sub_1BE508AD4(&qword_1EBDACC60, MEMORY[0x1E6969530]);
      v20 = sub_1BE54C64C();
      v21 = *(v5 + 8);
      v21(v8, v4);
      v21(v12, v4);
      sub_1BE4D0E58(v17, &qword_1EBDACBA0, &qword_1BE54FE50);
      v19 = v20 ^ 1;
      return v19 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_6;
  }

  if (sub_1BE4C63BC(&v17[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_1BE4D0E58(v17, &qword_1EBDACC58, &qword_1BE5501A0);
    v19 = 1;
    return v19 & 1;
  }

  sub_1BE4D0E58(v17, &qword_1EBDACBA0, &qword_1BE54FE50);
  v19 = 0;
  return v19 & 1;
}

BOOL sub_1BE5080E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (a2 | a4) == 0;
  if (a2 && a4)
  {
    if (a1 == a3 && a2 == a4)
    {
      v5 = 1;
    }

    else
    {
      v5 = sub_1BE54CCDC();
    }
  }

  return (v5 & 1) == 0;
}

uint64_t sub_1BE50813C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE54B50C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE4BF11C(&qword_1EBDACB98, &qword_1BE54FE48);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v23 - v11;
  v13 = sub_1BE4BF11C(&qword_1EBDACC68, &qword_1BE550220);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v23 - v16;
  v18 = *(v15 + 56);
  sub_1BE4D9250(a1, &v23 - v16, &qword_1EBDACB98, &qword_1BE54FE48);
  sub_1BE4D9250(a2, &v17[v18], &qword_1EBDACB98, &qword_1BE54FE48);
  if (sub_1BE4C63BC(v17, 1, v4) != 1)
  {
    sub_1BE4D9250(v17, v12, &qword_1EBDACB98, &qword_1BE54FE48);
    if (sub_1BE4C63BC(&v17[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      sub_1BE508AD4(&qword_1EBDACC70, MEMORY[0x1E698AAA8]);
      v20 = sub_1BE54C64C();
      v21 = *(v5 + 8);
      v21(v8, v4);
      v21(v12, v4);
      sub_1BE4D0E58(v17, &qword_1EBDACB98, &qword_1BE54FE48);
      v19 = v20 ^ 1;
      return v19 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_6;
  }

  if (sub_1BE4C63BC(&v17[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_1BE4D0E58(v17, &qword_1EBDACC68, &qword_1BE550220);
    v19 = 1;
    return v19 & 1;
  }

  sub_1BE4D0E58(v17, &qword_1EBDACB98, &qword_1BE54FE48);
  v19 = 0;
  return v19 & 1;
}

uint64_t SettingsViewModel.deinit()
{
  sub_1BE4D0E58(v0 + 16, &qword_1EBDABAF8, &qword_1BE54DC20);
  sub_1BE50A7C8();
  sub_1BE508F98();
  sub_1BE50A950();
  sub_1BE508F98();
  v1 = *(v0 + OBJC_IVAR____TtC26GenerativePartnerServiceUI17SettingsViewModel__subscriptionInfo);

  v2 = *(v0 + OBJC_IVAR____TtC26GenerativePartnerServiceUI17SettingsViewModel__adamID + 8);

  v3 = *(v0 + OBJC_IVAR____TtC26GenerativePartnerServiceUI17SettingsViewModel_rateLimitCategories);

  v4 = *(v0 + OBJC_IVAR____TtC26GenerativePartnerServiceUI17SettingsViewModel__latestRateLimitStates);

  sub_1BE4D0E58(v0 + OBJC_IVAR____TtC26GenerativePartnerServiceUI17SettingsViewModel__userAccountStatus, &qword_1EBDACB98, &qword_1BE54FE48);
  v5 = *(v0 + OBJC_IVAR____TtC26GenerativePartnerServiceUI17SettingsViewModel__billingInfo);

  sub_1BE4D0E58(v0 + OBJC_IVAR____TtC26GenerativePartnerServiceUI17SettingsViewModel__lastRateLimitResponseDate, &qword_1EBDACBA0, &qword_1BE54FE50);
  sub_1BE4D0E58(v0 + OBJC_IVAR____TtC26GenerativePartnerServiceUI17SettingsViewModel__pendingRateLimitFetchStart, &qword_1EBDACBA0, &qword_1BE54FE50);

  v6 = OBJC_IVAR____TtC26GenerativePartnerServiceUI17SettingsViewModel___observationRegistrar;
  v7 = sub_1BE54B00C();
  sub_1BE4C7470(v7);
  (*(v8 + 8))(v0 + v6);
  return v0;
}

uint64_t SettingsViewModel.__deallocating_deinit()
{
  SettingsViewModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void sub_1BE508600(char a1)
{
  v2 = v1;
  v4 = sub_1BE4BF11C(&qword_1EBDAC3A8, &qword_1BE550DA0);
  sub_1BE4C7570(v4);
  v6 = *(v5 + 64);
  sub_1BE4FFC80();
  MEMORY[0x1EEE9AC00](v7);
  sub_1BE50A994();
  if (a1)
  {
    sub_1BE54C91C();
    v8 = sub_1BE50A848();
    sub_1BE4C63F8(v8, v9, v10, v11);
    sub_1BE54C8CC();
    sub_1BE50A968();

    v12 = sub_1BE54C8BC();
    sub_1BE50AADC();
    v13 = swift_allocObject();
    v14 = MEMORY[0x1E69E85E0];
    v13[2] = v12;
    v13[3] = v14;
    v13[4] = v2;
    sub_1BE50A89C();
  }
}

uint64_t sub_1BE5086DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_1BE54C8CC();
  *(v4 + 24) = sub_1BE54C8BC();
  v6 = sub_1BE54C87C();

  return MEMORY[0x1EEE6DFA0](sub_1BE508774, v6, v5);
}

uint64_t sub_1BE508774()
{
  sub_1BE4E01D4();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);

  sub_1BE502848();
  sub_1BE51AAB0();

  sub_1BE4E01E0();

  return v3();
}

uint64_t SettingsViewModel.IdentifiableDeepLinkParams.id.getter()
{
  v0 = sub_1BE54AEDC();
  sub_1BE4C7470(v0);
  v2 = *(v1 + 16);
  v3 = sub_1BE4D9800();

  return v4(v3);
}

uint64_t SettingsViewModel.IdentifiableDeepLinkParams.id.setter()
{
  sub_1BE4D97A4();
  v2 = sub_1BE54AEDC();
  v3 = sub_1BE4C7470(v2);
  v5 = *(v4 + 40);

  return v5(v1, v0, v3);
}

uint64_t SettingsViewModel.IdentifiableDeepLinkParams.params.getter()
{
  v1 = *(v0 + *(type metadata accessor for SettingsViewModel.IdentifiableDeepLinkParams(0) + 20));
}

uint64_t SettingsViewModel.IdentifiableDeepLinkParams.params.setter()
{
  v2 = sub_1BE4D97A4();
  v3 = *(type metadata accessor for SettingsViewModel.IdentifiableDeepLinkParams(v2) + 20);
  v4 = *(v1 + v3);

  *(v1 + v3) = v0;
  return result;
}

uint64_t (*SettingsViewModel.IdentifiableDeepLinkParams.params.modify())()
{
  v0 = sub_1BE4D97A4();
  v1 = *(type metadata accessor for SettingsViewModel.IdentifiableDeepLinkParams(v0) + 20);
  return nullsub_1;
}

void *sub_1BE508994(size_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t sub_1BE5089E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_1BE4C7470(v4);
  v6 = *(v5 + 32);
  v7 = sub_1BE4D9800();
  v8(v7);
  return a2;
}

id sub_1BE508A44()
{
  v0 = sub_1BE54C6DC();

  sub_1BE4FFBD8();
  v1 = sub_1BE54C6DC();

  v2 = [swift_getObjCClassFromMetadata() bagForProfile:v0 profileVersion:v1];

  return v2;
}

uint64_t sub_1BE508AD4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1BE508B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = &unk_1F3CCCBE8;
  v23 = &off_1F3CCCDA8;
  v9 = swift_allocObject();
  v21[0] = v9;
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = a4;
  v9[5] = a5;
  v10 = sub_1BE4C52F4(v21, &unk_1F3CCCBE8);
  v12 = *v10;
  v11 = v10[1];
  v13 = v10[2];
  v14 = v10[3];
  sub_1BE5174E4();
  sub_1BE50A6A4();
  v15 = sub_1BE4C52F4(v21, v22);
  v16 = *v15;
  v17 = v15[1];
  v18 = sub_1BE4C52F4(v21, v22);
  v19 = v18[2];
  v20 = v18[3];

  sub_1BE50AB48();
  sub_1BE508A44();
  sub_1BE4C58A8(v21);
  sub_1BE4D9800();
  sub_1BE50AB54();
}

uint64_t sub_1BE508C24(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1BE4BF11C(&qword_1EBDAC3A8, &qword_1BE550DA0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v27[-1] - v14;
  v27[3] = &type metadata for AppStoreDaemonDataSource;
  v27[4] = &off_1F3CCD210;
  v16 = swift_allocObject();
  v27[0] = v16;
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = a4;
  v16[5] = a5;
  *(a6 + 16) = 5;
  v17 = OBJC_IVAR____TtC26GenerativePartnerServiceUI16SubscriptionInfo__storeURL;
  v18 = sub_1BE54AE3C();
  sub_1BE4C63F8(a6 + v17, 1, 1, v18);
  v19 = (a6 + OBJC_IVAR____TtC26GenerativePartnerServiceUI16SubscriptionInfo__upgradeCTAText);
  *v19 = 0;
  v19[1] = 0;
  *(a6 + OBJC_IVAR____TtC26GenerativePartnerServiceUI16SubscriptionInfo__queuedActions) = MEMORY[0x1E69E7CD0];
  v20 = OBJC_IVAR____TtC26GenerativePartnerServiceUI16SubscriptionInfo__accountReportsPaidPlan;
  *(a6 + OBJC_IVAR____TtC26GenerativePartnerServiceUI16SubscriptionInfo__accountReportsPaidPlan) = 2;
  *(a6 + OBJC_IVAR____TtC26GenerativePartnerServiceUI16SubscriptionInfo__subscriptionDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_1BE54AFFC();
  *(a6 + v20) = a1;
  sub_1BE50A5B8(v27, a6 + OBJC_IVAR____TtC26GenerativePartnerServiceUI16SubscriptionInfo__appStoreDataSource);
  v21 = sub_1BE54C91C();
  sub_1BE4C63F8(v15, 1, 1, v21);
  sub_1BE54C8CC();

  v22 = sub_1BE54C8BC();
  v23 = swift_allocObject();
  v24 = MEMORY[0x1E69E85E0];
  v23[2] = v22;
  v23[3] = v24;
  v23[4] = a6;
  sub_1BE50BA3C();

  sub_1BE4C58A8(v27);
  return a6;
}

uint64_t sub_1BE508E2C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23[3] = &type metadata for AppStoreDaemonDataSource;
  v23[4] = &off_1F3CCD210;
  v10 = swift_allocObject();
  v23[0] = v10;
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  v11 = type metadata accessor for SubscriptionInfo();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  v15 = sub_1BE50A568(v23, &type metadata for AppStoreDaemonDataSource);
  v16 = *(off_1F3CCD160 + 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = (&v23[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18);
  v20 = sub_1BE508C24(a1, *v18, v18[1], v18[2], v18[3], v14);
  sub_1BE4C58A8(v23);
  return v20;
}

uint64_t sub_1BE508F80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1BE508F98()
{
  v1 = sub_1BE4D97A4();
  v3 = v2(v1);
  sub_1BE4C7470(v3);
  (*(v4 + 8))(v0);
  return v0;
}

void sub_1BE50903C()
{
  v0 = type metadata accessor for SettingsViewModel.AccountSignInStatus(319);
  if (v1 <= 0x3F)
  {
    v10 = *(v0 - 8) + 64;
    v2 = type metadata accessor for SettingsViewModel.IdentifiableDeepLinkParams(319);
    if (v3 <= 0x3F)
    {
      v11 = *(v2 - 8) + 64;
      sub_1BE5092FC(319, &qword_1EBDACBC0, MEMORY[0x1E698AAA8]);
      if (v5 <= 0x3F)
      {
        v12 = *(v4 - 8) + 64;
        sub_1BE5092FC(319, &qword_1EBDACBC8, MEMORY[0x1E6969530]);
        if (v7 <= 0x3F)
        {
          v13 = *(v6 - 8) + 64;
          v8 = sub_1BE54B00C();
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

void sub_1BE5092FC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BE54C9EC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1BE509378()
{
  sub_1BE54AEDC();
  if (v0 <= 0x3F)
  {
    sub_1BE5093FC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BE5093FC()
{
  if (!qword_1EBDACBE0)
  {
    sub_1BE4C5948(&qword_1EBDACBE8, &qword_1BE54FFB0);
    v0 = sub_1BE54C9EC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBDACBE0);
    }
  }
}

uint64_t getEnumTagSinglePayload for RateLimitState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for RateLimitState(_BYTE *result, unsigned int a2, unsigned int a3)
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