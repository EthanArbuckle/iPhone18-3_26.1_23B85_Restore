uint64_t AssetRegistryOverrideStore.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t AssetRegistryOverrideStore.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1C4599B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1C459B2B0(a1, a3, a4);
  if (v4)
  {
    return v6;
  }

  return result;
}

uint64_t sub_1C4599B68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v50 = a3;
  v33 = a2;
  v32[1] = a1;
  v4 = sub_1C456902C(&qword_1EC0B8EB0, &unk_1C4F0E910);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v32 - v10;
  if (qword_1EDDFE0F8 != -1)
  {
    swift_once();
  }

  v12 = sub_1C4EFBD38();
  v13 = sub_1C442B738(v12, qword_1EDE2E068);
  v39 = v12;
  v40 = MEMORY[0x1E69A0050];
  v14 = sub_1C4422F90(v38);
  v15 = *(*(v12 - 8) + 16);
  v15(v14, v13, v12);
  v32[0] = v3;
  v16 = *(v3 + 16);
  v17 = *(v3 + 24);
  v36 = MEMORY[0x1E69E6158];
  v37 = MEMORY[0x1E69A0130];
  v34 = v16;
  v35 = v17;
  v18 = sub_1C4EFB298();
  v42 = v18;
  v43 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v41);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBB28();
  sub_1C4420C3C(&v34, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v38);
  sub_1C446B728();
  sub_1C4EFAE28();
  sub_1C440962C(v41);
  if (qword_1EDDFE100 != -1)
  {
    swift_once();
  }

  v19 = sub_1C442B738(v12, qword_1EDE2DF28);
  v39 = v12;
  v40 = MEMORY[0x1E69A0050];
  v20 = sub_1C4422F90(v38);
  v15(v20, v19, v12);
  v36 = MEMORY[0x1E69E6158];
  v37 = MEMORY[0x1E69A0130];
  v34 = v33;
  v35 = v50;
  v42 = v18;
  v43 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v41);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBB28();
  sub_1C4420C3C(&v34, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v38);
  sub_1C4401CBC(&qword_1EDDFE858, &qword_1EC0B8EB0, &unk_1C4F0E910);
  sub_1C4EFB438();
  v21 = *(v5 + 8);
  v21(v9, v4);
  sub_1C440962C(v41);
  sub_1C4401CBC(&unk_1EDDFE860, &qword_1EC0B8EB0, &unk_1C4F0E910);
  sub_1C446B794();
  v22 = v32[2];
  sub_1C4EFAFF8();
  v21(v11, v4);
  if (v22)
  {
    return v21;
  }

  v24 = v45;
  if (!v45)
  {
    return 1;
  }

  v25 = v44;
  v26 = v46;
  v27 = v47;
  v28 = v48;
  v29 = v49;
  v30 = *(v32[0] + OBJC_IVAR____TtC24IntelligencePlatformCore13KeyValueStore_decoder);
  sub_1C456902C(&qword_1EC0B9480, &qword_1C4F0F018);
  sub_1C45A3114();
  sub_1C4EF9698();
  if (*(v44 + 16))
  {
    v31 = v26;
    v21 = *(v44 + 32);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    sub_1C4470E30(v25, v24, v31, v27, v28, v29);
    return v21;
  }

  v44 = 0;
  v45 = 0xE000000000000000;
  sub_1C4F02248();

  v44 = 0xD00000000000002FLL;
  v45 = 0x80000001C4F8A7E0;
  MEMORY[0x1C6940010](v33, v50);
  result = sub_1C4F024A8();
  __break(1u);
  return result;
}

void sub_1C459A0E8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v62 = a3;
  v45 = a2;
  v43 = a1;
  v41 = a4;
  v5 = sub_1C456902C(&qword_1EC0B8E90, &unk_1C4F0F0A0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v40 = &v40 - v7;
  v8 = sub_1C456902C(&qword_1EC0B8EB0, &unk_1C4F0E910);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v40 - v14;
  if (qword_1EDDFE0F8 != -1)
  {
    swift_once();
  }

  v16 = sub_1C4EFBD38();
  v17 = sub_1C442B738(v16, qword_1EDE2E068);
  v51 = v16;
  v52 = MEMORY[0x1E69A0050];
  v18 = sub_1C4422F90(v50);
  v19 = *(*(v16 - 8) + 16);
  v19(v18, v17, v16);
  v42 = v4;
  v20 = *(v4 + 16);
  v21 = *(v4 + 24);
  v48 = MEMORY[0x1E69E6158];
  v49 = MEMORY[0x1E69A0130];
  v46 = v20;
  v47 = v21;
  v22 = sub_1C4EFB298();
  v54 = v22;
  v55 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v53);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBB28();
  sub_1C4420C3C(&v46, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v50);
  sub_1C446B728();
  sub_1C4EFAE28();
  sub_1C440962C(v53);
  if (qword_1EDDFE100 != -1)
  {
    swift_once();
  }

  v23 = sub_1C442B738(v16, qword_1EDE2DF28);
  v51 = v16;
  v52 = MEMORY[0x1E69A0050];
  v24 = sub_1C4422F90(v50);
  v19(v24, v23, v16);
  v48 = MEMORY[0x1E69E6158];
  v49 = MEMORY[0x1E69A0130];
  v46 = v45;
  v47 = v62;
  v54 = v22;
  v55 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v53);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBB28();
  sub_1C4420C3C(&v46, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v50);
  sub_1C4401CBC(&qword_1EDDFE858, &qword_1EC0B8EB0, &unk_1C4F0E910);
  sub_1C4EFB438();
  v25 = *(v9 + 8);
  v25(v13, v8);
  sub_1C440962C(v53);
  sub_1C4401CBC(&unk_1EDDFE860, &qword_1EC0B8EB0, &unk_1C4F0E910);
  sub_1C446B794();
  v26 = v44;
  sub_1C4EFAFF8();
  v25(v15, v8);
  if (!v26)
  {
    v27 = v57;
    if (v57)
    {
      v28 = v56;
      v30 = v58;
      v29 = v59;
      v31 = v60;
      v32 = v61;
      v33 = *(v42 + OBJC_IVAR____TtC24IntelligencePlatformCore13KeyValueStore_decoder);
      sub_1C456902C(&qword_1EC0B9440, &unk_1C4F0EFD0);
      sub_1C45A2FC0();
      sub_1C4EF9698();
      v44 = v30;
      v37 = v40;
      sub_1C48680D8(v56, v40);
      v38 = sub_1C4EFCDD8();
      if (sub_1C44157D4(v37, 1, v38) == 1)
      {
        sub_1C4420C3C(v37, &qword_1EC0B8E90, &unk_1C4F0F0A0);
        v56 = 0;
        v57 = 0xE000000000000000;
        sub_1C4F02248();

        v56 = 0xD00000000000002FLL;
        v57 = 0x80000001C4F8A7E0;
        MEMORY[0x1C6940010](v45, v62);
        sub_1C4F024A8();
        __break(1u);
        return;
      }

      sub_1C4470E30(v28, v27, v44, v29, v31, v32);
      v39 = v41;
      (*(*(v38 - 8) + 32))(v41, v37, v38);
      v35 = v39;
      v36 = 0;
      v34 = v38;
    }

    else
    {
      v34 = sub_1C4EFCDD8();
      v35 = v41;
      v36 = 1;
    }

    sub_1C440BAA8(v35, v36, 1, v34);
  }
}

void sub_1C459A760(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v56 = a3;
  v39 = a2;
  v37 = a1;
  v35 = a4;
  v5 = sub_1C456902C(&qword_1EC0B8EB0, &unk_1C4F0E910);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v34 - v11;
  if (qword_1EDDFE0F8 != -1)
  {
    swift_once();
  }

  v13 = sub_1C4EFBD38();
  v14 = sub_1C442B738(v13, qword_1EDE2E068);
  v45 = v13;
  v46 = MEMORY[0x1E69A0050];
  v15 = sub_1C4422F90(v44);
  v16 = *(*(v13 - 8) + 16);
  v16(v15, v14, v13);
  v36 = v4;
  v17 = *(v4 + 16);
  v18 = *(v4 + 24);
  v42 = MEMORY[0x1E69E6158];
  v43 = MEMORY[0x1E69A0130];
  v40 = v17;
  v41 = v18;
  v19 = sub_1C4EFB298();
  v48 = v19;
  v49 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v47);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBB28();
  sub_1C4420C3C(&v40, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v44);
  sub_1C446B728();
  sub_1C4EFAE28();
  sub_1C440962C(v47);
  if (qword_1EDDFE100 != -1)
  {
    swift_once();
  }

  v20 = sub_1C442B738(v13, qword_1EDE2DF28);
  v45 = v13;
  v46 = MEMORY[0x1E69A0050];
  v21 = sub_1C4422F90(v44);
  v16(v21, v20, v13);
  v42 = MEMORY[0x1E69E6158];
  v43 = MEMORY[0x1E69A0130];
  v40 = v39;
  v41 = v56;
  v48 = v19;
  v49 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v47);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBB28();
  sub_1C4420C3C(&v40, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v44);
  sub_1C4401CBC(&qword_1EDDFE858, &qword_1EC0B8EB0, &unk_1C4F0E910);
  sub_1C4EFB438();
  v22 = *(v6 + 8);
  v22(v10, v5);
  sub_1C440962C(v47);
  sub_1C4401CBC(&unk_1EDDFE860, &qword_1EC0B8EB0, &unk_1C4F0E910);
  sub_1C446B794();
  v23 = v38;
  sub_1C4EFAFF8();
  v22(v12, v5);
  if (!v23)
  {
    v24 = v51;
    if (v51)
    {
      v25 = v50;
      v26 = v52;
      v27 = v53;
      v28 = v54;
      v29 = v55;
      v30 = *(v36 + OBJC_IVAR____TtC24IntelligencePlatformCore13KeyValueStore_decoder);
      sub_1C456902C(&qword_1EC0B9120, &qword_1C4F3DD40);
      sub_1C45A27BC();
      sub_1C4EF9698();
      v38 = v26;
      if (!v50[2])
      {
        v50 = 0;
        v51 = 0xE000000000000000;
        sub_1C4F02248();

        v50 = 0xD00000000000002FLL;
        v51 = 0x80000001C4F8A7E0;
        MEMORY[0x1C6940010](v39, v56);
        sub_1C4F024A8();
        __break(1u);
        return;
      }

      v31 = v50[4];
      v32 = v50[5];
      sub_1C44344B8(v31, v32);

      sub_1C4470E30(v25, v24, v38, v27, v28, v29);
    }

    else
    {
      v31 = 0;
      v32 = 0xF000000000000000;
    }

    v33 = v35;
    *v35 = v31;
    v33[1] = v32;
  }
}

uint64_t sub_1C459AD30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v43 = a6;
  v42 = a5;
  v41 = a4;
  v63 = a3;
  v46 = a2;
  v44 = a1;
  v7 = sub_1C456902C(&qword_1EC0B8EB0, &unk_1C4F0E910);
  v8 = sub_1C43FCDF8(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBD08();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v39 - v17;
  if (qword_1EDDFE0F8 != -1)
  {
    swift_once();
  }

  v19 = sub_1C4EFBD38();
  v20 = sub_1C442B738(v19, qword_1EDE2E068);
  v52 = v19;
  v53 = MEMORY[0x1E69A0050];
  v21 = sub_1C4422F90(v51);
  v22 = *(*(v19 - 8) + 16);
  v22(v21, v20, v19);
  v40 = v6;
  v23 = *(v6 + 16);
  v24 = *(v6 + 24);
  v49 = MEMORY[0x1E69E6158];
  v50 = MEMORY[0x1E69A0130];
  v47 = v23;
  v48 = v24;
  v25 = sub_1C4EFB298();
  v55 = v25;
  v56 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v54);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBB28();
  sub_1C4420C3C(&v47, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v51);
  sub_1C446B728();
  sub_1C4EFAE28();
  sub_1C440962C(v54);
  if (qword_1EDDFE100 != -1)
  {
    swift_once();
  }

  v26 = sub_1C442B738(v19, qword_1EDE2DF28);
  v52 = v19;
  v53 = MEMORY[0x1E69A0050];
  v27 = sub_1C4422F90(v51);
  v22(v27, v26, v19);
  v49 = MEMORY[0x1E69E6158];
  v50 = MEMORY[0x1E69A0130];
  v47 = v46;
  v48 = v63;
  v55 = v25;
  v56 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v54);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBB28();
  sub_1C4420C3C(&v47, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v51);
  sub_1C4401CBC(&qword_1EDDFE858, &qword_1EC0B8EB0, &unk_1C4F0E910);
  sub_1C4EFB438();
  v28 = *(v10 + 8);
  v28(v15, v7);
  sub_1C440962C(v54);
  sub_1C4401CBC(&unk_1EDDFE860, &qword_1EC0B8EB0, &unk_1C4F0E910);
  sub_1C446B794();
  v29 = v45;
  sub_1C4EFAFF8();
  v28(v18, v7);
  if (v29)
  {
    return v28;
  }

  if (!v58)
  {
    return 0;
  }

  v31 = v59;
  v32 = v60;
  v33 = v61;
  v34 = v62;
  v35 = *(v40 + OBJC_IVAR____TtC24IntelligencePlatformCore13KeyValueStore_decoder);
  sub_1C456902C(v41, v42);
  v43();
  sub_1C4EF9698();
  if (*(v57 + 16))
  {
    v36 = v31;
    v28 = *(v57 + 32);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v37 = sub_1C43FE5F8();
    sub_1C4470E30(v37, v38, v36, v32, v33, v34);

    return v28;
  }

  v57 = 0;
  v58 = 0xE000000000000000;
  sub_1C4F02248();

  v57 = 0xD00000000000002FLL;
  v58 = 0x80000001C4F8A7E0;
  MEMORY[0x1C6940010](v46, v63);
  result = sub_1C4F024A8();
  __break(1u);
  return result;
}

uint64_t sub_1C459B2B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v53 = a3;
  v36 = a2;
  v34[1] = a1;
  v4 = sub_1C456902C(&qword_1EC0B8EB0, &unk_1C4F0E910);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v34 - v10;
  if (qword_1EDDFE0F8 != -1)
  {
    swift_once();
  }

  v12 = sub_1C4EFBD38();
  v13 = sub_1C442B738(v12, qword_1EDE2E068);
  v42 = v12;
  v43 = MEMORY[0x1E69A0050];
  v14 = sub_1C4422F90(v41);
  v15 = *(*(v12 - 8) + 16);
  v15(v14, v13, v12);
  v34[0] = v3;
  v16 = *(v3 + 16);
  v17 = *(v3 + 24);
  v39 = MEMORY[0x1E69E6158];
  v40 = MEMORY[0x1E69A0130];
  v37 = v16;
  v38 = v17;
  v18 = sub_1C4EFB298();
  v45 = v18;
  v46 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v44);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBB28();
  sub_1C4420C3C(&v37, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v41);
  sub_1C446B728();
  sub_1C4EFAE28();
  sub_1C440962C(v44);
  if (qword_1EDDFE100 != -1)
  {
    swift_once();
  }

  v19 = sub_1C442B738(v12, qword_1EDE2DF28);
  v42 = v12;
  v43 = MEMORY[0x1E69A0050];
  v20 = sub_1C4422F90(v41);
  v15(v20, v19, v12);
  v39 = MEMORY[0x1E69E6158];
  v40 = MEMORY[0x1E69A0130];
  v37 = v36;
  v38 = v53;
  v45 = v18;
  v46 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v44);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBB28();
  sub_1C4420C3C(&v37, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v41);
  sub_1C4401CBC(&qword_1EDDFE858, &qword_1EC0B8EB0, &unk_1C4F0E910);
  sub_1C4EFB438();
  v21 = *(v5 + 8);
  v21(v9, v4);
  sub_1C440962C(v44);
  sub_1C4401CBC(&unk_1EDDFE860, &qword_1EC0B8EB0, &unk_1C4F0E910);
  sub_1C446B794();
  v22 = v35;
  sub_1C4EFAFF8();
  v21(v11, v4);
  if (v22)
  {
    return v21;
  }

  v24 = v48;
  if (!v48)
  {
    return 0;
  }

  v25 = v47;
  v26 = v49;
  v27 = v50;
  v28 = v51;
  v29 = v52;
  v30 = *(v34[0] + OBJC_IVAR____TtC24IntelligencePlatformCore13KeyValueStore_decoder);
  sub_1C456902C(&qword_1EC0B90A8, &qword_1C4F0EBD0);
  sub_1C45A2620();
  sub_1C4EF9698();
  v35 = v27;
  if (v47[2])
  {
    v31 = v26;
    v21 = v47[4];
    v32 = v47[5];
    v33 = v47[6];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4470E30(v25, v24, v31, v35, v28, v29);

    return v21;
  }

  v47 = 0;
  v48 = 0xE000000000000000;
  sub_1C4F02248();

  v47 = 0xD00000000000002FLL;
  v48 = 0x80000001C4F8A7E0;
  MEMORY[0x1C6940010](v36, v53);
  result = sub_1C4F024A8();
  __break(1u);
  return result;
}

