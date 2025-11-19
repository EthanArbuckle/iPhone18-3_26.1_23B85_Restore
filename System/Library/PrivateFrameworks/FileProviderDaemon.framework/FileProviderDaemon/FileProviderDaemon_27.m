void sub_1CF302914(uint64_t a1, void *a2, void (*a3)(id, uint64_t, id), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v65 = a6;
  v66 = a7;
  v68 = a4;
  v69 = a5;
  v67 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v61 - v11;
  v13 = sub_1CF9E5A58();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for LocalDomain();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = (v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v22);
  v24 = v61 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  MEMORY[0x1EEE9AC00](v27);
  MEMORY[0x1EEE9AC00](v28);
  v30 = v61 - v29;
  v35 = MEMORY[0x1EEE9AC00](v31);
  v36 = v61 - v32;
  if (a2)
  {
    (*(v14 + 56))(v30, 1, 1, v13, v35);
    swift_getErrorValue();
    v37 = v70;
    v38 = v71;
    v39 = OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_localDomain;
    v40 = a2;
    v41 = sub_1CF7DBA58(v69 + v39, v37, v38);
    a3(0, v30, v41);

    v42 = v30;
LABEL_3:
    sub_1CEFCCC44(v42, &unk_1EC4BE310, qword_1CF9FCBE0);
    return;
  }

  v62 = v34;
  v63 = v33;
  v43 = v69;
  v64 = a3;
  sub_1CEFCCBDC(v67, v61 - v32, &unk_1EC4BE310, qword_1CF9FCBE0);
  v61[0] = *(v14 + 48);
  v61[1] = v14 + 48;
  if ((v61[0])(v36, 1, v13) == 1)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  sub_1CEFFD30C(v43 + OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_localDomain, v24, type metadata accessor for LocalDomain);
  (*(v14 + 16))(v17, v36, v13);
  sub_1CEFFD30C(v24, v21, type metadata accessor for LocalDomain);
  v44 = type metadata accessor for VFSItem(0);
  (*(*(v44 - 8) + 56))(v12, 1, 1, v44);
  v45 = objc_allocWithZone(type metadata accessor for LocalItem(0));
  v46 = sub_1CF001704(v17, v21, v12);
  sub_1CF007BF8(v24, type metadata accessor for LocalDomain);
  v47 = *(v14 + 8);
  v47(v36, v13);
  if (!v46)
  {
    v57 = v63;
    (*(v14 + 56))(v63, 1, 1, v13);
    v58 = v62;
    sub_1CEFCCBDC(v67, v62, &unk_1EC4BE310, qword_1CF9FCBE0);
    if ((v61[0])(v58, 1, v13) != 1)
    {
      v59 = sub_1CF9E5928();
      v47(v58, v13);
      v60 = FPInvalidURLError();

      v64(0, v57, v60);
      v42 = v57;
      goto LABEL_3;
    }

    goto LABEL_12;
  }

  sub_1CF4F1430();
  v72 = 2113085;
  v73 = 0xE300000000000000;
  v48 = [v46 description];
  v49 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v51 = v50;

  MEMORY[0x1D3868CC0](v49, v51);

  v52 = v72;
  v53 = v73;
  v54 = v67;
  if (qword_1EDEA3408 != -1)
  {
    swift_once();
  }

  sub_1CF9E7298();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_1CF9FA450;
  *(v55 + 56) = MEMORY[0x1E69E6158];
  *(v55 + 64) = sub_1CEFD51C4();
  *(v55 + 32) = v52;
  *(v55 + 40) = v53;
  sub_1CF9E6018();

  v56 = v46;
  v64(v46, v54, 0);
}

uint64_t sub_1CF3030B4(uint64_t a1, void (*a2)(void, void *), uint64_t a3)
{
  v3 = NSFileProviderItemIdentifier.description.getter();
  MEMORY[0x1D3868CC0](v3);

  sub_1CEFFCE80();
  if (qword_1EDEA3408 != -1)
  {
    swift_once();
  }

  sub_1CF9E7298();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1CF9FA440;
  sub_1CEFFD0A8();
  v5 = sub_1CF9E7718();
  v7 = v6;
  v8 = MEMORY[0x1E69E6158];
  *(v4 + 56) = MEMORY[0x1E69E6158];
  v9 = sub_1CEFD51C4();
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  *(v4 + 96) = v8;
  *(v4 + 104) = v9;
  *(v4 + 64) = v9;
  *(v4 + 72) = 0x7469206873617274;
  *(v4 + 80) = 0xEB00000000206D65;

  sub_1CF9E6018();

  sub_1CF304090(a1, a2, a3, v17);

  sub_1CF9E7298();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1CF9FA450;
  v11 = sub_1CF9E7718();
  *(v10 + 56) = MEMORY[0x1E69E6158];
  *(v10 + 64) = v9;
  *(v10 + 32) = v11;
  *(v10 + 40) = v12;
  sub_1CF9E6018();
}

void sub_1CF303370(uint64_t a1, char *a2, void (**a3)(void, void, void))
{
  v58 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF5F8, &qword_1CFA01DB8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v54 = &v52 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v55 = &v52 - v10;
  v11 = sub_1CF9E5A58();
  v56 = *(v11 - 8);
  v57 = v11;
  v12 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v53 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1CF9E5248();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = sub_1CF9E5268();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *MEMORY[0x1E6967258];
  v59 = a1;
  v22 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v24 = v23;
  if (v22 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v24 == v25)
  {
    _Block_copy(a3);
LABEL_4:

LABEL_7:
    sub_1CF9E5208();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CEFD5B1C(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
    sub_1CF9E57D8();
    v28 = sub_1CF9E50D8();
    (*(v17 + 8))(v20, v16);
    v29 = sub_1CF9E57E8();
    (a3)[2](a3, 0, v29);

    goto LABEL_8;
  }

  v26 = sub_1CF9E8048();
  _Block_copy(a3);

  if (v26)
  {
    goto LABEL_7;
  }

  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v27 = sub_1CF9E6AE8();

  if (v27)
  {
    goto LABEL_7;
  }

  v30 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v32 = v31;
  if (v30 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v32 == v33)
  {
    goto LABEL_4;
  }

  v34 = sub_1CF9E8048();

  if (v34)
  {
    goto LABEL_7;
  }

  v35 = v58;
  v36 = v54;
  sub_1CEFFD89C(&v58[OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_localDomain], 1, v59, v54);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF600, &unk_1CFA01DC0);
  if ((*(*(v37 - 8) + 48))(v36, 1, v37) == 1)
  {
    sub_1CEFCCC44(v36, &qword_1EC4BF5F8, &qword_1CFA01DB8);
    v38 = v55;
    (*(v56 + 56))(v55, 1, 1, v57);
LABEL_15:
    sub_1CEFCCC44(v38, &unk_1EC4BE310, qword_1CF9FCBE0);
    v43 = FPItemNotFoundError();
    if (v43)
    {
      v44 = sub_1CF9E57E8();
    }

    else
    {
      v44 = 0;
    }

    (a3)[2](a3, 0, v44);

    goto LABEL_8;
  }

  v39 = *(v37 + 48);
  v38 = v55;
  v40 = v56;
  v41 = *(v56 + 32);
  v42 = v57;
  v41(v55, v36, v57);
  (*(v40 + 56))(v38, 0, 1, v42);
  sub_1CEFCCC44(&v36[v39], &unk_1EC4BEC00, &unk_1CF9FCB60);
  if ((*(v40 + 48))(v38, 1, v42) == 1)
  {
    goto LABEL_15;
  }

  v45 = v53;
  v41(v53, v38, v42);
  v46 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v47 = sub_1CF9E6888();
  v48 = [v46 initWithSuiteName_];

  if (v48)
  {
    v49 = sub_1CF9E6888();
    v50 = [v48 BOOLForKey_];

    v51 = v50 ^ 1;
  }

  else
  {
    v51 = 1;
  }

  _Block_copy(a3);
  sub_1CF319228(v45, v51, v35, a3);
  _Block_release(a3);
  (*(v40 + 8))(v45, v42);
LABEL_8:
  _Block_release(a3);
  _Block_release(a3);
}

void sub_1CF303A28(uint64_t a1, char *a2, void *a3)
{
  v57 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF5F8, &qword_1CFA01DB8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v53 = &v51 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v54 = &v51 - v10;
  v11 = sub_1CF9E5A58();
  v55 = *(v11 - 8);
  v56 = v11;
  v12 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v52 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1CF9E5248();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = sub_1CF9E5268();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *MEMORY[0x1E6967258];
  v58 = a1;
  v22 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v24 = v23;
  if (v22 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v24 == v25)
  {
    v26 = a3;
LABEL_4:

LABEL_7:
    sub_1CF9E5208();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CEFD5B1C(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
    sub_1CF9E57D8();
    v29 = sub_1CF9E50D8();
    (*(v17 + 8))(v20, v16);
    sub_1CF3195D4(v29);

    goto LABEL_8;
  }

  v27 = sub_1CF9E8048();
  v51 = a3;

  if (v27)
  {
    goto LABEL_7;
  }

  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v28 = sub_1CF9E6AE8();

  if (v28)
  {
    goto LABEL_7;
  }

  v30 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v32 = v31;
  if (v30 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v32 == v33)
  {
    goto LABEL_4;
  }

  v34 = sub_1CF9E8048();

  if (v34)
  {
    goto LABEL_7;
  }

  v35 = v57;
  v36 = v53;
  sub_1CEFFD89C(&v57[OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_localDomain], 1, v58, v53);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF600, &unk_1CFA01DC0);
  if ((*(*(v37 - 8) + 48))(v36, 1, v37) == 1)
  {
    sub_1CEFCCC44(v36, &qword_1EC4BF5F8, &qword_1CFA01DB8);
    v38 = v54;
    (*(v55 + 56))(v54, 1, 1, v56);
LABEL_15:
    sub_1CEFCCC44(v38, &unk_1EC4BE310, qword_1CF9FCBE0);
    v29 = FPItemNotFoundError();
    v43 = v51;
    sub_1CF3195D4(v29);

    goto LABEL_8;
  }

  v39 = *(v37 + 48);
  v38 = v54;
  v40 = v55;
  v41 = *(v55 + 32);
  v42 = v56;
  v41(v54, v36, v56);
  (*(v40 + 56))(v38, 0, 1, v42);
  sub_1CEFCCC44(&v36[v39], &unk_1EC4BEC00, &unk_1CF9FCB60);
  if ((*(v40 + 48))(v38, 1, v42) == 1)
  {
    goto LABEL_15;
  }

  v44 = v52;
  v41(v52, v38, v42);
  v45 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v46 = sub_1CF9E6888();
  v47 = [v45 initWithSuiteName_];

  if (v47)
  {
    v48 = sub_1CF9E6888();
    v49 = [v47 BOOLForKey_];

    v50 = v49 ^ 1;
  }

  else
  {
    v50 = 1;
  }

  v29 = v51;
  sub_1CF319A8C(v44, v50, v35, v29);

  (*(v40 + 8))(v44, v42);
LABEL_8:
}

void sub_1CF304090(uint64_t a1, void (*a2)(void, void *), uint64_t a3, uint64_t a4)
{
  v53 = a4;
  v56 = a2;
  v57 = a3;
  v5 = sub_1CF9E5248();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = sub_1CF9E5268();
  v55 = *(v7 - 8);
  v8 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF5F8, &qword_1CFA01DB8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v50 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v50 - v17;
  v19 = sub_1CF9E5A58();
  v51 = *(v19 - 8);
  v52 = v19;
  v20 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v50 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *MEMORY[0x1E6967258];
  v54 = a1;
  v23 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v25 = v24;
  if (v23 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v25 == v26)
  {
    goto LABEL_3;
  }

  v27 = sub_1CF9E8048();

  if (v27)
  {
    goto LABEL_6;
  }

  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v28 = sub_1CF9E6AE8();

  if (v28)
  {
    goto LABEL_6;
  }

  v30 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v32 = v31;
  if (v30 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v32 == v33)
  {
LABEL_3:

LABEL_6:
    sub_1CF9E5208();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CEFD5B1C(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
    sub_1CF9E57D8();
    v29 = sub_1CF9E50D8();
    (*(v55 + 8))(v10, v7);
    v56(0, v29);

    return;
  }

  v34 = sub_1CF9E8048();

  if (v34)
  {
    goto LABEL_6;
  }

  v35 = v53;
  sub_1CEFFD89C((v53 + OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_localDomain), 1, v54, v14);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF600, &unk_1CFA01DC0);
  if ((*(*(v36 - 8) + 48))(v14, 1, v36) == 1)
  {
    sub_1CEFCCC44(v14, &qword_1EC4BF5F8, &qword_1CFA01DB8);
    (*(v51 + 56))(v18, 1, 1, v52);
LABEL_13:
    sub_1CEFCCC44(v18, &unk_1EC4BE310, qword_1CF9FCBE0);
    v41 = FPItemNotFoundError();
    v56(0, v41);

    return;
  }

  v37 = *(v36 + 48);
  v39 = v51;
  v38 = v52;
  v40 = *(v51 + 32);
  v40(v18, v14, v52);
  (*(v39 + 56))(v18, 0, 1, v38);
  sub_1CEFCCC44(&v14[v37], &unk_1EC4BEC00, &unk_1CF9FCB60);
  if ((*(v39 + 48))(v18, 1, v38) == 1)
  {
    goto LABEL_13;
  }

  v42 = v50;
  v40(v50, v18, v38);
  v43 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v44 = sub_1CF9E6888();
  v45 = [v43 initWithSuiteName_];

  if (v45)
  {
    v46 = sub_1CF9E6888();
    v47 = [v45 BOOLForKey_];

    v48 = v47 ^ 1;
  }

  else
  {
    v48 = 1;
  }

  v49 = v57;

  sub_1CF319E34(v42, v48, v35, v56, v49, sub_1CF301E8C);

  (*(v39 + 8))(v42, v38);
}

uint64_t sub_1CF304734(void *a1, uint64_t a2, void (*a3)(void, id), uint64_t a4)
{
  strcpy(v22, "untrash item ");
  HIWORD(v22[1]) = -4864;
  v4 = NSFileProviderItemIdentifier.description.getter();
  MEMORY[0x1D3868CC0](v4);

  v5 = v22[1];
  v16 = v22[0];
  sub_1CEFFCE80();
  if (qword_1EDEA3408 != -1)
  {
    swift_once();
  }

  sub_1CF9E7298();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1CF9FA440;
  sub_1CEFFD0A8();
  v7 = sub_1CF9E7718();
  v9 = v8;
  v10 = MEMORY[0x1E69E6158];
  *(v6 + 56) = MEMORY[0x1E69E6158];
  v11 = sub_1CEFD51C4();
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  *(v6 + 96) = v10;
  *(v6 + 104) = v11;
  *(v6 + 64) = v11;
  *(v6 + 72) = v16;
  *(v6 + 80) = v5;

  sub_1CF9E6018();

  sub_1CF306B48(a1, a3, a4, v21, a2);

  sub_1CF9E7298();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1CF9FA450;
  v13 = sub_1CF9E7718();
  *(v12 + 56) = MEMORY[0x1E69E6158];
  *(v12 + 64) = v11;
  *(v12 + 32) = v13;
  *(v12 + 40) = v14;
  sub_1CF9E6018();
}

void sub_1CF3049FC(void *a1, char *a2, uint64_t a3, const void *a4)
{
  v245 = a3;
  v248 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1110, &qword_1CFA08100);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v237 = (v207 - v8);
  v236 = type metadata accessor for LocalContainer(0);
  v230 = *(v236 - 8);
  v9 = *(v230 + 64);
  MEMORY[0x1EEE9AC00](v236);
  v225 = v207 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v231 = v207 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF5F8, &qword_1CFA01DB8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v247 = v207 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v244 = v207 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v243 = v207 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v242 = v207 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v246 = v207 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v229 = v207 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v233 = v207 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v252 = v207 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v241 = v207 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v35 = v207 - v34;
  v235 = sub_1CF9E5A58();
  v251 = *(v235 - 8);
  v36 = *(v251 + 64);
  MEMORY[0x1EEE9AC00](v235);
  v227 = v207 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v232 = v207 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v249 = v207 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v238 = v207 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v240 = v207 - v45;
  v234 = type metadata accessor for LocalDomain();
  v46 = *(*(v234 - 8) + 64);
  MEMORY[0x1EEE9AC00](v234);
  v228 = v207 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v226 = v207 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v239 = (v207 - v51);
  v52 = sub_1CF9E5248();
  v53 = *(*(v52 - 8) + 64);
  MEMORY[0x1EEE9AC00](v52 - 8);
  v54 = sub_1CF9E5268();
  v55 = *(v54 - 8);
  v56 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v58 = v207 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = swift_allocObject();
  v255 = a4;
  v253 = v59;
  *(v59 + 16) = a4;
  v60 = *MEMORY[0x1E6967258];
  v61 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v63 = v62;
  v250 = v60;
  if (v61 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v63 == v64)
  {
    _Block_copy(v255);
LABEL_4:

LABEL_7:
    sub_1CF9E5208();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CEFD5B1C(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
    sub_1CF9E57D8();
    v67 = sub_1CF9E50D8();
    (*(v55 + 8))(v58, v54);
    v68 = sub_1CF9E57E8();
    v69 = v255;
    (*(v255 + 2))(v255, 0, v68);

    goto LABEL_8;
  }

  v65 = sub_1CF9E8048();
  _Block_copy(v255);

  if (v65)
  {
    goto LABEL_7;
  }

  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v66 = sub_1CF9E6AE8();

  if (v66)
  {
    goto LABEL_7;
  }

  v70 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v72 = v71;
  if (v70 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v72 == v73)
  {
    goto LABEL_4;
  }

  v74 = sub_1CF9E8048();

  if (v74)
  {
    goto LABEL_7;
  }

  v216 = OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_localDomain;
  v75 = v239;
  sub_1CEFFD30C(&v248[OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_localDomain], v239, type metadata accessor for LocalDomain);
  v76 = a1;
  v77 = sub_1CEFFD444(v76, v75);
  if (v77)
  {
    v213 = v76;
    v78 = OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_fileURL;
    v79 = v77;
    swift_beginAccess();
    v222 = v79;
    v217 = v78;
    sub_1CEFCCBDC(v79 + v78, v35, &unk_1EC4BE310, qword_1CF9FCBE0);
    v80 = v251;
    v81 = v251 + 48;
    v82 = *(v251 + 48);
    v83 = v235;
    if (v82(v35, 1, v235) == 1)
    {
      goto LABEL_93;
    }

    v84 = *(v80 + 32);
    v219 = v80 + 32;
    v218 = v84;
    v84(v240, v35, v83);
    v86 = *(v80 + 56);
    v85 = v80 + 56;
    v87 = v241;
    v221 = v86;
    v86(v241, 1, 1, v83);
    v215 = OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_domain;
    v220 = (v85 - 48);
    v88 = v252;
    sub_1CEFCCBDC(v87, v252, &unk_1EC4BE310, qword_1CF9FCBE0);
    v89 = v83;
    v223 = v81;
    v224 = v82;
    v90 = v82(v88, 1, v83);
    sub_1CEFCCC44(v88, &unk_1EC4BE310, qword_1CF9FCBE0);
    v91 = v254;
    if (v90 == 1)
    {
      v92 = 0;
      v215 += v222;
      v210 = (v85 - 40);
      v212 = (v230 + 56);
      v209 = &v258;
      v208 = (v230 + 48);
      v251 = v85;
      v93 = v247;
      v94 = v246;
      v95 = v241;
      while (1)
      {
        if (v92 > 1)
        {
          if (v92 != 2)
          {
            v150 = v226;
            sub_1CEFFD30C(&v248[v216], v226, type metadata accessor for LocalDomain);
            v151 = *v210;
            (*v210)(v227, v150 + *(v234 + 32), v89);
            sub_1CEFFD30C(v150, v228, type metadata accessor for LocalDomain);
            _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v152 = sub_1CF9E6AE8();

            if ((v152 & 1) == 0)
            {
              v153 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
              v155 = v154;
              if (v153 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v155 == v156)
              {
              }

              else
              {
                v157 = sub_1CF9E8048();

                if ((v157 & 1) == 0)
                {

                  _Block_release(v255);
                  sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/os-plugins/LocalStorage/LocalContainer.swift", 100, 2, 30);
                }
              }
            }

            v158 = v227;
            if ((sub_1CF9E5848() & 1) == 0)
            {

              _Block_release(v255);
              sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/os-plugins/LocalStorage/LocalContainer.swift", 100, 2, 31);
            }

            v159 = v225;
            *(v225 + 1) = 0;
            *(v159 + 2) = 0;
            v160 = v250;
            *v159 = v250;
            v161 = v236;
            sub_1CEFFD30C(v228, &v159[*(v236 + 24)], type metadata accessor for LocalDomain);
            v162 = v160;
            if ((sub_1CF9E5848() & 1) == 0)
            {
LABEL_98:

              _Block_release(v255);
              sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/os-plugins/LocalStorage/extension/URL+LocalStorageAdditions.swift", 121, 2, 102);
            }

            v163 = *(v161 + 28);
            sub_1CF9E5A18();
            v164 = sub_1CF9E6AE8();

            if (v164)
            {
              v165 = sub_1CF9E5A18();
              aBlock = 0x657461766972702FLL;
              v257 = 0xE800000000000000;
              MEMORY[0x1D3868CC0](v165);

              sub_1CF9E58C8();

              sub_1CF007BF8(v228, type metadata accessor for LocalDomain);
              v166 = v158;
              v167 = v89;
              (*v220)(v166, v89);
              sub_1CF007BF8(v226, type metadata accessor for LocalDomain);
            }

            else
            {
              sub_1CF007BF8(v228, type metadata accessor for LocalDomain);
              sub_1CF007BF8(v226, type metadata accessor for LocalDomain);
              v168 = v158;
              v167 = v89;
              v218(&v159[v163], v168, v89);
            }

            v159[*(v236 + 32)] = 1;
            v169 = v241;
            sub_1CEFCCC44(v241, &unk_1EC4BE310, qword_1CF9FCBE0);
            v151(v169, &v159[v163], v167);
            v95 = v169;
            sub_1CF007BF8(v159, type metadata accessor for LocalContainer);
            v221(v169, 0, 1, v167);
            goto LABEL_80;
          }

          v106 = sub_1CF4F1CC8();
          sub_1CEFCCC44(v95, &unk_1EC4BE310, qword_1CF9FCBE0);
          if (v106)
          {
            v96 = OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_fileURL;
            swift_beginAccess();
            v97 = v106 + v96;
            v98 = v244;
            sub_1CEFCCBDC(v97, v244, &unk_1EC4BE310, qword_1CF9FCBE0);
          }

          else
          {
            v98 = v244;
            v221(v244, 1, 1, v89);
          }

          sub_1CEFE55D0(v98, v95, &unk_1EC4BE310, qword_1CF9FCBE0);
          v92 = 3;
          goto LABEL_18;
        }

        v104 = v89;
        if (!v92)
        {
          if (v245)
          {
            sub_1CEFFD89C(&v248[v216], 1, v245, v93);
            sub_1CEFCCC44(v95, &unk_1EC4BE310, qword_1CF9FCBE0);
            v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF600, &unk_1CFA01DC0);
            if ((*(*(v105 - 8) + 48))(v93, 1, v105) == 1)
            {
              sub_1CEFCCC44(v93, &qword_1EC4BF5F8, &qword_1CFA01DB8);
              goto LABEL_34;
            }

            v121 = *(v105 + 48);
            v218(v94, v93, v89);
            v221(v94, 0, 1, v89);
            sub_1CEFCCC44(&v93[v121], &unk_1EC4BEC00, &unk_1CF9FCB60);
          }

          else
          {
            sub_1CEFCCC44(v95, &unk_1EC4BE310, qword_1CF9FCBE0);
LABEL_34:
            v221(v94, 1, 1, v89);
          }

          sub_1CEFE55D0(v94, v95, &unk_1EC4BE310, qword_1CF9FCBE0);
          v92 = 1;
          goto LABEL_18;
        }

        v107 = v243;
        sub_1CEFCCBDC(v222 + v217, v243, &unk_1EC4BE310, qword_1CF9FCBE0);
        if (v224(v107, 1, v89) == 1)
        {
          sub_1CEFCCC44(v107, &unk_1EC4BE310, qword_1CF9FCBE0);
          aBlock = 0;
          v257 = 0xE000000000000000;
          sub_1CF9E7948();

          aBlock = 0x20676E697373696DLL;
          v257 = 0xEF206E6F204C5255;
          v201 = [v222 description];
          v202 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v204 = v203;

          MEMORY[0x1D3868CC0](v202, v204);

          _Block_release(v255);
          LODWORD(v206) = 0;
          p_aBlock = 608;
          sub_1CF9E7B68();
          __break(1u);
LABEL_97:

          _Block_release(v255);
          sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/os-plugins/LocalStorage/extension/URL+LocalStorageAdditions.swift", 121, 2, 67);
        }

        v108 = v249;
        v109 = (v218)(v249, v107, v89);
        aBlock = 0;
        v257 = 0;
        MEMORY[0x1EEE9AC00](v109);
        p_aBlock = &aBlock;
        v110 = sub_1CF9E5848();
        if ((v110 & 1) == 0)
        {
          goto LABEL_95;
        }

        MEMORY[0x1EEE9AC00](v110);
        p_aBlock = sub_1CF32747C;
        v206 = &v207[-4];
        sub_1CF9E59B8();
        if (v91)
        {
          break;
        }

        v114 = v257;
        v115 = v224;
        if (v257)
        {
          v116 = aBlock;
          if ((sub_1CF9E5848() & 1) == 0)
          {

            _Block_release(v255);
            sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/os-plugins/LocalStorage/extension/URL+LocalStorageAdditions.swift", 121, 2, 236);
          }

          v117 = sub_1CF9E5848();
          v118 = v232;
          if ((v117 & 1) == 0)
          {
            goto LABEL_98;
          }

          sub_1CF9E5A18();
          v119 = sub_1CF9E6AE8();

          v230 = v114;
          if (v119)
          {
            v120 = sub_1CF9E5A18();
            aBlock = 0x657461766972702FLL;
            v257 = 0xE800000000000000;
            MEMORY[0x1D3868CC0](v120);

            sub_1CF9E58C8();
          }

          else
          {
            (*v210)(v118, v108, v104);
          }

          v122 = sub_1CF9E5A18();
          v124 = v123;
          v111 = *v220;
          (*v220)(v118, v104);
          v125 = v215;
          v126 = v215 + *(v234 + 32);
          sub_1CF9E5A18();
          v127 = sub_1CF9E6AE8();

          v214 = v116;
          if (v127)
          {
            v211 = v111;

            v128 = v125;
            v129 = v239;
            sub_1CEFFD30C(v128, v239, type metadata accessor for LocalDomain);
            v130 = v237;
            sub_1CF000318(v129, v237);
            v131 = v236;
            (*v212)(v130, 0, 1, v236);
            v95 = v241;
            goto LABEL_52;
          }

          v211 = v124;
          (*v212)(v237, 1, 1, v236);
          v132 = type metadata accessor for LocalContainerMonitor(0);
          if (qword_1EDEA56B8 != -1)
          {
            v132 = swift_once();
          }

          MEMORY[0x1EEE9AC00](v132);
          v133 = v215;
          v134 = sub_1CF9E7398();
          v254 = 0;
          v207[1] = v207;
          v135 = aBlock;
          MEMORY[0x1EEE9AC00](v134);
          v136 = v211;
          v207[-4] = v122;
          v207[-3] = v136;
          p_aBlock = v237;
          v206 = v133;
          v137 = *&v135[OBJC_IVAR____TtC18FileProviderDaemon21LocalContainerMonitor_queue];
          v138 = swift_allocObject();
          v138[2] = v135;
          v138[3] = sub_1CF3272E4;
          v138[4] = &v207[-6];
          v139 = swift_allocObject();
          *(v139 + 16) = sub_1CF327480;
          *(v139 + 24) = v138;
          v260 = sub_1CF1C0B54;
          v261 = v139;
          aBlock = MEMORY[0x1E69E9820];
          v257 = 1107296256;
          v258 = sub_1CEFFD02C;
          v259 = &block_descriptor_289;
          v140 = _Block_copy(&aBlock);
          v141 = v135;

          dispatch_sync(v137, v140);

          _Block_release(v140);
          LOBYTE(v133) = swift_isEscapingClosureAtFileLocation();

          if (v133)
          {
            __break(1u);
LABEL_93:
            _Block_release(v255);
            __break(1u);
LABEL_94:
            _Block_release(v255);
            __break(1u);
LABEL_95:

            _Block_release(v255);
            sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/os-plugins/LocalStorage/extension/URL+LocalStorageAdditions.swift", 121, 2, 24);
          }

          v130 = v237;
          v131 = v236;
          v142 = (*v208)(v237, 1, v236);
          v104 = v235;
          v95 = v241;
          if (v142 == 1)
          {
            v111(v249, v235);

            sub_1CEFCCC44(v130, &unk_1EC4C1110, &qword_1CFA08100);
            v112 = 1;
            v91 = v254;
LABEL_32:
            v113 = v242;
          }

          else
          {
            v211 = v111;
            v91 = v254;
LABEL_52:
            v143 = v231;
            sub_1CEFFC48C(v130, v231, type metadata accessor for LocalContainer);
            v144 = v143 + *(v131 + 28);
            v113 = v242;
            sub_1CF9E5958();

            sub_1CF007BF8(v143, type metadata accessor for LocalContainer);
            v111 = v211;
            v211(v249, v104);
            v112 = 0;
          }

          v115 = v224;
          goto LABEL_54;
        }

        v111 = *v220;
        (*v220)(v108, v89);
        v112 = 1;
        v113 = v242;
LABEL_54:
        v221(v113, v112, 1, v104);
        if (v115(v113, 1, v104) == 1)
        {
          v89 = v104;
          sub_1CEFCCC44(v113, &unk_1EC4BE310, qword_1CF9FCBE0);
        }

        else
        {
          v145 = v238;
          v218(v238, v113, v104);
          v146 = sub_1CF9E5848();
          if ((v146 & 1) == 0)
          {
            goto LABEL_97;
          }

          MEMORY[0x1EEE9AC00](v146);
          LODWORD(p_aBlock) = 4;
          sub_1CF9E59B8();
          if (v91)
          {

            v89 = v104;
            v111(v145, v104);
            v91 = 0;
LABEL_63:
            v92 = 2;
            v93 = v247;
            v94 = v246;
            goto LABEL_18;
          }

          if ((aBlock & 1) == 0)
          {
            v89 = v104;
            v111(v145, v104);
            goto LABEL_63;
          }

          sub_1CEFCCC44(v95, &unk_1EC4BE310, qword_1CF9FCBE0);
          v218(v95, v145, v104);
          v89 = v104;
          v221(v95, 0, 1, v104);
        }

        v92 = 2;
        v93 = v247;
        v94 = v246;
LABEL_18:
        v99 = v95;
        v100 = v95;
        v101 = v252;
        sub_1CEFCCBDC(v99, v252, &unk_1EC4BE310, qword_1CF9FCBE0);
        v102 = v224(v101, 1, v89);
        v103 = v101;
        v95 = v100;
        sub_1CEFCCC44(v103, &unk_1EC4BE310, qword_1CF9FCBE0);
        if (v102 != 1)
        {
          goto LABEL_80;
        }
      }

      v111 = *v220;
      (*v220)(v108, v89);

      v91 = 0;
      v112 = 1;
      goto LABEL_32;
    }

    v95 = v241;
LABEL_80:
    v170 = v233;
    sub_1CEFCCBDC(v95, v233, &unk_1EC4BE310, qword_1CF9FCBE0);
    v171 = v95;
    v172 = v224;
    v173 = v224(v170, 1, v89);
    sub_1CEFCCC44(v170, &unk_1EC4BE310, qword_1CF9FCBE0);
    if (v173 == 1)
    {
      v174 = v89;
      aBlock = 0;
      v257 = 0xE000000000000000;
      sub_1CF9E7948();

      aBlock = 0xD000000000000027;
      v257 = 0x80000001CFA3F4B0;
      v175 = [v222 description];
      v176 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v178 = v177;

      MEMORY[0x1D3868CC0](v176, v178);

      v179 = aBlock;
      v180 = v257;
      if (qword_1EDEA3408 != -1)
      {
        swift_once();
      }

      sub_1CF9E7298();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v181 = swift_allocObject();
      *(v181 + 16) = xmmword_1CF9FA450;
      *(v181 + 56) = MEMORY[0x1E69E6158];
      *(v181 + 64) = sub_1CEFD51C4();
      *(v181 + 32) = v179;
      *(v181 + 40) = v180;
      sub_1CF9E6018();

      v182 = sub_1CF9E6888();
      v183 = FPInvalidParameterError();

      if (v183)
      {
        v184 = sub_1CF9E57E8();
      }

      else
      {
        v184 = 0;
      }

      v69 = v255;
      v195 = v222;
      (*(v255 + 2))(v255, 0, v184);

      sub_1CEFCCC44(v171, &unk_1EC4BE310, qword_1CF9FCBE0);
      (*v220)(v240, v174);
    }

    else
    {
      v254 = sub_1CF9E5928();
      v185 = v229;
      sub_1CEFCCBDC(v171, v229, &unk_1EC4BE310, qword_1CF9FCBE0);
      if (v172(v185, 1, v89) == 1)
      {
        goto LABEL_94;
      }

      v186 = v89;
      v187 = sub_1CF9E5928();
      v188 = *v220;
      (*v220)(v185, v89);
      v189 = objc_allocWithZone(MEMORY[0x1E695E000]);
      v190 = sub_1CF9E6888();
      v191 = [v189 initWithSuiteName_];

      if (v191)
      {
        v192 = sub_1CF9E6888();
        v193 = [v191 BOOLForKey_];

        v194 = v193 ^ 1;
      }

      else
      {
        v194 = 1;
      }

      v196 = swift_allocObject();
      v197 = v248;
      v196[2] = v248;
      v196[3] = sub_1CEFFA830;
      v196[4] = v253;
      v260 = sub_1CF327390;
      v261 = v196;
      aBlock = MEMORY[0x1E69E9820];
      v257 = 1107296256;
      v258 = sub_1CF90535C;
      v259 = &block_descriptor_296;
      v198 = _Block_copy(&aBlock);
      v199 = v197;

      v200 = v254;
      [v254 fp:v187 reparentUnderFolder:1 allowBouncing:v194 allowCoordination:v198 completionHandler:?];
      _Block_release(v198);

      sub_1CEFCCC44(v241, &unk_1EC4BE310, qword_1CF9FCBE0);
      v188(v240, v186);

      v69 = v255;
    }
  }

  else
  {
    v147 = sub_1CF9E6888();
    v148 = FPInvalidParameterError();

    v69 = v255;
    if (v148)
    {
      v149 = sub_1CF9E57E8();
    }

    else
    {
      v149 = 0;
    }

    v69[2](v69, 0, v149);
  }

