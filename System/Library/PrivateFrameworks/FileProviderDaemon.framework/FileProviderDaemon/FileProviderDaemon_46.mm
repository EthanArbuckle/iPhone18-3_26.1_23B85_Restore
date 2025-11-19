uint64_t sub_1CF4CF1F8(unsigned __int8 a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *(v7 + 16);
  if (a4)
  {
    a3 = 0;
  }

  result = sub_1CF37A274(a1, a2, a3, a5, a6, a7);
  if (v8)
  {
    return v11;
  }

  return result;
}

uint64_t sub_1CF4CF240(unsigned __int8 a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *(v7 + 24);
  if (a4)
  {
    a3 = 0;
  }

  result = sub_1CF37A274(a1, a2, a3, a5, a6, a7);
  if (v8)
  {
    return v11;
  }

  return result;
}

uint64_t sub_1CF4CF288(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(v6 + 16);
  if (a3)
  {
    a2 = 0;
  }

  result = sub_1CF37A8D0(a1, a2, a4, a5, a6);
  if (v7)
  {
    return v10;
  }

  return result;
}

uint64_t sub_1CF4CF2D0(char a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a3;
  v22 = a4;
  v8 = *(*v5 + 632);
  v9 = *(*v5 + 640);
  v10 = *(*v5 + 648);
  v11 = *(*v5 + 656);
  if (a2)
  {
    type metadata accessor for Job();
    sub_1CF05194C(a1);
    v23 = v8;
    v24 = v9;
    v25 = v10;
    v26 = v11;
    type metadata accessor for ItemJob();
    v12 = swift_dynamicCastMetatype();
    if (v12)
    {
      v13 = v5[3];
      goto LABEL_6;
    }
  }

  else
  {
    type metadata accessor for Job();
    sub_1CF05194C(a1);
    v23 = v8;
    v24 = v9;
    v25 = v10;
    v26 = v11;
    type metadata accessor for ItemJob();
    v12 = swift_dynamicCastMetatype();
    if (v12)
    {
      v14 = v5[2];
LABEL_6:
      v15 = sub_1CF37CAC0(a1, v21, v22, a5);
      if (!v27)
      {
        LOBYTE(v9) = v15;
      }

      return v9 & 1;
    }
  }

  v9 = &v21;
  v16 = MEMORY[0x1EEE9AC00](v12);
  v17 = v27;
  v18 = (*(a5 + 24))(sub_1CF4D2DCC, v16);
  if (!v17)
  {
    v20 = v18;
    LOBYTE(v9) = [v18 next];
  }

  return v9 & 1;
}

uint64_t sub_1CF4CF4D4(uint64_t a1, char a2, char a3)
{
  v15[1] = 0xE000000000000000;
  sub_1CF9E7948();
  v17 = 0;
  v18 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0xD000000000000033, 0x80000001CFA4F6D0);
  v15[0] = 2;
  v5 = MEMORY[0x1E69E6530];
  v6 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v6);

  MEMORY[0x1D3868CC0](0x20444E412020200ALL, 0xEF203D2065707974);
  v7 = qword_1CFA06668[a2];
  v16 = v5;
  v15[0] = v7;
  v8 = sub_1CEFF8EA0(v15);
  v10 = v9;
  sub_1CEFCCC44(v15, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (!v10)
  {
    goto LABEL_4;
  }

  MEMORY[0x1D3868CC0](v8, v10);

  MEMORY[0x1D3868CC0](0x20444E412020200ALL, 0xEF203D2065646973);
  v16 = v5;
  v15[0] = a3 & 1;
  v11 = sub_1CEFF8EA0(v15);
  v13 = v12;
  sub_1CEFCCC44(v15, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v13)
  {
    MEMORY[0x1D3868CC0](v11, v13);

    return v17;
  }

  else
  {
LABEL_4:
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF4CF70C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *(v3 + 16);
  v10 = sub_1CF37FABC(a1, a2, a3);
  if (!v4)
  {
    if (v10)
    {
      v10 = 1;
    }

    else
    {
      v11 = *(v5 + 24);
      v10 = sub_1CF37FABC(a1, a2, a3);
    }
  }

  return v10 & 1;
}

void *sub_1CF4CF7F8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t (**a7)(uint64_t (*)(void *a1), _BYTE *, void, void))
{
  v9 = *(v7 + 16);
  result = sub_1CF37AFCC(a1, a2, a3, a4 & 1, a5, a6, a7);
  if (v8)
  {
    return v11;
  }

  return result;
}

uint64_t sub_1CF4CF830(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, void *a7, uint64_t (**a8)(uint64_t (*)(void *a1), __n128))
{
  v10 = *(v8 + 16);
  result = sub_1CF37B928(a1, a2, a3, a4, a5 & 1, a6, a7, a8);
  if (v9)
  {
    return v12;
  }

  return result;
}

uint64_t sub_1CF4CF868(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35 = a4;
  v36 = a5;
  v33 = a3;
  v34 = a2;
  v32 = a1;
  v6 = *v5;
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1CF052AA0();

    sub_1CF527D90();

    v31 = v48;
    v46 = v48;
    v47 = v49;
    v8 = v6[79];
    v9 = v6[81];
    type metadata accessor for JobLockRule();
    swift_getWitnessTable();
    sub_1CF9E66B8();
    v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C1BB0, &unk_1CFA04800);
    swift_getWitnessTable();
    v30 = v10;
    sub_1CF9E7AC8();
    swift_getWitnessTable();
    v29 = sub_1CEFCCCEC(&qword_1EDEA3798, &unk_1EC4C1BB0, &unk_1CFA04800);
    sub_1CF9E7AA8();
    swift_getWitnessTable();
    v11 = sub_1CF9E7978();
    WitnessTable = swift_getWitnessTable();
    v12 = swift_getWitnessTable();
    v13 = sub_1CEFCCCEC(&qword_1EDEA3790, &unk_1EC4C1BB0, &unk_1CFA04800);
    v44 = v12;
    v45 = v13;
    v43 = swift_getWitnessTable();
    v14 = swift_getWitnessTable();
    v16 = sub_1CF054A5C(sub_1CF4D3720, 0, v11, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v14, MEMORY[0x1E69E7410], v15);

    result = swift_weakLoadStrong();
    if (result)
    {
      sub_1CF052B34();

      sub_1CF527D90();

      v38 = v48;
      v46 = v48;
      v47 = v49;
      v17 = v6[80];
      v18 = v6[82];
      type metadata accessor for JobLockRule();
      swift_getWitnessTable();
      sub_1CF9E66B8();
      swift_getWitnessTable();
      sub_1CF9E7AC8();
      swift_getWitnessTable();
      sub_1CF9E7AA8();
      swift_getWitnessTable();
      v19 = sub_1CF9E7978();
      v42 = swift_getWitnessTable();
      v40 = swift_getWitnessTable();
      v41 = v13;
      v39 = swift_getWitnessTable();
      v20 = swift_getWitnessTable();
      v22 = sub_1CF054A5C(sub_1CF4D3720, 0, v19, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v20, MEMORY[0x1E69E7410], v21);

      *&v48 = v16;
      sub_1CF1E8CF8(v22);
      v23 = sub_1CF8E44FC(v16);

      MEMORY[0x1EEE9AC00](v24);
      v28 = v32 & 1;
      MEMORY[0x1EEE9AC00](v25);
      v27[2] = v35;
      v27[3] = v36;
      v27[4] = v23;
      v27[5] = v37;
      v27[6] = v33;
      sub_1CF4C6B70(v34, sub_1CF4842AC, v26, sub_1CF4D3388, v27, v35, v36);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF4CFEA4(uint64_t a1, char a2)
{
  v7[1] = 0xE000000000000000;
  sub_1CF9E7948();
  v8 = 0;
  v9 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0x203D2065646973, 0xE700000000000000);
  v7[3] = MEMORY[0x1E69E6530];
  v7[0] = a2 & 1;
  v3 = sub_1CEFF8EA0(v7);
  v5 = v4;
  sub_1CEFCCC44(v7, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v5)
  {
    MEMORY[0x1D3868CC0](v3, v5);

    MEMORY[0x1D3868CC0](0xD000000000000038, 0x80000001CFA4F670);
    return v8;
  }

  else
  {
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF4CFFE0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *(*a3 + 640);
  v8 = *(*a3 + 656);
  v19 = *(*a3 + 648);
  v20 = *(*a3 + 632);
  sub_1CF0451E0(a1, &v21);
  v9 = v24;
  if (v24)
  {
    v10 = v25;
    __swift_project_boxed_opaque_existential_1(&v21, v24);
    v11 = (*(v10 + 16))(v9, v10);
    v13 = v12;
    __swift_destroy_boxed_opaque_existential_1(&v21);
    sub_1CEFDB148(v11, v13, a2);
  }

  else
  {
    sub_1CEFCCC44(&v21, &unk_1EC4C1BE0, &unk_1CF9FD400);
  }

  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = sub_1CF5A1C7C(a1);

    v16 = a4[3];
    v18 = a4[4];
    __swift_project_boxed_opaque_existential_1(a4, v16);
    if (v15 < 0)
    {
      MEMORY[0x1D3868CC0](0x3A70669286E27366, 0xA800000000000000);
      v26 = v15 & 0x7FFFFFFFFFFFFFFFLL;
      v21 = v7;
      v22 = v20;
      v23 = v8;
      v24 = v19;
    }

    else
    {
      MEMORY[0x1D3868CC0](0x3A73669286E27066, 0xA800000000000000);
      v26 = v15;
      v21 = v20;
      v22 = v7;
      v23 = v19;
      v24 = v8;
    }

    type metadata accessor for Job();
    swift_getWitnessTable();
    sub_1CF9E7FE8();
    v17 = sub_1CF9E7988();
    MEMORY[0x1D3868CC0](v17);

    sub_1CF4FB2BC(0, 0xE000000000000000, v16, v18);

    return 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF4D02A8(int a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v58 = a4;
  result = swift_weakLoadStrong();
  v16 = MEMORY[0x1E69E7CA8];
  v59 = a1;
  v60 = a2;
  if ((a1 & 1) == 0)
  {
    if (result)
    {
      sub_1CF052AA0();

      v17 = sub_1CF03B0B0();

      v57 = a5;
      if ((v17 & 1) == 0)
      {
        v18 = a3[3];
        v19 = a3[4];
        __swift_project_boxed_opaque_existential_1(a3, v18);
        sub_1CF4FB2BC(0xD000000000000018, 0x80000001CFA46B30, v18, v19);
        v20 = a3[3];
        v21 = a3[4];
        v22 = __swift_project_boxed_opaque_existential_1(a3, v20);
        MEMORY[0x1EEE9AC00](v22);
        v53 = a6;
        v54 = a7;
        v55 = v8;
        sub_1CF4FB38C(8224, 0xE200000000000000, sub_1CF4D3318, &v51, v20, v16 + 8, v21);
      }

      v23 = a3[3];
      v24 = a3[4];
      __swift_project_boxed_opaque_existential_1(a3, v23);
      sub_1CF4FB2BC(0x72676B636162202BLL, 0xEC000000646E756FLL, v23, v24);
      v25 = a3[3];
      v26 = a3[4];
      v27 = __swift_project_boxed_opaque_existential_1(a3, v25);
      MEMORY[0x1EEE9AC00](v27);
      v28 = v50;
      v29 = a6;
      v51 = a6;
      v52 = a7;
      v53 = v8;
      v54 = v60;
      v55 = v58;
      v56 = v57;
      v30 = sub_1CF4D334C;
      v31 = v16 + 8;
      goto LABEL_10;
    }

    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (!result)
  {
    goto LABEL_18;
  }

  sub_1CF052B34();

  v32 = sub_1CF03B0B0();

  if ((v32 & 1) == 0)
  {
    v34 = a3[3];
    v35 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v34);
    sub_1CF4FB2BC(0xD000000000000018, 0x80000001CFA46B30, v34, v35);
    v25 = a3[3];
    v26 = a3[4];
    v36 = __swift_project_boxed_opaque_existential_1(a3, v25);
    MEMORY[0x1EEE9AC00](v36);
    v28 = &v51;
    v29 = a6;
    v53 = a6;
    v54 = a7;
    v55 = v8;
    v30 = sub_1CF4D32AC;
    v31 = MEMORY[0x1E69E7CA8] + 8;
LABEL_10:
    sub_1CF4FB38C(8224, 0xE200000000000000, v30, v28, v25, v31, v26);
    v33 = a7;
    LOBYTE(a1) = v59;
    goto LABEL_11;
  }

  v29 = a6;
  v33 = a7;
LABEL_11:
  v37 = a1 & 1;
  v38 = 16;
  if (a1)
  {
    v38 = 24;
  }

  v39 = *(*(v8 + v38) + 56);

  v40 = v60;
  sub_1CF336BFC(v60, a3, v29, v33);

  v41 = a3[3];
  v42 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v41);
  sub_1CF4FB2BC(0xD000000000000012, 0x80000001CFA46B50, v41, v42);
  v43 = a3[3];
  v44 = a3[4];
  v45 = __swift_project_boxed_opaque_existential_1(a3, v43);
  MEMORY[0x1EEE9AC00](v45);
  v51 = v29;
  v52 = v33;
  v53 = v8;
  LOBYTE(v54) = v37;
  v55 = v40;
  sub_1CF4FB38C(8224, 0xE200000000000000, sub_1CF4D32E0, v50, v43, MEMORY[0x1E69E7CA8] + 8, v44);
  v46 = a3[3];
  v47 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v46);
  sub_1CF4FB2BC(0x6A206D657469202BLL, 0xEB0000000073626FLL, v46, v47);
  if (v59)
  {
    v48 = *(v8 + 24);
  }

  else
  {
    v49 = *(v8 + 16);
  }

  return sub_1CF380E18(v40, a3, v29, v33);
}

uint64_t sub_1CF4D0800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  result = swift_weakLoadStrong();
  if (result)
  {
    a5();

    sub_1CF527F10();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1CF4D0878(uint64_t a1, char a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = *v10;
  v27 = 0;
  if (a3 >= 3u)
  {
    v13 = a2 & 1;
  }

  else
  {
    v13 = (a2 & 1) == 0;
  }

  v26 = v13;
  v16 = *(v12 + 632);
  v17 = a7;
  v18 = a8;
  v19 = *(v12 + 648);
  v20 = a9;
  v21 = a10;
  v22 = &v26;
  v23 = a4;
  v24 = a3;
  v25 = a6;
  v14[2] = a7;
  v14[3] = a8;
  v14[4] = a9;
  v14[5] = a10;
  v14[6] = a1;
  v14[7] = a6;
  v14[8] = v10;
  v14[9] = a5;
  v14[10] = &v27;
  sub_1CF4C6B70(a5, sub_1CF4D3228, v15, sub_1CF4D3270, v14, a8, *(a10 + 8));
  if (!v11 && v27 >= 1)
  {
    if (swift_weakLoadStrong())
    {
      sub_1CF058CE4();
    }
  }
}

uint64_t sub_1CF4D09B4(uint64_t a1, unsigned __int8 *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v32[0] = 0;
  v32[1] = 0xE000000000000000;
  sub_1CF9E7948();
  v34 = 0;
  v35 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0x203D2065646973, 0xE700000000000000);
  v16 = *a2;
  v17 = MEMORY[0x1E69E6530];
  v33 = MEMORY[0x1E69E6530];
  v32[0] = v16;
  v18 = sub_1CEFF8EA0(v32);
  v20 = v19;
  sub_1CEFCCC44(v32, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (!v20)
  {
    goto LABEL_5;
  }

  MEMORY[0x1D3868CC0](v18, v20);

  MEMORY[0x1D3868CC0](0xD000000000000016, 0x80000001CFA45CF0);
  v21 = (*(*(a12 + 8) + 32))(a1, a8);
  MEMORY[0x1D3868CC0](v21);

  MEMORY[0x1D3868CC0](0x70797420444E410ALL, 0xEC000000203D2065);
  v22 = qword_1CFA06668[a4];
  v33 = v17;
  v32[0] = v22;
  v23 = sub_1CEFF8EA0(v32);
  v25 = v24;
  sub_1CEFCCC44(v32, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (!v25)
  {
    goto LABEL_5;
  }

  MEMORY[0x1D3868CC0](v23, v25);

  MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA44140);
  v32[0] = 0;
  v26 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v26);

  MEMORY[0x1D3868CC0](0xD000000000000024, 0x80000001CFA44210);
  v33 = v17;
  v32[0] = a5;
  v27 = sub_1CEFF8EA0(v32);
  v29 = v28;
  sub_1CEFCCC44(v32, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v29)
  {
    MEMORY[0x1D3868CC0](v27, v29);

    return v34;
  }

  else
  {
LABEL_5:
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

void sub_1CF4D0C90(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v77 = a3;
  v84 = a5;
  v85 = a8;
  v73 = a6;
  v82 = a2;
  v83 = a10;
  v13 = *(*a4 + 632);
  v14 = *(*a4 + 656);
  v15 = *(*a4 + 648);
  v86 = *(*a4 + 640);
  v12 = v86;
  v87 = v13;
  v88 = v14;
  v89 = v15;
  v16 = type metadata accessor for PersistenceTrigger();
  v17 = sub_1CF9E75D8();
  v75 = *(v17 - 8);
  v18 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v72 - v19;
  v76 = v13;
  v86 = v13;
  v87 = v12;
  v80 = v14;
  v81 = v12;
  v79 = v15;
  v88 = v15;
  v89 = v14;
  v21 = type metadata accessor for PersistenceTrigger();
  v22 = sub_1CF9E75D8();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v72 - v25;
  v90 = a1;
  v74 = a4;
  if ((a1 & 0x8000000000000000) == 0)
  {
    v27 = *(v21 - 1);
    (*(v27 + 16))(v26, v82, v21);
    (*(v27 + 56))(v26, 0, 1, v21);
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v29 = Strong;
      v86 = v76;
      v87 = v81;
      v88 = v79;
      v89 = v80;
      type metadata accessor for JobRegistry();
      v30 = v78;
      sub_1CF66DE54(v90, v26, v77, v29, v84, v85, *(v83 + 8));
      LODWORD(v82) = v33;
      if (v30)
      {
        (*(v23 + 8))(v26, v22);

        return;
      }

      v77 = v31;
      v78 = 0;
      v40 = v26;
      v41 = v32;
      (*(v23 + 8))(v40, v22);

      v42 = v90;
      v43 = sub_1CF057B00(v90);
      v45 = v44;
      v47 = v46;
      sub_1CF03C530(v43, v44, v46);
      v48 = v77;
      v49 = v82;
      v50 = sub_1CF95F010(v77, v41, v82, v43, v45, v47);
      sub_1CF03D7A8(v43, v45, v47);
      if (v50)
      {
        v51 = v48;
        v52 = v41;
LABEL_23:
        sub_1CF03D7A8(v51, v52, v49);
        return;
      }

      v62 = *(v42 + 96);
      v63 = *(v42 + 104);
      *(v42 + 96) = v48;
      *(v42 + 104) = v41;
      v64 = *(v42 + 112);
      *(v42 + 112) = v49;
      sub_1CF03C530(v48, v41, v49);
      sub_1CF03D7A8(v62, v63, v64);
      v65 = v78;
      sub_1CF4C7418(v42, v84, v85, v83);
      if (!v65 && v49 == 1)
      {
        sub_1CF03D7A8(v48, v41, 1u);
        v66 = v73;
        v67 = *v73 + 1;
        if (!__OFADD__(*v73, 1))
        {
          goto LABEL_21;
        }

        __break(1u);
      }

      v51 = v48;
      v52 = v41;
      goto LABEL_23;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v72 = v17;
  sub_1CF060FD0(v21, v20);
  (*(*(v16 - 8) + 56))(v20, 0, 1, v16);
  if (swift_weakLoadStrong())
  {
    v34 = v90 & 0x7FFFFFFFFFFFFFFFLL;
    v86 = v81;
    v87 = v76;
    v88 = v80;
    v89 = v79;
    type metadata accessor for JobRegistry();
    v35 = sub_1CF0537A0();

    v36 = v78;
    sub_1CF66DE54(v34, v20, v77, v35, v84, v85, *(v83 + 8));
    LODWORD(v82) = v39;
    if (v36)
    {
      (*(v75 + 8))(v20, v72);

      return;
    }

    v53 = v38;
    v77 = v37;
    v78 = 0;
    (*(v75 + 8))(v20, v72);

    v54 = v90;
    v55 = sub_1CF057B00(v90);
    v57 = v56;
    v59 = v58;
    sub_1CF03C530(v55, v56, v58);
    v60 = v77;
    v49 = v82;
    v61 = sub_1CF95F010(v77, v53, v82, v55, v57, v59);
    sub_1CF03D7A8(v55, v57, v59);
    if (v61)
    {
      v51 = v60;
      v52 = v53;
      goto LABEL_23;
    }

    v68 = *(v34 + 96);
    v69 = *(v34 + 104);
    *(v34 + 96) = v60;
    *(v34 + 104) = v53;
    v70 = *(v34 + 112);
    *(v34 + 112) = v49;
    sub_1CF03C530(v60, v53, v49);
    sub_1CF03D7A8(v68, v69, v70);
    v71 = v78;
    sub_1CF4C7418(v54, v84, v85, v83);
    if (v71 || v49 != 1)
    {
      v51 = v60;
      v52 = v53;
      goto LABEL_23;
    }

    sub_1CF03D7A8(v60, v53, 1u);
    v66 = v73;
    v67 = *v73 + 1;
    if (!__OFADD__(*v73, 1))
    {
LABEL_21:
      *v66 = v67;
      return;
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_26:
  __break(1u);
}

uint64_t sub_1CF4D12EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v71 = a4;
  v73 = a3;
  v74 = a2;
  v7 = *(*v4 + 632);
  v8 = *(*v4 + 656);
  v9 = *(*v4 + 648);
  v76 = *(*v4 + 640);
  v6 = v76;
  v77 = v7;
  v78 = v8;
  v79 = v9;
  v10 = type metadata accessor for PersistenceTrigger();
  v67 = *(v10 - 8);
  v68 = v10;
  v11 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v75 = &v59 - v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v64 = *(AssociatedTypeWitness - 8);
  v65 = AssociatedTypeWitness;
  v14 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v63 = &v59 - v15;
  v16 = swift_getAssociatedTypeWitness();
  v61 = *(v16 - 8);
  v62 = v16;
  v17 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v69 = &v59 - v18;
  v76 = v7;
  v77 = v6;
  v78 = v9;
  v79 = v8;
  type metadata accessor for PersistenceTrigger.AffectedGlobalJobs();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v20 = sub_1CF9E75D8();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = (&v59 - v22);
  v76 = v7;
  v77 = v6;
  v78 = v9;
  v79 = v8;
  v66 = type metadata accessor for PersistenceTrigger();
  v70 = a1;
  sub_1CF045C68(v66, v23);
  if ((*(*(TupleTypeMetadata2 - 8) + 48))(v23, 1, TupleTypeMetadata2) == 1)
  {
    v25 = v71;
    v24 = v72;
    v27 = v73;
    v26 = v74;
    v28 = v70;
    v29 = v80;
  }

  else
  {
    v60 = *v23;
    v34 = v23 + *(TupleTypeMetadata2 + 48);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      v42 = *v34;
      v43 = v62;
      v44 = swift_getTupleTypeMetadata2();
      v45 = v61;
      v46 = &v34[*(v44 + 48)];
      v47 = v69;
      (*(v61 + 32))(v69, v46, v43);
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v25 = v71;
      v28 = v70;
      v49 = v42;
      v50 = v43;
      v51 = v73;
      v26 = v74;
      v52 = v43;
      v29 = v80;
      v24 = v72;
      sub_1CF4D0878(v70, 0, v49, v47, v74, v60, v52, v73, AssociatedConformanceWitness, v71);
      v30 = v75;
      if (v24)
      {
        return (*(v45 + 8))(v69, v50);
      }

      (*(v45 + 8))(v69, v50);
      v27 = v51;
      goto LABEL_4;
    }

    v27 = v73;
    v26 = v74;
    v29 = v80;
    v30 = v75;
    if (EnumCaseMultiPayload == 1)
    {
      LODWORD(v69) = *v34;
      v36 = v65;
      v37 = swift_getTupleTypeMetadata2();
      v38 = v64;
      v39 = v63;
      (*(v64 + 32))(v63, &v34[*(v37 + 48)], v36);
      v40 = v36;
      v41 = swift_getAssociatedConformanceWitness();
      v25 = v71;
      v28 = v70;
      v24 = v72;
      sub_1CF4D0878(v70, 1, v69, v39, v26, v60, v40, v27, v41, v71);
      if (v24)
      {
        return (*(v38 + 8))(v39, v40);
      }

      (*(v38 + 8))(v39, v40);
      v29 = v80;
      goto LABEL_4;
    }

    MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
    v25 = v71;
    v53 = v72;
    v54 = *(v71 + 32);
    result = v54(sub_1CF480E34);
    if (v53)
    {
      return result;
    }

    v55 = *(v25 + 24);
    if (v55(v27, v25))
    {
      (v54)(sub_1CF4D1C20, 0, v27, v25);
      v56 = v55(v27, v25);
      v28 = v70;
      if (v56)
      {
        Strong = swift_weakLoadStrong();
        v30 = v75;
        if (Strong)
        {
          sub_1CF058CE4();
        }

        v24 = 0;
        v26 = v74;
      }

      else
      {
        v24 = 0;
        v26 = v74;
        v30 = v75;
      }

      goto LABEL_4;
    }

    v24 = 0;
    v28 = v70;
  }

  v30 = v75;
LABEL_4:
  v31 = v29[2];
  result = sub_1CF37DEF0(v28, v26, v27, v25);
  if (!v24)
  {
    v33 = v29[3];
    sub_1CF060FD0(v66, v30);
    sub_1CF37DEF0(v30, v26, v27, v25);
    (*(v67 + 8))(v30, v68);
    v58 = v29[4];
    return sub_1CF34EA34(v28, v26, v27, v25);
  }

  return result;
}

uint64_t sub_1CF4D1A40(uint64_t a1, uint64_t a2)
{
  v12[1] = 0xE000000000000000;
  sub_1CF9E7948();
  v14 = 0;
  v15 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0xD000000000000046, 0x80000001CFA4F5A0);
  v3 = MEMORY[0x1E69E6530];
  v13 = MEMORY[0x1E69E6530];
  v12[0] = a2;
  v4 = sub_1CEFF8EA0(v12);
  v6 = v5;
  sub_1CEFCCC44(v12, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (!v6)
  {
    goto LABEL_4;
  }

  MEMORY[0x1D3868CC0](v4, v6);

  MEMORY[0x1D3868CC0](0xD00000000000001CLL, 0x80000001CFA4F5F0);
  v12[0] = 0;
  v7 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v7);

  MEMORY[0x1D3868CC0](0xD000000000000027, 0x80000001CFA4F610);
  v13 = v3;
  v12[0] = a2;
  v8 = sub_1CEFF8EA0(v12);
  v10 = v9;
  sub_1CEFCCC44(v12, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v10)
  {
    MEMORY[0x1D3868CC0](v8, v10);

    return v14;
  }

  else
  {
LABEL_4:
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF4D1C20()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000026, 0x80000001CFA4F540);
  v0 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v0);

  MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA442D0);
  v1 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v1);

  MEMORY[0x1D3868CC0](0xD000000000000027, 0x80000001CFA4F570);
  return 0;
}

