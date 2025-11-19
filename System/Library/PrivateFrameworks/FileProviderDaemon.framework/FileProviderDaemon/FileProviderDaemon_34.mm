uint64_t sub_1CF3AE84C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_1CF9E6938();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    v48 = 0;
    v49 = 0xE000000000000000;
    v13 = a4;
    sub_1CF9E7948();
    v55 = v48;
    v56 = v49;
    MEMORY[0x1D3868CC0](0x2064695F6D657469, 0xEA0000000000203DLL);
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    sub_1CF9E6918();
    v14 = sub_1CF9E68C8();
    v16 = v15;

    (*(v9 + 8))(v12, v8);
    if (v16 >> 60 == 15)
    {
      __break(1u);
    }

    else
    {
      v17 = sub_1CF9E5B48();
      sub_1CEFE48D8(v14, v16);
      v18 = [a1 bindObjectParameter_];

      v19 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v21 = v20;

      MEMORY[0x1D3868CC0](v19, v21);

      MEMORY[0x1D3868CC0](0x70797420444E410ALL, 0xED0000204E492065);
      v53 = 40;
      v54 = 0xE100000000000000;
      v22 = swift_allocObject();
      *(v22 + 16) = a1;
      v48 = a3;
      v49 = sub_1CF086B60;
      v50 = 0;
      v51 = sub_1CF24FA9C;
      v52 = v22;

      v23 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C01B0, &qword_1CFA047F8);
      sub_1CEFCCCEC(&unk_1EDEA33D8, &unk_1EC4C01B0, &qword_1CFA047F8);
      sub_1CEFE4E68();
      v24 = sub_1CF9E6C18();
      v26 = v25;

      MEMORY[0x1D3868CC0](v24, v26);

      MEMORY[0x1D3868CC0](41, 0xE100000000000000);

      MEMORY[0x1D3868CC0](v53, v54);

      MEMORY[0x1D3868CC0](0xD00000000000004DLL, 0x80000001CFA441C0);
      v27 = [v23 bindLongParameter_];
      v28 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v30 = v29;

      MEMORY[0x1D3868CC0](v28, v30);

      MEMORY[0x1D3868CC0](0xD000000000000024, 0x80000001CFA44210);
      v51 = MEMORY[0x1E69E6530];
      v48 = a2;
      v31 = sub_1CEFF8EA0(&v48);
      v33 = v32;
      sub_1CEFCCC44(&v48, &unk_1EC4BEC50, &qword_1CF9FB4B0);
      if (v33)
      {
        MEMORY[0x1D3868CC0](v31, v33);

        MEMORY[0x1D3868CC0](0x30203D2120, 0xE500000000000000);

        return v55;
      }
    }
  }

  else
  {
    v48 = 0;
    v49 = 0xE000000000000000;
    sub_1CF9E7948();
    v55 = v48;
    v56 = v49;
    MEMORY[0x1D3868CC0](0x204E492065707974, 0xE800000000000000);
    v53 = 40;
    v54 = 0xE100000000000000;
    v34 = swift_allocObject();
    *(v34 + 16) = a1;
    v48 = a3;
    v49 = sub_1CF086B60;
    v50 = 0;
    v51 = sub_1CF24FA9C;
    v52 = v34;

    v35 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C01B0, &qword_1CFA047F8);
    sub_1CEFCCCEC(&unk_1EDEA33D8, &unk_1EC4C01B0, &qword_1CFA047F8);
    sub_1CEFE4E68();
    v36 = sub_1CF9E6C18();
    v38 = v37;

    MEMORY[0x1D3868CC0](v36, v38);

    MEMORY[0x1D3868CC0](41, 0xE100000000000000);

    MEMORY[0x1D3868CC0](v53, v54);

    MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA44140);
    v39 = [v35 bindLongParameter_];
    v40 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v42 = v41;

    MEMORY[0x1D3868CC0](v40, v42);

    MEMORY[0x1D3868CC0](0xD000000000000058, 0x80000001CFA44160);
    v51 = MEMORY[0x1E69E6530];
    v48 = a2;
    v43 = sub_1CEFF8EA0(&v48);
    v45 = v44;
    sub_1CEFCCC44(&v48, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    if (v45)
    {
      MEMORY[0x1D3868CC0](v43, v45);

      MEMORY[0x1D3868CC0](0x30203D2120, 0xE500000000000000);
      return v55;
    }
  }

  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

uint64_t sub_1CF3AEF0C(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  if (a5 == -1)
  {
    goto LABEL_6;
  }

  sub_1CF9E7948();
  v45 = 0;
  v46 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0x2064695F6D657469, 0xEA0000000000203DLL);
  if (a5)
  {
    if (a5 == 1)
    {
      if ((a4 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_6:
        sub_1CF9E7948();
        v45 = 0;
        v46 = 0xE000000000000000;
        MEMORY[0x1D3868CC0](0x204E492065707974, 0xE800000000000000);
        v43 = 40;
        v44 = 0xE100000000000000;
        v10 = swift_allocObject();
        *(v10 + 16) = a1;
        v38 = a3;
        v39 = sub_1CF086B60;
        v40 = 0;
        v41 = sub_1CF24FA9C;
        v42 = v10;

        v11 = a1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C01B0, &qword_1CFA047F8);
        sub_1CEFCCCEC(&unk_1EDEA33D8, &unk_1EC4C01B0, &qword_1CFA047F8);
        sub_1CEFE4E68();
        v12 = sub_1CF9E6C18();
        v14 = v13;

        MEMORY[0x1D3868CC0](v12, v14);

        MEMORY[0x1D3868CC0](41, 0xE100000000000000);

        MEMORY[0x1D3868CC0](v43, v44);

        MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA44140);
        v15 = [v11 bindLongParameter_];
        v16 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v18 = v17;

        MEMORY[0x1D3868CC0](v16, v18);

        v19 = "\nAND scheduling_state = ";
        v20 = 0xD000000000000058;
        goto LABEL_10;
      }
    }

    else
    {
      a4 = (a4 != 0) << 63;
    }
  }

  else
  {
    a4 = -a4;
  }

  v21 = [a1 bindLongParameter_];
  v22 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v24 = v23;

  MEMORY[0x1D3868CC0](v22, v24);

  MEMORY[0x1D3868CC0](0x70797420444E410ALL, 0xED0000204E492065);
  v43 = 40;
  v44 = 0xE100000000000000;
  v25 = swift_allocObject();
  *(v25 + 16) = a1;
  v38 = a3;
  v39 = sub_1CF086B60;
  v40 = 0;
  v41 = sub_1CF24FA9C;
  v42 = v25;

  v26 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C01B0, &qword_1CFA047F8);
  sub_1CEFCCCEC(&unk_1EDEA33D8, &unk_1EC4C01B0, &qword_1CFA047F8);
  sub_1CEFE4E68();
  v27 = sub_1CF9E6C18();
  v29 = v28;

  MEMORY[0x1D3868CC0](v27, v29);

  MEMORY[0x1D3868CC0](41, 0xE100000000000000);

  MEMORY[0x1D3868CC0](v43, v44);

  MEMORY[0x1D3868CC0](0xD00000000000004DLL, 0x80000001CFA441C0);
  v30 = [v26 bindLongParameter_];
  v31 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v33 = v32;

  MEMORY[0x1D3868CC0](v31, v33);

  v19 = "okup\nAND +scheduling_state = ";
  v20 = 0xD000000000000024;
LABEL_10:
  MEMORY[0x1D3868CC0](v20, v19 | 0x8000000000000000);
  v41 = MEMORY[0x1E69E6530];
  v38 = a2;
  v34 = sub_1CEFF8EA0(&v38);
  v36 = v35;
  sub_1CEFCCC44(&v38, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v36)
  {
    MEMORY[0x1D3868CC0](v34, v36);

    MEMORY[0x1D3868CC0](0x30203D2120, 0xE500000000000000);
    return v45;
  }

  else
  {
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF3AF498(void *a1, int a2, void *a3)
{
  v96 = a1;
  v105 = a3;
  LODWORD(v97) = a2;
  v4 = sub_1CF9E6068();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v85 - v14;
  v16 = type metadata accessor for Signpost(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v86 = v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v3[9];
  if (!v19)
  {
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    v84 = 0;
    v83 = 87;
    v25 = sub_1CF9E7B68();
    __break(1u);
LABEL_36:
    MEMORY[0x1EEE9AC00](v25);
    v83 = v3;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, &v85[-4], "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v89 = v3;
  v3 = v3[10];

  v21 = v19(v20);
  if (!v21)
  {
    goto LABEL_34;
  }

  v22 = v21;
  v23 = sub_1CEFF7124(v19);
  v24 = *(*v22 + 216);
  v93 = v22;
  v3 = v24(v23);
  v25 = objc_sync_enter(v3);
  if (v25)
  {
    goto LABEL_36;
  }

  swift_beginAccess();
  v26 = v3[2];

  v27 = objc_sync_exit(v3);
  if (v27)
  {
    MEMORY[0x1EEE9AC00](v27);
    v83 = v3;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, &v85[-4], "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v28 = v95;
  v29 = sub_1CF383F1C(v26, sub_1CF066914, 0);
  v95 = v28;

  v88 = sub_1CF8E44FC(v29);

  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v30 = qword_1EDEBBE40;
  (*(v5 + 56))(v15, 1, 1, v4);
  sub_1CEFCCBDC(v15, v12, &unk_1EC4BED20, &unk_1CFA00700);
  v31 = *(v5 + 48);
  if (v31(v12, 1, v4) == 1)
  {
    v32 = v30;
    sub_1CF9E6048();
    if (v31(v12, 1, v4) != 1)
    {
      sub_1CEFCCC44(v12, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
  }

  v33 = v86;
  (*(v5 + 16))(v86, v8, v4);
  *&v33[*(v16 + 20)] = v30;
  v34 = &v33[*(v16 + 24)];
  *v34 = "SQLDB: Fetch Jobs";
  *(v34 + 1) = 17;
  v34[16] = 2;
  v35 = v30;
  sub_1CF9E7468();
  v85[1] = v35;
  sub_1CF9E6038();
  (*(v5 + 8))(v8, v4);
  v36 = sub_1CEFCCC44(v15, &unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v36);
  v85[-5] = 0;
  v85[-4] = 0;
  v37 = v89;
  v85[-6] = v89;
  v85[-3] = sub_1CF381274;
  v83 = 0;
  v38 = v95;
  v39 = sub_1CF7D5474(sub_1CF484148, &v85[-8], v96, v97);
  v40 = v38;
  if (v38)
  {
    goto LABEL_32;
  }

  v41 = v39;
  if (![v39 next])
  {
    goto LABEL_31;
  }

  v87 = v41;
  while (1)
  {
    v42 = objc_autoreleasePoolPush();
    sub_1CF3ABD1C(v41, &v100);
    if (v40)
    {
      break;
    }

    v96 = v42;
    v97 = 0;
    v43 = v100;
    v91 = v102;
    v92 = v101;
    v90 = v103;
    LODWORD(v95) = v104;
    swift_beginAccess();
    sub_1CEFCCBDC(v43 + 56, &v100, &unk_1EC4C1BE0, &unk_1CF9FD400);
    v44 = v103;
    if (!v103)
    {
      sub_1CEFCCC44(&v100, &unk_1EC4C1BE0, &unk_1CF9FD400);
LABEL_21:
      v94 = 2;
      goto LABEL_22;
    }

    v45 = v104;
    v46 = __swift_project_boxed_opaque_existential_1(&v100, v103);
    v47 = *(v44 - 8);
    v48 = *(v47 + 64);
    v49 = MEMORY[0x1EEE9AC00](v46);
    v51 = v85 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v47 + 16))(v51, v49);
    sub_1CEFCCC44(&v100, &unk_1EC4C1BE0, &unk_1CF9FD400);
    v52 = (*(v45 + 16))(v44, v45);
    v54 = v53;
    (*(v47 + 8))(v51, v44);
    v55 = sub_1CEFDB148(v52, v54, v88);

    if ((v55 & 1) == 0)
    {
      goto LABEL_21;
    }

    v94 = 0;
LABEL_22:
    if ((*(*v93 + 384))(v43) < 0)
    {

      v61 = v105[3];
      v62 = v105[4];
      v63 = __swift_project_boxed_opaque_existential_1(v105, v61);
      v100 = 8224;
      v101 = 0xE200000000000000;
      v64 = sub_1CF902D78(v63);
      MEMORY[0x1D3868CC0](v64);

      v65 = sub_1CF9E7988();
      MEMORY[0x1D3868CC0](v65);

      sub_1CF4FB2BC(v100, v101, v61, v62);
    }

    else
    {
      v56 = v105[3];
      v57 = v105[4];
      v58 = __swift_project_boxed_opaque_existential_1(v105, v56);
      v100 = 8224;
      v101 = 0xE200000000000000;
      v59 = sub_1CF902D78(v58);
      MEMORY[0x1D3868CC0](v59);

      v60 = sub_1CF9E7988();
      MEMORY[0x1D3868CC0](v60);

      v37 = v89;
      sub_1CF4FB2BC(v100, v101, v56, v57);
    }

    if ((v95 & 1) == 0)
    {
      v66 = v105[3];
      v67 = v105[4];
      __swift_project_boxed_opaque_existential_1(v105, v66);
      v100 = 8224;
      v101 = 0xE200000000000000;
      v68 = *v43;
      v69 = sub_1CF388E8C();
      v70 = *(v43 + 144);
      v71 = *(v43 + 152);
      v3 = sub_1CF19F384(v69);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFF30, &unk_1CFA05600);
      v72 = swift_dynamicCastMetatype();
      if (!v72)
      {
        goto LABEL_35;
      }

      v98 = v70;
      v99 = v71;
      v73 = (*(v72 + 592))(&v98, v92, v91, v90);
      v75 = *(v73 + 96);
      v74 = *(v73 + 104);
      *(v73 + 96) = 0;
      *(v73 + 104) = 0;
      v76 = *(v73 + 112);
      *(v73 + 112) = 0;

      sub_1CF03D7A8(v75, v74, v76);

      v78 = sub_1CF902D78(v77);
      MEMORY[0x1D3868CC0](v78);

      sub_1CF4FB2BC(v100, v101, v66, v67);
    }

    if (*(v37 + 104) == 1)
    {
      v79 = v105[3];
      v80 = v105[4];
      __swift_project_boxed_opaque_existential_1(v105, v79);
      v100 = 8224;
      v101 = 0xE200000000000000;
      MEMORY[0x1D3868CC0](v37[11], v37[12]);
      MEMORY[0x1D3868CC0](0x6C75646568637320, 0xEA00000000006465);
      sub_1CF4FB2BC(v100, v101, v79, v80);
    }

    else
    {
    }

    v40 = v97;
    v41 = v87;
    objc_autoreleasePoolPop(v96);
    if (([v41 next] & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  objc_autoreleasePoolPop(v42);
LABEL_31:

LABEL_32:
  sub_1CF9E7458();
  v81 = v86;
  sub_1CF9E6038();

  return sub_1CEFD5278(v81, type metadata accessor for Signpost);
}

uint64_t sub_1CF3AFFF4(void *a1, int a2, void *a3)
{
  v97 = a1;
  v98 = a3;
  LODWORD(v99) = a2;
  v4 = sub_1CF9E6068();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v86 - v14;
  v16 = type metadata accessor for Signpost(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v87 = &v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v3[9];
  if (!v19)
  {
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    v85 = 0;
    v84 = 87;
    v25 = sub_1CF9E7B68();
    __break(1u);
LABEL_34:
    MEMORY[0x1EEE9AC00](v25);
    v84 = v3;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v86 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v90 = v3;
  v3 = v3[10];

  v21 = v19(v20);
  if (!v21)
  {
    goto LABEL_32;
  }

  v22 = v21;
  v23 = sub_1CEFF7124(v19);
  v24 = *(*v22 + 216);
  v94 = v22;
  v3 = v24(v23);
  v25 = objc_sync_enter(v3);
  if (v25)
  {
    goto LABEL_34;
  }

  swift_beginAccess();
  v26 = v3[2];

  v27 = objc_sync_exit(v3);
  if (v27)
  {
    MEMORY[0x1EEE9AC00](v27);
    v84 = v3;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v86 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v28 = v96;
  v29 = sub_1CF383BB4(v26, sub_1CF066914, 0);
  v96 = v28;

  v89 = sub_1CF8E44FC(v29);

  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v30 = qword_1EDEBBE40;
  (*(v5 + 56))(v15, 1, 1, v4);
  sub_1CEFCCBDC(v15, v12, &unk_1EC4BED20, &unk_1CFA00700);
  v31 = *(v5 + 48);
  if (v31(v12, 1, v4) == 1)
  {
    v32 = v30;
    sub_1CF9E6048();
    if (v31(v12, 1, v4) != 1)
    {
      sub_1CEFCCC44(v12, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
  }

  v33 = v87;
  (*(v5 + 16))(v87, v8, v4);
  *&v33[*(v16 + 20)] = v30;
  v34 = &v33[*(v16 + 24)];
  *v34 = "SQLDB: Fetch Jobs";
  *(v34 + 1) = 17;
  v34[16] = 2;
  v35 = v30;
  sub_1CF9E7468();
  v86 = v35;
  sub_1CF9E6038();
  (*(v5 + 8))(v8, v4);
  v36 = sub_1CEFCCC44(v15, &unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v36);
  *(&v86 - 5) = 0;
  *(&v86 - 4) = 0;
  v37 = v90;
  *(&v86 - 6) = v90;
  *(&v86 - 3) = sub_1CF381274;
  v84 = 0;
  v38 = v96;
  v39 = sub_1CF7D5474(sub_1CF485AA4, (&v86 - 8), v97, v99);
  v40 = v38;
  if (!v38)
  {
    v41 = v39;
    if ([v39 next])
    {
      v88 = v41;
      while (1)
      {
        v42 = objc_autoreleasePoolPush();
        sub_1CF3AB9D4(v41, &v100);
        if (v40)
        {
          break;
        }

        v96 = v42;
        v97 = 0;
        v43 = v100;
        v92 = v102;
        v93 = v101;
        v91 = v103;
        v95 = v104;
        swift_beginAccess();
        sub_1CEFCCBDC(v43 + 56, &v100, &unk_1EC4C1BE0, &unk_1CF9FD400);
        v44 = v103;
        v99 = v43;
        if (v103)
        {
          v45 = v104;
          v46 = __swift_project_boxed_opaque_existential_1(&v100, v103);
          v47 = *(v44 - 8);
          v48 = *(v47 + 64);
          v49 = MEMORY[0x1EEE9AC00](v46);
          v51 = &v86 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v47 + 16))(v51, v49);
          sub_1CEFCCC44(&v100, &unk_1EC4C1BE0, &unk_1CF9FD400);
          v52 = (*(v45 + 16))(v44, v45);
          v54 = v53;
          (*(v47 + 8))(v51, v44);
          v43 = v99;
          sub_1CEFDB148(v52, v54, v89);
        }

        else
        {
          sub_1CEFCCC44(&v100, &unk_1EC4C1BE0, &unk_1CF9FD400);
        }

        if ((*(*v94 + 384))(v43) < 0)
        {

          v60 = v98[3];
          v61 = v98[4];
          v62 = __swift_project_boxed_opaque_existential_1(v98, v60);
          v100 = 8224;
          v101 = 0xE200000000000000;
          v63 = sub_1CF902D78(v62);
          MEMORY[0x1D3868CC0](v63);

          v64 = sub_1CF9E7988();
          MEMORY[0x1D3868CC0](v64);

          sub_1CF4FB2BC(v100, v101, v60, v61);
        }

        else
        {
          v55 = v98[3];
          v56 = v98[4];
          v57 = __swift_project_boxed_opaque_existential_1(v98, v55);
          v100 = 8224;
          v101 = 0xE200000000000000;
          v58 = sub_1CF902D78(v57);
          MEMORY[0x1D3868CC0](v58);

          v59 = sub_1CF9E7988();
          MEMORY[0x1D3868CC0](v59);

          v37 = v90;
          sub_1CF4FB2BC(v100, v101, v55, v56);
        }

        if ((v95 & 1) == 0)
        {
          v65 = v98[3];
          v66 = v98[4];
          __swift_project_boxed_opaque_existential_1(v98, v65);
          v100 = 8224;
          v101 = 0xE200000000000000;
          v67 = v99;
          v68 = *v99;
          v69 = sub_1CF387EDC();
          v70 = v67[18];
          v3 = sub_1CF1A01B4(v69);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0230, &unk_1CFA05740);
          v71 = swift_dynamicCastMetatype();
          if (!v71)
          {
            goto LABEL_33;
          }

          v105 = v70;
          v72 = *(v71 + 592);
          v73 = v70;
          v74 = v72(&v105, v93, v92, v91);
          v76 = *(v74 + 96);
          v75 = *(v74 + 104);
          *(v74 + 96) = 0;
          *(v74 + 104) = 0;
          v77 = *(v74 + 112);
          *(v74 + 112) = 0;

          sub_1CF03D7A8(v76, v75, v77);

          v79 = sub_1CF902D78(v78);
          MEMORY[0x1D3868CC0](v79);

          sub_1CF4FB2BC(v100, v101, v65, v66);
        }

        if (*(v37 + 104) == 1)
        {
          v80 = v98[3];
          v81 = v98[4];
          __swift_project_boxed_opaque_existential_1(v98, v80);
          v100 = 8224;
          v101 = 0xE200000000000000;
          MEMORY[0x1D3868CC0](v37[11], v37[12]);
          MEMORY[0x1D3868CC0](0x6C75646568637320, 0xEA00000000006465);
          sub_1CF4FB2BC(v100, v101, v80, v81);
        }

        else
        {
        }

        v40 = v97;
        v41 = v88;
        objc_autoreleasePoolPop(v96);
        if (([v41 next] & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      objc_autoreleasePoolPop(v42);
    }

LABEL_29:
  }

  sub_1CF9E7458();
  v82 = v87;
  sub_1CF9E6038();

  return sub_1CEFD5278(v82, type metadata accessor for Signpost);
}

uint64_t sub_1CF3B0B48()
{
  v0 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v0);

  MEMORY[0x1D3868CC0](46, 0xE100000000000000);
  v1 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v1);

  return 118;
}

uint64_t sub_1CF3B0C04()
{
  v1 = *v0;
  sub_1CF9E81D8();
  sub_1CF9E8208();
  return sub_1CF9E8228();
}

uint64_t sub_1CF3B0C4C()
{
  v1 = *v0;
  sub_1CF9E81D8();
  sub_1CF9E8208();
  return sub_1CF9E8228();
}

uint64_t sub_1CF3B0CC8()
{
  v3 = *v0;
  v1 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v1);

  return 114;
}

uint64_t sub_1CF3B0D80@<X0>(uint64_t *a1@<X8>)
{
  result = fpfs_dirsize();
  *a1 = result & ~(result >> 63);
  return result;
}

uint64_t sub_1CF3B0DB4()
{
  v0 = sub_1CF9E64A8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1CF042F4C();
  *v4 = v5;
  (*(v1 + 104))(v4, *MEMORY[0x1E69E8020], v0);
  v6 = v5;
  LOBYTE(v5) = sub_1CF9E64D8();
  result = (*(v1 + 8))(v4, v0);
  if (v5)
  {
    v8 = *(*(sub_1CF478C28() + 32) + qword_1EDEBBB18);
    if (v8)
    {
      v9 = v8 + *(*v8 + 136);
      swift_beginAccess();
      result = *(v9 + 48);
      v10 = *(v9 + 56);
      v11 = *(v9 + 57);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1CF3B0F28(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFB18, &qword_1CFA052A0);
  [a1 setTraced_];
  v9 = sub_1CF9E6888();
  [a1 setLabel_];

  [a1 setStatementCacheMaxCount_];
  v10 = sub_1CF9E5928();
  v14[0] = 0;
  LODWORD(a4) = [a1 openAtURL:v10 withFlags:a4 error:v14];

  if (a4)
  {
    result = v14[0];
  }

  else
  {
    v12 = v14[0];
    sub_1CF9E57F8();

    result = swift_willThrow();
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1CF3B107C(uint64_t a1, NSObject *a2)
{
  v23 = a1;
  v3 = fpfs_current_log();
  v4 = fpfs_adopt_log();
  aBlock = sub_1CF9E73C8();
  v25 = v5;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v6 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v6);

  sub_1CF9E6978();

  v7 = __fp_log_fork();

  v30 = 0;
  v31 = v7;
  v32 = 0;
  v14 = v3;
  v15 = &v31;
  v16 = a2;
  v17 = "setUpReadOnlyDatabase(db:queue:)";
  v18 = 32;
  v19 = 2;
  v20 = sub_1CF47FBA8;
  v21 = &v22;
  v33 = 1;
  v8 = swift_allocObject();
  v8[2] = &v33;
  v8[3] = sub_1CF2BA13C;
  v8[4] = &v13;
  v8[5] = &v30;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1CF2BA170;
  *(v9 + 24) = v8;
  v28 = sub_1CF1C0B54;
  v29 = v9;
  aBlock = MEMORY[0x1E69E9820];
  v25 = 1107296256;
  v26 = sub_1CEFFD02C;
  v27 = &block_descriptor_45;
  v10 = _Block_copy(&aBlock);

  FPDispatchAsyncAndWait(a2, v10);
  _Block_release(v10);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return;
  }

  if (v30)
  {
    swift_willThrow();

    v11 = fpfs_adopt_log();

    return;
  }

  if (v33)
  {
    goto LABEL_8;
  }

  v12 = fpfs_adopt_log();
}

uint64_t sub_1CF3B1350(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = &qword_1CF9FA000;
  if ((*(a1 + 82) & 0x20) != 0)
  {
    v27 = sub_1CF485954;
    v28 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v24 = 1107296256;
    v25 = sub_1CEFE7548;
    v26 = &block_descriptor_52_0;
    v10 = _Block_copy(&aBlock);

    aBlock = 0;
    v11 = [a2 executeSwift:v10 error:&aBlock];
    _Block_release(v10);
    v12 = aBlock;
    if (swift_isEscapingClosureAtFileLocation())
    {
      __break(1u);
    }

    else
    {
      if (!v11)
      {
        sub_1CF9E57F8();

        goto LABEL_14;
      }

      v13 = swift_allocObject();
      *(v13 + 16) = sub_1CF4858D8;
      *(v13 + 24) = 0;
      v27 = sub_1CEFE75B8;
      v28 = v13;
      aBlock = MEMORY[0x1E69E9820];
      v24 = 1107296256;
      v25 = sub_1CEFE7548;
      v26 = &block_descriptor_58;
      v14 = _Block_copy(&aBlock);

      aBlock = 0;
      v15 = [a2 executeSwift:v14 error:&aBlock];
      _Block_release(v14);
      v16 = aBlock;
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        if ((v15 & 1) == 0)
        {
          sub_1CF9E57F8();

          goto LABEL_14;
        }

        v18 = swift_allocObject();
        *(v18 + 16) = sub_1CF4858DC;
        *(v18 + 24) = 0;
        v27 = sub_1CEFE7610;
        v28 = v18;
        aBlock = MEMORY[0x1E69E9820];
        v24 = 1107296256;
        v25 = sub_1CEFE7548;
        v26 = &block_descriptor_65_0;
        v19 = _Block_copy(&aBlock);

        aBlock = 0;
        v20 = [a2 executeSwift:v19 error:&aBlock];
        _Block_release(v19);
        v21 = aBlock;
        LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

        if ((v19 & 1) == 0)
        {
          v5 = sub_1CF4858DC;
          if (v20)
          {
            v4 = sub_1CF4858D8;
            v3 = &qword_1CF9FA000;
            goto LABEL_3;
          }

          sub_1CF9E57F8();

LABEL_14:
          result = swift_willThrow();
          goto LABEL_15;
        }

LABEL_18:
        __break(1u);
      }
    }

    __break(1u);
    goto LABEL_18;
  }

  v4 = 0;
  v5 = 0;
LABEL_3:
  v6 = a2;
  sub_1CF3C0034(v6, 2, &block_descriptor_68, &unk_1F4BFE238, sub_1CF47FBC4, &block_descriptor_74_0);
  v7 = swift_allocObject();
  swift_weakInit();
  v27 = sub_1CF485A98;
  v28 = v7;
  aBlock = MEMORY[0x1E69E9820];
  v24 = v3[140];
  v25 = sub_1CF00A468;
  v26 = &block_descriptor_49_0;
  v8 = _Block_copy(&aBlock);

  [v6 setAutoRollbackHandlerForSwift_];
  _Block_release(v8);

  sub_1CEFF7124(v4);
  result = sub_1CEFF7124(v5);
LABEL_15:
  v22 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CF3B1830(void *a1, uint64_t a2)
{
  v4 = sub_1CF9E6118();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v49 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v46 - v9;
  v11 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v12 = a1;
  v13 = sub_1CF9E6108();
  v14 = sub_1CF9E72A8();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 67109378;
    *(v15 + 4) = a2;
    *(v15 + 8) = 2112;
    *(v15 + 10) = v12;
    *v16 = v12;
    v17 = v12;
    _os_log_impl(&dword_1CEFC7000, v13, v14, "busy handler called (%d) %@", v15, 0x12u);
    sub_1CEFCCC44(v16, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v16, -1, -1);
    MEMORY[0x1D386CDC0](v15, -1, -1);
  }

  v18 = *(v5 + 8);
  v48 = v4;
  v18(v10, v4);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v20 = *(Strong + qword_1EDEBBDB8);

    v21 = v20 >= 1 && v20 <= a2;
  }

  else
  {
    v21 = 0;
  }

  swift_beginAccess();
  v22 = swift_weakLoadStrong();
  if (v22)
  {
    v23 = *(v22 + 32);

    v24 = *(v23 + 16);

    v26 = (*(*v24 + 440))(v25);

    if (v26)
    {
      v51[0] = 0;
      v51[1] = 0xE000000000000000;
      sub_1CF9E7948();

      strcpy(v51, "busy_handler_");
      HIWORD(v51[1]) = -4864;
      LODWORD(v50) = a2;
      v27 = sub_1CF9E7F98();
      MEMORY[0x1D3868CC0](v27);

      MEMORY[0x1D3868CC0](95, 0xE100000000000000);
      if (v21)
      {
        v28 = 1702195828;
      }

      else
      {
        v28 = 0x65736C6166;
      }

      if (v21)
      {
        v29 = 0xE400000000000000;
      }

      else
      {
        v29 = 0xE500000000000000;
      }

      MEMORY[0x1D3868CC0](v28, v29);

      v47 = v18;
      v30 = v51[0];
      v31 = v51[1];
      type metadata accessor for PQLSqliteError(0);
      v50 = 5;
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF042F54(&qword_1EDEA38C0, type metadata accessor for PQLSqliteError);
      sub_1CF9E57D8();
      v32 = v51[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4CD0, &unk_1CFA17EB0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1CF9FA450;
      strcpy(v51, "operationType");
      HIWORD(v51[1]) = -4864;
      v34 = MEMORY[0x1E69E6158];
      sub_1CF9E7898();
      *(inited + 96) = v34;
      *(inited + 72) = v30;
      *(inited + 80) = v31;
      sub_1CF4E0E00(inited);
      swift_setDeallocating();
      sub_1CEFCCC44(inited + 32, &qword_1EC4C0600, &unk_1CF9FE790);
      v35 = sub_1CF9E6618();

      v36 = v32;
      v37 = sub_1CF9E57E8();

      [v26 postReportWithCategory:1 type:1 payload:v35 error:v37];
      v18 = v47;
    }
  }

  swift_beginAccess();
  v38 = swift_weakLoadStrong();
  if (v38 && (v39 = *(v38 + qword_1EDEBBE20), sub_1CF03C63C(v39), , v39))
  {
    v40 = v39(a2, v21);
    sub_1CEFF7124(v39);
  }

  else
  {
    if (v21)
    {
      v42 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v43 = sub_1CF9E6108();
      v44 = sub_1CF9E72A8();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_1CEFC7000, v43, v44, "cannot recover - exiting fpd", v45, 2u);
        MEMORY[0x1D386CDC0](v45, -1, -1);
      }

      v18(v49, v48);
      exit(1);
    }

    v40 = 1;
    sleep(1u);
  }

  return v40 & 1;
}

uint64_t sub_1CF3B1E88(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v6 = v4();

  return v6 & 1;
}

void sub_1CF3B1EF4(char a1, id a2, uint64_t a3, _BYTE *a4, _BYTE *a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9)
{
  v41 = a8;
  if ((a1 & 1) == 0)
  {
    v16 = [a2 setSynchronousMode_];
    MEMORY[0x1EEE9AC00](v16);
    v37 = a2;
    if ([a2 synchronousMode] != 1)
    {
      sub_1CF50FD90("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/SQLDatabase.swift", 130, 2, 278, sub_1CF47FC94);
    }
  }

  v17 = *(a3 + qword_1EDEBBDB0);
  v18 = qword_1EDEADB48;
  *(a3 + qword_1EDEADB48) = 0;
  v19 = v17;
  v20 = sub_1CF3C174C(a6, a7, v19, 2);
  *(a3 + v18) = 1;
  if (v9)
  {
  }

  else
  {
    v39 = a4;
    v40 = a9;
    *a4 = v20 & 1;
    *a5 = HIBYTE(v20) & 1;
    v21 = fpfs_current_log();
    v22 = swift_allocObject();
    swift_weakInit();
    v23 = swift_allocObject();
    *(v23 + 16) = v21;
    *(v23 + 24) = v22;
    v46 = sub_1CF47FC9C;
    v47 = v23;
    aBlock = MEMORY[0x1E69E9820];
    v43 = 1107296256;
    v44 = sub_1CF02C158;
    v45 = &block_descriptor_120;
    v24 = _Block_copy(&aBlock);
    v25 = v21;

    [a2 setPreFlushHook_];
    _Block_release(v24);
    v26 = swift_allocObject();
    swift_weakInit();
    v27 = swift_allocObject();
    *(v27 + 16) = v21;
    *(v27 + 24) = v26;
    v46 = sub_1CF47FCE4;
    v47 = v27;
    aBlock = MEMORY[0x1E69E9820];
    v43 = 1107296256;
    v44 = sub_1CF02C158;
    v45 = &block_descriptor_127;
    v28 = _Block_copy(&aBlock);
    v29 = v25;

    [a2 setPostFlushHook_];
    _Block_release(v28);

    MEMORY[0x1EEE9AC00](v30);
    v36[2] = a3;
    v36[3] = v41;
    v37 = v40;
    v38 = v39;
    sub_1CF7FC814("setUpWriteDatabase(db:queue:label:creationReason:fsTree:fpTree:inMemory:)", 0x49uLL, 2, sub_1CF47FCEC, v36);
    v31 = *(a3 + qword_1EDEAE660);
    if (v31)
    {
      v32 = *(a3 + qword_1EDEAE660);
      swift_willThrow();
      v33 = v31;
    }

    else
    {
      v34 = swift_allocObject();
      swift_weakInit();
      v46 = sub_1CF47FD0C;
      v47 = v34;
      aBlock = MEMORY[0x1E69E9820];
      v43 = 1107296256;
      v44 = sub_1CF00A468;
      v45 = &block_descriptor_131;
      v35 = _Block_copy(&aBlock);

      [a2 setAutoRollbackHandlerForSwift_];
      _Block_release(v35);
    }
  }
}

uint64_t sub_1CF3B234C(void *a1)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000019, 0x80000001CFA46320);
  [a1 synchronousMode];
  type metadata accessor for PQLSynchronousMode(0);
  sub_1CF9E7B58();
  return 0;
}

void sub_1CF3B23F0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE710, &qword_1CF9FE5A8);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = (&v9 - v2);
  v4 = fpfs_adopt_log();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + qword_1EDEBBDB0);
    swift_storeEnumTagMultiPayload();
    v7 = v6;
    sub_1CF3CDDD4(v3, v7, 2);
    sub_1CEFCCC44(v3, &qword_1EC4BE710, &qword_1CF9FE5A8);
  }

  v8 = fpfs_adopt_log();
}

void sub_1CF3B2544()
{
  v0 = fpfs_adopt_log();
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1CF03A224();
  }

  v1 = fpfs_adopt_log();
}

