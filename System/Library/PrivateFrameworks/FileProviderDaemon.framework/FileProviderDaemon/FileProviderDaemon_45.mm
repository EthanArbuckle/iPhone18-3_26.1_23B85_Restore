uint64_t sub_1CF4BABE0(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000089, 0x80000001CFA4ECF0);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000042, 0x80000001CFA4ED80);
  return 0;
}

id sub_1CF4BAC84(void *a1, void *a2)
{
  v30 = a2;
  v3 = sub_1CF9E6118();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  *&v6 = MEMORY[0x1EEE9AC00](v3).n128_u64[0];
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 integerAtIndex_];
  v10 = (v9 > 4) | (8u >> v9);
  if (v9 <= 4)
  {
    v11 = 0x304020100uLL >> (8 * v9);
  }

  else
  {
    v11 = 4;
  }

  v12 = [a1 BOOLAtIndex_];
  result = [a1 unsignedLongAtIndex_];
  if (v10)
  {
    goto LABEL_5;
  }

  if (!v12)
  {
    if (v11 <= 1u)
    {
      if (v11)
      {
        v30[4] = result;
        return result;
      }

      goto LABEL_29;
    }

    if (v11 == 2)
    {
      v30[7] = result;
      return result;
    }

LABEL_36:
    v30[6] = result;
    return result;
  }

  if (v11 <= 1u)
  {
    if (v11)
    {
      v30[5] = result;
      return result;
    }

LABEL_29:
    v27 = result;
    v28 = [a1 BOOLAtIndex_];
    result = [a1 unsignedLongAtIndex_];
    if (v12)
    {
      if (v28)
      {
        v30[3] = v27;
      }

      else
      {
        v30[1] = v27;
      }
    }

    else
    {
      v29 = v30;
      if (v28)
      {
        v30[2] = v27;
        v29[9] = result;
      }

      else
      {
        *v30 = v27;
        v29[8] = result;
      }
    }

    return result;
  }

  if (v11 != 2)
  {
    goto LABEL_36;
  }

LABEL_5:
  v14 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v15 = sub_1CF9E6108();
  v16 = sub_1CF9E72A8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v31 = v18;
    *v17 = 136315138;
    v19 = 0xE300000000000000;
    v20 = 6516580;
    v21 = 0xE700000000000000;
    v22 = 0x6B6E696C6D7973;
    if (v11 != 2)
    {
      v22 = 0x7361696C61;
      v21 = 0xE500000000000000;
    }

    if (v11)
    {
      v20 = 7498084;
      v19 = 0xE300000000000000;
    }

    if (v11 <= 1u)
    {
      v23 = v20;
    }

    else
    {
      v23 = v22;
    }

    if (v11 > 1u)
    {
      v19 = v21;
    }

    if (v10)
    {
      v24 = 7104878;
    }

    else
    {
      v24 = v23;
    }

    if (v10)
    {
      v25 = 0xE300000000000000;
    }

    else
    {
      v25 = v19;
    }

    v26 = sub_1CEFD0DF0(v24, v25, &v31);

    *(v17 + 4) = v26;
    _os_log_impl(&dword_1CEFC7000, v15, v16, "Invalid object: %s cannot be dataless", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x1D386CDC0](v18, -1, -1);
    MEMORY[0x1D386CDC0](v17, -1, -1);
  }

  return (*(v4 + 8))(v8, v3);
}

uint64_t sub_1CF4BAFF8(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000036, 0x80000001CFA4EC50);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000038, 0x80000001CFA4EC90);
  v3 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v3);

  MEMORY[0x1D3868CC0](0xD00000000000001ELL, 0x80000001CFA4ECD0);
  return 0;
}

uint64_t sub_1CF4BB0F0@<X0>(void *a1@<X0>, int a2@<W1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, void *a6@<X8>)
{
  v101 = a5;
  v103 = a3;
  LODWORD(v97) = a2;
  v96 = a1;
  v10 = sub_1CF9E6068();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v98 = (&v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v85 - v19;
  v21 = type metadata accessor for Signpost(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v102 = v6;
  if (v6[32] != 1)
  {
    sub_1CF5127A8("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/SQLSnapshot.swift", 130, 2, 3788);
  }

  v99 = v7;
  v104 = a4;
  v95 = a6;
  v105 = &v85 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v24 = qword_1EDEBBE40;
  (*(v11 + 56))(v20, 1, 1, v10);
  sub_1CEFE74D8(v20, v17);
  v25 = *(v11 + 48);
  v26 = v25(v17, 1, v10);
  v27 = v98;
  if (v26 == 1)
  {
    v28 = v24;
    sub_1CF9E6048();
    if (v25(v17, 1, v10) != 1)
    {
      sub_1CEFCCC44(v17, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v11 + 32))(v98, v17, v10);
  }

  v29 = v105;
  (*(v11 + 16))(v105, v27, v10);
  *(v29 + *(v21 + 20)) = v24;
  v30 = v29 + *(v21 + 24);
  *v30 = "SQLDB: building FP telemetry report";
  *(v30 + 8) = 35;
  *(v30 + 16) = 2;
  v31 = v24;
  v32 = v27;
  v33 = v31;
  sub_1CF9E7468();
  v100 = v33;
  sub_1CF9E6038();
  (*(v11 + 8))(v32, v10);
  v34 = sub_1CEFCCC44(v20, &unk_1EC4BED20, &unk_1CFA00700);
  v35 = MEMORY[0x1EEE9AC00](v34);
  v36 = v104;
  v37 = v101;
  v38 = v102;
  *(&v85 - 4) = v104;
  *(&v85 - 3) = v37;
  *(&v85 - 2) = v38;
  v39 = v37[3];
  v40 = v99;
  v41 = v39(sub_1CF4C0C04, v35);
  if (!v40)
  {
    v42 = v41;
    v43 = [v41 next];
    v44 = v43;
    v99 = &v85;
    v45 = MEMORY[0x1EEE9AC00](v43);
    *(&v85 - 4) = v36;
    *(&v85 - 3) = v37;
    *(&v85 - 2) = v38;
    v46 = v39(sub_1CF4C0C10, v45);
    v98 = v39;
    v94 = v42;
    v93 = v44;
    v47 = [v46 next];
    if (v47)
    {
      v92 = [v46 unsignedLongLongAtIndex_];
      v91 = [v46 unsignedLongLongAtIndex_];
      v90 = [v46 unsignedLongLongAtIndex_];
      v48 = [v46 unsignedLongLongAtIndex_];
      v37 = v101;
      v47 = [v46 unsignedLongLongAtIndex_];
      v89 = v47;
    }

    else
    {
      v90 = 0;
      v91 = 0;
      v48 = 0;
      v92 = 0;
      v89 = 0;
    }

    v49 = v102;
    v50 = v96;
    if (v97)
    {
      v102 = v48;
      v103 = 0;
      v96 = 0;
    }

    else
    {
      v53 = MEMORY[0x1EEE9AC00](v47);
      *(&v85 - 4) = v104;
      *(&v85 - 3) = v37;
      *(&v85 - 2) = v49;
      *(&v85 - 1) = v50;
      v54 = v98(sub_1CF4C0C40, v53);
      v58 = v54;
      v59 = [v54 next];
      v99 = v58;
      if (v59)
      {
        v59 = [v58 unsignedLongLongAtIndex_];
        v103 = v59;
      }

      else
      {
        v103 = 0;
      }

      v75 = MEMORY[0x1EEE9AC00](v59);
      *(&v85 - 4) = v104;
      *(&v85 - 3) = v37;
      *(&v85 - 2) = v49;
      *(&v85 - 1) = v50;
      v76 = v98(sub_1CF4C0C4C, v75);
      v77 = v76;
      if ([v76 next])
      {
        v96 = [v77 unsignedLongLongAtIndex_];
      }

      else
      {
        v96 = 0;
      }

      v102 = v48;
    }

    v51 = MEMORY[0x1EEE9AC00](v47);
    *(&v85 - 4) = v104;
    *(&v85 - 3) = v37;
    *(&v85 - 2) = v49;
    v52 = v98(sub_1CF4C0C1C, v51);
    v55 = v52;
    v56 = [v52 next];
    if (v56)
    {
      v56 = [v55 unsignedLongLongAtIndex_];
      v57 = v56;
    }

    else
    {
      v57 = 0;
    }

    if (v97)
    {
      v104 = v57;
      v97 = 0;
      v60 = 0;
      v61 = v55;
      v62 = v93;
      v63 = v94;
      v65 = v91;
      v64 = v92;
LABEL_23:

      sub_1CF9E7458();
      v66 = v105;
      sub_1CF9E6038();
      result = sub_1CF4C0A48(v66, type metadata accessor for Signpost);
      v68 = v95;
      v69 = v90;
      *v95 = v65;
      v68[1] = v69;
      v68[2] = v102;
      *(v68 + 24) = v62;
      v70 = v89;
      v68[4] = v64;
      v68[5] = v70;
      v71 = v96;
      v68[6] = v103;
      v68[7] = v71;
      v72 = v97;
      v68[8] = v104;
      v68[9] = v72;
      v68[10] = v60;
      return result;
    }

    v88 = v55;
    v73 = MEMORY[0x1EEE9AC00](v56);
    *(&v85 - 4) = v104;
    *(&v85 - 3) = v37;
    *(&v85 - 2) = v49;
    *(&v85 - 1) = v50;
    v74 = v98(sub_1CF4C0C28, v73);
    v87 = 0;
    v78 = v74;
    v79 = [v74 next];
    v86 = v78;
    if (v79)
    {
      v79 = [v78 unsignedLongLongAtIndex_];
      v97 = v79;
    }

    else
    {
      v97 = 0;
    }

    v80 = v88;
    v99 = &v85;
    v81 = MEMORY[0x1EEE9AC00](v79);
    v82 = v101;
    *(&v85 - 4) = v104;
    *(&v85 - 3) = v82;
    *(&v85 - 2) = v49;
    *(&v85 - 1) = v50;
    v83 = v87;
    v84 = v98(sub_1CF4C0C34, v81);
    if (!v83)
    {
      v61 = v84;
      v104 = v57;
      if ([v84 next])
      {
        v101 = [v61 unsignedLongLongAtIndex_];
      }

      else
      {
        v101 = 0;
      }

      v62 = v93;
      v65 = v91;
      v64 = v92;

      v63 = v88;
      v46 = v86;
      v60 = v101;
      goto LABEL_23;
    }

    v29 = v105;
  }

  sub_1CF9E7458();
  sub_1CF9E6038();
  return sub_1CF4C0A48(v29, type metadata accessor for Signpost);
}

unint64_t sub_1CF4BBB48(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(*a2 + 776);
  v6 = *(*a2 + 760);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v20 - v10;
  v20 = 0;
  v21 = 0xE000000000000000;
  sub_1CF9E7948();

  v20 = 0xD000000000000010;
  v21 = 0x80000001CFA40230;
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0x692045524548570ALL, 0xEC000000203D2064);
  sub_1CF046AB4();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = (*(*(AssociatedConformanceWitness + 8) + 32))(a1, AssociatedTypeWitness);
  v15 = v14;
  (*(v8 + 8))(v11, AssociatedTypeWitness);
  MEMORY[0x1D3868CC0](v13, v15);

  MEMORY[0x1D3868CC0](0x20444E4120, 0xE500000000000000);
  v16 = *(v4 + 768);
  v17 = *(v4 + 784);
  v18 = sub_1CF4BFA00(0, 0xE000000000000000, xmmword_1CFA02F50);
  MEMORY[0x1D3868CC0](v18);

  return v20;
}

uint64_t sub_1CF4BBDAC(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD0000000000001B9, 0x80000001CFA4EA60);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA4D200);
  v3 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v3);

  return 0;
}

uint64_t sub_1CF4BBE84(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000006CLL, 0x80000001CFA4E810);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA4A7A0);
  if (*(a2 + 32))
  {
    v6 = 20550;
  }

  else
  {
    v6 = 21318;
  }

  MEMORY[0x1D3868CC0](v6, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD00000000000001FLL, 0x80000001CFA4E7B0);
  v7 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v7);

  MEMORY[0x1D3868CC0](0xD000000000000017, 0x80000001CFA4E880);
  v8 = [a1 bindLongParameter_];
  v9 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v11 = v10;

  MEMORY[0x1D3868CC0](v9, v11);

  return 0;
}

uint64_t sub_1CF4BC018(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000074, 0x80000001CFA4E730);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA4A7A0);
  if (*(a2 + 32))
  {
    v6 = 20550;
  }

  else
  {
    v6 = 21318;
  }

  MEMORY[0x1D3868CC0](v6, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD00000000000001FLL, 0x80000001CFA4E7B0);
  v7 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v7);

  MEMORY[0x1D3868CC0](0xD00000000000001FLL, 0x80000001CFA4E7D0);
  v8 = [a1 bindLongParameter_];
  v9 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v11 = v10;

  MEMORY[0x1D3868CC0](v9, v11);

  MEMORY[0x1D3868CC0](0xD00000000000001FLL, 0x80000001CFA4E7F0);
  v12 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v12);

  return 0;
}

uint64_t sub_1CF4BC204(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000007ELL, 0x80000001CFA4E8A0);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA4A7A0);
  if (*(a2 + 32))
  {
    v4 = 20550;
  }

  else
  {
    v4 = 21318;
  }

  MEMORY[0x1D3868CC0](v4, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD00000000000001FLL, 0x80000001CFA4E7B0);
  v5 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v5);

  MEMORY[0x1D3868CC0](0xD000000000000026, 0x80000001CFA4E920);
  v6 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v6);

  MEMORY[0x1D3868CC0](0xD00000000000002ALL, 0x80000001CFA4E950);
  v7 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v7);

  MEMORY[0x1D3868CC0](0x2020200A30203D20, 0xEF20444E41202020);
  v8 = v3[95];
  v9 = v3[96];
  v10 = v3[97];
  v11 = v3[98];
  v12 = sub_1CF4BFA00(0x2E70616E73, 0xE500000000000000, xmmword_1CFA06070);
  MEMORY[0x1D3868CC0](v12);

  return 0;
}

uint64_t sub_1CF4BC47C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000006CLL, 0x80000001CFA4E810);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA4A7A0);
  if (*(a2 + 32))
  {
    v7 = 20550;
  }

  else
  {
    v7 = 21318;
  }

  MEMORY[0x1D3868CC0](v7, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD00000000000001FLL, 0x80000001CFA4E7B0);
  v8 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v8);

  MEMORY[0x1D3868CC0](0xD00000000000001DLL, 0x80000001CFA4E9E0);
  v9 = [a1 bindLongParameter_];
  v10 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v12 = v11;

  MEMORY[0x1D3868CC0](v10, v12);

  MEMORY[0x1D3868CC0](0xD000000000000027, 0x80000001CFA4EA00);
  v13 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v13);

  MEMORY[0x1D3868CC0](0xD00000000000002BLL, 0x80000001CFA4EA30);
  v14 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v14);

  MEMORY[0x1D3868CC0](0x2020200A30203D20, 0xEF20444E41202020);
  v15 = v6[95];
  v16 = v6[96];
  v17 = v6[97];
  v18 = v6[98];
  v19 = sub_1CF4BFA00(0x2E70616E73, 0xE500000000000000, xmmword_1CFA06070);
  MEMORY[0x1D3868CC0](v19);

  return 0;
}

uint64_t sub_1CF4BC768(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000007ELL, 0x80000001CFA4E8A0);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA4A7A0);
  if (*(a2 + 32))
  {
    v7 = 20550;
  }

  else
  {
    v7 = 21318;
  }

  MEMORY[0x1D3868CC0](v7, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD00000000000001FLL, 0x80000001CFA4E7B0);
  v8 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v8);

  MEMORY[0x1D3868CC0](0xD000000000000026, 0x80000001CFA4E920);
  v9 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v9);

  MEMORY[0x1D3868CC0](0xD00000000000002ALL, 0x80000001CFA4E950);
  v10 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v10);

  MEMORY[0x1D3868CC0](0xD000000000000029, 0x80000001CFA4E980);
  v11 = [a1 bindLongParameter_];
  v12 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v14 = v13;

  MEMORY[0x1D3868CC0](v12, v14);

  MEMORY[0x1D3868CC0](0xD000000000000025, 0x80000001CFA4E9B0);
  v15 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v15);

  MEMORY[0x1D3868CC0](0x412020202020200ALL, 0xEB0000000020444ELL);
  v16 = v6[95];
  v17 = v6[96];
  v18 = v6[97];
  v19 = v6[98];
  v20 = sub_1CF4BFA00(0x2E70616E73, 0xE500000000000000, xmmword_1CFA06070);
  MEMORY[0x1D3868CC0](v20);

  return 0;
}

uint64_t sub_1CF4BCAC0(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000028, 0x80000001CFA4EED0);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000020, 0x80000001CFA4EF50);
  v3 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v3);

  MEMORY[0x1D3868CC0](0xD00000000000003DLL, 0x80000001CFA4EF80);
  return 0;
}

void *sub_1CF4BCBEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[2] = a2;
  v6[3] = a3;
  result = (*(a3 + 48))(&v7, MEMORY[0x1E69E7360], a4, v6, MEMORY[0x1E69E7360], MEMORY[0x1E69E7390], MEMORY[0x1E69E7368], a2, a3);
  if (!v4)
  {
    if (v8)
    {
      return 0;
    }

    else
    {
      return v7;
    }
  }

  return result;
}

uint64_t sub_1CF4BCC7C(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000028, 0x80000001CFA4EED0);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000044, 0x80000001CFA4EF00);
  return 0;
}

unint64_t sub_1CF4BCD28(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = sub_1CF9E5248();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = sub_1CF9E5268();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v30[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = a2;
  v32 = a3;
  v33 = v3;
  v16 = a1;
  v17 = (*(a3 + 24))(sub_1CF4C0C70, v30, a2, a3, v13);
  if (!v4)
  {
    v18 = v17;
    if ([v17 next])
    {
      v19 = [v18 unsignedIntegerAtIndex_];
      v20 = [v18 unsignedIntegerAtIndex_];
      v21 = [v18 unsignedIntegerAtIndex_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0800, &qword_1CFA06190);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1CF9FC3C0;
      v23 = *MEMORY[0x1E6966DC8];
      *(inited + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      *(inited + 40) = v24;
      *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
      v25 = *MEMORY[0x1E6966DC0];
      *(inited + 56) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      *(inited + 64) = v26;
      *(inited + 72) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
      v27 = *MEMORY[0x1E69670D0];
      *(inited + 80) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      *(inited + 88) = v28;
      *(inited + 96) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
      v16 = sub_1CF4E30A0(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5090, &qword_1CFA06198);
      swift_arrayDestroy();
    }

    else
    {
      sub_1CF9E5198();
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF24D0AC();
      sub_1CF9E57D8();
      v16 = sub_1CF9E50D8();
      (*(v11 + 8))(v15, v10);
      swift_willThrow();
    }
  }

  return v16;
}

uint64_t sub_1CF4BD04C(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000005BLL, 0x80000001CFA4EDD0);
  v3 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v3);

  MEMORY[0x1D3868CC0](0xD000000000000052, 0x80000001CFA4EE30);
  MEMORY[0x1D3868CC0](*(a2 + qword_1EDEBBD78), *(a2 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000036, 0x80000001CFA4EE90);
  v4 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v4);

  return 0;
}

uint64_t sub_1CF4BD178(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v31[2] = a1;
  v32 = a4;
  v31[1] = a3;
  LODWORD(v33) = a2;
  v34 = *v4;
  v6 = v34[97];
  v7 = v34[95];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_1CF656CD8(AssociatedTypeWitness, AssociatedTypeWitness);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = *(*(AssociatedTypeWitness - 8) + 72);
  v13 = *(*(AssociatedTypeWitness - 8) + 80);
  swift_allocObject();
  v14 = sub_1CF9E6D68();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 48))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(AssociatedConformanceWitness + 56))(AssociatedTypeWitness, AssociatedConformanceWitness);
  result = sub_1CF045898(v14);
  v35 = result;
  if ((v33 & 1) == 0)
  {
    v17 = MEMORY[0x1EEE9AC00](result);
    v18 = v32[3];
    v19 = v18(sub_1CF4C03F4, v17);
    if (v5)
    {
    }

    else
    {
      v20 = v18;
      v21 = v19;
      v33 = v20;
      v22 = [v19 next];
      if (v22)
      {
        do
        {
          v23 = objc_autoreleasePoolPush();
          v24 = v34[96];
          v25 = v34[98];
          sub_1CF4BDB18(&v35, v21);
          objc_autoreleasePoolPop(v23);
          v22 = [v21 next];
        }

        while ((v22 & 1) != 0);
      }

      v32 = v31;
      v26 = MEMORY[0x1EEE9AC00](v22);
      v27 = v33(sub_1CF4C0400, v26);
      if ([v27 next])
      {
        do
        {
          v28 = objc_autoreleasePoolPush();
          v29 = v34[96];
          v30 = v34[98];
          sub_1CF4BDB18(&v35, v27);
          objc_autoreleasePoolPop(v28);
        }

        while (([v27 next] & 1) != 0);
      }

      return v35;
    }
  }

  return result;
}

uint64_t sub_1CF4BD54C(uint64_t a1, uint64_t a2)
{
  v24 = a1;
  v4 = *(*a2 + 776);
  v5 = *(*a2 + 760);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v25 = *(AssociatedTypeWitness - 8);
  v7 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v24 - v8;
  v26 = 0;
  v27 = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000016, 0x80000001CFA46A60);
  v10 = a2 + qword_1EDEBBD78;
  v11 = *(a2 + qword_1EDEBBD78);
  v12 = *(v10 + 8);
  MEMORY[0x1D3868CC0](v11, v12);
  MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA46A80);
  MEMORY[0x1D3868CC0](v11, v12);
  MEMORY[0x1D3868CC0](0xD000000000000086, 0x80000001CFA46AA0);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 48))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v14 = *(AssociatedConformanceWitness + 8);
  v15 = *(v14 + 32);
  v16 = v15(a1, AssociatedTypeWitness, v14);
  v18 = v17;
  v19 = *(v25 + 8);
  v25 += 8;
  v19(v9, AssociatedTypeWitness);
  MEMORY[0x1D3868CC0](v16, v18);

  MEMORY[0x1D3868CC0](8236, 0xE200000000000000);
  (*(AssociatedConformanceWitness + 56))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v20 = v15(v24, AssociatedTypeWitness, v14);
  v22 = v21;
  v19(v9, AssociatedTypeWitness);
  MEMORY[0x1D3868CC0](v20, v22);

  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  return v26;
}