void sub_1CF4D1D38(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *(v3 + 16);
  sub_1CF37EF5C(a1, a2, a3);
  if (!v4)
  {
    v10 = *(v5 + 24);
    sub_1CF37EF5C(a1, a2, a3);
    v11 = *(v5 + 32);
    v12 = sub_1CF344470(a1, a2, a3);
    MEMORY[0x1EEE9AC00](v12);
    v13[2] = a2;
    v13[3] = a3;
    v13[4] = v5;
    v13[5] = a1;
    sub_1CF4C6B70(a1, sub_1CF37F0CC, 0, sub_1CF4D2DA8, v13, a2, *(a3 + 8));
    (*(a3 + 32))(sub_1CF4D2360, 0, a2, a3);
  }
}

uint64_t sub_1CF4D1E60(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v68 = a3;
  v69 = a4;
  v71 = a2;
  v7 = *a2;
  v8 = sub_1CF9E5CF8();
  v66 = *(v8 - 8);
  v67 = v8;
  v9 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v70 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1CF9E6118();
  v65 = *(v11 - 8);
  v12 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v16 = a1 & 0x7FFFFFFFFFFFFFFFLL;

  v17 = sub_1CF9E6108();
  v18 = sub_1CF9E7288();
  v19 = os_log_type_enabled(v17, v18);
  v63 = v7;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v59 = v20;
    v60 = swift_slowAlloc();
    v72 = v60;
    *v20 = 136446210;
    v21 = v7[79];
    v22 = v7;
    v23 = v7[80];
    v61 = v11;
    v62 = a5;
    v24 = v22[81];
    v25 = a1;
    v26 = v22[82];

    a1 = v25;
    v27 = sub_1CF0570E4(v25);
    v29 = v28;

    v30 = sub_1CEFD0DF0(v27, v29, &v72);
    a5 = v62;

    v31 = v59;
    *(v59 + 1) = v30;
    v32 = v31;
    _os_log_impl(&dword_1CEFC7000, v17, v18, "recovering running job %{public}s", v31, 0xCu);
    v33 = v60;
    __swift_destroy_boxed_opaque_existential_1(v60);
    MEMORY[0x1D386CDC0](v33, -1, -1);
    MEMORY[0x1D386CDC0](v32, -1, -1);

    (*(v65 + 8))(v14, v61);
  }

  else
  {

    (*(v65 + 8))(v14, v11);
  }

  if (a1 >= 0)
  {
    v34 = a1;
  }

  else
  {
    v34 = v16;
  }

  sub_1CF2F462C();
  v35 = swift_allocError();
  *v36 = 0;
  *(v36 + 8) = 0;
  *(v36 + 16) = -1;
  v38 = *(v34 + 96);
  v37 = *(v34 + 104);
  *(v34 + 96) = v35;
  *(v34 + 104) = 0;
  v39 = *(v34 + 112);
  *(v34 + 112) = 3;
  sub_1CF03D7A8(v38, v37, v39);
  v40 = *(v71[2] + 56);

  v41 = v70;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v43 = v42;
  v44 = v67;
  v45 = *(v66 + 8);
  result = v45(v41, v67);
  v47 = v43 * 1000000000.0;
  if (COERCE__INT64(fabs(v43 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v47 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v47 >= 9.22337204e18)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v48 = v64;
  sub_1CF333918(a1, v47, v68, v69, a5);

  if (v48)
  {
    return 1;
  }

  v49 = *(v71[3] + 56);
  v50 = v63[79];
  v51 = v63[80];
  v52 = v63[81];
  v53 = v63[82];
  v54 = sub_1CF0452C8(a1);

  v55 = v70;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v57 = v56;
  result = v45(v55, v44);
  v58 = v57 * 1000000000.0;
  if (COERCE__INT64(fabs(v57 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_19;
  }

  if (v58 <= -9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v58 < 9.22337204e18)
  {
    sub_1CF333918(v54, v58, v68, v69, a5);

    return 1;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1CF4D2360()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000026, 0x80000001CFA4F540);
  v0 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v0);

  MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA442D0);
  v1 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v1);

  return 0;
}

uint64_t sub_1CF4D2458()
{
  v1 = v0;
  v2 = *(v0 + 16);
  sub_1CF37F600();
  v3 = *(v1 + 24);
  sub_1CF37F600();
  v4 = *(v1 + 32);
  return sub_1CF345918();
}

void sub_1CF4D2490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1CF9E64A8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = (&v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (swift_weakLoadStrong())
  {
    v13 = sub_1CF042F4C();

    *v12 = v13;
    (*(v9 + 104))(v12, *MEMORY[0x1E69E8020], v8);
    v14 = sub_1CF9E64D8();
    (*(v9 + 8))(v12, v8);
    if (v14)
    {
      v15 = *(v4 + 32);
      sub_1CF3460B0(a1, a2, a3);
      return;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1CF4D25F8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 64);

  swift_weakDestroy();
  v5 = *(v0 + 80);

  v6 = *(v0 + 88);
}

uint64_t sub_1CF4D2658()
{
  v0 = sub_1CF0529A8();
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 64);

  swift_weakDestroy();
  v5 = *(v0 + 80);

  v6 = *(v0 + 88);

  return v0;
}

uint64_t sub_1CF4D26C0()
{
  sub_1CF4D2658();

  return swift_deallocClassInstance();
}

uint64_t sub_1CF4D26F0()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C05D0, &unk_1CF9FE620);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1CF9FC3C0;
  v3 = v0[2];
  v4 = v1[79];
  v5 = v1[80];
  v6 = v1[81];
  v7 = v1[82];
  *(v2 + 56) = type metadata accessor for SQLItemJobRegistry();
  *(v2 + 64) = &off_1F4BFD928;
  *(v2 + 32) = v3;
  v8 = v0[3];
  *(v2 + 96) = type metadata accessor for SQLItemJobRegistry();
  *(v2 + 104) = &off_1F4BFD928;
  *(v2 + 72) = v8;
  v9 = v0[4];
  *(v2 + 136) = type metadata accessor for SQLBackgroundDownloader();
  *(v2 + 144) = &off_1F4BFCA18;
  *(v2 + 112) = v9;

  return v2;
}

uint64_t (*sub_1CF4D2978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))(uint64_t a1)
{
  v23 = a8;
  v13 = a1;
  v14 = *(a5 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](a1);
  v17 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17, v16);
  v18 = (*(v14 + 80) + 65) & ~*(v14 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = a3;
  *(v19 + 24) = a4;
  *(v19 + 32) = a5;
  *(v19 + 40) = a6;
  v20 = v23;
  *(v19 + 48) = a7;
  *(v19 + 56) = v20;
  *(v19 + 64) = v13 & 1;
  (*(v14 + 32))(v19 + v18, v17, a5);
  return sub_1CF4D2F28;
}

uint64_t (*sub_1CF4D2AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))(uint64_t a1)
{
  v23 = a8;
  v13 = a1;
  v14 = *(a5 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](a1);
  v17 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17, v16);
  v18 = (*(v14 + 80) + 65) & ~*(v14 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = a3;
  *(v19 + 24) = a4;
  *(v19 + 32) = a5;
  *(v19 + 40) = a6;
  v20 = v23;
  *(v19 + 48) = a7;
  *(v19 + 56) = v20;
  *(v19 + 64) = v13 & 1;
  (*(v14 + 32))(v19 + v18, v17, a5);
  return sub_1CF4D308C;
}

uint64_t sub_1CF4D2C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(a7 + 32);
  result = v10(sub_1CF4D2844, 0, a4, a7);
  if (!v7)
  {
    v10(sub_1CF4D2860, 0, a4, a7);
    v10(sub_1CF4D287C, 0, a4, a7);
    v10(sub_1CF4D2898, 0, a4, a7);
    return v10(sub_1CF4D28B4, 0, a4, a7);
  }

  return result;
}

uint64_t sub_1CF4D2E4C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_1CF057C00();
  *a2 = result;
  return result;
}

uint64_t objectdestroyTm_1()
{
  v1 = *(*(v0 + 32) - 8);
  v2 = *(v1 + 64);
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 65) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1CF4D30A4(uint64_t a1, uint64_t (*a2)(uint64_t, void, unint64_t, void, void))
{
  v3 = *(v2 + 40);
  v4 = *(v2 + 48);
  v6 = *(v2 + 56);
  return a2(a1, *(v2 + 64), v2 + ((*(*(*(v2 + 32) - 8) + 80) + 65) & ~*(*(*(v2 + 32) - 8) + 80)), *(v2 + 16), *(v2 + 24));
}

uint64_t sub_1CF4D3160()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1CF4CAFF4();
}

uint64_t sub_1CF4D31C0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  return sub_1CF4CAD6C();
}

unint64_t sub_1CF4D31D4()
{
  result = qword_1EC4C0830;
  if (!qword_1EC4C0830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C0830);
  }

  return result;
}

uint64_t sub_1CF4D32E0(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 32);
  return sub_1CF4CF868(v5, v6, a1, v3, v4);
}

void sub_1CF4D334C(void *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = *(v1[4] + 32);
  sub_1CF34F270(v5, a1, v6, v7, v3, v4);
}

uint64_t sub_1CF4D3388(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1CF4CFFE0(a1, *(v1 + 32), *(v1 + 40), *(v1 + 48)) & 1;
}

uint64_t objectdestroy_6Tm()
{
  v1 = *(*(v0 + 32) - 8);
  v2 = (*(v1 + 80) + 65) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);
  v4 = *(v0 + v3);

  return swift_deallocObject();
}

uint64_t sub_1CF4D3474(uint64_t a1, uint64_t (*a2)(uint64_t, void, unint64_t, void))
{
  v3 = *(v2 + 56);
  v4 = *(*(v2 + 32) - 8);
  v5 = (*(v4 + 80) + 65) & ~*(v4 + 80);
  return a2(a1, *(v2 + 64), v2 + v5, *(v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1CF4D35A8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1CF4C7118(a1, *(v1 + 32), *(v1 + 40));
}

uint64_t sub_1CF4D35B4(uint64_t a1)
{
  v2 = *(v1 + 64);
  v3 = *v2;
  *v2 = a1;

  sub_1CF09575C(v3);
  return 0;
}

uint64_t sub_1CF4D35F8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 48);
  return sub_1CF3EDFB0(a1, *(v1 + 32), *(v1 + 40));
}

unint64_t sub_1CF4D3628(uint64_t a1)
{
  result = sub_1CF4D3650();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CF4D3650()
{
  result = qword_1EC4C0840;
  if (!qword_1EC4C0840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C0840);
  }

  return result;
}

unint64_t sub_1CF4D36A4(uint64_t a1)
{
  result = sub_1CF4D36CC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CF4D36CC()
{
  result = qword_1EDEA42D0[0];
  if (!qword_1EDEA42D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDEA42D0);
  }

  return result;
}

unint64_t sub_1CF4D3774()
{
  result = qword_1EC4C0848;
  if (!qword_1EC4C0848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C0848);
  }

  return result;
}

uint64_t sub_1CF4D37C8(uint64_t result)
{
  if ((result & 0x8000000000000000) == 0)
  {
    v1 = 0;
LABEL_5:
    v3 = sub_1CF04F854(result);
    MEMORY[0x1D3868CC0](v3);

    return v1;
  }

  v2 = __OFSUB__(0, result);
  result = -result;
  if (!v2)
  {
    v1 = 45;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void *sub_1CF4D3838(void *result, void *a2)
{
  if (!__OFSUB__(*a2, *result))
  {
    return (*a2 == *result);
  }

  __break(1u);
  return result;
}

void *sub_1CF4D3854@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFSUB__(*result, *v2))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result - *v2;
  }

  return result;
}

void *sub_1CF4D3870@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*v2, *result))
  {
    __break(1u);
  }

  else
  {
    *a2 = *v2 + *result;
  }

  return result;
}

void *sub_1CF4D388C(void *result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  if (__OFADD__(*a4, *a6))
  {
    __break(1u);
  }

  else
  {
    *result = *a4 + *a6;
    return 0;
  }

  return result;
}

uint64_t sub_1CF4D38B0()
{
  result = *v0;
  if ((*v0 & 0x8000000000000000) == 0)
  {
    v2 = 0;
LABEL_5:
    v4 = sub_1CF04F854(result);
    MEMORY[0x1D3868CC0](v4);

    return v2;
  }

  v3 = __OFSUB__(0, result);
  result = -result;
  if (!v3)
  {
    v2 = 45;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void *sub_1CF4D3924(void *result, void *a2)
{
  if (!__OFSUB__(*a2, *result))
  {
    return (*a2 - *result > 0);
  }

  __break(1u);
  return result;
}

void *sub_1CF4D3944(void *result, void *a2)
{
  if (!__OFSUB__(*result, *a2))
  {
    return (*result - *a2 < 1);
  }

  __break(1u);
  return result;
}

void *sub_1CF4D3964(void *result, void *a2)
{
  if (!__OFSUB__(*a2, *result))
  {
    return (*a2 - *result < 1);
  }

  __break(1u);
  return result;
}

void *sub_1CF4D3984(void *result, void *a2)
{
  if (!__OFSUB__(*result, *a2))
  {
    return (*result - *a2 > 0);
  }

  __break(1u);
  return result;
}

unint64_t sub_1CF4D39B4()
{
  result = qword_1EC4C0850;
  if (!qword_1EC4C0850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C0850);
  }

  return result;
}

unint64_t sub_1CF4D3B18()
{
  result = qword_1EC4C0858;
  if (!qword_1EC4C0858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C0858);
  }

  return result;
}

unint64_t sub_1CF4D3B6C()
{
  result = qword_1EDEA8338;
  if (!qword_1EDEA8338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA8338);
  }

  return result;
}