void sub_1CF3B25CC(void *a1, uint64_t a2, uint64_t a3, uint64_t (**a4)(void), _BYTE *a5)
{
  v94 = a3;
  v91 = a5;
  v93 = a4;
  v96 = a2;
  v6 = sub_1CF9E5CF8();
  v92 = *(v6 - 8);
  v7 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE710, &qword_1CF9FE5A8);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v86 - v15;
  v17 = a1[3];
  v18 = a1[4];
  v19 = __swift_project_boxed_opaque_existential_1(a1, v17);
  swift_storeEnumTagMultiPayload();
  v20 = v19;
  v21 = v95;
  v22 = v96;
  sub_1CF3CFB14(v16, v20, v17, v18);
  sub_1CEFCCC44(v16, &qword_1EC4BE710, &qword_1CF9FE5A8);
  if (!v21)
  {
    v89 = v14;
    v90 = v9;
    v95 = v6;
    v88 = v10;
    v23 = a1[3];
    v24 = a1[4];
    v25 = __swift_project_boxed_opaque_existential_1(a1, v23);
    v26 = *(v22 + 24);
    (*(*v94 + 96))(&v97);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB80, &unk_1CF9FAD90);
    v28 = (*(*v26 + 328))(&v97, v27, 0, v25, v23, *(v24 + 8));
    (*(*v94 + 456))(v28 & 1);
    v30 = a1[3];
    v29 = a1[4];
    v31 = __swift_project_boxed_opaque_existential_1(a1, v30);
    v32 = v93;
    (*(*v93 + 12))(&v97);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDEF8, &unk_1CF9FB390);
    v34 = (*(*v26 + 320))(&v97, v33, 0, v31, v30, *(v29 + 8));

    v87 = 0;
    *(v32 + 113) = v34 & 1;
    v35 = (*v94 + 848);
    v36 = *v35;
    v37 = v35;
    v38 = (*v35)();
    v93 = v37;
    if (v38)
    {
      v39 = v89;
      goto LABEL_12;
    }

    v40 = a1[3];
    v41 = a1[4];
    v86[3] = __swift_project_boxed_opaque_existential_1(a1, v40);
    (*(**(*(v22 + 32) + 16) + 96))(&v97);
    v42 = v90;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v44 = v43;
    v45 = *(v92 + 8);
    v45(v42, v95);
    v46 = v44 * 1000000000.0;
    if (COERCE__INT64(fabs(v44 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else
    {
      v86[1] = v41;
      v86[2] = v40;
      if (v46 > -9.22337204e18)
      {
        if (v46 < 9.22337204e18)
        {
          v47 = a1;
          v48 = v22;
          v49 = v46;
          v50 = v97;
          v51 = v98;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB90, &unk_1CFA052F0);
          v52 = swift_allocObject();
          *(v52 + 152) = v51;
          *(v52 + 16) = 0u;
          *(v52 + 32) = 0u;
          *(v52 + 48) = 1;
          *(v52 + 56) = 0u;
          *(v52 + 72) = 0u;
          *(v52 + 88) = 0;
          *(v52 + 96) = xmmword_1CF9FEC30;
          *(v52 + 112) = 0;
          *(v52 + 120) = 0;
          *(v52 + 128) = v49;
          *(v52 + 136) = 0;
          *(v52 + 144) = v50;
          v53 = v90;
          sub_1CF9E5CE8();
          sub_1CF9E5C98();
          v55 = v54;
          v45(v53, v95);
          v56 = v55 * 1000000000.0;
          if (COERCE__INT64(fabs(v55 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            v57 = v87;
            if (v56 > -9.22337204e18)
            {
              if (v56 < 9.22337204e18)
              {
                v22 = v48;
                a1 = v47;
                sub_1CF5215C0(v52);

                v39 = v89;
                if (v57)
                {
                  return;
                }

                v87 = 0;
LABEL_12:
                v58 = a1;
                v59 = a1[3];
                v60 = a1[4];
                v61 = __swift_project_boxed_opaque_existential_1(v58, v59);
                v62 = v87;
                v63 = (*(**(v22 + 16) + 272))(v61, v59, *(v60 + 8));
                if (v62)
                {
                  return;
                }

                if (v63)
                {
                  *(*(v22 + 32) + 33) = 0;
LABEL_16:
                  v64 = v91;
                  goto LABEL_17;
                }

                if (v36())
                {
                  goto LABEL_16;
                }

                v71 = v58[4];
                v72 = __swift_project_boxed_opaque_existential_1(v58, v58[3]);
                (*(**(*(v22 + 32) + 16) + 96))(&v97);
                v73 = v90;
                sub_1CF9E5CE8();
                sub_1CF9E5C98();
                v75 = v74;
                v76 = *(v92 + 8);
                v76(v73, v95);
                v77 = v75 * 1000000000.0;
                if (COERCE__INT64(fabs(v75 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
                {
                  if (v77 > -9.22337204e18)
                  {
                    v93 = v72;
                    v94 = v71;
                    if (v77 < 9.22337204e18)
                    {
                      v78 = v77;
                      v79 = v97;
                      v80 = v98;
                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BD9F8, &qword_1CF9FADC0);
                      v81 = swift_allocObject();
                      *(v81 + 152) = v80;
                      *(v81 + 16) = 0u;
                      *(v81 + 32) = 0u;
                      *(v81 + 48) = 1;
                      *(v81 + 56) = 0u;
                      *(v81 + 72) = 0u;
                      *(v81 + 88) = 0;
                      *(v81 + 96) = xmmword_1CF9FEC30;
                      *(v81 + 112) = 0;
                      *(v81 + 120) = 0;
                      *(v81 + 128) = v78;
                      *(v81 + 136) = 0;
                      *(v81 + 144) = v79;
                      v82 = v90;
                      sub_1CF9E5CE8();
                      sub_1CF9E5C98();
                      v84 = v83;
                      v76(v82, v95);
                      v85 = v84 * 1000000000.0;
                      if (COERCE__INT64(fabs(v84 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
                      {
                        v64 = v91;
                        v39 = v89;
                        if (v85 > -9.22337204e18)
                        {
                          if (v85 < 9.22337204e18)
                          {
                            sub_1CF5215C0(v81);

LABEL_17:
                            v65 = v58[3];
                            v66 = v58[4];
                            v67 = __swift_project_boxed_opaque_existential_1(v58, v65);
                            swift_storeEnumTagMultiPayload();
                            sub_1CF3CFB14(v39, v67, v65, v66);
                            sub_1CEFCCC44(v39, &qword_1EC4BE710, &qword_1CF9FE5A8);
                            if ((*v64 & 1) == 0)
                            {
                              v68 = v58[3];
                              v69 = v58[4];
                              v70 = __swift_project_boxed_opaque_existential_1(v58, v68);
                              sub_1CF3BBE38(v70, v68, v69);
                            }

                            return;
                          }

LABEL_38:
                          __break(1u);
                          return;
                        }

LABEL_37:
                        __break(1u);
                        goto LABEL_38;
                      }

LABEL_36:
                      __break(1u);
                      goto LABEL_37;
                    }

LABEL_35:
                    __break(1u);
                    goto LABEL_36;
                  }

LABEL_34:
                  __break(1u);
                  goto LABEL_35;
                }

LABEL_33:
                __break(1u);
                goto LABEL_34;
              }

LABEL_32:
              __break(1u);
              goto LABEL_33;
            }

LABEL_31:
            __break(1u);
            goto LABEL_32;
          }

LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

LABEL_29:
        __break(1u);
        goto LABEL_30;
      }
    }

    __break(1u);
    goto LABEL_29;
  }
}

uint64_t sub_1CF3B2EB4(void *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1CF3BBC24(a1);
  }

  return result;
}

uint64_t sub_1CF3B2F14(void *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + qword_1EDEAE660);
    *(result + qword_1EDEAE660) = a1;
    v4 = a1;
  }

  return result;
}

uint64_t sub_1CF3B3014(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, void, void), unint64_t a6, uint64_t a7, uint64_t a8)
{
  v274 = a8;
  v257 = a7;
  v256 = a6;
  v268 = a5;
  v263 = a4;
  v269 = a3;
  v279 = a2;
  v281 = a1;
  v231 = sub_1CF9E7388();
  v230 = *(v231 - 8);
  v9 = *(v230 + 64);
  MEMORY[0x1EEE9AC00](v231);
  v229 = &v226 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v227 = sub_1CF9E7488();
  v11 = *(*(v227 - 8) + 64);
  MEMORY[0x1EEE9AC00](v227);
  v228 = &v226 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFB10, &unk_1CFA12AD0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v235 = &v226 - v15;
  v241 = sub_1CF9E53C8();
  v240 = *(v241 - 8);
  v16 = *(v240 + 64);
  MEMORY[0x1EEE9AC00](v241);
  v239 = &v226 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v255 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFB18, &qword_1CFA052A0);
  v18 = *(*(v255 - 8) + 64);
  MEMORY[0x1EEE9AC00](v255);
  v275 = &v226 - v19;
  v20 = sub_1CF9E5A58();
  v276 = *(v20 - 8);
  v21 = *(v276 + 8);
  MEMORY[0x1EEE9AC00](v20);
  v266 = &v226 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v270 = &v226 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v226 - v26;
  v260 = sub_1CF9E6118();
  v259 = *(v260 - 8);
  v28 = *(v259 + 64);
  MEMORY[0x1EEE9AC00](v260);
  v233 = &v226 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v226 - v31;
  v33 = (a8 + qword_1EC4EBCD0);
  *v33 = 0;
  v33[1] = 0;
  v272 = v33;
  v34 = (a8 + qword_1EC4EBCD8);
  *v34 = 0;
  v34[1] = 0;
  v273 = v34;
  *(a8 + qword_1EDEBBE28) = 0;
  v238 = qword_1EDEBBE38;
  *(a8 + qword_1EDEBBE38) = 1;
  *(a8 + qword_1EDEBBE10) = 0;
  v35 = qword_1EDEBBDA8;
  v36 = sub_1CF9E5D98();
  v37 = *(*(v36 - 8) + 56);
  v244 = v35;
  v37(a8 + v35, 1, 1, v36);
  v245 = qword_1EC4BFAF0;
  *(a8 + qword_1EC4BFAF0) = MEMORY[0x1E69E7CC0];
  v247 = qword_1EDEAE678;
  *(a8 + qword_1EDEAE678) = 0;
  v250 = qword_1EDEAE660;
  *(a8 + qword_1EDEAE660) = 0;
  *(a8 + qword_1EDEBBDE8) = 0;
  v38 = (a8 + qword_1EDEBBDC8);
  *v38 = 0;
  v38[1] = 0;
  v248 = v38;
  *(a8 + qword_1EDEBBDD0) = 0;
  v39 = (a8 + qword_1EDEBBDC0);
  *v39 = 0;
  v39[1] = 0;
  v246 = v39;
  v40 = (a8 + qword_1EDEBBDD8);
  *v40 = 0;
  v40[1] = 0;
  v249 = v40;
  v41 = (a8 + qword_1EDEBBDF0);
  *v41 = 0;
  v41[1] = 0;
  v251 = v41;
  v42 = (a8 + qword_1EDEBBE20);
  *v42 = 0;
  v42[1] = 0;
  v253 = v42;
  *(a8 + qword_1EDEBBDE0) = 0;
  v43 = qword_1EC4BFAF8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFB20, &qword_1CFA052A8);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1CFA04E00;
  *(v44 + 32) = 0;
  *(v44 + 40) = sub_1CF3BDB8C;
  *(v44 + 48) = 0;
  *(v44 + 56) = 0x10000;
  *(v44 + 64) = 0x10000;
  *(v44 + 72) = sub_1CF3BDC14;
  *(v44 + 80) = 0;
  *(v44 + 88) = 65537;
  *(v44 + 96) = 65537;
  *(v44 + 104) = sub_1CF3BDC9C;
  *(v44 + 112) = 0;
  *(v44 + 120) = 0x20000;
  *(v44 + 128) = 0x20000;
  *(v44 + 136) = sub_1CF3BDD24;
  *(v44 + 144) = 0;
  *(v44 + 152) = 131073;
  *(v44 + 160) = 131073;
  *(v44 + 168) = sub_1CF3BDDAC;
  *(v44 + 176) = 0;
  *(v44 + 184) = 131074;
  *(v44 + 192) = 131074;
  *(v44 + 200) = sub_1CF3BDE34;
  *(v44 + 208) = 0;
  *(v44 + 216) = 131075;
  *(v44 + 224) = 131075;
  *(v44 + 232) = sub_1CF3BDEBC;
  *(v44 + 240) = 0;
  *(v44 + 248) = 131076;
  *(v44 + 256) = 131076;
  *(v44 + 264) = sub_1CF3BDF44;
  *(v44 + 272) = 0;
  *(v44 + 280) = 131077;
  *(v44 + 288) = 131077;
  *(v44 + 296) = sub_1CF3BDFCC;
  *(v44 + 304) = 0;
  *(v44 + 312) = 131078;
  *(v44 + 320) = 131078;
  *(v44 + 328) = sub_1CF3BE054;
  *(v44 + 336) = 0;
  *(v44 + 344) = 131079;
  *(v44 + 352) = 131079;
  *(v44 + 360) = sub_1CF3BE0DC;
  *(v44 + 368) = 0;
  *(v44 + 376) = 131080;
  *(v44 + 384) = 131080;
  *(v44 + 392) = sub_1CF3BE164;
  *(v44 + 400) = 0;
  *(v44 + 408) = 131081;
  *(v44 + 416) = 131081;
  *(v44 + 424) = sub_1CF3BE1EC;
  *(v44 + 432) = 0;
  *(v44 + 440) = 196608;
  *(v44 + 448) = 196608;
  *(v44 + 456) = sub_1CF3BE274;
  *(v44 + 464) = 0;
  *(v44 + 472) = 196609;
  *(v44 + 480) = 196609;
  *(v44 + 488) = sub_1CF3BE2FC;
  *(v44 + 496) = 0;
  *(v44 + 504) = 196610;
  *(v44 + 512) = 196610;
  *(v44 + 520) = sub_1CF3BE384;
  *(v44 + 528) = 0;
  *(v44 + 536) = 196611;
  *(v44 + 544) = 196611;
  *(v44 + 552) = sub_1CF3BE40C;
  *(v44 + 560) = 0;
  *(v44 + 568) = 196612;
  *(v44 + 576) = 196612;
  *(v44 + 584) = sub_1CF3BE494;
  *(v44 + 592) = 0;
  *(v44 + 600) = 196613;
  *(v44 + 608) = 196613;
  *(v44 + 616) = sub_1CF3BE51C;
  *(v44 + 624) = 0;
  *(v44 + 632) = 196614;
  *(v44 + 640) = 196614;
  *(v44 + 648) = sub_1CF3BE5A4;
  *(v44 + 656) = 0;
  *(v44 + 664) = 196615;
  *(v44 + 672) = 196615;
  *(v44 + 680) = sub_1CF3BE62C;
  *(v44 + 688) = 0;
  *(v44 + 696) = 0x40000;
  *(v44 + 704) = 0x40000;
  *(v44 + 712) = sub_1CF3BE6B4;
  *(v44 + 720) = 0;
  *(v44 + 728) = 262145;
  *(v44 + 736) = 262145;
  *(v44 + 744) = sub_1CF3BE73C;
  *(v44 + 752) = 0;
  *(v44 + 760) = 327680;
  *(v44 + 768) = 327680;
  *(v44 + 776) = sub_1CF3BE7C4;
  *(v44 + 784) = 0;
  *(v44 + 792) = 327681;
  *(v44 + 800) = 327681;
  *(v44 + 808) = sub_1CF3BE84C;
  *(v44 + 816) = 0;
  *(v44 + 824) = 327682;
  *(v44 + 832) = 327682;
  *(v44 + 840) = sub_1CF3BE8D4;
  *(v44 + 848) = 0;
  *(v44 + 856) = 327683;
  *(v44 + 864) = 327683;
  *(v44 + 872) = sub_1CF3BE95C;
  *(v44 + 880) = 0;
  *(v44 + 888) = 327684;
  *(v44 + 896) = 327684;
  *(v44 + 904) = sub_1CF3BE9E4;
  *(v44 + 912) = 0;
  *(v44 + 920) = 327685;
  *(v44 + 928) = 327685;
  *(v44 + 936) = sub_1CF3BEA6C;
  *(v44 + 944) = 0;
  *(v44 + 952) = 327686;
  *(v44 + 960) = 327686;
  *(v44 + 968) = sub_1CF3BEAF4;
  *(v44 + 976) = 0;
  *(v44 + 984) = 327687;
  *(v44 + 992) = 327687;
  *(v44 + 1000) = sub_1CF3BEB7C;
  *(v44 + 1008) = 0;
  *(v44 + 1016) = 327688;
  *(v44 + 1024) = 327688;
  *(v44 + 1032) = sub_1CF3BEC04;
  *(v44 + 1040) = 0;
  *(v44 + 1048) = 327689;
  *(v44 + 1056) = 327689;
  *(v44 + 1064) = sub_1CF3BEC8C;
  *(v44 + 1072) = 0;
  *(v44 + 1080) = 327690;
  *(v44 + 1088) = 327690;
  *(v44 + 1096) = sub_1CF3BED14;
  *(v44 + 1104) = 0;
  *(v44 + 1112) = 327691;
  *(v44 + 1120) = 327691;
  *(v44 + 1128) = sub_1CF3BED9C;
  *(v44 + 1136) = 0;
  *(v44 + 1144) = 393216;
  *(v44 + 1152) = 393216;
  *(v44 + 1160) = sub_1CF3BEE24;
  *(v44 + 1168) = 0;
  *(v44 + 1176) = 393217;
  *(v44 + 1184) = 393217;
  *(v44 + 1192) = sub_1CF3BEEAC;
  *(v44 + 1200) = 0;
  *(v44 + 1208) = 393218;
  *(v44 + 1216) = 393218;
  *(v44 + 1224) = sub_1CF3BEF34;
  *(v44 + 1232) = 0;
  *(v44 + 1240) = 393219;
  *(v44 + 1248) = 393219;
  *(v44 + 1256) = sub_1CF3BEFBC;
  *(v44 + 1264) = 0;
  *(v44 + 1272) = 393220;
  *(v44 + 1280) = 393220;
  *(v44 + 1288) = sub_1CF3BF044;
  *(v44 + 1296) = 0;
  *(v44 + 1304) = 393221;
  *(v44 + 1312) = 393221;
  *(v44 + 1320) = sub_1CF3BF0CC;
  *(v44 + 1328) = 0;
  *(v44 + 1336) = 458752;
  *(v44 + 1344) = 458752;
  *(v44 + 1352) = sub_1CF3BF154;
  *(v44 + 1360) = 0;
  *(v44 + 1368) = 458753;
  *(v44 + 1376) = 458753;
  *(v44 + 1384) = sub_1CF3BF1DC;
  *(v44 + 1392) = 0;
  *(v44 + 1400) = 458754;
  *(v44 + 1408) = 458754;
  *(v44 + 1416) = sub_1CF3BF264;
  *(v44 + 1424) = 0;
  *(v44 + 1432) = 458755;
  *(v44 + 1440) = 458755;
  *(v44 + 1448) = sub_1CF3BF2EC;
  *(v44 + 1456) = 0;
  *(v44 + 1464) = 458756;
  *(v44 + 1472) = 458756;
  *(v44 + 1480) = sub_1CF3BF374;
  *(v44 + 1488) = 0;
  *(v44 + 1496) = 0x80000;
  *(v44 + 1504) = 0x80000;
  *(v44 + 1512) = sub_1CF3BF3FC;
  *(v44 + 1520) = 0;
  *(v44 + 1528) = 524289;
  *(v44 + 1536) = 524289;
  *(v44 + 1544) = sub_1CF3BF484;
  *(v44 + 1552) = 0;
  *(v44 + 1560) = 524290;
  *(v44 + 1568) = 524290;
  *(v44 + 1576) = sub_1CF3BF50C;
  *(v44 + 1584) = 0;
  *(v44 + 1592) = 524291;
  *(v44 + 1600) = 524291;
  *(v44 + 1608) = sub_1CF3BF594;
  *(v44 + 1616) = 0;
  *(v44 + 1624) = 590079;
  *(v44 + 1632) = 590079;
  *(v44 + 1640) = sub_1CF3BF61C;
  *(v44 + 1648) = 0;
  *(v44 + 1656) = 590080;
  *(v44 + 1664) = 590080;
  *(v44 + 1672) = sub_1CF3BF6A4;
  *(v44 + 1680) = 0;
  *(v44 + 1688) = 590081;
  *(v44 + 1696) = 590081;
  *(v44 + 1704) = sub_1CF3BF72C;
  *(v44 + 1712) = 0;
  *(v44 + 1720) = 590082;
  *(v44 + 1728) = 590082;
  *(v44 + 1736) = sub_1CF3BF7B4;
  *(v44 + 1744) = 0;
  *(v44 + 1752) = 590084;
  *(v44 + 1760) = 590084;
  *(v44 + 1768) = sub_1CF3BF83C;
  *(v44 + 1776) = 0;
  *(v44 + 1784) = 590085;
  *(v44 + 1792) = 590085;
  *(v44 + 1800) = sub_1CF3BF8C4;
  *(v44 + 1808) = 0;
  *(v44 + 1816) = 590086;
  *(v44 + 1824) = 590086;
  *(v44 + 1832) = sub_1CF3BF94C;
  *(v44 + 1840) = 0;
  *(v44 + 1848) = 590087;
  *(v44 + 1856) = 590087;
  *(v44 + 1864) = sub_1CF3BF9D4;
  *(v44 + 1872) = 0;
  *(v44 + 1880) = 590088;
  *(v44 + 1888) = 590088;
  *(v44 + 1896) = sub_1CF3BFA5C;
  *(v44 + 1904) = 0;
  *(v44 + 1912) = 655615;
  *(v44 + 1920) = 655615;
  *(v44 + 1928) = sub_1CF3BFAE4;
  *(v44 + 1936) = 0;
  *(v44 + 1944) = 655616;
  *(v44 + 1952) = 655616;
  *(v44 + 1960) = sub_1CF3BFB6C;
  *(v44 + 1968) = 0;
  *(v44 + 1976) = 655617;
  *(v44 + 1984) = 655617;
  *(v44 + 1992) = sub_1CF3BFBF4;
  *(v44 + 2000) = 0;
  *(v44 + 2008) = 720896;
  *(v44 + 2016) = 720896;
  *(v44 + 2024) = sub_1CF3BFC7C;
  *(v44 + 2032) = 0;
  *(v44 + 2040) = 720897;
  *(v44 + 2048) = 720897;
  *(v44 + 2056) = sub_1CF3BFD04;
  *(v44 + 2064) = 0;
  *(v44 + 2072) = 720898;
  *(v44 + 2080) = 720898;
  *(v44 + 2088) = sub_1CF3BFD8C;
  *(v44 + 2096) = 0;
  *(v44 + 2104) = 720899;
  *(v44 + 2112) = 720899;
  *(v44 + 2120) = sub_1CF3BFE14;
  *(v44 + 2128) = 0;
  *(v44 + 2136) = 720900;
  *(v44 + 2144) = 720900;
  *(v44 + 2152) = sub_1CF3BFE9C;
  *(v44 + 2160) = 0;
  *(v44 + 2168) = 720901;
  *(v44 + 2176) = 720901;
  *(v44 + 2184) = sub_1CF3BFF24;
  *(v44 + 2192) = 0;
  *(v44 + 2200) = 720902;
  *(v44 + 2208) = 720902;
  *(v44 + 2216) = sub_1CF3BFFAC;
  *(v44 + 2224) = 0;
  *(v44 + 2232) = 720903;
  v45 = sub_1CF4E0CC0(v44);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFB28, &unk_1CFA052B0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v252 = v43;
  *(a8 + v43) = v45;
  v46 = qword_1EDEBBE18;
  v254 = objc_opt_self();
  v47 = [v254 defaultStore];
  v48 = [v47 sqlDatabaseVacuumBatchSize];

  *(a8 + v46) = v48;
  *(a8 + qword_1EDEBBE08) = 0;
  *(a8 + qword_1EDEBBE00) = 0;
  *(a8 + qword_1EDEBBDF8) = 0;
  v49 = *(v279 + 136);
  v51 = *(v49 + 16);
  v50 = *(v49 + 24);

  v52 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v53 = *(v276 + 2);
  v280 = v20;
  v277 = v53;
  v278 = (v276 + 16);
  v53(v27, v281, v20);

  v267 = v32;
  v54 = sub_1CF9E6108();
  v55 = sub_1CF9E72C8();

  v56 = os_log_type_enabled(v54, v55);
  v271 = v50;
  v264 = v51;
  if (v56)
  {
    v57 = swift_slowAlloc();
    v265 = swift_slowAlloc();
    aBlock = v265;
    *v57 = 136446466;
    *(v57 + 4) = sub_1CEFD0DF0(v51, v50, &aBlock);
    *(v57 + 12) = 2082;
    v58 = v27;
    v59 = sub_1CF9E5928();
    v60 = [v59 fp_shortDescription];

    v61 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v63 = v62;

    v64 = *(v276 + 1);
    v65 = (v276 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v66 = v58;
    v67 = v280;
    v64(v66, v280);
    v68 = sub_1CEFD0DF0(v61, v63, &aBlock);
    v69 = v64;

    *(v57 + 14) = v68;
    _os_log_impl(&dword_1CEFC7000, v54, v55, "opening database %{public}s at %{public}s", v57, 0x16u);
    v70 = v265;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v70, -1, -1);
    MEMORY[0x1D386CDC0](v57, -1, -1);

    v232 = *(v259 + 8);
    v232(v267, v260);
    v71 = v67;
  }

  else
  {

    v69 = *(v276 + 1);
    v65 = (v276 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v71 = v280;
    v69(v27, v280);
    v232 = *(v259 + 8);
    v232(v267, v260);
  }

  v72 = qword_1EC4EBCE0;
  v73 = v274;
  v74 = v277;
  v277((v274 + qword_1EC4EBCE0), v281, v71);
  v276 = v72;
  v75 = v73 + v72;
  v76 = v270;
  v74(v270, v75, v71);
  v77 = sub_1CF9E5888();
  v79 = v78;
  v267 = v65;
  v69(v76, v71);
  v258 = v69;
  if (v77 == 0x656D3A3A656C6966 && v79 == 0xED00003A79726F6DLL)
  {

    v80 = v271;
    v81 = v268;
LABEL_8:
    v83 = v274;
    v84 = (v274 + qword_1EC4EBCE8);
    *v84 = 0;
    v84[1] = 0;
    v85 = 1;
    goto LABEL_10;
  }

  v82 = sub_1CF9E8048();

  v80 = v271;
  v81 = v268;
  if (v82)
  {
    goto LABEL_8;
  }

  v83 = v274;
  v86 = v266;
  v277(v266, &v276[v274], v71);
  v87 = sub_1CF9E5A18();
  v89 = v88;
  v69(v86, v71);
  aBlock = 1818326829;
  aBlock_8 = 0xE400000000000000;
  v282 = v87;
  v283 = v89;
  v282 = sub_1CF9E6B48();
  v283 = v90;
  sub_1CF9E6A28();
  v85 = 0;
  v91 = v283;
  v92 = &v83[qword_1EC4EBCE8];
  *v92 = v282;
  v92[1] = v91;
LABEL_10:
  v93 = &v83[qword_1EDEBBDA0];
  *v93 = sub_1CF6CB49C;
  v93[1] = 0;
  v243 = v93;
  v83[qword_1EDEAE650] = (v81 & 4) != 0;
  if ((v81 & 0x20000) != 0)
  {
    v94 = 3;
  }

  else
  {
    v94 = 1;
  }

  v95 = BYTE2(v81) & 2;
  if ((v81 & 0x200) != 0)
  {
    v95 = v94;
  }

  v83[qword_1EDEAE668] = v95;
  v96 = v254;
  v97 = [v254 defaultStore];
  v98 = [v97 sqlDatabaseBusyHandlerRetries];

  *&v83[qword_1EDEBBDB8] = v98;
  v99 = v272;
  v100 = *v272;
  v101 = v272[1];
  *v272 = 0;
  v99[1] = 0;
  sub_1CF1FD6F8(v100, v101);
  v102 = v273;
  v103 = *v273;
  v104 = v273[1];
  *v273 = 0;
  v102[1] = 0;
  sub_1CF1FD6F8(v103, v104);
  v105 = type metadata accessor for PQLConnectionWithStatistics();
  v106 = [objc_allocWithZone(v105) init];
  v107 = 0;
  v108 = 0;
  v270 = qword_1EDEBBDB0;
  *&v83[qword_1EDEBBDB0] = v106;
  v109 = v264;
  v234 = v81 | v85;
  if (((v81 | v85) & 1) == 0)
  {
    v108 = [objc_allocWithZone(v105) init];
    if ((v81 & 0x200000) != 0)
    {
      v107 = [objc_allocWithZone(v105) init];
    }

    else
    {
      v107 = 0;
    }
  }

  v265 = v107;
  v266 = v108;
  aBlock = v109;
  aBlock_8 = v80;

  MEMORY[0x1D3868CC0](0x296F722820, 0xE500000000000000);
  v262 = aBlock_8;
  v237 = aBlock;
  aBlock = v109;
  aBlock_8 = v80;

  MEMORY[0x1D3868CC0](0x747361466F722820, 0xE900000000000029);
  v261 = aBlock_8;
  v236 = aBlock;
  v110 = [v96 defaultStore];
  v111 = v109;
  v112 = v81;
  v113 = [v110 sqlDatabaseStatementCacheMaxCount];

  v114 = v113;
  v115 = v275;
  v277(v275, &v276[v83], v280);
  v116 = v255;
  v117 = (v115 + *(v255 + 52));
  v118 = v257;
  *v117 = v256;
  v117[1] = v118;
  *(v115 + v116[14]) = v279;
  *(v115 + v116[15]) = v269;
  *(v115 + v116[16]) = v114;
  *(v115 + v116[17]) = (v112 & 0x200000000) != 0;
  *(v115 + v116[18]) = v85;
  *(v115 + v116[19]) = v112;

  if (errorInjectionThrowOnDBCreationEnabled())
  {

    LODWORD(aBlock) = 16;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF042F54(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
    v119 = v239;
    v120 = v241;
    sub_1CF9E57D8();
    v121 = sub_1CF9E53A8();
    (*(v240 + 8))(v119, v120);
    swift_willThrow();
LABEL_26:
    v127 = v262;
    v128 = &unk_1EC4EB000;
LABEL_27:
    sub_1CF24CD3C();
    v129 = swift_allocError();
    *v130 = v121;
    *(v130 + 48) = 1;
    swift_willThrow();
    v131 = v121;
    v132 = v121;
    v133 = v129;

    sub_1CEFCCC44(v263, &qword_1EC4BFB10, &unk_1CFA12AD0);
    v134 = v280;
    v135 = v258;
    v258(v281, v280);
    sub_1CEFCCC44(v275, &qword_1EC4BFB18, &qword_1CFA052A0);

    sub_1CF1FD6F8(*v272, v272[1]);
    sub_1CF1FD6F8(*v273, v273[1]);
    sub_1CEFCCC44(&v83[v244], &unk_1EC4BEDE0, qword_1CF9FA390);
    v135(&v276[v83], v134);
    v136 = *&v83[v128[413] + 8];

    v137 = v243[1];

    v138 = *&v83[v245];

    v139 = *&v83[v247];
    swift_unknownObjectRelease();

    v140 = v248[1];
    sub_1CEFF7124(*v248);
    v141 = v246[1];
    sub_1CEFF7124(*v246);
    v142 = v249[1];
    sub_1CEFF7124(*v249);
    v143 = v251[1];
    sub_1CEFF7124(*v251);
    v144 = v253[1];
    sub_1CEFF7124(*v253);
    v145 = *&v83[v252];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB40, &unk_1CFA052C0);
    v146 = *(*v83 + 48);
    v147 = *(*v83 + 52);
    swift_deallocPartialClassInstance();
    return v127;
  }

  if (v112)
  {
    v122 = 1;
  }

  else
  {
    v122 = 6;
  }

  v123 = *&v270[v83];
  v124 = v80;
  v125 = v123;
  v126 = v242;
  sub_1CF3B0F28(v123, v111, v124, v122, v115);
  v121 = v126;

  if (v126)
  {

    goto LABEL_26;
  }

  v83[v238] = 0;
  v127 = v262;
  v128 = &unk_1EC4EB000;
  if (v85)
  {
    [*&v270[v83] setShouldUseWALJournalMode_];
  }

  v149 = v271;
  if ((v268 & 1) == 0 && ![*&v270[v83] setupPragmas])
  {

    v121 = [*&v270[v83] lastError];
    if (!v121)
    {
      type metadata accessor for PQLSqliteError(0);
      v282 = 11;
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF042F54(&qword_1EDEA38C0, type metadata accessor for PQLSqliteError);
      sub_1CF9E57D8();
      v121 = aBlock;
    }

    swift_willThrow();
    goto LABEL_27;
  }

  if (v266)
  {
    if ((v268 & 0x200000) != 0)
    {
      v150 = 1;
    }

    else
    {
      v150 = 65537;
    }

    v151 = v266;
    sub_1CF3B0F28(v151, v237, v127, v150, v275);

    v149 = v271;
  }

  v152 = v269;
  if (v265)
  {
    v153 = v265;
    sub_1CF3B0F28(v153, v236, v261, 1, v275);

    v149 = v271;
  }

  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB50, &unk_1CFA13390);
  v155 = *(v154 + 48);
  v156 = *(v154 + 52);
  swift_allocObject();
  v157 = v279;

  v278 = sub_1CF3E407C(0, v157, &qword_1EC4C0650, &qword_1CFA05A60, sub_1CF1CBB20, sub_1CF208628);
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5060, &qword_1CFA052D0);
  v159 = *(v158 + 48);
  v160 = *(v158 + 52);
  swift_allocObject();

  v161 = sub_1CF3E407C(1, v152, &qword_1EC4C0648, &qword_1CFA05A58, sub_1CF1CC7A8, sub_1CF2080AC);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB60, &qword_1CFA052D8);
  v162 = swift_allocObject();
  v163 = swift_weakInit();
  (*(*v157 + 96))(&aBlock, v163);

  (*(*v152 + 96))(&v282, v164);

  v165 = aBlock;
  v166 = v282;
  v167 = aBlock_8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4830, &unk_1CFA052E0);
  swift_allocObject();
  v168 = sub_1CF38B590(v165, v167, v166);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB70, &unk_1CFA0A280);
  swift_allocObject();

  v169 = v268;
  v170 = sub_1CF3ED780(v264, v149, v268);
  type metadata accessor for SQLHistoryTable();
  v171 = swift_allocObject();
  strcpy((v171 + 16), "D2DRestoreV2");
  *(v171 + 29) = 0;
  *(v171 + 30) = -5120;
  *(v171 + 32) = MEMORY[0x1E69E7CC0];
  *&v83[qword_1EDEBBE30] = v171;
  v172 = v235;
  sub_1CEFCCBDC(v263, v235, &qword_1EC4BFB10, &unk_1CFA12AD0);

  v173 = v278;

  v174 = sub_1CF4794AC(v168, v170, v173, v161, v162, v172, v169, v83);
  v279 = v168;
  v127 = v174;

  v277 = v170;
  swift_weakAssign();
  swift_weakAssign();
  v175 = *(v127 + 64);
  v176 = *(v127 + qword_1EDEBBDB0);
  v177 = v175;
  sub_1CF47A748(v176, v177, v275, v169 & 1);

  v276 = v161;
  v273 = v162;
  if ((v234 & 1) == 0)
  {
    v186 = v271;
    v178 = &unk_1EC4EB000;
    if ((v268 & 0x200000) != 0)
    {
      v185 = v263;
      if (!v266)
      {
        goto LABEL_53;
      }

      if (v265)
      {
        v274 = sub_1CEFD57E0(0, &unk_1EDEAB5C0, 0x1E69E9638);
        aBlock = v264;
        aBlock_8 = v186;
        v187 = v266;

        v272 = v187;
        v188 = v265;
        MEMORY[0x1D3868CC0](0x616261746164203ALL, 0xED00004F52206573);
        v256 = aBlock_8;
        v257 = aBlock;
        aBlock = MEMORY[0x1E69E7CC0];
        v269 = sub_1CF042F54(&unk_1EDEAB5D0, MEMORY[0x1E69E8110]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEE60, &qword_1CFA00870);
        v270 = sub_1CEFCCCEC(&unk_1EDEAB640, &qword_1EC4BEE60, &qword_1CFA00870);
        sub_1CF9E77B8();
        v189 = *MEMORY[0x1E69E8098];
        v268 = *(v230 + 104);
        v190 = v229;
        (v268)(v229, v189, v231);
        v191 = sub_1CF9E7498();
        v192 = (v127 + qword_1EC4EBCD0);
        v194 = *(v127 + qword_1EC4EBCD0);
        v193 = *(v127 + qword_1EC4EBCD0 + 8);
        *v192 = v266;
        v192[1] = v191;
        sub_1CF1FD6F8(v194, v193);
        aBlock = 0;
        aBlock_8 = 0xE000000000000000;
        sub_1CF9E7948();

        aBlock = v264;
        aBlock_8 = v271;

        MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA451A0);
        v257 = aBlock_8;
        v264 = aBlock;
        aBlock = MEMORY[0x1E69E7CC0];
        sub_1CF9E77B8();
        v195 = v189;
        v185 = v263;
        (v268)(v190, v195, v231);
        v178 = &unk_1EC4EB000;
        v196 = sub_1CF9E7498();

        v197 = (v127 + qword_1EC4EBCD8);
        v198 = *(v127 + qword_1EC4EBCD8);
        v199 = *(v127 + qword_1EC4EBCD8 + 8);
        *v197 = v265;
        v197[1] = v196;
LABEL_52:
        sub_1CF1FD6F8(v198, v199);
        goto LABEL_53;
      }
    }

    else
    {
      v185 = v263;
      if (!v266)
      {
        goto LABEL_53;
      }
    }

    v200 = *(v127 + 64);
    v201 = (v127 + qword_1EC4EBCD0);
    v202 = *(v127 + qword_1EC4EBCD0);
    v203 = *(v127 + qword_1EC4EBCD0 + 8);
    v204 = v266;
    *v201 = v266;
    v201[1] = v200;
    v205 = v204;
    v206 = v200;
    sub_1CF1FD6F8(v202, v203);
    v207 = (v127 + qword_1EC4EBCD8);
    v198 = *(v127 + qword_1EC4EBCD8);
    v199 = *(v127 + qword_1EC4EBCD8 + 8);
    *v207 = 0;
    v207[1] = 0;
    goto LABEL_52;
  }

  v178 = &unk_1EC4EB000;
  v179 = (v127 + qword_1EC4EBCD0);
  v180 = *(v127 + qword_1EC4EBCD0);
  v181 = *(v127 + qword_1EC4EBCD0 + 8);
  *v179 = 0;
  v179[1] = 0;
  sub_1CF1FD6F8(v180, v181);
  v182 = (v127 + qword_1EC4EBCD8);
  v183 = *(v127 + qword_1EC4EBCD8);
  v184 = *(v127 + qword_1EC4EBCD8 + 8);
  *v182 = 0;
  v182[1] = 0;
  sub_1CF1FD6F8(v183, v184);
  v185 = v263;
