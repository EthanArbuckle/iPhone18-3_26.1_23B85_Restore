void sub_1C47D9768(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {
    v12 = *(a1 + 40);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  v14 = *a1;
  v13 = *(a1 + 8);
  v16 = *(a1 + 16);
  v15 = *(a1 + 24);
  objc_allocWithZone(MEMORY[0x1E69A9EA8]);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v17 = sub_1C4673B1C(v14, v13, v16, v15, v9, v10);
  sub_1C4461BB8(0, &qword_1EDDFCE70, 0x1E696ACD0);
  sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);
  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  v20 = sub_1C4F01D38();
  if (v6)
  {

    v21 = a5;
    if (qword_1EDDFFAF0 != -1)
    {
      swift_once();
    }

    v22 = sub_1C4F00978();
    sub_1C442B738(v22, qword_1EDE2E088);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    v23 = v6;
    v24 = sub_1C4F00968();
    v25 = sub_1C4F01CD8();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v42 = v27;
      *v26 = 136315650;
      *(v26 + 4) = sub_1C441D828(a2, a3, &v42);
      *(v26 + 12) = 2080;
      *(v26 + 14) = sub_1C441D828(a4, v21, &v42);
      *(v26 + 22) = 2080;
      swift_getErrorValue();
      v28 = sub_1C4F02A38();
      v30 = sub_1C441D828(v28, v29, &v42);

      *(v26 + 24) = v30;
      _os_log_impl(&dword_1C43F8000, v24, v25, "FeatureDatabaseTable: Could not deserialize %s from table %s due to: %s. Will treat as non-existent.", v26, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1C6942830](v27, -1, -1);
      MEMORY[0x1C6942830](v26, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (v20)
    {
      v31 = *(a1 + 64);
      v32 = *(a1 + 72);
      *a6 = v17;
      *(a6 + 8) = v20;
      *(a6 + 16) = v31;
      *(a6 + 24) = v32;
      return;
    }

    if (qword_1EDDFFAF0 != -1)
    {
      swift_once();
    }

    v33 = sub_1C4F00978();
    sub_1C442B738(v33, qword_1EDE2E088);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    v34 = sub_1C4F00968();
    v35 = sub_1C4F01CD8();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v42 = v37;
      *v36 = 136315394;
      *(v36 + 4) = sub_1C441D828(a2, a3, &v42);
      *(v36 + 12) = 2080;
      *(v36 + 14) = sub_1C441D828(a4, a5, &v42);
      _os_log_impl(&dword_1C43F8000, v34, v35, "FeatureDatabaseTable: Could not deserialize %s from table %s. Will treat as non-existent.", v36, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C6942830](v37, -1, -1);
      MEMORY[0x1C6942830](v36, -1, -1);
    }
  }

  *a6 = 0;
  *(a6 + 8) = 0;
  *(a6 + 24) = 0;
  *(a6 + 16) = 0;
}

void sub_1C47D9BF4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  v71 = a1;
  v78 = a7;
  v66 = a5;
  v67 = a6;
  v65 = a9;
  v77 = a10;
  v14 = sub_1C456902C(&unk_1EC0C2DF0, qword_1C4F5B820);
  v69 = *(v14 - 8);
  *&v70 = v14;
  v15 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v68 = &v64 - v16;
  v17 = sub_1C456902C(&qword_1EC0B9AC8, &unk_1C4F10E00);
  v64 = *(v17 - 8);
  v18 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v74 = &v64 - v19;
  v20 = sub_1C4EFB298();
  v75 = *(v20 - 8);
  v21 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = v17;
  v73 = v23;
  if (a2)
  {
    v24 = sub_1C4EFBD38();
    __dst[3] = v24;
    __dst[4] = MEMORY[0x1E69A0050];
    sub_1C4422F90(__dst);
    sub_1C4EFBD48();
    v88 = MEMORY[0x1E69E6158];
    v89 = MEMORY[0x1E69A0130];
    v86 = a3;
    v87 = a4;
    v81 = v20;
    v25 = MEMORY[0x1E699FE60];
    v82 = MEMORY[0x1E699FE60];
    sub_1C4422F90(&v79);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EFBB28();
    sub_1C4607CD4(&v86, &qword_1EC0C5040, &qword_1C4F0F950);
    sub_1C440962C(__dst);
    v83[0] = a2;
    __dst[3] = v24;
    __dst[4] = MEMORY[0x1E69A0050];
    sub_1C4422F90(__dst);
    sub_1C4EFBD48();
    v88 = v20;
    v89 = v25;
    sub_1C4422F90(&v86);
    sub_1C456902C(&qword_1EC0B9178, &qword_1C4F11B50);
    sub_1C4401CBC(&qword_1EDDFCEA0, &qword_1EC0B9178, &qword_1C4F11B50);
    v26 = v25;
    v27 = MEMORY[0x1E69A0130];
    sub_1C4F01458();
    sub_1C440962C(__dst);
    __dst[3] = v20;
    __dst[4] = v25;
    sub_1C4422F90(__dst);
    sub_1C4EFBB08();
    sub_1C440962C(&v86);
    sub_1C440962C(&v79);
    v88 = MEMORY[0x1E69E6158];
    v89 = v27;
    v86 = v66;
    v87 = v67;
    v84 = v24;
    v85 = MEMORY[0x1E69A0050];
    sub_1C4422F90(v83);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EFBD48();
    v81 = v20;
    v82 = v25;
    sub_1C4422F90(&v79);
    sub_1C4EFBB18();
    sub_1C440962C(v83);
    sub_1C4607CD4(&v86, &qword_1EC0C5040, &qword_1C4F0F950);
    v28 = v73;
    sub_1C4EFBB08();
    sub_1C440962C(&v79);
    sub_1C440962C(__dst);
  }

  else
  {
    v29 = sub_1C4EFBD38();
    v81 = v29;
    v82 = MEMORY[0x1E69A0050];
    sub_1C4422F90(&v79);
    sub_1C4EFBD48();
    v30 = MEMORY[0x1E69E6158];
    v31 = MEMORY[0x1E69A0130];
    v88 = MEMORY[0x1E69E6158];
    v89 = MEMORY[0x1E69A0130];
    v86 = a3;
    v87 = a4;
    __dst[3] = v20;
    __dst[4] = MEMORY[0x1E699FE60];
    sub_1C4422F90(__dst);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EFBB28();
    sub_1C4607CD4(&v86, &qword_1EC0C5040, &qword_1C4F0F950);
    sub_1C440962C(&v79);
    v88 = v30;
    v89 = v31;
    v86 = v66;
    v87 = v67;
    v84 = v29;
    v85 = MEMORY[0x1E69A0050];
    sub_1C4422F90(v83);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v26 = MEMORY[0x1E699FE60];
    sub_1C4EFBD48();
    v81 = v20;
    v82 = v26;
    sub_1C4422F90(&v79);
    sub_1C4EFBB18();
    sub_1C440962C(v83);
    sub_1C4607CD4(&v86, &qword_1EC0C5040, &qword_1C4F0F950);
    sub_1C4EFBB08();
    sub_1C440962C(&v79);
    sub_1C440962C(__dst);
    v28 = v23;
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v32 = v68;
  sub_1C4EFBD18();
  __dst[3] = v20;
  __dst[4] = v26;
  v33 = sub_1C4422F90(__dst);
  (*(v75 + 16))(v33, v28, v20);
  v34 = v70;
  sub_1C4EFBCD8();
  (*(v69 + 8))(v32, v34);
  sub_1C440962C(__dst);
  sub_1C47DC918();
  sub_1C4401CBC(&qword_1EDDFE850, &qword_1EC0B9AC8, &unk_1C4F10E00);
  v35 = v72;
  v36 = sub_1C4EFB3F8();
  v37 = v35;
  if (!v35)
  {
    v51 = v36;
    v72 = v20;
    v28 = 0;
    v20 = *(v36 + 16);
    v50 = MEMORY[0x1E69E7CC0];
    v52 = 32;
    v71 = 32;
LABEL_10:
    v53 = v52 + 80 * v28;
    while (1)
    {
      if (v20 == v28)
      {

        (*(v64 + 8))(v74, v76);
        (*(v75 + 8))(v73, v72);
        v49 = v65;
        goto LABEL_20;
      }

      if (v28 >= *(v51 + 16))
      {
        break;
      }

      memcpy(__dst, (v51 + v53), 0x49uLL);
      sub_1C470CD44(__dst, &v79);
      v54 = objc_autoreleasePoolPush();
      sub_1C47DA630(__dst, v78, a8, &v79);
      v37 = 0;
      ++v28;
      v53 += 80;
      objc_autoreleasePoolPop(v54);
      sub_1C470CDA0(__dst);
      if (v79)
      {
        v70 = v79;
        v55 = v80;
        v56 = v81;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v69 = v55;
        LODWORD(v68) = v56;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v61 = *(v50 + 16);
          sub_1C458D53C();
          v50 = v62;
        }

        v58 = *(v50 + 16);
        v59 = v70;
        if (v58 >= *(v50 + 24) >> 1)
        {
          sub_1C458D53C();
          v59 = v70;
          v50 = v63;
        }

        *(v50 + 16) = v58 + 1;
        v60 = v50 + 32 * v58;
        *(v60 + 32) = v59;
        *(v60 + 48) = v69;
        *(v60 + 56) = v68 & 1;
        v52 = v71;
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_22;
  }

  if (qword_1EDDFFAF0 != -1)
  {
LABEL_22:
    swift_once();
  }

  v38 = sub_1C4F00978();
  sub_1C442B738(v38, qword_1EDE2E088);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  v39 = v37;
  v40 = sub_1C4F00968();
  v41 = sub_1C4F01CD8();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    __dst[0] = v43;
    *v42 = 136315394;
    *(v42 + 4) = sub_1C441D828(v78, a8, __dst);
    *(v42 + 12) = 2080;
    swift_getErrorValue();
    v44 = sub_1C4F02A38();
    v46 = sub_1C441D828(v44, v45, __dst);

    *(v42 + 14) = v46;
    _os_log_impl(&dword_1C43F8000, v40, v41, "FeatureDatabaseTable: Could not deserialize from table %s due to: %s, returning []", v42, 0x16u);
    swift_arrayDestroy();
    v47 = v43;
    v28 = v73;
    MEMORY[0x1C6942830](v47, -1, -1);
    MEMORY[0x1C6942830](v42, -1, -1);
  }

  v48 = v64;
  v49 = v65;

  (*(v48 + 8))(v74, v76);
  (*(v75 + 8))(v28, v20);
  v50 = MEMORY[0x1E69E7CC0];
LABEL_20:
  *v49 = v50;
}

void sub_1C47DA630(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    v10 = *(a1 + 40);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v12 = *a1;
  v11 = *(a1 + 8);
  v14 = *(a1 + 16);
  v13 = *(a1 + 24);
  objc_allocWithZone(MEMORY[0x1E69A9EA8]);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v15 = sub_1C4673B1C(v12, v11, v14, v13, v7, v8);
  sub_1C4461BB8(0, &qword_1EDDFCE70, 0x1E696ACD0);
  sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);
  v16 = *(a1 + 48);
  v17 = *(a1 + 56);
  v18 = sub_1C4F01D38();
  if (v4)
  {

    v19 = a3;
    if (qword_1EDDFFAF0 != -1)
    {
      swift_once();
    }

    v20 = sub_1C4F00978();
    sub_1C442B738(v20, qword_1EDE2E088);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    v21 = v4;
    v22 = sub_1C4F00968();
    v23 = sub_1C4F01CD8();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v46 = v25;
      *v24 = 136315394;
      *(v24 + 4) = sub_1C441D828(a2, v19, &v46);
      *(v24 + 12) = 2080;
      swift_getErrorValue();
      v26 = sub_1C4F02A38();
      v28 = sub_1C441D828(v26, v27, &v46);

      *(v24 + 14) = v28;
      _os_log_impl(&dword_1C43F8000, v22, v23, "FeatureDatabaseTable: Could not deserialize from table %s due to: %s. Will treat as non-existent.", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C6942830](v25, -1, -1);
      MEMORY[0x1C6942830](v24, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (v18)
    {
      v29 = *(a1 + 64);
      v30 = *(a1 + 72);
      *a4 = v15;
      *(a4 + 8) = v18;
      *(a4 + 16) = v29;
      *(a4 + 24) = v30;
      return;
    }

    v31 = a3;
    if (qword_1EDDFFAF0 != -1)
    {
      swift_once();
    }

    v32 = sub_1C4F00978();
    sub_1C442B738(v32, qword_1EDE2E088);
    v33 = v15;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    v34 = sub_1C4F00968();
    v35 = sub_1C4F01CD8();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v46 = v37;
      *v36 = 136315394;
      v44 = v31;
      v38 = [v33 string];
      v39 = sub_1C4F01138();
      v41 = v40;

      v42 = sub_1C441D828(v39, v41, &v46);

      *(v36 + 4) = v42;
      *(v36 + 12) = 2080;
      *(v36 + 14) = sub_1C441D828(a2, v44, &v46);
      _os_log_impl(&dword_1C43F8000, v34, v35, "FeatureDatabaseTable: Could not deserialize %s from table %s. Will treat as non-existent.", v36, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C6942830](v37, -1, -1);
      MEMORY[0x1C6942830](v36, -1, -1);
    }

    else
    {
    }
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 24) = 0;
  *(a4 + 16) = 0;
}

uint64_t sub_1C47DAB04()
{
  v0 = sub_1C456902C(&qword_1EC0BD280, &qword_1C4F2DA08);
  sub_1C44F9918(v0, qword_1EC151FC8);
  sub_1C442B738(v0, qword_1EC151FC8);
  sub_1C456902C(&qword_1EC0BD288, &qword_1C4F2DA58);
  sub_1C4401CBC(&qword_1EC0BD290, &qword_1EC0BD280, &qword_1C4F2DA08);
  return sub_1C4EFCB98();
}

uint64_t sub_1C47DABDC@<X0>(uint64_t a1@<X8>)
{
  v78 = a1;
  v80 = sub_1C456902C(&qword_1EC0BD280, &qword_1C4F2DA08);
  v79 = *(v80 - 8);
  v1 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v80);
  v74 = v68 - v2;
  v3 = sub_1C456902C(&qword_1EC0BD298, &qword_1C4F2DA60);
  v77 = *(v3 - 8);
  v4 = *(v77 + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v73 = v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v90 = v68 - v7;
  v76 = sub_1C456902C(&qword_1EC0BD2A0, &qword_1C4F2DA68);
  v75 = *(v76 - 8);
  v8 = *(v75 + 64);
  v9 = MEMORY[0x1EEE9AC00](v76);
  v91 = v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v68 - v11;
  v13 = sub_1C4EFCB28();
  v14 = *(v13 - 8);
  v98 = v13;
  v99 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1C456902C(&qword_1EC0BD2A8, &unk_1C4F2DA70);
  v96 = *(v18 - 8);
  v97 = v18;
  v19 = *(v96 + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v72 = v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = v68 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v93 = v68 - v25;
  v26 = sub_1C4EFC1B8();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x1EEE9AC00](v26);
  v71 = v68 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v33 = v68 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v35 = v68 - v34;
  sub_1C4EFC198();
  v36 = sub_1C47DCC38(&qword_1EC0BD2B0, MEMORY[0x1E69E8268]);
  v89 = v35;
  v86 = v36;
  MEMORY[0x1C693AE20](v33, v26);
  v37 = *(v27 + 8);
  v94 = v33;
  v95 = v26;
  v87 = v37;
  v88 = v27 + 8;
  v37(v33, v26);
  if (qword_1EC0B6AE8 != -1)
  {
    swift_once();
  }

  sub_1C442B738(v3, qword_1EC151FE0);
  sub_1C4EFC178();
  v38 = sub_1C456902C(&qword_1EC0BD2B8, &unk_1C4F5FAE0);
  v70 = MEMORY[0x1E69E9290];
  v39 = sub_1C4401CBC(&qword_1EDDFA248, &qword_1EC0BD298, &qword_1C4F2DA60);
  v82 = v3;
  v83 = v39;
  sub_1C4EFCAF8();
  v81 = *(v99 + 8);
  v99 += 8;
  v81(v17, v98);
  v40 = v38;
  MEMORY[0x1C693AEB0](v12, v38);
  v92 = sub_1C4401CBC(&qword_1EDDF0018, &qword_1EC0BD2A8, &unk_1C4F2DA70);
  v41 = v97;
  MEMORY[0x1C693AE20](v24, v97, v92);
  v43 = v96 + 8;
  v42 = *(v96 + 8);
  v85 = v24;
  v42(v24, v41);
  v44 = v42;
  v69 = v42;
  v96 = v43;
  v100[0] = 15933;
  v100[1] = 0xE200000000000000;
  v45 = sub_1C47DCB64();
  MEMORY[0x1C693AE20](&v101, v100, MEMORY[0x1E69E6158], v45);
  sub_1C4EFC178();
  v84 = v12;
  v46 = v40;
  v68[1] = v40;
  v47 = v82;
  sub_1C4EFCAF8();
  v48 = v98;
  v49 = v81;
  v81(v17, v98);
  v50 = v72;
  MEMORY[0x1C693AEB0](v12, v46);
  v51 = v97;
  MEMORY[0x1C693AE20](v50, v97, v92);
  v44(v50, v51);
  v52 = v71;
  sub_1C4EFC1A8();
  v53 = v95;
  MEMORY[0x1C693AE20](v52, v95, v86);
  v87(v52, v53);
  sub_1C4EFC148();
  sub_1C4EFC178();
  v54 = v73;
  sub_1C4EFCAE8();
  sub_1C4EFCAB8();
  v77 = *(v77 + 8);
  (v77)(v54, v47);
  v49(v17, v48);
  sub_1C4C66BE8();

  sub_1C4EFC178();
  sub_1C456902C(&qword_1EC0BD288, &qword_1C4F2DA58);
  sub_1C4401CBC(&unk_1EDDEFFF8, &qword_1EC0BD2A0, &qword_1C4F2DA68);
  v55 = v74;
  v56 = v76;
  sub_1C4EFCAB8();
  v57 = v98;
  v58 = v81;
  v81(v17, v98);
  sub_1C4EFC178();
  sub_1C4EFCAE8();
  sub_1C4401CBC(&qword_1EC0BD290, &qword_1EC0BD280, &qword_1C4F2DA08);
  v59 = v80;
  v60 = v82;
  sub_1C4EFCAB8();
  v61 = v77;
  (v77)(v54, v60);
  v58(v17, v57);
  (*(v79 + 8))(v55, v59);
  v62 = *(v75 + 8);
  v62(v91, v56);
  v62(v84, v56);
  v61(v90, v60);
  v63 = v95;
  v64 = v87;
  v87(v94, v95);
  v65 = v97;
  v66 = v69;
  v69(v85, v97);
  v66(v93, v65);
  return v64(v89, v63);
}

uint64_t sub_1C47DB5F4()
{
  v0 = sub_1C456902C(&qword_1EC0BD298, &qword_1C4F2DA60);
  sub_1C44F9918(v0, qword_1EC151FE0);
  sub_1C442B738(v0, qword_1EC151FE0);
  sub_1C4401CBC(&qword_1EDDFA248, &qword_1EC0BD298, &qword_1C4F2DA60);
  return sub_1C4EFCB98();
}

uint64_t sub_1C47DB6B0@<X0>(uint64_t a1@<X8>)
{
  v64 = a1;
  v1 = sub_1C4EFC188();
  v2 = *(v1 - 8);
  v60 = v1;
  v61 = v2;
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v57 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C456902C(&qword_1EC0BD2C0, &unk_1C4F2DA80);
  v6 = *(v5 - 8);
  v62 = v5;
  v63 = v6;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v58 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v59 = &v48 - v10;
  v11 = sub_1C456902C(&qword_1EC0BD298, &qword_1C4F2DA60);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v48 - v17;
  v53 = sub_1C4EFCB28();
  v65 = *(v53 - 8);
  v19 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1C456902C(&qword_1EC0BD2C8, &unk_1C4F4A7C0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v48 - v24;
  v26 = sub_1C456902C(&qword_1EC0BD2D0, &unk_1C4F2DA90);
  v66 = *(v26 - 8);
  v27 = *(v66 + 64);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = &v48 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v51 = &v48 - v31;
  v48 = sub_1C4EFCB78();
  sub_1C440BAA8(v25, 1, 1, v48);
  sub_1C4EFC178();
  sub_1C47DBD5C(v16);
  sub_1C4401CBC(&qword_1EDDFA248, &qword_1EC0BD298, &qword_1C4F2DA60);
  v32 = MEMORY[0x1E69E67B0];
  v55 = v11;
  sub_1C4EFCB18();
  v33 = *(v12 + 8);
  v54 = v12 + 8;
  v56 = v33;
  v33(v16, v11);
  v34 = *(v65 + 8);
  v65 += 8;
  v35 = v53;
  v34(v21, v53);
  sub_1C4607CD4(v25, &qword_1EC0BD2C8, &unk_1C4F4A7C0);
  MEMORY[0x1C693AE40](v18, v32);
  v36 = sub_1C4401CBC(&qword_1EDDF0030, &qword_1EC0BD2D0, &unk_1C4F2DA90);
  v49 = v26;
  v50 = v36;
  MEMORY[0x1C693AE20](v30, v26, v36);
  v37 = *(v66 + 8);
  v66 += 8;
  v52 = v37;
  v37(v30, v26);
  v38 = v57;
  sub_1C4EFCB58();
  sub_1C440BAA8(v25, 1, 1, v48);
  sub_1C4EFC178();
  sub_1C47DCC38(&qword_1EDDFA260, MEMORY[0x1E69E8250]);
  v39 = v60;
  sub_1C4EFCB08();
  v34(v21, v35);
  sub_1C4607CD4(v25, &qword_1EC0BD2C8, &unk_1C4F4A7C0);
  (*(v61 + 8))(v38, v39);
  v40 = v58;
  MEMORY[0x1C693AEE0](v18, v32);
  v41 = sub_1C4401CBC(&qword_1EC0BD2D8, &qword_1EC0BD2C0, &unk_1C4F2DA80);
  v42 = v59;
  v43 = v62;
  MEMORY[0x1C693AE20](v40, v62, v41);
  v44 = *(v63 + 8);
  v44(v40, v43);
  v45 = v51;
  v46 = v49;
  sub_1C4EFC148();
  sub_1C47DC3A4();
  v56(v18, v55);
  v44(v42, v43);
  return v52(v45, v46);
}

uint64_t sub_1C47DBD5C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C4EFCB28();
  v26 = *(v2 - 8);
  v27 = v2;
  v3 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C456902C(&qword_1EC0BD298, &qword_1C4F2DA60);
  v24 = *(v6 - 8);
  v25 = v6;
  v7 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - v8;
  v10 = sub_1C456902C(&qword_1EC0BD2E0, &qword_1C4F4A7D0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v24 - v16;
  sub_1C4EFC1E8();
  v18 = sub_1C4401CBC(&qword_1EDDFA258, &qword_1EC0BD2E0, &qword_1C4F4A7D0);
  MEMORY[0x1C693AE20](v15, v10, v18);
  v19 = *(v11 + 8);
  v19(v15, v10);
  v28[0] = 58;
  v28[1] = 0xE100000000000000;
  v20 = sub_1C47DCB64();
  MEMORY[0x1C693AE20](v29, v28, MEMORY[0x1E69E6158], v20);
  sub_1C4EFC148();
  v21 = v29[0];
  v22 = v29[1];
  sub_1C4EFC178();
  sub_1C47DC604(v21, v22, a1);

  (*(v26 + 8))(v5, v27);
  (*(v24 + 8))(v9, v25);
  return (v19)(v17, v10);
}

uint64_t sub_1C47DC06C()
{
  v0 = sub_1C456902C(&qword_1EC0BD2E0, &qword_1C4F4A7D0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v8 - v3;
  v10[0] = 25709;
  v10[1] = 0xE200000000000000;
  v5 = sub_1C47DCB64();
  v6 = MEMORY[0x1E69E6158];
  MEMORY[0x1C693AE00](v11, v10, MEMORY[0x1E69E6158], v5);
  v8 = 26981;
  v9 = 0xE200000000000000;
  MEMORY[0x1C693AE00](v10, &v8, v6, v5);
  v8 = v11[0];
  v9 = v11[1];
  sub_1C4EFC128();

  sub_1C47DC1D0();

  return (*(v1 + 8))(v4, v0);
}

void sub_1C47DC1D0()
{
  sub_1C43FBD3C();
  v1 = v0;
  v3 = v2;
  v4 = *(*(sub_1C456902C(&qword_1EC0BD298, &qword_1C4F2DA60) - 8) + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v20 - v6;
  v8 = sub_1C4EFCB28();
  v9 = sub_1C43FCDF8(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBCC4();
  v16 = v15 - v14;
  v20[0] = v3;
  v20[1] = v1;
  sub_1C4EFC178();
  v17 = sub_1C43FD2BC();
  sub_1C456902C(v17, v18);
  sub_1C4401CBC(&qword_1EDDFA258, &qword_1EC0BD2E0, &qword_1C4F4A7D0);
  sub_1C47DCB64();
  v19 = MEMORY[0x1E69E67B0];
  sub_1C4EFCAD8();
  (*(v11 + 8))(v16, v8);
  MEMORY[0x1C693AEC0](v7, v19);
  sub_1C43FE9F0();
}

void sub_1C47DC3A4()
{
  sub_1C43FBD3C();
  v28 = v1;
  v29 = v2;
  v4 = v3;
  v6 = v5;
  v30 = v7;
  v31 = v8;
  v9 = sub_1C456902C(&qword_1EC0BD298, &qword_1C4F2DA60);
  v10 = sub_1C43FCDF8(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v10);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v26 - v18;
  v27 = sub_1C4EFCB28();
  v20 = sub_1C43FCDF8(v27);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBCC4();
  sub_1C4423B7C();
  sub_1C4EFC178();
  sub_1C4401CBC(&qword_1EDDFA248, &qword_1EC0BD298, &qword_1C4F2DA60);
  sub_1C4EFCAE8();
  sub_1C456902C(v6, v4);
  sub_1C4401CBC(v28, v6, v4);
  sub_1C4EFCAE8();
  sub_1C4EFCAB8();
  v25 = *(v12 + 8);
  v25(v17, v9);
  v25(v19, v9);
  (*(v22 + 8))(v0, v27);
  sub_1C43FE9F0();
}

uint64_t sub_1C47DC604@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v15[1] = a3;
  v5 = sub_1C456902C(&qword_1EC0BD298, &qword_1C4F2DA60);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v15 - v11;
  v15[2] = a1;
  v15[3] = a2;
  sub_1C4401CBC(&qword_1EDDFA248, &qword_1EC0BD298, &qword_1C4F2DA60);
  sub_1C4EFCAE8();
  sub_1C47DCB64();
  sub_1C4EFCAE8();
  sub_1C4EFCAB8();
  v13 = *(v6 + 8);
  v13(v10, v5);
  return (v13)(v12, v5);
}

uint64_t sub_1C47DC7B8(uint64_t a1, unint64_t a2)
{
  sub_1C44344B8(a1, a2);
  v4 = *(sub_1C47DC9E0(a1, a2) + 16);
  v5 = sub_1C4F01258();

  return v5;
}

uint64_t sub_1C47DC824@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C4F01258();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C47DC860(void *a1)
{
  v1 = [a1 subidentifierName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C4F01138();

  return v3;
}

uint64_t sub_1C47DC8F0()
{
  sub_1C4434068();
  v1 = *(v0 + 48);
  return v2();
}

unint64_t sub_1C47DC918()
{
  result = qword_1EDDFA020[0];
  if (!qword_1EDDFA020[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDFA020);
  }

  return result;
}

unint64_t sub_1C47DC96C()
{
  result = qword_1EDDED120;
  if (!qword_1EDDED120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDED120);
  }

  return result;
}

uint64_t sub_1C47DC9E0(uint64_t a1, unint64_t a2)
{
  v4 = sub_1C4EF9AB8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x1EEE9AC00](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch(a2 >> 62)
  {
    case 1uLL:
      if (!__OFSUB__(HIDWORD(a1), a1))
      {
        v10 = HIDWORD(a1) - a1;
        goto LABEL_6;
      }

      __break(1u);
      goto LABEL_12;
    case 2uLL:
      v12 = *(a1 + 16);
      v11 = *(a1 + 24);
      v10 = v11 - v12;
      if (!__OFSUB__(v11, v12))
      {
        goto LABEL_6;
      }

LABEL_12:
      __break(1u);
      return result;
    case 3uLL:
      goto LABEL_9;
    default:
      v10 = BYTE6(a2);
LABEL_6:
      if (!v10)
      {
        goto LABEL_9;
      }

      v13 = sub_1C4434A7C(v10, 0);
      v14 = sub_1C4EF99B8();
      sub_1C4434000(a1, a2);
      (*(v5 + 8))(v9, v4);
      if (v14 != v10)
      {
        __break(1u);
LABEL_9:
        sub_1C4434000(a1, a2);
        return MEMORY[0x1E69E7CC0];
      }

      return v13;
  }
}

unint64_t sub_1C47DCB64()
{
  result = qword_1EDDFA5F0;
  if (!qword_1EDDFA5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFA5F0);
  }

  return result;
}

uint64_t sub_1C47DCBB8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1C47D3CD4();
}

uint64_t sub_1C47DCBD8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C47DCC18()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1C47D3D24();
}

