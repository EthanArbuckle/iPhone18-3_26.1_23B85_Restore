uint64_t sub_190BFD7D0()
{
  v1 = *(v0 + 8);
  swift_getKeyPath();
  sub_190C007C4(&qword_1EAD5B300, type metadata accessor for CKLanguageSelectionViewModel);
  sub_190D51C20();

  v2 = *(v1 + 24);
  v10 = MEMORY[0x1E69E7CC0];
  if (v2 >> 62)
  {
LABEL_20:
    v3 = sub_190D581C0();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_190D52690();
  if (v3)
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x193AF3B90](v4, v2);
        v5 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_15:
          __break(1u);
LABEL_16:
          v7 = v10;
          goto LABEL_18;
        }
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_20;
        }

        sub_190D50920();
        v5 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_15;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5FFC8);
      sub_190D55FD0();
      if (v9 && (v6 = sub_190D51910(), , (v6 & 1) != 0))
      {
      }

      else
      {
        sub_190D58360();
        sub_190D583B0();
        sub_190D583C0();
        sub_190D58370();
      }

      ++v4;
      if (v5 == v3)
      {
        goto LABEL_16;
      }
    }
  }

  v7 = MEMORY[0x1E69E7CC0];
LABEL_18:

  return v7;
}

uint64_t sub_190BFD9E8()
{
  v1 = v0[1];
  v2 = v0[7];
  v16 = v0[8];
  v17 = v2;
  swift_getKeyPath();
  v3 = OBJC_IVAR____TtC7ChatKit28CKLanguageSelectionViewModel___observationRegistrar;
  v23[0] = v1;
  v20 = sub_190C007C4(&qword_1EAD5B300, type metadata accessor for CKLanguageSelectionViewModel);
  v21 = v3;
  sub_190D51C20();

  v4 = *(v1 + 16);
  v24 = MEMORY[0x1E69E7CC0];
  if (v4 >> 62)
  {
LABEL_21:
    v5 = sub_190D581C0();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_190D52690();
  if (v5)
  {
    v6 = 0;
    v18 = v4 & 0xFFFFFFFFFFFFFF8;
    v19 = v4 & 0xC000000000000001;
    while (1)
    {
      if (v19)
      {
        v7 = MEMORY[0x193AF3B90](v6, v4);
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
LABEL_16:
          __break(1u);
LABEL_17:
          v13 = v24;
          goto LABEL_19;
        }
      }

      else
      {
        if (v6 >= *(v18 + 16))
        {
          __break(1u);
          goto LABEL_21;
        }

        v7 = *(v4 + 8 * v6 + 32);
        sub_190D50920();
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_16;
        }
      }

      swift_getKeyPath();
      v23[0] = v1;
      sub_190D51C20();

      v10 = *(v1 + 24);
      v23[0] = v7;
      MEMORY[0x1EEE9AC00](v9);
      v15[2] = v23;
      sub_190D52690();
      v11 = sub_190CA872C(sub_190C005AC, v15, v10);

      if (v11 & 1) != 0 || (v23[0] = v17, v23[1] = v16, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5FFC8), sub_190D55FD0(), v22) && (v12 = sub_190D51910(), , (v12))
      {
      }

      else
      {
        sub_190D58360();
        sub_190D583B0();
        sub_190D583C0();
        sub_190D58370();
      }

      ++v6;
      if (v8 == v5)
      {
        goto LABEL_17;
      }
    }
  }

  v13 = MEMORY[0x1E69E7CC0];
LABEL_19:

  return v13;
}

uint64_t CKLanguageSelectionView.body.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5FF40);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5FF48);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5FF50);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5FF58);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5FF60);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5FF68);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD54C18);
  sub_190BFE6F4();
  sub_190BFE7DC();
  swift_getOpaqueTypeConformance2();
  sub_19081E484();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5FF98);
  sub_190233640(&qword_1EAD5FFA0, &qword_1EAD5FF98);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_190D54220();
}

id sub_190BFDF10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v54 = sub_190D54870();
  v52 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v50 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5FF68);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v44 - v5;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5FF60);
  v44 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v8 = &v44 - v7;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5FF58);
  v47 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v45 = &v44 - v9;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5FF48);
  v51 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v49 = &v44 - v10;
  v56 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5FFB8);
  sub_190233640(&qword_1EAD5FFC0, &qword_1EAD5FFB8);
  sub_190D554D0();
  v11 = swift_allocObject();
  v12 = *(a1 + 48);
  *(v11 + 48) = *(a1 + 32);
  *(v11 + 64) = v12;
  *(v11 + 80) = *(a1 + 64);
  *(v11 + 96) = *(a1 + 80);
  v13 = *(a1 + 16);
  *(v11 + 16) = *a1;
  *(v11 + 32) = v13;
  v14 = &v6[*(v4 + 36)];
  sub_190D53E20();
  sub_190870348(a1, &v59);
  sub_190D572C0();
  *v14 = &unk_190DFB450;
  *(v14 + 1) = v11;
  v59 = *(a1 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5FFC8);
  sub_190D55FD0();
  v15 = swift_allocObject();
  v16 = *(a1 + 48);
  *(v15 + 48) = *(a1 + 32);
  *(v15 + 64) = v16;
  *(v15 + 80) = *(a1 + 64);
  *(v15 + 96) = *(a1 + 80);
  v17 = *(a1 + 16);
  *(v15 + 16) = *a1;
  *(v15 + 32) = v17;
  sub_190870348(a1, &v59);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54C18);
  v19 = sub_190BFE6F4();
  v20 = sub_190BFE7DC();
  sub_190D55C20();

  sub_19022EEA4(v6, &qword_1EAD5FF68);
  result = CKFrameworkBundle();
  if (result)
  {
    v22 = result;
    v23 = sub_190D56ED0();
    v24 = sub_190D56ED0();
    v25 = [v22 localizedStringForKey:v23 value:0 table:v24];

    v26 = sub_190D56F10();
    v28 = v27;

    v57 = v26;
    v58 = v28;
    *&v59 = v4;
    *(&v59 + 1) = v18;
    v60 = v19;
    v61 = v20;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v30 = sub_19081E484();
    v31 = MEMORY[0x1E69E6158];
    v32 = v45;
    v33 = v46;
    sub_190D558C0();

    (*(v44 + 8))(v8, v33);
    v34 = v52;
    v35 = v50;
    v36 = v54;
    (*(v52 + 104))(v50, *MEMORY[0x1E697C438], v54);
    *&v59 = v33;
    *(&v59 + 1) = v31;
    v60 = OpaqueTypeConformance2;
    v61 = v30;
    v37 = swift_getOpaqueTypeConformance2();
    v38 = v49;
    v39 = v48;
    sub_190D55AE0();
    (*(v34 + 8))(v35, v36);
    v40 = (*(v47 + 8))(v32, v39);
    MEMORY[0x1EEE9AC00](v40);
    *(&v44 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5FF50);
    *&v59 = v39;
    *(&v59 + 1) = v37;
    swift_getOpaqueTypeConformance2();
    v41 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5FF98);
    v42 = sub_190233640(&qword_1EAD5FFA0, &qword_1EAD5FF98);
    *&v59 = v41;
    *(&v59 + 1) = v42;
    swift_getOpaqueTypeConformance2();
    v43 = v53;
    sub_190D55BF0();
    return (*(v51 + 8))(v38, v43);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_190BFE6F4()
{
  result = qword_1EAD5FF70;
  if (!qword_1EAD5FF70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5FF68);
    sub_190233640(&qword_1EAD5FF78, &qword_1EAD5FF80);
    sub_190C007C4(&qword_1EAD52288, MEMORY[0x1E697C028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5FF70);
  }

  return result;
}

unint64_t sub_190BFE7DC()
{
  result = qword_1EAD5FF88;
  if (!qword_1EAD5FF88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD54C18);
    sub_190C007C4(&qword_1EAD5FF90, type metadata accessor for CKLanguageSelectionDownloadModel);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5FF88);
  }

  return result;
}

id sub_190BFE8AC@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5FFE8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v40 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v40 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v40 - v13;
  v15 = a1[3];
  v56 = a1[2];
  v57 = v15;
  v58 = a1[4];
  v59 = *(a1 + 10);
  v16 = a1[1];
  v54 = *a1;
  v55 = v16;
  result = CKFrameworkBundle();
  if (result)
  {
    v18 = result;
    v19 = sub_190D56ED0();
    v20 = sub_190D56ED0();
    v21 = [v18 localizedStringForKey:v19 value:0 table:v20];

    v22 = sub_190D56F10();
    v24 = v23;

    v25 = a1[3];
    v50 = a1[2];
    v51 = v25;
    v52 = a1[4];
    v53 = *(a1 + 10);
    v26 = a1[1];
    v48 = *a1;
    v49 = v26;
    v27 = sub_190BFD7D0();
    sub_190BFEBFC(v22, v24, v27, v14);

    v28 = a1[3];
    v29 = a1[1];
    v56 = a1[2];
    v57 = v28;
    v30 = a1[3];
    v58 = a1[4];
    v31 = a1[1];
    v54 = *a1;
    v55 = v31;
    v50 = v56;
    v51 = v30;
    v52 = a1[4];
    v59 = *(a1 + 10);
    v53 = *(a1 + 10);
    v48 = v54;
    v49 = v29;
    v32 = sub_190BFEE9C();
    v34 = v33;
    v35 = a1[3];
    v44 = a1[2];
    v45 = v35;
    v46 = a1[4];
    v47 = *(a1 + 10);
    v36 = a1[1];
    v42 = *a1;
    v43 = v36;
    v37 = sub_190BFD9E8();
    sub_190BFEBFC(v32, v34, v37, v11);

    sub_190285D34(v14, v8);
    sub_190285D34(v11, v5);
    v38 = v41;
    sub_190285D34(v8, v41);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5FFF0);
    sub_190285D34(v5, v38 + *(v39 + 48));
    sub_19022EEA4(v11, &qword_1EAD5FFE8);
    sub_19022EEA4(v14, &qword_1EAD5FFE8);
    sub_19022EEA4(v5, &qword_1EAD5FFE8);
    return sub_19022EEA4(v8, &qword_1EAD5FFE8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_190BFEBFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5FFF8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22 - v11;
  v13 = *(v4 + 48);
  v26[2] = *(v4 + 32);
  v26[3] = v13;
  v26[4] = *(v4 + 64);
  v27 = *(v4 + 80);
  v14 = *(v4 + 16);
  v26[0] = *v4;
  v26[1] = v14;
  if (a3 >> 62)
  {
    v23 = v10;
    v15 = sub_190D581C0();
    v10 = v23;
    if (v15)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
LABEL_3:
      v24 = a1;
      v25 = a2;
      MEMORY[0x1EEE9AC00](v15);
      *(&v22 - 2) = a3;
      *(&v22 - 1) = v26;
      v23 = v16;
      sub_190D52690();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60000);
      sub_190C00600();
      sub_19081E484();
      sub_190D562B0();
      v17 = &v12[*(v9 + 36)];
      v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53128) + 28);
      v19 = sub_190D55590();
      (*(*(v19 - 8) + 56))(v17 + v18, 1, 1, v19);
      *v17 = swift_getKeyPath();
      sub_190285DBC(v12, a4);
      return (*(v23 + 56))(a4, 0, 1, v9);
    }
  }

  v21 = *(v10 + 56);

  return v21(a4, 1, 1, v9);
}

id sub_190BFEE9C()
{
  v1 = *(v0 + 8);
  swift_getKeyPath();
  sub_190C007C4(&qword_1EAD5B300, type metadata accessor for CKLanguageSelectionViewModel);
  sub_190D51C20();

  v2 = *(v1 + 24);
  if (!(v2 >> 62))
  {
    if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    return sub_190A6BDEC();
  }

  if (!sub_190D581C0())
  {
    return sub_190A6BDEC();
  }

LABEL_3:
  result = CKFrameworkBundle();
  if (result)
  {
    v4 = result;
    v5 = sub_190D56ED0();
    v6 = sub_190D56ED0();
    v7 = [v4 localizedStringForKey:v5 value:0 table:v6];

    v8 = sub_190D56F10();
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_190BFF014(uint64_t a1)
{
  v1[13] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54C10);
  v1[14] = swift_task_alloc();
  v3 = sub_190D519C0();
  v1[15] = v3;
  v1[16] = *(v3 - 8);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = sub_190D572A0();
  v4 = sub_190D57290();
  v5 = *(a1 + 8);
  v1[20] = v4;
  v1[21] = v5;
  v1[22] = sub_190D57290();
  v7 = sub_190D57240();
  v1[23] = v7;
  v1[24] = v6;

  return MEMORY[0x1EEE6DFA0](sub_190BFF16C, v7, v6);
}

uint64_t sub_190BFF16C()
{
  sub_190D52100();
  *(v0 + 200) = sub_190D520F0();
  v3 = (*MEMORY[0x1E69A6758] + MEMORY[0x1E69A6758]);
  v1 = swift_task_alloc();
  *(v0 + 208) = v1;
  *v1 = v0;
  v1[1] = sub_190BFF224;

  return v3();
}

uint64_t sub_190BFF224()
{
  v1 = *v0;

  v2 = *(v1 + 192);
  v3 = *(v1 + 184);

  return MEMORY[0x1EEE6DFA0](sub_190BFF368, v3, v2);
}

uint64_t sub_190BFF368()
{

  sub_190A6A454();
  CKLanguageSelectionViewModel.subscribeToNotification()();
  v1 = sub_190D57240();

  return MEMORY[0x1EEE6DFA0](sub_190BFF400, v1, v0);
}

uint64_t sub_190BFF400()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 120);
  v3 = *(v0 + 128);
  v4 = *(v0 + 112);

  swift_getKeyPath();
  *(v0 + 72) = v1;
  sub_190C007C4(&qword_1EAD5B300, type metadata accessor for CKLanguageSelectionViewModel);
  sub_190D51C20();

  v5 = OBJC_IVAR____TtC7ChatKit28CKLanguageSelectionViewModel__excludedLocale;
  swift_beginAccess();
  sub_19022FD14(v1 + v5, v4, &qword_1EAD54C10);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    v6 = *(v0 + 112);
    v7 = &qword_1EAD54C10;
  }

  else
  {
    v8 = *(v0 + 136);
    v9 = *(v0 + 144);
    v11 = *(v0 + 120);
    v10 = *(v0 + 128);
    v20 = *(v0 + 104);
    v12 = *(v10 + 32);
    v12(v9, *(v0 + 112), v11);
    (*(v10 + 16))(v8, v9, v11);
    type metadata accessor for CKLanguageSelectionDownloadModel();
    v13 = swift_allocObject();
    *(v13 + OBJC_IVAR____TtC7ChatKit32CKLanguageSelectionDownloadModel__progress) = 0;
    v14 = OBJC_IVAR____TtC7ChatKit32CKLanguageSelectionDownloadModel__state;
    v15 = *MEMORY[0x1E69A6780];
    v16 = sub_190D52170();
    (*(*(v16 - 8) + 104))(v13 + v14, v15, v16);
    *(v13 + OBJC_IVAR____TtC7ChatKit32CKLanguageSelectionDownloadModel__isDefaultModel) = 0;
    *(v13 + OBJC_IVAR____TtC7ChatKit32CKLanguageSelectionDownloadModel__isSelected) = 0;
    sub_190D51C50();
    v12(v13 + OBJC_IVAR____TtC7ChatKit32CKLanguageSelectionDownloadModel_locale, v8, v11);
    v17 = *(v20 + 56);
    *(v0 + 80) = v13;
    *(v0 + 56) = v17;
    *(v0 + 40) = v17;
    sub_19022FD14(v0 + 56, v0 + 88, &qword_1EAD54C18);
    sub_19022FD14(v0 + 64, v0 + 96, &qword_1EAD5FFE0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5FFC8);
    sub_190D55FE0();
    (*(v10 + 8))(v9, v11);
    sub_19022EEA4(v0 + 56, &qword_1EAD54C18);
    v6 = v0 + 64;
    v7 = &qword_1EAD5FFE0;
  }

  sub_19022EEA4(v6, v7);

  v18 = *(v0 + 8);

  return v18();
}

void sub_190BFF764(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54C10);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13 - v6;
  v8 = *a2;
  if (v8)
  {
    v9 = OBJC_IVAR____TtC7ChatKit32CKLanguageSelectionDownloadModel_locale;
    v10 = sub_190D519C0();
    v11 = *(v10 - 8);
    (*(v11 + 16))(v7, v8 + v9, v10);
    (*(v11 + 56))(v7, 0, 1, v10);
    sub_190D50920();
    sub_190A69E40(v7);
    v12 = *(a3 + 40);
    if (v12)
    {
      v14 = v8;
      sub_190D50920();
      v12(&v14);

      sub_190C0059C(v14);
    }

    else
    {
    }
  }
}

uint64_t sub_190BFF8E8(uint64_t a1)
{
  v2 = sub_190D54D70();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5FF98);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-v5];
  sub_190D54D20();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5FFD0);
  sub_190233640(&qword_1EAD5FFD8, &qword_1EAD5FFD0);
  sub_190D53AE0();
  v7 = sub_190233640(&qword_1EAD5FFA0, &qword_1EAD5FF98);
  MEMORY[0x193AF0690](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_190BFFAD4(uint64_t a1)
{
  v2 = sub_190D539A0();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_190D53980();
  v5 = swift_allocObject();
  v6 = *(a1 + 48);
  *(v5 + 48) = *(a1 + 32);
  *(v5 + 64) = v6;
  *(v5 + 80) = *(a1 + 64);
  *(v5 + 96) = *(a1 + 80);
  v7 = *(a1 + 16);
  *(v5 + 16) = *a1;
  *(v5 + 32) = v7;
  sub_190870348(a1, v10);
  return MEMORY[0x193AF18D0](v4, sub_190C00558, v5);
}

uint64_t sub_190BFFBBC(uint64_t a1, uint64_t a2)
{
  v11[11] = a1;
  swift_getKeyPath();
  v3 = swift_allocObject();
  v4 = *(a2 + 48);
  *(v3 + 48) = *(a2 + 32);
  *(v3 + 64) = v4;
  *(v3 + 80) = *(a2 + 64);
  *(v3 + 96) = *(a2 + 80);
  v5 = *(a2 + 16);
  *(v3 + 16) = *a2;
  *(v3 + 32) = v5;
  sub_190D52690();
  sub_190870348(a2, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60020);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60028);
  sub_190233640(&qword_1EAD60030, &qword_1EAD60020);
  sub_190C007C4(&qword_1EAD46BD0, MEMORY[0x1E6969770]);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD60010);
  v7 = sub_190D54390();
  v8 = sub_190233640(&qword_1EAD60018, &qword_1EAD60010);
  v9 = sub_190C007C4(&qword_1EAD54AF8, MEMORY[0x1E697C248]);
  v11[0] = v6;
  v11[1] = v7;
  v11[2] = v8;
  v11[3] = v9;
  swift_getOpaqueTypeConformance2();
  return sub_190D56280();
}

uint64_t sub_190BFFDF8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21 = a3;
  v20 = sub_190D54390();
  v5 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60010);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - v10;
  v12 = *a1;
  v13 = swift_allocObject();
  v14 = *(a2 + 48);
  *(v13 + 48) = *(a2 + 32);
  *(v13 + 64) = v14;
  *(v13 + 80) = *(a2 + 64);
  v15 = *(a2 + 80);
  v16 = *(a2 + 16);
  *(v13 + 16) = *a2;
  *(v13 + 32) = v16;
  *(v13 + 96) = v15;
  *(v13 + 104) = v12;
  sub_190870348(a2, v22);
  sub_190C00824();
  sub_190D50920();
  sub_190D56030();
  sub_190D54380();
  sub_190233640(&qword_1EAD60018, &qword_1EAD60010);
  sub_190C007C4(&qword_1EAD54AF8, MEMORY[0x1E697C248]);
  v17 = v20;
  sub_190D55720();
  (*(v5 + 8))(v7, v17);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_190C0009C()
{
  sub_190D50920();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5FFC8);
  return sub_190D55FE0();
}

uint64_t sub_190C000F8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5FF40);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5FF48);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5FF50);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5FF58);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5FF60);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5FF68);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD54C18);
  sub_190BFE6F4();
  sub_190BFE7DC();
  swift_getOpaqueTypeConformance2();
  sub_19081E484();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5FF98);
  sub_190233640(&qword_1EAD5FFA0, &qword_1EAD5FF98);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_190D54220();
}

uint64_t get_enum_tag_for_layout_string_7ChatKit23CKLanguageSelectionViewV6ActionOIegn_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_7ChatKit23CKLanguageSelectionViewV6ActionO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_190C003AC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 2)
  {
    return (v3 - 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_190C00408(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_190C00464(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    *result = a2;
  }

  return result;
}

uint64_t sub_190C004AC()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_190221DA4;

  return sub_190BFF014(v0 + 16);
}

uint64_t sub_190C00558()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    v3 = 1;
    return v1(&v3);
  }

  return result;
}

uint64_t sub_190C0059C(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

unint64_t sub_190C00600()
{
  result = qword_1EAD60008;
  if (!qword_1EAD60008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD60000);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD60010);
    sub_190D54390();
    sub_190233640(&qword_1EAD60018, &qword_1EAD60010);
    sub_190C007C4(&qword_1EAD54AF8, MEMORY[0x1E697C248]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60008);
  }

  return result;
}

uint64_t objectdestroyTm_41()
{

  if (*(v0 + 56))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_190C007C4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_190C00824()
{
  result = qword_1EAD60038;
  if (!qword_1EAD60038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60038);
  }

  return result;
}

id CKConversation.allowsShowingDetailsView.getter()
{
  if ([v0 isStewieConversation])
  {
    v1 = 1;
  }

  else
  {
    v1 = [v0 isEmergencyTranscriptSharingConversation];
  }

  result = [v0 chat];
  if (result)
  {
    v3 = result;
    v4 = [result isFiltered];

    v5 = v4 == 2;
    if (v1)
    {
      return 0;
    }
  }

  else
  {
    v5 = 0;
    if (v1)
    {
      return result;
    }
  }

  return !v5;
}

uint64_t sub_190C0098C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53AE8);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_190D51440();
  v3 = *(v12[0] - 8);
  MEMORY[0x1EEE9AC00](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_190D519C0();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_190D56EC0();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_190D51460();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = sub_190D50CF0();
  __swift_allocate_value_buffer(v10, qword_1EAD9E438);
  __swift_project_value_buffer(v10, qword_1EAD9E438);
  sub_190D56E50();
  sub_190D51980();
  (*(v3 + 104))(v5, *MEMORY[0x1E6968DF0], v12[0]);
  sub_190D51470();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_190D50CE0();
}

uint64_t sub_190C00C70()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55080);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v38 = v27 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53AE8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v37 = v27 - v3;
  v40 = sub_190D51440();
  v4 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_190D519C0();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_190D56EC0();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = sub_190D51460();
  v29 = v11;
  v42 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD600D8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53920);
  v41 = v12;
  v13 = *(v12 - 8);
  v36 = *(v13 + 72);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  v31 = v15;
  *(v15 + 16) = xmmword_190DD1DA0;
  v39 = v15 + v14;
  v35 = *(v12 + 48);
  *(v15 + v14) = 0;
  sub_190D56E50();
  v27[1] = v9;
  sub_190D51980();
  v32 = *MEMORY[0x1E6968DF0];
  v16 = *(v4 + 104);
  v33 = v4 + 104;
  v34 = v16;
  v28 = v6;
  v16(v6);
  sub_190D51470();
  v17 = *(v42 + 56);
  v42 += 56;
  v30 = v17;
  v18 = v37;
  v17(v37, 1, 1, v11);
  v19 = sub_190D50B50();
  v20 = *(*(v19 - 8) + 56);
  v21 = v38;
  v20(v38, 1, 1, v19);
  v22 = v39;
  v23 = v21;
  sub_190D50B70();
  v24 = (v22 + v36);
  v36 = *(v41 + 48);
  *v24 = 1;
  sub_190D56E50();
  sub_190D51980();
  v34(v28, v32, v40);
  sub_190D51470();
  v30(v18, 1, 1, v29);
  v20(v23, 1, 1, v19);
  sub_190D50B70();
  v25 = sub_190823DD4(v31);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_1EAD9E450 = v25;
  return result;
}

uint64_t sub_190C011F0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x656C67676F74;
  }

  else
  {
    v3 = 1802658157;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x656C67676F74;
  }

  else
  {
    v5 = 1802658157;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_190D58760();
  }

  return v8 & 1;
}

unint64_t sub_190C01290()
{
  result = qword_1EAD45348;
  if (!qword_1EAD45348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45348);
  }

  return result;
}

uint64_t sub_190C012E4()
{
  sub_190D58870();
  sub_190D56FC0();

  return sub_190D588C0();
}

uint64_t sub_190C0135C()
{
  sub_190D56FC0();
}

uint64_t sub_190C013C0()
{
  sub_190D58870();
  sub_190D56FC0();

  return sub_190D588C0();
}

uint64_t sub_190C01434@<X0>(char *a1@<X8>)
{
  v2 = sub_190D585F0();

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

void sub_190C01494(uint64_t *a1@<X8>)
{
  v2 = 1802658157;
  if (*v1)
  {
    v2 = 0x656C67676F74;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_190C014CC()
{
  result = qword_1EAD45380;
  if (!qword_1EAD45380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45380);
  }

  return result;
}

unint64_t sub_190C01524()
{
  result = qword_1EAD45360;
  if (!qword_1EAD45360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45360);
  }

  return result;
}

unint64_t sub_190C0157C()
{
  result = qword_1EAD45340;
  if (!qword_1EAD45340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45340);
  }

  return result;
}

unint64_t sub_190C015D4()
{
  result = qword_1EAD45370;
  if (!qword_1EAD45370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45370);
  }

  return result;
}

unint64_t sub_190C01628()
{
  result = qword_1EAD45368;
  if (!qword_1EAD45368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45368);
  }

  return result;
}

unint64_t sub_190C01680()
{
  result = qword_1EAD45378;
  if (!qword_1EAD45378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45378);
  }

  return result;
}

unint64_t sub_190C0175C()
{
  result = qword_1EAD60040;
  if (!qword_1EAD60040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60040);
  }

  return result;
}

uint64_t sub_190C017B0(uint64_t a1)
{
  v2 = sub_190C0175C();

  return MEMORY[0x1EEDB2C20](a1, v2);
}