LABEL_53:
  v208 = v127 + v178[410];
  v209 = *v208;
  if (*v208)
  {
    v210 = *(v208 + 8);
    v211 = swift_allocObject();
    swift_weakInit();
    v288 = sub_1CF485A94;
    v289 = v211;
    aBlock = MEMORY[0x1E69E9820];
    aBlock_8 = 1107296256;
    v286 = sub_1CF00A468;
    v287 = &block_descriptor_1637;
    v212 = _Block_copy(&aBlock);
    v213 = v209;
    v214 = v210;

    [v213 setAutoRollbackHandlerForSwift_];
    _Block_release(v212);
    sub_1CF3B107C(v213, v214);
  }

  v215 = *(v127 + qword_1EC4EBCD8);
  if (v215)
  {
    v216 = *(v127 + qword_1EC4EBCD8 + 8);
    v217 = swift_allocObject();
    swift_weakInit();
    v288 = sub_1CF485A94;
    v289 = v217;
    aBlock = MEMORY[0x1E69E9820];
    aBlock_8 = 1107296256;
    v286 = sub_1CF00A468;
    v287 = &block_descriptor_1632;
    v218 = _Block_copy(&aBlock);
    v219 = v215;
    v220 = v216;

    [v219 setAutoRollbackHandlerForSwift_];
    _Block_release(v218);
    sub_1CF3B107C(v219, v220);
  }

  v221 = fpfs_current_or_default_log();
  v222 = v233;
  sub_1CF9E6128();
  v223 = sub_1CF9E6108();
  v224 = sub_1CF9E72C8();
  if (os_log_type_enabled(v223, v224))
  {
    v225 = swift_slowAlloc();
    *v225 = 0;
    _os_log_impl(&dword_1CEFC7000, v223, v224, "database is ready", v225, 2u);
    MEMORY[0x1D386CDC0](v225, -1, -1);
  }

  sub_1CEFCCC44(v185, &qword_1EC4BFB10, &unk_1CFA12AD0);
  v258(v281, v280);
  v232(v222, v260);
  sub_1CEFCCC44(v275, &qword_1EC4BFB18, &qword_1CFA052A0);
  return v127;
}

char *sub_1CF3B5EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(char *), uint64_t a7, char *a8, void *a9, void (*a10)(void *), uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v255 = a7;
  v254 = a6;
  v270 = a5;
  v264 = a4;
  v269 = a3;
  v278 = a1;
  v229 = sub_1CF9E7388();
  v228 = *(v229 - 8);
  v16 = *(v228 + 64);
  MEMORY[0x1EEE9AC00](v229);
  v227 = &v224 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v225 = sub_1CF9E7488();
  v18 = *(*(v225 - 8) + 64);
  MEMORY[0x1EEE9AC00](v225);
  v226 = &v224 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFB10, &unk_1CFA12AD0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v233 = &v224 - v22;
  v239 = sub_1CF9E53C8();
  v238 = *(v239 - 8);
  v23 = *(v238 + 64);
  MEMORY[0x1EEE9AC00](v239);
  v237 = &v224 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v253 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFB18, &qword_1CFA052A0);
  v25 = *(*(v253 - 8) + 64);
  MEMORY[0x1EEE9AC00](v253);
  v266 = &v224 - v26;
  v27 = sub_1CF9E5A58();
  v274 = *(v27 - 8);
  v28 = v274[8];
  v29 = MEMORY[0x1EEE9AC00](v27);
  v265 = &v224 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v267 = &v224 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v224 - v33;
  v257 = sub_1CF9E6118();
  v258 = *(v257 - 8);
  v35 = *(v258 + 64);
  v36 = MEMORY[0x1EEE9AC00](v257);
  v231 = &v224 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v275 = &v224 - v38;
  v39 = &a8[qword_1EC4EBCD0];
  *v39 = 0;
  v39[1] = 0;
  v271 = v39;
  v40 = &a8[qword_1EC4EBCD8];
  *v40 = 0;
  *(v40 + 1) = 0;
  v272 = v40;
  a8[qword_1EDEBBE28] = 0;
  v236 = qword_1EDEBBE38;
  a8[qword_1EDEBBE38] = 1;
  a8[qword_1EDEBBE10] = 0;
  v41 = qword_1EDEBBDA8;
  v42 = sub_1CF9E5D98();
  v43 = *(*(v42 - 8) + 56);
  v242 = v41;
  v43(&a8[v41], 1, 1, v42);
  v243 = qword_1EC4BFAF0;
  *&a8[qword_1EC4BFAF0] = MEMORY[0x1E69E7CC0];
  v245 = qword_1EDEAE678;
  *&a8[qword_1EDEAE678] = 0;
  v248 = qword_1EDEAE660;
  *&a8[qword_1EDEAE660] = 0;
  a8[qword_1EDEBBDE8] = 0;
  v44 = &a8[qword_1EDEBBDC8];
  *v44 = 0;
  v44[1] = 0;
  v246 = v44;
  a8[qword_1EDEBBDD0] = 0;
  v45 = &a8[qword_1EDEBBDC0];
  *v45 = 0;
  v45[1] = 0;
  v244 = v45;
  v46 = &a8[qword_1EDEBBDD8];
  *v46 = 0;
  v46[1] = 0;
  v247 = v46;
  v47 = &a8[qword_1EDEBBDF0];
  *v47 = 0;
  v47[1] = 0;
  v249 = v47;
  v48 = &a8[qword_1EDEBBE20];
  *v48 = 0;
  v48[1] = 0;
  v251 = v48;
  a8[qword_1EDEBBDE0] = 0;
  v49 = qword_1EC4BFAF8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFB20, &qword_1CFA052A8);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_1CFA04E00;
  *(v50 + 32) = 0;
  *(v50 + 40) = sub_1CF3BDB8C;
  *(v50 + 48) = 0;
  *(v50 + 56) = 0x10000;
  *(v50 + 64) = 0x10000;
  *(v50 + 72) = sub_1CF3BDC14;
  *(v50 + 80) = 0;
  *(v50 + 88) = 65537;
  *(v50 + 96) = 65537;
  *(v50 + 104) = sub_1CF3BDC9C;
  *(v50 + 112) = 0;
  *(v50 + 120) = 0x20000;
  *(v50 + 128) = 0x20000;
  *(v50 + 136) = sub_1CF3BDD24;
  *(v50 + 144) = 0;
  *(v50 + 152) = 131073;
  *(v50 + 160) = 131073;
  *(v50 + 168) = sub_1CF3BDDAC;
  *(v50 + 176) = 0;
  *(v50 + 184) = 131074;
  *(v50 + 192) = 131074;
  *(v50 + 200) = sub_1CF3BDE34;
  *(v50 + 208) = 0;
  *(v50 + 216) = 131075;
  *(v50 + 224) = 131075;
  *(v50 + 232) = sub_1CF3BDEBC;
  *(v50 + 240) = 0;
  *(v50 + 248) = 131076;
  *(v50 + 256) = 131076;
  *(v50 + 264) = sub_1CF3BDF44;
  *(v50 + 272) = 0;
  *(v50 + 280) = 131077;
  *(v50 + 288) = 131077;
  *(v50 + 296) = sub_1CF3BDFCC;
  *(v50 + 304) = 0;
  *(v50 + 312) = 131078;
  *(v50 + 320) = 131078;
  *(v50 + 328) = sub_1CF3BE054;
  *(v50 + 336) = 0;
  *(v50 + 344) = 131079;
  *(v50 + 352) = 131079;
  *(v50 + 360) = sub_1CF3BE0DC;
  *(v50 + 368) = 0;
  *(v50 + 376) = 131080;
  *(v50 + 384) = 131080;
  *(v50 + 392) = sub_1CF3BE164;
  *(v50 + 400) = 0;
  *(v50 + 408) = 131081;
  *(v50 + 416) = 131081;
  *(v50 + 424) = sub_1CF3BE1EC;
  *(v50 + 432) = 0;
  *(v50 + 440) = 196608;
  *(v50 + 448) = 196608;
  *(v50 + 456) = sub_1CF3BE274;
  *(v50 + 464) = 0;
  *(v50 + 472) = 196609;
  *(v50 + 480) = 196609;
  *(v50 + 488) = sub_1CF3BE2FC;
  *(v50 + 496) = 0;
  *(v50 + 504) = 196610;
  *(v50 + 512) = 196610;
  *(v50 + 520) = sub_1CF3BE384;
  *(v50 + 528) = 0;
  *(v50 + 536) = 196611;
  *(v50 + 544) = 196611;
  *(v50 + 552) = sub_1CF3BE40C;
  *(v50 + 560) = 0;
  *(v50 + 568) = 196612;
  *(v50 + 576) = 196612;
  *(v50 + 584) = sub_1CF3BE494;
  *(v50 + 592) = 0;
  *(v50 + 600) = 196613;
  *(v50 + 608) = 196613;
  *(v50 + 616) = sub_1CF3BE51C;
  *(v50 + 624) = 0;
  *(v50 + 632) = 196614;
  *(v50 + 640) = 196614;
  *(v50 + 648) = sub_1CF3BE5A4;
  *(v50 + 656) = 0;
  *(v50 + 664) = 196615;
  *(v50 + 672) = 196615;
  *(v50 + 680) = sub_1CF3BE62C;
  *(v50 + 688) = 0;
  *(v50 + 696) = 0x40000;
  *(v50 + 704) = 0x40000;
  *(v50 + 712) = sub_1CF3BE6B4;
  *(v50 + 720) = 0;
  *(v50 + 728) = 262145;
  *(v50 + 736) = 262145;
  *(v50 + 744) = sub_1CF3BE73C;
  *(v50 + 752) = 0;
  *(v50 + 760) = 327680;
  *(v50 + 768) = 327680;
  *(v50 + 776) = sub_1CF3BE7C4;
  *(v50 + 784) = 0;
  *(v50 + 792) = 327681;
  *(v50 + 800) = 327681;
  *(v50 + 808) = sub_1CF3BE84C;
  *(v50 + 816) = 0;
  *(v50 + 824) = 327682;
  *(v50 + 832) = 327682;
  *(v50 + 840) = sub_1CF3BE8D4;
  *(v50 + 848) = 0;
  *(v50 + 856) = 327683;
  *(v50 + 864) = 327683;
  *(v50 + 872) = sub_1CF3BE95C;
  *(v50 + 880) = 0;
  *(v50 + 888) = 327684;
  *(v50 + 896) = 327684;
  *(v50 + 904) = sub_1CF3BE9E4;
  *(v50 + 912) = 0;
  *(v50 + 920) = 327685;
  *(v50 + 928) = 327685;
  *(v50 + 936) = sub_1CF3BEA6C;
  *(v50 + 944) = 0;
  *(v50 + 952) = 327686;
  *(v50 + 960) = 327686;
  *(v50 + 968) = sub_1CF3BEAF4;
  *(v50 + 976) = 0;
  *(v50 + 984) = 327687;
  *(v50 + 992) = 327687;
  *(v50 + 1000) = sub_1CF3BEB7C;
  *(v50 + 1008) = 0;
  *(v50 + 1016) = 327688;
  *(v50 + 1024) = 327688;
  *(v50 + 1032) = sub_1CF3BEC04;
  *(v50 + 1040) = 0;
  *(v50 + 1048) = 327689;
  *(v50 + 1056) = 327689;
  *(v50 + 1064) = sub_1CF3BEC8C;
  *(v50 + 1072) = 0;
  *(v50 + 1080) = 327690;
  *(v50 + 1088) = 327690;
  *(v50 + 1096) = sub_1CF3BED14;
  *(v50 + 1104) = 0;
  *(v50 + 1112) = 327691;
  *(v50 + 1120) = 327691;
  *(v50 + 1128) = sub_1CF3BED9C;
  *(v50 + 1136) = 0;
  *(v50 + 1144) = 393216;
  *(v50 + 1152) = 393216;
  *(v50 + 1160) = sub_1CF3BEE24;
  *(v50 + 1168) = 0;
  *(v50 + 1176) = 393217;
  *(v50 + 1184) = 393217;
  *(v50 + 1192) = sub_1CF3BEEAC;
  *(v50 + 1200) = 0;
  *(v50 + 1208) = 393218;
  *(v50 + 1216) = 393218;
  *(v50 + 1224) = sub_1CF3BEF34;
  *(v50 + 1232) = 0;
  *(v50 + 1240) = 393219;
  *(v50 + 1248) = 393219;
  *(v50 + 1256) = sub_1CF3BEFBC;
  *(v50 + 1264) = 0;
  *(v50 + 1272) = 393220;
  *(v50 + 1280) = 393220;
  *(v50 + 1288) = sub_1CF3BF044;
  *(v50 + 1296) = 0;
  *(v50 + 1304) = 393221;
  *(v50 + 1312) = 393221;
  *(v50 + 1320) = sub_1CF3BF0CC;
  *(v50 + 1328) = 0;
  *(v50 + 1336) = 458752;
  *(v50 + 1344) = 458752;
  *(v50 + 1352) = sub_1CF3BF154;
  *(v50 + 1360) = 0;
  *(v50 + 1368) = 458753;
  *(v50 + 1376) = 458753;
  *(v50 + 1384) = sub_1CF3BF1DC;
  *(v50 + 1392) = 0;
  *(v50 + 1400) = 458754;
  *(v50 + 1408) = 458754;
  *(v50 + 1416) = sub_1CF3BF264;
  *(v50 + 1424) = 0;
  *(v50 + 1432) = 458755;
  *(v50 + 1440) = 458755;
  *(v50 + 1448) = sub_1CF3BF2EC;
  *(v50 + 1456) = 0;
  *(v50 + 1464) = 458756;
  *(v50 + 1472) = 458756;
  *(v50 + 1480) = sub_1CF3BF374;
  *(v50 + 1488) = 0;
  *(v50 + 1496) = 0x80000;
  *(v50 + 1504) = 0x80000;
  *(v50 + 1512) = sub_1CF3BF3FC;
  *(v50 + 1520) = 0;
  *(v50 + 1528) = 524289;
  *(v50 + 1536) = 524289;
  *(v50 + 1544) = sub_1CF3BF484;
  *(v50 + 1552) = 0;
  *(v50 + 1560) = 524290;
  *(v50 + 1568) = 524290;
  *(v50 + 1576) = sub_1CF3BF50C;
  *(v50 + 1584) = 0;
  *(v50 + 1592) = 524291;
  *(v50 + 1600) = 524291;
  *(v50 + 1608) = sub_1CF3BF594;
  *(v50 + 1616) = 0;
  *(v50 + 1624) = 590079;
  *(v50 + 1632) = 590079;
  *(v50 + 1640) = sub_1CF3BF61C;
  *(v50 + 1648) = 0;
  *(v50 + 1656) = 590080;
  *(v50 + 1664) = 590080;
  *(v50 + 1672) = sub_1CF3BF6A4;
  *(v50 + 1680) = 0;
  *(v50 + 1688) = 590081;
  *(v50 + 1696) = 590081;
  *(v50 + 1704) = sub_1CF3BF72C;
  *(v50 + 1712) = 0;
  *(v50 + 1720) = 590082;
  *(v50 + 1728) = 590082;
  *(v50 + 1736) = sub_1CF3BF7B4;
  *(v50 + 1744) = 0;
  *(v50 + 1752) = 590084;
  *(v50 + 1760) = 590084;
  *(v50 + 1768) = sub_1CF3BF83C;
  *(v50 + 1776) = 0;
  *(v50 + 1784) = 590085;
  *(v50 + 1792) = 590085;
  *(v50 + 1800) = sub_1CF3BF8C4;
  *(v50 + 1808) = 0;
  *(v50 + 1816) = 590086;
  *(v50 + 1824) = 590086;
  *(v50 + 1832) = sub_1CF3BF94C;
  *(v50 + 1840) = 0;
  *(v50 + 1848) = 590087;
  *(v50 + 1856) = 590087;
  *(v50 + 1864) = sub_1CF3BF9D4;
  *(v50 + 1872) = 0;
  *(v50 + 1880) = 590088;
  *(v50 + 1888) = 590088;
  *(v50 + 1896) = sub_1CF3BFA5C;
  *(v50 + 1904) = 0;
  *(v50 + 1912) = 655615;
  *(v50 + 1920) = 655615;
  *(v50 + 1928) = sub_1CF3BFAE4;
  *(v50 + 1936) = 0;
  *(v50 + 1944) = 655616;
  *(v50 + 1952) = 655616;
  *(v50 + 1960) = sub_1CF3BFB6C;
  *(v50 + 1968) = 0;
  *(v50 + 1976) = 655617;
  *(v50 + 1984) = 655617;
  *(v50 + 1992) = sub_1CF3BFBF4;
  *(v50 + 2000) = 0;
  *(v50 + 2008) = 720896;
  *(v50 + 2016) = 720896;
  *(v50 + 2024) = sub_1CF3BFC7C;
  *(v50 + 2032) = 0;
  *(v50 + 2040) = 720897;
  *(v50 + 2048) = 720897;
  *(v50 + 2056) = sub_1CF3BFD04;
  *(v50 + 2064) = 0;
  *(v50 + 2072) = 720898;
  *(v50 + 2080) = 720898;
  *(v50 + 2088) = sub_1CF3BFD8C;
  *(v50 + 2096) = 0;
  *(v50 + 2104) = 720899;
  *(v50 + 2112) = 720899;
  *(v50 + 2120) = sub_1CF3BFE14;
  *(v50 + 2128) = 0;
  *(v50 + 2136) = 720900;
  *(v50 + 2144) = 720900;
  *(v50 + 2152) = sub_1CF3BFE9C;
  *(v50 + 2160) = 0;
  *(v50 + 2168) = 720901;
  *(v50 + 2176) = 720901;
  *(v50 + 2184) = sub_1CF3BFF24;
  *(v50 + 2192) = 0;
  *(v50 + 2200) = 720902;
  *(v50 + 2208) = 720902;
  *(v50 + 2216) = sub_1CF3BFFAC;
  *(v50 + 2224) = 0;
  *(v50 + 2232) = 720903;
  v51 = sub_1CF4E0CC0(v50);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFB28, &unk_1CFA052B0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v250 = v49;
  *&a8[v49] = v51;
  v52 = qword_1EDEBBE18;
  v273 = objc_opt_self();
  v53 = [v273 defaultStore];
  v54 = [v53 sqlDatabaseVacuumBatchSize];

  *&a8[v52] = v54;
  a8[qword_1EDEBBE08] = 0;
  a8[qword_1EDEBBE00] = 0;
  a8[qword_1EDEBBDF8] = 0;
  v268 = a2;
  v55 = *(a2 + 136);
  v57 = *(v55 + 16);
  v56 = *(v55 + 24);

  v58 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v276 = v274[2];
  v277 = (v274 + 2);
  v276(v34, v278, v27);

  v59 = sub_1CF9E6108();
  v60 = sub_1CF9E72C8();

  v61 = os_log_type_enabled(v59, v60);
  v279 = v27;
  v261 = v56;
  v262 = v57;
  if (v61)
  {
    v62 = swift_slowAlloc();
    v260 = swift_slowAlloc();
    aBlock = v260;
    *v62 = 136446466;
    *(v62 + 4) = sub_1CEFD0DF0(v57, v56, &aBlock);
    *(v62 + 12) = 2082;
    v263 = a8;
    v63 = v34;
    v64 = sub_1CF9E5928();
    v65 = [v64 fp_shortDescription];

    v66 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v68 = v67;

    v69 = v274[1];
    v70 = (v274 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v71 = v63;
    a8 = v263;
    v69(v71, v279);
    v72 = sub_1CEFD0DF0(v66, v68, &aBlock);
    v27 = v279;

    *(v62 + 14) = v72;
    _os_log_impl(&dword_1CEFC7000, v59, v60, "opening database %{public}s at %{public}s", v62, 0x16u);
    v73 = v260;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v73, -1, -1);
    MEMORY[0x1D386CDC0](v62, -1, -1);
  }

  else
  {

    v69 = v274[1];
    v70 = (v274 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v69(v34, v27);
  }

  v230 = *(v258 + 8);
  v230(v275, v257);
  v274 = a9;
  v74 = qword_1EC4EBCE0;
  v75 = v27;
  v76 = v27;
  v77 = v276;
  v276(&a8[qword_1EC4EBCE0], v278, v75);
  v275 = v74;
  v78 = &a8[v74];
  v79 = v267;
  v77(v267, v78, v76);
  v80 = sub_1CF9E5888();
  v82 = v81;
  v267 = v69;
  v69(v79, v76);
  v83 = v80 == 0x656D3A3A656C6966;
  v84 = v70;
  if (v83 && v82 == 0xED00003A79726F6DLL)
  {

    v85 = v262;
LABEL_9:
    v87 = &a8[qword_1EC4EBCE8];
    *v87 = 0;
    *(v87 + 1) = 0;
    v88 = 1;
    goto LABEL_11;
  }

  v86 = sub_1CF9E8048();

  v85 = v262;
  if (v86)
  {
    goto LABEL_9;
  }

  v89 = v265;
  v276(v265, &v275[a8], v76);
  v90 = sub_1CF9E5A18();
  v92 = v91;
  (v267)(v89, v76);
  aBlock = 1818326829;
  aBlock_8 = 0xE400000000000000;
  v280 = v90;
  v281 = v92;
  v280 = sub_1CF9E6B48();
  v281 = v93;
  sub_1CF9E6A28();
  v88 = 0;
  v94 = v281;
  v95 = &a8[qword_1EC4EBCE8];
  *v95 = v280;
  v95[1] = v94;
LABEL_11:
  v96 = &a8[qword_1EDEBBDA0];
  *v96 = v274;
  *(v96 + 1) = 0;
  v241 = v96;
  v97 = v270;
  a8[qword_1EDEAE650] = (v270 & 4) != 0;
  v252 = a10;
  if ((v97 & 0x20000) != 0)
  {
    v98 = 3;
  }

  else
  {
    v98 = 1;
  }

  v99 = BYTE2(v97) & 2;
  if ((v97 & 0x200) != 0)
  {
    v99 = v98;
  }

  a8[qword_1EDEAE668] = v99;
  v100 = [v273 defaultStore];
  v101 = [v100 sqlDatabaseBusyHandlerRetries];

  *&a8[qword_1EDEBBDB8] = v101;
  v102 = v271;
  v103 = *v271;
  v104 = v271[1];
  *v271 = 0;
  v102[1] = 0;
  sub_1CF1FD6F8(v103, v104);
  v105 = v272;
  v106 = *v272;
  v107 = v272[1];
  *v272 = 0;
  v105[1] = 0;
  sub_1CF1FD6F8(v106, v107);
  v108 = type metadata accessor for PQLConnectionWithStatistics();
  v109 = [objc_allocWithZone(v108) init];
  v110 = 0;
  v111 = 0;
  v274 = qword_1EDEBBDB0;
  *&a8[qword_1EDEBBDB0] = v109;
  v112 = v261;
  v232 = v97 | v88;
  if (((v97 | v88) & 1) == 0)
  {
    v111 = [objc_allocWithZone(v108) init];
    if ((v97 & 0x200000) != 0)
    {
      v110 = [objc_allocWithZone(v108) init];
    }

    else
    {
      v110 = 0;
    }

    v97 = v270;
  }

  v263 = v110;
  v265 = v111;
  v256 = v84;
  aBlock = v85;
  aBlock_8 = v112;

  MEMORY[0x1D3868CC0](0x296F722820, 0xE500000000000000);
  v259 = aBlock_8;
  v235 = aBlock;
  aBlock = v85;
  aBlock_8 = v112;

  MEMORY[0x1D3868CC0](0x747361466F722820, 0xE900000000000029);
  v260 = aBlock_8;
  v234 = aBlock;
  v113 = [v273 defaultStore];
  v114 = [v113 sqlDatabaseStatementCacheMaxCount];

  v115 = v114;
  v116 = v266;
  v276(v266, &v275[a8], v279);
  v117 = v85;
  v118 = v116;
  v119 = v253;
  v120 = (v116 + *(v253 + 52));
  v121 = v255;
  *v120 = v254;
  v120[1] = v121;
  *(v116 + v119[14]) = v268;
  *(v116 + v119[15]) = v269;
  *(v116 + v119[16]) = v115;
  *(v116 + v119[17]) = (v97 & 0x200000000) != 0;
  *(v116 + v119[18]) = v88;
  *(v116 + v119[19]) = v97;

  if (errorInjectionThrowOnDBCreationEnabled())
  {

    LODWORD(aBlock) = 16;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF042F54(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
    v122 = v237;
    v123 = v239;
    sub_1CF9E57D8();
    v124 = sub_1CF9E53A8();
    (*(v238 + 8))(v122, v123);
    swift_willThrow();
    v125 = v279;
    v126 = v274;
LABEL_28:
    sub_1CF24CD3C();
    v130 = swift_allocError();
    *v131 = v124;
    *(v131 + 48) = 1;
    v132 = v124;
    v133 = v124;
    v252(v130);

    sub_1CEFCCC44(v264, &qword_1EC4BFB10, &unk_1CFA12AD0);
    v134 = v267;
    (v267)(v278, v125);
    sub_1CEFCCC44(v118, &qword_1EC4BFB18, &qword_1CFA052A0);

    sub_1CF1FD6F8(*v271, v271[1]);
    sub_1CF1FD6F8(*v272, v272[1]);
    sub_1CEFCCC44(&a8[v242], &unk_1EC4BEDE0, qword_1CF9FA390);
    v134(&v275[a8], v125);
    v135 = *&a8[qword_1EC4EBCE8 + 8];

    v136 = *(v241 + 1);

    v137 = *&a8[v243];

    v138 = *&a8[v245];
    swift_unknownObjectRelease();

    v139 = v246[1];
    sub_1CEFF7124(*v246);
    v140 = v244[1];
    sub_1CEFF7124(*v244);
    v141 = v247[1];
    sub_1CEFF7124(*v247);
    v142 = v249[1];
    sub_1CEFF7124(*v249);
    v143 = v251[1];
    sub_1CEFF7124(*v251);
    v144 = *&a8[v250];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB40, &unk_1CFA052C0);
    v145 = *(*a8 + 48);
    v146 = *(*a8 + 52);
    swift_deallocPartialClassInstance();
    return a8;
  }

  if (v97)
  {
    v127 = 1;
  }

  else
  {
    v127 = 6;
  }

  v126 = v274;
  v128 = *(v274 + a8);
  v129 = v240;
  sub_1CF3B0F28(v128, v117, v112, v127, v118);
  v124 = v129;
  if (v129)
  {

    v125 = v279;
    goto LABEL_28;
  }

  a8[v236] = 0;
  if (v88)
  {
    [*(v126 + a8) setShouldUseWALJournalMode_];
  }

  v126 = v274;
  if ((v270 & 1) == 0 && ![*(v274 + a8) setupPragmas])
  {

    v124 = [*(v126 + a8) lastError];
    v125 = v279;
    if (!v124)
    {
      type metadata accessor for PQLSqliteError(0);
      v280 = 11;
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF042F54(&qword_1EDEA38C0, type metadata accessor for PQLSqliteError);
      sub_1CF9E57D8();
      v124 = aBlock;
    }

    swift_willThrow();
    goto LABEL_28;
  }

  if (v265)
  {
    if ((v270 & 0x200000) != 0)
    {
      v148 = 1;
    }

    else
    {
      v148 = 65537;
    }

    v149 = v265;
    v150 = v118;
    v151 = v149;
    sub_1CF3B0F28(v149, v235, v259, v148, v150);
  }

  v152 = v268;
  if (v263)
  {
    v153 = v263;
    sub_1CF3B0F28(v153, v234, v260, 1, v266);
  }

  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB50, &unk_1CFA13390);
  v155 = *(v154 + 48);
  v156 = *(v154 + 52);
  swift_allocObject();

  v277 = sub_1CF3E407C(0, v152, &qword_1EC4C0650, &qword_1CFA05A60, sub_1CF1CBB20, sub_1CF208628);
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5060, &qword_1CFA052D0);
  v158 = *(v157 + 48);
  v159 = *(v157 + 52);
  swift_allocObject();
  v160 = v269;

  v161 = sub_1CF3E407C(1, v160, &qword_1EC4C0648, &qword_1CFA05A58, sub_1CF1CC7A8, sub_1CF2080AC);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB60, &qword_1CFA052D8);
  v276 = swift_allocObject();
  v162 = swift_weakInit();
  (*(*v152 + 96))(&aBlock, v162);

  (*(*v160 + 96))(&v280, v163);

  v164 = aBlock;
  v165 = v280;
  v166 = aBlock_8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4830, &unk_1CFA052E0);
  swift_allocObject();
  v167 = sub_1CF38B590(v164, v166, v165);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB70, &unk_1CFA0A280);
  swift_allocObject();

  v168 = sub_1CF3ED780(v262, v112, v270);
  type metadata accessor for SQLHistoryTable();
  v169 = swift_allocObject();
  strcpy((v169 + 16), "D2DRestoreV2");
  *(v169 + 29) = 0;
  *(v169 + 30) = -5120;
  *(v169 + 32) = MEMORY[0x1E69E7CC0];
  *&a8[qword_1EDEBBE30] = v169;
  v170 = v233;
  sub_1CEFCCBDC(v264, v233, &qword_1EC4BFB10, &unk_1CFA12AD0);

  v171 = v277;

  v172 = v276;

  a8 = sub_1CF4794AC(v167, v168, v171, v161, v172, v170, v270, a8);
  v274 = v167;

  v275 = v161;

  v273 = v168;
  swift_weakAssign();
  swift_weakAssign();
  v173 = *(a8 + 8);
  v174 = *&a8[qword_1EDEBBDB0];
  v175 = v173;
  sub_1CF47A748(v174, v175, v266, v270 & 1);

  v176 = v264;
  if ((v232 & 1) == 0)
  {
    v177 = &unk_1EC4EB000;
    if ((v270 & 0x200000) != 0)
    {
      if (!v265)
      {
        goto LABEL_54;
      }

      if (v263)
      {
        v255 = sub_1CEFD57E0(0, &unk_1EDEAB5C0, 0x1E69E9638);
        v184 = v261;
        aBlock = v262;
        aBlock_8 = v261;
        v185 = v265;

        v272 = v185;
        v186 = v263;
        MEMORY[0x1D3868CC0](0x616261746164203ALL, 0xED00004F52206573);
        v251 = aBlock_8;
        v253 = aBlock;
        aBlock = MEMORY[0x1E69E7CC0];
        v270 = sub_1CF042F54(&unk_1EDEAB5D0, MEMORY[0x1E69E8110]);
        v269 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEE60, &qword_1CFA00870);
        v271 = sub_1CEFCCCEC(&unk_1EDEAB640, &qword_1EC4BEE60, &qword_1CFA00870);
        sub_1CF9E77B8();
        LODWORD(v268) = *MEMORY[0x1E69E8098];
        v254 = *(v228 + 104);
        v187 = v227;
        v254(v227);
        v188 = sub_1CF9E7498();
        v189 = &a8[qword_1EC4EBCD0];
        v191 = *&a8[qword_1EC4EBCD0];
        v190 = *&a8[qword_1EC4EBCD0 + 8];
        *v189 = v265;
        *(v189 + 1) = v188;
        sub_1CF1FD6F8(v191, v190);
        aBlock = 0;
        aBlock_8 = 0xE000000000000000;
        sub_1CF9E7948();

        aBlock = v262;
        aBlock_8 = v184;

        MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA451A0);
        aBlock = MEMORY[0x1E69E7CC0];
        sub_1CF9E77B8();
        (v254)(v187, v268, v229);
        v176 = v264;
        v177 = &unk_1EC4EB000;
        v192 = sub_1CF9E7498();

        v193 = &a8[qword_1EC4EBCD8];
        v194 = *&a8[qword_1EC4EBCD8];
        v195 = *&a8[qword_1EC4EBCD8 + 8];
        *v193 = v263;
        *(v193 + 1) = v192;
LABEL_53:
        sub_1CF1FD6F8(v194, v195);
        goto LABEL_54;
      }
    }

    else if (!v265)
    {
      goto LABEL_54;
    }

    v196 = *(a8 + 8);
    v197 = &a8[qword_1EC4EBCD0];
    v198 = *&a8[qword_1EC4EBCD0];
    v199 = *&a8[qword_1EC4EBCD0 + 8];
    v200 = v265;
    *v197 = v265;
    *(v197 + 1) = v196;
    v201 = v200;
    v202 = v196;
    sub_1CF1FD6F8(v198, v199);
    v203 = &a8[qword_1EC4EBCD8];
    v194 = *&a8[qword_1EC4EBCD8];
    v195 = *&a8[qword_1EC4EBCD8 + 8];
    *v203 = 0;
    *(v203 + 1) = 0;
    goto LABEL_53;
  }

  v177 = &unk_1EC4EB000;
  v178 = &a8[qword_1EC4EBCD0];
  v179 = *&a8[qword_1EC4EBCD0];
  v180 = *&a8[qword_1EC4EBCD0 + 8];
  *v178 = 0;
  *(v178 + 1) = 0;
  sub_1CF1FD6F8(v179, v180);
  v181 = &a8[qword_1EC4EBCD8];
  v182 = *&a8[qword_1EC4EBCD8];
  v183 = *&a8[qword_1EC4EBCD8 + 8];
  *v181 = 0;
  *(v181 + 1) = 0;
  sub_1CF1FD6F8(v182, v183);