uint64_t sub_1CF4D3BC0()
{
  v0 = sub_1CF9E5CF8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v6 = v5;
  result = (*(v1 + 8))(v4, v0);
  v8 = v6 * 1000000000.0;
  if (COERCE__INT64(fabs(v6 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v8 < 9.22337204e18)
  {
    return v8;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1CF4D3CE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v19 - v4;
  v6 = sub_1CF9E5CF8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v19 - v12;
  sub_1CF06EAD4(a1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1CEFD9E84(a1);
    sub_1CEFD9E84(v5);
    return 0;
  }

  (*(v7 + 32))(v13, v5, v6);
  (*(v7 + 16))(v10, v13, v6);
  sub_1CF9E5C98();
  v16 = v15;
  sub_1CEFD9E84(a1);
  v17 = *(v7 + 8);
  v17(v10, v6);
  result = (v17)(v13, v6);
  v18 = v16 * 1000000000.0;
  if (COERCE__INT64(fabs(v16 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v18 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v18 < 9.22337204e18)
  {
    return v18;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_1CF4D3F40(void (*a1)(void))
{
  sub_1CF2CA194();
  v2 = swift_allocError();
  a1();
}

uint64_t sub_1CF4D3FA8()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1CF4D4018()
{
  result = qword_1EC4C0860;
  if (!qword_1EC4C0860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C0860);
  }

  return result;
}

void sub_1CF4D406C()
{
  v1 = v0;
  v35 = *MEMORY[0x1E69E9840];
  v2 = sub_1CF9E6118();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v32 - v8;
  if ((*(v0 + 33) & 1) == 0)
  {
    v11 = [objc_opt_self() defaultManager];
    v13 = *(v1 + 16);
    v12 = *(v1 + 24);
    v14 = sub_1CF9E6888();
    v32 = 0;
    v15 = [v11 createDirectoryAtPath:v14 withIntermediateDirectories:1 attributes:0 error:&v32];

    v16 = v32;
    if (v15)
    {
      v32 = v13;
      v33 = v12;
      v17 = v16;

      MEMORY[0x1D3868CC0](97, 0xE100000000000000);
      sub_1CF9E6978();

      fpfs_removeat();

      v32 = v13;
      v33 = v12;

      MEMORY[0x1D3868CC0](98, 0xE100000000000000);
      sub_1CF9E6978();

      fpfs_removeat();

      v32 = v13;
      v33 = v12;

      MEMORY[0x1D3868CC0](97, 0xE100000000000000);
      sub_1CF9E6978();

      v18 = sub_1CF9E6158();

      if ((v18 & 0x80000000) == 0)
      {
        fpfs_track_document();
        close(v18);
      }

      *(v1 + 33) = 1;
      if (*(v1 + 34) == 1)
      {
        v19 = fpfs_current_or_default_log();
        sub_1CF9E6128();
        v20 = sub_1CF9E6108();
        v21 = sub_1CF9E72C8();
        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          *v22 = 0;
          _os_log_impl(&dword_1CEFC7000, v20, v21, "💀 tombstone slayer setup succeeded after previous failure", v22, 2u);
          MEMORY[0x1D386CDC0](v22, -1, -1);
        }

        (*(v3 + 8))(v9, v2);
        *(v1 + 34) = 0;
      }
    }

    else
    {
      v23 = v32;
      v24 = sub_1CF9E57F8();

      swift_willThrow();
      if (*(v1 + 34))
      {
      }

      else
      {
        v25 = fpfs_current_or_default_log();
        sub_1CF9E6128();
        v26 = v24;
        v27 = sub_1CF9E6108();
        v28 = sub_1CF9E72B8();

        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          *v29 = 138412290;
          swift_getErrorValue();
          v31 = Error.prettyDescription.getter(v34);
          *(v29 + 4) = v31;
          *v30 = v31;
          _os_log_impl(&dword_1CEFC7000, v27, v28, "💀 cannot setup tombstone slayer: %@", v29, 0xCu);
          sub_1CF19CAB0(v30);
          MEMORY[0x1D386CDC0](v30, -1, -1);
          MEMORY[0x1D386CDC0](v29, -1, -1);
        }

        else
        {
        }

        (*(v3 + 8))(v7, v2);
        *(v1 + 34) = 1;
      }
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1CF4D44F8()
{
  v5 = *(v0 + 16);
  v7 = *(v0 + 24);

  MEMORY[0x1D3868CC0](97, 0xE100000000000000);
  sub_1CF9E6978();

  fpfs_removeat();

  v6 = *(v0 + 16);
  v8 = *(v0 + 24);

  MEMORY[0x1D3868CC0](98, 0xE100000000000000);
  sub_1CF9E6978();

  fpfs_removeat();

  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1CF9E6978();
  fpfs_removeat();

  v3 = *(v0 + 24);

  return v0;
}

uint64_t sub_1CF4D45E4()
{
  sub_1CF4D44F8();

  return swift_deallocClassInstance();
}

uint64_t sub_1CF4D463C()
{
  v1 = sub_1CF9E6118();
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1);
  MEMORY[0x1EEE9AC00](v3);
  sub_1CF4D406C();
  result = sub_1CEFE1894(sub_1CF4D4A9C);
  *(v0 + 32) = (*(v0 + 32) & 1) == 0;
  return result;
}

uint64_t sub_1CF4D4964@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  if (*(a1 + 32) == 1)
  {

    v6 = 97;
  }

  else
  {

    v6 = 98;
  }

  MEMORY[0x1D3868CC0](v6, 0xE100000000000000);
  if (*(a1 + 32) == 1)
  {

    v7 = 98;
  }

  else
  {

    v7 = 97;
  }

  MEMORY[0x1D3868CC0](v7, 0xE100000000000000);
  v8 = sub_1CF9E6978();

  v9 = sub_1CF9E6978();

  v10 = MEMORY[0x1D386BA20](4294967294, v8 + 32, 4294967294, v9 + 32, 4);

  *a2 = v10;
  return result;
}

uint64_t sub_1CF4D4AB8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*(*(a3 + a4 - 8) - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v12 - v7;
  (*(v9 + 16))(&v12 - v7, v6);
  v10 = *a2;
  return sub_1CF4D4DF0(v8);
}

uint64_t sub_1CF4D4B78@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = sub_1CF9E75D8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v20 - v11;
  v13 = *(v3 + 96);
  swift_beginAccess();
  (*(v6 + 16))(v12, &v1[v13], v5);
  v14 = *(v4 - 8);
  if ((*(v14 + 48))(v12, 1, v4) != 1)
  {
    return (*(v14 + 32))(a1, v12, v4);
  }

  (*(v6 + 8))(v12, v5);
  v16 = *(v1 + 2);
  v15 = *(v1 + 3);

  v21 = v1;
  v16(v17);

  (*(v14 + 16))(v10, a1, v4);
  (*(v14 + 56))(v10, 0, 1, v4);
  v18 = v21;
  swift_beginAccess();
  (*(v6 + 40))(&v18[v13], v10, v5);
  return swift_endAccess();
}

uint64_t sub_1CF4D4DF0(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = sub_1CF9E75D8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v13 - v8;
  v10 = *(v3 - 8);
  (*(v10 + 32))(&v13 - v8, a1, v3, v7);
  (*(v10 + 56))(v9, 0, 1, v3);
  v11 = *(*v1 + 96);
  swift_beginAccess();
  (*(v5 + 40))(v1 + v11, v9, v4);
  return swift_endAccess();
}

void (*sub_1CF4D4F74(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*v1 + 80);
  v4[1] = v6;
  v7 = *(v6 - 8);
  v4[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v4[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[4] = v9;
  sub_1CF4D4B78(v9);
  return sub_1CF4D5088;
}

void sub_1CF4D5088(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    v7 = *v2;
    (*(v6 + 16))((*a1)[3], v4, v5);
    sub_1CF4D4DF0(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v8 = *v2;
    sub_1CF4D4DF0((*a1)[4]);
  }

  free(v4);
  free(v3);

  free(v2);
}

char *Lazy.__allocating_init(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  (*(*(*(*v7 + 80) - 8) + 56))(&v7[*(*v7 + 96)], 1, 1);
  *(v7 + 2) = a1;
  *(v7 + 3) = a2;
  return v7;
}

char *Lazy.init(_:)(uint64_t a1, uint64_t a2)
{
  (*(*(*(*v2 + 80) - 8) + 56))(&v2[*(*v2 + 96)], 1, 1);
  *(v2 + 2) = a1;
  *(v2 + 3) = a2;
  return v2;
}

char *Lazy.deinit()
{
  v1 = *v0;
  v2 = *(v0 + 3);

  v3 = *(*v0 + 96);
  v4 = *(v1 + 80);
  v5 = sub_1CF9E75D8();
  (*(*(v5 - 8) + 8))(&v0[v3], v5);
  return v0;
}

uint64_t Lazy.__deallocating_deinit()
{
  Lazy.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1CF4D5364(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = sub_1CF9E75D8();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1CF4D54B8(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1CF4D55C8()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

char sub_1CF4D568C@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_1CEFD1104(a1, v13);
  LOBYTE(v4) = swift_dynamicCast();
  if ((v4 & 1) == 0)
  {
    goto LABEL_19;
  }

  v5 = *&v12 <= -1 || ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF;
  v6 = v5 && (*&v12 - 1) >= 0xFFFFFFFFFFFFFLL;
  v7 = !v6 || (*&v12 & 0x7FFFFFFFFFFFFFFFLL) == 0;
  if (!v7 || v12 > 1.0)
  {
    goto LABEL_19;
  }

  v9 = v12 * 100.0;
  if (COERCE_UNSIGNED_INT64(fabs(v12 * 100.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v9 >= 9.22337204e18)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  FPCKPhase.init(rawValue:)(v9);
  v10 = v13[0];
  if (LOBYTE(v13[0]) != 12)
  {
    LOBYTE(v4) = __swift_destroy_boxed_opaque_existential_1(a1);
    goto LABEL_27;
  }

LABEL_19:
  sub_1CEFE9EB8(a1, v13);
  LOBYTE(v4) = swift_dynamicCast();
  if (v4)
  {
    v4 = *&v12;
    if ((*&v12 & 0x8000000000000000) == 0 || (v4 = -*&v12, !__OFSUB__(0, *&v12)))
    {
      LOBYTE(v4) = FPCKPhase.init(rawValue:)(v4);
      if (LOBYTE(v13[0]) == 12)
      {
        v10 = 0;
      }

      else
      {
        v10 = v13[0];
      }

      goto LABEL_27;
    }

LABEL_31:
    __break(1u);
    return v4;
  }

  v10 = 0;
LABEL_27:
  *a2 = v10;
  return v4;
}

FileProviderDaemon::FPCKPhase_optional __swiftcall FPCKPhase.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue > 64)
  {
    if (rawValue > 89)
    {
      switch(rawValue)
      {
        case 'Z':
          *v1 = 9;
          return rawValue;
        case '_':
          *v1 = 10;
          return rawValue;
        case 'd':
          *v1 = 11;
          return rawValue;
      }
    }

    else
    {
      switch(rawValue)
      {
        case 'A':
          *v1 = 6;
          return rawValue;
        case 'K':
          *v1 = 7;
          return rawValue;
        case 'P':
          *v1 = 8;
          return rawValue;
      }
    }

LABEL_28:
    *v1 = 12;
    return rawValue;
  }

  if (rawValue > 24)
  {
    switch(rawValue)
    {
      case 25:
        *v1 = 3;
        return rawValue;
      case 50:
        *v1 = 4;
        return rawValue;
      case 60:
        *v1 = 5;
        return rawValue;
    }

    goto LABEL_28;
  }

  if (rawValue == -1)
  {
    *v1 = 0;
    return rawValue;
  }

  if (!rawValue)
  {
    *v1 = 1;
    return rawValue;
  }

  if (rawValue != 10)
  {
    goto LABEL_28;
  }

  *v1 = 2;
  return rawValue;
}

uint64_t FPCKPhase.description.getter()
{
  v1 = *v0;
  if (v1 > 5)
  {
    v7 = 0x75702D7261656C63;
    v8 = 0xD000000000000015;
    if (v1 != 10)
    {
      v8 = 6581861;
    }

    if (v1 != 9)
    {
      v7 = v8;
    }

    v9 = 0x747365676E696572;
    v10 = 0xD000000000000015;
    if (v1 != 7)
    {
      v10 = 0x747365676E696572;
    }

    if (v1 != 6)
    {
      v9 = v10;
    }

    if (*v0 <= 8u)
    {
      return v9;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x726F727265;
    v3 = 0x7373662D6B736964;
    v4 = 0x7261766E692D7472;
    if (v1 != 4)
    {
      v4 = 0xD000000000000010;
    }

    if (v1 != 3)
    {
      v3 = v4;
    }

    v5 = 0x7472617473;
    if (v1 != 1)
    {
      v5 = 7565427;
    }

    if (*v0)
    {
      v2 = v5;
    }

    if (*v0 <= 2u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_1CF4D5AB0()
{
  v1 = *v0;
  if (v1 > 5)
  {
    v7 = 0xD000000000000019;
    v8 = 0x63656863206C6C41;
    if (v1 == 10)
    {
      v8 = 0xD000000000000018;
    }

    if (v1 != 9)
    {
      v7 = v8;
    }

    v9 = 0xD000000000000026;
    v10 = 0xD000000000000018;
    if (v1 != 7)
    {
      v10 = 0xD000000000000026;
    }

    if (v1 != 6)
    {
      v9 = v10;
    }

    if (*v0 <= 8u)
    {
      return v9;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x726F727265;
    v3 = 0xD000000000000015;
    v4 = 0xD00000000000001BLL;
    if (v1 != 4)
    {
      v4 = 0xD000000000000011;
    }

    if (v1 != 3)
    {
      v3 = v4;
    }

    v5 = 0xD00000000000002ELL;
    if (v1 == 1)
    {
      v5 = 0x7472617473;
    }

    if (*v0)
    {
      v2 = v5;
    }

    if (*v0 <= 2u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_1CF4D5C80()
{
  v1 = *v0;
  sub_1CF9E81D8();
  MEMORY[0x1D386A470](qword_1CFA07D08[v1]);
  return sub_1CF9E8228();
}

uint64_t sub_1CF4D5D08()
{
  v1 = *v0;
  sub_1CF9E81D8();
  MEMORY[0x1D386A470](qword_1CFA07D08[v1]);
  return sub_1CF9E8228();
}

uint64_t FPCKReportSection.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_date;
  v4 = sub_1CF9E5CF8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FPCKReportSection.build.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_build);
  v2 = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_build + 8);

  return v1;
}

id FPCKReportSection.init(phase:date:build:)(_BYTE *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v25 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v24 - v10;
  v12 = sub_1CF9E5CF8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_phase] = *a1;
  sub_1CEFCCBDC(a2, v11, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v17 = *(v13 + 48);
  if (v17(v11, 1, v12) == 1)
  {
    sub_1CF9E5C88();
    if (v17(v11, 1, v12) != 1)
    {
      sub_1CEFCCC44(v11, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    }
  }

  else
  {
    (*(v13 + 32))(v16, v11, v12);
  }

  (*(v13 + 32))(&v4[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_date], v16, v12);
  v18 = 0x6E776F6E6B6E75;
  if (a4)
  {
    v18 = v25;
  }

  v19 = 0xE700000000000000;
  if (a4)
  {
    v19 = a4;
  }

  v20 = &v4[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_build];
  *v20 = v18;
  v20[1] = v19;
  v21 = type metadata accessor for FPCKReportSection(0);
  v26.receiver = v4;
  v26.super_class = v21;
  v22 = objc_msgSendSuper2(&v26, sel_init);
  sub_1CEFCCC44(a2, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  return v22;
}

unint64_t sub_1CF4D639C()
{
  sub_1CF9E7948();

  v4 = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_phase);
  v1 = FPCKPhase.description.getter();
  MEMORY[0x1D3868CC0](v1);

  MEMORY[0x1D3868CC0](64, 0xE100000000000000);
  sub_1CF9E5CF8();
  sub_1CF4D6B90(&unk_1EDEAECD0, MEMORY[0x1E6969530]);
  v2 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v2);

  MEMORY[0x1D3868CC0](10272, 0xE200000000000000);
  MEMORY[0x1D3868CC0](*(v0 + OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_build), *(v0 + OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_build + 8));
  MEMORY[0x1D3868CC0](15913, 0xE200000000000000);
  return 0xD000000000000014;
}

uint64_t sub_1CF4D64E8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1702125924;
  if (v2 != 1)
  {
    v4 = 0x646C697562;
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6573616870;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1702125924;
  if (*a2 != 1)
  {
    v8 = 0x646C697562;
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6573616870;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1CF9E8048();
  }

  return v11 & 1;
}

uint64_t sub_1CF4D65D0()
{
  v1 = *v0;
  sub_1CF9E81D8();
  sub_1CF9E69C8();

  return sub_1CF9E8228();
}

uint64_t sub_1CF4D6664()
{
  *v0;
  *v0;
  sub_1CF9E69C8();
}

uint64_t sub_1CF4D66E4()
{
  v1 = *v0;
  sub_1CF9E81D8();
  sub_1CF9E69C8();

  return sub_1CF9E8228();
}

uint64_t sub_1CF4D6774@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1CF4E0664();
  *a2 = result;
  return result;
}

void sub_1CF4D67A4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE400000000000000;
  v5 = 1702125924;
  if (v2 != 1)
  {
    v5 = 0x646C697562;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6573616870;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1CF4D67F4()
{
  v1 = 1702125924;
  if (*v0 != 1)
  {
    v1 = 0x646C697562;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6573616870;
  }
}

uint64_t sub_1CF4D6840@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1CF4E0664();
  *a1 = result;
  return result;
}

uint64_t sub_1CF4D6868(uint64_t a1)
{
  v2 = sub_1CF4D6AE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF4D68A4(uint64_t a1)
{
  v2 = sub_1CF4D6AE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CF4D68E0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0878, &qword_1CFA06DF8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF4D6AE8();
  sub_1CF9E82A8();
  v14[15] = *(v3 + OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_phase);
  v14[14] = 0;
  sub_1CF4D6B3C();
  sub_1CF9E7F08();
  if (!v2)
  {
    v14[13] = 1;
    sub_1CF9E5CF8();
    sub_1CF4D6B90(&qword_1EDEAB3D0, MEMORY[0x1E6969530]);
    sub_1CF9E7F08();
    v11 = *(v3 + OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_build);
    v12 = *(v3 + OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_build + 8);
    v14[12] = 2;
    sub_1CF9E7EB8();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1CF4D6AE8()
{
  result = qword_1EC4C0880;
  if (!qword_1EC4C0880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C0880);
  }

  return result;
}

unint64_t sub_1CF4D6B3C()
{
  result = qword_1EC4C0888;
  if (!qword_1EC4C0888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C0888);
  }

  return result;
}

uint64_t sub_1CF4D6B90(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t FPCKReportSection.init(from:)(uint64_t *a1)
{
  v3 = sub_1CF9E5CF8();
  v26 = *(v3 - 8);
  v4 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0898, &unk_1CFA06E00);
  v7 = *(v27 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v10 = &v25 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF4D6AE8();
  sub_1CF9E8298();
  if (v1)
  {
    v15 = v28;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for FPCKReportSection(0);
    v16 = *((*MEMORY[0x1E69E7D40] & *v15) + 0x30);
    v17 = *((*MEMORY[0x1E69E7D40] & *v15) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v12 = v6;
    v13 = v7;
    v30 = 0;
    sub_1CF4D6FE4();
    v14 = v27;
    sub_1CF9E7D88();
    v19 = v28;
    *(v28 + OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_phase) = v31;
    v31 = 1;
    sub_1CF4D6B90(&unk_1EDEAB3A0, MEMORY[0x1E6969530]);
    sub_1CF9E7D88();
    v20 = *(v26 + 32);
    v25 = OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_date;
    v20(&v19[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_date], v12, v3);
    v31 = 2;
    v21 = sub_1CF9E7D48();
    v22 = &v19[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_build];
    *v22 = v21;
    v22[1] = v23;
    v24 = type metadata accessor for FPCKReportSection(0);
    v29.receiver = v19;
    v29.super_class = v24;
    v3 = objc_msgSendSuper2(&v29, sel_init);
    (*(v13 + 8))(v10, v14);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v3;
}

unint64_t sub_1CF4D6FE4()
{
  result = qword_1EC4C08A0;
  if (!qword_1EC4C08A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C08A0);
  }

  return result;
}

uint64_t sub_1CF4D7040(void *a1)
{
  v2 = sub_1CF9E6118();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v4 = sub_1CF9E5438();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_1CF9E5428();
  type metadata accessor for FPCKReportSection(0);
  sub_1CF4D6B90(&qword_1EC4C08B0, type metadata accessor for FPCKReportSection);
  v7 = sub_1CF9E5418();
  v9 = v8;

  v10 = sub_1CF9E5B48();
  v11 = sub_1CF9E6888();
  [a1 encodeObject:v10 forKey:v11];

  return sub_1CEFE4714(v7, v9);
}

uint64_t FPCKReportSection.init(coder:)(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v30 - v6;
  sub_1CEFD57E0(0, &unk_1EDEA3450, 0x1E695DEF0);
  v8 = sub_1CF9E7528();
  if (v8)
  {
    v9 = v8;
    v10 = sub_1CF9E5B88();
    v12 = v11;

    v13 = sub_1CF9E5408();
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    sub_1CF9E53F8();
    sub_1CF4D6B90(&qword_1EC4C08B8, type metadata accessor for FPCKReportSection);
    v31 = v10;
    sub_1CF9E53E8();

    v16 = v32;
    ObjectType = swift_getObjectType();
    LOBYTE(v32) = v16[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_phase];
    v18 = OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_date;
    v19 = sub_1CF9E5CF8();
    v20 = *(v19 - 8);
    (*(v20 + 16))(v7, &v16[v18], v19);
    (*(v20 + 56))(v7, 0, 1, v19);
    v21 = *&v16[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_build];
    v22 = *&v16[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_build + 8];
    v23 = *(ObjectType + 104);

    v24 = v23(&v32, v7, v21, v22);

    sub_1CEFE4714(v31, v12);
    v25 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x30);
    v26 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {

    swift_getObjectType();
    v27 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x30);
    v28 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v24;
}

id FPCKReportSection.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1CF4D78D8@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 120))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

id FPCKReportStatusSection.__allocating_init(phase:date:build:error:)(char *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v19 - v13;
  v15 = objc_allocWithZone(v5);
  v16 = *a1;
  *&v15[OBJC_IVAR____TtC18FileProviderDaemon23FPCKReportStatusSection_error] = a5;
  v20 = v16;
  sub_1CEFCCBDC(a2, v14, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v17 = FPCKReportSection.init(phase:date:build:)(&v20, v14, a3, a4);
  sub_1CEFCCC44(a2, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  return v17;
}

id FPCKReportStatusSection.init(phase:date:build:error:)(_BYTE *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v17 - v13;
  LOBYTE(v13) = *a1;
  *(v5 + OBJC_IVAR____TtC18FileProviderDaemon23FPCKReportStatusSection_error) = a5;
  v18 = v13;
  sub_1CEFCCBDC(a2, v14, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v15 = FPCKReportSection.init(phase:date:build:)(&v18, v14, a3, a4);
  sub_1CEFCCC44(a2, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  return v15;
}

uint64_t sub_1CF4D7B74(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x646F43726F727265;
  }

  else
  {
    v4 = 0x6D6F44726F727265;
  }

  if (v3)
  {
    v5 = 0xEB000000006E6961;
  }

  else
  {
    v5 = 0xE900000000000065;
  }

  if (*a2)
  {
    v6 = 0x646F43726F727265;
  }

  else
  {
    v6 = 0x6D6F44726F727265;
  }

  if (*a2)
  {
    v7 = 0xE900000000000065;
  }

  else
  {
    v7 = 0xEB000000006E6961;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1CF9E8048();
  }

  return v9 & 1;
}

uint64_t sub_1CF4D7C28()
{
  v1 = *v0;
  sub_1CF9E81D8();
  sub_1CF9E69C8();

  return sub_1CF9E8228();
}

uint64_t sub_1CF4D7CB8()
{
  *v0;
  sub_1CF9E69C8();
}

uint64_t sub_1CF4D7D34()
{
  v1 = *v0;
  sub_1CF9E81D8();
  sub_1CF9E69C8();

  return sub_1CF9E8228();
}

uint64_t sub_1CF4D7DC0@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1CF9E7C78();

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

void sub_1CF4D7E20(uint64_t *a1@<X8>)
{
  v2 = 0x6D6F44726F727265;
  if (*v1)
  {
    v2 = 0x646F43726F727265;
  }

  v3 = 0xEB000000006E6961;
  if (*v1)
  {
    v3 = 0xE900000000000065;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1CF4D7E6C()
{
  if (*v0)
  {
    result = 0x646F43726F727265;
  }

  else
  {
    result = 0x6D6F44726F727265;
  }

  *v0;
  return result;
}

uint64_t sub_1CF4D7EB4@<X0>(char *a1@<X8>)
{
  v2 = sub_1CF9E7C78();

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

uint64_t sub_1CF4D7F18(uint64_t a1)
{
  v2 = sub_1CF4E01E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF4D7F54(uint64_t a1)
{
  v2 = sub_1CF4E01E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FPCKReportStatusSection.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C08C0, &qword_1CFA06E10);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v25[-1] - v8;
  v26 = OBJC_IVAR____TtC18FileProviderDaemon23FPCKReportStatusSection_error;
  *(v1 + OBJC_IVAR____TtC18FileProviderDaemon23FPCKReportStatusSection_error) = 0;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF4E01E0();
  sub_1CF9E8298();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);

    type metadata accessor for FPCKReportStatusSection(0);
    v16 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x30);
    v17 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v11 = v6;
    LOBYTE(v25[0]) = 0;
    sub_1CF9E7CB8();
    v13 = v12;
    LOBYTE(v25[0]) = 1;
    v14 = sub_1CF9E7CD8();
    v24 = 0;
    if (v13)
    {
      if (v15)
      {
      }

      else
      {
        v19 = v14;
        v20 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
        v21 = sub_1CF9E6888();

        v22 = [v20 initWithDomain:v21 code:v19 userInfo:0];

        v23 = *(v3 + v26);
        *(v3 + v26) = v22;
      }
    }

    sub_1CF1A91AC(a1, v25);
    v3 = FPCKReportSection.init(from:)(v25);
    (*(v11 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v3;
}

void sub_1CF4D82B8(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C08D0, &unk_1CFA06E18);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF4E01E0();
  sub_1CF9E82A8();
  v10 = *(v1 + OBJC_IVAR____TtC18FileProviderDaemon23FPCKReportStatusSection_error);
  if (v10)
  {
    v16 = *(v1 + OBJC_IVAR____TtC18FileProviderDaemon23FPCKReportStatusSection_error);
    v11 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    sub_1CEFD57E0(0, &qword_1EDEA3440, 0x1E696ABC0);
    if (swift_dynamicCast())
    {
      v14 = v1;
      v12 = v15;
      v13 = [v15 domain];
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();

      LOBYTE(v16) = 0;
      sub_1CF9E7EB8();
      if (v2)
      {
        (*(v5 + 8))(v8, v4);

        return;
      }

      [v12 code];
      LOBYTE(v16) = 1;
      sub_1CF9E7EE8();
    }
  }

  sub_1CF4D68E0(a1);
  (*(v5 + 8))(v8, v4);
}

id FPCKReportStatusSection.init(coder:)(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_1CF9E6118();
  v5 = *(v4 - 1);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = sub_1CF9E5CF8();
  v59 = *(v7 - 8);
  v8 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v58 = &v52[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v52[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v52[-v15];
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v52[-v18];
  sub_1CEFD57E0(0, &unk_1EDEA3450, 0x1E695DEF0);
  v20 = sub_1CF9E7528();
  if (v20)
  {
    v56 = v5;
    v57 = v4;
    v62 = a1;
    v21 = v20;
    v22 = sub_1CF9E5B88();
    v24 = v23;

    v25 = sub_1CF9E5408();
    v26 = *(v25 + 48);
    v27 = *(v25 + 52);
    swift_allocObject();
    sub_1CF9E53F8();
    sub_1CF4D6B90(&qword_1EC4C08D8, type metadata accessor for FPCKReportStatusSection);
    v60 = v22;
    v61 = v24;
    sub_1CF9E53E8();

    v28 = v64;
    v53 = v64[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_phase];
    v29 = v59;
    (*(v59 + 16))(v19, &v64[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_date], v7);
    (*(v29 + 56))(v19, 0, 1, v7);
    v30 = *&v28[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_build + 8];
    v54 = *&v28[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_build];
    v55 = v28;
    v56 = v30;
    v31 = *&v28[OBJC_IVAR____TtC18FileProviderDaemon23FPCKReportStatusSection_error];
    v32 = objc_allocWithZone(type metadata accessor for FPCKReportStatusSection(0));
    v57 = v31;
    *&v32[OBJC_IVAR____TtC18FileProviderDaemon23FPCKReportStatusSection_error] = v31;
    sub_1CEFCCBDC(v19, v16, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v32[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_phase] = v53;
    sub_1CEFCCBDC(v16, v13, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v33 = *(v29 + 48);
    if (v33(v13, 1, v7) == 1)
    {
      v34 = v57;
      v35 = v57;
      v36 = v34;

      v37 = v58;
      sub_1CF9E5C88();
      v38 = v33(v13, 1, v7);
      v39 = v37;
      v40 = v56;
      if (v38 != 1)
      {
        sub_1CEFCCC44(v13, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      }
    }

    else
    {
      v39 = v58;
      (*(v29 + 32))(v58, v13, v7);
      v44 = v57;
      v45 = v57;
      v46 = v44;
    }

    (*(v29 + 32))(&v32[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_date], v39, v7);
    v47 = &v32[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_build];
    *v47 = v54;
    v47[1] = v40;
    v48 = type metadata accessor for FPCKReportSection(0);
    v63.receiver = v32;
    v63.super_class = v48;
    v49 = objc_msgSendSuper2(&v63, sel_init);
    sub_1CEFCCC44(v16, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CEFE4714(v60, v61);

    sub_1CEFCCC44(v19, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    swift_getObjectType();
    v50 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x30);
    v51 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
    return v49;
  }

  else
  {

    swift_getObjectType();
    v41 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x30);
    v42 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }
}

unint64_t sub_1CF4D8CB0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CF9FC3C0;
  strcpy((inited + 32), "lastUpdateTime");
  *(inited + 47) = -18;
  sub_1CF9E5C98();
  v2 = MEMORY[0x1E69E63B0];
  *(inited + 48) = v3;
  *(inited + 72) = v2;
  *(inited + 80) = 0x616470557473616CLL;
  *(inited + 88) = 0xEF646C6975426574;
  v4 = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_build + 8);
  v5 = MEMORY[0x1E69E6158];
  *(inited + 96) = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_build);
  *(inited + 104) = v4;
  *(inited + 120) = v5;
  *(inited + 128) = 0x737574617473;
  *(inited + 136) = 0xE600000000000000;
  v6 = qword_1CFA07D08[*(v0 + OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_phase)];
  *(inited + 168) = MEMORY[0x1E69E6530];
  *(inited + 144) = v6;

  v7 = sub_1CF4E04E8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE300, &unk_1CF9FC5D0);
  swift_arrayDestroy();
  return v7;
}

id sub_1CF4D8E6C(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id FPCKReportStartSection.__allocating_init(date:build:runReason:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v21 - v13;
  v15 = objc_allocWithZone(v5);
  v16 = 0x6E776F6E6B6E75;
  if (a5)
  {
    v16 = a4;
  }

  v17 = 0xE700000000000000;
  if (a5)
  {
    v17 = a5;
  }

  v18 = &v15[OBJC_IVAR____TtC18FileProviderDaemon22FPCKReportStartSection_runReason];
  *v18 = v16;
  v18[1] = v17;
  v22 = 1;
  sub_1CEFCCBDC(a1, v14, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v19 = FPCKReportSection.init(phase:date:build:)(&v22, v14, a2, a3);
  sub_1CEFCCC44(a1, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  return v19;
}

id FPCKReportStartSection.init(date:build:runReason:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v20 - v13;
  v15 = 0x6E776F6E6B6E75;
  if (a5)
  {
    v15 = a4;
  }

  v16 = 0xE700000000000000;
  if (a5)
  {
    v16 = a5;
  }

  v17 = (v5 + OBJC_IVAR____TtC18FileProviderDaemon22FPCKReportStartSection_runReason);
  *v17 = v15;
  v17[1] = v16;
  v21 = 1;
  sub_1CEFCCBDC(a1, v14, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v18 = FPCKReportSection.init(phase:date:build:)(&v21, v14, a2, a3);
  sub_1CEFCCC44(a1, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  return v18;
}

uint64_t sub_1CF4D91A4@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1CF9E7C78();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1CF4D91FC(uint64_t a1)
{
  v2 = sub_1CF4E0254();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF4D9238(uint64_t a1)
{
  v2 = sub_1CF4E0254();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FPCKReportStartSection.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C08E0, &qword_1CFA06E28);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19[-1] - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF4E0254();
  sub_1CF9E8298();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for FPCKReportStartSection(0);
    v11 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x30);
    v12 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v14 = sub_1CF9E7D48();
    v16 = v15;
    (*(v6 + 8))(v9, v5);
    v17 = (v3 + OBJC_IVAR____TtC18FileProviderDaemon22FPCKReportStartSection_runReason);
    *v17 = v14;
    v17[1] = v16;
    sub_1CF1A91AC(a1, v19);
    v3 = FPCKReportSection.init(from:)(v19);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v3;
}

uint64_t sub_1CF4D94C4(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C08F0, &qword_1CFA06E30);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF4E0254();
  sub_1CF9E82A8();
  v10 = *(v1 + OBJC_IVAR____TtC18FileProviderDaemon22FPCKReportStartSection_runReason);
  v11 = *(v1 + OBJC_IVAR____TtC18FileProviderDaemon22FPCKReportStartSection_runReason + 8);
  sub_1CF9E7EB8();
  if (!v2)
  {
    sub_1CF4D68E0(a1);
  }

  return (*(v5 + 8))(v8, v4);
}

id FPCKReportStartSection.init(coder:)(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_1CF9E6118();
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x1EEE9AC00](v4);
  v7 = sub_1CF9E5CF8();
  v50 = *(v7 - 8);
  v8 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v49 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v46 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v46 - v18;
  sub_1CEFD57E0(0, &unk_1EDEA3450, 0x1E695DEF0);
  v20 = sub_1CF9E7528();
  if (v20)
  {
    v47 = v5;
    v48 = v4;
    v53 = a1;
    v21 = v20;
    v22 = sub_1CF9E5B88();
    v24 = v23;

    v25 = sub_1CF9E5408();
    v26 = *(v25 + 48);
    v27 = *(v25 + 52);
    swift_allocObject();
    sub_1CF9E53F8();
    sub_1CF4D6B90(&qword_1EC4C08F8, type metadata accessor for FPCKReportStartSection);
    v51 = v22;
    v52 = v24;
    sub_1CF9E53E8();

    v28 = v55;
    v29 = v50;
    (*(v50 + 16))(v19, &v55[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_date], v7);
    (*(v29 + 56))(v19, 0, 1, v7);
    v30 = *&v28[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_build + 8];
    v46 = *&v28[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_build];
    v47 = v28;
    v48 = v30;
    v31 = *&v28[OBJC_IVAR____TtC18FileProviderDaemon22FPCKReportStartSection_runReason];
    v32 = *&v28[OBJC_IVAR____TtC18FileProviderDaemon22FPCKReportStartSection_runReason + 8];
    v33 = objc_allocWithZone(type metadata accessor for FPCKReportStartSection(0));
    v34 = &v33[OBJC_IVAR____TtC18FileProviderDaemon22FPCKReportStartSection_runReason];
    *v34 = v31;
    v34[1] = v32;
    sub_1CEFCCBDC(v19, v16, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v33[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_phase] = 1;
    sub_1CEFCCBDC(v16, v13, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v35 = *(v29 + 48);
    if (v35(v13, 1, v7) == 1)
    {

      v36 = v49;
      sub_1CF9E5C88();
      if (v35(v13, 1, v7) != 1)
      {
        sub_1CEFCCC44(v13, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      }
    }

    else
    {
      v36 = v49;
      (*(v29 + 32))(v49, v13, v7);
    }

    (*(v29 + 32))(&v33[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_date], v36, v7);
    v40 = &v33[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_build];
    v41 = v48;
    *v40 = v46;
    v40[1] = v41;
    v42 = type metadata accessor for FPCKReportSection(0);
    v54.receiver = v33;
    v54.super_class = v42;
    v43 = objc_msgSendSuper2(&v54, sel_init);
    sub_1CEFCCC44(v16, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CEFCCC44(v19, &unk_1EC4BEDC0, &unk_1CF9FEEA0);

    sub_1CEFE4714(v51, v52);
    swift_getObjectType();
    v44 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x30);
    v45 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
    return v43;
  }

  else
  {

    swift_getObjectType();
    v37 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x30);
    v38 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }
}

unint64_t sub_1CF4D9D80()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CF9FC3C0;
  *(inited + 32) = 0x6D69547472617473;
  *(inited + 40) = 0xE900000000000065;
  sub_1CF9E5C98();
  v2 = MEMORY[0x1E69E63B0];
  *(inited + 48) = v3;
  *(inited + 72) = v2;
  *(inited + 80) = 0x6975427472617473;
  *(inited + 88) = 0xEA0000000000646CLL;
  v4 = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_build + 8);
  v5 = MEMORY[0x1E69E6158];
  *(inited + 96) = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_build);
  *(inited + 104) = v4;
  *(inited + 120) = v5;
  strcpy((inited + 128), "FPCKRunReason");
  *(inited + 142) = -4864;
  v6 = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon22FPCKReportStartSection_runReason);
  v7 = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon22FPCKReportStartSection_runReason + 8);
  *(inited + 168) = v5;
  *(inited + 144) = v6;
  *(inited + 152) = v7;

  v8 = sub_1CF4E04E8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE300, &unk_1CF9FC5D0);
  swift_arrayDestroy();
  return v8;
}

uint64_t sub_1CF4D9FD8(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_superPendingSetSize;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1CF4DA098(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (*a2 + *a5);
  swift_beginAccess();
  v8 = v7[1];
  *v7 = v6;
  v7[1] = v5;
}

uint64_t sub_1CF4DA10C(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  return v4;
}

uint64_t sub_1CF4DA16C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = v6[1];
  *v6 = a1;
  v6[1] = a2;
}

uint64_t sub_1CF4DA234(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_1CF4DA27C(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_pendingSetSize;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

id FPCKReportSPSSection.__allocating_init(date:build:superPendingSetErrors:superPendingSetSize:pendingSetErrors:pendingSetSize:detailedPayload:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11, uint64_t a12)
{
  v13 = v12;
  HIDWORD(v30) = a7;
  v36 = a2;
  v37 = a3;
  v35 = a12;
  v34 = a11;
  v32 = a8;
  v33 = a10;
  v31 = a9;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v30 - v20;
  v22 = objc_allocWithZone(v13);
  v23 = &v22[OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_superPendingSetErrors];
  *v23 = 0;
  *(v23 + 1) = 0;
  v24 = &v22[OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_superPendingSetSize];
  *v24 = 0;
  v24[8] = 1;
  v25 = &v22[OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_pendingSetErrors];
  *v25 = 0;
  *(v25 + 1) = 0;
  v26 = &v22[OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_pendingSetSize];
  *v26 = 0;
  v26[8] = 1;
  swift_beginAccess();
  *v23 = a4;
  *(v23 + 1) = a5;
  swift_beginAccess();
  *v24 = a6;
  v24[8] = BYTE4(v30) & 1;
  swift_beginAccess();
  v27 = v31;
  *v25 = v32;
  *(v25 + 1) = v27;
  swift_beginAccess();
  *v26 = v33;
  v26[8] = v34 & 1;
  *&v22[OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_detailedPayload] = v35;
  v38 = 2;
  sub_1CEFCCBDC(a1, v21, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v28 = FPCKReportSection.init(phase:date:build:)(&v38, v21, v36, v37);
  sub_1CEFCCC44(a1, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  return v28;
}

id FPCKReportSPSSection.init(date:build:superPendingSetErrors:superPendingSetSize:pendingSetErrors:pendingSetSize:detailedPayload:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11, uint64_t a12)
{
  HIDWORD(v28) = a7;
  v34 = a2;
  v35 = a3;
  v33 = a12;
  v32 = a11;
  v30 = a8;
  v31 = a10;
  v29 = a9;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v28 - v19;
  v21 = (v12 + OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_superPendingSetErrors);
  *v21 = 0;
  v21[1] = 0;
  v22 = v12 + OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_superPendingSetSize;
  *v22 = 0;
  *(v22 + 8) = 1;
  v23 = (v12 + OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_pendingSetErrors);
  *v23 = 0;
  v23[1] = 0;
  v24 = v12 + OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_pendingSetSize;
  *v24 = 0;
  *(v24 + 8) = 1;
  swift_beginAccess();
  *v21 = a4;
  v21[1] = a5;
  swift_beginAccess();
  *v22 = a6;
  *(v22 + 8) = BYTE4(v28) & 1;
  swift_beginAccess();
  v25 = v29;
  *v23 = v30;
  v23[1] = v25;
  swift_beginAccess();
  *v24 = v31;
  *(v24 + 8) = v32 & 1;
  *(v12 + OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_detailedPayload) = v33;
  v36 = 2;
  sub_1CEFCCBDC(a1, v20, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v26 = FPCKReportSection.init(phase:date:build:)(&v36, v20, v34, v35);
  sub_1CEFCCC44(a1, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  return v26;
}

uint64_t sub_1CF4DA7BC()
{
  v1 = *v0;
  sub_1CF9E81D8();
  sub_1CF9E69C8();

  return sub_1CF9E8228();
}

uint64_t sub_1CF4DA8C8()
{
  *v0;
  *v0;
  *v0;
  sub_1CF9E69C8();
}

uint64_t sub_1CF4DA9C0()
{
  v1 = *v0;
  sub_1CF9E81D8();
  sub_1CF9E69C8();

  return sub_1CF9E8228();
}

uint64_t sub_1CF4DAAC8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1CF4E06B0();
  *a2 = result;
  return result;
}

void sub_1CF4DAAF8(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF64616F6C796150;
  v4 = 0x64656C6961746564;
  v5 = 0x80000001CFA2C470;
  v6 = 0xD000000000000013;
  if (v2 != 3)
  {
    v6 = 0x53676E69646E6570;
    v5 = 0xEE00657A69537465;
  }

  if (v2 != 2)
  {
    v4 = v6;
    v3 = v5;
  }

  v7 = 0x80000001CFA2C430;
  v8 = 0xD000000000000015;
  if (*v1)
  {
    v8 = 0xD000000000000010;
    v7 = 0x80000001CFA2C450;
  }

  if (*v1 <= 1u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v4;
  }

  if (*v1 <= 1u)
  {
    v3 = v7;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_1CF4DABC0()
{
  v1 = *v0;
  v2 = 0x64656C6961746564;
  v3 = 0xD000000000000013;
  if (v1 != 3)
  {
    v3 = 0x53676E69646E6570;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000015;
  if (*v0)
  {
    v4 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1CF4DAC84@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1CF4E06B0();
  *a1 = result;
  return result;
}

uint64_t sub_1CF4DACAC(uint64_t a1)
{
  v2 = sub_1CF4E02C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF4DACE8(uint64_t a1)
{
  v2 = sub_1CF4E02C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CF4DAD24(void *a1)
{
  v3 = v1;
  v44 = *MEMORY[0x1E69E9840];
  v5 = sub_1CF9E6938();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0900, &qword_1CFA06E38);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v38 - v10;
  result = sub_1CF4D68E0(a1);
  if (!v2)
  {
    v13 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1CF4E02C8();
    sub_1CF9E82A8();
    v14 = (v1 + OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_superPendingSetErrors);
    swift_beginAccess();
    v15 = *v14;
    v16 = v14[1];
    v43 = 0;

    sub_1CF9E7E38();

    v17 = (v3 + OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_pendingSetErrors);
    swift_beginAccess();
    v18 = *v17;
    v19 = v17[1];
    v42 = 1;

    sub_1CF9E7E38();

    v21 = (v3 + OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_superPendingSetSize);
    swift_beginAccess();
    v22 = *v21;
    v23 = *(v21 + 8);
    v41 = 3;
    sub_1CF9E7E58();
    v24 = (v3 + OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_pendingSetSize);
    swift_beginAccess();
    v25 = *v24;
    v26 = *(v24 + 8);
    v40 = 4;
    sub_1CF9E7E58();
    v27 = objc_opt_self();
    v28 = OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_detailedPayload;
    swift_beginAccess();
    v29 = *(v3 + v28);
    sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);

    v30 = sub_1CF9E6618();

    v39 = 0;
    v31 = [v27 dataWithJSONObject:v30 options:0 error:&v39];

    v32 = v39;
    if (v31)
    {
      v33 = sub_1CF9E5B88();
      v35 = v34;

      sub_1CF9E6918();
      sub_1CF9E68D8();
      LOBYTE(v39) = 2;
      sub_1CF9E7EB8();
      (*(v8 + 8))(v11, v7);
      sub_1CEFE4714(v33, v35);
    }

    else
    {
      v36 = v32;
      v37 = sub_1CF9E57F8();

      swift_willThrow();
      LOBYTE(v39) = 2;
      sub_1CF9E7EB8();
      result = (*(v8 + 8))(v11, v7);
    }
  }

  v20 = *MEMORY[0x1E69E9840];
  return result;
}

char *FPCKReportSPSSection.init(from:)(uint64_t *a1)
{
  v66[17] = *MEMORY[0x1E69E9840];
  v58 = sub_1CF9E6938();
  v57 = *(v58 - 8);
  v3 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0918, &unk_1CFA06E40);
  v59 = *(v6 - 8);
  v7 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v55 - v8;
  v10 = (v1 + OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_superPendingSetErrors);
  *v10 = 0;
  v10[1] = 0;
  v61 = v10;
  v11 = v1 + OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_superPendingSetSize;
  *v11 = 0;
  v11[8] = 1;
  v12 = (v1 + OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_pendingSetErrors);
  *v12 = 0;
  v12[1] = 0;
  v62 = v12;
  v63 = v1;
  v64 = a1;
  v13 = v1 + OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_pendingSetSize;
  *v13 = 0;
  v13[8] = 1;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF4E02C8();
  v15 = v60;
  sub_1CF9E8298();
  if (!v15)
  {
    v60 = v5;
    LOBYTE(v66[0]) = 0;
    v24 = sub_1CF9E7CB8();
    v26 = v25;
    v56 = v6;
    v27 = v61;
    swift_beginAccess();
    v28 = v27[1];
    *v27 = v24;
    v27[1] = v26;

    LOBYTE(v66[0]) = 1;
    v29 = sub_1CF9E7CB8();
    v30 = v62;
    v31 = v29;
    v33 = v32;
    swift_beginAccess();
    v34 = v30[1];
    *v30 = v31;
    v30[1] = v33;

    LOBYTE(v66[0]) = 3;
    v35 = sub_1CF9E7CD8();
    LOBYTE(v33) = v36;
    swift_beginAccess();
    *v11 = v35;
    v11[8] = v33 & 1;
    LOBYTE(v66[0]) = 4;
    v37 = sub_1CF9E7CD8();
    LOBYTE(v33) = v38;
    swift_beginAccess();
    *v13 = v37;
    v13[8] = v33 & 1;
    LOBYTE(v66[0]) = 2;
    sub_1CF9E7D48();
    v39 = v9;
    v40 = v60;
    sub_1CF9E6918();
    v41 = sub_1CF9E68C8();
    v43 = v42;

    (*(v57 + 8))(v40, v58);
    if (v43 >> 60 != 15)
    {
      v44 = objc_opt_self();
      v45 = sub_1CF9E5B48();
      v66[0] = 0;
      v46 = [v44 JSONObjectWithData:v45 options:0 error:v66];

      if (v46)
      {
        v47 = v66[0];
        sub_1CF9E7728();
        swift_unknownObjectRelease();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0920, &qword_1CFA01CC0);
        if (swift_dynamicCast())
        {
          v48 = sub_1CF4DB8C0(v65);
          sub_1CEFE48D8(v41, v43);

          v49 = v48;
          v50 = v59;
          v51 = v39;
LABEL_12:
          v54 = v64;
          *(v63 + OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_detailedPayload) = v49;
          sub_1CF1A91AC(v54, v66);
          v9 = FPCKReportSection.init(from:)(v66);
          (*(v50 + 8))(v51, v56);
          __swift_destroy_boxed_opaque_existential_1(v54);
          goto LABEL_4;
        }

        sub_1CEFE48D8(v41, v43);
      }

      else
      {
        v52 = v66[0];
        v53 = sub_1CF9E57F8();

        swift_willThrow();
        sub_1CEFE48D8(v41, v43);
      }
    }

    v50 = v59;
    v51 = v39;
    v49 = sub_1CF4E30C8(MEMORY[0x1E69E7CC0], &unk_1EC4C0E50, &qword_1CFA07CD8);
    goto LABEL_12;
  }

  v16 = v61;
  v17 = v62;
  __swift_destroy_boxed_opaque_existential_1(v64);
  v18 = v16[1];

  v19 = v17[1];

  type metadata accessor for FPCKReportSPSSection(0);
  v20 = *((*MEMORY[0x1E69E7D40] & *v63) + 0x30);
  v21 = *((*MEMORY[0x1E69E7D40] & *v63) + 0x34);
  swift_deallocPartialClassInstance();
LABEL_4:
  v22 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t sub_1CF4DB8C0(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC8];
  v39 = MEMORY[0x1E69E7CC8];
  v3 = a1 + 64;
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

  v9 = 0;
  while (v6)
  {
LABEL_10:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (v9 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_1CEFD1104(*(a1 + 56) + 32 * v12, v38);
    *&v37 = v15;
    *(&v37 + 1) = v14;
    v34 = v37;
    v35 = v38[0];
    v36 = v38[1];
    sub_1CEFD1104(&v35, v31);
    sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);

    if (swift_dynamicCast())
    {
      v16 = v32;
      if (!v32)
      {
        goto LABEL_17;
      }

      v33[0] = v35;
      v33[1] = v36;
      v32 = v34;
      v17 = *(v2 + 16);
      if (*(v2 + 24) <= v17)
      {
        sub_1CF7C3E7C(v17 + 1, 1);
      }

      v2 = v39;
      v18 = v32;
      v19 = *(v39 + 40);
      sub_1CF9E81D8();
      v40 = *(&v18 + 1);
      sub_1CF9E69C8();
      result = sub_1CF9E8228();
      v20 = v2 + 64;
      v21 = -1 << *(v2 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v2 + 64 + 8 * (v22 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v21) >> 6;
        while (++v23 != v26 || (v25 & 1) == 0)
        {
          v27 = v23 == v26;
          if (v23 == v26)
          {
            v23 = 0;
          }

          v25 |= v27;
          v28 = *(v20 + 8 * v23);
          if (v28 != -1)
          {
            v24 = __clz(__rbit64(~v28)) + (v23 << 6);
            goto LABEL_26;
          }
        }

        goto LABEL_29;
      }

      v24 = __clz(__rbit64((-1 << v22) & ~*(v2 + 64 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
      *(v20 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      v29 = (*(v2 + 48) + 16 * v24);
      v30 = v40;
      *v29 = v18;
      v29[1] = v30;
      *(*(v2 + 56) + 8 * v24) = v16;
      ++*(v2 + 16);
      result = __swift_destroy_boxed_opaque_existential_1(v33);
    }

    else
    {
      *&v32 = 0;
LABEL_17:
      result = sub_1CEFCCC44(&v34, &unk_1EC4C0D00, &unk_1CFA12A80);
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

id FPCKReportSPSSection.init(coder:)(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v74 = sub_1CF9E6118();
  v73 = *(v74 - 8);
  v4 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v5 = sub_1CF9E5CF8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v57[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v57[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v69 = &v57[-v15];
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v57[-v17];
  sub_1CEFD57E0(0, &unk_1EDEA3450, 0x1E695DEF0);
  v19 = sub_1CF9E7528();
  if (v19)
  {
    v68 = v9;
    v72 = v18;
    v20 = v19;
    v21 = sub_1CF9E5B88();
    v23 = v22;

    v24 = sub_1CF9E5408();
    v25 = *(v24 + 48);
    v26 = *(v24 + 52);
    swift_allocObject();
    sub_1CF9E53F8();
    sub_1CF4D6B90(&qword_1EC4C0928, type metadata accessor for FPCKReportSPSSection);
    v70 = v21;
    v71 = v23;
    sub_1CF9E53E8();
    v67 = a1;

    v27 = v76;
    v64 = v6;
    v28 = v72;
    (*(v6 + 16))(v72, &v76[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_date], v5);
    (*(v6 + 56))(v28, 0, 1, v5);
    v29 = *&v27[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_build + 8];
    v66 = *&v27[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_build];
    v74 = v29;
    v30 = &v27[OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_superPendingSetErrors];
    swift_beginAccess();
    v31 = *(v30 + 1);
    v65 = *v30;
    v73 = v31;
    v32 = &v27[OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_superPendingSetSize];
    swift_beginAccess();
    v63 = *v32;
    v61 = v32[8];
    v33 = &v27[OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_pendingSetErrors];
    swift_beginAccess();
    v34 = *(v33 + 1);
    v60 = *v33;
    v35 = &v27[OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_pendingSetSize];
    swift_beginAccess();
    v59 = *v35;
    v58 = v35[8];
    v36 = OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_detailedPayload;
    swift_beginAccess();
    v62 = v27;
    v37 = *&v27[v36];
    v38 = objc_allocWithZone(type metadata accessor for FPCKReportSPSSection(0));
    v39 = &v38[OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_superPendingSetErrors];
    *v39 = 0;
    v39[1] = 0;
    v40 = &v38[OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_superPendingSetSize];
    *v40 = 0;
    v40[8] = 1;
    v41 = &v38[OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_pendingSetErrors];
    *v41 = 0;
    v41[1] = 0;
    v42 = &v38[OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_pendingSetSize];
    *v42 = 0;
    v42[8] = 1;
    swift_beginAccess();
    v43 = v73;
    *v39 = v65;
    v39[1] = v43;
    swift_beginAccess();
    *v40 = v63;
    v40[8] = v61;
    swift_beginAccess();
    *v41 = v60;
    v41[1] = v34;
    v65 = v34;
    v44 = v64;
    swift_beginAccess();
    *v42 = v59;
    v42[8] = v58;
    v63 = v37;
    *&v38[OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_detailedPayload] = v37;
    v45 = v69;
    sub_1CEFCCBDC(v72, v69, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v38[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_phase] = 2;
    sub_1CEFCCBDC(v45, v13, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v46 = *(v44 + 48);
    if (v46(v13, 1, v5) == 1)
    {

      v47 = v68;
      sub_1CF9E5C88();
      if (v46(v13, 1, v5) != 1)
      {
        sub_1CEFCCC44(v13, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      }
    }

    else
    {
      v47 = v68;
      (*(v44 + 32))(v68, v13, v5);
    }

    (*(v44 + 32))(&v38[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_date], v47, v5);
    v51 = &v38[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_build];
    v52 = v74;
    *v51 = v66;
    v51[1] = v52;
    v53 = type metadata accessor for FPCKReportSection(0);
    v75.receiver = v38;
    v75.super_class = v53;
    v54 = objc_msgSendSuper2(&v75, sel_init);
    sub_1CEFCCC44(v45, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CEFE4714(v70, v71);

    sub_1CEFCCC44(v72, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    swift_getObjectType();
    v55 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x30);
    v56 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
    return v54;
  }

  else
  {

    swift_getObjectType();
    v48 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x30);
    v49 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }
}

uint64_t sub_1CF4DC590()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CF9FA440;
  *(inited + 32) = 0x656D6954737073;
  *(inited + 40) = 0xE700000000000000;
  sub_1CF9E5C98();
  v3 = MEMORY[0x1E69E63B0];
  *(inited + 48) = v4;
  *(inited + 72) = v3;
  *(inited + 80) = 0x646C697542737073;
  *(inited + 88) = 0xE800000000000000;
  v6 = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_build);
  v5 = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_build + 8);
  v7 = MEMORY[0x1E69E6158];
  *(inited + 120) = MEMORY[0x1E69E6158];
  *(inited + 96) = v6;
  *(inited + 104) = v5;

  v8 = sub_1CF4E04E8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE300, &unk_1CF9FC5D0);
  swift_arrayDestroy();
  v9 = (v1 + OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_superPendingSetErrors);
  swift_beginAccess();
  v10 = v9[1];
  if (v10)
  {
    v11 = *v9;
    v32 = v7;
    *&v31 = v11;
    *(&v31 + 1) = v10;
    sub_1CEFE9EB8(&v31, v30);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = v8;
    sub_1CF1D154C(v30, 0xD000000000000015, 0x80000001CFA2C430, isUniquelyReferenced_nonNull_native);
    v8 = v35;
  }

  v13 = (v1 + OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_pendingSetErrors);
  swift_beginAccess();
  v14 = v13[1];
  if (v14)
  {
    v15 = *v13;
    v32 = v7;
    *&v31 = v15;
    *(&v31 + 1) = v14;
    sub_1CEFE9EB8(&v31, v30);

    v16 = swift_isUniquelyReferenced_nonNull_native();
    v34 = v8;
    sub_1CF1D154C(v30, 0xD000000000000010, 0x80000001CFA2C450, v16);
    v8 = v34;
  }

  v17 = (v1 + OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_superPendingSetSize);
  swift_beginAccess();
  v18 = MEMORY[0x1E69E6530];
  if ((v17[1] & 1) == 0)
  {
    v19 = *v17;
    v32 = MEMORY[0x1E69E6530];
    *&v31 = v19;
    sub_1CEFE9EB8(&v31, v30);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v33 = v8;
    sub_1CF1D154C(v30, 0xD000000000000013, 0x80000001CFA2C470, v20);
    v8 = v33;
  }

  v21 = (v1 + OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_pendingSetSize);
  swift_beginAccess();
  if ((v21[1] & 1) == 0)
  {
    v22 = *v21;
    v32 = v18;
    *&v31 = v22;
    sub_1CEFE9EB8(&v31, v30);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    sub_1CF1D154C(v30, 0x53676E69646E6570, 0xEE00657A69537465, v23);
  }

  v24 = OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_detailedPayload;
  swift_beginAccess();
  v25 = *(v1 + v24);

  v27 = sub_1CF7BAF4C(v26);

  v28 = swift_isUniquelyReferenced_nonNull_native();
  *&v30[0] = v8;
  sub_1CF4E4D04(v27, sub_1CF4E033C, 0, v28, v30);

  return *&v30[0];
}

uint64_t sub_1CF4DC95C()
{
  v1 = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_superPendingSetErrors + 8);

  v2 = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_pendingSetErrors + 8);

  v3 = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_detailedPayload);
}

uint64_t sub_1CF4DCA34(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  v8 = *(v6 + v7);
  *(v6 + v7) = v5;
}

uint64_t sub_1CF4DCAA4(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t sub_1CF4DCAF4(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
}

id FPCKReportConsistencySection.__allocating_init(date:build:payload:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v16 - v11;
  v13 = objc_allocWithZone(v4);
  *&v13[OBJC_IVAR____TtC18FileProviderDaemon28FPCKReportConsistencySection_payload] = a4;
  v17 = 11;
  sub_1CEFCCBDC(a1, v12, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v14 = FPCKReportSection.init(phase:date:build:)(&v17, v12, a2, a3);
  sub_1CEFCCC44(a1, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  return v14;
}

id FPCKReportConsistencySection.init(date:build:payload:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v15[-v11];
  *(v4 + OBJC_IVAR____TtC18FileProviderDaemon28FPCKReportConsistencySection_payload) = a4;
  v16 = 11;
  sub_1CEFCCBDC(a1, &v15[-v11], &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v13 = FPCKReportSection.init(phase:date:build:)(&v16, v12, a2, a3);
  sub_1CEFCCC44(a1, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  return v13;
}

uint64_t sub_1CF4DCDB4()
{
  sub_1CF9E81D8();
  sub_1CF9E69C8();
  return sub_1CF9E8228();
}

uint64_t sub_1CF4DCE34()
{
  sub_1CF9E81D8();
  sub_1CF9E69C8();
  return sub_1CF9E8228();
}

uint64_t sub_1CF4DCE8C@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1CF9E7C78();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_1CF4DCF10@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1CF9E7C78();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1CF4DCF68(uint64_t a1)
{
  v2 = sub_1CF4E31C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF4DCFA4(uint64_t a1)
{
  v2 = sub_1CF4E31C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CF4DCFE0(void *a1)
{
  v3 = v1;
  v27[4] = *MEMORY[0x1E69E9840];
  v5 = sub_1CF9E6938();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0930, &qword_1CFA06E50);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v27[-1] - v10;
  result = sub_1CF4D68E0(a1);
  if (!v2)
  {
    v26 = v8;
    v13 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1CF4E31C4();
    sub_1CF9E82A8();
    v14 = objc_opt_self();
    v15 = OBJC_IVAR____TtC18FileProviderDaemon28FPCKReportConsistencySection_payload;
    swift_beginAccess();
    v16 = *(v3 + v15);
    sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);

    v17 = sub_1CF9E6618();

    v27[0] = 0;
    v18 = [v14 dataWithJSONObject:v17 options:0 error:v27];

    v19 = v27[0];
    if (v18)
    {
      v20 = sub_1CF9E5B88();
      v22 = v21;

      sub_1CF9E6918();
      sub_1CF9E68D8();
      sub_1CF9E7EB8();
      (*(v26 + 8))(v11, v7);
      sub_1CEFE4714(v20, v22);
    }

    else
    {
      v23 = v19;
      v24 = sub_1CF9E57F8();

      swift_willThrow();
      sub_1CF9E7EB8();
      result = (*(v26 + 8))(v11, v7);
    }
  }

  v25 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t FPCKReportConsistencySection.init(from:)(uint64_t *a1)
{
  v40[5] = *MEMORY[0x1E69E9840];
  v3 = sub_1CF9E6938();
  v36 = *(v3 - 8);
  v4 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0940, &qword_1CFA06E58);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v34 - v10;
  v13 = a1[3];
  v12 = a1[4];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1CF4E31C4();
  sub_1CF9E8298();
  if (!v1)
  {
    v14 = v36;
    v35 = v8;
    sub_1CF9E7D48();
    sub_1CF9E6918();
    v19 = sub_1CF9E68C8();
    v21 = v20;

    (*(v14 + 8))(v6, v3);
    if (v21 >> 60 == 15)
    {
      v22 = v11;
    }

    else
    {
      v23 = objc_opt_self();
      v24 = sub_1CF9E5B48();
      v40[0] = 0;
      v25 = [v23 JSONObjectWithData:v24 options:0 error:v40];

      if (v25)
      {
        v26 = v40[0];
        sub_1CF9E7728();
        swift_unknownObjectRelease();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0920, &qword_1CFA01CC0);
        v22 = v11;
        if (swift_dynamicCast())
        {
          v27 = sub_1CF4DB8C0(v39);
          sub_1CEFE48D8(v19, v21);

          v28 = v27;
          v29 = v7;
LABEL_13:
          v32 = v35;
          v33 = v37;
          *(v38 + OBJC_IVAR____TtC18FileProviderDaemon28FPCKReportConsistencySection_payload) = v28;
          sub_1CF1A91AC(v33, v40);
          v7 = FPCKReportSection.init(from:)(v40);
          (*(v32 + 8))(v22, v29);
          __swift_destroy_boxed_opaque_existential_1(v33);
          goto LABEL_4;
        }

        sub_1CEFE48D8(v19, v21);
      }

      else
      {
        v22 = v11;
        v30 = v40[0];
        v31 = sub_1CF9E57F8();

        swift_willThrow();
        sub_1CEFE48D8(v19, v21);
      }
    }

    v29 = v7;
    v28 = sub_1CF4E30C8(MEMORY[0x1E69E7CC0], &unk_1EC4C0E50, &qword_1CFA07CD8);
    goto LABEL_13;
  }

  __swift_destroy_boxed_opaque_existential_1(v37);
  type metadata accessor for FPCKReportConsistencySection(0);
  v15 = *((*MEMORY[0x1E69E7D40] & *v38) + 0x30);
  v16 = *((*MEMORY[0x1E69E7D40] & *v38) + 0x34);
  swift_deallocPartialClassInstance();
LABEL_4:
  v17 = *MEMORY[0x1E69E9840];
  return v7;
}

id FPCKReportConsistencySection.init(coder:)(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_1CF9E6118();
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x1EEE9AC00](v4);
  v7 = sub_1CF9E5CF8();
  v49 = *(v7 - 8);
  v8 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v48 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v45 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v45 - v18;
  sub_1CEFD57E0(0, &unk_1EDEA3450, 0x1E695DEF0);
  v20 = sub_1CF9E7528();
  if (v20)
  {
    v46 = v5;
    v47 = v4;
    v52 = a1;
    v21 = v20;
    v22 = sub_1CF9E5B88();
    v24 = v23;

    v25 = sub_1CF9E5408();
    v26 = *(v25 + 48);
    v27 = *(v25 + 52);
    swift_allocObject();
    sub_1CF9E53F8();
    sub_1CF4D6B90(&qword_1EC4C0948, type metadata accessor for FPCKReportConsistencySection);
    v50 = v22;
    v51 = v24;
    sub_1CF9E53E8();

    v28 = v54;
    v29 = v49;
    (*(v49 + 16))(v19, &v54[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_date], v7);
    (*(v29 + 56))(v19, 0, 1, v7);
    v30 = *&v28[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_build + 8];
    v45 = *&v28[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_build];
    v47 = v30;
    v31 = OBJC_IVAR____TtC18FileProviderDaemon28FPCKReportConsistencySection_payload;
    swift_beginAccess();
    v46 = v28;
    v32 = *&v28[v31];
    v33 = objc_allocWithZone(type metadata accessor for FPCKReportConsistencySection(0));
    *&v33[OBJC_IVAR____TtC18FileProviderDaemon28FPCKReportConsistencySection_payload] = v32;
    sub_1CEFCCBDC(v19, v16, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v33[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_phase] = 11;
    sub_1CEFCCBDC(v16, v13, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v34 = *(v29 + 48);
    if (v34(v13, 1, v7) == 1)
    {

      v35 = v48;
      sub_1CF9E5C88();
      if (v34(v13, 1, v7) != 1)
      {
        sub_1CEFCCC44(v13, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      }
    }

    else
    {
      v35 = v48;
      (*(v29 + 32))(v48, v13, v7);
    }

    (*(v29 + 32))(&v33[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_date], v35, v7);
    v39 = &v33[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_build];
    v40 = v47;
    *v39 = v45;
    v39[1] = v40;
    v41 = type metadata accessor for FPCKReportSection(0);
    v53.receiver = v33;
    v53.super_class = v41;
    v42 = objc_msgSendSuper2(&v53, sel_init);
    sub_1CEFCCC44(v16, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CEFE4714(v50, v51);

    sub_1CEFCCC44(v19, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    swift_getObjectType();
    v43 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x30);
    v44 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
    return v42;
  }

  else
  {

    swift_getObjectType();
    v36 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x30);
    v37 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }
}

unint64_t sub_1CF4DDF0C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CF9FA440;
  *(inited + 32) = 0x65747369736E6F63;
  *(inited + 40) = 0xEF656D695479636ELL;
  sub_1CF9E5C98();
  v3 = MEMORY[0x1E69E63B0];
  *(inited + 48) = v4;
  *(inited + 72) = v3;
  *(inited + 80) = 0xD000000000000010;
  *(inited + 88) = 0x80000001CFA4FE90;
  v6 = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_build);
  v5 = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_build + 8);
  *(inited + 120) = MEMORY[0x1E69E6158];
  *(inited + 96) = v6;
  *(inited + 104) = v5;

  v7 = sub_1CF4E04E8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE300, &unk_1CF9FC5D0);
  swift_arrayDestroy();
  v8 = OBJC_IVAR____TtC18FileProviderDaemon28FPCKReportConsistencySection_payload;
  swift_beginAccess();
  v9 = *(v1 + v8);

  v11 = sub_1CF7BAF4C(v10);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = v7;
  sub_1CF4E4D04(v11, sub_1CF4E033C, 0, isUniquelyReferenced_nonNull_native, &v14);

  return v14;
}

id sub_1CF4DE114()
{
  v1 = OBJC_IVAR____TtC18FileProviderDaemon10FPCKReport_start;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1CF4DE168(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18FileProviderDaemon10FPCKReport_start;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_1CF4DE220(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  v8 = *(v6 + v7);
  *(v6 + v7) = v5;
  v9 = v5;
}

id sub_1CF4DE27C()
{
  v1 = OBJC_IVAR____TtC18FileProviderDaemon10FPCKReport_latest;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1CF4DE2D0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18FileProviderDaemon10FPCKReport_latest;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_1CF4DE388()
{
  v1 = OBJC_IVAR____TtC18FileProviderDaemon10FPCKReport_superPendingSet;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1CF4DE3D4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18FileProviderDaemon10FPCKReport_superPendingSet;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_1CF4DE48C()
{
  v1 = OBJC_IVAR____TtC18FileProviderDaemon10FPCKReport_consistency;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1CF4DE4D8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18FileProviderDaemon10FPCKReport_consistency;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1CF4DE59C()
{
  v1 = *v0;
  sub_1CF9E81D8();
  sub_1CF9E69C8();

  return sub_1CF9E8228();
}

uint64_t sub_1CF4DE66C()
{
  *v0;
  *v0;
  *v0;
  sub_1CF9E69C8();
}

uint64_t sub_1CF4DE728()
{
  v1 = *v0;
  sub_1CF9E81D8();
  sub_1CF9E69C8();

  return sub_1CF9E8228();
}

uint64_t sub_1CF4DE7F4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1CF4E0618();
  *a2 = result;
  return result;
}

void sub_1CF4DE824(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x7472617473;
  v4 = 0xEF746553676E6964;
  v5 = 0x6E65507265707573;
  if (*v1 != 2)
  {
    v5 = 0x65747369736E6F63;
    v4 = 0xEB0000000079636ELL;
  }

  if (*v1)
  {
    v3 = 0x74736574616CLL;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1CF4DE8B0()
{
  v1 = 0x7472617473;
  v2 = 0x6E65507265707573;
  if (*v0 != 2)
  {
    v2 = 0x65747369736E6F63;
  }

  if (*v0)
  {
    v1 = 0x74736574616CLL;
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

uint64_t sub_1CF4DE938@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1CF4E0618();
  *a1 = result;
  return result;
}

uint64_t sub_1CF4DE960(uint64_t a1)
{
  v2 = sub_1CF4E890C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF4DE99C(uint64_t a1)
{
  v2 = sub_1CF4E890C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CF4DE9F0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0970, &qword_1CFA06E60);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF4E890C();
  sub_1CF9E82A8();
  v11 = OBJC_IVAR____TtC18FileProviderDaemon10FPCKReport_start;
  swift_beginAccess();
  v20 = *(v3 + v11);
  LOBYTE(v19) = 0;
  type metadata accessor for FPCKReportStartSection(0);
  sub_1CF4D6B90(&qword_1EC4C0980, type metadata accessor for FPCKReportStartSection);
  sub_1CF9E7F08();
  if (!v2)
  {
    v12 = OBJC_IVAR____TtC18FileProviderDaemon10FPCKReport_latest;
    swift_beginAccess();
    v19 = *(v3 + v12);
    LOBYTE(v18) = 1;
    type metadata accessor for FPCKReportStatusSection(0);
    sub_1CF4D6B90(&qword_1EC4C0988, type metadata accessor for FPCKReportStatusSection);
    sub_1CF9E7F08();
    v13 = OBJC_IVAR____TtC18FileProviderDaemon10FPCKReport_superPendingSet;
    swift_beginAccess();
    v18 = *(v3 + v13);
    LOBYTE(v17) = 2;
    type metadata accessor for FPCKReportSPSSection(0);
    sub_1CF4D6B90(&qword_1EC4C0990, type metadata accessor for FPCKReportSPSSection);
    sub_1CF9E7E68();
    v14 = OBJC_IVAR____TtC18FileProviderDaemon10FPCKReport_consistency;
    swift_beginAccess();
    v17 = *(v3 + v14);
    v16[7] = 3;
    type metadata accessor for FPCKReportConsistencySection(0);
    sub_1CF4D6B90(&qword_1EC4C0998, type metadata accessor for FPCKReportConsistencySection);
    sub_1CF9E7E68();
  }

  return (*(v6 + 8))(v9, v5);
}

id FPCKReport.__allocating_init(start:latest:superPendingSet:consistency:)(void *a1, void *a2, void *a3, void *a4)
{
  v72 = a3;
  v73 = a4;
  v71 = a2;
  v6 = sub_1CF9E5CF8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v64 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v65 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v68 = &v64 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v67 = &v64 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v64 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v64 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v64 - v28;
  v30 = objc_allocWithZone(v4);
  v31 = a1;
  v69 = OBJC_IVAR____TtC18FileProviderDaemon10FPCKReport_superPendingSet;
  *&v30[OBJC_IVAR____TtC18FileProviderDaemon10FPCKReport_superPendingSet] = 0;
  v70 = OBJC_IVAR____TtC18FileProviderDaemon10FPCKReport_consistency;
  *&v30[OBJC_IVAR____TtC18FileProviderDaemon10FPCKReport_consistency] = 0;
  v74 = v4;
  if (a1)
  {
    v32 = v7;
    v33 = v31;
  }

  else
  {
    v66 = 0;
    v64 = v10;
    (*(v7 + 56))(v29, 1, 1, v6);
    v34 = objc_allocWithZone(type metadata accessor for FPCKReportStartSection(0));
    v35 = &v34[OBJC_IVAR____TtC18FileProviderDaemon22FPCKReportStartSection_runReason];
    *v35 = 0x6E776F6E6B6E75;
    v35[1] = 0xE700000000000000;
    sub_1CEFCCBDC(v29, v26, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v34[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_phase] = 1;
    sub_1CEFCCBDC(v26, v23, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v36 = *(v7 + 48);
    if (v36(v23, 1, v6) == 1)
    {
      sub_1CF9E5C88();
      if (v36(v23, 1, v6) != 1)
      {
        sub_1CEFCCC44(v23, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      }
    }

    else
    {
      (*(v7 + 32))(v13, v23, v6);
    }

    v32 = v7;
    (*(v7 + 32))(&v34[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_date], v13, v6);
    v37 = &v34[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_build];
    *v37 = 0x6E776F6E6B6E75;
    v37[1] = 0xE700000000000000;
    v38 = type metadata accessor for FPCKReportSection(0);
    v77.receiver = v34;
    v77.super_class = v38;
    v33 = objc_msgSendSuper2(&v77, sel_init);
    sub_1CEFCCC44(v26, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CEFCCC44(v29, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v10 = v64;
    v31 = v66;
  }

  *&v30[OBJC_IVAR____TtC18FileProviderDaemon10FPCKReport_start] = v33;
  v39 = v71;
  if (v71)
  {
    v40 = v31;
    v41 = v39;
    v42 = &selRef_defaultNSDomainForDescriptor_;
  }

  else
  {
    v66 = v31;
    v43 = v67;
    (*(v32 + 56))(v67, 1, 1, v6);
    v44 = objc_allocWithZone(type metadata accessor for FPCKReportStatusSection(0));
    *&v44[OBJC_IVAR____TtC18FileProviderDaemon23FPCKReportStatusSection_error] = 0;
    v45 = v43;
    v46 = v68;
    sub_1CEFCCBDC(v45, v68, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v44[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_phase] = 1;
    v47 = v46;
    v48 = v65;
    sub_1CEFCCBDC(v47, v65, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v49 = *(v32 + 48);
    if (v49(v48, 1, v6) == 1)
    {
      v40 = v66;
      v64 = v10;
      sub_1CF9E5C88();
      if (v49(v48, 1, v6) != 1)
      {
        sub_1CEFCCC44(v48, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      }

      v42 = &selRef_defaultNSDomainForDescriptor_;
      v50 = v64;
    }

    else
    {
      (*(v32 + 32))(v10, v48, v6);
      v40 = v66;
      v50 = v10;
      v42 = &selRef_defaultNSDomainForDescriptor_;
    }

    (*(v32 + 32))(&v44[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_date], v50, v6);
    v51 = &v44[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_build];
    *v51 = 0x6E776F6E6B6E75;
    v51[1] = 0xE700000000000000;
    v52 = type metadata accessor for FPCKReportSection(0);
    v76.receiver = v44;
    v76.super_class = v52;
    v41 = objc_msgSendSuper2(&v76, v42[418]);
    sub_1CEFCCC44(v68, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CEFCCC44(v67, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  }

  *&v30[OBJC_IVAR____TtC18FileProviderDaemon10FPCKReport_latest] = v41;
  v53 = v69;
  swift_beginAccess();
  v54 = *&v30[v53];
  v55 = v72;
  *&v30[v53] = v72;
  v56 = v39;
  v57 = v55;

  v58 = v70;
  swift_beginAccess();
  v59 = *&v30[v58];
  v60 = v73;
  *&v30[v58] = v73;
  v61 = v60;

  v75.receiver = v30;
  v75.super_class = v74;
  v62 = objc_msgSendSuper2(&v75, v42[418]);

  return v62;
}

id FPCKReport.init(start:latest:superPendingSet:consistency:)(void *a1, void *a2, void *a3, void *a4)
{
  v8 = sub_1CF4E8960(a1, a2, a3, a4);

  return v8;
}

void sub_1CF4DF514(_BYTE *a1)
{
  v2 = sub_1CF9E5CF8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v37 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v37 - v11;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v37 - v15;
  v17 = a1[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_phase];
  (*(v3 + 16))(&v37 - v15, &a1[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_date], v2, v14);
  (*(v3 + 56))(v16, 0, 1, v2);
  v40 = a1;
  v18 = &a1[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_build];
  v19 = *&a1[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_build + 8];
  v38 = *v18;
  v20 = objc_allocWithZone(type metadata accessor for FPCKReportStatusSection(0));
  *&v20[OBJC_IVAR____TtC18FileProviderDaemon23FPCKReportStatusSection_error] = 0;
  sub_1CEFCCBDC(v16, v12, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v20[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_phase] = v17;
  sub_1CEFCCBDC(v12, v9, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v21 = *(v3 + 48);
  if (v21(v9, 1, v2) == 1)
  {

    v22 = v37;
    sub_1CF9E5C88();
    if (v21(v9, 1, v2) != 1)
    {
      sub_1CEFCCC44(v9, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    }
  }

  else
  {
    v22 = v37;
    (*(v3 + 32))(v37, v9, v2);
  }

  (*(v3 + 32))(&v20[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_date], v22, v2);
  v23 = &v20[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_build];
  *v23 = v38;
  v23[1] = v19;
  v24 = type metadata accessor for FPCKReportSection(0);
  v41.receiver = v20;
  v41.super_class = v24;
  v25 = objc_msgSendSuper2(&v41, sel_init);
  sub_1CEFCCC44(v12, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  sub_1CEFCCC44(v16, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v26 = OBJC_IVAR____TtC18FileProviderDaemon10FPCKReport_latest;
  v27 = v39;
  swift_beginAccess();
  v28 = *(v27 + v26);
  *(v27 + v26) = v25;

  type metadata accessor for FPCKReportStartSection(0);
  v29 = v40;
  v30 = swift_dynamicCastClass();
  if (v30)
  {
    v31 = v30;
    v32 = OBJC_IVAR____TtC18FileProviderDaemon10FPCKReport_start;
  }

  else
  {
    type metadata accessor for FPCKReportSPSSection(0);
    v33 = swift_dynamicCastClass();
    if (v33)
    {
      v31 = v33;
      v32 = OBJC_IVAR____TtC18FileProviderDaemon10FPCKReport_superPendingSet;
    }

    else
    {
      type metadata accessor for FPCKReportConsistencySection(0);
      v34 = swift_dynamicCastClass();
      if (!v34)
      {
        return;
      }

      v31 = v34;
      v32 = OBJC_IVAR____TtC18FileProviderDaemon10FPCKReport_consistency;
    }
  }

  swift_beginAccess();
  v35 = *(v27 + v32);
  *(v27 + v32) = v31;
  v36 = v29;
}

id sub_1CF4DF990(void *a1)
{
  v3 = OBJC_IVAR____TtC18FileProviderDaemon10FPCKReport_superPendingSet;
  *&v1[OBJC_IVAR____TtC18FileProviderDaemon10FPCKReport_superPendingSet] = 0;
  v4 = OBJC_IVAR____TtC18FileProviderDaemon10FPCKReport_consistency;
  *&v1[OBJC_IVAR____TtC18FileProviderDaemon10FPCKReport_consistency] = 0;

  *&v1[OBJC_IVAR____TtC18FileProviderDaemon10FPCKReport_start] = sub_1CF4E606C(v5);

  *&v1[OBJC_IVAR____TtC18FileProviderDaemon10FPCKReport_latest] = sub_1CF4E523C(v6);

  v8 = sub_1CF4E65F4(v7);
  swift_beginAccess();
  v9 = *&v1[v3];
  *&v1[v3] = v8;

  v10 = sub_1CF4E76FC(a1);
  swift_beginAccess();
  v11 = *&v1[v4];
  *&v1[v4] = v10;

  v13.receiver = v1;
  v13.super_class = type metadata accessor for FPCKReport();
  return objc_msgSendSuper2(&v13, sel_init);
}

uint64_t sub_1CF4DFA80()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18FileProviderDaemon10FPCKReport_start;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = sub_1CF4D9D80();

  v5 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v71 = v5;
  sub_1CF4E4D04(v4, sub_1CF4E033C, 0, isUniquelyReferenced_nonNull_native, &v71);

  v7 = v71;
  v8 = OBJC_IVAR____TtC18FileProviderDaemon10FPCKReport_latest;
  swift_beginAccess();
  v9 = *(v1 + v8);
  v10 = sub_1CF4D8CB0();

  v11 = swift_isUniquelyReferenced_nonNull_native();
  *&v71 = v7;
  sub_1CF4E4D04(v10, sub_1CF4E033C, 0, v11, &v71);

  v12 = v71;
  v13 = OBJC_IVAR____TtC18FileProviderDaemon10FPCKReport_superPendingSet;
  swift_beginAccess();
  v14 = *(v1 + v13);
  if (v14)
  {
    v15 = v14;
    v16 = sub_1CF4DC590();
    v17 = swift_isUniquelyReferenced_nonNull_native();
    *&v71 = v12;
    sub_1CF4E4D04(v16, sub_1CF4E033C, 0, v17, &v71);

    v12 = v71;
  }

  v18 = OBJC_IVAR____TtC18FileProviderDaemon10FPCKReport_consistency;
  swift_beginAccess();
  v19 = *(v1 + v18);
  if (v19)
  {
    v20 = v19;
    v21 = sub_1CF4DDF0C();
    v22 = swift_isUniquelyReferenced_nonNull_native();
    *&v71 = v12;
    sub_1CF4E4D04(v21, sub_1CF4E033C, 0, v22, &v71);

    v12 = v71;
  }

  v23 = *(*(v1 + v8) + OBJC_IVAR____TtC18FileProviderDaemon23FPCKReportStatusSection_error);
  if (!v23)
  {
    return v12;
  }

  v24 = *(v12 + 16);
  v25 = v23;
  v26 = MEMORY[0x1E69E6530];
  if (!v24)
  {
    goto LABEL_14;
  }

  v27 = sub_1CEFE4328(0x737574617473, 0xE600000000000000);
  if ((v28 & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_1CEFD1104(*(v12 + 56) + 32 * v27, &v71);
  v29 = MEMORY[0x1E69E6530];
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    goto LABEL_14;
  }

  v31 = *&v70[0];
  if ((*&v70[0] & 0x8000000000000000) == 0 || (v31 = -*&v70[0], !__OFSUB__(0, *&v70[0])))
  {
    v72 = v29;
    v32 = __OFSUB__(0, v31);
    v33 = -v31;
    if (!v32)
    {
LABEL_15:
      *&v71 = v33;
      sub_1CEFE9EB8(&v71, v70);
      v34 = swift_isUniquelyReferenced_nonNull_native();
      sub_1CF1D154C(v70, 0x737574617473, 0xE600000000000000, v34);
      v35 = v12;
      if (*(v12 + 16) && (v36 = sub_1CEFE4328(0x526E75524B435046, 0xED00006E6F736165), (v37 & 1) != 0) && (sub_1CEFD1104(*(v12 + 56) + 32 * v36, &v71), (swift_dynamicCast() & 1) != 0))
      {
        v38 = *(&v70[0] + 1);
        v39 = *&v70[0];
      }

      else
      {
        v38 = 0xE700000000000000;
        v39 = 0x6E776F6E6B6E75;
      }

      *&v71 = v39;
      *(&v71 + 1) = v38;
      *&v70[0] = 0x726F727265;
      *(&v70[0] + 1) = 0xE500000000000000;
      sub_1CEFE4E68();
      v40 = MEMORY[0x1E69E6158];
      if (sub_1CF9E7698())
      {
      }

      else
      {
        *&v71 = v39;
        *(&v71 + 1) = v38;
        MEMORY[0x1D3868CC0](0x726F7272657CLL, 0xE600000000000000);
        v72 = v40;
        sub_1CEFE9EB8(&v71, v70);
        v41 = swift_isUniquelyReferenced_nonNull_native();
        sub_1CF1D154C(v70, 0x526E75524B435046, 0xED00006E6F736165, v41);
      }

      v42 = *MEMORY[0x1E6966F58];
      v43 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v45 = v43;
      v46 = v44;
      v47 = MEMORY[0x1E69E6810];
      if (*(v35 + 16) && (v48 = sub_1CEFE4328(v43, v44), (v49 & 1) != 0) && (sub_1CEFD1104(*(v35 + 56) + 32 * v48, &v71), (swift_dynamicCast() & 1) != 0))
      {
        if ((*&v70[0] & 0xFFFFFFFFDFFFFFFFLL) != 0)
        {
          v50 = *&v70[0] | 0x20000000;
        }

        else
        {
          v50 = 0x20000000;
        }
      }

      else
      {
        v50 = 0x20000000;
      }

      v72 = v47;
      *&v71 = v50;
      sub_1CEFE9EB8(&v71, v70);
      v51 = swift_isUniquelyReferenced_nonNull_native();
      sub_1CF1D154C(v70, v45, v46, v51);

      v12 = v35;
      if (v50 == 0x20000000)
      {
        v52 = *MEMORY[0x1E6966F50];
        v53 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v55 = v54;
        v56 = sub_1CF9E57E8();
        v57 = [v56 domain];

        v58 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v60 = v59;

        v72 = v40;
        *&v71 = v58;
        *(&v71 + 1) = v60;
        sub_1CEFE9EB8(&v71, v70);
        v61 = swift_isUniquelyReferenced_nonNull_native();
        sub_1CF1D154C(v70, v53, v55, v61);

        v62 = v12;
        v63 = *MEMORY[0x1E6966F48];
        v64 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v66 = v65;
        v67 = sub_1CF9E57E8();
        v68 = [v67 code];

        v72 = v26;
        *&v71 = v68;
        sub_1CEFE9EB8(&v71, v70);
        v69 = swift_isUniquelyReferenced_nonNull_native();
        sub_1CF1D154C(v70, v64, v66, v69);

        return v62;
      }

      else
      {
      }

      return v12;
    }

    __break(1u);
LABEL_14:
    v33 = -1;
    v72 = v26;
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

id sub_1CF4E0158@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1CF4E827C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

id sub_1CF4E01A8@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(v1) init];
  *a1 = result;
  return result;
}

unint64_t sub_1CF4E01E0()
{
  result = qword_1EC4C08C8;
  if (!qword_1EC4C08C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C08C8);
  }

  return result;
}

unint64_t sub_1CF4E0254()
{
  result = qword_1EC4C08E8;
  if (!qword_1EC4C08E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C08E8);
  }

  return result;
}

unint64_t sub_1CF4E02C8()
{
  result = qword_1EC4C0908;
  if (!qword_1EC4C0908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C0908);
  }

  return result;
}

uint64_t sub_1CF4E033C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_1CEFD1104((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}

uint64_t sub_1CF4E0388@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1CEFD1104(*(v3 + 56) + 32 * v13, v22);
    *&v23 = v16;
    *(&v23 + 1) = v15;
    sub_1CEFE9EB8(v22, &v24);

    v18 = *(&v23 + 1);
    v19 = v23;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v18)
    {
      v21 = v1[5];
      v20 = v1[6];
      *&v22[0] = v19;
      *(&v22[0] + 1) = v18;
      v22[1] = v24;
      v22[2] = v25;
      v21(v22);
      return sub_1CEFCCC44(v22, &unk_1EC4C0D00, &unk_1CFA12A80);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v18 = 0;
        v19 = 0;
        v12 = 0;
        v24 = 0u;
        v25 = 0u;
        v23 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_1CF4E04E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFA30, &unk_1CFA079A0);
    v3 = sub_1CF9E7BE8();
    v4 = a1 + 32;

    while (1)
    {
      sub_1CEFCCBDC(v4, &v13, &unk_1EC4BE300, &unk_1CF9FC5D0);
      v5 = v13;
      v6 = v14;
      result = sub_1CEFE4328(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1CEFE9EB8(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1CF4E0618()
{
  v0 = sub_1CF9E7C78();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1CF4E0664()
{
  v0 = sub_1CF9E7C78();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1CF4E06B0()
{
  v0 = sub_1CF9E7C78();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1CF4E06FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4D60, &qword_1CFA079B0);
    v3 = sub_1CF9E7BE8();
    v4 = a1 + 32;

    for (i = v1 - 1; ; --i)
    {
      v6 = *(v4 + 16);
      v16[0] = *v4;
      v16[1] = v6;
      v17 = *(v4 + 32);
      v18 = *(v4 + 48);
      v19 = v16[0];
      v20 = v6;
      v21 = v17;
      sub_1CEFCCBDC(v16, v15, &qword_1EC4C0B20, &qword_1CFA079B8);
      result = sub_1CF7BF13C(&v19);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 48 * result);
      v10 = v20;
      v11 = v21;
      *v9 = v19;
      v9[1] = v10;
      v9[2] = v11;
      *(v3[7] + 8 * result) = v18;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_11;
      }

      v3[2] = v14;
      if (!i)
      {

        return v3;
      }

      v4 += 56;
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1CF4E0858(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0D10, &qword_1CFA07BA8);
    v3 = sub_1CF9E7BE8();
    v4 = a1 + 32;

    while (1)
    {
      sub_1CEFCCBDC(v4, &v11, &qword_1EC4BFAB8, &unk_1CFA07BB0);
      v5 = v11;
      result = sub_1CF7BF1F0(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1CEFE9EB8(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1CF4E0980(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0B48, &unk_1CFA079E0);
    v3 = sub_1CF9E7BE8();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1CEFE4328(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1CF4E0A94(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0BE8, &qword_1CFA07A90);
    v3 = sub_1CF9E7BE8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1CEFE4328(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1CF4E0B90(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0CE8, &unk_1CFA07B90);
    v3 = sub_1CF9E7BE8();

    for (i = (a1 + 40); ; i = (i + 24))
    {
      v11 = *i;
      v5 = *(i - 1);

      result = sub_1CEFE863C(v5);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 16 * result) = v11;
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1CF4E0CC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0CC0, &qword_1CFA07B58);
  v3 = sub_1CF9E7BE8();
  LODWORD(v4) = *(a1 + 32);
  v15 = *(a1 + 40);
  v5 = *(a1 + 56);
  result = sub_1CF7D52AC(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = (a1 + 88);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 4 * result) = v4;
    v9 = v3[7] + 24 * result;
    *v9 = v15;
    *(v9 + 16) = v5;
    v10 = v3[2];
    v11 = __OFADD__(v10, 1);
    v12 = v10 + 1;
    if (v11)
    {
      break;
    }

    v3[2] = v12;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v13 = v8 + 8;
    v4 = *(v8 - 6);
    v15 = *(v8 - 1);
    v5 = *v8;

    result = sub_1CF7D52AC(v4);
    v8 = v13;
    if (v14)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1CF4E0E00(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0B98, &unk_1CFA07A30);
    v3 = sub_1CF9E7BE8();
    v4 = a1 + 32;

    while (1)
    {
      sub_1CEFCCBDC(v4, v13, &qword_1EC4C0600, &unk_1CF9FE790);
      result = sub_1CF0271B0(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1CEFE9EB8(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1CF4E0F3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0C80, &qword_1CFA07B18);
    v3 = sub_1CF9E7BE8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1CEFE4328(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1CF4E1040(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0C68, &unk_1CFA07B00);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0C70, &unk_1CFA17170);
    v8 = sub_1CF9E7BE8();
    v22 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_1CEFCCBDC(v9, v6, &qword_1EC4C0C68, &unk_1CFA07B00);
      result = sub_1CF7BF2C0(*v6, v6[8]);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v8[6] + 16 * result;
      v15 = v6[8];
      *v14 = *v6;
      *(v14 + 8) = v15;
      v16 = v8[7];
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04C0, &qword_1CFA07B10);
      result = sub_1CEFE55D0(&v6[v22], v16 + *(*(v17 - 8) + 72) * v13, &unk_1EC4C04C0, &qword_1CFA07B10);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v9 += v10;
      if (!--v7)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1CF4E1238(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0C60, &qword_1CFA07AF8);
    v3 = sub_1CF9E7BE8();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_1CEFE863C(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1CF4E1358(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0C38, &qword_1CFA07AD0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v19 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0C40, &unk_1CFA07AD8);
    v8 = sub_1CF9E7BE8();
    v20 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1CEFCCBDC(v9, v6, &qword_1EC4C0C38, &qword_1CFA07AD0);
      result = sub_1CF7BF520(v6);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v8[6];
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40);
      result = sub_1CEFE55D0(v6, v14 + *(*(v15 - 8) + 72) * v13, &unk_1EC4BF650, &unk_1CF9FCB40);
      *(v8[7] + 8 * v13) = *&v6[v20];
      v16 = v8[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v8[2] = v18;
      v9 += v10;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void *sub_1CF4E1560(void *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = a1[2];
  if (!v3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v5 = sub_1CF9E7BE8();
  v6 = a1[4];
  v7 = a1[5];
  v8 = sub_1CF7BF380(v6);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v5;
  }

  v10 = v8;
  result = v7;
  v12 = a1 + 7;
  while (1)
  {
    *(v5 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
    *(v5[6] + 8 * v10) = v6;
    *(v5[7] + 8 * v10) = result;
    v13 = v5[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v5[2] = v15;
    if (!--v3)
    {
      goto LABEL_8;
    }

    v16 = v12 + 2;
    v6 = *(v12 - 1);
    v17 = *v12;

    v10 = sub_1CF7BF380(v6);
    v12 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1CF4E1660(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0C00, &unk_1CFA171F0);
    v3 = sub_1CF9E7BE8();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_1CEFE863C(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1CF4E1750(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0BF0, &qword_1CFA07A98);
    v3 = sub_1CF9E7BE8();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *(i - 2);
      result = sub_1CEFE863C(v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v7;
      v10 = v3[7] + 16 * result;
      *v10 = v5;
      *(v10 + 8) = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1CF4E1848(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0C30, &qword_1CFA17200);
    v3 = sub_1CF9E7BE8();
    for (i = (a1 + 41); ; i += 16)
    {
      v5 = *(i - 9);
      v6 = *(i - 1);
      v7 = *i;
      result = sub_1CF7BF2C0(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = v3[6] + 16 * result;
      *v10 = v5;
      *(v10 + 8) = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1CF4E1938(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0C10, &qword_1CFA07AB8);
    v3 = sub_1CF9E7BE8();
    for (i = (a1 + 56); ; i += 32)
    {
      v5 = *(i - 3);
      v6 = *(i - 16);
      v7 = *(i - 1);
      v8 = *i;
      result = sub_1CF7BF2C0(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = v3[6] + 16 * result;
      *v11 = v5;
      *(v11 + 8) = v6;
      v12 = v3[7] + 16 * result;
      *v12 = v7;
      *(v12 + 8) = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1CF4E1A40(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0C98, &qword_1CFA07B30);
    v3 = sub_1CF9E7BE8();

    for (i = (a1 + 64); ; i += 3)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 8);
      v15 = *i;
      sub_1CF1FB2C0(v5, v6, v7, v8);

      result = sub_1CF7BF73C(v5, v6, v7, v8);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = v3[6] + 32 * result;
      *v11 = v5;
      *(v11 + 8) = v6;
      *(v11 + 16) = v7;
      *(v11 + 24) = v8;
      *(v3[7] + 16 * result) = v15;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1CF4E1B90(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0C90, &qword_1CFA07B28);
    v3 = sub_1CF9E7BE8();

    for (i = a1 + 40; ; i += 48)
    {
      v5 = *(i - 8);
      v6 = *i;
      v7 = *(i + 8);
      v8 = *(i + 16);
      v9 = *(i + 24);
      v10 = *(i + 32);
      sub_1CF1FB2C0(v5, *i, v7, v8);

      result = sub_1CF7BF73C(v5, v6, v7, v8);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = v3[6] + 32 * result;
      *v13 = v5;
      *(v13 + 8) = v6;
      *(v13 + 16) = v7;
      *(v13 + 24) = v8;
      v14 = (v3[7] + 16 * result);
      *v14 = v9;
      v14[1] = v10;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1CF4E1CD8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0CB0, &qword_1CFA07B48);
    v3 = sub_1CF9E7BE8();
    for (i = (a1 + 80); ; i += 4)
    {
      v5 = *(i - 2);
      v6 = *(i - 4);
      v7 = *(i - 2);
      v15 = *i;
      v16 = *(i - 3);
      *v17 = v7;
      *&v17[16] = v5;
      *&v17[24] = v6;
      result = sub_1CF7BF7D4(&v16);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 48 * result);
      v11 = *v17;
      *v10 = v16;
      v10[1] = v11;
      *(v10 + 26) = *&v17[10];
      *(v3[7] + 16 * result) = v15;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;

      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1CF4E1E00(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0CA8, &qword_1CFA07B40);
    v3 = sub_1CF9E7BE8();
    for (i = (a1 + 88); ; i += 8)
    {
      v5 = *(i - 3);
      v6 = *(i - 8);
      v7 = *(i - 1);
      v8 = *i;
      v9 = *(i - 5);
      v18 = *(i - 7);
      *v19 = v9;
      *&v19[16] = v5;
      *&v19[24] = v6;
      result = sub_1CF7BF7D4(&v18);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 48 * result);
      v13 = *v19;
      *v12 = v18;
      v12[1] = v13;
      *(v12 + 26) = *&v19[10];
      v14 = (v3[7] + 16 * result);
      *v14 = v7;
      v14[1] = v8;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;

      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1CF4E1F34(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_1CF9E7BE8();

    for (i = (a1 + 48); ; i += 2)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v15 = *i;

      result = sub_1CEFE4328(v7, v8);
      if (v10)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v5[6] + 16 * result);
      *v11 = v7;
      v11[1] = v8;
      *(v5[7] + 16 * result) = v15;
      v12 = v5[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v5[2] = v14;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1CF4E2054(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0DB8, &unk_1CFA17190);
    v3 = sub_1CF9E7BE8();
    for (i = (a1 + 72); ; i += 48)
    {
      v5 = *(i - 5);
      v6 = *(i - 32);
      v7 = *(i - 3);
      v8 = *(i - 16);
      v9 = *(i - 1);
      v10 = *i;
      result = sub_1CF7BF2C0(v5, v6);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = v3[6] + 16 * result;
      *v13 = v5;
      *(v13 + 8) = v6;
      v14 = v3[7] + 32 * result;
      *v14 = v7;
      *(v14 + 8) = v8;
      *(v14 + 16) = v9;
      *(v14 + 24) = v10;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1CF4E2168(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0DB0, &unk_1CFA07C40);
    v3 = sub_1CF9E7BE8();

    for (i = (a1 + 64); ; i += 40)
    {
      v5 = *(i - 3);
      v6 = *(i - 16);
      v7 = *(i - 1);
      v8 = *i;
      v9 = *(i - 4);
      result = sub_1CEFE863C(v9);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v9;
      v12 = v3[7] + 32 * result;
      *v12 = v5;
      *(v12 + 8) = v6;
      *(v12 + 16) = v7;
      *(v12 + 24) = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1CF4E2278(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0E78, &unk_1CFA07CF8);
    v3 = sub_1CF9E7BE8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *(i - 2);

      result = sub_1CEFE863C(v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v7;
      v10 = (v3[7] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void *sub_1CF4E238C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v5 = sub_1CF9E7BE8();
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = sub_1CF7BF2C0(v6, v7);
  if (v10)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v5;
  }

  v11 = v9;
  result = v8;
  v13 = (a1 + 72);
  while (1)
  {
    *(v5 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v11;
    v14 = v5[6] + 16 * v11;
    *v14 = v6;
    *(v14 + 8) = v7;
    *(v5[7] + 8 * v11) = result;
    v15 = v5[2];
    v16 = __OFADD__(v15, 1);
    v17 = v15 + 1;
    if (v16)
    {
      break;
    }

    v5[2] = v17;
    if (!--v3)
    {
      goto LABEL_8;
    }

    v18 = v13 + 3;
    v6 = *(v13 - 2);
    v7 = *(v13 - 8);
    v19 = *v13;

    v11 = sub_1CF7BF2C0(v6, v7);
    v13 = v18;
    result = v19;
    if (v20)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1CF4E24AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0D20, &unk_1CFA17230);
    v3 = sub_1CF9E7BE8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1CEFE4328(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1CF4E25A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0DF0, &unk_1CFA07C80);
  v3 = sub_1CF9E7BE8();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  result = sub_1CF7BF2C0(v4, v5);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v18 = v6;
    return v3;
  }

  v9 = (a1 + 72);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v10 = v3[6] + 16 * result;
    *v10 = v4;
    *(v10 + 8) = v5;
    *(v3[7] + 8 * result) = v6;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v9 + 3;
    v4 = *(v9 - 2);
    v5 = *(v9 - 8);
    v15 = *v9;
    v16 = v6;
    result = sub_1CF7BF2C0(v4, v5);
    v9 = v14;
    v6 = v15;
    if (v17)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1CF4E26CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0BB0, &unk_1CFA17140);
    v3 = sub_1CF9E7BE8();

    v5 = a1 + 48;
    while (1)
    {
      v22 = v1;
      v6 = *(v5 - 16);
      v7 = *(v5 - 8);
      v8 = *v5;
      v9 = *(v5 + 8);
      v10 = *(v5 + 9);
      v11 = *(v5 + 10);
      v12 = *(v5 + 24);
      v24 = *(v5 + 16);
      v13 = *(v5 + 32);
      v23 = *(v5 + 40);
      v14 = v4 & 0xFF000000 | v9 | (v10 << 8) | (v11 << 16);

      result = sub_1CF7BF840(v6, v7, v8, v14);
      if (v16)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = v3[6] + 32 * result;
      *v17 = v6;
      *(v17 + 8) = v7;
      *(v17 + 16) = v8;
      *(v17 + 24) = v9;
      *(v17 + 25) = v10;
      *(v17 + 26) = v11;
      v18 = v3[7] + 32 * result;
      *v18 = v24;
      *(v18 + 8) = v12;
      *(v18 + 16) = v13;
      *(v18 + 24) = v23;
      v19 = v3[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v5 += 64;
      v3[2] = v21;
      v1 = v22 - 1;
      v4 = v14;
      if (v22 == 1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1CF4E2860(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0E70, &qword_1CFA07CF0);
    v3 = sub_1CF9E7BE8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1CEFE4328(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1CF4E2964(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0E60, &qword_1CFA07CE0);
    v3 = sub_1CF9E7BE8();
    v4 = a1 + 32;

    while (1)
    {
      sub_1CEFCCBDC(v4, v13, &qword_1EC4C0E68, &qword_1CFA07CE8);
      result = sub_1CF0271B0(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      *(v3[7] + 8 * result) = v15;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1CF4E2A8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0CC8, &unk_1CFA07B60);
    v3 = sub_1CF9E7BE8();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_1CEFE863C(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1CF4E2B8C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0D30, &qword_1CFA01CD0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0D38, &qword_1CFA07BD0);
    v8 = sub_1CF9E7BE8();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1CEFCCBDC(v10, v6, &qword_1EC4C0D30, &qword_1CFA01CD0);
      v12 = *v6;
      v13 = v6[1];
      result = sub_1CEFE4328(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = sub_1CF9E5CF8();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1CF4E2D78(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0D80, &unk_1CFA07C10);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0D88, &qword_1CFA17240);
    v8 = sub_1CF9E7BE8();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1CEFCCBDC(v10, v6, &qword_1EC4C0D80, &unk_1CFA07C10);
      v12 = *v6;
      v13 = v6[1];
      result = sub_1CEFE4328(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = sub_1CF9E5A58();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1CF4E2F64(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0CF0, &qword_1CFA17250);
    v3 = sub_1CF9E7BE8();
    v4 = a1 + 32;

    while (1)
    {
      sub_1CEFCCBDC(v4, &v11, &unk_1EC4C1120, &qword_1CFA07BA0);
      v5 = v11;
      result = sub_1CEFE863C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1CEFE9EB8(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1CF4E30C8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_1CF9E7BE8();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_1CEFE4328(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1CF4E31C4()
{
  result = qword_1EC4C0938;
  if (!qword_1EC4C0938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C0938);
  }

  return result;
}

unint64_t sub_1CF4E3238(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0DE8, &qword_1CFA07C78);
    v3 = sub_1CF9E7BE8();
    for (i = (a1 + 44); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 4);
      v7 = *i;
      result = sub_1CF7BF2C0(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = v3[6] + 16 * result;
      *v10 = v5;
      *(v10 + 8) = v6;
      *(v3[7] + 4 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1CF4E33F0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v7 = sub_1CF9E7BE8();
    for (i = (a1 + 40); ; i += 2)
    {
      v9 = *(i - 1);
      v10 = *i;
      result = a4(v9);
      if (v12)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v9;
      *(v7[7] + 8 * result) = v10;
      v13 = v7[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v7[2] = v15;
      if (!--v4)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1CF4E351C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_1CF9E7BE8();

    for (i = (a1 + 40); ; i += 2)
    {
      v7 = *i;
      v8 = *(i - 1);

      result = sub_1CEFE863C(v8);
      if (v10)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v5[6] + 8 * result) = v8;
      *(v5[7] + 8 * result) = v7;
      v11 = v5[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v5[2] = v13;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1CF4E360C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0CE0, &qword_1CFA07B88);
    v3 = sub_1CF9E7BE8();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 8);
      v9 = *(i - 7);
      v10 = *(i - 6);
      v11 = *i;

      result = sub_1CEFE4328(v5, v6);
      if (v13)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = (v3[6] + 16 * result);
      *v14 = v5;
      v14[1] = v6;
      v15 = v3[7] + 24 * result;
      *v15 = v7;
      *(v15 + 8) = v8;
      *(v15 + 9) = v9;
      *(v15 + 10) = v10;
      *(v15 + 16) = v11;
      v16 = v3[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v3[2] = v18;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1CF4E3750(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C11A0, &qword_1CFA07A40);
    v3 = sub_1CF9E7BE8();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 16);
      v7 = *(i - 15);
      v9 = *(i - 1);
      v8 = *i;
      sub_1CEFD0988(v5, *(i - 16), *(i - 15));

      result = sub_1CEFF4768(v5, v6 | (v7 << 8));
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = v3[6] + 16 * result;
      *v12 = v5;
      *(v12 + 8) = v6;
      *(v12 + 9) = v7;
      v13 = (v3[7] + 16 * result);
      *v13 = v9;
      v13[1] = v8;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1CF4E3884(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0CD0, &qword_1CFA16E60);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C48B0, &unk_1CFA07B70);
    v8 = sub_1CF9E7BE8();
    v22 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_1CEFCCBDC(v9, v6, &qword_1EC4C0CD0, &qword_1CFA16E60);
      result = sub_1CF7BF2C0(*v6, v6[8]);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v8[6] + 16 * result;
      v15 = v6[8];
      *v14 = *v6;
      *(v14 + 8) = v15;
      v16 = v8[7];
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
      result = sub_1CEFE55D0(&v6[v22], v16 + *(*(v17 - 8) + 72) * v13, &unk_1EC4BE360, &qword_1CF9FE650);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v9 += v10;
      if (!--v7)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1CF4E3A7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0CD8, &qword_1CFA07B80);
  v3 = sub_1CF9E7BE8();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  result = sub_1CF7BF2C0(v4, v5);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v18 = v6;
    return v3;
  }

  v9 = (a1 + 72);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v10 = v3[6] + 16 * result;
    *v10 = v4;
    *(v10 + 8) = v5;
    *(v3[7] + 8 * result) = v6;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v9 + 3;
    v4 = *(v9 - 2);
    v5 = *(v9 - 8);
    v15 = *v9;
    v16 = v6;
    result = sub_1CF7BF2C0(v4, v5);
    v9 = v14;
    v6 = v15;
    if (v17)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1CF4E3BA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0DD8, &qword_1CFA07C68);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0DE0, &qword_1CFA07C70);
    v8 = sub_1CF9E7BE8();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1CEFCCBDC(v10, v6, &qword_1EC4C0DD8, &qword_1CFA07C68);
      result = sub_1CF7BFDB0(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1CF9E5CF8();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 4 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1CF4E3D88(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0DD0, &qword_1CFA07C60);
    v3 = sub_1CF9E7BE8();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1CF7BFE84(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 4 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1CF4E3E68(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0DC0, &qword_1CFA07C50);
    v3 = sub_1CF9E7BE8();
    for (i = a1 + 32; ; i += 24)
    {
      sub_1CEFCCBDC(i, &v11, &qword_1EC4C0DC8, &qword_1CFA07C58);
      v5 = v11;
      result = sub_1CF7BF380(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1CEFF701C(&v12, v3[7] + 16 * result);
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1CF4E3F84(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0BA0, &qword_1CFA07A48);
    v3 = sub_1CF9E7BE8();
    v4 = a1 + 32;

    for (i = v1 - 1; ; --i)
    {
      v6 = *(v4 + 48);
      v19[2] = *(v4 + 32);
      v20 = v6;
      v7 = *(v4 + 64);
      v21 = v7;
      v8 = *(v4 + 16);
      v19[0] = *v4;
      v19[1] = v8;
      v9 = v20;
      v22 = v19[0];
      v23[0] = v8;
      *(v23 + 11) = *(v4 + 27);
      sub_1CEFCCBDC(v19, v18, &qword_1EC4C0BA8, &unk_1CFA07A50);
      result = sub_1CF7BFC48(&v22);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 48 * result);
      v13 = v23[0];
      *v12 = v22;
      v12[1] = v13;
      *(v12 + 27) = *(v23 + 11);
      v14 = v3[7] + 24 * result;
      *v14 = v9;
      *(v14 + 16) = v7;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_11;
      }

      v3[2] = v17;
      if (!i)
      {

        return v3;
      }

      v4 += 72;
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1CF4E4100(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_1CF9E7BE8();

    for (i = (a1 + 40); ; i += 2)
    {
      v7 = *i;
      v8 = *(i - 1);

      result = sub_1CF7BF8D8(v8);
      if (v10)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v5[6] + 8 * result) = v8;
      *(v5[7] + 8 * result) = v7;
      v11 = v5[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v5[2] = v13;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1CF4E41F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0B90, &unk_1CFA17110);
    v3 = sub_1CF9E7BE8();

    for (i = (a1 + 40); ; i += 2)
    {
      v6 = *(i - 1);
      v5 = *i;

      result = sub_1CF7BFED0(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1CF4E42E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0B80, &qword_1CFA07A18);
    v3 = sub_1CF9E7BE8();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_1CEFE863C(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1CF4E43E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0B78, &qword_1CFA07A10);
    v3 = sub_1CF9E7BE8();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_1CEFE863C(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1CF4E44D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0DA0, &qword_1CFA07C30);
    v3 = sub_1CF9E7BE8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      v8 = *i;

      result = sub_1CEFE4328(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1CF4E45D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0D90, &unk_1CFA07C20);
    v3 = sub_1CF9E7BE8();
    v4 = a1 + 32;

    while (1)
    {
      sub_1CEFCCBDC(v4, &v11, &unk_1EC4C5040, &unk_1CFA181E0);
      v5 = v11;
      result = sub_1CEFE863C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1CEFE9EB8(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1CF4E4748(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v27 = a2;
  v28 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v25 - v11;
  v13 = *(a1 + 16);
  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v14 = sub_1CF9E7BE8();
    v26 = *(v8 + 48);
    v15 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v16 = *(v9 + 72);

    while (1)
    {
      sub_1CEFCCBDC(v15, v12, v27, v28);
      result = sub_1CF7BF520(v12);
      if (v18)
      {
        break;
      }

      v19 = result;
      *(v14 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v20 = v14[6];
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40);
      result = sub_1CEFE55D0(v12, v20 + *(*(v21 - 8) + 72) * v19, &unk_1EC4BF650, &unk_1CF9FCB40);
      *(v14[7] + 8 * v19) = *&v12[v26];
      v22 = v14[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_10;
      }

      v14[2] = v24;
      v15 += v16;
      if (!--v13)
      {

        return v14;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1CF4E492C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0D68, &qword_1CFA07BF8);
    v3 = sub_1CF9E7BE8();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_1CF7BFF48(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1CF4E4A24(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0B70, &unk_1CFA17100);
    v3 = sub_1CF9E7BE8();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_1CEFE863C(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1CF4E4B1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0BC0, &qword_1CFA07A68);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v20 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0BC8, &unk_1CFA07A70);
    v8 = sub_1CF9E7BE8();
    v21 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_1CEFCCBDC(v9, v6, &qword_1EC4C0BC0, &qword_1CFA07A68);
      v11 = *v6;
      result = sub_1CF7BF380(*v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 8 * result) = v11;
      v15 = v8[7];
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04B0, &unk_1CF9FCB20);
      result = sub_1CEFE55D0(v6 + v21, v15 + *(*(v16 - 8) + 72) * v14, &unk_1EC4C04B0, &unk_1CF9FCB20);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v9 += v10;
      if (!--v7)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1CF4E4D04(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v47 = a1;
  v48 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v49 = v8;
  v50 = 0;
  v51 = v11 & v9;
  v52 = a2;
  v53 = a3;

  sub_1CF4E0388(&v45);
  v12 = *(&v45 + 1);
  if (!*(&v45 + 1))
  {
    goto LABEL_25;
  }

  v13 = v45;
  sub_1CEFE9EB8(v46, v44);
  v14 = *a5;
  result = sub_1CEFE4328(v13, v12);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (v14[3] < v20)
  {
    sub_1CF7C3178(v20, a4 & 1);
    v22 = *a5;
    result = sub_1CEFE4328(v13, v12);
    if ((v21 & 1) == (v23 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_1CF9E8108();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v27 = result;
    sub_1CF7CF1E0();
    result = v27;
    v24 = *a5;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v24 = *a5;
  if (v21)
  {
LABEL_11:
    v25 = result;

    v26 = (v24[7] + 32 * v25);
    __swift_destroy_boxed_opaque_existential_1(v26);
    sub_1CEFE9EB8(v44, v26);
    goto LABEL_15;
  }

LABEL_13:
  v24[(result >> 6) + 8] |= 1 << result;
  v28 = (v24[6] + 16 * result);
  *v28 = v13;
  v28[1] = v12;
  result = sub_1CEFE9EB8(v44, (v24[7] + 32 * result));
  v29 = v24[2];
  v19 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (!v19)
  {
    v24[2] = v30;
LABEL_15:
    sub_1CF4E0388(&v45);
    v12 = *(&v45 + 1);
    if (*(&v45 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v45;
        sub_1CEFE9EB8(v46, v44);
        v33 = *a5;
        result = sub_1CEFE4328(v13, v12);
        v35 = v33[2];
        v36 = (v34 & 1) == 0;
        v19 = __OFADD__(v35, v36);
        v37 = v35 + v36;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v34;
        if (v33[3] < v37)
        {
          sub_1CF7C3178(v37, 1);
          v38 = *a5;
          result = sub_1CEFE4328(v13, v12);
          if ((a4 & 1) != (v39 & 1))
          {
            goto LABEL_8;
          }
        }

        v40 = *a5;
        if (a4)
        {
          v31 = result;

          v32 = (v40[7] + 32 * v31);
          __swift_destroy_boxed_opaque_existential_1(v32);
          sub_1CEFE9EB8(v44, v32);
        }

        else
        {
          v40[(result >> 6) + 8] |= 1 << result;
          v41 = (v40[6] + 16 * result);
          *v41 = v13;
          v41[1] = v12;
          result = sub_1CEFE9EB8(v44, (v40[7] + 32 * result));
          v42 = v40[2];
          v19 = __OFADD__(v42, 1);
          v43 = v42 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v40[2] = v43;
        }

        sub_1CF4E0388(&v45);
        v12 = *(&v45 + 1);
      }

      while (*(&v45 + 1));
    }

LABEL_25:
    sub_1CEFCB59C();
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1CF4E5014()
{
  v17 = MEMORY[0x1E69E7CC0];
  sub_1CEFE95CC(0, 3, 0);
  result = v17;
  if (byte_1F4BEEF90)
  {
    v1 = 0x616470557473616CLL;
    if (byte_1F4BEEF90 == 1)
    {
      v2 = 0xEE00656D69546574;
    }

    else
    {
      v2 = 0xEF646C6975426574;
    }
  }

  else
  {
    v2 = 0xE600000000000000;
    v1 = 0x737574617473;
  }

  v4 = *(v17 + 16);
  v3 = *(v17 + 24);
  v5 = v4 + 1;
  if (v4 >= v3 >> 1)
  {
    sub_1CEFE95CC((v3 > 1), v4 + 1, 1);
    result = v17;
  }

  *(result + 16) = v5;
  v6 = result + 16 * v4;
  *(v6 + 32) = v1;
  *(v6 + 40) = v2;
  if (byte_1F4BEEF91)
  {
    v7 = 0x616470557473616CLL;
    if (byte_1F4BEEF91 == 1)
    {
      v8 = 0xEE00656D69546574;
    }

    else
    {
      v8 = 0xEF646C6975426574;
    }
  }

  else
  {
    v8 = 0xE600000000000000;
    v7 = 0x737574617473;
  }

  v18 = result;
  v9 = *(result + 24);
  v10 = v4 + 2;
  if (v5 >= v9 >> 1)
  {
    sub_1CEFE95CC((v9 > 1), v10, 1);
    result = v18;
  }

  *(result + 16) = v10;
  v11 = result + 16 * v5;
  *(v11 + 32) = v7;
  *(v11 + 40) = v8;
  if (byte_1F4BEEF92)
  {
    v12 = 0x616470557473616CLL;
    if (byte_1F4BEEF92 == 1)
    {
      v13 = 0xEE00656D69546574;
    }

    else
    {
      v13 = 0xEF646C6975426574;
    }
  }

  else
  {
    v13 = 0xE600000000000000;
    v12 = 0x737574617473;
  }

  v19 = result;
  v15 = *(result + 16);
  v14 = *(result + 24);
  if (v15 >= v14 >> 1)
  {
    sub_1CEFE95CC((v14 > 1), v15 + 1, 1);
    result = v19;
  }

  *(result + 16) = v15 + 1;
  v16 = result + 16 * v15;
  *(v16 + 32) = v12;
  *(v16 + 40) = v13;
  return result;
}

id sub_1CF4E523C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v92 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v92 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v92 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v92 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v99 = v92 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v92 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v95 = v92 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v97 = v92 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v98 = v92 - v25;
  v26 = sub_1CF9E5CF8();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v30 = v92 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = v92 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v94 = v92 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v96 = v92 - v37;
  if (!*(a1 + 16))
  {
    goto LABEL_5;
  }

  v38 = sub_1CEFE4328(0x737574617473, 0xE600000000000000);
  if ((v39 & 1) == 0)
  {
    goto LABEL_5;
  }

  sub_1CEFD1104(*(a1 + 56) + 32 * v38, v104);
  sub_1CEFE9EB8(v104, v105);
  sub_1CEFD1104(v105, v104);
  sub_1CF4D568C(v104, v101);
  if (LOBYTE(v101[0]) != 12)
  {
    v46 = v101[0];
    sub_1CEFD1104(v105, v104);
    if ((swift_dynamicCast() & 1) == 0 || (v101[0] & 0x8000000000000000) == 0)
    {
LABEL_13:
      v47 = 0;
      if (!*(a1 + 16))
      {
        goto LABEL_39;
      }

      goto LABEL_14;
    }

    v62 = *MEMORY[0x1E6966F58];
    v63 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    if (!*(a1 + 16))
    {
      goto LABEL_33;
    }

    v65 = sub_1CEFE4328(v63, v64);
    v67 = v66;

    if ((v67 & 1) == 0)
    {
      goto LABEL_13;
    }

    sub_1CEFD1104(*(a1 + 56) + 32 * v65, v104);
    if ((swift_dynamicCast() & 1) == 0 || v101[0] != 0x20000000)
    {
      goto LABEL_13;
    }

    v68 = *MEMORY[0x1E6966F50];
    v69 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    if (!*(a1 + 16))
    {
LABEL_33:

      goto LABEL_13;
    }

    v71 = sub_1CEFE4328(v69, v70);
    v73 = v72;

    if ((v73 & 1) == 0)
    {
      goto LABEL_13;
    }

    sub_1CEFD1104(*(a1 + 56) + 32 * v71, v104);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_13;
    }

    v74 = v101[0];
    v75 = *MEMORY[0x1E6966F48];
    v76 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    if (*(a1 + 16))
    {
      v92[1] = v74;
      v93 = sub_1CEFE4328(v76, v77);
      v79 = v78;

      if (v79)
      {
        sub_1CEFD1104(*(a1 + 56) + 32 * v93, v104);
        if (swift_dynamicCast())
        {
          v80 = v101[0];
          v81 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
          v82 = sub_1CF9E6888();

          v47 = [v81 initWithDomain:v82 code:v80 userInfo:0];

          goto LABEL_38;
        }
      }
    }

    else
    {
    }

    v47 = 0;
LABEL_38:
    if (!*(a1 + 16))
    {
      goto LABEL_39;
    }

LABEL_14:
    v48 = sub_1CEFE4328(0x616470557473616CLL, 0xEE00656D69546574);
    if (v49)
    {
      sub_1CEFD1104(*(a1 + 56) + 32 * v48, v104);
      if (swift_dynamicCast())
      {
        if (*(a1 + 16))
        {
          v50 = sub_1CEFE4328(0x616470557473616CLL, 0xEF646C6975426574);
          if (v51)
          {
            sub_1CEFD1104(*(a1 + 56) + 32 * v50, v104);

            if (swift_dynamicCast())
            {
              v99 = v101[0];
              v93 = v101[1];
              v52 = v96;
              sub_1CF9E5C88();
              v53 = v98;
              (*(v27 + 16))(v98, v52, v26);
              (*(v27 + 56))(v53, 0, 1, v26);
              v54 = objc_allocWithZone(type metadata accessor for FPCKReportStatusSection(0));
              *&v54[OBJC_IVAR____TtC18FileProviderDaemon23FPCKReportStatusSection_error] = v47;
              v55 = v97;
              sub_1CEFCCBDC(v53, v97, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
              v54[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_phase] = v46;
              v56 = v95;
              sub_1CEFCCBDC(v55, v95, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
              v57 = *(v27 + 48);
              if (v57(v56, 1, v26) == 1)
              {
                v58 = v47;
                v59 = v52;
                v60 = v94;
                sub_1CF9E5C88();
                v61 = v60;
                v52 = v59;
                if (v57(v56, 1, v26) != 1)
                {
                  sub_1CEFCCC44(v56, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
                }
              }

              else
              {
                v61 = v94;
                (*(v27 + 32))(v94, v56, v26);
                v83 = v47;
              }

              (*(v27 + 32))(&v54[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_date], v61, v26);
              v84 = &v54[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_build];
              v85 = v93;
              *v84 = v99;
              v84[1] = v85;
              v86 = type metadata accessor for FPCKReportSection(0);
              v100.receiver = v54;
              v100.super_class = v86;
              v44 = objc_msgSendSuper2(&v100, sel_init);
              sub_1CEFCCC44(v55, &unk_1EC4BEDC0, &unk_1CF9FEEA0);

              sub_1CEFCCC44(v98, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
              (*(v27 + 8))(v52, v26);
LABEL_45:
              __swift_destroy_boxed_opaque_existential_1(v105);
              return v44;
            }

LABEL_40:
            (*(v27 + 56))(v19, 1, 1, v26);
            v87 = objc_allocWithZone(type metadata accessor for FPCKReportStatusSection(0));
            *&v87[OBJC_IVAR____TtC18FileProviderDaemon23FPCKReportStatusSection_error] = v47;
            v88 = v99;
            sub_1CEFCCBDC(v19, v99, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
            v87[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_phase] = v46;
            sub_1CEFCCBDC(v88, v14, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
            v89 = *(v27 + 48);
            if (v89(v14, 1, v26) == 1)
            {
              sub_1CF9E5C88();
              if (v89(v14, 1, v26) != 1)
              {
                sub_1CEFCCC44(v14, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
              }
            }

            else
            {
              (*(v27 + 32))(v33, v14, v26);
            }

            (*(v27 + 32))(&v87[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_date], v33, v26);
            v90 = &v87[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_build];
            *v90 = 0x6E776F6E6B6E75;
            v90[1] = 0xE700000000000000;
            v91 = type metadata accessor for FPCKReportSection(0);
            v102.receiver = v87;
            v102.super_class = v91;
            v44 = objc_msgSendSuper2(&v102, sel_init);
            sub_1CEFCCC44(v88, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
            sub_1CEFCCC44(v19, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
            goto LABEL_45;
          }
        }
      }
    }

LABEL_39:

    goto LABEL_40;
  }

  __swift_destroy_boxed_opaque_existential_1(v105);
LABEL_5:

  (*(v27 + 56))(v11, 1, 1, v26);
  v40 = objc_allocWithZone(type metadata accessor for FPCKReportStatusSection(0));
  *&v40[OBJC_IVAR____TtC18FileProviderDaemon23FPCKReportStatusSection_error] = 0;
  sub_1CEFCCBDC(v11, v8, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v40[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_phase] = 1;
  sub_1CEFCCBDC(v8, v5, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v41 = *(v27 + 48);
  if (v41(v5, 1, v26) == 1)
  {
    sub_1CF9E5C88();
    if (v41(v5, 1, v26) != 1)
    {
      sub_1CEFCCC44(v5, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    }
  }

  else
  {
    (*(v27 + 32))(v30, v5, v26);
  }

  (*(v27 + 32))(&v40[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_date], v30, v26);
  v42 = &v40[OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_build];
  *v42 = 0x6E776F6E6B6E75;
  v42[1] = 0xE700000000000000;
  v43 = type metadata accessor for FPCKReportSection(0);
  v103.receiver = v40;
  v103.super_class = v43;
  v44 = objc_msgSendSuper2(&v103, sel_init);
  sub_1CEFCCC44(v8, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  sub_1CEFCCC44(v11, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  return v44;
}