unint64_t sub_190C01800()
{
  result = qword_1EAD45358;
  if (!qword_1EAD45358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45358);
  }

  return result;
}

unint64_t sub_190C01858()
{
  result = qword_1EAD45338;
  if (!qword_1EAD45338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45338);
  }

  return result;
}

unint64_t sub_190C018B0()
{
  result = qword_1EAD45350;
  if (!qword_1EAD45350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45350);
  }

  return result;
}

uint64_t sub_190C01904()
{
  if (qword_1EAD51EE0 != -1)
  {
    swift_once();
  }

  return sub_190D52690();
}

uint64_t sub_190C01960(uint64_t a1)
{
  v2 = sub_190C01680();

  return MEMORY[0x1EEDB3D68](a1, v2);
}

unint64_t sub_190C01A04()
{
  result = qword_1EAD454E8;
  if (!qword_1EAD454E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD454E8);
  }

  return result;
}

unint64_t sub_190C01A5C()
{
  result = qword_1EAD454F8;
  if (!qword_1EAD454F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD454F8);
  }

  return result;
}

uint64_t sub_190C01B00()
{
  v0 = sub_190D51440();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_190D519C0();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_190D56EC0();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_190D51460();
  __swift_allocate_value_buffer(v6, qword_1EAD9E458);
  __swift_project_value_buffer(v6, qword_1EAD9E458);
  sub_190D56E50();
  sub_190D51980();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_190D51470();
}

uint64_t sub_190C01CE8()
{
  v0 = sub_190D50D00();
  __swift_allocate_value_buffer(v0, qword_1EAD9E470);
  v1 = __swift_project_value_buffer(v0, qword_1EAD9E470);
  v2 = *MEMORY[0x1E695A590];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_190C01D94@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60080);
  v2 = *(v1 - 8);
  v32 = v1;
  v33 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v30 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v31 = v25 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60088);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v28 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v25 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v29 = v25 - v13;
  v38 = 1;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60090);
  v25[3] = sub_1909D4F5C();
  v14 = sub_1909D522C();
  v25[2] = sub_190233640(&qword_1EAD60098, &qword_1EAD60090);
  sub_190D50D90();
  v25[1] = sub_190233640(&qword_1EAD600A0, &qword_1EAD60088);
  sub_190D50D30();
  v36 = *(v7 + 8);
  v26 = v11;
  v36(v11, v6);
  v27 = v7 + 8;
  v37 = 0;
  v15 = v28;
  v25[0] = v14;
  sub_190D50D90();
  sub_190D50D30();
  v36(v15, v6);
  v16 = v30;
  sub_190D50DB0();
  sub_190233640(&qword_1EAD600A8, &qword_1EAD60080);
  v17 = v31;
  v18 = v16;
  v19 = v32;
  sub_190D50D30();
  v20 = *(v33 + 8);
  v20(v18, v19);
  v21 = v29;
  v22 = v26;
  sub_190D50D10();
  v20(v17, v19);
  v23 = v36;
  v36(v22, v6);
  return v23(v21, v6);
}

uint64_t sub_190C02260@<X0>(uint64_t a1@<X8>)
{
  v13[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD600B0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD600B8);
  MEMORY[0x1EEE9AC00](v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60090);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v13 - v8;
  sub_1909D4F5C();
  sub_190D50BE0();
  sub_190D50BD0();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD600C0);
  sub_190D50BC0();

  sub_190D50BD0();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD600C8);
  sub_190D50BC0();

  sub_190D50BD0();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD600D0);
  sub_190D50BC0();

  sub_190D50BD0();
  sub_190D50BF0();
  sub_190D50BB0();
  v10 = sub_190233640(&qword_1EAD60098, &qword_1EAD60090);
  MEMORY[0x193AEC530](v6, &type metadata for MarkConversationAsUnreadIntent, v3, v10);
  v11 = *(v4 + 8);
  v11(v6, v3);
  MEMORY[0x193AEC520](v9, &type metadata for MarkConversationAsUnreadIntent, v3, v10);
  return (v11)(v9, v3);
}

uint64_t sub_190C025D8@<X0>(uint64_t a1@<X8>)
{
  v13[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD600B0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD600B8);
  MEMORY[0x1EEE9AC00](v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60090);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v13 - v8;
  sub_1909D4F5C();
  sub_190D50BE0();
  sub_190D50BD0();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD600C0);
  sub_190D50BC0();

  sub_190D50BD0();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD600C8);
  sub_190D50BC0();

  sub_190D50BD0();
  sub_190D50BF0();
  sub_190D50BB0();
  v10 = sub_190233640(&qword_1EAD60098, &qword_1EAD60090);
  MEMORY[0x193AEC530](v6, &type metadata for MarkConversationAsUnreadIntent, v3, v10);
  v11 = *(v4 + 8);
  v11(v6, v3);
  MEMORY[0x193AEC520](v9, &type metadata for MarkConversationAsUnreadIntent, v3, v10);
  return (v11)(v9, v3);
}

uint64_t sub_190C02914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD557E8);
  v4[6] = swift_task_alloc();
  type metadata accessor for ConversationEntity();
  v4[7] = swift_task_alloc();
  sub_190D572A0();
  v4[8] = sub_190D57290();
  v6 = sub_190D57240();

  return MEMORY[0x1EEE6DFA0](sub_190C02A14, v6, v5);
}

uint64_t sub_190C02A14()
{
  v1 = *(v0 + 56);

  v2 = [objc_opt_self() sharedRegistry];
  sub_190D50810();
  sub_190D52690();
  sub_1908305F8(v1);
  v3 = sub_190D56ED0();

  v4 = [v2 existingChatWithChatIdentifier_];

  v5 = [objc_allocWithZone(CKConversation) initWithChat_];
  sub_190D50810();
  v6 = *(v0 + 72);
  sub_190D50810();
  if (v6 == 1)
  {
    LOBYTE(v7) = [v5 hasUnreadMessages];
    v8 = &selRef_markAllMessagesAsRead;
    v9 = &selRef_markLastMessageAsUnread;
  }

  else
  {
    v7 = *(v0 + 73);
    if (v7 == 2)
    {
      v10 = *(v0 + 48);
      sub_190D50830();
      v11 = sub_190D50590();
      (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
      sub_190D50460();
      sub_190C03B40(&qword_1EAD5CF90, MEMORY[0x1E6959D40]);
      swift_allocError();
      sub_190D50840();

      sub_190ADD8F8(v10);
      swift_willThrow();

      v12 = *(v0 + 8);
      goto LABEL_9;
    }

    v8 = &selRef_markLastMessageAsUnread;
    v9 = &selRef_markAllMessagesAsRead;
  }

  if ((v7 & 1) == 0)
  {
    v8 = v9;
  }

  [v5 *v8];
  sub_190ADC8A4();
  sub_190D50690();

  v12 = *(v0 + 8);
LABEL_9:

  return v12();
}

uint64_t sub_190C02D4C(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60070);
  v5 = sub_190233640(&qword_1EAD60078, &qword_1EAD60070);

  return MEMORY[0x1EEDB4008](KeyPath, sub_190C01D94, 0, v4, a2, v5);
}

uint64_t sub_190C02E14(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_190221DA4;

  return sub_190C02914(a1, v4, v5, v6);
}

uint64_t sub_190C02EC8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_190C02F50();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

uint64_t sub_190C02EF4(uint64_t a1)
{
  v2 = sub_1909D4F5C();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

uint64_t sub_190C02F50()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD557E0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v50 = v45 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD54F40);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v48 = v45 - v3;
  v65 = sub_190D50C80();
  v68 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v64 = v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD557E8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v56 = v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v63 = v45 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53AE8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v66 = v45 - v10;
  v11 = sub_190D51440();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_190D519C0();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v16 = sub_190D56EC0();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v17 = sub_190D51460();
  v59 = v17;
  v67 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v49 = v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v58 = v45 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v62 = v45 - v22;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60068);
  sub_190D56E50();
  sub_190D51980();
  v24 = *(v12 + 104);
  v53 = *MEMORY[0x1E6968DF0];
  v23 = v53;
  v24(v14, v53, v11);
  v51 = v24;
  v52 = v12 + 104;
  sub_190D51470();
  sub_190D56E50();
  sub_190D51980();
  v24(v14, v23, v11);
  v25 = v66;
  sub_190D51470();
  v26 = *(v67 + 56);
  v67 += 56;
  v60 = v26;
  v26(v25, 0, 1, v17);
  v70 = 0;
  v27 = sub_190D50590();
  v28 = *(v27 - 8);
  v29 = *(v28 + 56);
  v54 = v29;
  v55 = v28 + 56;
  v29(v63, 1, 1, v27);
  v29(v56, 1, 1, v27);
  v61 = *MEMORY[0x1E695A500];
  v57 = *(v68 + 104);
  v68 += 104;
  v57(v64);
  sub_190C0175C();
  v47 = sub_190D50870();
  v45[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EB50);
  sub_190D56E50();
  sub_190D51980();
  v30 = v53;
  v31 = v51;
  v51(v14, v53, v11);
  sub_190D51470();
  sub_190D56E50();
  sub_190D51980();
  v32 = v30;
  v45[0] = v11;
  v33 = v31;
  v31(v14, v32, v11);
  v34 = v66;
  sub_190D51470();
  v60(v34, 0, 1, v59);
  v35 = type metadata accessor for ConversationEntity();
  (*(*(v35 - 8) + 56))(v48, 1, 1, v35);
  sub_190D56E50();
  *v14 = sub_190ADD800();
  v33(v14, *MEMORY[0x1E6968E00], v11);
  sub_190D51980();
  sub_190D51470();
  v36 = v63;
  sub_190D505A0();
  v46 = v27;
  v37 = v54;
  v54(v36, 0, 1, v27);
  v37(v56, 1, 1, v27);
  (v57)(v64, v61, v65);
  sub_190C03B40(&qword_1EAD45D90, type metadata accessor for ConversationEntity);
  v56 = sub_190D50890();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56DE0);
  sub_190D56E50();
  sub_190D51980();
  v38 = v53;
  v39 = v45[0];
  v40 = v51;
  v51(v14, v53, v45[0]);
  sub_190D51470();
  sub_190D56E50();
  sub_190D51980();
  v40(v14, v38, v39);
  v41 = v66;
  sub_190D51470();
  v60(v41, 0, 1, v59);
  v69 = 0;
  sub_190D56E50();
  sub_190D51980();
  v40(v14, v38, v39);
  sub_190D51470();
  sub_190D56E50();
  sub_190D51980();
  v40(v14, v38, v39);
  sub_190D51470();
  v42 = v50;
  sub_190D57210();
  v43 = sub_190D57220();
  (*(*(v43 - 8) + 56))(v42, 0, 1, v43);
  v54(v63, 1, 1, v46);
  (v57)(v64, v61, v65);
  sub_190D508E0();
  return v47;
}

uint64_t sub_190C03B40(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for SingleTapbackSummaryView()
{
  result = qword_1EAD600E0;
  if (!qword_1EAD600E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_190C03C08()
{
  type metadata accessor for AttributedTapbackItem();
  if (v0 <= 0x3F)
  {
    sub_190C03D28(319, &qword_1EAD52C10, MEMORY[0x1E697E730]);
    if (v1 <= 0x3F)
    {
      sub_190C03D28(319, &qword_1EAD5F6C0, MEMORY[0x1E697E7E0]);
      if (v2 <= 0x3F)
      {
        sub_190C03D7C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_190C03D28(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_190D53A80();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_190C03D7C()
{
  if (!qword_1EAD600F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD600F8);
    v0 = sub_190D56250();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAD600F0);
    }
  }
}

unint64_t sub_190C03DF4()
{
  result = qword_1EAD60100;
  if (!qword_1EAD60100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60100);
  }

  return result;
}

uint64_t sub_190C03E48@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_190D54800();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52E60);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for SingleTapbackSummaryView();
  sub_19022FD14(v1 + *(v10 + 40), v9, &qword_1EAD52E60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_190D540E0();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_190D576B0();
    v13 = sub_190D55260();
    sub_190D52F50();

    sub_190D547F0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_190C04050@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_190D54800();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F690);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for SingleTapbackSummaryView();
  sub_19022FD14(v1 + *(v10 + 44), v9, &qword_1EAD5F690);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_190D54190();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_190D576B0();
    v13 = sub_190D55260();
    sub_190D52F50();

    sub_190D547F0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

id sub_190C04274@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v31 = a1;
  v3 = sub_190D55020();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60108);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60110);
  v10 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v12 = &v28 - v11;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60118);
  MEMORY[0x1EEE9AC00](v28);
  v14 = &v28 - v13;
  v15 = *(v2 + *(type metadata accessor for SingleTapbackSummaryView() + 24));
  *v9 = sub_190D54AC0();
  *(v9 + 1) = 0x4000000000000000;
  v9[16] = 0;
  v16 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60120) + 44)];
  v30 = v2;
  sub_190C04694(v2, v16);
  v9[*(v7 + 36)] = 0;
  sub_190D55010();
  v17 = sub_190C07084();
  sub_190D55A40();
  (*(v4 + 8))(v6, v3);
  sub_19022EEA4(v9, &qword_1EAD60108);
  result = CKFrameworkBundle();
  v19 = result;
  if (v15)
  {
    if (result)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  else if (result)
  {
LABEL_5:
    v20 = sub_190D56ED0();
    v21 = sub_190D56ED0();
    v22 = [v19 localizedStringForKey:v20 value:0 table:v21];

    v23 = sub_190D56F10();
    v25 = v24;

    v34 = v23;
    v35 = v25;
    v32 = v7;
    v33 = v17;
    swift_getOpaqueTypeConformance2();
    sub_19081E484();
    v26 = v29;
    sub_190D55930();

    (*(v10 + 8))(v12, v26);
    v34 = sub_190C05F2C();
    v35 = v27;
    sub_190D541D0();

    return sub_19022EEA4(v14, &qword_1EAD60118);
  }

  __break(1u);
  return result;
}

uint64_t sub_190C04694@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v68 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60140);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v65 = (&v54 - v4);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60148);
  MEMORY[0x1EEE9AC00](v64);
  v67 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v63 = &v54 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v66 = &v54 - v9;
  v10 = type metadata accessor for SingleTapbackSummaryView();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60150);
  MEMORY[0x1EEE9AC00](v56);
  v14 = &v54 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60158);
  v61 = *(v15 - 8);
  v62 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v60 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v54 - v18;
  if (qword_1EAD51E60 != -1)
  {
    swift_once();
  }

  v54 = a1 + *(v10 + 20);
  v20 = *(v54 + 48);
  *v14 = qword_1EAD9E348;
  *(v14 + 1) = v20;
  v14[16] = 0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60160);
  sub_190C04E80(a1, &v14[*(v21 + 44)]);
  sub_190C07B54(a1, &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SingleTapbackSummaryView);
  v55 = v10;
  v22 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v57 = v12;
  v23 = swift_allocObject();
  v58 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190C07168(v58, v23 + v22);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60168);
  v25 = sub_190233640(&qword_1EAD60170, &qword_1EAD60150);
  v26 = sub_190D54500();
  v27 = sub_190C07CB4(&qword_1EAD57458, MEMORY[0x1E697ED30]);
  v69 = v26;
  v70 = v27;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x193AF1090](sub_190C071CC, v23, v56, v24, v25, OpaqueTypeConformance2);

  sub_19022EEA4(v14, &qword_1EAD60150);
  v29 = *(a1 + *(v55 + 24));
  v59 = v19;
  if (v29)
  {
    v30 = [objc_opt_self() sharedApplication];
    v31 = [v30 preferredContentSizeCategory];

    LOBYTE(v30) = sub_190D579E0();
    v32 = 0;
    v33 = 0;
    v34 = 0x4034000000000000;
    if (v30)
    {
      v34 = 0x403C000000000000;
    }

    v35 = *(a1 + 24);
  }

  else
  {
    v35 = *(a1 + 24);
    v33 = *(v54 + 24);
    v34 = 0xC02C000000000000;
    if (*(v35 + 16) != 2)
    {
      v34 = 0xC032000000000000;
    }

    v32 = 3;
  }

  v36 = v65;
  *v65 = v34;
  *(v36 + 8) = v32;
  *(v36 + 16) = v33;
  *(v36 + 24) = v29 ^ 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60178);
  v69 = sub_19086D864(v35);
  swift_getKeyPath();
  v37 = v58;
  sub_190C07B54(a1, v58, type metadata accessor for SingleTapbackSummaryView);
  v38 = swift_allocObject();
  sub_190C07168(v37, v38 + v22);
  v39 = swift_allocObject();
  *(v39 + 16) = sub_190C07474;
  *(v39 + 24) = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60180);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60188);
  sub_190233640(&qword_1EAD60190, &qword_1EAD60180);
  sub_190C0754C();
  sub_190C075A0();
  sub_190D56280();
  if (sub_190C05DA8())
  {
    v40 = 8.0;
  }

  else
  {
    v40 = 0.0;
  }

  v41 = v63;
  sub_19081E40C(v36, v63, &qword_1EAD60140);
  v42 = v41 + *(v64 + 36);
  *v42 = v40;
  *(v42 + 8) = 0;
  v43 = v66;
  sub_19081E40C(v41, v66, &qword_1EAD60148);
  v45 = v60;
  v44 = v61;
  v46 = *(v61 + 16);
  v47 = v59;
  v48 = v62;
  v46(v60, v59, v62);
  v49 = v67;
  sub_1902862E8(v43, v67);
  v50 = v68;
  v46(v68, v45, v48);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD601F0);
  sub_1902862E8(v49, &v50[*(v51 + 48)]);
  sub_19022EEA4(v43, &qword_1EAD60148);
  v52 = *(v44 + 8);
  v52(v47, v48);
  sub_19022EEA4(v49, &qword_1EAD60148);
  return (v52)(v45, v48);
}

uint64_t sub_190C04E80@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v92 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52F28);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v81 = &v79 - v4;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60260);
  MEMORY[0x1EEE9AC00](v82);
  v87 = &v79 - v5;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60268);
  MEMORY[0x1EEE9AC00](v83);
  v86 = &v79 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60270);
  v90 = *(v7 - 8);
  v91 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v85 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v84 = &v79 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60278);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v94 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v97 = &v79 - v14;
  v15 = *a1;
  v16 = *(a1 + 8);
  v17 = *(a1 + 16);
  v18 = type metadata accessor for SingleTapbackSummaryView();
  v19 = v18[6];
  v20 = (a1 + v18[5]);
  v21 = *v20;
  v22 = v20[1];
  v23 = v20[4];
  v138 = v20[3];
  v139 = v23;
  v24 = v20[2];
  v136 = v22;
  v137 = v24;
  v25 = *(a1 + v19);
  v26 = v18[8];
  v93 = *(a1 + v18[7]);
  v135 = v21;
  v104 = *(a1 + v26);
  v103 = *(a1 + v18[9]);
  v27 = a1 + v18[12];
  v28 = *(v27 + 8);
  v29 = *(v27 + 16);
  v30 = *(v27 + 26);
  v31 = *(v27 + 24);
  v88 = *v27;
  v112 = v88;
  v113 = v28;
  v114 = v29;
  BYTE2(v115) = v30;
  LOWORD(v115) = v31;
  v95 = v16;
  v96 = v15;
  v105 = v17;
  sub_190824730(v15, v16, v17);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59328);
  sub_190D56220();
  v98 = v106;
  v100 = v108;
  v101 = v107;
  v89 = WORD4(v108) | (BYTE10(v108) << 16);
  KeyPath = swift_getKeyPath();
  LOBYTE(v112) = 0;
  *&v134[38] = v137;
  *&v134[54] = v138;
  *&v134[70] = v139;
  *&v134[6] = v135;
  *&v134[22] = v136;
  v102 = v25;
  if (v25 == 1)
  {
    v33 = v31 | (v30 << 16);
    v34 = v88;
    v112 = v88;
    v113 = v28;
    v114 = v29;
    LOWORD(v115) = v33;
    v35 = HIWORD(v33);
    BYTE2(v115) = BYTE2(v33);
    MEMORY[0x193AF1A80](&v106, v32);
    if (BYTE1(v107) << 8 == 768)
    {
      v80 = v33;
      v36 = v87;
      sub_190C07B54(a1, v87, type metadata accessor for AttributedTapbackItem);
      v37 = type metadata accessor for TapbackCountView();
      v79 = *(v37 + 20);
      v38 = sub_190D55390();
      v39 = v81;
      (*(*(v38 - 8) + 56))(v81, 1, 1, v38);
      v40 = sub_190D553F0();
      sub_19022EEA4(v39, &qword_1EAD52F28);
      *(v36 + v79) = v40;
      v41 = *(v37 + 24);
      *(v36 + v41) = sub_190D54EA0();
      *(v36 + *(v82 + 36)) = sub_190D53C90();
      v42 = v80;
      v112 = v34;
      v113 = v28;
      v114 = v29;
      BYTE2(v115) = v35;
      LOWORD(v115) = v80;
      MEMORY[0x193AF1A80](&v106, v32);
      v43 = BYTE1(v107);
      v44 = v107 & 0xFF00;
      v112 = v34;
      v113 = v28;
      v82 = v28;
      v45 = v29;
      v114 = v29;
      BYTE2(v115) = v35;
      LOWORD(v115) = v42;
      MEMORY[0x193AF1A80](&v106, v32);
      v46 = BYTE2(v107);
      if ((v107 & 0xFF00) == 0x300)
      {
        v46 = 3;
      }

      if (v44 == 768 || v43 == 3)
      {
        v48 = v86;
        if (v46 != 3)
        {
          v47 = 0.1;
          goto LABEL_14;
        }
      }

      else
      {
        v47 = 0.1;
        v48 = v86;
        if (v46 == 3 || v46 != v43)
        {
LABEL_14:
          sub_19081E40C(v87, v48, &qword_1EAD60260);
          v51 = v82;
          *(v48 + *(v83 + 36)) = v47;
          v52 = v88;
          v112 = v88;
          v113 = v51;
          v114 = v45;
          BYTE2(v115) = v35;
          LOWORD(v115) = v42;
          MEMORY[0x193AF1A80](&v106, v32);
          v53 = BYTE1(v107);
          v54 = v35;
          v55 = v107 & 0xFF00;
          v112 = v52;
          v113 = v51;
          v114 = v45;
          BYTE2(v115) = v54;
          LOWORD(v115) = v42;
          MEMORY[0x193AF1A80](&v106, v32);
          v56 = BYTE2(v107);
          if ((v107 & 0xFF00) == 0x300)
          {
            v56 = 3;
          }

          if (v55 == 768 || v53 == 3)
          {
            v57 = 8.0;
            v50 = v91;
            if (v56 != 3)
            {
LABEL_23:
              v58 = v48;
              v59 = v85;
              sub_19081E40C(v58, v85, &qword_1EAD60268);
              v60 = v59 + *(v50 + 36);
              *v60 = v57;
              *(v60 + 8) = 0;
              v61 = v59;
              v62 = v84;
              sub_19081E40C(v61, v84, &qword_1EAD60270);
              sub_19081E40C(v62, v97, &qword_1EAD60270);
              v49 = 0;
              goto LABEL_24;
            }
          }

          else
          {
            v57 = 8.0;
            v50 = v91;
            if (v56 == 3 || v56 != v53)
            {
              goto LABEL_23;
            }
          }

          v57 = 0.0;
          goto LABEL_23;
        }
      }

      v47 = 1.0;
      goto LABEL_14;
    }
  }

  v49 = 1;
  v50 = v91;
LABEL_24:
  v63 = v97;
  (*(v90 + 56))(v97, v49, 1, v50);
  v64 = v94;
  sub_19022FD14(v63, v94, &qword_1EAD60278);
  v106 = KeyPath;
  v107 = 0;
  LOBYTE(v108) = 0;
  *(&v108 + 1) = v142[0];
  DWORD1(v108) = *(v142 + 3);
  *(&v108 + 1) = v98;
  *&v109 = v101;
  *(&v109 + 1) = v100;
  v65 = v89;
  LODWORD(v91) = HIWORD(v89);
  BYTE2(v110) = BYTE2(v89);
  LOWORD(v110) = v89;
  *(&v110 + 3) = v140;
  BYTE7(v110) = v141;
  v67 = v95;
  v66 = v96;
  *(&v110 + 1) = v96;
  *&v111[0] = v95;
  BYTE8(v111[0]) = v105;
  BYTE9(v111[0]) = v102;
  *(v111 + 10) = *v134;
  *(&v111[1] + 10) = *&v134[16];
  *(&v111[5] + 1) = *&v134[78];
  *(&v111[4] + 10) = *&v134[64];
  *(&v111[3] + 10) = *&v134[48];
  *(&v111[2] + 10) = *&v134[32];
  *&v111[6] = v103;
  v68 = v93;
  BYTE8(v111[6]) = v93;
  BYTE9(v111[6]) = v104;
  v69 = v108;
  v70 = v92;
  *v92 = KeyPath;
  v70[1] = v69;
  v71 = v109;
  v72 = v110;
  v73 = v111[1];
  v70[4] = v111[0];
  v70[5] = v73;
  v70[2] = v71;
  v70[3] = v72;
  v74 = v111[2];
  v75 = v111[3];
  *(v70 + 154) = *(&v111[5] + 10);
  v76 = v111[5];
  v70[8] = v111[4];
  v70[9] = v76;
  v70[6] = v74;
  v70[7] = v75;
  v77 = v70 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60280) + 48);
  sub_19022FD14(v64, v77, &qword_1EAD60278);
  sub_190C07AA4(&v106, &v112);
  sub_19022EEA4(v63, &qword_1EAD60278);
  sub_19022EEA4(v64, &qword_1EAD60278);
  v112 = KeyPath;
  v113 = 0;
  LOBYTE(v114) = 0;
  *(&v114 + 1) = v142[0];
  HIDWORD(v114) = *(v142 + 3);
  v115 = v98;
  v116 = v101;
  v117 = v100;
  v119 = v91;
  v118 = v65;
  v120 = v140;
  v121 = v141;
  v122 = v66;
  v123 = v67;
  v124 = v105;
  v125 = v102;
  v128 = *&v134[32];
  v129 = *&v134[48];
  *v130 = *&v134[64];
  v126 = *v134;
  v127 = *&v134[16];
  *&v130[14] = *&v134[78];
  v131 = v103;
  v132 = v68;
  v133 = v104;
  return sub_190C07B00(&v112);
}