uint64_t sub_1CF4BD830(uint64_t a1, uint64_t a2)
{
  v24 = a1;
  v4 = *(*a2 + 776);
  v5 = *(*a2 + 760);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v25 = *(AssociatedTypeWitness - 8);
  v7 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v24 - v8;
  v26 = 0;
  v27 = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000099, 0x80000001CFA46870);
  v10 = a2 + qword_1EDEBBD78;
  v11 = *(a2 + qword_1EDEBBD78);
  v12 = *(v10 + 8);
  MEMORY[0x1D3868CC0](v11, v12);
  MEMORY[0x1D3868CC0](0xD0000000000000BFLL, 0x80000001CFA46910);
  MEMORY[0x1D3868CC0](v11, v12);
  MEMORY[0x1D3868CC0](0xD000000000000086, 0x80000001CFA469D0);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 48))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v14 = *(AssociatedConformanceWitness + 8);
  v15 = *(v14 + 32);
  v16 = v15(a1, AssociatedTypeWitness, v14);
  v18 = v17;
  v19 = *(v25 + 8);
  v25 += 8;
  v19(v9, AssociatedTypeWitness);
  MEMORY[0x1D3868CC0](v16, v18);

  MEMORY[0x1D3868CC0](8236, 0xE200000000000000);
  (*(AssociatedConformanceWitness + 56))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v20 = v15(v24, AssociatedTypeWitness, v14);
  v22 = v21;
  v19(v9, AssociatedTypeWitness);
  MEMORY[0x1D3868CC0](v20, v22);

  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  return v26;
}

uint64_t sub_1CF4BDB18(uint64_t a1, void *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = *(swift_getAssociatedConformanceWitness() + 8);
  result = (*(v6 + 16))(a2, 0, AssociatedTypeWitness, v6);
  if (!v2)
  {
    sub_1CF9E6E58();
    return sub_1CF9E6E18();
  }

  return result;
}

uint64_t sub_1CF4BDC38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (**a4)(uint64_t (*)(void *a1), __n128))
{
  v9 = *(*v4 + 760);
  v10 = *(*v4 + 776);
  type metadata accessor for SnapshotItem();
  v15 = sub_1CF9E6DA8();
  sub_1CF49BC28(a1, 0, 1, a2, a3, a4);
  for (i = v11; ; i = v13)
  {

    sub_1CF9E6E58();
    swift_getWitnessTable();
    sub_1CF9E6E08();

    if (!i)
    {
      break;
    }

    sub_1CF49BC28(a1, i, 1, a2, a3, a4);
  }

  return v15;
}

uint64_t sub_1CF4BDDF0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v70 = a2;
  v71 = a8;
  v68 = a7;
  v69 = a3;
  v14 = *(*v9 + 760);
  v15 = *(*v9 + 776);
  v16 = type metadata accessor for SnapshotItem();
  v17 = *(*(v16 - 1) + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v62 - v20;
  if (a5 < 61)
  {
    if (*a6 <= 0)
    {
      v25 = a4[3];
      v26 = a4[4];
      __swift_project_boxed_opaque_existential_1(a4, v25);
      sub_1CF4FB2BC(0xD00000000000001BLL, 0x80000001CFA464D0, v25, v26);
      return 0;
    }

    v65 = *a6;
    v66 = a6;
    v67 = v18;
    (*(v18 + 16))(v21, a1, v16, v19);
    swift_getAssociatedTypeWitness();
    v24 = *(*(swift_getAssociatedConformanceWitness() + 40) + 8);
    if (sub_1CF9E6868())
    {
      sub_1CF48DF18(v21, v69, v68, v71, v74);
      v88 = v74[12];
      v89 = v74[13];
      v90 = v74[14];
      v91 = v75;
      v84 = v74[8];
      v85 = v74[9];
      v86 = v74[10];
      v87 = v74[11];
      v80 = v74[4];
      v81 = v74[5];
      v82 = v74[6];
      v83 = v74[7];
      v76 = v74[0];
      v77 = v74[1];
      v78 = v74[2];
      v79 = v74[3];
      v28 = &v21[v16[13]];
      v29 = *(v28 + 13);
      v72[12] = *(v28 + 12);
      v72[13] = v29;
      v72[14] = *(v28 + 14);
      v73 = *(v28 + 30);
      v30 = *(v28 + 9);
      v72[8] = *(v28 + 8);
      v72[9] = v30;
      v31 = *(v28 + 11);
      v72[10] = *(v28 + 10);
      v72[11] = v31;
      v32 = *(v28 + 5);
      v72[4] = *(v28 + 4);
      v72[5] = v32;
      v33 = *(v28 + 7);
      v72[6] = *(v28 + 6);
      v72[7] = v33;
      v34 = *(v28 + 1);
      v72[0] = *v28;
      v72[1] = v34;
      v35 = *(v28 + 3);
      v72[2] = *(v28 + 2);
      v72[3] = v35;
      sub_1CEFCCC44(v72, &qword_1EC4BECF0, &unk_1CF9FEEB0);
      v36 = v89;
      *(v28 + 12) = v88;
      *(v28 + 13) = v36;
      *(v28 + 14) = v90;
      *(v28 + 30) = v91;
      v37 = v85;
      *(v28 + 8) = v84;
      *(v28 + 9) = v37;
      v38 = v87;
      *(v28 + 10) = v86;
      *(v28 + 11) = v38;
      v39 = v81;
      *(v28 + 4) = v80;
      *(v28 + 5) = v39;
      v40 = v83;
      *(v28 + 6) = v82;
      *(v28 + 7) = v40;
      v41 = v77;
      *v28 = v76;
      *(v28 + 1) = v41;
      v42 = v79;
      *(v28 + 2) = v78;
      *(v28 + 3) = v42;
      if (v9[32])
      {
        v43 = sub_1CF4890B8(v21, v69, v68, v71);
        v64 = 0;
        v44 = &v21[v16[15]];
        *v44 = v43;
        *(v44 + 1) = v45;
        v44[16] = v46 & 1;
      }

      else
      {
        sub_1CF4888E0(v21, v69, v68, v71, v92);
        v47 = v92[1];
        v48 = v93;
        v64 = 0;
        v49 = &v21[v16[14]];
        *v49 = v92[0];
        *(v49 + 1) = v47;
        v49[32] = v48;
      }
    }

    else
    {
      v64 = 0;
    }

    v50 = a5;
    WitnessTable = swift_getWitnessTable();
    sub_1CF06D940(v16, WitnessTable, &v76);
    if (v76 != 1)
    {
      v52 = &v21[v16[14]];
      *v52 = 0u;
      *(v52 + 1) = 0u;
      v52[32] = 1;
      v53 = &v21[v16[15]];
      *v53 = 0;
      *(v53 + 1) = 0;
      v53[16] = 1;
    }

    v54 = a4[3];
    v55 = a4[4];
    __swift_project_boxed_opaque_existential_1(a4, v54);
    *&v76 = 0;
    *(&v76 + 1) = 0xE000000000000000;
    swift_getWitnessTable();
    sub_1CF9E7FE8();
    v63 = v16;
    sub_1CF4FB2BC(v76, *(&v76 + 1), v54, v55);

    v56 = v66;
    *v66 = v65 - 1;
    v57 = a4[3];
    v58 = a4[4];
    v59 = __swift_project_boxed_opaque_existential_1(a4, v57);
    MEMORY[0x1EEE9AC00](v59);
    v60 = v71;
    *(&v62 - 8) = v68;
    *(&v62 - 7) = v60;
    *(&v62 - 6) = v9;
    *(&v62 - 5) = v21;
    v61 = v70;
    *(&v62 - 4) = v69;
    *(&v62 - 3) = v61;
    *(&v62 - 2) = v50;
    *(&v62 - 1) = v56;
    sub_1CF4FB38C(32, 0xE100000000000000, sub_1CF4C03C0, (&v62 - 10), v57, MEMORY[0x1E69E7CA8] + 8, v58);
    (*(v67 + 8))(v21, v63);
  }

  else
  {
    v22 = a4[3];
    v23 = a4[4];
    __swift_project_boxed_opaque_existential_1(a4, v22);
    sub_1CF4FB2BC(0xD000000000000018, 0x80000001CFA46490, v22, v23);
  }

  return 1;
}

void sub_1CF4BE3A4(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t (**a9)(uint64_t (*)(void *a1), __n128))
{
  v65 = a4;
  v66 = a8;
  v67 = a6;
  v60 = a7;
  v72 = a1;
  v12 = *(*a2 + 760);
  v13 = *(*a2 + 776);
  v14 = type metadata accessor for SnapshotItem();
  v63 = *(v14 - 8);
  v15 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v61 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v78 = &v51 - v18;
  v52 = v19;
  MEMORY[0x1EEE9AC00](v20);
  v75 = &v51 - v21;
  v71 = v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23 = *(AssociatedTypeWitness - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v27 = &v51 - v26;
  v28 = *(v23 + 16);
  v62 = a3;
  v28(&v51 - v26, a3, AssociatedTypeWitness, v25);
  v58 = a9;
  v59 = a2;
  v29 = sub_1CF4BDC38(v27, v65, v66, a9);
  (*(v23 + 8))(v27, AssociatedTypeWitness);
  if (!sub_1CF9E6DF8())
  {
LABEL_22:

    return;
  }

  v70 = AssociatedTypeWitness;
  v30 = 0;
  v31 = v63;
  v69 = (v63 + 32);
  v73 = (v63 + 8);
  v74 = (v63 + 16);
  v53 = "♻️ Cycle -> <s:";
  v54 = v67 + 1;
  v32 = __OFADD__(v67, 1);
  v56 = v32;
  v55 = "em non syncable attributes";
  AssociatedConformanceWitness = 1;
  v57 = v12;
  v68 = v29;
  while (1)
  {
    v38 = sub_1CF9E6DC8();
    sub_1CF9E6D78();
    if (v38)
    {
      v39 = v29 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v30;
      v40 = *(v31 + 16);
      v40(v75, v39, v14);
      v41 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        goto LABEL_21;
      }
    }

    else
    {
      v50 = sub_1CF9E7998();
      if (v52 != 8)
      {
        goto LABEL_25;
      }

      v76 = v50;
      v40 = *v74;
      (*v74)(v75, &v76, v14);
      swift_unknownObjectRelease();
      v41 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }
    }

    (*v69)(v78, v75, v14);
    if (AssociatedConformanceWitness)
    {
      v42 = v61;
      v40(v61, v62, v14);
      WitnessTable = swift_getWitnessTable();
      sub_1CF06D940(v14, WitnessTable, &v76);
      (*v73)(v42, v14);
      if (v76 != 1)
      {
        v44 = v72[3];
        v45 = v72[4];
        __swift_project_boxed_opaque_existential_1(v72, v44);
        sub_1CF4FB2BC(0x1000000000000025, v53 | 0x8000000000000000, v44, v45);
      }
    }

    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v46 = *(*(AssociatedConformanceWitness + 40) + 8);
    if (sub_1CF9E6868())
    {
      v35 = v72[3];
      v34 = v72[4];
      v67 = __swift_project_boxed_opaque_existential_1(v72, v35);
      v76 = 0;
      v77 = 0xE000000000000000;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0x1000000000000013, v55 | 0x8000000000000000);
      v36 = *(AssociatedConformanceWitness + 16);
      sub_1CF9E7FE8();
      MEMORY[0x1D3868CC0](0x3E2E2E2E20, 0xE500000000000000);
      v37 = v34;
      v31 = v63;
      sub_1CF4FB2BC(v76, v77, v35, v37);

      v29 = v68;
      goto LABEL_7;
    }

    v47 = objc_autoreleasePoolPush();
    if (v56)
    {
      break;
    }

    AssociatedConformanceWitness = v47;
    v48 = sub_1CF4BDDF0(v78, a5, v65, v72, v54, v60, v66, v58);
    if (v64)
    {
      goto LABEL_26;
    }

    v49 = v48;
    objc_autoreleasePoolPop(AssociatedConformanceWitness);
    v29 = v68;
    if ((v49 & 1) == 0)
    {

      (*v73)(v78, v14);
      return;
    }

LABEL_7:
    (*v73)(v78, v14);
    AssociatedConformanceWitness = 0;
    ++v30;
    if (v41 == sub_1CF9E6DF8())
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  objc_autoreleasePoolPop(AssociatedConformanceWitness);
  __break(1u);
}

uint64_t sub_1CF4BE9B4(void *a1, int a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v76 = a6;
  v63 = a1;
  v10 = *a3;
  v11 = type metadata accessor for SnapshotCounters();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v10 + 760);
  v16 = *(v10 + 776);
  v17 = type metadata accessor for SnapshotItem();
  v18 = sub_1CF9E75D8();
  v66 = *(v18 - 8);
  v67 = v18;
  v19 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v71 = &v56 - v20;
  v72 = v17;
  v59 = *(v17 - 8);
  v21 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v61 = &v56 - v23;
  v69 = v15;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v25 = *(AssociatedTypeWitness - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v28 = &v56 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v27;
  MEMORY[0x1EEE9AC00](v29);
  v77 = &v56 - v30;
  v31 = 3000;
  if ((a2 & 1) == 0)
  {
    v31 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v80 = v31;
  v73 = a4;
  v74 = a5;
  v75 = a3;
  v32 = v70;
  v33 = sub_1CF4BD178(a4, a2, a5, v76);
  v62 = v25;
  if (v32)
  {

    v34 = sub_1CF656CD8(AssociatedTypeWitness, AssociatedTypeWitness);
    v35 = *(v34 + 52);
    v36 = v25;
    v37 = *(v25 + 72);
    v38 = (*(v36 + 80) + *(v34 + 48)) & ~*(v36 + 80);
    swift_allocObject();
    v39 = sub_1CF9E6D68();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 48))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(AssociatedConformanceWitness + 56))(AssociatedTypeWitness, AssociatedConformanceWitness);
    v41 = sub_1CF045898(v39);
  }

  else
  {
    v41 = v33;
  }

  if (sub_1CF9E6DF8())
  {
    v58 = v14;
    v42 = 0;
    v43 = v62;
    v69 = (v62 + 32);
    v70 = (v62 + 16);
    v68 = (v62 + 8);
    v64 = (v59 + 48);
    v65 = v59 + 56;
    v60 = (v59 + 32);
    v59 += 8;
    v66 += 8;
    while (1)
    {
      v46 = sub_1CF9E6DC8();
      sub_1CF9E6D78();
      if (v46)
      {
        result = (*(v43 + 16))(v77, v41 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v42, AssociatedTypeWitness);
      }

      else
      {
        result = sub_1CF9E7998();
        if (v57 != 8)
        {
          goto LABEL_21;
        }

        v78[0] = result;
        (*v70)(v77, v78, AssociatedTypeWitness);
        result = swift_unknownObjectRelease();
      }

      v48 = v71;
      v49 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        break;
      }

      (*v69)(v28, v77, AssociatedTypeWitness);
      sub_1CF48C08C(v28, v73, v74, v76, v48);
      v50 = v72;
      if ((*v64)(v48, 1, v72) == 1)
      {
        (*v68)(v28, AssociatedTypeWitness);
        (*v66)(v48, v67);
      }

      else
      {
        v44 = v61;
        (*v60)(v61, v48, v50);
        sub_1CF4BDDF0(v44, v28, v73, v63, 1, &v80, v74, v76);
        v45 = v44;
        v43 = v62;
        (*v59)(v45, v72);
        (*v68)(v28, AssociatedTypeWitness);
      }

      ++v42;
      if (v49 == sub_1CF9E6DF8())
      {

        v14 = v58;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {

LABEL_19:
    v51 = v63[3];
    v52 = v63[4];
    __swift_project_boxed_opaque_existential_1(v63, v51);
    strcpy(v79, "+ counters: ");
    BYTE5(v79[1]) = 0;
    HIWORD(v79[1]) = -5120;
    v53 = qword_1EDEBBA48;
    v54 = v75;
    swift_beginAccess();
    sub_1CF4C09E0(v54 + v53, v14, type metadata accessor for SnapshotCounters);
    v55 = sub_1CF6866E8();
    MEMORY[0x1D3868CC0](v55);

    sub_1CF4C0A48(v14, type metadata accessor for SnapshotCounters);
    sub_1CF4FB2BC(v79[0], v79[1], v51, v52);
  }

  return result;
}

uint64_t sub_1CF4BF1A8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_1CF4BF1B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000016, 0x80000001CFA4D950);
  MEMORY[0x1D3868CC0](a5, a6);
  MEMORY[0x1D3868CC0](0xD00000000000001CLL, 0x80000001CFA4D970);
  MEMORY[0x1D3868CC0](a5, a6);
  MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA4BD00);
  MEMORY[0x1D3868CC0](a3, a4);
  MEMORY[0x1D3868CC0](0x5F63657220534120, 0xED00005F70616E73);
  MEMORY[0x1D3868CC0](a5, a6);
  MEMORY[0x1D3868CC0](0xD000000000000013, 0x80000001CFA4D990);
  MEMORY[0x1D3868CC0](a5, a6);
  MEMORY[0x1D3868CC0](0x203D2064692ELL, 0xE600000000000000);
  MEMORY[0x1D3868CC0](a1, a2);
  MEMORY[0x1D3868CC0](0xD00000000000001ELL, 0x80000001CFA4D9B0);
  MEMORY[0x1D3868CC0](a5, a6);
  MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA4D9D0);
  MEMORY[0x1D3868CC0](a5, a6);
  MEMORY[0x1D3868CC0](0x454E4E492020200ALL, 0xEF204E494F4A2052);
  MEMORY[0x1D3868CC0](a3, a4);
  MEMORY[0x1D3868CC0](0x5F63657220534120, 0xED00005F70616E73);
  MEMORY[0x1D3868CC0](a5, a6);
  MEMORY[0x1D3868CC0](0x5F636572204E4F20, 0xED00005F70616E73);
  MEMORY[0x1D3868CC0](a5, a6);
  MEMORY[0x1D3868CC0](0x6170203D2064692ELL, 0xED00005F746E6572);
  MEMORY[0x1D3868CC0](a5, a6);
  MEMORY[0x1D3868CC0](0xD000000000000016, 0x80000001CFA4D9F0);
  MEMORY[0x1D3868CC0](a5, a6);
  MEMORY[0x1D3868CC0](0xD000000000000017, 0x80000001CFA4DA10);
  MEMORY[0x1D3868CC0](a5, a6);
  MEMORY[0x1D3868CC0](0xD00000000000001DLL, 0x80000001CFA4DA30);
  MEMORY[0x1D3868CC0](a5, a6);
  return 0;
}

uint64_t sub_1CF4BF4F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000021, 0x80000001CFA4A4A0);
  MEMORY[0x1D3868CC0](a1, a2);
  MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA4A4D0);
  MEMORY[0x1D3868CC0](a1, a2);
  MEMORY[0x1D3868CC0](0xD000000000000047, 0x80000001CFA4A4F0);
  MEMORY[0x1D3868CC0](a1, a2);
  MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA4A540);
  v6 = *(a3 + 16);
  if (v6)
  {
    v16 = MEMORY[0x1E69E7CC0];
    sub_1CF680C9C(0, v6, 0);
    v7 = (a3 + 32);
    v8 = *(v16 + 16);
    do
    {
      v10 = *v7++;
      v9 = v10;
      v11 = *(v16 + 24);
      if (v8 >= v11 >> 1)
      {
        sub_1CF680C9C((v11 > 1), v8 + 1, 1);
      }

      *(v16 + 16) = v8 + 1;
      *(v16 + 8 * v8++ + 32) = v9;
      --v6;
    }

    while (v6);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFCCCEC(&qword_1EDEAB500, &unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFE4E68();
  v12 = sub_1CF9E6C18();
  v14 = v13;

  MEMORY[0x1D3868CC0](v12, v14);

  MEMORY[0x1D3868CC0](41, 0xE100000000000000);

  MEMORY[0x1D3868CC0](40, 0xE100000000000000);

  return 0;
}

uint64_t sub_1CF4BF780(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF7E8, &qword_1CFA03228);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CFA02F60;
  *(inited + 32) = xmmword_1CFA02F70;
  *(inited + 48) = xmmword_1CFA02F80;
  *(inited + 64) = 1003;
  v5 = sub_1CF4BF4F0(a1, a2, inited);
  swift_setDeallocating();
  return v5;
}

uint64_t sub_1CF4BF854(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF7E8, &qword_1CFA03228);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CF9FA450;
  *(inited + 32) = 501;
  v5 = sub_1CF4BF4F0(a1, a2, inited);
  swift_setDeallocating();
  return v5;
}

uint64_t sub_1CF4BF914(unint64_t a1, char a2)
{
  if ((a2 & 1) != 0 || a1 >= 4 && a1 - 500 >= 3 && a1 != 1003)
  {
    v7 = MEMORY[0x1E69E6530];
    v6[0] = 0;
  }

  else
  {
    v7 = MEMORY[0x1E69E6530];
    v6[0] = a1;
  }

  v2 = sub_1CEFF8EA0(v6);
  v4 = v3;
  sub_1CEFCCC44(v6, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v4)
  {
    return v2;
  }

  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

uint64_t sub_1CF4BFA00(uint64_t a1, uint64_t a2, __n128 a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF7E8, &qword_1CFA03228);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CF9FA440;
  *(inited + 32) = a3;
  v6 = sub_1CF4BF4F0(a1, a2, inited);
  swift_setDeallocating();
  return v6;
}

uint64_t sub_1CF4BFAC0()
{
  v1 = *v0;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000006ALL, 0x80000001CFA4A730);
  MEMORY[0x1D3868CC0](*(v0 + qword_1EDEBBD78), *(v0 + qword_1EDEBBD78 + 8));
  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA4A7A0);
  if (*(v0 + 32))
  {
    v2 = 20550;
  }

  else
  {
    v2 = 21318;
  }

  MEMORY[0x1D3868CC0](v2, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD000000000000020, 0x80000001CFA4A7C0);
  v3 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v3);

  MEMORY[0x1D3868CC0](0xD000000000000023, 0x80000001CFA4A7F0);
  v4 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v4);

  MEMORY[0x1D3868CC0](0xD000000000000027, 0x80000001CFA4A820);
  v5 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v5);

  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA4A850);
  MEMORY[0x1D3868CC0](v2, 0xE200000000000000);

  MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA4A870);
  v6 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v6);

  MEMORY[0x1D3868CC0](8236, 0xE200000000000000);
  v7 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v7);

  MEMORY[0x1D3868CC0](0x444E412020200A29, 0xE900000000000020);
  v8 = v1[95];
  v9 = v1[96];
  v10 = v1[97];
  v11 = v1[98];
  v12 = sub_1CF4BFA00(0x2E70616E73, 0xE500000000000000, xmmword_1CFA06070);
  MEMORY[0x1D3868CC0](v12);

  return 0;
}

uint64_t sub_1CF4BFDE8(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF4B2BBC(a1, v1[4]);
}

uint64_t sub_1CF4BFEF0(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF4B9348(a1, v1[4]);
}

uint64_t sub_1CF4BFEFC(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF4B9008(a1, v1[4]);
}

unint64_t sub_1CF4BFF08(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF4B8B30(a1, v1[4]);
}

uint64_t sub_1CF4BFF14(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF4B8BD0(a1, v1[4]);
}

uint64_t sub_1CF4BFF20(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF4B8D0C(a1, v1[4]);
}

uint64_t sub_1CF4BFF2C(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF4B8DB8(a1, v1[4]);
}

uint64_t sub_1CF4C0004(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF4B5134(a1, v1[4]);
}

uint64_t sub_1CF4C0010(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF4B51D8(a1, v1[4]);
}

uint64_t sub_1CF4C001C(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF4B8840(a1, v1[4]);
}