LABEL_8:
  _Block_release(v69);
}

void sub_1CF306B48(void *a1, void (*a2)(void, id), uint64_t a3, char *a4, uint64_t a5)
{
  v233 = a5;
  v235 = a4;
  v240 = a2;
  v241 = a3;
  v6 = sub_1CF9E5248();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = sub_1CF9E5268();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v193 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1110, &qword_1CFA08100);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v223 = (&v193 - v15);
  v222 = type metadata accessor for LocalContainer(0);
  v217 = *(v222 - 8);
  v16 = *(v217 + 8);
  MEMORY[0x1EEE9AC00](v222);
  v212 = &v193 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v218 = &v193 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF5F8, &qword_1CFA01DB8);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v227 = &v193 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v216 = &v193 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v220 = &v193 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v232 = &v193 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v231 = &v193 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v234 = &v193 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v230 = &v193 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v239 = &v193 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v224 = &v193 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v193 - v41;
  v225 = sub_1CF9E5A58();
  v237 = *(v225 - 8);
  v43 = *(v237 + 64);
  MEMORY[0x1EEE9AC00](v225);
  v214 = &v193 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v219 = &v193 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v238 = &v193 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v229 = &v193 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v228 = &v193 - v52;
  v221 = type metadata accessor for LocalDomain();
  v53 = *(*(v221 - 8) + 64);
  MEMORY[0x1EEE9AC00](v221);
  v215 = &v193 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v55);
  v213 = &v193 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v226 = (&v193 - v58);
  v59 = *MEMORY[0x1E6967258];
  v60 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v62 = v61;
  v236 = v59;
  if (v60 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v62 == v63)
  {
    goto LABEL_3;
  }

  v64 = sub_1CF9E8048();

  if (v64)
  {
    goto LABEL_6;
  }

  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v65 = sub_1CF9E6AE8();

  if (v65)
  {
    goto LABEL_6;
  }

  v67 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v69 = v68;
  if (v67 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v69 == v70)
  {
LABEL_3:

LABEL_6:
    sub_1CF9E5208();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CEFD5B1C(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
    sub_1CF9E57D8();
    v66 = sub_1CF9E50D8();
    (*(v9 + 8))(v12, v8);
LABEL_7:
    v240(0, v66);

    return;
  }

  v71 = sub_1CF9E8048();

  if (v71)
  {
    goto LABEL_6;
  }

  v203 = OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_localDomain;
  v72 = v226;
  sub_1CEFFD30C(&v235[OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_localDomain], v226, type metadata accessor for LocalDomain);
  v73 = a1;
  v74 = sub_1CEFFD444(v73, v72);
  if (!v74)
  {
    v140 = sub_1CF9E6888();
    v66 = FPInvalidParameterError();

    goto LABEL_7;
  }

  v199 = v73;
  v75 = OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_fileURL;
  v76 = v74;
  swift_beginAccess();
  v205 = v76;
  v204 = v75;
  sub_1CEFCCBDC(&v76[v75], v42, &unk_1EC4BE310, qword_1CF9FCBE0);
  v77 = v237;
  v79 = v237 + 48;
  v78 = *(v237 + 48);
  v80 = v225;
  if (v78(v42, 1, v225) == 1)
  {
    goto LABEL_82;
  }

  v81 = *(v77 + 32);
  v207 = v77 + 32;
  v206 = v81;
  v81(v228, v42, v80);
  v83 = *(v77 + 56);
  v82 = v77 + 56;
  v84 = v224;
  v209 = v83;
  v83(v224, 1, 1, v80);
  v85 = OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_domain;
  v208 = (v82 - 48);
  v86 = v239;
  sub_1CEFCCBDC(v84, v239, &unk_1EC4BE310, qword_1CF9FCBE0);
  v211 = v78;
  v210 = v79;
  v87 = v78(v86, 1, v80);
  sub_1CEFCCC44(v86, &unk_1EC4BE310, qword_1CF9FCBE0);
  if (v87 != 1)
  {
    goto LABEL_71;
  }

  v88 = 0;
  v89 = v205;
  v202 = &v205[v85];
  v196 = (v82 - 40);
  v198 = (v217 + 56);
  v195 = &v245;
  v194 = (v217 + 48);
  v237 = v82;
  while (v88 <= 1)
  {
    v92 = v238;
    if (!v88)
    {
      if (v233)
      {
        v93 = v227;
        sub_1CEFFD89C(&v235[v203], 1, v233, v227);
        sub_1CEFCCC44(v84, &unk_1EC4BE310, qword_1CF9FCBE0);
        v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF600, &unk_1CFA01DC0);
        v95 = (*(*(v94 - 8) + 48))(v93, 1, v94);
        v96 = v230;
        if (v95 == 1)
        {
          sub_1CEFCCC44(v93, &qword_1EC4BF5F8, &qword_1CFA01DB8);
          goto LABEL_35;
        }

        v116 = *(v94 + 48);
        v206(v230, v93, v80);
        v209(v96, 0, 1, v80);
        sub_1CEFCCC44(&v93[v116], &unk_1EC4BEC00, &unk_1CF9FCB60);
      }

      else
      {
        sub_1CEFCCC44(v84, &unk_1EC4BE310, qword_1CF9FCBE0);
        v96 = v230;
LABEL_35:
        v209(v96, 1, 1, v80);
      }

      sub_1CEFE55D0(v96, v84, &unk_1EC4BE310, qword_1CF9FCBE0);
      v88 = 1;
      goto LABEL_16;
    }

    v101 = v231;
    sub_1CEFCCBDC(v89 + v204, v231, &unk_1EC4BE310, qword_1CF9FCBE0);
    if (v211(v101, 1, v80) == 1)
    {
      sub_1CEFCCC44(v101, &unk_1EC4BE310, qword_1CF9FCBE0);
      aBlock = 0;
      v244 = 0xE000000000000000;
      sub_1CF9E7948();

      aBlock = 0x20676E697373696DLL;
      v244 = 0xEF206E6F204C5255;
      v187 = [v89 description];
      v188 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v190 = v189;

      MEMORY[0x1D3868CC0](v188, v190);

      LODWORD(v192) = 0;
      p_aBlock = 608;
      sub_1CF9E7B68();
      __break(1u);
LABEL_86:
      sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/os-plugins/LocalStorage/extension/URL+LocalStorageAdditions.swift", 121, 2, 67);
    }

    v102 = (v206)(v92, v101, v80);
    aBlock = 0;
    v244 = 0;
    MEMORY[0x1EEE9AC00](v102);
    p_aBlock = &aBlock;
    v103 = sub_1CF9E5848();
    if ((v103 & 1) == 0)
    {
      goto LABEL_84;
    }

    MEMORY[0x1EEE9AC00](v103);
    p_aBlock = sub_1CF3262F8;
    v192 = (&v193 - 4);
    v104 = v242;
    sub_1CF9E59B8();
    if (v104)
    {
      v217 = *v208;
      v217(v92, v80);

      v242 = 0;
LABEL_29:
      v105 = 1;
      v89 = v205;
      goto LABEL_30;
    }

    v242 = 0;
    v111 = v244;
    if (!v244)
    {
      v217 = *v208;
      v217(v92, v80);
      goto LABEL_29;
    }

    v112 = aBlock;
    if ((sub_1CF9E5848() & 1) == 0)
    {
      sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/os-plugins/LocalStorage/extension/URL+LocalStorageAdditions.swift", 121, 2, 236);
    }

    if ((sub_1CF9E5848() & 1) == 0)
    {
      goto LABEL_87;
    }

    sub_1CF9E5A18();
    v113 = sub_1CF9E6AE8();

    v201 = v111;
    v200 = v112;
    if (v113)
    {
      v114 = sub_1CF9E5A18();
      aBlock = 0x657461766972702FLL;
      v244 = 0xE800000000000000;
      MEMORY[0x1D3868CC0](v114);

      v115 = v219;
      sub_1CF9E58C8();
    }

    else
    {
      v115 = v219;
      (*v196)(v219, v92, v80);
    }

    v117 = sub_1CF9E5A18();
    v119 = v118;
    v217 = *v208;
    v217(v115, v80);
    v120 = v202;
    v121 = &v202[*(v221 + 32)];
    sub_1CF9E5A18();
    v197 = v117;
    v122 = sub_1CF9E6AE8();

    if (v122)
    {

      v123 = v226;
      sub_1CEFFD30C(v120, v226, type metadata accessor for LocalDomain);
      v124 = v223;
      sub_1CF000318(v123, v223);
      v125 = v222;
      (*v198)(v124, 0, 1, v222);
      v84 = v224;
    }

    else
    {
      (*v198)(v223, 1, 1, v222);
      v126 = type metadata accessor for LocalContainerMonitor(0);
      if (qword_1EDEA56B8 != -1)
      {
        v126 = swift_once();
      }

      MEMORY[0x1EEE9AC00](v126);
      v127 = v202;
      v128 = v242;
      v129 = sub_1CF9E7398();
      v242 = v128;
      v193 = &v193;
      v130 = aBlock;
      MEMORY[0x1EEE9AC00](v129);
      *(&v193 - 4) = v197;
      *(&v193 - 3) = v119;
      p_aBlock = v223;
      v192 = v127;
      v131 = *&v130[OBJC_IVAR____TtC18FileProviderDaemon21LocalContainerMonitor_queue];
      v132 = swift_allocObject();
      v132[2] = v130;
      v132[3] = sub_1CF326300;
      v132[4] = &v193 - 6;
      v133 = swift_allocObject();
      *(v133 + 16) = sub_1CF32630C;
      *(v133 + 24) = v132;
      v247 = sub_1CEFFD054;
      v248 = v133;
      aBlock = MEMORY[0x1E69E9820];
      v244 = 1107296256;
      v245 = sub_1CEFFD02C;
      v246 = &block_descriptor_130;
      v134 = _Block_copy(&aBlock);
      v135 = v130;

      dispatch_sync(v131, v134);

      _Block_release(v134);
      LOBYTE(v131) = swift_isEscapingClosureAtFileLocation();

      if (v131)
      {
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/os-plugins/LocalStorage/extension/URL+LocalStorageAdditions.swift", 121, 2, 24);
      }

      v124 = v223;
      v125 = v222;
      v136 = (*v194)(v223, 1, v222);
      v80 = v225;
      v84 = v224;
      v92 = v238;
      if (v136 == 1)
      {
        v217(v238, v225);

        sub_1CEFCCC44(v124, &unk_1EC4C1110, &qword_1CFA08100);
        v105 = 1;
        v89 = v205;
        goto LABEL_30;
      }
    }

    v89 = v205;
    v137 = v124;
    v138 = v218;
    sub_1CEFFC48C(v137, v218, type metadata accessor for LocalContainer);
    v139 = v138 + *(v125 + 28);
    sub_1CF9E5958();

    sub_1CF007BF8(v138, type metadata accessor for LocalContainer);
    v217(v92, v80);
    v105 = 0;
LABEL_30:
    v106 = v234;
    v209(v234, v105, 1, v80);
    v107 = v211(v106, 1, v80);
    v108 = v229;
    if (v107 == 1)
    {
      sub_1CEFCCC44(v106, &unk_1EC4BE310, qword_1CF9FCBE0);
      v88 = 2;
    }

    else
    {
      v206(v229, v106, v80);
      v109 = sub_1CF9E5848();
      if ((v109 & 1) == 0)
      {
        goto LABEL_86;
      }

      MEMORY[0x1EEE9AC00](v109);
      LODWORD(p_aBlock) = 4;
      v110 = v242;
      sub_1CF9E59B8();
      if (v110)
      {

        v217(v108, v80);
        v242 = 0;
LABEL_58:
        v88 = 2;
        goto LABEL_16;
      }

      v242 = 0;
      if ((aBlock & 1) == 0)
      {
        v217(v108, v80);
        goto LABEL_58;
      }

      sub_1CEFCCC44(v84, &unk_1EC4BE310, qword_1CF9FCBE0);
      v206(v84, v108, v80);
      v209(v84, 0, 1, v80);
      v88 = 2;
    }

LABEL_16:
    v90 = v239;
    sub_1CEFCCBDC(v84, v239, &unk_1EC4BE310, qword_1CF9FCBE0);
    v91 = v211(v90, 1, v80);
    sub_1CEFCCC44(v90, &unk_1EC4BE310, qword_1CF9FCBE0);
    if (v91 != 1)
    {
      goto LABEL_72;
    }
  }

  if (v88 == 2)
  {
    v97 = sub_1CF4F1CC8();
    sub_1CEFCCC44(v84, &unk_1EC4BE310, qword_1CF9FCBE0);
    if (v97)
    {
      v98 = OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_fileURL;
      swift_beginAccess();
      v99 = v97 + v98;
      v100 = v232;
      sub_1CEFCCBDC(v99, v232, &unk_1EC4BE310, qword_1CF9FCBE0);
    }

    else
    {
      v100 = v232;
      v209(v232, 1, 1, v80);
    }

    sub_1CEFE55D0(v100, v84, &unk_1EC4BE310, qword_1CF9FCBE0);
    v88 = 3;
    goto LABEL_16;
  }

  v141 = v213;
  sub_1CEFFD30C(&v235[v203], v213, type metadata accessor for LocalDomain);
  v142 = *v196;
  (*v196)(v214, (v141 + *(v221 + 32)), v80);
  sub_1CEFFD30C(v141, v215, type metadata accessor for LocalDomain);
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  LOBYTE(v141) = sub_1CF9E6AE8();

  v143 = v212;
  if ((v141 & 1) == 0)
  {
    v144 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v146 = v145;
    if (v144 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v146 == v147)
    {
    }

    else
    {
      v148 = sub_1CF9E8048();

      if ((v148 & 1) == 0)
      {
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/os-plugins/LocalStorage/LocalContainer.swift", 100, 2, 30);
      }
    }
  }

  v149 = v214;
  if ((sub_1CF9E5848() & 1) == 0)
  {
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/os-plugins/LocalStorage/LocalContainer.swift", 100, 2, 31);
  }

  *(v143 + 1) = 0;
  *(v143 + 2) = 0;
  v150 = v236;
  *v143 = v236;
  v151 = v222;
  sub_1CEFFD30C(v215, &v143[*(v222 + 24)], type metadata accessor for LocalDomain);
  v152 = v150;
  if ((sub_1CF9E5848() & 1) == 0)
  {
LABEL_87:
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/os-plugins/LocalStorage/extension/URL+LocalStorageAdditions.swift", 121, 2, 102);
  }

  v153 = v149;
  v154 = *(v151 + 28);
  sub_1CF9E5A18();
  v155 = sub_1CF9E6AE8();

  if (v155)
  {
    v156 = sub_1CF9E5A18();
    aBlock = 0x657461766972702FLL;
    v244 = 0xE800000000000000;
    MEMORY[0x1D3868CC0](v156);

    sub_1CF9E58C8();

    sub_1CF007BF8(v215, type metadata accessor for LocalDomain);
    (*v208)(v153, v80);
    sub_1CF007BF8(v213, type metadata accessor for LocalDomain);
  }

  else
  {
    sub_1CF007BF8(v215, type metadata accessor for LocalDomain);
    sub_1CF007BF8(v213, type metadata accessor for LocalDomain);
    v206(&v143[v154], v153, v80);
  }

  v143[*(v222 + 32)] = 1;
  sub_1CEFCCC44(v84, &unk_1EC4BE310, qword_1CF9FCBE0);
  v142(v84, &v143[v154], v80);
  sub_1CF007BF8(v143, type metadata accessor for LocalContainer);
  v209(v84, 0, 1, v80);
LABEL_71:
  v89 = v205;
LABEL_72:
  v157 = v220;
  sub_1CEFCCBDC(v84, v220, &unk_1EC4BE310, qword_1CF9FCBE0);
  v158 = v211;
  v159 = v211(v157, 1, v80);
  sub_1CEFCCC44(v157, &unk_1EC4BE310, qword_1CF9FCBE0);
  if (v159 == 1)
  {
    aBlock = 0;
    v244 = 0xE000000000000000;
    sub_1CF9E7948();

    aBlock = 0xD000000000000027;
    v244 = 0x80000001CFA3F4B0;
    v160 = [v89 description];
    v161 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v162 = v89;
    v164 = v163;

    MEMORY[0x1D3868CC0](v161, v164);

    v165 = aBlock;
    v166 = v244;
    if (qword_1EDEA3408 != -1)
    {
      swift_once();
    }

    sub_1CF9E7298();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v167 = swift_allocObject();
    *(v167 + 16) = xmmword_1CF9FA450;
    *(v167 + 56) = MEMORY[0x1E69E6158];
    *(v167 + 64) = sub_1CEFD51C4();
    *(v167 + 32) = v165;
    *(v167 + 40) = v166;
    sub_1CF9E6018();

    v168 = sub_1CF9E6888();
    v169 = FPInvalidParameterError();

    v240(0, v169);
    sub_1CEFCCC44(v84, &unk_1EC4BE310, qword_1CF9FCBE0);
    (*v208)(v228, v80);
  }

  else
  {
    v239 = sub_1CF9E5928();
    v170 = v216;
    sub_1CEFCCBDC(v84, v216, &unk_1EC4BE310, qword_1CF9FCBE0);
    if (v158(v170, 1, v80) == 1)
    {
      goto LABEL_83;
    }

    v171 = v80;
    v172 = sub_1CF9E5928();
    v173 = *v208;
    (*v208)(v170, v171);
    v174 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v175 = sub_1CF9E6888();
    v176 = [v174 initWithSuiteName_];

    if (v176)
    {
      v177 = sub_1CF9E6888();
      v178 = [v176 BOOLForKey_];

      v179 = v178 ^ 1;
    }

    else
    {
      v179 = 1;
    }

    v180 = swift_allocObject();
    v181 = v235;
    v182 = v240;
    v183 = v241;
    v180[2] = v235;
    v180[3] = v182;
    v180[4] = v183;
    v247 = sub_1CF326318;
    v248 = v180;
    aBlock = MEMORY[0x1E69E9820];
    v244 = 1107296256;
    v245 = sub_1CF90535C;
    v246 = &block_descriptor_136;
    v184 = _Block_copy(&aBlock);
    v185 = v181;

    v186 = v239;
    [v239 fp:v172 reparentUnderFolder:1 allowBouncing:v179 allowCoordination:v184 completionHandler:?];
    _Block_release(v184);

    sub_1CEFCCC44(v84, &unk_1EC4BE310, qword_1CF9FCBE0);
    v173(v228, v225);
  }
}

void sub_1CF308AA0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(id, id), uint64_t a5)
{
  v48 = a4;
  v49 = a5;
  v47 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v44 - v9;
  v11 = sub_1CF9E5A58();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for LocalDomain();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = (&v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v44 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = &v44 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v44 - v28;
  if (a2)
  {
    swift_getErrorValue();
    v30 = sub_1CF7DBA58(a3 + OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_localDomain, v50, v51);
    v31 = v30;
LABEL_3:
    v48(0, v31);
LABEL_9:

    return;
  }

  sub_1CEFCCBDC(v47, &v44 - v28, &unk_1EC4BE310, qword_1CF9FCBE0);
  v45 = *(v12 + 48);
  v46 = v12 + 48;
  if (v45(v29, 1, v11) == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1CEFFD30C(a3 + OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_localDomain, v22, type metadata accessor for LocalDomain);
    (*(v12 + 16))(v15, v29, v11);
    sub_1CEFFD30C(v22, v19, type metadata accessor for LocalDomain);
    v32 = type metadata accessor for VFSItem(0);
    (*(*(v32 - 8) + 56))(v10, 1, 1, v32);
    v33 = objc_allocWithZone(type metadata accessor for LocalItem(0));
    v34 = sub_1CF001704(v15, v19, v10);
    sub_1CF007BF8(v22, type metadata accessor for LocalDomain);
    v35 = *(v12 + 8);
    v35(v29, v11);
    if (v34)
    {
      sub_1CF4F1D38();
      v52 = 2113085;
      v53 = 0xE300000000000000;
      v36 = [v34 description];
      v37 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v39 = v38;

      MEMORY[0x1D3868CC0](v37, v39);

      v40 = v52;
      v41 = v53;
      if (qword_1EDEA3408 != -1)
      {
        swift_once();
      }

      sub_1CF9E7298();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_1CF9FA450;
      *(v42 + 56) = MEMORY[0x1E69E6158];
      *(v42 + 64) = sub_1CEFD51C4();
      *(v42 + 32) = v40;
      *(v42 + 40) = v41;
      sub_1CF9E6018();

      v30 = v34;
      v48(v34, 0);

      goto LABEL_9;
    }

    sub_1CEFCCBDC(v47, v26, &unk_1EC4BE310, qword_1CF9FCBE0);
    if (v45(v26, 1, v11) != 1)
    {
      v43 = sub_1CF9E5928();
      v35(v26, v11);
      v30 = FPInvalidURLError();

      v31 = v30;
      goto LABEL_3;
    }
  }

  __break(1u);
}

void sub_1CF309098(uint64_t a1, char *a2, void (**a3)(const void *, void *))
{
  v108 = a2;
  v5 = type metadata accessor for FSDirectoryEnumerator();
  v6 = *(v5 - 8);
  v101 = v5;
  v102 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v103 = v8;
  v104 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v109 = (&v97 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF5F8, &qword_1CFA01DB8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v106 = &v97 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  *&v107 = &v97 - v16;
  v110 = sub_1CF9E5A58();
  v17 = *(v110 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v110);
  v100 = &v97 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v105 = &v97 - v21;
  v22 = sub_1CF9E5248();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = sub_1CF9E5268();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v97 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = swift_allocObject();
  v112 = a3;
  *(v111 + 16) = a3;
  v29 = *MEMORY[0x1E6967258];
  v30 = a1;
  v31 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v33 = v32;
  if (v31 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v33 == v34)
  {
    v35 = v112;
    _Block_copy(v112);

LABEL_5:
    sub_1CF9E5208();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CEFD5B1C(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
    sub_1CF9E57D8();
    v37 = sub_1CF9E50D8();
    (*(v25 + 8))(v28, v24);
    v38 = sub_1CF9E57E8();
    v35[2](v35, v38);

LABEL_6:
    v39 = v35;
LABEL_7:
    _Block_release(v39);
    return;
  }

  v99 = v17;
  v36 = sub_1CF9E8048();
  v35 = v112;
  _Block_copy(v112);

  if (v36)
  {
    goto LABEL_5;
  }

  v40 = OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_localDomain;
  v41 = v106;
  sub_1CEFFD89C(&v108[OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_localDomain], 1, v30, v106);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF600, &unk_1CFA01DC0);
  if ((*(*(v42 - 8) + 48))(v41, 1, v42) == 1)
  {
    sub_1CEFCCC44(v41, &qword_1EC4BF5F8, &qword_1CFA01DB8);
    v43 = v107;
    (*(v99 + 56))(v107, 1, 1, v110);
LABEL_11:
    sub_1CEFCCC44(v43, &unk_1EC4BE310, qword_1CF9FCBE0);
    v48 = FPItemNotFoundError();
    if (v48)
    {
      v49 = sub_1CF9E57E8();
    }

    else
    {
      v49 = 0;
    }

    v50 = v112;
    v112[2](v112, v49);

    v39 = v50;
    goto LABEL_7;
  }

  v44 = *(v42 + 48);
  v45 = v99;
  v46 = *(v99 + 32);
  v43 = v107;
  v47 = v110;
  v46(v107, v41, v110);
  (*(v45 + 56))(v43, 0, 1, v47);
  sub_1CEFCCC44(&v41[v44], &unk_1EC4BEC00, &unk_1CF9FCB60);
  if ((*(v45 + 48))(v43, 1, v47) == 1)
  {
    goto LABEL_11;
  }

  v51 = v105;
  v46(v105, v43, v47);
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v52 = sub_1CF9E6AE8();

  if ((v52 & 1) == 0)
  {
    v86 = sub_1CF9E5928();
    v87 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v88 = sub_1CF9E6888();
    v89 = [v87 initWithSuiteName_];

    if (v89)
    {
      v90 = sub_1CF9E6888();
      v91 = [v89 BOOLForKey_];

      v92 = v91 ^ 1;
    }

    else
    {
      v92 = 1;
    }

    v35 = v112;
    v93 = swift_allocObject();
    v94 = v111;
    *(v93 + 16) = sub_1CF067718;
    *(v93 + 24) = v94;
    v118 = sub_1CF326E6C;
    v119 = v93;
    aBlock = MEMORY[0x1E69E9820];
    v115 = 1107296256;
    v116 = sub_1CF00A468;
    v117 = &block_descriptor_246;
    v95 = _Block_copy(&aBlock);

    [v86 fp:v92 deleteAllowingCoordination:v95 completionHandler:?];
    _Block_release(v95);

    (*(v99 + 8))(v51, v110);

    goto LABEL_6;
  }

  v53 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v55 = sub_1CF4F5F14(1uLL, v53, v54);
  v57 = v56;
  v59 = v58;
  v61 = v60;

  v62 = MEMORY[0x1D3868C10](v55, v57, v59, v61);
  v64 = v63;

  aBlock = 0;
  v115 = 0xE000000000000000;
  sub_1CF9E7948();

  aBlock = 0xD000000000000012;
  v115 = 0x80000001CFA3F7C0;
  MEMORY[0x1D3868CC0](v62, v64);

  MEMORY[0x1D3868CC0](0x20656874206F7420, 0xED00006873617274);
  v65 = aBlock;
  v66 = v115;
  if (qword_1EDEA3408 != -1)
  {
LABEL_31:
    swift_once();
  }

  sub_1CF9E7298();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v67 = swift_allocObject();
  v107 = xmmword_1CF9FA450;
  *(v67 + 16) = xmmword_1CF9FA450;
  *(v67 + 56) = MEMORY[0x1E69E6158];
  *(v67 + 64) = sub_1CEFD51C4();
  *(v67 + 32) = v65;
  *(v67 + 40) = v66;
  sub_1CF9E6018();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF290, &unk_1CFA006C0);
  v68 = v99;
  v69 = (*(v99 + 80) + 32) & ~*(v99 + 80);
  v98 = *(v99 + 72);
  v65 = swift_allocObject();
  *(v65 + 16) = v107;
  v70 = v65 + v69;
  v66 = v110;
  v106 = *(v68 + 16);
  *&v107 = v68 + 16;
  (v106)(v65 + v69, v51, v110);
  v71 = v101;
  v72 = v109;
  v73 = v108;
  sub_1CEFFD30C(&v108[v40], v109 + v101[5], type metadata accessor for LocalDomain);
  v74 = (v72 + v71[9]);
  *v74 = 0;
  v74[1] = 0;
  *v72 = v65;
  *(v72 + v71[6]) = 0;
  *(v72 + v71[7]) = 0;
  *(v72 + v71[8]) = -1;
  v75 = swift_allocObject();
  *(v75 + 2) = v73;
  v76 = v104;
  sub_1CEFFD30C(v72, v104, type metadata accessor for FSDirectoryEnumerator);
  v77 = (*(v102 + 80) + 16) & ~*(v102 + 80);
  v78 = (v103 + v77 + 7) & 0xFFFFFFFFFFFFFFF8;
  v79 = swift_allocObject();
  sub_1CEFFC48C(v76, v79 + v77, type metadata accessor for FSDirectoryEnumerator);
  v80 = (v79 + v78);
  *v80 = sub_1CF326E74;
  v80[1] = v75;
  aBlock = 0;
  v120 = 1;
  v40 = *(v65 + 16);
  v81 = v108;
  v108 = v75;

  if (!v40)
  {
LABEL_29:

    v96 = v112;
    v112[2](v112, 0);
    sub_1CF007BF8(v109, type metadata accessor for FSDirectoryEnumerator);
    (*(v99 + 8))(v105, v66);

    v39 = v96;
    goto LABEL_7;
  }

  v51 = 0;
  v82 = (v99 + 8);
  v83 = v100;
  while (1)
  {
    if (v51 >= *(v65 + 16))
    {
      __break(1u);
      goto LABEL_31;
    }

    (v106)(v83, v70, v66);
    if ((v120 & 1) == 0)
    {
      (*v82)(v83, v66);
      goto LABEL_29;
    }

    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    v84 = objc_autoreleasePoolPush();
    MEMORY[0x1EEE9AC00](v84);
    *(&v97 - 8) = v83;
    *(&v97 - 7) = &aBlock;
    *(&v97 - 6) = v109;
    *(&v97 - 5) = &v120;
    *(&v97 - 4) = 7;
    *(&v97 - 3) = sub_1CF326E94;
    *(&v97 - 2) = v79;
    *(&v97 - 8) = 1;
    v85 = v113;
    sub_1CF9E59B8();
    v113 = v85;
    if (v85)
    {
      break;
    }

    ++v51;
    objc_autoreleasePoolPop(v84);
    v66 = v110;
    (*v82)(v83, v110);
    v70 += v98;
    if (v40 == v51)
    {
      goto LABEL_29;
    }
  }

  _Block_release(v112);
  objc_autoreleasePoolPop(v84);
  (*v82)(v83, v110);
  __break(1u);
}

uint64_t sub_1CF309DD8(uint64_t a1, char *a2)
{
  v4 = dispatch_semaphore_create(0);
  sub_1CF31A1E8(*(a1 + OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_itemIdentifier), a2, v4);
  sub_1CF9E74A8();

  return 1;
}

uint64_t sub_1CF309E44(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (a1)
  {
    v3 = a1;
    v4 = [objc_opt_self() defaultManager];
    v5 = *MEMORY[0x1E6967298];
    v8[4] = nullsub_1;
    v8[5] = 0;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 1107296256;
    v8[2] = sub_1CF00A468;
    v8[3] = &block_descriptor_270;
    v6 = _Block_copy(v8);
    [v4 signalEnumeratorForContainerItemIdentifier:v5 completionHandler:v6];
    _Block_release(v6);

    a1 = v3;
  }

  return a2(a1);
}

void sub_1CF309F84(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, void *))
{
  v12 = _Block_copy(aBlock);
  _Block_copy(v12);
  v13 = a3;
  v14 = a1;
  sub_1CF31A77C(v13, v14, v12, a5, a6, a7);
  _Block_release(v12);
  _Block_release(v12);
}