uint64_t sub_190C057D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_190D54190();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0.0;
  if (*(a3 + *(type metadata accessor for SingleTapbackSummaryView() + 24)) == 1)
  {
    sub_190C04050(v7);
    sub_190C05940();
    v8 = v9;
    (*(v5 + 8))(v7, v4);
  }

  v10 = sub_190D54500();
  v11 = sub_190C07CB4(&qword_1EAD57458, MEMORY[0x1E697ED30]);
  return MEMORY[0x193AEF4D0](v10, v11, v8, 0.0);
}

uint64_t sub_190C05940()
{
  v0 = sub_190D54190();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_190D54CC0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D54F00();
  sub_190D53D50();
  v8 = *(v5 + 8);
  result = v8(v7, v4);
  if ((v20 & 1) == 0)
  {
    CGRectGetWidth(v19);
    sub_190D54F00();
    sub_190D53D40();
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v8(v7, v4);
    v21.origin.x = v11;
    v21.origin.y = v13;
    v21.size.width = v15;
    v21.size.height = v17;
    CGRectGetMidX(v21);
    (*(v1 + 104))(v3, *MEMORY[0x1E697E7D0], v0);
    sub_190D54180();
    return (*(v1 + 8))(v3, v0);
  }

  return result;
}

uint64_t sub_190C05B98@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v34 = a1;
  v31 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD601B0);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v31 - v8;
  v10 = type metadata accessor for SingleTapbackSummaryView();
  v11 = 16;
  if (*(a3 + *(v10 + 24)))
  {
    v11 = 40;
  }

  v12 = *(a3 + *(v10 + 20) + v11);
  v39 = *a2;
  v13 = *(a2 + 2);
  v14 = *(a2 + 3);
  v37 = v14;
  v38 = v13;
  v36 = a2[2];
  v15 = *a2;
  v16 = *(a2 + 1);
  v17 = *(a2 + 4);
  v32 = *(a2 + 5);
  v33 = v17;
  sub_190869370(&v39, v35);
  sub_19022FD14(&v38, v35, &qword_1EAD601F8);
  sub_19022FD14(&v37, v35, &qword_1EAD60200);
  sub_190869370(&v36, v35);
  if (sub_190C05DA8())
  {
    v18 = 0.1;
  }

  else
  {
    v18 = 1.0;
  }

  v19 = sub_190D564F0();
  v21 = v20;
  v22 = &v9[*(v7 + 44)];
  sub_190C06584(a2, a3, v22);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD601D8);
  v24 = (v22 + *(result + 36));
  *v24 = v19;
  v24[1] = v21;
  *v9 = v15;
  *(v9 + 1) = v16;
  *(v9 + 2) = v13;
  *(v9 + 3) = v14;
  v25 = v32;
  *(v9 + 4) = v33;
  *(v9 + 5) = v25;
  *(v9 + 6) = v12;
  *(v9 + 7) = v18;
  v26 = *(*(a3 + 24) + 16);
  v27 = __OFSUB__(v26, v34);
  v28 = v26 - v34;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    v29 = v28;
    v30 = v31;
    sub_19081E40C(v9, v31, &qword_1EAD601B0);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60188);
    *(v30 + *(result + 36)) = v29;
  }

  return result;
}

BOOL sub_190C05DA8()
{
  v13 = type metadata accessor for SingleTapbackSummaryView();
  v1 = (v0 + *(v13 + 48));
  v3 = v1[1];
  v4 = v1[2];
  v5 = *(v1 + 26);
  v6 = *(v1 + 12);
  v17 = *v1;
  v2 = v17;
  v18 = v3;
  v19 = v4;
  v21 = v5;
  v20 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59328);
  MEMORY[0x193AF1A80](&v14);
  v8 = HIBYTE(v15);
  v9 = v15 & 0xFF00;
  v17 = v2;
  v18 = v3;
  v19 = v4;
  v21 = v5;
  v20 = v6;
  MEMORY[0x193AF1A80](&v14, v7);
  v10 = v16;
  if ((v15 & 0xFF00) == 0x300)
  {
    v10 = 3;
  }

  if (v9 == 768 || v8 == 3)
  {
    if (v10 == 3)
    {
      return 0;
    }
  }

  else if (v10 != 3 && v10 == v8)
  {
    return 0;
  }

  v11 = v6 | (v5 << 16);
  v17 = v2;
  v18 = v3;
  v19 = v4;
  v20 = v11;
  v21 = BYTE2(v11);
  MEMORY[0x193AF1A80](&v14, v7);
  if (HIBYTE(v15) << 8 != 768 && (v15 & 1) == 0)
  {
    return v14 == *(v0 + *(v13 + 36));
  }

  return 0;
}

id sub_190C05F2C()
{
  v1 = v0;
  v2 = *v0;
  if (*(v0 + 16) == 1)
  {
    v65 = *(v0 + 8);
    sub_190D52690();
    goto LABEL_7;
  }

  v3 = sub_1908C04C4();
  if (v4)
  {
    v2 = v3;
    v65 = v4;
    goto LABEL_7;
  }

  result = CKFrameworkBundle();
  if (result)
  {
    v6 = result;
    v7 = sub_190D56ED0();
    v8 = sub_190D56ED0();
    v9 = [v6 &selRef_messageContext + 4];

    v2 = sub_190D56F10();
    v65 = v10;

LABEL_7:
    v11 = type metadata accessor for SingleTapbackSummaryView();
    v12 = *(v1 + 24);
    v13 = *(v12 + 16);
    if (*(v1 + *(v11 + 24)) == 1)
    {
      if (v13)
      {
        v66 = MEMORY[0x1E69E7CC0];
        sub_19082DBB4(0, v13, 0);
        v14 = (v12 + 40);
        v15 = v13;
        do
        {
          v16 = *(v14 - 1);
          v17 = *v14;
          v19 = *(v66 + 16);
          v18 = *(v66 + 24);
          sub_190D52690();
          if (v19 >= v18 >> 1)
          {
            sub_19082DBB4((v18 > 1), v19 + 1, 1);
          }

          *(v66 + 16) = v19 + 1;
          v20 = v66 + 16 * v19;
          *(v20 + 32) = v16;
          *(v20 + 40) = v17;
          v14 += 6;
          --v15;
        }

        while (v15);
      }

      v29 = objc_opt_self();
      v30 = MEMORY[0x1E69E6158];
      v31 = sub_190D57160();

      v32 = [v29 localizedStringByJoiningStrings_];

      v33 = sub_190D56F10();
      v35 = v34;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53040);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_190DD9C20;
      v37 = MEMORY[0x1E69E65A8];
      *(v36 + 56) = MEMORY[0x1E69E6530];
      *(v36 + 64) = v37;
      *(v36 + 32) = v13;
      *(v36 + 96) = v30;
      v38 = sub_19081EA10();
      *(v36 + 72) = v2;
      *(v36 + 80) = v65;
      *(v36 + 136) = v30;
      *(v36 + 144) = v38;
      *(v36 + 104) = v38;
      *(v36 + 112) = v33;
      *(v36 + 120) = v35;
      result = CKFrameworkBundle();
      if (result)
      {
        v39 = result;
LABEL_33:
        v61 = sub_190D56ED0();
        v62 = sub_190D56ED0();
        v63 = [v39 localizedStringForKey:v61 value:0 table:v62];

        sub_190D56F10();
        v64 = sub_190D56EE0();

        return v64;
      }

      __break(1u);
      goto LABEL_37;
    }

    if (v13)
    {
      v67 = MEMORY[0x1E69E7CC0];
      sub_19082DBB4(0, v13, 0);
      v21 = v67;
      v22 = (v12 + 40);
      do
      {
        v23 = *(v22 - 1);
        v24 = *v22;
        v25 = *(v67 + 16);
        v26 = *(v67 + 24);
        v27 = v25 + 1;
        sub_190D52690();
        if (v25 >= v26 >> 1)
        {
          sub_19082DBB4((v26 > 1), v25 + 1, 1);
        }

        *(v67 + 16) = v27;
        v28 = v67 + 16 * v25;
        *(v28 + 32) = v23;
        *(v28 + 40) = v24;
        v22 += 6;
        --v13;
      }

      while (v13);
      if (v27 < 4)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v21 = MEMORY[0x1E69E7CC0];
      if (*(MEMORY[0x1E69E7CC0] + 16) < 4uLL)
      {
        goto LABEL_24;
      }
    }

    sub_190C22C30(v21, (v21 + 32), 0, 7uLL);
    v41 = v40;

    v21 = v41;
LABEL_24:
    if (*(v12 + 16) >= 4uLL)
    {
      result = CKFrameworkBundle();
      if (!result)
      {
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      v42 = result;
      v43 = sub_190D56ED0();
      v44 = sub_190D56ED0();
      v45 = [v42 localizedStringForKey:v43 value:0 table:v44];

      v46 = sub_190D56F10();
      v48 = v47;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_1908354D4(0, *(v21 + 2) + 1, 1, v21);
      }

      v50 = *(v21 + 2);
      v49 = *(v21 + 3);
      if (v50 >= v49 >> 1)
      {
        v21 = sub_1908354D4((v49 > 1), v50 + 1, 1, v21);
      }

      *(v21 + 2) = v50 + 1;
      v51 = &v21[16 * v50];
      *(v51 + 4) = v46;
      *(v51 + 5) = v48;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53040);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_190DD1DA0;
    v53 = objc_opt_self();
    v54 = MEMORY[0x1E69E6158];
    v55 = sub_190D57160();

    v56 = [v53 localizedStringByJoiningStrings_];

    v57 = sub_190D56F10();
    v59 = v58;

    *(v52 + 56) = v54;
    v60 = sub_19081EA10();
    *(v52 + 32) = v57;
    *(v52 + 40) = v59;
    *(v52 + 96) = v54;
    *(v52 + 104) = v60;
    *(v52 + 64) = v60;
    *(v52 + 72) = v2;
    *(v52 + 80) = v65;
    result = CKFrameworkBundle();
    if (result)
    {
      v39 = result;
      goto LABEL_33;
    }

LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_190C06584@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v82 = a2;
  v79 = a3;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55750);
  MEMORY[0x1EEE9AC00](v76);
  v75 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v74 = &v73 - v6;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55708);
  MEMORY[0x1EEE9AC00](v78);
  v77 = &v73 - v7;
  v94 = sub_190D540E0();
  v93 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v92 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v91 = &v73 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v81 = &v73 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52F28);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v73 - v14;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60208);
  v89 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v80 = &v73 - v16;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60210);
  MEMORY[0x1EEE9AC00](v88);
  v87 = &v73 - v17;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60218);
  MEMORY[0x1EEE9AC00](v86);
  v85 = &v73 - v18;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60220);
  MEMORY[0x1EEE9AC00](v83);
  v84 = &v73 - v19;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60228);
  MEMORY[0x1EEE9AC00](v95);
  v96 = &v73 - v20;
  v21 = *a1;
  v22 = a1[1];
  *&v103[0] = v21;
  *(&v103[0] + 1) = v22;
  sub_19081E484();
  sub_190D52690();
  v23 = sub_190D555F0();
  v25 = v24;
  v27 = v26;
  v28 = sub_190D55390();
  (*(*(v28 - 8) + 56))(v15, 1, 1, v28);
  sub_190D553F0();
  sub_19022EEA4(v15, &qword_1EAD52F28);
  v29 = sub_190D555B0();
  v31 = v30;
  v33 = v32;
  v35 = v34;

  sub_19081E474(v23, v25, v27 & 1);

  v36 = type metadata accessor for SingleTapbackSummaryView();
  v37 = v82;
  sub_190D56500();
  sub_190D53C60();
  v102 = v33 & 1;
  *&v97 = v29;
  *(&v97 + 1) = v31;
  LOBYTE(v98) = v33 & 1;
  *(&v98 + 1) = v35;
  v38 = v80;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60230);
  sub_190C07790();
  v39 = v81;
  sub_190D55C80();
  v103[2] = v99;
  v103[3] = v100;
  v103[4] = v101;
  v103[0] = v97;
  v103[1] = v98;
  sub_19022EEA4(v103, &qword_1EAD60230);
  sub_190C03E48(v39);
  if (*(v37 + *(v36 + 24)) == 1)
  {
    v40 = v93;
    v41 = v91;
    v42 = v94;
    (*(v93 + 104))(v91, *MEMORY[0x1E697E6E8], v94);
    sub_190C07CB4(&qword_1EAD55758, MEMORY[0x1E697E730]);
    v43 = sub_190D56E00();
    v44 = v40[1];
    v44(v41, v42);
    v44(v39, v42);
    if (v43)
    {
      v45 = 24.0;
    }

    else
    {
      v45 = 15.0;
    }

    v46 = 0.0;
    v47 = 1.0;
    v48 = 1.0;
  }

  else
  {
    v40 = v93;
    v44 = *(v93 + 8);
    v42 = v94;
    v44(v39, v94);
    v45 = 22.0;
    v48 = 0.0;
    v46 = 6.0;
    v47 = 0.4;
    v41 = v91;
  }

  v49 = v87;
  (*(v89 + 32))(v87, v38, v90);
  v50 = &v49[*(v88 + 36)];
  *v50 = 0;
  *(v50 + 1) = v45;
  v51 = v49;
  v52 = v85;
  sub_19081E40C(v51, v85, &qword_1EAD60210);
  *(v52 + *(v86 + 36)) = v48;
  v53 = v52;
  v54 = v84;
  sub_19081E40C(v53, v84, &qword_1EAD60218);
  v55 = v54 + *(v83 + 36);
  *v55 = v46;
  *(v55 + 8) = 0;
  sub_190D56690();
  v57 = v56;
  v59 = v58;
  v60 = v96;
  sub_19081E40C(v54, v96, &qword_1EAD60220);
  v61 = (v60 + *(v95 + 36));
  *v61 = v47;
  v61[1] = v47;
  *(v61 + 2) = v57;
  *(v61 + 3) = v59;
  v62 = v40[13];
  v62(v41, *MEMORY[0x1E697E718], v42);
  v63 = v92;
  v62(v92, *MEMORY[0x1E697E6C0], v42);
  sub_190C07CB4(&qword_1EAD55758, MEMORY[0x1E697E730]);
  result = sub_190D56E20();
  if (result)
  {
    v65 = v40[4];
    v66 = v74;
    v65(v74, v41, v42);
    v67 = v76;
    v65((v66 + *(v76 + 48)), v63, v42);
    v68 = v44;
    v69 = v75;
    sub_19022FD14(v66, v75, &qword_1EAD55750);
    v70 = *(v67 + 48);
    v71 = v77;
    v65(v77, v69, v42);
    v68(v69 + v70, v42);
    sub_19081E40C(v66, v69, &qword_1EAD55750);
    v65((v71 + *(v78 + 36)), (v69 + *(v67 + 48)), v42);
    v68(v69, v42);
    sub_190C07814();
    sub_190233640(&qword_1EAD55738, &qword_1EAD55708);
    v72 = v96;
    sub_190D55870();
    sub_19022EEA4(v71, &qword_1EAD55708);
    return sub_19022EEA4(v72, &qword_1EAD60228);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_190C07084()
{
  result = qword_1EAD60128;
  if (!qword_1EAD60128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD60108);
    sub_190233640(&qword_1EAD60130, &qword_1EAD60138);
    sub_190233640(&qword_1EAD557A0, &qword_1EAD557A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60128);
  }

  return result;
}

uint64_t sub_190C07168(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SingleTapbackSummaryView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_190C071CC(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for SingleTapbackSummaryView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_190C057D0(a1, a2, v6);
}

uint64_t objectdestroyTm_42()
{
  v1 = type metadata accessor for SingleTapbackSummaryView();
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  sub_19083F1AC(*(v0 + v4), *(v0 + v4 + 8), *(v0 + v4 + 16));

  v6 = *(type metadata accessor for AttributedTapbackItem() + 24);
  v7 = sub_190D51840();
  (*(*(v7 - 8) + 8))(v0 + v4 + v6, v7);

  v8 = *(v1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52E60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_190D540E0();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  v10 = *(v1 + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F690);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_190D54190();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v4 + v3, v2 | 7);
}

uint64_t sub_190C07474@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for SingleTapbackSummaryView() - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_190C05B98(a1, a2, v8, a3);
}

uint64_t sub_190C074FC(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *(a1 + 3);
  v6[0] = *(a1 + 1);
  v6[1] = v4;
  v6[2] = *(a1 + 5);
  return v2(v3, v6);
}

unint64_t sub_190C0754C()
{
  result = qword_1EAD60198;
  if (!qword_1EAD60198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60198);
  }

  return result;
}

unint64_t sub_190C075A0()
{
  result = qword_1EAD601A0;
  if (!qword_1EAD601A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD60188);
    sub_190C07658();
    sub_190233640(&qword_1EAD601E0, &qword_1EAD601E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD601A0);
  }

  return result;
}

unint64_t sub_190C07658()
{
  result = qword_1EAD601A8;
  if (!qword_1EAD601A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD601B0);
    sub_190C07958(&qword_1EAD601B8, &qword_1EAD601C0, &unk_190DFBC08, sub_190C0773C);
    sub_190233640(&qword_1EAD601D0, &qword_1EAD601D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD601A8);
  }

  return result;
}

unint64_t sub_190C0773C()
{
  result = qword_1EAD601C8;
  if (!qword_1EAD601C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD601C8);
  }

  return result;
}

unint64_t sub_190C07790()
{
  result = qword_1EAD60238;
  if (!qword_1EAD60238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD60230);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60238);
  }

  return result;
}

unint64_t sub_190C07814()
{
  result = qword_1EAD60240;
  if (!qword_1EAD60240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD60228);
    sub_190C078A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60240);
  }

  return result;
}

unint64_t sub_190C078A0()
{
  result = qword_1EAD60248;
  if (!qword_1EAD60248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD60220);
    sub_190C07958(&qword_1EAD60250, &qword_1EAD60218, &unk_190DFBC58, sub_190C079DC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60248);
  }

  return result;
}

uint64_t sub_190C07958(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_190C079DC()
{
  result = qword_1EAD60258;
  if (!qword_1EAD60258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD60210);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD60230);
    sub_190C07790();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60258);
  }

  return result;
}

uint64_t sub_190C07B54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_190C07BBC()
{
  result = qword_1EAD60288;
  if (!qword_1EAD60288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD60118);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD60108);
    sub_190C07084();
    swift_getOpaqueTypeConformance2();
    sub_190C07CB4(&qword_1EAD56800, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60288);
  }

  return result;
}

uint64_t sub_190C07CB4(unint64_t *a1, void (*a2)(uint64_t))
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

id CKBalloonBackdropMaterialVibrantOuterStrokeLayer.init(shape:stroke:material:)(char *a1, uint64_t a2, char *a3)
{
  v40 = a1;
  v41 = a3;
  v39 = a2;
  v6 = sub_190D56B90();
  v7 = *(v6 - 8);
  v36 = v6;
  v37 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60290);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v33 - v11;
  v13 = sub_190D56C50();
  v38 = *(v13 - 8);
  v14 = v38;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v14 + 16);
  v34 = v13;
  v17(v16, a1, v13);
  sub_19090E8F8(a2, v12);
  v18 = *(v7 + 16);
  v19 = v9;
  v20 = v36;
  v18(v19, v41, v36);
  swift_unknownObjectWeakInit();
  v21 = OBJC_IVAR____TtC7ChatKit32CKBalloonVibrantOuterStrokeLayer_stroke;
  v22 = type metadata accessor for CKBalloonLayer.Stroke(0);
  (*(*(v22 - 8) + 56))(&v3[v21], 1, 1, v22);
  v17(&v3[OBJC_IVAR____TtC7ChatKit32CKBalloonVibrantOuterStrokeLayer_shape], v16, v13);
  swift_beginAccess();
  sub_1909B89A8(v12, &v3[v21]);
  swift_endAccess();
  v23 = v35;
  v18(&v3[OBJC_IVAR____TtC7ChatKit32CKBalloonVibrantOuterStrokeLayer_material], v35, v20);
  v24 = type metadata accessor for CKBalloonVibrantOuterStrokeLayer(0);
  v42.receiver = v3;
  v42.super_class = v24;
  v25 = objc_msgSendSuper2(&v42, sel_init);
  v26 = *(v37 + 8);
  v27 = v20;
  v26(v23, v20);
  sub_19022EEA4(v12, &qword_1EAD60290);
  v28 = *(v38 + 8);
  v29 = v34;
  v28(v16, v34);
  v30 = v25;
  v31 = sub_190D56ED0();
  [v30 setName_];

  v26(v41, v27);
  sub_19022EEA4(v39, &qword_1EAD60290);
  v28(v40, v29);
  return v30;
}

id CKBalloonVibrantOuterStrokeLayer.init(shape:stroke:material:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectWeakInit();
  v7 = OBJC_IVAR____TtC7ChatKit32CKBalloonVibrantOuterStrokeLayer_stroke;
  v8 = type metadata accessor for CKBalloonLayer.Stroke(0);
  (*(*(v8 - 8) + 56))(&v3[v7], 1, 1, v8);
  v9 = OBJC_IVAR____TtC7ChatKit32CKBalloonVibrantOuterStrokeLayer_shape;
  v10 = sub_190D56C50();
  v11 = *(v10 - 8);
  (*(v11 + 16))(&v3[v9], a1, v10);
  swift_beginAccess();
  sub_1909B89A8(a2, &v3[v7]);
  swift_endAccess();
  v12 = OBJC_IVAR____TtC7ChatKit32CKBalloonVibrantOuterStrokeLayer_material;
  v13 = sub_190D56B90();
  v14 = *(v13 - 8);
  (*(v14 + 16))(&v3[v12], a3, v13);
  v17.receiver = v3;
  v17.super_class = type metadata accessor for CKBalloonVibrantOuterStrokeLayer(0);
  v15 = objc_msgSendSuper2(&v17, sel_init);
  (*(v14 + 8))(a3, v13);
  sub_19022EEA4(a2, &qword_1EAD60290);
  (*(v11 + 8))(a1, v10);
  return v15;
}

uint64_t sub_190C083B0(_BYTE *a1)
{
  v2 = v1;
  v4 = sub_190D56C50();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15[-v9];
  v11 = OBJC_IVAR____TtC7ChatKit32CKBalloonVibrantOuterStrokeLayer_shape;
  swift_beginAccess();
  v12 = *(v5 + 16);
  v12(v10, &v2[v11], v4);
  swift_beginAccess();
  (*(v5 + 24))(&v2[v11], a1, v4);
  swift_endAccess();
  v12(v8, &v2[v11], v4);
  sub_190C09B8C(&qword_1EAD46760, MEMORY[0x1E698F600]);
  LOBYTE(v11) = sub_190D56E30();
  v13 = *(v5 + 8);
  v13(v8, v4);
  if ((v11 & 1) == 0)
  {
    [v2 setNeedsLayout];
  }

  v13(a1, v4);
  return (v13)(v10, v4);
}

void (*sub_190C085C4(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = sub_190D56C50();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[5] = v7;
  v9 = *(v7 + 64);
  if (v3)
  {
    v5[6] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[6] = malloc(*(v7 + 64));
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[7] = v10;
  v12 = OBJC_IVAR____TtC7ChatKit32CKBalloonVibrantOuterStrokeLayer_shape;
  swift_beginAccess();
  v13 = *(v8 + 16);
  v5[8] = v13;
  v5[9] = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v13(v11, v1 + v12, v6);
  return sub_190C0871C;
}

uint64_t sub_190C08734@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC7ChatKit32CKBalloonVibrantOuterStrokeLayer_stroke;
  swift_beginAccess();
  return sub_19090E8F8(v1 + v3, a1);
}

uint64_t sub_190C0878C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60290);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v8[-v4];
  v6 = OBJC_IVAR____TtC7ChatKit32CKBalloonVibrantOuterStrokeLayer_stroke;
  swift_beginAccess();
  sub_19090E8F8(v1 + v6, v5);
  swift_beginAccess();
  sub_1909B89A8(a1, v1 + v6);
  swift_endAccess();
  sub_190C0988C(v5);
  sub_19022EEA4(a1, &qword_1EAD60290);
  return sub_19022EEA4(v5, &qword_1EAD60290);
}

void (*sub_190C08890(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x70uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60290) - 8) + 64);
  if (v3)
  {
    v5[10] = swift_coroFrameAlloc();
    v5[11] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[10] = malloc(v6);
    v5[11] = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  v9 = OBJC_IVAR____TtC7ChatKit32CKBalloonVibrantOuterStrokeLayer_stroke;
  v5[12] = v7;
  v5[13] = v9;
  swift_beginAccess();
  sub_19090E8F8(v1 + v9, v8);
  return sub_190C089B0;
}

void sub_190C089B0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 96);
  v4 = *(*a1 + 104);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  v7 = *(*a1 + 72);
  if (a2)
  {
    sub_19090E8F8(*(*a1 + 96), v6);
    sub_19090E8F8(v7 + v4, v5);
    swift_beginAccess();
    sub_1909B89A8(v6, v7 + v4);
    swift_endAccess();
    sub_190C0988C(v5);
    sub_19022EEA4(v5, &qword_1EAD60290);
  }

  else
  {
    sub_19090E8F8(v7 + v4, v6);
    swift_beginAccess();
    sub_1909B89A8(v3, v7 + v4);
    swift_endAccess();
    sub_190C0988C(v6);
  }

  sub_19022EEA4(v6, &qword_1EAD60290);
  sub_19022EEA4(v3, &qword_1EAD60290);
  free(v3);
  free(v6);
  free(v5);

  free(v2);
}

uint64_t sub_190C08B0C@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  swift_beginAccess();
  v7 = a2(0);
  return (*(*(v7 - 8) + 16))(a3, v3 + v6, v7);
}

uint64_t sub_190C08B98(_BYTE *a1)
{
  v2 = v1;
  v4 = sub_190D56B90();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15[-v9];
  v11 = OBJC_IVAR____TtC7ChatKit32CKBalloonVibrantOuterStrokeLayer_material;
  swift_beginAccess();
  v12 = *(v5 + 16);
  v12(v10, &v2[v11], v4);
  swift_beginAccess();
  (*(v5 + 24))(&v2[v11], a1, v4);
  swift_endAccess();
  v12(v8, &v2[v11], v4);
  sub_190C09B8C(&qword_1EAD589C0, MEMORY[0x1E698F5D0]);
  LOBYTE(v11) = sub_190D56E30();
  v13 = *(v5 + 8);
  v13(v8, v4);
  if ((v11 & 1) == 0)
  {
    [v2 setNeedsLayout];
  }

  v13(a1, v4);
  return (v13)(v10, v4);
}

