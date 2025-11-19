uint64_t _s14HealthPlatform8FeedItemC0A9RecordsUIE016predicateForLabsaE10Onboarding9profileIdSo11NSPredicateCSo19HKProfileIdentifierC_tFZ_0(void *a1)
{
  v2 = sub_1D138D5EC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1E69E6158];
  sub_1D1169488(0, &qword_1EE06B560, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D139E700;
  v23 = 0x656C69666F72505BLL;
  v24 = 0xE90000000000003ALL;
  v8 = a1;
  v9 = [v8 identifier];
  sub_1D138D5CC();

  v10 = sub_1D138D59C();
  v12 = v11;
  (*(v3 + 8))(v5, v2);
  MEMORY[0x1D3885C10](v10, v12);

  MEMORY[0x1D3885C10](93, 0xE100000000000000);

  MEMORY[0x1D3885C10](0xD000000000000025, 0x80000001D13BF2D0);
  v13 = v24;
  *(v7 + 32) = v23;
  *(v7 + 40) = v13;
  v23 = v7;
  sub_1D1169488(0, &qword_1EE06B0F0, v6, MEMORY[0x1E69E62F8]);
  sub_1D10F73A8();
  v14 = sub_1D139008C();
  v16 = v15;

  sub_1D1166D9C();
  sub_1D1169424(0, &qword_1EE06B080, sub_1D10898CC, MEMORY[0x1E69E6F90]);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1D139E710;
  sub_1D138DB9C();
  v18 = sub_1D138DB7C();
  v20 = v19;
  *(v17 + 56) = v6;
  v21 = sub_1D1089930();
  *(v17 + 32) = v18;
  *(v17 + 40) = v20;
  *(v17 + 96) = v6;
  *(v17 + 104) = v21;
  *(v17 + 64) = v21;
  *(v17 + 72) = v14;
  *(v17 + 80) = v16;
  return sub_1D139076C();
}

id _s14HealthPlatform8FeedItemC0A9RecordsUIE022predicateForNavigationC5Items12categoryKind13sourceProfileSo11NSPredicateCAD15DisplayCategoryV0L0OSg_AA06SourceN0OtFZ_0(unsigned __int8 *a1)
{
  v1 = *a1;
  sub_1D1166D9C();
  sub_1D1169424(0, &qword_1EE06B080, sub_1D10898CC, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D139E710;
  sub_1D138DB9C();
  v3 = sub_1D138DB7C();
  v5 = v4;
  v6 = MEMORY[0x1E69E6158];
  *(v2 + 56) = MEMORY[0x1E69E6158];
  v7 = sub_1D1089930();
  *(v2 + 32) = v3;
  *(v2 + 40) = v5;
  *(v2 + 96) = v6;
  *(v2 + 104) = v7;
  *(v2 + 64) = v7;
  *(v2 + 72) = 0xD000000000000021;
  *(v2 + 80) = 0x80000001D13BDE40;
  v8 = sub_1D139076C();
  v9 = 0;
  if (v1 != 11)
  {
    sub_1D13911EC();

    v10 = sub_1D13915CC();
    MEMORY[0x1D3885C10](v10);

    MEMORY[0x1D3885C10](93, 0xE100000000000000);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1D139E710;
    v12 = sub_1D138DB7C();
    v13 = MEMORY[0x1E69E6158];
    *(v11 + 56) = MEMORY[0x1E69E6158];
    *(v11 + 64) = v7;
    *(v11 + 32) = v12;
    *(v11 + 40) = v14;
    *(v11 + 96) = v13;
    *(v11 + 104) = v7;
    *(v11 + 72) = 0xD000000000000014;
    *(v11 + 80) = 0x80000001D13BDE90;
    v9 = sub_1D139076C();
  }

  v24[4] = v8;
  v24[5] = v9;
  v23 = MEMORY[0x1E69E7CC0];
  v15 = v9;
  v16 = v8;
  for (i = 0; i != 2; ++i)
  {
    v18 = v24[i + 4];
    if (v18)
    {
      v19 = v18;
      MEMORY[0x1D3885D90]();
      if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D13904BC();
      }

      sub_1D13904FC();
    }
  }

  sub_1D1169424(0, &qword_1EE06B788, sub_1D1166D9C, MEMORY[0x1E69E6720]);
  swift_arrayDestroy();
  v20 = sub_1D139044C();

  v21 = [objc_opt_self() andPredicateWithSubpredicates_];

  return v21;
}

id _s14HealthPlatform8FeedItemC0A9RecordsUIE037predicateForRemovedCategoryNavigationC5Items12categoryKind13sourceProfileSo11NSPredicateCAD07DisplayJ0V0N0OSg_AA06SourceP0OtFZ_0(unsigned __int8 *a1)
{
  v1 = *a1;
  sub_1D1166D9C();
  sub_1D1169424(0, &qword_1EE06B080, sub_1D10898CC, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D139E710;
  sub_1D138DB9C();
  v3 = sub_1D138DB7C();
  v5 = v4;
  v6 = MEMORY[0x1E69E6158];
  *(v2 + 56) = MEMORY[0x1E69E6158];
  v7 = sub_1D1089930();
  *(v2 + 32) = v3;
  *(v2 + 40) = v5;
  *(v2 + 96) = v6;
  *(v2 + 104) = v7;
  *(v2 + 64) = v7;
  *(v2 + 72) = 0xD000000000000030;
  *(v2 + 80) = 0x80000001D13BF220;
  v8 = sub_1D139076C();
  v9 = 0;
  if (v1 != 11)
  {
    sub_1D13911EC();

    v10 = sub_1D13915CC();
    MEMORY[0x1D3885C10](v10);

    MEMORY[0x1D3885C10](93, 0xE100000000000000);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1D139E710;
    v12 = sub_1D138DB7C();
    v13 = MEMORY[0x1E69E6158];
    *(v11 + 56) = MEMORY[0x1E69E6158];
    *(v11 + 64) = v7;
    *(v11 + 32) = v12;
    *(v11 + 40) = v14;
    *(v11 + 96) = v13;
    *(v11 + 104) = v7;
    *(v11 + 72) = 0xD00000000000001BLL;
    *(v11 + 80) = 0x80000001D13BF260;
    v9 = sub_1D139076C();
  }

  v24[4] = v8;
  v24[5] = v9;
  v23 = MEMORY[0x1E69E7CC0];
  v15 = v9;
  v16 = v8;
  for (i = 0; i != 2; ++i)
  {
    v18 = v24[i + 4];
    if (v18)
    {
      v19 = v18;
      MEMORY[0x1D3885D90]();
      if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D13904BC();
      }

      sub_1D13904FC();
    }
  }

  sub_1D1169424(0, &qword_1EE06B788, sub_1D1166D9C, MEMORY[0x1E69E6720]);
  swift_arrayDestroy();
  v20 = sub_1D139044C();

  v21 = [objc_opt_self() andPredicateWithSubpredicates_];

  return v21;
}