uint64_t sub_1CF4C0028(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF4B56B4(a1, v1[4]);
}

uint64_t sub_1CF4C0034(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF4B5794(a1, v1[4]);
}

uint64_t sub_1CF4C0078(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF4B5874(a1, v1[4]);
}

uint64_t sub_1CF4C0084(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF4B5918(a1, v1[4]);
}

uint64_t sub_1CF4C00D4(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF4B86EC(a1, v1[4]);
}

uint64_t sub_1CF4C00E0(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF4B7F20(a1, v1[4]);
}

uint64_t sub_1CF4C00EC(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF4B7D80(a1, v1[4]);
}

uint64_t sub_1CF4C00F8(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF4B7AE8(a1, v1[4]);
}

uint64_t sub_1CF4C0104(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF4B8500(a1, v1[4]);
}

uint64_t sub_1CF4C0124(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF4B85A4(a1, v1[4]);
}

uint64_t sub_1CF4C0144(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF4B8648(a1, v1[4]);
}

uint64_t sub_1CF4C0164(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF4B83BC(a1, v1[4]);
}

uint64_t sub_1CF4C01C8(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF4B8318(a1, v1[4]);
}

uint64_t sub_1CF4C022C(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF4B7660(a1, v1[4]);
}

uint64_t sub_1CF4C0238(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF4B75BC(a1, v1[4]);
}

uint64_t sub_1CF4C0244(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF4B7488(a1, v1[4]);
}

uint64_t sub_1CF4C0250(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF4B73B8(a1, v1[4]);
}

uint64_t sub_1CF4C025C(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF4B72E8(a1, v1[4]);
}

uint64_t sub_1CF4C0268(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF4B7174(a1, v1[4]);
}

uint64_t sub_1CF4C0274(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF4B7218(a1, v1[4]);
}

uint64_t sub_1CF4C0280(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF4B7090(a1, v1[4]);
}

uint64_t sub_1CF4C028C(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF4B6FC0(a1, v1[4]);
}

uint64_t sub_1CF4C0298(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF4B6BCC(a1, v1[4]);
}

uint64_t sub_1CF4C02A4(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF4B6C70(a1, v1[4]);
}

uint64_t sub_1CF4C02B0(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF4B6D14(a1, v1[4]);
}

uint64_t sub_1CF4C02BC(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF4B6DFC(a1, v1[4]);
}

uint64_t sub_1CF4C02C8(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF4B67A0(a1, v1[4]);
}

uint64_t sub_1CF4C02D4(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF4B6844(a1, v1[4]);
}

uint64_t sub_1CF4C02E0(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF4B65C8(a1, v1[4]);
}

uint64_t sub_1CF4C02EC(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF4B61D4(a1, v1[4]);
}

uint64_t sub_1CF4C02F8(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF4B6278(a1, v1[4]);
}

uint64_t sub_1CF4C0304(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF4B63E0(a1, v1[4]);
}

uint64_t sub_1CF4C0310(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF4B5FC4(a1, v1[4]);
}

uint64_t sub_1CF4C031C(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF4B5EA8(a1, v1[4]);
}

uint64_t sub_1CF4C0328(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF4B5CEC(a1, v1[4]);
}

uint64_t sub_1CF4C0334(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF4B5D90(a1, v1[4]);
}

uint64_t sub_1CF4C0340(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF4B5BC0(a1, v1[4]);
}

uint64_t sub_1CF4C0380(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF4B1DDC(a1, v1[4]);
}

uint64_t sub_1CF4C038C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1CF4B1EC4(a1, *(v1 + 32), *(v1 + 40));
}

uint64_t sub_1CF4C039C(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF4B200C(a1, v1[4]);
}

uint64_t sub_1CF4C03A8(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF4B1C04(a1, v1[4]);
}

uint64_t sub_1CF4C03B4(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF4B1CEC(a1, v1[4]);
}

uint64_t sub_1CF4C03F4(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF4BD54C(a1, v1[4]);
}

uint64_t sub_1CF4C0400(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF4BD830(a1, v1[4]);
}

uint64_t sub_1CF4C0430(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF4BA268(a1, v1[4]);
}

uint64_t sub_1CF4C043C(void *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF4B9FE4(a1, v1[4], v1[5]);
}

uint64_t sub_1CF4C0448(void *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[5];
  return sub_1CF4BA428(a1, v1[4]);
}

uint64_t sub_1CF4C0454(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF4B9D74(a1, v1[4]);
}

unint64_t sub_1CF4C0460()
{
  result = qword_1EC4C07E0;
  if (!qword_1EC4C07E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C07E0);
  }

  return result;
}

uint64_t sub_1CF4C04B4(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF4B11B4(a1, v1[4]);
}

uint64_t sub_1CF4C0558(void *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF4AD8F0(a1, v1[4], v1[5]);
}

unint64_t sub_1CF4C057C(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF4ACAA4(a1, v1[4]);
}

uint64_t sub_1CF4C064C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 56);
  return sub_1CF4A87F0(a1, *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 49));
}

uint64_t sub_1CF4C06AC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  return sub_1CF4A6564(a1, *(v1 + 32));
}

uint64_t sub_1CF4C06E8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1CF4A51BC(a1, *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56));
}

uint64_t sub_1CF4C06FC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1CF4A0048(a1, *(v1 + 32), *(v1 + 40));
}

uint64_t sub_1CF4C0708(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1CF4A02B0(a1, *(v1 + 32), *(v1 + 40));
}

uint64_t sub_1CF4C0738(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  return sub_1CF49DB24(a1, *(v1 + 32));
}

uint64_t sub_1CF4C0744(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  return sub_1CF49D8CC(a1, *(v1 + 32));
}

uint64_t sub_1CF4C0750(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  return sub_1CF49B874(a1, *(v1 + 32));
}

uint64_t sub_1CF4C078C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  return sub_1CF499BE4(a1, *(v1 + 32));
}

uint64_t sub_1CF4C0798(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  return sub_1CF4992B4(a1, *(v1 + 32));
}

uint64_t sub_1CF4C07A4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  return sub_1CF498A3C(a1, *(v1 + 32));
}

uint64_t sub_1CF4C07B0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  return sub_1CF4981E8(a1, *(v1 + 32));
}

uint64_t sub_1CF4C07BC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  return sub_1CF497EBC(a1, *(v1 + 32));
}

uint64_t sub_1CF4C07C8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  return sub_1CF497600(a1, *(v1 + 32));
}

uint64_t sub_1CF4C07D4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  return sub_1CF496B14(a1, *(v1 + 32));
}

uint64_t sub_1CF4C07E0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  return sub_1CF496258(a1, *(v1 + 32));
}

uint64_t sub_1CF4C07EC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 48);
  return sub_1CF4957BC(a1, *(v1 + 32), *(v1 + 40));
}

uint64_t sub_1CF4C07FC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  return sub_1CF49500C(a1, *(v1 + 32));
}

uint64_t sub_1CF4C0808(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  return sub_1CF494D94(a1, *(v1 + 32));
}

uint64_t sub_1CF4C082C(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 64);
  return sub_1CF493AD0(a1, *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56));
}

unint64_t sub_1CF4C0890(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  return sub_1CF491094(a1, *(v1 + 32));
}

unint64_t sub_1CF4C089C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  return sub_1CF490848(a1, *(v1 + 32));
}

uint64_t sub_1CF4C08A8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  return sub_1CF48FB50(a1, *(v1 + 32));
}

uint64_t sub_1CF4C08C8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 48);
  return sub_1CF48FD28(a1, *(v1 + 32), *(v1 + 40));
}

uint64_t sub_1CF4C09D4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  return sub_1CF48BF0C(a1, *(v1 + 32));
}

uint64_t sub_1CF4C09E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CF4C0A48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1CF4C0AA8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  return sub_1CF48AD4C(a1, *(v1 + 32));
}

uint64_t sub_1CF4C0AB4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  return sub_1CF48A59C(a1, *(v1 + 32));
}

uint64_t sub_1CF4C0AC0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  return sub_1CF489E34(a1, *(v1 + 32));
}

uint64_t sub_1CF4C0ACC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  return sub_1CF4896C4(a1, *(v1 + 32));
}

uint64_t sub_1CF4C0AD8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  return sub_1CF488F38(a1, *(v1 + 32));
}

uint64_t sub_1CF4C0AE4(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[5];
  return sub_1CF4AF900(a1, v1[4]);
}

uint64_t sub_1CF4C0AF0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1CF4AF6A4(a1, *(v1 + 32), *(v1 + 40));
}

uint64_t sub_1CF4C0B10(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1CF4AF378(a1, *(v1 + 32));
}

uint64_t sub_1CF4C0B1C(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF4AF13C(a1, v1[4]);
}

uint64_t sub_1CF4C0B28(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  return sub_1CF4A6900(a1, *(v1 + 32));
}

unint64_t sub_1CF4C0B54()
{
  result = qword_1EDEA3700;
  if (!qword_1EDEA3700)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDEA3700);
  }

  return result;
}

uint64_t sub_1CF4C0BA0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  return sub_1CF49DD04(a1, *(v1 + 32));
}

uint64_t sub_1CF4C0BAC(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1CF49C238(a1, *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64));
}

uint64_t sub_1CF4C0BC4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  return sub_1CF4920A0(a1, *(v1 + 32));
}

uint64_t sub_1CF4C0BF8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  return sub_1CF48B458(a1, *(v1 + 32));
}

unint64_t sub_1CF4C0C04(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1CF4BBB48(a1, *(v1 + 32));
}

uint64_t sub_1CF4C0C10(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF4BBDAC(a1, v1[4]);
}

uint64_t sub_1CF4C0C1C(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF4BC204(a1, v1[4]);
}

uint64_t sub_1CF4C0C28(void *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF4BC47C(a1, v1[4], v1[5]);
}

uint64_t sub_1CF4C0C34(void *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF4BC768(a1, v1[4], v1[5]);
}

uint64_t sub_1CF4C0C40(void *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF4BBE84(a1, v1[4], v1[5]);
}

uint64_t sub_1CF4C0C4C(void *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF4BC018(a1, v1[4], v1[5]);
}

uint64_t sub_1CF4C0C58(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF4BABE0(a1, v1[4]);
}

uint64_t sub_1CF4C0C64(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF4BAFF8(a1, v1[4]);
}

uint64_t sub_1CF4C0C70(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF4BD04C(a1, v1[4]);
}

uint64_t sub_1CF4C0C7C(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF4BCC7C(a1, v1[4]);
}

uint64_t sub_1CF4C0C88(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1CF4BCAC0(a1, v1[4]);
}

unint64_t sub_1CF4C0CA8()
{
  result = qword_1EC4C0808;
  if (!qword_1EC4C0808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C0808);
  }

  return result;
}

unint64_t sub_1CF4C0D00()
{
  result = qword_1EC4C0810;
  if (!qword_1EC4C0810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C0810);
  }

  return result;
}

unint64_t sub_1CF4C0D58()
{
  result = qword_1EC4C0818;
  if (!qword_1EC4C0818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C0818);
  }

  return result;
}

uint64_t sub_1CF4C0DE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CF9E75D8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v23 - v9;
  (*(v7 + 16))(v23 - v9, a1, v6);
  v11 = *(a2 - 8);
  if ((*(v11 + 48))(v10, 1, a2) == 1)
  {
    (*(v7 + 8))(v10, v6);
    v24 = 0u;
    v25 = 0u;
  }

  else
  {
    *(&v25 + 1) = a2;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v24);
    (*(v11 + 32))(boxed_opaque_existential_0, v10, a2);
  }

  v13 = sub_1CEFF8EA0(&v24);
  v15 = v14;
  sub_1CEFCCC44(&v24, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (!v15)
  {
    v16 = sub_1CF9E56C8();
    v17 = *(v16 + 48);
    v18 = *(v16 + 52);
    swift_allocObject();
    sub_1CF9E56B8();
    sub_1CF9E5698();
    v23[0] = a3;
    swift_getWitnessTable();
    v19 = sub_1CF9E56A8();
    v21 = v20;
    v13 = sub_1CF04E5D8(v19, v20);

    sub_1CEFE4714(v19, v21);
  }

  return v13;
}

void sub_1CF4C1090(ValueMetadata *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, ValueMetadata *a5@<X4>, uint64_t a6@<X8>)
{
  v8 = v6;
  v23[0] = a1;
  v23[1] = a5;
  v24 = a6;
  aBlock[6] = *MEMORY[0x1E69E9840];
  v12 = *(a4 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a3;
  aBlock[4] = sub_1CEFE75B8;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEFE7548;
  aBlock[3] = &block_descriptor_19;
  v17 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v18 = [v8 fetchSwift:v17 error:aBlock];
  _Block_release(v17);
  v19 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if (v18)
  {
    if ([v18 next] && !objc_msgSend(v18, sel_isNullAtIndex_, 0))
    {
      sub_1CF4C1368(v23[0], 0);

      if (!v7)
      {
        v21 = v24;
        (*(v12 + 32))(v24, v15, a4);
        (*(v12 + 56))(v21, 0, 1, a4);
      }
    }

    else
    {
      (*(v12 + 56))(v24, 1, 1, a4);
    }
  }

  else
  {
    sub_1CF9E57F8();

    swift_willThrow();
  }

  v22 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1CF4C1368(ValueMetadata *a1, uint64_t a2)
{
  v5 = sub_1CF9E6938();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = sub_1CF9E5CF8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  if ([v2 isNullAtIndex_])
  {
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 260);
  }

  if (swift_dynamicCastMetatype())
  {
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 261);
  }

  type metadata accessor for NSFileProviderItemIdentifier(0);
  v10 = v9;
  if (swift_dynamicCastMetatype())
  {
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 262);
  }

  if (a1 == MEMORY[0x1E69E63B0])
  {
    [v2 doubleAtIndex_];
    return swift_dynamicCast();
  }

  if (a1 == MEMORY[0x1E69E6370])
  {
    [v2 BOOLAtIndex_];
    return swift_dynamicCast();
  }

  if (a1 == MEMORY[0x1E69E7508])
  {
    [v2 unsignedCharAtIndex_];
    return swift_dynamicCast();
  }

  if (a1 == MEMORY[0x1E69E7230])
  {
    [v2 charAtIndex_];
    return swift_dynamicCast();
  }

  if (a1 == MEMORY[0x1E69E75F8])
  {
    [v2 unsignedShortAtIndex_];
    return swift_dynamicCast();
  }

  if (a1 == MEMORY[0x1E69E7290])
  {
    [v2 shortAtIndex_];
    return swift_dynamicCast();
  }

  if (a1 == MEMORY[0x1E69E7668])
  {
    [v2 unsignedIntAtIndex_];
    return swift_dynamicCast();
  }

  if (a1 == MEMORY[0x1E69E72F0])
  {
    [v2 intAtIndex_];
    return swift_dynamicCast();
  }

  if (a1 == MEMORY[0x1E69E6810])
  {
    [v2 unsignedLongAtIndex_];
    return swift_dynamicCast();
  }

  if (a1 == MEMORY[0x1E69E6530])
  {
    [v2 longAtIndex_];
    return swift_dynamicCast();
  }

  if (a1 == MEMORY[0x1E69E76D8])
  {
    [v2 unsignedLongLongAtIndex_];
    return swift_dynamicCast();
  }

  if (a1 == MEMORY[0x1E69E7360])
  {
    [v2 longLongAtIndex_];
    return swift_dynamicCast();
  }

  if (a1 == MEMORY[0x1E6969080])
  {
    goto LABEL_37;
  }

  if (a1 == MEMORY[0x1E69E6158])
  {
    v19 = [v2 stringAtIndex_];
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();

    return swift_dynamicCast();
  }

  if (v7 == a1)
  {
    [v2 doubleAtIndex_];
    sub_1CF9E5C88();
    return swift_dynamicCast();
  }

  if (a1 == &type metadata for FPItemVersionData)
  {
LABEL_37:
    v20 = [v2 dataAtIndex_];
    sub_1CF9E5B88();

    return swift_dynamicCast();
  }

  if (v10 == a1)
  {
    v21 = [v2 dataAtIndex_];
    v22 = sub_1CF9E5B88();
    v24 = v23;

    sub_1CF9E6918();
    v25 = sub_1CF9E68D8();
    if (v26)
    {
      v27 = HIBYTE(v26) & 0xF;
      if ((v26 & 0x2000000000000000) == 0)
      {
        v27 = v25 & 0xFFFFFFFFFFFFLL;
      }

      if (v27)
      {
        sub_1CF9E6888();
      }

      sub_1CEFE4714(v22, v24);
    }

    else
    {
      sub_1CEFE4714(v22, v24);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9B8, &qword_1CF9FEF70);
    return swift_dynamicCast();
  }

  else
  {
    v11 = sub_1CF9E5688();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    sub_1CF9E5678();
    v14 = [v2 dataAtIndex_];
    v15 = sub_1CF9E5B88();
    v17 = v16;

    sub_1CF9E5668();
    sub_1CEFE4714(v15, v17);
  }
}

uint64_t sub_1CF4C1A28@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v30 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = sub_1CF9E75D8();
  v28 = *(v7 - 8);
  v29 = v7;
  v8 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v28 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v28 - v18;
  if (swift_dynamicCastMetatype())
  {
    v31 = [v33 longAtIndex_];
    swift_dynamicCast();
    sub_1CF9E6C38();
    v20 = *(a2 - 8);
    if ((*(v20 + 48))(v19, 1, a2) != 1)
    {
      return (*(v20 + 32))(v30, v19, a2);
    }

LABEL_9:
    (*(v28 + 8))(v19, v29);
    sub_1CF1DA5D8();
    swift_allocError();
    *v22 = 0;
    return swift_willThrow();
  }

  v21 = v33;
  if (swift_dynamicCastMetatype())
  {
    v31 = [v21 unsignedLongAtIndex_];
    swift_dynamicCast();
    sub_1CF9E6C38();
    v20 = *(a2 - 8);
    v19 = v16;
    if ((*(v20 + 48))(v16, 1, a2) != 1)
    {
      return (*(v20 + 32))(v30, v19, a2);
    }

    goto LABEL_9;
  }

  if (!swift_dynamicCastMetatype())
  {
    if (!swift_dynamicCastMetatype())
    {
      sub_1CF50EF54("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 363);
    }

    v24 = [v21 stringAtIndex_];
    v25 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v27 = v26;

    v31 = v25;
    v32 = v27;
    swift_dynamicCast();
    sub_1CF9E6C38();
    v20 = *(a2 - 8);
    v19 = v10;
    if ((*(v20 + 48))(v10, 1, a2) != 1)
    {
      return (*(v20 + 32))(v30, v19, a2);
    }

    goto LABEL_9;
  }

  v31 = [v21 unsignedLongLongAtIndex_];
  swift_dynamicCast();
  sub_1CF9E6C38();
  v20 = *(a2 - 8);
  v19 = v13;
  if ((*(v20 + 48))(v13, 1, a2) == 1)
  {
    goto LABEL_9;
  }

  return (*(v20 + 32))(v30, v19, a2);
}

uint64_t sub_1CF4C1F24@<X0>(uint64_t a1@<X0>, ValueMetadata *a2@<X1>, uint64_t a3@<X8>)
{
  if ([v3 isNullAtIndex_])
  {
    v8 = 1;
  }

  else
  {
    result = sub_1CF4C1368(a2, a1);
    if (v4)
    {
      return result;
    }

    v8 = 0;
  }

  return (*(a2[-1].Description + 7))(a3, v8, 1, a2);
}

void *sub_1CF4C1FE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = sub_1CF9E6DA8();
  v10 = v8;
  if ([v3 next])
  {
    while (1)
    {
      v8 = objc_autoreleasePoolPush();
      sub_1CF4C2D30(&v10, a1, a2, a3);
      if (v4)
      {
        break;
      }

      objc_autoreleasePoolPop(v8);
      if (([v3 next] & 1) == 0)
      {
        return v10;
      }
    }

    objc_autoreleasePoolPop(v8);
  }

  return v8;
}

uint64_t sub_1CF4C20AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_1CF9E7978();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v22 - v10;
  v12 = sub_1CF9E7AC8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v22 - v15;
  v22[0] = 40;
  v22[1] = 0xE100000000000000;
  MEMORY[0x1D3868E50](a2, a3);
  *(swift_allocObject() + 16) = v4;
  v17 = v4;
  swift_getWitnessTable();
  sub_1CF9E7C38();

  (*(v8 + 8))(v11, v7);
  swift_getWitnessTable();
  sub_1CEFE4E68();
  v18 = sub_1CF9E6C18();
  v20 = v19;
  (*(v13 + 8))(v16, v12);
  MEMORY[0x1D3868CC0](v18, v20);

  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  return v22[0];
}

void *sub_1CF4C2330(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v40[1] = a2;
  v64 = *MEMORY[0x1E69E9840];
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v40[0] = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v40 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v40 - v12;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v41 = v5;
  v16 = *(v5 + 16);
  v16(v40 - v17, v3, a1, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
  if (!swift_dynamicCast())
  {
    (v16)(v13, v3, a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF270, &qword_1CFA01B70);
    if (swift_dynamicCast())
    {
      v50 = v58;
      v51 = v59;
      v52[0] = *v60;
      *(v52 + 9) = *&v60[9];
      v48 = v56;
      v49 = v57;
      v24 = sub_1CF9E5438();
      v25 = *(v24 + 48);
      v26 = *(v24 + 52);
      swift_allocObject();
      sub_1CF9E5428();
      v44 = v50;
      v45 = v51;
      v46[0] = v52[0];
      *(v46 + 9) = *(v52 + 9);
      v42 = v48;
      v43 = v49;
      v21 = &unk_1EC4C0820;
      v22 = &qword_1EC4BF270;
      v23 = &qword_1CFA01B70;
      goto LABEL_5;
    }

    swift_getDynamicType();
    sub_1CEFD57E0(0, &qword_1EDEA3440, 0x1E696ABC0);
    if (swift_dynamicCastMetatype())
    {
      v28 = objc_opt_self();
      (v16)(v10, v3, a1);
      v29 = sub_1CF9E8028();
      (*(v41 + 8))(v10, a1);
      *&v56 = 0;
      v30 = [v28 archivedDataWithRootObject:v29 requiringSecureCoding:1 error:&v56];
      swift_unknownObjectRelease();
      v31 = v56;
      if (v30)
      {
LABEL_13:
        v27 = sub_1CF9E5B88();

        goto LABEL_14;
      }
    }

    else
    {
      v32 = v40[0];
      (v16)(v40[0], v3, a1);
      v33 = sub_1CF9E7FB8();
      if (v33)
      {
        v34 = v33;
        (*(v41 + 8))(v32, a1);
      }

      else
      {
        v34 = swift_allocError();
        (*(v41 + 32))(v35, v32, a1);
      }

      v36 = objc_opt_self();
      v37 = sub_1CF9E57E8();

      *&v56 = 0;
      v30 = [v36 archivedDataWithRootObject:v37 requiringSecureCoding:1 error:&v56];

      v31 = v56;
      if (v30)
      {
        goto LABEL_13;
      }
    }

    v27 = v31;
    sub_1CF9E57F8();

    swift_willThrow();
    goto LABEL_14;
  }

  v53 = v61;
  v54 = v62;
  v55 = v63;
  v50 = v58;
  v51 = v59;
  v52[0] = *v60;
  v52[1] = *&v60[16];
  v48 = v56;
  v49 = v57;
  v18 = sub_1CF9E5438();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  sub_1CF9E5428();
  v46[2] = v53;
  v46[3] = v54;
  v47 = v55;
  v44 = v50;
  v45 = v51;
  v46[0] = v52[0];
  v46[1] = v52[1];
  v42 = v48;
  v43 = v49;
  v21 = &unk_1EC4C0828;
  v22 = &unk_1EC4BE320;
  v23 = &unk_1CFA08B50;
LABEL_5:
  sub_1CEFCCCEC(v21, v22, v23);
  v27 = sub_1CF9E5418();

  sub_1CEFCCC44(&v48, v22, v23);
LABEL_14:
  v38 = *MEMORY[0x1E69E9840];
  return v27;
}

void sub_1CF4C2898(uint64_t a1, uint64_t a2)
{
  v19 = sub_1CF9E79E8();
  v16 = *(v19 - 8);
  v3 = *(v16 + 64);
  v4 = MEMORY[0x1EEE9AC00](v19);
  v15 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - v6;
  v8 = sub_1CF9E5408();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  sub_1CF9E53F8();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
  sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
  v12 = swift_allocError();
  sub_1CEFCCCEC(qword_1EDEAB038, &unk_1EC4BE320, &unk_1CFA08B50);
  v17 = a2;
  v13 = v18;
  sub_1CF9E53E8();
  if (v13)
  {
    MEMORY[0x1D386CA40](v12, v11);
    v20 = v13;
    v14 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    if (swift_dynamicCast())
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF270, &qword_1CFA01B70);
      sub_1CEFCCCEC(&qword_1EDEAB020, &qword_1EC4BF270, &qword_1CFA01B70);
      swift_allocError();
      sub_1CEFCCCEC(&qword_1EDEAB028, &qword_1EC4BF270, &qword_1CFA01B70);
      sub_1CF9E53E8();

      (*(v16 + 8))(v7, v19);
    }

    else
    {
    }
  }

  else
  {
  }
}