LABEL_54:
  v204 = &a8[v177[410]];
  v205 = *v204;
  if (*v204)
  {
    v206 = *(v204 + 1);
    v207 = swift_allocObject();
    swift_weakInit();
    v286 = a11;
    v287 = v207;
    aBlock = MEMORY[0x1E69E9820];
    aBlock_8 = 1107296256;
    v284 = sub_1CF00A468;
    v285 = a12;
    v208 = _Block_copy(&aBlock);
    v209 = v205;
    v210 = v206;

    [v209 setAutoRollbackHandlerForSwift_];
    _Block_release(v208);
    sub_1CF3B107C(v209, v210);

    v176 = v264;
  }

  v211 = *&a8[qword_1EC4EBCD8];
  if (v211)
  {
    v212 = *&a8[qword_1EC4EBCD8 + 8];
    v213 = swift_allocObject();
    swift_weakInit();
    v286 = a13;
    v287 = v213;
    aBlock = MEMORY[0x1E69E9820];
    aBlock_8 = 1107296256;
    v284 = sub_1CF00A468;
    v285 = a14;
    v214 = _Block_copy(&aBlock);
    v215 = v211;
    v216 = v212;

    [v215 setAutoRollbackHandlerForSwift_];
    _Block_release(v214);
    sub_1CF3B107C(v215, v216);

    v176 = v264;
  }

  v217 = v279;

  v218 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v219 = sub_1CF9E6108();
  v220 = sub_1CF9E72C8();
  v221 = os_log_type_enabled(v219, v220);
  v222 = v257;
  if (v221)
  {
    v223 = swift_slowAlloc();
    *v223 = 0;
    _os_log_impl(&dword_1CEFC7000, v219, v220, "database is ready", v223, 2u);
    MEMORY[0x1D386CDC0](v223, -1, -1);
  }

  sub_1CEFCCC44(v176, &qword_1EC4BFB10, &unk_1CFA12AD0);
  (v267)(v278, v217);
  v230(v231, v222);
  sub_1CEFCCC44(v266, &qword_1EC4BFB18, &qword_1CFA052A0);
  return a8;
}

char *sub_1CF3B8C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void), char *a8, id (*a9)(uint64_t a1, void *a2))
{
  v251 = a7;
  v250 = a6;
  v263 = a5;
  v256 = a4;
  v264 = a3;
  v274 = a2;
  v277 = a1;
  v226 = sub_1CF9E7388();
  v225 = *(v226 - 8);
  v10 = *(v225 + 64);
  MEMORY[0x1EEE9AC00](v226);
  v224 = v223 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v223[0] = sub_1CF9E7488();
  v12 = *(*(v223[0] - 8) + 64);
  MEMORY[0x1EEE9AC00](v223[0]);
  v223[1] = v223 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFB10, &unk_1CFA12AD0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v230 = v223 - v16;
  v236 = sub_1CF9E53C8();
  v235 = *(v236 - 8);
  v17 = *(v235 + 64);
  MEMORY[0x1EEE9AC00](v236);
  v234 = v223 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFB18, &qword_1CFA052A0);
  v19 = *(*(v249 - 8) + 64);
  MEMORY[0x1EEE9AC00](v249);
  v262 = v223 - v20;
  v21 = sub_1CF9E5A58();
  v261 = *(v21 - 8);
  v22 = v261[8];
  MEMORY[0x1EEE9AC00](v21);
  v260 = v223 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v265 = v223 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = v223 - v27;
  v255 = sub_1CF9E6118();
  v254 = *(v255 - 8);
  v29 = *(v254 + 64);
  MEMORY[0x1EEE9AC00](v255);
  v228 = v223 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = v223 - v32;
  v34 = &a8[qword_1EC4EBCD0];
  *v34 = 0;
  v34[1] = 0;
  v266 = v34;
  v35 = &a8[qword_1EC4EBCD8];
  *v35 = 0;
  v35[1] = 0;
  v267 = v35;
  a8[qword_1EDEBBE28] = 0;
  v233 = qword_1EDEBBE38;
  a8[qword_1EDEBBE38] = 1;
  a8[qword_1EDEBBE10] = 0;
  v36 = qword_1EDEBBDA8;
  v37 = sub_1CF9E5D98();
  v38 = *(*(v37 - 8) + 56);
  v276 = a9;

  v243 = v36;
  v38(&a8[v36], 1, 1, v37);
  v239 = qword_1EC4BFAF0;
  *&a8[qword_1EC4BFAF0] = MEMORY[0x1E69E7CC0];
  v241 = qword_1EDEAE678;
  *&a8[qword_1EDEAE678] = 0;
  v245 = qword_1EDEAE660;
  *&a8[qword_1EDEAE660] = 0;
  a8[qword_1EDEBBDE8] = 0;
  v39 = &a8[qword_1EDEBBDC8];
  *v39 = 0;
  v39[1] = 0;
  v242 = v39;
  a8[qword_1EDEBBDD0] = 0;
  v40 = &a8[qword_1EDEBBDC0];
  *v40 = 0;
  v40[1] = 0;
  v240 = v40;
  v41 = &a8[qword_1EDEBBDD8];
  *v41 = 0;
  v41[1] = 0;
  v244 = v41;
  v42 = &a8[qword_1EDEBBDF0];
  *v42 = 0;
  v42[1] = 0;
  v246 = v42;
  v43 = &a8[qword_1EDEBBE20];
  *v43 = 0;
  v43[1] = 0;
  v248 = v43;
  a8[qword_1EDEBBDE0] = 0;
  v44 = qword_1EC4BFAF8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFB20, &qword_1CFA052A8);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_1CFA04E00;
  *(v45 + 32) = 0;
  *(v45 + 40) = sub_1CF3BDB8C;
  *(v45 + 48) = 0;
  *(v45 + 56) = 0x10000;
  *(v45 + 64) = 0x10000;
  *(v45 + 72) = sub_1CF3BDC14;
  *(v45 + 80) = 0;
  *(v45 + 88) = 65537;
  *(v45 + 96) = 65537;
  *(v45 + 104) = sub_1CF3BDC9C;
  *(v45 + 112) = 0;
  *(v45 + 120) = 0x20000;
  *(v45 + 128) = 0x20000;
  *(v45 + 136) = sub_1CF3BDD24;
  *(v45 + 144) = 0;
  *(v45 + 152) = 131073;
  *(v45 + 160) = 131073;
  *(v45 + 168) = sub_1CF3BDDAC;
  *(v45 + 176) = 0;
  *(v45 + 184) = 131074;
  *(v45 + 192) = 131074;
  *(v45 + 200) = sub_1CF3BDE34;
  *(v45 + 208) = 0;
  *(v45 + 216) = 131075;
  *(v45 + 224) = 131075;
  *(v45 + 232) = sub_1CF3BDEBC;
  *(v45 + 240) = 0;
  *(v45 + 248) = 131076;
  *(v45 + 256) = 131076;
  *(v45 + 264) = sub_1CF3BDF44;
  *(v45 + 272) = 0;
  *(v45 + 280) = 131077;
  *(v45 + 288) = 131077;
  *(v45 + 296) = sub_1CF3BDFCC;
  *(v45 + 304) = 0;
  *(v45 + 312) = 131078;
  *(v45 + 320) = 131078;
  *(v45 + 328) = sub_1CF3BE054;
  *(v45 + 336) = 0;
  *(v45 + 344) = 131079;
  *(v45 + 352) = 131079;
  *(v45 + 360) = sub_1CF3BE0DC;
  *(v45 + 368) = 0;
  *(v45 + 376) = 131080;
  *(v45 + 384) = 131080;
  *(v45 + 392) = sub_1CF3BE164;
  *(v45 + 400) = 0;
  *(v45 + 408) = 131081;
  *(v45 + 416) = 131081;
  *(v45 + 424) = sub_1CF3BE1EC;
  *(v45 + 432) = 0;
  *(v45 + 440) = 196608;
  *(v45 + 448) = 196608;
  *(v45 + 456) = sub_1CF3BE274;
  *(v45 + 464) = 0;
  *(v45 + 472) = 196609;
  *(v45 + 480) = 196609;
  *(v45 + 488) = sub_1CF3BE2FC;
  *(v45 + 496) = 0;
  *(v45 + 504) = 196610;
  *(v45 + 512) = 196610;
  *(v45 + 520) = sub_1CF3BE384;
  *(v45 + 528) = 0;
  *(v45 + 536) = 196611;
  *(v45 + 544) = 196611;
  *(v45 + 552) = sub_1CF3BE40C;
  *(v45 + 560) = 0;
  *(v45 + 568) = 196612;
  *(v45 + 576) = 196612;
  *(v45 + 584) = sub_1CF3BE494;
  *(v45 + 592) = 0;
  *(v45 + 600) = 196613;
  *(v45 + 608) = 196613;
  *(v45 + 616) = sub_1CF3BE51C;
  *(v45 + 624) = 0;
  *(v45 + 632) = 196614;
  *(v45 + 640) = 196614;
  *(v45 + 648) = sub_1CF3BE5A4;
  *(v45 + 656) = 0;
  *(v45 + 664) = 196615;
  *(v45 + 672) = 196615;
  *(v45 + 680) = sub_1CF3BE62C;
  *(v45 + 688) = 0;
  *(v45 + 696) = 0x40000;
  *(v45 + 704) = 0x40000;
  *(v45 + 712) = sub_1CF3BE6B4;
  *(v45 + 720) = 0;
  *(v45 + 728) = 262145;
  *(v45 + 736) = 262145;
  *(v45 + 744) = sub_1CF3BE73C;
  *(v45 + 752) = 0;
  *(v45 + 760) = 327680;
  *(v45 + 768) = 327680;
  *(v45 + 776) = sub_1CF3BE7C4;
  *(v45 + 784) = 0;
  *(v45 + 792) = 327681;
  *(v45 + 800) = 327681;
  *(v45 + 808) = sub_1CF3BE84C;
  *(v45 + 816) = 0;
  *(v45 + 824) = 327682;
  *(v45 + 832) = 327682;
  *(v45 + 840) = sub_1CF3BE8D4;
  *(v45 + 848) = 0;
  *(v45 + 856) = 327683;
  *(v45 + 864) = 327683;
  *(v45 + 872) = sub_1CF3BE95C;
  *(v45 + 880) = 0;
  *(v45 + 888) = 327684;
  *(v45 + 896) = 327684;
  *(v45 + 904) = sub_1CF3BE9E4;
  *(v45 + 912) = 0;
  *(v45 + 920) = 327685;
  *(v45 + 928) = 327685;
  *(v45 + 936) = sub_1CF3BEA6C;
  *(v45 + 944) = 0;
  *(v45 + 952) = 327686;
  *(v45 + 960) = 327686;
  *(v45 + 968) = sub_1CF3BEAF4;
  *(v45 + 976) = 0;
  *(v45 + 984) = 327687;
  *(v45 + 992) = 327687;
  *(v45 + 1000) = sub_1CF3BEB7C;
  *(v45 + 1008) = 0;
  *(v45 + 1016) = 327688;
  *(v45 + 1024) = 327688;
  *(v45 + 1032) = sub_1CF3BEC04;
  *(v45 + 1040) = 0;
  *(v45 + 1048) = 327689;
  *(v45 + 1056) = 327689;
  *(v45 + 1064) = sub_1CF3BEC8C;
  *(v45 + 1072) = 0;
  *(v45 + 1080) = 327690;
  *(v45 + 1088) = 327690;
  *(v45 + 1096) = sub_1CF3BED14;
  *(v45 + 1104) = 0;
  *(v45 + 1112) = 327691;
  *(v45 + 1120) = 327691;
  *(v45 + 1128) = sub_1CF3BED9C;
  *(v45 + 1136) = 0;
  *(v45 + 1144) = 393216;
  *(v45 + 1152) = 393216;
  *(v45 + 1160) = sub_1CF3BEE24;
  *(v45 + 1168) = 0;
  *(v45 + 1176) = 393217;
  *(v45 + 1184) = 393217;
  *(v45 + 1192) = sub_1CF3BEEAC;
  *(v45 + 1200) = 0;
  *(v45 + 1208) = 393218;
  *(v45 + 1216) = 393218;
  *(v45 + 1224) = sub_1CF3BEF34;
  *(v45 + 1232) = 0;
  *(v45 + 1240) = 393219;
  *(v45 + 1248) = 393219;
  *(v45 + 1256) = sub_1CF3BEFBC;
  *(v45 + 1264) = 0;
  *(v45 + 1272) = 393220;
  *(v45 + 1280) = 393220;
  *(v45 + 1288) = sub_1CF3BF044;
  *(v45 + 1296) = 0;
  *(v45 + 1304) = 393221;
  *(v45 + 1312) = 393221;
  *(v45 + 1320) = sub_1CF3BF0CC;
  *(v45 + 1328) = 0;
  *(v45 + 1336) = 458752;
  *(v45 + 1344) = 458752;
  *(v45 + 1352) = sub_1CF3BF154;
  *(v45 + 1360) = 0;
  *(v45 + 1368) = 458753;
  *(v45 + 1376) = 458753;
  *(v45 + 1384) = sub_1CF3BF1DC;
  *(v45 + 1392) = 0;
  *(v45 + 1400) = 458754;
  *(v45 + 1408) = 458754;
  *(v45 + 1416) = sub_1CF3BF264;
  *(v45 + 1424) = 0;
  *(v45 + 1432) = 458755;
  *(v45 + 1440) = 458755;
  *(v45 + 1448) = sub_1CF3BF2EC;
  *(v45 + 1456) = 0;
  *(v45 + 1464) = 458756;
  *(v45 + 1472) = 458756;
  *(v45 + 1480) = sub_1CF3BF374;
  *(v45 + 1488) = 0;
  *(v45 + 1496) = 0x80000;
  *(v45 + 1504) = 0x80000;
  *(v45 + 1512) = sub_1CF3BF3FC;
  *(v45 + 1520) = 0;
  *(v45 + 1528) = 524289;
  *(v45 + 1536) = 524289;
  *(v45 + 1544) = sub_1CF3BF484;
  *(v45 + 1552) = 0;
  *(v45 + 1560) = 524290;
  *(v45 + 1568) = 524290;
  *(v45 + 1576) = sub_1CF3BF50C;
  *(v45 + 1584) = 0;
  *(v45 + 1592) = 524291;
  *(v45 + 1600) = 524291;
  *(v45 + 1608) = sub_1CF3BF594;
  *(v45 + 1616) = 0;
  *(v45 + 1624) = 590079;
  *(v45 + 1632) = 590079;
  *(v45 + 1640) = sub_1CF3BF61C;
  *(v45 + 1648) = 0;
  *(v45 + 1656) = 590080;
  *(v45 + 1664) = 590080;
  *(v45 + 1672) = sub_1CF3BF6A4;
  *(v45 + 1680) = 0;
  *(v45 + 1688) = 590081;
  *(v45 + 1696) = 590081;
  *(v45 + 1704) = sub_1CF3BF72C;
  *(v45 + 1712) = 0;
  *(v45 + 1720) = 590082;
  *(v45 + 1728) = 590082;
  *(v45 + 1736) = sub_1CF3BF7B4;
  *(v45 + 1744) = 0;
  *(v45 + 1752) = 590084;
  *(v45 + 1760) = 590084;
  *(v45 + 1768) = sub_1CF3BF83C;
  *(v45 + 1776) = 0;
  *(v45 + 1784) = 590085;
  *(v45 + 1792) = 590085;
  *(v45 + 1800) = sub_1CF3BF8C4;
  *(v45 + 1808) = 0;
  *(v45 + 1816) = 590086;
  *(v45 + 1824) = 590086;
  *(v45 + 1832) = sub_1CF3BF94C;
  *(v45 + 1840) = 0;
  *(v45 + 1848) = 590087;
  *(v45 + 1856) = 590087;
  *(v45 + 1864) = sub_1CF3BF9D4;
  *(v45 + 1872) = 0;
  *(v45 + 1880) = 590088;
  *(v45 + 1888) = 590088;
  *(v45 + 1896) = sub_1CF3BFA5C;
  *(v45 + 1904) = 0;
  *(v45 + 1912) = 655615;
  *(v45 + 1920) = 655615;
  *(v45 + 1928) = sub_1CF3BFAE4;
  *(v45 + 1936) = 0;
  *(v45 + 1944) = 655616;
  *(v45 + 1952) = 655616;
  *(v45 + 1960) = sub_1CF3BFB6C;
  *(v45 + 1968) = 0;
  *(v45 + 1976) = 655617;
  *(v45 + 1984) = 655617;
  *(v45 + 1992) = sub_1CF3BFBF4;
  *(v45 + 2000) = 0;
  *(v45 + 2008) = 720896;
  *(v45 + 2016) = 720896;
  *(v45 + 2024) = sub_1CF3BFC7C;
  *(v45 + 2032) = 0;
  *(v45 + 2040) = 720897;
  *(v45 + 2048) = 720897;
  *(v45 + 2056) = sub_1CF3BFD04;
  *(v45 + 2064) = 0;
  *(v45 + 2072) = 720898;
  *(v45 + 2080) = 720898;
  *(v45 + 2088) = sub_1CF3BFD8C;
  *(v45 + 2096) = 0;
  *(v45 + 2104) = 720899;
  *(v45 + 2112) = 720899;
  *(v45 + 2120) = sub_1CF3BFE14;
  *(v45 + 2128) = 0;
  *(v45 + 2136) = 720900;
  *(v45 + 2144) = 720900;
  *(v45 + 2152) = sub_1CF3BFE9C;
  *(v45 + 2160) = 0;
  *(v45 + 2168) = 720901;
  *(v45 + 2176) = 720901;
  *(v45 + 2184) = sub_1CF3BFF24;
  *(v45 + 2192) = 0;
  *(v45 + 2200) = 720902;
  *(v45 + 2208) = 720902;
  *(v45 + 2216) = sub_1CF3BFFAC;
  *(v45 + 2224) = 0;
  *(v45 + 2232) = 720903;
  v46 = sub_1CF4E0CC0(v45);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFB28, &unk_1CFA052B0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v247 = v44;
  *&a8[v44] = v46;
  v47 = qword_1EDEBBE18;
  v268 = objc_opt_self();
  v48 = [v268 defaultStore];
  v49 = [v48 sqlDatabaseVacuumBatchSize];

  v50 = v21;
  *&a8[v47] = v49;
  a8[qword_1EDEBBE08] = 0;
  a8[qword_1EDEBBE00] = 0;
  v269 = a8;
  a8[qword_1EDEBBDF8] = 0;
  v51 = *(v274 + 136);
  v53 = *(v51 + 16);
  v52 = *(v51 + 24);

  v54 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v55 = v261;
  v56 = v28;
  v272 = v261[2];
  v273 = (v261 + 2);
  v272(v28, v277, v21);

  v271 = v33;
  v57 = sub_1CF9E6108();
  v58 = sub_1CF9E72C8();

  v59 = os_log_type_enabled(v57, v58);
  v275 = v21;
  v270 = v52;
  v258 = v53;
  if (v59)
  {
    v60 = swift_slowAlloc();
    v259 = swift_slowAlloc();
    aBlock = v259;
    *v60 = 136446466;
    *(v60 + 4) = sub_1CEFD0DF0(v53, v52, &aBlock);
    *(v60 + 12) = 2082;
    v61 = v56;
    v62 = sub_1CF9E5928();
    v63 = [v62 fp_shortDescription];

    v64 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v66 = v65;

    v67 = v275;
    v68 = v55[1];
    v69 = (v55 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v68(v61, v275);
    v70 = sub_1CEFD0DF0(v64, v66, &aBlock);

    *(v60 + 14) = v70;
    _os_log_impl(&dword_1CEFC7000, v57, v58, "opening database %{public}s at %{public}s", v60, 0x16u);
    v71 = v259;
    swift_arrayDestroy();
    v72 = v68;
    MEMORY[0x1D386CDC0](v71, -1, -1);
    MEMORY[0x1D386CDC0](v60, -1, -1);

    v227 = *(v254 + 8);
    v227(v271, v255);
  }

  else
  {

    v72 = v55[1];
    v69 = (v55 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v72(v56, v50);
    v227 = *(v254 + 8);
    v227(v271, v255);
    v67 = v50;
  }

  v73 = qword_1EC4EBCE0;
  v74 = v269;
  v75 = v272;
  v272(&v269[qword_1EC4EBCE0], v277, v67);
  v271 = v73;
  v76 = &v74[v73];
  v77 = v265;
  v75(v265, v76, v67);
  v78 = sub_1CF9E5888();
  v80 = v79;
  v72(v77, v67);
  v81 = v72;
  if (v78 == 0x656D3A3A656C6966 && v80 == 0xED00003A79726F6DLL)
  {

    v82 = v263;
LABEL_8:
    v84 = v269;
    v85 = &v269[qword_1EC4EBCE8];
    *v85 = 0;
    *(v85 + 1) = 0;
    v86 = 1;
    goto LABEL_10;
  }

  v83 = sub_1CF9E8048();

  v82 = v263;
  if (v83)
  {
    goto LABEL_8;
  }

  v84 = v269;
  v87 = v260;
  v272(v260, &v269[v271], v67);
  v88 = sub_1CF9E5A18();
  v90 = v89;
  v81(v87, v67);
  aBlock = 1818326829;
  aBlock_8 = 0xE400000000000000;
  v278 = v88;
  v279 = v90;
  v278 = sub_1CF9E6B48();
  v279 = v91;
  sub_1CF9E6A28();
  v86 = 0;
  v92 = v279;
  v93 = &v84[qword_1EC4EBCE8];
  *v93 = v278;
  v93[1] = v92;
LABEL_10:
  v94 = &v84[qword_1EDEBBDA0];
  v95 = v276;
  v238 = &v84[qword_1EDEBBDA0];
  *v94 = sub_1CF47FAB8;
  v94[1] = v95;
  v84[qword_1EDEAE650] = (v82 & 4) != 0;
  if ((v82 & 0x20000) != 0)
  {
    v96 = 3;
  }

  else
  {
    v96 = 1;
  }

  v97 = BYTE2(v82) & 2;
  if ((v82 & 0x200) != 0)
  {
    v97 = v96;
  }

  v84[qword_1EDEAE668] = v97;

  v98 = [v268 defaultStore];
  v99 = [v98 sqlDatabaseBusyHandlerRetries];

  *&v84[qword_1EDEBBDB8] = v99;
  v100 = v266;
  v101 = *v266;
  v102 = v266[1];
  *v266 = 0;
  v100[1] = 0;
  sub_1CF1FD6F8(v101, v102);
  v103 = v267;
  v104 = *v267;
  v105 = v267[1];
  *v267 = 0;
  v103[1] = 0;
  sub_1CF1FD6F8(v104, v105);
  v106 = type metadata accessor for PQLConnectionWithStatistics();
  v107 = [objc_allocWithZone(v106) init];
  v108 = 0;
  v109 = 0;
  v265 = qword_1EDEBBDB0;
  *&v84[qword_1EDEBBDB0] = v107;
  v229 = v82 | v86;
  if (((v82 | v86) & 1) == 0)
  {
    v109 = [objc_allocWithZone(v106) init];
    if ((v82 & 0x200000) != 0)
    {
      v108 = [objc_allocWithZone(v106) init];
    }

    else
    {
      v108 = 0;
    }
  }

  v259 = v108;
  v261 = v109;
  v252 = v69;
  v253 = v81;
  v110 = v258;
  v111 = v82;
  v112 = v270;
  aBlock = v258;
  aBlock_8 = v270;

  MEMORY[0x1D3868CC0](0x296F722820, 0xE500000000000000);
  v260 = aBlock_8;
  v232 = aBlock;
  aBlock = v110;
  aBlock_8 = v112;

  MEMORY[0x1D3868CC0](0x747361466F722820, 0xE900000000000029);
  v257 = aBlock_8;
  v231 = aBlock;
  v113 = [v268 defaultStore];
  v114 = [v113 sqlDatabaseStatementCacheMaxCount];

  v115 = v262;
  v272(v262, &v84[v271], v275);
  v116 = v249;
  v117 = (v115 + *(v249 + 52));
  v118 = v251;
  *v117 = v250;
  v117[1] = v118;
  *(v115 + v116[14]) = v274;
  *(v115 + v116[15]) = v264;
  *(v115 + v116[16]) = v114;
  *(v115 + v116[17]) = (v111 & 0x200000000) != 0;
  *(v115 + v116[18]) = v86;
  *(v115 + v116[19]) = v111;

  if (errorInjectionThrowOnDBCreationEnabled())
  {

    LODWORD(aBlock) = 16;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF042F54(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
    v119 = v234;
    v120 = v236;
    sub_1CF9E57D8();
    v121 = sub_1CF9E53A8();
    (*(v235 + 8))(v119, v120);
    swift_willThrow();
LABEL_26:
    v125 = v256;
    v126 = v253;
    v127 = v261;
LABEL_27:
    sub_1CF24CD3C();
    v128 = swift_allocError();
    *v129 = v121;
    *(v129 + 48) = 1;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v131 = v121;
    v132 = v121;
    if (Strong)
    {
      sub_1CF833CE4(0, v128);
    }

    swift_willThrow();
    v133 = v128;

    sub_1CEFCCC44(v125, &qword_1EC4BFB10, &unk_1CFA12AD0);
    v134 = v275;
    v135 = v252;
    v126(v277, v275);
    sub_1CEFCCC44(v115, &qword_1EC4BFB18, &qword_1CFA052A0);

    sub_1CF1FD6F8(*v266, v266[1]);
    sub_1CF1FD6F8(*v267, v267[1]);
    sub_1CEFCCC44(&v84[v243], &unk_1EC4BEDE0, qword_1CF9FA390);
    v126(&v84[v271], v134);
    v136 = *&v84[qword_1EC4EBCE8 + 8];

    v137 = *(v238 + 1);

    v138 = *&v84[v239];

    v139 = *&v84[v241];
    swift_unknownObjectRelease();

    v140 = v242[1];
    sub_1CEFF7124(*v242);
    v141 = v240[1];
    sub_1CEFF7124(*v240);
    v142 = v244[1];
    sub_1CEFF7124(*v244);
    v143 = v246[1];
    sub_1CEFF7124(*v246);
    v144 = v248[1];
    sub_1CEFF7124(*v248);
    v145 = *&v84[v247];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB40, &unk_1CFA052C0);
    v146 = *(*v84 + 48);
    v147 = *(*v84 + 52);
    swift_deallocPartialClassInstance();
    return v135;
  }

  if (v111)
  {
    v122 = 1;
  }

  else
  {
    v122 = 6;
  }

  v123 = *&v265[v84];
  v124 = v237;
  sub_1CF3B0F28(v123, v110, v112, v122, v115);
  v121 = v124;
  if (v124)
  {

    goto LABEL_26;
  }

  v84[v233] = 0;
  v127 = v261;
  v149 = v274;
  if (v86)
  {
    [*&v265[v84] setShouldUseWALJournalMode_];
  }

  if ((v263 & 1) == 0 && ![*&v265[v84] setupPragmas])
  {

    v121 = [*&v265[v84] lastError];
    v125 = v256;
    if (!v121)
    {
      type metadata accessor for PQLSqliteError(0);
      v278 = 11;
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF042F54(&qword_1EDEA38C0, type metadata accessor for PQLSqliteError);
      sub_1CF9E57D8();
      v121 = aBlock;
    }

    swift_willThrow();
    v126 = v253;
    goto LABEL_27;
  }

  v150 = v256;
  if (v127)
  {
    if ((v263 & 0x200000) != 0)
    {
      v151 = 1;
    }

    else
    {
      v151 = 65537;
    }

    v152 = v127;
    sub_1CF3B0F28(v152, v232, v260, v151, v115);
  }

  if (v259)
  {
    v153 = v259;
    sub_1CF3B0F28(v153, v231, v257, 1, v115);
  }

  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB50, &unk_1CFA13390);
  v155 = *(v154 + 48);
  v156 = *(v154 + 52);
  swift_allocObject();

  v273 = sub_1CF3E407C(0, v149, &qword_1EC4C0650, &qword_1CFA05A60, sub_1CF1CBB20, sub_1CF208628);
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5060, &qword_1CFA052D0);
  v158 = *(v157 + 48);
  v159 = *(v157 + 52);
  swift_allocObject();
  v160 = v264;

  v161 = sub_1CF3E407C(1, v160, &qword_1EC4C0648, &qword_1CFA05A58, sub_1CF1CC7A8, sub_1CF2080AC);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB60, &qword_1CFA052D8);
  v162 = swift_allocObject();
  v163 = swift_weakInit();
  (*(*v149 + 96))(&aBlock, v163);

  (*(*v160 + 96))(&v278, v164);

  v165 = aBlock;
  v166 = v278;
  v167 = aBlock_8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4830, &unk_1CFA052E0);
  swift_allocObject();
  v168 = sub_1CF38B590(v165, v167, v166);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB70, &unk_1CFA0A280);
  swift_allocObject();
  v169 = v270;

  v170 = v263;
  v171 = sub_1CF3ED780(v258, v169, v263);
  type metadata accessor for SQLHistoryTable();
  v172 = swift_allocObject();
  strcpy((v172 + 16), "D2DRestoreV2");
  *(v172 + 29) = 0;
  *(v172 + 30) = -5120;
  *(v172 + 32) = MEMORY[0x1E69E7CC0];
  *&v84[qword_1EDEBBE30] = v172;
  v173 = v230;
  sub_1CEFCCBDC(v150, v230, &qword_1EC4BFB10, &unk_1CFA12AD0);

  v174 = v273;

  v175 = sub_1CF4794AC(v168, v171, v174, v161, v162, v173, v170, v84);
  v272 = v168;
  v135 = v175;

  v274 = v161;

  v271 = v171;
  swift_weakAssign();
  v269 = v162;
  swift_weakAssign();
  v176 = *(v135 + 8);
  v177 = *&v135[qword_1EDEBBDB0];
  v178 = v176;
  sub_1CF47A748(v177, v178, v262, v170 & 1);

  if (v229)
  {
    v179 = &unk_1EC4EB000;
    v180 = &v135[qword_1EC4EBCD0];
    v181 = *&v135[qword_1EC4EBCD0];
    v182 = *&v135[qword_1EC4EBCD0 + 8];
    *v180 = 0;
    *(v180 + 1) = 0;
LABEL_54:
    sub_1CF1FD6F8(v181, v182);
    v202 = &v135[qword_1EC4EBCD8];
    v193 = *&v135[qword_1EC4EBCD8];
    v194 = *&v135[qword_1EC4EBCD8 + 8];
    *v202 = 0;
    *(v202 + 1) = 0;
    goto LABEL_55;
  }

  v179 = &unk_1EC4EB000;
  if ((v263 & 0x200000) == 0)
  {
    if (!v261)
    {
      goto LABEL_56;
    }

LABEL_53:
    v195 = *(v135 + 8);
    v196 = &v135[qword_1EC4EBCD0];
    v197 = *&v135[qword_1EC4EBCD0];
    v198 = *&v135[qword_1EC4EBCD0 + 8];
    v199 = v261;
    *v196 = v261;
    *(v196 + 1) = v195;
    v200 = v199;
    v201 = v195;
    v181 = v197;
    v182 = v198;
    goto LABEL_54;
  }

  if (v261)
  {
    if (v259)
    {
      v268 = sub_1CEFD57E0(0, &unk_1EDEAB5C0, 0x1E69E9638);
      v183 = v270;
      aBlock = v258;
      aBlock_8 = v270;
      v184 = v261;

      v267 = v184;
      v185 = v259;
      MEMORY[0x1D3868CC0](0x616261746164203ALL, 0xED00004F52206573);
      v249 = aBlock_8;
      v250 = aBlock;
      aBlock = MEMORY[0x1E69E7CC0];
      v265 = sub_1CF042F54(&unk_1EDEAB5D0, MEMORY[0x1E69E8110]);
      v264 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEE60, &qword_1CFA00870);
      v266 = sub_1CEFCCCEC(&unk_1EDEAB640, &qword_1EC4BEE60, &qword_1CFA00870);
      sub_1CF9E77B8();
      LODWORD(v263) = *MEMORY[0x1E69E8098];
      v251 = *(v225 + 104);
      v186 = v224;
      v251(v224);
      v187 = sub_1CF9E7498();
      v188 = &v135[qword_1EC4EBCD0];
      v190 = *&v135[qword_1EC4EBCD0];
      v189 = *&v135[qword_1EC4EBCD0 + 8];
      *v188 = v261;
      *(v188 + 1) = v187;
      sub_1CF1FD6F8(v190, v189);
      aBlock = 0;
      aBlock_8 = 0xE000000000000000;
      sub_1CF9E7948();

      aBlock = v258;
      aBlock_8 = v183;

      MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA451A0);
      v258 = aBlock;
      aBlock = MEMORY[0x1E69E7CC0];
      sub_1CF9E77B8();
      (v251)(v186, v263, v226);
      v179 = &unk_1EC4EB000;
      v191 = sub_1CF9E7498();

      v192 = &v135[qword_1EC4EBCD8];
      v193 = *&v135[qword_1EC4EBCD8];
      v194 = *&v135[qword_1EC4EBCD8 + 8];
      *v192 = v259;
      *(v192 + 1) = v191;