uint64_t sub_1C47DCC38(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C47DCC80()
{
  result = qword_1EC0BD3D0;
  if (!qword_1EC0BD3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD3D0);
  }

  return result;
}

uint64_t sub_1C47DCCD4()
{
  sub_1C4F00318();
  v0 = type metadata accessor for IntelligencePlatformDataCollection(0);
  v1 = sub_1C4410C60(v0);
  sub_1C441E398(v1[8]);
  v3 = *(v2 + 36);
  type metadata accessor for FeatureVector(0);
  v4 = sub_1C43FEFE8();

  return sub_1C440BAA8(v4, v5, v6, v7);
}

void sub_1C47DCD2C(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  v2 = type metadata accessor for FeatureVector(0);
  v3 = a1 + *(v2 + 20);
  sub_1C4F00318();
  sub_1C441E398(*(v2 + 24));
}

uint64_t sub_1C47DCD78@<X0>(uint64_t a1@<X8>)
{
  sub_1C4F00318();
  v2 = type metadata accessor for Feature(0);
  v3 = *(v2 + 20);
  v4 = type metadata accessor for Feature.FeatureIdentifier(0);
  sub_1C440BAA8(a1 + v3, 1, 1, v4);
  v5 = *(v2 + 24);
  type metadata accessor for FeatureValue(0);
  v6 = sub_1C43FEFE8();

  return sub_1C440BAA8(v6, v7, v8, v9);
}

int *sub_1C47DCDF0()
{
  sub_1C4F00318();
  v0 = type metadata accessor for Feature.FeatureIdentifier(0);
  return sub_1C4410C60(v0);
}

uint64_t sub_1C47DCE20()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC151FF8);
  sub_1C442B738(v0, qword_1EC151FF8);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C4F13950;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "taskName";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C4F004C8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "subtaskName";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "sessionID";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "sessionSequenceNumber";
  *(v14 + 1) = 21;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "featureVector";
  *(v16 + 1) = 13;
  v16[16] = 2;
  v9();
  return sub_1C4F004D8();
}

uint64_t sub_1C47DD0A4()
{
  sub_1C4411B70();
  while (1)
  {
    sub_1C43FE99C();
    result = sub_1C4F00378();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1C44196B4();
        sub_1C43FD770();
        sub_1C47DF510();
        break;
      case 2:
        sub_1C44196B4();
        sub_1C43FD770();
        sub_1C47DF560();
        break;
      case 3:
        sub_1C44196B4();
        sub_1C43FD770();
        sub_1C47DF5B0();
        break;
      case 4:
        sub_1C4406AC8();
        sub_1C47DD160();
        break;
      case 5:
        sub_1C4406AC8();
        sub_1C47DD1C4();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C47DD1C4()
{
  v0 = *(type metadata accessor for IntelligencePlatformDataCollection(0) + 36);
  type metadata accessor for FeatureVector(0);
  sub_1C47DFCFC(&qword_1EC0BD460, type metadata accessor for FeatureVector);
  return sub_1C4F003F8();
}

uint64_t sub_1C47DD278()
{
  sub_1C4405A6C();
  sub_1C44196B4();
  sub_1C43FEE74();
  result = sub_1C47DF664();
  if (!v0)
  {
    sub_1C44196B4();
    sub_1C43FEE74();
    sub_1C47DF6C0();
    sub_1C44196B4();
    sub_1C43FEE74();
    sub_1C47DF71C();
    v2 = sub_1C43FEE60();
    sub_1C47DD2F4(v2);
    v3 = sub_1C43FEE60();
    sub_1C47DD36C(v3, v4, v5, v6);
    sub_1C43FE99C();
    return sub_1C4F00308();
  }

  return result;
}

uint64_t sub_1C47DD2F4(uint64_t a1)
{
  result = type metadata accessor for IntelligencePlatformDataCollection(0);
  v3 = (a1 + *(result + 32));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_1C4F00468();
  }

  return result;
}

uint64_t sub_1C47DD36C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = sub_1C456902C(&qword_1EC0BD4A0, &qword_1C4F2E1A0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for FeatureVector(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for IntelligencePlatformDataCollection(0);
  sub_1C445FFF0(a1 + *(v13 + 36), v8, &qword_1EC0BD4A0, &qword_1C4F2E1A0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BD4A0, &qword_1C4F2E1A0);
  }

  sub_1C47E0194();
  sub_1C47DFCFC(&qword_1EC0BD460, type metadata accessor for FeatureVector);
  sub_1C4F004B8();
  return sub_1C447E918(v12, type metadata accessor for FeatureVector);
}

uint64_t sub_1C47DD540()
{
  v2 = sub_1C43FECE0();
  v3 = type metadata accessor for FeatureVector(v2);
  v4 = sub_1C43FBCE0(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBCC4();
  v9 = v8 - v7;
  v10 = *(*(sub_1C456902C(&qword_1EC0BD4A0, &qword_1C4F2E1A0) - 8) + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v53 - v12;
  v14 = sub_1C456902C(&qword_1EC0BD4A8, &qword_1C4F2E1A8);
  sub_1C43FBCE0(v14);
  v16 = *(v15 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v53 - v18;
  v20 = type metadata accessor for IntelligencePlatformDataCollection(0);
  v21 = v20[5];
  sub_1C440891C();
  if (v24)
  {
    if (!v22)
    {
      goto LABEL_41;
    }

    sub_1C4402FD0(v23);
    v27 = v27 && v25 == v26;
    if (!v27 && (sub_1C4F02938() & 1) == 0)
    {
      goto LABEL_41;
    }
  }

  else if (v22)
  {
    goto LABEL_41;
  }

  v28 = v20[6];
  sub_1C440891C();
  if (v31)
  {
    if (!v29)
    {
      goto LABEL_41;
    }

    sub_1C4402FD0(v30);
    v34 = v27 && v32 == v33;
    if (!v34 && (sub_1C4F02938() & 1) == 0)
    {
      goto LABEL_41;
    }
  }

  else if (v29)
  {
    goto LABEL_41;
  }

  v35 = v20[7];
  sub_1C440891C();
  if (v38)
  {
    if (!v36)
    {
      goto LABEL_41;
    }

    sub_1C4402FD0(v37);
    v41 = v27 && v39 == v40;
    if (!v41 && (sub_1C4F02938() & 1) == 0)
    {
      goto LABEL_41;
    }
  }

  else if (v36)
  {
    goto LABEL_41;
  }

  sub_1C4409C8C(v20[8]);
  if (v43)
  {
    if (!v42)
    {
      goto LABEL_41;
    }
  }

  else
  {
    sub_1C4414A9C();
    if (v44)
    {
      goto LABEL_41;
    }
  }

  v45 = v20[9];
  v46 = *(v14 + 48);
  sub_1C445FFF0(v1 + v45, v19, &qword_1EC0BD4A0, &qword_1C4F2E1A0);
  sub_1C445FFF0(v0 + v45, &v19[v46], &qword_1EC0BD4A0, &qword_1C4F2E1A0);
  sub_1C4414160(v19);
  if (v27)
  {
    sub_1C4414160(&v19[v46]);
    if (v27)
    {
      sub_1C4420C3C(v19, &qword_1EC0BD4A0, &qword_1C4F2E1A0);
      goto LABEL_44;
    }
  }

  else
  {
    sub_1C445FFF0(v19, v13, &qword_1EC0BD4A0, &qword_1C4F2E1A0);
    sub_1C4414160(&v19[v46]);
    if (!v47)
    {
      sub_1C47E0194();
      v50 = sub_1C47DDF04();
      sub_1C447E918(v9, type metadata accessor for FeatureVector);
      sub_1C447E918(v13, type metadata accessor for FeatureVector);
      sub_1C4420C3C(v19, &qword_1EC0BD4A0, &qword_1C4F2E1A0);
      if ((v50 & 1) == 0)
      {
        goto LABEL_41;
      }

LABEL_44:
      sub_1C4F00328();
      sub_1C441F9D4();
      sub_1C47DFCFC(v51, v52);
      sub_1C4402120();
      v48 = sub_1C4F010B8();
      return v48 & 1;
    }

    sub_1C447E918(v13, type metadata accessor for FeatureVector);
  }

  sub_1C4420C3C(v19, &qword_1EC0BD4A8, &qword_1C4F2E1A8);
LABEL_41:
  v48 = 0;
  return v48 & 1;
}

uint64_t sub_1C47DD8DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C47DFCFC(&qword_1EC0BD498, type metadata accessor for IntelligencePlatformDataCollection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C47DD97C()
{
  sub_1C47DFCFC(&qword_1EC0BD480, type metadata accessor for IntelligencePlatformDataCollection);

  return sub_1C4F00428();
}

uint64_t sub_1C47DDA44()
{
  sub_1C47DFCFC(&qword_1EC0BD480, type metadata accessor for IntelligencePlatformDataCollection);

  return sub_1C4F00438();
}

uint64_t sub_1C47DDAC4()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC152010);
  sub_1C442B738(v0, qword_1EC152010);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C4F0CE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "featureVectorVersion";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C4F004C8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "feature";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_1C4F004D8();
}

uint64_t sub_1C47DDCF0()
{
  type metadata accessor for Feature(0);
  sub_1C47DFCFC(&qword_1EC0BD440, type metadata accessor for Feature);
  return sub_1C4F003E8();
}

uint64_t sub_1C47DDD90()
{
  v2 = v0;
  result = sub_1C47DDE8C(v0);
  if (!v1)
  {
    v4 = *v0;
    if (*(*v2 + 16))
    {
      type metadata accessor for Feature(0);
      sub_1C47DFCFC(&qword_1EC0BD440, type metadata accessor for Feature);
      sub_1C43FD5B4();
      sub_1C4F004A8();
    }

    v5 = v2 + *(type metadata accessor for FeatureVector(0) + 20);
    sub_1C4417184();
    return sub_1C4F00308();
  }

  return result;
}

uint64_t sub_1C47DDE8C(uint64_t a1)
{
  result = type metadata accessor for FeatureVector(0);
  v3 = (a1 + *(result + 24));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_1C4F00468();
  }

  return result;
}

uint64_t sub_1C47DDF04()
{
  v2 = sub_1C43FECE0();
  v3 = type metadata accessor for FeatureVector(v2);
  sub_1C4409C8C(*(v3 + 24));
  if (v5)
  {
    if (!v4)
    {
      return 0;
    }
  }

  else
  {
    sub_1C4414A9C();
    if (v6)
    {
      return 0;
    }
  }

  v7 = *v1;
  v8 = *v0;
  sub_1C47E8984();
  if (v9)
  {
    v10 = *(v3 + 20);
    sub_1C4F00328();
    sub_1C441F9D4();
    sub_1C47DFCFC(v11, v12);
    return sub_1C4F010B8() & 1;
  }

  return 0;
}

uint64_t sub_1C47DDFD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_1C4F00328();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C47DE04C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_1C4F00328();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_1C47DE0C0(uint64_t a1, uint64_t a2))(void)
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_1C47DE13C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C47DFCFC(&qword_1EC0BD4C0, type metadata accessor for FeatureVector);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C47DE1DC()
{
  sub_1C47DFCFC(&qword_1EC0BD460, type metadata accessor for FeatureVector);

  return sub_1C4F00428();
}

uint64_t sub_1C47DE2A4()
{
  sub_1C47DFCFC(&qword_1EC0BD460, type metadata accessor for FeatureVector);

  return sub_1C4F00438();
}

uint64_t sub_1C47DE324()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC152028);
  sub_1C442B738(v0, qword_1EC152028);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C4F0CE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "identifier";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C4F004C8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_1C4F004D8();
}

uint64_t sub_1C47DE4EC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  while (1)
  {
    result = sub_1C4F00378();
    if (v5 || (v9 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v11 = sub_1C4405BCC();
      a5(v11);
    }

    else if (result == 1)
    {
      v10 = sub_1C4405BCC();
      a4(v10);
    }
  }

  return result;
}

uint64_t sub_1C47DE578()
{
  v0 = *(type metadata accessor for Feature(0) + 20);
  type metadata accessor for Feature.FeatureIdentifier(0);
  sub_1C47DFCFC(&qword_1EC0BD420, type metadata accessor for Feature.FeatureIdentifier);
  return sub_1C4F003F8();
}