void (*sub_190C08DAC(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = sub_190D56B90();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[5] = v7;
  v9 = *(v7 + 64);
  if (v3)
  {
    v5[6] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[6] = malloc(*(v7 + 64));
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[7] = v10;
  v12 = OBJC_IVAR____TtC7ChatKit32CKBalloonVibrantOuterStrokeLayer_material;
  swift_beginAccess();
  v13 = *(v8 + 16);
  v5[8] = v13;
  v5[9] = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v13(v11, v1 + v12, v6);
  return sub_190C08F04;
}

void sub_190C08F1C(uint64_t *a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v6 = *(*a1 + 48);
  v5 = *(*a1 + 56);
  if (a2)
  {
    v7 = *(v4 + 32);
    v8 = *(v4 + 40);
    (*(v4 + 64))(*(v4 + 48), *(v4 + 56), v7);
    a3(v6);
    (*(v8 + 8))(v5, v7);
  }

  else
  {
    a3(*(v4 + 56));
  }

  free(v5);
  free(v6);

  free(v4);
}

id CKBalloonStrokeMaterialVibrantOuterStrokeLayer.init(shape:stroke:material:)(char *a1, uint64_t a2, char *a3)
{
  v40 = a1;
  v41 = a3;
  v39 = a2;
  v6 = sub_190D56B90();
  v7 = *(v6 - 8);
  v36 = v6;
  v37 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60290);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v33 - v11;
  v13 = sub_190D56C50();
  v38 = *(v13 - 8);
  v14 = v38;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v14 + 16);
  v34 = v13;
  v17(v16, a1, v13);
  sub_19090E8F8(a2, v12);
  v18 = *(v7 + 16);
  v19 = v9;
  v20 = v36;
  v18(v19, v41, v36);
  swift_unknownObjectWeakInit();
  v21 = OBJC_IVAR____TtC7ChatKit32CKBalloonVibrantOuterStrokeLayer_stroke;
  v22 = type metadata accessor for CKBalloonLayer.Stroke(0);
  (*(*(v22 - 8) + 56))(&v3[v21], 1, 1, v22);
  v17(&v3[OBJC_IVAR____TtC7ChatKit32CKBalloonVibrantOuterStrokeLayer_shape], v16, v13);
  swift_beginAccess();
  sub_1909B89A8(v12, &v3[v21]);
  swift_endAccess();
  v23 = v35;
  v18(&v3[OBJC_IVAR____TtC7ChatKit32CKBalloonVibrantOuterStrokeLayer_material], v35, v20);
  v24 = type metadata accessor for CKBalloonVibrantOuterStrokeLayer(0);
  v42.receiver = v3;
  v42.super_class = v24;
  v25 = objc_msgSendSuper2(&v42, sel_init);
  v26 = *(v37 + 8);
  v27 = v20;
  v26(v23, v20);
  sub_19022EEA4(v12, &qword_1EAD60290);
  v28 = *(v38 + 8);
  v29 = v34;
  v28(v16, v34);
  v30 = v25;
  v31 = sub_190D56ED0();
  [v30 setName_];

  v26(v41, v27);
  sub_19022EEA4(v39, &qword_1EAD60290);
  v28(v40, v29);
  return v30;
}

id sub_190C093D4(void *a1)
{
  v3 = objc_allocWithZone(v1);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = [v3 initWithLayer_];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v4;
}

id sub_190C09468(uint64_t a1, uint64_t (*a2)(void))
{
  sub_19021834C(a1, v11);
  v5 = a2(0);
  swift_dynamicCast();
  v6 = v10;
  v9.receiver = v2;
  v9.super_class = v5;
  v7 = objc_msgSendSuper2(&v9, sel_initWithLayer_, v10);

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

id sub_190C0951C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  swift_unknownObjectRetain();
  sub_190D58140();
  swift_unknownObjectRelease();
  sub_19021834C(v13, v12);
  v6 = a4(0);
  swift_dynamicCast();
  v7 = v11;
  v10.receiver = a1;
  v10.super_class = v6;
  v8 = objc_msgSendSuper2(&v10, sel_initWithLayer_, v11);

  __swift_destroy_boxed_opaque_existential_0(v13);
  return v8;
}

double sub_190C095DC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60290);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - v2;
  v4 = OBJC_IVAR____TtC7ChatKit32CKBalloonVibrantOuterStrokeLayer_stroke;
  swift_beginAccess();
  sub_19090E8F8(v0 + v4, v3);
  v5 = type metadata accessor for CKBalloonLayer.Stroke(0);
  v6 = 1.5;
  if (!(*(*(v5 - 8) + 48))(v3, 1, v5))
  {
    v6 = *&v3[*(v5 + 20)] + 1.5;
  }

  sub_19022EEA4(v3, &qword_1EAD60290);
  return v6;
}

id sub_190C09710(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_190C09750(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60290);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13[-v8];
  sub_19090E8F8(a1, &v13[-v8]);
  v10 = *a2;
  v11 = OBJC_IVAR____TtC7ChatKit32CKBalloonVibrantOuterStrokeLayer_stroke;
  swift_beginAccess();
  sub_19090E8F8(v10 + v11, v6);
  swift_beginAccess();
  sub_1909B89A8(v9, v10 + v11);
  swift_endAccess();
  sub_190C0988C(v6);
  sub_19022EEA4(v6, &qword_1EAD60290);
  return sub_19022EEA4(v9, &qword_1EAD60290);
}

id sub_190C0988C(uint64_t a1)
{
  v3 = type metadata accessor for CKBalloonLayer.Stroke(0);
  v4 = *(v3 - 1);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60290);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58B50);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - v12;
  v14 = OBJC_IVAR____TtC7ChatKit32CKBalloonVibrantOuterStrokeLayer_stroke;
  swift_beginAccess();
  v15 = *(v11 + 56);
  sub_19090E8F8(v1 + v14, v13);
  sub_19090E8F8(a1, &v13[v15]);
  v16 = *(v4 + 48);
  if (v16(v13, 1, v3) == 1)
  {
    if (v16(&v13[v15], 1, v3) == 1)
    {
      return sub_19022EEA4(v13, &qword_1EAD60290);
    }

    goto LABEL_6;
  }

  sub_19090E8F8(v13, v9);
  if (v16(&v13[v15], 1, v3) == 1)
  {
    sub_190C0AB38(v9);
LABEL_6:
    v18 = &qword_1EAD58B50;
LABEL_11:
    sub_19022EEA4(v13, v18);
    return [v1 setNeedsLayout];
  }

  sub_190C0AAD4(&v13[v15], v6);
  if ((_s7ChatKit14CKBalloonLayerC11StrokeStyleO2eeoiySbAE_AEtFZ_0(v9, v6) & 1) == 0 || *&v9[v3[5]] != *&v6[v3[5]] || v9[v3[6]] != v6[v3[6]])
  {
    sub_190C0AB38(v6);
    sub_190C0AB38(v9);
    v18 = &qword_1EAD60290;
    goto LABEL_11;
  }

  v19 = v3[7];
  v20 = *&v9[v19];
  v21 = *&v6[v19];
  sub_190C0AB38(v6);
  sub_190C0AB38(v9);
  result = sub_19022EEA4(v13, &qword_1EAD60290);
  if (v20 != v21)
  {
    return [v1 setNeedsLayout];
  }

  return result;
}

uint64_t sub_190C09B8C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_190C09BF4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t (*a3)(void)@<X4>, uint64_t a4@<X8>)
{
  v6 = *a1;
  v7 = *a2;
  swift_beginAccess();
  v8 = a3(0);
  return (*(*(v8 - 8) + 16))(a4, v6 + v7, v8);
}

uint64_t sub_190C09C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

id CKBalloonVibrantOuterStrokeLayer.__allocating_init(shape:stroke:material:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = objc_allocWithZone(v4);
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC7ChatKit32CKBalloonVibrantOuterStrokeLayer_stroke;
  v10 = type metadata accessor for CKBalloonLayer.Stroke(0);
  (*(*(v10 - 8) + 56))(&v8[v9], 1, 1, v10);
  v11 = OBJC_IVAR____TtC7ChatKit32CKBalloonVibrantOuterStrokeLayer_shape;
  v12 = sub_190D56C50();
  v13 = *(v12 - 8);
  (*(v13 + 16))(&v8[v11], a1, v12);
  swift_beginAccess();
  sub_1909B89A8(a2, &v8[v9]);
  swift_endAccess();
  v14 = OBJC_IVAR____TtC7ChatKit32CKBalloonVibrantOuterStrokeLayer_material;
  v15 = sub_190D56B90();
  v16 = *(v15 - 8);
  (*(v16 + 16))(&v8[v14], a3, v15);
  v19.receiver = v8;
  v19.super_class = v4;
  v17 = objc_msgSendSuper2(&v19, sel_init);
  (*(v16 + 8))(a3, v15);
  sub_19022EEA4(a2, &qword_1EAD60290);
  (*(v13 + 8))(a1, v12);
  return v17;
}

id sub_190C09F58(uint64_t a1)
{
  v25 = a1;
  v28 = sub_190D56B90();
  v3 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v27 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60290);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v23 - v6;
  v8 = sub_190D56C50();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = OBJC_IVAR____TtC7ChatKit32CKBalloonVibrantOuterStrokeLayer_animationDelegate;
  swift_unknownObjectWeakInit();
  v12 = OBJC_IVAR____TtC7ChatKit32CKBalloonVibrantOuterStrokeLayer_stroke;
  v13 = type metadata accessor for CKBalloonLayer.Stroke(0);
  (*(*(v13 - 8) + 56))(&v1[v12], 1, 1, v13);
  sub_19021834C(a1, v31);
  v24 = type metadata accessor for CKBalloonVibrantOuterStrokeLayer(0);
  swift_dynamicCast();
  v14 = v30;
  v15 = OBJC_IVAR____TtC7ChatKit32CKBalloonVibrantOuterStrokeLayer_shape;
  swift_beginAccess();
  (*(v9 + 16))(v11, &v14[v15], v8);
  (*(v9 + 32))(&v1[OBJC_IVAR____TtC7ChatKit32CKBalloonVibrantOuterStrokeLayer_shape], v11, v8);
  v16 = OBJC_IVAR____TtC7ChatKit32CKBalloonVibrantOuterStrokeLayer_stroke;
  swift_beginAccess();
  sub_19090E8F8(&v14[v16], v7);
  swift_beginAccess();
  sub_190C0B3B8(v7, &v1[v12]);
  swift_endAccess();
  v17 = OBJC_IVAR____TtC7ChatKit32CKBalloonVibrantOuterStrokeLayer_material;
  swift_beginAccess();
  v18 = &v14[v17];
  v20 = v27;
  v19 = v28;
  (*(v3 + 16))(v27, v18, v28);
  (*(v3 + 32))(&v1[OBJC_IVAR____TtC7ChatKit32CKBalloonVibrantOuterStrokeLayer_material], v20, v19);
  swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  v29.receiver = v1;
  v29.super_class = v24;
  v21 = objc_msgSendSuper2(&v29, sel_initWithLayer_, v14);

  __swift_destroy_boxed_opaque_existential_0(v25);
  return v21;
}

uint64_t sub_190C0A338()
{
  v1 = v0;
  v2 = sub_190D56A60();
  v51 = *(v2 - 8);
  v52 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v50 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_190D56B90();
  v48 = *(v4 - 8);
  v49 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v47 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60290);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v43 - v7;
  v9 = type metadata accessor for CKBalloonLayer.Stroke(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_190D56C50();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_190D56D20();
  v45 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for CKBalloonVibrantOuterStrokeLayer(0);
  v53.receiver = v1;
  v53.super_class = v19;
  objc_msgSendSuper2(&v53, sel_layoutSublayers);
  [v1 frame];
  v20 = OBJC_IVAR____TtC7ChatKit32CKBalloonVibrantOuterStrokeLayer_shape;
  swift_beginAccess();
  (*(v14 + 16))(v16, v1 + v20, v13);
  sub_190D56CD0();
  v44 = sub_190D56BD0();
  [v1 setPath_];
  [v1 setFillColor_];
  v21 = [objc_opt_self() redColor];
  v22 = [v21 CGColor];

  v23 = MEMORY[0x1E69E7D40];
  v24 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xD8))();
  v25 = *MEMORY[0x1E6979E98];
  v43 = *MEMORY[0x1E6979E78];
  v26 = OBJC_IVAR____TtC7ChatKit32CKBalloonVibrantOuterStrokeLayer_stroke;
  swift_beginAccess();
  sub_19090E8F8(v1 + v26, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_19022EEA4(v8, &qword_1EAD60290);
  }

  else
  {
    v27 = sub_190C0AAD4(v8, v12);
    if (v12[*(v9 + 24)] == 1 && ((*((*v23 & *v1) + 0xE0))(v27) & 1) != 0)
    {
      sub_190D56C80();
      sub_190D56C70();
      v29 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_190DD55F0;
      *(v30 + 32) = sub_190D51C70();
      sub_190C0AB38(v12);
      goto LABEL_8;
    }

    sub_190C0AB38(v12);
  }

  v30 = 0;
  v29 = 0.0;
LABEL_8:
  v31 = v22;
  [v1 setStrokeColor_];
  [v1 setLineWidth_];
  [v1 setLineJoin_];
  [v1 setLineCap_];
  [v1 setLineDashPhase_];
  if (v30)
  {
    sub_1902188FC(0, &qword_1EAD46510);
    v32 = sub_190D57160();
  }

  else
  {
    v32 = 0;
  }

  [v1 setLineDashPattern_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53C90);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_190DD1D90;
  v34 = OBJC_IVAR____TtC7ChatKit32CKBalloonVibrantOuterStrokeLayer_material;
  swift_beginAccess();
  v36 = v48;
  v35 = v49;
  v37 = v1 + v34;
  v38 = v47;
  (*(v48 + 16))(v47, v37, v49);
  v39 = v50;
  sub_190D56B50();
  (*(v36 + 8))(v38, v35);
  v40 = sub_190D56A50();
  (*(v51 + 8))(v39, v52);
  *(v33 + 56) = sub_1902188FC(0, &qword_1ED7769D0);
  *(v33 + 32) = v40;
  v41 = sub_190D57160();

  [v1 setFilters_];

  return (*(v45 + 8))(v18, v46);
}

uint64_t sub_190C0AAD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CKBalloonLayer.Stroke(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_190C0AB38(uint64_t a1)
{
  v2 = type metadata accessor for CKBalloonLayer.Stroke(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_190C0ABE4(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = [Strong shouldAnimatePathChanges];
    swift_unknownObjectRelease();
    if (a1 == 1752457584 && a2 == 0xE400000000000000)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = 0;
    if (a1 == 1752457584 && a2 == 0xE400000000000000)
    {
      goto LABEL_10;
    }
  }

  if ((sub_190D58760() & 1) == 0)
  {
LABEL_10:
    v9 = sub_190D56ED0();
    v11.receiver = v2;
    v11.super_class = type metadata accessor for CKBalloonVibrantOuterStrokeLayer(0);
    v8 = objc_msgSendSuper2(&v11, sel_actionForKey_, v9);

    return v8;
  }

LABEL_8:
  if (!v6)
  {
    goto LABEL_10;
  }

  v7 = sub_190D56ED0();
  v8 = [objc_opt_self() animationWithKeyPath_];

  return v8;
}

id CKBalloonVibrantOuterStrokeLayer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_190C0B040()
{
  sub_190D56C50();
  if (v0 <= 0x3F)
  {
    sub_1909B82B0();
    if (v1 <= 0x3F)
    {
      sub_190D56B90();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_190C0B3B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60290);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_190C0B430@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v35 = a2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60308);
  v36 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60310);
  v32 = *(v7 - 8);
  v8 = v32;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - v12;
  sub_190D549E0();
  v39 = sub_190D555D0();
  v40 = v14;
  v41 = v15 & 1;
  v42 = v16;
  v38 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60318);
  sub_190C0C660(&qword_1EAD60320, &qword_1EAD60318);
  v31 = v13;
  sub_190D562C0();
  sub_190D549E0();
  v39 = sub_190D555D0();
  v40 = v17;
  v41 = v18 & 1;
  v42 = v19;
  v37 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60330);
  sub_190C0C5B0();
  sub_190D562C0();
  v20 = *(v8 + 16);
  v30 = v10;
  v20(v10, v13, v7);
  v21 = *(v36 + 16);
  v22 = v33;
  v23 = v34;
  v21(v33, v6, v34);
  v24 = v35;
  v20(v35, v10, v7);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60350);
  v21(&v24[*(v25 + 48)], v22, v23);
  v26 = *(v36 + 8);
  v26(v6, v23);
  v27 = *(v32 + 8);
  v27(v31, v7);
  v26(v22, v23);
  return (v27)(v30, v7);
}

uint64_t sub_190C0B860@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60300);
  sub_190D55FD0();
  sub_190A780F8();
  result = sub_190D58130();
  strcpy(a1, "Filtered Total");
  *(a1 + 15) = -18;
  *(a1 + 16) = result;
  *(a1 + 24) = v3;
  return result;
}

uint64_t sub_190C0B8F0(_OWORD *a1)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD602F8);
  sub_190D55FD0();

  v3 = swift_allocObject();
  v4 = a1[1];
  v3[1] = *a1;
  v3[2] = v4;
  v5 = a1[3];
  v3[3] = a1[2];
  v3[4] = v5;
  sub_190C0C4F0(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60358);
  type metadata accessor for IMConversationListFilterMode(0);
  sub_190233640(&qword_1EAD60360, &qword_1EAD60358);
  sub_190C0C554();
  sub_190C0C738(&qword_1EAD60368);
  return sub_190D56290();
}

unint64_t sub_190C0BA58@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = sub_19021A5D4(*a1);
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD602F8);
  sub_190D55FD0();
  v7 = v13 + 32;
  v8 = *(v13 + 16);
  if (v12)
  {
    result = sub_19086CF00(v3, v7, v8, (v12 + 16));
    if (v10)
    {

LABEL_9:

LABEL_13:
      sub_190A780F8();
      result = sub_190D58130();
      *a2 = v4;
      a2[1] = v6;
      a2[2] = result;
      a2[3] = v11;
      return result;
    }

    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_15;
    }
  }

  else
  {
    if (!v8)
    {
LABEL_8:

      goto LABEL_9;
    }

    result = 0;
    while (*(v7 + 8 * result) != v3)
    {
      if (v8 == ++result)
      {
        goto LABEL_8;
      }
    }
  }

  if (result < *(v14 + 16))
  {

    goto LABEL_13;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_190C0BBAC(_OWORD *a1)
{
  v2 = [objc_opt_self() defaultCenter];
  v3 = *MEMORY[0x1E69A7DD0];
  v4 = [objc_opt_self() mainQueue];
  v5 = swift_allocObject();
  v6 = a1[1];
  v5[1] = *a1;
  v5[2] = v6;
  v7 = a1[3];
  v5[3] = a1[2];
  v5[4] = v7;
  aBlock[4] = sub_190C0C528;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_190D29008;
  aBlock[3] = &block_descriptor_107;
  v8 = _Block_copy(aBlock);
  sub_190C0C4F0(a1, v10);

  v9 = [v2 addObserverForName:v3 object:0 queue:v4 usingBlock:v8];
  _Block_release(v8);

  v10[0] = a1[3];
  aBlock[0] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD602D0);
  sub_190D55FE0();
  sub_190C0BD4C();
}

void sub_190C0BD4C()
{
  v1 = v0;
  v2 = sub_190D57BA0();
  v23 = *(v2 + 16);
  v24 = v2;
  if (v23)
  {
    v3 = 0;
    v22 = v2 + 32;
    do
    {
      if (v3 >= *(v24 + 16))
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
        return;
      }

      v6 = *(v22 + 8 * v3);
      v7 = [objc_opt_self() sharedRegistry];
      v8 = [v7 unreadCountController];

      if (!v8)
      {
        goto LABEL_28;
      }

      v25 = [v8 unreadCountForChatsWithFilterMode_];

      v9 = *v1;
      v10 = v1[1];
      v11 = v1[2];
      v12 = v1[3];
      v35 = v10;
      v36[0] = v9;
      v33 = v12;
      v34 = v11;
      *&v27 = v9;
      *(&v27 + 1) = v10;
      v28 = v11;
      v29 = v12;
      sub_19022FD14(&v35, v26, &qword_1EAD602D8);
      sub_19022FD14(&v34, v26, &qword_1EAD602E0);
      sub_19022FD14(v36, v26, &qword_1EAD602E8);
      sub_19022FD14(&v33, v26, &qword_1EAD602F0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD602F8);
      sub_190D55FD0();
      v13 = v31 + 32;
      v14 = *(v31 + 16);
      if (v30)
      {
        v15 = sub_19086CF00(v6, v13, v14, (v30 + 16));
        if (v16)
        {
          goto LABEL_21;
        }

        v5 = v15;
      }

      else
      {
        if (!v14)
        {
LABEL_21:
          sub_19086C86C(v6);
          v18 = v32;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v32 = v18;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_19082DF64(0, *(v18 + 2) + 1, 1);
            v18 = v32;
          }

          v5 = *(v18 + 2);
          v4 = *(v18 + 3);
          if (v5 >= v4 >> 1)
          {
            sub_19082DF64((v4 > 1), v5 + 1, 1);
            v18 = v32;
          }

          *(v18 + 2) = v5 + 1;
          goto LABEL_6;
        }

        v5 = 0;
        while (*(v13 + 8 * v5) != v6)
        {
          if (v14 == ++v5)
          {
            goto LABEL_21;
          }
        }
      }

      v18 = v32;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_1909E39BC(v18);
      }

      if ((v5 & 0x8000000000000000) != 0)
      {
        goto LABEL_26;
      }

      if (v5 >= *(v18 + 2))
      {
        goto LABEL_27;
      }

LABEL_6:
      ++v3;
      *&v18[8 * v5 + 32] = v25;
      v26[0] = v9;
      v26[1] = v10;
      v26[2] = v11;
      v26[3] = v12;
      sub_190D55FE0();
      sub_19022EEA4(v36, &qword_1EAD602E8);
      sub_19022EEA4(&v35, &qword_1EAD602D8);
      sub_19022EEA4(&v34, &qword_1EAD602E0);
      sub_19022EEA4(&v33, &qword_1EAD602F0);
    }

    while (v3 != v23);
  }

  v19 = [objc_opt_self() sharedRegistry];
  v20 = [v19 unreadCountController];

  if (!v20)
  {
    goto LABEL_29;
  }

  v21 = [v20 unreadCount];

  v27 = *(v1 + 2);
  v26[0] = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60300);
  sub_190D55FE0();
}

uint64_t sub_190C0C128(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 56);
  v9 = v2;
  v10 = v1;
  v7 = v1;
  v8 = v2;
  sub_19022FD14(&v10, &v6, &qword_1EAD602C0);
  sub_19022FD14(&v9, &v6, &qword_1EAD602C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD602D0);
  sub_190D55FD0();
  v3 = v6;
  if (v6)
  {
    v4 = [objc_opt_self() defaultCenter];
    [v4 removeObserver_];
    swift_unknownObjectRelease();
  }

  v7 = v1;
  v8 = v2;
  v6 = 0;
  sub_190D55FE0();
  sub_19022EEA4(&v10, &qword_1EAD602C0);
  return sub_19022EEA4(&v9, &qword_1EAD602C8);
}

uint64_t sub_190C0C254@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v15 = *v1;
  v16 = v3;
  v4 = v1[3];
  v17 = v1[2];
  v18 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD602A0);
  sub_190233640(&qword_1EAD602A8, &qword_1EAD602A0);
  sub_190D554D0();
  v5 = swift_allocObject();
  v6 = v16;
  *(v5 + 1) = v15;
  *(v5 + 2) = v6;
  v7 = v18;
  *(v5 + 3) = v17;
  *(v5 + 4) = v7;
  v8 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD602B0) + 36));
  *v8 = sub_190C0C4E0;
  v8[1] = v5;
  v8[2] = 0;
  v8[3] = 0;
  v9 = swift_allocObject();
  v10 = v16;
  v9[1] = v15;
  v9[2] = v10;
  v11 = v18;
  v9[3] = v17;
  v9[4] = v11;
  v12 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD602B8) + 36));
  *v12 = 0;
  v12[1] = 0;
  v12[2] = sub_190C0C4E8;
  v12[3] = v9;
  sub_190C0C4F0(&v15, v14);
  return sub_190C0C4F0(&v15, v14);
}

uint64_t sub_190C0C414(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_190C0C45C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_190C0C554()
{
  result = qword_1EAD60328;
  if (!qword_1EAD60328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60328);
  }

  return result;
}

unint64_t sub_190C0C5B0()
{
  result = qword_1EAD60338;
  if (!qword_1EAD60338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD60330);
    sub_190C0C660(&qword_1EAD60340, &qword_1EAD60348);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60338);
  }

  return result;
}