uint64_t sub_1C459B850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v50 = a3;
  v33 = a2;
  v32[1] = a1;
  v4 = sub_1C456902C(&qword_1EC0B8EB0, &unk_1C4F0E910);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v32 - v10;
  if (qword_1EDDFE0F8 != -1)
  {
    swift_once();
  }

  v12 = sub_1C4EFBD38();
  v13 = sub_1C442B738(v12, qword_1EDE2E068);
  v39 = v12;
  v40 = MEMORY[0x1E69A0050];
  v14 = sub_1C4422F90(v38);
  v15 = *(*(v12 - 8) + 16);
  v15(v14, v13, v12);
  v32[0] = v3;
  v16 = *(v3 + 16);
  v17 = *(v3 + 24);
  v36 = MEMORY[0x1E69E6158];
  v37 = MEMORY[0x1E69A0130];
  v34 = v16;
  v35 = v17;
  v18 = sub_1C4EFB298();
  v42 = v18;
  v43 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v41);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBB28();
  sub_1C4420C3C(&v34, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v38);
  sub_1C446B728();
  sub_1C4EFAE28();
  sub_1C440962C(v41);
  if (qword_1EDDFE100 != -1)
  {
    swift_once();
  }

  v19 = sub_1C442B738(v12, qword_1EDE2DF28);
  v39 = v12;
  v40 = MEMORY[0x1E69A0050];
  v20 = sub_1C4422F90(v38);
  v15(v20, v19, v12);
  v36 = MEMORY[0x1E69E6158];
  v37 = MEMORY[0x1E69A0130];
  v34 = v33;
  v35 = v50;
  v42 = v18;
  v43 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v41);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBB28();
  sub_1C4420C3C(&v34, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v38);
  sub_1C4401CBC(&qword_1EDDFE858, &qword_1EC0B8EB0, &unk_1C4F0E910);
  sub_1C4EFB438();
  v21 = *(v5 + 8);
  v21(v9, v4);
  sub_1C440962C(v41);
  sub_1C4401CBC(&unk_1EDDFE860, &qword_1EC0B8EB0, &unk_1C4F0E910);
  sub_1C446B794();
  v22 = v32[2];
  sub_1C4EFAFF8();
  v21(v11, v4);
  if (v22)
  {
    return v21;
  }

  v24 = v45;
  if (!v45)
  {
    return 4;
  }

  v25 = v44;
  v26 = v46;
  v27 = v47;
  v28 = v48;
  v29 = v49;
  v30 = *(v32[0] + OBJC_IVAR____TtC24IntelligencePlatformCore13KeyValueStore_decoder);
  sub_1C456902C(&qword_1EC0B9238, &qword_1C4F3DD90);
  sub_1C45A2C7C();
  sub_1C4EF9698();
  if (*(v44 + 16))
  {
    v31 = v26;
    v21 = *(v44 + 32);
    sub_1C4470E30(v25, v24, v31, v27, v28, v29);

    return v21;
  }

  v44 = 0;
  v45 = 0xE000000000000000;
  sub_1C4F02248();

  v44 = 0xD00000000000002FLL;
  v45 = 0x80000001C4F8A7E0;
  MEMORY[0x1C6940010](v33, v50);
  result = sub_1C4F024A8();
  __break(1u);
  return result;
}

void sub_1C459BDBC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v55 = a3;
  v38 = a2;
  v36 = a1;
  v34 = a4;
  v5 = sub_1C456902C(&qword_1EC0B8EB0, &unk_1C4F0E910);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v33 - v11;
  if (qword_1EDDFE0F8 != -1)
  {
    swift_once();
  }

  v13 = sub_1C4EFBD38();
  v14 = sub_1C442B738(v13, qword_1EDE2E068);
  v44 = v13;
  v45 = MEMORY[0x1E69A0050];
  v15 = sub_1C4422F90(v43);
  v16 = *(*(v13 - 8) + 16);
  v16(v15, v14, v13);
  v35 = v4;
  v17 = *(v4 + 16);
  v18 = *(v4 + 24);
  v41 = MEMORY[0x1E69E6158];
  v42 = MEMORY[0x1E69A0130];
  v39 = v17;
  v40 = v18;
  v19 = sub_1C4EFB298();
  v47 = v19;
  v48 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v46);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBB28();
  sub_1C4420C3C(&v39, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v43);
  sub_1C446B728();
  sub_1C4EFAE28();
  sub_1C440962C(v46);
  if (qword_1EDDFE100 != -1)
  {
    swift_once();
  }

  v20 = sub_1C442B738(v13, qword_1EDE2DF28);
  v44 = v13;
  v45 = MEMORY[0x1E69A0050];
  v21 = sub_1C4422F90(v43);
  v16(v21, v20, v13);
  v41 = MEMORY[0x1E69E6158];
  v42 = MEMORY[0x1E69A0130];
  v39 = v38;
  v40 = v55;
  v47 = v19;
  v48 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v46);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBB28();
  sub_1C4420C3C(&v39, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v43);
  sub_1C4401CBC(&qword_1EDDFE858, &qword_1EC0B8EB0, &unk_1C4F0E910);
  sub_1C4EFB438();
  v22 = *(v6 + 8);
  v22(v10, v5);
  sub_1C440962C(v46);
  sub_1C4401CBC(&unk_1EDDFE860, &qword_1EC0B8EB0, &unk_1C4F0E910);
  sub_1C446B794();
  v23 = v37;
  sub_1C4EFAFF8();
  v22(v12, v5);
  if (!v23)
  {
    v24 = v50;
    if (v50)
    {
      v25 = v49;
      v26 = v51;
      v27 = v52;
      v28 = v53;
      v29 = v54;
      v30 = *(v35 + OBJC_IVAR____TtC24IntelligencePlatformCore13KeyValueStore_decoder);
      sub_1C456902C(&qword_1EC0B9230, &unk_1C4F0ED50);
      sub_1C45A2BB0();
      sub_1C4EF9698();
      if (!*(v49 + 16))
      {

        v49 = 0;
        v50 = 0xE000000000000000;
        sub_1C4F02248();

        v49 = 0xD00000000000002FLL;
        v50 = 0x80000001C4F8A7E0;
        MEMORY[0x1C6940010](v38, v55);
        sub_1C4F024A8();
        __break(1u);
        return;
      }

      v32 = v26;
      v31 = *(v49 + 32);
      sub_1C4470E30(v25, v24, v32, v27, v28, v29);
    }

    else
    {
      v31 = 4;
    }

    *v34 = v31;
  }
}

unint64_t sub_1C459C33C(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(a3 + 16) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

char *sub_1C459C3E0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[64 * a2] <= a3)
  {
    return sub_1C441904C(a3, result);
  }

  return result;
}

char *sub_1C459C49C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[4 * a2] <= a3)
  {
    return sub_1C441904C(a3, result);
  }

  return result;
}

char *sub_1C459C4FC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[2 * a2] <= a3)
  {
    return sub_1C441904C(a3, result);
  }

  return result;
}

char *sub_1C459C620(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[152 * a2] <= a3)
  {
    return sub_1C44330DC(a3, result, 152 * a2);
  }

  return result;
}

char *sub_1C459C934(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[56 * a2] <= a3)
  {
    return sub_1C441904C(a3, result);
  }

  return result;
}

char *sub_1C459CAAC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[240 * a2] <= a3)
  {
    return sub_1C441904C(a3, result);
  }

  return result;
}

char *sub_1C459CBE4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[160 * a2] <= a3)
  {
    return sub_1C441904C(a3, result);
  }

  return result;
}

char *sub_1C459CCF8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[176 * a2] <= a3)
  {
    return sub_1C441904C(a3, result);
  }

  return result;
}

char *sub_1C459CD38(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return sub_1C441904C(a3, result);
  }

  return result;
}

uint64_t sub_1C459CE68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  sub_1C4422A04();
  if (v10 && (v11 = sub_1C456902C(a4, a5), result = sub_1C43FBCE0(v11), v6 + *(v13 + 72) * v5 > v7))
  {
    if (v7 != v6)
    {
      sub_1C43FBE50();

      return swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    sub_1C456902C(a4, a5);
    sub_1C43FBE50();

    return swift_arrayInitWithTakeFrontToBack();
  }

  return result;
}

void sub_1C459CF48()
{
  v1 = *v0;
  sub_1C459F644();
  *v0 = v2;
}

void sub_1C459CF78()
{
  v1 = *v0;
  sub_1C44FDCBC();
  *v0 = v2;
}

void sub_1C459CFD0()
{
  v1 = *v0;
  sub_1C445ECDC();
  *v0 = v2;
}

void sub_1C459D010()
{
  v1 = *v0;
  sub_1C445ECDC();
  *v0 = v2;
}

void sub_1C459D050()
{
  v1 = *v0;
  sub_1C45A1B38();
  *v0 = v2;
}