LABEL_55:
      sub_1CF1FD6F8(v193, v194);
      goto LABEL_56;
    }

    goto LABEL_53;
  }

LABEL_56:
  v203 = &v135[v179[410]];
  v204 = *v203;
  if (*v203)
  {
    v205 = v150;
    v206 = *(v203 + 1);
    v207 = swift_allocObject();
    swift_weakInit();
    v284 = sub_1CF485A94;
    v285 = v207;
    aBlock = MEMORY[0x1E69E9820];
    aBlock_8 = 1107296256;
    v282 = sub_1CF00A468;
    v283 = &block_descriptor_12;
    v208 = _Block_copy(&aBlock);
    v209 = v204;
    v210 = v206;

    [v209 setAutoRollbackHandlerForSwift_];
    _Block_release(v208);
    sub_1CF3B107C(v209, v210);

    v150 = v205;
  }

  v211 = *&v135[qword_1EC4EBCD8];
  if (v211)
  {
    v212 = *&v135[qword_1EC4EBCD8 + 8];
    v213 = swift_allocObject();
    swift_weakInit();
    v284 = sub_1CF47FAD4;
    v285 = v213;
    aBlock = MEMORY[0x1E69E9820];
    aBlock_8 = 1107296256;
    v282 = sub_1CF00A468;
    v283 = &block_descriptor_7;
    v214 = _Block_copy(&aBlock);
    v215 = v211;
    v216 = v212;

    [v215 setAutoRollbackHandlerForSwift_];
    _Block_release(v214);
    sub_1CF3B107C(v215, v216);

    v150 = v256;
  }

  v217 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v218 = sub_1CF9E6108();
  v219 = sub_1CF9E72C8();
  v220 = os_log_type_enabled(v218, v219);
  v221 = v255;
  if (v220)
  {
    v222 = swift_slowAlloc();
    *v222 = 0;
    _os_log_impl(&dword_1CEFC7000, v218, v219, "database is ready", v222, 2u);
    MEMORY[0x1D386CDC0](v222, -1, -1);
  }

  sub_1CEFCCC44(v150, &qword_1EC4BFB10, &unk_1CFA12AD0);
  v253(v277, v275);
  v227(v228, v221);
  sub_1CEFCCC44(v262, &qword_1EC4BFB18, &qword_1CFA052A0);
  return v135;
}

void sub_1CF3BBC24(void *a1)
{
  v2 = sub_1CF9E6118();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v7 = a1;
    v8 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v9 = a1;
    v10 = sub_1CF9E6108();
    v11 = sub_1CF9E72B8();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      swift_getErrorValue();
      v14 = Error.prettyDescription.getter(v15[2]);
      *(v12 + 4) = v14;
      *v13 = v14;
      _os_log_impl(&dword_1CEFC7000, v10, v11, "Fatal I/O or memory error in Prequelite: %@", v12, 0xCu);
      sub_1CEFCCC44(v13, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v13, -1, -1);
      MEMORY[0x1D386CDC0](v12, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    sub_1CF7AC5B0(a1, 1, "autoRollbackHandler(error:)", 27, 2);
  }
}

uint64_t sub_1CF3BBE38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v82 = a3;
  v87 = *v3;
  v78 = type metadata accessor for SyncState();
  v7 = *(*(v78 - 8) + 64);
  MEMORY[0x1EEE9AC00](v78);
  v79 = v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1CF9E5CF8();
  v89 = *(v9 - 8);
  v90 = v9;
  v10 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v88 = v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1CF9E6118();
  v81 = *(v12 - 8);
  v13 = *(v81 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v72 - v17;
  v19 = v3[6];
  v20 = v4[7];
  ObjectType = swift_getObjectType();
  v80 = a1;
  v22 = v92;
  result = sub_1CF95F964(a1, ObjectType, a2, v20, v82);
  if (!v22)
  {
    v75 = v16;
    v92 = v12;
    v86 = ObjectType;
    v72[1] = v19;
    v73 = v20;
    v91 = 0;
    v84 = v4;
    v74 = a2;
    v24 = result;
    v25 = fpfs_supports_pkg_dataless_escape_prevention();
    v26 = *(v87 + 2632);
    v27 = *(v87 + 2648);
    if (v25)
    {
      v28 = 7;
    }

    else
    {
      v28 = 5;
    }

    v77 = v28;
    v93[0] = v26;
    v93[1] = v27;
    type metadata accessor for ConcreteJobResult();
    v29 = sub_1CF056580();
    if (fpfs_supports_pkg_dataless_escape_prevention())
    {
      v31 = 7;
    }

    else
    {
      v31 = 5;
    }

    v76 = v24;
    v32 = v31 & ~v24;
    v85 = v29;
    if (v32)
    {
      v87 = v81 + 8;
      *&v30 = 136315138;
      v83 = v30;
      v33 = v86;
      v35 = v89;
      v34 = v90;
      v36 = v88;
      while (1)
      {
        v37 = v32 & -v32;
        v38 = fpfs_current_or_default_log();
        sub_1CF9E6128();
        v39 = sub_1CF9E6108();
        v40 = sub_1CF9E7298();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          *&v93[0] = v42;
          *v41 = v83;
          v43 = sub_1CF7F48D8(v32 & -v32);
          v45 = sub_1CEFD0DF0(v43, v44, v93);
          v34 = v90;

          *(v41 + 4) = v45;
          v33 = v86;
          _os_log_impl(&dword_1CEFC7000, v39, v40, "feature flag has been enabled: %s", v41, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v42);
          v46 = v42;
          v36 = v88;
          MEMORY[0x1D386CDC0](v46, -1, -1);
          v47 = v41;
          v35 = v89;
          MEMORY[0x1D386CDC0](v47, -1, -1);
        }

        (*v87)(v18, v92);
        v48 = v91;
        sub_1CF3BC540(v32 & -v32, v85);
        if (v48)
        {
        }

        v91 = 0;
        v49 = v32 == v37;
        v32 ^= v37;
        if (v49)
        {
          goto LABEL_17;
        }
      }
    }

    v33 = v86;
    v35 = v89;
    v34 = v90;
    v36 = v88;
LABEL_17:
    v50 = v76 & ~v77;
    if (v50)
    {
      v87 = v81 + 8;
      *&v30 = 136315138;
      v83 = v30;
      v51 = v75;
      do
      {
        v52 = v50 & -v50;
        v53 = fpfs_current_or_default_log();
        sub_1CF9E6128();
        v54 = sub_1CF9E6108();
        v55 = sub_1CF9E72A8();
        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          v57 = swift_slowAlloc();
          *&v93[0] = v57;
          *v56 = v83;
          v58 = sub_1CF7F48D8(v50 & -v50);
          v60 = sub_1CEFD0DF0(v58, v59, v93);
          v36 = v88;

          *(v56 + 4) = v60;
          v33 = v86;
          _os_log_impl(&dword_1CEFC7000, v54, v55, "Unsupported %s state, was the feature enabled and turned off?", v56, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v57);
          v61 = v57;
          v35 = v89;
          MEMORY[0x1D386CDC0](v61, -1, -1);
          v62 = v56;
          v34 = v90;
          MEMORY[0x1D386CDC0](v62, -1, -1);
        }

        (*v87)(v51, v92);
        v49 = v50 == v52;
        v50 ^= v52;
      }

      while (!v49);
    }

    if (v77 == v76)
    {
    }

    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v64 = v63;
    result = (*(v35 + 8))(v36, v34);
    v65 = v64 * 1000000000.0;
    if (COERCE__INT64(fabs(v64 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else
    {
      v66 = v82;
      v67 = v74;
      v69 = v79;
      v68 = v80;
      v70 = v73;
      if (v65 > -9.22337204e18)
      {
        if (v65 < 9.22337204e18)
        {
          v71 = v91;
          sub_1CF521850(v85, v65, v80, v74, v82);
          if (!v71)
          {
            *v69 = v77;
            swift_storeEnumTagMultiPayload();
            (*(v70 + 8))(v69, v68, v67, v66, v33, v70);
            sub_1CEFD5278(v69, type metadata accessor for SyncState);
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_32;
  }

  return result;
}

uint64_t sub_1CF3BC540(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v4 = *v2;
  v5 = *(*v2 + 2648);
  v6 = *(*v2 + 2632);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v44 = *(AssociatedTypeWitness - 8);
  v45 = AssociatedTypeWitness;
  v8 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v46 = &v42 - v9;
  v48 = sub_1CF9E5CF8();
  v10 = *(v48 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v4 + 2656);
  v15 = *(v4 + 2640);
  v16 = swift_getAssociatedTypeWitness();
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v42 - v20;
  if (a1 == 4)
  {
    v45 = v19;
    v46 = v18;
    *&v29 = v6;
    *(&v29 + 1) = v15;
    *&v30 = v5;
    *(&v30 + 1) = v14;
    v49 = v29;
    v50 = v30;
    a1 = type metadata accessor for JobResult();
    *&v49 = v15;
    *(&v49 + 1) = v6;
    *&v50 = v14;
    *(&v50 + 1) = v5;
    type metadata accessor for Maintenance.MarkDirectoriesAsLocked();
    v31 = v2[5];
    sub_1CF046AB4();
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v33 = v32;
    (*(v10 + 8))(v13, v48);
    v34 = v33 * 1000000000.0;
    if (COERCE__INT64(fabs(v33 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    if (v34 <= -9.22337204e18)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    if (v34 >= 9.22337204e18)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

LABEL_15:
    v40 = sub_1CF559420(v21, 0, v34, 0);
    (*(v45 + 8))(v21, v46);
    sub_1CF8039C4(v47, v40);
  }

  if (a1 != 2)
  {
    v45 = v19;
    v46 = v18;
    if (a1 != 1)
    {
      goto LABEL_26;
    }

    *&v35 = v6;
    *(&v35 + 1) = v15;
    *&v36 = v5;
    *(&v36 + 1) = v14;
    v49 = v35;
    v50 = v36;
    a1 = type metadata accessor for JobResult();
    *&v49 = v15;
    *(&v49 + 1) = v6;
    *&v50 = v14;
    *(&v50 + 1) = v5;
    type metadata accessor for Maintenance.MarkPackagesAsEvictable();
    v37 = v2[5];
    sub_1CF046AB4();
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v39 = v38;
    (*(v10 + 8))(v13, v48);
    v34 = v39 * 1000000000.0;
    if (COERCE__INT64(fabs(v39 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_19;
    }

    if (v34 <= -9.22337204e18)
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    if (v34 >= 9.22337204e18)
    {
LABEL_25:
      __break(1u);
LABEL_26:
      sub_1CF511CA8("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/SQLDatabase.swift", 130, 2, 644, a1);
    }

    goto LABEL_15;
  }

  *&v22 = v6;
  *(&v22 + 1) = v15;
  *&v23 = v5;
  *(&v23 + 1) = v14;
  v42 = v23;
  v43 = v22;
  v49 = v22;
  v50 = v23;
  type metadata accessor for JobResult();
  v49 = v43;
  v50 = v42;
  type metadata accessor for Maintenance.MarkPackagesAsSyncRoot();
  v24 = v2[4];
  a1 = v46;
  sub_1CF046AB4();
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v26 = v25;
  (*(v10 + 8))(v13, v48);
  v27 = v26 * 1000000000.0;
  if (COERCE__INT64(fabs(v26 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v27 <= -9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v27 >= 9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v28 = sub_1CF559420(a1, 0, v27, 0);
  (*(v44 + 8))(a1, v45);
  sub_1CF803A0C(v47, v28);
}

uint64_t sub_1CF3BCAC8(uint64_t a1, uint64_t a2)
{
  sub_1CF5994EC(a1, a2);

  return sub_1CF3BCAF0();
}

uint64_t sub_1CF3BCAF0()
{
  result = sub_1CF033B88();
  if ((result & 0x200000) != 0)
  {
    *(v0 + qword_1EC4EBD88) = 1;
  }

  else
  {
    v2 = *(v0 + qword_1EDEBBDB0);

    return [v2 makeNextFlushBarrierFSync];
  }

  return result;
}

uint64_t sub_1CF3BCB4C()
{
  sub_1CF9E5A18();
  if (!*(v0 + qword_1EC4EBCE8 + 8))
  {
LABEL_5:
    sub_1CF9E6978();
    v2 = openat_s();

    if ((v2 & 0x80000000) == 0)
    {

      if ((sub_1CF9E6198() & 0x80000000) == 0)
      {
        return close(v2);
      }

      v7 = MEMORY[0x1D38683F0]();
      v8 = 39;
      goto LABEL_11;
    }

LABEL_8:
    v5 = MEMORY[0x1D38683F0](v3);
    memset(v9, 0, sizeof(v9));
    v10 = 19;
    sub_1CF19BBE4(v5, v9);
    sub_1CF1969CC(v9);
    swift_willThrow();
  }

  v1 = *(v0 + qword_1EC4EBCE8);
  sub_1CF9E6978();
  v2 = openat_s();

  if (v2 < 0)
  {
    goto LABEL_8;
  }

  if ((fsync(v2) & 0x80000000) == 0)
  {
    close(v2);
    goto LABEL_5;
  }

  v7 = MEMORY[0x1D38683F0](v6);
  v8 = 38;
LABEL_11:
  *v9 = v8;
  memset(&v9[8], 0, 32);
  v10 = 19;
  sub_1CF19BBE4(v7, v9);
  sub_1CF1969CC(v9);
  swift_willThrow();
  return close(v2);
}

uint64_t sub_1CF3BCCF0()
{
  v1 = objc_sync_enter(v0);
  if (v1)
  {
    MEMORY[0x1EEE9AC00](v1);
    v7 = v0;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5288, v6, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  swift_beginAccess();
  v2 = *(*(v0 + 192) + 16);
  result = objc_sync_exit(v0);
  if (result)
  {
    MEMORY[0x1EEE9AC00](result);
    v7 = v0;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5290, v6, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  if (!v2)
  {
    if (*(v0 + 200))
    {
      sub_1CF3E3F48(1, 2, 2);
      v4 = *(v0 + 200);
    }

    *(v0 + 200) = 0;
    v5 = swift_unknownObjectRelease();
    return (*(**(v0 + 24) + 496))(v5);
  }

  return result;
}

uint64_t sub_1CF3BCE50(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE710, &qword_1CF9FE5A8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - v5;
  v7 = a1[3];
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, v7);
  swift_storeEnumTagMultiPayload();
  sub_1CF3CFB14(v6, v9, v7, v8);
  result = sub_1CEFCCC44(v6, &qword_1EC4BE710, &qword_1CF9FE5A8);
  if (!v1)
  {
    v11 = a1[3];
    v12 = a1[4];
    v13 = __swift_project_boxed_opaque_existential_1(a1, v11);
    return sub_1CF5A62B4(v13, v11, v12);
  }

  return result;
}

uint64_t sub_1CF3BCF74(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = (a2 + 40);
    while (1)
    {
      v7 = *(v5 - 1);
      v6 = *v5;

      v8 = objc_autoreleasePoolPush();
      sub_1CF1A91AC(a1, v16);
      v7(v16);
      if (v2)
      {
        break;
      }

      sub_1CEFCCC44(v16, &unk_1EC4C1B30, &qword_1CFA05300);
      v9 = a1[3];
      v10 = a1[4];
      v11 = __swift_project_boxed_opaque_existential_1(a1, v9);
      sub_1CF5A62B4(v11, v9, v10);
      objc_autoreleasePoolPop(v8);

      v5 += 2;
      if (!--v4)
      {
        goto LABEL_5;
      }
    }

    sub_1CEFCCC44(v16, &unk_1EC4C1B30, &qword_1CFA05300);
    objc_autoreleasePoolPop(v8);
  }

  else
  {
LABEL_5:
    v12 = a1[3];
    v13 = a1[4];
    v14 = __swift_project_boxed_opaque_existential_1(a1, v12);
    return sub_1CF5A62B4(v14, v12, v13);
  }
}

uint64_t sub_1CF3BD0C4()
{
  v0 = sub_1CF9E6068();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v41 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v40 = &v39 - v9;
  v39 = type metadata accessor for Signpost(0);
  v10 = *(*(v39 - 8) + 64);
  MEMORY[0x1EEE9AC00](v39);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1CF9E6118();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v19 = sub_1CF9E6108();
  v20 = sub_1CF9E7298();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_1CEFC7000, v19, v20, "scheduler is becoming idle, clearing the statement cache", v21, 2u);
    MEMORY[0x1D386CDC0](v21, -1, -1);
  }

  (*(v14 + 8))(v17, v13);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v22 = qword_1EDEBBE40;
  v23 = v40;
  (*(v1 + 56))(v40, 1, 1, v0);
  sub_1CEFCCBDC(v23, v7, &unk_1EC4BED20, &unk_1CFA00700);
  v24 = *(v1 + 48);
  v25 = v24(v7, 1, v0);
  v26 = v41;
  if (v25 == 1)
  {
    v27 = v22;
    sub_1CF9E6048();
    if (v24(v7, 1, v0) != 1)
    {
      sub_1CEFCCC44(v7, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v1 + 32))(v41, v7, v0);
  }

  (*(v1 + 16))(v12, v26, v0);
  v28 = v39;
  *&v12[*(v39 + 20)] = v22;
  v29 = &v12[*(v28 + 24)];
  *v29 = "SQLDB: clearing statement cache";
  *(v29 + 1) = 31;
  v29[16] = 2;
  v30 = v22;
  sub_1CF9E7468();
  sub_1CF9E6038();
  (*(v1 + 8))(v26, v0);
  sub_1CEFCCC44(v23, &unk_1EC4BED20, &unk_1CFA00700);
  v31 = v42;
  [*(v42 + qword_1EDEBBDB0) _clearStatementCache];
  v32 = *(v31 + qword_1EC4EBCD0);
  if (v32)
  {
    v33 = *(v31 + qword_1EC4EBCD0 + 8);
    sub_1CF1FD6B8(*(v31 + qword_1EC4EBCD0), v33);
    v34 = v32;
    sub_1CF1FD6F8(v32, v33);
    [v34 _clearStatementCache];
  }

  v35 = *(v31 + qword_1EC4EBCD8);
  if (v35)
  {
    v36 = *(v31 + qword_1EC4EBCD8 + 8);
    sub_1CF1FD6B8(*(v31 + qword_1EC4EBCD8), v36);
    v37 = v35;
    sub_1CF1FD6F8(v35, v36);
    [v37 _clearStatementCache];
  }

  sub_1CF9E7458();
  sub_1CF9E6038();
  return sub_1CEFD5278(v12, type metadata accessor for Signpost);
}

uint64_t sub_1CF3BD600(void (**a1)(char *, uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_1CF599648(a1, a2, a3);
  if (!v4)
  {
    v7 = qword_1EDEBBDE8;
    if (*(v3 + qword_1EDEBBDE8) == 1)
    {
      v8 = *(v3 + qword_1EDEBBDC8);
      if (v8)
      {
        v9 = *(v3 + qword_1EDEBBDC8 + 8);

        v8(v10);
        result = sub_1CEFF7124(v8);
      }

      *(v5 + v7) = 0;
    }

    v11 = qword_1EDEBBDD0;
    if (*(v5 + qword_1EDEBBDD0) == 1)
    {
      v12 = *(v5 + qword_1EDEBBDC0);
      if (v12)
      {
        v13 = *(v5 + qword_1EDEBBDC0 + 8);

        v12(v14);
        result = sub_1CEFF7124(v12);
      }

      *(v5 + v11) = 0;
    }
  }

  return result;
}

uint64_t sub_1CF3BD6E0()
{
  v1 = v0;
  v23 = MEMORY[0x1E69E7CC0];
  v2 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB70, &unk_1CFA0A280);
  swift_dynamicCastClassUnconditional();

  v3 = sub_1CF39D060();

  sub_1CF1E8DEC(v3);
  v4 = v0[4];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB50, &unk_1CFA13390);
  v6 = swift_dynamicCastClassUnconditional();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C05D0, &unk_1CF9FE620);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CF9FA450;
  *(inited + 56) = v5;
  *(inited + 64) = &off_1F4C020A8;
  *(inited + 32) = v6;

  sub_1CF1E8DEC(inited);
  v8 = v1[5];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5060, &qword_1CFA052D0);
  v10 = swift_dynamicCastClassUnconditional();
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_1CF9FA450;
  *(v11 + 56) = v9;
  *(v11 + 64) = &off_1F4C020A8;
  *(v11 + 32) = v10;

  sub_1CF1E8DEC(v11);
  v12 = v1[2];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4830, &unk_1CFA052E0);
  v14 = swift_dynamicCastClassUnconditional();
  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_1CF9FA450;
  *(v15 + 56) = v13;
  *(v15 + 64) = &off_1F4BF4140;
  *(v15 + 32) = v14;

  sub_1CF1E8DEC(v15);
  v16 = v1[6];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB60, &qword_1CFA052D8);
  v18 = swift_dynamicCastClassUnconditional();
  v19 = swift_initStackObject();
  *(v19 + 16) = xmmword_1CF9FA450;
  *(v19 + 56) = v17;
  *(v19 + 64) = &off_1F4BFC6F8;
  *(v19 + 32) = v18;

  sub_1CF1E8DEC(v19);
  v20 = *(v1 + qword_1EDEBBE30);
  v21 = sub_1CF39CE8C();
  sub_1CF1E8DEC(v21);
  return v23;
}

uint64_t sub_1CF3BD984()
{
  v1 = v0;
  v2 = *v0;
  v22 = MEMORY[0x1E69E7CC0];
  sub_1CF478C28();
  v3 = v2[329];
  v4 = v2[330];
  v5 = v2[331];
  v6 = v2[332];
  v7 = type metadata accessor for SQLJobRegistry();
  v8 = sub_1CF339634(v7, &off_1F4C025C0);
  sub_1CF1E8DEC(v8);
  sub_1CF47FA34();
  v9 = type metadata accessor for SQLSnapshot();
  v10 = sub_1CF339634(v9, &off_1F4C020A8);
  sub_1CF1E8DEC(v10);
  sub_1CF47F85C();
  v11 = type metadata accessor for SQLSnapshot();
  v12 = sub_1CF339634(v11, &off_1F4C020A8);
  sub_1CF1E8DEC(v12);
  v13 = v0[2];
  v14 = type metadata accessor for SQLReconciliationTable();
  swift_dynamicCastClassUnconditional();
  v15 = sub_1CF339634(v14, &off_1F4BF4140);
  sub_1CF1E8DEC(v15);
  v16 = v1[6];
  v17 = type metadata accessor for SQLSyncStateTable();
  swift_dynamicCastClassUnconditional();
  v18 = sub_1CF339634(v17, &off_1F4BFC6F8);
  sub_1CF1E8DEC(v18);
  v19 = *(v1 + qword_1EDEBBE30);
  v20 = sub_1CF39CE8C();
  sub_1CF1E8DEC(v20);
  return v22;
}

uint64_t sub_1CF3BDB8C(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 24))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BDC14(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 32))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BDC9C(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 40))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BDD24(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 48))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BDDAC(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 56))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BDE34(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 64))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BDEBC(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 72))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BDF44(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 80))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BDFCC(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 88))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BE054(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 96))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BE0DC(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 104))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BE164(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 112))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BE1EC(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 120))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BE274(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 128))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BE2FC(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 136))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BE384(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 144))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BE40C(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 152))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BE494(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 160))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BE51C(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 168))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BE5A4(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 176))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BE62C(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 184))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BE6B4(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 192))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BE73C(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 200))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BE7C4(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 208))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BE84C(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 216))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BE8D4(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 224))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BE95C(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 232))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BE9E4(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 240))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BEA6C(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 248))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BEAF4(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 256))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BEB7C(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 264))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BEC04(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 272))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BEC8C(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 280))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BED14(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 288))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BED9C(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 296))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BEE24(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 304))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BEEAC(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 312))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BEF34(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 320))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BEFBC(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 328))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BF044(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 336))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BF0CC(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 344))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BF154(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 352))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BF1DC(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 360))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BF264(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 368))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BF2EC(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 376))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BF374(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 384))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BF3FC(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 392))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BF484(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 400))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BF50C(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 408))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BF594(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 416))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BF61C(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 424))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BF6A4(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 432))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BF72C(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 440))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BF7B4(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 448))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BF83C(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 456))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BF8C4(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 464))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BF94C(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 472))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BF9D4(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 480))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BFA5C(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 488))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BFAE4(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 496))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BFB6C(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 504))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BFBF4(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 512))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BFC7C(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 520))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BFD04(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 528))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BFD8C(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 536))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BFE14(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 544))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BFE9C(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 552))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BFF24(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 560))(v7, v5, v6, v3, v4);
}