uint64_t sub_190C0C660(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    sub_190C0C554();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroyTm_43()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_190C0C738(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IMConversationListFilterMode(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_190C0C77C@<X0>(_OWORD *a1@<X8>)
{
  sub_19086ED78(MEMORY[0x1E69E7CC0]);
  *(&v30 + 1) = v1;
  *&v31 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60370);
  sub_190D55FC0();
  v3 = v34;
  v4 = v35;
  v5 = v36;
  v6 = v37;
  sub_190D55FC0();
  v21 = v35;
  v22 = v34;
  *&v30 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD602C0);
  sub_190D55FC0();
  v19 = v35;
  v20 = v34;
  result = sub_190D57BA0();
  v25 = *(result + 16);
  v26 = result;
  if (!v25)
  {
LABEL_22:

    *&v30 = v3;
    *(&v30 + 1) = v4;
    *&v31 = v5;
    *(&v31 + 1) = v6;
    *&v32 = v22;
    *(&v32 + 1) = v21;
    *&v33 = v20;
    *(&v33 + 1) = v19;
    v34 = v3;
    v35 = v4;
    v36 = v5;
    v37 = v6;
    v38 = v22;
    v39 = v21;
    v40 = v20;
    v41 = v19;
    sub_190C0C4F0(&v30, &v27);
    result = sub_190C0CA98(&v34);
    v17 = v31;
    *a1 = v30;
    a1[1] = v17;
    v18 = v33;
    a1[2] = v32;
    a1[3] = v18;
    return result;
  }

  v8 = 0;
  v24 = result + 32;
  while (v8 < *(v26 + 16))
  {
    v11 = *(v24 + 8 * v8);
    v34 = v3;
    v35 = v4;
    v36 = v5;
    v37 = v6;
    sub_190D50920();
    sub_190D50920();
    sub_190D50920();
    sub_190D50920();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD602F8);
    sub_190D55FD0();
    v12 = v28 + 32;
    v13 = *(v28 + 16);
    if (v27)
    {
      v14 = sub_19086CF00(v11, v12, v13, (v27 + 16));
      if (v15)
      {
        goto LABEL_20;
      }

      v10 = v14;
    }

    else
    {
      if (!v13)
      {
LABEL_20:
        sub_19086C86C(v11);
        v16 = v29;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_19082DF64(0, *(v29 + 16) + 1, 1);
          v16 = v29;
        }

        v10 = *(v16 + 16);
        v9 = *(v16 + 24);
        if (v10 >= v9 >> 1)
        {
          sub_19082DF64((v9 > 1), v10 + 1, 1);
          v16 = v29;
        }

        *(v16 + 16) = v10 + 1;
        goto LABEL_6;
      }

      v10 = 0;
      while (*(v12 + 8 * v10) != v11)
      {
        if (v13 == ++v10)
        {
          goto LABEL_20;
        }
      }
    }

    v16 = v29;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1909E39BC(v29);
      v16 = result;
    }

    if ((v10 & 0x8000000000000000) != 0)
    {
      goto LABEL_24;
    }

    if (v10 >= *(v16 + 16))
    {
      goto LABEL_25;
    }

LABEL_6:
    ++v8;
    *(v16 + 8 * v10 + 32) = 0;
    *&v30 = v3;
    *(&v30 + 1) = v4;
    *&v31 = v5;
    *(&v31 + 1) = v6;
    v42 = v27;
    v43 = v28;
    v44 = v16;
    sub_190D55FE0();

    if (v8 == v25)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

unint64_t sub_190C0CAC8()
{
  result = qword_1EAD60378;
  if (!qword_1EAD60378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD602B8);
    sub_190C0CB54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60378);
  }

  return result;
}

unint64_t sub_190C0CB54()
{
  result = qword_1EAD60380;
  if (!qword_1EAD60380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD602B0);
    sub_190233640(&qword_1EAD60388, &qword_1EAD60390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60380);
  }

  return result;
}

uint64_t sub_190C0CC38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v48 = a3;
  v49 = a2;
  v8 = a1;
  v50 = a1;
  v58 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD603A0);
  v56 = *(v9 - 8);
  v57 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v55 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v59 = &v46 - v12;
  v64 = v8;
  v65 = a2;
  sub_19081E484();
  sub_190D52690();
  v13 = sub_190D555F0();
  v15 = v14;
  LOBYTE(v8) = v16;
  sub_190D55490();
  v52 = sub_190D555B0();
  v51 = v17;
  v53 = v18;
  v54 = v19;

  sub_19081E474(v13, v15, v8 & 1);

  v64 = a3;
  v65 = a4;
  v47 = a4;
  sub_190D52690();
  v20 = sub_190D555F0();
  v22 = v21;
  v24 = v23;
  sub_190D55320();
  v25 = sub_190D555B0();
  v27 = v26;
  LOBYTE(a4) = v28;

  sub_19081E474(v20, v22, v24 & 1);

  LODWORD(v64) = sub_190D54EB0();
  v29 = sub_190D55580();
  v31 = v30;
  LOBYTE(v20) = v32;
  v34 = v33;
  sub_19081E474(v25, v27, a4 & 1);

  v64 = v29;
  v65 = v31;
  v66 = v20 & 1;
  v67 = v34;
  v60 = v50;
  v61 = v49;
  v62 = v48;
  v63 = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B9D0);
  sub_190233640(&qword_1EAD5B9D8, &qword_1EAD5B9D0);
  v35 = v59;
  sub_190D55750();
  sub_19081E474(v29, v31, v20 & 1);

  v37 = v55;
  v36 = v56;
  v38 = *(v56 + 16);
  v39 = v57;
  v38(v55, v35, v57);
  v40 = v58;
  v41 = v52;
  v42 = v51;
  *v58 = v52;
  v40[1] = v42;
  LOBYTE(a4) = v53 & 1;
  *(v40 + 16) = v53 & 1;
  v40[3] = v54;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD603A8);
  v38(v40 + *(v43 + 48), v37, v39);
  sub_19081BE48(v41, v42, a4);
  v44 = *(v36 + 8);
  sub_190D52690();
  v44(v59, v39);
  v44(v37, v39);
  sub_19081E474(v41, v42, a4);
}

uint64_t sub_190C0D068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;
  sub_190D52690();
  sub_190D52690();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55B98);
  sub_190233640(&unk_1EAD59B10, &qword_1EAD55B98);

  return sub_190D56030();
}

void sub_190C0D16C()
{
  v0 = [objc_opt_self() generalPasteboard];
  v1 = sub_190D56ED0();
  [v0 setString_];
}

uint64_t sub_190C0D200@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  *a1 = sub_190D54AD0();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60398);
  return sub_190C0CC38(v3, v4, v6, v5, (a1 + *(v7 + 44)));
}

uint64_t sub_190C0D2D8()
{
  v1 = OBJC_IVAR____TtC7ChatKit32CKConversationListIndicatorsView_orientation;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_190C0D31C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC7ChatKit32CKConversationListIndicatorsView_orientation;
  result = swift_beginAccess();
  v5 = *&v1[v3];
  *&v1[v3] = a1;
  if (v5 != a1)
  {
    [v1 setNeedsLayout];
    return [v1 layoutIfNeeded];
  }

  return result;
}

id sub_190C0D398(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC7ChatKit32CKConversationListIndicatorsView_orientation;
  result = swift_beginAccess();
  v6 = *&v3[v4];
  *&v3[v4] = v2;
  if (v6 != v2)
  {
    [v3 setNeedsLayout];
    return [v3 layoutIfNeeded];
  }

  return result;
}

void (*sub_190C0D418(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC7ChatKit32CKConversationListIndicatorsView_orientation;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_190C0D4AC;
}

void sub_190C0D4AC(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v3 = *(*a1 + 40);
  v5 = *(v4 + v3);
  *(v4 + v3) = v2;
  if (v5 != v2)
  {
    v6 = v1[4];
    [v6 setNeedsLayout];
    [v6 layoutIfNeeded];
  }

  free(v1);
}

uint64_t sub_190C0D568()
{
  v1 = OBJC_IVAR____TtC7ChatKit32CKConversationListIndicatorsView_isHighlighted;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_190C0D600(char a1)
{
  v3 = OBJC_IVAR____TtC7ChatKit32CKConversationListIndicatorsView_isHighlighted;
  swift_beginAccess();
  *(v1 + v3) = a1;
  if (*(v1 + OBJC_IVAR____TtC7ChatKit32CKConversationListIndicatorsView_indicatorConfiguration))
  {
    v4 = *(v1 + OBJC_IVAR____TtC7ChatKit32CKConversationListIndicatorsView_indicatorConfiguration);
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v5 = *(v4 + 16);
  if (!v5)
  {
    sub_190D52690();
LABEL_37:

    return;
  }

  v6 = OBJC_IVAR____TtC7ChatKit32CKConversationListIndicatorsView_indicatorImageViews;
  v25 = v4 + 32;
  sub_190D52690();
  v26 = v6;
  swift_beginAccess();
  v7 = 0;
  while (1)
  {
    v11 = *(v25 + v7);
    v12 = *(v1 + v26);
    if ((v12 & 0xC000000000000001) == 0)
    {
      break;
    }

    sub_190D52690();
    v13 = MEMORY[0x193AF3B90](v7, v12);

LABEL_12:
    v14 = *(v1 + v3);
    v15 = objc_opt_self();
    v16 = [v15 sharedBehaviors];
    v17 = v16;
    if (v14 == 1)
    {
      if (!v16)
      {
        goto LABEL_39;
      }

      v18 = [v16 theme];

      v19 = v18;
      v10 = [v19 accessoryIndicatorHighlightedTintColor];
      v9 = [v19 accessoryIndicatorTintColor];

      if (v9)
      {
        if (v11 <= 1)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v9 = [objc_opt_self() tertiaryLabelColor];
        if (v11 <= 1)
        {
          goto LABEL_27;
        }
      }

      if (v11 == 2)
      {
LABEL_27:

        if (!v10)
        {
          goto LABEL_8;
        }

        goto LABEL_7;
      }

      if (v10)
      {

        v9 = v19;
      }

      else
      {
        v21 = [v15 sharedBehaviors];
        if (!v21)
        {
          goto LABEL_41;
        }

        v22 = v21;
        v23 = [v21 theme];

        v24 = [v23 accessoryIndicatorTintColor];
        v10 = [objc_opt_self() systemRedColor];

        v9 = v24;
      }
    }

    else
    {
      if (!v16)
      {
        goto LABEL_40;
      }

      v9 = [v16 theme];

      v20 = [v9 accessoryIndicatorTintColor];
      v10 = v20;
      if (v11 > 1)
      {
        if (v11 == 2)
        {
          if (!v20)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v8 = [objc_opt_self() systemRedColor];

          v9 = v10;
          v10 = v8;
        }
      }

      else if (v11)
      {
        if (!v20)
        {
LABEL_30:
          v10 = [objc_opt_self() tertiaryLabelColor];
        }
      }

      else if (!v20)
      {
        goto LABEL_30;
      }
    }

LABEL_7:

    v9 = v10;
LABEL_8:
    ++v7;
    [v13 setTintColor_];

    if (v5 == v7)
    {
      goto LABEL_37;
    }
  }

  if (v7 < *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v13 = *(v12 + 8 * v7 + 32);
    goto LABEL_12;
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
}

id sub_190C0D9E8(unsigned __int8 a1)
{
  result = [objc_opt_self() sharedBehaviors];
  if (result)
  {
    v3 = result;
    v4 = [result theme];

    v5 = v4;
    v6 = [v5 accessoryIndicatorHighlightedTintColor];
    v7 = [v5 accessoryIndicatorTintColor];

    if (!v7)
    {
      v7 = [objc_opt_self() tertiaryLabelColor];
    }

    if (a1 > 2u)
    {
      if (!v6)
      {
        v6 = sub_190C0DB04(3u);
      }

      v7 = v5;
    }

    else
    {

      if (!v6)
      {
        return v7;
      }
    }

    return v6;
  }

  __break(1u);
  return result;
}

id sub_190C0DB04(unsigned __int8 a1)
{
  result = [objc_opt_self() sharedBehaviors];
  if (result)
  {
    v3 = result;
    v4 = [result theme];

    v5 = [v4 accessoryIndicatorTintColor];
    v6 = v5;
    if (a1 > 1u)
    {
      if (a1 != 2)
      {
        v7 = [objc_opt_self() systemRedColor];

        v4 = v6;
        v6 = v7;
        goto LABEL_12;
      }

      if (!v5)
      {
        goto LABEL_10;
      }
    }

    else if (a1)
    {
      if (!v5)
      {
LABEL_10:
        v6 = [objc_opt_self() tertiaryLabelColor];
      }
    }

    else if (!v5)
    {
      goto LABEL_10;
    }

LABEL_12:

    return v6;
  }

  __break(1u);
  return result;
}

void (*sub_190C0DC54(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC7ChatKit32CKConversationListIndicatorsView_isHighlighted;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_190C0DCDC;
}

void sub_190C0DCDC(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if (a2)
  {
LABEL_39:

    free(v3);
    return;
  }

  v4 = v3[3];
  if (*(v4 + OBJC_IVAR____TtC7ChatKit32CKConversationListIndicatorsView_indicatorConfiguration))
  {
    v5 = *(v4 + OBJC_IVAR____TtC7ChatKit32CKConversationListIndicatorsView_indicatorConfiguration);
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  v6 = *(v5 + 16);
  if (!v6)
  {
    sub_190D52690();
LABEL_38:

    goto LABEL_39;
  }

  v7 = OBJC_IVAR____TtC7ChatKit32CKConversationListIndicatorsView_indicatorImageViews;
  v26 = v5 + 32;
  sub_190D52690();
  v27 = v7;
  swift_beginAccess();
  v8 = 0;
  while (1)
  {
    v12 = *(v26 + v8);
    v13 = *(v4 + v27);
    if ((v13 & 0xC000000000000001) == 0)
    {
      break;
    }

    sub_190D52690();
    v14 = MEMORY[0x193AF3B90](v8, v13);

LABEL_13:
    v15 = *(v3[3] + v3[4]);
    v16 = objc_opt_self();
    v17 = [v16 sharedBehaviors];
    v18 = v17;
    if (v15 == 1)
    {
      if (!v17)
      {
        goto LABEL_43;
      }

      v19 = [v17 theme];

      v20 = v19;
      v11 = [v20 accessoryIndicatorHighlightedTintColor];
      v10 = [v20 accessoryIndicatorTintColor];

      if (v10)
      {
        if (v12 <= 1)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v10 = [objc_opt_self() tertiaryLabelColor];
        if (v12 <= 1)
        {
          goto LABEL_28;
        }
      }

      if (v12 == 2)
      {
LABEL_28:

        if (!v11)
        {
          goto LABEL_9;
        }

        goto LABEL_8;
      }

      if (v11)
      {

        v10 = v20;
      }

      else
      {
        v22 = [v16 sharedBehaviors];
        if (!v22)
        {
          goto LABEL_45;
        }

        v23 = v22;
        v24 = [v22 theme];

        v25 = [v24 accessoryIndicatorTintColor];
        v11 = [objc_opt_self() systemRedColor];

        v10 = v25;
      }
    }

    else
    {
      if (!v17)
      {
        goto LABEL_44;
      }

      v10 = [v17 theme];

      v21 = [v10 accessoryIndicatorTintColor];
      v11 = v21;
      if (v12 > 1)
      {
        if (v12 == 2)
        {
          if (!v21)
          {
            goto LABEL_31;
          }
        }

        else
        {
          v9 = [objc_opt_self() systemRedColor];

          v10 = v11;
          v11 = v9;
        }
      }

      else if (v12)
      {
        if (!v21)
        {
LABEL_31:
          v11 = [objc_opt_self() tertiaryLabelColor];
        }
      }

      else if (!v21)
      {
        goto LABEL_31;
      }
    }

LABEL_8:

    v10 = v11;
LABEL_9:
    ++v8;
    [v14 setTintColor_];

    if (v6 == v8)
    {
      goto LABEL_38;
    }
  }

  if (v8 < *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v14 = *(v13 + 8 * v8 + 32);
    goto LABEL_13;
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
}

id sub_190C0E0D0(void *a1)
{
  *&v1[OBJC_IVAR____TtC7ChatKit32CKConversationListIndicatorsView_indicatorConfiguration] = 0;
  *&v1[OBJC_IVAR____TtC7ChatKit32CKConversationListIndicatorsView_orientation] = 0;
  v1[OBJC_IVAR____TtC7ChatKit32CKConversationListIndicatorsView_isHighlighted] = 0;
  *&v1[OBJC_IVAR____TtC7ChatKit32CKConversationListIndicatorsView_indicatorImageViews] = MEMORY[0x1E69E7CC0];
  v8.receiver = v1;
  v8.super_class = type metadata accessor for CKConversationListIndicatorsView();
  v3 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    v6 = [v5 layer];
    [v6 setMasksToBounds_];

    sub_190238E98();
  }

  return v4;
}

double sub_190C0E1DC()
{
  v1 = OBJC_IVAR____TtC7ChatKit32CKConversationListIndicatorsView_indicatorImageViews;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    v3 = sub_190D581C0();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return (v3 + -0.5) * 18.0;
}

double sub_190C0E258()
{
  if (*(v0 + OBJC_IVAR____TtC7ChatKit32CKConversationListIndicatorsView_indicatorConfiguration))
  {
    v1 = *(v0 + OBJC_IVAR____TtC7ChatKit32CKConversationListIndicatorsView_indicatorConfiguration);
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC0];
  }

  v2 = *(v1 + 16);
  sub_190D52690();

  return v2 * 18.0;
}

id sub_190C0E2B4(char a1)
{
  if (a1 == 2)
  {
    v1 = sub_190D56ED0();
    v2 = &selRef__systemImageNamed_;
  }

  else
  {
    v1 = sub_190D56ED0();
    v2 = &selRef_systemImageNamed_;
  }

  v3 = [objc_opt_self() *v2];

  if (v3)
  {
    v4 = qword_1EAD51EF8;
    v5 = v3;
    if (v4 != -1)
    {
      swift_once();
    }

    v6 = qword_1EAD603C0;
    v3 = [v5 imageWithConfiguration_];
  }

  return v3;
}

uint64_t sub_190C0E420()
{
  v1 = *(v0 + OBJC_IVAR____TtC7ChatKit32CKConversationListIndicatorsView_indicatorConfiguration);
  *(v0 + OBJC_IVAR____TtC7ChatKit32CKConversationListIndicatorsView_indicatorConfiguration) = 0;
  sub_19023EF88(v1, 0);
}

id CKConversationListIndicatorsView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKConversationListIndicatorsView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_190C0E544()
{
  v0 = [objc_opt_self() _preferredFontForTextStyle_variant_];
  if (v0)
  {
    v1 = v0;
    v2 = [objc_opt_self() configurationWithFont:v0 scale:1];

    qword_1EAD603C0 = v2;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_190C0E5D4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2)
  {
    if (v3)
    {
      return sub_1909B8C5C(v2, v3);
    }

    return 0;
  }

  return !v3;
}

unint64_t CKConversationListIndicatorsView.Orientation.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

unint64_t sub_190C0E614()
{
  result = qword_1EAD603E8;
  if (!qword_1EAD603E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD603E8);
  }

  return result;
}

uint64_t sub_190C0E8A0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_190C0E8F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_190C0E944(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_190C0E96C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_190C0E9C8()
{
  result = qword_1EAD60408;
  if (!qword_1EAD60408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60408);
  }

  return result;
}

uint64_t sub_190C0EA1C(void *a1)
{
  v2 = [a1 chat];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 deviceIndependentID];
    if (v4)
    {
      v5 = v4;
      sub_190D56F10();

      v6 = [v3 guid];
      v7 = sub_190D56F10();

      return v7;
    }

    if (qword_1EAD46218 != -1)
    {
      swift_once();
    }

    v13 = sub_190D53040();
    __swift_project_value_buffer(v13, qword_1EAD9D730);
    v14 = sub_190D53020();
    v15 = sub_190D576A0();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_19020E000, v14, v15, "-> Chat has no deviceIndependentID. Bailing.", v16, 2u);
      MEMORY[0x193AF7A40](v16, -1, -1);
    }
  }

  else
  {
    if (qword_1EAD46218 != -1)
    {
      swift_once();
    }

    v9 = sub_190D53040();
    __swift_project_value_buffer(v9, qword_1EAD9D730);
    v10 = sub_190D53020();
    v11 = sub_190D576A0();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_19020E000, v10, v11, "-> Chat is somehow nil. Bailing.", v12, 2u);
      MEMORY[0x193AF7A40](v12, -1, -1);
    }
  }

  return 0;
}

void sub_190C0EC80()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53040);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_190DD1DA0;
  v3 = [v0 IMChatItem];
  if (v3)
  {
    v4 = v3;
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = [v5 selectedIndex];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 1;
  }

  if (__OFADD__(v6, 1))
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v7 = sub_190D58720();
  MEMORY[0x193AF28B0](v7);

  v8 = MEMORY[0x1E69E6158];
  *(v2 + 56) = MEMORY[0x1E69E6158];
  v9 = sub_19081EA10();
  *(v2 + 64) = v9;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0xE000000000000000;
  v10 = [v1 IMChatItem];
  if (v10)
  {
    v11 = v10;
    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();
    if (v12)
    {
      [v12 totalCount];
    }
  }

  v13 = sub_190D58720();
  MEMORY[0x193AF28B0](v13);

  *(v2 + 96) = v8;
  *(v2 + 104) = v9;
  *(v2 + 72) = 0;
  *(v2 + 80) = 0xE000000000000000;
  v14 = CKFrameworkBundle();
  if (!v14)
  {
    goto LABEL_27;
  }

  v15 = v14;
  v16 = sub_190D56ED0();
  v17 = sub_190D56ED0();
  v18 = [v15 localizedStringForKey:v16 value:0 table:v17];

  sub_190D56F10();
  sub_190D56EE0();

  v19 = objc_opt_self();
  v20 = [v19 sharedBehaviors];
  if (!v20)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v21 = v20;
  v22 = [v20 leftStatusTranscriptTextAttributes];

  if (!v22)
  {
LABEL_25:

    [objc_allocWithZone(MEMORY[0x1E696AAB0]) init];
    return;
  }

  type metadata accessor for Key(0);
  sub_19082B370();
  sub_190D56D90();

  v23 = sub_190D56ED0();
  v24 = [objc_opt_self() systemImageNamed_];

  if (!v24)
  {
LABEL_24:

    goto LABEL_25;
  }

  v25 = [v19 sharedBehaviors];
  if (!v25)
  {
    goto LABEL_29;
  }

  v26 = v25;
  v27 = [v25 theme];

  if (!v27)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v28 = [v27 transcriptBreadcrumpTextColor];

  if (!v28)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v29 = [v24 imageWithTintColor_];

  v30 = [v19 sharedBehaviors];
  if (!v30)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v31 = v30;
  v32 = [v30 transcriptMessageStatusFont];

  if (v32)
  {
    v33 = [objc_opt_self() configurationWithFont:v32 scale:1];

    v34 = [v29 imageWithSymbolConfiguration_];
    if (v34)
    {
      v35 = [objc_opt_self() textAttachmentWithImage_];
      sub_190C0F514();
      v46 = v35;
      v36 = sub_190D56D60();
      v37 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment:v46 attributes:v36];

      v38 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
      v39 = sub_190D56ED0();
      v40 = sub_190D56D60();
      v41 = [v38 initWithString:v39 attributes:v40];

      [v37 appendAttributedString_];
      v42 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
      v43 = sub_190D56ED0();

      v44 = sub_190D56D60();

      v45 = [v42 initWithString:v43 attributes:v44];

      [v37 appendAttributedString_];
      return;
    }

    goto LABEL_24;
  }

LABEL_33:
  __break(1u);
}