uint64_t sub_1CF4C2D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*(a4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](a1);
  result = v7(v6);
  if (!v4)
  {
    sub_1CF9E6E58();
    return sub_1CF9E6E18();
  }

  return result;
}

void sub_1CF4C2DD8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1CF9E5248();
  v59 = *(v4 - 8);
  v60 = v4;
  v5 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v61 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v57 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v55 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v55 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v55 - v18;
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v55 - v22;
  v24 = *(v7 + 16);
  v58 = v2;
  v24(&v55 - v22, v2, a1, v21);
  v64 = 13;
  (v24)(v19, v23, a1);
  v25 = sub_1CF9E7FB8();
  if (v25)
  {
    v26 = v25;
    (*(v7 + 8))(v19, a1);
  }

  else
  {
    v26 = swift_allocError();
    (*(v7 + 32))(v27, v19, a1);
  }

  _s3__C4CodeOMa_0(0);
  sub_1CF4C3D64(&unk_1EC4BD5E0, _s3__C4CodeOMa_0);
  v28 = sub_1CF9E5658();

  if (v28)
  {
    goto LABEL_9;
  }

  LODWORD(v64) = sub_1CF9E5348();
  (v24)(v16, v23, a1);
  v29 = sub_1CF9E7FB8();
  if (v29)
  {
    v30 = v29;
    (*(v7 + 8))(v16, a1);
  }

  else
  {
    v30 = swift_allocError();
    (*(v7 + 32))(v31, v16, a1);
  }

  sub_1CF196978();
  v32 = sub_1CF9E5658();

  if (v32)
  {
LABEL_9:
    (*(v7 + 8))(v23, a1);
  }

  else
  {
    sub_1CF9E5138();
    v33 = *(v7 + 32);
    v33(v13, v23, a1);
    v34 = sub_1CF9E7FB8();
    v56 = v33;
    if (v34)
    {
      v35 = v34;
      (*(v7 + 8))(v13, a1);
    }

    else
    {
      v35 = swift_allocError();
      v33(v36, v13, a1);
    }

    sub_1CF4C3D64(&qword_1EDEAB460, MEMORY[0x1E6967E70]);
    v37 = v60;
    v38 = v61;
    v39 = sub_1CF9E5658();

    (*(v59 + 8))(v38, v37);
    if ((v39 & 1) == 0)
    {
      v40 = v57;
      (v24)(v57, v58, a1);
      v41 = sub_1CF9E7FB8();
      if (v41)
      {
        v42 = v41;
        (*(v7 + 8))(v40, a1);
      }

      else
      {
        v42 = swift_allocError();
        v56(v43, v40, a1);
      }

      v44 = sub_1CF9E57E8();

      v45 = [v44 underlyingErrors];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
      v46 = sub_1CF9E6D48();

      v47 = 0;
      v48 = *(v46 + 16);
      while (1)
      {
        if (v48 == v47)
        {
LABEL_22:

          return;
        }

        if (v47 >= *(v46 + 16))
        {
          break;
        }

        v49 = v47 + 1;
        v50 = *(v46 + 8 * v47 + 32);
        swift_getErrorValue();
        v51 = v62;
        v52 = v63;
        v53 = v50;
        v54 = sub_1CF4C2DD8(v51, v52);

        v47 = v49;
        if (v54)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_1CF4C33FC(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v49 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v51 = &v48 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v50 = &v48 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v48 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v48 - v16;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v48 - v20;
  v22 = *(v5 + 16);
  v22(&v48 - v20, v2, a1, v19);
  v53 = 11;
  (v22)(v17, v21, a1);
  v23 = sub_1CF9E7FB8();
  v52 = a2;
  if (v23)
  {
    v24 = v23;
    (*(v5 + 8))(v17, a1);
  }

  else
  {
    v24 = swift_allocError();
    (*(v5 + 32))(v25, v17, a1);
  }

  _s3__C4CodeOMa_0(0);
  sub_1CF4C3D64(&unk_1EC4BD5E0, _s3__C4CodeOMa_0);
  v26 = sub_1CF9E5658();

  if (v26)
  {
    goto LABEL_23;
  }

  v53 = 26;
  (v22)(v14, v21, a1);
  v27 = sub_1CF9E7FB8();
  if (v27)
  {
    v28 = v27;
    (*(v5 + 8))(v14, a1);
  }

  else
  {
    v28 = swift_allocError();
    (*(v5 + 32))(v29, v14, a1);
  }

  v30 = sub_1CF9E5658();

  if (v30)
  {
    goto LABEL_23;
  }

  v53 = 24;
  v31 = v50;
  (v22)(v50, v21, a1);
  v32 = sub_1CF9E7FB8();
  if (v32)
  {
    v33 = v32;
    (*(v5 + 8))(v31, a1);
  }

  else
  {
    v33 = swift_allocError();
    (*(v5 + 32))(v34, v31, a1);
  }

  v35 = v51;
  v36 = sub_1CF9E5658();

  if (v36)
  {
    goto LABEL_23;
  }

  v53 = 19;
  (v22)(v35, v21, a1);
  v37 = sub_1CF9E7FB8();
  if (v37)
  {
    v38 = v37;
    (*(v5 + 8))(v35, a1);
  }

  else
  {
    v38 = swift_allocError();
    (*(v5 + 32))(v39, v35, a1);
  }

  v40 = sub_1CF9E5658();

  if (v40)
  {
    goto LABEL_23;
  }

  v53 = 20;
  v41 = v49;
  (v22)(v49, v21, a1);
  v42 = sub_1CF9E7FB8();
  if (v42)
  {
    v43 = v42;
    (*(v5 + 8))(v41, a1);
  }

  else
  {
    v43 = swift_allocError();
    (*(v5 + 32))(v44, v41, a1);
  }

  v45 = sub_1CF9E5658();

  if ((v45 & 1) != 0 || (type metadata accessor for PQLSqliteError(0), !swift_dynamicCast()))
  {
LABEL_23:
    v46 = 0;
  }

  else
  {

    v46 = 1;
  }

  (*(v5 + 8))(v21, a1);
  return v46;
}

uint64_t sub_1CF4C39BC(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[1] = 1;
  (*(v2 + 16))(v6, v7, a1, v4);
  v8 = sub_1CF9E7FB8();
  if (v8)
  {
    v9 = v8;
    (*(v2 + 8))(v6, a1);
  }

  else
  {
    v9 = swift_allocError();
    (*(v2 + 32))(v10, v6, a1);
  }

  _s3__C4CodeOMa_0(0);
  sub_1CF4C3D64(&unk_1EC4BD5E0, _s3__C4CodeOMa_0);
  v11 = sub_1CF9E5658();

  return v11 & 1;
}

uint64_t sub_1CF4C3B5C(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v6, v7, a1, v4);
  v8 = sub_1CF9E7FB8();
  if (v8)
  {
    v9 = v8;
    (*(v2 + 8))(v6, a1);
  }

  else
  {
    v9 = swift_allocError();
    (*(v2 + 32))(v10, v6, a1);
  }

  v11 = sub_1CF9E57E8();

  v12 = [v11 domain];
  v13 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v15 = v14;

  v16 = [v11 code];
  v17 = [v11 extendedSqliteCode];
  if (v17)
  {
    v18 = v17;
    v23 = v13;
    v24 = v15;
    MEMORY[0x1D3868CC0](58, 0xE100000000000000);
    v22 = v18;
  }

  else
  {
    v23 = v13;
    v24 = v15;
    MEMORY[0x1D3868CC0](58, 0xE100000000000000);
    v22 = v16;
  }

  v19 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v19);

  return v23;
}

uint64_t sub_1CF4C3D64(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t VFSItemID.init(kind:handle:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *(a2 + 4);
  v7 = a2[4];

  v9 = (v4 - 1) < 2 || v6 == 0;
  v10 = v9;
  if (v9)
  {
    v11 = v5;
  }

  else
  {
    v11 = v6;
  }

  *a3 = v11;
  *(a3 + 8) = v10;
  return result;
}

void VFSItemID.init(fromRestoreResultSet:at:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = [a1 longAtIndex_];
  v7 = v6 + 0x7FFFFFFFFFFFFFFFLL;
  if ((v6 & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    v7 = v6;
  }

  if (v6 >= 1)
  {
    v8 = 0x7FFFFFFF - v6;
  }

  else
  {
    v8 = v7;
  }

  sub_1CEFE9AC4(v8, &v10);

  if (!v3)
  {
    v9 = v11;
    *a3 = v10;
    *(a3 + 8) = v9;
  }
}

void VFSItemID.init(rs:at:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1CEFE9AC4([a1 longAtIndex_], &v7);

  if (!v3)
  {
    v6 = v8;
    *a3 = v7;
    *(a3 + 8) = v6;
  }
}

uint64_t VFSItemID.encode(_:)(void *a1)
{
  v2 = *v1;
  if (!*(v1 + 8))
  {
    goto LABEL_5;
  }

  if (*(v1 + 8) != 1)
  {
    v2 = (v2 != 0) << 63;
    goto LABEL_7;
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_5:
    v2 = -v2;
  }

LABEL_7:
  v3 = [a1 bindLongParameter_];
  v4 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();

  return v4;
}

uint64_t static VFSItemID.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return v2 == v3;
    }

    return 0;
  }

  if (*(a1 + 8) == 1)
  {
    if (v4 == 1)
    {
      return v2 == v3;
    }

    return 0;
  }

  if (v2)
  {
    if (v4 != 2 || v3 != 1)
    {
      return 0;
    }
  }

  else if (v4 != 2 || v3 != 0)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_1CF4C4044()
{

  v0 = sub_1CF9E6A78();
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    do
    {
      v6 = sub_1CF9E6A78();
      if (!v7)
      {

        return 1;
      }

      if (v2 == v6 && v3 == v7)
      {
      }

      else
      {
        v4 = sub_1CF9E8048();

        if ((v4 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v2 = sub_1CF9E6A78();
      v3 = v5;
    }

    while (v5);
  }

  sub_1CF9E6A78();
  v9 = v8;

  if (!v9)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

unint64_t VFSItemID.rawValue.getter()
{
  result = *v0;
  if (!*(v0 + 8))
  {
    return -result;
  }

  if (*(v0 + 8) != 1)
  {
    return (result != 0) << 63;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  return result;
}

void VFSItemID.init(rawValue:)(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1CF9E5248();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = sub_1CF9E5268();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (a1 == 0x8000000000000000)
    {
      LOBYTE(v12) = 2;
      a1 = 1;
    }

    else if ((a1 & 0x8000000000000000) != 0)
    {
      a1 = -a1;
      v12 = HIDWORD(a1);
      if (HIDWORD(a1))
      {
        v13 = v9;
        sub_1CF9E51B8();
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF24D0AC();
        sub_1CF9E57D8();
        v14 = sub_1CF9E50D8();
        (*(v7 + 8))(v11, v13);
        swift_willThrow();

        a1 = 0;
        LOBYTE(v12) = -1;
      }
    }

    else
    {
      LOBYTE(v12) = 1;
    }
  }

  else
  {
    LOBYTE(v12) = 2;
  }

  *a2 = a1;
  *(a2 + 8) = v12;
}

unint64_t VFSItemID.init(sqliteValue:)@<X0>(sqlite3_value *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1CF9E5248();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = sub_1CF9E5268();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sqlite3_value_int64(a1);
  if (result == 0x8000000000000000)
  {
    LOBYTE(v12) = 2;
    result = 1;
  }

  else if (result)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      result = -result;
      v12 = HIDWORD(result);
      if (HIDWORD(result))
      {
        sub_1CF9E51B8();
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF24D0AC();
        sub_1CF9E57D8();
        sub_1CF9E50D8();
        (*(v7 + 8))(v10, v6);
        return swift_willThrow();
      }
    }

    else
    {
      LOBYTE(v12) = 1;
    }
  }

  else
  {
    LOBYTE(v12) = 2;
  }

  *a2 = result;
  *(a2 + 8) = v12;
  return result;
}

uint64_t VFSItemID.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1CF1A91AC(a1, v8);
  v5 = sub_1CF9E7098();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_1CEFE9AC4(v5, &v9);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v7 = v10;
  *a2 = v9;
  *(a2 + 8) = v7;
  return result;
}

uint64_t VFSItemID.encode(to:)()
{
  if (*(v0 + 8) && *(v0 + 8) == 1 && (*v0 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  return sub_1CF9E70A8();
}

uint64_t VFSItemID.hash(into:)()
{
  v1 = *v0;
  if (*(v0 + 8))
  {
    if (*(v0 + 8) == 1)
    {
      MEMORY[0x1D386A470](1);
      return MEMORY[0x1D386A4A0](v1);
    }

    else
    {
      if (v1)
      {
        v3 = 3;
      }

      else
      {
        v3 = 2;
      }

      return MEMORY[0x1D386A470](v3);
    }
  }

  else
  {
    MEMORY[0x1D386A470](0);
    return sub_1CF9E8208();
  }
}

uint64_t VFSItemID.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1CF9E81D8();
  if (v2)
  {
    if (v2 == 1)
    {
      MEMORY[0x1D386A470](1);
      MEMORY[0x1D386A4A0](v1);
    }

    else
    {
      if (v1)
      {
        v3 = 3;
      }

      else
      {
        v3 = 2;
      }

      MEMORY[0x1D386A470](v3);
    }
  }

  else
  {
    MEMORY[0x1D386A470](0);
    sub_1CF9E8208();
  }

  return sub_1CF9E8228();
}

uint64_t sub_1CF4C4778(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  return VFSItemID.description.getter(a1, a2);
}

uint64_t sub_1CF4C47B8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1CF9E81D8();
  if (v2)
  {
    if (v2 == 1)
    {
      MEMORY[0x1D386A470](1);
      MEMORY[0x1D386A4A0](v1);
    }

    else
    {
      if (v1)
      {
        v3 = 3;
      }

      else
      {
        v3 = 2;
      }

      MEMORY[0x1D386A470](v3);
    }
  }

  else
  {
    MEMORY[0x1D386A470](0);
    sub_1CF9E8208();
  }

  return sub_1CF9E8228();
}

uint64_t sub_1CF4C4854()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1CF9E81D8();
  if (v2)
  {
    if (v2 == 1)
    {
      MEMORY[0x1D386A470](1);
      MEMORY[0x1D386A4A0](v1);
    }

    else
    {
      if (v1)
      {
        v3 = 3;
      }

      else
      {
        v3 = 2;
      }

      MEMORY[0x1D386A470](v3);
    }
  }

  else
  {
    MEMORY[0x1D386A470](0);
    sub_1CF9E8208();
  }

  return sub_1CF9E8228();
}

uint64_t sub_1CF4C4914@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1CF1A91AC(a1, v8);
  v5 = sub_1CF9E7098();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_1CEFE9AC4(v5, &v9);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v7 = v10;
  *a2 = v9;
  *(a2 + 8) = v7;
  return result;
}