uint64_t sub_1CF3BFFAC(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_project_boxed_opaque_existential_1(a2, v5);
  return (*(v4 + 568))(v7, v5, v6, v3, v4);
}

void sub_1CF3C0034(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(sqlite3_context *a1), uint64_t a6)
{
  v11 = sub_1CF9E6888();
  v20 = sub_1CF3C0208;
  v21 = 0;
  v16 = MEMORY[0x1E69E9820];
  v17 = 1107296256;
  v18 = sub_1CF07612C;
  v19 = a3;
  v12 = _Block_copy(&v16);

  [a1 registerFunction:v11 nArgs:2 handler:v12];
  _Block_release(v12);

  LOBYTE(v12) = *(v6 + qword_1EDEAE668);
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  v14 = sub_1CF9E6888();
  v20 = a5;
  v21 = v13;
  v16 = MEMORY[0x1E69E9820];
  v17 = 1107296256;
  v18 = sub_1CF07612C;
  v19 = a6;
  v15 = _Block_copy(&v16);

  [a1 registerFunction:v14 nArgs:3 handler:v15];
  _Block_release(v15);
}

void sub_1CF3C0210(sqlite3_context *a1, uint64_t a2, sqlite3_value **a3, uint64_t a4)
{
  v7 = sqlite3_value_int(*a3);
  v8 = sqlite3_value_int(a3[1]);
  v9 = sqlite3_value_int(a3[2]);
  if (v9 <= 4 && ((0x17u >> v9) & 1) != 0)
  {
    v10 = sub_1CEFF8538(v7, v8, 0, a4, (2u >> v9) & 1, 0);
    if (v10 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v10 <= 0x7FFFFFFF)
    {

      sqlite3_result_int(a1, v10);
      return;
    }

    __break(1u);
    return;
  }

  v11 = *a3;

  sqlite3_result_value(a1, v11);
}

void sub_1CF3C0308(void *a1, uint64_t a2)
{
  sub_1CF3C0034(a1, a2, &block_descriptor_1320, &unk_1F4C011B8, sub_1CF485900, &block_descriptor_1327);
  v3 = swift_allocObject();
  swift_weakInit();

  v4 = sub_1CF9E6888();
  v19 = sub_1CF482D7C;
  v20 = v3;
  v15 = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = sub_1CF07612C;
  v18 = &block_descriptor_1299;
  v5 = _Block_copy(&v15);

  [a1 registerFunction:v4 nArgs:1 handler:v5];
  _Block_release(v5);

  v6 = swift_allocObject();
  swift_weakInit();

  v7 = sub_1CF9E6888();
  v19 = sub_1CF482D84;
  v20 = v6;
  v15 = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = sub_1CF07612C;
  v18 = &block_descriptor_1303;
  v8 = _Block_copy(&v15);

  [a1 registerFunction:v7 nArgs:2 handler:v8];
  _Block_release(v8);

  v9 = swift_allocObject();
  swift_weakInit();

  v10 = sub_1CF9E6888();
  v19 = sub_1CF482D8C;
  v20 = v9;
  v15 = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = sub_1CF07612C;
  v18 = &block_descriptor_1307;
  v11 = _Block_copy(&v15);

  [a1 registerFunction:v10 nArgs:3 handler:v11];
  _Block_release(v11);

  v12 = swift_allocObject();
  swift_weakInit();

  v13 = sub_1CF9E6888();
  v19 = sub_1CF482D94;
  v20 = v12;
  v15 = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = sub_1CF07612C;
  v18 = &block_descriptor_1311;
  v14 = _Block_copy(&v15);

  [a1 registerFunction:v13 nArgs:1 handler:v14];
  _Block_release(v14);
}

void sub_1CF3C0730(sqlite3_context *a1, uint64_t a2, sqlite3_value **a3)
{
  v4 = sqlite3_value_int64(*a3);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + qword_1EDEBBDE8) = 1;
  }

  if (__OFADD__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    sqlite3_result_int64(a1, v4 + 1);
  }
}

void sub_1CF3C07B8(sqlite3_context *a1, uint64_t a2, sqlite3_value **a3)
{
  v33 = a1;
  v4 = sub_1CF9E6118();
  v32 = *(v4 - 8);
  v5 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v34 = sub_1CF9E5CF8();
  v6 = *(v34 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE710, &qword_1CF9FE5A8);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v32 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v32 - v18;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + qword_1EDEBBDD0) = 1;
  }

  if (sqlite3_value_int(*a3) == 1)
  {
    VFSItemID.init(sqliteValue:)(a3[1], &v35);
    swift_beginAccess();
    v21 = swift_weakLoadStrong();
    if (v21)
    {
      v22 = v21;
      v23 = v36;
      *v19 = v35;
      *(v19 + 4) = v23;
      swift_storeEnumTagMultiPayload();
      if (*(v22 + qword_1EDEADB48) == 1)
      {
        sub_1CEFCCBDC(v19, v17, &qword_1EC4BE710, &qword_1CF9FE5A8);
        swift_beginAccess();
        sub_1CF7E2EC8(v17);
        swift_endAccess();
      }

      sub_1CEFCCC44(v19, &qword_1EC4BE710, &qword_1CF9FE5A8);
    }
  }

  else if (sqlite3_value_int(*a3) == 2)
  {
    v27 = sub_1CF2CB644(a3[1]);
    swift_beginAccess();
    v28 = swift_weakLoadStrong();
    if (v28)
    {
      v29 = v28;
      *v14 = v27;
      *(v14 + 4) = 256;
      swift_storeEnumTagMultiPayload();
      if (*(v29 + qword_1EDEADB48) == 1)
      {
        sub_1CEFCCBDC(v14, v17, &qword_1EC4BE710, &qword_1CF9FE5A8);
        swift_beginAccess();
        v30 = v27;
        sub_1CF7E2EC8(v17);
        swift_endAccess();
      }

      else
      {
        v31 = v27;
      }

      sub_1CEFCCC44(v14, &qword_1EC4BE710, &qword_1CF9FE5A8);
    }

    else
    {
    }
  }

  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v25 = v24;
  (*(v6 + 8))(v9, v34);
  v26 = v25 * 1000000000.0;
  if (COERCE__INT64(fabs(v25 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v26 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v26 < 9.22337204e18)
  {
    sqlite3_result_int64(v33, v26);
    return;
  }

LABEL_22:
  __break(1u);
}

void sub_1CF3C0D7C(sqlite3_context *a1, uint64_t a2, sqlite3_value **a3, uint64_t a4)
{
  v7 = sub_1CF9E6118();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v9 = sqlite3_value_int64(a3[2]);
  VFSItemID.init(sqliteValue:)(*a3, &v20);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v15 = a1;
    v11 = *(Strong + qword_1EDEBBDB0);
    v18 = &type metadata for SQLDatabaseReadWriteAccessor;
    v19 = &off_1F4C17938;
    v16 = v11;
    v17 = 2;
    v12 = v20;
    v13 = v21;
    v14 = v11;
    sub_1CF3C1060(&v16, a3, v12, v13, a4, v9);

    __swift_destroy_boxed_opaque_existential_1(&v16);

    a1 = v15;
  }

  sqlite3_result_int64(a1, 0);
}

uint64_t sub_1CF3C1060(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v13 = sub_1CF9E5CF8();
  v57 = *(v13 - 8);
  v14 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v56 = v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1CF9E6118();
  v58 = *(v16 - 8);
  v59 = v16;
  v17 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = a3;
  v63 = a4;
  if (!sqlite3_value_int64(*(a2 + 8)))
  {
    v36 = a1[3];
    v37 = a1[4];
    v38 = __swift_project_boxed_opaque_existential_1(a1, v36);
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    v40 = *(result + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB70, &unk_1CFA0A280);
    v41 = swift_dynamicCastClassUnconditional();

    v42 = *(v41 + 32);

    sub_1CF348CFC(&v62, a6, v38, v36, v37);
  }

  v54[2] = a5;
  v55 = v13;
  v20 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v21 = v62;
  v22 = v63;
  v23 = sub_1CF9E6108();
  v24 = sub_1CF9E7288();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v54[0] = a6;
    v26 = v22;
    v27 = v25;
    v28 = swift_slowAlloc();
    v54[1] = v6;
    v29 = v28;
    v60[0] = v28;
    v60[1] = v21;
    *v27 = 136315138;
    v61 = v26;
    v31 = VFSItemID.description.getter(v28, v30);
    v33 = sub_1CEFD0DF0(v31, v32, v60);

    *(v27 + 4) = v33;
    _os_log_impl(&dword_1CEFC7000, v23, v24, "📌 SCHEDULE_BACKGROUND_DOWNLOAD: for %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    MEMORY[0x1D386CDC0](v29, -1, -1);
    v34 = v27;
    v35 = v54[0];
    MEMORY[0x1D386CDC0](v34, -1, -1);

    (*(v58 + 8))(v19, v59);
  }

  else
  {

    (*(v58 + 8))(v19, v59);
    v35 = a6;
  }

  v43 = a1[3];
  v44 = a1[4];
  v45 = __swift_project_boxed_opaque_existential_1(a1, v43);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v46 = v55;
  if (result)
  {
    v47 = *(result + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB70, &unk_1CFA0A280);
    v48 = swift_dynamicCastClassUnconditional();

    v49 = *(v48 + 32);

    v50 = v56;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v52 = v51;
    result = (*(v57 + 8))(v50, v46);
    v53 = v52 * 1000000000.0;
    if (COERCE__INT64(fabs(v52 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v53 > -9.22337204e18)
    {
      if (v53 < 9.22337204e18)
      {
        sub_1CF347AC0(&v62, v35, v53, v45, v43, v44);
      }

LABEL_16:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_16;
  }

  return result;
}

void sub_1CF3C1524(sqlite3_context *a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_4;
  }

  v3 = *(Strong + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB70, &unk_1CFA0A280);
  v4 = swift_dynamicCastClassUnconditional();

  v5 = *(v4 + 32);

  MEMORY[0x1EEE9AC00](v6);
  type metadata accessor for VFSItem(0);
  sub_1CEFD57E0(0, &qword_1EDEAB520, 0x1E6967388);
  sub_1CF042F54(qword_1EDEABC30, type metadata accessor for VFSItem);
  sub_1CF4804D8();
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  swift_getKeyPath();
  v8 = sub_1CF9E6288();
  if (!__OFADD__(*v9, 1))
  {
    ++*v9;
    v8(v10, 0);

LABEL_4:
    sqlite3_result_int64(a1, 0);
    return;
  }

  __break(1u);
}

id sub_1CF3C174C(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v161 = a2;
  v160 = a1;
  v159 = sub_1CF9E5CF8();
  v155 = *(v159 - 8);
  v6 = *(v155 + 64);
  MEMORY[0x1EEE9AC00](v159);
  v158 = &v140 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = type metadata accessor for SyncState();
  v8 = *(*(v156 - 8) + 64);
  MEMORY[0x1EEE9AC00](v156);
  v157 = (&v140 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_1CF9E6118();
  v162 = *(v10 - 8);
  v11 = *(v162 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v140 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v140 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v140 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDE0, qword_1CF9FA390);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v24 = &v140 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v140 - v25;
  v170 = a3;
  v171 = a4;
  v27 = v164;
  result = sub_1CF7D5920(sub_1CF485954, 0, a3);
  if (!v27)
  {
    v154 = v10;
    v153 = v26;
    v152 = v24;
    v164 = v19;
    v151 = v17;
    v150 = v14;
    sub_1CF7D5920(sub_1CF3C2DA4, 0, a3);
    sub_1CF7D5920(sub_1CF4858D8, 0, a3);
    sub_1CF7D5920(sub_1CF4858DC, 0, a3);
    v144 = 0;
    v142 = a3;
    v143 = a4;
    sub_1CF3C0308(a3, a4);
    v29 = v163;
    v147 = *(v163 + qword_1EDEBBDB0);
    v30 = [v147 userVersion];
    v31 = [v30 unsignedIntValue];

    v32 = swift_allocObject();
    v149 = v32;
    v145 = v31;
    *(v32 + 16) = v31;
    v33 = *(v29 + qword_1EC4BFAF8);
    v148 = (v32 + 16);
    swift_beginAccess();
    if (*(v33 + 16))
    {
      v146 = v167;
      do
      {
        v34 = sub_1CF7D52AC(*v148);
        v29 = v163;
        if ((v35 & 1) == 0)
        {
          break;
        }

        v36 = v33;
        v37 = *(v33 + 56) + 24 * v34;
        v38 = *v37;
        v39 = *(v37 + 8);
        v40 = *(v37 + 16);
        v41 = swift_allocObject();
        v42 = &v140;
        *(v41 + 16) = v38;
        *(v41 + 24) = v39;
        v43 = MEMORY[0x1EEE9AC00](v41);
        *(&v140 - 6) = v149;
        *(&v140 - 10) = v40;
        v44 = v29;
        *(&v140 - 4) = v29;
        *(&v140 - 3) = sub_1CF482CD4;
        *(&v140 - 2) = v43;
        *(&v140 - 1) = &v170;
        v169 = 0;
        LOBYTE(v168) = 1;
        v45 = swift_allocObject();
        *(v45 + 16) = &v168;
        *(v45 + 24) = sub_1CF482CFC;
        *(v45 + 32) = &v140 - 8;
        *(v45 + 40) = &v169;
        *(v45 + 48) = 10;
        v46 = swift_allocObject();
        *(v46 + 16) = sub_1CF482D2C;
        *(v46 + 24) = v45;
        v167[2] = sub_1CF485B64;
        v167[3] = v46;
        aBlock = MEMORY[0x1E69E9820];
        v166 = 1107296256;
        v167[0] = sub_1CF033B10;
        v167[1] = &block_descriptor_1292;
        v47 = _Block_copy(&aBlock);

        v48 = [v147 performWithFlags:10 action:v47];
        _Block_release(v47);
        LOBYTE(v39) = swift_isEscapingClosureAtFileLocation();

        if (v39)
        {
          __break(1u);
          goto LABEL_31;
        }

        v49 = v169;
        if (v169)
        {
          v50 = 0;
        }

        else
        {
          v50 = v48;
        }

        if (v50 != 1)
        {
          if (!v169)
          {
            goto LABEL_85;
          }

          swift_willThrow();
          v58 = v49;
        }

        if (v168)
        {
          __break(1u);
          goto LABEL_79;
        }

        v33 = v36;
        v29 = v44;
      }

      while (*(v36 + 16));
    }

    if (errorInjectionUnknownDBVersionEnabled() && v145 != 9999999 && v145)
    {
      [v147 setUserVersion_];
      *v148 = 9999999;
      v51 = v162;
      v52 = v164;
    }

    else
    {
      v51 = v162;
      v52 = v164;
      if (*v148 == 720903)
      {
        v54 = v29[6];
        v53 = v29[7];
        ObjectType = swift_getObjectType();
        v56 = v153;
        v57 = v144;
        sub_1CF95FA88(&v170, ObjectType, &type metadata for SQLDatabaseReadWriteAccessor, v53, &off_1F4C17938, v153);
        if (v57)
        {
        }

        v147 = ObjectType;
        v164 = v54;
        v146 = v53;
        v69 = sub_1CF9E5D98();
        v70 = *(v69 - 8);
        (*(v70 + 56))(v56, 0, 1, v69);
        v71 = qword_1EDEBBDA8;
        v72 = v56;
        v73 = v163;
        swift_beginAccess();
        sub_1CEFDA9E0(v72, v73 + v71, &unk_1EC4BEDE0, qword_1CF9FA390);
        swift_endAccess();
        v74 = v73 + v71;
        v75 = v152;
        sub_1CEFCCBDC(v74, v152, &unk_1EC4BEDE0, qword_1CF9FA390);
        result = (*(v70 + 48))(v75, 1, v69);
        if (result == 1)
        {
          goto LABEL_86;
        }

        v76 = v146;
        sub_1CF95FBE4(v75, &v170, v147, &type metadata for SQLDatabaseReadWriteAccessor, v146, &off_1F4C17938);
        v77 = v75;
        v48 = v143;
        (*(v70 + 8))(v77, v69);
        v78 = *(v163 + qword_1EDEBBE30);
        v79 = sub_1CF39A3EC(v142, v48);
        *(v163 + qword_1EDEBBDE0) = v79 & 1;
        v44 = 0;
        v80 = sub_1CF95F3A0(&v170, v147, &type metadata for SQLDatabaseReadWriteAccessor, v76, &off_1F4C17938);
        v81 = v163;
        v82 = v163[4];
        v83 = *(v82 + 16);

        result = FPVersion();
        if (!result)
        {
LABEL_87:
          __break(1u);
          return result;
        }

        v84 = result;
        v152 = v82;
        v153 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v36 = v85;

        v86 = *(**(v81[5] + 16) + 120);

        v45 = v86(v87);
        v42 = v88;

        v89 = FPOSVersion();
        v141 = v80;
        if (v89)
        {
          v90 = v89;
          v91 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v93 = v92;
        }

        else
        {
LABEL_31:
          v91 = 0;
          v93 = 0;
        }

        aBlock = v160;
        v166 = v161;
        MEMORY[0x1EEE9AC00](v161);
        *(&v140 - 2) = 1129530692;
        *(&v140 - 1) = 0xE400000000000000;

        v94 = sub_1CF7D55FC(sub_1CF250D78, (&v140 - 4), v142, v48);
        if (v44)
        {

          v96 = 1;
          v97 = 0;
LABEL_52:
          MEMORY[0x1EEE9AC00](v95);
          *(&v140 - 10) = v91;
          *(&v140 - 9) = v93;
          *(&v140 - 16) = 720903;
          *(&v140 - 7) = 0x2F265CD7BALL;
          *(&v140 - 6) = v153;
          *(&v140 - 5) = v36;
          *(&v140 - 4) = v45;
          *(&v140 - 3) = v42;
          *(&v140 - 2) = &aBlock;
          sub_1CF7D5920(sub_1CF1FD9BC, (&v140 - 12), v142);
          v144 = v97;
          if (v97)
          {
          }

LABEL_55:

          if (!v145 || (v96 & 1) != 0)
          {
LABEL_74:
            v137 = v157;
            *v157 = 0x2F265CD7BALL;
            swift_storeEnumTagMultiPayload();
            v138 = v144;
            (v146[1])(v137, &v170, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17938, v147);
            sub_1CEFD5278(v137, type metadata accessor for SyncState);

            if (!v138)
            {
              return ((v145 == 0) | ((v145 != 720903) << 8));
            }

            return result;
          }

          v99 = qword_1EDEADB48;
          *(v163 + qword_1EDEADB48) = 1;
          v100 = fpfs_current_or_default_log();
          sub_1CF9E6128();
          v101 = sub_1CF9E6108();
          v102 = sub_1CF9E72C8();
          if (os_log_type_enabled(v101, v102))
          {
            v103 = swift_slowAlloc();
            *v103 = 0;
            _os_log_impl(&dword_1CEFC7000, v101, v102, "updating, clearing the throttles", v103, 2u);
            MEMORY[0x1D386CDC0](v103, -1, -1);
          }

          v104 = *(v162 + 8);
          v105 = v104(v151, v154);
          (*(**(v152 + 2) + 96))(&aBlock, v105);
          v106 = v158;
          sub_1CF9E5CE8();
          sub_1CF9E5C98();
          v108 = v107;
          v109 = *(v155 + 8);
          result = v109(v106, v159);
          v110 = v108 * 1000000000.0;
          if (COERCE__INT64(fabs(v108 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
          {
LABEL_79:
            __break(1u);
          }

          else if (v110 > -9.22337204e18)
          {
            if (v110 < 9.22337204e18)
            {
              v111 = v110;
              v112 = aBlock;
              v113 = v166;
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0170, &qword_1CF9FAC18);
              v114 = swift_allocObject();
              *(v114 + 152) = v113;
              *(v114 + 16) = 0u;
              *(v114 + 32) = 0u;
              *(v114 + 48) = 1;
              *(v114 + 56) = 0u;
              *(v114 + 72) = 0u;
              *(v114 + 88) = 0;
              *(v114 + 96) = xmmword_1CF9FEC30;
              *(v114 + 112) = 0;
              *(v114 + 120) = 0;
              *(v114 + 128) = v111;
              *(v114 + 136) = 0;
              *(v114 + 144) = v112;
              v115 = v158;
              sub_1CF9E5CE8();
              sub_1CF9E5C98();
              v117 = v116;
              result = v109(v115, v159);
              v118 = v117 * 1000000000.0;
              if (COERCE__INT64(fabs(v117 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
              {
                if (v118 > -9.22337204e18)
                {
                  if (v118 < 9.22337204e18)
                  {
                    v119 = v144;
                    sub_1CF902E70(v114, v118, v142, v143);
                    v144 = v119;
                    if (v119)
                    {

LABEL_67:
                      *(v163 + v99) = 0;
                    }

                    if (v145 != 720903 || v141 != 0x2F265CD7BALL)
                    {
                      v120 = fpfs_current_or_default_log();
                      sub_1CF9E6128();

                      v121 = sub_1CF9E6108();
                      v122 = sub_1CF9E72C8();

                      if (os_log_type_enabled(v121, v122))
                      {
                        v123 = swift_slowAlloc();
                        v124 = swift_slowAlloc();
                        v169 = v124;
                        *v123 = 136446978;
                        v125 = sub_1CF3B0B48();
                        v127 = sub_1CEFD0DF0(v125, v126, &v169);

                        *(v123 + 4) = v127;
                        *(v123 + 12) = 2080;
                        aBlock = 114;
                        v166 = 0xE100000000000000;
                        v168 = v141;
                        v128 = sub_1CF9E7F98();
                        MEMORY[0x1D3868CC0](v128);

                        v129 = sub_1CEFD0DF0(aBlock, v166, &v169);

                        *(v123 + 14) = v129;
                        *(v123 + 22) = 2082;
                        v130 = *v148;
                        v131 = sub_1CF3B0B48();
                        v133 = sub_1CEFD0DF0(v131, v132, &v169);

                        *(v123 + 24) = v133;
                        *(v123 + 32) = 2080;
                        aBlock = 114;
                        v166 = 0xE100000000000000;
                        v168 = 0x2F265CD7BALL;
                        v134 = sub_1CF9E7F98();
                        MEMORY[0x1D3868CC0](v134);

                        v135 = sub_1CEFD0DF0(aBlock, v166, &v169);

                        *(v123 + 34) = v135;
                        _os_log_impl(&dword_1CEFC7000, v121, v122, "applying database bugfixes %{public}s:%s -> %{public}s:%s", v123, 0x2Au);
                        swift_arrayDestroy();
                        MEMORY[0x1D386CDC0](v124, -1, -1);
                        MEMORY[0x1D386CDC0](v123, -1, -1);
                      }

                      v104(v150, v154);
                      v136 = v144;
                      sub_1CF3DFD3C(v141, v142, v143);
                      v144 = v136;
                      if (v136)
                      {
                        goto LABEL_67;
                      }
                    }

                    *(v163 + v99) = 0;
                    goto LABEL_74;
                  }

                  goto LABEL_84;
                }

LABEL_83:
                __break(1u);
LABEL_84:
                __break(1u);
LABEL_85:
                __break(1u);
LABEL_86:
                __break(1u);
                goto LABEL_87;
              }

LABEL_82:
              __break(1u);
              goto LABEL_83;
            }

LABEL_81:
            __break(1u);
            goto LABEL_82;
          }

          __break(1u);
          goto LABEL_81;
        }

        v160 = v91;
        v140 = v45;
        v98 = v94;
        if ([v94 next])
        {
          sub_1CF25069C(v98, v172);
          v144 = 0;
          if (v93 && (v173 == v160 && v93 == v174 || (sub_1CF9E8048() & 1) != 0) && v175 == 720903 && v176 == 0x2F265CD7BALL && (v177 == v153 && v178 == v36 || (sub_1CF9E8048() & 1) != 0))
          {
            if (v179 == v140 && v180 == v42)
            {
              sub_1CF250D40(v172);
LABEL_77:

              v96 = 1;
              goto LABEL_55;
            }

            v139 = sub_1CF9E8048();
            sub_1CF250D40(v172);
            if (v139)
            {
              goto LABEL_77;
            }
          }

          else
          {
            sub_1CF250D40(v172);
          }

          v96 = 0;
          v166 = 0;
          aBlock = 0;
          v97 = v144;
        }

        else
        {

          v96 = 1;
          v97 = 0;
        }

        v45 = v140;
        v91 = v160;
        goto LABEL_52;
      }
    }

    v59 = fpfs_current_or_default_log();
    sub_1CF9E6128();

    v60 = sub_1CF9E6108();
    v61 = sub_1CF9E72A8();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      aBlock = v63;
      *v62 = 136446210;
      v64 = *v148;
      v65 = sub_1CF3B0B48();
      v67 = sub_1CEFD0DF0(v65, v66, &aBlock);

      *(v62 + 4) = v67;
      _os_log_impl(&dword_1CEFC7000, v60, v61, "unsupported database version %{public}s", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v63);
      MEMORY[0x1D386CDC0](v63, -1, -1);
      MEMORY[0x1D386CDC0](v62, -1, -1);
    }

    (*(v51 + 8))(v52, v154);
    sub_1CF24CD3C();
    swift_allocError();
    *v68 = *(v149 + 16);
    *(v68 + 8) = 0;
    *(v68 + 16) = 1;
    *(v68 + 48) = 3;
    swift_willThrow();
  }

  return result;
}

unint64_t sub_1CF3C2DC0()
{
  sub_1CF9E7948();

  v0 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v0);

  return 0xD000000000000014;
}

unint64_t sub_1CF3C2E54()
{
  sub_1CF9E7948();

  v0 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v0);

  return 0xD000000000000015;
}

void *sub_1CF3C2EE8(void *a1, uint64_t a2, unsigned int a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t *), uint64_t a6, void *a7, int a8)
{
  v91 = a8;
  v90 = a6;
  v89 = a5;
  v84 = a1;
  v88 = sub_1CF9E6118();
  v87 = *(v88 - 8);
  v13 = *(v87 + 64);
  v14 = MEMORY[0x1EEE9AC00](v88);
  v82 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v80 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v80 - v19;
  v21 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v22 = sub_1CF9E6108();
  v23 = sub_1CF9E72C8();

  LODWORD(v83) = v23;
  v24 = v23;
  v25 = v22;
  v26 = os_log_type_enabled(v22, v24);
  v85 = a3;
  v86 = a2;
  v81 = v18;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v80 = a4;
    v28 = v27;
    v29 = swift_slowAlloc();
    v100[0] = v29;
    *v28 = 136446466;
    swift_beginAccess();
    v30 = *(a2 + 16);
    v31 = sub_1CF3B0B48();
    v33 = sub_1CEFD0DF0(v31, v32, v100);

    *(v28 + 4) = v33;
    *(v28 + 12) = 2082;
    v34 = sub_1CF3B0B48();
    v36 = sub_1CEFD0DF0(v34, v35, v100);

    *(v28 + 14) = v36;
    _os_log_impl(&dword_1CEFC7000, v25, v83, "upgrading database %{public}s -> %{public}s", v28, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v29, -1, -1);
    MEMORY[0x1D386CDC0](v28, -1, -1);
  }

  v37 = *(v87 + 8);
  v37(v20, v88);
  result = sub_1CF3BD6E0();
  v39 = result;
  v40 = result[2];
  if (v40)
  {
    v83 = v37;
    v41 = 0;
    v42 = (result + 4);
    while (1)
    {
      if (v41 >= v39[2])
      {
        __break(1u);
        return result;
      }

      sub_1CF1A91AC(v42, v100);
      v98 = &type metadata for SQLDatabaseReadWriteAccessor;
      v99 = &off_1F4C17938;
      v96 = a7;
      v97 = v91;
      v43 = a7;
      v89(v100, &v96);
      if (v8)
      {
        break;
      }

      ++v41;
      __swift_destroy_boxed_opaque_existential_1(v100);
      result = __swift_destroy_boxed_opaque_existential_1(&v96);
      v42 += 40;
      if (v40 == v41)
      {
        goto LABEL_8;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(&v96);
    v46 = fpfs_current_or_default_log();
    v47 = v81;
    sub_1CF9E6128();
    sub_1CF1A91AC(v100, &v96);
    v48 = v8;
    v49 = sub_1CF9E6108();
    v50 = sub_1CF9E72A8();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v95[0] = v53;
      *v51 = 136446466;
      __swift_project_boxed_opaque_existential_1(&v96, v98);
      DynamicType = swift_getDynamicType();
      v94 = v99;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C05C8, &unk_1CFA05990);
      v54 = sub_1CF9E6948();
      v56 = v55;
      __swift_destroy_boxed_opaque_existential_1(&v96);
      v57 = sub_1CEFD0DF0(v54, v56, v95);

      *(v51 + 4) = v57;
      *(v51 + 12) = 2114;
      swift_getErrorValue();
      v58 = Error.prettyDescription.getter(v92);
      *(v51 + 14) = v58;
      *v52 = v58;
      _os_log_impl(&dword_1CEFC7000, v49, v50, "cannot setup schema for %{public}s: %{public}@", v51, 0x16u);
      sub_1CEFCCC44(v52, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v52, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v53);
      MEMORY[0x1D386CDC0](v53, -1, -1);
      MEMORY[0x1D386CDC0](v51, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(&v96);
    }

    v59 = v47;
    v60 = v88;
    v61 = v83;
    v83(v59, v88);
    v62 = v82;
    v63 = v86;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(v100);
    v64 = fpfs_current_or_default_log();
    sub_1CF9E6128();

    v65 = v8;
    v66 = sub_1CF9E6108();
    v67 = sub_1CF9E72A8();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = v63;
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v96 = v71;
      *v68 = 136446722;
      swift_beginAccess();
      v72 = *(v69 + 16);
      v73 = sub_1CF3B0B48();
      v75 = sub_1CEFD0DF0(v73, v74, &v96);

      *(v68 + 4) = v75;
      *(v68 + 12) = 2082;
      v76 = sub_1CF3B0B48();
      v78 = sub_1CEFD0DF0(v76, v77, &v96);

      *(v68 + 14) = v78;
      *(v68 + 22) = 2114;
      swift_getErrorValue();
      v79 = Error.prettyDescription.getter(v95[2]);
      *(v68 + 24) = v79;
      *v70 = v79;
      _os_log_impl(&dword_1CEFC7000, v66, v67, "can't upgrade DB from %{public}s -> %{public}s: %{public}@", v68, 0x20u);
      sub_1CEFCCC44(v70, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v70, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v71, -1, -1);
      MEMORY[0x1D386CDC0](v68, -1, -1);

      v83(v62, v88);
    }

    else
    {

      v61(v62, v60);
    }

    return swift_willThrow();
  }

  else
  {
LABEL_8:

    v44 = v86;
    swift_beginAccess();
    v45 = v85;
    *(v44 + 16) = v85;
    return [v84 setUserVersion_];
  }
}

uint64_t sub_1CF3C36FC()
{
  sub_1CF1FD6F8(*(v0 + qword_1EC4EBCD0), *(v0 + qword_1EC4EBCD0 + 8));
  sub_1CF1FD6F8(*(v0 + qword_1EC4EBCD8), *(v0 + qword_1EC4EBCD8 + 8));
  sub_1CEFCCC44(v0 + qword_1EDEBBDA8, &unk_1EC4BEDE0, qword_1CF9FA390);
  v1 = qword_1EC4EBCE0;
  v2 = sub_1CF9E5A58();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + qword_1EC4EBCE8 + 8);

  v4 = *(v0 + qword_1EDEBBDA0 + 8);

  v5 = *(v0 + qword_1EC4BFAF0);

  v6 = *(v0 + qword_1EDEAE678);
  swift_unknownObjectRelease();

  v7 = *(v0 + qword_1EDEBBE30);

  v8 = *(v0 + qword_1EDEBBDC8 + 8);
  sub_1CEFF7124(*(v0 + qword_1EDEBBDC8));
  v9 = *(v0 + qword_1EDEBBDC0 + 8);
  sub_1CEFF7124(*(v0 + qword_1EDEBBDC0));
  v10 = *(v0 + qword_1EDEBBDD8 + 8);
  sub_1CEFF7124(*(v0 + qword_1EDEBBDD8));
  v11 = *(v0 + qword_1EDEBBDF0 + 8);
  sub_1CEFF7124(*(v0 + qword_1EDEBBDF0));
  v12 = *(v0 + qword_1EDEBBE20 + 8);
  sub_1CEFF7124(*(v0 + qword_1EDEBBE20));
  v13 = *(v0 + qword_1EC4BFAF8);
}

char *sub_1CF3C3898()
{
  v0 = sub_1CF59AF44();

  sub_1CF1FD6F8(*&v0[qword_1EC4EBCD0], *&v0[qword_1EC4EBCD0 + 8]);
  sub_1CF1FD6F8(*&v0[qword_1EC4EBCD8], *&v0[qword_1EC4EBCD8 + 8]);
  sub_1CEFCCC44(&v0[qword_1EDEBBDA8], &unk_1EC4BEDE0, qword_1CF9FA390);
  v1 = qword_1EC4EBCE0;
  v2 = sub_1CF9E5A58();
  (*(*(v2 - 8) + 8))(&v0[v1], v2);
  v3 = *&v0[qword_1EC4EBCE8 + 8];

  v4 = *&v0[qword_1EDEBBDA0 + 8];

  v5 = *&v0[qword_1EC4BFAF0];

  v6 = *&v0[qword_1EDEAE678];
  swift_unknownObjectRelease();

  v7 = *&v0[qword_1EDEBBE30];

  v8 = *&v0[qword_1EDEBBDC8 + 8];
  sub_1CEFF7124(*&v0[qword_1EDEBBDC8]);
  v9 = *&v0[qword_1EDEBBDC0 + 8];
  sub_1CEFF7124(*&v0[qword_1EDEBBDC0]);
  v10 = *&v0[qword_1EDEBBDD8 + 8];
  sub_1CEFF7124(*&v0[qword_1EDEBBDD8]);
  v11 = *&v0[qword_1EDEBBDF0 + 8];
  sub_1CEFF7124(*&v0[qword_1EDEBBDF0]);
  v12 = *&v0[qword_1EDEBBE20 + 8];
  sub_1CEFF7124(*&v0[qword_1EDEBBE20]);
  v13 = *&v0[qword_1EC4BFAF8];

  return v0;
}

uint64_t sub_1CF3C3A34()
{
  v0 = *sub_1CF3C3898();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1CF3C3AA0(void *a1, const char *a2)
{
  v4 = sub_1CF9E6118();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x1EEE9AC00](v4);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v10 = a1;
    v11 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v12 = a1;
    v13 = sub_1CF9E6108();
    v14 = sub_1CF9E72A8();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      swift_getErrorValue();
      v17 = Error.prettyDescription.getter(v18[1]);
      *(v15 + 4) = v17;
      *v16 = v17;
      _os_log_impl(&dword_1CEFC7000, v13, v14, a2, v15, 0xCu);
      sub_1CEFCCC44(v16, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v16, -1, -1);
      MEMORY[0x1D386CDC0](v15, -1, -1);
    }

    else
    {
    }

    return (*(v5 + 8))(v9, v4);
  }

  return result;
}