uint64_t sub_1C47DE62C()
{
  v0 = *(type metadata accessor for Feature(0) + 24);
  type metadata accessor for FeatureValue(0);
  sub_1C47DFCFC(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  return sub_1C4F003F8();
}

uint64_t sub_1C47DE6E0()
{
  sub_1C4405A6C();
  v1 = sub_1C43FEE60();
  result = sub_1C47DE72C(v1, v2, v3, v4);
  if (!v0)
  {
    v6 = sub_1C43FEE60();
    sub_1C47DE900(v6, v7, v8, v9);
    sub_1C43FE99C();
    return sub_1C4F00308();
  }

  return result;
}

uint64_t sub_1C47DE72C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = sub_1C456902C(&qword_1EC0BD4B0, &unk_1C4F2E1C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Feature.FeatureIdentifier(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Feature(0);
  sub_1C445FFF0(a1 + *(v13 + 20), v8, &qword_1EC0BD4B0, &unk_1C4F2E1C0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BD4B0, &unk_1C4F2E1C0);
  }

  sub_1C47E0194();
  sub_1C47DFCFC(&qword_1EC0BD420, type metadata accessor for Feature.FeatureIdentifier);
  sub_1C4F004B8();
  return sub_1C447E918(v12, type metadata accessor for Feature.FeatureIdentifier);
}

uint64_t sub_1C47DE900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for FeatureValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Feature(0);
  sub_1C445FFF0(a1 + *(v13 + 24), v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    return sub_1C4420C3C(v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C47E0194();
  sub_1C47DFCFC(qword_1EDDF8B90, type metadata accessor for FeatureValue);
  sub_1C4F004B8();
  return sub_1C447E918(v12, type metadata accessor for FeatureValue);
}

uint64_t sub_1C47DEAD4(uint64_t a1, uint64_t a2)
{
  v56 = type metadata accessor for FeatureValue(0);
  v4 = sub_1C43FBCE0(v56);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBCC4();
  v52 = (v8 - v7);
  v9 = *(*(sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0) - 8) + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  v53 = &v51 - v11;
  v55 = sub_1C456902C(&qword_1EC0BB6C0, &unk_1C4F20AE0);
  sub_1C43FBCE0(v55);
  v13 = *(v12 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v14);
  v57 = &v51 - v15;
  v16 = type metadata accessor for Feature.FeatureIdentifier(0);
  v17 = sub_1C43FBCE0(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBCC4();
  v22 = v21 - v20;
  v23 = *(*(sub_1C456902C(&qword_1EC0BD4B0, &unk_1C4F2E1C0) - 8) + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v51 - v25;
  v27 = (sub_1C456902C(&qword_1EC0BD4B8, &unk_1C4F2F360) - 8);
  v28 = *(*v27 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v51 - v30;
  v54 = type metadata accessor for Feature(0);
  v32 = *(v54 + 20);
  v33 = v27[14];
  v58 = a1;
  sub_1C445FFF0(a1 + v32, v31, &qword_1EC0BD4B0, &unk_1C4F2E1C0);
  sub_1C445FFF0(a2 + v32, &v31[v33], &qword_1EC0BD4B0, &unk_1C4F2E1C0);
  sub_1C440582C(v31);
  if (v34)
  {
    sub_1C440582C(&v31[v33]);
    if (v34)
    {
      sub_1C4420C3C(v31, &qword_1EC0BD4B0, &unk_1C4F2E1C0);
      goto LABEL_11;
    }
  }

  else
  {
    sub_1C445FFF0(v31, v26, &qword_1EC0BD4B0, &unk_1C4F2E1C0);
    sub_1C440582C(&v31[v33]);
    if (!v34)
    {
      sub_1C47E0194();
      v38 = sub_1C47DF778();
      sub_1C447E918(v22, type metadata accessor for Feature.FeatureIdentifier);
      v39 = sub_1C4402120();
      sub_1C447E918(v39, v40);
      sub_1C4420C3C(v31, &qword_1EC0BD4B0, &unk_1C4F2E1C0);
      if ((v38 & 1) == 0)
      {
        goto LABEL_20;
      }

LABEL_11:
      v41 = *(v54 + 24);
      v42 = *(v55 + 48);
      v43 = v57;
      sub_1C445FFF0(v58 + v41, v57, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      sub_1C445FFF0(a2 + v41, v43 + v42, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      if (sub_1C44157D4(v43, 1, v56) == 1)
      {
        sub_1C440582C(v43 + v42);
        if (!v34)
        {
          goto LABEL_18;
        }

        sub_1C4420C3C(v43, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      }

      else
      {
        v44 = v53;
        sub_1C445FFF0(v43, v53, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
        sub_1C440582C(v43 + v42);
        if (v34)
        {
          sub_1C447E918(v44, type metadata accessor for FeatureValue);
LABEL_18:
          v35 = &qword_1EC0BB6C0;
          v36 = &unk_1C4F20AE0;
          v37 = v43;
          goto LABEL_19;
        }

        v47 = v52;
        sub_1C47E0194();
        v48 = sub_1C47E3504(v44, v47);
        sub_1C447E918(v47, type metadata accessor for FeatureValue);
        sub_1C447E918(v44, type metadata accessor for FeatureValue);
        sub_1C4420C3C(v43, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
        if ((v48 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      sub_1C4F00328();
      sub_1C441F9D4();
      sub_1C47DFCFC(v49, v50);
      v45 = sub_1C4F010B8();
      return v45 & 1;
    }

    sub_1C447E918(v26, type metadata accessor for Feature.FeatureIdentifier);
  }

  v35 = &qword_1EC0BD4B8;
  v36 = &unk_1C4F2F360;
  v37 = v31;
LABEL_19:
  sub_1C4420C3C(v37, v35, v36);
LABEL_20:
  v45 = 0;
  return v45 & 1;
}

uint64_t sub_1C47DF028(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C47DFCFC(&qword_1EC0BD4C8, type metadata accessor for Feature);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C47DF0C8()
{
  sub_1C47DFCFC(&qword_1EC0BD440, type metadata accessor for Feature);

  return sub_1C4F00428();
}

uint64_t sub_1C47DF190()
{
  sub_1C47DFCFC(&qword_1EC0BD440, type metadata accessor for Feature);

  return sub_1C4F00438();
}

uint64_t sub_1C47DF210()
{
  result = MEMORY[0x1C6940010](0xD000000000000012, 0x80000001C4F9B6C0);
  qword_1EC152040 = 0x75746165462E6467;
  *algn_1EC152048 = 0xEA00000000006572;
  return result;
}

uint64_t sub_1C47DF280()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC152050);
  sub_1C442B738(v0, qword_1EC152050);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C4F0C890;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "view";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C4F004C8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "feature";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "subidentifier";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  return sub_1C4F004D8();
}

uint64_t sub_1C47DF488()
{
  sub_1C4411B70();
  while (1)
  {
    sub_1C43FE99C();
    result = sub_1C4F00378();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_1C4406E34();
        sub_1C43FD770();
        sub_1C47DF5B0();
        break;
      case 2:
        sub_1C4406E34();
        sub_1C43FD770();
        sub_1C47DF560();
        break;
      case 1:
        sub_1C4406E34();
        sub_1C43FD770();
        sub_1C47DF510();
        break;
    }
  }

  return result;
}

uint64_t sub_1C47DF510()
{
  v0 = sub_1C4414568();
  v2 = *(v1(v0) + 20);
  sub_1C4417184();
  return sub_1C4F003D8();
}

uint64_t sub_1C47DF560()
{
  v0 = sub_1C4414568();
  v2 = *(v1(v0) + 24);
  sub_1C4417184();
  return sub_1C4F003D8();
}

uint64_t sub_1C47DF5B0()
{
  v0 = sub_1C4414568();
  v2 = *(v1(v0) + 28);
  sub_1C4417184();
  return sub_1C4F003D8();
}

uint64_t sub_1C47DF600()
{
  sub_1C4405A6C();
  sub_1C4406E34();
  sub_1C43FEE74();
  result = sub_1C47DF664();
  if (!v0)
  {
    sub_1C4406E34();
    sub_1C43FEE74();
    sub_1C47DF6C0();
    sub_1C4406E34();
    sub_1C43FEE74();
    sub_1C47DF71C();
    sub_1C43FE99C();
    return sub_1C4F00308();
  }

  return result;
}

uint64_t sub_1C47DF664()
{
  v1 = sub_1C4414568();
  result = v2(v1);
  v4 = (v0 + *(result + 20));
  if (v4[1])
  {
    v5 = *v4;
    return sub_1C442BB0C();
  }

  return result;
}

uint64_t sub_1C47DF6C0()
{
  v1 = sub_1C4414568();
  result = v2(v1);
  v4 = (v0 + *(result + 24));
  if (v4[1])
  {
    v5 = *v4;
    return sub_1C442BB0C();
  }

  return result;
}

uint64_t sub_1C47DF71C()
{
  v1 = sub_1C4414568();
  result = v2(v1);
  v4 = (v0 + *(result + 28));
  if (v4[1])
  {
    v5 = *v4;
    return sub_1C442BB0C();
  }

  return result;
}

uint64_t sub_1C47DF778()
{
  v0 = sub_1C43FECE0();
  v1 = type metadata accessor for Feature.FeatureIdentifier(v0);
  v2 = v1[5];
  sub_1C440891C();
  if (v5)
  {
    if (!v3)
    {
      return 0;
    }

    sub_1C4402FD0(v4);
    v8 = v8 && v6 == v7;
    if (!v8 && (sub_1C4F02938() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  v9 = v1[6];
  sub_1C440891C();
  if (v12)
  {
    if (!v10)
    {
      return 0;
    }

    sub_1C4402FD0(v11);
    v15 = v8 && v13 == v14;
    if (!v15 && (sub_1C4F02938() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v16 = v1[7];
  sub_1C440891C();
  if (v19)
  {
    if (v17)
    {
      sub_1C4402FD0(v18);
      v22 = v8 && v20 == v21;
      if (v22 || (sub_1C4F02938() & 1) != 0)
      {
        goto LABEL_26;
      }
    }
  }

  else if (!v17)
  {
LABEL_26:
    sub_1C4F00328();
    sub_1C441F9D4();
    sub_1C47DFCFC(v23, v24);
    sub_1C4402120();
    return sub_1C4F010B8() & 1;
  }

  return 0;
}

uint64_t sub_1C47DF884(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1C4F02AF8();
  a1(0);
  sub_1C47DFCFC(a2, a3);
  sub_1C4F00FE8();
  return sub_1C4F02B68();
}

uint64_t sub_1C47DF910()
{
  if (qword_1EC0B6B08 != -1)
  {
    swift_once();
  }

  v0 = qword_1EC152040;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v0;
}

uint64_t sub_1C47DF978@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C4F00328();
  v4 = sub_1C43FBCE0(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t sub_1C47DF9D8()
{
  v0 = sub_1C4F00328();
  sub_1C43FBCE0(v0);
  v2 = *(v1 + 40);
  v3 = sub_1C4402120();

  return v4(v3);
}

uint64_t sub_1C47DFA64(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C47DFCFC(&qword_1EC0BD4D0, type metadata accessor for Feature.FeatureIdentifier);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C47DFB04()
{
  sub_1C47DFCFC(&qword_1EC0BD420, type metadata accessor for Feature.FeatureIdentifier);

  return sub_1C4F00428();
}

uint64_t sub_1C47DFBCC()
{
  sub_1C47DFCFC(&qword_1EC0BD420, type metadata accessor for Feature.FeatureIdentifier);

  return sub_1C4F00438();
}

uint64_t sub_1C47DFCFC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C47E0194()
{
  v2 = sub_1C43FECE0();
  v4 = v3(v2);
  sub_1C43FBCE0(v4);
  (*(v5 + 32))(v0, v1);
  return v0;
}

void sub_1C47E0214()
{
  sub_1C4F00328();
  if (v0 <= 0x3F)
  {
    sub_1C44FCC6C(319, &qword_1EDDFEAB0);
    if (v1 <= 0x3F)
    {
      sub_1C44FCC6C(319, &qword_1EC0BD4D8);
      if (v2 <= 0x3F)
      {
        sub_1C47E0424(319, qword_1EDDEABE8, type metadata accessor for FeatureVector, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C47E0348()
{
  sub_1C47E0424(319, &qword_1EC0BD4E0, type metadata accessor for Feature, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C4F00328();
    if (v1 <= 0x3F)
    {
      sub_1C44FCC6C(319, &qword_1EC0BD4D8);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C47E0424(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C47E04B0()
{
  sub_1C4F00328();
  if (v0 <= 0x3F)
  {
    sub_1C47E0424(319, &qword_1EC0BD4F8, type metadata accessor for Feature.FeatureIdentifier, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1C47E0424(319, &qword_1EDDF8B70, type metadata accessor for FeatureValue, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C47E05D4()
{
  sub_1C4F00328();
  if (v0 <= 0x3F)
  {
    sub_1C44FCC6C(319, &qword_1EDDFEAB0);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1C47E06A8(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1C4EFBD38();
  sub_1C44F9918(v3, a2);
  sub_1C442B738(v3, a2);
  sub_1C47E127C();
  return sub_1C4EFBD58();
}

uint64_t sub_1C47E0724(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D614E77656976 && a2 == 0xE800000000000000;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4E65727574616566 && a2 == 0xEB00000000656D61;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x80000001C4F86480 == a2;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563)
        {

          return 4;
        }

        else
        {
          v10 = sub_1C4F02938();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_1C47E08D4(char a1)
{
  result = 0x656D614E77656976;
  switch(a1)
  {
    case 1:
      result = 0x4E65727574616566;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x65756C6176;
      break;
    case 4:
      result = 0x6E656469666E6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C47E097C(void *a1)
{
  v3 = v1;
  v5 = sub_1C456902C(&qword_1EC0BD530, &qword_1C4F2E5E8);
  v6 = sub_1C43FCDF8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v24[-v11 - 8];
  v13 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C47E127C();
  sub_1C4F02BF8();
  v14 = *v3;
  v15 = v3[1];
  LOBYTE(v25) = 0;
  sub_1C44196D0();
  sub_1C4F02798();
  if (!v2)
  {
    v16 = v3[2];
    v17 = v3[3];
    LOBYTE(v25) = 1;
    sub_1C44196D0();
    sub_1C4F02798();
    v18 = v3[4];
    v19 = v3[5];
    LOBYTE(v25) = 2;
    sub_1C44196D0();
    sub_1C4F02798();
    v25 = *(v3 + 3);
    v26 = v25;
    v24[23] = 3;
    sub_1C446E59C(&v26, v24);
    sub_1C446E5F8();
    sub_1C4F027E8();
    sub_1C4434000(v25, *(&v25 + 1));
    v20 = v3[8];
    v21 = *(v3 + 72);
    LOBYTE(v25) = 4;
    sub_1C44196D0();
    sub_1C4F02758();
  }

  return (*(v8 + 8))(v12, v5);
}

void *sub_1C47E0B50@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1C456902C(&qword_1EC0BD528, &qword_1C4F2E5E0);
  v6 = sub_1C43FCDF8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = v31 - v11;
  v13 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C47E127C();
  sub_1C4F02BC8();
  if (v2)
  {
    return sub_1C440962C(a1);
  }

  LOBYTE(v38) = 0;
  sub_1C442CA64();
  v14 = sub_1C4F02678();
  v36 = v15;
  LOBYTE(v38) = 1;
  sub_1C442CA64();
  v16 = sub_1C4F02678();
  v35 = v17;
  v33 = v16;
  LOBYTE(v38) = 2;
  v32 = sub_1C4F02678();
  v34 = v18;
  LOBYTE(__src[0]) = 3;
  sub_1C444C16C();
  sub_1C4F026C8();
  v31[0] = v38;
  v31[1] = v39;
  v49 = 4;
  sub_1C442CA64();
  v19 = sub_1C4F02638();
  v21 = v20;
  v22 = v19;
  (*(v8 + 8))(v12, v5);
  v21 &= 1u;
  v48 = v21;
  __src[0] = v14;
  __src[1] = v36;
  v23 = v33;
  v24 = v35;
  __src[2] = v33;
  __src[3] = v35;
  v25 = v34;
  __src[4] = v32;
  __src[5] = v34;
  sub_1C441F9EC();
  __src[6] = v27;
  __src[7] = v26;
  __src[8] = v22;
  LOBYTE(__src[9]) = v21;
  sub_1C470CD44(__src, &v38);
  sub_1C440962C(a1);
  v38 = v14;
  v39 = v36;
  v40 = v23;
  v41 = v24;
  v42 = v32;
  v43 = v25;
  sub_1C441F9EC();
  v44 = v29;
  v45 = v28;
  v46 = v22;
  v47 = v21;
  sub_1C470CDA0(&v38);
  return memcpy(a2, __src, 0x49uLL);
}

uint64_t sub_1C47E0EF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C47E0724(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C47E0F20(uint64_t a1)
{
  v2 = sub_1C47E127C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C47E0F5C(uint64_t a1)
{
  v2 = sub_1C47E127C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1C47E0F98@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1C47E0B50(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x49uLL);
  }

  return result;
}

uint64_t sub_1C47E0FFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C47E1614();

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

uint64_t sub_1C47E1070()
{
  sub_1C47E1668();

  return sub_1C4EFB6D8();
}

uint64_t sub_1C47E1164(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C47E16BC();

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

uint64_t sub_1C47E11B8(uint64_t a1, char a2, char a3)
{
  v5 = v3[1];
  v4 = v3[2];
  v6 = v3[3];
  v7 = v3[4];
  v8 = *(v7 + 16);
  v11[16] = a2;
  v12 = a1;
  v13 = v4;
  v14 = v6;
  v15 = v7;
  v16 = a3;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  v9 = sub_1C49A5498(sub_1C470CD1C, v11);

  return v9;
}

unint64_t sub_1C47E127C()
{
  result = qword_1EDDED158[0];
  if (!qword_1EDDED158[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDED158);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FeatureRow.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C47E13B4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 73))
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

uint64_t sub_1C47E13F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C47E145C()
{
  result = qword_1EC0BD510;
  if (!qword_1EC0BD510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD510);
  }

  return result;
}

unint64_t sub_1C47E14B8()
{
  result = qword_1EC0BD518;
  if (!qword_1EC0BD518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD518);
  }

  return result;
}

unint64_t sub_1C47E1510()
{
  result = qword_1EC0BD520;
  if (!qword_1EC0BD520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD520);
  }

  return result;
}

unint64_t sub_1C47E1568()
{
  result = qword_1EDDED148;
  if (!qword_1EDDED148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDED148);
  }

  return result;
}

unint64_t sub_1C47E15C0()
{
  result = qword_1EDDED150;
  if (!qword_1EDDED150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDED150);
  }

  return result;
}

unint64_t sub_1C47E1614()
{
  result = qword_1EDDED118;
  if (!qword_1EDDED118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDED118);
  }

  return result;
}

unint64_t sub_1C47E1668()
{
  result = qword_1EC0BD538;
  if (!qword_1EC0BD538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD538);
  }

  return result;
}

unint64_t sub_1C47E16BC()
{
  result = qword_1EC0BD540;
  if (!qword_1EC0BD540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD540);
  }

  return result;
}

_BYTE *_s24SiriInferenceFeatureFlagOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C47E17F0()
{
  result = qword_1EC0BD548;
  if (!qword_1EC0BD548)
  {
    sub_1C4572308(&qword_1EC0BD550, qword_1C4F2E610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD548);
  }

  return result;
}

uint64_t sub_1C47E1854()
{
  v0 = sub_1C4F02278();
  MEMORY[0x1C6940010](v0);

  return 0;
}

uint64_t sub_1C47E18C4(uint64_t a1, uint64_t a2)
{
  if (sub_1C4F02278() == a1 && v4 == a2)
  {

LABEL_8:

    return 0;
  }

  v6 = sub_1C44196E4();

  if (v6)
  {
    goto LABEL_8;
  }

  if (sub_1C4F02278() == a1 && v8 == a2)
  {

    return 1;
  }

  else
  {
    v10 = sub_1C44196E4();

    if (v10)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C47E19A8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1C4688988();
}

uint64_t sub_1C47E19CC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C47E18C4(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1C47E19FC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_1C47E1854();
  *a1 = result;
  a1[1] = v5;
  return result;
}

unint64_t sub_1C47E1AEC()
{
  result = qword_1EC0BD558;
  if (!qword_1EC0BD558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD558);
  }

  return result;
}

unint64_t sub_1C47E1B40()
{
  result = qword_1EC0BD560;
  if (!qword_1EC0BD560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD560);
  }

  return result;
}

unint64_t sub_1C47E1BA8()
{
  result = qword_1EC0BD568;
  if (!qword_1EC0BD568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD568);
  }

  return result;
}

uint64_t sub_1C47E1BFC(uint64_t a1)
{
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  swift_unknownObjectRetain();
  return a1;
}

uint64_t sub_1C47E1C48()
{
  sub_1C43FBCD4();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_1C4EF9CD8();
  v1[4] = v3;
  v4 = *(v3 - 8);
  v1[5] = v4;
  v5 = *(v4 + 64) + 15;
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C47E1D04, 0, 0);
}

void sub_1C47E1D04()
{
  v1 = v0[3];
  v2 = v1[3];
  if (v2 >= *(*v1 + 16))
  {
    v15 = type metadata accessor for FeatureProviderSnapshot(0);
    v16 = v0[6];
    sub_1C440BAA8(v0[2], 1, 1, v15);

    v17 = v0[1];

    v17();
  }

  else if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = v0[5];
    v3 = v0[6];
    v5 = v0[4];
    v6 = *(v4 + 16);
    v4 += 16;
    v7 = *v1 + ((*(v4 + 64) + 32) & ~*(v4 + 64)) + *(v4 + 56) * v2;
    v0[7] = v6;
    v0[8] = v4 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v6(v3, v7, v5);
    v1[3] = v2 + 1;
    v9 = v1[1];
    v8 = v1[2];
    ObjectType = swift_getObjectType();
    v11 = *(v8 + 16);
    v18 = (v11 + *v11);
    v12 = v11[1];
    v13 = swift_task_alloc();
    v0[9] = v13;
    *v13 = v0;
    v13[1] = sub_1C47E1EF0;
    v14 = v0[6];

    v18(v14, ObjectType, v8);
  }
}

uint64_t sub_1C47E1EF0()
{
  sub_1C43FBCD4();
  v1 = *v0;
  sub_1C43FBE64();
  *v3 = v2;
  v5 = *(v4 + 72);
  *v3 = *v0;
  *(v2 + 80) = v6;

  return MEMORY[0x1EEE6DFA0](sub_1C47E1FE8, 0, 0);
}

uint64_t sub_1C47E1FE8()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v5 = *(v0 + 32);
  v6 = *(v0 + 16);
  (*(v0 + 56))(v6, v3, v5);
  sub_1C465CF34(v1);
  v8 = v7;

  (*(v4 + 8))(v3, v5);
  v9 = type metadata accessor for FeatureProviderSnapshot(0);
  *(v6 + *(v9 + 20)) = v8;
  v10 = *(v0 + 48);
  sub_1C440BAA8(*(v0 + 16), 0, 1, v9);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1C47E20D4()
{
  sub_1C43FBCD4();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C47E2168;

  return sub_1C47E1C48();
}

uint64_t sub_1C47E2168()
{
  sub_1C43FBCD4();
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_1C43FBE64();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_1C47E2254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1C47E2320;

  return (sub_1C498250C)(a1, a2, a3);
}

uint64_t sub_1C47E2320()
{
  v2 = *v1;
  sub_1C43FBE64();
  *v3 = v2;
  v5 = *(v4 + 24);
  v6 = *v1;
  sub_1C43FBE64();
  *v7 = v6;

  if (v0)
  {
    **(v2 + 16) = v0;
  }

  v8 = *(v6 + 8);

  return v8();
}

uint64_t sub_1C47E2438@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[1];
  v4 = v1[2];
  v5 = sub_1C47E1BFC(*v1);
  v7 = v6;
  v9 = v8;
  swift_unknownObjectRelease();

  *a1 = v5;
  a1[1] = v7;
  a1[2] = v9;
  a1[3] = 0;
  return result;
}

unint64_t sub_1C47E24A0(uint64_t a1)
{
  result = sub_1C47E24C8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C47E24C8()
{
  result = qword_1EC0BD570;
  if (!qword_1EC0BD570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD570);
  }

  return result;
}

void sub_1C47E2574()
{
  sub_1C47E2714(319, &qword_1EDDDBCD0, type metadata accessor for FeatureValue.BasicValue, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C47E2A34(319, &qword_1EDDDBBB8, MEMORY[0x1E69E72F0], MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1C47E2714(319, &qword_1EDDDBCC8, type metadata accessor for FeatureValue.NamedValue, MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        sub_1C4F00328();
        if (v3 <= 0x3F)
        {
          sub_1C47E2714(319, &qword_1EDDF8BF0, type metadata accessor for FeatureValue.BasicValue, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1C47E2714(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C47E27C0()
{
  sub_1C4F00328();
  if (v0 <= 0x3F)
  {
    sub_1C47E2A34(319, &qword_1EDDFEAB0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1C47E2714(319, &qword_1EDDF8BF0, type metadata accessor for FeatureValue.BasicValue, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C47E28D8()
{
  sub_1C4F00328();
  if (v0 <= 0x3F)
  {
    sub_1C47E2A34(319, &qword_1EDDFCDC0, MEMORY[0x1E69E7360], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1C47E2A34(319, &qword_1EDDF05D8, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1C47E2A34(319, &qword_1EDDDBB88, MEMORY[0x1E69E6448], MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1C47E2A34(319, &qword_1EDDFEAB0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1C47E2A34(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1C47E2A84@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v2;
  a1[2] = v2;
  v3 = type metadata accessor for FeatureValue(0);
  v4 = a1 + *(v3 + 28);
  sub_1C4F00318();
  v5 = *(v3 + 32);
  type metadata accessor for FeatureValue.BasicValue(0);
  v6 = sub_1C43FEFE8();

  return sub_1C440BAA8(v6, v7, v8, v9);
}

uint64_t sub_1C47E2AEC(uint64_t a1)
{
  result = type metadata accessor for FeatureValue.BasicValue(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t sub_1C47E2B24(double a1)
{
  result = type metadata accessor for FeatureValue.BasicValue(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

double sub_1C47E2B5C()
{
  v1 = v0 + *(type metadata accessor for FeatureValue.BasicValue(0) + 24);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

float sub_1C47E2B94()
{
  v1 = v0 + *(type metadata accessor for FeatureValue.BasicValue(0) + 28);
  result = *v1;
  if (*(v1 + 4))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1C47E2BCC(float a1)
{
  result = type metadata accessor for FeatureValue.BasicValue(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t sub_1C47E2C04()
{
  v1 = (v0 + *(type metadata accessor for FeatureValue.BasicValue(0) + 20));
  if (v1[8])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

int *sub_1C47E2C38@<X0>(uint64_t a1@<X8>)
{
  sub_1C4F00318();
  result = type metadata accessor for FeatureValue.BasicValue(0);
  v3 = a1 + result[5];
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = a1 + result[6];
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = a1 + result[7];
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = (a1 + result[8]);
  *v6 = 0;
  v6[1] = 0;
  return result;
}

uint64_t sub_1C47E2CA4@<X0>(uint64_t a1@<X8>)
{
  sub_1C4F00318();
  v2 = type metadata accessor for FeatureValue.NamedValue(0);
  v3 = (a1 + *(v2 + 20));
  *v3 = 0;
  v3[1] = 0;
  v4 = *(v2 + 24);
  type metadata accessor for FeatureValue.BasicValue(0);
  v5 = sub_1C43FEFE8();

  return sub_1C440BAA8(v5, v6, v7, v8);
}

uint64_t sub_1C47E2CFC()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC152068);
  sub_1C442B738(v0, qword_1EC152068);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C4F0D480;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "value_sequence";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C4F004C8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value_sequence_shape";
  *(v10 + 8) = 20;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "value_dictionary";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "value";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v15 = *MEMORY[0x1E69AADC8];
  v9();
  return sub_1C4F004D8();
}

uint64_t sub_1C47E2F48()
{
  sub_1C4411B70();
  while (1)
  {
    sub_1C43FE99C();
    result = sub_1C4F00378();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1C4406AC8();
        sub_1C47E2FF0();
        break;
      case 2:
        sub_1C4F00388();
        break;
      case 3:
        sub_1C4406AC8();
        sub_1C47E3090();
        break;
      case 4:
        sub_1C4406AC8();
        sub_1C47E3130();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C47E2FF0()
{
  type metadata accessor for FeatureValue.BasicValue(0);
  sub_1C47E5128(qword_1EDDF8C10, type metadata accessor for FeatureValue.BasicValue);
  return sub_1C4F003E8();
}

uint64_t sub_1C47E3090()
{
  type metadata accessor for FeatureValue.NamedValue(0);
  sub_1C47E5128(&qword_1EC0BD580, type metadata accessor for FeatureValue.NamedValue);
  return sub_1C4F003E8();
}

uint64_t sub_1C47E3130()
{
  v0 = *(type metadata accessor for FeatureValue(0) + 32);
  type metadata accessor for FeatureValue.BasicValue(0);
  sub_1C47E5128(qword_1EDDF8C10, type metadata accessor for FeatureValue.BasicValue);
  return sub_1C4F003F8();
}

uint64_t sub_1C47E31E4()
{
  v2 = v1;
  if (!*(*v0 + 16) || (type metadata accessor for FeatureValue.BasicValue(0), sub_1C47E5128(qword_1EDDF8C10, type metadata accessor for FeatureValue.BasicValue), sub_1C43FD5B4(), result = sub_1C440F598(), (v2 = v1) == 0))
  {
    if (!*(v0[1] + 16) || (v1 = v2, result = sub_1C4F00448(), !v2))
    {
      if (!*(v0[2] + 16) || (type metadata accessor for FeatureValue.NamedValue(0), sub_1C47E5128(&qword_1EC0BD580, type metadata accessor for FeatureValue.NamedValue), sub_1C43FD5B4(), result = sub_1C440F598(), (v2 = v1) == 0))
      {
        result = sub_1C47E3364(v0);
        if (!v2)
        {
          v4 = v0 + *(type metadata accessor for FeatureValue(0) + 28);
          return sub_1C4F00308();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1C47E3364(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0BB438, qword_1C4F1F960);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for FeatureValue.BasicValue(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FeatureValue(0);
  sub_1C46D6C34(a1 + *(v10 + 32), v5);
  if (sub_1C44157D4(v5, 1, v6) == 1)
  {
    return sub_1C4420C3C(v5, &qword_1EC0BB438, qword_1C4F1F960);
  }

  sub_1C47E549C(v5, v9);
  sub_1C47E5128(qword_1EDDF8C10, type metadata accessor for FeatureValue.BasicValue);
  sub_1C4F004B8();
  return sub_1C47E5440(v9);
}

uint64_t sub_1C47E3504(uint64_t a1, uint64_t *a2)
{
  v5 = sub_1C43FBE94();
  v6 = type metadata accessor for FeatureValue.BasicValue(v5);
  v7 = sub_1C43FBCE0(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C440E01C();
  v10 = *(*(sub_1C456902C(&qword_1EC0BB438, qword_1C4F1F960) - 8) + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v36 - v12;
  v14 = sub_1C456902C(&qword_1EC0BD5B8, &unk_1C4F2F340);
  sub_1C43FBCE0(v14);
  v16 = *(v15 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v36 - v18;
  v20 = *v2;
  v21 = *a2;
  sub_1C47E9434();
  if ((v22 & 1) == 0)
  {
    goto LABEL_13;
  }

  if ((sub_1C47E9678(v2[1], a2[1]) & 1) == 0)
  {
    goto LABEL_13;
  }

  v23 = v2[2];
  v24 = a2[2];
  sub_1C47E96CC();
  if ((v25 & 1) == 0)
  {
    goto LABEL_13;
  }

  v26 = type metadata accessor for FeatureValue(0);
  v27 = *(v26 + 32);
  v28 = *(v14 + 48);
  sub_1C46D6C34(v2 + v27, v19);
  sub_1C46D6C34(a2 + v27, &v19[v28]);
  sub_1C43FC0FC(v19);
  if (v29)
  {
    sub_1C43FC0FC(&v19[v28]);
    if (v29)
    {
      sub_1C4420C3C(v19, &qword_1EC0BB438, qword_1C4F1F960);
LABEL_16:
      v33 = *(v26 + 28);
      sub_1C4F00328();
      sub_1C4406E50();
      sub_1C47E5128(v34, v35);
      v30 = sub_1C4F010B8();
      return v30 & 1;
    }

    goto LABEL_12;
  }

  sub_1C46D6C34(v19, v13);
  sub_1C43FC0FC(&v19[v28]);
  if (v29)
  {
    sub_1C47E5440(v13);
LABEL_12:
    sub_1C4420C3C(v19, &qword_1EC0BD5B8, &unk_1C4F2F340);
    goto LABEL_13;
  }

  sub_1C47E549C(&v19[v28], v3);
  v32 = sub_1C47E419C(v13, v3);
  sub_1C47E5440(v3);
  sub_1C47E5440(v13);
  sub_1C4420C3C(v19, &qword_1EC0BB438, qword_1C4F1F960);
  if (v32)
  {
    goto LABEL_16;
  }

LABEL_13:
  v30 = 0;
  return v30 & 1;
}

uint64_t sub_1C47E379C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_1C4F00328();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C47E3810(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = sub_1C4F00328();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_1C47E3884(uint64_t a1, uint64_t a2))(void)
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 28);
  return result;
}

uint64_t sub_1C47E38D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C47E5128(&qword_1EC0BD5C0, type metadata accessor for FeatureValue);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C47E3978()
{
  sub_1C47E5128(qword_1EDDF8B90, type metadata accessor for FeatureValue);

  return sub_1C4F00428();
}

uint64_t sub_1C47E3A40()
{
  sub_1C47E5128(qword_1EDDF8B90, type metadata accessor for FeatureValue);

  return sub_1C4F00438();
}

uint64_t sub_1C47E3AE0()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC152090);
  sub_1C442B738(v0, qword_1EC152090);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C4F0D480;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "int_value";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C4F004C8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "double_value";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "float_value";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "string_value";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  return sub_1C4F004D8();
}

uint64_t sub_1C47E3D20()
{
  sub_1C4411B70();
  while (1)
  {
    sub_1C43FE99C();
    result = sub_1C4F00378();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1C4406AC8();
        sub_1C47E3DC0();
        break;
      case 2:
        sub_1C4406AC8();
        sub_1C47E3E24();
        break;
      case 3:
        sub_1C4406AC8();
        sub_1C47E3E88();
        break;
      case 4:
        sub_1C4406AC8();
        sub_1C47E3EEC();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C47E3F50()
{
  v1 = sub_1C43FEE60();
  result = sub_1C47E3FBC(v1);
  if (!v0)
  {
    v3 = sub_1C43FEE60();
    sub_1C47E4034(v3);
    v4 = sub_1C43FEE60();
    sub_1C47E40AC(v4);
    v5 = sub_1C43FEE60();
    sub_1C47E4124(v5);
    sub_1C43FE99C();
    return sub_1C4F00308();
  }

  return result;
}

uint64_t sub_1C47E3FBC(uint64_t a1)
{
  result = type metadata accessor for FeatureValue.BasicValue(0);
  v3 = (a1 + *(result + 20));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_1C4F00478();
  }

  return result;
}

uint64_t sub_1C47E4034(uint64_t a1)
{
  result = type metadata accessor for FeatureValue.BasicValue(0);
  v3 = (a1 + *(result + 24));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_1C4F00488();
  }

  return result;
}

uint64_t sub_1C47E40AC(uint64_t a1)
{
  result = type metadata accessor for FeatureValue.BasicValue(0);
  v3 = (a1 + *(result + 28));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_1C4F00458();
  }

  return result;
}

uint64_t sub_1C47E4124(uint64_t a1)
{
  result = type metadata accessor for FeatureValue.BasicValue(0);
  v3 = (a1 + *(result + 32));
  if (v3[1])
  {
    v4 = *v3;
    return sub_1C4F00498();
  }

  return result;
}

uint64_t sub_1C47E419C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C43FBE94();
  v5 = type metadata accessor for FeatureValue.BasicValue(v4);
  sub_1C4408908(*(v5 + 20));
  if (v10)
  {
    if (!v7)
    {
      return 0;
    }
  }

  else
  {
    if (*v8 != *v9)
    {
      LOBYTE(v7) = 1;
    }

    if (v7)
    {
      return 0;
    }
  }

  sub_1C4408908(*(v6 + 24));
  if (v15)
  {
    if (!v12)
    {
      return 0;
    }
  }

  else
  {
    if (*v13 != *v14)
    {
      LOBYTE(v12) = 1;
    }

    if (v12)
    {
      return 0;
    }
  }

  v16 = *(v11 + 28);
  v17 = (v2 + v16);
  v18 = *(v2 + v16 + 4);
  v19 = (a2 + v16);
  v20 = *(a2 + v16 + 4);
  if (v18)
  {
    if (!v20)
    {
      return 0;
    }
  }

  else
  {
    if (*v17 != *v19)
    {
      LOBYTE(v20) = 1;
    }

    if (v20)
    {
      return 0;
    }
  }

  v21 = *(v11 + 32);
  sub_1C440891C();
  if (v22)
  {
    if (!v23)
    {
      return 0;
    }

    v26 = *v24 == *v25 && v22 == v23;
    if (!v26 && (sub_1C4F02938() & 1) == 0)
    {
      return 0;
    }

LABEL_26:
    sub_1C4F00328();
    sub_1C4406E50();
    sub_1C47E5128(v27, v28);
    sub_1C4402120();
    return sub_1C4F010B8() & 1;
  }

  if (!v23)
  {
    goto LABEL_26;
  }

  return 0;
}

uint64_t sub_1C47E4330(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C47E5128(&qword_1EC0BD5C8, type metadata accessor for FeatureValue.BasicValue);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C47E43D0()
{
  sub_1C47E5128(qword_1EDDF8C10, type metadata accessor for FeatureValue.BasicValue);

  return sub_1C4F00428();
}

uint64_t sub_1C47E4498()
{
  sub_1C47E5128(qword_1EDDF8C10, type metadata accessor for FeatureValue.BasicValue);

  return sub_1C4F00438();
}

uint64_t sub_1C47E4538(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  result = MEMORY[0x1C6940010](a2, 0xEB0000000065756CLL);
  *a3 = 0x75746165462E6467;
  *a4 = 0xEF65756C61566572;
  return result;
}

uint64_t sub_1C47E45B4()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC1520B8);
  sub_1C442B738(v0, qword_1EC1520B8);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C4F0CE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C4F004C8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_1C4F004D8();
}

uint64_t sub_1C47E477C()
{
  sub_1C4411B70();
  while (1)
  {
    sub_1C43FE99C();
    result = sub_1C4F00378();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      sub_1C4406AC8();
      sub_1C47E4844();
    }

    else if (result == 1)
    {
      sub_1C4406AC8();
      sub_1C47E47E0();
    }
  }

  return result;
}

uint64_t sub_1C47E4844()
{
  v0 = *(type metadata accessor for FeatureValue.NamedValue(0) + 24);
  type metadata accessor for FeatureValue.BasicValue(0);
  sub_1C47E5128(qword_1EDDF8C10, type metadata accessor for FeatureValue.BasicValue);
  return sub_1C4F003F8();
}

uint64_t sub_1C47E48F8()
{
  v1 = sub_1C43FEE60();
  result = sub_1C47E494C(v1);
  if (!v0)
  {
    v3 = sub_1C43FEE60();
    sub_1C47E49C4(v3);
    sub_1C43FE99C();
    return sub_1C4F00308();
  }

  return result;
}

uint64_t sub_1C47E494C(uint64_t a1)
{
  result = type metadata accessor for FeatureValue.NamedValue(0);
  v3 = (a1 + *(result + 20));
  if (v3[1])
  {
    v4 = *v3;
    return sub_1C4F00498();
  }

  return result;
}

uint64_t sub_1C47E49C4(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0BB438, qword_1C4F1F960);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for FeatureValue.BasicValue(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FeatureValue.NamedValue(0);
  sub_1C46D6C34(a1 + *(v10 + 24), v5);
  if (sub_1C44157D4(v5, 1, v6) == 1)
  {
    return sub_1C4420C3C(v5, &qword_1EC0BB438, qword_1C4F1F960);
  }

  sub_1C47E549C(v5, v9);
  sub_1C47E5128(qword_1EDDF8C10, type metadata accessor for FeatureValue.BasicValue);
  sub_1C4F004B8();
  return sub_1C47E5440(v9);
}

uint64_t sub_1C47E4B64(uint64_t a1, uint64_t a2)
{
  v5 = sub_1C43FBE94();
  v6 = type metadata accessor for FeatureValue.BasicValue(v5);
  v7 = sub_1C43FBCE0(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C440E01C();
  v10 = *(*(sub_1C456902C(&qword_1EC0BB438, qword_1C4F1F960) - 8) + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v35 - v12;
  v14 = sub_1C456902C(&qword_1EC0BD5B8, &unk_1C4F2F340);
  sub_1C43FBCE0(v14);
  v16 = *(v15 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v35 - v18;
  v20 = type metadata accessor for FeatureValue.NamedValue(0);
  v21 = *(v20 + 20);
  sub_1C440891C();
  if (v22)
  {
    if (!v23)
    {
      goto LABEL_19;
    }

    v26 = *v24 == *v25 && v22 == v23;
    if (!v26 && (sub_1C4F02938() & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if (v23)
  {
    goto LABEL_19;
  }

  v27 = *(v20 + 24);
  v28 = *(v14 + 48);
  sub_1C46D6C34(v2 + v27, v19);
  sub_1C46D6C34(a2 + v27, &v19[v28]);
  sub_1C43FC0FC(v19);
  if (v26)
  {
    sub_1C43FC0FC(&v19[v28]);
    if (v26)
    {
      sub_1C4420C3C(v19, &qword_1EC0BB438, qword_1C4F1F960);
LABEL_22:
      sub_1C4F00328();
      sub_1C4406E50();
      sub_1C47E5128(v33, v34);
      sub_1C4402120();
      v30 = sub_1C4F010B8();
      return v30 & 1;
    }

    goto LABEL_18;
  }

  sub_1C46D6C34(v19, v13);
  sub_1C43FC0FC(&v19[v28]);
  if (v29)
  {
    sub_1C47E5440(v13);
LABEL_18:
    sub_1C4420C3C(v19, &qword_1EC0BD5B8, &unk_1C4F2F340);
    goto LABEL_19;
  }

  sub_1C47E549C(&v19[v28], v3);
  v32 = sub_1C47E419C(v13, v3);
  sub_1C47E5440(v3);
  sub_1C47E5440(v13);
  sub_1C4420C3C(v19, &qword_1EC0BB438, qword_1C4F1F960);
  if (v32)
  {
    goto LABEL_22;
  }

LABEL_19:
  v30 = 0;
  return v30 & 1;
}

uint64_t sub_1C47E4DCC(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1C4F02AF8();
  a1(0);
  sub_1C47E5128(a2, a3);
  sub_1C4F00FE8();
  return sub_1C4F02B68();
}

uint64_t sub_1C47E4EB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C47E5128(&qword_1EC0BD5D0, type metadata accessor for FeatureValue.NamedValue);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C47E4F50()
{
  sub_1C47E5128(&qword_1EC0BD580, type metadata accessor for FeatureValue.NamedValue);

  return sub_1C4F00428();
}

uint64_t sub_1C47E5018()
{
  sub_1C47E5128(&qword_1EC0BD580, type metadata accessor for FeatureValue.NamedValue);

  return sub_1C4F00438();
}

uint64_t sub_1C47E5128(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C47E5440(uint64_t a1)
{
  v2 = type metadata accessor for FeatureValue.BasicValue(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C47E549C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeatureValue.BasicValue(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C47E5500(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C47E5540(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C47E559C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C47E55B0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1C47E55F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_1C47E563C(uint64_t a1, double a2)
{
  v2 = a2;
  v26 = *MEMORY[0x1E69E9840];
  v4 = sub_1C47E57A4(a2);
  v5 = v4 == 8 || v4 == 3;
  if (v5)
  {
    *&v24 = MEMORY[0x1C6940C00](v2);
    *(&v24 + 1) = v6;
    v25 = v7;
    v22 = v24;
    v23 = v7;
    if (v2 == 0.0)
    {
      v8 = 0;
LABEL_14:
      MEMORY[0x1C6941AC0](&v22, &v24, v8, 0);
      v20 = v22;
      v21 = v23;
      v18 = v22;
      v19 = v23;
      v14 = [objc_allocWithZone(MEMORY[0x1E696AB90]) initWithDecimal_];
      [v14 doubleValue];
      v2 = v15;

      goto LABEL_15;
    }

    log10(fabs(v2));
    sub_1C4406DB4();
    if (v10 ^ v11 | v5)
    {
      if (v9 < 9.22337204e18)
      {
        if (v9 > -9.22337204e18)
        {
          v12 = -v9;
          v13 = v12 + a1;
          if (!__OFADD__(v12, a1))
          {
            v8 = v13 - 1;
            if (!__OFSUB__(v13, 1))
            {
              goto LABEL_14;
            }

LABEL_19:
            __break(1u);
          }

LABEL_18:
          __break(1u);
          goto LABEL_19;
        }

LABEL_17:
        __break(1u);
        goto LABEL_18;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_15:
  v16 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t sub_1C47E57A4(double a1)
{
  v1 = (*&a1 >> 52) & 0x7FFLL;
  if (v1)
  {
    if (a1 < 0.0)
    {
      v2 = 3;
    }

    else
    {
      v2 = 8;
    }

    if (a1 < 0.0)
    {
      v3 = 2;
    }

    else
    {
      v3 = 9;
    }

    if ((*&a1 & 0xFFFFFFFFFFFFFLL) != 0)
    {
      v4 = (*&a1 >> 51) & 1;
    }

    else
    {
      v4 = v3;
    }

    if (v1 == 2047)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }

  else if ((*&a1 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    if (sub_1C4F01A18())
    {
      return 4;
    }

    else
    {
      return 7;
    }
  }

  else if (a1 < 0.0)
  {
    return 5;
  }

  else
  {
    return 6;
  }
}

uint64_t sub_1C47E5828(float a1)
{
  if ((LODWORD(a1) >> 23))
  {
    if ((LODWORD(a1) >> 23) == 255)
    {
      if ((LODWORD(a1) & 0x7FFFFF) != 0)
      {
        return (LODWORD(a1) >> 22) & 1;
      }

      else if (sub_1C4F01A88())
      {
        return 2;
      }

      else
      {
        return 9;
      }
    }

    else if (a1 < 0.0)
    {
      return 3;
    }

    else
    {
      return 8;
    }
  }

  else
  {
    v2 = LODWORD(a1) & 0x7FFFFF;
    v3 = sub_1C4F01A88();
    if (v3)
    {
      v4 = 5;
    }

    else
    {
      v4 = 6;
    }

    if (v3)
    {
      v5 = 4;
    }

    else
    {
      v5 = 7;
    }

    if (v2)
    {
      return v5;
    }

    else
    {
      return v4;
    }
  }
}

void sub_1C47E58BC(uint64_t a1, double a2)
{
  v4 = sub_1C47E57A4(a2);
  v5 = v4 == 8 || v4 == 3;
  if (v5)
  {
    v6 = (a1 + 48);
    v7 = *(a1 + 16) + 1;
    do
    {
      if (!--v7)
      {
        return;
      }

      v8 = v6 + 3;
      v9 = *v6;
      v10 = *(v6 - 2);
      v11 = *(v6 - 1);

      LOBYTE(v10) = v10(v12, a2);

      v6 = v8;
    }

    while ((v10 & 1) == 0);
    sub_1C4406DB4();
    if (v14 ^ v15 | v5)
    {
      if (v13 > -9.22337204e18)
      {
        if (v13 < 9.22337204e18)
        {
          return;
        }

        goto LABEL_15;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }
}

float sub_1C47E5998(uint64_t a1, float a2)
{
  v2 = a2;
  v24 = *MEMORY[0x1E69E9840];
  v4 = sub_1C47E5828(a2);
  if (v4 == 8 || v4 == 3)
  {
    *&v20 = MEMORY[0x1C6940C00](v2);
    *(&v20 + 1) = v6;
    v21 = v7;
    v18 = v20;
    v19 = v7;
    v8 = floorf(log10f(fabsf(v2)));
    if ((LODWORD(v8) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      __break(1u);
    }

    else if (v8 < 9.2234e18)
    {
      if (v8 > -9.2234e18)
      {
        v9 = -v8;
        v10 = v9 + a1;
        if (!__OFADD__(v9, a1))
        {
          if (!__OFSUB__(v10, 1))
          {
            MEMORY[0x1C6941AC0](&v18, &v20, v10 - 1, 0);
            v22 = v18;
            v23 = v19;
            v11 = objc_allocWithZone(MEMORY[0x1E696AB90]);
            v16 = v22;
            v17 = v23;
            v12 = [v11 initWithDecimal_];
            [v12 floatValue];
            v2 = v13;

            goto LABEL_12;
          }

LABEL_17:
          __break(1u);
        }

LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_12:
  v14 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t sub_1C47E5B10(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C461B078(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1C47F61F8(v6);
  *a1 = v2;
  return result;
}

void sub_1C47E5C30()
{
  sub_1C47F7A30();
  v1 = OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_categoryMap;
  sub_1C445AAC8();
  v2 = *(v0 + v1);
  v3 = *(v2 + 64);
  v4 = *(v2 + 32);
  sub_1C43FD030();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v10 = 0;
  v11 = MEMORY[0x1E69E7CC0];
  while (v7)
  {
LABEL_7:
    v13 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v14 = (*(v2 + 48) + ((v10 << 10) | (16 * v13)));
    v15 = *v14;
    v16 = v14[1];
    v17 = HIBYTE(v16) & 0xF;
    v18 = v15 & 0xFFFFFFFFFFFFLL;
    if ((v16 & 0x2000000000000000) != 0)
    {
      v19 = HIBYTE(v16) & 0xF;
    }

    else
    {
      v19 = v15 & 0xFFFFFFFFFFFFLL;
    }

    if (v19)
    {
      if ((v16 & 0x1000000000000000) != 0)
      {
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4AA0500(v15, v16, 0xAuLL);
        v22 = v29;
        v34 = v30;

        if ((v34 & 1) == 0)
        {
LABEL_83:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v31 = *(v11 + 16);
            sub_1C458A7C8();
            v11 = v32;
          }

          sub_1C440C4FC();
          if (v23)
          {
            sub_1C458A7C8();
            v11 = v33;
          }

          *(v11 + 16) = v16;
          *(v11 + 112) = v22;
        }
      }

      else
      {
        if ((v16 & 0x2000000000000000) != 0)
        {
          if (v15 == 43)
          {
            if (!v17)
            {
              goto LABEL_93;
            }

            if (v17 != 1)
            {
              v22 = 0;
              while (1)
              {
                sub_1C444191C();
                if (!v24 && v23)
                {
                  break;
                }

                sub_1C4424968();
                if (!v24)
                {
                  break;
                }

                sub_1C4471CAC();
                if (v23)
                {
                  break;
                }

                sub_1C4414AC0();
                if (v24)
                {
                  goto LABEL_78;
                }
              }
            }
          }

          else if (v15 == 45)
          {
            if (!v17)
            {
              goto LABEL_90;
            }

            if (v17 != 1)
            {
              v22 = 0;
              while (1)
              {
                sub_1C444191C();
                if (!v24 && v23)
                {
                  break;
                }

                sub_1C4424968();
                if (!v24)
                {
                  break;
                }

                v23 = 10 * v22 >= v27;
                v22 = 10 * v22 - v27;
                if (!v23)
                {
                  break;
                }

                sub_1C4414AC0();
                if (v24)
                {
                  goto LABEL_78;
                }
              }
            }
          }

          else if (v17)
          {
            v22 = 0;
            while (1)
            {
              sub_1C444191C();
              if (!v24 && v23)
              {
                break;
              }

              sub_1C4424968();
              if (!v24)
              {
                break;
              }

              sub_1C4471CAC();
              if (v23)
              {
                break;
              }

              sub_1C4414AC0();
              if (v24)
              {
                goto LABEL_78;
              }
            }
          }

          goto LABEL_77;
        }

        if ((v15 & 0x1000000000000000) != 0)
        {
          v20 = ((v16 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v20 = sub_1C4F022F8();
        }

        v21 = *v20;
        if (v21 == 43)
        {
          if (v18 < 1)
          {
            goto LABEL_91;
          }

          if (v18 == 1)
          {
            goto LABEL_77;
          }

          v22 = 0;
          if (v20)
          {
            while (1)
            {
              sub_1C444191C();
              if (!v24 && v23)
              {
                goto LABEL_77;
              }

              sub_1C4424968();
              if (!v24)
              {
                goto LABEL_77;
              }

              sub_1C4471CAC();
              if (v23)
              {
                goto LABEL_77;
              }

              sub_1C4414AC0();
              if (v24)
              {
                goto LABEL_78;
              }
            }
          }
        }

        else if (v21 == 45)
        {
          if (v18 < 1)
          {
            goto LABEL_92;
          }

          if (v18 == 1)
          {
            goto LABEL_77;
          }

          v22 = 0;
          if (v20)
          {
            while (1)
            {
              sub_1C444191C();
              if (!v24 && v23)
              {
                break;
              }

              sub_1C4424968();
              if (!v24)
              {
                break;
              }

              v23 = 10 * v22 >= v25;
              v22 = 10 * v22 - v25;
              if (!v23)
              {
                break;
              }

              sub_1C4414AC0();
              if (v24)
              {
                goto LABEL_78;
              }
            }

LABEL_77:
            v22 = 0;
            v26 = 1;
            goto LABEL_78;
          }
        }

        else
        {
          if (!v18)
          {
            goto LABEL_77;
          }

          v22 = 0;
          if (v20)
          {
            do
            {
              v28 = *v20 - 48;
              if (v28 > 9)
              {
                goto LABEL_77;
              }

              if (!is_mul_ok(v22, 0xAuLL))
              {
                goto LABEL_77;
              }

              v23 = __CFADD__(10 * v22, v28);
              v22 = 10 * v22 + v28;
              if (v23)
              {
                goto LABEL_77;
              }

              ++v20;
            }

            while (--v18);
          }
        }

        v26 = 0;
LABEL_78:
        if ((v26 & 1) == 0)
        {
          goto LABEL_83;
        }
      }
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v9)
    {

      sub_1C4488800();
      return;
    }

    v7 = *(v2 + 64 + 8 * v12);
    ++v10;
    if (v7)
    {
      v10 = v12;
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
}

void sub_1C47E5FB4()
{
  sub_1C43FBD3C();
  v1 = sub_1C456902C(&qword_1EC0B9DC8, &unk_1C4F124A0);
  sub_1C43FBD18(v1);
  v3 = *(v2 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v38 - v5;
  v7 = sub_1C4EF9D38();
  v8 = sub_1C43FCDF8(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FD2D8();
  v42 = v13;
  v14 = OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_categoryMap;
  swift_beginAccess();
  v15 = *(v0 + v14);
  v16 = *(v15 + 64);
  v17 = *(v15 + 32);
  sub_1C43FD030();
  v20 = v19 & v18;
  v22 = (v21 + 63) >> 6;
  v40 = v10;
  v41 = (v10 + 32);
  swift_bridgeObjectRetain_n();
  v23 = 0;
  v24 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v25 = v23;
    if (!v20)
    {
      break;
    }

LABEL_6:
    v26 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v27 = (*(v15 + 48) + ((v23 << 10) | (16 * v26)));
    v28 = *v27;
    v29 = v27[1];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EF9CE8();

    sub_1C440175C(v6, 1, v7);
    if (v30)
    {
      sub_1C4420C3C(v6, &qword_1EC0B9DC8, &unk_1C4F124A0);
    }

    else
    {
      v39 = *v41;
      v39(v42, v6, v7);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C458B324(0, *(v24 + 16) + 1, 1, v24);
        v24 = v36;
      }

      v33 = *(v24 + 16);
      v32 = *(v24 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_1C458B324(v32 > 1, v33 + 1, 1, v24);
        v24 = v37;
      }

      *(v24 + 16) = v33 + 1;
      sub_1C43FBF6C();
      v39(v24 + v34 + *(v35 + 72) * v33, v42, v7);
    }
  }

  while (1)
  {
    v23 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v23 >= v22)
    {

      sub_1C43FE9F0();
      return;
    }

    v20 = *(v15 + 64 + 8 * v23);
    ++v25;
    if (v20)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
}

uint64_t HumanReadableFeaturizedBehaviorsGroup.contextName.getter()
{
  v1 = *v0;
  v2 = v0[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C43FBC98();
}

uint64_t static HumanReadableFeaturizedBehaviorsGroup.== infix(_:_:)(uint64_t *a1)
{
  v1 = sub_1C47F7A1C(a1);
  v4 = v3[2];
  v5 = v1 == *v3 && v2 == v3[1];
  if (!v5 && (sub_1C4F02938() & 1) == 0)
  {
    return 0;
  }

  v6 = sub_1C43FBC98();

  return sub_1C47E62F0(v6, v7);
}

uint64_t sub_1C47E62F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 56);
    for (i = (a2 + 56); ; i += 4)
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      v7 = *(i - 1);
      v8 = *i;
      v9 = *(v3 - 3) == *(i - 3) && *(v3 - 2) == *(i - 2);
      if (!v9 && (sub_1C4F02938() & 1) == 0)
      {
        break;
      }

      v10 = v5 == v7 && v6 == v8;
      if (!v10 && (sub_1C4F02938() & 1) == 0)
      {
        break;
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

void sub_1C47E63BC()
{
  sub_1C43FBD3C();
  v2 = sub_1C442F8D4();
  v3 = type metadata accessor for LongitudinalEventData(v2);
  v4 = sub_1C43FBCE0(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FD2D8();
  v68 = v7;
  v8 = sub_1C456902C(&qword_1EC0BD660, &unk_1C4F45450);
  sub_1C43FBD18(v8);
  v10 = *(v9 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v63 - v12;
  v14 = sub_1C456902C(&qword_1EC0BD668, &qword_1C4F2F370);
  sub_1C43FBCE0(v14);
  v16 = *(v15 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBC74();
  v69 = v18;
  v19 = sub_1C43FBE44();
  v70 = type metadata accessor for LongitudinalEvent(v19);
  v20 = sub_1C44057B8(v70);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  sub_1C444B140();
  v25 = v23 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v63 - v28;
  v30 = *(v1 + 16);
  if (v30 != *(v0 + 16) || !v30 || v1 == v0)
  {
    goto LABEL_31;
  }

  v66 = v25;
  v67 = v3;
  sub_1C4441064(v27);
  v32 = v1 + v31;
  v33 = v0 + v31;
  v64 = *(v34 + 72);
  v65 = v13;
  v63 = v14;
  while (1)
  {
    sub_1C47F5C60(v32, v29);
    sub_1C47F5C60(v33, v25);
    sub_1C447F6BC(v70[5]);
    if (v36)
    {
      if (!v35)
      {
        goto LABEL_30;
      }
    }

    else
    {
      sub_1C43FD5A0();
      if (v37)
      {
        goto LABEL_30;
      }
    }

    sub_1C447F6BC(v70[6]);
    if (v39)
    {
      if (!v38)
      {
        goto LABEL_30;
      }
    }

    else
    {
      sub_1C43FD5A0();
      if (v40)
      {
        goto LABEL_30;
      }
    }

    v41 = v69;
    v42 = v70[7];
    v43 = *(v14 + 48);
    sub_1C4460108(&v29[v42], v69, &qword_1EC0BD660, &unk_1C4F45450);
    sub_1C4460108(v25 + v42, v41 + v43, &qword_1EC0BD660, &unk_1C4F45450);
    v44 = v67;
    sub_1C440175C(v41, 1, v67);
    if (!v50)
    {
      break;
    }

    v45 = sub_1C44755FC();
    sub_1C440175C(v45, v46, v44);
    if (!v50)
    {
      goto LABEL_27;
    }

    sub_1C4420C3C(v41, &qword_1EC0BD660, &unk_1C4F45450);
    v25 = v66;
LABEL_22:
    sub_1C4F00328();
    sub_1C4419704();
    sub_1C47F6E3C(&qword_1EC0BB6B8, v58);
    v59 = sub_1C4F010B8();
    sub_1C47F5CB8();
    sub_1C47F5CB8();
    if (v59)
    {
      v33 += v64;
      v32 += v64;
      if (--v30)
      {
        continue;
      }
    }

    goto LABEL_31;
  }

  v47 = v65;
  sub_1C4460108(v41, v65, &qword_1EC0BD660, &unk_1C4F45450);
  v48 = sub_1C44755FC();
  sub_1C440175C(v48, v49, v44);
  if (v50)
  {
    sub_1C47F5CB8();
LABEL_27:
    v60 = &qword_1EC0BD668;
    v61 = &qword_1C4F2F370;
    v62 = v41;
    goto LABEL_29;
  }

  v51 = v68;
  sub_1C47F5C08(v41 + v43, v68);
  v52 = *(v44 + 20);
  if (*(v47 + v52) == *(v51 + v52) || (v53 = *(v47 + v52), , , sub_1C4A11920(), v55 = v54, , , (v55 & 1) != 0))
  {
    sub_1C4F00328();
    sub_1C4419704();
    sub_1C47F6E3C(&qword_1EC0BB6B8, v56);
    v57 = sub_1C4F010B8();
    sub_1C47F5CB8();
    sub_1C47F5CB8();
    sub_1C4420C3C(v69, &qword_1EC0BD660, &unk_1C4F45450);
    v14 = v63;
    v25 = v66;
    if ((v57 & 1) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_22;
  }

  sub_1C47F5CB8();
  sub_1C47F5CB8();
  v60 = &qword_1EC0BD660;
  v61 = &unk_1C4F45450;
  v62 = v69;
LABEL_29:
  sub_1C4420C3C(v62, v60, v61);
LABEL_30:
  sub_1C47F5CB8();
  sub_1C47F5CB8();
LABEL_31:
  sub_1C44A1E7C();
  sub_1C43FE9F0();
}

void sub_1C47E6904()
{
  sub_1C43FBD3C();
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for EntityTaggingPersonDataCollection(0);
  v7 = sub_1C43FBCE0(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FD2D8();
  v47 = v10;
  v11 = sub_1C456902C(&qword_1EC0BC4E8, &unk_1C4F24360);
  sub_1C43FBD18(v11);
  v13 = *(v12 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBC74();
  v49 = v15;
  v48 = sub_1C456902C(&qword_1EC0BC4F0, &unk_1C4F2F350);
  sub_1C43FBCE0(v48);
  v17 = *(v16 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v18);
  v19 = sub_1C441B2EC();
  v51 = type metadata accessor for EntityTaggingPersonEntity(v19);
  v20 = sub_1C44057B8(v51);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  sub_1C444B140();
  v25 = v23 - v24;
  MEMORY[0x1EEE9AC00](v26);
  sub_1C44AE8BC();
  v28 = *(v5 + 16);
  if (v28 == *(v3 + 16) && v28 && v5 != v3)
  {
    sub_1C4441064(v27);
    v30 = v5 + v29;
    v31 = v3 + v29;
    v46 = *(v32 + 72);
    v50 = v0;
    while (1)
    {
      sub_1C47F5C60(v30, v0);
      if (!v28)
      {
        break;
      }

      sub_1C47F5C60(v31, v25);
      v33 = v0;
      v34 = *(v51 + 20);
      v35 = *(v48 + 48);
      sub_1C4460108(v33 + v34, v1, &qword_1EC0BC4E8, &unk_1C4F24360);
      sub_1C4460108(v25 + v34, v1 + v35, &qword_1EC0BC4E8, &unk_1C4F24360);
      sub_1C440582C(v1);
      if (v37)
      {
        sub_1C440582C(v1 + v35);
        if (!v37)
        {
          goto LABEL_28;
        }

        sub_1C4420C3C(v1, &qword_1EC0BC4E8, &unk_1C4F24360);
        v36 = v50;
      }

      else
      {
        sub_1C4460108(v1, v49, &qword_1EC0BC4E8, &unk_1C4F24360);
        sub_1C440582C(v1 + v35);
        if (v37)
        {
          sub_1C47F5CB8();
LABEL_28:
          sub_1C4420C3C(v1, &qword_1EC0BC4F0, &unk_1C4F2F350);
LABEL_29:
          sub_1C47F5CB8();
          sub_1C47F5CB8();
          goto LABEL_30;
        }

        sub_1C47F5C08(v1 + v35, v47);
        v45 = sub_1C4734FB8(v49, v47);
        sub_1C47F5CB8();
        sub_1C47F5CB8();
        sub_1C4420C3C(v1, &qword_1EC0BC4E8, &unk_1C4F24360);
        v36 = v50;
        if ((v45 & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      v38 = *(v51 + 24);
      v39 = *(v25 + v38 + 8);
      if (*(v36 + v38 + 8))
      {
        if (!v39)
        {
          goto LABEL_29;
        }

        sub_1C4402FD0((v36 + v38));
        v42 = v37 && v40 == v41;
        if (!v42 && (sub_1C4F02938() & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      else if (v39)
      {
        goto LABEL_29;
      }

      sub_1C4F00328();
      sub_1C4419704();
      sub_1C47F6E3C(&qword_1EC0BB6B8, v43);
      v44 = sub_1C4F010B8();
      sub_1C47F5CB8();
      sub_1C47F5CB8();
      if (v44)
      {
        v31 += v46;
        v30 += v46;
        v37 = v28-- == 1;
        v0 = v50;
        if (!v37)
        {
          continue;
        }
      }

      goto LABEL_30;
    }

    __break(1u);
  }

  else
  {
LABEL_30:
    sub_1C44A1E7C();
    sub_1C43FE9F0();
  }
}

uint64_t sub_1C47E6D78(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return sub_1C4456958();
  }

  if (!v2 || result == a2)
  {
    return sub_1C4415EFC();
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C47E6DCC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C442ABCC(a1, a2);
  if (v13)
  {
    if (!v2 || v3 == v4)
    {
      return 1;
    }

    v5 = (v3 + 56);
    for (i = (v4 + 56); ; i += 4)
    {
      v7 = *(v5 - 2);
      v8 = *(v5 - 1);
      v9 = *v5;
      v10 = *(i - 2);
      v11 = *(i - 1);
      v12 = *i;
      if (v7)
      {
        if (!v10)
        {
          return 0;
        }

        v13 = *(v5 - 3) == *(i - 3) && v7 == v10;
        if (!v13)
        {
          v14 = *(i - 2);
          v15 = sub_1C4F02938();
          result = 0;
          if ((v15 & 1) == 0)
          {
            return result;
          }

          if (v8 != v11 || v9 != v12)
          {
            return result;
          }

          goto LABEL_24;
        }
      }

      else
      {

        if (v10)
        {
          return 0;
        }
      }

      if (v8 != v11 || v9 != v12)
      {
        return 0;
      }

LABEL_24:
      v5 += 4;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

void sub_1C47E6EAC()
{
  sub_1C43FBD3C();
  v4 = sub_1C44145A4(v2, v3);
  if (v13 && v1 && v4 != v5)
  {
    v6 = (v4 + 32);
    v7 = (v5 + 32);
    do
    {
      v8 = *v7;
      v9 = 0xE700000000000000;
      v10 = 0x7463656A627573;
      switch(*v6)
      {
        case 1:
          v10 = 0x7461636964657270;
          v9 = 0xE900000000000065;
          break;
        case 2:
          v10 = 0x6E6F6974616C6572;
          v9 = 0xEE00644970696873;
          break;
        case 3:
          v10 = 0xD000000000000015;
          v9 = 0x80000001C4F86600;
          break;
        case 4:
          v9 = 0xE600000000000000;
          v10 = 0x7463656A626FLL;
          break;
        case 5:
          v10 = 0x73656372756F73;
          break;
        case 6:
          v10 = 0x6E656469666E6F63;
          v9 = 0xEA00000000006563;
          break;
        case 7:
          v10 = 0xD000000000000010;
          v9 = 0x80000001C4F86630;
          break;
        case 8:
          v9 = 0xE900000000000070;
          v10 = 0x6D617473656D6974;
          break;
        default:
          break;
      }

      v11 = 0xE700000000000000;
      v12 = 0x7463656A627573;
      switch(*v7)
      {
        case 1:
          v12 = 0x7461636964657270;
          v11 = 0xE900000000000065;
          break;
        case 2:
          v12 = 0x6E6F6974616C6572;
          v11 = 0xEE00644970696873;
          break;
        case 3:
          v12 = 0xD000000000000015;
          v11 = 0x80000001C4F86600;
          break;
        case 4:
          v11 = 0xE600000000000000;
          v12 = 0x7463656A626FLL;
          break;
        case 5:
          v12 = 0x73656372756F73;
          break;
        case 6:
          v12 = 0x6E656469666E6F63;
          v11 = 0xEA00000000006563;
          break;
        case 7:
          v12 = 0xD000000000000010;
          v11 = 0x80000001C4F86630;
          break;
        case 8:
          v11 = 0xE900000000000070;
          v12 = 0x6D617473656D6974;
          break;
        default:
          break;
      }

      v13 = v10 == v12 && v9 == v11;
      if (v13)
      {
      }

      else
      {
        sub_1C43FFF90();
        sub_1C44A3C98();

        if ((v0 & 1) == 0)
        {
          break;
        }
      }

      sub_1C444171C();
    }

    while (!v13);
  }

  sub_1C43FE9F0();
}

uint64_t sub_1C47E7154(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1C4F02938() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1C47E71E0(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C44145A4(a1, a2);
  if (v5)
  {
    if (!v2 || v3 == v4)
    {
      return 1;
    }

    v6 = (v3 + 40);
    for (i = (v4 + 40); ; i += 16)
    {
      v8 = *(v6 - 1);
      v9 = *(i - 1);
      v10 = *i;
      if (*v6)
      {
        if ((*i & 1) == 0)
        {
          return 0;
        }

        v11 = *(i - 1);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C47C80C0();
      }

      else
      {
        if (*i)
        {
          return 0;
        }

        v13 = *(i - 1);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v14 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C47C7F00(v14, v9);
      }

      v15 = v12;

      if ((v15 & 1) == 0)
      {
        break;
      }

      v6 += 16;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

void sub_1C47E72B4()
{
  sub_1C43FBD3C();
  v4 = sub_1C44145A4(v2, v3);
  if (v15 && v1 && v4 != v5)
  {
    v6 = (v4 + 32);
    v7 = (v5 + 32);
    do
    {
      v8 = *v7;
      v9 = 0xE500000000000000;
      v10 = 0x6574756F72;
      switch(*v6)
      {
        case 1:
          v10 = 0x656D695464616F72;
          goto LABEL_12;
        case 2:
          v10 = 0x6570795464616F72;
LABEL_12:
          v9 = 0xE900000000000073;
          break;
        case 3:
          v10 = 0x546E696172726574;
          goto LABEL_15;
        case 4:
          v10 = 0xD000000000000010;
          v9 = 0x80000001C4F8F740;
          break;
        case 5:
          v10 = 0x6375426465657073;
          v9 = 0xEC0000007374656BLL;
          break;
        case 6:
          v10 = 0x4263696666617274;
          v11 = 0x7374656B6375;
          goto LABEL_20;
        case 7:
          v10 = 0x5472656874616577;
LABEL_15:
          v9 = 0xEC00000073657079;
          break;
        case 8:
          v10 = 0x65766974616C6572;
          v11 = 0x736465657053;
LABEL_20:
          v9 = v11 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
          break;
        case 9:
          v10 = 0x65726F6373;
          break;
        case 0xA:
          v9 = 0xE800000000000000;
          v10 = 0x68774B6567617375;
          break;
        case 0xB:
          v10 = 0x556C616D6974706FLL;
          v9 = 0xEF68774B65676173;
          break;
        default:
          break;
      }

      v12 = 0xE500000000000000;
      v13 = 0x6574756F72;
      switch(*v7)
      {
        case 1:
          v13 = 0x656D695464616F72;
          goto LABEL_27;
        case 2:
          v13 = 0x6570795464616F72;
LABEL_27:
          v12 = 0xE900000000000073;
          break;
        case 3:
          v13 = 0x546E696172726574;
          goto LABEL_30;
        case 4:
          v13 = 0xD000000000000010;
          v12 = 0x80000001C4F8F740;
          break;
        case 5:
          v13 = 0x6375426465657073;
          v12 = 0xEC0000007374656BLL;
          break;
        case 6:
          v13 = 0x4263696666617274;
          v14 = 0x7374656B6375;
          goto LABEL_35;
        case 7:
          v13 = 0x5472656874616577;
LABEL_30:
          v12 = 0xEC00000073657079;
          break;
        case 8:
          v13 = 0x65766974616C6572;
          v14 = 0x736465657053;
LABEL_35:
          v12 = v14 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
          break;
        case 9:
          v13 = 0x65726F6373;
          break;
        case 0xA:
          v12 = 0xE800000000000000;
          v13 = 0x68774B6567617375;
          break;
        case 0xB:
          v13 = 0x556C616D6974706FLL;
          v12 = 0xEF68774B65676173;
          break;
        default:
          break;
      }

      v15 = v10 == v13 && v9 == v12;
      if (v15)
      {
      }

      else
      {
        sub_1C43FFF90();
        sub_1C44A3C98();

        if ((v0 & 1) == 0)
        {
          break;
        }
      }

      sub_1C444171C();
    }

    while (!v15);
  }

  sub_1C43FE9F0();
}

uint64_t sub_1C47E75FC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v23 = a2 + 32;
  v24 = result + 32;
  while (1)
  {
    if (v3 == v2)
    {
      goto LABEL_50;
    }

    v4 = v24 + 40 * v3;
    result = *v4;
    v5 = *(v4 + 8);
    v6 = *(v4 + 16);
    v7 = *(v4 + 24);
    v8 = *(v4 + 32);
    v9 = v23 + 40 * v3;
    v10 = *(v9 + 16);
    v11 = *(v9 + 24);
    v12 = *(v9 + 32);
    if (result != *v9 || v5 != *(v9 + 8))
    {
      result = sub_1C4F02938();
      if ((result & 1) == 0)
      {
        return 0;
      }
    }

    if (v6)
    {
      if (!v10)
      {
        return 0;
      }

      v14 = *(v6 + 16);
      if (v14 != *(v10 + 16))
      {
        return 0;
      }

      if (v14)
      {
        v15 = v6 == v10;
      }

      else
      {
        v15 = 1;
      }

      if (!v15)
      {
        v16 = (v6 + 40);
        v17 = (v10 + 40);
        while (v14)
        {
          result = *(v16 - 1);
          if (result != *(v17 - 1) || *v16 != *v17)
          {
            result = sub_1C4F02938();
            if ((result & 1) == 0)
            {
              return 0;
            }
          }

          v16 += 2;
          v17 += 2;
          if (!--v14)
          {
            goto LABEL_28;
          }
        }

        __break(1u);
        __break(1u);
LABEL_50:
        __break(1u);
        return result;
      }
    }

    else if (v10)
    {
      return 0;
    }

LABEL_28:
    if (v7)
    {
      break;
    }

    result = 0;
    if (v11 || ((v8 ^ v12) & 1) != 0)
    {
      return result;
    }

LABEL_44:
    ++v3;
    result = 1;
    if (v3 == v2)
    {
      return result;
    }
  }

  if (!v11)
  {
    return 0;
  }

  v19 = *(v7 + 16);
  if (v19 != *(v11 + 16))
  {
    return 0;
  }

  if (!v19 || v7 == v11)
  {
LABEL_40:
    if (v8 != v12)
    {
      return 0;
    }

    goto LABEL_44;
  }

  v20 = (v7 + 40);
  v21 = (v11 + 40);
  while (1)
  {
    v22 = *(v20 - 1) == *(v21 - 1) && *v20 == *v21;
    if (!v22 && (sub_1C4F02938() & 1) == 0)
    {
      return 0;
    }

    v20 += 2;
    v21 += 2;
    if (!--v19)
    {
      goto LABEL_40;
    }
  }
}

void sub_1C47E77CC()
{
  sub_1C43FBD3C();
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for NicknameEntry(0);
  v8 = sub_1C44057B8(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C444B140();
  sub_1C44AE8BC();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C44A17A8();
  if (v24 && v2 && v6 != v4)
  {
    sub_1C4441064(v12);
    v14 = v6 + v13;
    v15 = v4 + v13;
    v17 = *(v16 + 72);
    while (1)
    {
      sub_1C47F5C60(v14, v1);
      sub_1C47F5C60(v15, v0);
      v18 = *(v7 + 20);
      sub_1C44BBDDC();
      if (v21)
      {
        if (!v19 || ((sub_1C4402FD0(v20), v24) ? (v24 = v22 == v23) : (v24 = 0), !v24 && (sub_1C4F02938() & 1) == 0))
        {
LABEL_29:
          sub_1C47F5CB8();
          sub_1C47F5CB8();
          break;
        }
      }

      else if (v19)
      {
        goto LABEL_29;
      }

      v25 = *(v7 + 24);
      sub_1C44BBDDC();
      if (v28)
      {
        if (!v26)
        {
          goto LABEL_29;
        }

        sub_1C4402FD0(v27);
        v31 = v24 && v29 == v30;
        if (!v31 && (sub_1C4F02938() & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      else if (v26)
      {
        goto LABEL_29;
      }

      sub_1C4F00328();
      sub_1C4419704();
      sub_1C47F6E3C(&qword_1EC0BB6B8, v32);
      v33 = sub_1C445BAE8();
      sub_1C47F5CB8();
      sub_1C47F5CB8();
      if (v33)
      {
        sub_1C440EDBC();
        if (!v24)
        {
          continue;
        }
      }

      break;
    }
  }

  sub_1C44A1E7C();
  sub_1C43FE9F0();
}

void sub_1C47E79F0(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C442ABCC(a1, a2);
  if (v5 && v2 && v3 != v4)
  {
    do
    {
      sub_1C44C0450();
      sub_1C44586C4();
      sub_1C47F5D0C(v6, v7);
      sub_1C47F5D0C(v11, &v9);
      v8 = sub_1C4CC4DC8(v10, v11);
      sub_1C47F5D68(v11);
      sub_1C47F5D68(v10);
      if ((v8 & 1) == 0)
      {
        break;
      }

      sub_1C44263D4();
    }

    while (!v5);
  }
}

uint64_t sub_1C47E7A98(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C442ABCC(a1, a2);
  if (v5)
  {
    if (!v2 || v3 == v4)
    {
      v12 = 1;
    }

    else
    {
      v6 = (v3 + 32);
      v7 = (v4 + 32);
      do
      {
        v8 = v6[1];
        v15[0] = *v6;
        v15[1] = v8;
        v9 = v6[3];
        v15[2] = v6[2];
        v15[3] = v9;
        v10 = v7[1];
        v16[0] = *v7;
        v16[1] = v10;
        v11 = v7[3];
        v16[2] = v7[2];
        v16[3] = v11;
        sub_1C445CD7C(v15, v14);
        sub_1C445CD7C(v16, v14);
        v12 = sub_1C4CC687C(v15, v16);
        sub_1C445DA1C(v16);
        sub_1C445DA1C(v15);
        if ((v12 & 1) == 0)
        {
          break;
        }

        v6 += 4;
        v7 += 4;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_1C47E7B70(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C44145A4(a1, a2);
  if (!v24)
  {
    return 0;
  }

  if (v3 && v4 != v5)
  {
    v6 = (v5 + 36);
    v7 = (v4 + 36);
    do
    {
      v8 = *(v7 - 3);
      v9 = *(v7 - 2);
      v10 = *(v6 - 4);
      v11 = *(v6 - 3);
      v12 = *(v6 - 2);
      v28 = *(v6 - 1);
      v29 = *(v7 - 1);
      v13 = 0xE400000000000000;
      v26 = *v6;
      v27 = *v7;
      v14 = 1702259052;
      switch(*(v7 - 4))
      {
        case 1u:
          v14 = 1701736302;
          break;
        case 2u:
          v13 = 0xE500000000000000;
          v14 = 0x796C696164;
          break;
        case 3u:
          v14 = sub_1C44289B8();
          v13 = 0x80000001C4F86260;
          break;
        case 4u:
          v13 = 0xE600000000000000;
          v15 = 1801807223;
          goto LABEL_13;
        case 5u:
          v16 = sub_1C43FE694() & 0xFFFF0000FFFFFFFFLL | 0x347900000000;
          goto LABEL_16;
        case 6u:
          v16 = sub_1C4428E78();
LABEL_16:
          v14 = v16 & 0xFFFFFFFFFFFFLL | 0x6F48000000000000;
          v13 = 0xEB00000000737275;
          break;
        case 7u:
          v13 = 0xE600000000000000;
          v15 = 1920298856;
LABEL_13:
          v14 = v15 & 0xFFFF0000FFFFFFFFLL | 0x796C00000000;
          break;
        case 8u:
          v14 = sub_1C4428E78() & 0xFFFFFFFFFFFFLL | 0x4D31000000000000;
          v13 = 0xEE00736574756E69;
          break;
        case 9u:
          v14 = sub_1C43FE694() | 0x694D377900000000;
          v13 = 0xED0000736574756ELL;
          break;
        case 0xAu:
          v14 = sub_1C44289B8();
          v13 = 0x80000001C4F862C0;
          break;
        default:
          break;
      }

      v17 = 0xE400000000000000;
      v18 = 1702259052;
      switch(v10)
      {
        case 1:
          v18 = 1701736302;
          break;
        case 2:
          v17 = 0xE500000000000000;
          v18 = 0x796C696164;
          break;
        case 3:
          sub_1C47F79F8();
          v17 = 0x80000001C4F86260;
          break;
        case 4:
          v17 = 0xE600000000000000;
          v19 = 1801807223;
          goto LABEL_26;
        case 5:
          sub_1C440EFA8();
          v22 = v21 & 0xFFFF0000FFFFFFFFLL | 0x347900000000;
          goto LABEL_29;
        case 6:
          sub_1C444C270();
LABEL_29:
          v18 = v22 & 0xFFFFFFFFFFFFLL | 0x6F48000000000000;
          v17 = 0xEB00000000737275;
          break;
        case 7:
          v17 = 0xE600000000000000;
          v19 = 1920298856;
LABEL_26:
          v18 = v19 & 0xFFFF0000FFFFFFFFLL | 0x796C00000000;
          break;
        case 8:
          sub_1C444C270();
          v18 = v23 & 0xFFFFFFFFFFFFLL | 0x4D31000000000000;
          v17 = 0xEE00736574756E69;
          break;
        case 9:
          sub_1C440EFA8();
          v18 = v20 | 0x694D377900000000;
          v17 = 0xED0000736574756ELL;
          break;
        case 10:
          sub_1C47F79F8();
          v17 = 0x80000001C4F862C0;
          break;
        default:
          break;
      }

      v24 = v14 == v18 && v13 == v17;
      if (v24)
      {
      }

      else
      {
        sub_1C43FFF90();
        sub_1C44A3C98();

        if ((v2 & 1) == 0)
        {
          return 0;
        }
      }

      if (v8 == 2)
      {
        if (v11 != 2)
        {
          return 0;
        }
      }

      else
      {
        result = 0;
        if (v11 == 2 || ((v11 ^ v8) & 1) != 0)
        {
          return result;
        }
      }

      if (v9 == 2)
      {
        if (v12 != 2)
        {
          return 0;
        }
      }

      else
      {
        result = 0;
        if (v12 == 2 || ((v12 ^ v9) & 1) != 0)
        {
          return result;
        }
      }

      if (v29 == 2)
      {
        if (v28 != 2)
        {
          return 0;
        }
      }

      else
      {
        result = 0;
        if (v28 == 2 || ((v28 ^ v29) & 1) != 0)
        {
          return result;
        }
      }

      if (v27 == 2)
      {
        if (v26 != 2)
        {
          return 0;
        }
      }

      else
      {
        result = 0;
        if (v26 == 2 || ((v26 ^ v27) & 1) != 0)
        {
          return result;
        }
      }

      v6 += 5;
      v7 += 5;
      --v3;
    }

    while (v3);
  }

  return 1;
}

uint64_t sub_1C47E7F00(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C442ABCC(a1, a2);
  if (v5)
  {
    if (!v2 || v3 == v4)
    {
      v11 = 1;
    }

    else
    {
      v6 = v3 + 32;
      v7 = v4 + 32;
      do
      {
        v8 = *(v6 + 16);
        v14[0] = *v6;
        v14[1] = v8;
        v14[2] = *(v6 + 32);
        v15 = *(v6 + 48);
        v9 = *(v7 + 16);
        v16[0] = *v7;
        v10 = *(v7 + 32);
        v16[1] = v9;
        v16[2] = v10;
        v17 = *(v7 + 48);
        sub_1C47F5DBC(v14, v13);
        sub_1C47F5DBC(v16, v13);
        v11 = sub_1C4CC821C(v14, v16);
        sub_1C47F5E18(v16);
        sub_1C47F5E18(v14);
        if ((v11 & 1) == 0)
        {
          break;
        }

        v7 += 56;
        v6 += 56;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

void sub_1C47E7FF4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C442ABCC(a1, a2);
  if (v5 && v2 && v3 != v4)
  {
    do
    {
      sub_1C44C0450();
      sub_1C44586C4();
      sub_1C47F5E6C(v6, v7);
      sub_1C47F5E6C(v11, &v9);
      v8 = sub_1C4CC8FAC(v10, v11);
      sub_1C47F5EC8(v11);
      sub_1C47F5EC8(v10);
      if ((v8 & 1) == 0)
      {
        break;
      }

      sub_1C44263D4();
    }

    while (!v5);
  }
}

void sub_1C47E809C()
{
  sub_1C47F7A30();
  v2 = *(v0 + 16);
  if (v2 == *(v1 + 16) && v2 && v0 != v1)
  {
    v3 = (v1 + 59);
    v4 = (v0 + 59);
    do
    {
      v38 = *(v4 - 19);
      v5 = *(v4 - 11);
      v35 = *(v4 - 3);
      v32 = *(v4 - 1);
      v33 = *(v4 - 2);
      v31 = *v4;
      v6 = *(v3 - 27);
      v7 = *(v3 - 19);
      v8 = *(v3 - 11);
      v9 = *(v3 - 3);
      v10 = *(v3 - 2);
      v37 = *(v3 - 1);
      v11 = 0xE400000000000000;
      v12 = *v3;
      v13 = 1702259052;
      switch(*(v4 - 27))
      {
        case 1u:
          v13 = 1701736302;
          break;
        case 2u:
          v11 = 0xE500000000000000;
          v13 = 0x796C696164;
          break;
        case 3u:
          v13 = sub_1C44289B8();
          v11 = 0x80000001C4F86260;
          break;
        case 4u:
          v11 = 0xE600000000000000;
          v14 = 1801807223;
          goto LABEL_12;
        case 5u:
          v15 = sub_1C43FE694() & 0xFFFF0000FFFFFFFFLL | 0x347900000000;
          goto LABEL_15;
        case 6u:
          v15 = sub_1C4428E78();
LABEL_15:
          v13 = v15 & 0xFFFFFFFFFFFFLL | 0x6F48000000000000;
          v11 = 0xEB00000000737275;
          break;
        case 7u:
          v11 = 0xE600000000000000;
          v14 = 1920298856;
LABEL_12:
          v13 = v14 & 0xFFFF0000FFFFFFFFLL | 0x796C00000000;
          break;
        case 8u:
          v13 = sub_1C4428E78() & 0xFFFFFFFFFFFFLL | 0x4D31000000000000;
          v11 = 0xEE00736574756E69;
          break;
        case 9u:
          v13 = sub_1C43FE694() | 0x694D377900000000;
          v11 = 0xED0000736574756ELL;
          break;
        case 0xAu:
          v13 = sub_1C44289B8();
          v11 = 0x80000001C4F862C0;
          break;
        default:
          break;
      }

      v16 = 0xE400000000000000;
      v17 = 1702259052;
      switch(v6)
      {
        case 1:
          v17 = 1701736302;
          break;
        case 2:
          v16 = 0xE500000000000000;
          v17 = 0x796C696164;
          break;
        case 3:
          sub_1C47F79F8();
          v16 = 0x80000001C4F86260;
          break;
        case 4:
          v16 = 0xE600000000000000;
          v18 = 1801807223;
          goto LABEL_25;
        case 5:
          sub_1C440EFA8();
          v21 = v20 & 0xFFFF0000FFFFFFFFLL | 0x347900000000;
          goto LABEL_28;
        case 6:
          sub_1C444C270();
LABEL_28:
          v17 = v21 & 0xFFFFFFFFFFFFLL | 0x6F48000000000000;
          v16 = 0xEB00000000737275;
          break;
        case 7:
          v16 = 0xE600000000000000;
          v18 = 1920298856;
LABEL_25:
          v17 = v18 & 0xFFFF0000FFFFFFFFLL | 0x796C00000000;
          break;
        case 8:
          sub_1C444C270();
          v17 = v22 & 0xFFFFFFFFFFFFLL | 0x4D31000000000000;
          v16 = 0xEE00736574756E69;
          break;
        case 9:
          sub_1C440EFA8();
          v17 = v19 | 0x694D377900000000;
          v16 = 0xED0000736574756ELL;
          break;
        case 10:
          sub_1C47F79F8();
          v16 = 0x80000001C4F862C0;
          break;
        default:
          break;
      }

      v36 = v10;
      v34 = v12;
      v23 = v13 == v17 && v11 == v16;
      if (v23)
      {
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      }

      else
      {
        v24 = sub_1C4F02938();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

        if ((v24 & 1) == 0)
        {

          break;
        }
      }

      if (v38 == v7 && v5 == v8)
      {
      }

      else
      {
        v26 = sub_1C4F02938();

        if ((v26 & 1) == 0)
        {
          break;
        }
      }

      if (v35 == 2)
      {
        v23 = v9 == 2;
        v27 = v34;
        v29 = v36;
        v28 = v37;
        if (!v23)
        {
          break;
        }
      }

      else
      {
        v30 = v9;
        v23 = v9 == 2;
        v27 = v34;
        v29 = v36;
        v28 = v37;
        if (v23 || ((v30 ^ v35) & 1) != 0)
        {
          break;
        }
      }

      if (v33 == 2)
      {
        if (v29 != 2)
        {
          break;
        }
      }

      else if (v29 == 2 || ((v29 ^ v33) & 1) != 0)
      {
        break;
      }

      if (v32 == 2)
      {
        if (v28 != 2)
        {
          break;
        }
      }

      else if (v28 == 2 || ((v28 ^ v32) & 1) != 0)
      {
        break;
      }

      if (v31 == 2)
      {
        if (v27 != 2)
        {
          break;
        }
      }

      else if (v27 == 2 || ((v27 ^ v31) & 1) != 0)
      {
        break;
      }

      v3 += 32;
      v4 += 32;
      --v2;
    }

    while (v2);
  }

  sub_1C4488800();
}

uint64_t sub_1C47E84E0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v29 = a2 + 32;
  v30 = result + 32;
  while (1)
  {
    if (v3 == v2)
    {
      goto LABEL_66;
    }

    v4 = v30 + 56 * v3;
    v5 = *(v4 + 16);
    v6 = *(v4 + 24);
    v7 = *(v4 + 32);
    v8 = *(v4 + 48);
    v9 = v29 + 56 * v3;
    v10 = *(v9 + 8);
    v11 = *(v9 + 16);
    v12 = *(v9 + 24);
    v13 = *(v9 + 32);
    v14 = *(v9 + 40);
    v15 = *(v9 + 48);
    v31 = v14;
    v32 = *(v4 + 40);
    if (*(v4 + 8))
    {
      if (!v10)
      {
        return 0;
      }

      result = sub_1C4402FD0(v4);
      v18 = v18 && v16 == v17;
      if (!v18)
      {
        result = sub_1C4F02938();
        if ((result & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v10)
    {
      return 0;
    }

    if (v5 == 2)
    {
      if (v11 != 2)
      {
        return 0;
      }
    }

    else
    {
      result = 0;
      if (v11 == 2 || ((v11 ^ v5) & 1) != 0)
      {
        return result;
      }
    }

    if (v6)
    {
      if (!v12)
      {
        return 0;
      }

      v19 = *(v6 + 16);
      if (v19 != *(v12 + 16))
      {
        return 0;
      }

      if (v19)
      {
        v20 = v6 == v12;
      }

      else
      {
        v20 = 1;
      }

      if (!v20)
      {
        v21 = (v6 + 40);
        v22 = (v12 + 40);
        while (v19)
        {
          result = *(v21 - 1);
          if (result != *(v22 - 1) || *v21 != *v22)
          {
            result = sub_1C4F02938();
            if ((result & 1) == 0)
            {
              return 0;
            }
          }

          v21 += 2;
          v22 += 2;
          if (!--v19)
          {
            goto LABEL_37;
          }
        }

        __break(1u);
        __break(1u);
LABEL_66:
        __break(1u);
        return result;
      }
    }

    else if (v12)
    {
      return 0;
    }

LABEL_37:
    if (!v7)
    {
      if (v13)
      {
        return 0;
      }

      goto LABEL_51;
    }

    if (!v13)
    {
      return 0;
    }

    v24 = *(v7 + 16);
    if (v24 != *(v13 + 16))
    {
      return 0;
    }

    if (v24 && v7 != v13)
    {
      break;
    }

LABEL_51:
    if (v8)
    {
      if (!v15)
      {
        return 0;
      }

      v28 = v32 == v31 && v8 == v15;
      if (!v28 && (sub_1C4F02938() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v15)
    {
      return 0;
    }

    ++v3;
    result = 1;
    if (v3 == v2)
    {
      return result;
    }
  }

  v25 = (v7 + 40);
  v26 = (v13 + 40);
  while (1)
  {
    v27 = *(v25 - 1) == *(v26 - 1) && *v25 == *v26;
    if (!v27 && (sub_1C4F02938() & 1) == 0)
    {
      return 0;
    }

    v25 += 2;
    v26 += 2;
    if (!--v24)
    {
      goto LABEL_51;
    }
  }
}

void sub_1C47E8710()
{
  sub_1C43FBD3C();
  v4 = sub_1C44145A4(v2, v3);
  if (v15 && v1 && v4 != v5)
  {
    v6 = (v4 + 32);
    v7 = (v5 + 32);
    do
    {
      v8 = *v7;
      v9 = 0xEF6E776F6E6B6E55;
      v10 = 0x6D726F6674616C70;
      switch(*v6)
      {
        case 1:
          v10 = 0x6D726F6674616C70;
          v9 = 0xEC00000064615069;
          break;
        case 2:
          v10 = 0x6D726F6674616C70;
          v11 = 0x656E6F685069;
          goto LABEL_15;
        case 3:
          v10 = 0xD000000000000012;
          v9 = 0x80000001C4F87CB0;
          break;
        case 4:
          v10 = 0xD000000000000013;
          v9 = 0x80000001C4F87CD0;
          break;
        case 5:
          v10 = 0x6D726F6674616C70;
          v9 = 0xEA00000000005654;
          break;
        case 6:
          v10 = 0x6D726F6674616C70;
          v9 = 0xED00006863746157;
          break;
        case 7:
          v10 = 0x6D726F6674616C70;
          v9 = 0xEF646F50656D6F48;
          break;
        case 8:
          v10 = 0x6D726F6674616C70;
          v11 = 0x6E6F69736956;
LABEL_15:
          v9 = v11 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
          break;
        default:
          break;
      }

      v12 = 0x6D726F6674616C70;
      v13 = 0xEF6E776F6E6B6E55;
      switch(*v7)
      {
        case 1:
          v12 = 0x6D726F6674616C70;
          v13 = 0xEC00000064615069;
          break;
        case 2:
          v12 = 0x6D726F6674616C70;
          v14 = 0x656E6F685069;
          goto LABEL_25;
        case 3:
          v12 = 0xD000000000000012;
          v13 = 0x80000001C4F87CB0;
          break;
        case 4:
          v12 = 0xD000000000000013;
          v13 = 0x80000001C4F87CD0;
          break;
        case 5:
          v12 = 0x6D726F6674616C70;
          v13 = 0xEA00000000005654;
          break;
        case 6:
          v12 = 0x6D726F6674616C70;
          v13 = 0xED00006863746157;
          break;
        case 7:
          v12 = 0x6D726F6674616C70;
          v13 = 0xEF646F50656D6F48;
          break;
        case 8:
          v12 = 0x6D726F6674616C70;
          v14 = 0x6E6F69736956;
LABEL_25:
          v13 = v14 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
          break;
        default:
          break;
      }

      v15 = v10 == v12 && v9 == v13;
      if (v15)
      {
      }

      else
      {
        sub_1C43FFF90();
        sub_1C44A3C98();

        if ((v0 & 1) == 0)
        {
          break;
        }
      }

      sub_1C444171C();
    }

    while (!v15);
  }

  sub_1C43FE9F0();
}

void sub_1C47E8984()
{
  sub_1C43FBD3C();
  v4 = sub_1C442F8D4();
  v5 = type metadata accessor for FeatureValue.BasicValue(v4);
  v6 = sub_1C43FBCE0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FD2D8();
  v136 = v9;
  v10 = sub_1C456902C(&qword_1EC0BB438, qword_1C4F1F960);
  sub_1C43FBD18(v10);
  v12 = *(v11 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBC74();
  v137 = v14;
  v138 = sub_1C456902C(&qword_1EC0BD5B8, &unk_1C4F2F340);
  sub_1C43FBCE0(v138);
  v16 = *(v15 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBC74();
  v142 = v18;
  v19 = sub_1C43FBE44();
  v145 = type metadata accessor for FeatureValue(v19);
  v20 = sub_1C43FBCE0(v145);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FD2D8();
  v146 = v23;
  v24 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v24);
  v26 = *(v25 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FBC74();
  v147 = v28;
  v143 = sub_1C456902C(&qword_1EC0BB6C0, &unk_1C4F20AE0);
  sub_1C43FBCE0(v143);
  v30 = *(v29 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBD64();
  v32 = type metadata accessor for Feature.FeatureIdentifier(0);
  v33 = sub_1C43FBCE0(v32);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FD2D8();
  v141 = v36;
  v37 = sub_1C456902C(&qword_1EC0BD4B0, &unk_1C4F2E1C0);
  sub_1C43FBD18(v37);
  v39 = *(v38 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v40);
  sub_1C43FBC74();
  v140 = v41;
  v144 = sub_1C456902C(&qword_1EC0BD4B8, &unk_1C4F2F360);
  sub_1C43FBCE0(v144);
  v43 = *(v42 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v127 - v45;
  v47 = type metadata accessor for Feature(0);
  v48 = sub_1C44057B8(v47);
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v48);
  sub_1C444B140();
  v53 = v51 - v52;
  MEMORY[0x1EEE9AC00](v54);
  sub_1C44AE8BC();
  v56 = *(v3 + 16);
  if (v56 == *(v0 + 16) && v56 && v3 != v0)
  {
    v128 = v5;
    v129 = v53;
    v57 = 0;
    sub_1C4441064(v55);
    v132 = v3 + v58;
    v133 = v2;
    v60 = *(v59 + 72);
    v130 = v0 + v58;
    v131 = v60;
    v134 = v47;
    v139 = v61;
    while (1)
    {
      v62 = v131 * v57;
      sub_1C47F5C60(v132 + v131 * v57, v1);
      if (v57 == v139)
      {
        break;
      }

      sub_1C47F5C60(v130 + v62, v53);
      v63 = *(v47 + 20);
      v64 = *(v144 + 48);
      sub_1C4460108(v1 + v63, v46, &qword_1EC0BD4B0, &unk_1C4F2E1C0);
      sub_1C4460108(v53 + v63, &v46[v64], &qword_1EC0BD4B0, &unk_1C4F2E1C0);
      sub_1C440582C(v46);
      if (v65)
      {
        sub_1C440582C(&v46[v64]);
        if (!v65)
        {
          goto LABEL_68;
        }

        sub_1C4420C3C(v46, &qword_1EC0BD4B0, &unk_1C4F2E1C0);
        v47 = v134;
      }

      else
      {
        sub_1C4460108(v46, v140, &qword_1EC0BD4B0, &unk_1C4F2E1C0);
        sub_1C440582C(&v46[v64]);
        if (v65)
        {
          sub_1C47F5CB8();
LABEL_68:
          v123 = &qword_1EC0BD4B8;
          v124 = &unk_1C4F2F360;
LABEL_69:
          sub_1C4420C3C(v46, v123, v124);
LABEL_76:
          sub_1C47F5CB8();
          sub_1C47F5CB8();
          goto LABEL_77;
        }

        sub_1C47F5C08(&v46[v64], v141);
        v66 = v32[5];
        sub_1C44623F8();
        if (v69)
        {
          if (!v67 || ((sub_1C4402FD0(v68), v65) ? (v72 = v70 == v71) : (v72 = 0), !v72 && (sub_1C4F02938() & 1) == 0))
          {
LABEL_66:
            sub_1C47F5CB8();
            sub_1C47F5CB8();
            v123 = &qword_1EC0BD4B0;
            v124 = &unk_1C4F2E1C0;
            goto LABEL_69;
          }
        }

        else if (v67)
        {
          goto LABEL_66;
        }

        v73 = v32[6];
        sub_1C44623F8();
        if (v76)
        {
          if (!v74)
          {
            goto LABEL_66;
          }

          sub_1C4402FD0(v75);
          v79 = v65 && v77 == v78;
          if (!v79 && (sub_1C4F02938() & 1) == 0)
          {
            goto LABEL_66;
          }
        }

        else if (v74)
        {
          goto LABEL_66;
        }

        v80 = v32[7];
        sub_1C44623F8();
        if (v83)
        {
          if (!v81)
          {
            goto LABEL_66;
          }

          sub_1C4402FD0(v82);
          v86 = v65 && v84 == v85;
          if (!v86 && (sub_1C4F02938() & 1) == 0)
          {
            goto LABEL_66;
          }
        }

        else if (v81)
        {
          goto LABEL_66;
        }

        sub_1C4F00328();
        sub_1C4419704();
        sub_1C47F6E3C(&qword_1EC0BB6B8, v87);
        sub_1C4475834();
        v88 = sub_1C4F010B8();
        sub_1C47F5CB8();
        sub_1C47F5CB8();
        sub_1C4420C3C(v46, &qword_1EC0BD4B0, &unk_1C4F2E1C0);
        v47 = v134;
        if ((v88 & 1) == 0)
        {
          goto LABEL_76;
        }
      }

      v135 = v57;
      v89 = *(v47 + 24);
      v90 = *(v143 + 48);
      v91 = v133;
      sub_1C4460108(v1 + v89, v133, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      sub_1C4460108(v53 + v89, v91 + v90, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      v92 = v145;
      sub_1C440175C(v91, 1, v145);
      if (v65)
      {
        sub_1C440175C(v91 + v90, 1, v92);
        if (!v65)
        {
          goto LABEL_71;
        }

        sub_1C4420C3C(v91, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
        v53 = v129;
        v93 = v135;
      }

      else
      {
        sub_1C4460108(v91, v147, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
        sub_1C440175C(v91 + v90, 1, v92);
        if (v94)
        {
          sub_1C47F5CB8();
LABEL_71:
          v125 = &qword_1EC0BB6C0;
          v126 = &unk_1C4F20AE0;
LABEL_75:
          sub_1C4420C3C(v91, v125, v126);
          goto LABEL_76;
        }

        v95 = v91 + v90;
        v96 = v146;
        sub_1C47F5C08(v95, v146);
        v97 = *v147;
        v98 = *v96;
        sub_1C47E9434();
        if ((v99 & 1) == 0)
        {
          goto LABEL_74;
        }

        v100 = v147[1];
        v101 = v146[1];
        v102 = *(v100 + 16);
        if (v102 != *(v101 + 16))
        {
          goto LABEL_74;
        }

        if (v102 && v100 != v101)
        {
          v103 = (v100 + 32);
          v104 = (v101 + 32);
          while (*v103 == *v104)
          {
            ++v103;
            ++v104;
            if (!--v102)
            {
              goto LABEL_53;
            }
          }

          goto LABEL_74;
        }

LABEL_53:
        v105 = v147[2];
        v106 = v146[2];
        sub_1C47E96CC();
        if ((v107 & 1) == 0)
        {
          goto LABEL_74;
        }

        v108 = *(v92 + 32);
        v109 = *(v138 + 48);
        v110 = v142;
        sub_1C4460108(v147 + v108, v142, &qword_1EC0BB438, qword_1C4F1F960);
        sub_1C4460108(v146 + v108, v110 + v109, &qword_1EC0BB438, qword_1C4F1F960);
        v111 = v128;
        sub_1C440175C(v110, 1, v128);
        if (v65)
        {
          sub_1C440175C(v142 + v109, 1, v111);
          if (!v65)
          {
            goto LABEL_73;
          }

          sub_1C4420C3C(v142, &qword_1EC0BB438, qword_1C4F1F960);
          v112 = v145;
        }

        else
        {
          v113 = v142;
          sub_1C4460108(v142, v137, &qword_1EC0BB438, qword_1C4F1F960);
          sub_1C440175C(v113 + v109, 1, v111);
          if (v114)
          {
            sub_1C441B94C();
            sub_1C47F5CB8();
            v91 = v133;
LABEL_73:
            sub_1C4420C3C(v142, &qword_1EC0BD5B8, &unk_1C4F2F340);
LABEL_74:
            sub_1C47F5CB8();
            sub_1C47F5CB8();
            v125 = &qword_1EC0BB6C8;
            v126 = &unk_1C4F2E1B0;
            goto LABEL_75;
          }

          sub_1C44250B4();
          v115 = v113 + v109;
          LOBYTE(v109) = v136;
          sub_1C47F5C08(v115, v136);
          v116 = sub_1C44333A0();
          v118 = sub_1C47E419C(v116, v117);
          sub_1C47F5CB8();
          sub_1C47F5CB8();
          sub_1C4420C3C(v113, &qword_1EC0BB438, qword_1C4F1F960);
          v112 = v145;
          v91 = v133;
          if ((v118 & 1) == 0)
          {
            goto LABEL_74;
          }
        }

        v119 = *(v112 + 28);
        sub_1C4F00328();
        sub_1C4419704();
        sub_1C47F6E3C(&qword_1EC0BB6B8, v120);
        sub_1C4F010B8();
        sub_1C4461F98();
        v47 = v134;
        sub_1C47F5CB8();
        sub_1C47F5CB8();
        sub_1C4420C3C(v91, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
        v53 = v129;
        v93 = v135;
        if ((v109 & 1) == 0)
        {
          goto LABEL_76;
        }
      }

      sub_1C4F00328();
      sub_1C4419704();
      sub_1C47F6E3C(&qword_1EC0BB6B8, v121);
      v122 = sub_1C4485B6C();
      sub_1C47F5CB8();
      sub_1C47F5CB8();
      if (v122)
      {
        v57 = v93 + 1;
        if (v57 != v139)
        {
          continue;
        }
      }

      goto LABEL_77;
    }

    __break(1u);
  }

  else
  {
LABEL_77:
    sub_1C44A1E7C();
    sub_1C43FE9F0();
  }
}

void sub_1C47E9434()
{
  sub_1C43FBD3C();
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for FeatureValue.BasicValue(0);
  v8 = sub_1C44057B8(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C444B140();
  sub_1C44AE8BC();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C44A17A8();
  if (v34 && v2 && v6 != v4)
  {
    sub_1C4441064(v12);
    v14 = v6 + v13;
    v15 = v4 + v13;
    v17 = *(v16 + 72);
    while (1)
    {
      sub_1C47F5C60(v14, v1);
      sub_1C47F5C60(v15, v0);
      sub_1C44F19AC(v7[5]);
      if (v19)
      {
        if (!v18)
        {
          goto LABEL_32;
        }
      }

      else
      {
        sub_1C43FD5A0();
        if (v20)
        {
          goto LABEL_32;
        }
      }

      sub_1C44F19AC(v7[6]);
      if (v22)
      {
        if (!v21)
        {
          goto LABEL_32;
        }
      }

      else
      {
        sub_1C449959C();
        if (v23)
        {
          goto LABEL_32;
        }
      }

      v24 = v7[7];
      v25 = *(v1 + v24 + 4);
      v26 = *(v0 + v24 + 4);
      if (v25)
      {
        if (!v26)
        {
          goto LABEL_32;
        }
      }

      else
      {
        sub_1C44B6760();
        if (v27)
        {
          goto LABEL_32;
        }
      }

      v28 = v7[8];
      sub_1C44BBDDC();
      if (v31)
      {
        if (!v29 || ((sub_1C4402FD0(v30), v34) ? (v34 = v32 == v33) : (v34 = 0), !v34 && (sub_1C4F02938() & 1) == 0))
        {
LABEL_32:
          sub_1C47F5CB8();
          sub_1C47F5CB8();
          break;
        }
      }

      else if (v29)
      {
        goto LABEL_32;
      }

      sub_1C4F00328();
      sub_1C4419704();
      sub_1C47F6E3C(&qword_1EC0BB6B8, v35);
      sub_1C445BAE8();
      sub_1C441E3AC();
      sub_1C47F5CB8();
      sub_1C47F5CB8();
      if (v4)
      {
        sub_1C440EDBC();
        if (!v34)
        {
          continue;
        }
      }

      break;
    }
  }

  sub_1C44A1E7C();
  sub_1C43FE9F0();
}

uint64_t sub_1C47E9678(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return sub_1C4456958();
  }

  if (!v2 || result == a2)
  {
    return sub_1C4415EFC();
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

void sub_1C47E96CC()
{
  sub_1C43FBD3C();
  v3 = sub_1C442F8D4();
  v4 = type metadata accessor for FeatureValue.BasicValue(v3);
  v5 = sub_1C43FBCE0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FD2D8();
  v68 = v8;
  v9 = sub_1C456902C(&qword_1EC0BB438, qword_1C4F1F960);
  sub_1C43FBD18(v9);
  v11 = *(v10 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBC74();
  v71 = v13;
  v70 = sub_1C456902C(&qword_1EC0BD5B8, &unk_1C4F2F340);
  sub_1C43FBCE0(v70);
  v15 = *(v14 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C4402A68();
  v17 = type metadata accessor for FeatureValue.NamedValue(0);
  v18 = sub_1C44057B8(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1C444B140();
  v23 = v21 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v64 - v26;
  v28 = *(v2 + 16);
  if (v28 != *(v0 + 16) || !v28 || v2 == v0)
  {
    goto LABEL_51;
  }

  sub_1C4441064(v25);
  v30 = v2 + v29;
  v31 = v0 + v29;
  v66 = *(v32 + 72);
  v67 = v17;
  v64 = v27;
  v65 = v1;
  while (1)
  {
    sub_1C47F5C60(v30, v27);
    sub_1C47F5C60(v31, v23);
    v33 = *(v17 + 20);
    v34 = *(v23 + v33 + 8);
    if (*&v27[v33 + 8])
    {
      if (!v34)
      {
        goto LABEL_47;
      }

      sub_1C4402FD0(&v27[v33]);
      v37 = v37 && v35 == v36;
      if (!v37 && (sub_1C4F02938() & 1) == 0)
      {
        goto LABEL_47;
      }
    }

    else if (v34)
    {
      goto LABEL_47;
    }

    v69 = v30;
    v38 = *(v17 + 24);
    v39 = *(v70 + 48);
    sub_1C4460108(&v27[v38], v1, &qword_1EC0BB438, qword_1C4F1F960);
    sub_1C4460108(v23 + v38, v1 + v39, &qword_1EC0BB438, qword_1C4F1F960);
    sub_1C440175C(v1, 1, v4);
    if (!v37)
    {
      break;
    }

    v40 = sub_1C44755FC();
    sub_1C440175C(v40, v41, v4);
    if (!v37)
    {
      sub_1C4433388();
      goto LABEL_49;
    }

    sub_1C4420C3C(v1, &qword_1EC0BB438, qword_1C4F1F960);
LABEL_42:
    sub_1C4F00328();
    sub_1C4419704();
    sub_1C47F6E3C(&qword_1EC0BB6B8, v62);
    v63 = sub_1C4F010B8();
    sub_1C47F5CB8();
    sub_1C47F5CB8();
    if (v63)
    {
      v17 = v67;
      v31 += v66;
      v30 = v69 + v66;
      if (--v28)
      {
        continue;
      }
    }

    goto LABEL_51;
  }

  sub_1C4460108(v1, v71, &qword_1EC0BB438, qword_1C4F1F960);
  v42 = sub_1C44755FC();
  sub_1C440175C(v42, v43, v4);
  if (!v44)
  {
    sub_1C44250B4();
    v45 = v68;
    sub_1C47F5C08(v1 + v39, v68);
    sub_1C441D6C0(v4[5]);
    if (v47)
    {
      if (!v46)
      {
        goto LABEL_46;
      }
    }

    else
    {
      sub_1C43FD5A0();
      if (v48)
      {
        goto LABEL_46;
      }
    }

    sub_1C441D6C0(v4[6]);
    if (v50)
    {
      if (!v49)
      {
        goto LABEL_46;
      }
    }

    else
    {
      sub_1C449959C();
      if (v51)
      {
        goto LABEL_46;
      }
    }

    v52 = v4[7];
    v53 = *(v71 + v52 + 4);
    v54 = *(v45 + v52 + 4);
    if (v53)
    {
      if (!v54)
      {
        goto LABEL_46;
      }
    }

    else
    {
      sub_1C44B6760();
      if (v55)
      {
        goto LABEL_46;
      }
    }

    v56 = v4[8];
    v57 = *(v45 + v56 + 8);
    if (*(v71 + v56 + 8))
    {
      if (!v57 || ((sub_1C4402FD0((v71 + v56)), v37) ? (v60 = v58 == v59) : (v60 = 0), !v60 && (sub_1C4F02938() & 1) == 0))
      {
LABEL_46:
        sub_1C47F5CB8();
        sub_1C47F5CB8();
        sub_1C4420C3C(v65, &qword_1EC0BB438, qword_1C4F1F960);
LABEL_47:
        sub_1C4433388();
        sub_1C47F5CB8();
        goto LABEL_50;
      }
    }

    else if (v57)
    {
      goto LABEL_46;
    }

    sub_1C4F00328();
    sub_1C4419704();
    sub_1C47F6E3C(&qword_1EC0BB6B8, v61);
    sub_1C4485B6C();
    sub_1C441E3AC();
    v27 = v64;
    sub_1C47F5CB8();
    sub_1C47F5CB8();
    v1 = v65;
    sub_1C4420C3C(v65, &qword_1EC0BB438, qword_1C4F1F960);
    if ((v39 & 1) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_42;
  }

  sub_1C4433388();
  sub_1C47F5CB8();
  sub_1C441B94C();
LABEL_49:
  sub_1C47F5CB8();
  sub_1C4420C3C(v1, &qword_1EC0BD5B8, &unk_1C4F2F340);
LABEL_50:
  sub_1C4433388();
  sub_1C47F5CB8();
LABEL_51:
  sub_1C44A1E7C();
  sub_1C43FE9F0();
}

void sub_1C47E9C30()
{
  sub_1C43FBD3C();
  v2 = v1;
  v4 = v3;
  v68 = type metadata accessor for FeatureValue.BasicValue(0);
  v5 = sub_1C43FBCE0(v68);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  v10 = v9 - v8;
  v11 = sub_1C456902C(&qword_1EC0BB438, qword_1C4F1F960);
  sub_1C43FBD18(v11);
  v13 = *(v12 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v61 - v15;
  v17 = sub_1C456902C(&qword_1EC0BD5B8, &unk_1C4F2F340);
  sub_1C43FBCE0(v17);
  v19 = *(v18 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v20);
  v21 = sub_1C441B2EC();
  v22 = type metadata accessor for FeatureValue(v21);
  v23 = sub_1C44057B8(v22);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  sub_1C444B140();
  v28 = (v26 - v27);
  MEMORY[0x1EEE9AC00](v29);
  v32 = (&v61 - v31);
  v33 = *(v4 + 16);
  if (v33 == *(v2 + 16) && v33 && v4 != v2)
  {
    v64 = *(v4 + 16);
    v65 = v17;
    v62 = v10;
    v63 = v16;
    v34 = 0;
    sub_1C4441064(v30);
    v36 = v4 + v35;
    v38 = *(v37 + 72);
    v66 = v2 + v35;
    v67 = v38;
    v61 = v22;
    while (1)
    {
      v39 = v67 * v34;
      sub_1C47F5C60(v36 + v67 * v34, v32);
      if (v34 == v33)
      {
        break;
      }

      sub_1C47F5C60(v66 + v39, v28);
      v40 = *v32;
      v41 = *v28;
      sub_1C47E9434();
      if ((v42 & 1) == 0)
      {
        goto LABEL_30;
      }

      v43 = v32[1];
      v44 = v28[1];
      v45 = *(v43 + 16);
      if (v45 != *(v44 + 16))
      {
        goto LABEL_30;
      }

      if (v45)
      {
        v46 = v43 == v44;
      }

      else
      {
        v46 = 1;
      }

      if (!v46)
      {
        v47 = (v43 + 32);
        v48 = (v44 + 32);
        while (v45)
        {
          if (*v47 != *v48)
          {
            goto LABEL_30;
          }

          ++v47;
          ++v48;
          if (!--v45)
          {
            goto LABEL_16;
          }
        }

        __break(1u);
        break;
      }

LABEL_16:
      v49 = v32[2];
      v50 = v28[2];
      sub_1C47E96CC();
      if ((v51 & 1) == 0)
      {
        goto LABEL_30;
      }

      v52 = *(v22 + 32);
      v53 = *(v65 + 48);
      sub_1C4460108(v32 + v52, v0, &qword_1EC0BB438, qword_1C4F1F960);
      sub_1C4460108(v28 + v52, v0 + v53, &qword_1EC0BB438, qword_1C4F1F960);
      v54 = v68;
      sub_1C440175C(v0, 1, v68);
      if (v46)
      {
        sub_1C440175C(v0 + v53, 1, v54);
        if (!v46)
        {
          goto LABEL_29;
        }

        sub_1C4420C3C(v0, &qword_1EC0BB438, qword_1C4F1F960);
        v33 = v64;
      }

      else
      {
        v55 = v36;
        v56 = v63;
        sub_1C4460108(v0, v63, &qword_1EC0BB438, qword_1C4F1F960);
        sub_1C440175C(v0 + v53, 1, v54);
        if (v57)
        {
          sub_1C441B94C();
          sub_1C47F5CB8();
LABEL_29:
          sub_1C4420C3C(v0, &qword_1EC0BD5B8, &unk_1C4F2F340);
LABEL_30:
          sub_1C47F5CB8();
          sub_1C47F5CB8();
          goto LABEL_31;
        }

        sub_1C44250B4();
        v58 = v62;
        sub_1C47F5C08(v0 + v53, v62);
        sub_1C47E419C(v56, v58);
        sub_1C441E3AC();
        sub_1C47F5CB8();
        sub_1C47F5CB8();
        sub_1C4420C3C(v0, &qword_1EC0BB438, qword_1C4F1F960);
        v36 = v55;
        v22 = v61;
        v33 = v64;
        if ((v53 & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      v59 = *(v22 + 28);
      sub_1C4F00328();
      sub_1C4419704();
      sub_1C47F6E3C(&qword_1EC0BB6B8, v60);
      sub_1C4F010B8();
      sub_1C4461F98();
      sub_1C47F5CB8();
      sub_1C47F5CB8();
      if ((v53 & 1) != 0 && ++v34 != v33)
      {
        continue;
      }

      goto LABEL_31;
    }

    __break(1u);
  }

  else
  {
LABEL_31:
    sub_1C44A1E7C();
    sub_1C43FE9F0();
  }
}

uint64_t sub_1C47EA0C0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4E747865746E6F63 && a2 == 0xEB00000000656D61;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001C4F9B7E0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C4F02938();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C47EA194(char a1)
{
  if (a1)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x4E747865746E6F63;
  }
}

uint64_t sub_1C47EA1F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C47EA0C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C47EA220(uint64_t a1)
{
  v2 = sub_1C47EA438();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C47EA25C(uint64_t a1)
{
  v2 = sub_1C47EA438();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void HumanReadableFeaturizedBehaviorsGroup.encode(to:)()
{
  sub_1C43FE96C();
  v4 = v3;
  v5 = sub_1C456902C(&qword_1EC0BD5D8, "Vs\n");
  sub_1C43FCDF8(v5);
  v14 = v6;
  v8 = *(v7 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C4402A68();
  v10 = *v0;
  v11 = v0[1];
  v13 = v0[2];
  v12 = v4[4];
  sub_1C4409678(v4, v4[3]);
  sub_1C47EA438();
  sub_1C4F02BF8();
  sub_1C442899C();
  if (!v1)
  {
    sub_1C4405BEC();
    sub_1C456902C(&qword_1EC0BD5E8, &qword_1C4F2EF08);
    sub_1C47EA6C4(&qword_1EC0BD5F0, sub_1C47EA48C);
    sub_1C4F027E8();
  }

  (*(v14 + 8))(v2, v5);
  sub_1C43FBC80();
}

unint64_t sub_1C47EA438()
{
  result = qword_1EC0BD5E0;
  if (!qword_1EC0BD5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD5E0);
  }

  return result;
}

unint64_t sub_1C47EA48C()
{
  result = qword_1EC0BD5F8;
  if (!qword_1EC0BD5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD5F8);
  }

  return result;
}

void HumanReadableFeaturizedBehaviorsGroup.init(from:)()
{
  sub_1C43FE96C();
  v2 = v1;
  v4 = v3;
  v5 = sub_1C456902C(&qword_1EC0BD600, &qword_1C4F2EF10);
  sub_1C43FCDF8(v5);
  v7 = *(v6 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBD64();
  v9 = v2[3];
  v10 = v2[4];
  v11 = sub_1C4475834();
  sub_1C4409678(v11, v12);
  sub_1C47EA438();
  sub_1C4475D8C();
  if (v0)
  {
    sub_1C440962C(v2);
  }

  else
  {
    v13 = sub_1C444BFF0();
    v15 = v14;
    sub_1C456902C(&qword_1EC0BD5E8, &qword_1C4F2EF08);
    sub_1C4405BEC();
    sub_1C47EA6C4(&qword_1EC0BD608, sub_1C47EA73C);
    sub_1C4F026C8();
    v16 = sub_1C4408A58();
    v17(v16);
    *v4 = v13;
    v4[1] = v15;
    v4[2] = v18;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C440962C(v2);
  }

  sub_1C43FBC80();
}

uint64_t sub_1C47EA6C4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1C4572308(&qword_1EC0BD5E8, &qword_1C4F2EF08);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C47EA73C()
{
  result = qword_1EC0BD610;
  if (!qword_1EC0BD610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD610);
  }

  return result;
}

uint64_t BehaviorIdentifierFeatureValuePair.behaviorIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C43FBC98();
}

uint64_t BehaviorIdentifierFeatureValuePair.featureValue.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C43FBC98();
}

uint64_t static BehaviorIdentifierFeatureValuePair.== infix(_:_:)(uint64_t *a1)
{
  v2 = sub_1C47F7A1C(a1);
  v6 = *(v5 + 24);
  v7 = v4[2];
  v8 = v4[3];
  v9 = v2 == *v4 && v3 == v4[1];
  if (v9 || (v10 = sub_1C4F02938(), result = 0, (v10 & 1) != 0))
  {
    if (v1 == v7 && v6 == v8)
    {
      return 1;
    }

    else
    {
      sub_1C43FBC98();

      return sub_1C4F02938();
    }
  }

  return result;
}

uint64_t sub_1C47EA8B0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x80000001C4F855A0 == a2;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5665727574616566 && a2 == 0xEC00000065756C61)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C4F02938();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C47EA984(char a1)
{
  if (a1)
  {
    return 0x5665727574616566;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_1C47EA9C8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1C4F02AF8();
  a4(v8, v6);
  return sub_1C4F02B68();
}

uint64_t sub_1C47EAA1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C47EA8B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C47EAA44(uint64_t a1)
{
  v2 = sub_1C47EABF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C47EAA80(uint64_t a1)
{
  v2 = sub_1C47EABF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void BehaviorIdentifierFeatureValuePair.encode(to:)()
{
  sub_1C43FE96C();
  v4 = v3;
  v5 = sub_1C456902C(&qword_1EC0BD618, &qword_1C4F2EF18);
  sub_1C43FCDF8(v5);
  v15 = v6;
  v8 = *(v7 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C4402A68();
  v10 = *v0;
  v11 = v0[1];
  v13 = v0[3];
  v14 = v0[2];
  v12 = v4[4];
  sub_1C4409678(v4, v4[3]);
  sub_1C47EABF4();
  sub_1C4F02BF8();
  sub_1C442899C();
  if (!v1)
  {
    sub_1C4405BEC();
    sub_1C442899C();
  }

  (*(v15 + 8))(v2, v5);
  sub_1C43FBC80();
}

unint64_t sub_1C47EABF4()
{
  result = qword_1EC0BD620;
  if (!qword_1EC0BD620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD620);
  }

  return result;
}

void BehaviorIdentifierFeatureValuePair.init(from:)()
{
  sub_1C43FE96C();
  v3 = v2;
  v5 = v4;
  v6 = sub_1C456902C(&qword_1EC0BD628, &qword_1C4F2EF20);
  sub_1C43FCDF8(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBD64();
  v12 = v3[3];
  v13 = v3[4];
  v14 = sub_1C4475834();
  sub_1C4409678(v14, v15);
  sub_1C47EABF4();
  sub_1C4475D8C();
  if (v0)
  {
    sub_1C440962C(v3);
  }

  else
  {
    v16 = sub_1C444BFF0();
    v18 = v17;
    sub_1C4405BEC();
    v19 = sub_1C4F02678();
    v21 = v20;
    v22 = v19;
    (*(v8 + 8))(v1, v6);
    *v5 = v16;
    v5[1] = v18;
    v5[2] = v22;
    v5[3] = v21;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C440962C(v3);
  }

  sub_1C43FBC80();
}

uint64_t sub_1C47EAE3C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_1C47EAE7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *sub_1C47EAEF8(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C47EAFD8()
{
  result = qword_1EC0BD630;
  if (!qword_1EC0BD630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD630);
  }

  return result;
}

unint64_t sub_1C47EB030()
{
  result = qword_1EC0BD638;
  if (!qword_1EC0BD638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD638);
  }

  return result;
}

unint64_t sub_1C47EB088()
{
  result = qword_1EC0BD640;
  if (!qword_1EC0BD640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD640);
  }

  return result;
}

unint64_t sub_1C47EB0E0()
{
  result = qword_1EC0BD648;
  if (!qword_1EC0BD648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD648);
  }

  return result;
}

unint64_t sub_1C47EB138()
{
  result = qword_1EC0BD650;
  if (!qword_1EC0BD650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD650);
  }

  return result;
}

unint64_t sub_1C47EB190()
{
  result = qword_1EC0BD658;
  if (!qword_1EC0BD658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD658);
  }

  return result;
}

void sub_1C47EB1E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v22;
  a20 = v23;
  v699 = v20;
  v700 = v21;
  v698 = v24;
  v701 = v25;
  v27 = v26;
  v692 = sub_1C456902C(&qword_1EC0B8BB8, &unk_1C4F10E70);
  v28 = sub_1C43FCDF8(v692);
  v697 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FBFDC();
  v691 = v32;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FBF38();
  v690 = v34;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FD230();
  v695 = v36;
  v689 = sub_1C456902C(&qword_1EC0B9358, &unk_1C4F0EE90);
  v37 = sub_1C43FCDF8(v689);
  v693 = v38;
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v37);
  sub_1C43FBFDC();
  v682 = v41;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v42);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v43);
  sub_1C43FBF38();
  v681 = v44;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v45);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v46);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v47);
  sub_1C43FD230();
  v677 = v48;
  v684 = sub_1C456902C(&qword_1EC0B8BC0, &unk_1C4F0DFF0);
  v49 = sub_1C43FCDF8(v684);
  v696 = v50;
  v52 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v49);
  sub_1C43FBFDC();
  v686 = v53;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v54);
  sub_1C43FBF38();
  v685 = v55;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v56);
  sub_1C43FD230();
  v694 = v57;
  v58 = sub_1C456902C(&qword_1EC0B9370, &unk_1C4F0EEB0);
  v59 = sub_1C43FCDF8(v58);
  v687 = v60;
  v688 = v59;
  v62 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v59);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v63);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v64);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v65);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v66);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v67);
  sub_1C43FD230();
  v679 = v68;
  v69 = sub_1C456902C(&qword_1EC0B8BB0, &unk_1C4F0DFE0);
  v70 = sub_1C43FCDF8(v69);
  v673 = v71;
  v73 = *(v72 + 64);
  v74 = MEMORY[0x1EEE9AC00](v70);
  v76 = &v664 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = MEMORY[0x1EEE9AC00](v74);
  v79 = &v664 - v78;
  MEMORY[0x1EEE9AC00](v77);
  v81 = &v664 - v80;
  v82 = sub_1C456902C(&qword_1EC0B9320, &unk_1C4F0EE50);
  v83 = sub_1C43FCDF8(v82);
  v683 = v84;
  v86 = *(v85 + 64);
  v87 = MEMORY[0x1EEE9AC00](v83);
  v89 = &v664 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = MEMORY[0x1EEE9AC00](v87);
  v92 = &v664 - v91;
  MEMORY[0x1EEE9AC00](v90);
  v94 = &v664 - v93;
  v95 = v700;
  v96 = sub_1C47EE5F4(v27, v701);
  if (!v95)
  {
    v667 = v94;
    v665 = v92;
    v666 = v89;
    v97 = v699;
    v668 = v82;
    v670 = v81;
    v700 = v79;
    v669 = v76;
    v671 = v69;
    v99 = v696;
    v98 = v697;
    v672 = v27;
    switch(v96)
    {
      case 4:
        v495 = sub_1C4400384();
        type metadata accessor for TrendingBehaviorHistogram(v495);
        sub_1C4409A78();
        sub_1C442CA74();
        v496();
        sub_1C456902C(&qword_1EC0B8F08, &unk_1C4F0E9B0);
        sub_1C4403FC0();
        v497 = sub_1C4EF9CD8();
        sub_1C43FCF7C(v497);
        v499 = *(v498 + 72);
        v500 = sub_1C442F1BC();
        *(v500 + 16) = xmmword_1C4F0D130;
        sub_1C4EF9CC8();
        sub_1C4460234();
        MEMORY[0x1EEE9AC00](v501);
        sub_1C4406E68();
        sub_1C440D430();
        v503 = sub_1C47F61DC;
        goto LABEL_126;
      case 5:
        v510 = sub_1C4400384();
        type metadata accessor for ShortTermTrendingBehaviorHistogram(v510);
        sub_1C4409A78();
        sub_1C442CA74();
        v511();
        sub_1C456902C(&qword_1EC0B8F08, &unk_1C4F0E9B0);
        sub_1C4403FC0();
        v512 = sub_1C4EF9CD8();
        sub_1C43FCF7C(v512);
        v514 = *(v513 + 72);
        v500 = sub_1C442F1BC();
        *(v500 + 16) = xmmword_1C4F0D130;
        sub_1C4EF9CC8();
        sub_1C4460234();
        MEMORY[0x1EEE9AC00](v515);
        sub_1C4406E68();
        sub_1C440D430();
        v503 = sub_1C47F79B8;
        goto LABEL_126;
      case 6:
        v504 = sub_1C4400384();
        type metadata accessor for LongTermTrendingBehaviorHistogram(v504);
        sub_1C4409A78();
        sub_1C442CA74();
        v505();
        sub_1C456902C(&qword_1EC0B8F08, &unk_1C4F0E9B0);
        sub_1C4403FC0();
        v506 = sub_1C4EF9CD8();
        sub_1C43FCF7C(v506);
        v508 = *(v507 + 72);
        v500 = sub_1C442F1BC();
        *(v500 + 16) = xmmword_1C4F0D130;
        sub_1C4EF9CC8();
        sub_1C4460234();
        MEMORY[0x1EEE9AC00](v509);
        sub_1C4406E68();
        sub_1C440D430();
        v503 = sub_1C47F79B8;
LABEL_126:
        sub_1C47EF8D8(v94, v500, v503, v502, v97, &qword_1EC0B92B0, &qword_1C4F0EDE0, sub_1C47F4BF0, v664, v665, v666, v667, v668, v669, v670, v671, v672, v673, v674, v675, v676);
        sub_1C44D0B48();

        swift_setDeallocating();
        goto LABEL_75;
      case 9:
      case 10:
      case 11:
      case 15:
      case 16:
      case 17:
      case 50:
      case 52:
        v100 = sub_1C4400384();
        type metadata accessor for TimeOfDayBehaviorHistogram(v100);
        sub_1C4409A78();
        sub_1C442CA74();
        v101();
        sub_1C442A930();
        sub_1C4614C70();
        sub_1C4414AB0();
        MEMORY[0x1EEE9AC00](v102);
        sub_1C4406E68();
        goto LABEL_42;
      case 12:
      case 13:
      case 14:
      case 51:
        v189 = sub_1C4400384();
        type metadata accessor for PartOfDayBehaviorHistogram(v189);
        sub_1C4409A78();
        sub_1C442CA74();
        v190();
        sub_1C442A930();
        sub_1C4615350();
        sub_1C4414AB0();
        MEMORY[0x1EEE9AC00](v191);
        sub_1C4406E68();
        goto LABEL_42;
      case 18:
      case 19:
      case 20:
      case 53:
        v195 = sub_1C4400384();
        type metadata accessor for DayOfWeekBehaviorHistogram(v195);
        sub_1C4409A78();
        sub_1C442CA74();
        v196();
        sub_1C442A930();
        sub_1C4615834();
        sub_1C4414AB0();
        MEMORY[0x1EEE9AC00](v197);
        sub_1C4406E68();
        goto LABEL_42;
      case 21:
      case 22:
      case 23:
      case 54:
        v237 = sub_1C4400384();
        type metadata accessor for PartOfWeekBehaviorHistogram(v237);
        sub_1C4409A78();
        sub_1C442CA74();
        v238();
        sub_1C442A930();
        sub_1C461662C();
        sub_1C4414AB0();
        MEMORY[0x1EEE9AC00](v239);
        sub_1C4406E68();
LABEL_42:
        sub_1C440C4E8();
        sub_1C47EEFB0();
        goto LABEL_47;
      case 24:
      case 25:
        v373 = *sub_1C4409678(v699 + 5, v699[8]);
        v374 = v698;
        v375 = sub_1C45EA9C0(v698);
        sub_1C4460234();
        MEMORY[0x1EEE9AC00](v376);
        sub_1C4406E68();
        sub_1C47EF2E8(v374, v375, sub_1C47F61C0, v377, v97);
        goto LABEL_202;
      case 26:
      case 27:
      case 28:
      case 55:
        v192 = sub_1C4400384();
        type metadata accessor for MicroLocationBehaviorHistogram(v192);
        sub_1C4409A78();
        sub_1C442CA74();
        v193();
        sub_1C442A930();
        sub_1C47E5B7C();
        sub_1C4414AB0();
        MEMORY[0x1EEE9AC00](v194);
        sub_1C4406E68();
        goto LABEL_30;
      case 29:
      case 30:
      case 31:
      case 56:
        v251 = sub_1C4400384();
        type metadata accessor for SpecificGeoHashBehaviorHistogram(v251);
        sub_1C4409A78();
        sub_1C442CA74();
        v252();
        sub_1C442A930();
        sub_1C47E5C30();
        sub_1C4414AB0();
        MEMORY[0x1EEE9AC00](v253);
        sub_1C4406E68();
        goto LABEL_45;
      case 32:
      case 33:
      case 34:
      case 57:
        v198 = sub_1C4400384();
        type metadata accessor for CoarseGeoHashBehaviorHistogram(v198);
        sub_1C4409A78();
        sub_1C442CA74();
        v199();
        sub_1C442A930();
        sub_1C47E5C30();
        sub_1C4414AB0();
        MEMORY[0x1EEE9AC00](v200);
        sub_1C4406E68();
        goto LABEL_45;
      case 35:
      case 36:
      case 37:
      case 58:
        v201 = sub_1C4400384();
        type metadata accessor for LargeGeoHashBehaviorHistogram(v201);
        sub_1C4409A78();
        sub_1C442CA74();
        v202();
        sub_1C442A930();
        sub_1C47E5C30();
        sub_1C4414AB0();
        MEMORY[0x1EEE9AC00](v203);
        sub_1C4406E68();
LABEL_45:
        v254 = sub_1C440C4E8();
        sub_1C47EF638(v254, v255, v256, v257, v258);
        goto LABEL_47;
      case 38:
      case 39:
      case 40:
      case 59:
        v240 = sub_1C4400384();
        type metadata accessor for LocationOfInterestBehaviorHistogram(v240);
        sub_1C4409A78();
        sub_1C442CA74();
        v241();
        sub_1C442A930();
        sub_1C47E5FB4();
        sub_1C4414AB0();
        MEMORY[0x1EEE9AC00](v242);
        sub_1C4406E68();
        v662 = MEMORY[0x1E69695A8];
        v243 = sub_1C440C4E8();
        sub_1C47EF8D8(v243, v244, v245, v246, v247, v248, v249, v250, v662, v663, v664, v665, v666, v667, v668, v669, v670, v671, v672, v673, v674);
        goto LABEL_47;
      case 41:
      case 42:
      case 43:
      case 60:
        v204 = sub_1C4400384();
        type metadata accessor for WiFiBehaviorHistogram(v204);
        sub_1C4409A78();
        sub_1C442CA74();
        v205();
        sub_1C442A930();
        sub_1C47E5B7C();
        sub_1C4414AB0();
        MEMORY[0x1EEE9AC00](v206);
        sub_1C4406E68();
        goto LABEL_30;
      case 44:
      case 45:
      case 46:
      case 61:
        v186 = sub_1C4400384();
        type metadata accessor for FocusModeBehaviorHistogram(v186);
        sub_1C4409A78();
        sub_1C442CA74();
        v187();
        sub_1C442A930();
        sub_1C47E5B7C();
        sub_1C4414AB0();
        MEMORY[0x1EEE9AC00](v188);
        sub_1C4406E68();
LABEL_30:
        v207 = sub_1C440C4E8();
        sub_1C47EFC28(v207, v208, v209, v210, v211);
        goto LABEL_47;
      case 47:
      case 48:
      case 49:
      case 62:
        v259 = sub_1C4400384();
        type metadata accessor for MotionStateBehaviorHistogram(v259);
        sub_1C4409A78();
        sub_1C442CA74();
        v260();
        sub_1C442A930();
        sub_1C4616D38();
        sub_1C4414AB0();
        MEMORY[0x1EEE9AC00](v261);
        sub_1C4406E68();
        v262 = sub_1C440C4E8();
        sub_1C47EFEEC(v262, v263, v264, v265, v266);
LABEL_47:

        goto LABEL_202;
      case 63:
      case 66:
      case 85:
      case 88:
        v212 = v699[4];
        v213 = sub_1C43FC338(v699, v699[3]);
        type metadata accessor for TimeOfDayBehaviorHistogram(v213);
        sub_1C442F674();
        sub_1C4403164();
        v215 = v214();
        v216 = v97[4];
        v217 = 0;
        v218 = sub_1C43FC338(v97, v97[3]);
        type metadata accessor for DayOfWeekBehaviorHistogram(v218);
        sub_1C442F674();
        sub_1C442232C();
        v219();
        sub_1C4495CF4();
        sub_1C4614C70();
        v517 = v516;
        v518 = sub_1C4615834();
        sub_1C47F1CAC(v517, v518);
        v520 = v519;

        v521 = *(v520 + 16);
        if (v521)
        {
          v693 = v98;
          v694 = v215;
          sub_1C4404EE4(MEMORY[0x1E69E7CC0]);
          sub_1C47F5F1C(v521, v522);
          sub_1C43FBF6C();
          v692 = v520;
          v524 = v520 + v523;
          sub_1C449AEA0();
          v525 = v667;
          v697 = 0;
          do
          {
            v526 = v670;
            v527 = &qword_1EC0B8BB0;
            sub_1C4460108(v524, v670, &qword_1EC0B8BB0, &unk_1C4F0DFE0);
            sub_1C4460108(v526, v99, &qword_1EC0B8BB0, &unk_1C4F0DFE0);
            v696 = *(v520 + 48);
            v528 = v526;
            v529 = v669;
            sub_1C44CDA30(v528, v669, &qword_1EC0B8BB0, &unk_1C4F0DFE0);
            v530 = *(v520 + 48);
            v531 = sub_1C4EF9CD8();
            sub_1C44022CC(v531);
            v533 = v532;
            v534 = *(v532 + 32);
            v534(v525, v700, &qword_1EC0B8BB0);
            sub_1C4449398();
            v534(v525 + v535, (v529 + v530), &qword_1EC0B8BB0);
            v99 = v700;
            v536 = *(v533 + 8);
            v537 = sub_1C43FBC98();
            v536(v537);
            v538 = sub_1C47F79E8();
            v536(v538);
            if ((sub_1C445C170() & 1) == 0)
            {
              sub_1C4411CDC();
              sub_1C459E310();
              v527 = a10;
            }

            v540 = v527[2];
            v539 = v527[3];
            v217 = v697;
            v520 = v671;
            v541 = v683;
            if (v540 >= v539 >> 1)
            {
              sub_1C442BB28(v539);
              sub_1C459E310();
              v527 = a10;
            }

            v527[2] = v540 + 1;
            sub_1C440BD14();
            v525 = v543;
            sub_1C44CDA30(v543, v527 + v542 + *(v541 + 72) * v540, &qword_1EC0B9320, &unk_1C4F0EE50);
            v524 += v695;
            --v521;
          }

          while (v521);
        }

        else
        {

          v527 = MEMORY[0x1E69E7CC0];
        }

        sub_1C4460234();
        MEMORY[0x1EEE9AC00](v618);
        sub_1C441FA00();
        v95 = v217;
        sub_1C47F018C(v698, v527, sub_1C47F6088, v619, v620, type metadata accessor for DayOfWeekBehaviorHistogram, type metadata accessor for TimeOfDayBehaviorHistogram, sub_1C461E650, sub_1C461DC50, v663, v664, v665, v666, v667, v668, v669, v670, v671, v672, v673, v674);
        goto LABEL_187;
      case 64:
      case 86:
        v430 = sub_1C4400384();
        type metadata accessor for PartOfDayBehaviorHistogram(v430);
        sub_1C4409A78();
        sub_1C442CA74();
        v432 = v431();
        v433 = sub_1C442FD94();
        v435 = sub_1C43FC338(v433, v434);
        type metadata accessor for DayOfWeekBehaviorHistogram(v435);
        sub_1C4409A78();
        sub_1C442232C();
        sub_1C442EB34();
        v437 = 0;
        v544 = v436();
        sub_1C4615350();
        sub_1C4615834();
        v545 = sub_1C4404328();
        sub_1C47F1CAC(v545, v546);
        sub_1C440167C();

        v547 = *(v82 + 16);
        if (v547)
        {
          v693 = v544;
          v694 = v432;
          sub_1C4404EE4(MEMORY[0x1E69E7CC0]);
          sub_1C47F5F1C(v547, v548);
          sub_1C43FBF6C();
          v692 = v82;
          v550 = v82 + v549;
          sub_1C449AEA0();
          v551 = v665;
          v697 = 0;
          do
          {
            v552 = v670;
            sub_1C4460108(v550, v670, &qword_1EC0B8BB0, &unk_1C4F0DFE0);
            sub_1C4460108(v552, v432, &qword_1EC0B8BB0, &unk_1C4F0DFE0);
            v696 = *(v82 + 48);
            v553 = v669;
            sub_1C44CDA30(v552, v669, &qword_1EC0B8BB0, &unk_1C4F0DFE0);
            v554 = *(v82 + 48);
            v555 = sub_1C4EF9CD8();
            sub_1C44022CC(v555);
            v557 = v556;
            v558 = *(v556 + 32);
            v558(v551, v700, v552);
            sub_1C4449398();
            v558(v551 + v559, (v553 + v554), v552);
            v432 = v700;
            v560 = *(v557 + 8);
            v560(v553, v552);
            v561 = sub_1C47F79E8();
            (v560)(v561);
            if ((sub_1C445C170() & 1) == 0)
            {
              sub_1C4411CDC();
              sub_1C459E310();
              v552 = a10;
            }

            v563 = *(v552 + 16);
            v562 = *(v552 + 24);
            sub_1C447E468();
            v437 = v697;
            v565 = v701;
            v82 = v671;
            if (v154)
            {
              sub_1C442BB28(v564);
              sub_1C459E310();
              v552 = a10;
            }

            *(v552 + 16) = v560;
            sub_1C43FD780();
            v568 = v566 + v567 * v563;
            v551 = v569;
            sub_1C44CDA30(v569, v568, &qword_1EC0B9320, &unk_1C4F0EE50);
            sub_1C4455388();
          }

          while (!v185);
        }

        else
        {

          v565 = v701;
        }

        sub_1C4460234();
        MEMORY[0x1EEE9AC00](v644);
        sub_1C43FEFFC();
        v645 = v672;
        *(v647 - 32) = v646;
        *(v647 - 24) = v645;
        *(v647 - 16) = v565;
        v648 = sub_1C440DE0C();
        sub_1C47F018C(v648, v649, v650, v651, v652, v653, v654, v655, sub_1C461E62C, v663, v664, v665, v666, v667, v668, v669, v670, v671, v672, v673, v674);
        sub_1C44D0B48();
        if (!v437)
        {
          goto LABEL_194;
        }

        goto LABEL_198;
      case 65:
      case 87:
        v483 = sub_1C4400384();
        type metadata accessor for PartOfDayBehaviorHistogram(v483);
        sub_1C4409A78();
        sub_1C442CA74();
        v485 = v484();
        v486 = sub_1C442FD94();
        v488 = sub_1C43FC338(v486, v487);
        type metadata accessor for PartOfWeekBehaviorHistogram(v488);
        sub_1C4409A78();
        sub_1C442232C();
        sub_1C442EB34();
        v490 = 0;
        v570 = v489();
        sub_1C4615350();
        sub_1C461662C();
        v571 = sub_1C4404328();
        sub_1C47F1CAC(v571, v572);
        sub_1C440167C();

        v573 = MEMORY[0x10];
        if (MEMORY[0x10])
        {
          v693 = v570;
          v694 = v485;
          sub_1C4404EE4(MEMORY[0x1E69E7CC0]);
          sub_1C47F5F1C(v573, v574);
          sub_1C43FBF6C();
          v692 = 0;
          v576 = v575;
          v695 = *(v577 + 72);
          v578 = v700;
          v579 = v670;
          v580 = v666;
          v697 = 0;
          do
          {
            v581 = &qword_1EC0B8BB0;
            sub_1C4460108(v576, v579, &qword_1EC0B8BB0, &unk_1C4F0DFE0);
            sub_1C4460108(v579, v578, &qword_1EC0B8BB0, &unk_1C4F0DFE0);
            v582 = v671;
            v696 = *(v671 + 48);
            v583 = v579;
            v584 = v669;
            sub_1C44CDA30(v583, v669, &qword_1EC0B8BB0, &unk_1C4F0DFE0);
            v585 = *(v582 + 48);
            v586 = sub_1C4EF9CD8();
            sub_1C44022CC(v586);
            v588 = v587;
            v589 = *(v587 + 32);
            v589(v580, v700, &qword_1EC0B8BB0);
            sub_1C4449398();
            v589(v580 + v590, (v584 + v585), &qword_1EC0B8BB0);
            v578 = v700;
            v591 = *(v588 + 8);
            v592 = sub_1C44333A0();
            v591(v592);
            v593 = sub_1C47F79E8();
            v591(v593);
            if ((sub_1C445C170() & 1) == 0)
            {
              sub_1C4411CDC();
              sub_1C459E310();
              v581 = a10;
            }

            v595 = v581[2];
            v594 = v581[3];
            sub_1C447E468();
            v490 = v697;
            v597 = v672;
            v579 = v670;
            if (v154)
            {
              sub_1C442BB28(v596);
              sub_1C459E310();
              v581 = a10;
            }

            v581[2] = v591;
            sub_1C43FD780();
            v600 = v598 + v599 * v595;
            v580 = v601;
            sub_1C44CDA30(v601, v600, &qword_1EC0B9320, &unk_1C4F0EE50);
            v576 += v695;
            --v573;
          }

          while (v573);
        }

        else
        {

          v581 = MEMORY[0x1E69E7CC0];
          v597 = v672;
        }

        sub_1C4460234();
        MEMORY[0x1EEE9AC00](v657);
        sub_1C43FEFFC();
        *(v659 - 32) = v658;
        *(v659 - 24) = v597;
        *(v659 - 16) = v701;
        sub_1C47F018C(v698, v581, sub_1C47F79A0, v660, v658, type metadata accessor for PartOfDayBehaviorHistogram, type metadata accessor for PartOfWeekBehaviorHistogram, sub_1C461E62C, sub_1C461E714, v663, v664, v665, v666, v667, v668, v669, v670, v671, v672, v673, v674);
        sub_1C44D0B48();
        if (v490)
        {
          goto LABEL_198;
        }

        sub_1C4482CDC();
LABEL_194:

        goto LABEL_201;
      case 67:
      case 89:
        v337 = v699[4];
        v338 = sub_1C43FC338(v699, v699[3]);
        type metadata accessor for DayOfWeekBehaviorHistogram(v338);
        sub_1C442F674();
        sub_1C4403164();
        v339();
        v340 = sub_1C44322F4();
        type metadata accessor for MicroLocationBehaviorHistogram(v340);
        sub_1C442F674();
        sub_1C440F688();
        v341();
        sub_1C4495CF4();
        sub_1C4615834();
        sub_1C44A1D40();
        v342 = sub_1C4404328();
        sub_1C47F2060(v342, v343);
        sub_1C440167C();

        v344 = *(v337 + 16);
        if (v344)
        {
          sub_1C4422ADC();
          sub_1C440AAE4(MEMORY[0x1E69E7CC0]);
          sub_1C47F5F1C(v344, v345);
          sub_1C443FC58();
          v347 = v337 + v346;
          v700 = (v685 + 8);
          v348 = *(v99 + 72);
          v349 = v674;
          do
          {
            sub_1C4405BE0();
            sub_1C4460108(v350, v351, v352, v353);
            v354 = v685;
            sub_1C4405BE0();
            sub_1C4460108(v355, v356, v357, v358);
            sub_1C443E31C();
            v359 = v686;
            sub_1C4405BE0();
            sub_1C44CDA30(v360, v361, v362, v363);
            sub_1C446BED8((v359 + *(v92 + 12)));
            v365 = sub_1C44AE01C(v364);
            sub_1C44022CC(v365);
            v366 = v349;
            v368 = v367;
            (*(v367 + 32))(v366, v354, v92);
            (*(v368 + 8))(v359, v92);
            if ((sub_1C445C170() & 1) == 0)
            {
              sub_1C4411CDC();
              sub_1C459E250();
              v92 = a10;
            }

            v369 = *(v92 + 2);
            if (v369 >= *(v92 + 3) >> 1)
            {
              sub_1C459E250();
              v92 = a10;
            }

            *(v92 + 2) = v369 + 1;
            sub_1C43FD780();
            v349 = v674;
            sub_1C44CDA30(v674, v370 + v371 * v369, &qword_1EC0B9370, &unk_1C4F0EEB0);
            v347 += v348;
            --v344;
            v372 = v672;
          }

          while (v344);

          v95 = v697;
        }

        else
        {

          v92 = MEMORY[0x1E69E7CC0];
          v372 = v672;
        }

        sub_1C4460234();
        MEMORY[0x1EEE9AC00](v640);
        sub_1C43FEFFC();
        *(v641 - 32) = v626;
        *(v641 - 24) = v372;
        *(v641 - 16) = v701;
        v642 = sub_1C47F7988;
        goto LABEL_178;
      case 68:
      case 69:
      case 90:
      case 91:
        v283 = sub_1C4400384();
        type metadata accessor for TimeOfDayBehaviorHistogram(v283);
        sub_1C4409A78();
        sub_1C442CA74();
        v284();
        v285 = sub_1C442FD94();
        v287 = sub_1C43FC338(v285, v286);
        type metadata accessor for MicroLocationBehaviorHistogram(v287);
        sub_1C4409A78();
        sub_1C442232C();
        sub_1C442EB34();
        v288();
        sub_1C4495CF4();
        sub_1C4614C70();
        sub_1C44A1D40();
        v289 = sub_1C4404328();
        sub_1C47F2060(v289, v290);
        sub_1C440167C();

        v291 = *(v82 + 16);
        if (!v291)
        {
          goto LABEL_170;
        }

        sub_1C4422ADC();
        sub_1C440AAE4(MEMORY[0x1E69E7CC0]);
        sub_1C47F5F1C(v291, v292);
        sub_1C443FC58();
        v700 = (v685 + 8);
        v696 = *(v99 + 72);
        do
        {
          sub_1C4405BE0();
          sub_1C4460108(v293, v294, v295, v296);
          sub_1C4405BE0();
          sub_1C4460108(v297, v298, v299, v300);
          sub_1C443E31C();
          v301 = v686;
          sub_1C4405BE0();
          sub_1C44CDA30(v302, v303, v304, v305);
          sub_1C446BED8((v301 + *(v92 + 12)));
          v307 = sub_1C44AE01C(v306);
          sub_1C44022CC(v307);
          v309 = v308;
          v310 = *(v308 + 32);
          v311 = sub_1C4475834();
          v312(v311);
          v314 = *(v309 + 8);
          v313 = v309 + 8;
          v315 = sub_1C44333A0();
          v316(v315);
          if ((sub_1C445C170() & 1) == 0)
          {
            sub_1C4411CDC();
            sub_1C459E250();
            v92 = a10;
          }

          sub_1C440C4FC();
          v318 = v679;
          if (v154)
          {
            sub_1C442BB28(v317);
            sub_1C459E250();
            v318 = v679;
            v92 = a10;
          }

          *(v92 + 2) = v313;
          sub_1C43FD780();
          sub_1C44CDA30(v318, v319 + v320 * v301, &qword_1EC0B9370, &unk_1C4F0EEB0);
          sub_1C4455388();
        }

        while (!v185);
        goto LABEL_65;
      case 70:
      case 92:
        v414 = sub_1C4400384();
        type metadata accessor for DayOfWeekBehaviorHistogram(v414);
        sub_1C4409A78();
        sub_1C442CA74();
        v415();
        v416 = sub_1C44322F4();
        type metadata accessor for SpecificGeoHashBehaviorHistogram(v416);
        sub_1C442F674();
        sub_1C440F688();
        v417();
        v224 = 0;
        sub_1C448077C();
        sub_1C4615834();
        sub_1C447F800();
        v418 = sub_1C4404328();
        sub_1C47F2310(v418, v419);
        sub_1C440167C();

        if (!*(v82 + 16))
        {
          goto LABEL_172;
        }

        sub_1C4480394();
        sub_1C4417190(MEMORY[0x1E69E7CC0]);
        sub_1C4408A38();
        sub_1C4424CB8();
        do
        {
          sub_1C4433CD0();
          sub_1C4409CA0();
          sub_1C447F0A0();
          v420 = sub_1C442DF38();
          sub_1C445E80C(v420);
          v422 = v421;
          v423 = sub_1C44160A0(v421);
          v424(v423);
          v425 = sub_1C4469170();
          v426(v425);
          if ((sub_1C445C170() & 1) == 0)
          {
            sub_1C4411CDC();
            sub_1C459E190();
            v422 = a10;
          }

          sub_1C44159E8();
          v224 = v695;
          if (v154)
          {
            sub_1C4410C88(v427);
            sub_1C459E190();
            sub_1C47F79D8(&a12);
          }

          *(v422 + 16) = v69;
          sub_1C43FD780();
          v428 = sub_1C44BBC3C();
          sub_1C44CDA30(v428, v429, &qword_1EC0B9358, &unk_1C4F0EE90);
          sub_1C4410364();
        }

        while (!v185);
        goto LABEL_74;
      case 71:
      case 72:
      case 95:
      case 98:
        v220 = sub_1C4400384();
        type metadata accessor for TimeOfDayBehaviorHistogram(v220);
        sub_1C4409A78();
        sub_1C442CA74();
        v221();
        v222 = sub_1C44322F4();
        type metadata accessor for SpecificGeoHashBehaviorHistogram(v222);
        sub_1C442F674();
        sub_1C440F688();
        v223();
        v224 = 0;
        sub_1C448077C();
        sub_1C4614C70();
        sub_1C447F800();
        v225 = sub_1C4404328();
        sub_1C47F2310(v225, v226);
        sub_1C440167C();

        if (!*(v82 + 16))
        {
          goto LABEL_172;
        }

        sub_1C4480394();
        sub_1C4417190(MEMORY[0x1E69E7CC0]);
        sub_1C4408A38();
        sub_1C4424CB8();
        do
        {
          sub_1C4433CD0();
          sub_1C4409CA0();
          sub_1C447F0A0();
          v227 = sub_1C442DF38();
          sub_1C445E80C(v227);
          v229 = v228;
          v230 = sub_1C44160A0(v228);
          v231(v230);
          v232 = sub_1C4469170();
          v233(v232);
          if ((sub_1C445C170() & 1) == 0)
          {
            sub_1C4411CDC();
            sub_1C459E190();
            v229 = a10;
          }

          sub_1C44159E8();
          v224 = v695;
          if (v154)
          {
            sub_1C4410C88(v234);
            sub_1C459E190();
            sub_1C47F79D8(&a18);
          }

          *(v229 + 16) = v69;
          sub_1C43FD780();
          v235 = sub_1C44BBC3C();
          sub_1C44CDA30(v235, v236, &qword_1EC0B9358, &unk_1C4F0EE90);
          sub_1C4410364();
        }

        while (!v185);
        goto LABEL_74;
      case 73:
      case 93:
        v491 = sub_1C4400384();
        type metadata accessor for DayOfWeekBehaviorHistogram(v491);
        sub_1C4409A78();
        sub_1C442CA74();
        v492();
        v493 = sub_1C44322F4();
        type metadata accessor for CoarseGeoHashBehaviorHistogram(v493);
        sub_1C442F674();
        sub_1C440F688();
        v494();
        v470 = 0;
        sub_1C448077C();
        sub_1C4615834();
        sub_1C447F800();
        v602 = sub_1C4404328();
        sub_1C47F2310(v602, v603);
        sub_1C440167C();

        if (!*(v82 + 16))
        {
          goto LABEL_195;
        }

        sub_1C4480394();
        sub_1C4417190(MEMORY[0x1E69E7CC0]);
        sub_1C4408A38();
        sub_1C4424CB8();
        do
        {
          sub_1C4433CD0();
          sub_1C4409CA0();
          sub_1C447F0A0();
          v604 = sub_1C442DF38();
          sub_1C445E80C(v604);
          v606 = v605;
          v607 = sub_1C44160A0(v605);
          v608(v607);
          v609 = sub_1C4469170();
          v610(v609);
          if ((sub_1C445C170() & 1) == 0)
          {
            sub_1C4411CDC();
            sub_1C459E190();
            v606 = a10;
          }

          sub_1C44159E8();
          v470 = v695;
          if (v154)
          {
            sub_1C4410C88(v611);
            sub_1C459E190();
            sub_1C47F79D8(&a13);
          }

          *(v606 + 16) = v69;
          sub_1C43FD780();
          v612 = sub_1C44BBC3C();
          sub_1C44CDA30(v612, v613, &qword_1EC0B9358, &unk_1C4F0EE90);
          sub_1C4410364();
        }

        while (!v185);
        goto LABEL_160;
      case 74:
      case 75:
      case 96:
      case 99:
        v267 = sub_1C4400384();
        type metadata accessor for TimeOfDayBehaviorHistogram(v267);
        sub_1C4409A78();
        sub_1C442CA74();
        v268();
        v269 = sub_1C44322F4();
        type metadata accessor for CoarseGeoHashBehaviorHistogram(v269);
        sub_1C442F674();
        sub_1C440F688();
        v270();
        v224 = 0;
        sub_1C448077C();
        sub_1C4614C70();
        sub_1C447F800();
        v271 = sub_1C4404328();
        sub_1C47F2310(v271, v272);
        sub_1C440167C();

        if (!*(v82 + 16))
        {
          goto LABEL_172;
        }

        sub_1C4480394();
        sub_1C4417190(MEMORY[0x1E69E7CC0]);
        sub_1C4408A38();
        sub_1C4424CB8();
        do
        {
          sub_1C4433CD0();
          sub_1C4409CA0();
          sub_1C447F0A0();
          v273 = sub_1C442DF38();
          sub_1C445E80C(v273);
          v275 = v274;
          v276 = sub_1C44160A0(v274);
          v277(v276);
          v278 = sub_1C4469170();
          v279(v278);
          if ((sub_1C445C170() & 1) == 0)
          {
            sub_1C4411CDC();
            sub_1C459E190();
            v275 = a10;
          }

          sub_1C44159E8();
          v224 = v695;
          if (v154)
          {
            sub_1C4410C88(v280);
            sub_1C459E190();
            v275 = a10;
          }

          *(v275 + 16) = v69;
          sub_1C43FD780();
          v281 = sub_1C44BBC3C();
          sub_1C44CDA30(v281, v282, &qword_1EC0B9358, &unk_1C4F0EE90);
          sub_1C4410364();
        }

        while (!v185);
        goto LABEL_74;
      case 76:
      case 94:
        v466 = sub_1C4400384();
        type metadata accessor for DayOfWeekBehaviorHistogram(v466);
        sub_1C4409A78();
        sub_1C442CA74();
        v467();
        v468 = sub_1C44322F4();
        type metadata accessor for LargeGeoHashBehaviorHistogram(v468);
        sub_1C442F674();
        sub_1C440F688();
        v469();
        v470 = 0;
        sub_1C448077C();
        sub_1C4615834();
        sub_1C447F800();
        v471 = sub_1C4404328();
        sub_1C47F2310(v471, v472);
        sub_1C440167C();

        if (*(v82 + 16))
        {
          sub_1C4480394();
          sub_1C4417190(MEMORY[0x1E69E7CC0]);
          sub_1C4408A38();
          sub_1C4424CB8();
          do
          {
            sub_1C4433CD0();
            sub_1C4409CA0();
            sub_1C447F0A0();
            v473 = sub_1C442DF38();
            sub_1C445E80C(v473);
            v475 = v474;
            v476 = sub_1C44160A0(v474);
            v477(v476);
            v478 = sub_1C4469170();
            v479(v478);
            if ((sub_1C445C170() & 1) == 0)
            {
              sub_1C4411CDC();
              sub_1C459E190();
              v475 = a10;
            }

            sub_1C44159E8();
            v470 = v695;
            if (v154)
            {
              sub_1C4410C88(v480);
              sub_1C459E190();
              sub_1C47F79D8(&a14);
            }

            *(v475 + 16) = v69;
            sub_1C43FD780();
            v481 = sub_1C44BBC3C();
            sub_1C44CDA30(v481, v482, &qword_1EC0B9358, &unk_1C4F0EE90);
            sub_1C4410364();
          }

          while (!v185);
LABEL_160:
          sub_1C44E76B8();
          sub_1C44358D4();
        }

        else
        {
LABEL_195:
        }

        sub_1C4460234();
        MEMORY[0x1EEE9AC00](v661);
        sub_1C441FA00();
        v631 = sub_1C440DE0C();
        v638 = v470;
        v639 = 544108320;
        goto LABEL_197;
      case 77:
      case 78:
      case 97:
      case 100:
        v321 = sub_1C4400384();
        type metadata accessor for TimeOfDayBehaviorHistogram(v321);
        sub_1C4409A78();
        sub_1C442CA74();
        v322();
        v323 = sub_1C44322F4();
        type metadata accessor for LargeGeoHashBehaviorHistogram(v323);
        sub_1C442F674();
        sub_1C440F688();
        v324();
        v224 = 0;
        sub_1C448077C();
        sub_1C4614C70();
        sub_1C447F800();
        v325 = sub_1C4404328();
        sub_1C47F2310(v325, v326);
        sub_1C440167C();

        if (*(v82 + 16))
        {
          sub_1C4480394();
          sub_1C4417190(MEMORY[0x1E69E7CC0]);
          sub_1C4408A38();
          sub_1C4424CB8();
          do
          {
            sub_1C4433CD0();
            sub_1C4409CA0();
            sub_1C447F0A0();
            v327 = sub_1C442DF38();
            sub_1C445E80C(v327);
            v329 = v328;
            v330 = sub_1C44160A0(v328);
            v331(v330);
            v332 = sub_1C4469170();
            v333(v332);
            if ((sub_1C445C170() & 1) == 0)
            {
              sub_1C4411CDC();
              sub_1C459E190();
              v329 = a10;
            }

            sub_1C44159E8();
            v224 = v695;
            if (v154)
            {
              sub_1C4410C88(v334);
              sub_1C459E190();
              v329 = a10;
            }

            *(v329 + 16) = v69;
            sub_1C43FD780();
            v335 = sub_1C44BBC3C();
            sub_1C44CDA30(v335, v336, &qword_1EC0B9358, &unk_1C4F0EE90);
            sub_1C4410364();
          }

          while (!v185);
LABEL_74:
          sub_1C44E76B8();
          sub_1C44358D4();
        }

        else
        {
LABEL_172:
        }

        sub_1C4460234();
        MEMORY[0x1EEE9AC00](v630);
        sub_1C441FA00();
        v631 = sub_1C440DE0C();
        v638 = v224;
        v639 = 544497952;
LABEL_197:
        sub_1C47F0808(v631, v632, v633, v634, v635, v636, v639, v637, v664, v665, v666, v667, v668, v669, v670, v671, v672, v673, v674, v675);
        if (v638)
        {
          goto LABEL_198;
        }

        goto LABEL_200;
      case 79:
      case 103:
        v378 = sub_1C4400384();
        type metadata accessor for DayOfWeekBehaviorHistogram(v378);
        sub_1C4409A78();
        sub_1C442CA74();
        v379();
        v380 = sub_1C442FD94();
        v382 = sub_1C43FC338(v380, v381);
        type metadata accessor for WiFiBehaviorHistogram(v382);
        sub_1C4409A78();
        sub_1C442232C();
        sub_1C442EB34();
        v383();
        sub_1C4495CF4();
        sub_1C4615834();
        sub_1C44A1D40();
        v384 = sub_1C4404328();
        sub_1C47F2060(v384, v385);
        sub_1C440167C();

        v386 = *(v82 + 16);
        if (v386)
        {
          sub_1C4422ADC();
          sub_1C440AAE4(MEMORY[0x1E69E7CC0]);
          sub_1C47F5F1C(v386, v387);
          sub_1C443FC58();
          v389 = v82 + v388;
          v390 = v686;
          sub_1C443F600(v685);
          v391 = v675;
          do
          {
            sub_1C4405BE0();
            sub_1C4460108(v392, v393, v394, v395);
            v396 = v685;
            sub_1C4405BE0();
            sub_1C4460108(v397, v398, v399, v400);
            sub_1C443E31C();
            sub_1C4405BE0();
            sub_1C44CDA30(v401, v402, v403, v404);
            sub_1C446BED8((v390 + *(v92 + 12)));
            v406 = sub_1C44AE01C(v405);
            sub_1C44022CC(v406);
            v408 = v407;
            (*(v407 + 32))(v391, v396, v92);
            v410 = *(v408 + 8);
            v409 = v408 + 8;
            v410(v390, v92);
            if ((sub_1C445C170() & 1) == 0)
            {
              sub_1C4411CDC();
              sub_1C459E250();
              v92 = a10;
            }

            sub_1C440C4FC();
            v391 = v675;
            if (v154)
            {
              sub_1C442BB28(v411);
              sub_1C459E250();
              v391 = v675;
              v92 = a10;
            }

            *(v92 + 2) = v409;
            sub_1C43FD780();
            sub_1C44CDA30(v391, v412 + v413 * v396, &qword_1EC0B9370, &unk_1C4F0EEB0);
            v389 += v696;
            --v386;
          }

          while (v386);

          v95 = v697;
        }

        else
        {

          v92 = MEMORY[0x1E69E7CC0];
        }

        sub_1C4460234();
        MEMORY[0x1EEE9AC00](v643);
        sub_1C441FA00();
        v642 = sub_1C47F5FD0;
LABEL_178:
        v624 = v642;
        v627 = type metadata accessor for DayOfWeekBehaviorHistogram;
        v628 = sub_1C461E650;
        v622 = v698;
        goto LABEL_185;
      case 80:
      case 81:
      case 101:
      case 102:
        v109 = sub_1C442FD94();
        sub_1C4409678(v109, v110);
        v111 = v97;
        v112 = sub_1C43FBE94();
        type metadata accessor for TimeOfDayBehaviorHistogram(v112);
        sub_1C4409A78();
        sub_1C442EB34();
        v114 = v113();
        v115 = v97[4];
        v116 = sub_1C43FC338(v111, v111[3]);
        type metadata accessor for WiFiBehaviorHistogram(v116);
        sub_1C4409A78();
        v117 = 0;
        sub_1C442EB34();
        v119 = v118();
        sub_1C4614C70();
        sub_1C47E5B7C();
        v120 = sub_1C4404328();
        sub_1C47F2060(v120, v121);
        sub_1C440167C();

        v122 = v97[2];
        if (v122)
        {
          v693 = v119;
          v695 = v114;
          v697 = 0;
          sub_1C440AAE4(MEMORY[0x1E69E7CC0]);
          sub_1C47F5F1C(v122, v123);
          sub_1C443FC58();
          v125 = v111 + v124;
          v126 = v684;
          sub_1C443F600(v685);
          v127 = v678;
          do
          {
            v128 = v694;
            sub_1C4405BE0();
            sub_1C4460108(v129, v130, v131, v132);
            v133 = v685;
            sub_1C4405BE0();
            sub_1C4460108(v134, v135, v136, v137);
            v138 = *&v700[*(v126 + 48)];

            sub_1C44627AC();
            sub_1C4405BE0();
            sub_1C44CDA30(v139, v140, v141, v142);
            sub_1C446BED8((v111 + *(v126 + 48)));
            v144 = sub_1C44AE01C(v143);
            sub_1C44022CC(v144);
            v145 = v127;
            v147 = v146;
            (*(v146 + 32))(v145, v133, v128);
            v149 = *(v147 + 8);
            v148 = v147 + 8;
            v150 = sub_1C44333A0();
            v151(v150);
            if ((sub_1C445C170() & 1) == 0)
            {
              sub_1C4411CDC();
              sub_1C459E250();
              v128 = a10;
            }

            sub_1C440C4FC();
            v153 = v687;
            if (v154)
            {
              sub_1C442BB28(v152);
              sub_1C459E250();
              v128 = a10;
            }

            *(v128 + 16) = v148;
            v155 = *(v153 + 80);
            sub_1C43FC354();
            v127 = v678;
            sub_1C44CDA30(v678, v128 + v156 + *(v153 + 72) * v111, &qword_1EC0B9370, &unk_1C4F0EEB0);
            v125 += v696;
            --v122;
          }

          while (v122);

          v117 = v697;
        }

        else
        {

          v128 = MEMORY[0x1E69E7CC0];
        }

        sub_1C4460234();
        MEMORY[0x1EEE9AC00](v614);
        v615 = v698;
        v616 = v699;
        v617 = v672;
        *(&v664 - 4) = v699;
        *(&v664 - 3) = v617;
        LOBYTE(v662) = v701;
        sub_1C47F0530(v615, v128, sub_1C47F7928, (&v664 - 6), v616, type metadata accessor for TimeOfDayBehaviorHistogram, 544497952, sub_1C461DC50, v664, v665, v666, v667, v668, v669, v670, v671, v672, v673, v674, v675);
        if (v117)
        {

          goto LABEL_199;
        }

        sub_1C4482CDC();

        goto LABEL_201;
      case 82:
      case 106:
        v438 = sub_1C4400384();
        type metadata accessor for DayOfWeekBehaviorHistogram(v438);
        sub_1C4409A78();
        sub_1C442CA74();
        v439();
        v440 = sub_1C44322F4();
        type metadata accessor for FocusModeBehaviorHistogram(v440);
        sub_1C442F674();
        sub_1C440F688();
        v441();
        sub_1C4495CF4();
        sub_1C4615834();
        sub_1C44A1D40();
        v442 = sub_1C4404328();
        sub_1C47F2060(v442, v443);
        sub_1C440167C();

        v444 = *(v82 + 16);
        if (v444)
        {
          sub_1C4422ADC();
          sub_1C440AAE4(MEMORY[0x1E69E7CC0]);
          sub_1C47F5F1C(v444, v445);
          sub_1C443FC58();
          v94 = (v82 + v446);
          sub_1C443F600(v685);
          sub_1C44CD03C();
          do
          {
            sub_1C4433CD0();
            sub_1C445FD2C();
            sub_1C4460108(v447, v448, v449, v450);
            sub_1C447535C();
            sub_1C44627AC();
            sub_1C445FD2C();
            sub_1C44CDA30(v451, v452, v453, v454);
            sub_1C446BED8((v82 + *(v69 + 48)));
            v456 = sub_1C44AE01C(v455);
            sub_1C445E80C(v456);
            v458 = v457;
            v459 = sub_1C44578C0(v457);
            v460(v459);
            v461 = *(v458 + 8);
            v92 = (v458 + 8);
            v461(v82, v69);
            if ((sub_1C445C170() & 1) == 0)
            {
              sub_1C4411CDC();
              sub_1C459E250();
              v92 = a10;
            }

            v82 = *(v92 + 2);
            v462 = *(v92 + 3);
            v69 = v82 + 1;
            v463 = v676;
            if (v82 >= v462 >> 1)
            {
              sub_1C4410C88(v462);
              sub_1C459E250();
              sub_1C44CD03C();
              v92 = a10;
            }

            *(v92 + 2) = v69;
            sub_1C43FD780();
            sub_1C44CDA30(v463, v464 + v465 * v82, &qword_1EC0B9370, &unk_1C4F0EEB0);
            sub_1C4455388();
          }

          while (!v185);

          sub_1C447CD98();
        }

        else
        {

          v92 = MEMORY[0x1E69E7CC0];
        }

        sub_1C4460234();
        MEMORY[0x1EEE9AC00](v656);
        sub_1C441FA00();
        v624 = sub_1C47F5FAC;
        v627 = type metadata accessor for DayOfWeekBehaviorHistogram;
        v628 = sub_1C461E650;
        v622 = v94;
LABEL_185:
        v623 = v92;
        v629 = 544108320;
        goto LABEL_186;
      case 83:
      case 84:
      case 104:
      case 105:
        v157 = sub_1C4400384();
        type metadata accessor for TimeOfDayBehaviorHistogram(v157);
        sub_1C4409A78();
        sub_1C442CA74();
        v158();
        v159 = sub_1C44322F4();
        type metadata accessor for WiFiBehaviorHistogram(v159);
        sub_1C442F674();
        sub_1C440F688();
        v160();
        sub_1C4495CF4();
        sub_1C4614C70();
        sub_1C44A1D40();
        v161 = sub_1C4404328();
        sub_1C47F2060(v161, v162);
        sub_1C440167C();

        v163 = *(v82 + 16);
        if (v163)
        {
          sub_1C4422ADC();
          sub_1C440AAE4(MEMORY[0x1E69E7CC0]);
          sub_1C47F5F1C(v163, v164);
          sub_1C443FC58();
          sub_1C443F600(v685);
          do
          {
            sub_1C4433CD0();
            sub_1C445FD2C();
            sub_1C4460108(v165, v166, v167, v168);
            sub_1C447535C();
            sub_1C44627AC();
            sub_1C445FD2C();
            sub_1C44CDA30(v169, v170, v171, v172);
            sub_1C446BED8((v82 + *(v69 + 48)));
            v174 = sub_1C44AE01C(v173);
            sub_1C445E80C(v174);
            v176 = v175;
            v177 = sub_1C44578C0(v175);
            v178(v177);
            v180 = *(v176 + 8);
            v179 = (v176 + 8);
            v180(v82, v69);
            if ((sub_1C445C170() & 1) == 0)
            {
              sub_1C4411CDC();
              sub_1C459E250();
              v179 = a10;
            }

            v82 = v179[2];
            v181 = v179[3];
            v69 = v82 + 1;
            v182 = v680;
            if (v82 >= v181 >> 1)
            {
              sub_1C4410C88(v181);
              sub_1C459E250();
              v182 = v680;
              v179 = a10;
            }

            v179[2] = v69;
            sub_1C43FD780();
            sub_1C44CDA30(v182, v183 + v184 * v82, &qword_1EC0B9370, &unk_1C4F0EEB0);
            sub_1C4455388();
          }

          while (!v185);
LABEL_65:

          sub_1C447CD98();
        }

        else
        {
LABEL_170:
        }

        sub_1C4460234();
        MEMORY[0x1EEE9AC00](v621);
        sub_1C441FA00();
        v622 = sub_1C440DE0C();
        v629 = 544497952;
LABEL_186:
        sub_1C47F0530(v622, v623, v624, v625, v626, v627, v629, v628, v664, v665, v666, v667, v668, v669, v670, v671, v672, v673, v674, v675);
LABEL_187:
        if (v95)
        {
LABEL_198:

LABEL_199:
        }

        else
        {
LABEL_200:
          sub_1C4482CDC();

LABEL_201:

LABEL_202:
        }

        break;
      default:
        sub_1C456902C(&qword_1EC0B8F08, &unk_1C4F0E9B0);
        sub_1C4403FC0();
        v103 = sub_1C4EF9CD8();
        sub_1C43FCF7C(v103);
        v105 = *(v104 + 72);
        sub_1C447CBCC();
        v106 = swift_allocObject();
        *(v106 + 16) = xmmword_1C4F0D130;
        sub_1C4EF9CC8();
        sub_1C4460234();
        MEMORY[0x1EEE9AC00](v107);
        sub_1C4406E68();
        sub_1C440D430();
        sub_1C47EF8D8(v698, v106, sub_1C47F79B8, v108, v97, &qword_1EC0B92B0, &qword_1C4F0EDE0, sub_1C47F4BF0, v664, v665, v666, v667, v668, v669, v670, v671, v672, v673, v674, v675, v676);
        sub_1C44D0B48();
        swift_setDeallocating();
LABEL_75:
        sub_1C49E1584();
        break;
    }
  }

  sub_1C43FBC80();
}