uint64_t sub_1CF4C49A4()
{
  if (*(v0 + 8) && *(v0 + 8) == 1 && (*v0 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  return sub_1CF9E70A8();
}

uint64_t sub_1CF4C49F0()
{
  v0 = sub_1CF9E6B58();
  v4 = sub_1CF4C4A70(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1CF4C4A70(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1CF9E69A8();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_1CF9E75F8();
  if (!v9)
  {
    v11 = MEMORY[0x1E69E7CC0];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_1CEFD0D7C(v9, 0);
  v12 = sub_1CF4C4BC8(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_1CF9E69A8();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_1CF9E79F8();
LABEL_4:

  return sub_1CF9E69A8();
}

unint64_t sub_1CF4C4BC8(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1CF4C4DE8(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1CF9E6AC8();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1CF9E79F8();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1CF4C4DE8(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1CF9E6A98();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1CF4C4DE8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1CF9E6AD8();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1D3868D30](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unsigned __int8 *sub_1CF4C4E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v72 = a1;
  v73 = a2;
  v74 = a3;
  v75 = a4;
  sub_1CF4C625C();

  result = sub_1CF9E6B48();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_1CF4C49F0();
    v42 = v41;

    v7 = v42;
    if ((v42 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1CF9E79F8();
      v9 = v71;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v24 = v9 - 1;
        if (v24)
        {
          v25 = a5 + 48;
          v26 = a5 + 55;
          v27 = a5 + 87;
          if (a5 > 10)
          {
            v25 = 58;
          }

          else
          {
            v27 = 97;
            v26 = 65;
          }

          if (result)
          {
            v15 = 0;
            v28 = result + 1;
            v17 = 1;
            do
            {
              v29 = *v28;
              if (v29 < 0x30 || v29 >= v25)
              {
                if (v29 < 0x41 || v29 >= v26)
                {
                  v20 = 0;
                  if (v29 < 0x61 || v29 >= v27)
                  {
                    goto LABEL_127;
                  }

                  v30 = -87;
                }

                else
                {
                  v30 = -55;
                }
              }

              else
              {
                v30 = -48;
              }

              v31 = v15 * a5;
              if (v31 != v31)
              {
                goto LABEL_126;
              }

              v32 = v29 + v30;
              v23 = __OFADD__(v31, v32);
              v15 = v31 + v32;
              if (v23)
              {
                goto LABEL_126;
              }

              ++v28;
              --v24;
            }

            while (v24);
LABEL_46:
            v17 = 0;
            v20 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v20 = 0;
        v17 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v33 = a5 + 48;
        v34 = a5 + 55;
        v35 = a5 + 87;
        if (a5 > 10)
        {
          v33 = 58;
        }

        else
        {
          v35 = 97;
          v34 = 65;
        }

        if (result)
        {
          v36 = 0;
          v17 = 1;
          do
          {
            v37 = *result;
            if (v37 < 0x30 || v37 >= v33)
            {
              if (v37 < 0x41 || v37 >= v34)
              {
                v20 = 0;
                if (v37 < 0x61 || v37 >= v35)
                {
                  goto LABEL_127;
                }

                v38 = -87;
              }

              else
              {
                v38 = -55;
              }
            }

            else
            {
              v38 = -48;
            }

            v39 = v36 * a5;
            if (v39 != v39)
            {
              goto LABEL_126;
            }

            v40 = v37 + v38;
            v23 = __OFADD__(v39, v40);
            v36 = v39 + v40;
            if (v23)
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v17 = 0;
          v20 = v36;
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          v17 = 1;
          while (1)
          {
            v18 = *v16;
            if (v18 < 0x30 || v18 >= v12)
            {
              if (v18 < 0x41 || v18 >= v13)
              {
                v20 = 0;
                if (v18 < 0x61 || v18 >= v14)
                {
                  goto LABEL_127;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            v21 = v15 * a5;
            if (v21 != v21)
            {
              goto LABEL_126;
            }

            v22 = v18 + v19;
            v23 = __OFSUB__(v21, v22);
            v15 = v21 - v22;
            if (v23)
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v20 = 0;
        v17 = 0;
LABEL_127:

        LOBYTE(v72) = v17;
        return (v20 | (v17 << 32));
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v43 = HIBYTE(v7) & 0xF;
  v72 = v8;
  v73 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v43)
      {
        v45 = 0;
        v63 = a5 + 48;
        v64 = a5 + 55;
        v65 = a5 + 87;
        if (a5 > 10)
        {
          v63 = 58;
        }

        else
        {
          v65 = 97;
          v64 = 65;
        }

        v66 = &v72;
        v17 = 1;
        while (1)
        {
          v67 = *v66;
          if (v67 < 0x30 || v67 >= v63)
          {
            if (v67 < 0x41 || v67 >= v64)
            {
              v20 = 0;
              if (v67 < 0x61 || v67 >= v65)
              {
                goto LABEL_127;
              }

              v68 = -87;
            }

            else
            {
              v68 = -55;
            }
          }

          else
          {
            v68 = -48;
          }

          v69 = v45 * a5;
          if (v69 != v69)
          {
            goto LABEL_126;
          }

          v70 = v67 + v68;
          v23 = __OFADD__(v69, v70);
          v45 = v69 + v70;
          if (v23)
          {
            goto LABEL_126;
          }

          v66 = (v66 + 1);
          if (!--v43)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v43)
    {
      v44 = v43 - 1;
      if (v44)
      {
        v45 = 0;
        v46 = a5 + 48;
        v47 = a5 + 55;
        v48 = a5 + 87;
        if (a5 > 10)
        {
          v46 = 58;
        }

        else
        {
          v48 = 97;
          v47 = 65;
        }

        v49 = &v72 + 1;
        v17 = 1;
        while (1)
        {
          v50 = *v49;
          if (v50 < 0x30 || v50 >= v46)
          {
            if (v50 < 0x41 || v50 >= v47)
            {
              v20 = 0;
              if (v50 < 0x61 || v50 >= v48)
              {
                goto LABEL_127;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v45 * a5;
          if (v52 != v52)
          {
            goto LABEL_126;
          }

          v53 = v50 + v51;
          v23 = __OFSUB__(v52, v53);
          v45 = v52 - v53;
          if (v23)
          {
            goto LABEL_126;
          }

          ++v49;
          if (!--v44)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v43)
  {
    v54 = v43 - 1;
    if (v54)
    {
      v45 = 0;
      v55 = a5 + 48;
      v56 = a5 + 55;
      v57 = a5 + 87;
      if (a5 > 10)
      {
        v55 = 58;
      }

      else
      {
        v57 = 97;
        v56 = 65;
      }

      v58 = &v72 + 1;
      v17 = 1;
      do
      {
        v59 = *v58;
        if (v59 < 0x30 || v59 >= v55)
        {
          if (v59 < 0x41 || v59 >= v56)
          {
            v20 = 0;
            if (v59 < 0x61 || v59 >= v57)
            {
              goto LABEL_127;
            }

            v60 = -87;
          }

          else
          {
            v60 = -55;
          }
        }

        else
        {
          v60 = -48;
        }

        v61 = v45 * a5;
        if (v61 != v61)
        {
          goto LABEL_126;
        }

        v62 = v59 + v60;
        v23 = __OFADD__(v61, v62);
        v45 = v61 + v62;
        if (v23)
        {
          goto LABEL_126;
        }

        ++v58;
        --v54;
      }

      while (v54);
LABEL_125:
      v17 = 0;
      v20 = v45;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unsigned __int8 *sub_1CF4C53EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int64_t a5)
{
  v70 = a1;
  v71 = a2;
  v72 = a3;
  v73 = a4;
  sub_1CF4C625C();

  result = sub_1CF9E6B48();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_1CF4C49F0();
    v40 = v39;

    v7 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1CF9E79F8();
      v9 = v69;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v23 = v9 - 1;
        if (v23)
        {
          v24 = a5 + 48;
          v25 = a5 + 55;
          v26 = a5 + 87;
          if (a5 > 10)
          {
            v24 = 58;
          }

          else
          {
            v26 = 97;
            v25 = 65;
          }

          if (result)
          {
            v15 = 0;
            v27 = result + 1;
            do
            {
              v28 = *v27;
              if (v28 < 0x30 || v28 >= v24)
              {
                if (v28 < 0x41 || v28 >= v25)
                {
                  v19 = 0;
                  if (v28 < 0x61 || v28 >= v26)
                  {
                    goto LABEL_129;
                  }

                  v29 = -87;
                }

                else
                {
                  v29 = -55;
                }
              }

              else
              {
                v29 = -48;
              }

              if (!is_mul_ok(v15, a5))
              {
                goto LABEL_128;
              }

              v30 = v15 * a5;
              v31 = v28 + v29;
              v22 = __CFADD__(v30, v31);
              v15 = v30 + v31;
              if (v22)
              {
                goto LABEL_128;
              }

              ++v27;
              --v23;
            }

            while (v23);
LABEL_66:
            v19 = v15;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v32 = a5 + 48;
        v33 = a5 + 55;
        v34 = a5 + 87;
        if (a5 > 10)
        {
          v32 = 58;
        }

        else
        {
          v34 = 97;
          v33 = 65;
        }

        if (result)
        {
          v15 = 0;
          while (1)
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v32)
            {
              if (v35 < 0x41 || v35 >= v33)
              {
                v19 = 0;
                if (v35 < 0x61 || v35 >= v34)
                {
                  goto LABEL_129;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            if (!is_mul_ok(v15, a5))
            {
              goto LABEL_128;
            }

            v37 = v15 * a5;
            v38 = v35 + v36;
            v22 = __CFADD__(v37, v38);
            v15 = v37 + v38;
            if (v22)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v19 = 0;
      goto LABEL_129;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_129;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            if (!is_mul_ok(v15, a5))
            {
              goto LABEL_128;
            }

            v20 = v15 * a5;
            v21 = v17 + v18;
            v22 = v20 >= v21;
            v15 = v20 - v21;
            if (!v22)
            {
              goto LABEL_128;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v19 = 0;
LABEL_129:

        return v19;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v41 = HIBYTE(v7) & 0xF;
  v70 = v8;
  v71 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a5 + 48;
        v62 = a5 + 55;
        v63 = a5 + 87;
        if (a5 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v70;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v19 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_129;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          if (!is_mul_ok(v43, a5))
          {
            goto LABEL_128;
          }

          v67 = v43 * a5;
          v68 = v65 + v66;
          v22 = __CFADD__(v67, v68);
          v43 = v67 + v68;
          if (v22)
          {
            goto LABEL_128;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a5 + 48;
        v45 = a5 + 55;
        v46 = a5 + 87;
        if (a5 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v70 + 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v19 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_129;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          if (!is_mul_ok(v43, a5))
          {
            goto LABEL_128;
          }

          v50 = v43 * a5;
          v51 = v48 + v49;
          v22 = v50 >= v51;
          v43 = v50 - v51;
          if (!v22)
          {
            goto LABEL_128;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a5 + 48;
      v54 = a5 + 55;
      v55 = a5 + 87;
      if (a5 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v70 + 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v19 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_129;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        if (!is_mul_ok(v43, a5))
        {
          goto LABEL_128;
        }

        v59 = v43 * a5;
        v60 = v57 + v58;
        v22 = __CFADD__(v59, v60);
        v43 = v59 + v60;
        if (v22)
        {
          goto LABEL_128;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_127:
      v19 = v43;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

unsigned __int8 *sub_1CF4C597C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v72 = a1;
  v73 = a2;
  v74 = a3;
  v75 = a4;
  sub_1CF4C625C();

  result = sub_1CF9E6B48();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_1CF4C49F0();
    v42 = v41;

    v7 = v42;
    if ((v42 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1CF9E79F8();
      v9 = v71;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v24 = v9 - 1;
        if (v24)
        {
          v25 = a5 + 48;
          v26 = a5 + 55;
          v27 = a5 + 87;
          if (a5 > 10)
          {
            v25 = 58;
          }

          else
          {
            v27 = 97;
            v26 = 65;
          }

          if (result)
          {
            v15 = 0;
            v28 = result + 1;
            v17 = 1;
            do
            {
              v29 = *v28;
              if (v29 < 0x30 || v29 >= v25)
              {
                if (v29 < 0x41 || v29 >= v26)
                {
                  v20 = 0;
                  if (v29 < 0x61 || v29 >= v27)
                  {
                    goto LABEL_129;
                  }

                  v30 = -87;
                }

                else
                {
                  v30 = -55;
                }
              }

              else
              {
                v30 = -48;
              }

              v31 = v15 * a5;
              if ((v31 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_128;
              }

              v32 = v29 + v30;
              v23 = __CFADD__(v31, v32);
              v15 = v31 + v32;
              if (v23)
              {
                goto LABEL_128;
              }

              ++v28;
              --v24;
            }

            while (v24);
LABEL_47:
            v17 = 0;
            v20 = v15;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v20 = 0;
        v17 = 1;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v33 = a5 + 48;
        v34 = a5 + 55;
        v35 = a5 + 87;
        if (a5 > 10)
        {
          v33 = 58;
        }

        else
        {
          v35 = 97;
          v34 = 65;
        }

        if (result)
        {
          v36 = 0;
          v17 = 1;
          do
          {
            v37 = *result;
            if (v37 < 0x30 || v37 >= v33)
            {
              if (v37 < 0x41 || v37 >= v34)
              {
                v20 = 0;
                if (v37 < 0x61 || v37 >= v35)
                {
                  goto LABEL_129;
                }

                v38 = -87;
              }

              else
              {
                v38 = -55;
              }
            }

            else
            {
              v38 = -48;
            }

            v39 = v36 * a5;
            if ((v39 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v40 = v37 + v38;
            v23 = __CFADD__(v39, v40);
            v36 = v39 + v40;
            if (v23)
            {
              goto LABEL_128;
            }

            ++result;
            --v9;
          }

          while (v9);
          v17 = 0;
          v20 = v36;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          v17 = 1;
          while (1)
          {
            v18 = *v16;
            if (v18 < 0x30 || v18 >= v12)
            {
              if (v18 < 0x41 || v18 >= v13)
              {
                v20 = 0;
                if (v18 < 0x61 || v18 >= v14)
                {
                  goto LABEL_129;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            v21 = v15 * a5;
            if ((v21 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v22 = v18 + v19;
            v23 = v21 >= v22;
            v15 = v21 - v22;
            if (!v23)
            {
              goto LABEL_128;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v20 = 0;
        v17 = 0;
LABEL_129:

        LOBYTE(v72) = v17;
        return (v20 | (v17 << 32));
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v43 = HIBYTE(v7) & 0xF;
  v72 = v8;
  v73 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v43)
      {
        v45 = 0;
        v63 = a5 + 48;
        v64 = a5 + 55;
        v65 = a5 + 87;
        if (a5 > 10)
        {
          v63 = 58;
        }

        else
        {
          v65 = 97;
          v64 = 65;
        }

        v66 = &v72;
        v17 = 1;
        while (1)
        {
          v67 = *v66;
          if (v67 < 0x30 || v67 >= v63)
          {
            if (v67 < 0x41 || v67 >= v64)
            {
              v20 = 0;
              if (v67 < 0x61 || v67 >= v65)
              {
                goto LABEL_129;
              }

              v68 = -87;
            }

            else
            {
              v68 = -55;
            }
          }

          else
          {
            v68 = -48;
          }

          v69 = v45 * a5;
          if ((v69 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v70 = v67 + v68;
          v23 = __CFADD__(v69, v70);
          v45 = v69 + v70;
          if (v23)
          {
            goto LABEL_128;
          }

          v66 = (v66 + 1);
          if (!--v43)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v43)
    {
      v44 = v43 - 1;
      if (v44)
      {
        v45 = 0;
        v46 = a5 + 48;
        v47 = a5 + 55;
        v48 = a5 + 87;
        if (a5 > 10)
        {
          v46 = 58;
        }

        else
        {
          v48 = 97;
          v47 = 65;
        }

        v49 = &v72 + 1;
        v17 = 1;
        while (1)
        {
          v50 = *v49;
          if (v50 < 0x30 || v50 >= v46)
          {
            if (v50 < 0x41 || v50 >= v47)
            {
              v20 = 0;
              if (v50 < 0x61 || v50 >= v48)
              {
                goto LABEL_129;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v45 * a5;
          if ((v52 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v53 = v50 + v51;
          v23 = v52 >= v53;
          v45 = v52 - v53;
          if (!v23)
          {
            goto LABEL_128;
          }

          ++v49;
          if (!--v44)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v43)
  {
    v54 = v43 - 1;
    if (v54)
    {
      v45 = 0;
      v55 = a5 + 48;
      v56 = a5 + 55;
      v57 = a5 + 87;
      if (a5 > 10)
      {
        v55 = 58;
      }

      else
      {
        v57 = 97;
        v56 = 65;
      }

      v58 = &v72 + 1;
      v17 = 1;
      do
      {
        v59 = *v58;
        if (v59 < 0x30 || v59 >= v55)
        {
          if (v59 < 0x41 || v59 >= v56)
          {
            v20 = 0;
            if (v59 < 0x61 || v59 >= v57)
            {
              goto LABEL_129;
            }

            v60 = -87;
          }

          else
          {
            v60 = -55;
          }
        }

        else
        {
          v60 = -48;
        }

        v61 = v45 * a5;
        if ((v61 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_128;
        }

        v62 = v59 + v60;
        v23 = __CFADD__(v61, v62);
        v45 = v61 + v62;
        if (v23)
        {
          goto LABEL_128;
        }

        ++v58;
        --v54;
      }

      while (v54);
LABEL_127:
      v17 = 0;
      v20 = v45;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_1CF4C5F04(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v13 = 0;
    return v13 | (((a4 >> 60) & 1) << 40);
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = sub_1CF9E79F8();
  }

  result = sub_1CF4C6320(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = BYTE4(result) & 1;
    v13 = result | ((BYTE4(result) & 1) << 32);
    return v13 | (((a4 >> 60) & 1) << 40);
  }

  return result;
}

unint64_t sub_1CF4C5FCC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFA30, &unk_1CFA079A0);
    v3 = sub_1CF9E7BE8();
    v4 = a1 + 32;

    while (1)
    {
      sub_1CF4C62B0(v4, &v13);
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

unint64_t sub_1CF4C60DC(void *a1)
{
  a1[2] = sub_1CF4C611C();
  a1[3] = sub_1CF25597C();
  a1[4] = sub_1CF255248();
  result = sub_1CF4C6170();
  a1[5] = result;
  return result;
}

unint64_t sub_1CF4C611C()
{
  result = qword_1EDEAB748;
  if (!qword_1EDEAB748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAB748);
  }

  return result;
}

unint64_t sub_1CF4C6170()
{
  result = qword_1EDEAB760;
  if (!qword_1EDEAB760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAB760);
  }

  return result;
}

unint64_t sub_1CF4C61C8()
{
  result = qword_1EDEAB758;
  if (!qword_1EDEAB758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAB758);
  }

  return result;
}

uint64_t sub_1CF4C621C(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1CF4C6234(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

unint64_t sub_1CF4C625C()
{
  result = qword_1EDEA3920;
  if (!qword_1EDEA3920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA3920);
  }

  return result;
}

uint64_t sub_1CF4C62B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE300, &unk_1CF9FC5D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CF4C6320(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_1CF4C4DE8(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_104;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_1CF9E6AB8();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_1CF4C4DE8(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_1CF4C4DE8(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_100;
  }

  if (v25 < a3 >> 16)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  result = sub_1CF9E6AB8();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_99;
  }

  if (v26 < v13)
  {
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v42 = a6 + 55;
        }

        else
        {
          v41 = 97;
          v42 = 65;
        }

        if (a6 <= 10)
        {
          v43 = a6 + 48;
        }

        else
        {
          v43 = 58;
        }

        if (v27)
        {
          v32 = 0;
          v44 = v27 + 1;
          v45 = result - 1;
          do
          {
            v46 = *v44;
            if (v46 < 0x30 || v46 >= v43)
            {
              if (v46 < 0x41 || v46 >= v42)
              {
                v37 = 0;
                v38 = 1;
                if (v46 < 0x61 || v46 >= v41)
                {
                  return v37 | (v38 << 32);
                }

                v47 = -87;
              }

              else
              {
                v47 = -55;
              }
            }

            else
            {
              v47 = -48;
            }

            v48 = v32 * a6;
            if ((v48 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_96;
            }

            v49 = v46 + v47;
            v32 = v48 + v49;
            if (__CFADD__(v48, v49))
            {
              goto LABEL_96;
            }

            ++v44;
            --v45;
          }

          while (v45);
LABEL_94:
          v38 = 0;
          v37 = v32;
          return v37 | (v38 << 32);
        }

        goto LABEL_95;
      }

      goto LABEL_96;
    }

    goto LABEL_103;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v50 = a6 + 87;
      if (a6 > 10)
      {
        v51 = a6 + 55;
      }

      else
      {
        v50 = 97;
        v51 = 65;
      }

      if (a6 <= 10)
      {
        v52 = a6 + 48;
      }

      else
      {
        v52 = 58;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v53 = *v27;
          if (v53 < 0x30 || v53 >= v52)
          {
            if (v53 < 0x41 || v53 >= v51)
            {
              v37 = 0;
              v38 = 1;
              if (v53 < 0x61 || v53 >= v50)
              {
                return v37 | (v38 << 32);
              }

              v54 = -87;
            }

            else
            {
              v54 = -55;
            }
          }

          else
          {
            v54 = -48;
          }

          v55 = v32 * a6;
          if ((v55 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_96;
          }

          v56 = v53 + v54;
          v32 = v55 + v56;
          if (__CFADD__(v55, v56))
          {
            goto LABEL_96;
          }

          ++v27;
          if (!--result)
          {
            goto LABEL_94;
          }
        }
      }

      goto LABEL_95;
    }

LABEL_96:
    v37 = 0;
    v38 = 1;
    return v37 | (v38 << 32);
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 87;
      if (a6 > 10)
      {
        v30 = a6 + 55;
      }

      else
      {
        v29 = 97;
        v30 = 65;
      }

      if (a6 <= 10)
      {
        v31 = a6 + 48;
      }

      else
      {
        v31 = 58;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v31)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              v38 = 1;
              if (v35 < 0x61 || v35 >= v29)
              {
                return v37 | (v38 << 32);
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v39 = v32 * a6;
          if ((v39 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_96;
          }

          v40 = v35 + v36;
          v32 = v39 - v40;
          if (v39 < v40)
          {
            goto LABEL_96;
          }

          ++v33;
          if (!--v34)
          {
            goto LABEL_94;
          }
        }
      }

LABEL_95:
      v37 = 0;
      v38 = 0;
      return v37 | (v38 << 32);
    }

    goto LABEL_96;
  }

LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
  return result;
}

void sub_1CF4C6818()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v11 - v2;
  v4 = sub_1CF9E5248();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF9E5128();
  v9 = sub_1CF9E5A58();
  (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
  v10 = sub_1CF9E5258();
  sub_1CEFCCC44(v3, &unk_1EC4BE310, qword_1CF9FCBE0);
  (*(v5 + 8))(v8, v4);

  qword_1EDEBB7F8 = &unk_1F4BEEEF8;
}

uint64_t sub_1CF4C69B8()
{
  v3 = *v0;
  sub_1CF056E98();
  v1 = sub_1CF9E6B28();
  MEMORY[0x1D3868CC0](v1);

  return 74;
}

uint64_t sub_1CF4C6A28(uint64_t a1)
{
  v5 = *v1;
  v3 = sub_1CF1DAE84();
  return (*(v3 + 16))(a1, v3);
}

__n128 sub_1CF4C6A8C@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(*(v1 + 16) + 56);
  v4 = *(v3 + 248);
  v5 = *(v3 + 184);
  v6 = *(v3 + 216);
  v15 = *(v3 + 200);
  v16 = v6;
  v17 = *(v3 + 232);
  v18 = v4;
  v13 = *(v3 + 168);
  v14 = v5;
  v7 = *(v3 + 280);
  v19 = *(v3 + 264);
  v20 = v7;
  v21 = *(v3 + 296);
  sub_1CF3386F8(&v13, &v12);
  v8 = v20;
  *(a1 + 96) = v19;
  *(a1 + 112) = v8;
  *(a1 + 128) = v21;
  v9 = v16;
  *(a1 + 32) = v15;
  *(a1 + 48) = v9;
  v10 = v18;
  *(a1 + 64) = v17;
  *(a1 + 80) = v10;
  result = v14;
  *a1 = v13;
  *(a1 + 16) = result;
  return result;
}

BOOL sub_1CF4C6B28()
{
  v1 = v0;
  v2 = *(*(v0 + 16) + 56);
  if (sub_1CF32E000())
  {
    return 1;
  }

  v4 = *(*(v1 + 24) + 56);
  return sub_1CF32E000();
}

void sub_1CF4C6B70(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *v7;
  v22 = a6;
  v23 = a7;
  v24 = v7;
  v25 = a2;
  v26 = a3;
  v13 = v12;
  v14 = (*(a7 + 24))(sub_1CF4D35F8, v21, a6, a7);
  if (!v8)
  {
    v15 = v14;
    if ([v14 next])
    {
      do
      {
        v16 = objc_autoreleasePoolPush();
        v17 = v13[79];
        v18 = v13[80];
        v19 = v13[81];
        v20 = v13[82];
        sub_1CF4C6CB4(a4, a5, v15);
        objc_autoreleasePoolPop(v16);
      }

      while (([v15 next] & 1) != 0);
    }
  }
}

uint64_t sub_1CF4C6CB4(void (*a1)(uint64_t), uint64_t a2, void *a3)
{
  v6 = type metadata accessor for FSOrFPJob();
  WitnessTable = swift_getWitnessTable();
  result = sub_1CF01E03C(a3, 0, v6, WitnessTable, &v9);
  if (!v3)
  {
    a1(v9);
  }

  return result;
}

unint64_t sub_1CF4C6D74(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  sub_1CF9E7948();

  v4 = a2(a1);
  MEMORY[0x1D3868CC0](v4);

  MEMORY[0x1D3868CC0](0x2054494D494C200ALL, 0xE900000000000031);
  return 0xD00000000000001CLL;
}

uint64_t sub_1CF4C6E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *v5;
  v15 = 0xF000000000000007;
  v10[1] = *(v7 + 632);
  v11 = a4;
  v12 = *(v7 + 648);
  v13 = a5;
  v14 = &v15;
  sub_1CF4C6B70(a1, a2, a3, sub_1CF4D35B4, v10, a4, a5);
  v8 = v15;
  if (v6)
  {
    sub_1CF09575C(v15);
  }

  return v8;
}

uint64_t sub_1CF4C6EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_1CF4C6E2C(a3, a1, a2, a4, a5);
  if (!v5)
  {
    if ((~result & 0xF000000000000007) != 0)
    {
      if (result < 0)
      {
        sub_1CF09575C(result);
        result = sub_1CF9E7B68();
        __break(1u);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1CF4C6F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_1CF4C6E2C(a3, a1, a2, a4, a5);
  if (v5)
  {
    return v7;
  }

  if ((~v6 & 0xF000000000000007) == 0)
  {
    return 0;
  }

  if (v6 < 0)
  {
    return v6 & 0x7FFFFFFFFFFFFFFFLL;
  }

  sub_1CF09575C(v6);
  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

unint64_t sub_1CF4C7020@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  (*(*(a3 + 8) + 88))(a2);
  v12[2] = a2;
  v12[3] = a3;
  v13 = v4;
  v14 = a1;
  result = (*(a3 + 32))(sub_1CF4D35A8, v12, a2, a3);
  if (!v5)
  {
    v11 = (*(a3 + 16))(a2, a3);
    a4[3] = &type metadata for SQLJobID;
    result = sub_1CF1DAE84();
    a4[4] = result;
    *a4 = v11;
  }

  return result;
}

uint64_t sub_1CF4C7118(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *a2;
  v25 = 0;
  v26 = 0xE000000000000000;
  sub_1CF9E7948();
  v29 = 0;
  v30 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0xD00000000000003DLL, 0x80000001CFA4F960);
  MEMORY[0x1D3868CC0](a2[7], a2[8]);
  MEMORY[0x1D3868CC0](0x5345554C41560A29, 0xEA00000000002820);
  v6 = v5[79];
  v7 = v5[80];
  v8 = v5[81];
  v9 = v5[82];
  sub_1CF052838(a3);
  v28 = MEMORY[0x1E69E6530];
  v25 = v10;
  v11 = sub_1CEFF8EA0(&v25);
  v13 = v12;
  sub_1CEFCCC44(&v25, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (!v13)
  {
    goto LABEL_4;
  }

  MEMORY[0x1D3868CC0](v11, v13);

  MEMORY[0x1D3868CC0](0x2020202020200A2CLL, 0xEA00000000002020);
  v14 = sub_1CF052838(a3);
  v28 = MEMORY[0x1E69E6810];
  v25 = v14;
  v15 = sub_1CEFF8EA0(&v25);
  v17 = v16;
  sub_1CEFCCC44(&v25, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v17)
  {
    MEMORY[0x1D3868CC0](v15, v17);

    MEMORY[0x1D3868CC0](0x2020202020200A2CLL, 0xEA00000000002020);
    v24 = a3;

    v25 = v6;
    v26 = v7;
    v27 = v8;
    v28 = v9;
    v18 = type metadata accessor for FSOrFPJob();
    WitnessTable = swift_getWitnessTable();
    v20 = sub_1CF073320(&v24, v18, WitnessTable);
    v22 = v21;

    MEMORY[0x1D3868CC0](v20, v22);

    MEMORY[0x1D3868CC0](41, 0xE100000000000000);
    return v29;
  }

  else
  {
LABEL_4:
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

void sub_1CF4C7418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = *v4;
  (*(*(a4 + 8) + 88))(a3);
  v9 = v8[79];
  v10 = v8[80];
  v11 = v8[81];
  v12 = v8[82];
  sub_1CF0451E0(a1, v33);
  if (!v34)
  {
    sub_1CEFCCC44(v33, &unk_1EC4C1BE0, &unk_1CF9FD400);
LABEL_26:
    sub_1CF50F200("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/SQLJobRegistry.swift", 133, 2, 194);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F00, &unk_1CF9FE4A0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_26;
  }

  v13 = v35;
  v14 = sub_1CF057B00(a1);
  if (v16 == 3 || (v16 == 4 ? (v17 = (v14 & 0xFFFFFFFFFFFFFFFELL | v15) == 0) : (v17 = 0), v17))
  {
    if (*(v5 + 40) == 1)
    {
      MEMORY[0x1EEE9AC00](v14);
      (*(a4 + 32))(sub_1CF480E94);
      return;
    }
  }

  v18 = sub_1CF057B00(a1);
  if (v20 == 1)
  {
    v21 = v18;
    if (v18)
    {
      v32 = v13;
      v22 = *(*v18 + 88);
      v29[1] = *v18 + 88;
      v30 = v22;
      v31 = v19;
      v23 = sub_1CF03C530(v18, v19, 1u);
      v24 = v30(v23);
      if (v26 == 3 && v24 == 1 && v25 == 0)
      {
        v30 = v29;
        MEMORY[0x1EEE9AC00](v24);
        (*(a4 + 32))(sub_1CF4D3554);
        sub_1CF03D7A8(v21, v31, 1u);
        return;
      }

      sub_1CF1DBCF0(v24, v25, v26);
      sub_1CF03D7A8(v21, v31, 1u);
    }

    else
    {
      v18 = sub_1CF03C530(0, v19, 1u);
    }
  }

  MEMORY[0x1EEE9AC00](v18);
  (*(a4 + 32))(sub_1CF4D353C);
}

unint64_t sub_1CF4C77C4(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();

  v3 = sub_1CF1DF1A8(a2, 0);
  MEMORY[0x1D3868CC0](v3);

  return 0xD000000000000022;
}

uint64_t sub_1CF4C7858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23[1] = 0xE000000000000000;
  sub_1CF9E7948();
  v25 = 0;
  v26 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0xD000000000000013, 0x80000001CFA45C50);
  v4 = sub_1CF057B00(a2);
  v6 = v5;
  v8 = v7;
  sub_1CF03C530(v4, v5, v7);
  v9 = sub_1CF065BDC(v4, v6, v8, 0x696C756465686373, 0xEB000000005F676ELL);
  v11 = v10;
  sub_1CF03D7A8(v4, v6, v8);
  MEMORY[0x1D3868CC0](v9, v11);

  MEMORY[0x1D3868CC0](0xD00000000000003ALL, 0x80000001CFA45C70);
  sub_1CF052838(a2);
  v24 = MEMORY[0x1E69E6530];
  v23[0] = v12;
  v13 = sub_1CEFF8EA0(v23);
  v15 = v14;
  sub_1CEFCCC44(v23, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (!v15)
  {
    goto LABEL_4;
  }

  MEMORY[0x1D3868CC0](v13, v15);

  MEMORY[0x1D3868CC0](0xD000000000000039, 0x80000001CFA45CB0);
  v16 = sub_1CF052838(a2);
  v24 = MEMORY[0x1E69E6810];
  v23[0] = v16;
  v17 = sub_1CEFF8EA0(v23);
  v19 = v18;
  sub_1CEFCCC44(v23, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v19)
  {
    MEMORY[0x1D3868CC0](v17, v19);

    MEMORY[0x1D3868CC0](0x4552454857200A29, 0xEE00203D20646920);
    v20 = sub_1CF1DF1A8(a3, 0);
    MEMORY[0x1D3868CC0](v20);

    return v25;
  }

  else
  {
LABEL_4:
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

unint64_t sub_1CF4C7B58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1CF9E7948();

  v5 = sub_1CF057B00(a2);
  v7 = v6;
  v9 = v8;
  sub_1CF03C530(v5, v6, v8);
  v10 = sub_1CF065BDC(v5, v7, v9, 0x696C756465686373, 0xEB000000005F676ELL);
  v12 = v11;
  sub_1CF03D7A8(v5, v7, v9);
  MEMORY[0x1D3868CC0](v10, v12);

  MEMORY[0x1D3868CC0](0x204552454857200ALL, 0xED0000203D206469);
  v13 = sub_1CF1DF1A8(a3, 0);
  MEMORY[0x1D3868CC0](v13);

  return 0xD000000000000013;
}

uint64_t sub_1CF4C7CC0(uint64_t a1, void (**a2)(char *, uint64_t), uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v112 = a5;
  v113 = a3;
  v116 = a4;
  v117 = a1;
  v111 = a2;
  v6 = *(*v5 + 640);
  v7 = *(*v5 + 648);
  v8 = *(*v5 + 656);
  v115 = *(*v5 + 632);
  v118 = v115;
  v119 = v6;
  v120 = v7;
  v121 = v8;
  v99 = type metadata accessor for PersistenceTrigger();
  v98 = *(v99 - 8);
  v9 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v99);
  v97 = (&v96 - v10);
  v11 = sub_1CF9E6068();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v108 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v96 - v20;
  v22 = type metadata accessor for Signpost(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v114 = &v96 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v104 = qword_1EDEBBE40;
  (*(v12 + 56))(v21, 1, 1, v11);
  v123 = 0;
  v124 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0x2074736973726570, 0xE800000000000000);
  v125 = v117;
  v118 = v115;
  v119 = v6;
  v101 = v6;
  v103 = v7;
  v120 = v7;
  v121 = v8;
  v102 = v8;
  v25 = type metadata accessor for FSOrFPJob();
  swift_getWitnessTable();
  v100 = v25;
  sub_1CF9E7FE8();
  v105 = v124;
  v106 = v123;
  v107 = v21;
  sub_1CEFE74D8(v21, v18);
  v26 = *(v12 + 48);
  if (v26(v18, 1, v11) == 1)
  {
    v27 = v104;
    v28 = v104;
    v29 = v108;
    sub_1CF9E6048();
    if (v26(v18, 1, v11) != 1)
    {
      sub_1CEFCCC44(v18, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v29 = v108;
    (*(v12 + 32))(v108, v18, v11);
    v27 = v104;
  }

  v30 = v114;
  (*(v12 + 16))(v114, v29, v11);
  *&v30[*(v22 + 20)] = v27;
  v31 = &v30[*(v22 + 24)];
  *v31 = "SQLDB: Persist Job";
  *(v31 + 1) = 18;
  v31[16] = 2;
  v32 = v27;
  v33 = v30;
  v34 = v32;
  sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1CF9FA450;
  *(v35 + 56) = MEMORY[0x1E69E6158];
  *(v35 + 64) = sub_1CEFD51C4();
  v36 = v105;
  *(v35 + 32) = v106;
  *(v35 + 40) = v36;
  v108 = v34;
  sub_1CF9E6028();

  (*(v12 + 8))(v29, v11);
  sub_1CEFCCC44(v107, &unk_1EC4BED20, &unk_1CFA00700);
  v37 = v110;
  v38 = *(v110 + 16);
  v39 = *(v38 + 56);

  v40 = v117;
  v42 = v111;
  v41 = v112;
  v43 = v113;
  v44 = v109;
  sub_1CF333918(v117, v111, v113, v116, v112);
  if (v44)
  {

    sub_1CF9E7458();
    sub_1CF9E6038();
    v45 = v40;
LABEL_79:
    sub_1CF0593C8(v33);
    return v45;
  }

  v109 = v38;

  v46 = *(v37 + 24);
  v47 = *(v46 + 56);
  v48 = v40;
  v49 = v101;
  v50 = sub_1CF0452C8(v48);

  sub_1CF333918(v50, v42, v43, v116, v41);
  v107 = v46;

  result = swift_weakLoadStrong();
  if (!result)
  {
    goto LABEL_81;
  }

  v52 = *(v41 + 8);
  v53 = v116;
  v45 = v117;
  sub_1CF676BE0(v117, result, v113, v116, v52);
  v54 = v103;
  v106 = v52;

  v55 = sub_1CF057B00(v45);
  v56 = v54;
  if (v57)
  {
    goto LABEL_19;
  }

  if ((v55 & 1) == 0)
  {
    goto LABEL_16;
  }

  v58 = v55;
  result = swift_weakLoadStrong();
  if (!result)
  {
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v59 = sub_1CF042760();

  v60 = *(v59 + 16);
  v61 = __OFADD__(v60, 1);
  v62 = v60 + 1;
  if (v61)
  {
    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  *(v59 + 16) = v62;

  result = swift_weakLoadStrong();
  v56 = v103;
  v53 = v116;
  if (!result)
  {
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  sub_1CF3BCAF0();

  v55 = v58;
  v49 = v101;
LABEL_16:
  if ((v55 & 0x80) == 0)
  {
    goto LABEL_19;
  }

  result = swift_weakLoadStrong();
  if (!result)
  {
    goto LABEL_83;
  }

  sub_1CF5A1A2C(v113, v53, v106);

LABEL_19:
  if (v45 < 0)
  {
    v63 = v115;
    v118 = v49;
    v119 = v115;
    v64 = v102;
    v120 = v102;
    v121 = v56;
    type metadata accessor for ItemJob();
    v71 = swift_dynamicCastClass();
    if (v71)
    {
      sub_1CF3763A8(v71, v113, v116, v112);

LABEL_77:
      v33 = v114;
LABEL_78:
      sub_1CF9E7458();
      sub_1CF9E6038();
      goto LABEL_79;
    }
  }

  else
  {
    v63 = v115;
    v118 = v115;
    v119 = v49;
    v64 = v102;
    v120 = v56;
    v121 = v102;
    type metadata accessor for ItemJob();
    v65 = swift_dynamicCastClass();
    if (v65)
    {
      v66 = *(v65 + 112);
      if (v66 == 3 || v66 == 4 && !(*(v65 + 96) & 0xFFFFFFFFFFFFFFFELL | *(v65 + 104)))
      {
        v118 = v63;
        v119 = v49;
        v120 = v56;
        v121 = v102;
        v67 = v65;
        type metadata accessor for Materialization.MaterializeItem();
        v68 = swift_dynamicCastClass();
        if (v68)
        {
          v69 = v68;
          v70 = *(v37 + 32);

          sub_1CF34C564(v69, v111, v113, v116, v112);
        }

        v65 = v67;
      }

      v33 = v114;
      sub_1CF3763A8(v65, v113, v116, v112);

      goto LABEL_78;
    }
  }

  sub_1CF0451E0(v45, &v118);
  v72 = v121;
  sub_1CEFCCC44(&v118, &unk_1EC4C1BE0, &unk_1CF9FD400);
  if (!v72)
  {
    v123 = v45;
    v79 = sub_1CF057B00(v45);
    v82 = v116;
    if (v81 == 3 || v81 == 4 && !(v79 & 0xFFFFFFFFFFFFFFFELL | v80)) && (*(v37 + 40))
    {
      v121 = &type metadata for SQLVolatileJobID;
      v122 = sub_1CF4D31D4();
      v118 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {

      sub_1CF4C7020(v45, v82, v112, &v118);
    }

    sub_1CF946E88(&v118);
    v83 = v106;
    if (v45 < 0 && (v118 = v63, v119 = v49, v120 = v103, v121 = v64, type metadata accessor for Propagation.PropagationJob(), (v87 = swift_dynamicCastClass()) != 0))
    {
      v88 = v87;
      result = swift_weakLoadStrong();
      if (!result)
      {
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
        goto LABEL_91;
      }

      swift_retain_n();
      sub_1CF5A30E0(v88, 1, v113, v82, v83);
    }

    else
    {
    }

    if (swift_weakLoadStrong())
    {
      v94 = sub_1CF045354();

      if (v94)
      {
        result = swift_weakLoadStrong();
        if (!result)
        {
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
          goto LABEL_88;
        }

        (*(*v94 + 120))();
      }
    }

    goto LABEL_74;
  }

  v73 = v116;
  sub_1CF4C7418(v45, v113, v116, v112);
  v74 = v115;
  v75 = sub_1CF057B00(v45);
  if (v77 <= 2u)
  {
    if (v77)
    {
      if (v77 != 1)
      {
LABEL_68:

LABEL_74:
        sub_1CF057B00(v45);
        if (v95 == 1 && swift_weakLoadStrong())
        {
          sub_1CF058CE4();
        }

        goto LABEL_77;
      }

      if (!v75)
      {
        v78 = 1;
LABEL_67:
        sub_1CF03D7A8(v75, v76, v78);
        goto LABEL_68;
      }
    }

    else if (!v76)
    {
      v78 = 0;
      goto LABEL_67;
    }

    result = swift_weakLoadStrong();
    if (result)
    {
      v89 = v97;
      *v97 = v45;
      v90 = v99;
      swift_storeEnumTagMultiPayload();

      sub_1CF042D98(v89);

      (*(v98 + 8))(v89, v90);
      if (!swift_weakLoadStrong())
      {
        goto LABEL_68;
      }

      v91 = sub_1CF045354();

      if (!v91)
      {
        goto LABEL_68;
      }

      result = swift_weakLoadStrong();
      if (result)
      {
        (*(*v91 + 136))();
        goto LABEL_60;
      }

      goto LABEL_90;
    }

    goto LABEL_87;
  }

  if ((v45 & 0x8000000000000000) == 0)
  {
    goto LABEL_46;
  }

  v118 = v74;
  v119 = v49;
  v120 = v103;
  v121 = v64;
  type metadata accessor for Propagation.PropagationJob();
  v92 = swift_dynamicCastClass();
  if (!v92)
  {
    goto LABEL_46;
  }

  v93 = v92;
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_1CF5A30E0(v93, 0, v113, v73, v106);

LABEL_46:
    result = swift_weakLoadStrong();
    if (result)
    {
      v84 = v97;
      *v97 = v45;
      v85 = v99;
      swift_storeEnumTagMultiPayload();

      sub_1CF042D98(v84);

      (*(v98 + 8))(v84, v85);
      if (!swift_weakLoadStrong())
      {
        goto LABEL_68;
      }

      v86 = sub_1CF045354();

      if (!v86)
      {
        goto LABEL_68;
      }

      result = swift_weakLoadStrong();
      if (result)
      {
        (*(*v86 + 128))();
LABEL_60:

        goto LABEL_68;
      }

      goto LABEL_89;
    }

    goto LABEL_85;
  }

LABEL_91:
  __break(1u);
  return result;
}

void sub_1CF4C8C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  v9 = *v7;
  v10 = a3 + a4;
  if (__OFADD__(a3, a4))
  {
    __break(1u);
    goto LABEL_15;
  }

  if (__OFADD__(v10, a5))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v10 + a5)
  {
    v38 = a3;
    v41 = a4;
    MEMORY[0x1EEE9AC00](a1);
    v34 = v14 & 1;
    v35 = v15;
    v36 = v16;
    MEMORY[0x1EEE9AC00](v14);
    v18 = *(v17 + 632);
    v33[2] = v18;
    v33[4] = v19;
    v20 = *(v17 + 640);
    v33[3] = *(v17 + 640);
    v37 = v20;
    v33[5] = *(&v20 + 1);
    v21 = *(v17 + 656);
    v33[6] = v21;
    v33[7] = v22;
    v33[8] = a6;
    v33[9] = &v38;
    v33[10] = a7;
    v33[11] = &v41;
    sub_1CF4C6B70(v24, sub_1CF4D34EC, v23, sub_1CF4D34F8, v33, v19, v22);
    if (v8)
    {
      return;
    }

    v25 = v37;
  }

  else
  {
    v18 = *(v9 + 632);
    v25 = *(v9 + 640);
    v21 = *(v9 + 656);
  }

  v26 = *a6;
  v40 = v21;
  v41 = v26;
  v38 = v18;
  v39 = v25;
  type metadata accessor for SchedulableJob();
  sub_1CF9E6E58();
  swift_getWitnessTable();
  if ((sub_1CF9E7128() & 1) == 0)
  {
    swift_getWitnessTable();
    swift_getWitnessTable();
    swift_getWitnessTable();
    sub_1CF9E6858();
    v27 = *a6;
    v28 = sub_1CF9E6DF8();
    if (v28 >= a5)
    {
      v29 = a5;
    }

    else
    {
      v29 = v28;
    }

    if ((v29 & 0x8000000000000000) == 0)
    {
      v38 = sub_1CF9E6E98();
      *&v39 = v30;
      *(&v39 + 1) = v31;
      v40 = v32;
      sub_1CF9E7778();
      swift_getWitnessTable();
      swift_getWitnessTable();
      sub_1CF9E7178();
      swift_unknownObjectRelease();
      return;
    }

LABEL_16:
    __break(1u);
  }
}

uint64_t sub_1CF4C8F20(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000013, 0x80000001CFA442F0);
  v6 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v6);

  MEMORY[0x1D3868CC0](0x64697320444E410ALL, 0xEC000000203D2065);
  v7 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v7);

  MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA4F900);
  *(swift_allocObject() + 16) = a1;
  v8 = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFAD0, &unk_1CFA04810);
  sub_1CEFCCCEC(&qword_1EDEA3390, &qword_1EC4BFAD0, &unk_1CFA04810);
  sub_1CEFE4E68();
  v9 = sub_1CF9E6C18();
  v11 = v10;

  MEMORY[0x1D3868CC0](v9, v11);

  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  MEMORY[0x1D3868CC0](40, 0xE100000000000000);

  MEMORY[0x1D3868CC0](0xD00000000000003FLL, 0x80000001CFA4F920);
  v12 = [v8 bindLongParameter_];
  v13 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v15 = v14;

  MEMORY[0x1D3868CC0](v13, v15);

  return 0;
}

uint64_t sub_1CF4C91E0(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void *a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v29 = a4;
  v15 = sub_1CF9E6118();
  v30 = *(v15 - 8);
  v31 = v15;
  v16 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1CF0527F4(a1);
  if (v19 <= 9)
  {
    if (((1 << v19) & 0x30) != 0)
    {
      if (*a5 < 1)
      {
        return 1;
      }

      v32 = a6;
      v33 = a7;
      v34 = a9;
      v35 = a10;
      type metadata accessor for SchedulableJob();
      v32 = sub_1CF052628(a1);
      sub_1CF9E6E58();

      result = sub_1CF9E6E18();
      if (!__OFSUB__(*a5, 1))
      {
        --*a5;
        return 1;
      }

      __break(1u);
      goto LABEL_18;
    }

    if (((1 << v19) & 0xC0) != 0)
    {
      v32 = a6;
      v33 = a7;
      v34 = a9;
      v35 = a10;
      type metadata accessor for SchedulableJob();
      v32 = sub_1CF052628(a1);
      sub_1CF9E6E58();

      sub_1CF9E6E18();
      return 1;
    }

    if (((1 << v19) & 0x300) != 0)
    {
LABEL_10:
      v21 = fpfs_current_or_default_log();
      sub_1CF9E6128();

      v22 = sub_1CF9E6108();
      v23 = sub_1CF9E72B8();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v32 = v29;
        *v24 = 136315138;
        v36 = sub_1CF0527F4(a1);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0838, &qword_1CFA065A0);
        v25 = sub_1CF9E6948();
        v27 = sub_1CEFD0DF0(v25, v26, &v32);

        *(v24 + 4) = v27;
        _os_log_impl(&dword_1CEFC7000, v22, v23, "unexpected %s job in fetchRunnableJobs", v24, 0xCu);
        v28 = v29;
        __swift_destroy_boxed_opaque_existential_1(v29);
        MEMORY[0x1D386CDC0](v28, -1, -1);
        MEMORY[0x1D386CDC0](v24, -1, -1);
      }

      (*(v30 + 8))(v18, v31);
      return 1;
    }
  }

  if (v19 < 2)
  {
    goto LABEL_10;
  }

  if (*a3 < 1)
  {
    return 1;
  }

  v32 = a6;
  v33 = a7;
  v34 = a9;
  v35 = a10;
  type metadata accessor for SchedulableJob();
  v32 = sub_1CF052628(a1);
  sub_1CF9E6E58();

  result = sub_1CF9E6E18();
  if (!__OFSUB__(*a3, 1))
  {
    --*a3;
    return 1;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1CF4C9580(unsigned int a1, char a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(*v8 + 648);
  v11 = *(*v8 + 656);
  *&v97 = *(*v8 + 640);
  *(&v97 + 1) = *(*v8 + 632);
  *&v99 = *(&v97 + 1);
  *(&v99 + 1) = v97;
  v95 = v11;
  v96 = v10;
  v100 = v10;
  v101 = v11;
  type metadata accessor for SchedulableJob();
  v102 = sub_1CF9E6DA8();
  v12 = *(a3 + 16);
  v13 = MEMORY[0x1E69E7CC0];
  v87 = a3;
  if (v12)
  {
    v14 = a3 + 32;
    do
    {
      sub_1CF1A91AC(v14, &v99);
      sub_1CF054EA0(&v99, v98);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F00, &unk_1CF9FE4A0);
      if (swift_dynamicCast())
      {
        v15 = v98[5];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_1CF1F7094(0, *(v13 + 2) + 1, 1, v13);
        }

        v17 = *(v13 + 2);
        v16 = *(v13 + 3);
        if (v17 >= v16 >> 1)
        {
          v13 = sub_1CF1F7094((v16 > 1), v17 + 1, 1, v13);
        }

        *(v13 + 2) = v17 + 1;
        *&v13[8 * v17 + 32] = v15;
      }

      v14 += 40;
      --v12;
    }

    while (v12);
  }

  v18 = *(v13 + 2);
  if (v18)
  {
    *&v99 = MEMORY[0x1E69E7CC0];
    sub_1CF680C9C(0, v18, 0);
    v19 = v99;
    v20 = *(v99 + 16);
    v21 = 32;
    v22 = v85;
    do
    {
      v23 = *&v13[v21];
      *&v99 = v19;
      v24 = *(v19 + 24);
      if (v20 >= v24 >> 1)
      {
        sub_1CF680C9C((v24 > 1), v20 + 1, 1);
        v19 = v99;
      }

      *(v19 + 16) = v20 + 1;
      *(v19 + 8 * v20 + 32) = v23;
      v21 += 8;
      ++v20;
      --v18;
    }

    while (v18);
  }

  else
  {

    v19 = MEMORY[0x1E69E7CC0];
    v22 = v85;
  }

  v25 = sub_1CF03E990(v19);

  v26 = a8;
  v27 = a5;
  v86 = v25;
  if (a1)
  {
    v28 = a5(1);
    goto LABEL_19;
  }

LABEL_33:
  v54 = v27(0);
  v56 = *(v54 + 16);
  v55 = *(v54 + 24);

  v32 = __OFSUB__(v55, v56);
  v57 = v55 - v56;
  if (v32)
  {
    goto LABEL_62;
  }

  v58 = v27(6);
  v59 = *(v58 + 16);
  v60 = *(v58 + 24);

  v61 = v60 - v59;
  if (__OFSUB__(v60, v59))
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v62 = v27(2);
  v63 = *(v62 + 16);
  v64 = *(v62 + 24);

  if (__OFSUB__(v64, v63))
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v83 = v64 - v63;
  v65 = v27(4);
  v67 = *(v65 + 16);
  v66 = *(v65 + 24);

  if (__OFSUB__(v66, v67))
  {
LABEL_65:
    __break(1u);
    return result;
  }

  v81 = v66 - v67;
  *&v99 = sub_1CF9E6DA8();
  v46 = v94[2];
  v68 = *(v26 + 8);
  v69 = sub_1CF3791A4(v87, v57, v61, a4, a7, v68);
  if (v22)
  {
    goto LABEL_38;
  }

  v71 = v69;
  if (!sub_1CF9E6DF8())
  {
    goto LABEL_50;
  }

  v72 = 4;
  while (1)
  {
    v73 = v72 - 4;
    v74 = sub_1CF9E6DC8();
    sub_1CF9E6D78();
    if ((v74 & 1) == 0)
    {
      break;
    }

    v75 = *(v71 + 8 * v72);

    v76 = v72 - 3;
    if (__OFADD__(v73, 1))
    {
      goto LABEL_49;
    }

LABEL_46:
    sub_1CF0527F4(*(v75 + 40));
    v98[0] = v75;
    sub_1CF9E6E58();
    sub_1CF9E6E18();
    ++v72;
    if (v76 == sub_1CF9E6DF8())
    {
      goto LABEL_50;
    }
  }

  v75 = sub_1CF9E7998();
  v76 = v72 - 3;
  if (!__OFADD__(v73, 1))
  {
    goto LABEL_46;
  }

LABEL_49:
  __break(1u);
LABEL_50:

  v70 = a7;
  v78 = a7;
  v79 = v68;
  sub_1CF4C8C24(0, v86, v83, v81, v61, &v99, &v102);

  if (a1 != 2)
  {

    goto LABEL_53;
  }

  v26 = a8;
  v27 = a5;
  v28 = a5(1);
LABEL_19:
  v30 = *(v28 + 16);
  v29 = *(v28 + 24);

  v32 = __OFSUB__(v29, v30);
  v33 = v29 - v30;
  if (v32)
  {
    __break(1u);
    goto LABEL_59;
  }

  v34 = v27(7);
  v35 = *(v34 + 16);
  v36 = *(v34 + 24);

  v37 = v36 - v35;
  if (__OFSUB__(v36, v35))
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v38 = v27(3);
  v39 = *(v38 + 16);
  v40 = *(v38 + 24);

  v32 = __OFSUB__(v40, v39);
  v41 = v40 - v39;
  if (v32)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v42 = v27(5);
  v44 = *(v42 + 16);
  v43 = *(v42 + 24);

  v45 = v43 - v44;
  if (__OFSUB__(v43, v44))
  {
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v82 = v41;
  v98[0] = sub_1CF9E6DA8();
  v46 = v94[3];
  v47 = *(v26 + 8);
  v48 = v37;
  v49 = sub_1CF3791A4(v87, v33, v37, a4, a7, v47);
  if (v22)
  {
LABEL_38:

    return v46;
  }

  v27 = v49;
  v80 = v47;
  v99 = v97;
  v100 = v95;
  v101 = v96;
  type metadata accessor for SchedulableJob();
  if (sub_1CF9E6DF8())
  {
    v26 = 4;
    do
    {
      v50 = v26 - 4;
      v51 = sub_1CF9E6DC8();
      sub_1CF9E6D78();
      if (v51)
      {
        v52 = *(v27 + v26);

        v53 = v26 - 3;
        if (__OFADD__(v50, 1))
        {
          goto LABEL_32;
        }
      }

      else
      {
        v52 = sub_1CF9E7998();
        v53 = v26 - 3;
        if (__OFADD__(v50, 1))
        {
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }
      }

      sub_1CF0527F4(*(v52 + 40));
      *&v99 = sub_1CF05285C();
      sub_1CF9E6E58();
      sub_1CF9E6E18();

      ++v26;
    }

    while (v53 != sub_1CF9E6DF8());
  }

  v70 = a7;
  v78 = a7;
  v79 = v80;
  sub_1CF4C8C24(1, v86, v82, v45, v48, v98, &v102);

LABEL_53:
  if ((a2 & 1) == 0)
  {
    return v102;
  }

  if (sub_1CF9E6DF8())
  {
    return v102;
  }

  v77 = v94[4];
  if (sub_1CF34A458(a4) < 1)
  {
    return v102;
  }

  sub_1CF4C9580(a1, 0, v87, a4, a5, a6, v70, a8, v78, v79);
  v46 = sub_1CF9E6D98();

  return v46;
}

uint64_t *sub_1CF4C9DCC(char a1, void *a2, uint64_t a3, char a4)
{
  if (a1)
  {
    v5 = *(v4 + 24);
  }

  else
  {
    v6 = *(v4 + 16);
  }

  return sub_1CF37CCC0(a2, a3, a4 & 1);
}

uint64_t sub_1CF4C9E6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(*v4 + 640);
  v9 = *(*v4 + 648);
  v10 = *(*v4 + 656);
  v38 = *(*v4 + 632);
  v47 = v38;
  v48 = v8;
  v49 = v9;
  v50 = v10;
  v11 = type metadata accessor for TestingOperation();
  v51 = sub_1CF9E6DA8();
  v41 = a2;
  v42 = a3;
  v43 = v4;
  v44 = a1;
  v45 = &v51;
  v12 = a1;
  v13 = a1;
  v14 = a2;
  v15 = a2;
  v16 = a3;
  sub_1CF4C6B70(v13, sub_1CF37C1E4, 0, sub_1CF4D316C, v40, v15, a3);
  if (v39)
  {
  }

  v36 = v10;
  v37 = v8;
  v39 = v9;
  v17 = v4[2];
  v47 = sub_1CF37C0E4(v12, v14, v16);
  v18 = sub_1CF9E6E58();
  WitnessTable = swift_getWitnessTable();
  sub_1CF9E6E08();
  v20 = v4[3];
  v21 = sub_1CF37C0E4(v12, v14, v16);
  v35[3] = 0;
  v46 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v35[4] = v18;
  v35[5] = WitnessTable;
  v24 = v37;
  v23 = v38;
  v34[0] = v38;
  v34[1] = v37;
  v35[0] = v11;
  v25 = v39;
  v26 = v36;
  v34[5] = v16;
  v35[1] = v27;
  KeyPath = swift_getKeyPath();
  v35[2] = v35;
  MEMORY[0x1EEE9AC00](KeyPath);
  v34[2] = v14;
  v34[3] = v16;
  v34[4] = v29;
  v47 = v24;
  v48 = v23;
  v49 = v26;
  v50 = v25;
  type metadata accessor for TestingOperation();
  v30 = sub_1CF9E6E58();
  v31 = swift_getWitnessTable();
  v33 = sub_1CF054A5C(sub_1CF4D3194, v34, v30, v35[0], MEMORY[0x1E69E73E0], v31, MEMORY[0x1E69E7410], v32);

  v47 = v33;
  sub_1CF9E6E08();
  return v51;
}

uint64_t sub_1CF4CA1C0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v106 = a5;
  v107 = a6;
  v108 = a1;
  v97 = a4;
  v111 = a3;
  v6 = *a2;
  v7 = *(*a2 + 640);
  v8 = *(*a2 + 656);
  v9 = type metadata accessor for SnapshotItem();
  v10 = sub_1CF9E75D8();
  v98 = *(v10 - 8);
  v99 = v10;
  v11 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v101 = &v91 - v12;
  v102 = *(v9 - 8);
  v13 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v91 - v15;
  v17 = *(v6 + 632);
  *&v18 = v17;
  *(&v18 + 1) = v7;
  v19 = *(v6 + 648);
  *&v20 = v19;
  *(&v20 + 1) = v8;
  v103 = v20;
  v104 = v18;
  v110 = v20;
  v109 = v18;
  v95 = type metadata accessor for TestingOperation();
  v21 = *(*(v95 - 8) + 64);
  MEMORY[0x1EEE9AC00](v95);
  v96 = &v91 - v22;
  v23 = type metadata accessor for SnapshotItem();
  v24 = sub_1CF9E75D8();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v91 - v26;
  v100 = v23;
  v28 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29);
  v34 = &v91 - v33;
  v35 = v108;
  v94 = v17;
  v92 = v8;
  v91 = v7;
  v93 = v19;
  if (v108 < 0)
  {
    *&v104 = v16;
    *&v109 = v7;
    *(&v109 + 1) = v17;
    *&v110 = v8;
    *(&v110 + 1) = v19;
    type metadata accessor for Bouncing.BounceItem();
    Strong = swift_dynamicCastClass();
    if (!Strong)
    {
      goto LABEL_23;
    }

    v46 = Strong;
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v47 = v9;
      v48 = *(Strong + 40);

      v49 = *(*v46 + 576);
      v50 = v101;
      v51 = v106;
      v52 = v107;
      v53 = v105;
      (*(*v48 + 240))(v46 + v49, 1, v111, v106, v107);
      v54 = v102;
      if (!v53)
      {
        if ((*(v102 + 48))(v50, 1, v47) == 1)
        {

          (*(v98 + 8))(v50, v99);
          return 1;
        }

        v58 = v50;
        v59 = v104;
        (*(v54 + 32))(v104, v58, v47);
        v60 = (*(*v48 + 312))(v46 + v49, v111, v51, v52);
        v61 = v47;
        if ((v62 & 1) == 0)
        {
          v107 = v49;
          MEMORY[0x1EEE9AC00](v60);
          v111 = 0;
          strcpy(&v91 - 32, " item newName version ");
          v108 = v76;
          v77 = v92;
          v78 = v91;
          *&v109 = swift_getAssociatedTypeWitness();
          *(&v109 + 1) = v99;
          *&v110 = &type metadata for Filename;
          *(&v110 + 1) = MEMORY[0x1E69E6810];
          TupleTypeMetadata = swift_getTupleTypeMetadata();
          v80 = TupleTypeMetadata[12];
          v81 = v59;
          v82 = v96;
          v105 = &v96[TupleTypeMetadata[16]];
          v106 = TupleTypeMetadata[20];
          AssociatedTypeWitness = swift_getAssociatedTypeWitness();
          (*(*(AssociatedTypeWitness - 8) + 16))(v82, v46 + v107, AssociatedTypeWitness);
          v84 = v102;
          (*(v102 + 16))(&v82[v80], v81, v61);
          (*(v84 + 56))(&v82[v80], 0, 1, v61);
          v85 = (v46 + *(*v46 + 592));
          v86 = *v85;
          v87 = v85[1];
          v88 = v105;
          *v105 = v86;
          *(v88 + 1) = v87;
          *&v82[v106] = v108;
          *&v109 = v78;
          *(&v109 + 1) = v94;
          v110 = __PAIR128__(v93, v77);
          type metadata accessor for DirectionalTestingOperation();
          swift_storeEnumTagMultiPayload();
          swift_storeEnumTagMultiPayload();
          sub_1CF9E6E58();

          sub_1CF9E6E18();

          (*(v84 + 8))(v81, v61);
          return 1;
        }

        (*(v54 + 8))(v59, v47);
      }

LABEL_17:

      return 1;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    MEMORY[0x1EEE9AC00](Strong);
    v89 = v91;
    *(&v91 - 8) = v94;
    *(&v91 - 7) = v89;
    *(&v91 - 6) = v106;
    *(&v91 - 5) = v19;
    v90 = v107;
    *(&v91 - 4) = v92;
    *(&v91 - 3) = v90;
    *(&v91 - 2) = v35;
    fp_preconditionFailure(_:file:line:)(sub_1CF4D31C0, (&v91 - 10), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/SQLJobRegistry.swift", 133, 2, 546);
  }

  v98 = v32;
  v99 = v30;
  v101 = v34;
  v102 = v31;
  v109 = v104;
  v110 = v103;
  type metadata accessor for Bouncing.BounceItem();
  Strong = swift_dynamicCastClass();
  if (!Strong)
  {
    goto LABEL_23;
  }

  v37 = Strong;
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_22;
  }

  v38 = *(Strong + 32);

  v39 = *(*v37 + 576);
  v40 = v111;
  v41 = v106;
  v42 = v107;
  v43 = v105;
  (*(*v38 + 240))(v37 + v39, 1, v111, v106, v107);
  if (v43)
  {
    goto LABEL_17;
  }

  v108 = v39;
  v44 = v102;
  v45 = v100;
  if ((*(v102 + 48))(v27, 1, v100) != 1)
  {
    (*(v44 + 32))(v101, v27, v45);
    v55 = (*(*v38 + 312))(v37 + v108, v40, v41, v42);
    v57 = v45;
    if ((v56 & 1) == 0)
    {
      MEMORY[0x1EEE9AC00](v55);
      strcpy(&v91 - 32, " item newName version ");
      v65 = v64;
      *&v109 = swift_getAssociatedTypeWitness();
      *(&v109 + 1) = v99;
      *&v110 = &type metadata for Filename;
      *(&v110 + 1) = MEMORY[0x1E69E6810];
      v66 = swift_getTupleTypeMetadata();
      v67 = v66[12];
      v68 = v66[16];
      v111 = 0;
      v69 = v96;
      v70 = &v96[v68];
      v107 = v66[20];
      v71 = swift_getAssociatedTypeWitness();
      (*(*(v71 - 8) + 16))(v69, v37 + v108, v71);
      v73 = v101;
      v72 = v102;
      (*(v102 + 16))(&v69[v67], v101, v57);
      (*(v72 + 56))(&v69[v67], 0, 1, v57);
      v74 = (v37 + *(*v37 + 592));
      v75 = v74[1];
      *v70 = *v74;
      *(v70 + 1) = v75;
      *&v69[v107] = v65;
      v110 = v103;
      v109 = v104;
      type metadata accessor for DirectionalTestingOperation();
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      sub_1CF9E6E58();

      sub_1CF9E6E18();

      (*(v72 + 8))(v73, v57);
      return 1;
    }

    (*(v102 + 8))(v101, v45);
    goto LABEL_17;
  }

  (*(v98 + 8))(v27, v99);
  return 1;
}

uint64_t sub_1CF4CAD6C()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA445E0);
  type metadata accessor for FSOrFPJob();
  swift_getWitnessTable();
  sub_1CF9E7FE8();
  return 0;
}

uint64_t sub_1CF4CAE40@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = vextq_s8(*(a1 + a2 - 48), *(a1 + a2 - 48), 8uLL);
  v7 = vextq_s8(*(a1 + a2 - 24), *(a1 + a2 - 24), 8uLL);
  v4 = type metadata accessor for TestingOperation();
  return sub_1CF940280(v4, a3);
}

uint64_t sub_1CF4CAE98(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v18[2] = a3;
  v18[3] = a4;
  v11 = a2;
  v12 = (*(a4 + 24))(sub_1CF4D3160, v18);
  if (!v5)
  {
    v14 = v12;
    if ([v12 next] & 1) != 0 || (v15 = v6[2], (sub_1CF37C6B0(a2, a3, a4)) || (v16 = v6[3], (sub_1CF37C6B0(a2, a3, a4)))
    {

      v11 = 1;
    }

    else if (a1)
    {
      v17 = v6[4];
      v11 = sub_1CF34E82C(a2, a3, a4);
    }

    else
    {

      v11 = 0;
    }
  }

  return v11 & 1;
}

uint64_t sub_1CF4CAFF4()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = sub_1CF033B88();

    if (v1 < 0)
    {
      sub_1CF9E7948();

      v6 = 0xD00000000000001FLL;
      v7 = 0x80000001CFA4F820;
      v4 = sub_1CF9E7F98();
      MEMORY[0x1D3868CC0](v4);
    }

    else
    {
      v6 = 0;
      v7 = 0xE000000000000000;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA444F0);
      v2 = sub_1CF9E7F98();
      MEMORY[0x1D3868CC0](v2);

      MEMORY[0x1D3868CC0](0xD000000000000025, 0x80000001CFA44510);
      v3 = sub_1CF9E7F98();
      MEMORY[0x1D3868CC0](v3);

      MEMORY[0x1D3868CC0](0x290A30203D2029, 0xE700000000000000);
    }

    sub_1CF9E7948();
    MEMORY[0x1D3868CC0](0xD000000000000031, 0x80000001CFA4F7E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF7F0, &unk_1CFA03230);
    sub_1CEFCCCEC(&qword_1EDEAB500, &unk_1EC4BF7F0, &unk_1CFA03230);
    sub_1CEFE4E68();
    v5 = sub_1CF9E6C18();
    MEMORY[0x1D3868CC0](v5);

    MEMORY[0x1D3868CC0](41, 0xE100000000000000);
    MEMORY[0x1D3868CC0](40, 0xE100000000000000);

    MEMORY[0x1D3868CC0](0x20444E412020200ALL, 0xE800000000000000);
    MEMORY[0x1D3868CC0](v6, v7);

    MEMORY[0x1D3868CC0](0x2054494D494C200ALL, 0xE900000000000031);
    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t (*sub_1CF4CB300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1)
{
  v7 = a1;
  v8 = *v4;
  v9 = *(a3 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v11);
  v13 = (*(v9 + 80) + 65) & ~*(v9 + 80);
  v14 = (v10 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  *(v15 + 16) = v8[79];
  *(v15 + 24) = v8[80];
  *(v15 + 32) = a3;
  *(v15 + 40) = v8[81];
  *(v15 + 48) = v8[82];
  *(v15 + 56) = a4;
  *(v15 + 64) = v7 & 1;
  (*(v9 + 32))(v15 + v13, v12, a3);
  *(v15 + v14) = v4;

  return sub_1CF4D345C;
}

uint64_t sub_1CF4CB4AC(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20 = 0xE000000000000000;
  sub_1CF9E7948();
  v26 = 0;
  v27 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0x203D2065646973, 0xE700000000000000);
  v22 = MEMORY[0x1E69E6530];
  v19 = (a2 & 1);
  v11 = sub_1CEFF8EA0(&v19);
  v13 = v12;
  sub_1CEFCCC44(&v19, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v13)
  {
    MEMORY[0x1D3868CC0](v11, v13);

    MEMORY[0x1D3868CC0](0xD000000000000016, 0x80000001CFA4F7A0);
    v14 = (*(*(a6 + 8) + 32))(a1, a5);
    MEMORY[0x1D3868CC0](v14);

    MEMORY[0x1D3868CC0](0x70797420444E410ALL, 0xED0000204E492065);
    v15 = *(a4 + 88);
    v24 = 40;
    v25 = 0xE100000000000000;
    v19 = v15;
    v20 = sub_1CF066928;
    v21 = 0;
    v22 = sub_1CF059E68;
    v23 = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C01B0, &qword_1CFA047F8);
    sub_1CEFCCCEC(&unk_1EDEA33D8, &unk_1EC4C01B0, &qword_1CFA047F8);
    sub_1CEFE4E68();
    v16 = sub_1CF9E6C18();
    MEMORY[0x1D3868CC0](v16);

    MEMORY[0x1D3868CC0](41, 0xE100000000000000);

    MEMORY[0x1D3868CC0](v24, v25);

    MEMORY[0x1D3868CC0](0xD000000000000019, 0x80000001CFA44A40);
    v24 = 40;
    v25 = 0xE100000000000000;
    v19 = &unk_1F4BED2B0;
    v20 = sub_1CF067ADC;
    v21 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF7F0, &unk_1CFA03230);
    sub_1CEFCCCEC(&qword_1EDEAB500, &unk_1EC4BF7F0, &unk_1CFA03230);
    v17 = sub_1CF9E6C18();
    MEMORY[0x1D3868CC0](v17);

    MEMORY[0x1D3868CC0](41, 0xE100000000000000);
    MEMORY[0x1D3868CC0](v24, v25);

    return v26;
  }

  else
  {
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_1CF4CB83C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1)
{
  v7 = a1;
  v8 = *v4;
  v9 = *(a3 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v11);
  v13 = (*(v9 + 80) + 65) & ~*(v9 + 80);
  v14 = (v10 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  *(v15 + 16) = v8[79];
  *(v15 + 24) = v8[80];
  *(v15 + 32) = a3;
  *(v15 + 40) = v8[81];
  *(v15 + 48) = v8[82];
  *(v15 + 56) = a4;
  *(v15 + 64) = v7 & 1;
  (*(v9 + 32))(v15 + v13, v12, a3);
  *(v15 + v14) = v4;

  return sub_1CF4D33B0;
}

uint64_t sub_1CF4CB9E8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = 0xE000000000000000;
  sub_1CF9E7948();
  v29 = 0;
  v30 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0x203D3D2065646973, 0xE800000000000000);
  v25 = MEMORY[0x1E69E6530];
  v22 = a2 & 1;
  v11 = sub_1CEFF8EA0(&v22);
  v13 = v12;
  sub_1CEFCCC44(&v22, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v13)
  {
    MEMORY[0x1D3868CC0](v11, v13);

    MEMORY[0x1D3868CC0](0xD000000000000017, 0x80000001CFA4F880);
    v14 = (*(*(a6 + 8) + 32))(a1, a5);
    MEMORY[0x1D3868CC0](v14);

    MEMORY[0x1D3868CC0](0x70797420444E410ALL, 0xED0000204E492065);
    v15 = *(a4 + 88);
    v27 = 40;
    v28 = 0xE100000000000000;
    v22 = v15;
    v23 = sub_1CF066928;
    v24 = 0;
    v25 = sub_1CF059E68;
    v26 = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C01B0, &qword_1CFA047F8);
    sub_1CEFCCCEC(&unk_1EDEA33D8, &unk_1EC4C01B0, &qword_1CFA047F8);
    sub_1CEFE4E68();
    v16 = sub_1CF9E6C18();
    MEMORY[0x1D3868CC0](v16);

    MEMORY[0x1D3868CC0](41, 0xE100000000000000);

    MEMORY[0x1D3868CC0](v27, v28);

    MEMORY[0x1D3868CC0](0xD000000000000019, 0x80000001CFA44A40);
    v27 = 40;
    v28 = 0xE100000000000000;
    v22 = &unk_1F4BED2B0;
    v23 = sub_1CF067ADC;
    v24 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF7F0, &unk_1CFA03230);
    sub_1CEFCCCEC(&qword_1EDEAB500, &unk_1EC4BF7F0, &unk_1CFA03230);
    v17 = sub_1CF9E6C18();
    MEMORY[0x1D3868CC0](v17);

    MEMORY[0x1D3868CC0](41, 0xE100000000000000);
    MEMORY[0x1D3868CC0](v27, v28);

    MEMORY[0x1D3868CC0](0xD00000000000001FLL, 0x80000001CFA4F8A0);
    v22 = 3;
    v18 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v18);

    MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA4F8C0);
    v22 = 8;
    v19 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v19);

    MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA4F8E0);
    v22 = 1;
    v20 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v20);

    MEMORY[0x1D3868CC0](0x29202020200ALL, 0xE600000000000000);
    return v29;
  }

  else
  {
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF4CBF44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
{
  v11 = *(*v6 + 648);
  v12 = *(*v6 + 632);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  a5(1, a1, AssociatedTypeWitness, AssociatedConformanceWitness);
  v22 = a6;
  v23 = v15;
  v16 = v24;
  v17 = (*(a4 + 24))(sub_1CF4D3158, v21, a3, a4);
  if (!v16)
  {
    v18 = v17;
    LOBYTE(a6) = [v17 next];
  }

  return a6 & 1;
}

uint64_t sub_1CF4CC0E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, uint64_t, uint64_t, uint64_t), uint64_t a6)
{
  v11 = *(*v6 + 656);
  v12 = *(*v6 + 640);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  a5(0, a1, AssociatedTypeWitness, AssociatedConformanceWitness);
  v22 = a6;
  v23 = v15;
  v16 = v24;
  v17 = (*(a4 + 24))(sub_1CF4D3158, v21, a3, a4);
  if (!v16)
  {
    v18 = v17;
    LOBYTE(a6) = [v17 next];
  }

  return a6 & 1;
}

uint64_t sub_1CF4CC240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *v4;
  v9 = *(*v4 + 656);
  v10 = *(*v4 + 640);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1CF4CB300(0, a1, AssociatedTypeWitness, AssociatedConformanceWitness);
  v14 = sub_1CF4C6EE0(sub_1CF4D345C, v13, a2, a3, a4);
  if (v20)
  {
  }

  v16 = v14;

  if (v16)
  {
    v18 = *(v17 + 632);
    v19 = *(v17 + 648);
    type metadata accessor for Propagation.PropagationJob();
    result = swift_dynamicCastClass();
    if (result)
    {
      return result;
    }
  }

  return 0;
}

uint64_t sub_1CF4CC3D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *v4;
  v9 = *(*v4 + 648);
  v10 = *(*v4 + 632);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1CF4CB300(1, a1, AssociatedTypeWitness, AssociatedConformanceWitness);
  v14 = sub_1CF4C6F7C(sub_1CF4D345C, v13, a2, a3, a4);
  if (v20)
  {
  }

  v16 = v14;

  if (v16)
  {
    v18 = *(v17 + 640);
    v19 = *(v17 + 656);
    type metadata accessor for Propagation.PropagationJob();
    result = swift_dynamicCastClass();
    if (result)
    {
      return result;
    }
  }

  return 0;
}

uint64_t sub_1CF4CC560(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v20 = 0xE000000000000000;
  sub_1CF9E7948();
  v23 = 0;
  v24 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0x203D2065646973, 0xE700000000000000);
  v22 = MEMORY[0x1E69E6530];
  v19 = a2 & 1;
  v12 = sub_1CEFF8EA0(&v19);
  v14 = v13;
  sub_1CEFCCC44(&v19, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v14)
  {
    MEMORY[0x1D3868CC0](v12, v14);

    MEMORY[0x1D3868CC0](0xD000000000000016, 0x80000001CFA4F7A0);
    v15 = (*(*(a9 + 8) + 32))(a1, a6);
    MEMORY[0x1D3868CC0](v15);

    MEMORY[0x1D3868CC0](0x70797420444E410ALL, 0xEC000000203D2065);
    v19 = 12;
    v16 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v16);

    MEMORY[0x1D3868CC0](0xD000000000000019, 0x80000001CFA44A40);
    v19 = &unk_1F4BED2B0;
    v20 = sub_1CF067ADC;
    v21 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF7F0, &unk_1CFA03230);
    sub_1CEFCCCEC(&qword_1EDEAB500, &unk_1EC4BF7F0, &unk_1CFA03230);
    sub_1CEFE4E68();
    v17 = sub_1CF9E6C18();
    MEMORY[0x1D3868CC0](v17);

    MEMORY[0x1D3868CC0](41, 0xE100000000000000);
    MEMORY[0x1D3868CC0](40, 0xE100000000000000);

    return v23;
  }

  else
  {
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF4CC8E0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v20 = 0xE000000000000000;
  sub_1CF9E7948();
  v23 = 0;
  v24 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0x203D2065646973, 0xE700000000000000);
  v22 = MEMORY[0x1E69E6530];
  v19 = a2 & 1;
  v12 = sub_1CEFF8EA0(&v19);
  v14 = v13;
  sub_1CEFCCC44(&v19, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v14)
  {
    MEMORY[0x1D3868CC0](v12, v14);

    MEMORY[0x1D3868CC0](0xD000000000000016, 0x80000001CFA4F780);
    v15 = (*(*(a9 + 8) + 32))(a1, a6);
    MEMORY[0x1D3868CC0](v15);

    MEMORY[0x1D3868CC0](0x70797420444E410ALL, 0xEC000000203D2065);
    v19 = 23;
    v16 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v16);

    MEMORY[0x1D3868CC0](0xD000000000000019, 0x80000001CFA44A40);
    v19 = &unk_1F4BED2B0;
    v20 = sub_1CF067ADC;
    v21 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF7F0, &unk_1CFA03230);
    sub_1CEFCCCEC(&qword_1EDEAB500, &unk_1EC4BF7F0, &unk_1CFA03230);
    sub_1CEFE4E68();
    v17 = sub_1CF9E6C18();
    MEMORY[0x1D3868CC0](v17);

    MEMORY[0x1D3868CC0](41, 0xE100000000000000);
    MEMORY[0x1D3868CC0](40, 0xE100000000000000);

    return v23;
  }

  else
  {
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF4CCC0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, void *), uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), void (*a7)(uint64_t))
{
  v11 = *(*v7 + 640);
  v12 = *(*v7 + 648);
  v13 = *(*v7 + 656);
  v32[0] = *(*v7 + 632);
  v10 = v32[0];
  v32[1] = v11;
  v32[2] = v12;
  v32[3] = v13;
  a5(0, v32);
  v33 = sub_1CF9E6DA8();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = a6(0, a1, v10, v11, AssociatedTypeWitness, v12, v13, AssociatedConformanceWitness);
  v25 = v10;
  v26 = v11;
  v27 = a3;
  v28 = v12;
  v29 = v13;
  v30 = a4;
  v31 = &v33;
  sub_1CF4C6B70(a2, v16, v17, a7, v24, a3, a4);

  if (v23)
  {
  }

  else
  {
    return v33;
  }
}

uint64_t sub_1CF4CCDA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(void, void *))
{
  if ((a1 & 0x8000000000000000) == 0)
  {
    v11[0] = a3;
    v11[1] = a4;
    v11[2] = a6;
    v11[3] = a7;
    a9(0, v11);
    v9 = swift_dynamicCastClass();
    if (v9)
    {
      v11[0] = v9;
      sub_1CF9E6E58();

      sub_1CF9E6E18();
    }
  }

  return 1;
}

uint64_t sub_1CF4CCE98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, void *), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), void (*a7)(uint64_t))
{
  v11 = *(*v7 + 632);
  v12 = *(*v7 + 656);
  v13 = *(*v7 + 648);
  v32[0] = *(*v7 + 640);
  v10 = v32[0];
  v32[1] = v11;
  v32[2] = v12;
  v32[3] = v13;
  a5(0, v32);
  v33 = sub_1CF9E6DA8();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = a6(1, a1, v11, v10, AssociatedTypeWitness, v13, v12, AssociatedConformanceWitness);
  v25 = v11;
  v26 = v10;
  v27 = a3;
  v28 = v13;
  v29 = v12;
  v30 = a4;
  v31 = &v33;
  sub_1CF4C6B70(a2, v16, v17, a7, v24, a3, a4);

  if (v23)
  {
  }

  else
  {
    return v33;
  }
}

uint64_t sub_1CF4CD034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(void, void *))
{
  if ((a1 & 0x8000000000000000) == 0)
  {
    return 1;
  }

  v13[8] = v9;
  v13[9] = v10;
  v13[0] = a4;
  v13[1] = a3;
  v13[2] = a7;
  v13[3] = a6;
  a9(0, v13);
  v12 = swift_dynamicCastClass();
  if (v12)
  {
    v13[0] = v12;
    sub_1CF9E6E58();

    sub_1CF9E6E18();
  }

  return 1;
}

uint64_t sub_1CF4CD0E0(char a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v6 = *(v5 + 24);
  }

  else
  {
    v7 = *(v5 + 16);
  }

  return sub_1CF37D234(a2, a3, a4, a5) & 1;
}

uint64_t sub_1CF4CD128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a1;
  v25 = *v4;
  v8 = v25[79];
  v26 = v25[81];
  v24 = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1CF9E75D8();
  v23 = *(v10 - 8);
  v11 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23 - v12;
  v27 = *(AssociatedTypeWitness - 8);
  v14 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v23 - v16;
  result = swift_weakLoadStrong();
  if (result)
  {
    v19 = *(result + 16);

    v20 = v29;
    (*(*v19 + 152))(v28, a2, a3, a4);

    if (!v20)
    {
      v21 = v27;
      if ((*(v27 + 48))(v13, 1, AssociatedTypeWitness) == 1)
      {
        (*(v23 + 8))(v13, v10);
        return 0;
      }

      else
      {
        (*(v21 + 32))(v17, v13, AssociatedTypeWitness);
        v22 = sub_1CF354B38(v17, a2, v24, v25[80], a3, v26, v25[82], a4);
        (*(v21 + 8))(v17, AssociatedTypeWitness);
        return v22;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF4CD444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *v5;
  v11 = v5[2];
  v23[4] = a2;
  v17 = v10[79];
  v18 = v10[80];
  v19 = a4;
  v20 = v10[81];
  v21 = v10[82];
  v22 = a5;
  v23[0] = v17;
  v23[1] = v18;
  v23[2] = v20;
  v23[3] = v21;
  type metadata accessor for ItemJob();
  swift_getMetatypeMetadata();
  sub_1CF9E6E58();
  sub_1CF9E75D8();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE230, qword_1CF9FCE30);
  sub_1CF06E1CC(sub_1CF4D2E88, &v16, MEMORY[0x1E69E73E0], v12, v13, v23);
  v14 = sub_1CF3782E8(a1, v23[0], a3, a4, a5);

  return v14;
}

uint64_t sub_1CF4CD5C0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v13[13] = *a1;
  v13[2] = a2;
  v13[3] = a3;
  v13[4] = a4;
  v13[5] = a5;
  v13[6] = a6;
  v13[7] = a7;
  v13[9] = a2;
  v13[10] = a3;
  v13[11] = a5;
  v13[12] = a6;
  type metadata accessor for ItemJob();
  swift_getMetatypeMetadata();
  v9 = sub_1CF9E6E58();
  WitnessTable = swift_getWitnessTable();
  result = sub_1CF054A5C(sub_1CF4D3738, v13, v9, &type metadata for JobCode, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v11);
  *a8 = result;
  return result;
}

uint64_t sub_1CF4CD694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *v5;
  v11 = v5[3];
  v23[4] = a2;
  v17 = v10[79];
  v18 = v10[80];
  v19 = a4;
  v20 = v10[81];
  v21 = v10[82];
  v22 = a5;
  v23[0] = v18;
  v23[1] = v17;
  v23[2] = v21;
  v23[3] = v20;
  type metadata accessor for ItemJob();
  swift_getMetatypeMetadata();
  sub_1CF9E6E58();
  sub_1CF9E75D8();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE230, qword_1CF9FCE30);
  sub_1CF06E1CC(sub_1CF4D2E20, &v16, MEMORY[0x1E69E73E0], v12, v13, v23);
  v14 = sub_1CF3782E8(a1, v23[0], a3, a4, a5);

  return v14;
}

uint64_t sub_1CF4CD810@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v13[13] = *a1;
  v13[2] = a2;
  v13[3] = a3;
  v13[4] = a4;
  v13[5] = a5;
  v13[6] = a6;
  v13[7] = a7;
  v13[9] = a3;
  v13[10] = a2;
  v13[11] = a6;
  v13[12] = a5;
  type metadata accessor for ItemJob();
  swift_getMetatypeMetadata();
  v9 = sub_1CF9E6E58();
  WitnessTable = swift_getWitnessTable();
  result = sub_1CF054A5C(sub_1CF4D2E4C, v13, v9, &type metadata for JobCode, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v11);
  *a8 = result;
  return result;
}

uint64_t sub_1CF4CD8E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 16);
  v7 = sub_1CF057C00();
  return sub_1CF3788AC(a1, v7, a3) & 1;
}

uint64_t sub_1CF4CD964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 24);
  v7 = sub_1CF057C00();
  return sub_1CF3788AC(a1, v7, a3) & 1;
}

uint64_t sub_1CF4CD9E4(char a1, uint64_t a2, unint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(*(v7 + 16) + 56);

  LOBYTE(a7) = sub_1CF3354D8(a1, a2, a3, a4, a5, a6, a7);

  return a7 & 1;
}

uint64_t sub_1CF4CDA7C(char a1, uint64_t a2, unint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(*(v7 + 24) + 56);

  LOBYTE(a7) = sub_1CF3354D8(a1, a2, a3, a4, a5, a6, a7);

  return a7 & 1;
}

uint64_t sub_1CF4CDB14(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(*(v7 + 16) + 56);

  v16 = sub_1CF334DAC(a1, a2, a3, a4 & 1, a5, a6, a7);

  return v16;
}

uint64_t sub_1CF4CDBAC(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(*(v7 + 24) + 56);

  v16 = sub_1CF334DAC(a1, a2, a3, a4 & 1, a5, a6, a7);

  return v16;
}

uint64_t sub_1CF4CDC44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a4;
  v32 = a3;
  v7 = *(*v4 + 648);
  v8 = *(*v4 + 632);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v31 = sub_1CF9E75D8();
  v10 = *(v31 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v29 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v25 - v15;
  v26 = v4[2];
  v27 = a1;
  v17 = *(v26 + 56);
  v18 = *(AssociatedTypeWitness - 8);
  v19 = *(v18 + 16);
  v19(&v25 - v15, a1, AssociatedTypeWitness, v14);
  v20 = *(v18 + 56);
  v20(v16, 0, 1, AssociatedTypeWitness);

  v28 = a2;
  v21 = v30;
  sub_1CF32C350(5, 0, 0, v16, a2, v32, v33);
  if (v21)
  {
    (*(v10 + 8))(v16, v31);
  }

  else
  {
    v30 = *(v10 + 8);
    v30(v16, v31);

    v22 = *(v26 + 56);
    v23 = v29;
    (v19)(v29, v27, AssociatedTypeWitness);
    v20(v23, 0, 1, AssociatedTypeWitness);

    sub_1CF32C350(6, 0, 0, v23, v28, v32, v33);
    v30(v29, v31);
  }
}

uint64_t sub_1CF4CDEEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a4;
  v32 = a3;
  v7 = *(*v4 + 656);
  v8 = *(*v4 + 640);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v31 = sub_1CF9E75D8();
  v10 = *(v31 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v29 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v25 - v15;
  v26 = v4[3];
  v27 = a1;
  v17 = *(v26 + 56);
  v18 = *(AssociatedTypeWitness - 8);
  v19 = *(v18 + 16);
  v19(&v25 - v15, a1, AssociatedTypeWitness, v14);
  v20 = *(v18 + 56);
  v20(v16, 0, 1, AssociatedTypeWitness);

  v28 = a2;
  v21 = v30;
  sub_1CF32C350(5, 0, 0, v16, a2, v32, v33);
  if (v21)
  {
    (*(v10 + 8))(v16, v31);
  }

  else
  {
    v30 = *(v10 + 8);
    v30(v16, v31);

    v22 = *(v26 + 56);
    v23 = v29;
    (v19)(v29, v27, AssociatedTypeWitness);
    v20(v23, 0, 1, AssociatedTypeWitness);

    sub_1CF32C350(6, 0, 0, v23, v28, v32, v33);
    v30(v29, v31);
  }
}

uint64_t sub_1CF4CE194(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *v5;
  v7 = *(v5[2] + 56);
  v8 = *(*v5 + 648);
  v9 = *(*v5 + 632);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(v6 + 656);
  v12 = *(v6 + 640);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v13 = type metadata accessor for ThrottlingKey();
  sub_1CF9E7FA8();
  v14 = *(*(v13 - 8) + 72);
  v15 = *(*(v13 - 8) + 80);
  swift_allocObject();

  v16 = sub_1CF9E6D68();
  v18 = v17;
  type metadata accessor for ReconciliationID();
  v19 = *(swift_getTupleTypeMetadata2() + 48);
  (*(*(AssociatedTypeWitness - 8) + 16))(v18, a1, AssociatedTypeWitness);
  swift_storeEnumTagMultiPayload();
  *(v18 + v19) = a2;
  v20 = sub_1CF045898(v16);
  sub_1CF3302CC(v20, a3, a4, a5);
}

uint64_t sub_1CF4CE430(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *v5;
  v7 = *(v5[3] + 56);
  v8 = *(*v5 + 656);
  v9 = *(*v5 + 640);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(v6 + 648);
  v12 = *(v6 + 632);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v13 = type metadata accessor for ThrottlingKey();
  sub_1CF9E7FA8();
  v14 = *(*(v13 - 8) + 72);
  v15 = *(*(v13 - 8) + 80);
  swift_allocObject();

  v16 = sub_1CF9E6D68();
  v18 = v17;
  type metadata accessor for ReconciliationID();
  v19 = *(swift_getTupleTypeMetadata2() + 48);
  (*(*(AssociatedTypeWitness - 8) + 16))(v18, a1, AssociatedTypeWitness);
  swift_storeEnumTagMultiPayload();
  *(v18 + v19) = a2;
  v20 = sub_1CF045898(v16);
  sub_1CF3302CC(v20, a3, a4, a5);
}

uint64_t sub_1CF4CE724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = *(*(v5 + 24) + 56);

  a5(a1, a2, a3, a4);
}

uint64_t sub_1CF4CE79C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(*(v5 + 16) + 56);

  sub_1CF336364(a1, a2, a3, a4, a5);
}

uint64_t sub_1CF4CE814(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(*(v5 + 24) + 56);

  sub_1CF336364(a1, a2, a3, a4, a5);
}

uint64_t sub_1CF4CE88C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v13 = *(*(v5 + 16) + 56);

  sub_1CF335C78(a1, a2, a3, a4, a5);
  v15 = v14;

  if (v6 || v15 == a2)
  {
    return a2;
  }

  v17 = a2 - v15;
  if (__OFSUB__(a2, v15))
  {
    __break(1u);
  }

  else
  {
    v18 = *(*(v7 + 24) + 56);

    sub_1CF335C78(a1, v17, a3, a4, a5);
    v20 = v19;

    a2 = v15 + v20;
    if (!__OFADD__(v15, v20))
    {
      return a2;
    }
  }

  __break(1u);
  return result;
}

void sub_1CF4CE98C(void (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = a2;
  v12 = sub_1CF9E5CF8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {
    v22 = v25;
    if (!v25)
    {
      return;
    }

    goto LABEL_9;
  }

  v17 = *(v6 + 32);
  v24[0] = v6;
  v24[1] = v17;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v19 = v18;
  (*(v13 + 8))(v16, v12);
  v20 = v19 * 1000000000.0;
  if (COERCE__INT64(fabs(v19 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v20 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v20 >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v21 = v26;
  sub_1CF347AC0(a1, a3, v20, a4, a5, a6);
  if (!v21)
  {
    v6 = v24[0];
    v22 = v25;
    if (v25)
    {
LABEL_9:
      v23 = *(v6 + 32);
      sub_1CF348CFC(a1, v22, a4, a5, a6);
    }
  }
}

uint64_t sub_1CF4CEBAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *(*(v3 + 16) + 56);

  v10 = sub_1CF330FA0(a1, a2, a3);

  if (!v4)
  {
    if (v10)
    {
      LOBYTE(a3) = 1;
    }

    else
    {
      v11 = *(*(v5 + 24) + 56);

      LOBYTE(a3) = sub_1CF330FA0(a1, a2, a3);
    }
  }

  return a3 & 1;
}

uint64_t sub_1CF4CEC78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *(*(v3 + 16) + 56);

  sub_1CF330958(a1, a2, a3);

  if (!v4)
  {
    v11 = *(*(v5 + 24) + 56);

    sub_1CF330958(a1, a2, a3);
  }

  return result;
}

uint64_t sub_1CF4CED18(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(*v5 + 632);
  v12 = *(*v5 + 648);
  v13 = *(*v5 + 656);
  v31 = *(*v5 + 640);
  v11 = v31;
  v32 = v12;
  v33 = v13;
  type metadata accessor for FSOrFPJob();
  v34 = sub_1CF9E6DA8();
  v30 = 0;
  LOBYTE(v31) = 1;
  v27 = a1;
  v28 = a2 & 1;
  v29 = 100;
  v18 = v10;
  v19 = v11;
  v20 = a4;
  v21 = v12;
  v22 = v13;
  v23 = a5;
  v24 = &v34;
  v25 = &v30;
  sub_1CF4C6B70(a3, sub_1CF4D2DD8, v26, sub_1CF4D2DE8, v17, a4, a5);
  if (!v16)
  {
    v5 = v34;

    sub_1CF9E6DF8();
  }

  return v5;
}

uint64_t sub_1CF4CEEC0(void *a1, uint64_t a2, char a3)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000013, 0x80000001CFA442F0);
  v6 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v6);

  MEMORY[0x1D3868CC0](0xD000000000000023, 0x80000001CFA448C0);
  v7 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v7);

  MEMORY[0x1D3868CC0](0x4E410A30203D2120, 0xEA00000000002044);
  if (a3)
  {
    v8 = 0xE100000000000000;
    v9 = 49;
  }

  else
  {
    v10 = [a1 bindLongParameter_];
    v11 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v13 = v12;

    MEMORY[0x1D3868CC0](v11, v13);

    v9 = 0x203E204449776F72;
    v8 = 0xE800000000000000;
  }

  MEMORY[0x1D3868CC0](v9, v8);

  MEMORY[0x1D3868CC0](0xD000000000000016, 0x80000001CFA448A0);
  v14 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v14);

  return 0;
}

uint64_t sub_1CF4CF0D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = a1;

  v17[0] = a4;
  v17[1] = a5;
  v17[2] = a7;
  v18 = a8;
  type metadata accessor for FSOrFPJob();
  sub_1CF9E6E58();
  sub_1CF9E6E18();
  sub_1CF0451E0(a1, v17);
  if (!v18)
  {
    sub_1CEFCCC44(v17, &unk_1EC4C1BE0, &unk_1CF9FD400);
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F00, &unk_1CF9FE4A0);
  if (!swift_dynamicCast())
  {
LABEL_5:
    v15 = 0;
    v14 = 1;
    goto LABEL_6;
  }

  v14 = 0;
  v15 = v19;
LABEL_6:
  *a3 = v15;
  *(a3 + 8) = v14;
  return 1;
}