void sub_1CF3C3CA0(char a1)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + qword_1EDEBBC38);
  v22[24] = a1;
  v4 = v3;
  if (!v3)
  {
    v4 = fpfs_current_log();
  }

  v21 = v3;
  v5 = fpfs_adopt_log();
  aBlock = sub_1CF9E73C8();
  v24 = v6;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v7 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v7);

  sub_1CF9E6978();

  v8 = __fp_log_fork();

  v20[1] = v20;
  v30 = v8;
  v31 = 0;
  MEMORY[0x1EEE9AC00](v9);
  v16[2] = v4;
  v16[3] = &v30;
  v16[4] = v2;
  v16[5] = "forceFlush(forcePostFlush:)";
  v16[6] = 27;
  v17 = 2;
  v18 = sub_1CF47FC0C;
  v19 = v22;
  v32 = 1;
  v29 = 0;
  v10 = swift_allocObject();
  v10[2] = &v32;
  v10[3] = sub_1CF2BA13C;
  v10[4] = v16;
  v10[5] = &v29;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1CF2BA170;
  *(v11 + 24) = v10;
  v27 = sub_1CF1C0B54;
  v28 = v11;
  aBlock = MEMORY[0x1E69E9820];
  v24 = 1107296256;
  v25 = sub_1CEFFD02C;
  v26 = &block_descriptor_113;
  v12 = _Block_copy(&aBlock);

  FPDispatchAsyncAndWait(v2, v12);
  _Block_release(v12);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (!v29)
  {
    if ((v32 & 1) == 0)
    {

      v14 = fpfs_adopt_log();

      return;
    }

    goto LABEL_8;
  }

LABEL_9:
  swift_willThrow();

  v15 = fpfs_adopt_log();
  __break(1u);
}

void sub_1CF3C3FC0(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, void (*a7)(_OWORD *, void *), uint64_t a8, uint64_t a9, uint64_t a10)
{
  v141 = a7;
  v142 = a8;
  v115 = a6;
  v137 = a5;
  v138 = a4;
  LODWORD(v118) = a3;
  v117 = a2;
  v116 = a1;
  v11 = sub_1CF9E6388();
  v135 = *(v11 - 8);
  v136 = v11;
  v12 = *(v135 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v134 = (&v110 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v133 = (&v110 - v15);
  v16 = sub_1CF9E6498();
  v131 = *(v16 - 8);
  v132 = v16;
  v17 = *(v131 + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v129 = &v110 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v130 = &v110 - v20;
  v21 = sub_1CF9E6448();
  v127 = *(v21 - 8);
  v128 = v21;
  v22 = *(v127 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v126 = &v110 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_1CF9E73D8();
  v124 = *(v125 - 8);
  v24 = *(v124 + 64);
  MEMORY[0x1EEE9AC00](v125);
  v123 = &v110 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1CF9E6068();
  v121 = *(v26 - 8);
  v27 = v121[8];
  MEMORY[0x1EEE9AC00](v26);
  v140 = &v110 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x1EEE9AC00](v29 - 8);
  v33 = &v110 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v35 = &v110 - v34;
  v36 = type metadata accessor for Signpost(0);
  v119 = *(v36 - 8);
  v37 = *(v119 + 64);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v120 = &v110 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v139 = &v110 - v39;
  v40 = sub_1CF9E64A8();
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v44 = (&v110 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = *(v10 + 64);
  *v44 = v45;
  (*(v41 + 104))(v44, *MEMORY[0x1E69E8020], v40);
  v122 = v45;
  v46 = sub_1CF9E64D8();
  (*(v41 + 8))(v44, v40);
  if ((v46 & 1) == 0)
  {
    __break(1u);
LABEL_35:
    swift_once();
    goto LABEL_9;
  }

  v46 = qword_1EDEBBC38;
  v47 = *(v10 + qword_1EDEBBC38);
  v48 = fpfs_adopt_log();
  if (*(v10 + qword_1EDEBBE38) & 1) != 0 || *(v10 + 152) == 1 || (fp_task_tracker_is_cancelled(*(*(v10 + 168) + 16)) & 1) != 0 || (*(v10 + 152))
  {
    sub_1CF2CA194();
    memset(v143, 0, sizeof(v143));
    v144 = 0;
    v49 = swift_allocError();
    v141(v143, v49);
    sub_1CEFCCC44(v143, &unk_1EC4C1B30, &qword_1CFA05300);

LABEL_7:
    v50 = fpfs_adopt_log();

    return;
  }

  v110 = v48;
  if (qword_1EDEAE980 != -1)
  {
    goto LABEL_35;
  }

LABEL_9:
  v113 = a10;
  v112 = a9;
  v114 = qword_1EDEBBE40;
  v51 = v121;
  (v121[7])(v35, 1, 1, v26);
  v118 = sub_1CF9E7988();
  v117 = v52;
  sub_1CEFCCBDC(v35, v33, &unk_1EC4BED20, &unk_1CFA00700);
  v53 = v51[6];
  if (v53(v33, 1, v26) == 1)
  {
    v54 = v114;
    sub_1CF9E6048();
    v55 = v53(v33, 1, v26);
    v56 = v140;
    if (v55 != 1)
    {
      sub_1CEFCCC44(v33, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v56 = v140;
    (v51[4])(v140, v33, v26);
  }

  v57 = v139;
  (v51[2])(v139, v56, v26);
  v58 = v114;
  *(v57 + *(v36 + 20)) = v114;
  v59 = v57 + *(v36 + 24);
  *v59 = "DB queue wait for flush";
  *(v59 + 8) = 23;
  *(v59 + 16) = 2;
  v60 = v58;
  sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_1CF9FA450;
  *(v61 + 56) = MEMORY[0x1E69E6158];
  *(v61 + 64) = sub_1CEFD51C4();
  v62 = v117;
  *(v61 + 32) = v118;
  *(v61 + 40) = v62;
  sub_1CF9E6028();

  (v51[1])(v140, v26);
  sub_1CEFCCC44(v35, &unk_1EC4BED20, &unk_1CFA00700);
  v63 = swift_allocObject();
  swift_weakInit();
  v64 = v120;
  sub_1CEFDA214(v57, v120, type metadata accessor for Signpost);
  v65 = (*(v119 + 80) + 16) & ~*(v119 + 80);
  v66 = (v37 + v65 + 7) & 0xFFFFFFFFFFFFFFF8;
  v67 = (v66 + 15) & 0xFFFFFFFFFFFFFFF8;
  v68 = swift_allocObject();
  sub_1CEFD9F8C(v64, v68 + v65, type metadata accessor for Signpost);
  *(v68 + v66) = v63;
  v69 = (v68 + v67);
  v70 = v142;
  *v69 = v141;
  v69[1] = v70;
  v141 = v68;
  v71 = (v68 + ((v67 + 23) & 0xFFFFFFFFFFFFFFF8));
  v72 = v113;
  *v71 = v112;
  v71[1] = v72;
  v73 = *(v10 + qword_1EDEBBDB0);

  v121 = v73;
  [v73 forceBatchStart];
  v74 = v10;
  v142 = qword_1EDEAE678;
  if (*(v10 + qword_1EDEAE678))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1CF9E7418();
    swift_unknownObjectRelease();
  }

  sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
  *&v143[0] = MEMORY[0x1E69E7CC0];
  sub_1CF042F54(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
  sub_1CEFCCCEC(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0);
  v75 = v123;
  v76 = v125;
  sub_1CF9E77B8();
  v77 = sub_1CF9E73E8();
  (*(v124 + 8))(v75, v76);
  ObjectType = swift_getObjectType();
  v79 = *(v74 + v46);
  v111 = v74;
  v80 = swift_allocObject();
  swift_weakInit();
  v81 = v79;

  v82 = v126;
  sub_1CF042F9C();
  sub_1CEFD5828(v79, v82, sub_1CF480210, v80);

  (*(v127 + 8))(v82, v128);

  v83 = v129;
  sub_1CF9E6478();
  v84 = [objc_opt_self() defaultStore];
  LODWORD(v80) = [v84 sqlDatabaseFlushIntervalMilliseconds];

  v85 = v133;
  *v133 = v80;
  v87 = v135;
  v86 = v136;
  (*(v135 + 104))(v85, *MEMORY[0x1E69E7F38], v136);
  v88 = v130;
  MEMORY[0x1D3868740](v83, v85);
  v89 = *(v87 + 8);
  v89(v85, v86);
  v140 = *(v131 + 8);
  v90 = v83;
  v91 = v132;
  (v140)(v90, v132);
  sub_1CEFD5B64(v85);
  v92 = v134;
  sub_1CEFD5BD8(v134);
  MEMORY[0x1D3869770](v88, v85, v92, ObjectType);
  v89(v92, v86);
  v89(v85, v86);
  (v140)(v88, v91);
  sub_1CF9E7428();
  v93 = v111;
  v94 = *(v111 + v142);
  *(v111 + v142) = v77;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v95 = swift_allocObject();
  v96 = v141;
  *(v95 + 16) = sub_1CF480154;
  *(v95 + 24) = v96;
  v97 = qword_1EC4BFAF0;
  swift_beginAccess();
  v98 = *(v93 + v97);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v93 + v97) = v98;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v98 = sub_1CF1F6920(0, v98[2] + 1, 1, v98);
    *(v93 + v97) = v98;
  }

  v100 = v138;
  v102 = v98[2];
  v101 = v98[3];
  if (v102 >= v101 >> 1)
  {
    v98 = sub_1CF1F6920((v101 > 1), v102 + 1, 1, v98);
  }

  v98[2] = v102 + 1;
  v103 = &v98[2 * v102];
  v103[4] = sub_1CF480240;
  v103[5] = v95;
  *(v93 + v97) = v98;
  swift_endAccess();
  v104 = *(v93 + 160);
  if (v137)
  {
    if (v100)
    {
      *(v104 + 49) = 1;
    }

    else
    {
      *(v104 + 48) = 1;
    }

LABEL_28:
    if (v115)
    {
      if ((*(v93 + 82) & 0x20) != 0)
      {
        swift_unknownObjectRelease();

        *(v93 + qword_1EC4EBD88) = 1;
      }

      else
      {
        [v121 makeNextFlushBarrierFSync];
        swift_unknownObjectRelease();
      }

      v48 = v110;
      sub_1CEFD5278(v139, type metadata accessor for Signpost);
    }

    else
    {
      sub_1CEFD5278(v139, type metadata accessor for Signpost);
      swift_unknownObjectRelease();

      v48 = v110;
    }

    goto LABEL_7;
  }

  if (v100)
  {
    v108 = *(v104 + 40);
    v106 = __OFADD__(v108, 1);
    v109 = v108 + 1;
    if (!v106)
    {
      *(v104 + 40) = v109;
      goto LABEL_28;
    }
  }

  else
  {
    v105 = *(v104 + 32);
    v106 = __OFADD__(v105, 1);
    v107 = v105 + 1;
    if (!v106)
    {
      *(v104 + 32) = v107;
      goto LABEL_28;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_1CF3C4ED0(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, void (*a7)(_OWORD *, void *), uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v154 = a7;
  v155 = a8;
  v128 = a6;
  v150 = a5;
  v151 = a4;
  LODWORD(v131) = a3;
  v130 = a2;
  v129 = a1;
  v135 = *v10;
  v12 = sub_1CF9E6388();
  v148 = *(v12 - 8);
  v149 = v12;
  v13 = *(v148 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v147 = (&v123 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v146 = (&v123 - v16);
  v17 = sub_1CF9E6498();
  v144 = *(v17 - 8);
  v145 = v17;
  v18 = *(v144 + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v142 = &v123 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v143 = &v123 - v21;
  v22 = sub_1CF9E6448();
  v140 = *(v22 - 8);
  v141 = v22;
  v23 = *(v140 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v139 = &v123 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_1CF9E73D8();
  v137 = *(v138 - 8);
  v25 = *(v137 + 64);
  MEMORY[0x1EEE9AC00](v138);
  v136 = &v123 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1CF9E6068();
  v133 = *(v27 - 8);
  v28 = *(v133 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v153 = &v123 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x1EEE9AC00](v30 - 8);
  v34 = &v123 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v36 = &v123 - v35;
  v37 = type metadata accessor for Signpost(0);
  v132 = *(v37 - 8);
  v38 = *(v132 + 64);
  v39 = MEMORY[0x1EEE9AC00](v37);
  v134 = &v123 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v152 = &v123 - v40;
  v41 = sub_1CF9E64A8();
  v42 = *(v41 - 8);
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v45 = (&v123 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = sub_1CF042F4C();
  *v45 = v46;
  (*(v42 + 104))(v45, *MEMORY[0x1E69E8020], v41);
  v47 = v46;
  LOBYTE(v46) = sub_1CF9E64D8();
  v49 = *(v42 + 8);
  v48 = (v42 + 8);
  v49(v45, v41);
  if ((v46 & 1) == 0)
  {
    __break(1u);
LABEL_31:
    swift_once();
    goto LABEL_8;
  }

  v50 = qword_1EDEBBC38;
  v51 = *(v11 + qword_1EDEBBC38);
  v48 = fpfs_adopt_log();
  if (*(v11 + qword_1EDEBBE38) & 1) != 0 || (v11[19] & 1) != 0 || (sub_1CF03BA44())
  {
    sub_1CF2CA194();
    memset(v156, 0, sizeof(v156));
    v157 = 0;
    v52 = swift_allocError();
    v154(v156, v52);
    sub_1CEFCCC44(v156, &unk_1EC4C1B30, &qword_1CFA05300);

LABEL_6:
    v53 = fpfs_adopt_log();

    return;
  }

  v125 = v50;
  if (qword_1EDEAE980 != -1)
  {
    goto LABEL_31;
  }

LABEL_8:
  v124 = a10;
  v123 = a9;
  v127 = qword_1EDEBBE40;
  v54 = v133;
  (*(v133 + 56))(v36, 1, 1, v27);
  v131 = sub_1CF9E7988();
  v130 = v55;
  sub_1CEFCCBDC(v36, v34, &unk_1EC4BED20, &unk_1CFA00700);
  v56 = *(v54 + 48);
  v57 = v56(v34, 1, v27);
  v126 = v48;
  if (v57 == 1)
  {
    v58 = v127;
    v59 = v153;
    sub_1CF9E6048();
    if (v56(v34, 1, v27) != 1)
    {
      sub_1CEFCCC44(v34, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v59 = v153;
    (*(v54 + 32))(v153, v34, v27);
  }

  v60 = v152;
  (*(v54 + 16))(v152, v59, v27);
  v61 = v127;
  *(v60 + *(v37 + 20)) = v127;
  v62 = v60 + *(v37 + 24);
  *v62 = "DB queue wait for flush";
  *(v62 + 8) = 23;
  *(v62 + 16) = 2;
  v63 = v61;
  sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_1CF9FA450;
  *(v64 + 56) = MEMORY[0x1E69E6158];
  *(v64 + 64) = sub_1CEFD51C4();
  v65 = v130;
  *(v64 + 32) = v131;
  *(v64 + 40) = v65;
  sub_1CF9E6028();

  (*(v54 + 8))(v153, v27);
  sub_1CEFCCC44(v36, &unk_1EC4BED20, &unk_1CFA00700);
  v66 = swift_allocObject();
  swift_weakInit();
  v67 = v134;
  sub_1CEFDA214(v60, v134, type metadata accessor for Signpost);
  v68 = (*(v132 + 80) + 48) & ~*(v132 + 80);
  v69 = (v38 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
  v70 = (v69 + 15) & 0xFFFFFFFFFFFFFFF8;
  v71 = swift_allocObject();
  v72 = v135;
  v133 = v135[329];
  v71[2] = v133;
  v132 = v72[330];
  v71[3] = v132;
  v131 = v72[331];
  v71[4] = v131;
  v135 = v72[332];
  v71[5] = v135;
  sub_1CEFD9F8C(v67, v71 + v68, type metadata accessor for Signpost);
  *(v71 + v69) = v66;
  v73 = (v71 + v70);
  v74 = v155;
  *v73 = v154;
  v73[1] = v74;
  v154 = v71;
  v75 = (v71 + ((v70 + 23) & 0xFFFFFFFFFFFFFFF8));
  v76 = v124;
  *v75 = v123;
  v75[1] = v76;
  v77 = *(v11 + qword_1EDEBBDB0);

  [v77 forceBatchStart];
  v153 = qword_1EDEAE678;
  if (*(v11 + qword_1EDEAE678))
  {
    v78 = *(v11 + qword_1EDEAE678);
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1CF9E7418();
    swift_unknownObjectRelease();
  }

  sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
  v79 = sub_1CF042F4C();
  *&v156[0] = MEMORY[0x1E69E7CC0];
  sub_1CF042F54(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0]);
  v80 = v79;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
  sub_1CEFCCCEC(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0);
  v81 = v136;
  v82 = v138;
  sub_1CF9E77B8();
  v83 = sub_1CF9E73E8();

  (*(v137 + 8))(v81, v82);
  v155 = v83;
  ObjectType = swift_getObjectType();
  v85 = *(v11 + v125);
  v86 = swift_allocObject();
  swift_weakInit();
  v87 = swift_allocObject();
  *&v88 = v133;
  *(&v88 + 1) = v132;
  *&v89 = v131;
  *(&v89 + 1) = v135;
  *(v87 + 16) = v88;
  *(v87 + 32) = v89;
  *(v87 + 48) = v86;
  v90 = v85;

  v91 = v139;
  sub_1CF042F9C();
  sub_1CEFD5828(v85, v91, sub_1CF485224, v87);

  (*(v140 + 8))(v91, v141);

  v92 = v142;
  sub_1CF9E6478();
  v93 = [objc_opt_self() defaultStore];
  LODWORD(v86) = [v93 sqlDatabaseFlushIntervalMilliseconds];

  v94 = v146;
  *v146 = v86;
  v96 = v148;
  v95 = v149;
  (*(v148 + 104))(v94, *MEMORY[0x1E69E7F38], v149);
  v97 = v143;
  MEMORY[0x1D3868740](v92, v94);
  v98 = *(v96 + 8);
  v98(v94, v95);
  v148 = *(v144 + 8);
  v99 = v92;
  v100 = v145;
  (v148)(v99, v145);
  v101 = ObjectType;
  v138 = ObjectType;
  sub_1CEFD5B64(v94);
  v102 = v147;
  sub_1CEFD5BD8(v147);
  v103 = v101;
  v104 = v155;
  MEMORY[0x1D3869770](v97, v94, v102, v103);
  v98(v102, v95);
  v98(v94, v95);
  (v148)(v97, v100);
  v105 = v104;
  sub_1CF9E7428();
  v106 = *&v153[v11];
  *&v153[v11] = v105;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v107 = swift_allocObject();
  v108 = v154;
  *(v107 + 16) = sub_1CF485144;
  *(v107 + 24) = v108;
  v109 = qword_1EC4BFAF0;
  swift_beginAccess();
  v110 = *(v11 + v109);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v11 + v109) = v110;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v110 = sub_1CF1F6920(0, v110[2] + 1, 1, v110);
    *(v11 + v109) = v110;
  }

  v113 = v150;
  v112 = v151;
  v48 = v126;
  v115 = v110[2];
  v114 = v110[3];
  if (v115 >= v114 >> 1)
  {
    v110 = sub_1CF1F6920((v114 > 1), v115 + 1, 1, v110);
  }

  v110[2] = v115 + 1;
  v116 = &v110[2 * v115];
  v116[4] = sub_1CF48586C;
  v116[5] = v107;
  *(v11 + v109) = v110;
  swift_endAccess();
  v117 = sub_1CF042760();
  if (v113)
  {
    if (v112)
    {
      *(v117 + 49) = 1;
    }

    else
    {
      *(v117 + 48) = 1;
    }

    goto LABEL_27;
  }

  if (v112)
  {
    v121 = *(v117 + 40);
    v119 = __OFADD__(v121, 1);
    v122 = v121 + 1;
    if (!v119)
    {
      *(v117 + 40) = v122;
LABEL_27:
      if (v128)
      {
        sub_1CF3BCAF0();
        swift_unknownObjectRelease();

        sub_1CEFD5278(v152, type metadata accessor for Signpost);
      }

      else
      {
        sub_1CEFD5278(v152, type metadata accessor for Signpost);
        swift_unknownObjectRelease();
      }

      goto LABEL_6;
    }
  }

  else
  {
    v118 = *(v117 + 32);
    v119 = __OFADD__(v118, 1);
    v120 = v118 + 1;
    if (!v119)
    {
      *(v117 + 32) = v120;
      goto LABEL_27;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_1CF3C5E64(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(__int128 *, uint64_t), uint64_t a5, void (*a6)(__int128 *))
{
  sub_1CF9E7458();
  v10 = type metadata accessor for Signpost(0);
  v11 = *(v10 + 24);
  v12 = *(a2 + *(v10 + 20));
  v13 = *(a2 + v11);
  v14 = *(a2 + v11 + 8);
  v15 = *(a2 + v11 + 16);
  sub_1CF9E6038();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    sub_1CF2CA194();
    v25 = 0u;
    v26 = 0u;
    v27 = 0;
    v19 = swift_allocError();
    a4(&v25, v19);
LABEL_9:
    sub_1CEFCCC44(&v25, &unk_1EC4C1B30, &qword_1CFA05300);
    v21 = v19;
    goto LABEL_10;
  }

  v17 = Strong;
  if ((*(Strong + qword_1EDEBBE38) & 1) != 0 || *(Strong + 152) == 1)
  {
LABEL_8:
    sub_1CF2CA194();
    v25 = 0u;
    v26 = 0u;
    v27 = 0;
    v19 = swift_allocError();
    a4(&v25, v19);

    goto LABEL_9;
  }

  v18 = *(*(Strong + 168) + 16);

  if (fp_task_tracker_is_cancelled(v18))
  {

    goto LABEL_8;
  }

  v20 = *(v17 + 152);

  if (v20)
  {
    goto LABEL_8;
  }

  sub_1CEFCCBDC(a1, &v23, &unk_1EC4C1B30, &qword_1CFA05300);
  if (v24)
  {
    sub_1CF054EA0(&v23, &v25);
    a6(&v25);
    __swift_destroy_boxed_opaque_existential_1(&v25);

    return;
  }

  sub_1CEFCCC44(&v23, &unk_1EC4C1B30, &qword_1CFA05300);
  sub_1CF2CA194();
  v25 = 0u;
  v26 = 0u;
  v27 = 0;
  v22 = swift_allocError();
  a4(&v25, v22);

  sub_1CEFCCC44(&v25, &unk_1EC4C1B30, &qword_1CFA05300);
  v21 = v22;
LABEL_10:
}

void sub_1CF3C6140(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(__int128 *, uint64_t), uint64_t a5, void (*a6)(__int128 *))
{
  sub_1CF9E7458();
  v10 = type metadata accessor for Signpost(0);
  v11 = *(v10 + 24);
  v12 = *(a2 + *(v10 + 20));
  v13 = *(a2 + v11);
  v14 = *(a2 + v11 + 8);
  v15 = *(a2 + v11 + 16);
  sub_1CF9E6038();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    sub_1CF2CA194();
    v23 = 0u;
    v24 = 0u;
    v25 = 0;
    v18 = swift_allocError();
    a4(&v23, v18);
    goto LABEL_7;
  }

  if (*(Strong + qword_1EDEBBE38) & 1) != 0 || (*(Strong + 152) & 1) != 0 || (, v17 = sub_1CF03BA44(), , (v17))
  {
    sub_1CF2CA194();
    v23 = 0u;
    v24 = 0u;
    v25 = 0;
    v18 = swift_allocError();
    a4(&v23, v18);

LABEL_7:
    sub_1CEFCCC44(&v23, &unk_1EC4C1B30, &qword_1CFA05300);
    v19 = v18;
    goto LABEL_8;
  }

  sub_1CEFCCBDC(a1, &v21, &unk_1EC4C1B30, &qword_1CFA05300);
  if (v22)
  {
    sub_1CF054EA0(&v21, &v23);
    a6(&v23);
    __swift_destroy_boxed_opaque_existential_1(&v23);

    return;
  }

  sub_1CEFCCC44(&v21, &unk_1EC4C1B30, &qword_1CFA05300);
  sub_1CF2CA194();
  v23 = 0u;
  v24 = 0u;
  v25 = 0;
  v20 = swift_allocError();
  a4(&v23, v20);

  sub_1CEFCCC44(&v23, &unk_1EC4C1B30, &qword_1CFA05300);
  v19 = v20;
LABEL_8:
}

uint64_t sub_1CF3C6404()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1CF03F7F4();
  }

  return result;
}

uint64_t sub_1CF3C6498(uint64_t a1, uint64_t a2)
{
  v5 = sub_1CF9E6118();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + qword_1EDEBBE38) == 1)
  {
    sub_1CF2CA194();
    swift_allocError();
LABEL_5:
    swift_willThrow();
    return v2;
  }

  v26 = v8;
  if (errorInjectionThrowOnDBQueryEnabled())
  {
    sub_1CF24CD3C();
    swift_allocError();
    *v11 = 0u;
    *(v11 + 16) = 0u;
    *(v11 + 32) = 0u;
    *(v11 + 48) = 9;
    goto LABEL_5;
  }

  v29 = 1;
  v28 = 0;
  v13 = *(v2 + qword_1EDEAE660);
  *(v2 + qword_1EDEAE660) = 0;

  v25[1] = v25;
  v14 = *(v2 + qword_1EDEBBDB0);
  MEMORY[0x1EEE9AC00](v15);
  v25[-8] = &v29;
  v25[-7] = a1;
  v25[-6] = a2;
  v25[-5] = v14;
  LOBYTE(v25[-4]) = 2;
  v25[-3] = &v28;
  v25[-2] = v2;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1CF47FD60;
  *(v16 + 24) = &v25[-10];
  aBlock[4] = sub_1CF033B5C;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CF033B10;
  aBlock[3] = &block_descriptor_137;
  v17 = _Block_copy(aBlock);
  v18 = v14;

  [v18 performWithFlags:12 action:v17];
  _Block_release(v17);
  LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

  if ((v17 & 1) == 0)
  {
    v19 = v28;
    if (v28)
    {
      swift_willThrow();
      v20 = v19;
    }

    else
    {
      if (v29 == 1)
      {
        v21 = fpfs_current_or_default_log();
        sub_1CF9E6128();
        v22 = sub_1CF9E6108();
        v23 = sub_1CF9E7288();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          *v24 = 0;
          _os_log_impl(&dword_1CEFC7000, v22, v23, "batch received after db has been closed will be ignored", v24, 2u);
          MEMORY[0x1D386CDC0](v24, -1, -1);
        }

        else
        {
        }

        (*(v6 + 8))(v10, v26);
      }

      else if (fp_task_tracker_is_cancelled(*(*(v2 + 168) + 16)) || *(v2 + 152) == 1)
      {
      }

      else
      {
        sub_1CF03B4D0();
      }

      v2 = v29;
    }

    return v2;
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF3C6880@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v48 = a4;
  v8 = sub_1CF9E6118();
  v45 = *(v8 - 8);
  v46 = v8;
  v9 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1CF9E75D8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v39 - v17;
  if (*(v4 + qword_1EDEBBE38) == 1)
  {
    sub_1CF2CA194();
    swift_allocError();
    return swift_willThrow();
  }

  if (errorInjectionThrowOnDBQueryEnabled())
  {
    sub_1CF24CD3C();
    swift_allocError();
    *v19 = 0u;
    *(v19 + 16) = 0u;
    *(v19 + 32) = 0u;
    *(v19 + 48) = 9;
    return swift_willThrow();
  }

  v43 = v12;
  v44 = v11;
  v41 = *(a3 - 8);
  (*(v41 + 56))(v18, 1, 1, a3);
  v50 = 0;
  v21 = *(v4 + qword_1EDEAE660);
  *(v4 + qword_1EDEAE660) = 0;

  v42 = &v39;
  v22 = *(v4 + qword_1EDEBBDB0);
  MEMORY[0x1EEE9AC00](v23);
  *(&v39 - 8) = a3;
  *(&v39 - 7) = v18;
  *(&v39 - 6) = a1;
  *(&v39 - 5) = a2;
  *(&v39 - 4) = v22;
  *(&v39 - 24) = 2;
  *(&v39 - 2) = &v50;
  *(&v39 - 1) = v4;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_1CF485108;
  *(v24 + 24) = &v39 - 10;
  aBlock[4] = sub_1CF485B64;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CF033B10;
  aBlock[3] = &block_descriptor_1557;
  v25 = _Block_copy(aBlock);
  v26 = v22;

  [v26 performWithFlags:12 action:v25];
  _Block_release(v25);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v28 = v50;
    if (v50)
    {
      swift_willThrow();
      v29 = v28;

      return (*(v43 + 8))(v18, v44);
    }

    else
    {
      v42 = v26;
      v30 = v43;
      v31 = v44;
      v40 = *(v43 + 16);
      v40(v15, v18, v44);
      v32 = (*(v41 + 48))(v15, 1, a3);
      v33 = *(v30 + 8);
      v33(v15, v31);
      if (v32 == 1)
      {
        v34 = fpfs_current_or_default_log();
        v35 = v47;
        sub_1CF9E6128();
        v36 = sub_1CF9E6108();
        v37 = sub_1CF9E7288();
        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          *v38 = 0;
          _os_log_impl(&dword_1CEFC7000, v36, v37, "batch received after db has been closed will be ignored", v38, 2u);
          MEMORY[0x1D386CDC0](v38, -1, -1);

          (*(v45 + 8))(v47, v46);
        }

        else
        {

          (*(v45 + 8))(v35, v46);
        }
      }

      else
      {
        if ((sub_1CF03BA44() & 1) == 0)
        {
          sub_1CF03F7F4();
        }
      }

      v40(v48, v18, v31);

      return (v33)(v18, v31);
    }
  }

  return result;
}

uint64_t sub_1CF3C6E18(uint64_t a1, _BYTE *a2, void (*a3)(uint64_t *__return_ptr, void **), uint64_t a4, void *a5, char a6, void **a7, uint64_t a8)
{
  v15 = objc_autoreleasePoolPush();
  LOBYTE(a8) = sub_1CF3C6F50(a2, a3, a4, a5, a6, a7, a8);
  objc_autoreleasePoolPop(v15);
  return a8 & 1;
}

uint64_t sub_1CF3C6EAC(uint64_t a1, uint64_t a2, void (*a3)(void **), uint64_t a4, void *a5, char a6, void **a7, uint64_t a8, uint64_t a9)
{
  v15 = objc_autoreleasePoolPush();
  sub_1CF3C7320(a2, a3, a5, a6, a7, a8, a9, &v17);
  objc_autoreleasePoolPop(v15);
  return v17;
}

uint64_t sub_1CF3C6F50(_BYTE *a1, void (*a2)(uint64_t *__return_ptr, void **), uint64_t a3, void *a4, char a5, void **a6, uint64_t a7)
{
  v40 = a7;
  v13 = sub_1CF9E6118();
  v41 = *(v13 - 8);
  v42 = v13;
  v14 = *(v41 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v40 - v18;
  v47 = &type metadata for SQLDatabaseReadWriteAccessor;
  v48 = &off_1F4C17938;
  v45 = a4;
  v46 = a5;
  v20 = a4;
  a2(&v49, &v45);
  if (v7)
  {
    __swift_destroy_boxed_opaque_existential_1(&v45);
    v21 = *a6;
    *a6 = v7;
    v22 = v7;

    v23 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v24 = v7;
    v25 = sub_1CF9E6108();
    v26 = sub_1CF9E72A8();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      swift_getErrorValue();
      v29 = Error.prettyDescription.getter(v44);
      *(v27 + 4) = v29;
      *v28 = v29;
      _os_log_impl(&dword_1CEFC7000, v25, v26, "batch failed (updateBlock), rolling back: %@", v27, 0xCu);
      sub_1CEFCCC44(v28, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v28, -1, -1);
      MEMORY[0x1D386CDC0](v27, -1, -1);
    }

    else
    {
    }

    v17 = v19;
    goto LABEL_9;
  }

  __swift_destroy_boxed_opaque_existential_1(&v45);
  *a1 = 0;
  v30 = *(v40 + qword_1EDEAE660);
  if (v30)
  {
    v31 = v30;
    v32 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v33 = v30;
    v34 = sub_1CF9E6108();
    v35 = sub_1CF9E72A8();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v36 = 138412290;
      swift_getErrorValue();
      v38 = Error.prettyDescription.getter(v43);
      *(v36 + 4) = v38;
      *v37 = v38;
      _os_log_impl(&dword_1CEFC7000, v34, v35, "batch failed (lastTransactionError), rolling back: %@", v36, 0xCu);
      sub_1CEFCCC44(v37, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v37, -1, -1);
      MEMORY[0x1D386CDC0](v36, -1, -1);
    }

    else
    {
    }

LABEL_9:
    (*(v41 + 8))(v17, v42);
    return 0;
  }

  return 1;
}

uint64_t sub_1CF3C7320@<X0>(uint64_t a1@<X0>, void (*a2)(void **)@<X1>, void *a3@<X3>, char a4@<W4>, void **a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, char *a8@<X8>)
{
  v56 = a8;
  v50 = a6;
  v51 = a5;
  v49 = a1;
  v12 = sub_1CF9E6118();
  v53 = *(v12 - 8);
  v54 = v12;
  v13 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v52 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v48 - v16;
  v18 = sub_1CF9E75D8();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v48 - v21;
  v61 = &type metadata for SQLDatabaseReadWriteAccessor;
  v62 = &off_1F4C17938;
  v59 = a3;
  v60 = a4;
  v23 = a3;
  v24 = v55;
  a2(&v59);
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_1(&v59);
    v25 = *v51;
    *v51 = v24;
    v26 = v24;

    v27 = fpfs_current_or_default_log();
    v28 = v52;
    sub_1CF9E6128();
    v29 = v24;
    v30 = sub_1CF9E6108();
    v31 = sub_1CF9E72A8();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138412290;
      swift_getErrorValue();
      v34 = Error.prettyDescription.getter(v58);
      *(v32 + 4) = v34;
      *v33 = v34;
      _os_log_impl(&dword_1CEFC7000, v30, v31, "batch failed (updateBlock), rolling back: %@", v32, 0xCu);
      sub_1CEFCCC44(v33, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v33, -1, -1);
      MEMORY[0x1D386CDC0](v32, -1, -1);
    }

    else
    {
    }

    v47 = v28;
LABEL_11:
    result = (*(v53 + 8))(v47, v54);
    v35 = 0;
    goto LABEL_12;
  }

  __swift_destroy_boxed_opaque_existential_1(&v59);
  v35 = 1;
  (*(*(a7 - 8) + 56))(v22, 0, 1, a7);
  result = (*(v19 + 40))(v49, v22, v18);
  v37 = *(v50 + qword_1EDEAE660);
  if (v37)
  {
    v38 = v37;
    v39 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v40 = v37;
    v41 = v17;
    v42 = sub_1CF9E6108();
    v43 = sub_1CF9E72A8();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v44 = 138412290;
      swift_getErrorValue();
      v46 = Error.prettyDescription.getter(v57);
      *(v44 + 4) = v46;
      *v45 = v46;
      _os_log_impl(&dword_1CEFC7000, v42, v43, "batch failed (lastTransactionError), rolling back: %@", v44, 0xCu);
      sub_1CEFCCC44(v45, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v45, -1, -1);
      MEMORY[0x1D386CDC0](v44, -1, -1);
    }

    else
    {
    }

    v47 = v41;
    goto LABEL_11;
  }

LABEL_12:
  *v56 = v35;
  return result;
}

id sub_1CF3C77C8@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if (!a1)
  {
    v13 = *(v2 + qword_1EC4EBCD8);
    if (v13)
    {
      v5 = *(v2 + qword_1EC4EBCD8 + 8);
      v6 = v13;
      v7 = "DB queue ro fast wait";
      v8 = 1;
      v9 = 21;
      v10 = 16;
      v11 = v5;
      v12 = "DB queue ro fast";
      goto LABEL_8;
    }

LABEL_7:
    v5 = *(v2 + qword_1EDEBBDB0);
    v11 = sub_1CF042F4C();
    v8 = 0;
    v7 = "DB queue wait";
    v9 = 13;
    v10 = 8;
    v6 = v5;
    v12 = "DB queue";
    goto LABEL_8;
  }

  if (a1 != 1)
  {
    goto LABEL_7;
  }

  v4 = *(v2 + qword_1EC4EBCD0);
  if (!v4)
  {
    goto LABEL_7;
  }

  v5 = *(v2 + qword_1EC4EBCD0 + 8);
  v6 = v4;
  v7 = "DB queue ro slow wait";
  v8 = 1;
  v9 = 21;
  v10 = 16;
  v11 = v5;
  v12 = "DB queue ro slow";
LABEL_8:
  result = v5;
  *a2 = v6;
  *(a2 + 8) = v11;
  *(a2 + 16) = v12;
  *(a2 + 24) = v10;
  *(a2 + 32) = 2;
  *(a2 + 40) = v7;
  *(a2 + 48) = v9;
  *(a2 + 56) = 2;
  *(a2 + 57) = v8;
  return result;
}

void sub_1CF3C78FC(char a1, uint64_t a2, void (*a3)(id *))
{
  v19 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = *(a2 + qword_1EC4EBCD0);
      if (v5)
      {
        goto LABEL_4;
      }
    }

LABEL_8:
    v8 = *(a2 + qword_1EDEBBDB0);
    v11 = 0;
    goto LABEL_9;
  }

  v5 = *(a2 + qword_1EC4EBCD8);
  if (!v5)
  {
    goto LABEL_8;
  }

LABEL_4:
  v6 = v5;
  v17 = sub_1CF385054;
  v18 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_1CEFE7548;
  v16 = &block_descriptor_1347;
  v7 = _Block_copy(&aBlock);
  v8 = v6;

  aBlock = 0;
  v9 = [v8 executeSwift:v7 error:&aBlock];
  _Block_release(v7);
  v10 = aBlock;
  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
  }

  if ((v9 & 1) == 0)
  {
    sub_1CF9E57F8();

    swift_willThrow();
    goto LABEL_11;
  }

  v11 = 1;