void sub_1CF30A030(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void, void))
{
  v136 = a4;
  v128 = a3;
  v132 = a2;
  v5 = sub_1CF9E53C8();
  v126 = *(v5 - 8);
  v127 = v5;
  v6 = *(v126 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v123 = &v118 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v122 = &v118 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v121 = &v118 - v12;
  v13 = type metadata accessor for LocalDomain();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v119 = (&v118 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v120 = &v118 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF5F8, &qword_1CFA01DB8);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v118 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v130 = &v118 - v24;
  v131 = sub_1CF9E5A58();
  v133 = *(v131 - 8);
  v25 = *(v133 + 64);
  MEMORY[0x1EEE9AC00](v131);
  v124 = &v118 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v125 = &v118 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v129 = &v118 - v30;
  v31 = sub_1CF9E5248();
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v33 = sub_1CF9E5268();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v37 = &v118 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *MEMORY[0x1E6967258];
  v134 = a1;
  v39 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v41 = v40;
  if (v39 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v41 == v42)
  {
    goto LABEL_3;
  }

  v43 = sub_1CF9E8048();

  if (v43)
  {
    goto LABEL_6;
  }

  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v44 = sub_1CF9E6AE8();

  if (v44)
  {
    goto LABEL_6;
  }

  v48 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v50 = v49;
  if (v48 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v50 == v51)
  {
LABEL_3:

LABEL_6:
    sub_1CF9E5208();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CEFD5B1C(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
    sub_1CF9E57D8();
    v45 = sub_1CF9E50D8();
    (*(v34 + 8))(v37, v33);
    v46 = sub_1CF9E57E8();
    v47 = v136;
    (v136)[2](v136, 0, v46);

    goto LABEL_7;
  }

  v52 = sub_1CF9E8048();

  if (v52)
  {
    goto LABEL_6;
  }

  v53 = OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_localDomain;
  sub_1CEFFD89C((v132 + OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_localDomain), 1, v134, v21);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF600, &unk_1CFA01DC0);
  if ((*(*(v54 - 8) + 48))(v21, 1, v54) == 1)
  {
    sub_1CEFCCC44(v21, &qword_1EC4BF5F8, &qword_1CFA01DB8);
    v55 = v130;
    (*(v133 + 56))(v130, 1, 1, v131);
LABEL_14:
    sub_1CEFCCC44(v55, &unk_1EC4BE310, qword_1CF9FCBE0);
    v64 = FPItemNotFoundError();
    if (v64)
    {
      v65 = sub_1CF9E57E8();
    }

    else
    {
      v65 = 0;
    }

    v47 = v136;
    (v136)[2](v136, 0, v65);

    goto LABEL_7;
  }

  v56 = *(v54 + 48);
  v57 = v133;
  v58 = *(v133 + 32);
  v59 = v130;
  v60 = v131;
  v58(v130, v21, v131);
  (*(v57 + 56))(v59, 0, 1, v60);
  v61 = &v21[v56];
  v55 = v59;
  sub_1CEFCCC44(v61, &unk_1EC4BEC00, &unk_1CF9FCB60);
  v62 = (*(v57 + 48))(v59, 1, v60);
  v63 = v135;
  if (v62 == 1)
  {
    goto LABEL_14;
  }

  v66 = v129;
  v67 = (v58)(v129, v55, v60);
  MEMORY[0x1EEE9AC00](v67);
  *(&v118 - 2) = v128;
  v68 = sub_1CF9E5848();
  if ((v68 & 1) == 0)
  {
    _Block_release(v136);
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/os-plugins/LocalStorage/extension/URL+LocalStorageAdditions.swift", 121, 2, 39);
  }

  MEMORY[0x1EEE9AC00](v68);
  *(&v118 - 2) = sub_1CF326E64;
  *(&v118 - 1) = (&v118 - 4);
  sub_1CF9E59B8();
  if (v63)
  {
    v137 = 0;
    v138 = 0xE000000000000000;
    sub_1CF9E7948();

    v137 = 0xD00000000000001CLL;
    v138 = 0x80000001CFA3F7A0;
    sub_1CF9E5A18();
    v69 = sub_1CF9E6888();

    v70 = [v69 fp_prettyPath];

    v71 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v73 = v72;

    MEMORY[0x1D3868CC0](v71, v73);

    v75 = v137;
    v74 = v138;
    v137 = v63;
    v76 = v63;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    v77 = v122;
    v78 = v127;
    if (swift_dynamicCast())
    {
      v79 = *(v126 + 8);
      v126 += 8;
      v79(v77, v78);
      v137 = v63;
      v80 = v63;
      swift_dynamicCast();
      sub_1CEFD5B1C(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
      sub_1CF9E57A8();
      v81 = sub_1CF9E6148();
      if (sub_1CF008830(v81, MEMORY[0x1E69E7CD0]))
      {
        if (qword_1EDEA3408 != -1)
        {
          swift_once();
        }

        sub_1CF9E7298();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
        v82 = swift_allocObject();
        *(v82 + 16) = xmmword_1CF9FA440;
        *(v82 + 56) = MEMORY[0x1E69E6158];
        *(v82 + 64) = sub_1CEFD51C4();
        *(v82 + 32) = v75;
        *(v82 + 40) = v74;
        v83 = v127;
        v84 = v123;
        sub_1CF9E57A8();
        v85 = sub_1CF9E6148();
        v86 = MEMORY[0x1E69E7358];
        *(v82 + 96) = MEMORY[0x1E69E72F0];
        *(v82 + 104) = v86;
        *(v82 + 72) = v85;
      }

      else
      {
        if (qword_1EDEA3408 != -1)
        {
          swift_once();
        }

        sub_1CF9E72A8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
        v108 = swift_allocObject();
        *(v108 + 16) = xmmword_1CF9FA440;
        *(v108 + 56) = MEMORY[0x1E69E6158];
        *(v108 + 64) = sub_1CEFD51C4();
        *(v108 + 32) = v75;
        *(v108 + 40) = v74;
        v83 = v127;
        v84 = v123;
        sub_1CF9E57A8();
        v109 = sub_1CF9E6148();
        v110 = MEMORY[0x1E69E7358];
        *(v108 + 96) = MEMORY[0x1E69E72F0];
        *(v108 + 104) = v110;
        *(v108 + 72) = v109;
      }

      sub_1CF9E6018();

      v79(v84, v83);
      v60 = v131;
    }

    else
    {
      if (qword_1EDEA3408 != -1)
      {
        swift_once();
      }

      sub_1CF9E72A8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v106 = swift_allocObject();
      *(v106 + 16) = xmmword_1CF9FA440;
      *(v106 + 56) = MEMORY[0x1E69E6158];
      *(v106 + 64) = sub_1CEFD51C4();
      *(v106 + 32) = v75;
      *(v106 + 40) = v74;
      v107 = sub_1CF9E57E8();
      *(v106 + 96) = sub_1CEFD57E0(0, &qword_1EDEA3440, 0x1E696ABC0);
      *(v106 + 104) = sub_1CF326DD0();
      *(v106 + 72) = v107;
      sub_1CF9E6018();
    }

    v111 = v133;
    v112 = v129;
    v113 = v63;
    v114 = sub_1CF9E57E8();
    v47 = v136;
    (v136)[2](v136, 0, v114);

    (*(v111 + 8))(v112, v60);
  }

  else
  {
    v87 = *(v57 + 16);
    v88 = v125;
    v87(v125, v66, v60);
    v89 = v132 + v53;
    v90 = v120;
    sub_1CEFFD30C(v89, v120, type metadata accessor for LocalDomain);
    v87(v124, v88, v60);
    v91 = v119;
    sub_1CEFFD30C(v90, v119, type metadata accessor for LocalDomain);
    v92 = type metadata accessor for VFSItem(0);
    v93 = v121;
    (*(*(v92 - 8) + 56))(v121, 1, 1, v92);
    v94 = objc_allocWithZone(type metadata accessor for LocalItem(0));
    v95 = sub_1CF001704(v124, v91, v93);
    sub_1CF007BF8(v90, type metadata accessor for LocalDomain);
    v98 = *(v57 + 8);
    v97 = v57 + 8;
    v96 = v98;
    v98(v125, v60);
    if (v95)
    {
      v133 = v97;
      v137 = 2113085;
      v138 = 0xE300000000000000;
      v99 = [v95 description];
      v100 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v102 = v101;

      MEMORY[0x1D3868CC0](v100, v102);

      v103 = v137;
      v104 = v138;
      if (qword_1EDEA3408 != -1)
      {
        swift_once();
      }

      sub_1CF9E7298();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v105 = swift_allocObject();
      *(v105 + 16) = xmmword_1CF9FA450;
      *(v105 + 56) = MEMORY[0x1E69E6158];
      *(v105 + 64) = sub_1CEFD51C4();
      *(v105 + 32) = v103;
      *(v105 + 40) = v104;
      sub_1CF9E6018();

      v47 = v136;
      (v136)[2](v136, v95, 0);

      v96(v129, v60);
    }

    else
    {
      v115 = sub_1CF9E5928();
      v116 = FPInvalidURLError();

      if (v116)
      {
        v117 = sub_1CF9E57E8();
      }

      else
      {
        v117 = 0;
      }

      v47 = v136;
      (v136)[2](v136, 0, v117);

      v96(v66, v60);
    }
  }

LABEL_7:
  _Block_release(v47);
}

uint64_t sub_1CF30B018(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  sub_1CEFCCBDC(a2, &v12 - v5, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v7 = sub_1CF9E5CF8();
  v8 = *(v7 - 8);
  v9 = 0;
  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    v9 = sub_1CF9E5C48();
    (*(v8 + 8))(v6, v7);
  }

  UsedDate = FPFileMetadataSetLastUsedDate();

  return (UsedDate - 1);
}

void sub_1CF30B2CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (**a5)(void, void, void))
{
  v130 = a5;
  v122 = a3;
  v123 = a4;
  v126 = a2;
  v6 = sub_1CF9E53C8();
  v120 = *(v6 - 8);
  v121 = v6;
  v7 = *(v120 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v117 = &v112 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v116 = &v112 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v115 = &v112 - v13;
  v14 = type metadata accessor for LocalDomain();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v113 = (&v112 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v114 = &v112 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF5F8, &qword_1CFA01DB8);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v112 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = &v112 - v25;
  v125 = sub_1CF9E5A58();
  v127 = *(v125 - 8);
  v27 = *(v127 + 64);
  MEMORY[0x1EEE9AC00](v125);
  v118 = &v112 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v119 = &v112 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v124 = &v112 - v32;
  v33 = sub_1CF9E5248();
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v35 = sub_1CF9E5268();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v39 = &v112 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = *MEMORY[0x1E6967258];
  v128 = a1;
  v41 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v43 = v42;
  if (v41 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v43 == v44)
  {

LABEL_5:
    sub_1CF9E5208();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CEFD5B1C(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
    sub_1CF9E57D8();
    v46 = sub_1CF9E50D8();
    (*(v36 + 8))(v39, v35);
    v47 = sub_1CF9E57E8();
    v48 = v130;
    (v130)[2](v130, 0, v47);

    goto LABEL_6;
  }

  v45 = sub_1CF9E8048();

  if (v45)
  {
    goto LABEL_5;
  }

  v49 = OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_localDomain;
  sub_1CEFFD89C((v126 + OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_localDomain), 1, v128, v22);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF600, &unk_1CFA01DC0);
  if ((*(*(v50 - 8) + 48))(v22, 1, v50) == 1)
  {
    sub_1CEFCCC44(v22, &qword_1EC4BF5F8, &qword_1CFA01DB8);
    (*(v127 + 56))(v26, 1, 1, v125);
LABEL_10:
    sub_1CEFCCC44(v26, &unk_1EC4BE310, qword_1CF9FCBE0);
    v57 = FPItemNotFoundError();
    if (v57)
    {
      v58 = sub_1CF9E57E8();
    }

    else
    {
      v58 = 0;
    }

    v48 = v130;
    (v130)[2](v130, 0, v58);

    goto LABEL_6;
  }

  v51 = *(v50 + 48);
  v52 = v127;
  v53 = *(v127 + 32);
  v54 = v125;
  v53(v26, v22, v125);
  (*(v52 + 56))(v26, 0, 1, v54);
  sub_1CEFCCC44(&v22[v51], &unk_1EC4BEC00, &unk_1CF9FCB60);
  v55 = (*(v52 + 48))(v26, 1, v54);
  v56 = v129;
  if (v55 == 1)
  {
    goto LABEL_10;
  }

  v59 = v124;
  v60 = (v53)(v124, v26, v54);
  MEMORY[0x1EEE9AC00](v60);
  v61 = v123;
  *(&v112 - 2) = v122;
  *(&v112 - 1) = v61;
  v62 = sub_1CF9E5848();
  if ((v62 & 1) == 0)
  {
    _Block_release(v130);
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/os-plugins/LocalStorage/extension/URL+LocalStorageAdditions.swift", 121, 2, 39);
  }

  MEMORY[0x1EEE9AC00](v62);
  *(&v112 - 2) = sub_1CF326E5C;
  *(&v112 - 1) = (&v112 - 4);
  sub_1CF9E59B8();
  if (v56)
  {
    v131 = 0;
    v132 = 0xE000000000000000;
    sub_1CF9E7948();

    v131 = 0xD000000000000016;
    v132 = 0x80000001CFA3F760;
    sub_1CF9E5A18();
    v63 = sub_1CF9E6888();

    v64 = [v63 fp_prettyPath];

    v65 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v67 = v66;

    MEMORY[0x1D3868CC0](v65, v67);

    v69 = v131;
    v68 = v132;
    v131 = v56;
    v70 = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    v71 = v116;
    v72 = v121;
    if (swift_dynamicCast())
    {
      v73 = *(v120 + 8);
      v120 += 8;
      v73(v71, v72);
      v131 = v56;
      v74 = v56;
      swift_dynamicCast();
      sub_1CEFD5B1C(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
      sub_1CF9E57A8();
      v75 = sub_1CF9E6148();
      if (sub_1CF008830(v75, MEMORY[0x1E69E7CD0]))
      {
        if (qword_1EDEA3408 != -1)
        {
          swift_once();
        }

        sub_1CF9E7298();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
        v76 = swift_allocObject();
        *(v76 + 16) = xmmword_1CF9FA440;
        *(v76 + 56) = MEMORY[0x1E69E6158];
        *(v76 + 64) = sub_1CEFD51C4();
        *(v76 + 32) = v69;
        *(v76 + 40) = v68;
        v77 = v121;
        v78 = v117;
        sub_1CF9E57A8();
        v79 = sub_1CF9E6148();
        v80 = MEMORY[0x1E69E7358];
        *(v76 + 96) = MEMORY[0x1E69E72F0];
        *(v76 + 104) = v80;
        *(v76 + 72) = v79;
      }

      else
      {
        if (qword_1EDEA3408 != -1)
        {
          swift_once();
        }

        sub_1CF9E72A8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
        v102 = swift_allocObject();
        *(v102 + 16) = xmmword_1CF9FA440;
        *(v102 + 56) = MEMORY[0x1E69E6158];
        *(v102 + 64) = sub_1CEFD51C4();
        *(v102 + 32) = v69;
        *(v102 + 40) = v68;
        v77 = v121;
        v78 = v117;
        sub_1CF9E57A8();
        v103 = sub_1CF9E6148();
        v104 = MEMORY[0x1E69E7358];
        *(v102 + 96) = MEMORY[0x1E69E72F0];
        *(v102 + 104) = v104;
        *(v102 + 72) = v103;
      }

      sub_1CF9E6018();

      v73(v78, v77);
      v54 = v125;
    }

    else
    {
      if (qword_1EDEA3408 != -1)
      {
        swift_once();
      }

      sub_1CF9E72A8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v100 = swift_allocObject();
      *(v100 + 16) = xmmword_1CF9FA440;
      *(v100 + 56) = MEMORY[0x1E69E6158];
      *(v100 + 64) = sub_1CEFD51C4();
      *(v100 + 32) = v69;
      *(v100 + 40) = v68;
      v101 = sub_1CF9E57E8();
      *(v100 + 96) = sub_1CEFD57E0(0, &qword_1EDEA3440, 0x1E696ABC0);
      *(v100 + 104) = sub_1CF326DD0();
      *(v100 + 72) = v101;
      sub_1CF9E6018();
    }

    v105 = v127;
    v106 = v124;
    v107 = v56;
    v108 = sub_1CF9E57E8();
    v48 = v130;
    (v130)[2](v130, 0, v108);

    (*(v105 + 8))(v106, v54);
  }

  else
  {
    v81 = *(v52 + 16);
    v82 = v119;
    v81(v119, v59, v54);
    v83 = v126 + v49;
    v84 = v114;
    sub_1CEFFD30C(v83, v114, type metadata accessor for LocalDomain);
    v81(v118, v82, v54);
    v85 = v113;
    sub_1CEFFD30C(v84, v113, type metadata accessor for LocalDomain);
    v86 = type metadata accessor for VFSItem(0);
    v87 = v115;
    (*(*(v86 - 8) + 56))(v115, 1, 1, v86);
    v88 = objc_allocWithZone(type metadata accessor for LocalItem(0));
    v89 = sub_1CF001704(v118, v85, v87);
    sub_1CF007BF8(v84, type metadata accessor for LocalDomain);
    v92 = *(v52 + 8);
    v91 = v52 + 8;
    v90 = v92;
    v92(v119, v54);
    if (v89)
    {
      v127 = v91;
      v131 = 2113085;
      v132 = 0xE300000000000000;
      v93 = [v89 description];
      v94 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v96 = v95;

      MEMORY[0x1D3868CC0](v94, v96);

      v97 = v131;
      v98 = v132;
      if (qword_1EDEA3408 != -1)
      {
        swift_once();
      }

      sub_1CF9E7298();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v99 = swift_allocObject();
      *(v99 + 16) = xmmword_1CF9FA450;
      *(v99 + 56) = MEMORY[0x1E69E6158];
      *(v99 + 64) = sub_1CEFD51C4();
      *(v99 + 32) = v97;
      *(v99 + 40) = v98;
      sub_1CF9E6018();

      v48 = v130;
      (v130)[2](v130, v89, 0);

      v90(v124, v54);
    }

    else
    {
      v109 = sub_1CF9E5928();
      v110 = FPInvalidURLError();

      if (v110)
      {
        v111 = sub_1CF9E57E8();
      }

      else
      {
        v111 = 0;
      }

      v48 = v130;
      (v130)[2](v130, 0, v111);

      v90(v59, v54);
    }
  }

LABEL_6:
  _Block_release(v48);
}

uint64_t sub_1CF30C220(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_1CF9E5B48();
  }

  v4 = FPFileMetadataSetTagData();

  return (v4 - 1);
}

void sub_1CF30C360(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void, void))
{
  v127 = a4;
  v120 = a3;
  v123 = a2;
  v5 = sub_1CF9E53C8();
  v118 = *(v5 - 8);
  v119 = v5;
  v6 = *(v118 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v115 = &v110 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v114 = &v110 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v113 = &v110 - v12;
  v13 = type metadata accessor for LocalDomain();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v111 = (&v110 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v112 = &v110 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF5F8, &qword_1CFA01DB8);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v110 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v110 - v24;
  v122 = sub_1CF9E5A58();
  v124 = *(v122 - 8);
  v26 = *(v124 + 64);
  MEMORY[0x1EEE9AC00](v122);
  v116 = &v110 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v117 = &v110 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v121 = &v110 - v31;
  v32 = sub_1CF9E5248();
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v34 = sub_1CF9E5268();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v38 = &v110 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *MEMORY[0x1E6967258];
  v125 = a1;
  v40 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v42 = v41;
  if (v40 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v42 == v43)
  {

LABEL_5:
    sub_1CF9E5208();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CEFD5B1C(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
    sub_1CF9E57D8();
    v45 = sub_1CF9E50D8();
    (*(v35 + 8))(v38, v34);
    v46 = sub_1CF9E57E8();
    v47 = v127;
    (v127)[2](v127, 0, v46);

    goto LABEL_6;
  }

  v44 = sub_1CF9E8048();

  if (v44)
  {
    goto LABEL_5;
  }

  v48 = OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_localDomain;
  sub_1CEFFD89C((v123 + OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_localDomain), 1, v125, v21);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF600, &unk_1CFA01DC0);
  if ((*(*(v49 - 8) + 48))(v21, 1, v49) == 1)
  {
    sub_1CEFCCC44(v21, &qword_1EC4BF5F8, &qword_1CFA01DB8);
    (*(v124 + 56))(v25, 1, 1, v122);
LABEL_10:
    sub_1CEFCCC44(v25, &unk_1EC4BE310, qword_1CF9FCBE0);
    v56 = FPItemNotFoundError();
    if (v56)
    {
      v57 = sub_1CF9E57E8();
    }

    else
    {
      v57 = 0;
    }

    v47 = v127;
    (v127)[2](v127, 0, v57);

    goto LABEL_6;
  }

  v50 = *(v49 + 48);
  v51 = v124;
  v52 = *(v124 + 32);
  v53 = v122;
  v52(v25, v21, v122);
  (*(v51 + 56))(v25, 0, 1, v53);
  sub_1CEFCCC44(&v21[v50], &unk_1EC4BEC00, &unk_1CF9FCB60);
  v54 = (*(v51 + 48))(v25, 1, v53);
  v55 = v126;
  if (v54 == 1)
  {
    goto LABEL_10;
  }

  v58 = v121;
  v59 = (v52)(v121, v25, v53);
  MEMORY[0x1EEE9AC00](v59);
  *(&v110 - 2) = v120;
  v60 = sub_1CF9E5848();
  if ((v60 & 1) == 0)
  {
    _Block_release(v127);
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/os-plugins/LocalStorage/extension/URL+LocalStorageAdditions.swift", 121, 2, 39);
  }

  MEMORY[0x1EEE9AC00](v60);
  *(&v110 - 2) = sub_1CF326E38;
  *(&v110 - 1) = (&v110 - 4);
  sub_1CF9E59B8();
  if (v55)
  {
    v128 = 0;
    v129 = 0xE000000000000000;
    sub_1CF9E7948();

    v128 = 0xD00000000000001BLL;
    v129 = 0x80000001CFA3F740;
    sub_1CF9E5A18();
    v61 = sub_1CF9E6888();

    v62 = [v61 fp_prettyPath];

    v63 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v65 = v64;

    MEMORY[0x1D3868CC0](v63, v65);

    v67 = v128;
    v66 = v129;
    v128 = v55;
    v68 = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    v69 = v114;
    v70 = v119;
    if (swift_dynamicCast())
    {
      v71 = *(v118 + 8);
      v118 += 8;
      v71(v69, v70);
      v128 = v55;
      v72 = v55;
      swift_dynamicCast();
      sub_1CEFD5B1C(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
      sub_1CF9E57A8();
      v73 = sub_1CF9E6148();
      if (sub_1CF008830(v73, MEMORY[0x1E69E7CD0]))
      {
        if (qword_1EDEA3408 != -1)
        {
          swift_once();
        }

        sub_1CF9E7298();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
        v74 = swift_allocObject();
        *(v74 + 16) = xmmword_1CF9FA440;
        *(v74 + 56) = MEMORY[0x1E69E6158];
        *(v74 + 64) = sub_1CEFD51C4();
        *(v74 + 32) = v67;
        *(v74 + 40) = v66;
        v75 = v119;
        v76 = v115;
        sub_1CF9E57A8();
        v77 = sub_1CF9E6148();
        v78 = MEMORY[0x1E69E7358];
        *(v74 + 96) = MEMORY[0x1E69E72F0];
        *(v74 + 104) = v78;
        *(v74 + 72) = v77;
      }

      else
      {
        if (qword_1EDEA3408 != -1)
        {
          swift_once();
        }

        sub_1CF9E72A8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
        v100 = swift_allocObject();
        *(v100 + 16) = xmmword_1CF9FA440;
        *(v100 + 56) = MEMORY[0x1E69E6158];
        *(v100 + 64) = sub_1CEFD51C4();
        *(v100 + 32) = v67;
        *(v100 + 40) = v66;
        v75 = v119;
        v76 = v115;
        sub_1CF9E57A8();
        v101 = sub_1CF9E6148();
        v102 = MEMORY[0x1E69E7358];
        *(v100 + 96) = MEMORY[0x1E69E72F0];
        *(v100 + 104) = v102;
        *(v100 + 72) = v101;
      }

      sub_1CF9E6018();

      v71(v76, v75);
      v53 = v122;
    }

    else
    {
      if (qword_1EDEA3408 != -1)
      {
        swift_once();
      }

      sub_1CF9E72A8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v98 = swift_allocObject();
      *(v98 + 16) = xmmword_1CF9FA440;
      *(v98 + 56) = MEMORY[0x1E69E6158];
      *(v98 + 64) = sub_1CEFD51C4();
      *(v98 + 32) = v67;
      *(v98 + 40) = v66;
      v99 = sub_1CF9E57E8();
      *(v98 + 96) = sub_1CEFD57E0(0, &qword_1EDEA3440, 0x1E696ABC0);
      *(v98 + 104) = sub_1CF326DD0();
      *(v98 + 72) = v99;
      sub_1CF9E6018();
    }

    v103 = v124;
    v104 = v121;
    v105 = v55;
    v106 = sub_1CF9E57E8();
    v47 = v127;
    (v127)[2](v127, 0, v106);

    (*(v103 + 8))(v104, v53);
  }

  else
  {
    v79 = *(v51 + 16);
    v80 = v117;
    v79(v117, v58, v53);
    v81 = v123 + v48;
    v82 = v112;
    sub_1CEFFD30C(v81, v112, type metadata accessor for LocalDomain);
    v79(v116, v80, v53);
    v83 = v111;
    sub_1CEFFD30C(v82, v111, type metadata accessor for LocalDomain);
    v84 = type metadata accessor for VFSItem(0);
    v85 = v113;
    (*(*(v84 - 8) + 56))(v113, 1, 1, v84);
    v86 = objc_allocWithZone(type metadata accessor for LocalItem(0));
    v87 = sub_1CF001704(v116, v83, v85);
    sub_1CF007BF8(v82, type metadata accessor for LocalDomain);
    v90 = *(v51 + 8);
    v89 = v51 + 8;
    v88 = v90;
    v90(v117, v53);
    if (v87)
    {
      v124 = v89;
      v128 = 2113085;
      v129 = 0xE300000000000000;
      v91 = [v87 description];
      v92 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v94 = v93;

      MEMORY[0x1D3868CC0](v92, v94);

      v95 = v128;
      v96 = v129;
      if (qword_1EDEA3408 != -1)
      {
        swift_once();
      }

      sub_1CF9E7298();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v97 = swift_allocObject();
      *(v97 + 16) = xmmword_1CF9FA450;
      *(v97 + 56) = MEMORY[0x1E69E6158];
      *(v97 + 64) = sub_1CEFD51C4();
      *(v97 + 32) = v95;
      *(v97 + 40) = v96;
      sub_1CF9E6018();

      v47 = v127;
      (v127)[2](v127, v87, 0);

      v88(v121, v53);
    }

    else
    {
      v107 = sub_1CF9E5928();
      v108 = FPInvalidURLError();

      if (v108)
      {
        v109 = sub_1CF9E57E8();
      }

      else
      {
        v109 = 0;
      }

      v47 = v127;
      (v127)[2](v127, 0, v109);

      v88(v58, v53);
    }
  }

LABEL_6:
  _Block_release(v47);
}

uint64_t sub_1CF30D444(int a1, uint64_t a2, void *a3, uint64_t a4)
{
  v47 = a2;
  v48 = a4;
  v46 = a3;
  v5 = sub_1CF9E5A58();
  v45 = *(v5 - 8);
  v6 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CF9E5CF8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1CF9E5688();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = sub_1CF9E5678();
  v17 = sub_1CF4F257C(0xD000000000000017, 0x80000001CFA3F6B0, a1, v16);

  v41 = v6;
  v42 = v7;
  v18 = v48;
  v43 = v12;
  v44 = v9;
  if (v17)
  {
    if (*(v17 + 16))
    {
      v20 = v43;
      v19 = v44;
      v9 = v8;
      (*(v44 + 16))(v43, v17 + ((*(v44 + 80) + 32) & ~*(v44 + 80)), v8);

      if (sub_1CF9E5CD8() != -1)
      {
LABEL_10:
        (*(v19 + 8))(v20, v9);
        return 0;
      }

      v21 = v46;
      swift_beginAccess();
      if (!__OFADD__(*v21, 1))
      {
        ++*v21;
        aBlock = 0x676E6974656C6564;
        v50 = 0xE900000000000020;
        sub_1CF9E5A18();
        v22 = sub_1CF9E6888();

        v23 = [v22 fp_prettyPath];

        v24 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v26 = v25;

        MEMORY[0x1D3868CC0](v24, v26);

        v12 = aBlock;
        v7 = v50;
        if (qword_1EDEA3408 == -1)
        {
LABEL_6:
          sub_1CF9E7298();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
          v27 = swift_allocObject();
          *(v27 + 16) = xmmword_1CF9FA450;
          *(v27 + 56) = MEMORY[0x1E69E6158];
          *(v27 + 64) = sub_1CEFD51C4();
          *(v27 + 32) = v12;
          *(v27 + 40) = v7;
          sub_1CF9E6018();

          v28 = sub_1CF9E5928();
          v29 = objc_allocWithZone(MEMORY[0x1E695E000]);
          v30 = sub_1CF9E6888();
          v31 = [v29 initWithSuiteName_];

          if (v31)
          {
            v32 = sub_1CF9E6888();
            v33 = [v31 BOOLForKey_];

            v34 = v33 ^ 1;
          }

          else
          {
            v34 = 1;
          }

          v35 = v45;
          v36 = v42;
          (*(v45 + 16))(v42, v18, v5);
          v37 = (*(v35 + 80) + 16) & ~*(v35 + 80);
          v38 = swift_allocObject();
          (*(v35 + 32))(v38 + v37, v36, v5);
          v53 = sub_1CF326D60;
          v54 = v38;
          aBlock = MEMORY[0x1E69E9820];
          v50 = 1107296256;
          v51 = sub_1CF00A468;
          v52 = &block_descriptor_233;
          v39 = _Block_copy(&aBlock);

          [v28 fp:v34 deleteAllowingCoordination:v39 completionHandler:?];
          _Block_release(v39);

          v20 = v43;
          v19 = v44;
          goto LABEL_10;
        }

LABEL_14:
        swift_once();
        goto LABEL_6;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_14;
  }

  return 0;
}

void sub_1CF30D98C(void *a1)
{
  v2 = sub_1CF9E53C8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v29 - v8;
  if (a1)
  {
    strcpy(v32, "can't delete ");
    HIWORD(v32[1]) = -4864;
    v10 = a1;
    sub_1CF9E5A18();
    v11 = sub_1CF9E6888();

    v12 = [v11 fp_prettyPath];

    v13 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v15 = v14;

    MEMORY[0x1D3868CC0](v13, v15);

    v16 = v32[0];
    v17 = v32[1];
    v32[0] = a1;
    v18 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    if (swift_dynamicCast())
    {
      v31 = *(v3 + 8);
      v31(v9, v2);
      v32[0] = a1;
      v19 = a1;
      swift_dynamicCast();
      sub_1CEFD5B1C(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
      sub_1CF9E57A8();
      v20 = sub_1CF9E6148();
      if (sub_1CF008830(v20, MEMORY[0x1E69E7CD0]))
      {
        if (qword_1EDEA3408 != -1)
        {
          swift_once();
        }

        v30 = qword_1EDEBB5A0;
        sub_1CF9E7298();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
        v21 = swift_allocObject();
        *(v21 + 16) = xmmword_1CF9FA440;
        *(v21 + 56) = MEMORY[0x1E69E6158];
        *(v21 + 64) = sub_1CEFD51C4();
        *(v21 + 32) = v16;
        *(v21 + 40) = v17;
        sub_1CF9E57A8();
        v22 = sub_1CF9E6148();
        v23 = MEMORY[0x1E69E7358];
        *(v21 + 96) = MEMORY[0x1E69E72F0];
        *(v21 + 104) = v23;
        *(v21 + 72) = v22;
      }

      else
      {
        if (qword_1EDEA3408 != -1)
        {
          swift_once();
        }

        v30 = qword_1EDEBB5A0;
        sub_1CF9E72A8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
        v26 = swift_allocObject();
        *(v26 + 16) = xmmword_1CF9FA440;
        *(v26 + 56) = MEMORY[0x1E69E6158];
        *(v26 + 64) = sub_1CEFD51C4();
        *(v26 + 32) = v16;
        *(v26 + 40) = v17;
        sub_1CF9E57A8();
        v27 = sub_1CF9E6148();
        v28 = MEMORY[0x1E69E7358];
        *(v26 + 96) = MEMORY[0x1E69E72F0];
        *(v26 + 104) = v28;
        *(v26 + 72) = v27;
      }

      sub_1CF9E6018();

      v31(v6, v2);
    }

    else
    {
      if (qword_1EDEA3408 != -1)
      {
        swift_once();
      }

      sub_1CF9E72A8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1CF9FA440;
      *(v24 + 56) = MEMORY[0x1E69E6158];
      *(v24 + 64) = sub_1CEFD51C4();
      *(v24 + 32) = v16;
      *(v24 + 40) = v17;
      v25 = sub_1CF9E57E8();
      *(v24 + 96) = sub_1CEFD57E0(0, &qword_1EDEA3440, 0x1E696ABC0);
      *(v24 + 104) = sub_1CF326DD0();
      *(v24 + 72) = v25;
      sub_1CF9E6018();
    }
  }
}

BOOL sub_1CF30DEB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (a3 + 16);
  v7 = sub_1CF9E5848();
  if ((v7 & 1) == 0)
  {
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/os-plugins/LocalStorage/extension/URL+LocalStorageAdditions.swift", 121, 2, 24);
  }

  MEMORY[0x1EEE9AC00](v7);
  sub_1CF9E59B8();
  if (v4)
  {
  }

  swift_beginAccess();
  return *v6 < a4;
}

BOOL sub_1CF30DFC4(void *a1, uint64_t a2, void (**a3)(char *, int *), uint64_t a4, uint64_t a5)
{
  v53 = a4;
  v54 = a5;
  v56 = a3;
  v51 = a2;
  v62 = sub_1CF9E5CF8();
  v57 = *(v62 - 8);
  v6 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v52 = v7;
  v63 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FSDirectoryEnumerator();
  v9 = *(*(v8 - 1) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v50 = (&v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v55 = sub_1CF9E5A58();
  v11 = *(v55 - 8);
  v12 = *(v11 + 8);
  MEMORY[0x1EEE9AC00](v55);
  v61 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v47 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v47 - v18;
  v64 = 0;
  v65 = 0xE000000000000000;
  sub_1CF9E7948();

  v64 = 0xD000000000000012;
  v65 = 0x80000001CFA3F690;
  v60 = a1;
  v20 = [a1 bundleID];
  v21 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v23 = v22;

  MEMORY[0x1D3868CC0](v21, v23);

  v24 = v64;
  v25 = v65;
  if (qword_1EDEA3408 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    sub_1CF9E7298();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v26 = swift_allocObject();
    v59 = xmmword_1CF9FA450;
    *(v26 + 16) = xmmword_1CF9FA450;
    *(v26 + 56) = MEMORY[0x1E69E6158];
    *(v26 + 64) = sub_1CEFD51C4();
    *(v26 + 32) = v24;
    *(v26 + 40) = v25;
    sub_1CF9E6018();

    v27 = [v60 documentsURL];
    sub_1CF9E59D8();

    v48 = v19;
    sub_1CF9E5958();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF290, &unk_1CFA006C0);
    v28 = (v11[80] + 32) & ~v11[80];
    v58 = *(v11 + 9);
    v29 = swift_allocObject();
    *(v29 + 16) = v59;
    v30 = v29 + v28;
    v31 = *(v11 + 2);
    v49 = v16;
    v60 = v11 + 16;
    *&v59 = v31;
    v31(v29 + v28, v16, v55);
    v32 = v50;
    sub_1CEFFD30C(v51 + OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_localDomain, v50 + v8[5], type metadata accessor for LocalDomain);
    v33 = (v32 + v8[9]);
    *v33 = 0;
    v33[1] = 0;
    *v32 = v29;
    *(v32 + v8[6]) = 0;
    *(v32 + v8[7]) = 0;
    *(v32 + v8[8]) = -1;
    v34 = v57;
    v35 = v62;
    (*(v57 + 16))(v63, v56, v62);
    v36 = (*(v34 + 80) + 16) & ~*(v34 + 80);
    v37 = (v52 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
    v16 = swift_allocObject();
    (*(v34 + 32))(&v16[v36], v63, v35);
    v38 = v54;
    *&v16[v37] = v53;
    v62 = v29;
    v63 = v16;
    *&v16[(v37 + 15) & 0xFFFFFFFFFFFFFFF8] = v38;
    v64 = 0;
    v66 = 1;
    v39 = *(v29 + 16);

    v8 = v55;
    v57 = v39;
    if (!v39)
    {
      break;
    }

    v25 = 0;
    v19 = 0;
    v56 = (v11 + 8);
    while (v25 < *(v62 + 16))
    {
      v40 = v61;
      (v59)(v61, v30, v8);
      if ((v66 & 1) == 0)
      {
        (*v56)(v40, v8);
        goto LABEL_9;
      }

      v16 = v11;
      v41 = v8;
      objc_autoreleasePoolPop(objc_autoreleasePoolPush());
      v42 = objc_autoreleasePoolPush();
      MEMORY[0x1EEE9AC00](v42);
      *(&v47 - 8) = v40;
      *(&v47 - 7) = &v64;
      v44 = v43;
      *(&v47 - 6) = v43;
      *(&v47 - 5) = &v66;
      *(&v47 - 4) = 7;
      *(&v47 - 3) = sub_1CF327420;
      *(&v47 - 2) = v63;
      *(&v47 - 8) = 1;
      sub_1CF9E59B8();
      ++v25;
      objc_autoreleasePoolPop(v42);
      v8 = v41;
      (*v56)(v40, v41);
      v30 += v58;
      v32 = v44;
      v11 = v16;
      if (v57 == v25)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_11:
    swift_once();
  }

LABEL_9:

  sub_1CF007BF8(v32, type metadata accessor for FSDirectoryEnumerator);
  v45 = *(v11 + 1);
  v45(v49, v8);
  v45(v48, v8);
  swift_beginAccess();
  return *(v24 + 16) < v54;
}

void sub_1CF30E7C0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v57 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v56 = &v46 - v10;
  v11 = type metadata accessor for LocalDomain();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v53 = (&v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v54 = &v46 - v15;
  v55 = sub_1CF9E5A58();
  v52 = *(v55 - 8);
  v16 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v51 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v46 - v19;
  v21 = type metadata accessor for LocalContainerMonitor(0);
  v22 = v21;
  v23 = a1 + OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_localDomain;
  if (qword_1EDEA56B8 != -1)
  {
    v21 = swift_once();
  }

  MEMORY[0x1EEE9AC00](v21);
  *(&v46 - 2) = v22;
  *(&v46 - 1) = v23;
  v24 = sub_1CF9E7398();
  v25 = v58;
  v26 = *&v58[OBJC_IVAR____TtC18FileProviderDaemon21LocalContainerMonitor_queue];
  MEMORY[0x1EEE9AC00](v24);
  *(&v46 - 4) = v25;
  *(&v46 - 3) = a2;
  v49 = a2;
  v50 = a3;
  *(&v46 - 2) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF640, qword_1CFA01DD8);
  sub_1CF9E7398();
  v27 = v58;
  if (v58)
  {
    v47 = v25;
    v48 = v4;
    v28 = [v58 documentsURL];
    v29 = v20;
    sub_1CF9E59D8();

    v30 = v54;
    sub_1CEFFD30C(v23, v54, type metadata accessor for LocalDomain);
    v31 = v51;
    v32 = v52;
    v33 = v55;
    (*(v52 + 16))(v51, v29, v55);
    v34 = v53;
    sub_1CEFFD30C(v30, v53, type metadata accessor for LocalDomain);
    v35 = type metadata accessor for VFSItem(0);
    v36 = v56;
    (*(*(v35 - 8) + 56))(v56, 1, 1, v35);
    v37 = objc_allocWithZone(type metadata accessor for LocalItem(0));
    v38 = sub_1CF001704(v31, v34, v36);
    sub_1CF007BF8(v30, type metadata accessor for LocalDomain);
    (*(v32 + 8))(v29, v33);
    if (v38)
    {
      v39 = v57;
      v40 = v57[2];
      v41 = v38;
      v40(v39, v41, 0);

      v42 = v41;
      v43 = v47;
      goto LABEL_11;
    }

    v25 = v47;
  }

  v44 = sub_1CF9E6888();
  v45 = sub_1CF9E6888();
  v41 = FPInvalidParameterError();

  if (v41)
  {
    v43 = sub_1CF9E57E8();
  }

  else
  {
    v43 = 0;
  }

  v39 = v57;
  (v57[2])(v57, 0, v43);
  v42 = v25;
LABEL_11:

  _Block_release(v39);
}

uint64_t sub_1CF30ED50(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v64 = a3;
  v67 = a5;
  v68 = a4;
  v66 = a2;
  v63 = type metadata accessor for FSDirectoryEnumerator();
  v6 = *(*(v63 - 8) + 64);
  MEMORY[0x1EEE9AC00](v63);
  v73 = (&v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v74 = &v59 - v10;
  v11 = type metadata accessor for LocalDomain();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v70 = (&v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v59 - v15;
  v17 = sub_1CF9E5A58();
  v18 = *(v17 - 8);
  v19 = v18[8];
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v59 - v23;
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v59 - v27;
  v29 = v18[2];
  v62 = a1;
  v29(&v59 - v27, a1, v17, v26);
  v60 = OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_localDomain;
  sub_1CEFFD30C(v66 + OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_localDomain, v16, type metadata accessor for LocalDomain);
  v71 = v29;
  v72 = v18 + 2;
  (v29)(v24, v28, v17);
  v30 = v17;
  v31 = v70;
  sub_1CEFFD30C(v16, v70, type metadata accessor for LocalDomain);
  v32 = type metadata accessor for VFSItem(0);
  v33 = v74;
  (*(*(v32 - 8) + 56))(v74, 1, 1, v32);
  v34 = objc_allocWithZone(type metadata accessor for LocalItem(0));
  v35 = sub_1CF001704(v24, v31, v33);
  sub_1CF007BF8(v16, type metadata accessor for LocalDomain);
  v61 = v18;
  v36 = v18[1];
  v74 = v30;
  v69 = v36;
  v70 = v18 + 1;
  v36(v28, v30);
  if (!v35)
  {
    return 1;
  }

  v37 = v67;
  v38 = sub_1CF9E6888();
  v39 = v64;
  [v64 put_];

  v40 = [v35 description];
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();

  v41 = sub_1CF9E6888();

  [v39 put_];

  v42 = sub_1CF9E6888();
  [v39 put_];

  v59 = v35;
  v43 = v35[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_isFolder];
  v44 = v65;
  if (v43 != 1)
  {
LABEL_13:

    return 1;
  }

  v75 = v68;
  v76 = v37;

  MEMORY[0x1D3868CC0](8224, 0xE200000000000000);
  v45 = v76;
  v68 = v75;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF290, &unk_1CFA006C0);
  v46 = (*(v61 + 80) + 32) & ~*(v61 + 80);
  v67 = v61[9];
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_1CF9FA450;
  v48 = v47 + v46;
  v71(v47 + v46, v62, v74);
  v49 = v63;
  v50 = v66;
  v51 = v73;
  sub_1CEFFD30C(v66 + v60, v73 + *(v63 + 20), type metadata accessor for LocalDomain);
  v52 = (v51 + v49[9]);
  *v52 = 0;
  v52[1] = 0;
  *v51 = v47;
  *(v51 + v49[6]) = 0;
  *(v51 + v49[7]) = 0;
  *(v51 + v49[8]) = -1;
  v53 = swift_allocObject();
  v53[2] = v50;
  v53[3] = v39;
  v53[4] = v68;
  v53[5] = v45;
  v75 = 0;
  v77 = 1;
  v68 = v47;
  v54 = *(v47 + 16);
  v55 = v50;
  v56 = v39;
  v66 = v45;

  if (!v54)
  {
LABEL_12:

    sub_1CF007BF8(v73, type metadata accessor for FSDirectoryEnumerator);

    goto LABEL_13;
  }

  v57 = 0;
  while (v57 < *(v68 + 16))
  {
    v71(v21, v48, v74);
    if ((v77 & 1) == 0)
    {
      v69(v21, v74);
      goto LABEL_12;
    }

    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    v51 = objc_autoreleasePoolPush();
    MEMORY[0x1EEE9AC00](v51);
    *(&v59 - 8) = v21;
    *(&v59 - 7) = &v75;
    *(&v59 - 6) = v73;
    *(&v59 - 5) = &v77;
    *(&v59 - 4) = 7;
    *(&v59 - 3) = sub_1CF3272EC;
    *(&v59 - 2) = v53;
    *(&v59 - 8) = 1;
    sub_1CF9E59B8();
    if (v44)
    {
      goto LABEL_16;
    }

    v44 = 0;
    ++v57;
    objc_autoreleasePoolPop(v51);
    v69(v21, v74);
    v48 += v67;
    if (v54 == v57)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_16:
  objc_autoreleasePoolPop(v51);
  result = (v69)(v21, v74);
  __break(1u);
  return result;
}

uint64_t sub_1CF30F448(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v75 = a6;
  v85 = sub_1CF9E5A58();
  v76 = *(v85 - 8);
  v11 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v85);
  v67 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for FSDirectoryEnumerator();
  v13 = *(*(v74 - 8) + 64);
  MEMORY[0x1EEE9AC00](v74);
  v84 = (&v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for LocalContainer(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = (&v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v87 = 8224;
  v88 = 0xE200000000000000;
  MEMORY[0x1D3868CC0](a3, a4, v18);
  MEMORY[0x1D3868CC0](2120480, 0xE300000000000000);
  v21 = sub_1CF9E6888();

  v22 = &selRef_initWithTarget_;
  [a5 put_];

  [a5 startFgColor_];
  v23 = type metadata accessor for LocalContainerSnapshot(0);
  v24 = *(v23 + 28);
  sub_1CF9E5D98();
  sub_1CEFD5B1C(&qword_1EDEAECB0, MEMORY[0x1E69695A8]);
  sub_1CF9E7F98();
  v25 = sub_1CF9E6888();

  [a5 put_];

  [a5 reset];
  v26 = sub_1CF9E6888();
  [a5 put_];

  v87 = *(a1 + *(v23 + 32));

  sub_1CF315B94(&v87);
  v79 = *(v87 + 16);
  if (v79)
  {
    v27 = 0;
    v28 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v66 = v87;
    v78 = (v87 + v28);
    v73 = OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_localDomain;
    v83 = v76 + 16;
    v77 = *(v16 + 72);
    v81 = (v76 + 8);
    v72 = xmmword_1CF9FA450;
    v71 = a5;
    v70 = a2;
    v69 = v15;
    v68 = v20;
    while (1)
    {
      v80 = v27;
      sub_1CEFFD30C(&v78[v77 * v27], v20, type metadata accessor for LocalContainer);
      v29 = sub_1CF9E6888();
      [a5 v22[394]];

      [a5 startFgColor:9 attr:2];
      v30 = *v20;
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v31 = sub_1CF9E6AE8();

      if (v31)
      {
        v32 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v34 = sub_1CF4F5F14(1uLL, v32, v33);
        v36 = v35;
        v38 = v37;
        v40 = v39;

        v41 = v38;
        v22 = &selRef_initWithTarget_;
        MEMORY[0x1D3868C10](v34, v36, v41, v40);
      }

      else
      {
        NSFileProviderItemIdentifier.description.getter();
      }

      v42 = sub_1CF9E6888();

      [a5 v22[394]];

      [a5 reset];
      v87 = 32;
      v88 = 0xE100000000000000;
      v43 = *(v15 + 28);
      v44 = sub_1CF9E5928();
      v45 = [v44 fp_shortDescription];

      v46 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v48 = v47;

      MEMORY[0x1D3868CC0](v46, v48);

      MEMORY[0x1D3868CC0](10, 0xE100000000000000);
      v49 = sub_1CF9E6888();

      [a5 v22[394]];

      if (a2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF290, &unk_1CFA006C0);
        v50 = v76;
        v51 = (*(v76 + 80) + 32) & ~*(v76 + 80);
        v82 = *(v76 + 72);
        v52 = swift_allocObject();
        *(v52 + 16) = v72;
        v53 = v52 + v51;
        v54 = *(v50 + 16);
        v54(v52 + v51, v20 + v43, v85);
        v56 = v74;
        v55 = v75;
        v57 = v84;
        sub_1CEFFD30C(v75 + v73, v84 + *(v74 + 20), type metadata accessor for LocalDomain);
        v58 = (v57 + v56[9]);
        *v58 = 0;
        v58[1] = 0;
        *v57 = v52;
        *(v57 + v56[6]) = 0;
        *(v57 + v56[7]) = 0;
        *(v57 + v56[8]) = -1;
        v59 = swift_allocObject();
        v59[2] = v55;
        v59[3] = a5;
        v59[4] = 0x2020202020202020;
        v59[5] = 0xE800000000000000;
        v87 = 0;
        v86 = 1;
        v60 = *(v52 + 16);
        v61 = v55;
        v62 = a5;
        if (v60)
        {
          v63 = 0;
          v64 = v67;
          while (v63 < *(v52 + 16))
          {
            v54(v64, v53, v85);
            if ((v86 & 1) == 0)
            {
              (*v81)(v64, v85);
              goto LABEL_4;
            }

            objc_autoreleasePoolPop(objc_autoreleasePoolPush());
            v56 = objc_autoreleasePoolPush();
            MEMORY[0x1EEE9AC00](v56);
            *(&v66 - 8) = v64;
            *(&v66 - 7) = &v87;
            *(&v66 - 6) = v84;
            *(&v66 - 5) = &v86;
            *(&v66 - 4) = 7;
            *(&v66 - 3) = sub_1CF326B3C;
            *(&v66 - 2) = v59;
            *(&v66 - 8) = 1;
            sub_1CF9E59B8();
            ++v63;
            objc_autoreleasePoolPop(v56);
            (*v81)(v64, v85);
            v53 += v82;
            if (v60 == v63)
            {
              goto LABEL_4;
            }
          }

          __break(1u);
          objc_autoreleasePoolPop(v56);
          (*v81)(v64, v85);
          __break(1u);

          __break(1u);
          return result;
        }

LABEL_4:

        sub_1CF007BF8(v84, type metadata accessor for FSDirectoryEnumerator);
        a5 = v71;
        LOBYTE(a2) = v70;
        v15 = v69;
        v20 = v68;
        v22 = &selRef_initWithTarget_;
      }

      v27 = v80 + 1;
      sub_1CF007BF8(v20, type metadata accessor for LocalContainer);
      if (v27 == v79)
      {
      }
    }
  }
}

uint64_t sub_1CF30FD54@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1CF9E5CF8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v147 = &v128 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v145 = &v128 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v146 = &v128 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v144 = &v128 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v136 = &v128 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v135 = &v128 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v134 = &v128 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v152 = &v128 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v133 = &v128 - v24;
  MEMORY[0x1EEE9AC00](v25);
  *&v132 = &v128 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v131 = &v128 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v149 = &v128 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v130 = &v128 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v129 = &v128 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v128 = &v128 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v154 = &v128 - v38;
  v156 = sub_1CF9E5FF8();
  v39 = *(v156 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v156);
  v150 = &v128 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v128 - v43;
  *&v46 = MEMORY[0x1EEE9AC00](v45).n128_u64[0];
  v153 = &v128 - v47;
  if (([a1 respondsToSelector_] & 1) == 0 || (v48 = objc_msgSend(a1, sel_documentSize)) == 0)
  {
    sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
    v48 = sub_1CF9E7548();
  }

  v140 = sub_1CF9E8198();

  if (fpfs_supports_vfs_ignore_permissions_iopolicy())
  {
    if ([a1 respondsToSelector_])
    {
      v49 = ([a1 fileSystemFlags] << 7) & 0x100;
    }

    else
    {
      v49 = 0;
    }
  }

  else
  {
    v49 = 292;
  }

  if ([a1 respondsToSelector_])
  {
    v49 |= (32 * [a1 fileSystemFlags]) & 0x80;
  }

  if ([a1 respondsToSelector_])
  {
    v49 |= ([a1 fileSystemFlags] & 1) << 6;
  }

  if ([a1 respondsToSelector_])
  {
    v143 = ([a1 fileSystemFlags] >> 3) & 1;
  }

  else
  {
    v143 = 0;
  }

  if ([a1 respondsToSelector_])
  {
    v142 = ([a1 fileSystemFlags] >> 4) & 1;
  }

  else
  {
    v142 = 0;
  }

  v50 = [a1 respondsToSelector_];
  v155 = v5;
  if (v50)
  {
    v51 = [a1 extendedAttributes];
    v141 = sub_1CF9E6638();
  }

  else
  {
    v141 = 0;
  }

  v52 = v4;
  v139 = v49;
  if ([a1 respondsToSelector_])
  {
    v53 = [a1 contentType];
    sub_1CF9E5F48();

    v54 = v44;
    v55 = v156;
    (*(v39 + 32))(v153, v54, v156);
    v56 = v150;
    sub_1CF9E5F18();
    LOBYTE(v53) = sub_1CF9E5FB8();
    v57 = *(v39 + 8);
    v57(v56, v55);
    v151 = v39 + 8;
    v148 = v57;
    if (v53)
    {
      v137 = 0x200000000;
    }

    else
    {
      sub_1CF9E5FC8();
      v58 = sub_1CF9E5FB8();
      v57(v56, v55);
      if (v58)
      {
        v137 = 0x300000000;
      }

      else
      {
        sub_1CF9E5FD8();
        v59 = sub_1CF9E5FB8();
        v57(v56, v55);
        if ((v59 & 1) != 0 && (v60 = v150, sub_1CF9E5FA8(), v61 = sub_1CF9E5FB8(), v57(v60, v55), (v61 & 1) == 0))
        {
          v137 = 0x100000001;
        }

        else
        {
          v137 = 0;
        }
      }
    }

    v62 = v152;
    v63 = v52;
    if ([a1 respondsToSelector_])
    {
      v64 = [a1 tagData];
      v65 = v155;
      if (v64)
      {
        v66 = v64;
        v67 = sub_1CF9E5B88();
        v69 = v68;

        v70 = sub_1CF9E5B48();
        v71 = FPGetTagsFromTagsData();

        if (v71)
        {
          sub_1CEFD57E0(0, &unk_1EC4C1190, 0x1E6967428);
          v72 = sub_1CF9E6D48();
        }

        else
        {
          v72 = 0;
        }

        v138 = sub_1CEFF6864(v72);
        sub_1CEFE4714(v67, v69);
        v62 = v152;
        v55 = v156;
      }

      else
      {
        v138 = 0;
      }
    }

    else
    {
      v138 = 0;
      v65 = v155;
    }

    if ([a1 respondsToSelector_])
    {
      v73 = [a1 creationDate];
      if (v73)
      {
        v74 = v130;
        v75 = v73;
        sub_1CF9E5CB8();

        v76 = 0;
      }

      else
      {
        v76 = 1;
        v74 = v130;
      }

      v77 = *(v65 + 56);
      v77(v74, v76, 1, v63);
      v78 = v129;
      sub_1CEFE55D0(v74, v129, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      v79 = v78;
      v80 = v128;
      sub_1CEFE55D0(v79, v128, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      sub_1CEFE55D0(v80, v154, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      v55 = v156;
    }

    else
    {
      v77 = *(v65 + 56);
      v77(v154, 1, 1, v63);
    }

    if ([a1 respondsToSelector_])
    {
      v81 = [a1 contentModificationDate];
      if (v81)
      {
        v82 = v133;
        v83 = v81;
        sub_1CF9E5CB8();

        v84 = 0;
      }

      else
      {
        v84 = 1;
        v82 = v133;
      }

      v77(v82, v84, 1, v63);
      v85 = v132;
      sub_1CEFE55D0(v82, v132, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      v86 = v85;
      v87 = v131;
      sub_1CEFE55D0(v86, v131, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      sub_1CEFE55D0(v87, v149, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      v55 = v156;
    }

    else
    {
      v77(v149, 1, 1, v63);
    }

    v88 = [a1 respondsToSelector_];
    v89 = v150;
    if (v88)
    {
      v90 = [a1 lastUsedDate];
      v91 = v62;
      if (v90)
      {
        v92 = v136;
        v93 = v90;
        sub_1CF9E5CB8();

        v94 = 0;
      }

      else
      {
        v94 = 1;
        v92 = v136;
      }

      v77(v92, v94, 1, v63);
      v95 = v135;
      sub_1CEFE55D0(v92, v135, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      v96 = v95;
      v97 = v134;
      sub_1CEFE55D0(v96, v134, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      sub_1CEFE55D0(v97, v91, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      v55 = v156;
    }

    else
    {
      v77(v62, 1, 1, v63);
    }

    if (([a1 respondsToSelector_] & 1) != 0 && (v98 = objc_msgSend(a1, sel_favoriteRank)) != 0)
    {
      v99 = v98;
      v136 = [v98 unsignedLongLongValue];

      LODWORD(v135) = 0;
    }

    else
    {
      v136 = 0;
      LODWORD(v135) = 1;
    }

    sub_1CF9E5FA8();
    v100 = sub_1CF9E5FB8();
    v148(v89, v55);
    LODWORD(v150) = [a1 respondsToSelector_];
    if (v150)
    {
      v134 = [a1 typeAndCreator];
    }

    else
    {
      v134 = 0;
    }

    v101 = v145;
    v102 = v149;
    v103 = type metadata accessor for ItemMetadata();
    v104 = (a2 + v103[14]);
    *v104 = 0;
    *(v104 + 1) = 0;
    v145 = v104;
    *(a2 + v103[17]) = 2;
    v149 = v103[23];
    *(a2 + v149) = 6;
    v131 = v103[30];
    v77(a2 + v131, 1, 1, v63);
    v133 = (a2 + v103[34]);
    v132 = xmmword_1CF9F4E20;
    *v133 = xmmword_1CF9F4E20;
    v105 = (a2 + v103[38]);
    v106 = v137 | v100;
    *v105 = 0;
    v105[1] = 0;
    if (fpfs_supports_vfs_ignore_permissions_iopolicy())
    {
      v107 = v139 | 0x40;
      if ((v106 & 1) == 0)
      {
        v107 = v139;
      }
    }

    else
    {
      v108 = v139 | (v139 >> 2) & 0x40 | 0x80;
      if ((v106 & 1) == 0)
      {
        LOWORD(v108) = v139;
      }

      v107 = (4 * v108) & 0x100 | v108;
    }

    v109 = v144;
    v110 = a2 + v103[37];
    *a2 = BYTE4(v137);
    *(a2 + v103[20]) = 0;
    *(a2 + v103[28]) = v100 & 1;
    *(a2 + v103[29]) = v100 & 1;
    v111 = v140;
    *(a2 + v103[26]) = v140;
    *(a2 + v103[27]) = v111;
    *(a2 + 4) = 0;
    *(a2 + 8) = 1;
    *v110 = 0;
    *(v110 + 4) = 1;
    *(a2 + 10) = v107;
    sub_1CEFCCBDC(v154, v109, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v112 = *(v65 + 48);
    if (v112(v109, 1, v63) == 1)
    {
      sub_1CF9E5C88();
      if (v112(v109, 1, v63) != 1)
      {
        sub_1CEFCCC44(v109, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      }
    }

    else
    {
      (*(v65 + 32))(v101, v109, v63);
    }

    v114 = v65 + 32;
    v113 = *(v65 + 32);
    v113(a2 + v103[7], v101, v63);
    v115 = v146;
    sub_1CEFCCBDC(v102, v146, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v116 = v112(v115, 1, v63);
    v155 = v114;
    if (v116 == 1)
    {
      v117 = v147;
      sub_1CF9E5C88();
      sub_1CEFCCC44(v102, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      sub_1CEFCCC44(v154, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      v148(v153, v156);
      if (v112(v115, 1, v63) != 1)
      {
        sub_1CEFCCC44(v115, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      }
    }

    else
    {
      sub_1CEFCCC44(v102, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      sub_1CEFCCC44(v154, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      v148(v153, v156);
      v118 = v147;
      v113(v147, v115, v63);
      v117 = v118;
    }

    v119 = v103[31];
    v120 = a2 + v103[32];
    v121 = v103[33];
    v122 = a2 + v103[35];
    v113(a2 + v103[8], v117, v63);
    *(a2 + v103[9]) = 0;
    v123 = v142;
    *(a2 + v103[10]) = v143;
    *(a2 + v103[13]) = v123;
    *(a2 + v103[19]) = 0;
    *(a2 + v103[21]) = 0;
    *(a2 + v103[15]) = 0;
    *(a2 + v103[16]) = 0;
    *(a2 + v103[11]) = 0;
    *(a2 + v103[12]) = 0;
    *(a2 + v103[18]) = 0;
    sub_1CEFE4804(v152, a2 + v131);
    *(a2 + v119) = v138;
    *v120 = v136;
    *(v120 + 8) = v135;
    *(a2 + v121) = v141;
    v124 = v145;
    v125 = *(v145 + 1);

    *v124 = 0;
    v124[1] = 0;
    v126 = v133;
    result = sub_1CEFE48D8(*v133, *(v133 + 1));
    *v126 = v132;
    *v122 = v134;
    *(v122 + 8) = (v150 & 1) == 0;
    *(a2 + v103[36]) = 0;
    *(a2 + v103[24]) = 0;
    *(a2 + v103[25]) = 0;
    *(a2 + v103[22]) = 0;
    *(a2 + v149) = 6;
  }

  else
  {
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

void sub_1CF310E18(uint64_t a1, void *a2, void (*a3)(uint64_t, void, void, void *), uint64_t a4, char *a5, void *a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v42 = a8;
  v43 = a7;
  v48 = a4;
  v41 = a9;
  v44 = sub_1CF9E63A8();
  v47 = *(v44 - 8);
  v14 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v16 = v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1CF9E6448();
  v45 = *(v17 - 8);
  v46 = v17;
  v18 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v25 = v40 - v24;
  if (a2)
  {
    v26 = a2;
    v27 = [a6 itemIdentifier];
    v38 = sub_1CEFFCBA8(v27);

    v39 = a2;
    a3(v38, 0, 0, a2);

    swift_unknownObjectRelease();
  }

  else
  {
    v40[1] = *&a5[OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_queue];
    sub_1CEFCCBDC(a10, v25, &unk_1EC4BE310, qword_1CF9FCBE0);
    v28 = (*(v22 + 80) + 56) & ~*(v22 + 80);
    v29 = swift_allocObject();
    v29[2] = a5;
    v29[3] = a6;
    v30 = v42;
    v31 = v43;
    v29[4] = v43;
    v29[5] = v30;
    v29[6] = v41;
    sub_1CEFE55D0(v25, v29 + v28, &unk_1EC4BE310, qword_1CF9FCBE0);
    v32 = (v29 + ((v23 + v28 + 7) & 0xFFFFFFFFFFFFFFF8));
    v33 = v48;
    *v32 = a3;
    v32[1] = v33;
    aBlock[4] = sub_1CF326324;
    aBlock[5] = v29;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CEFCA444;
    aBlock[3] = &block_descriptor_142_0;
    v34 = _Block_copy(aBlock);
    v35 = a5;
    swift_unknownObjectRetain();
    v36 = v31;

    sub_1CF9E63F8();
    v49 = MEMORY[0x1E69E7CC0];
    sub_1CEFD5B1C(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
    sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
    v37 = v44;
    sub_1CF9E77B8();
    MEMORY[0x1D3869630](0, v20, v16, v34);
    _Block_release(v34);
    (*(v47 + 8))(v16, v37);
    (*(v45 + 8))(v20, v46);
  }
}

uint64_t sub_1CF3112CC(char *a1, void *a2, uint64_t (*a3)(), uint64_t a4, uint64_t a5, uint64_t (*a6)(), void (*a7)(uint64_t, void, void, id), _OWORD *a8)
{
  v14 = a4 & ~a5;

  sub_1CF31C694(a2, a3, v14 & 0xFFFFFFFFFFFFFFFBLL, a6, a1, a7, a8);
}

uint64_t sub_1CF311358@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = aBlock - v6;
  sub_1CEFCCBDC(a1, aBlock - v6, &unk_1EC4BE310, qword_1CF9FCBE0);
  v8 = sub_1CF9E5A58();
  v9 = *(v8 - 8);
  result = (*(v9 + 48))(v7, 1, v8);
  if (result != 1)
  {
    sub_1CF9E5A18();
    (*(v9 + 8))(v7, v8);
    v11 = swift_allocObject();
    *(v11 + 16) = sub_1CF36581C;
    *(v11 + 24) = 0;
    aBlock[4] = sub_1CF19BE7C;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CF9B8AD8;
    aBlock[3] = &block_descriptor_187;
    v12 = _Block_copy(aBlock);

    sub_1CF9E6978();

    v13 = fpfs_set_metadata();

    _Block_release(v12);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      *a2 = v13;
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF3115C4(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v50 = a5;
  v51 = a2;
  v10 = sub_1CF9E53C8();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v12);
  v49 = &v39 - v13;
  v14 = sub_1CF9E5248();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v46 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1CF9E5268();
  v47 = *(v17 - 8);
  v48 = v17;
  v18 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v45 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF51B588(&v52);
  v20 = v53;
  v21 = v56;
  if (v54)
  {

    v22 = a3;
    v20 = a4;
  }

  else
  {
    v22 = v52;
    if (v56)
    {
      v23 = a6;
      v24 = v55;
      MEMORY[0x1D3868CC0](46, 0xE100000000000000);
      v25 = v24;
      a6 = v23;
      MEMORY[0x1D3868CC0](v25, v21);

      v22 = v52;
      v20 = v53;
    }
  }

  if (v22 == a3 && v20 == a4 || (v26 = v22, (sub_1CF9E8048() & 1) != 0))
  {
  }

  else
  {
    v44 = a1;
    v28 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v29 = sub_1CF9E6888();
    v30 = [v28 initWithSuiteName_];

    if (v30 && (v43 = a6, v31 = sub_1CF9E6888(), v32 = [v30 BOOLForKey_], v30, v31, (v32 & 1) != 0))
    {
      v52 = 0;
      v53 = 0xE000000000000000;
      sub_1CF9E7948();

      v52 = 0xD00000000000001BLL;
      v53 = 0x80000001CFA3F4F0;
      MEMORY[0x1D3868CC0](v26, v20);
      v33 = v52;
      v34 = v53;
      if (qword_1EDEA3408 != -1)
      {
        swift_once();
      }

      sub_1CF9E7298();
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v35 = swift_allocObject();
      v41 = xmmword_1CF9FA450;
      *(v35 + 16) = xmmword_1CF9FA450;
      *(v35 + 56) = MEMORY[0x1E69E6158];
      v40 = sub_1CEFD51C4();
      *(v35 + 64) = v40;
      *(v35 + 32) = v33;
      *(v35 + 40) = v34;
      sub_1CF9E6018();

      MEMORY[0x1EEE9AC00](v36);
      *(&v39 - 4) = v44;
      *(&v39 - 3) = v26;
      *(&v39 - 2) = v20;
      sub_1CEFE1894(sub_1CF326AA4);
    }

    else
    {
    }

    a1 = v44;
  }

  MEMORY[0x1EEE9AC00](v27);
  v37 = v51;
  *(&v39 - 2) = a1;
  *(&v39 - 1) = v37;
  return sub_1CEFE1894(sub_1CF326A88);
}

uint64_t sub_1CF311E94@<X0>(_DWORD *a1@<X8>)
{
  sub_1CF9E5A18();
  sub_1CF9E6978();

  sub_1CF9E6978();
  v2 = fpfs_set_before_bounce_filename_on_path();

  *a1 = v2;
  return result;
}

uint64_t sub_1CF311F24@<X0>(int *a1@<X8>)
{
  v13 = *MEMORY[0x1E69E9840];
  sub_1CF9E5A18();
  sub_1CF9E5A18();
  v2 = sub_1CF9E6978();

  v3 = sub_1CF9E6978();

  v4 = renamex_np((v2 + 32), (v3 + 32), 4u);

  if (v4)
  {
    result = MEMORY[0x1D38683F0](result);
    if (result == 22)
    {
      memset(&v11, 0, sizeof(v11));
      memset(&v12, 0, sizeof(v12));
      sub_1CF9E5A18();
      v6 = sub_1CF9E6978();

      v7 = lstat((v6 + 32), &v12);

      if (!v7)
      {
        sub_1CF9E5A18();
        v8 = sub_1CF9E6978();

        v9 = lstat((v8 + 32), &v11);

        if (!v9)
        {
          result = MEMORY[0x1D3868400](17);
        }
      }
    }
  }

  *a1 = v4;
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CF3120D4(uint64_t a1)
{
  v2 = sub_1CF9E5A58();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  sub_1CF9E59D8();
  sub_1CF9E59D8();
  v11(v9, v6);
  v12 = *(v3 + 8);
  v12(v6, v2);
  return (v12)(v9, v2);
}

void sub_1CF312210(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v72 = a5;
  v73 = a8;
  v67 = a7;
  v68 = a6;
  v66 = a1;
  v74 = 0;
  v79 = *MEMORY[0x1E69E9840];
  v10 = sub_1CF9E5248();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v63 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1CF9E5268();
  v64 = *(v13 - 8);
  v65 = v13;
  v14 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v62 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v71 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v61 - v20;
  v22 = sub_1CF9E5A58();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v70 = &v61 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v61 - v30;
  v32 = (a2 + 16);
  v33 = swift_projectBox();
  swift_beginAccess();
  if ((*(a2 + 16) & 8) == 0)
  {
    goto LABEL_13;
  }

  v69 = v33;
  if (([a3 respondsToSelector_] & 1) == 0 || (objc_msgSend(a3, sel_fileSystemFlags) & 4) == 0)
  {
    v34 = v69;
    swift_beginAccess();
    (*(v23 + 16))(v31, v34, v22);
    v35 = sub_1CF9E5928();
    (*(v23 + 8))(v31, v22);
    *&v77[0] = 0;
    v36 = [v35 fp:v77 makeWritableWithError:?];

    if (v36)
    {
      v37 = *&v77[0];
    }

    else
    {
      v38 = *&v77[0];
      v39 = sub_1CF9E57F8();

      swift_willThrow();
      v74 = 0;
    }

    swift_beginAccess();
    if ((*v32 & 4) == 0)
    {
      *v32 |= 4uLL;
    }
  }

  sub_1CEFCCBDC(v72, v21, &unk_1EC4BE310, qword_1CF9FCBE0);
  if ((*(v23 + 48))(v21, 1, v22) != 1)
  {
    sub_1CF9E5A18();
    v40 = *(v23 + 8);
    v40(v21, v22);
    v41 = v70;
    sub_1CF9E58C8();

    v42 = [objc_opt_self() defaultManager];
    v43 = v69;
    swift_beginAccess();
    (*(v23 + 16))(v26, v43, v22);
    v44 = v71;
    v45 = v74;
    sub_1CF9E7278();
    v74 = v45;
    if (v45)
    {

      v40(v26, v22);
      v40(v41, v22);
LABEL_25:
      v58 = v73;
      swift_beginAccess();
      v59 = *(v58 + 16);
      *(v58 + 16) = v74;

LABEL_26:
      v60 = *MEMORY[0x1E69E9840];
      return;
    }

    v40(v26, v22);
    sub_1CEFCCC44(v44, &unk_1EC4BE310, qword_1CF9FCBE0);
    v40(v41, v22);
LABEL_13:
    swift_beginAccess();
    v46 = *v32 & 0xFFFFFFFFFFFFFFF4;
    if (qword_1EDEABDE0 != -1)
    {
      swift_once();
    }

    if ((v46 & (qword_1EDEABDE8 | 0x409000000C000)) == 0)
    {
      goto LABEL_26;
    }

    swift_beginAccess();
    if ((*v32 & 0x20) == 0)
    {
LABEL_17:
      sub_1CEFE528C(v75);
      v78 = v76;
      v77[12] = v75[12];
      v77[13] = v75[13];
      v77[14] = v75[14];
      v77[8] = v75[8];
      v77[9] = v75[9];
      v77[10] = v75[10];
      v77[11] = v75[11];
      v77[4] = v75[4];
      v77[5] = v75[5];
      v77[6] = v75[6];
      v77[7] = v75[7];
      v77[0] = v75[0];
      v77[1] = v75[1];
      v77[2] = v75[2];
      v77[3] = v75[3];
      MEMORY[0x1EEE9AC00](v47);
      *(&v61 - 2) = v66;
      *(&v61 - 1) = v32;
      v48 = v74;
      sub_1CF9BA920(v77, sub_1CF327330, &v61 - 4);
      v74 = v48;
      if (!v48)
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }

    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v49 = sub_1CF9E6AE8();

    if ((v49 & 1) == 0)
    {
      v50 = *MEMORY[0x1E6967258];
      v51 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v53 = v52;
      if (v51 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v53 == v54)
      {
      }

      else
      {
        v55 = sub_1CF9E8048();

        if ((v55 & 1) == 0)
        {
          goto LABEL_17;
        }
      }
    }

    sub_1CF9E5208();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CEFD5B1C(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
    v56 = v62;
    v57 = v65;
    sub_1CF9E57D8();
    v74 = sub_1CF9E50D8();
    (*(v64 + 8))(v56, v57);
    swift_willThrow();
    goto LABEL_25;
  }

  __break(1u);
}

uint64_t sub_1CF312A00@<X0>(uint64_t *a1@<X2>, _DWORD *a2@<X8>)
{
  sub_1CF9E5A18();
  swift_beginAccess();
  aBlock[0] = *a1;
  sub_1CF2ACEBC(aBlock);
  aBlock[4] = sub_1CF36581C;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CF9B8AD8;
  aBlock[3] = &block_descriptor_190_0;
  v4 = _Block_copy(aBlock);

  sub_1CF9E6978();

  v5 = fpfs_set_metadata();

  _Block_release(v4);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  else
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1CF312B6C(int a1, uint64_t a2, unint64_t a3)
{
  result = sub_1CF0089A8();
  if (result)
  {
    v6 = result;
    sub_1CF55A020(0xD000000000000015, 0x80000001CFA3F550, a1);
    if (a3 >> 62)
    {
      if (sub_1CF9E7818())
      {
        goto LABEL_6;
      }
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_6:
      v16 = MEMORY[0x1E69E7CC0];

      sub_1CF3172FC(a3, v6, &v16);
      swift_bridgeObjectRelease_n();
      v7 = sub_1CF9E5438();
      v8 = *(v7 + 48);
      v9 = *(v7 + 52);
      swift_allocObject();
      sub_1CF9E5428();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF630, &unk_1CF9FEEC0);
      sub_1CF1E15C0();
      v10 = sub_1CF9E5418();
      v12 = v11;

      v13 = sub_1CF9E56C8();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      sub_1CF9E56B8();
      sub_1CF4F2F98(0xD000000000000015, 0x80000001CFA3F550, v10, v12, a1);

      sub_1CEFE4714(v10, v12);

      return 0;
    }

    return 0;
  }

  return result;
}

uint64_t sub_1CF312D90(unint64_t a1, void *a2, char *a3, unint64_t *a4, void (**a5)(char *, uint64_t, uint64_t), void (*a6)(void *, void, void, id), uint64_t a7)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x616863206D657469, 0xED0000206465676ELL);
  v22 = a1;
  v9 = sub_1CF7F5844(a1);
  MEMORY[0x1D3868CC0](v9);

  MEMORY[0x1D3868CC0](544108320, 0xE400000000000000);
  v10 = [a2 itemIdentifier];
  v11 = NSFileProviderItemIdentifier.description.getter();
  MEMORY[0x1D3868CC0](v11);

  MEMORY[0x1D3868CC0](8250, 0xE200000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF580, &qword_1CFA01DB0);
  sub_1CF9E7B58();
  sub_1CEFFCE80();
  if (qword_1EDEA3408 != -1)
  {
    swift_once();
  }

  sub_1CF9E7298();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1CF9FA440;
  sub_1CEFFD0A8();
  v13 = sub_1CF9E7718();
  v15 = v14;
  v16 = MEMORY[0x1E69E6158];
  *(v12 + 56) = MEMORY[0x1E69E6158];
  v17 = sub_1CEFD51C4();
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  *(v12 + 96) = v16;
  *(v12 + 104) = v17;
  *(v12 + 64) = v17;
  *(v12 + 72) = 0;
  *(v12 + 80) = 0xE000000000000000;
  sub_1CF9E6018();

  sub_1CF32090C(a2, a4, v22, a5, a3, a6, a7);

  sub_1CF9E7298();
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1CF9FA450;
  v19 = sub_1CF9E7718();
  *(v18 + 56) = v16;
  *(v18 + 64) = v17;
  *(v18 + 32) = v19;
  *(v18 + 40) = v20;
  sub_1CF9E6018();
}

uint64_t sub_1CF313088(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, void))
{
  if (a1)
  {
    v7 = a1;
    v8 = a2;
    v9 = [objc_opt_self() legacyDefaultManager];
    v10 = *MEMORY[0x1E6967298];
    v13[4] = nullsub_1;
    v13[5] = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 1107296256;
    v13[2] = sub_1CF00A468;
    v13[3] = &block_descriptor_193;
    v11 = _Block_copy(v13);
    [v9 signalEnumeratorForContainerItemIdentifier:v10 completionHandler:v11];
    _Block_release(v11);

    a1 = v7;
    a2 = v8;
  }

  return a5(a1, a2, a3 & 1);
}

void sub_1CF31337C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    v9 = sub_1CF9E57E8();
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  (*(a5 + 16))(a5, a1, a2, a3 & 1);
}

uint64_t sub_1CF313404(uint64_t a1, uint64_t a2)
{
  sub_1CEFFCE80();
  if (qword_1EDEA3408 != -1)
  {
    swift_once();
  }

  sub_1CF9E7298();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1CF9FA440;
  sub_1CEFFD0A8();
  v4 = sub_1CF9E7718();
  v6 = v5;
  v7 = MEMORY[0x1E69E6158];
  *(v3 + 56) = MEMORY[0x1E69E6158];
  v8 = sub_1CEFD51C4();
  *(v3 + 32) = v4;
  *(v3 + 40) = v6;
  *(v3 + 96) = v7;
  *(v3 + 104) = v8;
  *(v3 + 64) = v8;
  *(v3 + 72) = 0xD000000000000016;
  *(v3 + 80) = 0x80000001CFA3EF90;
  sub_1CF9E6018();

  v9 = type metadata accessor for LocalFileProvider.BarrierDelegate(0);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v12 = (sub_1CF31448C(v19) + OBJC_IVAR____TtCFC18FileProviderDaemon17LocalFileProvider20waitForStabilizationFT17completionHandlerFGSqPs5Error__T__T_L_15BarrierDelegate_onStabilize);
  v13 = *v12;
  v14 = v12[1];
  *v12 = a1;
  v12[1] = a2;

  sub_1CEFF7124(v13);
  sub_1CF315174();

  sub_1CF9E7298();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1CF9FA450;
  v16 = sub_1CF9E7718();
  *(v15 + 56) = MEMORY[0x1E69E6158];
  *(v15 + 64) = v8;
  *(v15 + 32) = v16;
  *(v15 + 40) = v17;
  sub_1CF9E6018();
}

id sub_1CF3136F8()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1CF3137AC()
{
  result = type metadata accessor for LocalDomain();
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

uint64_t sub_1CF313858@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  if (qword_1EC4BCD10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  os_unfair_lock_lock(&dword_1EC4BF380);
  swift_endAccess();
  if (qword_1EC4BF378 == 1 || qword_1EC4BF350 != a1)
  {
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 1;
LABEL_14:
    swift_beginAccess();
    os_unfair_lock_unlock(&dword_1EC4BF380);
    return swift_endAccess();
  }

  *&v12 = 0;
  *(&v12 + 1) = 0xE000000000000000;
  sub_1CF9E7948();
  result = MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA3F3F0);
  if (qword_1EC4BF378 != 1)
  {
    sub_1CF9E7B58();
    if (qword_1EDEA3408 != -1)
    {
      swift_once();
    }

    sub_1CF9E7298();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1CF9FA450;
    *(v6 + 56) = MEMORY[0x1E69E6158];
    *(v6 + 64) = sub_1CEFD51C4();
    *(v6 + 32) = v12;
    sub_1CF9E6018();

    v7 = qword_1EC4BF378;
    v8 = 0uLL;
    v9 = 0uLL;
    if (qword_1EC4BF378 != 1)
    {
      v10 = *&qword_1EC4BF368;
      v11 = unk_1EC4BF358;

      v9 = v10;
      v8 = v11;
    }

    *a2 = v8;
    *(a2 + 16) = v9;
    *(a2 + 32) = v7;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1CF313AD0(void (*a1)(void))
{
  v2 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E696A250] code:3072 userInfo:0];
  a1();
}

void sub_1CF313CC0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a4 >> 60 == 15)
  {
    v10 = 0;
    if (a5)
    {
LABEL_3:
      v11 = sub_1CF9E57E8();
      goto LABEL_6;
    }
  }

  else
  {
    v10 = sub_1CF9E5B48();
    if (a5)
    {
      goto LABEL_3;
    }
  }

  v11 = 0;
LABEL_6:
  v12 = v11;
  (*(a6 + 16))(a6, a1, a2, v10);
}

void sub_1CF313F20(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a4 >> 60 == 15)
  {
    v13 = 0;
  }

  else
  {
    v13 = sub_1CF9E5B48();
  }

  if (a6 >> 60 == 15)
  {
    v14 = 0;
    if (a7)
    {
LABEL_6:
      v15 = sub_1CF9E57E8();
      goto LABEL_9;
    }
  }

  else
  {
    v14 = sub_1CF9E5B48();
    if (a7)
    {
      goto LABEL_6;
    }
  }

  v15 = 0;
LABEL_9:
  v16 = v15;
  (*(a8 + 16))(a8, a1, a2, v13, v14);
}

uint64_t sub_1CF314014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, char *, uint64_t, uint64_t, uint64_t))
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v18 - v14;
  v16 = sub_1CF9E5A58();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  a6(a1, a2, v15, a3, a4, a5);
  return sub_1CEFCCC44(v15, &unk_1EC4BE310, qword_1CF9FCBE0);
}

void sub_1CF3142DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, void *a6, uint64_t a7)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v21 - v15;
  sub_1CEFCCBDC(a3, &v21 - v15, &unk_1EC4BE310, qword_1CF9FCBE0);
  v17 = sub_1CF9E5A58();
  v18 = *(v17 - 8);
  v19 = 0;
  if ((*(v18 + 48))(v16, 1, v17) != 1)
  {
    v19 = sub_1CF9E5928();
    (*(v18 + 8))(v16, v17);
  }

  if (a5 >> 60 == 15)
  {
    v20 = 0;
    if (!a6)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v20 = sub_1CF9E5B48();
  if (a6)
  {
LABEL_7:
    a6 = sub_1CF9E57E8();
  }

LABEL_8:
  (*(a7 + 16))(a7, a1, a2, v19, v20, a6);
}

uint64_t sub_1CF31448C(void *a1)
{
  v100 = *MEMORY[0x1E69E9840];
  v87 = sub_1CF9E63A8();
  v85 = *(v87 - 8);
  v3 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v87);
  v84 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_1CF9E73D8();
  v80 = *(v81 - 8);
  v5 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v81);
  v79 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_1CF9E7318();
  v7 = *(*(v77 - 8) + 64);
  MEMORY[0x1EEE9AC00](v77);
  v76 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_1CF9E6448();
  v82 = *(v83 - 8);
  v9 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v83);
  v78 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1CF9E7388();
  v73 = *(v74 - 8);
  v11 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v75 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for LocalDomain();
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v88 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1CF9E5D98();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1CF9E5A58();
  v91 = *(v22 - 8);
  v92 = v22;
  v23 = v91[8];
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v71 - v27;
  *(v1 + OBJC_IVAR____TtCFC18FileProviderDaemon17LocalFileProvider20waitForStabilizationFT17completionHandlerFGSqPs5Error__T__T_L_15BarrierDelegate_timer) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtCFC18FileProviderDaemon17LocalFileProvider20waitForStabilizationFT17completionHandlerFGSqPs5Error__T__T_L_15BarrierDelegate_hasFired) = 0;
  *(v1 + OBJC_IVAR____TtCFC18FileProviderDaemon17LocalFileProvider20waitForStabilizationFT17completionHandlerFGSqPs5Error__T__T_L_15BarrierDelegate_hasNotified) = 0;
  v93 = v1;
  v29 = (v1 + OBJC_IVAR____TtCFC18FileProviderDaemon17LocalFileProvider20waitForStabilizationFT17completionHandlerFGSqPs5Error__T__T_L_15BarrierDelegate_onStabilize);
  *v29 = 0;
  v29[1] = 0;
  v30 = a1;
  v31 = a1 + OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_localDomain;
  v32 = v31 + *(v14 + 40);
  sub_1CF9E5988();
  aBlock = 0x726569727261622ELL;
  v95 = 0xE90000000000002DLL;
  sub_1CF9E5D88();
  sub_1CEFD5B1C(&qword_1EDEAECB0, MEMORY[0x1E69695A8]);
  v33 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v33);

  (*(v18 + 8))(v21, v17);
  v89 = v28;
  sub_1CF9E5958();

  v34 = [objc_opt_self() defaultManager];
  v90 = v25;
  v35 = sub_1CF9E5928();
  aBlock = 0;
  LODWORD(v14) = [v34 removeItemAtURL:v35 error:&aBlock];

  if (v14)
  {
    v36 = aBlock;
  }

  else
  {
    v37 = aBlock;
    v38 = sub_1CF9E57F8();

    swift_willThrow();
  }

  v39 = v93;
  swift_unknownObjectWeakAssign();
  v40 = v91 + 2;
  v41 = v91[2];
  v42 = v39 + OBJC_IVAR____TtCFC18FileProviderDaemon17LocalFileProvider20waitForStabilizationFT17completionHandlerFGSqPs5Error__T__T_L_15BarrierDelegate_barrierURL;
  v43 = v92;
  v41(v42, v90, v92);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF290, &unk_1CFA006C0);
  v44 = v40[7];
  v45 = (*(v40 + 64) + 32) & ~*(v40 + 64);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_1CF9FA450;
  v72 = v46;
  v41(v46 + v45, v89, v43);
  sub_1CEFFD30C(v31, v88, type metadata accessor for LocalDomain);
  v47 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v48 = sub_1CF9E6888();
  v49 = [v47 initWithSuiteName_];

  v86 = v30;
  if (v49 && (v50 = sub_1CF9E6888(), v51 = [v49 BOOLForKey_], v49, v50, v51))
  {
    v52 = 0.1;
  }

  else
  {
    v52 = 0.5;
  }

  v71 = 0x80000001CFA3F000;
  v53 = type metadata accessor for FSEventReader();
  v54 = *(v53 + 48);
  v55 = *(v53 + 52);
  v56 = swift_allocObject();
  v56[2] = 0;
  *(v56 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_1CEFD57E0(0, &qword_1EDEAED70, 0x1E69E9610);
  (*(v73 + 104))(v75, *MEMORY[0x1E69E8098], v74);
  v57 = v78;
  sub_1CF9E63F8();
  aBlock = MEMORY[0x1E69E7CC0];
  sub_1CEFD5B1C(&qword_1EDEAED80, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF500, &unk_1CF9FE770);
  sub_1CEFCCCEC(&qword_1EDEAEDA0, &unk_1EC4BF500, &unk_1CF9FE770);
  sub_1CF9E77B8();
  v56[3] = sub_1CF9E73B8();
  v56[6] = v72;
  sub_1CEFFC48C(v88, v56 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_domain, type metadata accessor for LocalDomain);
  v56[4] = -1;
  v56[5] = -1;
  *(v56 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_mode) = 0;
  *(v56 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_latency) = v52;
  *(v56 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_verbose) = 0;
  v58 = (v56 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_ownerDescription);
  v59 = v71;
  *v58 = 0xD000000000000014;
  v58[1] = v59;
  v60 = v93;
  *(v93 + OBJC_IVAR____TtCFC18FileProviderDaemon17LocalFileProvider20waitForStabilizationFT17completionHandlerFGSqPs5Error__T__T_L_15BarrierDelegate_reader) = v56;
  sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
  aBlock = MEMORY[0x1E69E7CC0];
  sub_1CEFD5B1C(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
  sub_1CEFCCCEC(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0);
  v61 = v79;
  v62 = v81;
  sub_1CF9E77B8();
  v63 = sub_1CF9E73E8();
  (*(v80 + 8))(v61, v62);
  swift_getObjectType();
  v98 = sub_1CF315B8C;
  v99 = v60;
  aBlock = MEMORY[0x1E69E9820];
  v95 = 1107296256;
  v96 = sub_1CEFCA444;
  v97 = &block_descriptor_12;
  v64 = _Block_copy(&aBlock);

  sub_1CF9E63F8();
  v65 = v84;
  sub_1CEFD5A30();
  sub_1CF9E7408();
  _Block_release(v64);

  (*(v85 + 8))(v65, v87);
  (*(v82 + 8))(v57, v83);
  v66 = v91[1];
  v67 = v92;
  v66(v90, v92);
  v66(v89, v67);

  v68 = *(v60 + OBJC_IVAR____TtCFC18FileProviderDaemon17LocalFileProvider20waitForStabilizationFT17completionHandlerFGSqPs5Error__T__T_L_15BarrierDelegate_timer);
  *(v60 + OBJC_IVAR____TtCFC18FileProviderDaemon17LocalFileProvider20waitForStabilizationFT17completionHandlerFGSqPs5Error__T__T_L_15BarrierDelegate_timer) = v63;
  swift_unknownObjectRelease();
  v69 = *MEMORY[0x1E69E9840];
  return v60;
}

uint64_t sub_1CF315070()
{
  if (qword_1EDEA3408 != -1)
  {
    swift_once();
  }

  sub_1CF9E72A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1CF9FA450;
  *(v0 + 56) = MEMORY[0x1E69E6158];
  *(v0 + 64) = sub_1CEFD51C4();
  *(v0 + 32) = 0xD000000000000017;
  *(v0 + 40) = 0x80000001CFA3F080;
  sub_1CF9E6018();

  return sub_1CF31559C();
}

id sub_1CF315174()
{
  v43[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1CF9E6388();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v35 - v8);
  v10 = sub_1CF9E6498();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v35 - v17;
  v41 = OBJC_IVAR____TtCFC18FileProviderDaemon17LocalFileProvider20waitForStabilizationFT17completionHandlerFGSqPs5Error__T__T_L_15BarrierDelegate_timer;
  v42 = v0;
  if (*(v0 + OBJC_IVAR____TtCFC18FileProviderDaemon17LocalFileProvider20waitForStabilizationFT17completionHandlerFGSqPs5Error__T__T_L_15BarrierDelegate_timer))
  {
    v40 = v16;
    ObjectType = swift_getObjectType();
    v38 = v6;
    swift_unknownObjectRetain();
    sub_1CF9E6478();
    *v9 = 5;
    (*(v3 + 104))(v9, *MEMORY[0x1E69E7F48], v2);
    MEMORY[0x1D3868740](v14, v9);
    v39 = v1;
    v19 = *(v3 + 8);
    v19(v9, v2);
    v36 = v2;
    v20 = *(v11 + 8);
    v20(v14, v40);
    v21 = ObjectType;
    sub_1CEFD5B64(v9);
    v22 = v38;
    sub_1CEFD5BD8(v38);
    MEMORY[0x1D3869770](v18, v9, v22, v21);
    swift_unknownObjectRelease();
    v23 = v36;
    v19(v22, v36);
    v19(v9, v23);
    v20(v18, v40);
  }

  v24 = v42;
  *(*(v42 + OBJC_IVAR____TtCFC18FileProviderDaemon17LocalFileProvider20waitForStabilizationFT17completionHandlerFGSqPs5Error__T__T_L_15BarrierDelegate_reader) + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_delegate + 8) = &off_1F4BFACC8;
  swift_unknownObjectWeakAssign();
  v25 = v41;
  if (*(v24 + v41))
  {
    v26 = *(v24 + v41);
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1CF9E7428();
    swift_unknownObjectRelease();
  }

  sub_1CF01C124();
  v27 = [objc_opt_self() defaultManager];
  v28 = sub_1CF9E5928();
  v43[0] = 0;
  v29 = [v27 createDirectoryAtURL:v28 withIntermediateDirectories:1 attributes:0 error:v43];

  if (v29)
  {
    result = v43[0];
  }

  else
  {
    v31 = v43[0];
    sub_1CF9E57F8();

    swift_willThrow();
    sub_1CF02AA74();
    if (*(v24 + v25))
    {
      v32 = *(v24 + v25);
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1CF9E7418();
      swift_unknownObjectRelease();
      v33 = *(v24 + v25);
    }

    *(v24 + v25) = 0;
    swift_unknownObjectRelease();
    result = swift_willThrow();
  }

  v34 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CF31559C()
{
  v3 = v0;
  v4 = sub_1CF9E64A8();
  v5 = *(v4 - 1);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = (&v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v0 + OBJC_IVAR____TtCFC18FileProviderDaemon17LocalFileProvider20waitForStabilizationFT17completionHandlerFGSqPs5Error__T__T_L_15BarrierDelegate_reader);
  v11 = v10[3];
  *v9 = v11;
  (*(v5 + 104))(v9, *MEMORY[0x1E69E8020], v4, v7);
  v12 = v11;
  LOBYTE(v11) = sub_1CF9E64D8();
  result = (*(v5 + 8))(v9, v4);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_16:
    swift_once();
LABEL_11:
    sub_1CF9E7288();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1CF9FA450;
    *(v21 + 56) = MEMORY[0x1E69E6158];
    *(v21 + 64) = sub_1CEFD51C4();
    *(v21 + 32) = 0xD000000000000030;
    *(v21 + 40) = v2;
    sub_1CF9E6018();

    sub_1CF313404(v4, v9);

    goto LABEL_12;
  }

  if (*(v3 + OBJC_IVAR____TtCFC18FileProviderDaemon17LocalFileProvider20waitForStabilizationFT17completionHandlerFGSqPs5Error__T__T_L_15BarrierDelegate_hasNotified))
  {
    return result;
  }

  *(v3 + OBJC_IVAR____TtCFC18FileProviderDaemon17LocalFileProvider20waitForStabilizationFT17completionHandlerFGSqPs5Error__T__T_L_15BarrierDelegate_hasNotified) = 1;
  sub_1CF02AA74();
  v14 = OBJC_IVAR____TtCFC18FileProviderDaemon17LocalFileProvider20waitForStabilizationFT17completionHandlerFGSqPs5Error__T__T_L_15BarrierDelegate_timer;
  if (*(v3 + OBJC_IVAR____TtCFC18FileProviderDaemon17LocalFileProvider20waitForStabilizationFT17completionHandlerFGSqPs5Error__T__T_L_15BarrierDelegate_timer))
  {
    v15 = *(v3 + OBJC_IVAR____TtCFC18FileProviderDaemon17LocalFileProvider20waitForStabilizationFT17completionHandlerFGSqPs5Error__T__T_L_15BarrierDelegate_timer);
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1CF9E7418();
    swift_unknownObjectRelease();
    v16 = *(v3 + v14);
  }

  *(v3 + v14) = 0;
  swift_unknownObjectRelease();
  v1 = &qword_1EC4BF000;
  v17 = v3 + OBJC_IVAR____TtCFC18FileProviderDaemon17LocalFileProvider20waitForStabilizationFT17completionHandlerFGSqPs5Error__T__T_L_15BarrierDelegate_onStabilize;
  v4 = *(v3 + OBJC_IVAR____TtCFC18FileProviderDaemon17LocalFileProvider20waitForStabilizationFT17completionHandlerFGSqPs5Error__T__T_L_15BarrierDelegate_onStabilize);
  if (*(v3 + OBJC_IVAR____TtCFC18FileProviderDaemon17LocalFileProvider20waitForStabilizationFT17completionHandlerFGSqPs5Error__T__T_L_15BarrierDelegate_hasFired) != 1)
  {
    if (!v4)
    {
      goto LABEL_13;
    }

    v9 = *(v17 + 8);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_13;
    }

    v10 = Strong;
    v2 = 0x80000001CFA3F0F0;
    v20 = qword_1EDEA3408;

    if (v20 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_16;
  }

  if (v4)
  {
    v18 = *(v17 + 8);

    v4(0);
LABEL_12:
    sub_1CEFF7124(v4);
  }

LABEL_13:
  v22 = (v3 + v1[156]);
  v23 = *v22;
  v24 = v22[1];
  *v22 = 0;
  v22[1] = 0;
  return sub_1CEFF7124(v23);
}

uint64_t sub_1CF315898()
{
  v1 = OBJC_IVAR____TtCFC18FileProviderDaemon17LocalFileProvider20waitForStabilizationFT17completionHandlerFGSqPs5Error__T__T_L_15BarrierDelegate_barrierURL;
  v2 = sub_1CF9E5A58();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtCFC18FileProviderDaemon17LocalFileProvider20waitForStabilizationFT17completionHandlerFGSqPs5Error__T__T_L_15BarrierDelegate_timer);
  swift_unknownObjectRelease();
  v4 = *(v0 + OBJC_IVAR____TtCFC18FileProviderDaemon17LocalFileProvider20waitForStabilizationFT17completionHandlerFGSqPs5Error__T__T_L_15BarrierDelegate_reader);

  MEMORY[0x1D386CEF0](v0 + OBJC_IVAR____TtCFC18FileProviderDaemon17LocalFileProvider20waitForStabilizationFT17completionHandlerFGSqPs5Error__T__T_L_15BarrierDelegate_provider);
  v5 = *(v0 + OBJC_IVAR____TtCFC18FileProviderDaemon17LocalFileProvider20waitForStabilizationFT17completionHandlerFGSqPs5Error__T__T_L_15BarrierDelegate_onStabilize + 8);
  sub_1CEFF7124(*(v0 + OBJC_IVAR____TtCFC18FileProviderDaemon17LocalFileProvider20waitForStabilizationFT17completionHandlerFGSqPs5Error__T__T_L_15BarrierDelegate_onStabilize));
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1CF3159A0()
{
  result = sub_1CF9E5A58();
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

uint64_t sub_1CF315A80()
{
  if (qword_1EDEA3408 != -1)
  {
    swift_once();
  }

  sub_1CF9E7298();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1CF9FA450;
  *(v0 + 56) = MEMORY[0x1E69E6158];
  *(v0 + 64) = sub_1CEFD51C4();
  *(v0 + 32) = 0xD000000000000010;
  *(v0 + 40) = 0x80000001CFA3F0B0;
  sub_1CF9E6018();

  return sub_1CF31559C();
}

void sub_1CF315B94(void **a1)
{
  v2 = *(type metadata accessor for LocalContainer(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1CF6F3780(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1CF315C3C(v5);
  *a1 = v3;
}

void sub_1CF315C3C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1CF9E7F88();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for LocalContainer(0);
        v6 = sub_1CF9E6DB8();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for LocalContainer(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1CF316044(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1CF315D68(0, v2, 1, a1);
  }
}

void sub_1CF315D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v37 = type metadata accessor for LocalContainer(0);
  v8 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v29 - v16;
  v31 = a2;
  if (a3 == a2)
  {
    return;
  }

  v18 = *a4;
  v19 = *(v15 + 72);
  v20 = *a4 + v19 * (a3 - 1);
  v21 = -v19;
  v22 = a1 - a3;
  v36 = v18;
  v30 = v19;
  v23 = v18 + v19 * a3;
LABEL_6:
  v34 = v20;
  v35 = a3;
  v32 = v23;
  v33 = v22;
  while (1)
  {
    sub_1CEFFD30C(v23, v17, type metadata accessor for LocalContainer);
    sub_1CEFFD30C(v20, v13, type metadata accessor for LocalContainer);
    v24 = *(v17 + 2);
    v25 = *(v13 + 2);
    if (!v24)
    {
      break;
    }

    if (!v25 || (*(v17 + 1) == *(v13 + 1) ? (v26 = v24 == v25) : (v26 = 0), v26))
    {
      sub_1CF007BF8(v13, type metadata accessor for LocalContainer);
      sub_1CF007BF8(v17, type metadata accessor for LocalContainer);
LABEL_5:
      a3 = v35 + 1;
      v20 = v34 + v30;
      v22 = v33 - 1;
      v23 = v32 + v30;
      if (v35 + 1 == v31)
      {
        return;
      }

      goto LABEL_6;
    }

    v27 = sub_1CF9E8048();
    sub_1CF007BF8(v13, type metadata accessor for LocalContainer);
    sub_1CF007BF8(v17, type metadata accessor for LocalContainer);
    if ((v27 & 1) == 0)
    {
      goto LABEL_5;
    }

    if (!v36)
    {
      goto LABEL_21;
    }

LABEL_18:
    sub_1CEFFC48C(v23, v10, type metadata accessor for LocalContainer);
    swift_arrayInitWithTakeFrontToBack();
    sub_1CEFFC48C(v10, v20, type metadata accessor for LocalContainer);
    v20 += v21;
    v23 += v21;
    if (__CFADD__(v22++, 1))
    {
      goto LABEL_5;
    }
  }

  if (!v25)
  {
    goto LABEL_22;
  }

  sub_1CF007BF8(v13, type metadata accessor for LocalContainer);
  sub_1CF007BF8(v17, type metadata accessor for LocalContainer);
  if (v36)
  {
    goto LABEL_18;
  }

LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
}

void sub_1CF316044(int64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = v4;
  v128 = a1;
  v142 = type metadata accessor for LocalContainer(0);
  v135 = *(v142 - 8);
  v9 = *(v135 + 64);
  MEMORY[0x1EEE9AC00](v142);
  v131 = &v122 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v141 = &v122 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v122 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v122 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v140 = &v122 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v139 = &v122 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v127 = &v122 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v126 = &v122 - v26;
  v27 = *(a3 + 8);
  if (v27 < 1)
  {
    v29 = MEMORY[0x1E69E7CC0];
LABEL_121:
    v5 = *v128;
    if (!*v128)
    {
      goto LABEL_161;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_123:
      v143 = v29;
      v117 = *(v29 + 16);
      if (v117 >= 2)
      {
        while (*a3)
        {
          v118 = v29;
          v29 = *(v29 + 16 * v117);
          v119 = v118;
          v120 = *&v118[16 * v117 + 24];
          sub_1CF316B40(*a3 + *(v135 + 72) * v29, *a3 + *(v135 + 72) * *&v118[16 * v117 + 16], *a3 + *(v135 + 72) * v120, v5);
          if (v6)
          {
            goto LABEL_131;
          }

          if (v120 < v29)
          {
            goto LABEL_146;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v119 = sub_1CF6F3368(v119);
          }

          if (v117 - 2 >= *(v119 + 2))
          {
            goto LABEL_147;
          }

          v121 = &v119[16 * v117];
          *v121 = v29;
          v121[1] = v120;
          v143 = v119;
          sub_1CF6F32DC(v117 - 1);
          v29 = v143;
          v117 = *(v143 + 16);
          if (v117 <= 1)
          {
            goto LABEL_131;
          }
        }

        goto LABEL_159;
      }

LABEL_131:

      return;
    }

LABEL_153:
    v29 = sub_1CF6F3368(v29);
    goto LABEL_123;
  }

  v122 = a4;
  v28 = 0;
  v29 = MEMORY[0x1E69E7CC0];
  v136 = a3;
  v132 = v18;
  while (2)
  {
    v30 = v28;
    v31 = v28 + 1;
    if (v28 + 1 >= v27)
    {
      goto LABEL_43;
    }

    v133 = v27;
    v123 = v29;
    v32 = *a3;
    v33 = *(v135 + 72);
    v34 = v28 + 1;
    v35 = v126;
    sub_1CEFFD30C(v32 + v33 * v31, v126, type metadata accessor for LocalContainer);
    v137 = v33;
    v36 = v32 + v33 * v30;
    v37 = v127;
    sub_1CEFFD30C(v36, v127, type metadata accessor for LocalContainer);
    v38 = *(v35 + 16);
    v39 = *(v37 + 16);
    v124 = v6;
    if (v38)
    {
      if (!v39 || *(v126 + 8) == *(v127 + 8) && v38 == v39)
      {
        LODWORD(v134) = 0;
      }

      else
      {
        LODWORD(v134) = sub_1CF9E8048();
      }
    }

    else
    {
      if (!v39)
      {
        goto LABEL_162;
      }

      LODWORD(v134) = 1;
    }

    sub_1CF007BF8(v127, type metadata accessor for LocalContainer);
    sub_1CF007BF8(v126, type metadata accessor for LocalContainer);
    v125 = v30;
    v40 = v30 + 2;
    v41 = v137 * (v30 + 2);
    v42 = v32 + v41;
    v43 = v34;
    v44 = v137 * v34;
    a3 = v32 + v137 * v34;
    do
    {
      v46 = v40;
      v29 = v43;
      v5 = v44;
      v47 = v41;
      v138 = v40;
      if (v40 >= v133)
      {
        break;
      }

      v48 = v15;
      v49 = v139;
      sub_1CEFFD30C(v42, v139, type metadata accessor for LocalContainer);
      v50 = v140;
      sub_1CEFFD30C(a3, v140, type metadata accessor for LocalContainer);
      v51 = *(v49 + 16);
      v52 = *(v50 + 16);
      if (v51)
      {
        if (v52)
        {
          v15 = v48;
          if (*(v139 + 8) == *(v140 + 8) && v51 == v52)
          {
            v45 = 0;
          }

          else
          {
            v45 = sub_1CF9E8048();
          }

          goto LABEL_16;
        }

        v45 = 0;
      }

      else
      {
        if (!v52)
        {
          goto LABEL_157;
        }

        v45 = 1;
      }

      v15 = v48;
LABEL_16:
      v18 = v132;
      v6 = type metadata accessor for LocalContainer;
      sub_1CF007BF8(v140, type metadata accessor for LocalContainer);
      sub_1CF007BF8(v139, type metadata accessor for LocalContainer);
      v46 = v138;
      v40 = v138 + 1;
      v42 += v137;
      a3 += v137;
      v43 = v29 + 1;
      v44 = v5 + v137;
      v41 = v47 + v137;
    }

    while (((v134 ^ v45) & 1) == 0);
    if ((v134 & 1) == 0)
    {
      v31 = v46;
      goto LABEL_42;
    }

    if (v46 < v125)
    {
      goto LABEL_150;
    }

    if (v125 >= v46)
    {
      v31 = v46;
      v29 = v123;
      v6 = v124;
      a3 = v136;
      v30 = v125;
    }

    else
    {
      v53 = v125 * v137;
      v54 = v125;
      do
      {
        if (v54 != v29)
        {
          v56 = *v136;
          if (!*v136)
          {
            goto LABEL_158;
          }

          sub_1CEFFC48C(v56 + v53, v131, type metadata accessor for LocalContainer);
          if (v53 < v5 || v56 + v53 >= (v56 + v47))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v53 != v5)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          sub_1CEFFC48C(v131, v56 + v5, type metadata accessor for LocalContainer);
        }

        ++v54;
        v5 -= v137;
        v47 -= v137;
        v53 += v137;
      }

      while (v54 < v29--);
      v31 = v138;
LABEL_42:
      v29 = v123;
      v6 = v124;
      a3 = v136;
      v30 = v125;
    }

LABEL_43:
    v57 = *(a3 + 8);
    if (v31 >= v57)
    {
      goto LABEL_70;
    }

    if (__OFSUB__(v31, v30))
    {
      goto LABEL_149;
    }

    if (v31 - v30 >= v122)
    {
LABEL_70:
      if (v31 < v30)
      {
        goto LABEL_148;
      }

      v138 = v31;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_1CF1F6594(0, *(v29 + 16) + 1, 1, v29);
      }

      v71 = *(v29 + 16);
      v70 = *(v29 + 24);
      v72 = v71 + 1;
      v28 = v138;
      if (v71 >= v70 >> 1)
      {
        v116 = sub_1CF1F6594((v70 > 1), v71 + 1, 1, v29);
        v28 = v138;
        v29 = v116;
      }

      *(v29 + 16) = v72;
      v73 = v29 + 16 * v71;
      *(v73 + 32) = v30;
      *(v73 + 40) = v28;
      v5 = *v128;
      if (!*v128)
      {
        goto LABEL_160;
      }

      if (!v71)
      {
LABEL_3:
        a3 = v136;
        v27 = v136[1];
        if (v28 >= v27)
        {
          goto LABEL_121;
        }

        continue;
      }

      while (1)
      {
        a3 = v72 - 1;
        if (v72 >= 4)
        {
          break;
        }

        if (v72 == 3)
        {
          v74 = *(v29 + 32);
          v75 = *(v29 + 40);
          v84 = __OFSUB__(v75, v74);
          v76 = v75 - v74;
          v77 = v84;
LABEL_90:
          if (v77)
          {
            goto LABEL_137;
          }

          v90 = (v29 + 16 * v72);
          v92 = *v90;
          v91 = v90[1];
          v93 = __OFSUB__(v91, v92);
          v94 = v91 - v92;
          v95 = v93;
          if (v93)
          {
            goto LABEL_140;
          }

          v96 = (v29 + 32 + 16 * a3);
          v98 = *v96;
          v97 = v96[1];
          v84 = __OFSUB__(v97, v98);
          v99 = v97 - v98;
          if (v84)
          {
            goto LABEL_143;
          }

          if (__OFADD__(v94, v99))
          {
            goto LABEL_144;
          }

          if (v94 + v99 >= v76)
          {
            if (v76 < v99)
            {
              a3 = v72 - 2;
            }

            goto LABEL_111;
          }

          goto LABEL_104;
        }

        v100 = (v29 + 16 * v72);
        v102 = *v100;
        v101 = v100[1];
        v84 = __OFSUB__(v101, v102);
        v94 = v101 - v102;
        v95 = v84;
LABEL_104:
        if (v95)
        {
          goto LABEL_139;
        }

        v103 = v29 + 16 * a3;
        v105 = *(v103 + 32);
        v104 = *(v103 + 40);
        v84 = __OFSUB__(v104, v105);
        v106 = v104 - v105;
        if (v84)
        {
          goto LABEL_142;
        }

        if (v106 < v94)
        {
          goto LABEL_3;
        }

LABEL_111:
        v111 = a3 - 1;
        if (a3 - 1 >= v72)
        {
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
          goto LABEL_152;
        }

        if (!*v136)
        {
          goto LABEL_156;
        }

        v112 = v29;
        v113 = v29 + 32;
        v29 = *(v29 + 32 + 16 * v111);
        v114 = *(v113 + 16 * a3 + 8);
        sub_1CF316B40(*v136 + *(v135 + 72) * v29, *v136 + *(v135 + 72) * *(v113 + 16 * a3), *v136 + *(v135 + 72) * v114, v5);
        if (v6)
        {
          goto LABEL_131;
        }

        if (v114 < v29)
        {
          goto LABEL_133;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v112 = sub_1CF6F3368(v112);
        }

        if (v111 >= *(v112 + 2))
        {
          goto LABEL_134;
        }

        v115 = &v112[16 * v111];
        *(v115 + 4) = v29;
        *(v115 + 5) = v114;
        v143 = v112;
        sub_1CF6F32DC(a3);
        v29 = v143;
        v72 = *(v143 + 16);
        v28 = v138;
        if (v72 <= 1)
        {
          goto LABEL_3;
        }
      }

      v78 = v29 + 32 + 16 * v72;
      v79 = *(v78 - 64);
      v80 = *(v78 - 56);
      v84 = __OFSUB__(v80, v79);
      v81 = v80 - v79;
      if (v84)
      {
        goto LABEL_135;
      }

      v83 = *(v78 - 48);
      v82 = *(v78 - 40);
      v84 = __OFSUB__(v82, v83);
      v76 = v82 - v83;
      v77 = v84;
      if (v84)
      {
        goto LABEL_136;
      }

      v85 = (v29 + 16 * v72);
      v87 = *v85;
      v86 = v85[1];
      v84 = __OFSUB__(v86, v87);
      v88 = v86 - v87;
      if (v84)
      {
        goto LABEL_138;
      }

      v84 = __OFADD__(v76, v88);
      v89 = v76 + v88;
      if (v84)
      {
        goto LABEL_141;
      }

      if (v89 >= v81)
      {
        v107 = (v29 + 32 + 16 * a3);
        v109 = *v107;
        v108 = v107[1];
        v84 = __OFSUB__(v108, v109);
        v110 = v108 - v109;
        if (v84)
        {
          goto LABEL_145;
        }

        if (v76 < v110)
        {
          a3 = v72 - 2;
        }

        goto LABEL_111;
      }

      goto LABEL_90;
    }

    break;
  }

  v58 = v30 + v122;
  if (__OFADD__(v30, v122))
  {
    goto LABEL_151;
  }

  if (v58 >= v57)
  {
    v58 = *(a3 + 8);
  }

  if (v58 < v30)
  {
LABEL_152:
    __break(1u);
    goto LABEL_153;
  }

  if (v31 == v58)
  {
    goto LABEL_70;
  }

  v123 = v29;
  v124 = v6;
  a3 = *a3;
  v59 = *(v135 + 72);
  v60 = a3 + v59 * (v31 - 1);
  v61 = v30;
  v62 = -v59;
  v125 = v61;
  v63 = v61 - v31;
  v129 = v59;
  v130 = v58;
  v5 = a3 + v31 * v59;
  while (2)
  {
    v137 = v60;
    v138 = v31;
    v133 = v5;
    v134 = v63;
LABEL_55:
    sub_1CEFFD30C(v5, v18, type metadata accessor for LocalContainer);
    sub_1CEFFD30C(v60, v15, type metadata accessor for LocalContainer);
    v64 = *(v18 + 2);
    v65 = *(v15 + 2);
    if (v64)
    {
      if (!v65 || (*(v18 + 1) == *(v15 + 1) ? (v66 = v64 == v65) : (v66 = 0), v66))
      {
        sub_1CF007BF8(v15, type metadata accessor for LocalContainer);
        sub_1CF007BF8(v18, type metadata accessor for LocalContainer);
LABEL_53:
        v31 = v138 + 1;
        v60 = v137 + v129;
        v63 = v134 - 1;
        v5 = v133 + v129;
        if (v138 + 1 == v130)
        {
          v31 = v130;
          v29 = v123;
          v6 = v124;
          v30 = v125;
          goto LABEL_70;
        }

        continue;
      }

      v67 = sub_1CF9E8048();
      sub_1CF007BF8(v15, type metadata accessor for LocalContainer);
      sub_1CF007BF8(v18, type metadata accessor for LocalContainer);
      if ((v67 & 1) == 0)
      {
        goto LABEL_53;
      }

      if (!a3)
      {
        goto LABEL_154;
      }

      goto LABEL_66;
    }

    break;
  }

  if (!v65)
  {
    goto LABEL_155;
  }

  sub_1CF007BF8(v15, type metadata accessor for LocalContainer);
  sub_1CF007BF8(v18, type metadata accessor for LocalContainer);
  if (a3)
  {
LABEL_66:
    v68 = v141;
    sub_1CEFFC48C(v5, v141, type metadata accessor for LocalContainer);
    swift_arrayInitWithTakeFrontToBack();
    sub_1CEFFC48C(v68, v60, type metadata accessor for LocalContainer);
    v60 += v62;
    v5 += v62;
    if (__CFADD__(v63++, 1))
    {
      goto LABEL_53;
    }

    goto LABEL_55;
  }

LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
}

void sub_1CF316B40(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v44 = type metadata accessor for LocalContainer(0);
  v8 = *(*(v44 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v45 = &v40 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v40 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v40 - v16;
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_78;
  }

  v20 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_79;
  }

  v21 = (a2 - a1) / v19;
  v49 = a1;
  v48 = a4;
  if (v21 >= v20 / v19)
  {
    v23 = v20 / v19 * v19;
    if (a4 < a2 || a2 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v29 = a4 + v23;
    if (v23 >= 1)
    {
      v30 = -v19;
      v31 = a4 + v23;
      v43 = -v19;
      do
      {
        v40 = v29;
        v32 = a2;
        a2 += v30;
        v42 = v32;
        while (1)
        {
          if (v32 <= a1)
          {
            v49 = v32;
            v47 = v40;
            goto LABEL_76;
          }

          v33 = a3;
          v41 = v29;
          v34 = v31 + v30;
          v35 = v45;
          sub_1CEFFD30C(v31 + v30, v45, type metadata accessor for LocalContainer);
          v36 = v46;
          sub_1CEFFD30C(a2, v46, type metadata accessor for LocalContainer);
          v37 = *(v35 + 16);
          v38 = *(v36 + 16);
          if (v37)
          {
            v39 = !v38 || *(v45 + 8) == *(v46 + 8) && v37 == v38 ? 0 : sub_1CF9E8048();
          }

          else
          {
            if (!v38)
            {
              goto LABEL_81;
            }

            v39 = 1;
          }

          a3 = v33 + v43;
          sub_1CF007BF8(v46, type metadata accessor for LocalContainer);
          sub_1CF007BF8(v45, type metadata accessor for LocalContainer);
          if (v39)
          {
            break;
          }

          v29 = v34;
          if (v33 < v31 || a3 >= v31)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v33 != v31)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v31 = v34;
          v32 = v42;
          v30 = v43;
          if (v34 <= a4)
          {
            a2 = v42;
            goto LABEL_75;
          }
        }

        if (v33 < v42 || a3 >= v42)
        {
          swift_arrayInitWithTakeFrontToBack();
          v29 = v41;
        }

        else
        {
          v29 = v41;
          if (v33 != v42)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v30 = v43;
      }

      while (v31 > a4);
    }

LABEL_75:
    v49 = a2;
    v47 = v29;
  }

  else
  {
    v22 = v21 * v19;
    if (a4 < a1 || a1 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v24 = a4 + v22;
    v47 = a4 + v22;
    if (v22 >= 1 && a2 < a3)
    {
      do
      {
        sub_1CEFFD30C(a2, v17, type metadata accessor for LocalContainer);
        sub_1CEFFD30C(a4, v14, type metadata accessor for LocalContainer);
        v26 = *(v17 + 2);
        v27 = *(v14 + 2);
        if (v26)
        {
          if (!v27 || (*(v17 + 1) == *(v14 + 1) ? (v28 = v26 == v27) : (v28 = 0), v28))
          {
            sub_1CF007BF8(v14, type metadata accessor for LocalContainer);
            sub_1CF007BF8(v17, type metadata accessor for LocalContainer);
LABEL_29:
            if (a1 < a4 || a1 >= a4 + v19)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v48 = a4 + v19;
            a4 += v19;
            goto LABEL_43;
          }

          LODWORD(v46) = sub_1CF9E8048();
          sub_1CF007BF8(v14, type metadata accessor for LocalContainer);
          sub_1CF007BF8(v17, type metadata accessor for LocalContainer);
          if ((v46 & 1) == 0)
          {
            goto LABEL_29;
          }
        }

        else
        {
          if (!v27)
          {
            goto LABEL_80;
          }

          sub_1CF007BF8(v14, type metadata accessor for LocalContainer);
          sub_1CF007BF8(v17, type metadata accessor for LocalContainer);
        }

        if (a1 < a2 || a1 >= a2 + v19)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v19;
LABEL_43:
        a1 += v19;
        v49 = a1;
      }

      while (a4 < v24 && a2 < a3);
    }
  }

LABEL_76:
  sub_1CF317128(&v49, &v48, &v47);
}

uint64_t sub_1CF317128(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for LocalContainer(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1CF31720C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void sub_1CF3172FC(unint64_t a1, uint64_t a2, void **a3)
{
  v32 = a3;
  if (a1 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1CF9E7818())
  {
    v6 = 0;
    v7 = a1 & 0xFFFFFFFFFFFFFF8;
    v26 = i;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1D3869C30](v6, a1);
      }

      else
      {
        if (v6 >= *(v7 + 16))
        {
          goto LABEL_19;
        }

        v8 = *(a1 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (*(a2 + 16) && (v11 = sub_1CF7BF928(v8), (v12 & 1) != 0))
      {
        v13 = (*(a2 + 56) + (v11 << 6));
        v14 = v13[3];
        v16 = *v13;
        v15 = v13[1];
        v30 = v13[2];
        v31 = v14;
        v28 = v16;
        v29 = v15;
        v17 = v32;
        v18 = *v32;
        sub_1CEFCCBDC(&v28, v27, &unk_1EC4BF250, &unk_1CFA01B50);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v17 = v18;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v18 = sub_1CF1F6F14(0, v18[2] + 1, 1, v18);
          *v32 = v18;
        }

        v21 = v18[2];
        v20 = v18[3];
        if (v21 >= v20 >> 1)
        {
          v18 = sub_1CF1F6F14((v20 > 1), v21 + 1, 1, v18);
          *v32 = v18;
        }

        v18[2] = v21 + 1;
        v22 = &v18[8 * v21];
        v23 = v28;
        v24 = v29;
        v25 = v31;
        v22[4] = v30;
        v22[5] = v25;
        v22[2] = v23;
        v22[3] = v24;

        v7 = a1 & 0xFFFFFFFFFFFFFF8;
        i = v26;
      }

      else
      {
      }

      ++v6;
      if (v10 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }
}

uint64_t sub_1CF3174C8(uint64_t a1, uint64_t a2, char *a3, void (**a4)(const void *, void, void *))
{
  v62 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF5F8, &qword_1CFA01DB8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v58 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v58 - v13;
  v67 = sub_1CF9E5A58();
  v69 = *(v67 - 8);
  v15 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v59 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = swift_allocObject();
  *(v68 + 16) = a4;
  aBlock = 0;
  v71 = 0xE000000000000000;
  v60 = a4;
  _Block_copy(a4);
  sub_1CF9E7948();

  aBlock = 0x2074726F706D69;
  v71 = 0xE700000000000000;
  v58 = a1;
  sub_1CF9E5A18();
  v17 = sub_1CF9E6888();

  v18 = [v17 fp_prettyPath];

  v19 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v21 = v20;

  MEMORY[0x1D3868CC0](v19, v21);

  MEMORY[0x1D3868CC0](0x65726170206E6920, 0xEB0000000020746ELL);
  v61 = a2;
  v22 = NSFileProviderItemIdentifier.description.getter();
  MEMORY[0x1D3868CC0](v22);

  v24 = aBlock;
  v23 = v71;
  v25 = sub_1CEFFCE80();
  if (qword_1EDEA3408 != -1)
  {
    swift_once();
  }

  v26 = qword_1EDEBB5A0;
  sub_1CF9E7298();
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1CF9FA440;
  v65 = v25;
  aBlock = v25;
  v63 = sub_1CEFFD0A8();
  v28 = sub_1CF9E7718();
  v30 = v29;
  v31 = MEMORY[0x1E69E6158];
  *(v27 + 56) = MEMORY[0x1E69E6158];
  v32 = sub_1CEFD51C4();
  *(v27 + 32) = v28;
  *(v27 + 40) = v30;
  *(v27 + 96) = v31;
  *(v27 + 104) = v32;
  v33 = v32;
  *(v27 + 64) = v32;
  *(v27 + 72) = v24;
  *(v27 + 80) = v23;
  v66 = v26;
  sub_1CF9E6018();

  v34 = v62;
  sub_1CEFFD89C(&v62[OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_localDomain], 1, v61, v10);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF600, &unk_1CFA01DC0);
  if ((*(*(v35 - 8) + 48))(v10, 1, v35) == 1)
  {
    sub_1CEFCCC44(v10, &qword_1EC4BF5F8, &qword_1CFA01DB8);
    (*(v69 + 56))(v14, 1, 1, v67);
LABEL_6:
    sub_1CEFCCC44(v14, &unk_1EC4BE310, qword_1CF9FCBE0);
    v40 = FPItemNotFoundError();
    if (v40)
    {
      v41 = sub_1CF9E57E8();
    }

    else
    {
      v41 = 0;
    }

    v60[2](v60, 0, v41);

    goto LABEL_14;
  }

  v36 = *(v35 + 48);
  v37 = v69;
  v38 = *(v69 + 32);
  v39 = v67;
  v38(v14, v10, v67);
  (*(v37 + 56))(v14, 0, 1, v39);
  sub_1CEFCCC44(&v10[v36], &unk_1EC4BEC00, &unk_1CF9FCB60);
  if ((*(v37 + 48))(v14, 1, v39) == 1)
  {
    goto LABEL_6;
  }

  v38(v59, v14, v39);
  v42 = sub_1CF9E5928();
  v43 = sub_1CF9E5928();
  v44 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v45 = sub_1CF9E6888();
  v46 = [v44 initWithSuiteName_];

  if (v46)
  {
    v47 = sub_1CF9E6888();
    v48 = [v46 BOOLForKey_];

    v49 = v48 ^ 1;
  }

  else
  {
    v49 = 1;
  }

  v50 = v68;
  v51 = swift_allocObject();
  v51[2] = v34;
  v51[3] = sub_1CF024BB0;
  v51[4] = v50;
  v74 = sub_1CF327394;
  v75 = v51;
  aBlock = MEMORY[0x1E69E9820];
  v71 = 1107296256;
  v72 = sub_1CF90535C;
  v73 = &block_descriptor_364;
  v52 = _Block_copy(&aBlock);
  v53 = v34;

  [v42 fp:v43 importUnderFolder:v49 allowCoordination:v52 completionHandler:?];
  _Block_release(v52);

  (*(v69 + 8))(v59, v39);
LABEL_14:
  sub_1CF9E7298();
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_1CF9FA450;
  aBlock = v65;
  v55 = sub_1CF9E7718();
  *(v54 + 56) = MEMORY[0x1E69E6158];
  *(v54 + 64) = v33;
  *(v54 + 32) = v55;
  *(v54 + 40) = v56;
  sub_1CF9E6018();
}

uint64_t sub_1CF317C3C(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, void (**a5)(const void *, void, void *))
{
  v54 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF5F8, &qword_1CFA01DB8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v50 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = v50 - v15;
  v17 = sub_1CF9E5A58();
  v59 = *(v17 - 8);
  v60 = v17;
  v18 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v51 = v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = swift_allocObject();
  *&aBlock = 0;
  *(v61 + 16) = a5;
  *(&aBlock + 1) = 0xE000000000000000;
  v52 = a5;
  _Block_copy(a5);
  sub_1CF9E7948();

  strcpy(&aBlock, "create dir '");
  BYTE13(aBlock) = 0;
  HIWORD(aBlock) = -5120;
  v50[0] = a1;
  v50[1] = a2;
  MEMORY[0x1D3868CC0](a1, a2);
  MEMORY[0x1D3868CC0](0x726170206E692027, 0xEC00000020746E65);
  v53 = a3;
  v20 = NSFileProviderItemIdentifier.description.getter();
  MEMORY[0x1D3868CC0](v20);

  v21 = aBlock;
  v22 = sub_1CEFFCE80();
  if (qword_1EDEA3408 != -1)
  {
    swift_once();
  }

  sub_1CF9E7298();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1CF9FA440;
  v58 = v22;
  *&aBlock = v22;
  v56 = sub_1CEFFD0A8();
  v24 = sub_1CF9E7718();
  v26 = v25;
  v27 = MEMORY[0x1E69E6158];
  *(v23 + 56) = MEMORY[0x1E69E6158];
  v28 = sub_1CEFD51C4();
  *(v23 + 32) = v24;
  *(v23 + 40) = v26;
  *(v23 + 96) = v27;
  *(v23 + 104) = v28;
  v55 = v28;
  *(v23 + 64) = v28;
  *(v23 + 72) = v21;
  sub_1CF9E6018();

  v29 = v54;
  sub_1CEFFD89C(&v54[OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_localDomain], 1, v53, v12);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF600, &unk_1CFA01DC0);
  if ((*(*(v30 - 8) + 48))(v12, 1, v30) == 1)
  {
    sub_1CEFCCC44(v12, &qword_1EC4BF5F8, &qword_1CFA01DB8);
    (*(v59 + 56))(v16, 1, 1, v60);
  }

  else
  {
    v31 = *(v30 + 48);
    v32 = v59;
    v33 = v60;
    v34 = *(v59 + 32);
    v34(v16, v12, v60);
    (*(v32 + 56))(v16, 0, 1, v33);
    sub_1CEFCCC44(&v12[v31], &unk_1EC4BEC00, &unk_1CF9FCB60);
    v35 = (*(v32 + 48))(v16, 1, v33);
    v36 = v61;
    if (v35 != 1)
    {
      v39 = v51;
      v34(v51, v16, v33);
      v40 = sub_1CF9E5928();
      v41 = sub_1CF9E6888();
      v42 = swift_allocObject();
      v42[2] = v29;
      v42[3] = sub_1CF024BB0;
      v42[4] = v36;
      v65 = sub_1CF327394;
      v66 = v42;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v63 = sub_1CF90535C;
      v64 = &block_descriptor_354_0;
      v43 = _Block_copy(&aBlock);
      v44 = v29;

      [v40 fp:v41 createSubFolder:v43 completionHandler:?];
      _Block_release(v43);

      (*(v32 + 8))(v39, v33);
      goto LABEL_11;
    }
  }

  sub_1CEFCCC44(v16, &unk_1EC4BE310, qword_1CF9FCBE0);
  v37 = FPItemNotFoundError();
  if (v37)
  {
    v38 = sub_1CF9E57E8();
  }

  else
  {
    v38 = 0;
  }

  v52[2](v52, 0, v38);

LABEL_11:
  sub_1CF9E7298();
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_1CF9FA450;
  *&aBlock = v58;
  v46 = sub_1CF9E7718();
  v47 = v55;
  *(v45 + 56) = MEMORY[0x1E69E6158];
  *(v45 + 64) = v47;
  *(v45 + 32) = v46;
  *(v45 + 40) = v48;
  sub_1CF9E6018();
}

uint64_t sub_1CF3182B4(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, void *aBlock)
{
  _Block_copy(aBlock);
  sub_1CF9E7948();

  strcpy(v24, "rename item ");
  BYTE5(v24[1]) = 0;
  HIWORD(v24[1]) = -5120;
  v8 = NSFileProviderItemIdentifier.description.getter();
  MEMORY[0x1D3868CC0](v8);

  MEMORY[0x1D3868CC0](0x27206F7420, 0xE500000000000000);
  v22 = a3;
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](39, 0xE100000000000000);
  v9 = v24[1];
  v20 = v24[0];
  sub_1CEFFCE80();
  if (qword_1EDEA3408 != -1)
  {
    swift_once();
  }

  sub_1CF9E7298();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1CF9FA440;
  sub_1CEFFD0A8();
  v11 = sub_1CF9E7718();
  v13 = v12;
  v14 = MEMORY[0x1E69E6158];
  *(v10 + 56) = MEMORY[0x1E69E6158];
  v15 = sub_1CEFD51C4();
  *(v10 + 32) = v11;
  *(v10 + 40) = v13;
  *(v10 + 96) = v14;
  *(v10 + 104) = v15;
  *(v10 + 64) = v15;
  *(v10 + 72) = v20;
  *(v10 + 80) = v9;

  sub_1CF9E6018();

  sub_1CF2FF458(a1, a4, a2, v22, aBlock);

  sub_1CF9E7298();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1CF9FA450;
  v17 = sub_1CF9E7718();
  *(v16 + 56) = v14;
  *(v16 + 64) = v15;
  *(v16 + 32) = v17;
  *(v16 + 40) = v18;
  sub_1CF9E6018();
}

uint64_t sub_1CF3185E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, void (**a6)(const void *, void, void *))
{
  v107 = a5;
  v97 = a4;
  v96 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF5F8, &qword_1CFA01DB8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v99 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v103 = &v94 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v100 = &v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v104 = &v94 - v18;
  v19 = sub_1CF9E5A58();
  v20 = *(v19 - 8);
  v105 = v19;
  v106 = v20;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v98 = &v94 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v102 = &v94 - v24;
  v25 = sub_1CF9E5248();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v108 = &v94 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1CF9E5268();
  v109 = *(v28 - 8);
  v29 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v94 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = swift_allocObject();
  *(v115 + 16) = a6;
  *&aBlock = 0;
  *(&aBlock + 1) = 0xE000000000000000;
  v110 = a6;
  _Block_copy(a6);
  sub_1CF9E7948();

  strcpy(&aBlock, "reparent item ");
  HIBYTE(aBlock) = -18;
  v116 = a1;
  v32 = NSFileProviderItemIdentifier.description.getter();
  MEMORY[0x1D3868CC0](v32);

  MEMORY[0x1D3868CC0](0x65726170206F7420, 0xEB0000000020746ELL);
  v101 = a2;
  v33 = NSFileProviderItemIdentifier.description.getter();
  MEMORY[0x1D3868CC0](v33);

  v34 = aBlock;
  v35 = sub_1CEFFCE80();
  if (qword_1EDEA3408 != -1)
  {
    swift_once();
  }

  v36 = qword_1EDEBB5A0;
  sub_1CF9E7298();
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1CF9FA440;
  v114 = v35;
  *&aBlock = v35;
  v112 = sub_1CEFFD0A8();
  v38 = sub_1CF9E7718();
  v40 = v39;
  v41 = MEMORY[0x1E69E6158];
  *(v37 + 56) = MEMORY[0x1E69E6158];
  v42 = sub_1CEFD51C4();
  *(v37 + 32) = v38;
  *(v37 + 40) = v40;
  v43 = v36;
  *(v37 + 96) = v41;
  *(v37 + 104) = v42;
  v111 = v42;
  *(v37 + 64) = v42;
  *(v37 + 72) = v34;
  sub_1CF9E6018();

  v44 = v116;
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  LOBYTE(v37) = sub_1CF9E6AE8();

  if (v37)
  {
    goto LABEL_8;
  }

  v45 = *MEMORY[0x1E6967258];
  v46 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v48 = v47;
  if (v46 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v48 == v49)
  {

LABEL_8:
    sub_1CF9E5208();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CEFD5B1C(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
    sub_1CF9E57D8();
    v51 = sub_1CF9E50D8();
    (*(v109 + 8))(v31, v28);
    v52 = sub_1CF9E57E8();
    v110[2](v110, 0, v52);

    goto LABEL_9;
  }

  v50 = sub_1CF9E8048();

  if (v50)
  {
    goto LABEL_8;
  }

  v109 = v43;
  v58 = OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_localDomain;
  v59 = v103;
  sub_1CEFFD89C(&v107[OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_localDomain], 1, v44, v103);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF600, &unk_1CFA01DC0);
  v61 = *(*(v60 - 8) + 48);
  if (v61(v59, 1, v60) == 1)
  {
    sub_1CEFCCC44(v59, &qword_1EC4BF5F8, &qword_1CFA01DB8);
    v62 = v104;
    (*(v106 + 56))(v104, 1, 1, v105);
LABEL_13:
    sub_1CEFCCC44(v62, &unk_1EC4BE310, qword_1CF9FCBE0);
    v68 = FPItemNotFoundError();
    if (v68)
    {
      v69 = sub_1CF9E57E8();
    }

    else
    {
      v69 = 0;
    }

    v41 = MEMORY[0x1E69E6158];
    v110[2](v110, 0, v69);

    goto LABEL_9;
  }

  v63 = *(v60 + 48);
  v64 = v105;
  v65 = v106;
  v66 = *(v106 + 32);
  v62 = v104;
  v108 = (v106 + 32);
  v95 = v66;
  v66(v104, v59, v105);
  v94 = *(v65 + 56);
  v94(v62, 0, 1, v64);
  sub_1CEFCCC44(&v59[v63], &unk_1EC4BEC00, &unk_1CF9FCB60);
  v67 = *(v65 + 48);
  if (v67(v62, 1, v64) == 1)
  {
    goto LABEL_13;
  }

  v70 = v62;
  v71 = v95;
  v95(v102, v70, v64);
  v72 = &v107[v58];
  v73 = v99;
  sub_1CEFFD89C(v72, 1, v101, v99);
  if (v61(v73, 1, v60) == 1)
  {
    sub_1CEFCCC44(v73, &qword_1EC4BF5F8, &qword_1CFA01DB8);
    v74 = v100;
    v94(v100, 1, 1, v64);
    v41 = MEMORY[0x1E69E6158];
LABEL_20:
    sub_1CEFCCC44(v74, &unk_1EC4BE310, qword_1CF9FCBE0);
    v78 = FPItemNotFoundError();
    if (v78)
    {
      v79 = sub_1CF9E57E8();
    }

    else
    {
      v79 = 0;
    }

    v110[2](v110, 0, v79);

    (*(v106 + 8))(v102, v64);
    goto LABEL_9;
  }

  v75 = *(v60 + 48);
  v74 = v100;
  v71(v100, v73, v64);
  v94(v74, 0, 1, v64);
  sub_1CEFCCC44(&v73[v75], &unk_1EC4BEC00, &unk_1CF9FCB60);
  v76 = v67(v74, 1, v64);
  v77 = v115;
  v41 = MEMORY[0x1E69E6158];
  if (v76 == 1)
  {
    goto LABEL_20;
  }

  v71(v98, v74, v64);
  v80 = sub_1CF9E5928();
  v81 = sub_1CF9E5928();
  if (v97)
  {
    v82 = sub_1CF9E6888();
  }

  else
  {
    v82 = 0;
  }

  v83 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v84 = sub_1CF9E6888();
  v85 = [v83 initWithSuiteName_];

  if (v85)
  {
    v86 = sub_1CF9E6888();
    v87 = [v85 BOOLForKey_];

    v88 = v87 ^ 1;
  }

  else
  {
    v88 = 1;
  }

  v89 = swift_allocObject();
  v90 = v107;
  v89[2] = v107;
  v89[3] = sub_1CF024BB0;
  v89[4] = v77;
  v120 = sub_1CF327394;
  v121 = v89;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v118 = sub_1CF90535C;
  v119 = &block_descriptor_334;
  v91 = _Block_copy(&aBlock);
  v92 = v90;

  [v80 fp:v81 reparentUnderFolder:v82 withNewName:v88 allowCoordination:v91 completionHandler:?];
  _Block_release(v91);

  v93 = *(v106 + 8);
  v93(v98, v64);
  v93(v102, v64);
LABEL_9:
  sub_1CF9E7298();
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_1CF9FA450;
  *&aBlock = v114;
  v54 = sub_1CF9E7718();
  v55 = v111;
  *(v53 + 56) = v41;
  *(v53 + 64) = v55;
  *(v53 + 32) = v54;
  *(v53 + 40) = v56;
  sub_1CF9E6018();
}

void sub_1CF319228(uint64_t a1, char a2, void *a3, void *aBlock)
{
  _Block_copy(aBlock);
  sub_1CF9E7948();

  strcpy(v28, "trash item at ");
  HIBYTE(v28[1]) = -18;
  v26 = a1;
  v7 = sub_1CF9E5928();
  v8 = [v7 fp_shortDescription];

  v9 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v11 = v10;

  MEMORY[0x1D3868CC0](v9, v11);

  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA3F360);
  v25 = a2;
  if (a2)
  {
    v12 = 1702195828;
  }

  else
  {
    v12 = 0x65736C6166;
  }

  if (a2)
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xE500000000000000;
  }

  MEMORY[0x1D3868CC0](v12, v13);

  MEMORY[0x1D3868CC0](93, 0xE100000000000000);
  v14 = v28[1];
  v24 = v28[0];
  sub_1CEFFCE80();
  if (qword_1EDEA3408 != -1)
  {
    swift_once();
  }

  sub_1CF9E7298();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1CF9FA440;
  sub_1CEFFD0A8();
  v16 = sub_1CF9E7718();
  v18 = v17;
  v19 = MEMORY[0x1E69E6158];
  *(v15 + 56) = MEMORY[0x1E69E6158];
  v20 = sub_1CEFD51C4();
  *(v15 + 32) = v16;
  *(v15 + 40) = v18;
  *(v15 + 96) = v19;
  *(v15 + 104) = v20;
  *(v15 + 64) = v20;
  *(v15 + 72) = v24;
  *(v15 + 80) = v14;

  sub_1CF9E6018();

  _Block_copy(aBlock);
  sub_1CF300898(v26, a3, v25 & 1, aBlock);

  sub_1CF9E7298();
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1CF9FA450;
  v22 = sub_1CF9E7718();
  *(v21 + 56) = v19;
  *(v21 + 64) = v20;
  *(v21 + 32) = v22;
  *(v21 + 40) = v23;
  sub_1CF9E6018();

  _Block_release(aBlock);
}

uint64_t sub_1CF3195D4(void *a1)
{
  v2 = sub_1CF9E53C8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v23 - v8;
  if (a1)
  {
    v25 = a1;
    v10 = a1;
    v11 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    if (swift_dynamicCast())
    {
      v24 = *(v3 + 8);
      v24(v9, v2);
      v25 = a1;
      v12 = a1;
      swift_dynamicCast();
      sub_1CEFD5B1C(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
      sub_1CF9E57A8();
      v13 = sub_1CF9E6148();
      if (sub_1CF008830(v13, MEMORY[0x1E69E7CD0]))
      {
        if (qword_1EDEA3408 != -1)
        {
          swift_once();
        }

        sub_1CF9E7298();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
        v14 = swift_allocObject();
        *(v14 + 16) = xmmword_1CF9FA440;
        *(v14 + 56) = MEMORY[0x1E69E6158];
        *(v14 + 64) = sub_1CEFD51C4();
        *(v14 + 32) = 0xD000000000000010;
        *(v14 + 40) = 0x80000001CFA3F7E0;
        sub_1CF9E57A8();
        v15 = sub_1CF9E6148();
        v16 = MEMORY[0x1E69E7358];
        *(v14 + 96) = MEMORY[0x1E69E72F0];
        *(v14 + 104) = v16;
        *(v14 + 72) = v15;
      }

      else
      {
        if (qword_1EDEA3408 != -1)
        {
          swift_once();
        }

        sub_1CF9E72A8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
        v19 = swift_allocObject();
        *(v19 + 16) = xmmword_1CF9FA440;
        *(v19 + 56) = MEMORY[0x1E69E6158];
        *(v19 + 64) = sub_1CEFD51C4();
        *(v19 + 32) = 0xD000000000000010;
        *(v19 + 40) = 0x80000001CFA3F7E0;
        sub_1CF9E57A8();
        v20 = sub_1CF9E6148();
        v21 = MEMORY[0x1E69E7358];
        *(v19 + 96) = MEMORY[0x1E69E72F0];
        *(v19 + 104) = v21;
        *(v19 + 72) = v20;
      }

      sub_1CF9E6018();

      v24(v6, v2);
    }

    else
    {
      if (qword_1EDEA3408 != -1)
      {
        swift_once();
      }

      sub_1CF9E72A8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1CF9FA440;
      *(v17 + 56) = MEMORY[0x1E69E6158];
      *(v17 + 64) = sub_1CEFD51C4();
      *(v17 + 32) = 0xD000000000000010;
      *(v17 + 40) = 0x80000001CFA3F7E0;
      v18 = sub_1CF9E57E8();
      *(v17 + 96) = sub_1CEFD57E0(0, &qword_1EDEA3440, 0x1E696ABC0);
      *(v17 + 104) = sub_1CF326DD0();
      *(v17 + 72) = v18;
      sub_1CF9E6018();
    }
  }

  return sub_1CF9E74B8();
}

uint64_t sub_1CF319A8C(uint64_t a1, char a2, void *a3, void *a4)
{
  v26 = a4;
  sub_1CF9E7948();

  strcpy(v30, "trash item at ");
  HIBYTE(v30[1]) = -18;
  v28 = a1;
  v6 = sub_1CF9E5928();
  v7 = [v6 fp_shortDescription];

  v8 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v10 = v9;

  MEMORY[0x1D3868CC0](v8, v10);

  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA3F360);
  v27 = a2;
  if (a2)
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if (a2)
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  MEMORY[0x1D3868CC0](v11, v12);

  MEMORY[0x1D3868CC0](93, 0xE100000000000000);
  v13 = v30[1];
  v25 = v30[0];
  sub_1CEFFCE80();
  if (qword_1EDEA3408 != -1)
  {
    swift_once();
  }

  sub_1CF9E7298();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1CF9FA440;
  sub_1CEFFD0A8();
  v15 = sub_1CF9E7718();
  v17 = v16;
  v18 = MEMORY[0x1E69E6158];
  *(v14 + 56) = MEMORY[0x1E69E6158];
  v19 = sub_1CEFD51C4();
  *(v14 + 32) = v15;
  *(v14 + 40) = v17;
  *(v14 + 96) = v18;
  *(v14 + 104) = v19;
  *(v14 + 64) = v19;
  *(v14 + 72) = v25;
  *(v14 + 80) = v13;

  sub_1CF9E6018();

  v20 = v26;
  sub_1CF3013B4(v28, a3, v27 & 1, v20);

  sub_1CF9E7298();
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1CF9FA450;
  v22 = sub_1CF9E7718();
  *(v21 + 56) = v18;
  *(v21 + 64) = v19;
  *(v21 + 32) = v22;
  *(v21 + 40) = v23;
  sub_1CF9E6018();
}

uint64_t sub_1CF319E34(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, void, uint64_t, uint64_t))
{

  sub_1CF9E7948();

  strcpy(v32, "trash item at ");
  HIBYTE(v32[1]) = -18;
  v28 = a1;
  v9 = sub_1CF9E5928();
  v10 = [v9 fp_shortDescription];

  v11 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v13 = v12;

  MEMORY[0x1D3868CC0](v11, v13);

  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA3F360);
  if (a2)
  {
    v14 = 1702195828;
  }

  else
  {
    v14 = 0x65736C6166;
  }

  if (a2)
  {
    v15 = 0xE400000000000000;
  }

  else
  {
    v15 = 0xE500000000000000;
  }

  MEMORY[0x1D3868CC0](v14, v15);

  MEMORY[0x1D3868CC0](93, 0xE100000000000000);
  v16 = v32[1];
  v27 = v32[0];
  sub_1CEFFCE80();
  if (qword_1EDEA3408 != -1)
  {
    swift_once();
  }

  sub_1CF9E7298();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1CF9FA440;
  sub_1CEFFD0A8();
  v18 = sub_1CF9E7718();
  v20 = v19;
  v21 = MEMORY[0x1E69E6158];
  *(v17 + 56) = MEMORY[0x1E69E6158];
  v22 = sub_1CEFD51C4();
  *(v17 + 32) = v18;
  *(v17 + 40) = v20;
  *(v17 + 96) = v21;
  *(v17 + 104) = v22;
  *(v17 + 64) = v22;
  *(v17 + 72) = v27;
  *(v17 + 80) = v16;

  sub_1CF9E6018();

  a6(v28, a3, a2 & 1, a4, a5);

  sub_1CF9E7298();
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1CF9FA450;
  v24 = sub_1CF9E7718();
  *(v23 + 56) = v21;
  *(v23 + 64) = v22;
  *(v23 + 32) = v24;
  *(v23 + 40) = v25;
  sub_1CF9E6018();
}

uint64_t sub_1CF31A1E8(uint64_t a1, char *a2, void *a3)
{
  v15 = a3;
  v16 = a1;
  v4 = NSFileProviderItemIdentifier.description.getter();
  MEMORY[0x1D3868CC0](v4);

  sub_1CEFFCE80();
  if (qword_1EDEA3408 != -1)
  {
    swift_once();
  }

  sub_1CF9E7298();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1CF9FA440;
  sub_1CEFFD0A8();
  v6 = sub_1CF9E7718();
  v8 = v7;
  v9 = MEMORY[0x1E69E6158];
  *(v5 + 56) = MEMORY[0x1E69E6158];
  v10 = sub_1CEFD51C4();
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  *(v5 + 96) = v9;
  *(v5 + 104) = v10;
  *(v5 + 64) = v10;
  *(v5 + 72) = 0x7469206873617274;
  *(v5 + 80) = 0xEB00000000206D65;

  sub_1CF9E6018();

  sub_1CF303A28(v16, a2, v15);

  sub_1CF9E7298();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1CF9FA450;
  v12 = sub_1CF9E7718();
  *(v11 + 56) = MEMORY[0x1E69E6158];
  *(v11 + 64) = v10;
  *(v11 + 32) = v12;
  *(v11 + 40) = v13;
  sub_1CF9E6018();
}

uint64_t sub_1CF31A4B8(void *a1, uint64_t a2, char *a3, void *aBlock)
{
  strcpy(v22, "untrash item ");
  HIWORD(v22[1]) = -4864;
  _Block_copy(aBlock);
  v19 = a1;
  v6 = NSFileProviderItemIdentifier.description.getter();
  MEMORY[0x1D3868CC0](v6);

  v7 = v22[1];
  v18 = v22[0];
  sub_1CEFFCE80();
  if (qword_1EDEA3408 != -1)
  {
    swift_once();
  }

  sub_1CF9E7298();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1CF9FA440;
  sub_1CEFFD0A8();
  v9 = sub_1CF9E7718();
  v11 = v10;
  v12 = MEMORY[0x1E69E6158];
  *(v8 + 56) = MEMORY[0x1E69E6158];
  v13 = sub_1CEFD51C4();
  *(v8 + 32) = v9;
  *(v8 + 40) = v11;
  *(v8 + 96) = v12;
  *(v8 + 104) = v13;
  *(v8 + 64) = v13;
  *(v8 + 72) = v18;
  *(v8 + 80) = v7;

  sub_1CF9E6018();

  sub_1CF3049FC(v19, a3, a2, aBlock);

  sub_1CF9E7298();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1CF9FA450;
  v15 = sub_1CF9E7718();
  *(v14 + 56) = v12;
  *(v14 + 64) = v13;
  *(v14 + 32) = v15;
  *(v14 + 40) = v16;
  sub_1CF9E6018();
}

uint64_t sub_1CF31A77C(uint64_t a1, uint64_t a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, void *))
{
  _Block_copy(aBlock);
  v19 = a1;
  v8 = NSFileProviderItemIdentifier.description.getter();
  MEMORY[0x1D3868CC0](v8);

  sub_1CEFFCE80();
  if (qword_1EDEA3408 != -1)
  {
    swift_once();
  }

  sub_1CF9E7298();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1CF9FA440;
  sub_1CEFFD0A8();
  v10 = sub_1CF9E7718();
  v12 = v11;
  v13 = MEMORY[0x1E69E6158];
  *(v9 + 56) = MEMORY[0x1E69E6158];
  v14 = sub_1CEFD51C4();
  *(v9 + 32) = v10;
  *(v9 + 40) = v12;
  *(v9 + 96) = v13;
  *(v9 + 104) = v14;
  *(v9 + 64) = v14;
  *(v9 + 72) = a4;
  *(v9 + 80) = a5;

  sub_1CF9E6018();

  a6(v19, a2, aBlock);

  sub_1CF9E7298();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1CF9FA450;
  v16 = sub_1CF9E7718();
  *(v15 + 56) = v13;
  *(v15 + 64) = v14;
  *(v15 + 32) = v16;
  *(v15 + 40) = v17;
  sub_1CF9E6018();
}

void sub_1CF31AA24(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void, void))
{
  v37 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v32 - v9;
  v39 = 0;
  v40 = 0xE000000000000000;
  v38 = a4;
  _Block_copy(a4);
  sub_1CF9E7948();

  v39 = 0xD000000000000013;
  v40 = 0x80000001CFA3F780;
  v36 = a1;
  sub_1CEFCCBDC(a1, v10, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v11 = sub_1CF9E5CF8();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1CEFCCC44(v10, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v13 = 0xE600000000000000;
    v14 = 0x3E6C6C756E3CLL;
  }

  else
  {
    v15 = sub_1CF9E5C08();
    v13 = v16;
    (*(v12 + 8))(v10, v11);
    v14 = v15;
  }

  MEMORY[0x1D3868CC0](v14, v13);

  MEMORY[0x1D3868CC0](544108320, 0xE400000000000000);
  v17 = NSFileProviderItemIdentifier.description.getter();
  MEMORY[0x1D3868CC0](v17);

  v18 = v40;
  v33 = v39;
  v19 = sub_1CEFFCE80();
  v34 = a2;
  v20 = v19;
  if (qword_1EDEA3408 != -1)
  {
    swift_once();
  }

  sub_1CF9E7298();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1CF9FA440;
  v39 = v20;
  sub_1CEFFD0A8();
  v35 = v20;
  v22 = sub_1CF9E7718();
  v24 = v23;
  v25 = MEMORY[0x1E69E6158];
  *(v21 + 56) = MEMORY[0x1E69E6158];
  v26 = sub_1CEFD51C4();
  *(v21 + 32) = v22;
  *(v21 + 40) = v24;
  *(v21 + 96) = v25;
  *(v21 + 104) = v26;
  v27 = v33;
  *(v21 + 64) = v26;
  *(v21 + 72) = v27;
  *(v21 + 80) = v18;

  sub_1CF9E6018();

  v28 = v38;
  _Block_copy(v38);
  sub_1CF30A030(v34, v37, v36, v28);

  sub_1CF9E7298();
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1CF9FA450;
  v39 = v35;
  v30 = sub_1CF9E7718();
  *(v29 + 56) = v25;
  *(v29 + 64) = v26;
  *(v29 + 32) = v30;
  *(v29 + 40) = v31;
  sub_1CF9E6018();

  _Block_release(v28);
}

void sub_1CF31AE70(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *aBlock)
{
  _Block_copy(aBlock);
  sub_1CF9E7948();
  aBlocka = aBlock;
  v22 = a1;
  if (a2 >> 60 == 15)
  {
    v9 = 0xE600000000000000;
    v10 = 0x65766F6D6572;
  }

  else
  {
    v11 = sub_1CF9E5AB8();
    MEMORY[0x1D3868CC0](v11);

    MEMORY[0x1D3868CC0](6713120, 0xE300000000000000);
    v10 = 544499059;
    v9 = 0xE400000000000000;
  }

  v24 = a2;
  MEMORY[0x1D3868CC0](v10, v9);

  MEMORY[0x1D3868CC0](0x7461642067617420, 0xED0000206E6F2061);
  v12 = NSFileProviderItemIdentifier.description.getter();
  MEMORY[0x1D3868CC0](v12);

  sub_1CEFFCE80();
  if (qword_1EDEA3408 != -1)
  {
    swift_once();
  }

  sub_1CF9E7298();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1CF9FA440;
  sub_1CEFFD0A8();
  v14 = sub_1CF9E7718();
  v16 = v15;
  v17 = MEMORY[0x1E69E6158];
  *(v13 + 56) = MEMORY[0x1E69E6158];
  v18 = sub_1CEFD51C4();
  *(v13 + 32) = v14;
  *(v13 + 40) = v16;
  *(v13 + 96) = v17;
  *(v13 + 104) = v18;
  *(v13 + 64) = v18;
  *(v13 + 72) = 0;
  *(v13 + 80) = 0xE000000000000000;

  sub_1CF9E6018();

  _Block_copy(aBlocka);
  sub_1CF30B2CC(a3, a4, v22, v24, aBlocka);

  sub_1CF9E7298();
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1CF9FA450;
  v20 = sub_1CF9E7718();
  *(v19 + 56) = MEMORY[0x1E69E6158];
  *(v19 + 64) = v18;
  *(v19 + 32) = v20;
  *(v19 + 40) = v21;
  sub_1CF9E6018();

  _Block_release(aBlocka);
}

void sub_1CF31B224(void *a1, uint64_t a2, uint64_t a3, void *aBlock)
{
  _Block_copy(aBlock);
  sub_1CF9E7948();
  aBlocka = aBlock;
  v24 = a1;
  if (a1)
  {
    v7 = [a1 description];
    v8 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v10 = v9;

    MEMORY[0x1D3868CC0](v8, v10);

    MEMORY[0x1D3868CC0](7561504, 0xE300000000000000);
    v11 = 544499059;
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE600000000000000;
    v11 = 0x65766F6D6572;
  }

  MEMORY[0x1D3868CC0](v11, v12);

  MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA3F720);
  v13 = NSFileProviderItemIdentifier.description.getter();
  MEMORY[0x1D3868CC0](v13);

  sub_1CEFFCE80();
  v23 = a2;
  if (qword_1EDEA3408 != -1)
  {
    swift_once();
  }

  sub_1CF9E7298();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1CF9FA440;
  sub_1CEFFD0A8();
  v15 = sub_1CF9E7718();
  v17 = v16;
  v18 = MEMORY[0x1E69E6158];
  *(v14 + 56) = MEMORY[0x1E69E6158];
  v19 = sub_1CEFD51C4();
  *(v14 + 32) = v15;
  *(v14 + 40) = v17;
  *(v14 + 96) = v18;
  *(v14 + 104) = v19;
  *(v14 + 64) = v19;
  *(v14 + 72) = 0;
  *(v14 + 80) = 0xE000000000000000;

  sub_1CF9E6018();

  _Block_copy(aBlocka);
  sub_1CF30C360(v23, a3, v24, aBlocka);

  sub_1CF9E7298();
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1CF9FA450;
  v21 = sub_1CF9E7718();
  *(v20 + 56) = MEMORY[0x1E69E6158];
  *(v20 + 64) = v19;
  *(v20 + 32) = v21;
  *(v20 + 40) = v22;
  sub_1CF9E6018();

  _Block_release(aBlocka);
}

uint64_t sub_1CF31B5E0(uint64_t a1, uint64_t a2, const void *a3)
{
  v83 = a3;
  v93 = a2;
  v4 = sub_1CF9E5CF8();
  v91 = *(v4 - 8);
  v5 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v89 = v6;
  v90 = v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for FSDirectoryEnumerator();
  v7 = *(*(v87 - 8) + 64);
  MEMORY[0x1EEE9AC00](v87);
  v88 = v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_1CF9E5A58();
  v96 = *(v103 - 8);
  v9 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v103);
  v100 = v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v102 = v80 - v12;
  v13 = type metadata accessor for LocalDomain();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v98 = (v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v99 = type metadata accessor for LocalContainer(0);
  v16 = *(*(v99 - 8) + 64);
  MEMORY[0x1EEE9AC00](v99);
  v18 = (v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v95 = swift_allocObject();
  *(v95 + 16) = 0;
  aBlock = 0;
  v105 = 0xE000000000000000;
  sub_1CF9E7948();

  aBlock = 0xD000000000000025;
  v105 = 0x80000001CFA3F660;
  sub_1CEFD5B1C(&unk_1EDEAECD0, MEMORY[0x1E6969530]);
  v94 = a1;
  v101 = v4;
  v19 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v19);

  v20 = aBlock;
  v97 = v105;
  v21 = sub_1CEFFCE80();
  if (qword_1EDEA3408 != -1)
  {
    goto LABEL_15;
  }

  while (1)
  {
    v22 = qword_1EDEBB5A0;
    sub_1CF9E7298();
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1CF9FA440;
    v81 = v21;
    aBlock = v21;
    v80[1] = sub_1CEFFD0A8();
    v25 = sub_1CF9E7718();
    v27 = v26;
    v28 = MEMORY[0x1E69E6158];
    *(v24 + 56) = MEMORY[0x1E69E6158];
    v29 = sub_1CEFD51C4();
    *(v24 + 32) = v25;
    *(v24 + 40) = v27;
    *(v24 + 96) = v28;
    *(v24 + 104) = v29;
    *(v24 + 64) = v29;
    *(v24 + 72) = v20;
    *(v24 + 80) = v97;
    sub_1CF9E6018();

    v30 = v93 + OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_localDomain;
    v86 = type metadata accessor for LocalDomain;
    v31 = v98;
    sub_1CEFFD30C(v93 + OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_localDomain, v98, type metadata accessor for LocalDomain);
    sub_1CF000318(v31, v18);
    aBlock = 0;
    v105 = 0xE000000000000000;
    sub_1CF9E7948();

    aBlock = 0xD000000000000012;
    v105 = 0x80000001CFA3F690;
    v32 = *v18;
    v33 = NSFileProviderItemIdentifier.description.getter();
    MEMORY[0x1D3868CC0](v33);

    v34 = aBlock;
    v35 = v105;
    sub_1CF9E7298();
    v80[2] = v23;
    v36 = swift_allocObject();
    v92 = xmmword_1CF9FA450;
    *(v36 + 16) = xmmword_1CF9FA450;
    *(v36 + 56) = MEMORY[0x1E69E6158];
    *(v36 + 64) = v29;
    v80[0] = v29;
    *(v36 + 32) = v34;
    *(v36 + 40) = v35;
    v82 = v22;
    sub_1CF9E6018();

    v37 = *(v99 + 28);
    v85 = v18;
    v38 = v102;
    sub_1CF9E5958();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF290, &unk_1CFA006C0);
    v39 = v38;
    v40 = v96;
    v41 = (*(v96 + 80) + 32) & ~*(v96 + 80);
    v97 = *(v96 + 72);
    v42 = swift_allocObject();
    *(v42 + 16) = v92;
    v43 = v42 + v41;
    v98 = *(v40 + 16);
    v99 = v40 + 16;
    (v98)(v42 + v41, v39, v103);
    v44 = v87;
    v20 = v88;
    v45 = &v88[*(v87 + 20)];
    v84 = v30;
    sub_1CEFFD30C(v30, v45, v86);
    v46 = (v20 + v44[9]);
    *v46 = 0;
    v46[1] = 0;
    *v20 = v42;
    *(v20 + v44[6]) = 0;
    *(v20 + v44[7]) = 0;
    *(v20 + v44[8]) = -1;
    v47 = v91;
    v48 = v90;
    v49 = v101;
    (*(v91 + 16))(v90, v94, v101);
    v50 = (*(v47 + 80) + 16) & ~*(v47 + 80);
    v51 = (v89 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
    v52 = swift_allocObject();
    (*(v47 + 32))(v52 + v50, v48, v49);
    *(v52 + v51) = v95;
    *(v52 + ((v51 + 15) & 0xFFFFFFFFFFFFFFF8)) = 1000;
    aBlock = 0;
    v110 = 1;
    v101 = v42;
    v53 = *(v42 + 16);

    v18 = v96;
    if (!v53)
    {
      break;
    }

    v54 = 0;
    v55 = (v96 + 8);
    v56 = v102;
    v21 = v103;
    while (v54 < *(v101 + 16))
    {
      v57 = v100;
      (v98)(v100, v43, v21);
      if ((v110 & 1) == 0)
      {
        (*v55)(v57, v21);
        goto LABEL_10;
      }

      objc_autoreleasePoolPop(objc_autoreleasePoolPush());
      v58 = objc_autoreleasePoolPush();
      MEMORY[0x1EEE9AC00](v58);
      v80[-8] = v57;
      v80[-7] = &aBlock;
      v59 = v57;
      v18 = v60;
      v80[-6] = v60;
      v80[-5] = &v110;
      v80[-4] = 7;
      v80[-3] = sub_1CF326BE0;
      v80[-2] = v52;
      LOBYTE(v80[-1]) = 1;
      sub_1CF9E59B8();
      ++v54;
      objc_autoreleasePoolPop(v58);
      v61 = v59;
      v21 = v103;
      (*v55)(v61, v103);
      v43 += v97;
      v20 = v18;
      v56 = v102;
      if (v53 == v54)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_15:
    swift_once();
  }

  v56 = v102;
  v21 = v103;
LABEL_10:

  sub_1CF007BF8(v20, type metadata accessor for FSDirectoryEnumerator);
  (*(v96 + 8))(v56, v21);
  v62 = type metadata accessor for LocalContainerMonitor(0);
  v63 = v62;
  if (qword_1EDEA56B8 != -1)
  {
    v62 = swift_once();
  }

  MEMORY[0x1EEE9AC00](v62);
  v64 = v84;
  v80[-2] = v63;
  v80[-1] = v64;
  v65 = sub_1CF9E7398();
  v66 = aBlock;
  MEMORY[0x1EEE9AC00](v65);
  v67 = v94;
  v80[-4] = v93;
  v80[-3] = v67;
  v80[-2] = v95;
  v80[-1] = 1000;
  v68 = *&v66[OBJC_IVAR____TtC18FileProviderDaemon21LocalContainerMonitor_queue];
  v69 = swift_allocObject();
  v69[2] = v66;
  v69[3] = sub_1CF326BFC;
  v69[4] = &v80[-6];
  v70 = swift_allocObject();
  *(v70 + 16) = sub_1CF327480;
  *(v70 + 24) = v69;
  v108 = sub_1CF1C0B54;
  v109 = v70;
  aBlock = MEMORY[0x1E69E9820];
  v105 = 1107296256;
  v106 = sub_1CEFFD02C;
  v107 = &block_descriptor_220;
  v71 = _Block_copy(&aBlock);
  v72 = v109;
  v73 = v66;

  dispatch_sync(v68, v71);
  _Block_release(v71);
  LOBYTE(v68) = swift_isEscapingClosureAtFileLocation();

  v74 = v85;
  if (v68)
  {
    __break(1u);
    _Block_release(v83);
    objc_autoreleasePoolPop(v72);
    result = (*v73)(v70, v103);
    __break(1u);
  }

  else
  {
    (*(v83 + 2))();
    sub_1CF007BF8(v74, type metadata accessor for LocalContainer);
    sub_1CF9E7298();
    v75 = swift_allocObject();
    *(v75 + 16) = v92;
    aBlock = v81;
    v76 = sub_1CF9E7718();
    v77 = v80[0];
    *(v75 + 56) = MEMORY[0x1E69E6158];
    *(v75 + 64) = v77;
    *(v75 + 32) = v76;
    *(v75 + 40) = v78;
    sub_1CF9E6018();
  }

  return result;
}

uint64_t sub_1CF31C1B0(uint64_t a1, uint64_t a2, uint64_t a3, void *aBlock)
{
  _Block_copy(aBlock);
  sub_1CF9E7948();

  MEMORY[0x1D3868CC0](a1, a2);
  sub_1CEFFCE80();
  if (qword_1EDEA3408 != -1)
  {
    swift_once();
  }

  sub_1CF9E7298();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1CF9FA440;
  sub_1CEFFD0A8();
  v8 = sub_1CF9E7718();
  v10 = v9;
  v11 = MEMORY[0x1E69E6158];
  *(v7 + 56) = MEMORY[0x1E69E6158];
  v12 = sub_1CEFD51C4();
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  *(v7 + 96) = v11;
  *(v7 + 104) = v12;
  *(v7 + 64) = v12;
  *(v7 + 72) = 0xD00000000000001CLL;
  *(v7 + 80) = 0x80000001CFA3F640;

  sub_1CF9E6018();

  sub_1CF30E7C0(a3, a1, a2, aBlock);

  sub_1CF9E7298();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1CF9FA450;
  v14 = sub_1CF9E7718();
  *(v13 + 56) = v11;
  *(v13 + 64) = v12;
  *(v13 + 32) = v14;
  *(v13 + 40) = v15;
  sub_1CF9E6018();

  return 0;
}

uint64_t sub_1CF31C48C(void *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for LocalContainerSnapshot(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v19 - v11;
  v13 = OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_localDomain;
  v14 = type metadata accessor for LocalContainerMonitor(0);
  v15 = v14;
  if (qword_1EDEA56B8 != -1)
  {
    v14 = swift_once();
  }

  v16 = &a2[v13];
  MEMORY[0x1EEE9AC00](v14);
  v19[-2] = v15;
  v19[-1] = &a2[v13];
  sub_1CF9E7398();
  v17 = v19[1];
  sub_1CEFFF6AC(v12);

  sub_1CF30F448(v12, 1, 0xD000000000000021, 0x80000001CFA3F5E0, a1, a2);
  sub_1CF00BF00(v16, v9);
  sub_1CF30F448(v9, 0, 0xD000000000000021, 0x80000001CFA3F610, a1, a2);
  (*(a3 + 16))(a3, 0);
  sub_1CF007BF8(v9, type metadata accessor for LocalContainerSnapshot);
  return sub_1CF007BF8(v12, type metadata accessor for LocalContainerSnapshot);
}

void sub_1CF31C694(void *a1, uint64_t (*a2)(), uint64_t a3, uint64_t (*a4)(), char *a5, void (*a6)(uint64_t, void, void, id), _OWORD *a7)
{
  v484 = a4;
  v486 = a2;
  v494 = a1;
  v519 = *MEMORY[0x1E69E9840];
  v475 = sub_1CF9E5CF8();
  v452 = *(v475 - 8);
  v11 = *(v452 + 64);
  MEMORY[0x1EEE9AC00](v475);
  v469 = &v429 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v470 = &v429 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v468 = &v429 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v474 = &v429 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v476 = &v429 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v466 = &v429 - v24;
  v25 = type metadata accessor for LocalDomain();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v464 = (&v429 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v28);
  v465 = &v429 - v29;
  v30 = sub_1CF9E53C8();
  v462 = *(v30 - 8);
  v463 = v30;
  v31 = *(v462 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v461 = &v429 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1CF9E5A58();
  v480 = *(v33 - 8);
  v481 = v33;
  v34 = *(v480 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v450 = &v429 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v451 = &v429 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v453 = &v429 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v472 = &v429 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v447 = &v429 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v473 = &v429 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v460 = &v429 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v459 = &v429 - v49;
  v50 = type metadata accessor for ItemMetadata();
  v455 = *(v50 - 8);
  v51 = *(v455 + 64);
  MEMORY[0x1EEE9AC00](v50 - 8);
  v467 = &v429 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53);
  v457 = &v429 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v479 = &v429 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v477 = &v429 - v58;
  v456 = v59;
  MEMORY[0x1EEE9AC00](v60);
  v478 = &v429 - v61;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v483 = *(v62 - 8);
  v63 = *(v483 + 64);
  MEMORY[0x1EEE9AC00](v62 - 8);
  v65 = &v429 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v66);
  v449 = &v429 - v67;
  MEMORY[0x1EEE9AC00](v68);
  v448 = &v429 - v69;
  MEMORY[0x1EEE9AC00](v70);
  v471 = &v429 - v71;
  MEMORY[0x1EEE9AC00](v72);
  v454 = &v429 - v73;
  MEMORY[0x1EEE9AC00](v74);
  v458 = &v429 - v75;
  v482 = v76;
  MEMORY[0x1EEE9AC00](v77);
  v79 = &v429 - v78;
  v80 = sub_1CF9E5248();
  v81 = *(*(v80 - 8) + 64);
  MEMORY[0x1EEE9AC00](v80 - 8);
  v487 = &v429 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_1CF9E5268();
  v489 = *(v83 - 8);
  v490 = v83;
  v84 = *(v489 + 64);
  MEMORY[0x1EEE9AC00](v83);
  v488 = &v429 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_1CF9E64A8();
  v87 = *(v86 - 8);
  v88 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v86);
  v90 = (&v429 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0));
  v91 = swift_allocObject();
  v491 = a6;
  *(v91 + 16) = a6;
  *(v91 + 24) = a7;
  v493 = v91;
  v495 = a5;
  v92 = *&a5[OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_queue];
  *v90 = v92;
  (*(v87 + 104))(v90, *MEMORY[0x1E69E8020], v86);
  v492 = a7;

  v93 = v92;
  LOBYTE(v92) = sub_1CF9E64D8();
  (*(v87 + 8))(v90, v86);
  if ((v92 & 1) == 0)
  {
    __break(1u);
    goto LABEL_114;
  }

  v485 = a3;
  if ((a3 & 0x40000000) != 0)
  {
    v94 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v95 = sub_1CF9E6888();
    v96 = [v94 initWithSuiteName_];

    if (!v96 || (v97 = sub_1CF9E6888(), v98 = [v96 BOOLForKey_], v96, v97, !v98))
    {
      sub_1CEFCCBDC(v484, v65, &unk_1EC4BE310, qword_1CF9FCBE0);
      v106 = (*(v483 + 80) + 72) & ~*(v483 + 80);
      v107 = swift_allocObject();
      v108 = v493;
      v107[2] = sub_1CF3263CC;
      v107[3] = v108;
      v99 = v495;
      v109 = v494;
      v107[4] = v495;
      v107[5] = v109;
      v111 = v485;
      v110 = v486;
      v107[6] = v486;
      v107[7] = v111;
      v107[8] = 0x40000000;
      sub_1CEFE55D0(v65, v107 + v106, &unk_1EC4BE310, qword_1CF9FCBE0);
      v112 = &selRef_setItemPendingScanningProviderRemovalOfDatalessBitStatus_;
      if (([v109 respondsToSelector_] & 1) == 0)
      {

        __break(1u);
        goto LABEL_215;
      }

      v113 = v99;

      swift_unknownObjectRetain();
      v114 = v110;
      v115 = [v109 isTrashed];
      v116 = [v109 itemIdentifier];
      v117 = v116;
      if (v115)
      {
        sub_1CF3030B4(v116, sub_1CF32741C, v107);

        goto LABEL_15;
      }

      if ((v111 & 4) != 0)
      {
        v127 = [v109 parentItemIdentifier];
      }

      else
      {
        v127 = 0;
      }

      sub_1CF304734(v117, v127, sub_1CF32741C, v107);

      goto LABEL_16;
    }
  }

  v99 = v494;
  v100 = [v494 itemIdentifier];
  v101 = *MEMORY[0x1E6967258];
  v102 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v104 = v103;
  if (v102 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v104 == v105)
  {

LABEL_12:
    sub_1CF9E5208();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CEFD5B1C(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
    v119 = v488;
    v120 = v490;
    sub_1CF9E57D8();
    v121 = sub_1CF9E50D8();
    (*(v489 + 8))(v119, v120);
    swift_willThrow();

LABEL_13:
    v486 = 0;
    v110 = 0;
    goto LABEL_14;
  }

  v118 = sub_1CF9E8048();

  if (v118)
  {
    goto LABEL_12;
  }

  v443 = v101;
  v128 = [v99 itemIdentifier];
  v129 = sub_1CEFFCBA8(v128);
  v446 = 0;
  v444 = v100;
  v445 = v129;

  v130 = [objc_allocWithZone(MEMORY[0x1E696ABF8]) init];
  v131 = [objc_opt_self() legacyDefaultManager];
  v132 = [v131 providerIdentifier];

  if (!v132)
  {
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v132 = sub_1CF9E6888();
  }

  [v130 setPurposeIdentifier_];

  v133 = v481;
  v134 = swift_allocBox();
  v136 = v135;
  v137 = [v99 itemIdentifier];
  sub_1CF2FD4F4(v137, v79);
  v138 = v133;

  v109 = v480;
  v139 = v480 + 48;
  v441 = *(v480 + 48);
  if (v441(v79, 1, v138) == 1)
  {
    sub_1CEFCCC44(v79, &unk_1EC4BE310, qword_1CF9FCBE0);
    swift_deallocBox();
    v140 = [v99 itemIdentifier];
    v121 = FPItemNotFoundError();

    if (v121)
    {
      swift_willThrow();

      swift_unknownObjectRelease();
      goto LABEL_13;
    }

LABEL_225:

    __break(1u);
    goto LABEL_226;
  }

  v435 = v139;
  v436 = v136;
  v440 = v130;
  v442 = v134;
  v434 = v109[4];
  v434(v136, v79, v138);
  v111 = v485;
  if ((v485 & 1) == 0)
  {
    v141 = 0;
    v439 = 0;
    v142 = v444;
    goto LABEL_41;
  }

  v438 = v109 + 4;
  v143 = v109;
  v144 = v445;
  if ([v445 respondsToSelector_])
  {
    v145 = [v144 itemVersion];
    v146 = [v145 contentVersion];

    v147 = sub_1CF9E5B88();
    v149 = v148;
  }

  else
  {
    v147 = 0;
    v149 = 0xF000000000000000;
  }

  v150 = [v486 contentVersion];
  v151 = sub_1CF9E5B88();
  v153 = v152;

  if (v149 >> 60 == 15)
  {
    v142 = v444;
    if (v153 >> 60 == 15)
    {
      sub_1CEFE48D8(v147, v149);
LABEL_40:
      v439 = 0;
      v141 = 1;
      v109 = v143;
      goto LABEL_41;
    }
  }

  else
  {
    v142 = v444;
    if (v153 >> 60 != 15)
    {
      sub_1CEFF05F4(v147, v149);
      sub_1CEFE42D4(v151, v153);
      v155 = sub_1CF328660(v147, v149, v151, v153);
      sub_1CEFE4714(v151, v153);
      sub_1CEFE48D8(v147, v149);
      sub_1CEFE48D8(v151, v153);
      sub_1CEFE48D8(v147, v149);
      if (v155)
      {
        goto LABEL_40;
      }

      goto LABEL_37;
    }
  }

  sub_1CEFE48D8(v147, v149);
  sub_1CEFE48D8(v151, v153);
LABEL_37:
  v112 = 0x80000001CFA3F320;
  v109 = v143;
  if (qword_1EDEA3408 != -1)
  {
    goto LABEL_213;
  }

  while (1)
  {
    sub_1CF9E7288();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v154 = swift_allocObject();
    *(v154 + 16) = xmmword_1CF9FA450;
    *(v154 + 56) = MEMORY[0x1E69E6158];
    *(v154 + 64) = sub_1CEFD51C4();
    *(v154 + 32) = 0xD000000000000039;
    *(v154 + 40) = v112;
    sub_1CF9E6018();

    v141 = 0;
    v111 &= 0xFFFFFFFFFFFFFF7ELL;
    v439 = 1;
    v142 = v444;
LABEL_41:
    *&v517[0] = v141;
    type metadata accessor for NSFileProviderItemFields(0);
    sub_1CEFD5B1C(&qword_1EC4BD1B8, type metadata accessor for NSFileProviderItemFields);
    if (sub_1CF9E7798())
    {
      v156 = v445;
      if ([v445 respondsToSelector_])
      {
        v157 = [v156 itemVersion];
        v158 = [v157 metadataVersion];

        v159 = sub_1CF9E5B88();
        v161 = v160;
      }

      else
      {
        v159 = 0;
        v161 = 0xF000000000000000;
      }

      v162 = [v486 metadataVersion];
      v163 = sub_1CF9E5B88();
      v165 = v164;

      if (v161 >> 60 == 15)
      {
        if (v165 >> 60 == 15)
        {
          sub_1CEFE48D8(v159, v161);
        }

        else
        {
LABEL_49:
          sub_1CEFE48D8(v159, v161);
          sub_1CEFE48D8(v163, v165);
LABEL_50:
          *&v517[0] = 0;
          *(&v517[0] + 1) = 0xE000000000000000;
          sub_1CF9E7948();
          MEMORY[0x1D3868CC0](0xD000000000000041, 0x80000001CFA3F2D0);
          v166 = sub_1CF7F5844(v111);
          MEMORY[0x1D3868CC0](v166);

          v167 = v517[0];
          if (qword_1EDEA3408 != -1)
          {
            swift_once();
          }

          sub_1CF9E7288();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
          v168 = swift_allocObject();
          *(v168 + 16) = xmmword_1CF9FA450;
          *(v168 + 56) = MEMORY[0x1E69E6158];
          *(v168 + 64) = sub_1CEFD51C4();
          *(v168 + 32) = v167;
          sub_1CF9E6018();
        }

        v142 = v444;
        goto LABEL_54;
      }

      if (v165 >> 60 == 15)
      {
        goto LABEL_49;
      }

      sub_1CEFF05F4(v159, v161);
      sub_1CEFE42D4(v163, v165);
      v187 = sub_1CF328660(v159, v161, v163, v165);
      sub_1CEFE4714(v163, v165);
      sub_1CEFE48D8(v159, v161);
      sub_1CEFE48D8(v163, v165);
      sub_1CEFE48D8(v159, v161);
      v142 = v444;
      if ((v187 & 1) == 0)
      {
        goto LABEL_50;
      }
    }

LABEL_54:
    if (!v111)
    {
      v185 = swift_unknownObjectRetain();
      v491(v185, 0, v439, 0);

      swift_unknownObjectRelease_n();
      goto LABEL_16;
    }

    v169 = swift_allocObject();
    Fields.init(_:)(v111);
    v170 = v478;
    sub_1CF30FD54(v445, v478);
    v171 = v477;
    sub_1CF30FD54(v99, v477);
    v172 = *(v169 + 16);
    v173 = v479;
    sub_1CEFFD30C(v170, v479, type metadata accessor for ItemMetadata);
    *&v517[0] = v172;
    sub_1CF677700(v517, v171);
    v174 = swift_allocObject();
    v437 = v169;
    v438 = v174;
    *(v174 + 16) = 0;
    v433 = (v174 + 16);
    v175 = *(v169 + 16);
    v176 = (v169 + 16);
    v485 = v176;
    if (v175)
    {
      v177 = [v445 filename];
      v178 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v180 = v179;

      v181 = [v99 filename];
      v182 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v184 = v183;

      if (v178 == v182 && v180 == v184)
      {

        v176 = v485;
      }

      else
      {
        v186 = sub_1CF9E8048();

        v176 = v485;
        if ((v186 & 1) == 0)
        {
          v175 = *v485;
          v173 = v479;
          goto LABEL_66;
        }
      }

      v175 = *v176;
      v173 = v479;
      if (*v176)
      {
        v175 &= ~1uLL;
        *v176 = v175;
      }
    }

LABEL_66:
    v188 = v484;
    if ((v175 & 2) == 0)
    {
      goto LABEL_74;
    }

    v189 = [v445 parentItemIdentifier];
    v190 = [v99 parentItemIdentifier];
    v191 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v193 = v192;
    if (v191 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v193 == v194)
    {
    }

    else
    {
      v195 = sub_1CF9E8048();

      if ((v195 & 1) == 0)
      {
        v188 = v484;
        v176 = v485;
        v175 = *v485;
        v173 = v479;
        goto LABEL_74;
      }
    }

    v188 = v484;
    v176 = v485;
    v175 = *v485;
    v173 = v479;
    if ((*v485 & 2) != 0)
    {
      v175 &= ~2uLL;
      *v485 = v175;
    }

LABEL_74:
    a7 = v499;
    if ((v175 & 8) != 0)
    {
      sub_1CEFE528C(&v501);
      v518 = v516;
      v517[12] = v513;
      v517[13] = v514;
      v517[14] = v515;
      v517[8] = v509;
      v517[9] = v510;
      v517[10] = v511;
      v517[11] = v512;
      v517[4] = v505;
      v517[5] = v506;
      v517[6] = v507;
      v517[7] = v508;
      v517[0] = v501;
      v517[1] = v502;
      v517[2] = v503;
      v517[3] = v504;
      MEMORY[0x1EEE9AC00](v196);
      *(&v429 - 2) = v188;
      v197 = v446;
      sub_1CF9BA920(v517, sub_1CF327348, &v429 - 4);
      v446 = v197;
      if (v197)
      {
        swift_unknownObjectRelease();

        sub_1CF007BF8(v477, type metadata accessor for ItemMetadata);
        sub_1CF007BF8(v478, type metadata accessor for ItemMetadata);

        sub_1CF007BF8(v173, type metadata accessor for ItemMetadata);

        v486 = 0;
        v110 = 0;
        v99 = v494;
        v121 = v446;
        goto LABEL_14;
      }

      v175 = *v176;
    }

    v198 = v494;
    if ((v175 & 2) == 0)
    {
      v198 = v445;
      if ((v175 & 1) == 0)
      {
        v486 = 0;
        v458 = 0;
        v199 = v481;
        goto LABEL_81;
      }
    }

    v201 = [v198 parentItemIdentifier];
    if (*v176)
    {
      v202 = v494;
    }

    else
    {
      v202 = v445;
    }

    v203 = [v202 &selRef_fp_isSyncAnchorExpiredError];
    v204 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v486 = v205;

    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v206 = sub_1CF9E6AE8();

    if (v206)
    {
      v207 = v201;
      goto LABEL_94;
    }

    v208 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v210 = v209;
    if (v208 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v210 == v211)
    {
      v207 = v201;

      goto LABEL_94;
    }

    v212 = sub_1CF9E8048();

    if (v212)
    {
      v207 = v201;
      v173 = v479;
LABEL_94:

      sub_1CF9E5208();
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CEFD5B1C(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
      v213 = v488;
      v214 = v490;
      sub_1CF9E57D8();
      v121 = sub_1CF9E50D8();
      (*(v489 + 8))(v213, v214);
      swift_willThrow();
      swift_unknownObjectRelease();

      sub_1CF007BF8(v477, type metadata accessor for ItemMetadata);
      sub_1CF007BF8(v478, type metadata accessor for ItemMetadata);

      v215 = v173;
LABEL_95:
      sub_1CF007BF8(v215, type metadata accessor for ItemMetadata);

      v486 = 0;
      v110 = 0;
      v99 = v494;
LABEL_14:
      v122 = [v99 itemIdentifier];
      v123 = sub_1CEFFCBA8(v122);

      v124 = v486;
      v125 = v121;
      v491(v123, 0, 0, v121);

      swift_unknownObjectRelease();
      sub_1CEFF7124(v124);
      sub_1CEFF7124(v110);
      goto LABEL_15;
    }

    v232 = v458;
    sub_1CF2FD4F4(v201, v458);
    v233 = v481;
    if (v441(v232, 1, v481) == 1)
    {
      sub_1CEFCCC44(v232, &unk_1EC4BE310, qword_1CF9FCBE0);
      v234 = FPItemNotFoundError();
      if (v234)
      {
        v235 = v201;
        v121 = v234;

        swift_willThrow();
        swift_unknownObjectRelease();

        sub_1CF007BF8(v477, type metadata accessor for ItemMetadata);
        sub_1CF007BF8(v478, type metadata accessor for ItemMetadata);

        v215 = v479;
        goto LABEL_95;
      }

LABEL_226:

      __break(1u);
LABEL_227:

      __break(1u);
LABEL_228:

      sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/os-plugins/LocalStorage/extension/URL+LocalStorageAdditions.swift", 121, 2, 39);
    }

    v430 = v201;
    v434(v459, v232, v233);
    v236 = v473;
    v431 = v109[2];
    v432 = v109 + 2;
    v431(v473, v436, v233);
    v237 = sub_1CF9E5928();
    v434 = v109[1];
    (v434)(v236, v233);
    v238 = sub_1CF9E5928();
    v239 = [v237 fp:v238 relationshipToItemAtURL:?];

    if (v239)
    {
      v240 = v204;
      sub_1CF9E5958();
      v241 = v445;
      v242 = v481;
      v243 = v436;
    }

    else
    {
      *&v501 = 0;
      *(&v501 + 1) = 0xE000000000000000;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0xD00000000000002DLL, 0x80000001CFA3F2A0);
      v269 = v473;
      v242 = v481;
      v431(v473, v436, v481);
      sub_1CEFD5B1C(&unk_1EDEAB3F0, MEMORY[0x1E6968FB0]);
      v270 = sub_1CF9E7F98();
      MEMORY[0x1D3868CC0](v270);

      (v434)(v269, v242);
      MEMORY[0x1D3868CC0](0x206F746E6920, 0xE600000000000000);
      v271 = sub_1CF9E7F98();
      MEMORY[0x1D3868CC0](v271);

      v272 = v501;
      if (qword_1EDEA3408 != -1)
      {
        swift_once();
      }

      sub_1CF9E7298();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v273 = swift_allocObject();
      *(v273 + 16) = xmmword_1CF9FA450;
      *(v273 + 56) = MEMORY[0x1E69E6158];
      *(v273 + 64) = sub_1CEFD51C4();
      *(v273 + 32) = v272;
      sub_1CF9E6018();

      v274 = v436;
      v431(v460, v436, v242);
      v241 = v445;
      v243 = v274;
      v240 = v204;
    }

    v275 = v473;
    v431(v473, v243, v242);
    sub_1CEFD5B1C(&qword_1EDEAB410, MEMORY[0x1E6968FB0]);
    v276 = sub_1CF9E6868();
    (v434)(v275, v242);
    if (v276)
    {
      *&v501 = 0;
      *(&v501 + 1) = 0xE000000000000000;
      sub_1CF9E7948();

      *&v501 = 0xD00000000000001ALL;
      *(&v501 + 1) = 0x80000001CFA3F280;
      v277 = [v241 parentItemIdentifier];
      v278 = NSFileProviderItemIdentifier.description.getter();
      MEMORY[0x1D3868CC0](v278);

      MEMORY[0x1D3868CC0](58, 0xE100000000000000);
      v279 = [v241 filename];
      v280 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v282 = v281;

      MEMORY[0x1D3868CC0](v280, v282);

      MEMORY[0x1D3868CC0](544175136, 0xE400000000000000);
      v261 = v430;
      v283 = NSFileProviderItemIdentifier.description.getter();
      MEMORY[0x1D3868CC0](v283);

      MEMORY[0x1D3868CC0](58, 0xE100000000000000);
      MEMORY[0x1D3868CC0](v240, v486);

      v259 = *(&v501 + 1);
      v112 = v501;
      if (qword_1EDEA3408 != -1)
      {
        goto LABEL_223;
      }

      goto LABEL_126;
    }

    *&v501 = 0;
    *(&v501 + 1) = 0xE000000000000000;
    sub_1CF9E7948();

    *&v501 = 0xD000000000000011;
    *(&v501 + 1) = 0x80000001CFA3F240;
    v286 = [v241 parentItemIdentifier];
    v287 = NSFileProviderItemIdentifier.description.getter();
    MEMORY[0x1D3868CC0](v287);

    MEMORY[0x1D3868CC0](58, 0xE100000000000000);
    v288 = [v241 filename];
    v289 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v291 = v290;

    MEMORY[0x1D3868CC0](v289, v291);

    MEMORY[0x1D3868CC0](544175136, 0xE400000000000000);
    v292 = NSFileProviderItemIdentifier.description.getter();
    MEMORY[0x1D3868CC0](v292);

    MEMORY[0x1D3868CC0](58, 0xE100000000000000);
    MEMORY[0x1D3868CC0](v240, v486);
    v293 = v501;
    if (qword_1EDEA3408 != -1)
    {
      swift_once();
    }

    sub_1CF9E7298();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v294 = swift_allocObject();
    *(v294 + 16) = xmmword_1CF9FA450;
    *(v294 + 56) = MEMORY[0x1E69E6158];
    *(v294 + 64) = sub_1CEFD51C4();
    *(v294 + 32) = v293;
    sub_1CF9E6018();

    v295 = swift_allocObject();
    v296 = v486;
    *(v295 + 16) = v240;
    *(v295 + 24) = v296;
    v297 = v495;
    v298 = v438;
    v458 = v295;
    *(v295 + 32) = v495;
    *(v295 + 40) = v298;
    v299 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v300 = v297;

    v301 = sub_1CF9E6888();
    v302 = [v299 initWithSuiteName_];

    if (!v302)
    {
      goto LABEL_132;
    }

    v303 = sub_1CF9E6888();
    v304 = [v302 BOOLForKey_];

    if (v304)
    {
      v305 = v473;
      v306 = v436;
      v199 = v481;
      v431(v473, v436, v481);
      v307 = v460;
      sub_1CF3115C4(v305, v460, v240, v486, v300, v438);

      v308 = v434;
      (v434)(v305, v199);
      v308(v459, v199);
      v109 = v480;
      (*(v480 + 40))(v306, v307, v199);

      v486 = 0;
      v458 = 0;
      v173 = v479;
    }

    else
    {
LABEL_132:

      v309 = v473;
      v310 = v481;
      v431(v473, v436, v481);
      v486 = sub_1CF9E5928();
      v311 = v434;
      (v434)(v309, v310);
      v312 = sub_1CF9E5928();
      v313 = swift_allocObject();
      v314 = v458;
      *(v313 + 16) = sub_1CF3272E8;
      *(v313 + 24) = v314;
      *&v503 = sub_1CF327308;
      *(&v503 + 1) = v313;
      *&v501 = MEMORY[0x1E69E9820];
      *(&v501 + 1) = 1107296256;
      *&v502 = sub_1CF3120D4;
      *(&v502 + 1) = &block_descriptor_176;
      v315 = _Block_copy(&v501);

      *&v501 = 0;
      v316 = v486;
      [v440 coordinateWritingItemAtURL:v486 options:2 writingItemAtURL:v312 options:0 error:&v501 byAccessor:v315];
      _Block_release(v315);

      v311(v459, v310);
      v317 = v501;
      LOBYTE(v316) = swift_isEscapingClosureAtFileLocation();

      v109 = v480;
      if (v316)
      {
        __break(1u);
        goto LABEL_225;
      }

      (*(v480 + 40))(v436, v460, v310);

      v486 = sub_1CF3272E8;
      v173 = v479;
      v199 = v310;
      v460 = v317;
      if (v317)
      {
        v110 = 0;
        v112 = 0;
        goto LABEL_83;
      }
    }

    while (1)
    {
      v176 = v485;
LABEL_81:
      v200 = v433;
      swift_beginAccess();
      if (*v200)
      {
        v110 = 0;
        v112 = 0;
        v460 = 0;
LABEL_83:
        v99 = v494;
        goto LABEL_162;
      }

      if ((*v176 & 8) == 0)
      {
        v216 = *v176 & 0xFFFFFFFFFFFFFFF4;
        if (qword_1EDEABDE0 != -1)
        {
          swift_once();
        }

        if ((v216 & (qword_1EDEABDE8 | 0x409000000C000)) == 0)
        {
          v110 = 0;
          v112 = 0;
          v460 = 0;
          v99 = v494;
          v199 = v481;
          goto LABEL_162;
        }
      }

      *&v501 = 0;
      *(&v501 + 1) = 0xE000000000000000;
      sub_1CF9E7948();

      *&v501 = 0xD000000000000027;
      *(&v501 + 1) = 0x80000001CFA3F130;
      v217 = sub_1CF0720C8();
      MEMORY[0x1D3868CC0](v217);

      v218 = v173;
      v219 = v501;
      if (qword_1EDEA3408 != -1)
      {
        swift_once();
      }

      sub_1CF9E7298();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v220 = swift_allocObject();
      *(v220 + 16) = xmmword_1CF9FA450;
      *(v220 + 56) = MEMORY[0x1E69E6158];
      *(v220 + 64) = sub_1CEFD51C4();
      *(v220 + 32) = v219;
      sub_1CF9E6018();

      v221 = v454;
      sub_1CEFCCBDC(v484, v454, &unk_1EC4BE310, qword_1CF9FCBE0);
      v222 = v457;
      v484 = type metadata accessor for ItemMetadata;
      sub_1CEFFD30C(v218, v457, type metadata accessor for ItemMetadata);
      sub_1CEFCCBDC(v221, v471, &unk_1EC4BE310, qword_1CF9FCBE0);
      sub_1CEFFD30C(v222, v467, type metadata accessor for ItemMetadata);
      v223 = (*(v483 + 80) + 40) & ~*(v483 + 80);
      v224 = (v482 + v223 + 7) & 0xFFFFFFFFFFFFFFF8;
      v225 = (*(v455 + 80) + v224 + 8) & ~*(v455 + 80);
      v226 = (v456 + v225 + 7) & 0xFFFFFFFFFFFFFFF8;
      v227 = swift_allocObject();
      v228 = v437;
      v229 = v445;
      *(v227 + 16) = v437;
      *(v227 + 24) = v229;
      *(v227 + 32) = v442;
      sub_1CEFE55D0(v221, v227 + v223, &unk_1EC4BE310, qword_1CF9FCBE0);
      v230 = v444;
      *(v227 + v224) = v444;
      sub_1CEFFC48C(v222, v227 + v225, v484);
      v484 = v227;
      *(v227 + v226) = v438;
      swift_beginAccess();
      if ((*(v228 + 16) & 8) == 0)
      {
        swift_unknownObjectRetain();

        v231 = v230;
        a3 = v480;
        break;
      }

      v244 = objc_allocWithZone(MEMORY[0x1E695E000]);
      swift_unknownObjectRetain();

      v245 = v230;
      v246 = sub_1CF9E6888();
      v247 = [v244 initWithSuiteName_];

      a3 = v480;
      if (v247)
      {
        v248 = sub_1CF9E6888();
        v249 = [v247 BOOLForKey_];

        if (v249)
        {
          break;
        }
      }

LABEL_114:
      sub_1CF007BF8(v467, type metadata accessor for ItemMetadata);
      sub_1CEFCCC44(v471, &unk_1EC4BE310, qword_1CF9FCBE0);
      v255 = v436;
      swift_beginAccess();
      v256 = v473;
      v257 = v481;
      (*(a3 + 16))(v473, v255, v481);
      v258 = sub_1CF9E5928();
      (*(a3 + 8))(v256, v257);
      v112 = swift_allocObject();
      v259 = v484;
      v112[2] = sub_1CF327418;
      v112[3] = v259;
      v260 = swift_allocObject();
      v110 = sub_1CF327478;
      *(v260 + 16) = sub_1CF327478;
      *(v260 + 24) = v112;
      *&v503 = sub_1CF327478;
      *(&v503 + 1) = v260;
      *&v501 = MEMORY[0x1E69E9820];
      *(&v501 + 1) = 1107296256;
      *&v502 = sub_1CF2FCAB8;
      *(&v502 + 1) = &block_descriptor_165;
      v261 = _Block_copy(&v501);

      *&v501 = 0;
      [v440 coordinateWritingItemAtURL:v258 options:0 error:&v501 byAccessor:v261];

      _Block_release(v261);

      v460 = v501;
      v262 = v501;
      LOBYTE(v258) = swift_isEscapingClosureAtFileLocation();

      if ((v258 & 1) == 0)
      {
        v99 = v494;
        v109 = v480;
        v199 = v481;
        goto LABEL_162;
      }

      __break(1u);
LABEL_223:
      swift_once();
LABEL_126:
      sub_1CF9E7298();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v284 = swift_allocObject();
      *(v284 + 16) = xmmword_1CF9FA450;
      *(v284 + 56) = MEMORY[0x1E69E6158];
      *(v284 + 64) = sub_1CEFD51C4();
      *(v284 + 32) = v112;
      *(v284 + 40) = v259;
      sub_1CF9E6018();

      v199 = v481;
      v285 = v434;
      (v434)(v460, v481);
      v285(v459, v199);
      v486 = 0;
      v458 = 0;
      v173 = v479;
      v109 = v480;
    }

    v250 = v436;
    swift_beginAccess();
    v251 = *(a3 + 16);
    v252 = v453;
    v251(v453, v250, v481);
    v253 = *v485;
    if ((*v485 & 8) != 0)
    {
      v263 = v445;
      if (([v445 respondsToSelector_] & 1) != 0 && (objc_msgSend(v263, sel_fileSystemFlags) & 4) != 0)
      {
        v320 = v481;
        v267 = v448;
      }

      else
      {
        v264 = v473;
        v265 = v481;
        v251(v473, v436, v481);
        v266 = sub_1CF9E5928();
        (*(a3 + 8))(v264, v265);
        *&v501 = 0;
        LODWORD(v265) = [v266 fp:&v501 makeWritableWithError:?];

        v267 = v448;
        if (v265)
        {
          v268 = v501;
        }

        else
        {
          v318 = v501;
          v319 = sub_1CF9E57F8();

          swift_willThrow();
          v446 = 0;
        }

        v320 = v481;
        if ((*v485 & 4) == 0)
        {
          *v485 |= 4uLL;
        }
      }

      sub_1CEFCCBDC(v471, v267, &unk_1EC4BE310, qword_1CF9FCBE0);
      if (v441(v267, 1, v320) == 1)
      {
        goto LABEL_227;
      }

      sub_1CF9E5A18();
      v321 = *(a3 + 8);
      v321(v267, v320);
      v322 = v451;
      sub_1CF9E58C8();

      v323 = [objc_opt_self() defaultManager];
      v324 = v450;
      v251(v450, v436, v320);
      v325 = v324;
      v326 = v449;
      v327 = v446;
      sub_1CF9E7278();
      if (v327)
      {

        v321(v325, v320);
        v321(v322, v320);
        sub_1CF007BF8(v467, type metadata accessor for ItemMetadata);
        sub_1CEFCCC44(v471, &unk_1EC4BE310, qword_1CF9FCBE0);
        v328 = v327;
        v446 = 0;
        v109 = v480;
        v252 = v453;
        goto LABEL_160;
      }

      v446 = 0;

      v321(v325, v320);
      sub_1CEFCCC44(v326, &unk_1EC4BE310, qword_1CF9FCBE0);
      v321(v322, v320);
      v254 = v485;
      v253 = *v485;
      v252 = v453;
    }

    else
    {
      v254 = v485;
    }

    v329 = v253 & 0xFFFFFFFFFFFFFFF4;
    if (qword_1EDEABDE0 != -1)
    {
      swift_once();
    }

    v109 = v480;
    if ((v329 & (qword_1EDEABDE8 | 0x409000000C000)) != 0)
    {
      if ((*v254 & 0x20) != 0)
      {
        _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v344 = sub_1CF9E6AE8();

        if (v344)
        {
          goto LABEL_158;
        }

        v345 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v347 = v346;
        if (v345 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v347 == v348)
        {

LABEL_158:
          sub_1CF9E5208();
          sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
          sub_1CEFD5B1C(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
          v350 = v488;
          v351 = v490;
          sub_1CF9E57D8();
          v328 = sub_1CF9E50D8();
          (*(v489 + 8))(v350, v351);
          swift_willThrow();

          sub_1CF007BF8(v467, type metadata accessor for ItemMetadata);
          sub_1CEFCCC44(v471, &unk_1EC4BE310, qword_1CF9FCBE0);
LABEL_159:
          v446 = 0;
LABEL_160:
          v352 = *v433;
          *v433 = v328;

          goto LABEL_161;
        }

        v349 = sub_1CF9E8048();

        if (v349)
        {
          goto LABEL_158;
        }
      }

      sub_1CEFE528C(v499);
      v330 = a7[13];
      v331 = a7[14];
      v332 = a7[11];
      a7[32] = a7[12];
      a7[33] = v330;
      a7[34] = v331;
      v333 = a7[9];
      v334 = a7[10];
      v335 = a7[7];
      a7[28] = a7[8];
      a7[29] = v333;
      a7[30] = v334;
      a7[31] = v332;
      v336 = a7[5];
      v337 = a7[6];
      v338 = a7[3];
      a7[24] = a7[4];
      a7[25] = v336;
      v516 = v500;
      a7[26] = v337;
      a7[27] = v335;
      v339 = v499[1];
      a7[20] = v499[0];
      a7[21] = v339;
      a7[22] = v499[2];
      a7[23] = v338;
      MEMORY[0x1EEE9AC00](v340);
      *(&v429 - 2) = v252;
      *(&v429 - 1) = v254;
      v341 = v467;
      v342 = v446;
      sub_1CF9BA920(&v501, sub_1CF327330, &v429 - 4);
      if (v342)
      {

        sub_1CF007BF8(v341, type metadata accessor for ItemMetadata);
        sub_1CEFCCC44(v471, &unk_1EC4BE310, qword_1CF9FCBE0);
        v328 = v342;
        goto LABEL_159;
      }

      v446 = 0;

      v343 = v341;
    }

    else
    {

      v343 = v467;
    }

    sub_1CF007BF8(v343, type metadata accessor for ItemMetadata);
    sub_1CEFCCC44(v471, &unk_1EC4BE310, qword_1CF9FCBE0);
LABEL_161:
    v99 = v494;
    v199 = v481;
    (v109[1])(v252, v481);
    v110 = 0;
    v112 = 0;
    v460 = 0;
LABEL_162:
    v353 = v485;
    swift_beginAccess();
    if ((*(v353 + 6) & 4) == 0)
    {
      goto LABEL_163;
    }

    v496 = &unk_1F4C7EB30;
    v370 = swift_dynamicCastObjCProtocolUnconditional();
    v371 = [v370 respondsToSelector_];
    v111 = v460;
    if ((v371 & 1) == 0)
    {
      goto LABEL_219;
    }

    v372 = [v370 conflictingVersions];
    if (!v372)
    {
      goto LABEL_219;
    }

    v373 = v372;
    sub_1CEFD57E0(0, &unk_1EDEAB5A0, 0x1E69674E8);
    v108 = sub_1CF9E6D48();

    if (!(v108 >> 62))
    {
      v490 = *((v108 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v490)
      {
        goto LABEL_218;
      }

      v498 = MEMORY[0x1E69E7CC0];
      v374 = v481;
      goto LABEL_172;
    }

LABEL_215:
    if (!sub_1CF9E7818())
    {
LABEL_218:

LABEL_219:
      if (qword_1EDEA3408 != -1)
      {
        swift_once();
      }

      sub_1CF9E72A8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v425 = swift_allocObject();
      *(v425 + 16) = xmmword_1CF9FA450;
      *(v425 + 56) = MEMORY[0x1E69E6158];
      *(v425 + 64) = sub_1CEFD51C4();
      *(v425 + 32) = 0x1000000000000038;
      *(v425 + 40) = 0x80000001CFA3F180;
      sub_1CF9E6018();

      LODWORD(v498) = 22;
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CEFD5B1C(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
      v426 = v461;
      v427 = v463;
      sub_1CF9E57D8();
      v428 = sub_1CF9E53A8();
      (*(v462 + 8))(v426, v427);
      swift_willThrow();
      swift_unknownObjectRelease();

      sub_1CF007BF8(v477, type metadata accessor for ItemMetadata);
      sub_1CF007BF8(v478, type metadata accessor for ItemMetadata);

      sub_1CF007BF8(v479, type metadata accessor for ItemMetadata);

      v121 = v428;
      goto LABEL_14;
    }

    v383 = MEMORY[0x1E69E7CC0];
    v498 = MEMORY[0x1E69E7CC0];
    v424 = sub_1CF9E7818();
    v374 = v481;
    v490 = v424;
    if (!v424)
    {
      break;
    }

LABEL_172:
    v375 = 0;
    v489 = v108 & 0xC000000000000001;
    v376 = v108 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v489)
      {
        v111 = v108;
        v379 = MEMORY[0x1D3869C30](v375, v108);
      }

      else
      {
        if (v375 >= *(v376 + 16))
        {
          goto LABEL_212;
        }

        v111 = v108;
        v379 = *(v108 + 8 * v375 + 32);
      }

      v109 = v379;
      v380 = (v375 + 1);
      if (__OFADD__(v375, 1))
      {
        break;
      }

      if ([v379 conflictResolved])
      {
      }

      else
      {
        sub_1CF9E7A18();
        v377 = *(v498 + 16);
        sub_1CF9E7A58();
        v99 = v494;
        sub_1CF9E7A68();
        sub_1CF9E7A28();
        v374 = v481;
      }

      ++v375;
      v378 = v380 == v490;
      v109 = v480;
      v108 = v111;
      if (v378)
      {
        v383 = v498;
        goto LABEL_186;
      }
    }

    __break(1u);
LABEL_212:
    __break(1u);
LABEL_213:
    swift_once();
  }

LABEL_186:

  v384 = v436;
  swift_beginAccess();
  v385 = v447;
  v386 = (v109[2])(v447, v384, v374);
  MEMORY[0x1EEE9AC00](v386);
  *(&v429 - 2) = v479;
  *(&v429 - 1) = v383;
  v387 = sub_1CF9E5848();
  if ((v387 & 1) == 0)
  {
    goto LABEL_228;
  }

  MEMORY[0x1EEE9AC00](v387);
  *(&v429 - 2) = sub_1CF327474;
  *(&v429 - 1) = (&v429 - 4);
  v388 = v446;
  sub_1CF9E59B8();
  v446 = v388;
  if (v388)
  {
    swift_unknownObjectRelease();

    (*(v480 + 8))(v385, v481);
    sub_1CF007BF8(v477, type metadata accessor for ItemMetadata);
    sub_1CF007BF8(v478, type metadata accessor for ItemMetadata);

    sub_1CF007BF8(v479, type metadata accessor for ItemMetadata);

    v121 = v446;
    goto LABEL_14;
  }

  v418 = v480;
  v199 = v481;
  (*(v480 + 8))(v385, v481);

  v109 = v418;
LABEL_163:
  v354 = v436;
  swift_beginAccess();
  v355 = v109[2];
  v356 = v473;
  v355(v473, v354, v199);
  v357 = v465;
  sub_1CEFFD30C(v495 + OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_localDomain, v465, type metadata accessor for LocalDomain);
  v355(v472, v356, v199);
  v358 = v464;
  sub_1CEFFD30C(v357, v464, type metadata accessor for LocalDomain);
  v359 = type metadata accessor for VFSItem(0);
  v360 = v466;
  (*(*(v359 - 8) + 56))(v466, 1, 1, v359);
  v361 = objc_allocWithZone(type metadata accessor for LocalItem(0));
  v362 = sub_1CF001704(v472, v358, v360);
  sub_1CF007BF8(v357, type metadata accessor for LocalDomain);
  (*(v480 + 8))(v356, v481);
  if (v362)
  {
    v363 = *&v362[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_itemIdentifier];
    v364 = [v99 itemIdentifier];
    v365 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v367 = v366;
    if (v365 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v367 == v368)
    {

      v369 = v460;
      goto LABEL_183;
    }

    v381 = sub_1CF9E8048();

    v369 = v460;
    if (v381)
    {
LABEL_183:
      if (v369)
      {
        v382 = v369;
      }

      else
      {
        v389 = v433;
        swift_beginAccess();
        v369 = *v389;
        v390 = *v389;
        v382 = 0;
      }

      v391 = v440;
      v392 = v362;
      v393 = v382;
      v491(v362, 0, v439, v369);

      swift_unknownObjectRelease();
      sub_1CF007BF8(v477, type metadata accessor for ItemMetadata);
      sub_1CF007BF8(v478, type metadata accessor for ItemMetadata);

      sub_1CF007BF8(v479, type metadata accessor for ItemMetadata);

      sub_1CEFF7124(v486);
      sub_1CEFF7124(v110);
      goto LABEL_15;
    }

    v99 = v494;
  }

  v394 = v452;
  v488 = *(v452 + 56);
  v489 = v452 + 56;
  (v488)(v476, 1, 1, v475);
  v395 = [v99 itemIdentifier];
  v396 = v446;
  sub_1CEFFCBA8(v395);
  if (!v396)
  {
    goto LABEL_203;
  }

  v121 = v396;
  v490 = (v394 + 48);
  v485 = (v394 + 32);
  v487 = (v394 + 8);
  v397 = v474;

  v399 = v396;
  LODWORD(v497) = sub_1CF9E5298();
  sub_1CF196978();
  v400 = sub_1CF9E5658();

  if (v400)
  {

    v99 = v494;
    goto LABEL_195;
  }

  _s3__C4CodeOMa_1(0);
  v497 = -1005;
  v401 = v396;
  sub_1CEFD5B1C(&qword_1EDEA3590, _s3__C4CodeOMa_1);
  v402 = sub_1CF9E5658();

  v99 = v494;
  if ((v402 & 1) == 0)
  {
    swift_unknownObjectRelease();

    goto LABEL_210;
  }

  v403 = v476;
  sub_1CEFCCBDC(v476, v397, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v404 = v475;
  if ((*v490)(v397, 1, v475) != 1)
  {
    v406 = v470;
    (*v485)(v470, v397, v404);
    v407 = v469;
    sub_1CF9E5CE8();
    sub_1CF9E5C28();
    v409 = v408;
    v410 = *v487;
    (*v487)(v407, v404);
    if (v409 <= 2.0)
    {
      v410(v406, v404);
      v398 = &selRef_initWithTarget_;
      goto LABEL_196;
    }

    v419 = v404;
    v420 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v421 = sub_1CF9E6888();
    v422 = [v420 initWithDomain:v421 code:-1005 userInfo:0];

    swift_willThrow();
    swift_unknownObjectRelease();

    v423 = v406;
    v121 = v422;
    v410(v423, v419);
LABEL_210:
    sub_1CEFCCC44(v476, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CF007BF8(v477, type metadata accessor for ItemMetadata);
    sub_1CF007BF8(v478, type metadata accessor for ItemMetadata);

    sub_1CF007BF8(v479, type metadata accessor for ItemMetadata);

    goto LABEL_14;
  }

  sub_1CEFCCC44(v397, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v405 = v468;
  sub_1CF9E5CE8();
  sub_1CEFCCC44(v403, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  (v488)(v405, 0, 1, v404);
  sub_1CEFE55D0(v405, v403, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
LABEL_195:
  v398 = &selRef_initWithTarget_;
LABEL_196:
  usleep(0x64u);
  v395 = [v99 v398[113]];
  sub_1CEFFCBA8(v395);
LABEL_203:

  v411 = v440;
  v412 = v460;
  if (v460)
  {
    v413 = v460;
  }

  else
  {
    v414 = v433;
    swift_beginAccess();
    v412 = *v414;
    v415 = *v414;
    v413 = 0;
  }

  v416 = v413;
  v417 = swift_unknownObjectRetain();
  v491(v417, 0, v439, v412);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_1CEFCCC44(v476, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  sub_1CF007BF8(v477, type metadata accessor for ItemMetadata);
  sub_1CF007BF8(v478, type metadata accessor for ItemMetadata);

  sub_1CF007BF8(v479, type metadata accessor for ItemMetadata);

  sub_1CEFF7124(v486);
  sub_1CEFF7124(v110);
LABEL_15:

LABEL_16:
  v126 = *MEMORY[0x1E69E9840];
}