char *sub_1C459D088(char *a1, int64_t a2, char a3)
{
  result = sub_1C459F228(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1C459D0A8()
{
  v1 = *v0;
  sub_1C44D48B8();
  *v0 = v2;
}

void sub_1C459D100()
{
  v1 = *v0;
  sub_1C459F334();
  *v0 = v2;
}

void sub_1C459D120()
{
  v1 = *v0;
  sub_1C44D48B8();
  *v0 = v2;
}

void sub_1C459D178()
{
  v1 = *v0;
  sub_1C44189B4();
  sub_1C44D48B8();
  *v0 = v2;
}

char *sub_1C459D1C0(char *a1, int64_t a2, char a3)
{
  result = sub_1C459F400(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1C459D1E0()
{
  v1 = *v0;
  sub_1C44D48B8();
  *v0 = v2;
}

void sub_1C459D238()
{
  v1 = *v0;
  sub_1C45A1434();
  *v0 = v2;
}

void sub_1C459D270()
{
  v1 = *v0;
  sub_1C44D48B8();
  *v0 = v2;
}

void *sub_1C459D2C8(void *a1, int64_t a2, char a3)
{
  result = sub_1C459F514(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1C459D2E8()
{
  v1 = *v0;
  sub_1C44FDCBC();
  *v0 = v2;
}

void sub_1C459D328()
{
  v1 = *v0;
  sub_1C44D48B8();
  *v0 = v2;
}

void sub_1C459D380()
{
  v1 = *v0;
  sub_1C459F644();
  *v0 = v2;
}

char *sub_1C459D3B0(char *a1, int64_t a2, char a3)
{
  result = sub_1C459F700(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1C459D3D0()
{
  v1 = *v0;
  sub_1C44D48B8();
  *v0 = v2;
}

void sub_1C459D428()
{
  v1 = *v0;
  sub_1C44FDCBC();
  *v0 = v2;
}

void *sub_1C459D468(void *a1, int64_t a2, char a3)
{
  result = sub_1C459F824(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C459D488(char *a1, int64_t a2, char a3)
{
  result = sub_1C459FA20(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1C459D4A8()
{
  v1 = *v0;
  sub_1C45A0904();
  *v0 = v2;
}

void sub_1C459D4E8()
{
  v1 = *v0;
  sub_1C45A0904();
  *v0 = v2;
}

char *sub_1C459D528(char *a1, int64_t a2, char a3)
{
  result = sub_1C459FB20(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1C459D548()
{
  v1 = *v0;
  sub_1C44FDCBC();
  *v0 = v2;
}

char *sub_1C459D588(char *a1, int64_t a2, char a3)
{
  result = sub_1C459FC20(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C459D5A8(void *a1, int64_t a2, char a3)
{
  result = sub_1C459FD20(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1C459D5C8()
{
  v1 = *v0;
  sub_1C44FDCBC();
  *v0 = v2;
}

void sub_1C459D608()
{
  v1 = *v0;
  sub_1C44D48B8();
  *v0 = v2;
}

void sub_1C459D660()
{
  v1 = *v0;
  sub_1C44FDCBC();
  *v0 = v2;
}

void sub_1C459D6A0()
{
  v1 = *v0;
  sub_1C44D48B8();
  *v0 = v2;
}

void sub_1C459D6F8()
{
  v1 = *v0;
  sub_1C445ECDC();
  *v0 = v2;
}

void sub_1C459D738()
{
  v1 = *v0;
  sub_1C45A1C20();
  *v0 = v2;
}

void *sub_1C459D768(void *a1, int64_t a2, char a3)
{
  result = sub_1C459FE58(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C459D788(void *a1, int64_t a2, char a3)
{
  result = sub_1C459FF88(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C459D7A8(void *a1, int64_t a2, char a3)
{
  result = sub_1C45A00B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1C459D7C8()
{
  v1 = *v0;
  sub_1C445E754();
  sub_1C44D48B8();
  *v0 = v2;
}

void sub_1C459D810()
{
  v1 = *v0;
  sub_1C445ECDC();
  *v0 = v2;
}

void sub_1C459D850()
{
  v1 = *v0;
  sub_1C44FDCBC();
  *v0 = v2;
}

void sub_1C459D890()
{
  v1 = *v0;
  sub_1C45A1CE0();
  *v0 = v2;
}

char *sub_1C459D8D0(char *a1, int64_t a2, char a3)
{
  result = sub_1C45A022C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1C459D8F0()
{
  v1 = *v0;
  sub_1C45A04DC();
  *v0 = v2;
}

void sub_1C459D930()
{
  v1 = *v0;
  sub_1C445ECDC();
  *v0 = v2;
}

void sub_1C459D970()
{
  v1 = *v0;
  sub_1C44D48B8();
  *v0 = v2;
}

void sub_1C459D9C8()
{
  v1 = *v0;
  sub_1C44D48B8();
  *v0 = v2;
}

void sub_1C459DA20()
{
  v1 = *v0;
  sub_1C4436488();
  sub_1C44D48B8();
  *v0 = v2;
}

void sub_1C459DA68()
{
  v1 = *v0;
  sub_1C44FDCBC();
  *v0 = v2;
}

void sub_1C459DAA8()
{
  v1 = *v0;
  sub_1C44D48B8();
  *v0 = v2;
}

void sub_1C459DB00()
{
  v1 = *v0;
  sub_1C44D48B8();
  *v0 = v2;
}

void sub_1C459DB58()
{
  v1 = *v0;
  sub_1C45A1CE0();
  *v0 = v2;
}

void sub_1C459DB98()
{
  v1 = *v0;
  sub_1C44FDCBC();
  *v0 = v2;
}

char *sub_1C459DBD8(char *a1, int64_t a2, char a3)
{
  result = sub_1C45A038C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1C459DBF8()
{
  v1 = *v0;
  sub_1C45A04DC();
  *v0 = v2;
}

void sub_1C459DC38()
{
  v1 = *v0;
  sub_1C445ECDC();
  *v0 = v2;
}

void sub_1C459DC78()
{
  v1 = *v0;
  sub_1C4433BA4();
  sub_1C44D48B8();
  *v0 = v2;
}

void sub_1C459DCC0()
{
  v1 = *v0;
  sub_1C44D48B8();
  *v0 = v2;
}

void sub_1C459DD18()
{
  v1 = *v0;
  sub_1C445ECDC();
  *v0 = v2;
}

void sub_1C459DD58()
{
  v1 = *v0;
  sub_1C445ECDC();
  *v0 = v2;
}

char *sub_1C459DD98(char *a1, int64_t a2, char a3)
{
  result = sub_1C45A05EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C459DDB8(char *a1, int64_t a2, char a3)
{
  result = sub_1C45A06E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1C459DDD8()
{
  v1 = *v0;
  sub_1C44D48B8();
  *v0 = v2;
}

void sub_1C459DE30()
{
  v1 = *v0;
  sub_1C45A07F0();
  *v0 = v2;
}

void sub_1C459DE70()
{
  v1 = *v0;
  sub_1C45A07F0();
  *v0 = v2;
}

void sub_1C459DEB0()
{
  v1 = *v0;
  sub_1C44D48B8();
  *v0 = v2;
}

void sub_1C459DF08()
{
  v1 = *v0;
  sub_1C445ECDC();
  *v0 = v2;
}

void sub_1C459DF48()
{
  v1 = *v0;
  sub_1C445ECDC();
  *v0 = v2;
}

char *sub_1C459DF88(char *a1, int64_t a2, char a3)
{
  result = sub_1C45A09D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C459DFA8(void *a1, int64_t a2, char a3)
{
  result = sub_1C45A0AE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1C459DFC8()
{
  v1 = *v0;
  sub_1C445ECDC();
  *v0 = v2;
}

char *sub_1C459E008(char *a1, int64_t a2, char a3)
{
  result = sub_1C45A0C20(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1C459E028()
{
  v1 = *v0;
  sub_1C44D48B8();
  *v0 = v2;
}

void sub_1C459E080()
{
  v1 = *v0;
  sub_1C44D48B8();
  *v0 = v2;
}

char *sub_1C459E0D8(char *a1, int64_t a2, char a3)
{
  result = sub_1C45A0D34(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1C459E0F8()
{
  v1 = *v0;
  sub_1C45A184C();
  *v0 = v2;
}

void sub_1C459E130()
{
  v1 = *v0;
  sub_1C44FDCBC();
  *v0 = v2;
}

void sub_1C459E170()
{
  v1 = *v0;
  sub_1C45A0E4C();
  *v0 = v2;
}

void sub_1C459E190()
{
  v1 = *v0;
  sub_1C44FDCBC();
  *v0 = v2;
}

void sub_1C459E1D0()
{
  v1 = *v0;
  sub_1C44FDCBC();
  *v0 = v2;
}

void sub_1C459E210()
{
  v1 = *v0;
  sub_1C44FDCBC();
  *v0 = v2;
}

void sub_1C459E250()
{
  v1 = *v0;
  sub_1C44FDCBC();
  *v0 = v2;
}

void sub_1C459E290()
{
  v1 = *v0;
  sub_1C44FDCBC();
  *v0 = v2;
}

void sub_1C459E2D0()
{
  v1 = *v0;
  sub_1C44FDCBC();
  *v0 = v2;
}

void sub_1C459E310()
{
  v1 = *v0;
  sub_1C44FDCBC();
  *v0 = v2;
}

void sub_1C459E350()
{
  v1 = *v0;
  sub_1C44FDCBC();
  *v0 = v2;
}

void *sub_1C459E390(void *a1, int64_t a2, char a3)
{
  result = sub_1C45A0F28(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1C459E3B0()
{
  v1 = *v0;
  sub_1C45A0904();
  *v0 = v2;
}

void sub_1C459E3F0()
{
  v1 = *v0;
  sub_1C44FDCBC();
  *v0 = v2;
}

void *sub_1C459E430(void *a1, int64_t a2, char a3)
{
  result = sub_1C45A1058(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C459E450(void *a1, int64_t a2, char a3)
{
  result = sub_1C45A1188(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1C459E470()
{
  v1 = *v0;
  sub_1C44FDCBC();
  *v0 = v2;
}

void sub_1C459E4B0()
{
  v1 = *v0;
  sub_1C45A04DC();
  *v0 = v2;
}

void sub_1C459E4F0()
{
  v1 = *v0;
  sub_1C45A04DC();
  *v0 = v2;
}

void sub_1C459E530()
{
  v1 = *v0;
  sub_1C445ECDC();
  *v0 = v2;
}

void sub_1C459E570()
{
  v1 = *v0;
  sub_1C445ECDC();
  *v0 = v2;
}

void sub_1C459E5B0()
{
  v1 = *v0;
  sub_1C445ECDC();
  *v0 = v2;
}

void sub_1C459E5F0()
{
  v1 = *v0;
  sub_1C45A0904();
  *v0 = v2;
}

void sub_1C459E630()
{
  v1 = *v0;
  sub_1C4440F88();
  sub_1C44D48B8();
  *v0 = v2;
}

void sub_1C459E678()
{
  v1 = *v0;
  sub_1C44D48B8();
  *v0 = v2;
}

void *sub_1C459E6D0(void *a1, int64_t a2, char a3)
{
  result = sub_1C45A12FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1C459E6F0()
{
  v1 = *v0;
  sub_1C45A1434();
  *v0 = v2;
}

void sub_1C459E728()
{
  v1 = *v0;
  sub_1C44D48B8();
  *v0 = v2;
}

void sub_1C459E780()
{
  v1 = *v0;
  sub_1C4402108();
  sub_1C44D48B8();
  *v0 = v2;
}

void sub_1C459E7C8()
{
  v1 = *v0;
  sub_1C45A1CE0();
  *v0 = v2;
}

char *sub_1C459E808(char *a1, int64_t a2, char a3)
{
  result = sub_1C45A162C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1C459E828()
{
  v1 = *v0;
  sub_1C445ECDC();
  *v0 = v2;
}

void sub_1C459E868()
{
  v1 = *v0;
  sub_1C45A1CE0();
  *v0 = v2;
}

char *sub_1C459E8A8(char *a1, int64_t a2, char a3)
{
  result = sub_1C45A1744(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1C459E8C8()
{
  v1 = *v0;
  sub_1C45A1C20();
  *v0 = v2;
}

void sub_1C459E8F8()
{
  v1 = *v0;
  sub_1C445ECDC();
  *v0 = v2;
}

void sub_1C459E938()
{
  v1 = *v0;
  sub_1C44FDCBC();
  *v0 = v2;
}

void sub_1C459E978()
{
  v1 = *v0;
  sub_1C44FDCBC();
  *v0 = v2;
}

void sub_1C459E9B8()
{
  v1 = *v0;
  sub_1C44D48B8();
  *v0 = v2;
}

void sub_1C459EA10()
{
  v1 = *v0;
  sub_1C445ECDC();
  *v0 = v2;
}

void sub_1C459EA50()
{
  v1 = *v0;
  sub_1C445ECDC();
  *v0 = v2;
}

void sub_1C459EA90()
{
  v1 = *v0;
  sub_1C45A184C();
  *v0 = v2;
}

void sub_1C459EAC8()
{
  v1 = *v0;
  sub_1C45A1CE0();
  *v0 = v2;
}

void *sub_1C459EB08(void *a1, int64_t a2, char a3)
{
  result = sub_1C45A1924(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1C459EB28()
{
  v1 = *v0;
  sub_1C445ECDC();
  *v0 = v2;
}

void sub_1C459EB68()
{
  v1 = *v0;
  sub_1C44D48B8();
  *v0 = v2;
}

void sub_1C459EBC0()
{
  v1 = *v0;
  sub_1C44D48B8();
  *v0 = v2;
}

void sub_1C459EC18()
{
  v1 = *v0;
  sub_1C44D48B8();
  *v0 = v2;
}

void sub_1C459EC70()
{
  v1 = *v0;
  sub_1C445ECDC();
  *v0 = v2;
}

void sub_1C459ECB0()
{
  v1 = *v0;
  sub_1C445ECDC();
  *v0 = v2;
}

void sub_1C459ECF0()
{
  v1 = *v0;
  sub_1C44D48B8();
  *v0 = v2;
}

void sub_1C459ED48()
{
  v1 = *v0;
  sub_1C44D48B8();
  *v0 = v2;
}

void sub_1C459EDA0()
{
  v1 = *v0;
  sub_1C445ECDC();
  *v0 = v2;
}

void sub_1C459EDE0()
{
  v1 = *v0;
  sub_1C45A0904();
  *v0 = v2;
}

void sub_1C459EE20()
{
  v1 = *v0;
  sub_1C45A1B38();
  *v0 = v2;
}

void sub_1C459EE58()
{
  v1 = *v0;
  sub_1C44D48B8();
  *v0 = v2;
}

void sub_1C459EEB0()
{
  v1 = *v0;
  sub_1C445ECDC();
  *v0 = v2;
}

void sub_1C459EEF0()
{
  v1 = *v0;
  sub_1C45A1C20();
  *v0 = v2;
}

void sub_1C459EF20()
{
  v1 = *v0;
  sub_1C44D48B8();
  *v0 = v2;
}

void sub_1C459EF78()
{
  v1 = *v0;
  sub_1C45A1550();
  *v0 = v2;
}

void sub_1C459EF98()
{
  v1 = *v0;
  sub_1C45A1CE0();
  *v0 = v2;
}

void *sub_1C459EFD8(void *a1, int64_t a2, char a3)
{
  result = sub_1C45A1DB0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1C459EFF8()
{
  v1 = *v0;
  sub_1C445ECDC();
  *v0 = v2;
}

void sub_1C459F038()
{
  v1 = *v0;
  sub_1C44D48B8();
  *v0 = v2;
}

char *sub_1C459F090(char *a1, int64_t a2, char a3)
{
  result = sub_1C45A1EE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C459F0B0(void *a1, int64_t a2, char a3)
{
  result = sub_1C45A1FE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1C459F0D0()
{
  v1 = *v0;
  sub_1C44FDCBC();
  *v0 = v2;
}

void sub_1C459F110()
{
  v1 = *v0;
  sub_1C44D48B8();
  *v0 = v2;
}

void sub_1C459F168()
{
  v1 = *v0;
  sub_1C45A0904();
  *v0 = v2;
}

char *sub_1C459F1A8(char *a1, int64_t a2, char a3)
{
  result = sub_1C45A2144(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C459F228(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C456902C(&qword_1EC0B8780, &qword_1C4F0DB70);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1C459F334()
{
  sub_1C441581C();
  if (v5)
  {
    sub_1C441172C();
    if (v7 != v8)
    {
      sub_1C442B904();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1C440A4D4();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_1C443451C(v6);
  if (v2)
  {
    sub_1C456902C(&qword_1EC0B87D0, &qword_1C4F0DBC0);
    v9 = sub_1C44182F4();
    j__malloc_size(v9);
    sub_1C442FAC8();
    *(v9 + 2) = v3;
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
    if (v9 != v0 || &v12[8 * v3] <= v11)
    {
      memmove(v11, v12, 8 * v3);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, 8 * v3);
  }
}

char *sub_1C459F400(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C456902C(&qword_1EC0B8ED8, &qword_1C4F4CE40);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[24 * v8] <= v12)
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C459F514(void *result, int64_t a2, char a3, void *a4)
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
    sub_1C456902C(&qword_1EC0B90C0, &qword_1C4F0EBD8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[4 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1C456902C(&qword_1EC0B90C8, &qword_1C4F0EBE0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1C459F644()
{
  sub_1C441581C();
  if (v5)
  {
    sub_1C441172C();
    if (v7 != v8)
    {
      sub_1C442B904();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1C440A4D4();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_1C443451C(v6);
  if (v2)
  {
    sub_1C4422208(v9, v10, v11, v12, v13, v14);
    v15 = sub_1C44182F4();
    j__malloc_size(v15);
    sub_1C442FAC8();
    *(v15 + 2) = v3;
    *(v15 + 3) = v16;
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  v17 = v15 + 32;
  v18 = v0 + 32;
  if (v1)
  {
    if (v15 != v0 || &v18[8 * v3] <= v17)
    {
      memmove(v17, v18, 8 * v3);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v17, v18, 8 * v3);
  }
}

char *sub_1C459F700(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C456902C(&qword_1EC0B8998, &qword_1C4F0DDB0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[4 * v8] <= v12)
    {
      memmove(v12, v13, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 4 * v8);
  }

  return v10;
}

void *sub_1C459F824(void *result, int64_t a2, char a3, void *a4)
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
    sub_1C456902C(&qword_1EC0B87A0, &unk_1C4F0DB90);
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
    sub_1C456902C(&qword_1EC0B87A8, &unk_1C4F0E930);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1C459F954()
{
  sub_1C441581C();
  if (v5)
  {
    sub_1C441172C();
    if (v7 != v8)
    {
      sub_1C442B904();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1C440A4D4();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_1C443451C(v6);
  if (v2)
  {
    sub_1C456902C(&qword_1EC0B8EC0, &unk_1C4F3E580);
    v9 = sub_1C44182F4();
    j__malloc_size(v9);
    sub_1C442FAC8();
    *(v9 + 2) = v3;
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
    if (v9 != v0 || &v12[8 * v3] <= v11)
    {
      memmove(v11, v12, 8 * v3);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, 8 * v3);
  }
}

char *sub_1C459FA20(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C456902C(&qword_1EC0B87B0, &unk_1C4F0DBA0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[2 * v8] <= v12)
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

char *sub_1C459FB20(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C456902C(&qword_1EC0B93D8, &unk_1C4F0EF20);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

char *sub_1C459FC20(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C456902C(&qword_1EC0B93C0, &qword_1C4F0EF08);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

void *sub_1C459FD20(void *result, int64_t a2, char a3, void *a4)
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
    sub_1C456902C(&qword_1EC0B93B0, &qword_1C4F0EEF8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[7 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1C456902C(&qword_1EC0B93B8, &qword_1C4F0EF00);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C459FE58(void *result, int64_t a2, char a3, void *a4)
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
    sub_1C456902C(&qword_1EC0B87D8, &qword_1C4F0DBC8);
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
    sub_1C456902C(&qword_1EC0B87E0, &qword_1C4F0DBD0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C459FF88(void *result, int64_t a2, char a3, void *a4)
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
    sub_1C456902C(&qword_1EC0B8890, &unk_1C4F0DC90);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[4 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1C456902C(&qword_1EC0B8898, &unk_1C4F30C50);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C45A00B8(void *result, int64_t a2, char a3, void *a4)
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
    sub_1C456902C(&qword_1EC0B8840, &unk_1C4F0DC30);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[3 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1C456902C(&qword_1EC0B8848, &qword_1C4F40C80);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C45A022C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C456902C(&qword_1EC0B8958, &qword_1C4F0DD60);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[4 * v8] <= v12)
    {
      memmove(v12, v13, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 4 * v8);
  }

  return v10;
}

char *sub_1C45A038C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C456902C(&qword_1EC0B89B0, &qword_1C4F0DDD0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 152);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[152 * v8] <= v12)
    {
      memmove(v12, v13, 152 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1C45A04DC()
{
  sub_1C442F0C4();
  sub_1C43FFC44();
  if (v7)
  {
    sub_1C441172C();
    if (v9 != v10)
    {
      sub_1C442B904();
      if (v9)
      {
        __break(1u);
        return;
      }

      sub_1C440A4D4();
    }
  }

  else
  {
    v8 = v6;
  }

  sub_1C44108C0(v8);
  if (v3)
  {
    sub_1C4422208(v11, v12, v13, v14, v15, v16);
    v17 = sub_1C44182F4();
    sub_1C4424F4C(v17);
    sub_1C441B764(v18 / 32);
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  sub_1C440BB20();
  if (v1)
  {
    if (v17 != v0 || v5 + 32 * v2 <= v4)
    {
      v20 = sub_1C4404044();
      memmove(v20, v21, v22);
    }

    v0[2] = 0;
  }

  else
  {
    v23 = sub_1C4404050();
    sub_1C456902C(v23, v24);
    sub_1C4416D38();
    swift_arrayInitWithCopy();
  }

  sub_1C4422220();
}

char *sub_1C45A05EC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C456902C(&qword_1EC0B8A98, &unk_1C4F0ED00);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || &v13[v14] <= v12)
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

char *sub_1C45A06E8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C456902C(&qword_1EC0B91F0, &qword_1C4F0ECF8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 24 * v8;
  if (v5)
  {
    if (v10 != a4 || &v13[v14] <= v12)
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

void sub_1C45A07F0()
{
  sub_1C442F0C4();
  sub_1C43FFC44();
  if (v4)
  {
    sub_1C441172C();
    if (v9 != v10)
    {
      sub_1C442B904();
      if (v9)
      {
        __break(1u);
        return;
      }

      sub_1C440A4D4();
    }
  }

  else
  {
    v8 = v3;
  }

  v11 = v0[2];
  if (v8 <= v11)
  {
    v12 = v0[2];
  }

  else
  {
    v12 = v8;
  }

  if (v12)
  {
    sub_1C4422208(v2, v3, v4, v5, v6, v7);
    v13 = swift_allocObject();
    sub_1C4424F4C(v13);
    v13[2] = v11;
    v13[3] = 2 * (v14 / 80);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  if (v1)
  {
    if (v13 != v0 || &v0[10 * v11 + 4] <= v13 + 4)
    {
      v16 = sub_1C4404044();
      memmove(v16, v17, v18);
    }

    v0[2] = 0;
  }

  else
  {
    v19 = sub_1C4404050();
    sub_1C456902C(v19, v20);
    sub_1C4416D38();
    swift_arrayInitWithCopy();
  }

  sub_1C4422220();
}

void sub_1C45A0904()
{
  sub_1C442F0C4();
  sub_1C43FFC44();
  if (v7)
  {
    sub_1C441172C();
    if (v9 != v10)
    {
      sub_1C442B904();
      if (v9)
      {
        __break(1u);
        return;
      }

      sub_1C440A4D4();
    }
  }

  else
  {
    v8 = v6;
  }

  sub_1C44108C0(v8);
  if (v3)
  {
    sub_1C4422208(v11, v12, v13, v14, v15, v16);
    v4 = 24;
    v17 = sub_1C4440F6C();
    sub_1C43FEA8C(v17);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  sub_1C440BB20();
  if (v1)
  {
    if (v3 != v0 || v5 + 24 * v2 <= v4)
    {
      v19 = sub_1C4404044();
      memmove(v19, v20, v21);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    v22 = sub_1C4404050();
    sub_1C456902C(v22, v23);
    sub_1C4416D38();
    swift_arrayInitWithCopy();
  }

  sub_1C4422220();
}

char *sub_1C45A09D0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C456902C(&qword_1EC0B87F8, &unk_1C4F0E960);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[72 * v8] <= v12)
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C45A0AE8(void *result, int64_t a2, char a3, void *a4)
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
    sub_1C456902C(&qword_1EC0B8EE0, &qword_1C4F0E970);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[10 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 80 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1C456902C(&qword_1EC0B8EE8, &qword_1C4F0E978);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C45A0C20(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C456902C(&qword_1EC0B8F48, &qword_1C4F0EA18);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[40 * v8] <= v12)
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C45A0D34(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C456902C(&qword_1EC0B9298, &qword_1C4F0EDC8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[24 * v8] <= v12)
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1C45A0E4C()
{
  sub_1C441581C();
  if (v5)
  {
    sub_1C441172C();
    if (v7 != v8)
    {
      sub_1C442B904();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1C440A4D4();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_1C442DD18(v6);
  if (v3)
  {
    sub_1C456902C(&qword_1EC0B92A0, &qword_1C4F0EDD0);
    v9 = sub_1C4404028();
    sub_1C4424F4C(v9);
    sub_1C4460178(v10);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = sub_1C441D138();
  if (v1)
  {
    if (v9 != v0 || &v12[56 * v2] <= v11)
    {
      memmove(v11, v12, 56 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void *sub_1C45A0F28(void *result, int64_t a2, char a3, void *a4)
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
    sub_1C456902C(&qword_1EC0B92F8, &qword_1C4F0EE28);
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
    sub_1C456902C(&qword_1EC0B9300, &qword_1C4F0EE30);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C45A1058(void *result, int64_t a2, char a3, void *a4)
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
    sub_1C456902C(&qword_1EC0B92C8, &qword_1C4F0EDF8);
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
    sub_1C456902C(&qword_1EC0B92D0, &qword_1C4F0EE00);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C45A1188(void *result, int64_t a2, char a3, void *a4)
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
    sub_1C456902C(&qword_1EC0B92B8, &qword_1C4F0EDE8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[7 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1C456902C(&qword_1EC0B92C0, &qword_1C4F0EDF0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C45A12FC(void *result, int64_t a2, char a3, void *a4)
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
    sub_1C456902C(&qword_1EC0B9250, &qword_1C4F0ED70);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[3 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1C456902C(&qword_1EC0B9258, &qword_1C4F0ED78);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1C45A1434()
{
  sub_1C441B754();
  if (v4)
  {
    sub_1C441172C();
    if (v9 != v10)
    {
      sub_1C442B904();
      if (v9)
      {
        __break(1u);
        return;
      }

      sub_1C440A4D4();
    }
  }

  else
  {
    v8 = v3;
  }

  v11 = v0[2];
  if (v8 <= v11)
  {
    v12 = v0[2];
  }

  else
  {
    v12 = v8;
  }

  if (v12)
  {
    sub_1C4422208(v2, v3, v4, v5, v6, v7);
    v13 = swift_allocObject();
    sub_1C4424F4C(v13);
    v13[2] = v11;
    v13[3] = 2 * (v14 / 48);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v15 = sub_1C441D138();
  if (v1)
  {
    if (v13 != v0 || &v16[48 * v11] <= v15)
    {
      memmove(v15, v16, 48 * v11);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1C45A1550()
{
  sub_1C441581C();
  if (v5)
  {
    sub_1C441172C();
    if (v7 != v8)
    {
      sub_1C442B904();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1C440A4D4();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_1C442DD18(v6);
  if (v3)
  {
    sub_1C456902C(&qword_1EC0B8918, &qword_1C4F0EAD0);
    v9 = sub_1C4404028();
    sub_1C4424F4C(v9);
    sub_1C4460178(v10);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = sub_1C441D138();
  if (v1)
  {
    if (v9 != v0 || &v12[24 * v2] <= v11)
    {
      memmove(v11, v12, 24 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

char *sub_1C45A162C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C456902C(&qword_1EC0B8910, &qword_1C4F0DD20);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[72 * v8] <= v12)
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C45A1744(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C456902C(&qword_1EC0B8B30, &unk_1C4F0DF60);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1C45A184C()
{
  sub_1C441B754();
  if (v4)
  {
    sub_1C441172C();
    if (v9 != v10)
    {
      sub_1C442B904();
      if (v9)
      {
        __break(1u);
        return;
      }

      sub_1C440A4D4();
    }
  }

  else
  {
    v8 = v3;
  }

  v11 = *(v0 + 2);
  if (v8 <= v11)
  {
    v12 = *(v0 + 2);
  }

  else
  {
    v12 = v8;
  }

  if (v12)
  {
    sub_1C4422208(v2, v3, v4, v5, v6, v7);
    v13 = sub_1C44182F4();
    sub_1C4424F4C(v13);
    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * (v14 / 32);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v15 = v13 + 32;
  v16 = v0 + 32;
  if (v1)
  {
    if (v13 != v0 || &v16[32 * v11] <= v15)
    {
      memmove(v15, v16, 32 * v11);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void *sub_1C45A1924(void *result, int64_t a2, char a3, void *a4)
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
    sub_1C456902C(&qword_1EC0B9270, &unk_1C4F32030);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[6 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1C456902C(&qword_1EC0B9278, &unk_1C4F0EDA0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1C45A1A5C()
{
  sub_1C441581C();
  if (v5)
  {
    sub_1C441172C();
    if (v7 != v8)
    {
      sub_1C442B904();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1C440A4D4();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_1C442DD18(v6);
  if (v3)
  {
    sub_1C456902C(&qword_1EC0B8AC0, &qword_1C4F0DEF0);
    v9 = sub_1C4404028();
    sub_1C4424F4C(v9);
    sub_1C4460178(v10);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = sub_1C441D138();
  if (v1)
  {
    if (v9 != v0 || &v12[56 * v2] <= v11)
    {
      memmove(v11, v12, 56 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1C45A1B38()
{
  sub_1C441B754();
  if (v4)
  {
    sub_1C441172C();
    if (v9 != v10)
    {
      sub_1C442B904();
      if (v9)
      {
        __break(1u);
        return;
      }

      sub_1C440A4D4();
    }
  }

  else
  {
    v8 = v3;
  }

  v11 = *(v0 + 2);
  if (v8 <= v11)
  {
    v12 = *(v0 + 2);
  }

  else
  {
    v12 = v8;
  }

  if (v12)
  {
    sub_1C4422208(v2, v3, v4, v5, v6, v7);
    v13 = swift_allocObject();
    sub_1C4424F4C(v13);
    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * (v14 / 40);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v15 = v13 + 32;
  v16 = v0 + 32;
  if (v1)
  {
    if (v13 != v0 || &v16[40 * v11] <= v15)
    {
      memmove(v15, v16, 40 * v11);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1C45A1C20()
{
  sub_1C441581C();
  if (v5)
  {
    sub_1C441172C();
    if (v7 != v8)
    {
      sub_1C442B904();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1C440A4D4();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_1C442DD18(v6);
  if (v3)
  {
    sub_1C4422208(v9, v10, v11, v12, v13, v14);
    v15 = swift_allocObject();
    v16 = j__malloc_size(v15);
    v15[2] = v2;
    v15[3] = 2 * v16 - 64;
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  v17 = sub_1C441D138();
  if (v1)
  {
    if (v15 != v0 || &v18[v2] <= v17)
    {
      memmove(v17, v18, v2);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v17, v18, v2);
  }
}

void sub_1C45A1CE0()
{
  sub_1C442F0C4();
  sub_1C43FFC44();
  if (v7)
  {
    sub_1C441172C();
    if (v9 != v10)
    {
      sub_1C442B904();
      if (v9)
      {
        __break(1u);
        return;
      }

      sub_1C440A4D4();
    }
  }

  else
  {
    v8 = v6;
  }

  sub_1C44108C0(v8);
  if (v3)
  {
    sub_1C4422208(v11, v12, v13, v14, v15, v16);
    v17 = sub_1C44182F4();
    j__malloc_size(v17);
    sub_1C442FAC8();
    v17[2] = v2;
    v17[3] = v18;
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  sub_1C440BB20();
  if (v1)
  {
    if (v17 != v0 || v5 + 8 * v2 <= v4)
    {
      v20 = sub_1C4404044();
      memmove(v20, v21, v22);
    }

    v0[2] = 0;
  }

  else
  {
    v23 = sub_1C4404050();
    sub_1C456902C(v23, v24);
    sub_1C4416D38();
    swift_arrayInitWithCopy();
  }

  sub_1C4422220();
}

void *sub_1C45A1DB0(void *result, int64_t a2, char a3, void *a4)
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
    sub_1C456902C(&qword_1EC0B9048, &unk_1C4F0EB60);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[7 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1C456902C(&qword_1EC0B9050, &unk_1C4F5BC50);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C45A1EE8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C456902C(&qword_1EC0B8FF0, &qword_1C4F0EAD8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

void *sub_1C45A1FE8(void *result, int64_t a2, char a3, void *a4)
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
    sub_1C456902C(&qword_1EC0B8FF8, &qword_1C4F0EAE0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[6 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1C456902C(&qword_1EC0B9000, &qword_1C4F0EAE8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C45A2144(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C456902C(&qword_1EC0B8948, &qword_1C4F0DD50);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[72 * v8] <= v12)
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1C45A225C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_1C4599A2C(a1, a2, a3, a4);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

unint64_t sub_1C45A2288()
{
  result = qword_1EDDFCEB0;
  if (!qword_1EDDFCEB0)
  {
    sub_1C4572308(&qword_1EC0B8EB8, &unk_1C4F0E920);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFCEB0);
  }

  return result;
}

unint64_t sub_1C45A2304()
{
  result = qword_1EDDDBED0;
  if (!qword_1EDDDBED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDBED0);
  }

  return result;
}

uint64_t sub_1C45A23B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  switch(a6)
  {
    case 0:
    case 2:
    case 4:
    case 7:
    case 9:
    case 10:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
      goto LABEL_2;
    case 1:

      goto LABEL_2;
    case 12:

LABEL_2:

      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1C45A2458()
{
  result = qword_1EC0B8EF0;
  if (!qword_1EC0B8EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B8EF0);
  }

  return result;
}

uint64_t sub_1C45A24AC(uint64_t a1, char a2)
{
  if ((a2 & 0xFE) == 2)
  {
    return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  return result;
}

uint64_t sub_1C45A24C0(uint64_t a1, char a2)
{
  if ((a2 & 0xFE) == 2)
  {
  }

  return result;
}

unint64_t sub_1C45A24D4()
{
  result = qword_1EDDE8118;
  if (!qword_1EDDE8118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE8118);
  }

  return result;
}

unint64_t sub_1C45A2528()
{
  result = qword_1EDDE3FE0;
  if (!qword_1EDDE3FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE3FE0);
  }

  return result;
}

uint64_t sub_1C45A257C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_1C4599A58(a1, a2, a3, a4);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

uint64_t sub_1C45A25A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_1C4599AAC(a1, a2, a3, a4);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

uint64_t sub_1C45A25D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_1C4599B00(a1, a2, a3, a4);
  if (!v5)
  {
    *a5 = result;
    a5[1] = v8;
    a5[2] = v9;
  }

  return result;
}

unint64_t sub_1C45A2620()
{
  result = qword_1EC0B90B0;
  if (!qword_1EC0B90B0)
  {
    sub_1C4572308(&qword_1EC0B90A8, &qword_1C4F0EBD0);
    sub_1C45A26A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B90B0);
  }

  return result;
}

unint64_t sub_1C45A26A4()
{
  result = qword_1EC0B90B8;
  if (!qword_1EC0B90B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B90B8);
  }

  return result;
}

unint64_t sub_1C45A2714()
{
  result = qword_1EC0B90E0;
  if (!qword_1EC0B90E0)
  {
    sub_1C4572308(&qword_1EC0B90D8, &qword_1C4F0EBF0);
    sub_1C4470054();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B90E0);
  }

  return result;
}

unint64_t sub_1C45A27BC()
{
  result = qword_1EC0B9128;
  if (!qword_1EC0B9128)
  {
    sub_1C4572308(&qword_1EC0B9120, &qword_1C4F3DD40);
    sub_1C444C16C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B9128);
  }

  return result;
}

unint64_t sub_1C45A2840()
{
  result = qword_1EDDFCE90;
  if (!qword_1EDDFCE90)
  {
    sub_1C4572308(&qword_1EC0B9178, &qword_1C4F11B50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFCE90);
  }

  return result;
}

unint64_t sub_1C45A28BC()
{
  result = qword_1EDDF0620;
  if (!qword_1EDDF0620)
  {
    sub_1C4572308(&qword_1EC0B9180, &unk_1C4F0EC80);
    sub_1C45A2940();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF0620);
  }

  return result;
}

unint64_t sub_1C45A2940()
{
  result = qword_1EDDF05D0;
  if (!qword_1EDDF05D0)
  {
    sub_1C4572308(&qword_1EC0B9188, &unk_1C4F3DD60);
    sub_1C45A29C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF05D0);
  }

  return result;
}

unint64_t sub_1C45A29C4()
{
  result = qword_1EDDF8270;
  if (!qword_1EDDF8270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8270);
  }

  return result;
}

unint64_t sub_1C45A2A18()
{
  result = qword_1EDDFEA58;
  if (!qword_1EDDFEA58)
  {
    sub_1C4572308(&unk_1EC0B9620, &unk_1C4F0E870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFEA58);
  }

  return result;
}

unint64_t sub_1C45A2A94()
{
  result = qword_1EDDFA568;
  if (!qword_1EDDFA568)
  {
    sub_1C4572308(&qword_1EC0B9208, &qword_1C4F0ED20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFA568);
  }

  return result;
}

unint64_t sub_1C45A2B10()
{
  result = qword_1EDDF0628;
  if (!qword_1EDDF0628)
  {
    sub_1C4572308(&qword_1EC0B9228, &unk_1C4F3DD70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF0628);
  }

  return result;
}

unint64_t sub_1C45A2BB0()
{
  result = qword_1EDDF06C0;
  if (!qword_1EDDF06C0)
  {
    sub_1C4572308(&qword_1EC0B9230, &unk_1C4F0ED50);
    sub_1C44C8A04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF06C0);
  }

  return result;
}

uint64_t sub_1C45A2C34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  result = sub_1C4599B3C(a1, a2, a3, a4);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

unint64_t sub_1C45A2C7C()
{
  result = qword_1EDDF0690;
  if (!qword_1EDDF0690)
  {
    sub_1C4572308(&qword_1EC0B9238, &qword_1C4F3DD90);
    sub_1C45A2D00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF0690);
  }

  return result;
}

unint64_t sub_1C45A2D00()
{
  result = qword_1EDDF7B68;
  if (!qword_1EDDF7B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF7B68);
  }

  return result;
}

unint64_t sub_1C45A2D54()
{
  result = qword_1EDDDBB00;
  if (!qword_1EDDDBB00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDDDBB00);
  }

  return result;
}

unint64_t sub_1C45A2DB4()
{
  result = qword_1EC0B9418;
  if (!qword_1EC0B9418)
  {
    sub_1C4572308(&qword_1EC0B9410, &qword_1C4F3DDA0);
    sub_1C45A2E38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B9418);
  }

  return result;
}

unint64_t sub_1C45A2E38()
{
  result = qword_1EC0B9420;
  if (!qword_1EC0B9420)
  {
    sub_1C4572308(&qword_1EC0B9428, &unk_1C4F0EFB0);
    sub_1C45A2EC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B9420);
  }

  return result;
}

unint64_t sub_1C45A2EC4()
{
  result = qword_1EDDDBD80;
  if (!qword_1EDDDBD80)
  {
    sub_1C4572308(&qword_1EC0C6370, &qword_1C4F0E1A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDBD80);
  }

  return result;
}

unint64_t sub_1C45A2F48()
{
  result = qword_1EDDF9D90[0];
  if (!qword_1EDDF9D90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDF9D90);
  }

  return result;
}

unint64_t sub_1C45A2FC0()
{
  result = qword_1EC0B9448;
  if (!qword_1EC0B9448)
  {
    sub_1C4572308(&qword_1EC0B9440, &unk_1C4F0EFD0);
    sub_1C450220C(&qword_1EDDEFFD8, MEMORY[0x1E69A91A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B9448);
  }

  return result;
}

unint64_t sub_1C45A3074()
{
  result = qword_1EDDDBC08;
  if (!qword_1EDDDBC08)
  {
    sub_1C4572308(&qword_1EC0B9478, &qword_1C4F0F010);
    sub_1C45A2A18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDBC08);
  }

  return result;
}

unint64_t sub_1C45A3114()
{
  result = qword_1EC0B9488;
  if (!qword_1EC0B9488)
  {
    sub_1C4572308(&qword_1EC0B9480, &qword_1C4F0F018);
    sub_1C45A3198();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B9488);
  }

  return result;
}

unint64_t sub_1C45A3198()
{
  result = qword_1EC0B9490;
  if (!qword_1EC0B9490)
  {
    sub_1C4572308(&qword_1EC0B9498, &qword_1C4F0F020);
    sub_1C45A2A18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B9490);
  }

  return result;
}

uint64_t AssetRegistryOverrideStoreCleanupTask.__allocating_init(config:)(uint64_t a1)
{
  v3 = type metadata accessor for Configuration();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1C43FBCC4();
  v7 = v6 - v5;
  type metadata accessor for AssetRegistryFullServer();
  sub_1C44098F0(a1, v7);
  v8 = sub_1C4EF9348();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  sub_1C4EF9338();
  v11 = sub_1C4473C20(v7);
  result = sub_1C4467948(a1);
  if (!v1)
  {
    type metadata accessor for AssetRegistryOverrideStoreCleanupTask();
    result = swift_allocObject();
    *(result + 16) = v11;
  }

  return result;
}

void sub_1C45A3350()
{
  v104 = sub_1C4EFF9E8();
  v2 = sub_1C43FCDF8(v104);
  v112 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBCC4();
  v103 = v7 - v6;
  v106 = sub_1C4EFF918();
  v8 = sub_1C43FCDF8(v106);
  v111 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBCC4();
  v14 = v13 - v12;
  v15 = sub_1C456902C(&qword_1EC0B8E90, &unk_1C4F0F0A0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v83 - v17;
  v19 = sub_1C4EFCDD8();
  v20 = sub_1C43FCDF8(v19);
  v109 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v25 = &v83 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v83 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v83 - v30;
  v32 = *(v0 + 16);
  v33 = *(v32 + 24);

  AssetRegistryOverrideStore.allOverridesIds()();
  if (v1)
  {
LABEL_2:

    return;
  }

  v99 = v34;
  v100 = v18;
  v110 = v32;
  v96 = v25;
  v97 = v14;
  v92 = v28;
  v105 = v31;
  v108 = v19;

  sub_1C4F01968();
  v36 = 0;
  v37 = v99;
  v38 = v99 + 64;
  v39 = 1 << *(v99 + 32);
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  else
  {
    v40 = -1;
  }

  v41 = v40 & *(v99 + 64);
  v42 = (v39 + 63) >> 6;
  v94 = (v109 + 32);
  v93 = v111 + 8;
  v88 = v112 + 88;
  v87 = *MEMORY[0x1E69A9A80];
  v86 = *MEMORY[0x1E69A9A78];
  v89 = v112 + 8;
  v95 = (v109 + 8);
  *&v35 = 136315394;
  v85 = v35;
  v43 = v108;
  v44 = v105;
  v45 = v100;
  v84 = v99 + 64;
  v83 = v42;
  if (v41)
  {
LABEL_7:
    v46 = v36;
LABEL_11:
    v91 = (v41 - 1) & v41;
    v47 = __clz(__rbit64(v41)) | (v46 << 6);
    v48 = (*(v37 + 48) + 16 * v47);
    v49 = *(*(v37 + 56) + 8 * v47);
    v50 = v48[1];
    v111 = *v48;
    v112 = v50;
    v51 = v49 + 56;
    v52 = 1 << *(v49 + 32);
    if (v52 < 64)
    {
      v53 = ~(-1 << v52);
    }

    else
    {
      v53 = -1;
    }

    v54 = v53 & *(v49 + 56);
    v55 = (v52 + 63) >> 6;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v107 = v49;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v56 = 0;
    v101 = v55;
    v102 = v49 + 56;
    while (1)
    {
      while (1)
      {
        if (!v54)
        {
          while (1)
          {
            v57 = v56 + 1;
            if (__OFADD__(v56, 1))
            {
              __break(1u);
              goto LABEL_38;
            }

            if (v57 >= v55)
            {
              break;
            }

            v54 = *(v51 + 8 * v57);
            ++v56;
            if (v54)
            {
              goto LABEL_20;
            }
          }

          v36 = v46;
          v37 = v99;
          v38 = v84;
          v42 = v83;
          v41 = v91;
          if (!v91)
          {
            goto LABEL_8;
          }

          goto LABEL_7;
        }

        v57 = v56;
LABEL_20:
        v58 = (*(v107 + 48) + ((v57 << 10) | (16 * __clz(__rbit64(v54)))));
        v59 = *v58;
        v60 = v58[1];
        v61 = *(v110 + 24);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

        v109 = v59;
        AssetRegistryOverrideStore.fetchAssetEntry(for:in:)(v59, v60, v111);
        v54 &= v54 - 1;

        if (sub_1C44157D4(v45, 1, v43) == 1)
        {
          break;
        }

        v98 = *v94;
        (v98)(v44, v45, v43);
        sub_1C4EFF908();
        v72 = v96;
        sub_1C4596464();
        v90 = 0;
        v73 = sub_1C43FFC9C();
        v74(v73);
        v45 = v92;
        (v98)(v92, v72, v108);
        v75 = sub_1C4EFCDA8();
        v44 = v105;
        if (sub_1C4EFCDA8() >= v75)
        {

          v43 = v108;
          v78 = v90;
        }

        else
        {
          v76 = *(v110 + 24);

          v77 = v90;
          sub_1C4599140(v109, v60, v111);
          v78 = v77;
          if (v77)
          {
LABEL_38:

            v81 = *v95;
            v82 = v108;
            (*v95)(v45, v108);
            v81(v44, v82);
            return;
          }

          v43 = v108;
        }

        sub_1C4F01968();
        if (v78)
        {

          v80 = *v95;
          (*v95)(v45, v43);
          v80(v44, v43);
          return;
        }

        v79 = *v95;
        (*v95)(v45, v43);
        v79(v44, v43);
        v56 = v57;
        v45 = v100;
LABEL_33:
        v55 = v101;
        v51 = v102;
      }

      sub_1C4597278(v45);
      if (qword_1EDDFECB0 != -1)
      {
        swift_once();
      }

      v62 = sub_1C4F00978();
      sub_1C442B738(v62, qword_1EDDFECB8);
      v63 = v112;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v64 = sub_1C4F00968();
      v65 = sub_1C4F01CD8();

      v98 = v64;
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        v113 = v90;
        *v66 = v85;
        v67 = sub_1C441D828(v109, v60, &v113);

        *(v66 + 4) = v67;
        v45 = v100;
        *(v66 + 12) = 2080;
        *(v66 + 14) = sub_1C441D828(v111, v63, &v113);
        v68 = v65;
        v69 = v98;
        v70 = v90;
        swift_arrayDestroy();
        MEMORY[0x1C6942830](v70, -1, -1);
        v71 = v66;
        v43 = v108;
        MEMORY[0x1C6942830](v71, -1, -1);

        v56 = v57;
        v44 = v105;
        goto LABEL_33;
      }

      v56 = v57;
      v44 = v105;
      v55 = v101;
      v51 = v102;
      v43 = v108;
    }
  }

LABEL_8:
  while (1)
  {
    v46 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v46 >= v42)
    {
      goto LABEL_2;
    }

    v41 = *(v38 + 8 * v46);
    ++v36;
    if (v41)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t AssetRegistryOverrideStoreCleanupTask.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t AssetRegistryOverrideStoreCleanupTask.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1C45A3E54()
{
  v1 = sub_1C456902C(&qword_1EC0B8E80, &unk_1C4F0F2F0);
  v2 = sub_1C43FCDF8(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1C440A514();
  sub_1C4EFCDD8();
  sub_1C4EFF9E8();
  sub_1C4411760(&qword_1EDDEFFD8);
  sub_1C4411760(&unk_1EDDEFFE0);
  sub_1C45A4C04(&qword_1EDDEFF58, 255, MEMORY[0x1E69A9A90]);
  sub_1C4EFF368();
  sub_1C4EFF358();
  return (*(v4 + 8))(v0, v1);
}

uint64_t sub_1C45A4048()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC24IntelligencePlatformCore35AssetRegistryRemoteBackendInProcess_remoteOptions;
  v3 = sub_1C4EFF948();
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(v0 + v2);
  v5 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore35AssetRegistryRemoteBackendInProcess_jsonDecoder);

  return v0;
}

uint64_t sub_1C45A40B8()
{
  sub_1C45A4048();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1C45A4134@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69A9B98];
  v3 = sub_1C4EFFD78();
  v4 = sub_1C43FBCE0(v3);
  v6 = *(v5 + 104);

  return v6(a1, v2, v4);
}

uint64_t *sub_1C45A41A0(uint64_t a1)
{
  v5 = *v1;
  v6 = sub_1C4EFF948();
  v7 = sub_1C43FBD18(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v12 = v11 - v10;
  v13 = type metadata accessor for Configuration();
  v14 = sub_1C43FBD18(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBCC4();
  sub_1C43FFCB0();
  type metadata accessor for AssetRegistryRemoteBackendInProcess();
  sub_1C44098F0(a1, v3);
  sub_1C4EFF6A8();
  sub_1C4EFF698();
  v17 = sub_1C4473AD0(v3, v12);
  if (v2)
  {
    sub_1C4467948(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v18 = v17;
    sub_1C4467948(a1);
    v1[2] = v18;
  }

  return v1;
}

uint64_t sub_1C45A4318@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v25 = a5;
  v27 = a6;
  v12 = sub_1C456902C(&qword_1EC0B9630, &unk_1C4F0F250);
  v13 = sub_1C43FCDF8(v12);
  v26 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C440A514();
  v18 = *(v17 + 16);

  v20 = sub_1C45962F0(v19);
  if (v6)
  {
  }

  v24[1] = v24;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24[0] = v23;
  v23[2] = v22;
  v23[3] = a3;
  v23[4] = a4;
  v23[5] = v18;
  v23[6] = a1;
  v23[7] = a2;
  v23[8] = v25;
  sub_1C4EFCE08();
  sub_1C4EFFB38();
  sub_1C4411760(&unk_1EC0B9640);
  sub_1C4411760(&qword_1EC0B94F0);
  sub_1C45A4C04(&qword_1EC0B9650, 255, MEMORY[0x1E69A9AF8]);
  sub_1C4EFF368();

  sub_1C4EFF358();
  return (*(v26 + 8))(v7, v12);
}

uint64_t sub_1C45A4580()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t static AssetRegistry.CreateBackend.withRemoteBackendInProcess(config:)(uint64_t a1)
{
  v2 = type metadata accessor for Configuration();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1C44098F0(a1, &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_1C4409954(&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  sub_1C44098F0(a1, &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = swift_allocObject();
  sub_1C4409954(&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v5);
  type metadata accessor for AssetRegistryRemoteBackendInProcess();
  type metadata accessor for AssetRegistryRemoteWritableBackendInProcess();
  sub_1C45A4C04(&qword_1EDDFD468, 255, type metadata accessor for AssetRegistryRemoteBackendInProcess);
  sub_1C45A4C04(&qword_1EDDDC220, v8, type metadata accessor for AssetRegistryRemoteWritableBackendInProcess);
  return sub_1C4EFDEF8();
}

uint64_t sub_1C45A47E8@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for Configuration();
  sub_1C43FBD18(v5);
  return sub_1C45A4C4C(a1, v2 + ((*(v6 + 80) + 16) & ~*(v6 + 80)), a2);
}

uint64_t *sub_1C45A4868@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for Configuration();
  v6 = sub_1C43FBD18(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  v11 = v10 - v9;
  sub_1C44098F0(a1, v10 - v9);
  type metadata accessor for AssetRegistryRemoteWritableBackendInProcess();
  v12 = swift_allocObject();
  result = sub_1C45A41A0(v11);
  if (!v2)
  {
    *a2 = v12;
  }

  return result;
}

uint64_t sub_1C45A4908()
{
  v1 = *(type metadata accessor for Configuration() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_1C4EF98F8();
  sub_1C43FBCE0(v5);
  (*(v6 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t *sub_1C45A49CC@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for Configuration();
  sub_1C43FBD18(v3);
  return sub_1C45A4868(v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80)), a1);
}

uint64_t sub_1C45A4A60()
{
  result = sub_1C4EFF948();
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

void sub_1C45A4BDC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  sub_1C4596830();
}

uint64_t sub_1C45A4C04(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1C45A4C4C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v8 = sub_1C4EFF948();
  v9 = sub_1C43FCDF8(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBCC4();
  v16 = v15 - v14;
  v17 = type metadata accessor for Configuration();
  v18 = sub_1C43FBD18(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBCC4();
  sub_1C43FFCB0();
  type metadata accessor for AssetRegistryRemoteBackendInProcess();
  sub_1C44098F0(a2, v4);
  (*(v11 + 16))(v16, a1, v8);
  result = sub_1C4473AD0(v4, v16);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1C45A4D80@<X0>(uint64_t *a1@<X8>)
{
  sub_1C456902C(&qword_1EC0B94F8, &unk_1C4F0F260);
  result = sub_1C4F00048();
  *a1 = result;
  return result;
}

uint64_t sub_1C45A4DEC()
{
  v0 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C44F9918(v0, qword_1EDE2CE78);
  v1 = sub_1C442B738(v0, qword_1EDE2CE78);
  v2 = type metadata accessor for Configuration();

  return sub_1C440BAA8(v1, 1, 1, v2);
}

void sub_1C45A4E68(uint64_t a1)
{
  v2 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0();
  }

  v6 = sub_1C4F00978();
  sub_1C442B738(v6, qword_1EDE2DCD8);
  v7 = sub_1C4F00968();
  v8 = sub_1C4F01CF8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = sub_1C43FCED0();
    *v9 = 0;
    _os_log_impl(&dword_1C43F8000, v7, v8, "AssetRegistryXPC: starting...", v9, 2u);
    sub_1C43FBE2C();
  }

  if (qword_1EDDE7320 != -1)
  {
    sub_1C441F394();
  }

  v10 = sub_1C442B738(v2, qword_1EDE2CE78);
  sub_1C44098F0(a1, v5);
  v11 = type metadata accessor for Configuration();
  sub_1C440BAA8(v5, 0, 1, v11);
  swift_beginAccess();
  sub_1C45A6EE0(v5, v10);
  swift_endAccess();
  sub_1C45A6F50();
  v12 = *MEMORY[0x1E69A9F58];
  sub_1C4F01138();
  v13 = sub_1C49AA56C();
  v14 = qword_1EDE2CE68;
  qword_1EDE2CE68 = v13;
  v15 = v13;

  if (v15)
  {
    qword_1EDE2CE70 = [objc_allocWithZone(type metadata accessor for AssetRegistryXPC.Delegate()) init];
    v16 = qword_1EDE2CE70;
    swift_unknownObjectRelease();
    [v15 setDelegate:v16];

    [v15 resume];
  }

  else
  {
    v15 = sub_1C4F00968();
    v17 = sub_1C4F01CE8();
    if (os_log_type_enabled(v15, v17))
    {
      v18 = sub_1C43FCED0();
      *v18 = 0;
      _os_log_impl(&dword_1C43F8000, v15, v17, "Failed to create AssetRegistryXPC service", v18, 2u);
      sub_1C43FBE2C();
    }
  }
}

id sub_1C45A5110(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtCC24IntelligencePlatformCore16AssetRegistryXPC10BaseServer_jsonEncoder;
  v7 = sub_1C4EF93D8();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  *&v2[v6] = sub_1C4EF93C8();
  *&v2[OBJC_IVAR____TtCC24IntelligencePlatformCore16AssetRegistryXPC10BaseServer_assetRegistryServer] = a1;
  *&v2[OBJC_IVAR____TtCC24IntelligencePlatformCore16AssetRegistryXPC10BaseServer_jsonDecoder] = a2;
  v11.receiver = v2;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t sub_1C45A51B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v34 = a1;
  v35 = a2;
  v39 = sub_1C456902C(&qword_1EC0B8E80, &unk_1C4F0F2F0);
  v6 = sub_1C43FCDF8(v39);
  v38 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C4411778(v10, v33[0]);
  v11 = sub_1C4EFF948();
  v12 = sub_1C43FCDF8(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v18 = v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = objc_autoreleasePoolPush();
  v20 = v4;
  v21 = *(v4 + OBJC_IVAR____TtCC24IntelligencePlatformCore16AssetRegistryXPC10BaseServer_jsonDecoder);
  sub_1C45A70FC(&unk_1EC0B9670, MEMORY[0x1E69A9A30]);
  sub_1C4EF9328();
  if (v5)
  {
    objc_autoreleasePoolPop(v19);
  }

  else
  {
    v33[1] = v14;
    objc_autoreleasePoolPop(v19);
    v33[0] = v33;
    v22 = *(v20 + OBJC_IVAR____TtCC24IntelligencePlatformCore16AssetRegistryXPC10BaseServer_assetRegistryServer);
    MEMORY[0x1EEE9AC00](v23);
    v33[-6] = v24;
    v25 = v35;
    v33[-5] = v34;
    v33[-4] = v25;
    v26 = v37;
    v33[-3] = v36;
    v33[-2] = v26;
    v33[-1] = v18;
    v37 = sub_1C4EFCDD8();
    sub_1C4EFF9E8();
    v27 = MEMORY[0x1E69A91A8];
    sub_1C45A70FC(&qword_1EDDEFFD8, MEMORY[0x1E69A91A8]);
    sub_1C45A70FC(&unk_1EDDEFFE0, v27);
    sub_1C45A70FC(&qword_1EDDEFF58, MEMORY[0x1E69A9A90]);
    sub_1C4EFF368();
    v28 = *(v20 + OBJC_IVAR____TtCC24IntelligencePlatformCore16AssetRegistryXPC10BaseServer_jsonEncoder);
    sub_1C45A7048();
    v21 = sub_1C4EFFF28();
    v30 = sub_1C44065C8();
    v31(v30);
    sub_1C4412C24();
    v32(v18, v11);
  }

  return v21;
}

id AssetRegistryXPC.BaseServer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_1C45A56A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = objc_allocWithZone(type metadata accessor for AssetRegistryXPC.BaseServer());

  *&v3[OBJC_IVAR____TtCC24IntelligencePlatformCore16AssetRegistryXPC6Server_baseServer] = sub_1C45A5110(a1, a3);
  *&v3[OBJC_IVAR____TtCC24IntelligencePlatformCore16AssetRegistryXPC6Server_entitlementInfo] = a2;
  v11.receiver = v3;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, sel_init);

  return v9;
}

void sub_1C45A575C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const void *a8)
{
  v10[2] = a8;
  v9 = *(a7 + OBJC_IVAR____TtCC24IntelligencePlatformCore16AssetRegistryXPC6Server_baseServer);
  AssetRegistryXPC.BaseServer.assetEntryResultData(for:in:remoteOptionsData:completion:)(a1, a2, a3, a4, a5, a6, sub_1C45A6ED8, v10);
  _Block_release(a8);
}

uint64_t sub_1C45A58E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v8 = v6;
  v42 = a4;
  v43 = a2;
  v40 = a3;
  v41 = a1;
  v45 = sub_1C456902C(&qword_1EC0B9630, &unk_1C4F0F250);
  v11 = sub_1C43FCDF8(v45);
  v44 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C4411778(v15, v39[0]);
  v16 = sub_1C4EFCE18();
  v17 = sub_1C43FCDF8(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v23 = v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v8 + OBJC_IVAR____TtCC24IntelligencePlatformCore16AssetRegistryXPC6Server_baseServer);
  v25 = *(v24 + OBJC_IVAR____TtCC24IntelligencePlatformCore16AssetRegistryXPC10BaseServer_jsonDecoder);
  sub_1C44344B8(a5, a6);
  sub_1C45A70FC(&qword_1EC0B9638, MEMORY[0x1E69A91F8]);

  v26 = v16;
  v27 = sub_1C4EFFF38();
  if (!v7)
  {
    v39[0] = v39;
    v39[1] = v19;
    v28 = *(v24 + OBJC_IVAR____TtCC24IntelligencePlatformCore16AssetRegistryXPC10BaseServer_assetRegistryServer);
    v29 = *(v8 + OBJC_IVAR____TtCC24IntelligencePlatformCore16AssetRegistryXPC6Server_entitlementInfo);
    MEMORY[0x1EEE9AC00](v27);
    v39[-8] = v30;
    v31 = v41;
    v32 = v42;
    v39[-7] = v40;
    v39[-6] = v32;
    v39[-5] = v28;
    v39[-4] = v31;
    v39[-3] = v43;
    v39[-2] = v23;
    v43 = sub_1C4EFCE08();
    v42 = sub_1C4EFFB38();
    v33 = MEMORY[0x1E69A91C8];
    sub_1C45A70FC(&unk_1EC0B9640, MEMORY[0x1E69A91C8]);
    sub_1C45A70FC(&qword_1EC0B94F0, v33);
    sub_1C45A70FC(&qword_1EC0B9650, MEMORY[0x1E69A9AF8]);

    sub_1C4EFF368();

    v34 = *(v24 + OBJC_IVAR____TtCC24IntelligencePlatformCore16AssetRegistryXPC10BaseServer_jsonEncoder);
    sub_1C45A6F94();

    v26 = sub_1C4EFFF28();
    v36 = sub_1C44065C8();
    v37(v36);

    sub_1C4412C24();
    v38(v23, v16);
  }

  return v26;
}

void sub_1C45A5CB0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const char *a9, uint64_t (*a10)(uint64_t, unint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0();
  }

  v16 = sub_1C4F00978();
  sub_1C442B738(v16, qword_1EDE2DCD8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v17 = sub_1C4F00968();
  v18 = sub_1C4F01CF8();

  if (os_log_type_enabled(v17, v18))
  {
    v26 = a8;
    v19 = swift_slowAlloc();
    v28[0] = swift_slowAlloc();
    *v19 = 136315394;
    *(v19 + 4) = sub_1C441D828(a1, a2, v28);
    *(v19 + 12) = 2080;
    *(v19 + 14) = sub_1C441D828(a3, a4, v28);
    _os_log_impl(&dword_1C43F8000, v17, v18, a9, v19, 0x16u);
    swift_arrayDestroy();
    sub_1C43FBE2C();
    a8 = v26;
    sub_1C43FBE2C();
  }

  v20 = a10(a1, a2, a3, a4, a5, a6);
  v22 = v21;
  sub_1C44344B8(v20, v21);
  v23 = sub_1C4EF9A38();
  (*(a8 + 16))(a8, v23, 0);

  sub_1C4434000(v20, v22);
  sub_1C4434000(v20, v22);
  sub_1C440A528();

  _Block_release(v24);
}

uint64_t sub_1C45A6078(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void, void, void), uint64_t a8, const char *a9, uint64_t (*a10)(uint64_t, unint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0();
  }

  v15 = sub_1C4F00978();
  sub_1C442B738(v15, qword_1EDE2DCD8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v16 = sub_1C4F00968();
  v17 = sub_1C4F01CF8();

  if (os_log_type_enabled(v16, v17))
  {
    v26 = a7;
    v18 = swift_slowAlloc();
    v29[0] = swift_slowAlloc();
    *v18 = 136315394;
    *(v18 + 4) = sub_1C441D828(a1, a2, v29);
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_1C441D828(a3, a4, v29);
    _os_log_impl(&dword_1C43F8000, v16, v17, a9, v18, 0x16u);
    swift_arrayDestroy();
    sub_1C43FBE2C();
    a7 = v26;
    sub_1C43FBE2C();
  }

  v19 = a10(a1, a2, a3, a4, a5, a6);
  v21 = v20;
  sub_1C44344B8(v19, v20);
  a7(v19, v21, 0);
  sub_1C4434000(v19, v21);
  sub_1C440A528();

  return sub_1C4434000(v22, v23);
}

uint64_t sub_1C45A641C(void *a1, int a2, int a3, int a4, void *a5, void *aBlock, const char *a7, uint64_t (*a8)(uint64_t, unint64_t, uint64_t, unint64_t, uint64_t, uint64_t), uint64_t a9)
{
  v11 = _Block_copy(aBlock);
  v12 = sub_1C4F01138();
  v14 = v13;
  v15 = sub_1C4F01138();
  v17 = v16;
  v18 = a5;
  v19 = a1;
  v20 = sub_1C4EF9A68();
  v22 = v21;

  _Block_copy(v11);
  sub_1C45A5CB0(v12, v14, v15, v17, v20, v22, v19, v11, a7, a8);
  _Block_release(v11);
  sub_1C4434000(v20, v22);
}

uint64_t sub_1C45A65C0(uint64_t a1, void *a2)
{
  v3 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v52 - v8;
  if (qword_1EDDE7320 != -1)
  {
    sub_1C441F394();
  }

  v10 = sub_1C442B738(v3, qword_1EDE2CE78);
  swift_beginAccess();
  sub_1C4466EEC(v10, v9);
  v11 = type metadata accessor for Configuration();
  result = sub_1C44157D4(v9, 1, v11);
  if (result != 1)
  {
    v13 = &v9[*(v11 + 20)];
    v14 = *v13;
    v15 = *(v13 + 1);
    sub_1C4467948(v9);
    if (qword_1EDDFEC88 != -1)
    {
      swift_once();
    }

    if ((xmmword_1EDDFEC90 & ~v14) == 0 && (*(&xmmword_1EDDFEC90 + 1) & v15) == *(&xmmword_1EDDFEC90 + 1))
    {
      if (qword_1EDDFA678 != -1)
      {
        sub_1C43FFCC0();
      }

      v21 = sub_1C4F00978();
      sub_1C442B738(v21, qword_1EDE2DCD8);
      v22 = sub_1C4F00968();
      v23 = sub_1C4F01CF8();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = sub_1C43FCED0();
        *v24 = 0;
        _os_log_impl(&dword_1C43F8000, v22, v23, "AssetRegistryXPC: service is in no-op mode.", v24, 2u);
        sub_1C43FBE2C();
      }
    }

    else
    {
      v17 = *MEMORY[0x1E69A9F58];
      sub_1C4F01138();
      v18 = sub_1C446874C();

      if (v18)
      {
        v19 = sub_1C4F01108();
        v20 = [a2 valueForEntitlement_];

        if (v20)
        {
          sub_1C4F02078();
          swift_unknownObjectRelease();
        }

        else
        {
          v60 = 0u;
          v61 = 0u;
        }

        aBlock = v60;
        v55 = v61;
        if (*(&v61 + 1))
        {
          sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
          if (swift_dynamicCast())
          {
            v25 = v53;
            if (qword_1EDDFA678 != -1)
            {
              sub_1C43FFCC0();
            }

            v26 = sub_1C4F00978();
            sub_1C442B738(v26, qword_1EDE2DCD8);
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            v27 = sub_1C4F00968();
            v28 = sub_1C4F01CF8();

            if (os_log_type_enabled(v27, v28))
            {
              v29 = swift_slowAlloc();
              v52 = swift_slowAlloc();
              *&aBlock = v52;
              *v29 = 136315138;
              v30 = MEMORY[0x1C6940380](v25, MEMORY[0x1E69E6158]);
              v32 = sub_1C441D828(v30, v31, &aBlock);

              *(v29 + 4) = v32;
              _os_log_impl(&dword_1C43F8000, v27, v28, "ViewXPC.Delegate: overrideAllowedDomainIds: %s", v29, 0xCu);
              sub_1C440962C(v52);
              sub_1C43FBE2C();
              sub_1C43FBE2C();
            }

            sub_1C4499940(v25, v33, v34, v35, v36, v37, v38, v39, v52, v53, aBlock, *(&aBlock + 1), v55, *(&v55 + 1), v56, v57, v58, v59, v60, *(&v60 + 1), v61, *(&v61 + 1));
            v41 = v40;
LABEL_28:
            v42 = sub_1C4EF9348();
            v43 = *(v42 + 48);
            v44 = *(v42 + 52);
            swift_allocObject();
            v45 = sub_1C4EF9338();
            sub_1C4466EEC(v10, v7);
            result = sub_1C44157D4(v7, 1, v11);
            if (result != 1)
            {
              type metadata accessor for AssetRegistryFullServer();

              sub_1C4473C20(v7);
              v46 = [objc_opt_self() interfaceWithProtocol_];
              sub_1C43FD04C(v46, sel_setExportedInterface_);

              v47 = objc_allocWithZone(type metadata accessor for AssetRegistryXPC.Server());

              v49 = sub_1C45A56A0(v48, v41, v45);
              sub_1C43FD04C(v49, sel_setExportedObject_);

              v56 = sub_1C45A6C18;
              v57 = 0;
              *&aBlock = MEMORY[0x1E69E9820];
              *(&aBlock + 1) = 1107296256;
              *&v55 = sub_1C4833DD0;
              *(&v55 + 1) = &unk_1F43E12F8;
              v50 = _Block_copy(&aBlock);
              sub_1C43FD04C(v50, sel_setInterruptionHandler_);
              _Block_release(v50);
              v56 = sub_1C45A6C38;
              v57 = 0;
              *&aBlock = MEMORY[0x1E69E9820];
              *(&aBlock + 1) = 1107296256;
              *&v55 = sub_1C4833DD0;
              *(&v55 + 1) = &unk_1F43E1320;
              v51 = _Block_copy(&aBlock);
              sub_1C43FD04C(v51, sel_setInvalidationHandler_);
              _Block_release(v51);
              [a2 resume];

              return 1;
            }

            goto LABEL_32;
          }
        }

        else
        {
          sub_1C4448244(&aBlock);
        }

        v41 = MEMORY[0x1E69E7CD0];
        goto LABEL_28;
      }
    }

    return 0;
  }

  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_1C45A6C58(uint64_t (*a1)(void), const char *a2)
{
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0();
  }

  v4 = sub_1C4F00978();
  sub_1C442B738(v4, qword_1EDE2DCD8);
  oslog = sub_1C4F00968();
  v5 = a1();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = sub_1C43FCED0();
    *v6 = 0;
    _os_log_impl(&dword_1C43F8000, oslog, v5, a2, v6, 2u);
    sub_1C43FBE2C();
  }
}

id _s24IntelligencePlatformCore16AssetRegistryXPCC10BaseServerCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C45A6EE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C45A6F50()
{
  result = qword_1EDDFA520;
  if (!qword_1EDDFA520)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDDFA520);
  }

  return result;
}

unint64_t sub_1C45A6F94()
{
  result = qword_1EC0B9658;
  if (!qword_1EC0B9658)
  {
    sub_1C4572308(&qword_1EC0B9630, &unk_1C4F0F250);
    sub_1C45A70FC(&unk_1EC0B9660, MEMORY[0x1E69A91C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B9658);
  }

  return result;
}

unint64_t sub_1C45A7048()
{
  result = qword_1EC0B9680;
  if (!qword_1EC0B9680)
  {
    sub_1C4572308(&qword_1EC0B8E80, &unk_1C4F0F2F0);
    sub_1C45A70FC(qword_1EC0B9688, MEMORY[0x1E69A91A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B9680);
  }

  return result;
}

uint64_t sub_1C45A70FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C45A7164()
{
  sub_1C43FBCD4();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v1[5] = *(v2 + 32);
  v1[6] = *(v2 + 16);
  v1[7] = swift_getAssociatedTypeWitness();
  v4 = sub_1C4F01F48();
  v1[8] = v4;
  v5 = *(v4 - 8);
  v1[9] = v5;
  v6 = *(v5 + 64) + 15;
  v1[10] = swift_task_alloc();
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C45A7254()
{
  sub_1C43FEAEC();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v1 + 56);
  *(v0 + 128) = v3;
  if (*(v2 + v3) == 1)
  {
    v4 = *(v1 + 52);
    v5 = *(v1 + 40);
    v6 = *(v1 + 24);
    sub_1C440F228();
    swift_getAssociatedTypeWitness();
    sub_1C4402120();
    swift_getAssociatedConformanceWitness();
    v7 = *(MEMORY[0x1E69E85A8] + 4);
    swift_task_alloc();
    sub_1C43FBE70();
    *(v0 + 88) = v8;
    *v8 = v9;
    v8[1] = sub_1C45A73E4;
    v10 = *(v0 + 16);
  }

  else
  {
    v11 = *(v0 + 40);
    v12 = *(v0 + 48);
    sub_1C43FD064();
    swift_getAssociatedTypeWitness();
    sub_1C440A544();
    v13 = *(MEMORY[0x1E69E85A8] + 4);
    swift_task_alloc();
    sub_1C43FBE70();
    *(v0 + 96) = v14;
    *v14 = v15;
    v14[1] = sub_1C45A74F0;
    v16 = *(v0 + 80);
    v17 = *(v0 + 32);
  }

  sub_1C44258D4();

  return MEMORY[0x1EEE6D8C8](v18);
}

uint64_t sub_1C45A73E4()
{
  sub_1C43FCF70();
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *v0;
  sub_1C43FBDAC();
  *v4 = v3;

  v5 = *(v1 + 80);

  v6 = *(v3 + 8);

  return v6();
}

uint64_t sub_1C45A74F0()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FBE64();
  *v3 = v2;
  v5 = *(v4 + 96);
  v6 = *v1;
  sub_1C43FBDAC();
  *v7 = v6;
  *(v8 + 104) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C45A75EC()
{
  sub_1C43FEAEC();
  v1 = *(v0 + 80);
  v2 = sub_1C44157D4(v1, 1, *(v0 + 56));
  v3 = *(v0 + 128);
  if (v2 != 1)
  {
    v14 = *(v0 + 64);
    v15 = *(v0 + 72);
    v16 = *(v0 + 16);
    *(*(v0 + 32) + v3) = 0;
    (*(v15 + 32))(v16, v1, v14);
    v17 = *(v0 + 80);

    sub_1C43FBDA0();
    sub_1C44258D4();

    __asm { BRAA            X1, X16 }
  }

  v4 = *(v0 + 24);
  *(*(v0 + 32) + v3) = 1;
  v5 = *(v4 + 52);
  v6 = *(v4 + 40);
  v7 = *(v4 + 24);
  sub_1C440F228();
  swift_getAssociatedTypeWitness();
  sub_1C4402120();
  swift_getAssociatedConformanceWitness();
  v8 = *(MEMORY[0x1E69E85A8] + 4);
  swift_task_alloc();
  sub_1C43FBE70();
  *(v0 + 112) = v9;
  *v9 = v10;
  v9[1] = sub_1C45A776C;
  v11 = *(v0 + 16);
  sub_1C44258D4();

  return MEMORY[0x1EEE6D8C8](v12);
}

uint64_t sub_1C45A776C()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FBE64();
  *v3 = v2;
  v5 = *(v4 + 112);
  v6 = *v1;
  sub_1C43FBDAC();
  *v7 = v6;
  *(v8 + 120) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C45A7868()
{
  sub_1C43FBCD4();
  (*(v0[9] + 8))(v0[10], v0[8]);
  v1 = v0[10];

  sub_1C43FBDA0();

  return v2();
}

uint64_t sub_1C45A78DC()
{
  sub_1C43FBCD4();
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);

  sub_1C43FBDA0();

  return v3();
}

uint64_t sub_1C45A7938()
{
  sub_1C43FBCD4();
  (*(v0[9] + 8))(v0[10], v0[8]);
  v1 = v0[15];
  v2 = v0[10];

  sub_1C43FBDA0();

  return v3();
}

uint64_t sub_1C45A79AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C43FCE50(AssociatedTypeWitness);
  (*(v9 + 32))(a4, a1);
  v10 = type metadata accessor for AppendedAsyncSequence.AppendedAsyncIterator();
  v11 = *(v10 + 52);
  v12 = swift_getAssociatedTypeWitness();
  sub_1C43FCE50(v12);
  result = (*(v13 + 32))(a4 + v11, a2);
  *(a4 + *(v10 + 56)) = a3;
  return result;
}

uint64_t sub_1C45A7AC4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C442F080;

  return sub_1C45A7164();
}

uint64_t sub_1C45A7B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = *(MEMORY[0x1E69E85D8] + 4);
  v13 = swift_task_alloc();
  *(v6 + 32) = v13;
  *v13 = v6;
  v13[1] = sub_1C45AB45C;

  return MEMORY[0x1EEE6D8E0](a1, a2, a3, a5, a6, v6 + 16);
}

uint64_t sub_1C45A7C40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v39 = a2;
  v5 = *(a1 + 24);
  sub_1C43FCE64();
  v38 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBCC4();
  v12 = v11 - v10;
  v37[1] = *(v13 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C43FBD18(AssociatedTypeWitness);
  v16 = *(v15 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v17);
  v19 = v37 - v18;
  v20 = *(a1 + 16);
  sub_1C43FCE64();
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FBCC4();
  v28 = v27 - v26;
  v29 = *(a1 + 32);
  v30 = swift_getAssociatedTypeWitness();
  sub_1C43FBD18(v30);
  v32 = *(v31 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v33);
  v35 = v37 - v34;
  (*(v22 + 16))(v28, v3, v20);
  sub_1C4F019A8();
  (*(v38 + 16))(v12, v3 + *(a1 + 52), v5);
  sub_1C4F019A8();
  return sub_1C45A79AC(v35, v19, 0, v39);
}

uint64_t AnyAsyncSequence.AsyncIterator.next()()
{
  sub_1C43FCF70();
  v3 = v2;
  v4 = *v0;
  v5 = v0[1];
  v10 = (v4 + *v4);
  v6 = v4[1];
  swift_task_alloc();
  sub_1C43FBE70();
  *(v1 + 16) = v7;
  *v7 = v8;
  v7[1] = sub_1C442E8C4;

  return v10(v3);
}

uint64_t sub_1C45A7F8C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C442F080;

  return AnyAsyncSequence.AsyncIterator.next()();
}

uint64_t sub_1C45A8024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = *(MEMORY[0x1E69E85D8] + 4);
  v13 = swift_task_alloc();
  *(v6 + 32) = v13;
  *v13 = v6;
  v13[1] = sub_1C45A80F8;

  return MEMORY[0x1EEE6D8E0](a1, a2, a3, a5, a6, v6 + 16);
}

uint64_t sub_1C45A80F8()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C43FBE64();
  *v4 = v3;
  v6 = *(v5 + 32);
  v7 = *v1;
  sub_1C43FBDAC();
  *v8 = v7;

  if (v0)
  {
    **(v3 + 24) = *(v3 + 16);
  }

  sub_1C43FBDA0();

  return v9();
}

uint64_t AnyAsyncSequence.makeAsyncIterator()()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return v1();
}

uint64_t sub_1C45A823C()
{
  AnyAsyncSequence.makeAsyncIterator()();
  v1 = *(v0 + 8);
}

uint64_t sub_1C45A8268()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C45A82BC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C45A8310(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C45A8380(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return sub_1C44157D4(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return sub_1C44157D4(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_1C45A84BC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          sub_1C440BAA8(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C45A86D8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C45A8758(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(*(AssociatedTypeWitness - 8) + 84);
  v10 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v9)
  {
LABEL_20:

    return sub_1C44157D4(a1, v9, AssociatedTypeWitness);
  }

  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v13 = ((a2 - v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v13))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v13 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v13 < 2)
    {
LABEL_19:
      if (v9)
      {
        goto LABEL_20;
      }

      return 0;
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_19;
  }

LABEL_11:
  v14 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v14 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    switch(v10)
    {
      case 2:
        LODWORD(v10) = *a1;
        break;
      case 3:
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v10) = *a1;
        break;
      default:
        LODWORD(v10) = *a1;
        break;
    }
  }

  return v9 + (v10 | v14) + 1;
}

void sub_1C45A88E8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(*(AssociatedTypeWitness - 8) + 84);
  v11 = *(*(AssociatedTypeWitness - 8) + 64);
  v12 = 8 * v11;
  if (a3 <= v10)
  {
    v13 = 0;
  }

  else if (v11 <= 3)
  {
    v16 = ((a3 - v10 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v16))
    {
      v13 = 4;
    }

    else
    {
      if (v16 < 0x100)
      {
        v17 = 1;
      }

      else
      {
        v17 = 2;
      }

      if (v16 >= 2)
      {
        v13 = v17;
      }

      else
      {
        v13 = 0;
      }
    }
  }

  else
  {
    v13 = 1;
  }

  if (v10 >= a2)
  {
    switch(v13)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          sub_1C440BAA8(a1, a2, v10, AssociatedTypeWitness);
        }

        break;
    }
  }

  else
  {
    v14 = ~v10 + a2;
    if (v11 < 4)
    {
      v15 = (v14 >> v12) + 1;
      if (v11)
      {
        v18 = v14 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v18;
          a1[2] = BYTE2(v18);
        }

        else if (v11 == 2)
        {
          *a1 = v18;
        }

        else
        {
          *a1 = v14;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v14;
      v15 = 1;
    }

    switch(v13)
    {
      case 1:
        a1[v11] = v15;
        break;
      case 2:
        *&a1[v11] = v15;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v11] = v15;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C45A8B28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_1C43FCE64();
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  (*(v8 + 16))(&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  result = (*(v8 + 32))(v13 + v12, &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  *a3 = sub_1C45A95AC;
  a3[1] = v13;
  return result;
}

void *sub_1C45A8C48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v12 = swift_allocBox();
  (*(v8 + 16))(v11, a1, a2);
  sub_1C4F019A8();
  result = swift_allocObject();
  result[2] = a2;
  result[3] = a3;
  result[4] = v12;
  *a4 = &unk_1C4F0F530;
  a4[1] = result;
  return result;
}

uint64_t sub_1C45A8D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[5] = a1;
  v4[8] = swift_getAssociatedTypeWitness();
  v4[9] = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](sub_1C45A8E24, 0, 0);
}

uint64_t sub_1C45A8E24()
{
  sub_1C43FCF70();
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  swift_beginAccess();
  swift_getAssociatedConformanceWitness();
  v5 = *(MEMORY[0x1E69E85A8] + 4);
  swift_task_alloc();
  sub_1C43FBE70();
  v0[10] = v6;
  *v6 = v7;
  v6[1] = sub_1C45A8F00;
  v8 = v0[8];
  v9 = v0[9];
  v10 = v0[5];

  return MEMORY[0x1EEE6D8C8](v10);
}

uint64_t sub_1C45A8F00()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C43FBE64();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  sub_1C43FBDAC();
  *v8 = v7;
  *(v3 + 88) = v0;

  if (v0)
  {
    sub_1C43FEAF8();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    swift_endAccess();
    sub_1C43FBDA0();

    return v12();
  }
}

uint64_t sub_1C45A9020()
{
  sub_1C43FBCD4();
  swift_endAccess();
  sub_1C43FBDA0();
  v2 = *(v0 + 88);

  return v1();
}

uint64_t sub_1C45A907C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_1C43FEAF8();
  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

void sub_1C45A90AC()
{
  sub_1C43FEAEC();
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1C4F01FA8();
  sub_1C43FBDA0();
  sub_1C44258D4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1C45A9168()
{
  v0 = *(*(swift_getAssociatedTypeWitness() - 8) + 32);
  v1 = sub_1C4402120();

  return v2(v1);
}

uint64_t sub_1C45A91EC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C445229C;

  return sub_1C45A907C(a1, a2);
}

uint64_t sub_1C45A9294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(MEMORY[0x1E69E85D8] + 4);
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_1C45A9360;

  return MEMORY[0x1EEE6D8E0](a1, a2, a3, a5, a6, v13);
}

uint64_t sub_1C45A9360()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_1C43FBDAC();
  *v4 = v3;

  sub_1C43FBDA0();

  return v5();
}

uint64_t sub_1C45A9464(uint64_t a1)
{
  v1 = *(a1 + 16);
  sub_1C43FCE64();
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  v8 = *(v7 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C43FBD18(AssociatedTypeWitness);
  v11 = *(v10 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v12);
  v13 = *(v3 + 16);
  sub_1C440F228();
  v14();
  sub_1C4F01478();
  return sub_1C45A9168();
}

uint64_t sub_1C45A95E8()
{
  sub_1C43FCF70();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  swift_task_alloc();
  sub_1C43FBE70();
  *(v1 + 16) = v7;
  *v7 = v8;
  v7[1] = sub_1C442E8C4;

  return sub_1C45A8D88(v3, v6, v4, v5);
}

uint64_t sub_1C45A9694(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_DWORD *sub_1C45A970C(_DWORD *result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 < a2)
  {
    v6 = ((*(*(v4 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v7 = a2 - v5;
    v8 = v6 & 0xFFFFFFF8;
    if ((v6 & 0xFFFFFFF8) != 0)
    {
      v9 = 2;
    }

    else
    {
      v9 = v7 + 1;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    switch(v11)
    {
      case 1:
        v12 = *(result + v6);
        if (v12)
        {
          goto LABEL_18;
        }

        goto LABEL_22;
      case 2:
        v12 = *(result + v6);
        if (v12)
        {
          goto LABEL_18;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v12 = *(result + v6);
        if (!v12)
        {
          goto LABEL_22;
        }

LABEL_18:
        v13 = v12 - 1;
        if (v8)
        {
          v13 = 0;
          LODWORD(v8) = *result;
        }

        return (v5 + (v8 | v13) + 1);
      default:
LABEL_22:
        if (v5)
        {
          return sub_1C44157D4(result, v5, v4);
        }

        return 0;
    }
  }

  return sub_1C44157D4(result, v5, v4);
}

void sub_1C45A9810(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = ((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v12 = 0;
  }

  else
  {
    v9 = a3 - v7;
    if (((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  if (a2 <= v7)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 3:
LABEL_34:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_28;
      default:
LABEL_28:
        if (a2)
        {
LABEL_29:

          sub_1C440BAA8(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    if (((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v13 = a2 - v7;
    }

    else
    {
      v13 = 1;
    }

    if (((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v14 = ~v7 + a2;
      bzero(a1, v8);
      *a1 = v14;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v13;
        break;
      case 2:
        *&a1[v8] = v13;
        break;
      case 3:
        goto LABEL_34;
      case 4:
        *&a1[v8] = v13;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C45A99C8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C45A9A54(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 84);
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  if (v9 <= v6)
  {
    v11 = *(*(v5 - 8) + 84);
  }

  else
  {
    v11 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(*(v5 - 8) + 64) + v10;
  v13 = a2 - v11;
  if (a2 <= v11)
  {
LABEL_25:
    if (v6 < v9)
    {
      a1 = ((a1 + v12) & ~v10);
      v6 = *(v8 + 84);
      v5 = v7;
    }

    return sub_1C44157D4(a1, v6, v5);
  }

  v14 = (v12 & ~v10) + *(*(v7 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_24:
      if (v11)
      {
        goto LABEL_25;
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_24;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    switch(v19)
    {
      case 2:
        v20 = *a1;
        break;
      case 3:
        v20 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v20 = *a1;
        break;
      default:
        v20 = *a1;
        break;
    }
  }

  else
  {
    v20 = 0;
  }

  return v11 + (v20 | v18) + 1;
}

void sub_1C45A9C1C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = a1;
  v7 = *(a4 + 16);
  v8 = *(a4 + 24);
  v9 = *(*(v7 - 8) + 84);
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = *(*(v7 - 8) + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(*(v7 - 8) + 64) + v13;
  v15 = (v14 & ~v13) + *(*(v8 - 8) + 64);
  v16 = 8 * v15;
  v17 = a3 >= v12;
  v18 = a3 - v12;
  if (v18 != 0 && v17)
  {
    if (v15 <= 3)
    {
      v22 = ((v18 + ~(-1 << v16)) >> v16) + 1;
      if (HIWORD(v22))
      {
        v19 = 4;
      }

      else
      {
        if (v22 < 0x100)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }

        if (v22 >= 2)
        {
          v19 = v23;
        }

        else
        {
          v19 = 0;
        }
      }
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  if (v12 >= a2)
  {
    switch(v19)
    {
      case 1:
        a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v15] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v9 < v11)
          {
            a1 = (&a1[v14] & ~v13);
            v9 = v11;
            v7 = v8;
          }

          sub_1C440BAA8(a1, a2, v9, v7);
        }

        break;
    }
  }

  else
  {
    v20 = ~v12 + a2;
    if (v15 < 4)
    {
      v21 = (v20 >> v16) + 1;
      if (v15)
      {
        v24 = v20 & ~(-1 << v16);
        bzero(a1, v15);
        if (v15 == 3)
        {
          *v6 = v24;
          v6[2] = BYTE2(v24);
        }

        else if (v15 == 2)
        {
          *v6 = v24;
        }

        else
        {
          *v6 = v20;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *v6 = v20;
      v21 = 1;
    }

    switch(v19)
    {
      case 1:
        v6[v15] = v21;
        break;
      case 2:
        *&v6[v15] = v21;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&v6[v15] = v21;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C45A9EF8()
{
  sub_1C43FBCD4();
  v1[4] = v2;
  v1[5] = v0;
  v1[6] = *(v2 + 24);
  v1[7] = *(v2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[8] = AssociatedTypeWitness;
  v4 = sub_1C4F01F48();
  v1[9] = v4;
  v5 = *(v4 - 8);
  v1[10] = v5;
  v6 = *(v5 + 64) + 15;
  v1[11] = swift_task_alloc();
  v7 = *(AssociatedTypeWitness - 8);
  v1[12] = v7;
  v8 = *(v7 + 64) + 15;
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C45AA040()
{
  sub_1C43FEAEC();
  v1 = v0[8];
  v2 = v0[5];
  v3 = sub_1C4F00E98();
  v0[2] = v3;
  v4 = *v2;
  v0[15] = *v2;
  if (v4 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!v4)
    {
      v14 = v0[13];
      v13 = v0[14];
      v15 = v0[11];

      v16 = v0[1];
      sub_1C44258D4();

      __asm { BRAA            X2, X16 }
    }

    v0[16] = 1;
    v5 = v0[6];
    v6 = v0[7];
    v7 = v0[5];
    v8 = *(v0[4] + 36);
    sub_1C43FD064();
    swift_getAssociatedTypeWitness();
    sub_1C440A544();
    v9 = *(MEMORY[0x1E69E85A8] + 4);
    swift_task_alloc();
    sub_1C43FBE70();
    v0[17] = v10;
    *v10 = v11;
    sub_1C442C3A4(v10);
    sub_1C44258D4();
  }

  return MEMORY[0x1EEE6D8C8](v3);
}

uint64_t sub_1C45AA184()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FBE64();
  *v3 = v2;
  v5 = *(v4 + 136);
  v6 = *v1;
  sub_1C43FBDAC();
  *v7 = v6;
  *(v8 + 144) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C45AA280()
{
  sub_1C43FEAEC();
  v1 = v0[11];
  v2 = v0[8];
  if (sub_1C44157D4(v1, 1, v2) == 1)
  {
    (*(v0[10] + 8))(v1, v0[9]);
    v0[3] = v0[2];
    sub_1C4F017A8();
    swift_getWitnessTable();
    if (sub_1C4F01BD8())
    {
    }

LABEL_6:
    v12 = v0[13];
    v11 = v0[14];
    v13 = v0[11];

    v14 = v0[1];
    sub_1C44258D4();

    __asm { BRAA            X2, X16 }
  }

  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[12];
  v6 = *(v5 + 32);
  sub_1C440F228();
  v7();
  (*(v5 + 16))(v4, v3, v2);
  sub_1C4F017A8();
  sub_1C4F01768();
  v8 = (*(v5 + 8))(v3, v2);
  v9 = v0[16];
  if (v9 == v0[15])
  {
    v10 = v0[2];
    goto LABEL_6;
  }

  v0[16] = v9 + 1;
  if (__OFADD__(v9, 1))
  {
    __break(1u);
  }

  else
  {
    v17 = v0[6];
    v18 = v0[7];
    v19 = v0[5];
    v20 = *(v0[4] + 36);
    sub_1C43FD064();
    swift_getAssociatedTypeWitness();
    sub_1C440A544();
    v21 = *(MEMORY[0x1E69E85A8] + 4);
    swift_task_alloc();
    sub_1C43FBE70();
    v0[17] = v22;
    *v22 = v23;
    sub_1C442C3A4();
    sub_1C44258D4();
  }

  return MEMORY[0x1EEE6D8C8](v8);
}

uint64_t sub_1C45AA4B8()
{
  sub_1C43FCF70();
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[11];
  v4 = v0[2];

  sub_1C43FBDA0();
  v6 = v0[18];

  return v5();
}

uint64_t sub_1C45AA53C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  v5 = *(type metadata accessor for BatchedAsyncSequence.AsyncIterator() + 36);
  sub_1C43FD064();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C43FCE50(AssociatedTypeWitness);
  v8 = *(v7 + 32);

  return v8(&a3[v5], a2);
}

uint64_t sub_1C45AA5DC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1C45AA674;

  return sub_1C45A9EF8();
}

uint64_t sub_1C45AA674()
{
  sub_1C43FCF70();
  v3 = v2;
  sub_1C43FBDE4();
  v5 = v4;
  sub_1C43FBE64();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v1;
  sub_1C43FBDAC();
  *v10 = v9;

  if (!v0)
  {
    **(v5 + 16) = v3;
  }

  v11 = *(v9 + 8);

  return v11();
}

uint64_t sub_1C45AA770@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = *(a1 + 16);
  sub_1C43FCE64();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBCC4();
  v12 = *(v11 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C43FBD18(AssociatedTypeWitness);
  v15 = *(v14 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v23 - v17;
  v19 = *(v2 + *(a1 + 36));
  v20 = *(v7 + 16);
  sub_1C440F228();
  v21();
  sub_1C4F019A8();
  return sub_1C45AA53C(v19, v18, a2);
}

uint64_t sub_1C45AA8C8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  v4 = *(*(a1 - 8) + 8);
  v5 = sub_1C4402120();

  return v6(v5);
}

uint64_t sub_1C45AA958(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C45AA9E8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v10)
  {
LABEL_20:

    return sub_1C44157D4((a1 + v11 + 8) & ~v11, v10, AssociatedTypeWitness);
  }

  v12 = ((v11 + 8) & ~v11) + *(*(AssociatedTypeWitness - 8) + 64);
  v13 = 8 * v12;
  if (v12 <= 3)
  {
    v15 = ((a2 - v10 + ~(-1 << v13)) >> v13) + 1;
    if (HIWORD(v15))
    {
      v14 = *(a1 + v12);
      if (!v14)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v15 > 0xFF)
    {
      v14 = *(a1 + v12);
      if (!*(a1 + v12))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v15 < 2)
    {
LABEL_19:
      if (v10)
      {
        goto LABEL_20;
      }

      return 0;
    }
  }

  v14 = *(a1 + v12);
  if (!*(a1 + v12))
  {
    goto LABEL_19;
  }

LABEL_11:
  v16 = (v14 - 1) << v13;
  if (v12 > 3)
  {
    v16 = 0;
  }

  if (v12)
  {
    if (v12 > 3)
    {
      LODWORD(v12) = 4;
    }

    switch(v12)
    {
      case 2:
        LODWORD(v12) = *a1;
        break;
      case 3:
        LODWORD(v12) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v12) = *a1;
        break;
      default:
        LODWORD(v12) = *a1;
        break;
    }
  }

  return v10 + (v12 | v16) + 1;
}

void sub_1C45AAB94(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 84);
  v12 = *(v10 + 80);
  v13 = ((v12 + 8) & ~v12) + *(v10 + 64);
  v14 = 8 * v13;
  if (a3 <= v11)
  {
    v15 = 0;
  }

  else if (v13 <= 3)
  {
    v18 = ((a3 - v11 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v18))
    {
      v15 = 4;
    }

    else
    {
      if (v18 < 0x100)
      {
        v19 = 1;
      }

      else
      {
        v19 = 2;
      }

      if (v18 >= 2)
      {
        v15 = v19;
      }

      else
      {
        v15 = 0;
      }
    }
  }

  else
  {
    v15 = 1;
  }

  if (v11 >= a2)
  {
    switch(v15)
    {
      case 1:
        a1[v13] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v13] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v13] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          sub_1C440BAA8(&a1[v12 + 8] & ~v12, a2, v11, AssociatedTypeWitness);
        }

        break;
    }
  }

  else
  {
    v16 = ~v11 + a2;
    if (v13 < 4)
    {
      v17 = (v16 >> v14) + 1;
      if (v13)
      {
        v20 = v16 & ~(-1 << v14);
        bzero(a1, v13);
        if (v13 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v13 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v13);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v13] = v17;
        break;
      case 2:
        *&a1[v13] = v17;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v13] = v17;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C45AADE4(void *a1)
{
  v2 = a1[4];
  v3 = a1[2];
  result = swift_getAssociatedTypeWitness();
  if (v5 <= 0x3F)
  {
    v6 = a1[5];
    v7 = a1[3];
    result = swift_getAssociatedTypeWitness();
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C45AAEA0(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v6 = a3[4];
  v7 = a3[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  v11 = a3[5];
  v12 = a3[3];
  v13 = swift_getAssociatedTypeWitness();
  v14 = *(v13 - 8);
  v15 = *(v14 + 84);
  if (v15 <= v10)
  {
    v16 = v10;
  }

  else
  {
    v16 = *(v14 + 84);
  }

  if (v16 <= 0xFE)
  {
    v16 = 254;
  }

  v17 = *(v14 + 80);
  v18 = *(*(v13 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v19 = v13;
  v20 = *(v9 + 64) + v17;
  if (a2 > v16)
  {
    v21 = v18 + (v20 & ~v17) + 1;
    v22 = 8 * v21;
    if (v21 > 3)
    {
      goto LABEL_9;
    }

    v24 = ((a2 - v16 + ~(-1 << v22)) >> v22) + 1;
    if (HIWORD(v24))
    {
      v23 = *(a1 + v21);
      if (!v23)
      {
        goto LABEL_26;
      }

      goto LABEL_16;
    }

    if (v24 > 0xFF)
    {
      v23 = *(a1 + v21);
      if (!*(a1 + v21))
      {
        goto LABEL_26;
      }

      goto LABEL_16;
    }

    if (v24 >= 2)
    {
LABEL_9:
      v23 = *(a1 + v21);
      if (!*(a1 + v21))
      {
        goto LABEL_26;
      }

LABEL_16:
      v25 = (v23 - 1) << v22;
      if (v21 > 3)
      {
        v25 = 0;
      }

      if (v21)
      {
        if (v21 <= 3)
        {
          v26 = v21;
        }

        else
        {
          v26 = 4;
        }

        switch(v26)
        {
          case 2:
            v27 = *a1;
            break;
          case 3:
            v27 = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            v27 = *a1;
            break;
          default:
            v27 = *a1;
            break;
        }
      }

      else
      {
        v27 = 0;
      }

      v31 = v16 + (v27 | v25);
      return (v31 + 1);
    }
  }

LABEL_26:
  if (v10 != v16)
  {
    v28 = (a1 + v20) & ~v17;
    if (v15 == v16)
    {
      goto LABEL_29;
    }

    v30 = *(v28 + v18);
    if (v30 < 2)
    {
      return 0;
    }

    v31 = (v30 + 2147483646) & 0x7FFFFFFF;
    return (v31 + 1);
  }

  v28 = a1;
  v15 = v10;
  v19 = AssociatedTypeWitness;
LABEL_29:

  return sub_1C44157D4(v28, v15, v19);
}

void sub_1C45AB144(_BYTE *a1, uint64_t a2, unsigned int a3, void *a4)
{
  v8 = a4[4];
  v9 = a4[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 84);
  v13 = a4[5];
  v14 = a4[3];
  v15 = swift_getAssociatedTypeWitness();
  v16 = *(v15 - 8);
  v17 = *(v16 + 84);
  if (v17 <= v12)
  {
    v18 = v12;
  }

  else
  {
    v18 = *(v16 + 84);
  }

  if (v18 <= 0xFE)
  {
    v18 = 254;
  }

  v19 = *(v16 + 80);
  v20 = *(v11 + 64) + v19;
  v21 = *(*(v15 - 8) + 64);
  v22 = v21 + (v20 & ~v19) + 1;
  v23 = 8 * v22;
  if (a3 <= v18)
  {
    v24 = 0;
  }

  else if (v22 <= 3)
  {
    v28 = ((a3 - v18 + ~(-1 << v23)) >> v23) + 1;
    if (HIWORD(v28))
    {
      v24 = 4;
    }

    else
    {
      if (v28 < 0x100)
      {
        v29 = 1;
      }

      else
      {
        v29 = 2;
      }

      if (v28 >= 2)
      {
        v24 = v29;
      }

      else
      {
        v24 = 0;
      }
    }
  }

  else
  {
    v24 = 1;
  }

  if (v18 >= a2)
  {
    v27 = ~v19;
    switch(v24)
    {
      case 1:
        a1[v22] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        return;
      case 2:
        *&a1[v22] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        return;
      case 3:
LABEL_47:
        __break(1u);
        return;
      case 4:
        *&a1[v22] = 0;
        goto LABEL_28;
      default:
LABEL_28:
        if (!a2)
        {
          return;
        }

LABEL_29:
        if (v12 == v18)
        {
          v31 = a1;
          v32 = a2;
          v17 = v12;
          v15 = AssociatedTypeWitness;
        }

        else
        {
          v31 = &a1[v20] & v27;
          if (v17 != v18)
          {
            *(v31 + v21) = a2 + 1;
            return;
          }

          v32 = a2;
        }

        sub_1C440BAA8(v31, v32, v17, v15);
        break;
    }
  }

  else
  {
    v25 = ~v18 + a2;
    if (v22 < 4)
    {
      v26 = (v25 >> v23) + 1;
      if (v21 + (v20 & ~v19) != -1)
      {
        v30 = v25 & ~(-1 << v23);
        bzero(a1, v22);
        if (v22 == 3)
        {
          *a1 = v30;
          a1[2] = BYTE2(v30);
        }

        else if (v22 == 2)
        {
          *a1 = v30;
        }

        else
        {
          *a1 = v25;
        }
      }
    }

    else
    {
      bzero(a1, v22);
      *a1 = v25;
      v26 = 1;
    }

    switch(v24)
    {
      case 1:
        a1[v22] = v26;
        break;
      case 2:
        *&a1[v22] = v26;
        break;
      case 3:
        goto LABEL_47;
      case 4:
        *&a1[v22] = v26;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C45AB46C()
{
  sub_1C4404078();
  v2 = [objc_allocWithZone(MEMORY[0x1E6966A18]) init];
  v3 = [objc_allocWithZone(MEMORY[0x1E69B8A58]) init];
  v4 = swift_allocObject();
  *(v4 + 72) = sub_1C4461BB8(0, &unk_1EDDF0560, 0x1E69B8A58);
  *(v4 + 80) = &off_1F43F72C0;
  *(v4 + 16) = 2;
  *(v4 + 24) = &unk_1F43D2238;
  *(v4 + 32) = &unk_1F43D2288;
  *(v4 + 104) = 0x302E302E31;
  *(v4 + 112) = 0xE500000000000000;
  *(v4 + 40) = v2;
  *(v4 + 48) = v3;
  *(v4 + 88) = v0;
  *(v4 + 96) = v1;
  return v4;
}

uint64_t sub_1C45AB548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[25] = a4;
  v5[26] = v4;
  v5[23] = a2;
  v5[24] = a3;
  v5[22] = a1;
  v6 = sub_1C4EFFA08();
  v5[27] = v6;
  sub_1C43FCF7C(v6);
  v5[28] = v7;
  v9 = *(v8 + 64);
  v5[29] = sub_1C43FBE7C();
  v10 = sub_1C4EF9CD8();
  v5[30] = v10;
  sub_1C43FCF7C(v10);
  v5[31] = v11;
  v13 = *(v12 + 64);
  v5[32] = sub_1C43FBE7C();
  v14 = sub_1C4EFE1C8();
  v5[33] = v14;
  sub_1C43FCF7C(v14);
  v5[34] = v15;
  v17 = *(v16 + 64);
  v5[35] = sub_1C43FE604();
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();
  v18 = sub_1C456902C(&qword_1EC0B9790, &unk_1C4F0F7C0);
  sub_1C43FBD18(v18);
  v20 = *(v19 + 64);
  v5[38] = sub_1C43FBE7C();
  v21 = type metadata accessor for LOIBasedSegment(0);
  v5[39] = v21;
  sub_1C43FBD18(v21);
  v23 = *(v22 + 64);
  v5[40] = sub_1C43FBE7C();
  v24 = sub_1C4F00978();
  v5[41] = v24;
  sub_1C43FCF7C(v24);
  v5[42] = v25;
  v27 = *(v26 + 64);
  v5[43] = sub_1C43FE604();
  v5[44] = swift_task_alloc();
  v5[45] = swift_task_alloc();
  v28 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v28, v29, v30);
}

uint64_t sub_1C45AB75C()
{
  v1 = *(v0 + 360);
  sub_1C4F00198();
  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CF8();
  if (sub_1C4402B64(v3))
  {
    *swift_slowAlloc() = 0;
    sub_1C4402B48();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    sub_1C43FE9D4();
  }

  v9 = *(v0 + 360);
  v10 = *(v0 + 328);
  v11 = *(v0 + 336);
  v13 = *(v0 + 304);
  v12 = *(v0 + 312);
  v14 = *(v0 + 192);

  v15 = *(v11 + 8);
  v16 = sub_1C4402B58();
  v15(v16);
  sub_1C442E860(v14, v0 + 16);
  sub_1C456902C(&qword_1EC0B9798, &unk_1C4F17040);
  if (!swift_dynamicCast())
  {
    v45 = *(v0 + 304);
    v44 = *(v0 + 312);
    v46 = *(v0 + 176);
    v47 = sub_1C440A564();
    sub_1C440BAA8(v47, v48, v49, v50);
    sub_1C4420C3C(v45, &qword_1EC0B9790, &unk_1C4F0F7C0);
    goto LABEL_12;
  }

  v17 = *(v0 + 312);
  v18 = *(v0 + 320);
  v19 = *(v0 + 304);
  sub_1C43FBD94();
  sub_1C440BAA8(v20, v21, v22, v17);
  sub_1C45AD680();
  v23 = *(v17 + 24);
  sub_1C45AD5C0();
  v24 = *(v0 + 80);
  sub_1C4420C3C(v0 + 56, &qword_1EC0B97A0, &qword_1C4F0F7D0);
  if (!v24)
  {
    v51 = *(v0 + 352);
    sub_1C4F00198();
    v52 = sub_1C4F00968();
    v53 = sub_1C4F01CF8();
    if (sub_1C4402B64(v53))
    {
      *swift_slowAlloc() = 0;
      sub_1C4402B48();
      _os_log_impl(v54, v55, v56, v57, v58, 2u);
      sub_1C43FE9D4();
    }

    v59 = *(v0 + 352);
    v60 = *(v0 + 328);
    v61 = *(v0 + 336);
    v62 = *(v0 + 320);
    v46 = *(v0 + 176);

    (v15)(v59, v60);
    sub_1C4419068();
    sub_1C45AD6DC(v62, v63);
LABEL_12:
    v64 = type metadata accessor for InferredActivitySegment();
    sub_1C440BAA8(v46, 1, 1, v64);
    sub_1C4412C30();

    v65 = *(v0 + 8);
    sub_1C43FEA3C();

    __asm { BRAA            X1, X16 }
  }

  v26 = *(v0 + 312);
  v25 = *(v0 + 320);
  v27 = *(v0 + 296);
  v28 = *(v0 + 256);
  v30 = *(v0 + 200);
  v29 = *(v0 + 208);
  v31 = *(v0 + 184);
  sub_1C442E860(v31, v0 + 96);
  sub_1C442E860(v30, v0 + 136);
  v32 = swift_allocObject();
  *(v32 + 16) = v29;
  sub_1C441D670((v0 + 96), v32 + 24);
  sub_1C441D670((v0 + 136), v32 + 64);

  sub_1C4EFE1B8();
  v33 = v31[4];
  sub_1C4409678(v31, v31[3]);
  v34 = *(v33 + 8);
  v35 = sub_1C4402B58();
  v36(v35);
  *(v0 + 376) = *(v26 + 20);
  v37 = swift_task_alloc();
  *(v0 + 368) = v37;
  *v37 = v0;
  v37[1] = sub_1C45ABB54;
  v38 = *(v0 + 256);
  v39 = *(v0 + 208);
  sub_1C43FEA3C();

  return sub_1C45AC5E4(v40, v41);
}

uint64_t sub_1C45ABB54(char a1)
{
  v2 = *(*v1 + 368);
  v3 = *(*v1 + 256);
  v4 = *(*v1 + 248);
  v5 = *(*v1 + 240);
  v10 = *v1;
  *(*v1 + 380) = a1;

  (*(v4 + 8))(v3, v5);
  v6 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C45ABCAC()
{
  v1 = *(v0 + 380);
  v2 = *(v0 + 344);
  v4 = *(v0 + 288);
  v3 = *(v0 + 296);
  v5 = *(v0 + 280);
  v7 = *(v0 + 224);
  v6 = *(v0 + 232);
  v8 = *(v0 + 208);
  v62 = *(v0 + 216);
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  *(v9 + 24) = v8;

  sub_1C4EFE1B8();
  sub_1C456902C(&qword_1EC0B97A8, &unk_1C4F0F7E0);
  v10 = sub_1C4EFE178();
  sub_1C43FCF7C(v10);
  v12 = *(v11 + 72);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1C4F0CE60;
  sub_1C4EFE1A8();
  sub_1C4EFE1A8();
  *v6 = v15;
  (*(v7 + 104))(v6, *MEMORY[0x1E69A9AA0], v62);
  sub_1C4EFE198();
  sub_1C4EFE188();
  v17 = v16;
  sub_1C4F00198();
  v18 = sub_1C4F00968();
  v19 = sub_1C4F01CF8();
  if (sub_1C4402B64(v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 134217984;
    *(v20 + 4) = v17;
    sub_1C4402B48();
    _os_log_impl(v21, v22, v23, v24, v25, 0xCu);
    sub_1C43FE9D4();
  }

  v27 = *(v0 + 336);
  v26 = *(v0 + 344);
  v28 = *(v0 + 328);
  v30 = *(v0 + 288);
  v29 = *(v0 + 296);
  v32 = *(v0 + 272);
  v31 = *(v0 + 280);
  v33 = *(v0 + 264);

  v34 = *(v27 + 8);
  v35 = sub_1C4402B58();
  v36(v35);
  v37 = *(v32 + 8);
  v37(v31, v33);
  v37(v30, v33);
  v37(v29, v33);
  if (v17 >= 0.6)
  {
    v46 = *(v0 + 376);
    v47 = *(v0 + 320);
    v48 = *(v0 + 240);
    v49 = *(v0 + 208);
    v50 = *(v0 + 176);
    v51 = *(*(v0 + 248) + 16);
    v51(v50, v47, v48);
    v52 = type metadata accessor for InferredActivitySegment();
    v51(v50 + v52[5], v47 + v46, v48);
    sub_1C4419068();
    sub_1C45AD6DC(v47, v53);
    v54 = *(v49 + 104);
    v55 = *(v49 + 112);
    *(v50 + v52[6]) = *(v49 + 16);
    *(v50 + v52[7]) = v17;
    v56 = (v50 + v52[8]);
    *v56 = v54;
    v56[1] = v55;
    sub_1C43FBD94();
    sub_1C440BAA8(v57, v58, v59, v52);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  else
  {
    v38 = *(v0 + 320);
    v39 = *(v0 + 176);
    sub_1C4419068();
    sub_1C45AD6DC(v40, v41);
    type metadata accessor for InferredActivitySegment();
    v42 = sub_1C440A564();
    sub_1C440BAA8(v42, v43, v44, v45);
  }

  sub_1C4412C30();

  v60 = *(v0 + 8);

  return v60();
}

void sub_1C45AC074(uint64_t a1, void *a2, void *a3)
{
  v58 = a3;
  v5 = sub_1C4F00978();
  v54 = *(v5 - 8);
  v55 = v5;
  v6 = *(v54 + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v51 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v52 = &v51 - v9;
  v10 = sub_1C4EF9CD8();
  v56 = *(v10 - 8);
  v57 = v10;
  v11 = *(v56 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v51 - v15;
  v17 = *(a1 + 40);
  v53 = a1;
  v18 = *(a1 + 88);
  type metadata accessor for EventsFoundInAppsSignal();
  inited = swift_initStackObject();
  inited[2] = v18;
  inited[3] = v17;
  v20 = a2[3];
  v21 = a2[4];
  sub_1C4409678(a2, v20);
  v22 = *(v21 + 8);
  v23 = v17;

  v22(v20, v21);
  v24 = v58[3];
  v25 = v58[4];
  sub_1C4409678(v58, v24);
  (*(v25 + 16))(v24, v25);
  v58 = inited;
  sub_1C479CBF4(v16, v14);
  v26 = v57;
  v27 = *(v56 + 8);
  v27(v14, v57);
  v27(v16, v26);
  v28 = sub_1C44F9274(0xD00000000000001DLL);

  if (v28)
  {
    v29 = [v28 dictionaryValue];

    sub_1C4461BB8(0, &qword_1EDDFE8E0, 0x1E696AD98);
    v30 = sub_1C4F00ED8();

    v31 = 0;
    LODWORD(v57) = 0;
    v32 = v53;
    v33 = *(v53 + 24);
    v34 = *(v33 + 16);
    v35 = v33 + 40;
    v56 = v33 + 40;
LABEL_3:
    v36 = (v35 + 16 * v31);
    while (v34 != v31)
    {
      if (v31 >= *(v33 + 16))
      {
        __break(1u);
        return;
      }

      v37 = *v36;
      v59 = *(v36 - 1);
      v60 = v37;
      swift_bridgeObjectRetain_n();
      sub_1C4F02198();
      if (*(v30 + 16))
      {
        sub_1C457AA70(v61);
        v39 = v38;

        sub_1C457E804(v61);
        if (v39)
        {
          ++v31;
          LODWORD(v57) = 1;
          v35 = v56;
          goto LABEL_3;
        }
      }

      else
      {
        sub_1C457E804(v61);
      }

      v36 += 2;
      ++v31;
    }

    v40 = 0.0;
    if (v57)
    {
      v41 = *(v32 + 96);
      v42._object = 0x80000001C4F8AC10;
      v42._countAndFlagsBits = 0xD000000000000014;
      v40 = ConfidenceService.confidence(source:signalType:)(v42, 0);
    }

    v43 = v52;
    sub_1C4F00198();
    v44 = sub_1C4F00968();
    v45 = sub_1C4F01CF8();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 134217984;
      *(v46 + 4) = v40;
      _os_log_impl(&dword_1C43F8000, v44, v45, "attendingEventConfidenceDueToFiA = %f", v46, 0xCu);
      MEMORY[0x1C6942830](v46, -1, -1);
    }

    (*(v54 + 8))(v43, v55);
  }

  else
  {
    v47 = v51;
    sub_1C4F00198();
    v48 = sub_1C4F00968();
    v49 = sub_1C4F01CF8();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 134217984;
      *(v50 + 4) = 0;
      _os_log_impl(&dword_1C43F8000, v48, v49, "attendingEventConfidenceDueToFiA = %f", v50, 0xCu);
      MEMORY[0x1C6942830](v50, -1, -1);
    }

    (*(v54 + 8))(v47, v55);
  }
}

uint64_t sub_1C45AC5E4(uint64_t a1, uint64_t a2)
{
  v3[34] = a2;
  v3[35] = v2;
  v3[33] = a1;
  v4 = sub_1C4F00978();
  v3[36] = v4;
  sub_1C43FCF7C(v4);
  v3[37] = v5;
  v7 = *(v6 + 64);
  v3[38] = sub_1C43FBE7C();
  v8 = sub_1C456902C(&qword_1EC0B97B0, &qword_1C4F30780);
  sub_1C43FBD18(v8);
  v10 = *(v9 + 64);
  v3[39] = sub_1C43FBE7C();
  v11 = sub_1C456902C(&qword_1EC0B97B8, &unk_1C4F0F7F0);
  v3[40] = v11;
  sub_1C43FBD18(v11);
  v13 = *(v12 + 64);
  v3[41] = sub_1C43FBE7C();
  v14 = type metadata accessor for WalletPassContent();
  v3[42] = v14;
  sub_1C43FBD18(v14);
  v16 = *(v15 + 64);
  v3[43] = sub_1C43FE604();
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v17 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FBD18(v17);
  v19 = *(v18 + 64);
  v3[46] = sub_1C43FE604();
  v3[47] = swift_task_alloc();
  v20 = sub_1C4EF9CD8();
  v3[48] = v20;
  sub_1C43FCF7C(v20);
  v3[49] = v21;
  v23 = *(v22 + 64);
  v3[50] = sub_1C43FBE7C();
  v24 = sub_1C456902C(&qword_1EC0B97C0, &qword_1C4F0F800);
  sub_1C43FBD18(v24);
  v26 = *(v25 + 64);
  v3[51] = sub_1C43FBE7C();
  v27 = sub_1C456902C(&qword_1EC0B84B0, qword_1C4F0CDE0);
  v3[52] = v27;
  sub_1C43FBD18(v27);
  v29 = *(v28 + 64);
  v3[53] = sub_1C43FE604();
  v3[54] = swift_task_alloc();
  v30 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v3[55] = v30;
  sub_1C43FBD18(v30);
  v32 = *(v31 + 64);
  v3[56] = sub_1C43FBE7C();
  v33 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v33, v34, v35);
}