uint64_t sub_190C0F3E4(void *a1, uint64_t a2, SEL *a3)
{
  v4 = a1;
  v5 = [v4 IMChatItem];
  if (v5)
  {
    v6 = v5;
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      v8 = [v7 *a3];
      v9 = v6;
    }

    else
    {
      v8 = 1;
      v9 = v4;
      v4 = v6;
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

uint64_t sub_190C0F48C(SEL *a1)
{
  v3 = [v1 IMChatItem];
  if (!v3)
  {
    return 1;
  }

  v4 = v3;
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = [v5 *a1];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

unint64_t sub_190C0F514()
{
  result = qword_1EAD56180;
  if (!qword_1EAD56180)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAD56180);
  }

  return result;
}

id RichActionCarouselCountChatItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RichActionCarouselCountChatItem.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RichActionCarouselCountChatItem();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_190C0F644(void *a1, SEL *a2, double a3)
{
  v9.receiver = v3;
  v9.super_class = type metadata accessor for RichActionCarouselCountChatItem();
  v7 = objc_msgSendSuper2(&v9, *a2, a1, a3);

  if (v7)
  {
  }

  return v7;
}

id sub_190C0F6C8(void *a1, double a2, uint64_t a3, void *a4, const char **a5)
{
  v12.receiver = a1;
  v12.super_class = type metadata accessor for RichActionCarouselCountChatItem();
  v8 = *a5;
  v9 = a4;
  v10 = objc_msgSendSuper2(&v12, v8, v9, a2);

  if (v10)
  {
  }

  return v10;
}

id RichActionCarouselCountChatItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RichActionCarouselCountChatItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_190C0F87C()
{
  v0 = [objc_opt_self() blackColor];
  v1 = [v0 CGColor];

  qword_1EAD60430 = v1;
}

uint64_t sub_190C0F928()
{
  v1 = OBJC_IVAR___CKVisionBadgedBarButtonItem_shouldShowBadge;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_190C0F9DC(char a1)
{
  v3 = OBJC_IVAR___CKVisionBadgedBarButtonItem_shouldShowBadge;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return [*(v1 + OBJC_IVAR___CKVisionBadgedBarButtonItem_badgeView) setHidden_];
}

void (*sub_190C0FA4C(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR___CKVisionBadgedBarButtonItem_shouldShowBadge;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_190C0FAD4;
}

void sub_190C0FAD4(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    [*(v3[3] + OBJC_IVAR___CKVisionBadgedBarButtonItem_badgeView) setHidden_];
  }

  free(v3);
}

id CKVisionBadgedBarButtonItem.init(systemImageName:menu:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v6 = sub_190D57FB0();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = OBJC_IVAR___CKVisionBadgedBarButtonItem_button;
  sub_1902188FC(0, &qword_1EAD464E0);
  sub_190D57FA0();
  *&v3[v7] = sub_190D57FC0();
  v8 = OBJC_IVAR___CKVisionBadgedBarButtonItem_badgeView;
  *&v4[v8] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v4[OBJC_IVAR___CKVisionBadgedBarButtonItem_shouldShowBadge] = 0;
  v19.receiver = v4;
  v19.super_class = type metadata accessor for CKVisionBadgedBarButtonItem();
  v9 = objc_msgSendSuper2(&v19, sel_init);
  v10 = qword_1EAD51F00;
  v11 = v9;
  if (v10 != -1)
  {
    swift_once();
  }

  v12 = [objc_opt_self() configurationWithTextStyle_];
  v13 = sub_190D56ED0();

  v14 = [objc_opt_self() systemImageNamed_];

  if (v14)
  {
    v15 = [v14 imageWithConfiguration_];

    v16 = [v15 imageWithRenderingMode_];
    if (qword_1EAD51F08 != -1)
    {
      swift_once();
    }

    v17 = [v16 imageWithTintColor_];
  }

  else
  {
    v17 = 0;
  }

  sub_190C0FFBC(v17, a3);

  return v11;
}

void sub_190C0FFBC(id a1, uint64_t a2)
{
  if (a1)
  {
    if (qword_1EAD51F10 != -1)
    {
      swift_once();
    }

    v6 = [a1 imageWithTintColor:qword_1EAD60420 renderingMode:1];
  }

  else
  {
    v6 = 0;
  }

  v5 = *&v2[OBJC_IVAR___CKVisionBadgedBarButtonItem_button];
  [v5 setImage:a1 forState:0];
  [v5 setImage:v6 forState:1];
  [v5 setImage:v6 forState:4];
  [v5 setMenu_];
  [v5 setShowsMenuAsPrimaryAction_];
  sub_190C10100();
  [v2 setCustomView_];
}

void sub_190C10100()
{
  v1 = *(v0 + OBJC_IVAR___CKVisionBadgedBarButtonItem_badgeView);
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  if (qword_1EAD51F18 != -1)
  {
    swift_once();
  }

  [v1 setBackgroundColor_];
  v2 = [v1 layer];
  [v2 setZPosition_];

  [v1 setHidden_];
  [v1 _setCornerRadius_];
  v3 = [v1 layer];
  if (qword_1EAD51F20 != -1)
  {
    swift_once();
  }

  [v3 setShadowColor_];

  v4 = [v1 layer];
  LODWORD(v5) = 0.25;
  [v4 setShadowOpacity_];

  v6 = [v1 layer];
  [v6 setShadowOffset_];

  v7 = [v1 layer];
  [v7 setShadowRadius_];

  [*(v0 + OBJC_IVAR___CKVisionBadgedBarButtonItem_button) addSubview_];

  sub_190C102FC();
}

void sub_190C102FC()
{
  v1 = objc_opt_self();
  v2 = *(v0 + OBJC_IVAR___CKVisionBadgedBarButtonItem_button);
  v3 = [v1 userInterfaceLayoutDirectionForSemanticContentAttribute_];
  [v2 intrinsicContentSize];
  if (v5 < v4)
  {
    v4 = v5;
  }

  v6 = v4 * 0.5;
  v7 = -(v6 * 0.7071);
  if (v3 == 1)
  {
    v8 = -(v6 * 0.7071);
  }

  else
  {
    v8 = v6 * 0.7071;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_190DD86A0;
  v10 = *(v0 + OBJC_IVAR___CKVisionBadgedBarButtonItem_badgeView);
  v11 = [v10 centerXAnchor];
  v12 = [v2 centerXAnchor];
  v13 = [v11 constraintEqualToAnchor:v12 constant:v8];

  *(v9 + 32) = v13;
  v14 = [v10 centerYAnchor];
  v15 = [v2 centerYAnchor];
  v16 = [v14 constraintEqualToAnchor:v15 constant:v7];

  *(v9 + 40) = v16;
  v17 = [v10 heightAnchor];
  v18 = [v17 constraintEqualToConstant_];

  *(v9 + 48) = v18;
  v19 = [v10 widthAnchor];
  v20 = [v19 constraintEqualToConstant_];

  *(v9 + 56) = v20;
  v21 = objc_opt_self();
  sub_1902188FC(0, &qword_1EAD45040);
  v22 = sub_190D57160();

  [v21 activateConstraints_];
}

id CKVisionBadgedBarButtonItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CKVisionBadgedBarButtonItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKVisionBadgedBarButtonItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall CKVisionBadgedBarButtonItem.ck_applyBadgedCount(_:)(Swift::Int a1)
{
  v2 = a1 < 1;
  v3 = a1 > 0;
  v4 = OBJC_IVAR___CKVisionBadgedBarButtonItem_shouldShowBadge;
  swift_beginAccess();
  *(v1 + v4) = v3;
  [*(v1 + OBJC_IVAR___CKVisionBadgedBarButtonItem_badgeView) setHidden_];
}

void sub_190C10870()
{
  v1 = v0;
  v2 = sub_190D57FB0();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = OBJC_IVAR___CKVisionBadgedBarButtonItem_button;
  sub_1902188FC(0, &qword_1EAD464E0);
  sub_190D57FA0();
  *(v0 + v3) = sub_190D57FC0();
  v4 = OBJC_IVAR___CKVisionBadgedBarButtonItem_badgeView;
  *(v1 + v4) = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  *(v1 + OBJC_IVAR___CKVisionBadgedBarButtonItem_shouldShowBadge) = 0;
  sub_190D58510();
  __break(1u);
}

uint64_t sub_190C10990(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_190D581C0();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v4 = v3;
  v5 = sub_190A946E0(v3, 0);
  sub_190C1EBCC(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

void sub_190C10A24(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtCV7ChatKit33DetailsViewParticipantListSection9ViewModel__currentParticipantHandle;
  v5 = *(v1 + OBJC_IVAR____TtCV7ChatKit33DetailsViewParticipantListSection9ViewModel__currentParticipantHandle);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190C14038(&qword_1EAD53090, _s9ViewModelCMa);
    sub_190D51C10();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1902188FC(0, &qword_1EAD44E70);
  v6 = v5;
  v7 = a1;
  v8 = sub_190D57D90();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

uint64_t sub_190C10C0C(uint64_t result, void *a2)
{
  if (*(v2 + *a2) == (result & 1))
  {
    *(v2 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190C14038(&qword_1EAD53090, _s9ViewModelCMa);
    sub_190D51C10();
  }

  return result;
}

uint64_t sub_190C10D38()
{
  v1 = v0;
  swift_getKeyPath();
  sub_190C14038(&qword_1EAD53090, _s9ViewModelCMa);
  sub_190D51C20();

  swift_getKeyPath();
  sub_190C14038(&qword_1EAD60490, type metadata accessor for DetailsConfiguredViewModel);
  sub_190D51C20();

  v2 = *(v0 + 16);
  swift_getKeyPath();
  sub_190C14038(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration);
  v3 = v2;
  sub_190D51C20();

  swift_getKeyPath();
  sub_190D51C20();

  if (v3[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__isGroupConversation] == 1)
  {
    v4 = [*&v3[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation] supportsMutatingGroupMembers];

    if (v4)
    {
      swift_getKeyPath();
      sub_190D51C20();

      v5 = *(v1 + 16);
      swift_getKeyPath();
      v6 = v5;
      sub_190D51C20();

      v7 = *&v6[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__participants];
      sub_190D52690();

      v8 = *(v7 + 16);

      if (v8 >= 3)
      {
        swift_getKeyPath();
        sub_190D51C20();

        v9 = *(v1 + 16);
        swift_getKeyPath();
        v10 = v9;
        sub_190D51C20();

        LOBYTE(v9) = v10[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__hasLeftConversation];

        if ((v9 & 1) == 0)
        {
          swift_getKeyPath();
          sub_190D51C20();

          v11 = *(v1 + 16);
          swift_getKeyPath();
          v12 = v11;
          sub_190D51C20();

          v13 = *&v12[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__participantListBehaviors];

          return (v13 >> 1) & 1;
        }
      }
    }
  }

  else
  {
  }

  return 0;
}

void sub_190C110E8()
{
  v1 = v0;
  swift_getKeyPath();
  sub_190C14038(&qword_1EAD53090, _s9ViewModelCMa);
  sub_190D51C20();

  v2 = OBJC_IVAR____TtCV7ChatKit33DetailsViewParticipantListSection9ViewModel__currentParticipantHandle;
  v3 = *(v0 + OBJC_IVAR____TtCV7ChatKit33DetailsViewParticipantListSection9ViewModel__currentParticipantHandle);
  if (v3)
  {
    swift_getKeyPath();
    sub_190C14038(&qword_1EAD60490, type metadata accessor for DetailsConfiguredViewModel);
    v4 = v3;
    sub_190D51C20();

    v5 = *(*(v1 + 16) + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_190DD55F0;
    *(v6 + 32) = v4;
    sub_1902188FC(0, &qword_1EAD44E70);
    v7 = v4;
    v8 = v5;
    v9 = sub_190D57160();

    [v8 removeRecipientHandles_];

    if (*(v1 + v2))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_190D51C10();
    }

    v11 = OBJC_IVAR____TtCV7ChatKit33DetailsViewParticipantListSection9ViewModel__isPresentingRemoveAlert;
    if (*(v1 + OBJC_IVAR____TtCV7ChatKit33DetailsViewParticipantListSection9ViewModel__isPresentingRemoveAlert))
    {
      v12 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v12);
      sub_190D51C10();
    }

    else
    {

      *(v1 + v11) = 0;
    }
  }

  else
  {
    if (qword_1EAD51A78 != -1)
    {
      swift_once();
    }

    v13 = sub_190D53040();
    __swift_project_value_buffer(v13, qword_1EAD9DC50);
    v14 = sub_190D53020();
    v15 = sub_190D576C0();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_19020E000, v14, v15, "No handle to remove", v16, 2u);
      MEMORY[0x193AF7A40](v16, -1, -1);
    }
  }
}

void sub_190C114A8()
{
  swift_getKeyPath();
  sub_190C14038(&qword_1EAD60490, type metadata accessor for DetailsConfiguredViewModel);
  sub_190D51C20();

  v1 = *(v0 + 16);
  swift_getKeyPath();
  sub_190C14038(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration);
  v2 = v1;
  sub_190D51C20();

  v3 = *&v2[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__participants];
  sub_190D52690();

  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = v3 + 48;
    v20 = *(v3 + 16);
    v21 = MEMORY[0x1E69E7CC0];
    do
    {
      v7 = v4 - v5;
      v8 = v6 + 24 * v5;
      while (1)
      {
        if (v5 >= *(v3 + 16))
        {
          __break(1u);
LABEL_16:
          __break(1u);
          return;
        }

        v9 = *(v8 - 16);
        sub_190D52690();
        v10 = [v9 entity];
        if (!v10)
        {
          goto LABEL_16;
        }

        v11 = v10;
        v12 = [v10 abbreviatedDisplayName];

        if (v12)
        {
          break;
        }

        v8 += 24;
        ++v5;
        if (!--v7)
        {
          goto LABEL_14;
        }
      }

      v13 = sub_190D56F10();
      v15 = v14;

      v16 = v15;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_1908354D4(0, *(v21 + 2) + 1, 1, v21);
      }

      v18 = *(v21 + 2);
      v17 = *(v21 + 3);
      if (v18 >= v17 >> 1)
      {
        v21 = sub_1908354D4((v17 > 1), v18 + 1, 1, v21);
      }

      ++v5;
      *(v21 + 2) = v18 + 1;
      v19 = &v21[16 * v18];
      *(v19 + 4) = v13;
      *(v19 + 5) = v16;
      v6 = v3 + 48;
      v4 = v20;
    }

    while (v7 != 1);
  }

LABEL_14:
}

id sub_190C11768()
{
  sub_190C114A8();
  v1 = *(v0 + 16);

  if (v1)
  {
    sub_190C114A8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD57920);
    sub_19085CD58();
    v2 = sub_190D56DF0();

    return v2;
  }

  else
  {
    result = CKFrameworkBundle();
    if (result)
    {
      v4 = result;
      v5 = sub_190D56ED0();
      v6 = sub_190D56ED0();
      v7 = [v4 localizedStringForKey:v5 value:0 table:v6];

      v8 = sub_190D56F10();
      return v8;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_190C118A4()
{
  v1 = type metadata accessor for AvatarImageModel(0);
  v44 = *(v1 - 8);
  v45 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v46 = (&v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getKeyPath();
  v47 = v0;
  sub_190C14038(&qword_1EAD60490, type metadata accessor for DetailsConfiguredViewModel);
  sub_190D51C20();

  v3 = *(v0 + 16);
  swift_getKeyPath();
  v47 = v3;
  sub_190C14038(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration);
  v4 = v3;
  sub_190D51C20();

  v5 = *&v4[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__participants];
  sub_190D52690();

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  v47 = MEMORY[0x1E69E7CC0];
  v8 = *(v5 + 16);
  v9 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v10 = 24 * v6 + 32;
  while (v8 != v6)
  {
    if (v6 >= *(v5 + 16))
    {
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
      while (1)
      {
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        v23 = sub_190D581C0();
        if (sub_190D581C0() < 0)
        {
          __break(1u);
LABEL_67:
          v26 = sub_190D581C0();
          goto LABEL_35;
        }

        if (v23 >= 3)
        {
          v41 = 3;
        }

        else
        {
          v41 = v23;
        }

        if (v23 >= 0)
        {
          v14 = v41;
        }

        else
        {
          v14 = 3;
        }

        result = sub_190D581C0();
        if (result < v14)
        {
          goto LABEL_80;
        }

LABEL_14:
        if ((v9 & 0xC000000000000001) != 0 && v14)
        {
          sub_1902188FC(0, &qword_1EAD44E80);
          sub_190D52690();
          sub_190D582F0();
          if (v14 != 1)
          {
            sub_190D582F0();
            if (v14 != 2)
            {
              sub_190D582F0();
            }
          }
        }

        else
        {
          sub_190D52690();
        }

        if (v6)
        {
          v16 = sub_190D58550();
          v17 = v19;
          v15 = v20;
          v18 = v21;

          if ((v18 & 1) == 0)
          {
            goto LABEL_24;
          }
        }

        else
        {
          v15 = 0;
          v16 = v9 & 0xFFFFFFFFFFFFFF8;
          v17 = (v9 & 0xFFFFFFFFFFFFFF8) + 32;
          v18 = (2 * v14) | 1;
          if ((v18 & 1) == 0)
          {
            goto LABEL_24;
          }
        }

        sub_190D58780();
        swift_unknownObjectRetain_n();
        v24 = swift_dynamicCastClass();
        if (!v24)
        {
          swift_unknownObjectRelease();
          v24 = MEMORY[0x1E69E7CC0];
        }

        v25 = *(v24 + 16);

        if (__OFSUB__(v18 >> 1, v15))
        {
          break;
        }

        if (v25 != (v18 >> 1) - v15)
        {
          goto LABEL_72;
        }

        v23 = swift_dynamicCastClass();
        swift_unknownObjectRelease_n();
        if (!v23)
        {
          v23 = MEMORY[0x1E69E7CC0];
          goto LABEL_31;
        }

LABEL_32:
        v47 = v7;
        if (v23 < 0 || (v23 & 0x4000000000000000) != 0)
        {
          goto LABEL_67;
        }

        v26 = *(v23 + 16);
LABEL_35:
        v9 = 0;
        v6 = v23 & 0xC000000000000001;
        v43 = MEMORY[0x1E69E7CC0];
        while (v26 != v9)
        {
          if (v6)
          {
            v27 = MEMORY[0x193AF3B90](v9, v23);
          }

          else
          {
            if (v9 >= *(v23 + 16))
            {
              goto LABEL_62;
            }

            v27 = *(v23 + 8 * v9 + 32);
          }

          v28 = v27;
          v29 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            goto LABEL_61;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53E20);
          v7 = sub_190D57160();
          v30 = [v28 cnContactWithKeys_];

          ++v9;
          if (v30)
          {
            MEMORY[0x193AF29E0]();
            if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_190D571A0();
            }

            sub_190D571E0();
            v43 = v47;
            v9 = v29;
          }
        }

        v31 = sub_190C10990(v43);
        v9 = v31;
        if (v31 >> 62)
        {
          v32 = sub_190D581C0();
          if (!v32)
          {
LABEL_69:
            v34 = MEMORY[0x1E69E7CC0];
LABEL_70:

            return v34;
          }
        }

        else
        {
          v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v32)
          {
            goto LABEL_69;
          }
        }

        v33 = 0;
        v7 = (v9 & 0xC000000000000001);
        v6 = v9 & 0xFFFFFFFFFFFFFF8;
        v34 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          if (v7)
          {
            v35 = MEMORY[0x193AF3B90](v33, v9);
          }

          else
          {
            if (v33 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_64;
            }

            v35 = *(v9 + 8 * v33 + 32);
          }

          v36 = v35;
          v37 = v33 + 1;
          if (__OFADD__(v33, 1))
          {
            break;
          }

          v38 = v46;
          sub_190D50450();
          *v38 = 0;
          v38[1] = v36;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v34 = sub_1908354AC(0, v34[2] + 1, 1, v34);
          }

          v40 = v34[2];
          v39 = v34[3];
          if (v40 >= v39 >> 1)
          {
            v34 = sub_1908354AC(v39 > 1, v40 + 1, 1, v34);
          }

          v34[2] = v40 + 1;
          sub_190C140F0(v46, v34 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v40);
          ++v33;
          if (v37 == v32)
          {
            goto LABEL_70;
          }
        }
      }

      __break(1u);
LABEL_72:
      swift_unknownObjectRelease_n();
LABEL_24:
      sub_190C22A44(v16, v17, v15, v18);
      v23 = v22;
LABEL_31:
      swift_unknownObjectRelease();
      goto LABEL_32;
    }

    ++v6;
    v11 = v10 + 24;
    v12 = [*(v5 + v10) entity];
    v10 = v11;
    if (v12)
    {
      MEMORY[0x193AF29E0]();
      if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_190D571A0();
      }

      sub_190D571E0();
      v9 = v47;
      goto LABEL_2;
    }
  }

  v6 = v9 >> 62;
  if (v9 >> 62)
  {
    goto LABEL_65;
  }

  result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result >= 3)
  {
    v14 = 3;
  }

  else
  {
    v14 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result >= v14)
  {
    goto LABEL_14;
  }

LABEL_80:
  __break(1u);
  return result;
}

void *sub_190C11F98()
{
  swift_getKeyPath();
  sub_190C14038(&qword_1EAD53090, _s9ViewModelCMa);
  sub_190D51C20();

  v1 = *(v0 + OBJC_IVAR____TtCV7ChatKit33DetailsViewParticipantListSection9ViewModel__currentParticipantHandle);
  v2 = v1;
  return v1;
}

void sub_190C1205C(void *a1)
{
  v3 = [objc_opt_self() currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (v4 != 5)
  {
    if (*(v1 + OBJC_IVAR____TtCV7ChatKit33DetailsViewParticipantListSection9ViewModel__isPresentingRemoveAlert) == 1)
    {
      *(v1 + OBJC_IVAR____TtCV7ChatKit33DetailsViewParticipantListSection9ViewModel__isPresentingRemoveAlert) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_190C14038(&qword_1EAD53090, _s9ViewModelCMa);
      sub_190D51C10();
    }

    sub_190C10A24([a1 defaultIMHandle]);
  }
}

uint64_t sub_190C121F8(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_190C14038(&qword_1EAD53090, _s9ViewModelCMa);
  sub_190D51C20();

  return *(v2 + *a2);
}

void sub_190C122CC()
{
  v1 = [objc_opt_self() currentDevice];
  v2 = [v1 userInterfaceIdiom];

  if (v2 == 1)
  {
    swift_getKeyPath();
    sub_190C14038(&qword_1EAD60490, type metadata accessor for DetailsConfiguredViewModel);
    sub_190D51C20();

    v5 = *(v0 + 16);
    v6 = sub_190D50920();
    sub_190CEBFBC(v6);

    return;
  }

  if (v2 == 6)
  {
    v3 = OBJC_IVAR____TtCV7ChatKit33DetailsViewParticipantListSection9ViewModel__isPresentingAddRecipientNavigationDestination;
    v4 = *(v0 + OBJC_IVAR____TtCV7ChatKit33DetailsViewParticipantListSection9ViewModel__isPresentingAddRecipientNavigationDestination);
    if (v4 != 1)
    {
      goto LABEL_8;
    }

LABEL_7:
    *(v0 + v3) = v4;
    return;
  }

  v3 = OBJC_IVAR____TtCV7ChatKit33DetailsViewParticipantListSection9ViewModel__isPresentingAddRecipientPopover;
  v4 = *(v0 + OBJC_IVAR____TtCV7ChatKit33DetailsViewParticipantListSection9ViewModel__isPresentingAddRecipientPopover);
  if (v4 == 1)
  {
    goto LABEL_7;
  }

LABEL_8:
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_190C14038(&qword_1EAD53090, _s9ViewModelCMa);
  sub_190D51C10();
}

BOOL sub_190C12570()
{
  v1 = v0;
  swift_getKeyPath();
  sub_190C14038(&qword_1EAD60490, type metadata accessor for DetailsConfiguredViewModel);
  sub_190D51C20();

  v2 = *(v0 + 16);
  swift_getKeyPath();
  sub_190C14038(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration);
  v3 = v2;
  sub_190D51C20();

  swift_getKeyPath();
  sub_190D51C20();

  if (v3[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__isGroupConversation] == 1)
  {
    v4 = [*&v3[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation] supportsMutatingGroupMembers];

    if (v4)
    {
      swift_getKeyPath();
      sub_190D51C20();

      v5 = *(v1 + 16);
      swift_getKeyPath();
      v6 = v5;
      sub_190D51C20();

      v7 = *&v6[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__participants];
      sub_190D52690();

      v8 = *(v7 + 16);

      swift_getKeyPath();
      sub_190D51C20();

      return v8 < [*(*(v1 + 16) + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation) maximumRecipientsForSendingService];
    }
  }

  else
  {
  }

  return 0;
}

id sub_190C12800()
{
  v1 = v0;
  swift_getKeyPath();
  sub_190C14038(&qword_1EAD60490, type metadata accessor for DetailsConfiguredViewModel);
  sub_190D51C20();

  v2 = *(v0 + 16);
  swift_getKeyPath();
  sub_190C14038(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration);
  v3 = v2;
  sub_190D51C20();

  v4 = *&v3[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__participantListBehaviors];

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  swift_getKeyPath();
  sub_190D51C20();

  v5 = *(v1 + 16);
  swift_getKeyPath();
  v6 = v5;
  sub_190D51C20();

  LOBYTE(v5) = v6[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__hasLeftConversation];

  if (v5)
  {
    return 0;
  }

  swift_getKeyPath();
  sub_190D51C20();

  v7 = *(v1 + 16);
  swift_getKeyPath();
  v8 = v7;
  sub_190D51C20();

  LOBYTE(v7) = [*&v8[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation] isBusinessConversation];

  if (v7)
  {
    return 0;
  }

  swift_getKeyPath();
  sub_190D51C20();

  v9 = *(v1 + 16);
  swift_getKeyPath();
  v10 = v9;
  sub_190D51C20();

  LODWORD(v9) = v10[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__isGroupConversation];

  if (v9 != 1)
  {
    return 0;
  }

  swift_getKeyPath();
  sub_190D51C20();

  v11 = *(v1 + 16);
  swift_getKeyPath();
  v12 = v11;
  sub_190D51C20();

  LOBYTE(v11) = [*&v12[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation] suppressesMutationsFromLocalDevice];

  if (v11)
  {
    return 0;
  }

  swift_getKeyPath();
  sub_190D51C20();

  result = [*(*(v1 + 16) + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation) sendingService];
  if (result)
  {
    v14 = result;
    v15 = *MEMORY[0x1E69A79C0];
    v16 = [v14 supportsCapability_];

    return v16;
  }

  return result;
}

void sub_190C12C14(unint64_t a1, uint64_t a2, void *a3)
{
  if (a1 && a2)
  {
    v4 = v3;
    sub_190D52690();
    v5 = CKFrameworkBundle();
    if (!v5)
    {
      __break(1u);
      goto LABEL_59;
    }

    v6 = v5;
    v7 = sub_190D56ED0();
    v8 = sub_190D56ED0();
    v9 = [v6 localizedStringForKey:v7 value:0 table:v8];

    sub_190D56F10();
    swift_getKeyPath();
    sub_190C14038(&qword_1EAD60490, type metadata accessor for DetailsConfiguredViewModel);
    sub_190D51C20();

    swift_getKeyPath();
    aBlock[0] = v4;
    sub_190D51C20();

    v10 = [*(*(v4 + 16) + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation) sendingService];
    if (v10 && (v11 = v10, v12 = [v10 name], v11, v12))
    {
      v13 = sub_190D56F10();
      v15 = v14;

      v16 = sub_190D56F10();
      if (v15)
      {
        if (v13 == v16 && v15 == v17)
        {

          goto LABEL_28;
        }

        v29 = sub_190D58760();

        if (v29)
        {
LABEL_28:

          v30 = sub_190C13EAC(a1);
          v31 = CKFrameworkBundle();
          v32 = v31;
          if (v30)
          {
            if (!v31)
            {
LABEL_62:
              __break(1u);
              goto LABEL_63;
            }
          }

          else if (!v31)
          {
LABEL_63:
            __break(1u);
            goto LABEL_64;
          }

          goto LABEL_39;
        }

LABEL_19:
        swift_getKeyPath();
        sub_190D51C20();

        swift_getKeyPath();
        aBlock[0] = v4;
        sub_190D51C20();

        v21 = [*(*(v4 + 16) + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation) sendingService];
        if (v21 && (v22 = v21, v23 = [v21 name], v22, v23))
        {
          v24 = sub_190D56F10();
          v26 = v25;

          v27 = sub_190D56F10();
          if (v26)
          {
            if (v24 == v27 && v26 == v28)
            {
            }

            else
            {
              v33 = sub_190D58760();

              if ((v33 & 1) == 0)
              {
                goto LABEL_40;
              }
            }

            v34 = sub_190C13EAC(a1);
            v35 = CKFrameworkBundle();
            v32 = v35;
            if (v34)
            {
              if (!v35)
              {
LABEL_64:
                __break(1u);
                goto LABEL_65;
              }
            }

            else if (!v35)
            {
LABEL_65:
              __break(1u);
              return;
            }

LABEL_39:
            v36 = sub_190D56ED0();
            v37 = sub_190D56ED0();
            v38 = [v32 localizedStringForKey:v36 value:0 table:v37];

            sub_190D56F10();
LABEL_40:
            v39 = CKFrameworkBundle();
            if (v39)
            {
              v40 = v39;
              v41 = sub_190D56ED0();
              v42 = sub_190D56ED0();
              v43 = [v40 localizedStringForKey:v41 value:0 table:v42];

              if (!v43)
              {
                sub_190D56F10();
                v43 = sub_190D56ED0();
              }

              v44 = sub_190D56ED0();

              v45 = [objc_opt_self() alertControllerWithTitle:v43 message:v44 preferredStyle:1];

              swift_getKeyPath();
              aBlock[0] = v4;
              sub_190D51C20();

              v46 = *(v4 + 16);
              swift_getKeyPath();
              aBlock[0] = v46;
              sub_190C14038(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration);
              v47 = v46;
              sub_190D51C20();

              Strong = swift_unknownObjectWeakLoadStrong();

              if (Strong)
              {
                if ([Strong respondsToSelector_])
                {
                  v49 = [Strong presentingViewControllerForAlertsFromDetailsController_];
                  swift_unknownObjectRelease();
                  v50 = v49;
                  if (v49)
                  {
                    goto LABEL_50;
                  }
                }

                else
                {
                  swift_unknownObjectRelease();
                }
              }

              if (!a3)
              {

                return;
              }

              v50 = a3;
LABEL_50:
              v51 = v50;
              v52 = CKFrameworkBundle();
              if (v52)
              {
                v53 = v52;
                v54 = sub_190D56ED0();
                v55 = sub_190D56ED0();
                v56 = [v53 localizedStringForKey:v54 value:0 table:v55];

                if (!v56)
                {
                  sub_190D56F10();
                  v56 = sub_190D56ED0();
                }

                v57 = swift_allocObject();
                swift_weakInit();
                v58 = swift_allocObject();
                v58[2] = v57;
                v58[3] = v51;
                v58[4] = a2;
                aBlock[4] = sub_190C13EA0;
                aBlock[5] = v58;
                aBlock[0] = MEMORY[0x1E69E9820];
                aBlock[1] = 1107296256;
                aBlock[2] = sub_19084156C;
                aBlock[3] = &block_descriptor_108;
                v59 = _Block_copy(aBlock);
                sub_190D50920();
                v60 = v51;

                v61 = objc_opt_self();
                v62 = [v61 actionWithTitle:v56 style:0 handler:v59];
                _Block_release(v59);

                v63 = CKFrameworkBundle();
                if (v63)
                {
                  v64 = v63;
                  v65 = sub_190D56ED0();
                  v66 = sub_190D56ED0();
                  v67 = [v64 localizedStringForKey:v65 value:0 table:v66];

                  if (!v67)
                  {
                    sub_190D56F10();
                    v67 = sub_190D56ED0();
                  }

                  v68 = [v61 actionWithTitle:v67 style:1 handler:0];

                  [v45 addAction_];
                  [v45 addAction_];
                  [v45 setPreferredAction_];
                  [v60 presentViewController:v45 animated:1 completion:0];

                  return;
                }

                goto LABEL_61;
              }

LABEL_60:
              __break(1u);
LABEL_61:
              __break(1u);
              goto LABEL_62;
            }

LABEL_59:
            __break(1u);
            goto LABEL_60;
          }
        }

        else
        {
          sub_190D56F10();
        }

        goto LABEL_40;
      }
    }

    else
    {
      sub_190D56F10();
    }

    goto LABEL_19;
  }

  if (qword_1EAD51A78 != -1)
  {
    swift_once();
  }

  v18 = sub_190D53040();
  __swift_project_value_buffer(v18, qword_1EAD9DC50);
  oslog = sub_190D53020();
  v19 = sub_190D576C0();
  if (os_log_type_enabled(oslog, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_19020E000, oslog, v19, "No handles or addresses to create new group.", v20, 2u);
    MEMORY[0x193AF7A40](v20, -1, -1);
  }
}

void sub_190C1380C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_getKeyPath();
    aBlock[0] = v8;
    sub_190C14038(&qword_1EAD60490, type metadata accessor for DetailsConfiguredViewModel);
    sub_190D51C20();

    v9 = *(v8 + 16);

    swift_getKeyPath();
    aBlock[0] = v9;
    sub_190C14038(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration);
    sub_190D51C20();

    v10 = swift_unknownObjectWeakLoadStrong();

    if (v10)
    {
      if ([v10 respondsToSelector_])
      {
        v11 = swift_allocObject();
        v11[2] = a2;
        v11[3] = a3;
        v11[4] = a4;
        aBlock[4] = sub_190C14014;
        aBlock[5] = v11;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_190840E6C;
        aBlock[3] = &block_descriptor_62_3;
        v12 = _Block_copy(aBlock);
        sub_190D50920();
        v13 = a3;
        sub_190D52690();
        sub_190D50920();

        [v10 dismissDetailsNavigationControllerWithCompletion_];
        _Block_release(v12);
      }

      swift_unknownObjectRelease();
    }
  }
}