LABEL_9:
  v16 = &type metadata for SQLDatabaseReadOnlyAccessor;
  v17 = &off_1F4C179D8;
  aBlock = v8;
  LOBYTE(v14) = a1;
  v8 = v8;
  a3(&aBlock);
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  sub_1CF3C865C(v11, v8);
LABEL_11:

  v12 = *MEMORY[0x1E69E9840];
}

void sub_1CF3C7B2C(char a1, uint64_t a2, void (*a3)(id *))
{
  v19 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = *(a2 + qword_1EC4EBCD0);
      if (v5)
      {
        goto LABEL_4;
      }
    }

LABEL_8:
    v8 = *(a2 + qword_1EDEBBDB0);
    v11 = 0;
    goto LABEL_9;
  }

  v5 = *(a2 + qword_1EC4EBCD8);
  if (!v5)
  {
    goto LABEL_8;
  }

LABEL_4:
  v6 = v5;
  v17 = sub_1CF385054;
  v18 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_1CEFE7548;
  v16 = &block_descriptor_18;
  v7 = _Block_copy(&aBlock);
  v8 = v6;

  aBlock = 0;
  v9 = [v8 executeSwift:v7 error:&aBlock];
  _Block_release(v7);
  v10 = aBlock;
  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
  }

  if ((v9 & 1) == 0)
  {
    sub_1CF9E57F8();

    swift_willThrow();
    goto LABEL_11;
  }

  v11 = 1;
LABEL_9:
  v16 = &type metadata for SQLDatabaseReadOnlyAccessor;
  v17 = &off_1F4C179D8;
  aBlock = v8;
  LOBYTE(v14) = a1;
  v8 = v8;
  a3(&aBlock);
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  sub_1CF3C865C(v11, v8);
LABEL_11:

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1CF3C7D54(char a1, uint64_t a2, void (*a3)(char *__return_ptr, id *), char a4)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a1 == 1)
    {
      v8 = *(a2 + qword_1EC4EBCD0);
      if (v8)
      {
        goto LABEL_4;
      }
    }

LABEL_8:
    v11 = *(a2 + qword_1EDEBBDB0);
    v14 = 0;
    goto LABEL_9;
  }

  v8 = *(a2 + qword_1EC4EBCD8);
  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_4:
  v9 = v8;
  v22 = sub_1CF385054;
  v23 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v19 = 1107296256;
  v20 = sub_1CEFE7548;
  v21 = &block_descriptor_1485;
  v10 = _Block_copy(&aBlock);
  v11 = v9;

  aBlock = 0;
  v12 = [v11 executeSwift:v10 error:&aBlock];
  _Block_release(v10);
  v13 = aBlock;
  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
  }

  if ((v12 & 1) == 0)
  {
    sub_1CF9E57F8();

    swift_willThrow();
    goto LABEL_13;
  }

  v14 = 1;
LABEL_9:
  v21 = &type metadata for SQLDatabaseReadOnlyAccessor;
  v22 = &off_1F4C179D8;
  aBlock = v11;
  LOBYTE(v19) = a1;
  v11 = v11;
  a3(&v17, &aBlock);
  if (v4)
  {
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
    sub_1CF3C865C(v14, v11);
LABEL_13:

    goto LABEL_14;
  }

  a4 = v17;
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  sub_1CF3C865C(v14, v11);

LABEL_14:
  v15 = *MEMORY[0x1E69E9840];
  return a4 & 1;
}

uint64_t sub_1CF3C7FA4(char a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, id *), uint64_t a4)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a1 == 1)
    {
      v8 = *(a2 + qword_1EC4EBCD0);
      if (v8)
      {
        goto LABEL_4;
      }
    }

LABEL_8:
    v11 = *(a2 + qword_1EDEBBDB0);
    v14 = 0;
    goto LABEL_9;
  }

  v8 = *(a2 + qword_1EC4EBCD8);
  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_4:
  v9 = v8;
  v22 = sub_1CF385054;
  v23 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v19 = 1107296256;
  v20 = sub_1CEFE7548;
  v21 = &block_descriptor_1617;
  v10 = _Block_copy(&aBlock);
  v11 = v9;

  aBlock = 0;
  v12 = [v11 executeSwift:v10 error:&aBlock];
  _Block_release(v10);
  v13 = aBlock;
  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
  }

  if ((v12 & 1) == 0)
  {
    sub_1CF9E57F8();

    swift_willThrow();
    goto LABEL_13;
  }

  v14 = 1;
LABEL_9:
  v21 = &type metadata for SQLDatabaseReadOnlyAccessor;
  v22 = &off_1F4C179D8;
  aBlock = v11;
  LOBYTE(v19) = a1;
  v11 = v11;
  a3(&v17, &aBlock);
  if (v4)
  {
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
    sub_1CF3C865C(v14, v11);
LABEL_13:

    goto LABEL_14;
  }

  a4 = v17;
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  sub_1CF3C865C(v14, v11);

LABEL_14:
  v15 = *MEMORY[0x1E69E9840];
  return a4;
}

uint64_t sub_1CF3C81F4(char a1, uint64_t a2, void (*a3)(void *__return_ptr, id *), uint64_t a4)
{
  v23[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a1 == 1)
    {
      v8 = *(a2 + qword_1EC4EBCD0);
      if (v8)
      {
        goto LABEL_4;
      }
    }

LABEL_8:
    v11 = *(a2 + qword_1EDEBBDB0);
    v14 = 0;
    goto LABEL_9;
  }

  v8 = *(a2 + qword_1EC4EBCD8);
  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_4:
  v9 = v8;
  v21 = sub_1CF385054;
  v22 = 0;
  v17 = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = sub_1CEFE7548;
  v20 = &block_descriptor_1614;
  v10 = _Block_copy(&v17);
  v11 = v9;

  v17 = 0;
  v12 = [v11 executeSwift:v10 error:&v17];
  _Block_release(v10);
  v13 = v17;
  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
  }

  if ((v12 & 1) == 0)
  {
    sub_1CF9E57F8();

    swift_willThrow();
    goto LABEL_13;
  }

  v14 = 1;
LABEL_9:
  v20 = &type metadata for SQLDatabaseReadOnlyAccessor;
  v21 = &off_1F4C179D8;
  v17 = v11;
  LOBYTE(v18) = a1;
  v11 = v11;
  a3(v23, &v17);
  if (v4)
  {
    __swift_destroy_boxed_opaque_existential_1(&v17);
    sub_1CF3C865C(v14, v11);
LABEL_13:

    goto LABEL_14;
  }

  a4 = v23[0];
  __swift_destroy_boxed_opaque_existential_1(&v17);
  sub_1CF3C865C(v14, v11);

LABEL_14:
  v15 = *MEMORY[0x1E69E9840];
  return a4;
}

void sub_1CF3C8444(char a1, void (*a2)(id *))
{
  v21 = *MEMORY[0x1E69E9840];
  sub_1CF3C77C8(a1, &aBlock);
  v4 = aBlock;
  v5 = v20;

  if (v5 == 1)
  {
    v18 = sub_1CF385054;
    v19 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v15 = 1107296256;
    v16 = sub_1CEFE7548;
    v17 = &block_descriptor_1550;
    v6 = _Block_copy(&aBlock);
    v7 = v4;

    aBlock = 0;
    v8 = [v7 executeSwift:v6 error:&aBlock];
    _Block_release(v6);
    v9 = aBlock;
    if (swift_isEscapingClosureAtFileLocation())
    {
      __break(1u);
    }

    if ((v8 & 1) == 0)
    {
      sub_1CF9E57F8();

      swift_willThrow();
      goto LABEL_8;
    }
  }

  else
  {
    v10 = v4;
  }

  v17 = &type metadata for SQLDatabaseReadOnlyAccessor;
  v18 = &off_1F4C179D8;
  aBlock = v4;
  LOBYTE(v15) = a1;
  v11 = v4;
  a2(&aBlock);
  if (!v13)
  {
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
    sub_1CF3C865C(v5, v11);

    goto LABEL_10;
  }

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  sub_1CF3C865C(v5, v11);
LABEL_8:

LABEL_10:
  v12 = *MEMORY[0x1E69E9840];
}

void sub_1CF3C865C(char a1, void *a2)
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    aBlock[4] = sub_1CF385040;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CEFE7548;
    aBlock[3] = &block_descriptor_4;
    v3 = _Block_copy(aBlock);

    aBlock[0] = 0;
    v4 = [a2 executeSwift:v3 error:aBlock];
    _Block_release(v3);
    v5 = aBlock[0];
    if (swift_isEscapingClosureAtFileLocation())
    {
      __break(1u);
    }

    if (!v4)
    {
      v6 = sub_1CF9E57F8();

      swift_willThrow();
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1CF3C87A8(void (*a1)(void **))
{
  v3 = *(v1 + qword_1EDEBBDB0);
  v8 = &type metadata for SQLDatabaseReadWriteAccessor;
  v9 = &off_1F4C17938;
  v6 = v3;
  v7 = 2;
  v4 = v3;
  a1(&v6);

  return __swift_destroy_boxed_opaque_existential_1(&v6);
}

void sub_1CF3C8850(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v19 = objc_autoreleasePoolPush();
  sub_1CF3C8910(v9, a5, a2, a3, a4, a1, a6, a7, a9, a8, &v20);
  objc_autoreleasePoolPop(v19);
}

void sub_1CF3C8910(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, void *a11)
{
  v77 = a9;
  v75 = a7;
  v76 = a8;
  v87 = a6;
  v88 = a5;
  v15 = sub_1CF9E6068();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v67 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v56 - v24;
  v26 = type metadata accessor for Signpost(0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26);
  v60 = &v56 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(a1 + qword_1EDEBBC38);
  v70 = fpfs_adopt_log();
  v74 = a2;
  v72 = a1;
  sub_1CF3C77C8(a2, &v79);
  v69 = v80;
  v65 = v81;
  v64 = v82;
  v63 = v83;
  v62 = v84;
  v61 = v85;
  v59 = v86;

  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v66 = a10;
  v30 = qword_1EDEBBE40;
  (*(v16 + 56))(v25, 1, 1, v15);
  v79 = 0x61657220636E7973;
  v80 = 0xEA00000000002064;
  v71 = a3;
  v73 = a4;
  v31 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v31);

  v58 = v79;
  v57 = v80;
  v68 = v25;
  sub_1CEFCCBDC(v25, v22, &unk_1EC4BED20, &unk_1CFA00700);
  v32 = *(v16 + 48);
  v33 = v16;
  if (v32(v22, 1, v15) == 1)
  {
    v34 = v30;
    v35 = v67;
    sub_1CF9E6048();
    v36 = v32(v22, 1, v15);
    v37 = v35;
    v33 = v16;
    if (v36 != 1)
    {
      sub_1CEFCCC44(v22, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v37 = v67;
    (*(v16 + 32))(v67, v22, v15);
  }

  v56 = v15;
  v38 = v60;
  (*(v33 + 16))(v60, v37, v15);
  *(v38 + *(v26 + 20)) = v30;
  v39 = v38 + *(v26 + 24);
  v40 = v61;
  *v39 = v62;
  *(v39 + 8) = v40;
  *(v39 + 16) = v59;
  v41 = v30;
  sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1CF9FA450;
  *(v42 + 56) = MEMORY[0x1E69E6158];
  *(v42 + 64) = sub_1CEFD51C4();
  v43 = v57;
  *(v42 + 32) = v58;
  *(v42 + 40) = v43;
  v54 = v42;
  v53 = 2;
  v52 = 2;
  sub_1CF9E6028();

  (*(v33 + 8))(v37, v56);
  v44 = sub_1CEFCCC44(v68, &unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v44);
  v45 = v66;
  *(&v56 - 12) = v66;
  *(&v56 - 11) = v38;
  v46 = v64;
  *(&v56 - 10) = v65;
  *(&v56 - 9) = v46;
  *(&v56 - 64) = v63;
  v47 = v73;
  *(&v56 - 7) = v71;
  *(&v56 - 6) = v47;
  *(&v56 - 40) = v88;
  v52 = v72;
  v53 = v74;
  v54 = v75;
  v55 = v76;
  v48 = v78;
  v49 = v69;
  OS_dispatch_queue.asyncAndWaitWithLogs<A>(_:quiet:function:block:)(0, v87 & 1, "syncRead(quiet:function:mode:block:)", 36, 2, sub_1CF485094, (&v56 - 14), v45, v77);

  sub_1CEFD5278(v38, type metadata accessor for Signpost);
  v50 = v70;
  v51 = fpfs_adopt_log();

  if (v48)
  {
    *a11 = v48;
  }
}

uint64_t sub_1CF3C8F60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X5>, int a6@<W6>, void *a7@<X7>, uint64_t a8@<X8>, unsigned __int8 a9, uint64_t a10, uint64_t a11, unint64_t a12)
{
  v58 = a2;
  LODWORD(v53) = a6;
  v49 = a5;
  v60 = a4;
  v59 = a3;
  v56 = a8;
  v57 = a7;
  v55 = a9;
  v54 = *a7;
  v13 = sub_1CF9E6068();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v63 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v48 - v22;
  v24 = type metadata accessor for Signpost(0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v48 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF9E7458();
  v28 = *(v24 + 24);
  v29 = *(a1 + *(v24 + 20));
  v30 = *(a1 + v28);
  v31 = *(a1 + v28 + 8);
  v32 = *(a1 + v28 + 16);
  sub_1CF9E6038();
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v52 = a11;
  v50 = a12;
  v51 = a10;
  v33 = qword_1EDEBBE40;
  (*(v14 + 56))(v23, 1, 1, v13);
  v61 = 0x61657220636E7973;
  v62 = 0xEA00000000002064;
  v34 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v34);

  v48 = v62;
  v49 = v61;
  v53 = v23;
  sub_1CEFCCBDC(v23, v20, &unk_1EC4BED20, &unk_1CFA00700);
  v35 = *(v14 + 48);
  if (v35(v20, 1, v13) == 1)
  {
    v36 = v33;
    sub_1CF9E6048();
    if (v35(v20, 1, v13) != 1)
    {
      sub_1CEFCCC44(v20, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v14 + 32))(v63, v20, v13);
  }

  (*(v14 + 16))(v27, v63, v13);
  *&v27[*(v24 + 20)] = v33;
  v37 = &v27[*(v24 + 24)];
  v38 = v59;
  *v37 = v58;
  *(v37 + 1) = v38;
  v37[16] = v60;
  v39 = v33;
  sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1CF9FA450;
  *(v40 + 56) = MEMORY[0x1E69E6158];
  *(v40 + 64) = sub_1CEFD51C4();
  v41 = v48;
  *(v40 + 32) = v49;
  *(v40 + 40) = v41;
  v47 = v40;
  LOBYTE(v46) = 2;
  v45 = 2;
  sub_1CF9E6028();

  (*(v14 + 8))(v63, v13);
  v42 = sub_1CEFCCC44(v53, &unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v42);
  v43 = v54;
  *(&v48 - 4) = *(v54 + 2632);
  *(&v48 - 6) = v50;
  *(&v48 - 5) = *(v43 + 2648);
  sub_1CF3C8444(v55, sub_1CF4850E0);
  sub_1CF9E7458();
  sub_1CF9E6038();
  return sub_1CEFD5278(v27, type metadata accessor for Signpost);
}

uint64_t sub_1CF3C9494(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  sub_1CF9E7458();
  v6 = type metadata accessor for Signpost(0);
  v7 = *(v6 + 24);
  v8 = *(a2 + *(v6 + 20));
  v9 = *(a2 + v7);
  v10 = *(a2 + v7 + 8);
  v11 = *(a2 + v7 + 16);
  sub_1CF9E6038();
  return a3(a1);
}

uint64_t sub_1CF3C9514(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, unsigned __int8 a9, uint64_t a10, uint64_t a11)
{
  v53 = a8;
  v54 = a2;
  LODWORD(v48) = a7;
  v56 = a4;
  v55 = a3;
  v52 = a9;
  v12 = sub_1CF9E6068();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v46 - v22;
  v24 = type metadata accessor for Signpost(0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v46 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF9E7458();
  v28 = *(v24 + 24);
  v29 = *(a1 + *(v24 + 20));
  v30 = *(a1 + v28);
  v31 = *(a1 + v28 + 8);
  v32 = *(a1 + v28 + 16);
  sub_1CF9E6038();
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v49 = a10;
  v50 = a11;
  v33 = qword_1EDEBBE40;
  (*(v13 + 56))(v23, 1, 1, v12);
  v57 = 0x657220636E797361;
  v58 = 0xEB00000000206461;
  v34 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v34);

  v47 = v58;
  v48 = v57;
  sub_1CEFCCBDC(v23, v20, &unk_1EC4BED20, &unk_1CFA00700);
  v35 = *(v13 + 48);
  v36 = v35(v20, 1, v12);
  v51 = v23;
  if (v36 == 1)
  {
    v37 = v33;
    sub_1CF9E6048();
    if (v35(v20, 1, v12) != 1)
    {
      sub_1CEFCCC44(v20, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v13 + 32))(v16, v20, v12);
  }

  (*(v13 + 16))(v27, v16, v12);
  *&v27[*(v24 + 20)] = v33;
  v38 = &v27[*(v24 + 24)];
  v39 = v16;
  v40 = v55;
  *v38 = v54;
  *(v38 + 1) = v40;
  v38[16] = v56;
  v41 = v33;
  sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1CF9FA450;
  *(v42 + 56) = MEMORY[0x1E69E6158];
  *(v42 + 64) = sub_1CEFD51C4();
  v43 = v47;
  *(v42 + 32) = v48;
  *(v42 + 40) = v43;
  v48 = v41;
  sub_1CF9E6028();

  (*(v13 + 8))(v39, v12);
  v44 = sub_1CEFCCC44(v51, &unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v44);
  sub_1CF3C8444(v52, sub_1CF480240);
  sub_1CF9E7458();
  sub_1CF9E6038();
  return sub_1CEFD5278(v27, type metadata accessor for Signpost);
}