uint64_t _s14HealthPlatform8FeedItemC0A9RecordsUIE046predicateForUserDomainConceptEducationAbstractC5Items12categoryKind13sourceProfileSo11NSPredicateCAD15DisplayCategoryV0P0OSg_AA06SourceR0OtFZ_0(unsigned __int8 *a1)
{
  v1 = *a1;
  sub_1D1166D9C();
  sub_1D1169424(0, &qword_1EE06B080, sub_1D10898CC, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D139E710;
  sub_1D138DB9C();
  v3 = sub_1D138DB7C();
  v5 = v4;
  v6 = MEMORY[0x1E69E6158];
  *(v2 + 56) = MEMORY[0x1E69E6158];
  v7 = sub_1D1089930();
  *(v2 + 32) = v3;
  *(v2 + 40) = v5;
  *(v2 + 96) = v6;
  *(v2 + 104) = v7;
  *(v2 + 64) = v7;
  *(v2 + 72) = 0xD00000000000002BLL;
  *(v2 + 80) = 0x80000001D13BF1D0;
  result = sub_1D139076C();
  if (v1 != 11)
  {
    v9 = result;
    sub_1D13911EC();

    strcpy(v23, "[UDCCategory:");
    HIWORD(v23[1]) = -4864;
    v10 = sub_1D13915CC();
    MEMORY[0x1D3885C10](v10);

    MEMORY[0x1D3885C10](93, 0xE100000000000000);
    v11 = v23[0];
    v12 = v23[1];
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1D139E710;
    v14 = sub_1D138DB7C();
    v15 = MEMORY[0x1E69E6158];
    *(v13 + 56) = MEMORY[0x1E69E6158];
    *(v13 + 64) = v7;
    *(v13 + 32) = v14;
    *(v13 + 40) = v16;
    *(v13 + 96) = v15;
    *(v13 + 104) = v7;
    *(v13 + 72) = v11;
    *(v13 + 80) = v12;
    v17 = sub_1D139076C();
    sub_1D1169488(0, &qword_1EE06A4C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1D139E6E0;
    *(v18 + 32) = v9;
    *(v18 + 40) = v17;
    v19 = v9;
    v20 = v17;
    v21 = sub_1D139044C();

    v22 = [objc_opt_self() andPredicateWithSubpredicates_];

    return v22;
  }

  return result;
}

uint64_t _s14HealthPlatform8FeedItemC0A9RecordsUIE019predicateForGeneralaE10Onboarding9profileIdSo11NSPredicateCSo19HKProfileIdentifierC_tFZ_0(void *a1)
{
  v2 = sub_1D138D5EC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1E69E6158];
  sub_1D1169488(0, &qword_1EE06B560, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D139E700;
  v23 = 0x656C69666F72505BLL;
  v24 = 0xE90000000000003ALL;
  v8 = a1;
  v9 = [v8 identifier];
  sub_1D138D5CC();

  v10 = sub_1D138D59C();
  v12 = v11;
  (*(v3 + 8))(v5, v2);
  MEMORY[0x1D3885C10](v10, v12);

  MEMORY[0x1D3885C10](93, 0xE100000000000000);

  MEMORY[0x1D3885C10](0xD000000000000021, 0x80000001D13BF300);
  v13 = v24;
  *(v7 + 32) = v23;
  *(v7 + 40) = v13;
  v23 = v7;
  sub_1D1169488(0, &qword_1EE06B0F0, v6, MEMORY[0x1E69E62F8]);
  sub_1D10F73A8();
  v14 = sub_1D139008C();
  v16 = v15;

  sub_1D1166D9C();
  sub_1D1169424(0, &qword_1EE06B080, sub_1D10898CC, MEMORY[0x1E69E6F90]);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1D139E710;
  sub_1D138DB9C();
  v18 = sub_1D138DB7C();
  v20 = v19;
  *(v17 + 56) = v6;
  v21 = sub_1D1089930();
  *(v17 + 32) = v18;
  *(v17 + 40) = v20;
  *(v17 + 96) = v6;
  *(v17 + 104) = v21;
  *(v17 + 64) = v21;
  *(v17 + 72) = v14;
  *(v17 + 80) = v16;
  return sub_1D139076C();
}

id _s14HealthPlatform8FeedItemC0A9RecordsUIE015predicateForTipC5Items4uuid12categoryKind13sourceProfileSo11NSPredicateC10Foundation4UUIDVSg_AD15DisplayCategoryV0M0OSgAA06SourceO0OtFZ_0(uint64_t a1, unsigned __int8 *a2)
{
  v57 = a1;
  sub_1D1169424(0, &qword_1EC60D6B0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v51 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v51 - v6;
  v8 = sub_1D138D5EC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v52 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = *a2;
  v11 = sub_1D1166D9C();
  sub_1D1169424(0, &qword_1EE06B080, sub_1D10898CC, MEMORY[0x1E69E6F90]);
  v56 = v12;
  v13 = swift_allocObject();
  v55 = xmmword_1D139E710;
  *(v13 + 16) = xmmword_1D139E710;
  v54 = sub_1D138DB9C();
  v14 = sub_1D138DB7C();
  v16 = v15;
  v17 = MEMORY[0x1E69E6158];
  *(v13 + 56) = MEMORY[0x1E69E6158];
  v18 = sub_1D1089930();
  *(v13 + 32) = v14;
  *(v13 + 40) = v16;
  *(v13 + 96) = v17;
  *(v13 + 104) = v18;
  v53 = v18;
  *(v13 + 64) = v18;
  *(v13 + 72) = 0xD00000000000001ALL;
  *(v13 + 80) = 0x80000001D13BF2B0;
  v19 = sub_1D139076C();
  sub_1D1127E2C(v57, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1D11693B4(v7, &qword_1EC60D6B0, MEMORY[0x1E69695A8]);
    v20 = 0;
  }

  else
  {
    v57 = v11;
    v21 = v52;
    (*(v9 + 32))(v52, v7, v8);
    v22 = v51;
    (*(v9 + 16))(v51, v21, v8);
    (*(v9 + 56))(v22, 0, 1, v8);
    v23 = _s15HealthRecordsUI42UserDomainConceptFeedItemIdentifierFactoryV13makeComponent9conceptIdSSSg10Foundation4UUIDVSg_tFZ_0(v22);
    v25 = v24;
    sub_1D11693B4(v22, &qword_1EC60D6B0, MEMORY[0x1E69695A8]);
    if (v25)
    {
      v26 = swift_allocObject();
      *(v26 + 16) = v55;
      v27 = sub_1D138DB7C();
      v28 = MEMORY[0x1E69E6158];
      v29 = v53;
      *(v26 + 56) = MEMORY[0x1E69E6158];
      *(v26 + 64) = v29;
      *(v26 + 32) = v27;
      *(v26 + 40) = v30;
      *(v26 + 96) = v28;
      *(v26 + 104) = v29;
      *(v26 + 72) = v23;
      *(v26 + 80) = v25;
      v20 = sub_1D139076C();
      (*(v9 + 8))(v21, v8);
    }

    else
    {
      (*(v9 + 8))(v21, v8);
      v20 = 0;
    }
  }

  v31 = v58;
  if (v58 == 11)
  {
    v32 = 0;
  }

  else
  {
    v60[0] = 0;
    v60[1] = 0xE000000000000000;
    sub_1D13911EC();

    strcpy(v60, "[UDCCategory:");
    HIWORD(v60[1]) = -4864;
    v59 = v31;
    v33 = sub_1D13915CC();
    MEMORY[0x1D3885C10](v33);

    MEMORY[0x1D3885C10](93, 0xE100000000000000);
    v34 = v60[0];
    v35 = v60[1];
    v36 = swift_allocObject();
    *(v36 + 16) = v55;
    v37 = sub_1D138DB7C();
    v38 = MEMORY[0x1E69E6158];
    v39 = v53;
    *(v36 + 56) = MEMORY[0x1E69E6158];
    *(v36 + 64) = v39;
    *(v36 + 32) = v37;
    *(v36 + 40) = v40;
    *(v36 + 96) = v38;
    *(v36 + 104) = v39;
    *(v36 + 72) = v34;
    *(v36 + 80) = v35;
    v32 = sub_1D139076C();
  }

  v60[6] = v19;
  v60[7] = v20;
  v60[8] = v32;
  v60[0] = MEMORY[0x1E69E7CC0];
  v41 = v32;
  v42 = v19;
  result = v20;
  v44 = result;
  v45 = 0;
LABEL_10:
  if (v45 <= 3)
  {
    v46 = 3;
  }

  else
  {
    v46 = v45;
  }

  while (1)
  {
    if (v45 == 3)
    {
      sub_1D1169424(0, &qword_1EE06B788, sub_1D1166D9C, MEMORY[0x1E69E6720]);
      swift_arrayDestroy();
      v49 = sub_1D139044C();

      v50 = [objc_opt_self() andPredicateWithSubpredicates_];

      return v50;
    }

    if (v46 == v45)
    {
      break;
    }

    v47 = v60[v45++ + 6];
    if (v47)
    {
      v48 = v47;
      MEMORY[0x1D3885D90]();
      if (*((v60[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v60[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D13904BC();
      }

      result = sub_1D13904FC();
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s14HealthPlatform8FeedItemC0A9RecordsUIE035predicateForPinnedUserDomainConceptC5Items12categoryKind13sourceProfileSo11NSPredicateCAD15DisplayCategoryV0O0OSg_AA06SourceQ0OtFZ_0()
{
  sub_1D13911EC();

  strcpy(v10, "[UDCListType:");
  HIWORD(v10[1]) = -4864;
  v0 = sub_1D13915CC();
  MEMORY[0x1D3885C10](v0);

  MEMORY[0x1D3885C10](93, 0xE100000000000000);
  v1 = v10[0];
  v2 = v10[1];
  sub_1D1166D9C();
  sub_1D1169424(0, &qword_1EE06B080, sub_1D10898CC, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D139E710;
  sub_1D138DB9C();
  v4 = sub_1D138DB7C();
  v6 = v5;
  v7 = MEMORY[0x1E69E6158];
  *(v3 + 56) = MEMORY[0x1E69E6158];
  v8 = sub_1D1089930();
  *(v3 + 32) = v4;
  *(v3 + 40) = v6;
  *(v3 + 96) = v7;
  *(v3 + 104) = v8;
  *(v3 + 64) = v8;
  *(v3 + 72) = v1;
  *(v3 + 80) = v2;
  return sub_1D139076C();
}

id sub_1D11689FC(unsigned __int8 *a1)
{
  v1 = *a1;
  sub_1D1166D9C();
  sub_1D1169424(0, &qword_1EE06B080, sub_1D10898CC, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D139E710;
  sub_1D138DB9C();
  v3 = sub_1D138DB7C();
  v5 = v4;
  v6 = MEMORY[0x1E69E6158];
  *(v2 + 56) = MEMORY[0x1E69E6158];
  v7 = sub_1D1089930();
  *(v2 + 32) = v3;
  *(v2 + 40) = v5;
  *(v2 + 96) = v6;
  *(v2 + 104) = v7;
  *(v2 + 64) = v7;
  *(v2 + 72) = 0xD000000000000021;
  *(v2 + 80) = 0x80000001D13BF280;
  v8 = sub_1D139076C();
  v9 = 0;
  if (v1 != 11)
  {
    sub_1D13911EC();

    strcpy(v25, "[UDCCategory:");
    HIWORD(v25[1]) = -4864;
    v10 = sub_1D13915CC();
    MEMORY[0x1D3885C10](v10);

    MEMORY[0x1D3885C10](93, 0xE100000000000000);
    v11 = v25[0];
    v12 = v25[1];
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1D139E710;
    v14 = sub_1D138DB7C();
    v15 = MEMORY[0x1E69E6158];
    *(v13 + 56) = MEMORY[0x1E69E6158];
    *(v13 + 64) = v7;
    *(v13 + 32) = v14;
    *(v13 + 40) = v16;
    *(v13 + 96) = v15;
    *(v13 + 104) = v7;
    *(v13 + 72) = v11;
    *(v13 + 80) = v12;
    v9 = sub_1D139076C();
  }

  v25[6] = v8;
  v25[7] = v9;
  v25[0] = MEMORY[0x1E69E7CC0];
  v17 = v9;
  v18 = v8;
  for (i = 0; i != 2; ++i)
  {
    v20 = v25[i + 6];
    if (v20)
    {
      v21 = v20;
      MEMORY[0x1D3885D90]();
      if (*((v25[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D13904BC();
      }

      sub_1D13904FC();
    }
  }

  sub_1D1169424(0, &qword_1EE06B788, sub_1D1166D9C, MEMORY[0x1E69E6720]);
  swift_arrayDestroy();
  v22 = sub_1D139044C();

  v23 = [objc_opt_self() andPredicateWithSubpredicates_];

  return v23;
}

uint64_t _s14HealthPlatform8FeedItemC0A9RecordsUIE012predicateForaE10Onboarding9profileId12categoryKindSo11NSPredicateCSo19HKProfileIdentifierC_AD15DisplayCategoryV0M0OSgtFZ_0(void *a1, _BYTE *a2)
{
  if (*a2 == 2)
  {
    return _s14HealthPlatform8FeedItemC0A9RecordsUIE016predicateForLabsaE10Onboarding9profileIdSo11NSPredicateCSo19HKProfileIdentifierC_tFZ_0(a1);
  }

  else
  {
    return _s14HealthPlatform8FeedItemC0A9RecordsUIE019predicateForGeneralaE10Onboarding9profileIdSo11NSPredicateCSo19HKProfileIdentifierC_tFZ_0(a1);
  }
}

id _s14HealthPlatform8FeedItemC0A9RecordsUIE028predicateForConceptHighlightC5Items4uuid12categoryKind13sourceProfileSo11NSPredicateC10Foundation4UUIDVSg_AD15DisplayCategoryV0N0OSgAA06SourceP0OtFZ_0(uint64_t a1, unsigned __int8 *a2)
{
  v57 = a1;
  sub_1D1169424(0, &qword_1EC60D6B0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v51 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v51 - v6;
  v8 = sub_1D138D5EC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v52 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = *a2;
  v11 = sub_1D1166D9C();
  sub_1D1169424(0, &qword_1EE06B080, sub_1D10898CC, MEMORY[0x1E69E6F90]);
  v56 = v12;
  v13 = swift_allocObject();
  v55 = xmmword_1D139E710;
  *(v13 + 16) = xmmword_1D139E710;
  v54 = sub_1D138DB9C();
  v14 = sub_1D138DB7C();
  v16 = v15;
  v17 = MEMORY[0x1E69E6158];
  *(v13 + 56) = MEMORY[0x1E69E6158];
  v18 = sub_1D1089930();
  *(v13 + 32) = v14;
  *(v13 + 40) = v16;
  *(v13 + 96) = v17;
  *(v13 + 104) = v18;
  v53 = v18;
  *(v13 + 64) = v18;
  *(v13 + 72) = 0xD000000000000020;
  *(v13 + 80) = 0x80000001D13BF1A0;
  v19 = sub_1D139076C();
  sub_1D1127E2C(v57, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1D11693B4(v7, &qword_1EC60D6B0, MEMORY[0x1E69695A8]);
    v20 = 0;
  }

  else
  {
    v57 = v11;
    v21 = v52;
    (*(v9 + 32))(v52, v7, v8);
    v22 = v51;
    (*(v9 + 16))(v51, v21, v8);
    (*(v9 + 56))(v22, 0, 1, v8);
    v23 = _s15HealthRecordsUI42UserDomainConceptFeedItemIdentifierFactoryV13makeComponent9conceptIdSSSg10Foundation4UUIDVSg_tFZ_0(v22);
    v25 = v24;
    sub_1D11693B4(v22, &qword_1EC60D6B0, MEMORY[0x1E69695A8]);
    if (v25)
    {
      v26 = swift_allocObject();
      *(v26 + 16) = v55;
      v27 = sub_1D138DB7C();
      v28 = MEMORY[0x1E69E6158];
      v29 = v53;
      *(v26 + 56) = MEMORY[0x1E69E6158];
      *(v26 + 64) = v29;
      *(v26 + 32) = v27;
      *(v26 + 40) = v30;
      *(v26 + 96) = v28;
      *(v26 + 104) = v29;
      *(v26 + 72) = v23;
      *(v26 + 80) = v25;
      v20 = sub_1D139076C();
      (*(v9 + 8))(v21, v8);
    }

    else
    {
      (*(v9 + 8))(v21, v8);
      v20 = 0;
    }
  }

  v31 = v58;
  if (v58 == 11)
  {
    v32 = 0;
  }

  else
  {
    v60[0] = 0;
    v60[1] = 0xE000000000000000;
    sub_1D13911EC();

    strcpy(v60, "[UDCCategory:");
    HIWORD(v60[1]) = -4864;
    v59 = v31;
    v33 = sub_1D13915CC();
    MEMORY[0x1D3885C10](v33);

    MEMORY[0x1D3885C10](93, 0xE100000000000000);
    v34 = v60[0];
    v35 = v60[1];
    v36 = swift_allocObject();
    *(v36 + 16) = v55;
    v37 = sub_1D138DB7C();
    v38 = MEMORY[0x1E69E6158];
    v39 = v53;
    *(v36 + 56) = MEMORY[0x1E69E6158];
    *(v36 + 64) = v39;
    *(v36 + 32) = v37;
    *(v36 + 40) = v40;
    *(v36 + 96) = v38;
    *(v36 + 104) = v39;
    *(v36 + 72) = v34;
    *(v36 + 80) = v35;
    v32 = sub_1D139076C();
  }

  v60[6] = v19;
  v60[7] = v20;
  v60[8] = v32;
  v60[0] = MEMORY[0x1E69E7CC0];
  v41 = v32;
  v42 = v19;
  result = v20;
  v44 = result;
  v45 = 0;
LABEL_10:
  if (v45 <= 3)
  {
    v46 = 3;
  }

  else
  {
    v46 = v45;
  }

  while (1)
  {
    if (v45 == 3)
    {
      sub_1D1169424(0, &qword_1EE06B788, sub_1D1166D9C, MEMORY[0x1E69E6720]);
      swift_arrayDestroy();
      v49 = sub_1D139044C();

      v50 = [objc_opt_self() andPredicateWithSubpredicates_];

      return v50;
    }

    if (v46 == v45)
    {
      break;
    }

    v47 = v60[v45++ + 6];
    if (v47)
    {
      v48 = v47;
      MEMORY[0x1D3885D90]();
      if (*((v60[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v60[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D13904BC();
      }

      result = sub_1D13904FC();
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D11693B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D1169424(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1D1169424(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D1169488(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

NSDateFormatter __swiftcall NSDateFormatter.init(dateStyle:timeStyle:)(NSDateFormatterStyle dateStyle, NSDateFormatterStyle timeStyle)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v4 setDateStyle_];
  [v4 setTimeStyle_];

  v8 = v4;
  result._counter = v7;
  result._formatter = v6;
  result._attributes = v5;
  result.super.super.isa = v8;
  return result;
}

void sub_1D1169550()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  [v0 setDateStyle_];
  [v0 setTimeStyle_];

  qword_1EC60BF78 = v0;
}

id static NSDateFormatter.shortDate.getter()
{
  if (qword_1EC608BF8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC60BF78;

  return v1;
}

uint64_t sub_1D116965C()
{
  sub_1D116A770(0, &qword_1EC60F520, &qword_1EC6096A0, type metadata accessor for Key);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D139E700;
  v1 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v2 = objc_opt_self();
  v3 = *MEMORY[0x1E69DB980];
  v4 = v1;
  v5 = [v2 systemFontOfSize:14.0 weight:v3];
  *(inited + 64) = sub_1D106F934(0, &qword_1EC60E670);
  *(inited + 40) = v5;
  v6 = sub_1D109B2B4(inited);
  swift_setDeallocating();
  result = sub_1D116A934(inited + 32, &qword_1EC6096A0, type metadata accessor for Key);
  qword_1EC62FA40 = v6;
  return result;
}

uint64_t sub_1D11697E0()
{
  sub_1D116A770(0, &qword_1EC60F520, &qword_1EC6096A0, type metadata accessor for Key);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D139E710;
  v1 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v2 = qword_1EC608C18;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_1EC60BF88;
  v5 = sub_1D106F934(0, &qword_1EC60E670);
  *(inited + 40) = v4;
  v6 = *MEMORY[0x1E69DB688];
  *(inited + 64) = v5;
  *(inited + 72) = v6;
  v7 = objc_opt_self();
  v8 = v4;
  v9 = v6;
  v10 = [v7 defaultParagraphStyle];
  v11 = qword_1EC60BF88;
  [v11 lineHeight];
  v13 = v12;

  v14 = sub_1D11699CC(v13 + 3.0);
  *(inited + 104) = sub_1D106F934(0, &qword_1EC60BFD8);
  *(inited + 80) = v14;
  v15 = sub_1D109B2B4(inited);
  swift_setDeallocating();
  sub_1D116A8C8(0, &qword_1EC6096A0, type metadata accessor for Key);
  result = swift_arrayDestroy();
  qword_1EC62FA50 = v15;
  return result;
}

id sub_1D11699CC(double a1)
{
  [v1 mutableCopy];
  sub_1D139101C();
  swift_unknownObjectRelease();
  sub_1D106F934(0, &qword_1EC60BFE0);
  swift_dynamicCast();
  [v4 setMinimumLineHeight_];
  [v4 setMaximumLineHeight_];
  [v4 copy];
  sub_1D139101C();

  swift_unknownObjectRelease();
  sub_1D106F934(0, &qword_1EC60BFD8);
  swift_dynamicCast();
  return v4;
}

uint64_t sub_1D1169B84(uint64_t result)
{
  if (*(result + 16))
  {
    v1 = result;
    v2 = *MEMORY[0x1E69DB648];

    result = sub_1D12A2F74(v2);
    if (v3)
    {
      sub_1D109F94C(*(v1 + 56) + 32 * result, v8);
      sub_1D109E39C(v8, &v9);
      v4 = sub_1D106F934(0, &qword_1EC60E670);
      swift_dynamicCast();
      v5 = sub_1D116A3E8();

      v10 = v4;
      *&v9 = v5;
      sub_1D109E39C(&v9, v8);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1D11DB008(v8, v2, isUniquelyReferenced_nonNull_native);
      return v1;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1D1169CB8(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (*a2 != -1)
  {
    v11 = a3;
    swift_once();
    a3 = v11;
  }

  v5 = *a3;
  v6 = objc_opt_self();

  v7 = [v6 systemGrayColor];
  v8 = *MEMORY[0x1E69DB650];
  v14 = sub_1D106F934(0, &qword_1EE06B6E0);
  *&v13 = v7;
  sub_1D109E39C(&v13, v12);

  v9 = v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1D11DB008(v12, v8, isUniquelyReferenced_nonNull_native);

  *a4 = v5;
}

void sub_1D1169DC8()
{
  if (qword_1EC608C40 != -1)
  {
    swift_once();
  }

  v0 = qword_1EC62FA60;
  v1 = objc_opt_self();

  v2 = [v1 systemRedColor];
  v3 = *MEMORY[0x1E69DB650];
  v8 = sub_1D106F934(0, &qword_1EE06B6E0);
  *&v7 = v2;
  sub_1D109E39C(&v7, v6);

  v4 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1D11DB008(v6, v3, isUniquelyReferenced_nonNull_native);

  qword_1EC62FA78 = v0;
}

uint64_t sub_1D1169F0C(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  v6 = sub_1D1169B84(v5);

  *a4 = v6;
  return result;
}

uint64_t sub_1D1169FBC(uint64_t a1, uint64_t *a2, void **a3, unint64_t *a4)
{
  sub_1D116A770(0, &qword_1EC60F520, &qword_1EC6096A0, type metadata accessor for Key);
  inited = swift_initStackObject();
  v8 = MEMORY[0x1E69DB648];
  *(inited + 16) = xmmword_1D139E700;
  v9 = *v8;
  *(inited + 32) = v9;
  v10 = *a2;
  v11 = v9;
  if (v10 != -1)
  {
    swift_once();
  }

  v12 = *a3;
  *(inited + 64) = sub_1D106F934(0, &qword_1EC60E670);
  *(inited + 40) = v12;
  v13 = v12;
  v14 = sub_1D109B2B4(inited);
  swift_setDeallocating();
  result = sub_1D116A934(inited + 32, &qword_1EC6096A0, type metadata accessor for Key);
  *a4 = v14;
  return result;
}

id sub_1D116A108(double a1, uint64_t a2, double *a3, void *a4)
{
  result = [objc_opt_self() systemFontOfSize:a1 weight:*a3];
  *a4 = result;
  return result;
}

uint64_t sub_1D116A164()
{
  sub_1D116A770(0, &qword_1EC60F520, &qword_1EC6096A0, type metadata accessor for Key);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D139E710;
  v1 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v2 = qword_1EC608C78;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_1EC60BFA0;
  v5 = sub_1D106F934(0, &qword_1EC60E670);
  *(inited + 40) = v4;
  v6 = *MEMORY[0x1E69DB650];
  *(inited + 64) = v5;
  *(inited + 72) = v6;
  v7 = objc_opt_self();
  v8 = v4;
  v9 = v6;
  v10 = [v7 systemGrayColor];
  *(inited + 104) = sub_1D106F934(0, &qword_1EE06B6E0);
  *(inited + 80) = v10;
  v11 = sub_1D109B2B4(inited);
  swift_setDeallocating();
  sub_1D116A8C8(0, &qword_1EC6096A0, type metadata accessor for Key);
  result = swift_arrayDestroy();
  qword_1EC62FA90 = v11;
  return result;
}

double sub_1D116A314()
{
  if (qword_1EC608C68 != -1)
  {
    swift_once();
  }

  v0 = qword_1EC60BF98;
  [v0 ascender];
  v2 = v1;

  if (qword_1EC608C78 != -1)
  {
    swift_once();
  }

  v3 = qword_1EC60BFA0;
  [v3 ascender];
  v5 = v4;

  result = v2 - v5;
  *&qword_1EC62FA98 = v2 - v5;
  return result;
}

id sub_1D116A3E8()
{
  v21 = [v0 fontDescriptor];
  sub_1D116A770(0, &qword_1EC60BFA8, &qword_1EC609EA0, type metadata accessor for AttributeName);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D139E700;
  v2 = *MEMORY[0x1E69DB8B0];
  *(inited + 32) = *MEMORY[0x1E69DB8B0];
  sub_1D116A7CC(0, &qword_1EC60BFB0, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D139E710;
  sub_1D116A770(0, &qword_1EC60BFC0, &qword_1EC60BFC8, type metadata accessor for FeatureKey);
  v4 = swift_initStackObject();
  *(v4 + 16) = xmmword_1D139E710;
  v5 = *MEMORY[0x1E69DDCF0];
  *(v4 + 32) = *MEMORY[0x1E69DDCF0];
  v6 = *MEMORY[0x1E69DDCE8];
  *(v4 + 40) = 38;
  *(v4 + 48) = v6;
  *(v4 + 56) = 1;
  v7 = v5;
  v8 = v6;
  v9 = v7;
  v10 = v8;
  v11 = v2;
  v12 = sub_1D109DE24(v4);
  swift_setDeallocating();
  sub_1D116A8C8(0, &qword_1EC60BFC8, type metadata accessor for FeatureKey);
  swift_arrayDestroy();
  *(v3 + 32) = v12;
  v13 = swift_initStackObject();
  *(v13 + 16) = xmmword_1D139E710;
  *(v13 + 32) = v9;
  *(v13 + 40) = 37;
  *(v13 + 48) = v10;
  *(v13 + 56) = 1;
  v14 = sub_1D109DE24(v13);
  swift_setDeallocating();
  swift_arrayDestroy();
  *(v3 + 40) = v14;
  sub_1D116A7CC(0, &qword_1EC60BFD0, MEMORY[0x1E69E62F8]);
  *(inited + 64) = v15;
  *(inited + 40) = v3;
  sub_1D109DF04(inited);
  swift_setDeallocating();
  sub_1D116A934(inited + 32, &qword_1EC609EA0, type metadata accessor for AttributeName);
  type metadata accessor for AttributeName(0);
  sub_1D116A99C(&qword_1EC6095A8, type metadata accessor for AttributeName);
  v16 = sub_1D138FFEC();

  v17 = [v21 fontDescriptorByAddingAttributes_];

  [v22 pointSize];
  v19 = [objc_opt_self() fontWithDescriptor:v17 size:v18];

  return v19;
}

void sub_1D116A770(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1D116A8C8(255, a3, a4);
    v5 = sub_1D13915DC();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D116A7CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1D116A82C();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1D116A82C()
{
  if (!qword_1EC60BFB8)
  {
    type metadata accessor for FeatureKey(255);
    sub_1D116A99C(&qword_1EC609598, type metadata accessor for FeatureKey);
    v0 = sub_1D139003C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60BFB8);
    }
  }
}

void sub_1D116A8C8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1D116A934(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D116A8C8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D116A99C(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_1D116A9E4(void *a1, uint64_t a2, void *a3)
{
  v3[7] = 0;
  v3[8] = 0;
  swift_unknownObjectWeakInit();
  v3[5] = a1;
  v3[6] = a2;
  v7 = v3[7];
  v3[7] = 0;
  v8 = a1;

  swift_unknownObjectWeakAssign();
  v9 = ConceptsDataSource.init(arrangedSections:isHidden:)(MEMORY[0x1E69E7CC0], 0);
  if (a3)
  {
    swift_allocObject();
    swift_weakInit();
    sub_1D1080F80();
    sub_1D116BDE0(&qword_1EC60BFF8, 255, sub_1D1080F80);
    v10 = sub_1D138F90C();

    v9[8] = v10;
  }

  else
  {
  }

  return v9;
}

uint64_t sub_1D116AB4C(void **a1)
{
  v2 = sub_1D138FECC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D138FF0C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    sub_1D106F934(0, &qword_1EE06B760);
    v13 = sub_1D1390A7C();
    v18 = v6;
    v14 = v13;
    v15 = swift_allocObject();
    *(v15 + 16) = v10;
    *(v15 + 24) = v12;
    aBlock[4] = sub_1D116BC8C;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D10CBD3C;
    aBlock[3] = &block_descriptor_21;
    v16 = _Block_copy(aBlock);
    v17 = v10;

    sub_1D138FEEC();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1D116BDE0(&qword_1EE06B7E0, 255, MEMORY[0x1E69E7F60]);
    sub_1D116BCAC(0, &qword_1EE06B7C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1D1080CD4();
    sub_1D139103C();
    MEMORY[0x1D3886400](0, v9, v5, v16);
    _Block_release(v16);

    (*(v3 + 8))(v5, v2);
    return (*(v7 + 8))(v9, v18);
  }

  return result;
}

void sub_1D116AE78(void *a1)
{
  if (a1)
  {
    v1 = a1;
    sub_1D1287820(0);
    sub_1D116B3F0(v1);
  }

  else
  {
    sub_1D1287820(1);
  }
}

uint64_t sub_1D116AEE8(void *a1, void *a2)
{
  v4 = sub_1D138D5EC();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v27 = v6;
    v29 = v5;
    Strong = swift_unknownObjectWeakLoadStrong();
    v10 = type metadata accessor for MedicalRecordTimelineChartItem();
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for MedicalRecordTimelineChartItemCell();
    sub_1D116BDE0(&qword_1EC60BFF0, 255, type metadata accessor for MedicalRecordTimelineChartItemCell);
    v12 = a1;
    v11[5] = sub_1D138DECC();
    v11[6] = v13;
    v11[2] = a2;
    v11[3] = v12;
    v28 = v12;
    swift_unknownObjectWeakAssign();
    v14 = a2;

    v38[3] = v10;
    v38[4] = sub_1D116BDE0(&qword_1EC60C000, 255, type metadata accessor for MedicalRecordTimelineChartItem);
    v38[0] = v11;
    sub_1D138E0FC();
    sub_1D116BCAC(0, &qword_1EC60AA30, MEMORY[0x1E69A3690], MEMORY[0x1E69E6F90]);
    sub_1D138E52C();
    *(swift_allocObject() + 16) = xmmword_1D139E700;
    sub_1D116BE28(v38, &v35);
    v30[1] = v36;
    v30[0] = v35;
    v31 = v37;
    if (*(&v36 + 1))
    {
      sub_1D102CC18(v30, v32);
      v15 = MEMORY[0x1E69E7CC0];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v30[0] = v15;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v15 = sub_1D10F75F4(0, v15[2] + 1, 1, v15);
        *&v30[0] = v15;
      }

      v18 = v15[2];
      v17 = v15[3];
      if (v18 >= v17 >> 1)
      {
        *&v30[0] = sub_1D10F75F4((v17 > 1), v18 + 1, 1, v15);
      }

      v19 = v33;
      v20 = v34;
      v21 = __swift_mutable_project_boxed_opaque_existential_1(v32, v33);
      MEMORY[0x1EEE9AC00](v21);
      v23 = &v26 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v24 + 16))(v23);
      sub_1D125DA54(v18, v23, v30, v19, v20);
      __swift_destroy_boxed_opaque_existential_1Tm(v32);
    }

    else
    {
      sub_1D1144978(v30);
    }

    sub_1D1144978(v38);
    sub_1D138D5DC();
    sub_1D138D59C();
    (*(v27 + 8))(v8, v29);
    sub_1D138E50C();
    sub_1D138E58C();
  }

  else
  {
    sub_1D138E0FC();
    sub_1D138E58C();
  }
}

void sub_1D116B3F0(void *a1)
{
  if (!*(v1 + 56))
  {
    v3 = [*(v1 + 40) healthStore];
    v4 = [objc_allocWithZone(MEMORY[0x1E69A43C0]) initWithHealthStore_];

    v5 = [v4 CHRRoomApplicationItems];
    v6 = objc_opt_self();
    v7 = swift_allocObject();
    swift_weakInit();
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = a1;
    v11[4] = sub_1D116BD10;
    v11[5] = v8;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 1107296256;
    v11[2] = sub_1D116B84C;
    v11[3] = &block_descriptor_23_0;
    v9 = _Block_copy(v11);
    v10 = a1;

    [v6 determineChartabilityOfOntologyConcept:v10 withApplicationItems:v5 completion:v9];
    _Block_release(v9);
  }
}

uint64_t sub_1D116B57C(void *a1, uint64_t a2, void *a3)
{
  sub_1D116BCAC(0, &qword_1EE06A650, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v16 - v7;
  v9 = sub_1D13905DC();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_1D13905AC();
  v10 = a1;
  v11 = a3;

  v12 = sub_1D139059C();
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E85E0];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = a2;
  v13[5] = a1;
  v13[6] = v11;
  sub_1D107877C(0, 0, v8, &unk_1D13A5C88, v13);
}

uint64_t sub_1D116B6E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  sub_1D13905AC();
  v6[8] = sub_1D139059C();
  v8 = sub_1D139055C();

  return MEMORY[0x1EEE6DFA0](sub_1D116B784, v8, v7);
}

uint64_t sub_1D116B784()
{

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1D116AEE8(*(v0 + 48), *(v0 + 56));
  }

  v1 = *(v0 + 8);

  return v1();
}

void sub_1D116B84C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_1D116B8B8()
{

  JUMPOUT(0x1D3888420);
}

uint64_t sub_1D116B900()
{

  v1 = *(v0 + 40);

  MEMORY[0x1D3888420](v0 + 72);

  return swift_deallocClassInstance();
}

uint64_t sub_1D116B9A4()
{
  v0 = sub_1D138E35C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138E32C();
  v4 = sub_1D138E28C();
  [v4 setInterGroupSpacing_];

  v5 = sub_1D138E28C();
  (*(v1 + 8))(v3, v0);
  return v5;
}

uint64_t sub_1D116BAF4()
{
  sub_1D138E71C();
  sub_1D13908CC();
  type metadata accessor for MedicalRecordTimelineHeaderItemCell(0);
  sub_1D116BDE0(&qword_1EC60B860, 255, type metadata accessor for MedicalRecordTimelineHeaderItemCell);
  sub_1D13908AC();
  type metadata accessor for MedicalRecordTimelineChartItemCell();
  sub_1D116BDE0(&qword_1EC60BFF0, 255, type metadata accessor for MedicalRecordTimelineChartItemCell);
  return sub_1D13908AC();
}

void sub_1D116BC24()
{
  if (!qword_1EC6099C8)
  {
    sub_1D106F934(255, &qword_1EC609980);
    v0 = sub_1D1390F3C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC6099C8);
    }
  }
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1D116BCAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D116BD18(uint64_t a1)
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

  return sub_1D116B6E8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1D116BDE0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1D116BE28(uint64_t a1, uint64_t a2)
{
  sub_1D116BCAC(0, &qword_1EC60AA38, sub_1D1159FC8, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id HKMedicalRecordCategoryType.categoryColors()(id a1)
{
  result = [objc_opt_self() allSupportedRecordCategories];
  if (result)
  {
    v3 = result;
    sub_1D116C028();
    v4 = sub_1D139045C();

    if (v4 >> 62)
    {
      goto LABEL_16;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D13910DC())
    {
      v6 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x1D3886B70](v6, v4);
        }

        else
        {
          if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_15;
          }

          v7 = *(v4 + 8 * v6 + 32);
        }

        v8 = v7;
        v9 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        if ([v7 categoryType] == a1)
        {

          v10 = [v8 categoryMetricColors];

          return v10;
        }

        ++v6;
        if (v9 == i)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      ;
    }

LABEL_17:

    return 0;
  }

  return result;
}

unint64_t sub_1D116C028()
{
  result = qword_1EE06B730;
  if (!qword_1EE06B730)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE06B730);
  }

  return result;
}

void __swiftcall HKMedicalRecordCategoryType.medicalRecordCategory()(WDMedicalRecordCategory_optional *__return_ptr retstr)
{
  v2 = v1;
  v3 = [objc_opt_self() allSupportedRecordCategories];
  if (v3)
  {
    v4 = v3;
    sub_1D116C028();
    v5 = sub_1D139045C();

    if (v5 >> 62)
    {
      goto LABEL_16;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D13910DC())
    {
      v7 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x1D3886B70](v7, v5);
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_15;
          }

          v8 = *(v5 + 8 * v7 + 32);
        }

        v9 = v8;
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if ([v8 categoryType] != v2)
        {

          ++v7;
          if (v10 != i)
          {
            continue;
          }
        }

        goto LABEL_17;
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      ;
    }

LABEL_17:
  }
}

void sub_1D116C1B8()
{
  v1 = v0;
  v2 = [v0 collectionView];
  if (!v2)
  {
    __break(1u);
    goto LABEL_17;
  }

  v3 = v2;
  sub_1D13908DC();

  sub_1D10729E4();
  v4 = [v1 collectionView];
  if (!v4)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v5 = v4;
  sub_1D138E83C();

  v6 = [v1 collectionView];
  if (!v6)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v7 = v6;
  sub_1D138EB6C();
  sub_1D13908CC();

  v8 = [v1 collectionView];
  if (!v8)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v9 = v8;
  sub_1D138EA5C();
  sub_1D13908CC();

  v10 = [v1 collectionView];
  if (!v10)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v11 = v10;
  sub_1D138EBAC();
  sub_1D13908CC();

  v12 = [v1 collectionView];
  if (!v12)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v13 = v12;
  sub_1D138EADC();
  sub_1D13908CC();

  v14 = [v1 collectionView];
  if (!v14)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v15 = v14;
  sub_1D138E0EC();
  sub_1D13908AC();

  v16 = [v1 collectionView];
  if (!v16)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v17 = v16;
  sub_1D138E8BC();
  sub_1D13908AC();

  v18 = [v1 collectionView];
  if (!v18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v19 = v18;
  sub_1D138EA7C();
  sub_1D13908AC();

  v20 = [v1 collectionView];
  if (!v20)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v21 = v20;
  sub_1D138EC8C();
  sub_1D13908AC();

  v22 = [v1 collectionView];
  if (!v22)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v23 = v22;
  sub_1D138EA0C();
  sub_1D13908AC();

  v24 = [v1 collectionView];
  if (!v24)
  {
LABEL_27:
    __break(1u);
    return;
  }

  v25 = v24;
  sub_1D13908BC();
}

id sub_1D116C58C(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_1D138DCBC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1D138F0BC();
  v63 = *(v64 - 8);
  v9 = MEMORY[0x1EEE9AC00](v64);
  v62 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v61 = &v52 - v11;
  v58 = sub_1D138D82C();
  v57 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v56 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D116DE24(0, &qword_1EC60A840, MEMORY[0x1E69A3588]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v55 = &v52 - v14;
  v15 = sub_1D138DC8C();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = v2;
  sub_1D10729E4();
  v54 = sub_1D138E86C();
  sub_1D138E24C();

  __swift_project_boxed_opaque_existential_1Tm(v71, v71[3]);
  sub_1D138DC2C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v6 + 32))(v8, v17, v5);
    v18 = sub_1D138DC9C();
    (*(v6 + 8))(v8, v5);
  }

  else
  {
    v53 = a1;
    sub_1D116DEF0(v17);
    sub_1D1072E70(v71, v68);
    sub_1D1080EA4(0, &qword_1EC60F6A0);
    sub_1D1080EA4(0, &qword_1EC60A3D0);
    if (swift_dynamicCast())
    {
      sub_1D102CC18(v66, v69);
      __swift_project_boxed_opaque_existential_1Tm(v69, v70);
      sub_1D138DC4C();
      v19 = sub_1D139012C();

      v20 = sub_1D138D7DC();
      v21 = v53;
      v22 = [v53 dequeueReusableCellWithReuseIdentifier:v19 forIndexPath:v20];

      swift_getObjectType();
      if (swift_conformsToProtocol2() && v22)
      {
        swift_getObjectType();
        sub_1D1072E70(v69, v68);
        v18 = v22;
        sub_1D138E3BC();
        swift_getObjectType();
        if (swift_conformsToProtocol2())
        {
          v23 = v18;

          sub_1D138D81C();
          sub_1D138E1FC();

          (*(v57 + 16))(v56, a2, v58);
          v24 = v55;
          sub_1D138DEFC();
          v25 = sub_1D138DF1C();
          (*(*(v25 - 8) + 56))(v24, 0, 1, v25);
          sub_1D138E6FC();
        }
      }

      else
      {
        v42 = v61;
        sub_1D138F06C();
        v43 = sub_1D138F0AC();
        v44 = sub_1D139080C();
        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          *v45 = 0;
          _os_log_impl(&dword_1D101F000, v43, v44, "Cell does not conform to SectionedAdaptorCell", v45, 2u);
          MEMORY[0x1D38882F0](v45, -1, -1);
        }

        (*(v63 + 8))(v42, v64);
        sub_1D138E7DC();
        sub_1D138DECC();
        v46 = sub_1D139012C();

        v47 = sub_1D138D7DC();
        v18 = [v21 dequeueReusableCellWithReuseIdentifier:v46 forIndexPath:v47];
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v69);
    }

    else
    {
      v67 = 0;
      memset(v66, 0, sizeof(v66));
      sub_1D1119098(v66, &qword_1EC60B620, &qword_1EC60A3D0);
      v26 = v62;
      sub_1D138F04C();
      sub_1D1072E70(v71, v69);
      sub_1D1072E70(v71, v68);
      v27 = sub_1D138F0AC();
      v28 = sub_1D13907FC();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v65 = v30;
        *v29 = 136315650;
        v31 = sub_1D139184C();
        v33 = sub_1D11DF718(v31, v32, &v65);

        *(v29 + 4) = v33;
        *(v29 + 12) = 2080;
        __swift_project_boxed_opaque_existential_1Tm(v69, v70);
        v34 = sub_1D138DC3C();
        v36 = v35;
        __swift_destroy_boxed_opaque_existential_1Tm(v69);
        v37 = sub_1D11DF718(v34, v36, &v65);

        *(v29 + 14) = v37;
        *(v29 + 22) = 2080;
        sub_1D1072E70(v68, v66);
        v38 = sub_1D13901EC();
        v40 = v39;
        __swift_destroy_boxed_opaque_existential_1Tm(v68);
        v41 = sub_1D11DF718(v38, v40, &v65);

        *(v29 + 24) = v41;
        swift_arrayDestroy();
        MEMORY[0x1D38882F0](v30, -1, -1);
        MEMORY[0x1D38882F0](v29, -1, -1);

        (*(v63 + 8))(v62, v64);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1Tm(v68);
        (*(v63 + 8))(v26, v64);
        __swift_destroy_boxed_opaque_existential_1Tm(v69);
      }

      v48 = v53;
      sub_1D138E7DC();
      sub_1D138DECC();
      v49 = sub_1D139012C();

      v50 = sub_1D138D7DC();
      v18 = [v48 dequeueReusableCellWithReuseIdentifier:v49 forIndexPath:v50];
    }
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v71);
  return v18;
}

double sub_1D116D068@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D138D7DC();
  v5 = [a1 cellForItemAtIndexPath_];

  if (v5)
  {
    sub_1D10729E4();
    sub_1D138E86C();
    sub_1D138E24C();

    sub_1D102CC18(&v13, v10);
    sub_1D1080EA4(0, &qword_1EC60F6A0);
    sub_1D1080EA4(0, &unk_1EC60F6C0);
    if (swift_dynamicCast())
    {

      v6 = v8;
LABEL_6:
      sub_1D102CC18(v6, v12);
      sub_1D102CC18(v12, a2);
      return result;
    }

    v9 = 0;
    memset(v8, 0, sizeof(v8));
    sub_1D1119098(v8, &qword_1EC609C60, &unk_1EC60F6C0);
    *&v8[0] = v5;
    sub_1D108B188();
    if (swift_dynamicCast())
    {
      v6 = v10;
      goto LABEL_6;
    }

    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_1D1119098(v10, &qword_1EC609C60, &unk_1EC60F6C0);
  }

  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t sub_1D116D228(void *a1)
{
  v2 = sub_1D138D7DC();
  v3 = [a1 cellForItemAtIndexPath_];

  if (!v3)
  {
    goto LABEL_5;
  }

  sub_1D116D068(a1, v8);
  sub_1D116DC7C(v8, v6);
  if (!v7)
  {
    sub_1D1119098(v8, &qword_1EC609C60, &unk_1EC60F6C0);

    sub_1D1119098(v6, &qword_1EC609C60, &unk_1EC60F6C0);
LABEL_5:
    v4 = 0;
    return v4 & 1;
  }

  __swift_project_boxed_opaque_existential_1Tm(v6, v7);
  v4 = sub_1D138E3FC();

  sub_1D1119098(v8, &qword_1EC609C60, &unk_1EC60F6C0);
  __swift_destroy_boxed_opaque_existential_1Tm(v6);
  return v4 & 1;
}

uint64_t sub_1D116D368(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_1D138D82C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138D7EC();
  v9 = a3;
  v10 = a1;
  LOBYTE(a1) = sub_1D116D228(v9);

  (*(v6 + 8))(v8, v5);
  return a1 & 1;
}

void sub_1D116D46C(void *a1)
{
  sub_1D116DE24(0, &qword_1EC60C018, MEMORY[0x1E69A36A8]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v12 - v3;
  v5 = sub_1D138D7DC();
  v6 = [a1 cellForItemAtIndexPath_];

  if (v6)
  {
    sub_1D116D068(a1, v14);
    sub_1D116DC7C(v14, v12);
    if (v13)
    {
      __swift_project_boxed_opaque_existential_1Tm(v12, v13);
      sub_1D138E41C();
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
    }

    else
    {
      sub_1D1119098(v12, &qword_1EC609C60, &unk_1EC60F6C0);
    }

    sub_1D116DC7C(v14, v12);
    if (!v13)
    {

      sub_1D1119098(v12, &qword_1EC609C60, &unk_1EC60F6C0);
      v9 = sub_1D138E5DC();
      (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
      goto LABEL_9;
    }

    __swift_project_boxed_opaque_existential_1Tm(v12, v13);
    sub_1D138E42C();
    v7 = sub_1D138E5DC();
    v8 = *(v7 - 8);
    (*(v8 + 56))(v4, 0, 1, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    if ((*(v8 + 48))(v4, 1, v7) == 1)
    {

LABEL_9:
      sub_1D1119098(v14, &qword_1EC609C60, &unk_1EC60F6C0);
      sub_1D116DE78(v4);
      return;
    }

    if ((*(v8 + 88))(v4, v7) == *MEMORY[0x1E69A36A0])
    {
      (*(v8 + 96))(v4, v7);
      v10 = *v4;
      v11 = sub_1D138D7DC();
      [a1 deselectItemAtIndexPath:v11 animated:v10];

      sub_1D1119098(v14, &qword_1EC609C60, &unk_1EC60F6C0);
    }

    else
    {
      sub_1D1119098(v14, &qword_1EC609C60, &unk_1EC60F6C0);

      (*(v8 + 8))(v4, v7);
    }
  }
}

uint64_t sub_1D116DA04(void *a1)
{
  v2 = sub_1D138D7DC();
  v3 = [a1 cellForItemAtIndexPath_];

  if (!v3)
  {
    v4 = [a1 selectionFollowsFocus];
    return v4 & 1;
  }

  sub_1D116D068(a1, v8);
  sub_1D116DC7C(v8, v6);
  if (!v7)
  {
    sub_1D1119098(v6, &qword_1EC609C60, &unk_1EC60F6C0);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1Tm(v6, v7);
  v4 = sub_1D138E40C();
  __swift_destroy_boxed_opaque_existential_1Tm(v6);
  if (v4 == 2)
  {
LABEL_7:
    v4 = [a1 selectionFollowsFocus];

    sub_1D1119098(v8, &qword_1EC609C60, &unk_1EC60F6C0);
    return v4 & 1;
  }

  sub_1D1119098(v8, &qword_1EC609C60, &unk_1EC60F6C0);

  return v4 & 1;
}

uint64_t sub_1D116DC7C(uint64_t a1, uint64_t a2)
{
  sub_1D10DC698(0, &qword_1EC609C60, &unk_1EC60F6C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D116DCF8(void *a1)
{
  v2 = sub_1D138D7DC();
  v3 = [a1 cellForItemAtIndexPath_];

  if (v3)
  {
    v9 = v3;
    sub_1D108B188();
    sub_1D1080EA4(0, &qword_1EC60C008);
    v4 = v3;
    if (swift_dynamicCast())
    {
      sub_1D102CC18(v7, v10);
      __swift_project_boxed_opaque_existential_1Tm(v10, v10[3]);
      v5 = sub_1D138EACC();

      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      return v5;
    }

    v8 = 0;
    memset(v7, 0, sizeof(v7));
    sub_1D1119098(v7, &qword_1EC60C010, &qword_1EC60C008);
  }

  return 0;
}

void sub_1D116DE24(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1D116DE78(uint64_t a1)
{
  sub_1D116DE24(0, &qword_1EC60C018, MEMORY[0x1E69A36A8]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D116DEF0(uint64_t a1)
{
  v2 = sub_1D138DC8C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D116E0F4()
{
  v1 = [v0 textLabel];
  if (v1)
  {
    v2 = v1;
    if (qword_1EE06AD00 != -1)
    {
      swift_once();
    }

    sub_1D138D1CC();
    v3 = sub_1D139012C();

    [v2 setText_];
  }

  [v0 setAccessoryType_];
  v4 = [v0 textLabel];
  if (v4)
  {
    v6 = v4;
    v5 = [v0 tintColor];
    [v6 setTextColor_];
  }
}

id sub_1D116E328()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AddAccountTableViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL sub_1D116E380(void *a1)
{
  v1 = a1;
  v2 = [v1 externalID];
  sub_1D139016C();

  sub_1D139016C();
  v3 = sub_1D139032C();

  return (v3 & 1) == 0;
}

BOOL HKClinicalGateway.hasLogo.getter()
{
  v1 = [v0 externalID];
  sub_1D139016C();

  sub_1D139016C();
  v2 = sub_1D139032C();

  return (v2 & 1) == 0;
}

uint64_t sub_1D116E4A0(void *a1)
{
  v1 = a1;
  v2 = _sSo17HKClinicalGatewayC15HealthRecordsUIE29supportsSharingToProviderObjCSbvg_0();

  return v2 & 1;
}

uint64_t sub_1D116E4D8(void *a1)
{
  v1 = a1;
  if ([v1 status] == 1)
  {
    v2 = _sSo17HKClinicalGatewayC15HealthRecordsUIE29supportsSharingToProviderObjCSbvg_0();
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t HKClinicalGateway.canEnableSharingToProvider.getter()
{
  if ([v0 status] != 1)
  {
    return 0;
  }

  return _sSo17HKClinicalGatewayC15HealthRecordsUIE29supportsSharingToProviderObjCSbvg_0();
}

void HKClinicalAccount.brandId.getter(uint64_t *a1@<X8>)
{
  v3 = [v1 brand];
  if (v3)
  {
    v4 = v3;
    v5 = [v4 externalID];
    v6 = sub_1D139016C();
    v8 = v7;

    v9 = [v4 batchID];
    v10 = sub_1D139016C();
    v12 = v11;
  }

  else
  {
    v6 = 0;
    v8 = 0;
    v10 = 0;
    v12 = 0;
  }

  *a1 = v6;
  a1[1] = v8;
  a1[2] = v10;
  a1[3] = v12;
}

id sub_1D116E644(void *a1)
{
  v1 = a1;
  v2 = [v1 gateway];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 hasLogo];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id HKClinicalAccount.hasLogo.getter()
{
  v1 = [v0 gateway];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 hasLogo];

  return v3;
}

BOOL sub_1D116E70C(void *a1)
{
  v1 = a1;
  v2 = [v1 provenance];
  v3 = [v2 gateway];

  if (v3)
  {
  }

  return v3 == 0;
}

BOOL HKClinicalAccount.isSourceType.getter()
{
  v1 = [v0 provenance];
  v2 = [v1 gateway];

  if (v2)
  {
  }

  return v2 == 0;
}

id HKClinicalAccount.issuerIdentifier.getter()
{
  v1 = [v0 provenance];
  v2 = [v1 signedClinicalDataIssuer];

  if (v2)
  {
    v3 = [v2 identifier];

    v2 = sub_1D139016C();
  }

  return v2;
}

BOOL sub_1D116E888(void *a1)
{
  sub_1D11709BC(0, &qword_1EC60A080, type metadata accessor for ClinicalAccountLoginUpgradeAction, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v12 - v3;
  v5 = type metadata accessor for ClinicalAccountLoginUpgradeAction();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1;
  sub_1D11292FC(v9, 0, 0, 0, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1D117094C(v4, &qword_1EC60A080, type metadata accessor for ClinicalAccountLoginUpgradeAction);
    v10 = 0;
  }

  else
  {
    sub_1D10A447C(v4, v8);
    v10 = (*&v8[*(v5 + 20)] & 0xFFFFFFFFFFFFFFFDLL) == 0;
    sub_1D10A3F54(v8);
  }

  return v10;
}

BOOL HKClinicalAccount.needsLogin.getter()
{
  sub_1D11709BC(0, &qword_1EC60A080, type metadata accessor for ClinicalAccountLoginUpgradeAction, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v10 - v2;
  v4 = type metadata accessor for ClinicalAccountLoginUpgradeAction();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D11292FC(v0, 0, 0, 0, v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1D117094C(v3, &qword_1EC60A080, type metadata accessor for ClinicalAccountLoginUpgradeAction);
    return 0;
  }

  else
  {
    sub_1D10A447C(v3, v7);
    v8 = (*&v7[*(v4 + 20)] & 0xFFFFFFFFFFFFFFFDLL) == 0;
    sub_1D10A3F54(v7);
  }

  return v8;
}

BOOL sub_1D116EBE8(void *a1)
{
  v1 = a1;
  v2 = HKClinicalAccount.wantsGatewayUpgrade.getter();

  return v2;
}

BOOL HKClinicalAccount.wantsGatewayUpgrade.getter()
{
  sub_1D11709BC(0, &qword_1EC60A080, type metadata accessor for ClinicalAccountLoginUpgradeAction, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v10 - v2;
  v4 = type metadata accessor for ClinicalAccountLoginUpgradeAction();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D11292FC(v0, 0, 0, 0, v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1D117094C(v3, &qword_1EC60A080, type metadata accessor for ClinicalAccountLoginUpgradeAction);
    return 0;
  }

  else
  {
    sub_1D10A447C(v3, v7);
    v8 = *&v7[*(v4 + 20)] > 3uLL;
    sub_1D10A3F54(v7);
  }

  return v8;
}

uint64_t HKClinicalAccount.summaryTileType.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1D11709BC(0, &qword_1EC60A080, type metadata accessor for ClinicalAccountLoginUpgradeAction, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v17 - v4;
  v6 = type metadata accessor for ClinicalAccountLoginUpgradeAction();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D11292FC(v1, 0, 0, 0, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1D117094C(v5, &qword_1EC60A080, type metadata accessor for ClinicalAccountLoginUpgradeAction);
LABEL_6:
    v12 = sub_1D138EDCC();
    return (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
  }

  sub_1D10A447C(v5, v9);
  v10 = *&v9[*(v6 + 20)];
  sub_1D10A43FC(v10);
  sub_1D10A3F54(v9);
  if ((v10 - 2) < 2)
  {
    goto LABEL_6;
  }

  if (v10 > 1)
  {
    sub_1D10A44E0(v10);
    v11 = MEMORY[0x1E69A3E88];
  }

  else
  {
    v11 = MEMORY[0x1E69A3E80];
  }

  v14 = *v11;
  v15 = sub_1D138EDCC();
  v16 = *(v15 - 8);
  (*(v16 + 104))(a1, v14, v15);
  return (*(v16 + 56))(a1, 0, 1, v15);
}

uint64_t sub_1D116F06C(void *a1)
{
  v1 = a1;
  if ([v1 needsLogin])
  {

    return 1;
  }

  else
  {
    v3 = [v1 hasClinicalSharingScopes];

    return v3 ^ 1;
  }
}

uint64_t HKClinicalAccount.needsLoginToEnableClinicalSharing.getter()
{
  if ([v0 needsLogin])
  {
    return 1;
  }

  else
  {
    return [v0 hasClinicalSharingScopes] ^ 1;
  }
}

uint64_t HKClinicalAccount.displayableLastDownloadDate.getter()
{
  v1 = v0;
  sub_1D11709BC(0, &qword_1EE06B500, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v33 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v33 - v9;
  v11 = sub_1D138D57C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v33 - v16;
  v18 = [v1 lastFetchDate];
  if (v18)
  {
    v19 = v18;
    sub_1D138D52C();

    v20 = *(v12 + 32);
    v20(v8, v15, v11);
    v21 = *(v12 + 56);
    v21(v8, 0, 1, v11);
    v20(v10, v8, v11);
    v21(v10, 0, 1, v11);
    v22 = (*(v12 + 48))(v10, 1, v11);
  }

  else
  {
    v23 = *(v12 + 56);
    v24 = 1;
    v23(v8, 1, 1, v11);
    v25 = [v1 lastFullFetchDate];
    if (v25)
    {
      v26 = v25;
      sub_1D138D52C();

      v24 = 0;
    }

    v23(v5, v24, 1, v11);
    sub_1D112A184(v5, v10);
    v27 = *(v12 + 48);
    if (v27(v8, 1, v11) != 1)
    {
      sub_1D117094C(v8, &qword_1EE06B500, MEMORY[0x1E6969530]);
    }

    v22 = v27(v10, 1, v11);
  }

  if (v22 == 1)
  {
    sub_1D117094C(v10, &qword_1EE06B500, MEMORY[0x1E6969530]);
    return 9732322;
  }

  else
  {
    (*(v12 + 32))(v17, v10, v11);
    v29 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    [v29 setDateStyle_];
    [v29 setTimeStyle_];
    v30 = sub_1D138D4EC();
    v31 = [v29 stringFromDate_];

    v32 = sub_1D139016C();
    (*(v12 + 8))(v17, v11);
    return v32;
  }
}

uint64_t HKClinicalAccount.displayableStatus.getter()
{
  v1 = [v0 state];
  if (v1 > 2)
  {
    if (v1 <= 4)
    {
      if (v1 == 3)
      {
        if (qword_1EE06AD00 == -1)
        {
          return sub_1D138D1CC();
        }
      }

      else if (qword_1EE06AD00 == -1)
      {
        return sub_1D138D1CC();
      }

      goto LABEL_22;
    }

    if (v1 != 5)
    {
      if (v1 == 6)
      {
        if (qword_1EE06AD00 == -1)
        {
          return sub_1D138D1CC();
        }

        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (qword_1EE06AD00 == -1)
    {
      return sub_1D138D1CC();
    }

    goto LABEL_22;
  }

  if (!v1 || v1 != 1 && v1 != 2)
  {
LABEL_14:
    if (qword_1EE06AD00 == -1)
    {
      return sub_1D138D1CC();
    }

    goto LABEL_22;
  }

  if (qword_1EE06AD00 != -1)
  {
LABEL_22:
    swift_once();
  }

  return sub_1D138D1CC();
}

uint64_t sub_1D116F860(void *a1)
{
  v1 = a1;
  v2 = HKClinicalAccount.canEnableSharingToProvider.getter();

  return v2 & 1;
}

id HKClinicalAccount.canEnableSharingToProvider.getter()
{
  result = [v0 gateway];
  if (result)
  {
    v2 = result;
    if ([result canEnableSharingToProvider])
    {
      v3 = [v0 clinicalSharingStatus];
      v4 = [v3 userStatus];

      return (v4 != 2);
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_1D116F930(void *a1)
{
  v1 = a1;
  v2 = HKClinicalAccount.isSharingToProvider.getter();

  return v2 & 1;
}

id HKClinicalAccount.isSharingToProvider.getter()
{
  v1 = v0;
  result = [v0 gateway];
  if (result)
  {
    v3 = result;
    if ((_sSo17HKClinicalGatewayC15HealthRecordsUIE29supportsSharingToProviderObjCSbvg_0() & 1) != 0 && [v3 status] == 1)
    {
      v4 = [v1 clinicalSharingStatus];
      v5 = [v4 userStatus];

      return (v5 == 2);
    }

    else
    {

      return 0;
    }
  }

  return result;
}

id sub_1D116FA14(void *a1)
{
  v1 = a1;
  HKClinicalAccount.displayableSharingSinceTitle.getter();
  v3 = v2;

  if (v3)
  {
    v4 = sub_1D139012C();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t HKClinicalAccount.displayableSharingSinceTitle.getter()
{
  v1 = v0;
  sub_1D11709BC(0, &qword_1EC60DF40, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v29 - v3;
  v5 = sub_1D138D57C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v29 - v10;
  v12 = [v1 clinicalSharingStatus];
  v13 = [v12 userStatus];

  if (v13 != 2)
  {
    return 0;
  }

  v14 = [v1 clinicalSharingStatus];
  v15 = [v14 firstSharedDate];

  if (!v15)
  {
    return 0;
  }

  sub_1D138D52C();

  v30 = v6;
  (*(v6 + 32))(v11, v9, v5);
  v16 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  [v16 setDateStyle_];
  [v16 setTimeStyle_];
  v17 = sub_1D138D4EC();
  v18 = [v16 stringFromDate_];

  v19 = sub_1D139016C();
  v21 = v20;

  v29 = "CCOUNT_STATE_PENDING";
  v22 = sub_1D138D67C();
  (*(*(v22 - 8) + 56))(v4, 1, 1, v22);
  if (qword_1EE069F90 != -1)
  {
    swift_once();
  }

  v23 = qword_1EE069F98;
  sub_1D11709BC(0, &qword_1EE06B080, sub_1D10898CC, MEMORY[0x1E69E6F90]);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1D139E700;
  *(v24 + 56) = MEMORY[0x1E69E6158];
  *(v24 + 64) = sub_1D1089930();
  *(v24 + 32) = v19;
  *(v24 + 40) = v21;
  v25 = v23;

  v26 = sub_1D138D1CC();
  if (*(v24 + 16))
  {
    v27 = sub_1D139019C();
  }

  else
  {
    v27 = v26;
  }

  sub_1D117094C(v4, &qword_1EC60DF40, MEMORY[0x1E6969770]);
  (*(v30 + 8))(v11, v5);

  return v27;
}

id sub_1D116FF04(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_1D139012C();

  return v5;
}

uint64_t HKClinicalAccount.displayableLastSharedToProviderDate.getter()
{
  v1 = v0;
  v2 = sub_1D138D57C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - v7;
  v9 = [v1 clinicalSharingStatus];
  v10 = [v9 lastSharedDate];

  if (!v10)
  {
    return 9732322;
  }

  sub_1D138D52C();

  (*(v3 + 32))(v8, v6, v2);
  v11 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  [v11 setDateStyle_];
  [v11 setTimeStyle_];
  v12 = sub_1D138D4EC();
  v13 = [v11 stringFromDate_];

  v14 = sub_1D139016C();
  (*(v3 + 8))(v8, v2);
  return v14;
}

uint64_t sub_1D1170160()
{
  v1 = [v0 clinicalSharingStatus];
  v2 = [v1 featureStatus];

  if (v2 <= 2)
  {
    if (v2)
    {
      if (v2 == 1)
      {
        v3 = [v0 clinicalSharingStatus];
        v4 = HKClinicalSharingStatus.displayableUserStatus.getter();

        return v4;
      }

      if (v2 == 2)
      {
        if (qword_1EE06AD00 == -1)
        {
          return sub_1D138D1CC();
        }

        goto LABEL_19;
      }
    }

LABEL_12:
    if (qword_1EE06AD00 == -1)
    {
      return sub_1D138D1CC();
    }

    goto LABEL_19;
  }

  if (v2 == 3)
  {
    if (qword_1EE06AD00 == -1)
    {
      return sub_1D138D1CC();
    }

    goto LABEL_19;
  }

  if (v2 != 4)
  {
    if (v2 == 5)
    {
      if (qword_1EE069F90 == -1)
      {
        return sub_1D138D1CC();
      }

      goto LABEL_19;
    }

    goto LABEL_12;
  }

  if (qword_1EE06AD00 != -1)
  {
LABEL_19:
    swift_once();
  }

  return sub_1D138D1CC();
}

uint64_t HKClinicalSharingStatus.displayableUserStatus.getter()
{
  sub_1D11709BC(0, &qword_1EE06B500, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v10 - v2;
  if ([v0 multiDeviceStatus] == 4)
  {
LABEL_2:
    if (qword_1EE069F90 == -1)
    {
      return sub_1D138D1CC();
    }

    goto LABEL_20;
  }

  v4 = [v0 userStatus];
  if (v4 > 2)
  {
    if ((v4 - 4) < 2)
    {
      if (qword_1EE069F90 == -1)
      {
        return sub_1D138D1CC();
      }

      goto LABEL_20;
    }

    if (v4 != 3)
    {
      goto LABEL_16;
    }

LABEL_14:
    if (qword_1EE06AD00 == -1)
    {
      return sub_1D138D1CC();
    }

    goto LABEL_20;
  }

  switch(v4)
  {
    case 0:
      break;
    case 1:
      goto LABEL_14;
    case 2:
      v5 = [v0 lastSharedDate];
      if (v5)
      {
        v6 = v5;
        sub_1D138D52C();

        v7 = sub_1D138D57C();
        (*(*(v7 - 8) + 56))(v3, 0, 1, v7);
        sub_1D117094C(v3, &qword_1EE06B500, MEMORY[0x1E6969530]);
        goto LABEL_2;
      }

      v9 = sub_1D138D57C();
      (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
      sub_1D117094C(v3, &qword_1EE06B500, MEMORY[0x1E6969530]);
      if (qword_1EE069F90 == -1)
      {
        return sub_1D138D1CC();
      }

LABEL_20:
      swift_once();
      return sub_1D138D1CC();
  }

LABEL_16:
  if (qword_1EE06AD00 != -1)
  {
    goto LABEL_20;
  }

  return sub_1D138D1CC();
}

id sub_1D11707F8(void *a1)
{
  v1 = a1;
  v2 = [v1 authResponse];
  v3 = [v2 scope];

  if (v3)
  {
    v4 = [objc_opt_self() scopeSetWithScopeString_];

    v3 = [v4 hasClinicalSharingScopes];
    v1 = v4;
  }

  return v3;
}

id HKClinicalEphemeralAccount.hasClinicalSharingScopes.getter()
{
  v1 = [v0 authResponse];
  v2 = [v1 scope];

  if (v2)
  {
    v3 = [objc_opt_self() scopeSetWithScopeString_];

    v2 = [v3 hasClinicalSharingScopes];
  }

  return v2;
}

uint64_t sub_1D117094C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D11709BC(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1D11709BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t LocalizationSource.table.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t static LocalizationSource.main.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EE06AD00 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = qword_1EE06BB10;
  v2 = *algn_1EE06BB18;
  v3 = qword_1EE06BB20;
  *a1 = qword_1EE06BB10;
  a1[1] = v2;
  a1[2] = v3;
  v4 = v1;
}

id sub_1D1170ADC()
{
  if (qword_1EE06A528 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE06B6C8;
  qword_1EC60C028 = qword_1EE06B6C8;
  unk_1EC60C030 = 0xD000000000000027;
  qword_1EC60C038 = 0x80000001D13BFAD0;

  return v1;
}

uint64_t static LocalizationSource.stringsDict.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EC608C98 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = qword_1EC60C028;
  v2 = unk_1EC60C030;
  v3 = qword_1EC60C038;
  *a1 = qword_1EC60C028;
  a1[1] = v2;
  a1[2] = v3;
  v4 = v1;
}

id sub_1D1170BE4()
{
  if (qword_1EE06A528 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE06B6C8;
  qword_1EC60C040 = qword_1EE06B6C8;
  *algn_1EC60C048 = 0xD000000000000015;
  qword_1EC60C050 = 0x80000001D13BFAB0;

  return v1;
}

uint64_t static LocalizationSource.legal.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EC608CA0 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = qword_1EC60C040;
  v2 = *algn_1EC60C048;
  v3 = qword_1EC60C050;
  *a1 = qword_1EC60C040;
  a1[1] = v2;
  a1[2] = v3;
  v4 = v1;
}

id sub_1D1170CEC()
{
  if (qword_1EC608EA0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC60FD10;
  qword_1EC60C058 = qword_1EC60FD10;
  unk_1EC60C060 = 0xD00000000000001DLL;
  qword_1EC60C068 = 0x80000001D13BFA90;

  return v1;
}

uint64_t static LocalizationSource.legacy.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EC608CA8 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = qword_1EC60C058;
  v2 = unk_1EC60C060;
  v3 = qword_1EC60C068;
  *a1 = qword_1EC60C058;
  a1[1] = v2;
  a1[2] = v3;
  v4 = v1;
}

id sub_1D1170DF4()
{
  if (qword_1EE06A538 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE06B6D0;
  qword_1EC60C070 = qword_1EE06B6D0;
  *algn_1EC60C078 = 0xD000000000000014;
  qword_1EC60C080 = 0x80000001D13BFA70;

  return v1;
}

uint64_t static LocalizationSource.healthUI.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EC608CB0 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = qword_1EC60C070;
  v2 = *algn_1EC60C078;
  v3 = qword_1EC60C080;
  *a1 = qword_1EC60C070;
  a1[1] = v2;
  a1[2] = v3;
  v4 = v1;
}

id sub_1D1170EFC()
{
  if (qword_1EE06A538 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE06B6D0;
  qword_1EE06BB28 = qword_1EE06B6D0;
  unk_1EE06BB30 = 0xD00000000000002CLL;
  qword_1EE06BB38 = 0x80000001D13BFB30;

  return v1;
}

uint64_t static LocalizationSource.healthRecordsHealthUI.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EE06AD08 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = qword_1EE06BB28;
  v2 = unk_1EE06BB30;
  v3 = qword_1EE06BB38;
  *a1 = qword_1EE06BB28;
  a1[1] = v2;
  a1[2] = v3;
  v4 = v1;
}

id sub_1D1171004()
{
  if (qword_1EE06A528 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE06B6C8;
  qword_1EE069F98 = qword_1EE06B6C8;
  unk_1EE069FA0 = 0xD000000000000020;
  qword_1EE069FA8 = 0x80000001D13BFB00;

  return v1;
}

uint64_t static LocalizationSource.healthRecordsOsloHealthUI.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EE069F90 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = qword_1EE069F98;
  v2 = unk_1EE069FA0;
  v3 = qword_1EE069FA8;
  *a1 = qword_1EE069F98;
  a1[1] = v2;
  a1[2] = v3;
  v4 = v1;
}

id sub_1D117110C()
{
  if (qword_1EE06A528 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE06B6C8;
  qword_1EC60C088 = qword_1EE06B6C8;
  unk_1EC60C090 = 0xD00000000000002CLL;
  qword_1EC60C098 = 0x80000001D13BFA40;

  return v1;
}

uint64_t static LocalizationSource.healthRecordsOsloStringsDict.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EC608CB8 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = qword_1EC60C088;
  v2 = unk_1EC60C090;
  v3 = qword_1EC60C098;
  *a1 = qword_1EC60C088;
  a1[1] = v2;
  a1[2] = v3;
  v4 = v1;
}

id sub_1D1171214()
{
  if (qword_1EE06A528 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE06B6C8;
  qword_1EC60C0A0 = qword_1EE06B6C8;
  *algn_1EC60C0A8 = 0xD000000000000030;
  qword_1EC60C0B0 = 0x80000001D13BFA00;

  return v1;
}

uint64_t static LocalizationSource.stringsDictPasadena.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EC608CC0 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = qword_1EC60C0A0;
  v2 = *algn_1EC60C0A8;
  v3 = qword_1EC60C0B0;
  *a1 = qword_1EC60C0A0;
  a1[1] = v2;
  a1[2] = v3;
  v4 = v1;
}

id sub_1D117131C()
{
  if (qword_1EE06A538 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE06B6D0;
  qword_1EC60C0B8 = qword_1EE06B6D0;
  unk_1EC60C0C0 = 0xD00000000000001DLL;
  qword_1EC60C0C8 = 0x80000001D13BF9E0;

  return v1;
}

uint64_t static LocalizationSource.healthUIPasadena.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EC608CC8 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = qword_1EC60C0B8;
  v2 = unk_1EC60C0C0;
  v3 = qword_1EC60C0C8;
  *a1 = qword_1EC60C0B8;
  a1[1] = v2;
  a1[2] = v3;
  v4 = v1;
}

id sub_1D1171424()
{
  if (qword_1EE06A528 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE06B6C8;
  qword_1EC60C0D0 = qword_1EE06B6C8;
  *algn_1EC60C0D8 = 0xD000000000000024;
  qword_1EC60C0E0 = 0x80000001D13BF9B0;

  return v1;
}

uint64_t static LocalizationSource.healthRecordsUIPasadena.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EC608CD0 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = qword_1EC60C0D0;
  v2 = *algn_1EC60C0D8;
  v3 = qword_1EC60C0E0;
  *a1 = qword_1EC60C0D0;
  a1[1] = v2;
  a1[2] = v3;
  v4 = v1;
}

id sub_1D117152C()
{
  if (qword_1EE06A528 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE06B6C8;
  qword_1EC60C0E8 = qword_1EE06B6C8;
  unk_1EC60C0F0 = 0xD000000000000036;
  qword_1EC60C0F8 = 0x80000001D13BF970;

  return v1;
}

uint64_t static LocalizationSource.stringsDictClinicalNotes.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EC608CD8 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = qword_1EC60C0E8;
  v2 = unk_1EC60C0F0;
  v3 = qword_1EC60C0F8;
  *a1 = qword_1EC60C0E8;
  a1[1] = v2;
  a1[2] = v3;
  v4 = v1;
}

id sub_1D1171634()
{
  if (qword_1EE06A528 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE06B6C8;
  qword_1EC60C100 = qword_1EE06B6C8;
  *algn_1EC60C108 = 0xD00000000000002ALL;
  qword_1EC60C110 = 0x80000001D13BF940;

  return v1;
}

uint64_t static LocalizationSource.healthRecordsClinicalNotesHealthUI.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EC608CE0 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = qword_1EC60C100;
  v2 = *algn_1EC60C108;
  v3 = qword_1EC60C110;
  *a1 = qword_1EC60C100;
  a1[1] = v2;
  a1[2] = v3;
  v4 = v1;
}

id sub_1D117173C()
{
  if (qword_1EE06A538 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE06B6D0;
  qword_1EC60C118 = qword_1EE06B6D0;
  unk_1EC60C120 = 0xD00000000000001CLL;
  qword_1EC60C128 = 0x80000001D13BF920;

  return v1;
}

uint64_t static LocalizationSource.healthRecordsAPI.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EC608CE8 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = qword_1EC60C118;
  v2 = unk_1EC60C120;
  v3 = qword_1EC60C128;
  *a1 = qword_1EC60C118;
  a1[1] = v2;
  a1[2] = v3;
  v4 = v1;
}

id sub_1D1171844()
{
  if (qword_1EE06A538 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE06B6D0;
  qword_1EC60C130 = qword_1EE06B6D0;
  *algn_1EC60C138 = 0xD000000000000028;
  qword_1EC60C140 = 0x80000001D13BF8F0;

  return v1;
}

uint64_t static LocalizationSource.healthRecordsResearchStudyAPI.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EC608CF0 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = qword_1EC60C130;
  v2 = *algn_1EC60C138;
  v3 = qword_1EC60C140;
  *a1 = qword_1EC60C130;
  a1[1] = v2;
  a1[2] = v3;
  v4 = v1;
}

uint64_t sub_1D117194C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_1D1172594(0, &qword_1EC60DF40, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v17 - v7;
  v9 = sub_1D138D67C();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  if (a3)
  {
    if (qword_1EC608CE8 != -1)
    {
      swift_once();
    }

    v10 = &qword_1EC60C118;
  }

  else
  {
    if (qword_1EC608CF0 != -1)
    {
      swift_once();
    }

    v10 = &qword_1EC60C130;
  }

  v11 = *v10;

  sub_1D1172594(0, &qword_1EE06B080, sub_1D10898CC, MEMORY[0x1E69E6F90]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D139E700;
  sub_1D1172594(0, &qword_1EE0695C8, sub_1D10898CC, MEMORY[0x1E69E62F8]);
  *(v12 + 56) = v13;
  *(v12 + 64) = sub_1D11725F8();
  *(v12 + 32) = a4;

  v14 = sub_1D138D1CC();
  if (*(v12 + 16))
  {
    v15 = sub_1D139019C();
  }

  else
  {
    v15 = v14;
  }

  sub_1D10CD608(v8);

  return v15;
}

uint64_t LocalizationSource.localized(_:locale:value:comment:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = sub_1D138D1CC();
  if (*(a8 + 16))
  {
    v10 = sub_1D139019C();

    return v10;
  }

  return result;
}

id _HRLocalizedString()
{
  sub_1D139016C();
  if (qword_1EE06AD00 != -1)
  {
    swift_once();
  }

  sub_1D138D1CC();

  v0 = sub_1D139012C();

  return v0;
}

Swift::String __swiftcall localizedStringForObjC(_:)(Swift::String a1)
{
  if (qword_1EE06AD00 != -1)
  {
    swift_once();
  }

  v1 = sub_1D138D1CC();
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

id _HRLocalizedLegalString()
{
  sub_1D139016C();
  if (qword_1EC608CA0 != -1)
  {
    swift_once();
  }

  sub_1D138D1CC();

  v0 = sub_1D139012C();

  return v0;
}

Swift::String __swiftcall localizedLegalStringForObjC(_:)(Swift::String a1)
{
  if (qword_1EC608CA0 != -1)
  {
    swift_once();
  }

  v1 = sub_1D138D1CC();
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

id _HBXLocalizedString()
{
  sub_1D139016C();
  if (qword_1EC608CA8 != -1)
  {
    swift_once();
  }

  sub_1D138D1CC();

  v0 = sub_1D139012C();

  return v0;
}

Swift::String __swiftcall localizedHBXStringForObjC(_:)(Swift::String a1)
{
  if (qword_1EC608CA8 != -1)
  {
    swift_once();
  }

  v1 = sub_1D138D1CC();
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

id _HROsloLocalizedString()
{
  sub_1D139016C();
  if (qword_1EE069F90 != -1)
  {
    swift_once();
  }

  sub_1D138D1CC();

  v0 = sub_1D139012C();

  return v0;
}

Swift::String __swiftcall localizedOsloStringForObjC(_:)(Swift::String a1)
{
  if (qword_1EE069F90 != -1)
  {
    swift_once();
  }

  v1 = sub_1D138D1CC();
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

id _HRPasadenaLocalizedString()
{
  sub_1D139016C();
  if (qword_1EC608CD0 != -1)
  {
    swift_once();
  }

  sub_1D138D1CC();

  v0 = sub_1D139012C();

  return v0;
}

Swift::String __swiftcall localizedPasadenaStringForObjC(_:)(Swift::String a1)
{
  if (qword_1EC608CD0 != -1)
  {
    swift_once();
  }

  v1 = sub_1D138D1CC();
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

id _HRClinicalNotesLocalizedString()
{
  sub_1D139016C();
  if (qword_1EC608CE0 != -1)
  {
    swift_once();
  }

  sub_1D138D1CC();

  v0 = sub_1D139012C();

  return v0;
}

Swift::String __swiftcall localizedClinicalNotesStringForObjC(_:)(Swift::String a1)
{
  if (qword_1EC608CE0 != -1)
  {
    swift_once();
  }

  v1 = sub_1D138D1CC();
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t sub_1D11724FC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1D1172544(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void sub_1D1172594(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1D11725F8()
{
  result = qword_1EE0695C0;
  if (!qword_1EE0695C0)
  {
    sub_1D1172594(255, &qword_1EE0695C8, sub_1D10898CC, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0695C0);
  }

  return result;
}

uint64_t sub_1D11726EC()
{
  v0 = sub_1D138E6BC();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v12 - v5;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = *(Strong + qword_1EC60C150);
    v9 = *(Strong + qword_1EC60C150 + 8);
    if (v9)
    {
      if (v9 == 1 || v9 == 2)
      {
        sub_1D138E65C();
      }

      else
      {

        sub_1D138E65C();
        sub_1D138E5FC();
        sub_1D1177B48(v8, v9);
        (*(v1 + 8))(v6, v0);
      }
    }

    else
    {
      sub_1D138E65C();
      sub_1D1177B48(v8, 0);
    }

    v10 = sub_1D138E6AC();
  }

  else
  {
    sub_1D138E65C();
    v10 = sub_1D138E6AC();
    v4 = v6;
  }

  (*(v1 + 8))(v4, v0);
  return v10;
}

uint64_t sub_1D11728C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_1D138D5EC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1D139016C() == a1 && v11 == a2)
  {
  }

  else
  {
    v13 = sub_1D139162C();

    if ((v13 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v14 = *(v3 + qword_1EC60C150 + 8);
  if (v14 < 3)
  {
LABEL_9:
    a3[3] = sub_1D138DF7C();
    a3[4] = sub_1D1177B68(&qword_1EC60C2A0, MEMORY[0x1E69A35B8]);
    __swift_allocate_boxed_opaque_existential_1(a3);
    return sub_1D138DF6C();
  }

  v16 = *(v3 + qword_1EC60C150);
  v20[0] = 0x74497265746F6F46;
  v20[1] = 0xEB000000005F6D65;
  sub_1D1177B30(v16, v14);
  sub_1D138D5DC();
  v17 = sub_1D138D59C();
  v19 = v18;
  (*(v8 + 8))(v10, v7);
  MEMORY[0x1D3885C10](v17, v19);

  a3[3] = sub_1D138EA2C();
  a3[4] = sub_1D1177B68(&qword_1EC60A048, MEMORY[0x1E69A3798]);
  __swift_allocate_boxed_opaque_existential_1(a3);
  return sub_1D138EA1C();
}

uint64_t sub_1D1172BA4()
{
  v0 = sub_1D138EABC();
  sub_1D1177B48(*(v0 + qword_1EC60C150), *(v0 + qword_1EC60C150 + 8));

  return swift_deallocClassInstance();
}

uint64_t sub_1D1172C9C()
{
  sub_1D1177AD0();
  MEMORY[0x1EEE9AC00](v1);
  v4 = (v0 + qword_1EC60C170);
  v5 = MEMORY[0x1E69A35E8];
  if (*(v0 + qword_1EC60C170 + 8) != 1)
  {
    v5 = MEMORY[0x1E69A35F0];
  }

  (*(v3 + 104))(&v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *v5);
  sub_1D138E15C();
  v6 = *v4;
  v7 = v4[1];
  v8 = (*(v0 + qword_1EC60C168) + qword_1EC60C150);
  v9 = *v8;
  v10 = v8[1];
  *v8 = v6;
  v8[1] = v7;
  sub_1D1177B30(v6, v7);
  sub_1D1177B48(v9, v10);
  swift_allocObject();
  swift_weakInit();

  sub_1D138EA9C();
}

uint64_t sub_1D1172E08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1D138E6BC();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - v10;
  if (!a4 || a4 == 2 || a4 == 1)
  {
    sub_1D138E65C();
  }

  else
  {
    sub_1D138E65C();
    sub_1D138E5FC();
    (*(v6 + 8))(v9, v5);
  }

  v12 = sub_1D138E6AC();
  (*(v6 + 8))(v11, v5);
  return v12;
}

uint64_t sub_1D1172F84()
{

  v1 = *(v0 + qword_1EC60C170);
  v2 = *(v0 + qword_1EC60C170 + 8);

  return sub_1D1177B48(v1, v2);
}

uint64_t sub_1D1172FC8()
{
  v0 = sub_1D138E19C();

  sub_1D1177B48(*(v0 + qword_1EC60C170), *(v0 + qword_1EC60C170 + 8));

  return swift_deallocClassInstance();
}

uint64_t sub_1D1173054()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI17AccountActionItem_accountID;
  v2 = sub_1D138D5EC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1D102CC38(v0 + OBJC_IVAR____TtC15HealthRecordsUI17AccountActionItem_delegate);

  return swift_deallocClassInstance();
}

uint64_t get_enum_tag_for_layout_string_15HealthRecordsUI21DeleteAccountScenarioO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D1173200(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 3)
  {
    return (v3 - 2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D1173264(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

void *sub_1D11732B4(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    result[1] = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

uint64_t sub_1D11732F4(void *a1, void *a2)
{
  v5 = *v2;
  swift_getObjectType();
  v6 = swift_conformsToProtocol2();
  if (v6)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v8 = v6;
    v9 = a2;
  }

  else
  {
    v8 = 0;
  }

  *(v2 + OBJC_IVAR____TtC15HealthRecordsUI17AccountActionItem_delegate + 8) = v8;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  [a1 setUserInteractionEnabled_];
  v10 = *(v2 + OBJC_IVAR____TtC15HealthRecordsUI17DeleteAccountItem_account);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a1;
  v12 = swift_allocObject();
  v12[2] = v10;
  v12[3] = v2;
  v12[4] = a2;
  v12[5] = a1;
  v12[6] = sub_1D1176C74;
  v12[7] = v11;
  v12[8] = v5;
  v13 = a2;
  v14 = a1;
  v15 = v13;
  v16 = v14;
  v17 = v10;

  sub_1D1324BE0(sub_1D1176CCC, v12);
}

uint64_t sub_1D11734A4(uint64_t a1, int a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v70 = a8;
  v72 = a5;
  v73 = a6;
  v69 = a2;
  v68 = a1;
  v13 = a9;
  v14 = sub_1D138FECC();
  v76 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v71 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D138FF0C();
  v74 = *(v16 - 8);
  v75 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1D138D5EC();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1D138F0BC();
  v24 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v59 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v63 = v20;
    v64 = v25;
    v65 = v24;
    v67 = v14;
    v28 = a3;
    sub_1D138F06C();
    v29 = a3;
    v66 = a4;
    v30 = a4;
    v31 = sub_1D138F0AC();
    v32 = sub_1D13907FC();

    if (os_log_type_enabled(v31, v32))
    {
      v60 = v32;
      v33 = swift_slowAlloc();
      v61 = a9;
      v34 = v33;
      v59 = swift_slowAlloc();
      v77 = v59;
      aBlock[0] = a10;
      *v34 = 136315650;
      swift_getMetatypeMetadata();
      v35 = sub_1D13901EC();
      v37 = sub_1D11DF718(v35, v36, &v77);
      v62 = a7;
      v38 = v37;

      *(v34 + 4) = v38;
      *(v34 + 12) = 2080;
      v39 = [v30 identifier];
      sub_1D138D5CC();

      sub_1D1177B68(&qword_1EC60D1C0, MEMORY[0x1E69695A8]);
      v40 = sub_1D13915CC();
      v42 = v41;
      (*(v63 + 8))(v22, v19);
      v43 = sub_1D11DF718(v40, v42, &v77);

      *(v34 + 14) = v43;
      *(v34 + 22) = 2080;
      aBlock[0] = a3;
      v44 = a3;
      sub_1D1080EA4(0, &qword_1EE06B690);
      v45 = sub_1D13901EC();
      v47 = sub_1D11DF718(v45, v46, &v77);
      a7 = v62;

      *(v34 + 24) = v47;
      _os_log_impl(&dword_1D101F000, v31, v60, "%s failed to count number of Wallet cards for account %s: %s", v34, 0x20u);
      v48 = v59;
      swift_arrayDestroy();
      MEMORY[0x1D38882F0](v48, -1, -1);
      v49 = v34;
      v13 = v61;
      MEMORY[0x1D38882F0](v49, -1, -1);
    }

    else
    {
    }

    (*(v64 + 8))(v27, v65);
    a4 = v66;
    v14 = v67;
  }

  sub_1D106F934(0, &qword_1EE06B760);
  v50 = sub_1D1390A7C();
  v51 = swift_allocObject();
  v52 = v73;
  *(v51 + 16) = v72;
  *(v51 + 24) = a4;
  *(v51 + 32) = v68;
  *(v51 + 40) = v69 & 1;
  *(v51 + 48) = v52;
  *(v51 + 56) = a7;
  *(v51 + 64) = v70;
  *(v51 + 72) = v13;
  aBlock[4] = sub_1D1176D04;
  aBlock[5] = v51;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D10CBD3C;
  aBlock[3] = &block_descriptor_22;
  v53 = _Block_copy(aBlock);
  v54 = a4;

  v55 = v52;
  v56 = a7;

  sub_1D138FEEC();
  v77 = MEMORY[0x1E69E7CC0];
  sub_1D1177B68(&qword_1EE06B7E0, MEMORY[0x1E69E7F60]);
  sub_1D1176D9C(0, &qword_1EE06B7C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D1080CD4();
  v57 = v71;
  sub_1D139103C();
  MEMORY[0x1D3886400](0, v18, v57, v53);
  _Block_release(v53);

  (*(v76 + 8))(v57, v14);
  (*(v74 + 8))(v18, v75);
}

void sub_1D1173B7C(void *a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = v4;
  v11 = sub_1D138FF3C();
  v12 = *(v11 - 1);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D106F934(0, &qword_1EE06B760);
  *v14 = sub_1D1390A7C();
  (*(v12 + 104))(v14, *MEMORY[0x1E69E8020], v11);
  v15 = sub_1D138FF5C();
  v17 = *(v12 + 8);
  v16 = (v12 + 8);
  v17(v14, v11);
  if ((v15 & 1) == 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  v77 = v6;
  v18 = [a1 clinicalSharingStatus];
  v19 = [v18 userStatus];

  v20 = &selRef_subscriberIdentifier;
  v78 = a3;
  if (v19 == 2)
  {
    if (a2 < 1)
    {
      v30 = a1;
      v31 = objc_opt_self();
      v32 = sub_1D139012C();
      v33 = [v31 modelSpecificLocalizedStringKeyForKey_];

      if (!v33)
      {
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      v34 = a4;
      sub_1D139016C();

      if (qword_1EE069F90 != -1)
      {
        swift_once();
      }

      sub_1D138D1CC();

      sub_1D10F48A8();
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_1D139E700;
      v36 = [v30 title];
      v37 = sub_1D139016C();
      v39 = v38;

      *(v35 + 56) = MEMORY[0x1E69E6158];
      *(v35 + 64) = sub_1D1089930();
      *(v35 + 32) = v37;
      *(v35 + 40) = v39;
      v40 = sub_1D13901AC();
      v29 = v41;

      v80 = v40;
      a4 = v34;
      a1 = v30;
      v20 = &selRef_subscriberIdentifier;
    }

    else
    {
      v21 = a4;
      if (qword_1EE069F90 != -1)
      {
        swift_once();
      }

      sub_1D138D1CC();
      sub_1D10F48A8();
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1D139E700;
      v23 = [a1 title];
      v24 = sub_1D139016C();
      v26 = v25;

      *(v22 + 56) = MEMORY[0x1E69E6158];
      *(v22 + 64) = sub_1D1089930();
      *(v22 + 32) = v24;
      *(v22 + 40) = v26;
      v27 = sub_1D13901AC();
      v29 = v28;

      v80 = v27;
      a4 = v21;
      v20 = &selRef_subscriberIdentifier;
    }

LABEL_23:
    v81 = v29;
    if ([a1 state] == 5)
    {
      MEMORY[0x1D3885C10](2570, 0xE200000000000000);
      if (qword_1EE06AD00 != -1)
      {
        swift_once();
      }

      v49 = sub_1D138D1CC();
      MEMORY[0x1D3885C10](v49);
    }

    if ([a1 v20[26]])
    {
      if (qword_1EE06AD00 != -1)
      {
        swift_once();
      }

      v50 = a1;
      v52 = qword_1EE06BB10;
      v51 = *algn_1EE06BB18;
    }

    else
    {
      if (qword_1EE06AD00 != -1)
      {
        swift_once();
      }

      v50 = a1;
      v52 = qword_1EE06BB10;
      v51 = *algn_1EE06BB18;
    }

    v76[0] = v51;
    v76[1] = v52;
    sub_1D138D1CC();
    v53 = objc_opt_self();
    v54 = [v53 sharedBehavior];
    if (v54)
    {
      v55 = v54;
      v56 = [v54 isiPad];

      v57 = v56;
      v58 = sub_1D139012C();
      v5 = [objc_opt_self() alertControllerWithTitle:0 message:v58 preferredStyle:v57];

      v59 = [v5 popoverPresentationController];
      if (v59)
      {
        v60 = v59;
        [v59 setSourceItem_];
      }

      v61 = swift_allocObject();
      v62 = v50;
      v63 = v77;
      v61[2] = v50;
      v61[3] = v63;
      v64 = v78;
      v61[4] = v78;
      v61[5] = a4;
      v65 = v62;

      v66 = v64;
      v67 = a4;
      v68 = sub_1D139012C();
      aBlock[4] = sub_1D1176D90;
      aBlock[5] = v61;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1D10CB11C;
      aBlock[3] = &block_descriptor_19;
      v69 = _Block_copy(aBlock);

      v11 = objc_opt_self();
      a4 = &selRef_hasSectionLocalizedContent;
      v70 = [v11 actionWithTitle:v68 style:2 handler:v69];
      _Block_release(v69);

      v16 = &selRef_hasSectionLocalizedContent;
      [v5 addAction_];

      v71 = [v53 sharedBehavior];
      if (v71)
      {
        v72 = v71;

        LODWORD(v14) = [v72 isiPad];

        if (qword_1EE06AD00 == -1)
        {
LABEL_39:
          v73 = v14 ^ 1;
          sub_1D138D1CC();
          v74 = sub_1D139012C();

          v75 = [v11 a4[281]];

          [v5 v16[285]];
          return;
        }

LABEL_41:
        swift_once();
        goto LABEL_39;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_44;
  }

  if ([a1 isSourceType])
  {
    if (a2 >= 1)
    {
      goto LABEL_20;
    }

    v42 = objc_opt_self();
    v43 = sub_1D139012C();
    v44 = [v42 modelSpecificLocalizedStringKeyForKey_];

    if (v44)
    {
LABEL_19:
      sub_1D139016C();

LABEL_20:
      if (qword_1EE06AD00 != -1)
      {
        swift_once();
      }

      v47 = sub_1D138D1CC();
      v29 = v48;

      v80 = v47;
      goto LABEL_23;
    }

    __break(1u);
  }

  else if (a2 >= 1)
  {
    goto LABEL_20;
  }

  v45 = objc_opt_self();
  v46 = sub_1D139012C();
  v44 = [v45 modelSpecificLocalizedStringKeyForKey_];

  if (v44)
  {
    goto LABEL_19;
  }

LABEL_45:
  __break(1u);
}

void sub_1D11745C8(void *a1, uint64_t a2)
{
  v5 = [a1 view];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 window];

    if (v7)
    {
      [v7 setUserInteractionEnabled_];
    }

    v8 = [*(*(v2 + OBJC_IVAR____TtC15HealthRecordsUI17AccountActionItem_manager) + 16) healthStore];
    v9 = [objc_allocWithZone(MEMORY[0x1E696BFE0]) initWithHealthStore_];

    v10 = swift_allocObject();
    v10[2] = a1;
    v10[3] = v2;
    v10[4] = a2;
    v13[4] = sub_1D1176EC8;
    v13[5] = v10;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 1107296256;
    v13[2] = sub_1D1175B38;
    v13[3] = &block_descriptor_29;
    v11 = _Block_copy(v13);
    swift_unknownObjectRetain();
    v12 = a1;

    [v9 fetchCloudSyncStatusWithCompletion_];
    _Block_release(v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D117476C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v12 = sub_1D138FECC();
  v24 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1D138FF0C();
  v15 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D106F934(0, &qword_1EE06B760);
  v18 = sub_1D1390A7C();
  v19 = swift_allocObject();
  *(v19 + 16) = a6;
  *(v19 + 24) = a1;
  *(v19 + 32) = a7;
  *(v19 + 40) = a8;
  aBlock[4] = sub_1D1176ED4;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D10CBD3C;
  aBlock[3] = &block_descriptor_35_0;
  v20 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  v21 = a6;

  sub_1D138FEEC();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D1177B68(&qword_1EE06B7E0, MEMORY[0x1E69E7F60]);
  sub_1D1176D9C(0, &qword_1EE06B7C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D1080CD4();
  sub_1D139103C();
  MEMORY[0x1D3886400](0, v17, v14, v20);
  _Block_release(v20);

  (*(v24 + 8))(v14, v12);
  return (*(v15 + 8))(v17, v23);
}

void sub_1D1174A7C(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  sub_1D1176EE4();
  v95 = *(v8 - 8);
  v96 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v94 = &v80[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D1176F98();
  v98 = *(v10 - 8);
  v99 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v97 = &v80[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D1177210();
  v101 = *(v12 - 8);
  v102 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v100 = &v80[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D117732C();
  v104 = *(v14 - 8);
  v105 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v103 = &v80[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_1D138D5EC();
  v107 = *(v16 - 8);
  v17 = *(v107 + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v106 = &v80[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v80[-v19];
  v21 = sub_1D138F0BC();
  v22 = *(v21 - 8);
  v92 = v21;
  v93 = v22;
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v80[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = [a1 view];
  if (v25)
  {
    v26 = v25;
    v27 = [v25 window];

    if (v27)
    {
      [v27 setUserInteractionEnabled_];
    }

    if (a2)
    {
      sub_1D117571C(a1, a4);
    }

    else
    {
      v28 = a3 + OBJC_IVAR____TtC15HealthRecordsUI17AccountActionItem_delegate;
      Strong = swift_unknownObjectWeakLoadStrong();
      v30 = *(v28 + 8);
      v31 = *(a3 + OBJC_IVAR____TtC15HealthRecordsUI17AccountActionItem_manager);
      v32 = a3 + OBJC_IVAR____TtC15HealthRecordsUI17AccountActionItem_accountID;
      v33 = swift_allocObject();
      *(v33 + 16) = Strong;
      *(v33 + 24) = v30;
      v91 = v33;
      v34 = swift_allocObject();
      *(v34 + 16) = Strong;
      *(v34 + 24) = v30;
      v90 = v34;
      v35 = swift_allocObject();
      *(v35 + 2) = Strong;
      *(v35 + 3) = v30;
      v85 = v35;
      *(v35 + 4) = a1;
      v86 = Strong;
      swift_unknownObjectRetain_n();
      v36 = a1;
      v37 = v24;
      sub_1D138F06C();
      v38 = v107;
      v39 = *(v107 + 16);
      v89 = v32;
      v88 = v107 + 16;
      v87 = v39;
      v39(v20, v32, v16);

      v40 = sub_1D138F0AC();
      v41 = sub_1D139081C();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        v108[0] = v83;
        *v42 = 136315394;
        v81 = v41;
        v43 = sub_1D131B120();
        v45 = sub_1D11DF718(v43, v44, v108);
        v84 = v37;
        v46 = v45;

        *(v42 + 4) = v46;
        *(v42 + 12) = 2080;
        sub_1D1177B68(&qword_1EC60D1C0, MEMORY[0x1E69695A8]);
        v47 = sub_1D13915CC();
        v49 = v48;
        (*(v38 + 8))(v20, v16);
        v50 = sub_1D11DF718(v47, v49, v108);

        *(v42 + 14) = v50;
        _os_log_impl(&dword_1D101F000, v40, v81, "%s starting to delete account %s", v42, 0x16u);
        v51 = v83;
        swift_arrayDestroy();
        MEMORY[0x1D38882F0](v51, -1, -1);
        MEMORY[0x1D38882F0](v42, -1, -1);

        (*(v93 + 8))(v84, v92);
      }

      else
      {

        (*(v38 + 8))(v20, v16);
        (*(v93 + 8))(v37, v92);
      }

      v52 = *(v31 + 24);
      v53 = v106;
      v87(v106, v89, v16);
      v82 = v16;
      v93 = *(v38 + 80);
      v83 = ((v93 + 24) & ~v93) + v17;
      v54 = (v93 + 24) & ~v93;
      v84 = v54;
      v55 = swift_allocObject();
      *(v55 + 16) = v52;
      v56 = *(v38 + 32);
      v107 = v38 + 32;
      v92 = v56;
      v56(v55 + v54, v53, v16);
      sub_1D1176F78(0);
      sub_1D1177B68(&qword_1EC60C230, sub_1D1176F78);
      v57 = v52;
      v58 = v94;
      sub_1D138F75C();
      sub_1D1177B68(&qword_1EC60C288, sub_1D1176EE4);
      v59 = v96;
      v60 = sub_1D138F80C();
      (*(v95 + 8))(v58, v59);
      v108[0] = v60;
      v61 = swift_allocObject();
      v61[2] = v31;
      v61[3] = sub_1D1177418;
      v61[4] = v91;

      sub_1D138F61C();
      sub_1D117712C(0);
      sub_1D1177080();
      v96 = v62;
      sub_1D1177B68(&qword_1EC60C258, sub_1D117712C);
      sub_1D1177B68(&qword_1EC60C250, sub_1D1177080);
      v63 = v97;
      v64 = v82;
      sub_1D138F8AC();

      v65 = swift_allocObject();
      v66 = v90;
      v65[2] = sub_1D1177420;
      v65[3] = v66;
      v65[4] = 0;
      sub_1D11772BC();
      sub_1D1177B68(&qword_1EC60C270, sub_1D1176F98);

      v67 = v99;
      v68 = v100;
      sub_1D138F84C();

      (*(v98 + 8))(v63, v67);
      v69 = swift_allocObject();
      *(v69 + 16) = sub_1D1177450;
      *(v69 + 24) = v31;

      sub_1D138F61C();
      sub_1D1177B68(&qword_1EC60C280, sub_1D1177210);
      v71 = v102;
      v70 = v103;
      v72 = v64;
      sub_1D138F8AC();

      (*(v101 + 8))(v68, v71);
      v73 = v106;
      v74 = v72;
      v87(v106, v89, v72);
      v75 = (v83 + 7) & 0xFFFFFFFFFFFFFFF8;
      v76 = swift_allocObject();
      *(v76 + 16) = v31;
      v92(v76 + v84, v73, v74);
      v77 = (v76 + v75);
      v78 = v85;
      *v77 = sub_1D1177428;
      v77[1] = v78;
      sub_1D1177B68(&qword_1EC60C290, sub_1D117732C);

      v79 = v105;
      sub_1D138F85C();

      (*(v104 + 8))(v70, v79);
      swift_beginAccess();
      sub_1D138F63C();
      swift_endAccess();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1D117571C(void *a1, uint64_t a2)
{
  if (qword_1EE06AD00 != -1)
  {
    swift_once();
  }

  sub_1D138D1CC();
  sub_1D138D1CC();
  v24 = objc_opt_self();
  v3 = [v24 sharedBehavior];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 isiPad];

    v6 = v5;
    v7 = sub_1D139012C();

    v8 = sub_1D139012C();

    v9 = [objc_opt_self() alertControllerWithTitle:v7 message:v8 preferredStyle:v6];

    v10 = [v9 popoverPresentationController];
    [v10 setSourceItem_];

    sub_1D138D1CC();
    v11 = swift_allocObject();
    *(v11 + 16) = v2;
    *(v11 + 24) = a1;

    v23 = a1;
    v12 = sub_1D139012C();

    aBlock[4] = sub_1D1177460;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D10CB11C;
    aBlock[3] = &block_descriptor_65_0;
    v13 = _Block_copy(aBlock);

    v14 = objc_opt_self();
    v15 = [v14 actionWithTitle:v12 style:2 handler:{v13, 0xE000000000000000}];
    _Block_release(v13);

    [v9 addAction_];
    v16 = [v24 sharedBehavior];
    if (v16)
    {
      v17 = v16;
      v18 = [v16 isiPad];

      sub_1D138D1CC();
      v19 = sub_1D139012C();

      v20 = [v14 actionWithTitle:v19 style:v18 ^ 1 handler:{0, 0xE000000000000000}];

      [v9 addAction_];
      [v23 presentViewController:v9 animated:1 completion:0];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1D1175B38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  sub_1D1176D9C(0, &qword_1EE06B500, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v25 - v16;
  v18 = *(a1 + 32);
  if (a3)
  {
    sub_1D138D52C();
    v19 = sub_1D138D57C();
    (*(*(v19 - 8) + 56))(v17, 0, 1, v19);
  }

  else
  {
    v20 = sub_1D138D57C();
    (*(*(v20 - 8) + 56))(v17, 1, 1, v20);
  }

  if (a4)
  {
    sub_1D138D52C();
    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  v22 = sub_1D138D57C();
  (*(*(v22 - 8) + 56))(v15, v21, 1, v22);

  v23 = a6;
  v18(a2, v17, v15, a5, a6);

  sub_1D109AC18(v15);
  return sub_1D109AC18(v17);
}

void sub_1D1175D54(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  sub_1D1176D9C(0, &qword_1EE06A650, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v18 - v10;
  if ([a2 isSharingToProvider] && (v12 = objc_msgSend(a2, sel_clinicalSharingStatus), v13 = objc_msgSend(v12, sel_multiDeviceStatus), v12, v13 == 2) && objc_msgSend(a2, sel_needsRelogin))
  {
    v14 = sub_1D13905DC();
    (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = a3;
    v15[5] = a2;
    v15[6] = a4;

    v16 = a2;
    v17 = a4;
    sub_1D107877C(0, 0, v11, &unk_1D13A5E78, v15);
  }

  else
  {
    sub_1D11745C8(a4, a5);
  }
}

uint64_t sub_1D1175F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D1175F40, 0, 0);
}

uint64_t sub_1D1175F40()
{
  v0[5] = *(v0[2] + OBJC_IVAR____TtC15HealthRecordsUI17AccountActionItem_manager);
  sub_1D13905AC();
  v0[6] = sub_1D139059C();
  v2 = sub_1D139055C();

  return MEMORY[0x1EEE6DFA0](sub_1D1175FEC, v2, v1);
}

uint64_t sub_1D1175FEC()
{
  v2 = v0[3];
  v1 = v0[4];

  sub_1D13181AC(v2, v1);
  v3 = v0[1];

  return v3();
}

uint64_t sub_1D1176064(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1D1176EE4();
  v77 = v5;
  v76 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v75 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1176F98();
  v80 = *(v7 - 8);
  v81 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v78 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1177210();
  v84 = *(v9 - 8);
  v85 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v82 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D117732C();
  v87 = *(v11 - 8);
  v88 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v86 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D138D5EC();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v92 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v71 - v17;
  v73 = sub_1D138F0BC();
  v72 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v20 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a2 + OBJC_IVAR____TtC15HealthRecordsUI17AccountActionItem_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  v23 = *(v21 + 8);
  v24 = *(a2 + OBJC_IVAR____TtC15HealthRecordsUI17AccountActionItem_manager);
  v25 = a2 + OBJC_IVAR____TtC15HealthRecordsUI17AccountActionItem_accountID;
  v26 = swift_allocObject();
  *(v26 + 16) = Strong;
  *(v26 + 24) = v23;
  v94 = v26;
  v27 = swift_allocObject();
  *(v27 + 16) = Strong;
  *(v27 + 24) = v23;
  v93 = v27;
  v28 = swift_allocObject();
  v28[2] = Strong;
  v28[3] = v23;
  v79 = v28;
  v28[4] = a3;
  v83 = Strong;
  swift_unknownObjectRetain_n();
  v29 = a3;
  sub_1D138F06C();
  v95 = v13;
  v96 = v14;
  v30 = *(v14 + 16);
  v90 = v14 + 16;
  v91 = v25;
  v89 = v30;
  v30(v18, v25, v13);

  v31 = sub_1D138F0AC();
  v32 = sub_1D139081C();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v97[0] = v34;
    *v33 = 136315394;
    v35 = sub_1D131B120();
    v37 = sub_1D11DF718(v35, v36, v97);

    *(v33 + 4) = v37;
    *(v33 + 12) = 2080;
    sub_1D1177B68(&qword_1EC60D1C0, MEMORY[0x1E69695A8]);
    v38 = v95;
    v39 = sub_1D13915CC();
    v41 = v40;
    (*(v96 + 8))(v18, v38);
    v42 = sub_1D11DF718(v39, v41, v97);

    *(v33 + 14) = v42;
    _os_log_impl(&dword_1D101F000, v31, v32, "%s starting to delete account %s", v33, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38882F0](v34, -1, -1);
    MEMORY[0x1D38882F0](v33, -1, -1);
  }

  else
  {

    (*(v96 + 8))(v18, v95);
  }

  (*(v72 + 8))(v20, v73);
  v43 = *(v24 + 24);
  v44 = v92;
  v45 = v95;
  v89(v92, v91, v95);
  v73 = *(v96 + 80);
  v46 = v96;
  v71 = &v74[(v73 + 24) & ~v73];
  v47 = (v73 + 24) & ~v73;
  v72 = v47;
  v48 = swift_allocObject();
  *(v48 + 16) = v43;
  v49 = *(v46 + 32);
  v96 = v46 + 32;
  v74 = v49;
  (v49)(v48 + v47, v44, v45);
  sub_1D1176F78(0);
  sub_1D1177B68(&qword_1EC60C230, sub_1D1176F78);
  v50 = v43;
  v51 = v75;
  sub_1D138F75C();
  sub_1D1177B68(&qword_1EC60C288, sub_1D1176EE4);
  v52 = v77;
  v53 = sub_1D138F80C();
  (*(v76 + 8))(v51, v52);
  v97[0] = v53;
  v54 = swift_allocObject();
  v54[2] = v24;
  v54[3] = sub_1D1177BCC;
  v54[4] = v94;

  sub_1D138F61C();
  sub_1D117712C(0);
  sub_1D1177080();
  v77 = v55;
  sub_1D1177B68(&qword_1EC60C258, sub_1D117712C);
  sub_1D1177B68(&qword_1EC60C250, sub_1D1177080);
  v56 = v78;
  sub_1D138F8AC();

  v57 = swift_allocObject();
  v58 = v93;
  v57[2] = sub_1D1177BD0;
  v57[3] = v58;
  v57[4] = 0;
  sub_1D11772BC();
  sub_1D1177B68(&qword_1EC60C270, sub_1D1176F98);

  v59 = v81;
  v60 = v82;
  sub_1D138F84C();

  (*(v80 + 8))(v56, v59);
  v61 = swift_allocObject();
  *(v61 + 16) = sub_1D1177BEC;
  *(v61 + 24) = v24;

  sub_1D138F61C();
  sub_1D1177B68(&qword_1EC60C280, sub_1D1177210);
  v63 = v85;
  v62 = v86;
  sub_1D138F8AC();

  (*(v84 + 8))(v60, v63);
  v64 = v92;
  v89(v92, v91, v45);
  v65 = (v71 + 7) & 0xFFFFFFFFFFFFFFF8;
  v66 = swift_allocObject();
  *(v66 + 16) = v24;
  (v74)(v66 + v72, v64, v45);
  v67 = (v66 + v65);
  v68 = v79;
  *v67 = sub_1D1177BC0;
  v67[1] = v68;
  sub_1D1177B68(&qword_1EC60C290, sub_1D117732C);

  v69 = v88;
  sub_1D138F85C();

  (*(v87 + 8))(v62, v69);
  swift_beginAccess();
  sub_1D138F63C();
  swift_endAccess();
  swift_unknownObjectRelease();
}

id sub_1D1176C74(uint64_t a1)
{
  v2 = *(v1 + 24);
  [*(v1 + 16) presentViewController:a1 animated:1 completion:0];

  return [v2 setUserInteractionEnabled_];
}

void sub_1D1176D04()
{
  v1 = *(v0 + 64);
  if (*(v0 + 40))
  {
    v2 = 0;
  }

  else
  {
    v2 = *(v0 + 32);
  }

  sub_1D1173B7C(*(v0 + 24), v2, *(v0 + 48), *(v0 + 56));
  v4 = v3;
  v1();
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1D1176D9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D1176E00(uint64_t a1)
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

  return sub_1D1175F1C(a1, v4, v5, v6, v7, v8);
}

void sub_1D1176EE4()
{
  if (!qword_1EC60C210)
  {
    sub_1D1176F78(255);
    sub_1D1177B68(&qword_1EC60C230, sub_1D1176F78);
    v0 = sub_1D138F76C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60C210);
    }
  }
}

void sub_1D1176F98()
{
  if (!qword_1EC60C238)
  {
    sub_1D1177080();
    sub_1D117712C(255);
    sub_1D1177B68(&qword_1EC60C250, sub_1D1177080);
    sub_1D1177B68(&qword_1EC60C258, sub_1D117712C);
    v0 = sub_1D138F59C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60C238);
    }
  }
}

void sub_1D1177080()
{
  if (!qword_1EC60C240)
  {
    sub_1D138D5EC();
    type metadata accessor for ClinicalAccountManager.FlowError();
    sub_1D1177B68(&qword_1EC60C228, type metadata accessor for ClinicalAccountManager.FlowError);
    v0 = sub_1D138F62C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60C240);
    }
  }
}

void sub_1D117714C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D106F934(255, &qword_1EC609A00);
    v7 = type metadata accessor for ClinicalAccountManager.FlowError();
    v8 = sub_1D1177B68(&qword_1EC60C228, type metadata accessor for ClinicalAccountManager.FlowError);
    v9 = a3(a1, v6, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1D1177210()
{
  if (!qword_1EC60C260)
  {
    sub_1D1176F98();
    sub_1D11772BC();
    sub_1D1177B68(&qword_1EC60C270, sub_1D1176F98);
    v0 = sub_1D138F54C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60C260);
    }
  }
}

void sub_1D11772BC()
{
  if (!qword_1EC60C268)
  {
    sub_1D138D5EC();
    type metadata accessor for HKClinicalAccountDeletionReason(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC60C268);
    }
  }
}

void sub_1D117732C()
{
  if (!qword_1EC60C278)
  {
    sub_1D1177080();
    sub_1D1177210();
    sub_1D1177B68(&qword_1EC60C250, sub_1D1177080);
    sub_1D1177B68(&qword_1EC60C280, sub_1D1177210);
    v0 = sub_1D138F59C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60C278);
    }
  }
}

uint64_t objectdestroy_46Tm()
{
  v1 = sub_1D138D5EC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D117752C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(sub_1D138D5EC() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_1D1320264(v4, v5, a1);
}

uint64_t objectdestroy_49Tm()
{

  if (*(v0 + 24))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroy_52Tm()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D1177628@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 16);
  sub_1D11772BC();
  result = v5(a1, *(a1 + *(v6 + 48)));
  *a2 = result;
  return result;
}

uint64_t objectdestroy_58Tm()
{
  v1 = sub_1D138D5EC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1D1177754(uint64_t a1)
{
  v3 = *(sub_1D138D5EC() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 8);

  return sub_1D131C4F8(a1, v5, v1 + v4, v7, v8);
}

uint64_t sub_1D11777F8(void *a1, uint64_t a2)
{
  v5 = sub_1D138D5EC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + OBJC_IVAR____TtC15HealthRecordsUI17DeleteAccountItem_account) = a1;
  v9 = a1;
  if ([v9 isSourceType])
  {
    if (qword_1EE06AD00 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  if (qword_1EE06AD00 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:
  v10 = sub_1D138D1CC();
  v12 = v11;
  v13 = [v9 identifier];
  sub_1D138D5CC();

  v14 = [objc_opt_self() systemRedColor];
  v15 = [objc_opt_self() preferredFontForTextStyle_];
  *(v2 + OBJC_IVAR____TtC15HealthRecordsUI17AccountActionItem_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  (*(v6 + 32))(v2 + OBJC_IVAR____TtC15HealthRecordsUI17AccountActionItem_accountID, v8, v5);
  *(v2 + OBJC_IVAR____TtC15HealthRecordsUI17AccountActionItem_manager) = a2;
  v16 = (v2 + OBJC_IVAR____TtC15HealthRecordsUI17AccountActionItem_labelText);
  *v16 = v10;
  v16[1] = v12;
  *(v2 + OBJC_IVAR____TtC15HealthRecordsUI17AccountActionItem_labelColor) = v14;
  *(v2 + OBJC_IVAR____TtC15HealthRecordsUI17AccountActionItem_labelFont) = v15;
  *(v2 + OBJC_IVAR____TtC15HealthRecordsUI17AccountActionItem_shouldAlignWithImageInsetText) = 0;
  return v2;
}

void sub_1D1177AD0()
{
  if (!qword_1EC60C298)
  {
    type metadata accessor for DeleteAccountSourceDataSource(255);
    v0 = sub_1D138E12C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60C298);
    }
  }
}

uint64_t sub_1D1177B30(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 2)
  {
  }

  return result;
}

uint64_t sub_1D1177B48(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 2)
  {
  }

  return result;
}

uint64_t sub_1D1177B68(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t CategoryCountDataProvider.__allocating_init(healthStore:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_1D1177C34(uint64_t a1, void *a2)
{
  v26 = a2;
  sub_1D1177FA8(0);
  v5 = v4;
  v27 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1178140(0, &qword_1EE0696D0, sub_1D1177FA8, sub_1D11781C0, MEMORY[0x1E695BCC8]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v25 - v11;
  sub_1D11868D4(0, &qword_1EE069680, sub_1D1178070, MEMORY[0x1E695C000]);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v25 - v16;
  if (*(a1 + 16))
  {
    v18 = swift_allocObject();
    v18[2] = v2;
    v18[3] = a1;
    v25 = v9;
    v19 = v5;
    v20 = v26;
    v18[4] = v26;
    sub_1D1177FF0();
    sub_1D11780C4();

    v21 = v20;
    sub_1D138F75C();
    v28 = 0;
    sub_1D11781C0();
    sub_1D138F82C();
    (*(v27 + 8))(v7, v19);
    sub_1D11782AC();
    v22 = v25;
    v23 = sub_1D138F80C();
    (*(v10 + 8))(v12, v22);
  }

  else
  {
    v28 = sub_1D109E3AC(MEMORY[0x1E69E7CC0]);
    sub_1D1178070(0);
    sub_1D138F71C();
    sub_1D11847CC();
    v23 = sub_1D138F80C();
    (*(v15 + 8))(v17, v14);
  }

  return v23;
}

void sub_1D1177FF0()
{
  if (!qword_1EE069650)
  {
    sub_1D1178070(255);
    sub_1D1080EA4(255, &qword_1EE06B690);
    v0 = sub_1D138F72C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE069650);
    }
  }
}

uint64_t sub_1D11780F8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D1178140(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t sub_1D11781F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  sub_1D1177FF0();
  swift_allocObject();
  v9 = a3;

  result = sub_1D138F73C();
  *a4 = result;
  return result;
}

unint64_t sub_1D11782AC()
{
  result = qword_1EE0696D8;
  if (!qword_1EE0696D8)
  {
    sub_1D1178140(255, &qword_1EE0696D0, sub_1D1177FA8, sub_1D11781C0, MEMORY[0x1E695BCC8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0696D8);
  }

  return result;
}

uint64_t sub_1D1178348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;

  sub_1D1184F00(a4, a5, a3, sub_1D10A918C, v10);
}

void sub_1D11783E4(uint64_t a1, void *a2, void (*a3)(unint64_t, void), uint64_t a4)
{
  sub_1D1184854();
  v99 = v9;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v98 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v97 = &v91 - v12;
  v13 = type metadata accessor for BrowseCategory();
  v14 = MEMORY[0x1EEE9AC00](v13);
  v102 = &v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v91 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v22 = &v91 - v21;
  v23 = *(a1 + 16);
  if (!v23)
  {
    v39 = sub_1D109E3AC(MEMORY[0x1E69E7CC0]);
    a3(v39, 0);

    return;
  }

  v92 = a3;
  v93 = a4;
  v94 = v4;
  v91 = v19;
  v24 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v25 = a1 + v24;
  v26 = *(v20 + 72);
  v27 = MEMORY[0x1E69E7CC0];
  do
  {
    sub_1D11864BC(v25, v22, type metadata accessor for BrowseCategory);
    sub_1D10F36E4(v22, v18);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v27;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1D10FDF04(0, *(v27 + 16) + 1, 1);
      v27 = aBlock[0];
    }

    v30 = *(v27 + 16);
    v29 = *(v27 + 24);
    if (v30 >= v29 >> 1)
    {
      sub_1D10FDF04(v29 > 1, v30 + 1, 1);
      v27 = aBlock[0];
    }

    *(v27 + 16) = v30 + 1;
    sub_1D10F36E4(v18, v27 + v24 + v30 * v26);
    v25 += v26;
    --v23;
  }

  while (v23);
  v31 = a2;
  v32 = sub_1D118495C(v27, a2);

  v33 = sub_1D12DF048(v32);

  v34 = sub_1D109E5FC(MEMORY[0x1E69E7CC0]);
  v96 = v33;
  if ((v33 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1D139108C();
    type metadata accessor for CategoryRecordQueryDescription();
    sub_1D11780F8(qword_1EE06B1E8, type metadata accessor for CategoryRecordQueryDescription);
    sub_1D139070C();
    v33 = aBlock[7];
    v35 = aBlock[8];
    v37 = aBlock[9];
    v36 = aBlock[10];
    v38 = aBlock[11];
  }

  else
  {
    v40 = -1 << *(v33 + 32);
    v35 = v33 + 56;
    v37 = ~v40;
    v41 = -v40;
    if (v41 < 64)
    {
      v42 = ~(-1 << v41);
    }

    else
    {
      v42 = -1;
    }

    v38 = v42 & *(v33 + 56);

    v36 = 0;
  }

  v95 = v37;
  v43 = (v37 + 64) >> 6;
  v100 = v33;
  while (v33 < 0)
  {
    v49 = sub_1D139110C();
    if (!v49 || (v103 = v49, type metadata accessor for CategoryRecordQueryDescription(), swift_dynamicCast(), v48 = aBlock[0], v46 = v36, v47 = v38, !aBlock[0]))
    {
LABEL_45:
      sub_1D102CC30();

      aBlock[0] = MEMORY[0x1E69E7CD0];
      v69 = 1 << *(v34 + 32);
      v70 = -1;
      if (v69 < 64)
      {
        v70 = ~(-1 << v69);
      }

      v71 = v70 & *(v34 + 64);
      v72 = (v69 + 63) >> 6;

      v73 = 0;
      v75 = v97;
      v74 = v98;
      while (v71)
      {
        v76 = v73;
LABEL_53:
        v77 = __clz(__rbit64(v71));
        v71 &= v71 - 1;
        v78 = v77 | (v76 << 6);
        sub_1D11864BC(*(v34 + 48) + v26 * v78, v75, type metadata accessor for BrowseCategory);
        v79 = v99;
        *(v75 + *(v99 + 48)) = *(*(v34 + 56) + 8 * v78);
        sub_1D11864BC(v75, v74, sub_1D1184854);
        v80 = *(v74 + *(v79 + 48));

        v81 = sub_1D12DF1B4(v80);

        sub_1D1184CE4(v74, type metadata accessor for BrowseCategory);
        sub_1D1178DEC(v81);
        sub_1D1184CE4(v75, sub_1D1184854);
      }

      while (1)
      {
        v76 = v73 + 1;
        if (__OFADD__(v73, 1))
        {
          break;
        }

        if (v76 >= v72)
        {

          v82 = swift_allocObject();
          v83 = v93;
          v82[2] = v92;
          v82[3] = v83;
          v82[4] = v34;
          v84 = objc_allocWithZone(MEMORY[0x1E696C3B0]);
          sub_1D106F934(0, &qword_1EE06A630);
          sub_1D109D274(&qword_1EE06A628, &qword_1EE06A630);

          v85 = sub_1D13906AC();

          aBlock[4] = sub_1D1184D44;
          aBlock[5] = v82;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1D1179344;
          aBlock[3] = &block_descriptor_23;
          v86 = _Block_copy(aBlock);
          v87 = [v84 initWithQueryDescriptors:v85 resultsHandler:{v86, v91}];

          _Block_release(v86);

          v88 = v94;
          aBlock[0] = v94;
          type metadata accessor for CategoryCountDataProvider();
          v89 = v87;

          sub_1D13901EC();
          v90 = sub_1D139012C();

          [v89 setDebugIdentifier_];

          [*(v88 + 16) executeQuery_];
          return;
        }

        v71 = *(v34 + 64 + 8 * v76);
        ++v73;
        if (v71)
        {
          v73 = v76;
          goto LABEL_53;
        }
      }

      __break(1u);
      goto LABEL_57;
    }

LABEL_29:
    v101 = v47;
    v50 = OBJC_IVAR____TtC15HealthRecordsUI30CategoryRecordQueryDescription_category;
    if (*(v34 + 16) && (v51 = sub_1D129E5D8(v48 + OBJC_IVAR____TtC15HealthRecordsUI30CategoryRecordQueryDescription_category), (v52 & 1) != 0))
    {
      aBlock[0] = *(*(v34 + 56) + 8 * v51);
    }

    else
    {
      aBlock[0] = MEMORY[0x1E69E7CC0];
    }

    MEMORY[0x1D3885D90](*(v48 + OBJC_IVAR____TtC15HealthRecordsUI30CategoryRecordQueryDescription_queryDescriptor));
    if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D13904BC();
    }

    sub_1D13904FC();
    v53 = aBlock[0];
    v54 = v102;
    sub_1D11864BC(v48 + v50, v102, type metadata accessor for BrowseCategory);
    v55 = swift_isUniquelyReferenced_nonNull_native();
    v103 = v34;
    v56 = sub_1D129E5D8(v54);
    v58 = *(v34 + 16);
    v59 = (v57 & 1) == 0;
    v60 = __OFADD__(v58, v59);
    v61 = v58 + v59;
    if (v60)
    {
      goto LABEL_58;
    }

    v62 = v57;
    if (*(v34 + 24) < v61)
    {
      sub_1D117D838(v61, v55);
      v56 = sub_1D129E5D8(v102);
      if ((v62 & 1) != (v63 & 1))
      {
        goto LABEL_60;
      }

LABEL_40:
      v34 = v103;
      if (v62)
      {
        goto LABEL_18;
      }

      goto LABEL_41;
    }

    if (v55)
    {
      goto LABEL_40;
    }

    v68 = v56;
    sub_1D1182E2C();
    v56 = v68;
    v34 = v103;
    if (v62)
    {
LABEL_18:
      *(*(v34 + 56) + 8 * v56) = v53;

      sub_1D1184CE4(v102, type metadata accessor for BrowseCategory);
      goto LABEL_19;
    }

LABEL_41:
    *(v34 + 8 * (v56 >> 6) + 64) |= 1 << v56;
    v64 = v56;
    v65 = v102;
    sub_1D11864BC(v102, *(v34 + 48) + v26 * v56, type metadata accessor for BrowseCategory);
    *(*(v34 + 56) + 8 * v64) = v53;

    sub_1D1184CE4(v65, type metadata accessor for BrowseCategory);
    v66 = *(v34 + 16);
    v60 = __OFADD__(v66, 1);
    v67 = v66 + 1;
    if (v60)
    {
      goto LABEL_59;
    }

    *(v34 + 16) = v67;
LABEL_19:
    v36 = v46;
    v33 = v100;
    v38 = v101;
  }

  v44 = v36;
  v45 = v38;
  v46 = v36;
  if (v38)
  {
LABEL_25:
    v47 = (v45 - 1) & v45;
    v48 = *(*(v33 + 48) + ((v46 << 9) | (8 * __clz(__rbit64(v45)))));

    if (!v48)
    {
      goto LABEL_45;
    }

    goto LABEL_29;
  }

  while (1)
  {
    v46 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      break;
    }

    if (v46 >= v43)
    {
      goto LABEL_45;
    }

    v45 = *(v35 + 8 * v46);
    ++v44;
    if (v45)
    {
      goto LABEL_25;
    }
  }

LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  sub_1D13916CC();
  __break(1u);
}

void sub_1D1178DEC(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_1D139108C();
    sub_1D106F934(0, &qword_1EE06A630);
    sub_1D109D274(&qword_1EE06A628, &qword_1EE06A630);
    sub_1D139070C();
    v1 = v14[1];
    v2 = v14[2];
    v3 = v14[3];
    v4 = v14[4];
    v5 = v14[5];
  }

  else
  {
    v4 = 0;
    v6 = -1 << *(a1 + 32);
    v2 = (a1 + 56);
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = (v8 & *(a1 + 56));
  }

  if ((v1 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v9 = v4;
    v10 = v5;
    v11 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v12 = (v10 - 1) & v10;
    v13 = *(*(v1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v13)
    {
LABEL_18:
      sub_1D102CC30();
      return;
    }

    while (1)
    {
      sub_1D10E5504(v14, v13);

      v4 = v11;
      v5 = v12;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_1D139110C())
      {
        sub_1D106F934(0, &qword_1EE06A630);
        swift_dynamicCast();
        v13 = v14[0];
        v11 = v4;
        v12 = v5;
        if (v14[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v11 = (v9 + 1);
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= ((v3 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v10 = v2[v11];
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_1D1178FE4(uint64_t a1, unint64_t a2, void *a3, void (*a4)(void, void), uint64_t a5, uint64_t a6)
{
  v11 = sub_1D138F0BC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v15 = a3;
    sub_1D138F04C();
    v16 = a3;
    v17 = sub_1D138F0AC();
    v18 = sub_1D13907FC();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v33 = a4;
      v20 = v19;
      v21 = swift_slowAlloc();
      v32[1] = a5;
      v22 = v21;
      v35 = v21;
      *v20 = 136446210;
      v34 = a3;
      v23 = a3;
      sub_1D1080EA4(0, &qword_1EE06B690);
      sub_1D13916AC();
      v24 = HKSensitiveLogItem();
      swift_unknownObjectRelease();
      sub_1D139101C();
      swift_unknownObjectRelease();
      v25 = sub_1D139020C();
      v27 = sub_1D11DF718(v25, v26, &v35);

      *(v20 + 4) = v27;
      _os_log_impl(&dword_1D101F000, v17, v18, "Error fetching categories: %{public}s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x1D38882F0](v22, -1, -1);
      v28 = v20;
      a4 = v33;
      MEMORY[0x1D38882F0](v28, -1, -1);
    }

    (*(v12 + 8))(v14, v11);
    v29 = a3;
    a4(a3, 1);
  }

  else
  {
    if (a2)
    {

      v30 = _sSD15HealthRecordsUIAA14BrowseCategoryORszSiRs_rlE_019queryDescriptionsByE0SDyACSiGSDySo17HKQueryDescriptorCSo8NSNumberCG_SDyACSayAGGGtcfC_0(a2, a6);
      a4(v30, 0);
    }

    else
    {
      v31 = sub_1D109E3AC(MEMORY[0x1E69E7CC0]);
      a4(v31, 0);
    }
  }
}

uint64_t CategoryCountDataProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D1179344(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v7 = *(a1 + 32);
  if (a3)
  {
    sub_1D106F934(0, &qword_1EE06A630);
    sub_1D106F934(0, &qword_1EE06B6C0);
    sub_1D109D274(&qword_1EE06A628, &qword_1EE06A630);
    v5 = sub_1D138FFFC();
  }

  v8 = a2;
  v9 = a4;
  v7(v8, v5, a4);
}

uint64_t sub_1D1179474(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1D10A0888();
  v35 = a2;
  result = sub_1D139142C();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = *(v5 + 56) + 72 * v20;
      if (v35)
      {
        v23 = *v22;
        v38 = *(v22 + 16);
        v36 = *(v22 + 8);
        v37 = *(v22 + 24);
        v40 = *(v22 + 32);
        v39 = *(v22 + 40);
        v41 = *(v22 + 56);
      }

      else
      {
        v24 = *(v22 + 16);
        v25 = *(v22 + 32);
        v26 = *(v22 + 48);
        *&v44[32] = *(v22 + 64);
        *v44 = v25;
        *&v44[16] = v26;
        v43[1] = v24;
        v43[0] = *v22;
        v41 = *&v44[24];
        v39 = *&v44[8];
        v40 = v25;
        v37 = *(&v24 + 1);
        v38 = v24;
        v36 = *(&v43[0] + 1);
        v23 = v43[0];
        sub_1D1082914(v43, v42);
      }

      sub_1D139177C();
      MEMORY[0x1D38870E0](v21);
      result = sub_1D13917CC();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v21;
      v16 = *(v7 + 56) + 72 * v15;
      *v16 = v23;
      *(v16 + 8) = v36;
      *(v16 + 16) = v38;
      *(v16 + 24) = v37;
      *(v16 + 32) = v40;
      *(v16 + 40) = v39;
      *(v16 + 56) = v41;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1D11797AC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1D1186284(0, &qword_1EC609C90);
  v37 = a2;
  result = sub_1D139142C();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_1D139177C();
      sub_1D139027C();
      result = sub_1D13917CC();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1D1179A7C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1D1186018(0, &qword_1EC609F00, sub_1D10E3C10, MEMORY[0x1E69E6EC8]);
  v60 = a2;
  result = sub_1D139142C();
  v7 = result;
  if (*(v5 + 16))
  {
    v58 = v3;
    v59 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    v61 = result;
    while (1)
    {
      if (!v12)
      {
        v22 = v8;
        while (1)
        {
          v8 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            __break(1u);
            goto LABEL_60;
          }

          if (v8 >= v13)
          {
            break;
          }

          v23 = v9[v8];
          ++v22;
          if (v23)
          {
            v20 = __clz(__rbit64(v23));
            v21 = (v23 - 1) & v23;
            goto LABEL_15;
          }
        }

        if ((v60 & 1) == 0)
        {

          v3 = v58;
          goto LABEL_58;
        }

        v57 = 1 << *(v5 + 32);
        v3 = v58;
        if (v57 >= 64)
        {
          bzero(v9, ((v57 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v9 = -1 << v57;
        }

        *(v5 + 16) = 0;
        break;
      }

      v20 = __clz(__rbit64(v12));
      v21 = (v12 - 1) & v12;
LABEL_15:
      v24 = v20 | (v8 << 6);
      v62 = v21;
      if (v60)
      {
        v25 = *(v5 + 56);
        v26 = (*(v5 + 48) + 72 * v24);
        v27 = *v26;
        v28 = *(v26 + 1);
        v29 = *(v26 + 2);
        v31 = *(v26 + 3);
        v30 = *(v26 + 4);
        v67 = *(v26 + 56);
        v68 = *(v26 + 40);
        v65 = *(v25 + 8 * v24);
      }

      else
      {
        v32 = *(v5 + 48) + 72 * v24;
        v33 = *(v32 + 16);
        v34 = *(v32 + 32);
        v35 = *(v32 + 48);
        *&v71[32] = *(v32 + 64);
        *&v71[16] = v35;
        v36 = *v32;
        v70[1] = v33;
        *v71 = v34;
        v70[0] = v36;
        v37 = *(*(v5 + 56) + 8 * v24);
        v67 = *&v71[24];
        v68 = *&v71[8];
        v31 = *(&v33 + 1);
        v30 = v34;
        v28 = *(&v36 + 1);
        v29 = v33;
        v27 = v36;
        sub_1D1082914(v70, v69);
        v65 = v37;
      }

      sub_1D139177C();
      MEMORY[0x1D38870E0](v27);
      sub_1D1390D9C();
      v63 = v31;
      sub_1D139179C();
      if (v31)
      {
        sub_1D139027C();
      }

      v66 = v29;
      v64 = v30;
      sub_1D139027C();
      if (*(&v68 + 1) >> 62)
      {
        v55 = sub_1D13910DC();
        MEMORY[0x1D38870E0](v55);
        result = sub_1D13910DC();
        v38 = result;
        if (!result)
        {
          goto LABEL_29;
        }
      }

      else
      {
        result = MEMORY[0x1D38870E0](*((*(&v68 + 1) & 0xFFFFFFFFFFFFFF8) + 0x10));
        v38 = *((*(&v68 + 1) & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v38)
        {
          goto LABEL_29;
        }
      }

      if (v38 < 1)
      {
        goto LABEL_61;
      }

      if ((*(&v68 + 1) & 0xC000000000000001) != 0)
      {
        for (i = 0; i != v38; ++i)
        {
          MEMORY[0x1D3886B70](i, *(&v68 + 1));
          sub_1D1390D9C();
          swift_unknownObjectRelease();
        }
      }

      else
      {
        v40 = (*(&v68 + 1) + 32);
        do
        {
          v41 = *v40++;
          v42 = v41;
          sub_1D1390D9C();

          --v38;
        }

        while (v38);
      }

LABEL_29:
      if (v67 >> 62)
      {
        v56 = sub_1D13910DC();
        MEMORY[0x1D38870E0](v56);
        result = sub_1D13910DC();
        v43 = result;
        if (!result)
        {
          goto LABEL_38;
        }
      }

      else
      {
        result = MEMORY[0x1D38870E0](*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10));
        v43 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v43)
        {
          goto LABEL_38;
        }
      }

      if (v43 < 1)
      {
        goto LABEL_62;
      }

      if ((v67 & 0xC000000000000001) != 0)
      {
        for (j = 0; j != v43; ++j)
        {
          MEMORY[0x1D3886B70](j, v67);
          sub_1D1390D9C();
          swift_unknownObjectRelease();
        }
      }

      else
      {
        v45 = (v67 + 32);
        do
        {
          v46 = *v45++;
          v47 = v46;
          sub_1D1390D9C();

          --v43;
        }

        while (v43);
      }

LABEL_38:
      sub_1D1390D9C();
      result = sub_1D13917CC();
      v7 = v61;
      v48 = -1 << *(v61 + 32);
      v49 = result & ~v48;
      v50 = v49 >> 6;
      if (((-1 << v49) & ~*(v14 + 8 * (v49 >> 6))) == 0)
      {
        v51 = 0;
        v52 = (63 - v48) >> 6;
        v5 = v59;
        v17 = v28;
        v16 = v66;
        v18 = v27;
        while (++v50 != v52 || (v51 & 1) == 0)
        {
          v53 = v50 == v52;
          if (v50 == v52)
          {
            v50 = 0;
          }

          v51 |= v53;
          v54 = *(v14 + 8 * v50);
          if (v54 != -1)
          {
            v15 = __clz(__rbit64(~v54)) + (v50 << 6);
            goto LABEL_7;
          }
        }

LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v49) & ~*(v14 + 8 * (v49 >> 6)))) | v49 & 0x7FFFFFFFFFFFFFC0;
      v5 = v59;
      v17 = v28;
      v16 = v66;
      v18 = v27;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v19 = *(v61 + 48) + 72 * v15;
      *v19 = v18;
      *(v19 + 8) = v17;
      *(v19 + 16) = v16;
      *(v19 + 24) = v63;
      *(v19 + 32) = v64;
      *(v19 + 40) = v68;
      *(v19 + 56) = v67;
      *(*(v61 + 56) + 8 * v15) = v65;
      ++*(v61 + 16);
      v12 = v62;
    }
  }

LABEL_58:
  *v3 = v7;
  return result;
}

uint64_t sub_1D1179FF0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1D109D0FC();
  result = sub_1D139142C();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
        v22 = v20;
      }

      result = sub_1D1390D7C();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1D117A254(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1D1185FAC(0, &qword_1EC609E38, type metadata accessor for TimelineViewDataDayCollection);
  v34 = a2;
  result = sub_1D139142C();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_1D139177C();
      sub_1D139027C();
      result = sub_1D13917CC();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1D117A538(uint64_t a1, int a2)
{
  v3 = v2;
  v45 = sub_1D138E52C();
  v5 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_1D1185FAC(0, &qword_1EC609E00, MEMORY[0x1E69A3690]);
  v42 = a2;
  result = sub_1D139142C();
  v9 = result;
  if (*(v7 + 16))
  {
    v38 = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v39 = (v5 + 16);
    v40 = v7;
    v41 = v5;
    v43 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v41 + 72);
      v28 = v23 + v27 * v22;
      if (v42)
      {
        (*v43)(v44, v28, v45);
      }

      else
      {
        (*v39)(v44, v28, v45);
      }

      sub_1D139177C();
      sub_1D139027C();
      result = sub_1D13917CC();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      result = (*v43)(*(v9 + 56) + v27 * v17, v44, v45);
      ++*(v9 + 16);
      v7 = v40;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_1D117A8F4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1D1184E00(0, &qword_1EC609EE0, &qword_1EC609E28, &protocol descriptor for TimelineViewData, sub_1D1080EA4);
  v33 = a2;
  result = sub_1D139142C();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 40 * v20);
      if (v33)
      {
        sub_1D102CC18(v24, v34);
      }

      else
      {
        sub_1D1072E70(v24, v34);
      }

      sub_1D139177C();
      sub_1D139027C();
      result = sub_1D13917CC();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_1D102CC18(v34, *(v7 + 56) + 40 * v15);
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1D117ABF4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1D10A09BC();
  v40 = a2;
  result = sub_1D139142C();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v21 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v24 = v21 | (v8 << 6);
      v25 = (*(v5 + 48) + 16 * v24);
      v26 = *v25;
      v27 = v25[1];
      v28 = *(v5 + 56) + 72 * v24;
      if (v40)
      {
        v41 = *v28;
        v29 = *(v28 + 16);
        v30 = *(v28 + 32);
        v31 = *(v28 + 48);
        v45 = *(v28 + 64);
        v43 = v30;
        v44 = v31;
        v42 = v29;
      }

      else
      {
        sub_1D1186B58(v28, &v41);
      }

      sub_1D139177C();
      sub_1D139027C();
      result = sub_1D13917CC();
      v32 = -1 << *(v7 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v14 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v14 + 8 * v34);
          if (v38 != -1)
          {
            v15 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v33) & ~*(v14 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v26;
      v16[1] = v27;
      v17 = *(v7 + 56) + 72 * v15;
      *v17 = v41;
      v18 = v42;
      v19 = v43;
      v20 = v44;
      *(v17 + 64) = v45;
      *(v17 + 32) = v19;
      *(v17 + 48) = v20;
      *(v17 + 16) = v18;
      ++*(v7 + 16);
    }

    v22 = v8;
    while (1)
    {
      v8 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v23 = v9[v8];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v12 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v39 = 1 << *(v5 + 32);
    v3 = v2;
    if (v39 >= 64)
    {
      bzero((v5 + 64), ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v39;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1D117AEF4(uint64_t a1, char a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  v6 = v5;
  v8 = *v5;
  sub_1D1186ADC(0, a3, a4, a5, MEMORY[0x1E69E6EC8]);
  result = sub_1D139142C();
  v10 = result;
  if (*(v8 + 16))
  {
    v34 = v6;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v8 + 48) + 8 * v22);
      v24 = *(*(v8 + 56) + 8 * v22);
      if ((a2 & 1) == 0)
      {
        v25 = v24;
      }

      result = sub_1D139176C();
      v26 = -1 << *(v10 + 32);
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
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v23;
      *(*(v10 + 56) + 8 * v18) = v24;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
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
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v33 = 1 << *(v8 + 32);
      if (v33 >= 64)
      {
        bzero((v8 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v12 = -1 << v33;
      }

      *(v8 + 16) = 0;
    }

    v6 = v34;
  }

  else
  {
  }

  *v6 = v10;
  return result;
}

uint64_t sub_1D117B180(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1D109F0B0();
  v38 = a2;
  result = sub_1D139142C();
  v7 = result;
  if (*(v5 + 16))
  {
    v37 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (1)
    {
      if (!v12)
      {
        v18 = v8;
        while (1)
        {
          v8 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            __break(1u);
            goto LABEL_42;
          }

          if (v8 >= v13)
          {
            break;
          }

          v19 = v9[v8];
          ++v18;
          if (v19)
          {
            v17 = __clz(__rbit64(v19));
            v12 = (v19 - 1) & v19;
            goto LABEL_15;
          }
        }

        if ((v38 & 1) == 0)
        {

          v3 = v37;
          goto LABEL_40;
        }

        v36 = 1 << *(v5 + 32);
        v3 = v37;
        if (v36 >= 64)
        {
          bzero((v5 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v9 = -1 << v36;
        }

        *(v5 + 16) = 0;
        break;
      }

      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 48) + 32 * v20;
      v22 = *(v21 + 16);
      v39 = *(*(v5 + 56) + 8 * v20);
      v40 = *v21;
      v41 = v22;
      v23 = *(v21 + 8);
      v24 = *(v21 + 24);
      if ((v38 & 1) == 0)
      {
        v25 = *(&v22 + 1);

        v26 = v41;
      }

      sub_1D139177C();
      sub_1D139179C();
      if (v23)
      {
        sub_1D139027C();
      }

      if (v41)
      {
        sub_1D139179C();
        v27 = v41;
        sub_1D1390D9C();

        if (v24)
        {
          goto LABEL_21;
        }
      }

      else
      {
        sub_1D139179C();
        if (v24)
        {
LABEL_21:
          sub_1D139179C();
          v28 = v24;
          sub_1D1390D9C();

          goto LABEL_24;
        }
      }

      sub_1D139179C();
LABEL_24:
      result = sub_1D13917CC();
      v29 = -1 << *(v7 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_42:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 32 * v15);
      *v16 = v40;
      v16[1] = v41;
      *(*(v7 + 56) + 8 * v15) = v39;
      ++*(v7 + 16);
    }
  }

LABEL_40:
  *v3 = v7;
  return result;
}

uint64_t sub_1D117B508(uint64_t a1, char a2, unint64_t *a3, unint64_t *a4, uint64_t a5, unint64_t *a6)
{
  v7 = v6;
  v9 = *v6;
  sub_1D109F4D8(0, a3, a4, a5, a6);
  result = sub_1D139142C();
  v11 = result;
  if (*(v9 + 16))
  {
    v36 = v6;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(*(v9 + 48) + 8 * v23);
      v25 = *(*(v9 + 56) + 8 * v23);
      if ((a2 & 1) == 0)
      {
        v26 = v24;
        v27 = v25;
      }

      result = sub_1D1390D7C();
      v28 = -1 << *(v11 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v19 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v11 + 48) + 8 * v19) = v24;
      *(*(v11 + 56) + 8 * v19) = v25;
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v35 = 1 << *(v9 + 32);
      if (v35 >= 64)
      {
        bzero((v9 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v13 = -1 << v35;
      }

      *(v9 + 16) = 0;
    }

    v7 = v36;
  }

  else
  {
  }

  *v7 = v11;
  return result;
}

uint64_t sub_1D117B804(uint64_t a1, char a2, void (*a3)(void))
{
  v4 = v3;
  v6 = *v3;
  a3(0);
  v36 = a2;
  result = sub_1D139142C();
  v8 = result;
  if (*(v6 + 16))
  {
    v35 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (1)
    {
      if (!v13)
      {
        v19 = v9;
        while (1)
        {
          v9 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            __break(1u);
            goto LABEL_40;
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
            goto LABEL_15;
          }
        }

        if ((v36 & 1) == 0)
        {

          v4 = v3;
          goto LABEL_38;
        }

        v34 = 1 << *(v6 + 32);
        v4 = v3;
        if (v34 >= 64)
        {
          bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v10 = -1 << v34;
        }

        *(v6 + 16) = 0;
        break;
      }

      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = v18 | (v9 << 6);
      v22 = *(v6 + 56);
      v23 = *(v6 + 48) + 48 * v21;
      v39 = *v23;
      v38 = *(v23 + 8);
      v37 = *(v23 + 16);
      v24 = *(v23 + 24);
      v25 = *(v23 + 40);
      v40 = *(v23 + 32);
      v26 = *(v22 + 8 * v21);
      if ((v36 & 1) == 0)
      {
      }

      sub_1D139177C();
      if (v24)
      {
        sub_1D139179C();
        if (v25)
        {
          goto LABEL_19;
        }
      }

      else
      {
        sub_1D139179C();
        MEMORY[0x1D38870E0](v39);
        MEMORY[0x1D38870E0](v38);
        MEMORY[0x1D38870E0](v37);
        if (v25)
        {
LABEL_19:
          sub_1D139179C();
          sub_1D139027C();
          goto LABEL_22;
        }
      }

      sub_1D139179C();
LABEL_22:
      result = sub_1D13917CC();
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
            goto LABEL_7;
          }
        }

LABEL_40:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 48 * v16;
      *v17 = v39;
      *(v17 + 8) = v38;
      *(v17 + 16) = v37;
      *(v17 + 24) = v24;
      *(v17 + 32) = v40;
      *(v17 + 40) = v25;
      *(*(v8 + 56) + 8 * v16) = v26;
      ++*(v8 + 16);
      v6 = v35;
    }
  }

LABEL_38:
  *v4 = v8;
  return result;
}

uint64_t sub_1D117BB48(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_1D138D5EC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1D118642C(0, &qword_1EC609F88, MEMORY[0x1E69695A8], sub_1D109FF3C, sub_1D109F9A8);
  v47 = a2;
  result = sub_1D139142C();
  v11 = result;
  if (*(v9 + 16))
  {
    v50 = v8;
    v51 = v5;
    v43 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v44 = (v6 + 16);
    v45 = v6;
    v48 = (v6 + 32);
    v18 = result + 64;
    v46 = v9;
    while (v16)
    {
      v24 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v27 = v24 | (v12 << 6);
      v28 = *(v9 + 48);
      v49 = *(v6 + 72);
      v29 = v28 + v49 * v27;
      if (v47)
      {
        (*v48)(v50, v29, v51);
        v30 = *(v9 + 56) + 72 * v27;
        v32 = *(v30 + 16);
        v31 = *(v30 + 32);
        v33 = *(v30 + 64);
        v55 = *(v30 + 48);
        v56 = v33;
        v52 = *v30;
        v53 = v32;
        v54 = v31;
      }

      else
      {
        (*v44)(v50, v29, v51);
        sub_1D11864BC(*(v9 + 56) + 72 * v27, &v52, sub_1D109FF3C);
      }

      sub_1D109F9A8();
      result = sub_1D139006C();
      v34 = -1 << *(v11 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v18 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        v6 = v45;
        v9 = v46;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v18 + 8 * v36);
          if (v40 != -1)
          {
            v19 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v35) & ~*(v18 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
      v6 = v45;
      v9 = v46;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v48)(*(v11 + 48) + v49 * v19, v50, v51);
      v20 = *(v11 + 56) + 72 * v19;
      v21 = v53;
      v22 = v54;
      v23 = v55;
      *(v20 + 64) = v56;
      *(v20 + 32) = v22;
      *(v20 + 48) = v23;
      *(v20 + 16) = v21;
      *v20 = v52;
      ++*(v11 + 16);
    }

    v25 = v12;
    while (1)
    {
      v12 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v26 = v13[v12];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v16 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_34;
    }

    v41 = 1 << *(v9 + 32);
    v3 = v43;
    if (v41 >= 64)
    {
      bzero(v13, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v41;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_1D117BF78(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1D109FE84();
  v48 = a2;
  result = sub_1D139142C();
  v7 = result;
  if (*(v5 + 16))
  {
    v46 = v2;
    v47 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 56);
      v24 = *(v5 + 48) + 32 * v22;
      v26 = *v24;
      v25 = *(v24 + 8);
      v27 = *(v24 + 16);
      v53 = *(v24 + 24);
      v28 = (v23 + 48 * v22);
      v51 = *v28;
      v52 = *(v28 + 8);
      v50 = *(v28 + 3);
      v49 = v28[32];
      v29 = *(v28 + 5);
      if ((v48 & 1) == 0)
      {
        v30 = v29;
      }

      sub_1D139177C();
      if (v53)
      {
        v31 = v27 | v25;
        if (v27 | v25 | v26)
        {
          if (v26 == 1 && v31 == 0)
          {
            v34 = 1;
          }

          else if (v26 == 2 && v31 == 0)
          {
            v34 = 2;
          }

          else
          {
            v34 = 3;
          }
        }

        else
        {
          v34 = 0;
        }

        MEMORY[0x1D38870E0](v34);
      }

      else
      {
        MEMORY[0x1D38870E0](4);
        if ((v26 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v35 = v26;
        }

        else
        {
          v35 = 0;
        }

        MEMORY[0x1D3887110](v35);
        if ((v25 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v36 = v25;
        }

        else
        {
          v36 = 0;
        }

        MEMORY[0x1D3887110](v36);
        if ((v27 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v37 = v27;
        }

        else
        {
          v37 = 0;
        }

        MEMORY[0x1D3887110](v37);
      }

      result = sub_1D13917CC();
      v38 = -1 << *(v7 + 32);
      v39 = result & ~v38;
      v40 = v39 >> 6;
      if (((-1 << v39) & ~*(v14 + 8 * (v39 >> 6))) == 0)
      {
        v41 = 0;
        v42 = (63 - v38) >> 6;
        v16 = v29;
        while (++v40 != v42 || (v41 & 1) == 0)
        {
          v43 = v40 == v42;
          if (v40 == v42)
          {
            v40 = 0;
          }

          v41 |= v43;
          v44 = *(v14 + 8 * v40);
          if (v44 != -1)
          {
            v15 = __clz(__rbit64(~v44)) + (v40 << 6);
            goto LABEL_7;
          }
        }

LABEL_60:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v39) & ~*(v14 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
      v16 = v29;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v17 = *(v7 + 48) + 32 * v15;
      *v17 = v26;
      *(v17 + 8) = v25;
      *(v17 + 16) = v27;
      *(v17 + 24) = v53;
      v18 = *(v7 + 56) + 48 * v15;
      *v18 = v51;
      *(v18 + 8) = v52;
      *(v18 + 24) = v50;
      *(v18 + 32) = v49;
      *(v18 + 40) = v16;
      ++*(v7 + 16);
      v5 = v47;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_60;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (v48)
    {
      v45 = 1 << *(v5 + 32);
      if (v45 >= 64)
      {
        bzero(v9, ((v45 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v45;
      }

      *(v5 + 16) = 0;
    }

    v3 = v46;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1D117C300(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_1D138D5EC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1D1185A78(0, &qword_1EC609F40, MEMORY[0x1E69695A8], sub_1D109F9A8);
  v44 = a2;
  result = sub_1D139142C();
  v11 = result;
  if (*(v9 + 16))
  {
    v53 = v8;
    v40 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v41 = (v6 + 16);
    v42 = v9;
    v43 = v6;
    v45 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v25 = v22 | (v12 << 6);
      v26 = *(v9 + 48);
      v52 = *(v43 + 72);
      v27 = v26 + v52 * v25;
      if (v44)
      {
        (*v45)(v53, v27, v5);
        v28 = (*(v9 + 56) + 48 * v25);
        v51 = *v28;
        v29 = *(v28 + 1);
        v49 = *(v28 + 2);
        v50 = v29;
        v48 = *(v28 + 3);
        v47 = v28[32];
        v46 = *(v28 + 5);
      }

      else
      {
        (*v41)(v53, v27, v5);
        v30 = (*(v9 + 56) + 48 * v25);
        v51 = *v30;
        v31 = *(v30 + 1);
        v49 = *(v30 + 2);
        v50 = v31;
        v48 = *(v30 + 3);
        v47 = v30[32];
        v46 = *(v30 + 5);
      }

      sub_1D109F9A8();
      result = sub_1D139006C();
      v32 = -1 << *(v11 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v18 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v18 + 8 * v34);
          if (v38 != -1)
          {
            v19 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v33) & ~*(v18 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v45)(*(v11 + 48) + v52 * v19, v53, v5);
      v20 = *(v11 + 56) + 48 * v19;
      *v20 = v51;
      v21 = v49;
      *(v20 + 8) = v50;
      *(v20 + 16) = v21;
      *(v20 + 24) = v48;
      *(v20 + 32) = v47;
      *(v20 + 40) = v46;
      ++*(v11 + 16);
      v9 = v42;
    }

    v23 = v12;
    while (1)
    {
      v12 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v24 = v13[v12];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v16 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_34;
    }

    v39 = 1 << *(v9 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v13, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v39;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_1D117C750(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1D1186284(0, &qword_1EC60C2B0);
  result = sub_1D139142C();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(v5 + 56) + 24 * v20;
      v23 = *v22;
      v33 = *(v22 + 8);
      if ((a2 & 1) == 0)
      {
      }

      result = sub_1D139176C();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = *(v7 + 56) + 24 * v15;
      *v16 = v23;
      *(v16 + 8) = v33;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1D117C9F4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1D1186284(0, &qword_1EC609F28);
  v33 = a2;
  result = sub_1D139142C();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_1D109E39C(v24, v34);
      }

      else
      {
        sub_1D109F94C(v24, v34);
      }

      sub_1D139177C();
      sub_1D139027C();
      result = sub_1D13917CC();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_1D109E39C(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1D117CCDC(uint64_t a1, char a2, void (*a3)(void))
{
  v4 = v3;
  v6 = *v3;
  a3(0);
  v35 = a2;
  result = sub_1D139142C();
  v8 = result;
  if (*(v6 + 16))
  {
    v34 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = v18 | (v9 << 6);
      v22 = (*(v6 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v6 + 56) + 8 * v21);
      if ((v35 & 1) == 0)
      {
      }

      sub_1D139177C();
      sub_1D139027C();
      result = sub_1D13917CC();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v6 = v34;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
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
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v33 = 1 << *(v6 + 32);
    v4 = v3;
    if (v33 >= 64)
    {
      bzero(v10, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

uint64_t sub_1D117CF98(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1D1185FAC(0, &qword_1EC60C3B8, type metadata accessor for MedicalRecordChartableSeriesCollector);
  result = sub_1D139142C();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (a2)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        v26 = *(*(v5 + 56) + 8 * v22);
      }

      else
      {
        sub_1D1186A80(v23, &v36);
        v26 = *(*(v5 + 56) + 8 * v22);
      }

      result = sub_1D139114C();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      *(*(v7 + 56) + 8 * v15) = v26;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1D117D280(uint64_t a1, char a2, void (*a3)(void))
{
  v4 = v3;
  v6 = *v3;
  a3(0);
  result = sub_1D139142C();
  v8 = result;
  if (*(v6 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v6 + 48) + 8 * v20);
      v22 = *(*(v6 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
        v24 = v22;
      }

      result = sub_1D1390D7C();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v32 = 1 << *(v6 + 32);
      if (v32 >= 64)
      {
        bzero((v6 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v32;
      }

      *(v6 + 16) = 0;
    }

    v4 = v33;
  }

  else
  {
  }

  *v4 = v8;
  return result;
}

uint64_t sub_1D117D51C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1D1185A78(0, &qword_1EC609F50, type metadata accessor for Key, sub_1D106F8DC);
  v35 = a2;
  result = sub_1D139142C();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v2;
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = (v20 + 32 * v19);
      if (v35)
      {
        sub_1D109E39C(v22, v36);
      }

      else
      {
        sub_1D109F94C(v22, v36);
        v23 = v21;
      }

      sub_1D139016C();
      sub_1D139177C();
      sub_1D139027C();
      v24 = sub_1D13917CC();

      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      result = sub_1D109E39C(v36, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
      v5 = v34;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}