void sub_190C13A70(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_getKeyPath();
    sub_190C14038(&qword_1EAD60490, type metadata accessor for DetailsConfiguredViewModel);
    sub_190D51C20();

    v5 = *(v4 + 16);

    swift_getKeyPath();
    sub_190C14038(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration);
    sub_190D51C20();

    v6 = swift_unknownObjectWeakLoadStrong();

    if (v6)
    {
      if ([v6 respondsToSelector_])
      {
        v7 = sub_190D57160();
        [v6 detailsController:a2 shouldComposeConversationWithRecipientAddresses:v7];
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }
}

uint64_t sub_190C13C38()
{
  v1 = OBJC_IVAR____TtCV7ChatKit33DetailsViewParticipantListSection9ViewModel___observationRegistrar;
  v2 = sub_190D51C60();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t sub_190C13CB0()
{
  v1 = OBJC_IVAR____TtC7ChatKit26DetailsConfiguredViewModel___observationRegistrar;
  v2 = sub_190D51C60();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v4 = *(v0 + OBJC_IVAR____TtCV7ChatKit33DetailsViewParticipantListSection9ViewModel__currentParticipantHandle);
  sub_190D50920();

  v3(v0 + OBJC_IVAR____TtCV7ChatKit33DetailsViewParticipantListSection9ViewModel___observationRegistrar, v2);

  return swift_deallocClassInstance();
}

uint64_t _s9ViewModelCMa()
{
  result = qword_1EAD60480;
  if (!qword_1EAD60480)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_190C13DF8()
{
  result = sub_190D51C60();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_190C13EAC(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_190D581C0())
  {
    v3 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x193AF3B90](v3, a1);
      }

      else
      {
        if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v4 = *(a1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v7 = [v4 ID];
      if (!v7)
      {
        sub_190D56F10();
        v7 = sub_190D56ED0();
      }

      IsEmail = IMStringIsEmail();

      if ((IsEmail & 1) == 0)
      {
        ++v3;
        if (v6 != i)
        {
          continue;
        }
      }

      return IsEmail;
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

uint64_t objectdestroy_55Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_190C14038(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_190C140B0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtCV7ChatKit33DetailsViewParticipantListSection9ViewModel__currentParticipantHandle);
  *(v1 + OBJC_IVAR____TtCV7ChatKit33DetailsViewParticipantListSection9ViewModel__currentParticipantHandle) = v2;
  v4 = v2;
}

uint64_t sub_190C140F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AvatarImageModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_190C141C0()
{
  result = qword_1EAD60498;
  if (!qword_1EAD60498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60498);
  }

  return result;
}

uint64_t sub_190C1424C()
{
  v0 = sub_190D51440();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_190D519C0();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_190D56EC0();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_190D51460();
  __swift_allocate_value_buffer(v6, qword_1EAD9E488);
  __swift_project_value_buffer(v6, qword_1EAD9E488);
  sub_190D56E50();
  sub_190D51980();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_190D51470();
}

uint64_t sub_190C14434()
{
  v0 = sub_190D50D00();
  __swift_allocate_value_buffer(v0, qword_1EAD9E4A0);
  v1 = __swift_project_value_buffer(v0, qword_1EAD9E4A0);
  v2 = *MEMORY[0x1E695A590];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_190C144BC(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = sub_190D51840();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v2[9] = *(type metadata accessor for ConversationEntity() - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_190C145E0, 0, 0);
}

uint64_t sub_190C145E0()
{
  v1 = MEMORY[0x1E69E7CC0];
  v0[2] = MEMORY[0x1E69E7CC0];
  sub_190D50810();
  v3 = v0[3];
  v0[12] = v3;
  v4 = *(v3 + 2);
  v0[13] = v4;
  if (v4)
  {
    v5 = v0[11];
    v6 = v0[9];
    v0[14] = v1;
    v0[15] = 0;
    if (!*(v3 + 2))
    {
      __break(1u);
      return MEMORY[0x1EEE6DFA0](v3, v5, v2);
    }

    sub_190830594(v3 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v5);
    v0[16] = objc_opt_self();
    v0[17] = sub_190D572A0();
    v0[18] = sub_190D57290();
    v7 = sub_190D57240();
    v9 = v8;
    v10 = sub_190C14740;
  }

  else
  {
    v0[25] = v1;

    v0[26] = objc_opt_self();
    v0[27] = sub_190D572A0();
    v0[28] = sub_190D57290();
    v7 = sub_190D57240();
    v9 = v11;
    v10 = sub_190C14E08;
  }

  v3 = v10;
  v5 = v7;
  v2 = v9;

  return MEMORY[0x1EEE6DFA0](v3, v5, v2);
}

uint64_t sub_190C14740()
{
  v1 = *(v0 + 128);

  *(v0 + 152) = [v1 sharedRegistry];

  return MEMORY[0x1EEE6DFA0](sub_190C147C8, 0, 0);
}

uint64_t sub_190C147C8()
{
  *(v0 + 160) = sub_190D56ED0();
  *(v0 + 168) = sub_190D57290();
  v2 = sub_190D57240();

  return MEMORY[0x1EEE6DFA0](sub_190C14864, v2, v1);
}

uint64_t sub_190C14864()
{
  v1 = v0[20];
  v2 = v0[19];

  v0[22] = [v2 existingChatWithChatIdentifier_];

  return MEMORY[0x1EEE6DFA0](sub_190C148F8, 0, 0);
}

uint64_t sub_190C148F8()
{
  v21 = v0;
  v1 = v0[22];
  if (v1)
  {
    v2 = v1;
    v0[23] = sub_190D57290();
    v4 = sub_190D57240();

    return MEMORY[0x1EEE6DFA0](sub_190C14B90, v4, v3);
  }

  else
  {

    if (qword_1EAD521B0 != -1)
    {
      swift_once();
    }

    v5 = v0[10];
    v6 = v0[11];
    v7 = sub_190D53040();
    __swift_project_value_buffer(v7, qword_1EAD9E840);
    sub_190830594(v6, v5);
    v8 = sub_190D53020();
    v9 = sub_190D576A0();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[10];
    if (v10)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v20 = v13;
      *v12 = 136315138;
      v14 = *v11;
      v15 = v11[1];
      sub_190D52690();
      sub_1908305F8(v11);
      v16 = sub_19021D9F8(v14, v15, &v20);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_19020E000, v8, v9, "Chat not found for conversation: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x193AF7A40](v13, -1, -1);
      MEMORY[0x193AF7A40](v12, -1, -1);
    }

    else
    {

      sub_1908305F8(v11);
    }

    v17 = v0[11];
    sub_190C15A90();
    swift_allocError();
    swift_willThrow();
    sub_1908305F8(v17);

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_190C14B90()
{
  v1 = *(v0 + 176);

  *(v0 + 192) = [objc_allocWithZone(CKConversation) initWithChat_];

  return MEMORY[0x1EEE6DFA0](sub_190C14C1C, 0, 0);
}

uint64_t sub_190C14C1C()
{
  MEMORY[0x193AF29E0](*(v0 + 192));
  if (*((*(v0 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_190D571A0();
  }

  v1 = *(v0 + 192);
  v2 = *(v0 + 176);
  v3 = *(v0 + 104);
  v4 = *(v0 + 88);
  v5 = *(v0 + 120) + 1;
  sub_190D571E0();

  v6 = *(v0 + 16);
  v7 = sub_1908305F8(v4);
  if (v5 == v3)
  {
    *(v0 + 200) = v6;

    *(v0 + 208) = objc_opt_self();
    *(v0 + 216) = sub_190D572A0();
    *(v0 + 224) = sub_190D57290();
    v10 = sub_190D57240();
    v12 = v11;
    v13 = sub_190C14E08;
  }

  else
  {
    v14 = *(v0 + 120) + 1;
    *(v0 + 112) = v6;
    *(v0 + 120) = v14;
    v15 = *(v0 + 96);
    if (v14 >= *(v15 + 16))
    {
      __break(1u);
      return MEMORY[0x1EEE6DFA0](v7, v8, v9);
    }

    sub_190830594(v15 + ((*(*(v0 + 72) + 80) + 32) & ~*(*(v0 + 72) + 80)) + *(*(v0 + 72) + 72) * v14, *(v0 + 88));
    *(v0 + 128) = objc_opt_self();
    *(v0 + 136) = sub_190D572A0();
    *(v0 + 144) = sub_190D57290();
    v10 = sub_190D57240();
    v12 = v16;
    v13 = sub_190C14740;
  }

  v7 = v13;
  v8 = v10;
  v9 = v12;

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_190C14E08()
{
  v1 = *(v0 + 208);

  *(v0 + 232) = [v1 sharedConversationList];

  return MEMORY[0x1EEE6DFA0](sub_190C14E90, 0, 0);
}

uint64_t sub_190C14E90()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  sub_190ADD800();
  v0[30] = sub_190D57160();

  sub_190D517F0();
  v0[31] = sub_190D51780();
  (*(v2 + 8))(v1, v3);
  v0[32] = sub_190D57290();
  v5 = sub_190D57240();

  return MEMORY[0x1EEE6DFA0](sub_190C14F84, v5, v4);
}

uint64_t sub_190C14F84()
{
  v1 = v0[31];
  v3 = v0[29];
  v2 = v0[30];

  [v3 recoverableDeleteForConversations:v2 deleteDate:v1 synchronousQuery:0 completionHandler:0];

  return MEMORY[0x1EEE6DFA0](sub_190C15024, 0, 0);
}

uint64_t sub_190C15024()
{
  sub_190D506B0();

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_190C150EC()
{
  result = qword_1EAD45878;
  if (!qword_1EAD45878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45878);
  }

  return result;
}

unint64_t sub_190C15144()
{
  result = qword_1EAD45888;
  if (!qword_1EAD45888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45888);
  }

  return result;
}

uint64_t sub_190C15240()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD604C0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD604C8);
  MEMORY[0x1EEE9AC00](v1);
  sub_190D50BE0();
  sub_190D50BD0();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD604D0);
  sub_190D50BC0();

  sub_190D50BD0();
  sub_190D50BF0();
  return sub_190D50BB0();
}

uint64_t sub_190C153E0(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_190221DA4;

  return sub_190C144BC(a1, v4);
}

uint64_t sub_190C15480@<X0>(uint64_t *a1@<X8>)
{
  result = sub_190C154F4();
  *a1 = result;
  return result;
}

uint64_t sub_190C154A8(uint64_t a1)
{
  v2 = sub_1909D4F08();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

uint64_t sub_190C154F4()
{
  v0 = sub_190D50C80();
  v32 = *(v0 - 8);
  v33 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v31 = v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD557E8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v30 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v29 = v25 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53AE8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v34 = v25 - v7;
  v8 = sub_190D51440();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_190D519C0();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v13 = sub_190D56EC0();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v26 = sub_190D51460();
  v14 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v25[1] = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v27 = v25 - v17;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD604B0);
  sub_190D56E50();
  sub_190D51980();
  v18 = *MEMORY[0x1E6968DF0];
  v19 = *(v9 + 104);
  v19(v11, v18, v8);
  sub_190D51470();
  sub_190D56E50();
  sub_190D51980();
  v19(v11, v18, v8);
  v20 = v34;
  sub_190D51470();
  (*(v14 + 56))(v20, 0, 1, v26);
  v35 = 0;
  sub_190D56E50();
  *v11 = sub_190ADD800();
  v19(v11, *MEMORY[0x1E6968E00], v8);
  sub_190D51980();
  sub_190D51470();
  v21 = v29;
  sub_190D505A0();
  v22 = sub_190D50590();
  v23 = *(*(v22 - 8) + 56);
  v23(v21, 0, 1, v22);
  v23(v30, 1, 1, v22);
  (*(v32 + 104))(v31, *MEMORY[0x1E695A500], v33);
  sub_190B197DC();
  return sub_190D50890();
}

unint64_t sub_190C15A90()
{
  result = qword_1EAD604B8;
  if (!qword_1EAD604B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD604B8);
  }

  return result;
}

unint64_t sub_190C15AF8()
{
  result = qword_1EAD604D8;
  if (!qword_1EAD604D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD604D8);
  }

  return result;
}

id sub_190C15B8C()
{
  v2.receiver = v0;
  v2.super_class = _s15StringUtilitiesCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_190C15BE4(unint64_t a1, char a2)
{
  v35 = sub_190D513C0();
  v4 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(MEMORY[0x1E696ADF8]) init];
  if (a2)
  {
    v8 = 1;
  }

  else
  {
    v8 = 3;
  }

  v36 = v7;
  [v7 setStyle_];
  if (a1 >> 62)
  {
    goto LABEL_29;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_190D581C0())
  {
    v10 = 0;
    v33 = a1 & 0xFFFFFFFFFFFFFF8;
    v34 = a1 & 0xC000000000000001;
    v31 = (v4 + 8);
    v4 = MEMORY[0x1E69E7CC0];
    v32 = i;
    while (1)
    {
      if (v34)
      {
        v11 = MEMORY[0x193AF3B90](v10, a1);
      }

      else
      {
        if (v10 >= *(v33 + 16))
        {
          goto LABEL_28;
        }

        v11 = *(a1 + 8 * v10 + 32);
      }

      v12 = v11;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      v37 = v10 + 1;
      sub_190D513B0();
      v13 = [v12 firstName];
      if (v13)
      {

        v14 = [v12 firstName];
        if (!v14)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v14 = [v12 displayID];
      }

      v15 = v14;
      sub_190D56F10();

LABEL_16:
      sub_190D51370();
      v16 = [v12 lastName];
      if (v16)
      {

        v17 = [v12 lastName];
        if (v17)
        {
          v18 = v17;
          sub_190D56F10();
        }

        sub_190D51380();
      }

      v19 = a1;
      v20 = sub_190D513A0();
      v21 = [v36 stringFromPersonNameComponents_];

      v22 = sub_190D56F10();
      v24 = v23;

      (*v31)(v6, v35);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_1908354D4(0, *(v4 + 2) + 1, 1, v4);
      }

      v25 = v32;
      v27 = *(v4 + 2);
      v26 = *(v4 + 3);
      if (v27 >= v26 >> 1)
      {
        v4 = sub_1908354D4((v26 > 1), v27 + 1, 1, v4);
      }

      *(v4 + 2) = v27 + 1;
      v28 = &v4[16 * v27];
      *(v28 + 4) = v22;
      *(v28 + 5) = v24;
      ++v10;
      a1 = v19;
      if (v37 == v25)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    ;
  }

  v4 = MEMORY[0x1E69E7CC0];
LABEL_31:

  return v4;
}

id sub_190C15F60(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(sub_190C15BE4(a3, 1) + 2))
  {
    v3 = objc_opt_self();
    v4 = sub_190D57160();

    v5 = [v3 localizedStringByJoiningStrings_];

    v6 = sub_190D56F10();
    v8 = v7;
  }

  else
  {

    v6 = 0;
    v8 = 0xE000000000000000;
  }

  result = CKFrameworkBundle();
  if (result)
  {
    v10 = result;
    v11 = MEMORY[0x1E69E6158];
    sub_190D51210();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53040);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_190DD1DA0;
    *(v12 + 56) = v11;
    v13 = sub_19081EA10();
    *(v12 + 64) = v13;
    *(v12 + 32) = v6;
    *(v12 + 40) = v8;
    result = CKFrameworkBundle();
    if (result)
    {
      v14 = result;
      v15 = sub_190D51210();
      v17 = v16;

      *(v12 + 96) = v11;
      *(v12 + 104) = v13;
      *(v12 + 72) = v15;
      *(v12 + 80) = v17;
      v18 = sub_190D56EE0();

      return v18;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_190C16184()
{
  v0 = [objc_opt_self() sharedFeatureFlags];
  v1 = [v0 isRCSEncryptionEnabled];

  result = CKFrameworkBundle();
  v3 = result;
  if (v1)
  {
    if (result)
    {
      v4 = sub_190D56ED0();
      v5 = sub_190D56ED0();
      v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

      v7 = sub_190D56F10();
      v3 = v6;
LABEL_6:

      return v7;
    }

    __break(1u);
  }

  else if (result)
  {
    v7 = sub_190D51210();
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

id sub_190C162FC(uint64_t a1, unint64_t a2)
{
  switch(a1)
  {
    case 0:
      return sub_190C16184();
    case 1:
    case 10:
    case 13:
    case 14:
    case 19:
      v3 = CKIsRunningInMacCatalyst();
      result = CKFrameworkBundle();
      v5 = result;
      if (v3)
      {
        if (!result)
        {
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }
      }

      else if (!result)
      {
        goto LABEL_60;
      }

      v12 = sub_190D51210();
      v33 = v13;

      if (*(sub_190C15BE4(a2, 1) + 2))
      {
        v14 = objc_opt_self();
        v15 = sub_190D57160();

        v16 = [v14 localizedStringByJoiningStrings_];

        v17 = sub_190D56F10();
        v19 = v18;

        if (!(a2 >> 62))
        {
LABEL_17:
          v20 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_18;
        }
      }

      else
      {

        v17 = 0;
        v19 = 0xE000000000000000;
        if (!(a2 >> 62))
        {
          goto LABEL_17;
        }
      }

      v20 = sub_190D581C0();
LABEL_18:
      v21 = MEMORY[0x1E69E6158];
      result = CKFrameworkBundle();
      v22 = result;
      if (v20 == 1)
      {
        if (!result)
        {
          goto LABEL_57;
        }

        sub_190D51210();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53040);
        v22 = swift_allocObject();
        *(v22 + 16) = xmmword_190DD9C20;
        *(v22 + 56) = v21;
        v23 = sub_19081EA10();
        *(v22 + 32) = v17;
        *(v22 + 40) = v19;
        *(v22 + 96) = v21;
        *(v22 + 104) = v23;
        *(v22 + 64) = v23;
        *(v22 + 72) = v12;
        *(v22 + 80) = v33;
        result = CKFrameworkBundle();
        if (result)
        {
LABEL_24:
          v24 = result;
          v25 = sub_190D51210();
          v27 = v26;

          *(v22 + 136) = v21;
          *(v22 + 144) = v23;
          *(v22 + 112) = v25;
          *(v22 + 120) = v27;
          v28 = sub_190D56EE0();

          return v28;
        }

        __break(1u);
      }

      if (!v22)
      {
        goto LABEL_58;
      }

      sub_190D51210();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53040);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_190DD9C20;
      *(v22 + 56) = v21;
      v23 = sub_19081EA10();
      *(v22 + 32) = v17;
      *(v22 + 40) = v19;
      *(v22 + 96) = v21;
      *(v22 + 104) = v23;
      *(v22 + 64) = v23;
      *(v22 + 72) = v12;
      *(v22 + 80) = v33;
      result = CKFrameworkBundle();
      if (result)
      {
        goto LABEL_24;
      }

LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
      goto LABEL_61;
    case 2:
    case 11:
    case 12:
      result = CKFrameworkBundle();
      if (!result)
      {
        goto LABEL_56;
      }

      v9 = result;
      goto LABEL_50;
    case 3:
    case 17:
      if (a2 >> 62)
      {
        v10 = sub_190D581C0();
      }

      else
      {
        v10 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = 0xD000000000000018;
      if (v10 != 1)
      {
        goto LABEL_31;
      }

      v7 = 0xD00000000000001BLL;
      v8 = 0x8000000190E7A990;
      return sub_190C15F60(v7, v8, a2);
    case 4:
      if (a2 >> 62)
      {
        if (sub_190D581C0() == 1)
        {
          goto LABEL_39;
        }
      }

      else if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
      {
        goto LABEL_39;
      }

      result = CKFrameworkBundle();
      if (result)
      {
        goto LABEL_49;
      }

      __break(1u);
LABEL_31:
      v7 = v11 + 9;
      v8 = 0x8000000190E7A960;
      return sub_190C15F60(v7, v8, a2);
    case 5:
    case 6:
    case 7:
    case 8:
      v6 = "KT_FOOTER_VIEW_TEXT_TURNED_OFF";
      v7 = 0xD000000000000028;
      goto LABEL_6;
    case 9:
      if (a2 >> 62)
      {
        if (sub_190D581C0() == 1)
        {
          goto LABEL_43;
        }
      }

      else if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
      {
LABEL_43:
        v6 = "EXT_TURNED_OFF_PLURAL";
        v7 = 0xD00000000000001ELL;
        goto LABEL_6;
      }

      v6 = "KT_FOOTER_VIEW_TEXT_UNAVAILABLE";
      v7 = 0xD000000000000025;
LABEL_6:
      v8 = v6 | 0x8000000000000000;
      return sub_190C15F60(v7, v8, a2);
    case 18:
      if (a2 >> 62)
      {
        if (sub_190D581C0() == 1)
        {
          goto LABEL_39;
        }
      }

      else if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
      {
LABEL_39:
        v6 = "KT_FOOTER_TEXT_VERIFIED_GROUP";
        v7 = 0xD000000000000017;
        goto LABEL_6;
      }

      result = CKFrameworkBundle();
      if (result)
      {
LABEL_49:
        v9 = result;
LABEL_50:
        v28 = sub_190D51210();

        return v28;
      }

      else
      {
LABEL_61:
        __break(1u);
      }

      return result;
    default:
      if (qword_1EAD51A70 != -1)
      {
        swift_once();
      }

      v29 = sub_190D53040();
      __swift_project_value_buffer(v29, qword_1EAD9DC38);
      v30 = sub_190D53020();
      v31 = sub_190D576C0();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_19020E000, v30, v31, "unknown or unsupported IMKeytransparencyStatus", v32, 2u);
        MEMORY[0x193AF7A40](v32, -1, -1);
      }

      return 0;
  }
}

uint64_t sub_190C16A70(void *a1)
{
  sub_190C16B30();
  sub_190C16B84();
  v2 = a1;
  sub_190D578C0();

  return v4;
}

uint64_t UITraitCollection.ck_systemUserInterfaceStyle.getter()
{
  sub_190C16B30();
  sub_190C16B84();
  sub_190D578C0();
  return v1;
}

unint64_t sub_190C16B30()
{
  result = qword_1EAD604E0;
  if (!qword_1EAD604E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD604E0);
  }

  return result;
}

unint64_t sub_190C16B84()
{
  result = qword_1EAD604E8;
  if (!qword_1EAD604E8)
  {
    type metadata accessor for UIUserInterfaceStyle(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD604E8);
  }

  return result;
}

void sub_190C16BF0(uint64_t a1)
{
  if (!a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55480);
    v3 = sub_190D57160();
    [v1 setLinkInteractions_];
  }
}

unint64_t sub_190C16C90()
{
  result = qword_1EAD604F0;
  if (!qword_1EAD604F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD604F0);
  }

  return result;
}

void sub_190C16EA4(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR____TtC7ChatKit26TapbackPlatterPunchOutView_wantsBorderDestOut] = 0;
  v16.receiver = v4;
  v16.super_class = type metadata accessor for TapbackPlatterPunchOutView();
  v9 = objc_msgSendSuper2(&v16, sel_initWithFrame_, a1, a2, a3, a4);
  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 sharedBehaviors];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 theme];

    if (v14)
    {
      v15 = [v14 transcriptBackgroundColor];

      [v11 setBackgroundColor_];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_190C17034(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (a1 == 0xD000000000000020 && 0x8000000190E5F000 == a2 || (sub_190D58760() & 1) != 0)
    {
      return 1;
    }

    v4 = sub_190D56ED0();
  }

  else
  {
    v4 = 0;
  }

  v6.receiver = v2;
  v6.super_class = type metadata accessor for TapbackPlatterContentView();
  v5 = objc_msgSendSuper2(&v6, sel__shouldAnimatePropertyWithKey_, v4);

  return v5;
}

id sub_190C17208(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t (*a7)(void))
{
  v12.receiver = a1;
  v12.super_class = a7();
  return objc_msgSendSuper2(&v12, sel_initWithFrame_, a2, a3, a4, a5);
}

uint64_t sub_190C17378(uint64_t *a1, void *a2, void *a3, void *a4)
{
  v5 = *a1;
  v6 = *(v4 + *a1);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
    v7 = swift_allocObject();
    v11 = *(v4 + *a2);
    *(v7 + 16) = xmmword_190DDA780;
    v12 = *(v4 + *a3);
    *(v7 + 32) = v11;
    *(v7 + 40) = v12;
    v13 = *(v4 + *a4);
    *(v7 + 48) = v13;
    *(v4 + v5) = v7;
    v14 = v11;
    v15 = v12;
    v16 = v13;
    sub_190D52690();
  }

  sub_190D52690();
  return v7;
}

uint64_t sub_190C17488(uint64_t *a1, uint64_t (*a2)(void), void *a3)
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v8 = v3;
    v9 = a2();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_190DD55F0;
    v11 = *(v8 + *a3);
    *(inited + 32) = v11;
    v12 = v11;
    sub_190CAA06C(inited);
    v6 = v9;
    *(v8 + v4) = v9;
    sub_190D52690();
  }

  sub_190D52690();
  return v6;
}

id sub_190C17580()
{
  v1 = *(v0 + OBJC_IVAR___CKTapbackPlatterView_backgroundSolidStroke);
  if (*(v0 + OBJC_IVAR___CKTapbackPlatterView_wantsMaterialBackground) == 1)
  {
    [v1 setHidden_];
    v2 = *(v0 + OBJC_IVAR___CKTapbackPlatterView_gradientView);
    [v2 removeFromSuperview];
    [v2 setMaskView_];
    sub_190C19C04();
  }

  else
  {
    [v1 setHidden_];
    [*(v0 + OBJC_IVAR___CKTapbackPlatterView_backgroundBackdrop) removeFromSuperview];
    [*(v0 + OBJC_IVAR___CKTapbackPlatterView_backgroundVibrancy) removeFromSuperview];
    v3 = *(v0 + OBJC_IVAR___CKTapbackPlatterView_materialView);
    [v3 removeFromSuperview];
    [v3 setMaskView_];
    sub_190C19D50();
  }

  return sub_190C177F4();
}

id sub_190C17680()
{
  v1 = *&v0[OBJC_IVAR___CKTapbackPlatterView_backgroundSolidStroke];
  [v1 setHidden_];
  [*&v0[OBJC_IVAR___CKTapbackPlatterView_backgroundBackdrop] removeFromSuperview];
  [*&v0[OBJC_IVAR___CKTapbackPlatterView_backgroundVibrancy] removeFromSuperview];
  v2 = *&v0[OBJC_IVAR___CKTapbackPlatterView_materialView];
  [v2 removeFromSuperview];
  [v2 setMaskView_];
  v3 = *&v0[OBJC_IVAR___CKTapbackPlatterView_gradientView];
  [v3 removeFromSuperview];
  [v3 setMaskView_];
  v4 = *&v0[OBJC_IVAR___CKTapbackPlatterView_parentView];
  v5 = [v4 superview];
  if (!v5 || (v6 = v5, sub_1902188FC(0, &qword_1EAD46530), v7 = v0, v8 = sub_190D57D90(), v6, v7, (v8 & 1) == 0))
  {
    [v0 insertSubview:v4 aboveSubview:v1];
  }

  return sub_190C177F4();
}

id sub_190C177F4()
{
  if (v0[OBJC_IVAR___CKTapbackPlatterView_showTail] == 1)
  {
    v1 = *&v0[OBJC_IVAR___CKTapbackPlatterView_parentView];
    v2 = *&v0[OBJC_IVAR___CKTapbackPlatterView_mediumTail];
    [v1 insertSubview:v2 belowSubview:*&v0[OBJC_IVAR___CKTapbackPlatterView_contentBackground]];
    [v1 insertSubview:*&v0[OBJC_IVAR___CKTapbackPlatterView_smallTail] belowSubview:v2];
    if (v0[OBJC_IVAR___CKTapbackPlatterView_wantsMaterialBackground] == 1)
    {
      v3 = *&v0[OBJC_IVAR___CKTapbackPlatterView_mediumTailSolidStroke];
      [v0 insertSubview:v3 aboveSubview:*&v0[OBJC_IVAR___CKTapbackPlatterView_backgroundSolidStroke]];
      v4 = *&v0[OBJC_IVAR___CKTapbackPlatterView_mediumTailBackdrop];
      [v0 insertSubview:v4 aboveSubview:v3];
      [v0 insertSubview:*&v0[OBJC_IVAR___CKTapbackPlatterView_mediumTailVibrancy] aboveSubview:v4];
      v5 = *&v0[OBJC_IVAR___CKTapbackPlatterView_smallTailSolidStroke];
      [v0 insertSubview:v5 aboveSubview:v3];
      v6 = *&v0[OBJC_IVAR___CKTapbackPlatterView_smallTailBackdrop];
      [v0 insertSubview:v6 aboveSubview:v5];
      [v0 insertSubview:*&v0[OBJC_IVAR___CKTapbackPlatterView_smallTailVibrancy] aboveSubview:v6];
      [v3 setHidden_];
      v7 = sel_setHidden_;
      v8 = v5;
      v9 = 1;
    }

    else
    {
      [*&v0[OBJC_IVAR___CKTapbackPlatterView_mediumTailBackdrop] removeFromSuperview];
      [*&v0[OBJC_IVAR___CKTapbackPlatterView_mediumTailVibrancy] removeFromSuperview];
      [*&v0[OBJC_IVAR___CKTapbackPlatterView_smallTailBackdrop] removeFromSuperview];
      [*&v0[OBJC_IVAR___CKTapbackPlatterView_smallTailVibrancy] removeFromSuperview];
      v11 = *&v0[OBJC_IVAR___CKTapbackPlatterView_mediumTailSolidStroke];
      [v11 setHidden_];
      v12 = *&v0[OBJC_IVAR___CKTapbackPlatterView_smallTailSolidStroke];
      [v12 setHidden_];
      [v0 insertSubview:v11 belowSubview:*&v0[OBJC_IVAR___CKTapbackPlatterView_backgroundSolidStroke]];
      v7 = sel_insertSubview_belowSubview_;
      v8 = v0;
      v9 = v12;
    }
  }

  else
  {
    [*&v0[OBJC_IVAR___CKTapbackPlatterView_mediumTailSolidStroke] removeFromSuperview];
    [*&v0[OBJC_IVAR___CKTapbackPlatterView_smallTailSolidStroke] removeFromSuperview];
    [*&v0[OBJC_IVAR___CKTapbackPlatterView_mediumTailBackdrop] removeFromSuperview];
    [*&v0[OBJC_IVAR___CKTapbackPlatterView_mediumTailVibrancy] removeFromSuperview];
    [*&v0[OBJC_IVAR___CKTapbackPlatterView_smallTailBackdrop] removeFromSuperview];
    [*&v0[OBJC_IVAR___CKTapbackPlatterView_smallTailVibrancy] removeFromSuperview];
    [*&v0[OBJC_IVAR___CKTapbackPlatterView_mediumTail] removeFromSuperview];
    v8 = *&v0[OBJC_IVAR___CKTapbackPlatterView_smallTail];
    v7 = sel_removeFromSuperview;
  }

  return [v8 v7];
}

uint64_t sub_190C17C28(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___CKTapbackPlatterView_materialColorType;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  v6 = *(v3 + OBJC_IVAR___CKTapbackPlatterView_materialView);
  v7 = *(v6 + OBJC_IVAR____TtC7ChatKit19TapbackMaterialView_colorType);
  *(v6 + OBJC_IVAR____TtC7ChatKit19TapbackMaterialView_colorType) = v2;
  if (v2 != v7)
  {
    return sub_190C3B124();
  }

  return result;
}

uint64_t sub_190C17CA8()
{
  v1 = OBJC_IVAR___CKTapbackPlatterView_materialColorType;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_190C17CEC(unsigned __int8 a1)
{
  v3 = OBJC_IVAR___CKTapbackPlatterView_materialColorType;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  v5 = *(v1 + OBJC_IVAR___CKTapbackPlatterView_materialView);
  v6 = *(v5 + OBJC_IVAR____TtC7ChatKit19TapbackMaterialView_colorType);
  *(v5 + OBJC_IVAR____TtC7ChatKit19TapbackMaterialView_colorType) = a1;
  if (v6 != a1)
  {
    return sub_190C3B124();
  }

  return result;
}

void (*sub_190C17D68(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR___CKTapbackPlatterView_materialColorType;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_190C17DF0;
}

void sub_190C17DF0(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = *(v4 + OBJC_IVAR___CKTapbackPlatterView_materialView);
    v6 = *(v4 + v3[4]);
    v7 = *(v5 + OBJC_IVAR____TtC7ChatKit19TapbackMaterialView_colorType);
    *(v5 + OBJC_IVAR____TtC7ChatKit19TapbackMaterialView_colorType) = v6;
    if (v6 != v7)
    {
      sub_190C3B124();
    }
  }

  free(v3);
}

uint64_t sub_190C17E68(float *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = (*a2 + OBJC_IVAR___CKTapbackPlatterView_backgroundLuminance);
  result = swift_beginAccess();
  *v4 = v2;
  v6 = *(v3 + OBJC_IVAR___CKTapbackPlatterView_materialView);
  v7 = *(v6 + OBJC_IVAR____TtC7ChatKit19TapbackMaterialView_backgroundLuminance);
  *(v6 + OBJC_IVAR____TtC7ChatKit19TapbackMaterialView_backgroundLuminance) = v2;
  if (v7 != v2)
  {
    return sub_190C3B124();
  }

  return result;
}

float sub_190C17EF0()
{
  v1 = v0 + OBJC_IVAR___CKTapbackPlatterView_backgroundLuminance;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_190C17F38(float a1)
{
  v3 = (v1 + OBJC_IVAR___CKTapbackPlatterView_backgroundLuminance);
  result = swift_beginAccess();
  *v3 = a1;
  v5 = *(v1 + OBJC_IVAR___CKTapbackPlatterView_materialView);
  v6 = *(v5 + OBJC_IVAR____TtC7ChatKit19TapbackMaterialView_backgroundLuminance);
  *(v5 + OBJC_IVAR____TtC7ChatKit19TapbackMaterialView_backgroundLuminance) = a1;
  if (v6 != a1)
  {
    return sub_190C3B124();
  }

  return result;
}

void (*sub_190C17FBC(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR___CKTapbackPlatterView_backgroundLuminance;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_190C18044;
}

void sub_190C18044(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = *(v4 + OBJC_IVAR___CKTapbackPlatterView_materialView);
    v6 = *(v4 + v3[4]);
    v7 = *(v5 + OBJC_IVAR____TtC7ChatKit19TapbackMaterialView_backgroundLuminance);
    *(v5 + OBJC_IVAR____TtC7ChatKit19TapbackMaterialView_backgroundLuminance) = v6;
    if (v7 != v6)
    {
      sub_190C3B124();
    }
  }

  free(v3);
}

id TapbackPlatterView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

char *TapbackPlatterView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR___CKTapbackPlatterView_parentView;
  type metadata accessor for TapbackPlatterParentView();
  *&v4[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v10 = OBJC_IVAR___CKTapbackPlatterView_gradientView;
  *&v4[v10] = [objc_allocWithZone(CKGradientView) init];
  v11 = OBJC_IVAR___CKTapbackPlatterView_materialView;
  type metadata accessor for TapbackMaterialView();
  *&v4[v11] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  swift_unknownObjectWeakInit();
  v12 = OBJC_IVAR___CKTapbackPlatterView_backgroundSolidStroke;
  type metadata accessor for TapbackPlatterPunchOutView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v4[v12] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v14 = OBJC_IVAR___CKTapbackPlatterView_backgroundBackdrop;
  type metadata accessor for TapbackBackdropCircleView();
  v15 = swift_getObjCClassFromMetadata();
  *&v4[v14] = [objc_allocWithZone(v15) init];
  v16 = OBJC_IVAR___CKTapbackPlatterView_backgroundVibrancy;
  type metadata accessor for TapbackVibrancyCircleView();
  v17 = swift_getObjCClassFromMetadata();
  *&v4[v16] = [objc_allocWithZone(v17) init];
  v18 = OBJC_IVAR___CKTapbackPlatterView_contentBackground;
  type metadata accessor for TapbackPlatterBackgroundView();
  *&v4[v18] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v4[OBJC_IVAR___CKTapbackPlatterView_tapbackView] = 0;
  v19 = OBJC_IVAR___CKTapbackPlatterView_contentView;
  type metadata accessor for TapbackPlatterContentView();
  *&v4[v19] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v20 = OBJC_IVAR___CKTapbackPlatterView_mediumTailSolidStroke;
  *&v4[v20] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v21 = OBJC_IVAR___CKTapbackPlatterView_mediumTailBackdrop;
  *&v4[v21] = [objc_allocWithZone(v15) init];
  v22 = OBJC_IVAR___CKTapbackPlatterView_mediumTailVibrancy;
  *&v4[v22] = [objc_allocWithZone(v17) init];
  v23 = OBJC_IVAR___CKTapbackPlatterView_mediumTail;
  type metadata accessor for TapbackPlatterMediumTail();
  *&v4[v23] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v24 = OBJC_IVAR___CKTapbackPlatterView_smallTailSolidStroke;
  *&v4[v24] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v25 = OBJC_IVAR___CKTapbackPlatterView_smallTailBackdrop;
  *&v4[v25] = [objc_allocWithZone(v15) init];
  v26 = OBJC_IVAR___CKTapbackPlatterView_smallTailVibrancy;
  *&v4[v26] = [objc_allocWithZone(v17) init];
  v27 = OBJC_IVAR___CKTapbackPlatterView_smallTail;
  type metadata accessor for TapbackPlatterSmallTail();
  *&v4[v27] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v4[OBJC_IVAR___CKTapbackPlatterView_tapback] = 0;
  *&v4[OBJC_IVAR___CKTapbackPlatterView____lazy_storage___backgroundStrokeViews] = 0;
  *&v4[OBJC_IVAR___CKTapbackPlatterView____lazy_storage___mediumStrokeViews] = 0;
  *&v4[OBJC_IVAR___CKTapbackPlatterView____lazy_storage___smallStrokeViews] = 0;
  *&v4[OBJC_IVAR___CKTapbackPlatterView____lazy_storage___backgroundViews] = 0;
  *&v4[OBJC_IVAR___CKTapbackPlatterView____lazy_storage___mediumTailViews] = 0;
  *&v4[OBJC_IVAR___CKTapbackPlatterView____lazy_storage___smallTailViews] = 0;
  v4[OBJC_IVAR___CKTapbackPlatterView_wantsMaterialBackground] = 0;
  v4[OBJC_IVAR___CKTapbackPlatterView_wantsBorderDestOut] = 0;
  v4[OBJC_IVAR___CKTapbackPlatterView_isSent] = 0;
  v4[OBJC_IVAR___CKTapbackPlatterView_showTail] = 0;
  v4[OBJC_IVAR___CKTapbackPlatterView_useRightTailDirection] = 0;
  v4[OBJC_IVAR___CKTapbackPlatterView_materialColorType] = -1;
  *&v4[OBJC_IVAR___CKTapbackPlatterView_backgroundLuminance] = 0;
  v34.receiver = v4;
  v34.super_class = type metadata accessor for TapbackPlatterView();
  v28 = objc_msgSendSuper2(&v34, sel_initWithFrame_, a1, a2, a3, a4);
  v29 = OBJC_IVAR___CKTapbackPlatterView_backgroundSolidStroke;
  v30 = *&v28[OBJC_IVAR___CKTapbackPlatterView_backgroundSolidStroke];
  v31 = v28;
  [v31 addSubview_];
  v32 = OBJC_IVAR___CKTapbackPlatterView_parentView;
  [v31 insertSubview:*&v31[OBJC_IVAR___CKTapbackPlatterView_parentView] aboveSubview:*&v28[v29]];
  [v31 insertSubview:*&v31[OBJC_IVAR___CKTapbackPlatterView_contentView] aboveSubview:*&v31[v32]];
  [*&v31[v32] addSubview_];

  return v31;
}

void sub_190C18544()
{
  v1 = v0;
  v27.receiver = v0;
  v27.super_class = type metadata accessor for TapbackPlatterView();
  objc_msgSendSuper2(&v27, sel_layoutSubviews);
  v2 = *&v0[OBJC_IVAR___CKTapbackPlatterView_parentView];
  v3 = [v2 superview];
  if (!v3 || (v4 = v3, sub_1902188FC(0, &qword_1EAD46530), v5 = v0, v6 = sub_190D57D90(), v4, v5, (v6 & 1) == 0))
  {
    [v2 setNeedsLayout];
    [v2 layoutIfNeeded];
  }

  v7 = *&v1[OBJC_IVAR___CKTapbackPlatterView_gradientView];
  [v2 frame];
  [v7 setFrame_];
  v8 = *&v1[OBJC_IVAR___CKTapbackPlatterView_materialView];
  [v2 frame];
  [v8 setFrame_];
  if (qword_1EAD51A40 != -1)
  {
    swift_once();
  }

  v9 = *&qword_1EAD9DB98;
  [*&v1[OBJC_IVAR___CKTapbackPlatterView_backgroundSolidStroke] frame];
  v14 = UIEdgeInsetsInsetRect(v10, v11, v12, v13, v9, v9);
  v15 = *&v1[OBJC_IVAR___CKTapbackPlatterView_contentView];
  [v15 setFrame_];
  v16 = *&v1[OBJC_IVAR___CKTapbackPlatterView_tapbackView];
  if (v16)
  {
    v17 = swift_dynamicCastObjCProtocolConditional();
    v18 = v16;
    if (v17)
    {
      [v17 platterEdgeInsets];
      v20 = v19;
      v22 = v21;
    }

    else
    {
      v20 = 4.0;
      v22 = 4.0;
    }

    [v15 bounds];
    [v18 setFrame_];
  }
}

void sub_190C187E4(uint64_t a1)
{
  v3 = [v1 superview];
  if (!v3)
  {
    return;
  }

  v75 = v3;
  [v3 convertRect:v1 toCoordinateSpace:{*(a1 + OBJC_IVAR____TtC7ChatKit20TapbackPlatterLayout_parentFrame), *(a1 + OBJC_IVAR____TtC7ChatKit20TapbackPlatterLayout_parentFrame + 8), *(a1 + OBJC_IVAR____TtC7ChatKit20TapbackPlatterLayout_parentFrame + 16), *(a1 + OBJC_IVAR____TtC7ChatKit20TapbackPlatterLayout_parentFrame + 24)}];
  v73 = v5;
  v74 = v4;
  v71 = v7;
  v72 = v6;
  [v75 convertRect:v1 toCoordinateSpace:{*(a1 + OBJC_IVAR____TtC7ChatKit20TapbackPlatterLayout_backgroundSolidStroke + 32), *(a1 + OBJC_IVAR____TtC7ChatKit20TapbackPlatterLayout_backgroundSolidStroke + 40), *(a1 + OBJC_IVAR____TtC7ChatKit20TapbackPlatterLayout_backgroundSolidStroke + 48), *(a1 + OBJC_IVAR____TtC7ChatKit20TapbackPlatterLayout_backgroundSolidStroke + 56)}];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = *&v1[OBJC_IVAR___CKTapbackPlatterView_parentView];
  [v75 convertRect:v16 toCoordinateSpace:{*(a1 + OBJC_IVAR____TtC7ChatKit20TapbackPlatterLayout_contentBackground + 32), *(a1 + OBJC_IVAR____TtC7ChatKit20TapbackPlatterLayout_contentBackground + 40), *(a1 + OBJC_IVAR____TtC7ChatKit20TapbackPlatterLayout_contentBackground + 48), *(a1 + OBJC_IVAR____TtC7ChatKit20TapbackPlatterLayout_contentBackground + 56)}];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  [v16 setFrame_];
  [*&v1[OBJC_IVAR___CKTapbackPlatterView_contentBackground] setFrame_];
  v25 = sub_190C1730C();
  v26 = v25;
  if (v25 >> 62)
  {
    v27 = sub_190D581C0();
    if (!v27)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v27 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v27)
    {
      goto LABEL_12;
    }
  }

  if (v27 < 1)
  {
    __break(1u);
    goto LABEL_25;
  }

  for (i = 0; i != v27; ++i)
  {
    if ((v26 & 0xC000000000000001) != 0)
    {
      v29 = MEMORY[0x193AF3B90](i, v26);
    }

    else
    {
      v29 = *(v26 + 8 * i + 32);
    }

    v30 = v29;
    [v29 setFrame_];
  }

LABEL_12:

  if (v1[OBJC_IVAR___CKTapbackPlatterView_showTail] == 1)
  {
    [v75 convertRect:v16 toCoordinateSpace:{*(a1 + OBJC_IVAR____TtC7ChatKit20TapbackPlatterLayout_mediumTail + 32), *(a1 + OBJC_IVAR____TtC7ChatKit20TapbackPlatterLayout_mediumTail + 40), *(a1 + OBJC_IVAR____TtC7ChatKit20TapbackPlatterLayout_mediumTail + 48), *(a1 + OBJC_IVAR____TtC7ChatKit20TapbackPlatterLayout_mediumTail + 56)}];
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;
    [v75 convertRect:v16 toCoordinateSpace:{*(a1 + OBJC_IVAR____TtC7ChatKit20TapbackPlatterLayout_smallTail + 32), *(a1 + OBJC_IVAR____TtC7ChatKit20TapbackPlatterLayout_smallTail + 40), *(a1 + OBJC_IVAR____TtC7ChatKit20TapbackPlatterLayout_smallTail + 48), *(a1 + OBJC_IVAR____TtC7ChatKit20TapbackPlatterLayout_smallTail + 56)}];
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v46 = v45;
    [*&v1[OBJC_IVAR___CKTapbackPlatterView_mediumTail] setFrame_];
    [*&v1[OBJC_IVAR___CKTapbackPlatterView_smallTail] setFrame_];
    [v75 convertRect:v16 toCoordinateSpace:{*(a1 + OBJC_IVAR____TtC7ChatKit20TapbackPlatterLayout_mediumTailSolidStroke + 32), *(a1 + OBJC_IVAR____TtC7ChatKit20TapbackPlatterLayout_mediumTailSolidStroke + 40), *(a1 + OBJC_IVAR____TtC7ChatKit20TapbackPlatterLayout_mediumTailSolidStroke + 48), *(a1 + OBJC_IVAR____TtC7ChatKit20TapbackPlatterLayout_mediumTailSolidStroke + 56)}];
    v9 = v47;
    v11 = v48;
    v13 = v49;
    v15 = v50;
    v51 = sub_190C17330();
    v26 = v51;
    if (!(v51 >> 62))
    {
      v52 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v52)
      {
        goto LABEL_26;
      }

LABEL_15:
      if (v52 < 1)
      {
        __break(1u);
        goto LABEL_41;
      }

      for (j = 0; j != v52; ++j)
      {
        if ((v26 & 0xC000000000000001) != 0)
        {
          v54 = MEMORY[0x193AF3B90](j, v26);
        }

        else
        {
          v54 = *(v26 + 8 * j + 32);
        }

        v55 = v54;
        [v54 setFrame_];
      }

LABEL_26:

      [v75 convertRect:v16 toCoordinateSpace:{*(a1 + OBJC_IVAR____TtC7ChatKit20TapbackPlatterLayout_smallTailSolidStroke + 32), *(a1 + OBJC_IVAR____TtC7ChatKit20TapbackPlatterLayout_smallTailSolidStroke + 40), *(a1 + OBJC_IVAR____TtC7ChatKit20TapbackPlatterLayout_smallTailSolidStroke + 48), *(a1 + OBJC_IVAR____TtC7ChatKit20TapbackPlatterLayout_smallTailSolidStroke + 56)}];
      v57 = v56;
      v59 = v58;
      v61 = v60;
      v63 = v62;
      v64 = sub_190C17354();
      v65 = v64;
      if (v64 >> 62)
      {
        v66 = sub_190D581C0();
        v67 = v75;
        if (v66)
        {
LABEL_28:
          if (v66 >= 1)
          {
            for (k = 0; k != v66; ++k)
            {
              if ((v65 & 0xC000000000000001) != 0)
              {
                v69 = MEMORY[0x193AF3B90](k, v65);
              }

              else
              {
                v69 = *(v65 + 8 * k + 32);
              }

              v70 = v69;
              [v69 setFrame_];
            }

            v67 = v75;
            goto LABEL_35;
          }

LABEL_41:
          __break(1u);
          return;
        }
      }

      else
      {
        v66 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v67 = v75;
        if (v66)
        {
          goto LABEL_28;
        }
      }

LABEL_35:

      return;
    }

LABEL_25:
    v52 = sub_190D581C0();
    if (!v52)
    {
      goto LABEL_26;
    }

    goto LABEL_15;
  }
}