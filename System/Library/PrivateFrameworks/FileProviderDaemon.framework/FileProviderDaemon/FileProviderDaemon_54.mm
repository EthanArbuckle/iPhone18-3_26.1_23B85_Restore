uint64_t sub_1CF5A08AC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for FileTreeChangeAggregator.Change();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  if (MEMORY[0x1D3868960](v2, AssociatedTypeWitness, v6, *(AssociatedConformanceWitness + 40)))
  {
    v8 = *(v1 + 32) == 2 && *(v1 + 65) == 0;
    if (v8 && !*(v1 + 64) && (*(v1 + 66) & 1) == 0 && !*(*(v1 + 80) + 16))
    {
      v10 = *(v1 + 8);

      JUMPOUT(0x1D3868960);
    }
  }

  return 0;
}

uint64_t sub_1CF5A09CC(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 32);
  if (v6 != 2)
  {
    v7 = *(v2 + 48);
    v8 = *(v2 + 40);
    v9 = a1[3];
    v10 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v9);
    sub_1CF9E7948();

    v44 = 0x3A7465736572202BLL;
    v45 = 0xE900000000000020;
    v11 = sub_1CF953A9C(v8, v7 & 1);
    MEMORY[0x1D3868CC0](v11);

    MEMORY[0x1D3868CC0](0x6579616C6564202CLL, 0xEB00000000203A64);
    if (v6)
    {
      v12 = 1702195828;
    }

    else
    {
      v12 = 0x65736C6166;
    }

    if (v6)
    {
      v13 = 0xE400000000000000;
    }

    else
    {
      v13 = 0xE500000000000000;
    }

    MEMORY[0x1D3868CC0](v12, v13);

    sub_1CF4FB2BC(v44, v45, v9, v10);
  }

  v14 = *(v2 + 64);
  v15 = *(a2 + 16);
  v16 = *(a2 + 24);
  if (*(v2 + 64))
  {
    v44 = 0;
    v45 = 0xE000000000000000;
    MEMORY[0x1D3868CC0](0x6B636F6C626E75, 0xE700000000000000);
    if (v14 == 2)
    {
      MEMORY[0x1D3868CC0](0x6472616373696428, 0xEB00000000296465);
    }

    v17 = *(v2 + 65);
    if (!*(v2 + 65))
    {
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  if (!*(v2 + 65))
  {
    goto LABEL_21;
  }

  v44 = 0;
  v45 = 0xE000000000000000;
  v17 = *(v2 + 65);
  if (*(v2 + 65))
  {
LABEL_16:
    if ((v45 & 0xF00000000000000) != 0)
    {
      MEMORY[0x1D3868CC0](44, 0xE100000000000000);
    }

    MEMORY[0x1D3868CC0](0x6E6163736572, 0xE600000000000000);
    if (v17 == 2)
    {
      MEMORY[0x1D3868CC0](0x6472616373696428, 0xEB00000000296465);
    }
  }

LABEL_20:
  v18 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  v42 = 0x3A656C6469202BLL;
  v43 = 0xE700000000000000;
  MEMORY[0x1D3868CC0](v44, v45);

  sub_1CF4FB2BC(0x3A656C6469202BLL, 0xE700000000000000, v18, v19);

LABEL_21:
  if (*(v2 + 66))
  {
    v20 = a1[3];
    v21 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v20);
    sub_1CF4FB2BC(0x6C616E676973202BLL, 0xEA00000000006465, v20, v21);
  }

  v22 = *(v3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24 = type metadata accessor for FileTreeChangeAggregator.Change();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = MEMORY[0x1D3868960](v22, AssociatedTypeWitness, v24, *(AssociatedConformanceWitness + 40));
  v27 = MEMORY[0x1E69E7CA8];
  if ((result & 1) == 0)
  {
    v28 = a1[3];
    v29 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v28);
    sub_1CF4FB2BC(0x65676E616863202BLL, 0xEA00000000003A73, v28, v29);
    v30 = a1[3];
    v31 = a1[4];
    v32 = __swift_project_boxed_opaque_existential_1(a1, v30);
    MEMORY[0x1EEE9AC00](v32);
    v39 = v15;
    v40 = v16;
    v41 = v3;
    result = sub_1CF4FB38C(8224, 0xE200000000000000, sub_1CF5DF5A8, v38, v30, v27 + 8, v31);
  }

  if (*(*(v3 + 24) + 16))
  {
    v33 = a1[3];
    v34 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v33);
    sub_1CF4FB2BC(0x697469736F70202BLL, 0xEC0000003A736E6FLL, v33, v34);
    v35 = a1[3];
    v36 = a1[4];
    v37 = __swift_project_boxed_opaque_existential_1(a1, v35);
    MEMORY[0x1EEE9AC00](v37);
    v39 = v15;
    v40 = v16;
    v41 = v3;
    return sub_1CF4FB38C(8224, 0xE200000000000000, sub_1CF5DF5C8, v38, v35, v27 + 8, v36);
  }

  return result;
}

uint64_t sub_1CF5A0E94()
{
  v2 = *(*v0 + 616);
  v3 = *(*v0 + 632);
  type metadata accessor for FSOrFPJob();
  sub_1CF9E78B8();
  sub_1CF052DA4(v0, sub_1CF5DFB34);
  return v2;
}

id sub_1CF5A0F38()
{
  v1 = objc_sync_enter(v0);
  if (v1)
  {
    MEMORY[0x1EEE9AC00](v1);
    v6 = v0;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v5, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v2 = *&v0[qword_1EDEADB40];
  v3 = objc_sync_exit(v0);
  if (v3)
  {
    MEMORY[0x1EEE9AC00](v3);
    v6 = v0;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v5, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  return v2;
}

void sub_1CF5A1030(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v86 = a2;
  v98 = a1;
  v4 = *v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBA8, &qword_1CFA12B20);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v91 = &v72 - v7;
  v8 = v4[79];
  v9 = v4[77];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = v4[80];
  v12 = v4[78];
  v13 = swift_getAssociatedTypeWitness();
  v97 = v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = swift_getAssociatedConformanceWitness();
  v99 = AssociatedTypeWitness;
  v100 = v13;
  v101 = AssociatedConformanceWitness;
  v102 = v15;
  v16 = type metadata accessor for ReconciliationID();
  v90 = *(v16 - 8);
  v17 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v84 = v18;
  v85 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v89 = &v72 - v20;
  v96 = v21;
  v22 = sub_1CF9E75D8();
  v94 = *(v22 - 8);
  v95 = v22;
  v23 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v88 = &v72 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v93 = &v72 - v26;
  v83 = AssociatedTypeWitness;
  v99 = AssociatedTypeWitness;
  v100 = v13;
  v87 = v13;
  v101 = AssociatedConformanceWitness;
  v102 = v15;
  v27 = type metadata accessor for ThrottlingKey();
  v28 = sub_1CF9E75D8();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v72 - v31;
  v33 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34);
  MEMORY[0x1EEE9AC00](v35);
  v40 = *(v3 + qword_1EDEBBC98);
  if (v40)
  {
    v81 = v39;
    v82 = v38;
    v92 = &v72 - v36;
    v41 = v37;

    v42 = v97;
    sub_1CF04FF38(v98, v32);
    if ((*(v41 + 48))(v32, 1, v27) == 1)
    {

      (*(v29 + 8))(v32, v28);
      return;
    }

    v78 = v40;
    v79 = v41;
    v43 = *(v41 + 32);
    v43(v92, v32, v27);
    if (v98 < 0)
    {
      v99 = v9;
      v100 = v12;
      v101 = v42;
      v102 = v11;
      type metadata accessor for Propagation.PropagationJob();
      v44 = swift_dynamicCastClass();
      if (v44)
      {
        v75 = v43;
        v80 = v27;
        v76 = v12;
        v77 = v11;
        v45 = v9;
        v48 = 1;
LABEL_12:
        v74 = v48;
        v47 = v83;
LABEL_13:
        v49 = v93;
        (*(*(v47 - 1) + 16))(v93, v44 + *(*v44 + 576));
        v50 = v96;
        swift_storeEnumTagMultiPayload();
        v51 = v90;
        (*(v90 + 56))(v49, 0, 1, v50);
        v53 = v94;
        v52 = v95;
        v54 = v88;
        (*(v94 + 16))(v88, v49, v95);
        if ((*(v51 + 48))(v54, 1, v50) == 1)
        {

          v55 = *(v53 + 8);
          v55(v49, v52);
          (*(v79 + 8))(v92, v80);
          v55(v54, v52);
        }

        else
        {
          v87 = *(v51 + 32);
          v56 = v89;
          v87(v89, v54, v50);
          v57 = sub_1CF9E57E8();
          v88 = v57;
          type metadata accessor for FPCK(0);
          v73 = v45;
          v58 = sub_1CF946EFC();
          v98 = sub_1CF6C4380(v57, v74, v58, 0, 0);
          v59 = sub_1CF9E6F08();
          (*(*(v59 - 8) + 56))(v91, 1, 1, v59);
          v60 = v85;
          (*(v51 + 16))(v85, v56, v50);
          v61 = v79;
          v62 = v82;
          (*(v79 + 16))(v82, v92, v80);
          v63 = (*(v51 + 80) + 80) & ~*(v51 + 80);
          v64 = (v84 + *(v61 + 80) + v63) & ~*(v61 + 80);
          v65 = swift_allocObject();
          *(v65 + 2) = 0;
          *(v65 + 3) = 0;
          v66 = v76;
          *(v65 + 4) = v73;
          *(v65 + 5) = v66;
          v67 = v77;
          *(v65 + 6) = v97;
          *(v65 + 7) = v67;
          v68 = v98;
          *(v65 + 8) = v78;
          *(v65 + 9) = v68;
          v69 = v60;
          v70 = v96;
          v87(&v65[v63], v69, v96);
          v71 = v80;
          v75(&v65[v64], v62, v80);

          sub_1CF81241C(0, 0, v91, &unk_1CFA0CD48, v65);

          (*(v51 + 8))(v89, v70);
          (*(v94 + 8))(v93, v95);
          (*(v61 + 8))(v92, v71);
        }

        return;
      }

      v99 = v12;
      v100 = v9;
      v101 = v11;
      v102 = v42;
      type metadata accessor for ItemJob();
      v44 = swift_dynamicCastClass();
      if (v44)
      {
        v75 = v43;
        v80 = v27;
        v76 = v12;
        v77 = v11;
        v45 = v9;
        v46 = 3;
        goto LABEL_7;
      }
    }

    else
    {
      v99 = v12;
      v100 = v9;
      v101 = v11;
      v102 = v42;
      type metadata accessor for Propagation.PropagationJob();
      v44 = swift_dynamicCastClass();
      if (v44)
      {
        v75 = v43;
        v80 = v27;
        v76 = v12;
        v77 = v11;
        v45 = v9;
        v46 = 2;
LABEL_7:
        v74 = v46;
        v47 = v87;
        goto LABEL_13;
      }

      v99 = v9;
      v100 = v12;
      v101 = v42;
      v102 = v11;
      type metadata accessor for ItemJob();
      v44 = swift_dynamicCastClass();
      if (v44)
      {
        v75 = v43;
        v80 = v27;
        v76 = v12;
        v77 = v11;
        v45 = v9;
        v48 = 4;
        goto LABEL_12;
      }
    }

    (*(v79 + 8))(v92, v27);
  }
}

void sub_1CF5A1A2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  if ((sub_1CF04590C() & 1) == 0)
  {
    sub_1CF5A5DDC(1);
    v9 = sub_1CF5A0F38();
    [v9 addWatcher_];

    if ((v4[19] & 1) == 0 && (fp_task_tracker_is_cancelled(*(v4[21] + 16)) & 1) == 0 && (v4[19] & 1) == 0 && (*(v4 + 81) & 0x20) != 0)
    {
      v13 = *(v8 + 616);
      v14 = *(v8 + 632);
      type metadata accessor for DiskImport.Monitor();

      v11 = sub_1CF964240(v10, 600, 600, 300);
      v12 = *(v4 + qword_1EDEBBCB8);
      *(v4 + qword_1EDEBBCB8) = v11;

      sub_1CF972814(a1, a2, a3);
    }
  }
}

uint64_t sub_1CF5A1B74()
{
  v1 = v0;
  result = sub_1CF04590C();
  if (result)
  {
    v3 = qword_1EDEBBCB8;
    if (*(v0 + qword_1EDEBBCB8))
    {
      v4 = *(v0 + qword_1EDEBBCB8);

      sub_1CF973BC8(1);

      v5 = *(v0 + v3);
    }

    *(v0 + v3) = 0;

    v6 = sub_1CF5A0F38();
    [v6 removeWatcher_];

    return sub_1CF5A5DDC(0);
  }

  return result;
}

uint64_t sub_1CF5A1C7C(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = *(*v1 + 616);
  v5 = *(*v1 + 624);
  v6 = *(*v1 + 632);
  v7 = *(*v1 + 640);
  sub_1CF0451E0(a1, v12);
  if (v13)
  {
    v8 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    v9 = *(v8 + 8);
    sub_1CF9E7F98();
    v10 = __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x1EEE9AC00](v10);
    v12[0] = v4;
    v12[1] = v5;
    v12[2] = v6;
    v13 = v7;
    type metadata accessor for FSOrFPJob();
    sub_1CF052DA4(v2, sub_1CF5DFB14);

    return v12[0];
  }

  else
  {
    sub_1CEFCCC44(v12, &unk_1EC4C1BE0, &unk_1CF9FD400);
  }

  return v3;
}

void sub_1CF5A1E10(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v103 = a8;
  v104 = a6;
  v108 = a2;
  v109 = a7;
  v100 = a5;
  v102 = a4;
  v98 = *v10;
  v89 = sub_1CF9E63D8();
  v88 = *(v89 - 8);
  v13 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v89);
  v87 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v105 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v112 = &v87 - v19;
  v20 = sub_1CF9E6068();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v93 = &v87 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v87 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v87 - v29;
  v31 = type metadata accessor for Signpost(0);
  v107 = *(v31 - 8);
  v32 = *(v107 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v96 = &v87 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v94 = &v87 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v110 = v10;
  v111 = &v87 - v36;
  v37 = *(v10 + qword_1EDEBBC38);
  v106 = fpfs_adopt_log();
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v97 = a10;
  v95 = a9;
  v38 = qword_1EDEBBE40;
  (*(v21 + 56))(v30, 1, 1, v20);
  strcpy(&aBlock, "async batch ");
  BYTE13(aBlock) = 0;
  HIWORD(aBlock) = -5120;
  v101 = a3;
  v39 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v39);

  v90 = *(&aBlock + 1);
  v91 = aBlock;
  v92 = v30;
  sub_1CEFCCBDC(v30, v27, &unk_1EC4BED20, &unk_1CFA00700);
  v40 = *(v21 + 48);
  v41 = v40(v27, 1, v20);
  v99 = a1;
  if (v41 == 1)
  {
    v42 = v38;
    v43 = v93;
    sub_1CF9E6048();
    if (v40(v27, 1, v20) != 1)
    {
      sub_1CEFCCC44(v27, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v43 = v93;
    (*(v21 + 32))(v93, v27, v20);
  }

  v44 = v111;
  (*(v21 + 16))(v111, v43, v20);
  *(v44 + *(v31 + 20)) = v38;
  v45 = v44 + *(v31 + 24);
  *v45 = "DB queue wait";
  *(v45 + 8) = 13;
  *(v45 + 16) = 2;
  v46 = v38;
  sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_1CF9FA450;
  *(v47 + 56) = MEMORY[0x1E69E6158];
  *(v47 + 64) = sub_1CEFD51C4();
  v48 = v90;
  *(v47 + 32) = v91;
  *(v47 + 40) = v48;
  sub_1CF9E6028();

  (*(v21 + 8))(v43, v20);
  sub_1CEFCCC44(v92, &unk_1EC4BED20, &unk_1CFA00700);
  v91 = v110[21];
  v93 = v110[8];
  v92 = sub_1CF9E6448();
  v90 = *(v92 - 1);
  (*(v90 + 56))(v112, 1, 1, v92);
  v49 = v94;
  sub_1CF043498(v44, v94, type metadata accessor for Signpost);
  v50 = *(v107 + 80);
  v51 = (v50 + 16) & ~v50;
  v52 = swift_allocObject();
  v107 = v52;
  sub_1CF042EE8(v49, v52 + v51);
  v53 = (v52 + ((v32 + 7 + v51) & 0xFFFFFFFFFFFFFFF8));
  v54 = v103;
  *v53 = v109;
  v53[1] = v54;
  v55 = v96;
  sub_1CF043498(v44, v96, type metadata accessor for Signpost);
  v56 = (v50 + 48) & ~v50;
  v57 = (v32 + 7 + v56) & 0xFFFFFFFFFFFFFFF8;
  v58 = (v57 + 23) & 0xFFFFFFFFFFFFFFF8;
  v59 = (v58 + 15) & 0xFFFFFFFFFFFFFFF8;
  v60 = (v59 + 25) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  v62 = v98;
  *(v61 + 16) = *(v98 + 616);
  *(v61 + 24) = *(v62 + 624);
  *(v61 + 40) = *(v62 + 640);
  sub_1CF042EE8(v55, v61 + v56);
  v63 = (v61 + v57);
  v64 = v99;
  v65 = v104;
  *v63 = v100;
  v63[1] = v65;
  *(v61 + v58) = v110;
  v66 = v61 + v59;
  v67 = v108;
  *v66 = v64;
  *(v66 + 8) = v67;
  LOBYTE(v67) = v102;
  *(v66 + 16) = v101;
  *(v66 + 17) = v67 & 1;
  v68 = (v61 + v60);
  *v68 = v109;
  v68[1] = v54;
  v69 = (v61 + ((v60 + 23) & 0xFFFFFFFFFFFFFFF8));
  v70 = v97;
  *v69 = v95;
  v69[1] = v70;
  v71 = swift_allocObject();
  v72 = v107;
  v71[2] = sub_1CF55301C;
  v71[3] = v72;
  v73 = v91;
  v71[4] = v91;
  swift_retain_n();
  v74 = v93;
  v75 = v90;

  v76 = v92;

  v77 = fpfs_current_log();
  v110 = *(v73 + 16);
  v78 = v105;
  sub_1CEFCCBDC(v112, v105, &unk_1EC4BE370, qword_1CFA01B30);
  if ((*(v75 + 48))(v78, 1, v76) == 1)
  {
    sub_1CEFCCC44(v78, &unk_1EC4BE370, qword_1CFA01B30);
    v79 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v80 = v87;
    sub_1CF9E6438();
    (*(v75 + 8))(v78, v76);
    v79 = sub_1CF9E63C8();
    (*(v88 + 8))(v80, v89);
  }

  v81 = swift_allocObject();
  v81[2] = v77;
  v81[3] = sub_1CF5DF8F0;
  v81[4] = v61;
  v116 = sub_1CEFCA438;
  v117 = v81;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v114 = sub_1CEFCA444;
  v115 = &block_descriptor_279;
  v82 = _Block_copy(&aBlock);
  v83 = v77;

  v116 = sub_1CF2AF9E8;
  v117 = v71;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v114 = sub_1CEFCA444;
  v115 = &block_descriptor_282;
  v84 = _Block_copy(&aBlock);

  fp_task_tracker_async_and_qos(v110, v74, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v79, v82, v84);
  _Block_release(v84);
  _Block_release(v82);

  sub_1CEFCCC44(v112, &unk_1EC4BE370, qword_1CFA01B30);
  sub_1CF043504(v111, type metadata accessor for Signpost);
  v85 = v106;
  v86 = fpfs_adopt_log();
}

uint64_t sub_1CF5A296C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_1CF9E6118();
  v41 = *(v6 - 8);
  v7 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v42 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v5 + 632);
  v44[0] = *(v5 + 616);
  v44[1] = v9;
  v10 = type metadata accessor for TestingOperation();
  v11 = *(v10 - 1);
  v12 = v11[8];
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v36 - v16;
  sub_1CF94043C(0, v10, &v36 - v16);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C1B90, &unk_1CFA168F0);
  swift_getWitnessTable();
  sub_1CF9E6708();
  sub_1CF9E6658();
  v18 = v11[1];
  v18(v17, v10);
  result = swift_endAccess();
  v40 = v43;
  if (v43)
  {
    v39 = v6;
    v20 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v21 = v11[2];
    v21(v15, a1, v10);
    v22 = sub_1CF9E6108();
    v23 = sub_1CF9E7298();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v38 = v23;
      v25 = v24;
      v37 = swift_slowAlloc();
      *&v44[0] = v37;
      *v25 = 136315138;
      v21(v17, v15, v10);
      v18(v15, v10);
      v26 = v22;
      v27 = sub_1CF9462C8(v10);
      v29 = v28;
      v18(v17, v10);
      v30 = sub_1CEFD0DF0(v27, v29, v44);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_1CEFC7000, v26, v38, "unblocking waiters on %s", v25, 0xCu);
      v31 = v37;
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x1D386CDC0](v31, -1, -1);
      MEMORY[0x1D386CDC0](v25, -1, -1);
    }

    else
    {
      v18(v15, v10);
    }

    (*(v41 + 8))(v42, v39);
    v32 = *(v40 + 16);
    if (v32)
    {
      v33 = (v40 + 40);
      do
      {
        v35 = *(v33 - 1);
        v34 = *v33;
        *&v44[0] = a2;

        v35(v44);

        v33 += 2;
        --v32;
      }

      while (v32);
    }
  }

  return result;
}

uint64_t sub_1CF5A2DA4(char a1, uint64_t a2, char a3, char a4)
{
  v5 = v4;
  v10 = sub_1CF9E6118();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (a1)
    {
      if (a3)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }

LABEL_23:
    if (a3)
    {
      v33 = (v5 + qword_1EDEBBCD0);
      v34 = *(v5 + qword_1EDEBBCD0);
      v35 = v34 + 1;
      if (!__OFADD__(v34, 1))
      {
        *v33 = v35;
LABEL_30:
        v37 = v33[1];
        v38 = v37 + a2;
        if (!__OFADD__(v37, a2))
        {
          v33[1] = v38;
          result = sub_1CF5A7760(v35, v38, a1 & 1);
          if (*v33 < 1 || v33[1] <= 0)
          {
            *v33 = 0;
            v33[1] = 0;
          }

          return result;
        }

        goto LABEL_38;
      }
    }

    else
    {
      v33 = (v5 + qword_1EDEBBCD0);
      v36 = *(v5 + qword_1EDEBBCD0);
      v35 = v36 - 1;
      if (!__OFSUB__(v36, 1))
      {
        *v33 = v35;
        v18 = __OFSUB__(0, a2);
        a2 = -a2;
        if (v18)
        {
LABEL_41:
          __break(1u);
LABEL_42:
          result = sub_1CF9E7B68();
          __break(1u);
          return result;
        }

        goto LABEL_30;
      }
    }

LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  a2 = 1;
  if ((a1 & 1) == 0)
  {
    goto LABEL_23;
  }

  if (a3)
  {
LABEL_4:
    v16 = (v5 + qword_1EDEBBCA8);
    v17 = *(v5 + qword_1EDEBBCA8);
    v18 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (!v18)
    {
      *v16 = v19;
      goto LABEL_10;
    }

    goto LABEL_35;
  }

LABEL_8:
  v16 = (v5 + qword_1EDEBBCA8);
  v20 = *(v5 + qword_1EDEBBCA8);
  v18 = __OFSUB__(v20, 1);
  v19 = v20 - 1;
  if (v18)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  *v16 = v19;
  v18 = __OFSUB__(0, a2);
  a2 = -a2;
  if (v18)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

LABEL_10:
  v21 = v16[1];
  v22 = v21 + a2;
  if (__OFADD__(v21, a2))
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v16[1] = v22;
  v23 = 1;
  if ((a3 & 1) == 0)
  {
    v23 = -1;
  }

  if ((a4 & 1) == 0)
  {
    v23 = 0;
  }

  v24 = qword_1EDEBBC58;
  v25 = *(v5 + qword_1EDEBBC58);
  v18 = __OFADD__(v25, v23);
  v26 = v25 + v23;
  if (v18)
  {
    goto LABEL_39;
  }

  v27 = v13;
  *(v5 + qword_1EDEBBC58) = v26;
  result = sub_1CF5A7760(v19, v22, a1 & 1);
  if (*v16 < 1 || v16[1] <= 0)
  {
    *v16 = 0;
    v16[1] = 0;
LABEL_27:
    *(v5 + v24) = 0;
    return result;
  }

  if ((*(v5 + v24) & 0x8000000000000000) != 0)
  {
    if (*(v5 + 89) != 1)
    {
      v29 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v30 = sub_1CF9E6108();
      v31 = sub_1CF9E72A8();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_1CEFC7000, v30, v31, "🤯 [GlobalProgress] pausableDownloadsCounter counter is negative", v32, 2u);
        MEMORY[0x1D386CDC0](v32, -1, -1);
      }

      result = (*(v11 + 8))(v15, v27);
      goto LABEL_27;
    }

    goto LABEL_42;
  }

  return result;
}

uint64_t sub_1CF5A30E0(_BYTE *a1, int a2, uint64_t a3, uint64_t (*a4)(char *, uint64_t), uint64_t a5)
{
  v72 = a4;
  v73 = a5;
  v71 = a3;
  v61 = a2;
  v8 = *v5;
  v9 = *v5;
  v10 = sub_1CF9E6118();
  v63 = *(v10 - 8);
  v64 = v10;
  v11 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v65 = v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (v9 + 624);
  v14 = (v9 + 640);
  v15 = *(v8 + 616);
  v16 = *(v8 + 632);
  v17 = type metadata accessor for SnapshotItem();
  v66 = *(v17 - 8);
  v18 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v62 = v60 - v19;
  v20 = sub_1CF9E75D8();
  v21 = *(v20 - 8);
  v67 = v20;
  v68 = v21;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = v60 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v76 = v60 - v26;
  v60[1] = v15;
  *&v27 = v15;
  *(&v27 + 1) = *v13;
  *&v28 = v16;
  *(&v28 + 1) = *v14;
  v69 = v28;
  v70 = v27;
  v75 = v28;
  v74 = v27;
  type metadata accessor for Propagation.CreateItem();
  result = swift_dynamicCastClass();
  if (result)
  {
    if (*(result + 138))
    {
      return result;
    }

LABEL_6:
    *&v70 = v5;
    v30 = *(*a1 + 576);
    v31 = v76;
    result = (*(*v5[4] + 240))(&a1[v30], 1, v71, v72, v73);
    if (v6)
    {
      return result;
    }

    v73 = v30;
    v32 = v68;
    v33 = v31;
    v34 = v67;
    (*(v68 + 16))(v24, v33, v67);
    v35 = v66;
    if ((*(v66 + 48))(v24, 1, v17) == 1)
    {
      v17 = *(v32 + 8);
      (v17)(v24, v34);
      v36 = fpfs_current_or_default_log();
      v37 = v65;
      sub_1CF9E6128();

      v38 = v32 + 8;
      v39 = sub_1CF9E6108();
      v40 = sub_1CF9E72A8();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v68 = v38;
        v42 = v41;
        v43 = swift_slowAlloc();
        v72 = v17;
        v44 = v43;
        *&v74 = v43;
        *v42 = 136446210;
        swift_getAssociatedTypeWitness();
        v45 = *(swift_getAssociatedConformanceWitness() + 16);
        v46 = sub_1CF9E7F98();
        v48 = v47;

        v49 = sub_1CEFD0DF0(v46, v48, &v74);

        *(v42 + 4) = v49;
        _os_log_impl(&dword_1CEFC7000, v39, v40, "[GlobalProgress] accountUploadJob, snapshot missing for itemID %{public}s", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v44);
        MEMORY[0x1D386CDC0](v44, -1, -1);
        MEMORY[0x1D386CDC0](v42, -1, -1);

        (*(v63 + 8))(v65, v64);
        return v72(v76, v67);
      }

      goto LABEL_18;
    }

    v50 = v62;
    (*(v35 + 32))(v62, v24, v17);
    v39 = &v50[*(v17 + 48)];
    isa_low = LOBYTE(v39->isa);
    result = type metadata accessor for ItemMetadata();
    if (isa_low == 1)
    {
      goto LABEL_22;
    }

    v52 = *(&v39->isa + *(result + 104));
    v37 = v70;
    v53 = v61;
    if ((v61 & 1) != 0 || a1[112] == 3)
    {
LABEL_21:
      sub_1CF5A2DA4(0, v52, v53 & 1, 1);
LABEL_22:
      (*(v35 + 8))(v50, v17);
      return (*(v68 + 8))(v76, v34);
    }

    v54 = (v70 + qword_1EDEBBCA0);
    v55 = *(v70 + qword_1EDEBBCA0);
    v56 = __OFADD__(v55, 1);
    v57 = v55 + 1;
    if (v56)
    {
      __break(1u);
    }

    else
    {
      *v54 = v57;
      v58 = v54[1];
      if (v52)
      {
        v56 = __OFADD__(v58, v52);
        v59 = v58 + v52;
        if (v56)
        {
          __break(1u);
LABEL_18:

          (*(v63 + 8))(v37, v64);
          return (v17)(v76, v34);
        }

        goto LABEL_20;
      }

      v56 = __OFADD__(v58, 1);
      v59 = v58 + 1;
      if (!v56)
      {
LABEL_20:
        v54[1] = v59;
        goto LABEL_21;
      }
    }

    __break(1u);
    return result;
  }

  v74 = v70;
  v75 = v69;
  type metadata accessor for Propagation.UpdateItem();
  result = swift_dynamicCastClass();
  if (result && (*(result + *(*result + 648)) & 8) != 0)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_1CF5A3744(uint64_t *a1, int a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v251 = a3;
  v252 = a4;
  v253 = a5;
  v213 = a2;
  v255 = a1;
  v6 = *v5;
  v7 = *(*v5 + 616);
  v8 = *(*v5 + 632);
  v9 = type metadata accessor for SnapshotItem();
  v219 = *(v9 - 8);
  v10 = *(v219 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v210 = &v199 - v11;
  v218 = v12;
  v220 = sub_1CF9E75D8();
  v222 = *(v220 - 8);
  v13 = *(v222 + 64);
  MEMORY[0x1EEE9AC00](v220);
  v216 = &v199 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v225 = &v199 - v16;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v231 = sub_1CF9E75D8();
  v230 = *(v231 - 8);
  v18 = *(v230 + 64);
  MEMORY[0x1EEE9AC00](v231);
  v229 = &v199 - v19;
  v238 = AssociatedTypeWitness;
  v233 = *(AssociatedTypeWitness - 8);
  v20 = *(v233 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v205 = &v199 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v209 = &v199 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v224 = &v199 - v26;
  v27 = sub_1CF9E6118();
  v28 = *(v27 - 8);
  v242 = v27;
  v243 = v28;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v248 = &v199 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v227 = &v199 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v217 = &v199 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v221 = &v199 - v36;
  v212 = type metadata accessor for ItemMetadata();
  v37 = *(*(v212 - 8) + 64);
  MEMORY[0x1EEE9AC00](v212);
  v211 = &v199 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *(v6 + 624);
  v40 = *(v6 + 640);
  v41 = type metadata accessor for SnapshotItem();
  v246 = *(v41 - 8);
  v42 = *(v246 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v215 = &v199 - v43;
  v247 = v44;
  v223 = sub_1CF9E75D8();
  v226 = *(v223 - 8);
  v45 = *(v226 + 64);
  MEMORY[0x1EEE9AC00](v223);
  v228 = &v199 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v232 = &v199 - v48;
  v49 = swift_getAssociatedTypeWitness();
  v236 = sub_1CF9E75D8();
  v245 = *(v236 - 8);
  v50 = *(v245 + 64);
  MEMORY[0x1EEE9AC00](v236);
  v235 = &v199 - v51;
  v237 = v49;
  v241 = *(v49 - 8);
  v52 = *(v241 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v206 = &v199 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v55);
  v214 = &v199 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v234 = &v199 - v58;
  v240 = v7;
  *&v59 = v7;
  v207 = v39;
  *(&v59 + 1) = v39;
  v239 = v8;
  *&v60 = v8;
  v208 = v40;
  *(&v60 + 1) = v40;
  v254[1] = v60;
  v254[0] = v59;
  v61 = type metadata accessor for ItemReconciliation();
  v62 = sub_1CF9E75D8();
  v244 = *(v62 - 8);
  v63 = *(v244 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v65 = &v199 - v64;
  v249 = *(v61 - 8);
  v66 = *(v249 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v69 = &v199 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v70);
  v72 = &v199 - v71;
  MEMORY[0x1EEE9AC00](v73);
  v75 = &v199 - v74;
  v76 = v5;
  v77 = v5[2];
  v78 = *(*v255 + 576);
  v79 = v250;
  result = sub_1CF68DDB0(v255 + v78, v251, v252, v253, v65);
  if (v79)
  {
    return result;
  }

  v81 = v244;
  v203 = v62;
  v201 = v78;
  v82 = v245;
  v200 = v72;
  v199 = v69;
  v84 = v246;
  v83 = v247;
  v85 = v248;
  v202 = v76;
  v204 = v75;
  v250 = 0;
  if ((*(v249 + 48))(v65, 1, v61) == 1)
  {
    (*(v81 + 8))(v65, v203);
    v86 = fpfs_current_or_default_log();
    v87 = v85;
    sub_1CF9E6128();

    v88 = sub_1CF9E6108();
    v89 = sub_1CF9E72A8();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      *&v254[0] = v91;
      *v90 = 136315138;
      v92 = *(swift_getAssociatedConformanceWitness() + 16);
      v93 = sub_1CF9E7F98();
      v95 = v94;

      v96 = sub_1CEFD0DF0(v93, v95, v254);

      *(v90 + 4) = v96;
      _os_log_impl(&dword_1CEFC7000, v88, v89, "item missing from RT, cannot account for download job: %s", v90, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v91);
      MEMORY[0x1D386CDC0](v91, -1, -1);
      MEMORY[0x1D386CDC0](v90, -1, -1);
    }

    else
    {
    }

    return (*(v243 + 8))(v87, v242);
  }

  v97 = v61;
  v98 = v204;
  (*(v249 + 32))(v204, v65, v97);
  v99 = v235;
  v100 = v236;
  (*(v82 + 16))(v235, &v98[*(v97 + 13)], v236);
  v101 = v241;
  v102 = v237;
  if ((*(v241 + 48))(v99, 1, v237) == 1)
  {
    (*(v82 + 8))(v99, v100);
    v103 = v230;
    v104 = v229;
    v105 = v231;
    (*(v230 + 16))(v229, v98, v231);
    v106 = v233;
    v107 = v238;
    v108 = (*(v233 + 48))(v104, 1, v238);
    v109 = v253;
    if (v108 == 1)
    {
      (*(v103 + 8))(v104, v105);
      v110 = fpfs_current_or_default_log();
      v111 = v227;
      sub_1CF9E6128();
      v112 = v249;
      v113 = *(v249 + 16);
      v114 = v200;
      v113(v200, v98, v97);
      v115 = v97;
      v116 = sub_1CF9E6108();
      v117 = sub_1CF9E72A8();
      v118 = os_log_type_enabled(v116, v117);
      v119 = v243;
      if (v118)
      {
        v120 = v112;
        v121 = swift_slowAlloc();
        v255 = swift_slowAlloc();
        *&v254[0] = v255;
        *v121 = 136315138;
        LODWORD(v253) = v117;
        v122 = v199;
        v113(v199, v114, v115);
        v123 = *(v120 + 8);
        v123(v114, v115);
        v124 = sub_1CF082CB0(v115);
        v126 = v125;
        v123(v122, v115);
        v127 = sub_1CEFD0DF0(v124, v126, v254);

        *(v121 + 4) = v127;
        _os_log_impl(&dword_1CEFC7000, v116, v253, "RT entry missing both sides, cannot account download job: %s", v121, 0xCu);
        v128 = v255;
        __swift_destroy_boxed_opaque_existential_1(v255);
        MEMORY[0x1D386CDC0](v128, -1, -1);
        MEMORY[0x1D386CDC0](v121, -1, -1);

        (*(v119 + 8))(v227, v242);
        return (v123)(v204, v115);
      }

      else
      {
        v160 = *(v112 + 8);
        v160(v114, v115);

        (*(v119 + 8))(v111, v242);
        return (v160)(v204, v115);
      }
    }

    v248 = v97;
    v134 = v224;
    (*(v106 + 32))(v224, v104, v107);
    v135 = v225;
    v136 = v250;
    (*(*v202[4] + 240))(v134, 1, v251, v252, v109);
    v250 = v136;
    v133 = v249;
    if (v136)
    {
      (*(v106 + 8))(v134, v107);
      return (*(v133 + 8))(v98, v248);
    }

    v161 = v222;
    v162 = v216;
    v163 = v220;
    (*(v222 + 16))(v216, v135, v220);
    v164 = v218;
    v165 = (*(v219 + 48))(v162, 1, v218);
    v168 = *(v161 + 8);
    v167 = v161 + 8;
    v166 = v168;
    if (v165 == 1)
    {
      v255 = v166;
      (v166)(v162, v163);
      v169 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v170 = v134;
      v171 = v233;
      v172 = v209;
      v253 = *(v233 + 16);
      (v253)(v209, v170, v107);
      v222 = v167;
      v173 = sub_1CF9E6108();
      v174 = sub_1CF9E72A8();
      if (os_log_type_enabled(v173, v174))
      {
        v175 = swift_slowAlloc();
        v176 = swift_slowAlloc();
        *&v254[0] = v176;
        *v175 = 136315138;
        LODWORD(v252) = v174;
        v177 = v205;
        (v253)(v205, v172, v107);
        v178 = *(v171 + 8);
        v178(v172, v107);
        v179 = *(swift_getAssociatedConformanceWitness() + 16);
        v180 = sub_1CF9E7F98();
        v182 = v181;
        v178(v177, v107);
        v183 = sub_1CEFD0DF0(v180, v182, v254);

        *(v175 + 4) = v183;
        _os_log_impl(&dword_1CEFC7000, v173, v252, "item missing from FS snapshot, cannot account for download job: %s", v175, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v176);
        MEMORY[0x1D386CDC0](v176, -1, -1);
        MEMORY[0x1D386CDC0](v175, -1, -1);

        (*(v243 + 8))(v217, v242);
        (v255)(v225, v220);
        v178(v224, v107);
        return (*(v249 + 8))(v204, v248);
      }

      v192 = *(v171 + 8);
      v192(v172, v107);

      (*(v243 + 8))(v217, v242);
      (v255)(v225, v220);
      v192(v224, v107);
      return (*(v133 + 8))(v98, v248);
    }

    (v166)(v135, v163);
    (*(v233 + 8))(v134, v107);
    v187 = v219;
    v188 = v210;
    (*(v219 + 32))(v210, v162, v164);
    v189 = *(v164 + 48);
    v190 = v187;
    if (v188[v189] == 1)
    {
      (*(v187 + 8))(v188, v164);
      return (*(v133 + 8))(v98, v248);
    }

    v191 = v211;
    sub_1CF043498(&v188[v189], v211, type metadata accessor for ItemMetadata);
    (*(v190 + 8))(v188, v164);
LABEL_33:
    v193 = *(v191 + *(v212 + 104));
    result = sub_1CF043504(v191, type metadata accessor for ItemMetadata);
    v194 = v255;
    v195 = v213;
    if ((v213 & 1) != 0 || *(v255 + 112) == 3)
    {
      goto LABEL_42;
    }

    v196 = (v202 + qword_1EDEBBC80);
    if (__OFADD__(*(v202 + qword_1EDEBBC80), 1))
    {
      __break(1u);
    }

    else
    {
      ++*v196;
      v197 = v196[1];
      if (v193)
      {
        v198 = __OFADD__(v197, v193);
        v197 += v193;
        if (!v198)
        {
          goto LABEL_41;
        }

        __break(1u);
      }

      v198 = __OFADD__(v197++, 1);
      if (!v198)
      {
LABEL_41:
        v196[1] = v197;
LABEL_42:
        sub_1CF5A2DA4(1, v193, v195 & 1, (v194[17] & 0x4000000000) != 0);
        return (*(v133 + 8))(v98, v248);
      }
    }

    __break(1u);
    return result;
  }

  v129 = v228;
  v248 = v97;
  v130 = v234;
  (*(v101 + 32))(v234, v99, v102);
  v131 = v232;
  v132 = v250;
  (*(*v202[5] + 240))(v130, 1, v251, v252, v253);
  v250 = v132;
  if (v132)
  {
    (*(v101 + 8))(v130, v102);
    v133 = v249;
    return (*(v133 + 8))(v98, v248);
  }

  v137 = v226;
  v138 = v223;
  (*(v226 + 16))(v129, v131, v223);
  v139 = (*(v84 + 48))(v129, 1, v83);
  v142 = *(v137 + 8);
  v141 = v137 + 8;
  v140 = v142;
  if (v139 != 1)
  {
    (v140)(v131, v138);
    (*(v241 + 8))(v234, v102);
    v184 = v215;
    (*(v84 + 32))(v215, v129, v83);
    v185 = *(v83 + 48);
    if (v184[v185] == 1)
    {
      (*(v84 + 8))(v184, v83);
      return (*(v249 + 8))(v98, v248);
    }

    v191 = v211;
    sub_1CF043498(&v184[v185], v211, type metadata accessor for ItemMetadata);
    (*(v84 + 8))(v184, v83);
    v133 = v249;
    goto LABEL_33;
  }

  v255 = v140;
  (v140)(v129, v138);
  v143 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v144 = v241;
  v145 = *(v241 + 16);
  v146 = v214;
  v145(v214, v234, v102);
  v226 = v141;
  v147 = sub_1CF9E6108();
  v148 = v102;
  v149 = sub_1CF9E72A8();
  if (os_log_type_enabled(v147, v149))
  {
    v150 = swift_slowAlloc();
    v253 = swift_slowAlloc();
    *&v254[0] = v253;
    *v150 = 136315138;
    v151 = v146;
    v152 = v206;
    v145(v206, v151, v148);
    v153 = *(v144 + 8);
    v153(v151, v148);
    v154 = *(swift_getAssociatedConformanceWitness() + 16);
    v155 = sub_1CF9E7F98();
    v157 = v156;
    v153(v152, v148);
    v158 = sub_1CEFD0DF0(v155, v157, v254);

    *(v150 + 4) = v158;
    _os_log_impl(&dword_1CEFC7000, v147, v149, "item missing from FP snapshot, cannot account for download job: %s", v150, 0xCu);
    v159 = v253;
    __swift_destroy_boxed_opaque_existential_1(v253);
    MEMORY[0x1D386CDC0](v159, -1, -1);
    MEMORY[0x1D386CDC0](v150, -1, -1);

    (*(v243 + 8))(v221, v242);
    (v255)(v232, v223);
    v153(v234, v148);
  }

  else
  {
    v186 = *(v144 + 8);
    v186(v146, v148);

    (*(v243 + 8))(v221, v242);
    (v255)(v232, v138);
    v186(v234, v148);
  }

  return (*(v249 + 8))(v204, v248);
}

uint64_t sub_1CF5A4F64()
{
  v1 = *v0;
  v2 = sub_1CF9E64A8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = (&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = v0[8];
  *v7 = v8;
  (*(v3 + 104))(v7, *MEMORY[0x1E69E8020], v2, v5);
  v9 = v8;
  LOBYTE(v8) = sub_1CF9E64D8();
  result = (*(v3 + 8))(v7, v2);
  if (v8)
  {
    v11 = qword_1EC4EBD78;
    swift_beginAccess();
    v12 = *(v0 + v11);

    v16 = *(v1 + 616);
    v15 = *(v1 + 632);
    swift_getAssociatedTypeWitness();
    v17 = v15;
    *&v16 = type metadata accessor for UserRequest();
    *(&v16 + 1) = &type metadata for NSecTimestamp;
    *&v17 = sub_1CF9E6448();
    *(&v17 + 1) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0718, &qword_1CFA05B28);
    swift_getTupleTypeMetadata();
    sub_1CF9E6E58();
    v13 = *(swift_getAssociatedConformanceWitness() + 40);
    sub_1CF9E6728();

    v14 = v16;
    if (v16)
    {
    }

    return v14 != 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF5A51D8()
{
  v1 = *v0;
  v2 = sub_1CF9E64A8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = v0[8];
  *v7 = v8;
  (*(v3 + 104))(v7, *MEMORY[0x1E69E8020], v2, v5);
  v9 = v8;
  LOBYTE(v8) = sub_1CF9E64D8();
  result = (*(v3 + 8))(v7, v2);
  if (v8)
  {
    v11 = qword_1EC4EBD70;
    swift_beginAccess();
    v12 = *(v0 + v11);
    v13 = v1[80];
    v14 = v1[78];
    swift_getAssociatedTypeWitness();

    v15 = v1[77];
    v16 = v1[79];
    v20 = v14;
    v21 = v15;
    v22 = v13;
    v23 = v16;
    v20 = type metadata accessor for UserRequest();
    v21 = &type metadata for NSecTimestamp;
    v22 = sub_1CF9E6448();
    v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0718, &qword_1CFA05B28);
    swift_getTupleTypeMetadata();
    sub_1CF9E6E58();
    v17 = *(swift_getAssociatedConformanceWitness() + 40);
    sub_1CF9E6728();

    v18 = v20;
    if (v20)
    {
    }

    return v18 != 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1CF5A5468(void *result, void *a2, void **a3)
{
  if ((*(v3 + *result) & 1) == 0)
  {
    *(v3 + *result) = 1;
    if (*a2 != -1)
    {
      v5 = a3;
      swift_once();
      a3 = v5;
    }

    v4 = *a3;

    return [v4 addWatcher_];
  }

  return result;
}

id sub_1CF5A54E8()
{
  v1 = qword_1EDEBBC48;
  if (*(v0 + qword_1EDEBBC48) == 1)
  {
    if (qword_1EDEA5A98 != -1)
    {
      swift_once();
    }

    result = [qword_1EDEBB818 removeWatcher_];
    *(v0 + v1) = 0;
  }

  return result;
}

uint64_t sub_1CF5A5570(char a1)
{
  v3 = objc_sync_enter(v1);
  if (v3)
  {
    MEMORY[0x1EEE9AC00](v3);
    v6 = v1;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v5, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v1[90] = a1 & 1;
  sub_1CF5B7558();
  result = objc_sync_exit(v1);
  if (result)
  {
    MEMORY[0x1EEE9AC00](result);
    v6 = v1;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v5, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  return result;
}

void sub_1CF5A5720(void *a1)
{
  v3 = *(v1 + qword_1EDEBBC38);
  v4 = fpfs_adopt_log();
  v5 = [a1 label];
  v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v8 = v7;
  if (qword_1EDEADB60 != -1)
  {
    swift_once();
  }

  v9 = [qword_1EDEBBD10 label];
  v10 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v12 = v11;

  if (v10 == v6 && v12 == v8)
  {

    goto LABEL_10;
  }

  v14 = sub_1CF9E8048();

  if (v14)
  {

LABEL_10:
    v15 = *(*v1 + 2616);

    v15(0, sub_1CF5DFD94, v1);
LABEL_17:

    goto LABEL_18;
  }

  v16 = sub_1CF5A0F38();
  v17 = [v16 label];

  v18 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v20 = v19;

  if (v18 == v6 && v20 == v8)
  {

LABEL_16:

    sub_1CF92DE44("sharedSchedulerCanRun(_:)", 25, 2u, sub_1CF045408, 0, nullsub_1, 0, sub_1CF5DFD78, v1);
    goto LABEL_17;
  }

  v21 = sub_1CF9E8048();

  if (v21)
  {

    goto LABEL_16;
  }

  if (qword_1EDEACC50 != -1)
  {
    swift_once();
  }

  v22 = [qword_1EDEBBB28 label];
  v23 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v25 = v24;

  if (v23 == v6 && v25 == v8)
  {

LABEL_28:

    sub_1CF92DE44("sharedSchedulerCanRun(_:)", 25, 2u, sub_1CF045408, 0, nullsub_1, 0, sub_1CF5DFD5C, v1);
    goto LABEL_17;
  }

  v26 = sub_1CF9E8048();

  if (v26)
  {

    goto LABEL_28;
  }

  if (qword_1EDEAC220 != -1)
  {
    swift_once();
  }

  v27 = [qword_1EDEBBA80 label];
  v28 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v30 = v29;

  if (v28 == v6 && v30 == v8)
  {

LABEL_36:

    sub_1CF92DE44("sharedSchedulerCanRun(_:)", 25, 2u, sub_1CF045408, 0, nullsub_1, 0, sub_1CF5DFD40, v1);
    goto LABEL_17;
  }

  v31 = sub_1CF9E8048();

  if (v31)
  {

    goto LABEL_36;
  }

  if (qword_1EDEACD48 != -1)
  {
    swift_once();
  }

  v32 = [qword_1EDEBBBF8 label];
  v33 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v35 = v34;

  if (v33 == v6 && v35 == v8)
  {
  }

  else
  {
    v36 = sub_1CF9E8048();

    if ((v36 & 1) == 0)
    {
      if (qword_1EDEA5A98 != -1)
      {
        swift_once();
      }

      v37 = [qword_1EDEBB818 label];
      v38 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v40 = v39;

      if (v38 == v6 && v40 == v8)
      {
      }

      else
      {
        v41 = sub_1CF9E8048();

        if ((v41 & 1) == 0)
        {
          sub_1CF515660("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/sync-logic/ConcreteDatabase.swift", 106, 2, 1052, a1);
        }
      }

      sub_1CF92DE44("sharedSchedulerCanRun(_:)", 25, 2u, sub_1CF045408, 0, nullsub_1, 0, sub_1CF5DFD24, v1);
      goto LABEL_17;
    }
  }

  sub_1CF5A7698(0);
LABEL_18:
  v42 = fpfs_adopt_log();
}

uint64_t sub_1CF5A5DDC(char a1)
{
  v3 = objc_sync_enter(v1);
  if (v3)
  {
    MEMORY[0x1EEE9AC00](v3);
    v6 = v1;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v5, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  *(v1 + qword_1EDEADAA8) = a1 & 1;
  result = objc_sync_exit(v1);
  if (result)
  {
    MEMORY[0x1EEE9AC00](result);
    v6 = v1;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v5, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  return result;
}

id sub_1CF5A5ED0()
{
  if (qword_1EDEACC50 != -1)
  {
    swift_once();
  }

  result = [qword_1EDEBBB28 removeWatcher_];
  *(v0 + qword_1EDEBBCE0) = 0;
  return result;
}

void sub_1CF5A5F38()
{
  if ((*(v0 + qword_1EDEBBCE0) & 1) == 0)
  {
    v2 = (*(**(v0 + 24) + 584))();
    if (!v1 && (v2 & 1) != 0)
    {
      sub_1CF5A1C50();
    }
  }
}

void sub_1CF5A5FB0()
{
  if (*(v0 + qword_1EDEBBCE0) == 1 && !*(v0 + qword_1EDEADA98))
  {
    v2 = (*(**(v0 + 24) + 584))();
    if (!v1 && (v2 & 1) == 0)
    {
      sub_1CF5A5ED0();
    }
  }
}

id sub_1CF5A6054(const char **a1)
{
  if (qword_1EDEACD48 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v2 = *a1;
  v3 = qword_1EDEBBBF8;

  return [v3 v2];
}

void sub_1CF5A60D0(_BOOL4 a1, _BOOL4 a2, char a3)
{
  v5 = a2;
  v6 = *&v3->_os_unfair_lock_opaque;
  if (a1 == 2)
  {
    v7 = *&v3[50]._os_unfair_lock_opaque == 0;
  }

  else
  {
    v7 = a1;
  }

  if (a2 == 2)
  {
    os_unfair_lock_lock(v3 + 52);
    v5 = *&v3[54]._os_unfair_lock_opaque == 0;
    os_unfair_lock_unlock(v3 + 52);
  }

  if (a3 == 2)
  {
    v8 = v3 + qword_1EDEBBC20;
    os_unfair_lock_lock((v3 + qword_1EDEBBC20));
    v9 = *(v6 + 616);
    v10 = *(v6 + 632);
    v11 = *(v8 + 96);
    swift_getAssociatedTypeWitness();
    v12 = *(swift_getAssociatedConformanceWitness() + 40);
    sub_1CF9E7068();
    sub_1CF9E6708();
    os_unfair_lock_unlock(v8);
    if (v11)
    {
      return;
    }

    v13 = v3 + qword_1EDEBBC28;
    os_unfair_lock_lock((v3 + qword_1EDEBBC28));
    a3 = *(v13 + 96) == 0;
    os_unfair_lock_unlock(v13);
  }

  if (v7 && v5 && (a3 & 1) != 0)
  {
    v14 = *(*&v3->_os_unfair_lock_opaque + 2512);

    v14();
  }
}

uint64_t sub_1CF5A632C(uint64_t a1)
{
  v25 = a1;
  v2 = *v1;
  v3 = *(*v1 + 640);
  v26 = *(*v1 + 624);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBA8, &qword_1CFA12B20);
  v10 = *(*(v9 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v23 - v12;
  v14 = *(v1 + qword_1EDEBBC98);
  if (v14)
  {
    v15 = *(v1 + qword_1EDEBBC98);

    v16 = sub_1CF9E57E8();
    v24 = v16;
    type metadata accessor for FPCK(0);
    v17 = sub_1CF6C4380(v16, 6, 89, 0, 0);
    v18 = sub_1CF9E6F08();
    (*(*(v18 - 8) + 56))(v13, 1, 1, v18);
    (*(v5 + 16))(v8, v25, AssociatedTypeWitness);
    v19 = v3;
    v20 = (*(v5 + 80) + 80) & ~*(v5 + 80);
    v21 = swift_allocObject();
    *(v21 + 2) = 0;
    *(v21 + 3) = 0;
    v22 = v26;
    *(v21 + 4) = *(v2 + 616);
    *(v21 + 5) = v22;
    *(v21 + 6) = *(v2 + 632);
    *(v21 + 7) = v19;
    *(v21 + 8) = v14;
    *(v21 + 9) = v17;
    (*(v5 + 32))(&v21[v20], v8, AssociatedTypeWitness);
    sub_1CF81241C(0, 0, v13, &unk_1CFA0CD68, v21);
  }

  return result;
}

uint64_t sub_1CF5A65F4(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  *&v95 = a5;
  *&v94 = a4;
  *&v92 = a3;
  v86 = a2;
  v104 = a1;
  v8 = *(*v5 + 624);
  v9 = *(*v5 + 632);
  v10 = *(*v5 + 640);
  *&v125 = *(*v5 + 616);
  v7 = v125;
  *(&v125 + 1) = v8;
  *&v126 = v9;
  *(&v126 + 1) = v10;
  v11 = type metadata accessor for ConcreteDatabase.MaterializationRequest();
  v102 = *(v11 - 8);
  v12 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v101 = &v81 - v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = sub_1CF9E75D8();
  v88 = *(v15 - 8);
  v89 = v15;
  v16 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v15);
  *&v91 = &v81 - v17;
  v18 = swift_getAssociatedTypeWitness();
  v97 = *(v18 - 8);
  v19 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v96 = &v81 - v20;
  *&v106 = *(AssociatedTypeWitness - 8);
  v21 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v82 = &v81 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v90 = &v81 - v25;
  v83 = v9;
  v85 = v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v87 = v10;
  v84 = v8;
  v27 = swift_getAssociatedConformanceWitness();
  *&v125 = AssociatedTypeWitness;
  *(&v125 + 1) = v18;
  *&v105 = v18;
  *&v126 = AssociatedConformanceWitness;
  *(&v126 + 1) = v27;
  v28 = type metadata accessor for ReconciliationID();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v81 - v31;
  v33 = sub_1CF9E75D8();
  v99 = *(v33 - 8);
  v100 = v33;
  v34 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v93 = &v81 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v98 = &v81 - v37;
  v38 = qword_1EDEBBC70;
  swift_beginAccess();
  v39 = *(v6 + v38);
  v40 = *(AssociatedConformanceWitness + 40);

  v103 = v11;
  LOBYTE(v11) = MEMORY[0x1D3868960](v41, AssociatedTypeWitness, v11, v40);

  v42 = 0;
  if ((v11 & 1) == 0)
  {
    (*(v29 + 16))(v32, v104, v28);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v43 = v96;
      (*(v97 + 32))(v96, v32, v105);
      v44 = v91;
      (*(**(v6 + 16) + 152))(v43, v92, v94, v95);
      v45 = v106;
      v58 = (*(v106 + 48))(v44, 1, AssociatedTypeWitness);
      if (v58 == 1)
      {
        (*(v97 + 8))(v96, v105);
        (*(v88 + 8))(v44, v89);
        return 0;
      }

      v75 = v82;
      (*(v45 + 32))(v82, v44, AssociatedTypeWitness);
      v76 = *(v6 + v38);

      v49 = v98;
      v50 = v103;
      sub_1CF9E6728();

      (*(v45 + 8))(v75, AssociatedTypeWitness);
      (*(v97 + 8))(v96, v105);
    }

    else
    {
      v46 = v106;
      v47 = v90;
      (*(v106 + 32))(v90, v32, AssociatedTypeWitness);
      v48 = *(v6 + v38);

      v49 = v98;
      v50 = v103;
      sub_1CF9E6728();

      (*(v46 + 8))(v47, AssociatedTypeWitness);
    }

    v52 = v99;
    v51 = v100;
    v53 = v93;
    (*(v99 + 16))(v93, v49, v100);
    v54 = v102;
    v55 = (*(v102 + 48))(v53, 1, v50);
    v56 = v101;
    if (v55 == 1)
    {
      v57 = *(v52 + 8);
      v57(v49, v51);
      v57(v53, v51);
      return 0;
    }

    (*(v54 + 32))(v101, v53, v50);
    if (*v56)
    {
      (*(v52 + 8))(v49, v51);
      (*(v54 + 8))(v56, v50);
      return 0;
    }

    v93 = 0;
    *&v120 = *&v56[*(v50 + 56)];
    v61 = v84;
    v60 = v85;
    *&v125 = v85;
    *(&v125 + 1) = v84;
    v62 = v83;
    *&v126 = v83;
    *(&v126 + 1) = v87;
    *&v125 = type metadata accessor for UserRequest();
    *(&v125 + 1) = &type metadata for MaterializationRequestOptions;
    *&v126 = sub_1CEFD57E0(255, &unk_1EDEAB630, 0x1E696AE38);
    *(&v126 + 1) = sub_1CF9E6448();
    *&v127 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0720, &qword_1CFA05B30);
    swift_getTupleTypeMetadata();
    v63 = sub_1CF9E6708();
    WitnessTable = swift_getWitnessTable();
    MEMORY[0x1D3868E50](&v125, v63, WitnessTable);
    v124 = v125;
    v65 = swift_allocObject();
    v65[2] = v60;
    v65[3] = v61;
    v65[4] = v94;
    v65[5] = v62;
    v66 = v95;
    v65[6] = v87;
    v65[7] = v66;
    sub_1CF9E7978();
    sub_1CEFD57E0(0, &qword_1EDEA3730, off_1E83BC670);
    swift_getWitnessTable();
    sub_1CF9E7C28();

    v120 = v115;
    v121 = v116;
    v122 = v117;
    v123 = v118;
    v67 = swift_allocObject();
    v68 = v86;
    *(v67 + 16) = v86 & 1;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C1BF0, &qword_1CFA0CD58);
    *&v106 = v63;
    sub_1CF9E7AC8();
    swift_getWitnessTable();
    v69 = sub_1CF9E7B98();
    swift_getWitnessTable();
    *&v105 = v69;
    sub_1CF9E7AC8();
    swift_getWitnessTable();
    sub_1CF9E7C48();

    v70 = v125;
    v71 = v126;
    v72 = v127;
    v73 = v128;
    v74 = v129;
    if (v68)
    {
      swift_getWitnessTable();
      sub_1CF9E7B98();
      v104 = v70;
      v110 = swift_getWitnessTable();
      v109 = swift_getWitnessTable();
      v108 = swift_getWitnessTable();
      v107 = swift_getWitnessTable();
      swift_getWitnessTable();
      sub_1CF9E7118();
      (*(v99 + 8))(v98, v100);
      (*(v102 + 8))(v101, v103);
      v42 = v115;
    }

    else
    {
      v115 = v125;
      v87 = *(&v125 + 1);
      v88 = *(&v126 + 1);
      v116 = v126;
      v117 = v127;
      v89 = *(&v127 + 1);
      v90 = *(&v128 + 1);
      v118 = v128;
      v119 = v129;

      v104 = v71;

      v97 = v72;

      v96 = v73;

      v77 = v74;

      swift_getWitnessTable();
      sub_1CF9E7B98();
      sub_1CF9E7B88();
      v94 = v126;
      v95 = v125;
      v115 = v125;
      v116 = v126;
      v91 = v128;
      v92 = v127;
      v117 = v127;
      v118 = v128;
      v119 = v129;
      v114 = swift_getWitnessTable();
      v113 = swift_getWitnessTable();
      v112 = swift_getWitnessTable();
      v111 = swift_getWitnessTable();
      swift_getWitnessTable();
      sub_1CF9E7118();
      v42 = v120;

      if (v42)
      {

        (*(v99 + 8))(v98, v100);
        (*(v102 + 8))(v101, v103);
      }

      else
      {
        *&v115 = v70;
        *(&v115 + 1) = v87;
        *&v116 = v104;
        *(&v116 + 1) = v88;
        *&v117 = v97;
        *(&v117 + 1) = v89;
        *&v118 = v96;
        *(&v118 + 1) = v90;
        v119 = v77;

        sub_1CF9E7B88();
        v105 = v126;
        v106 = v125;
        v115 = v125;
        v116 = v126;
        v94 = v128;
        v95 = v127;
        v117 = v127;
        v118 = v128;
        v119 = v129;
        sub_1CF9E7118();
        v42 = v120;
        v78 = v103;
        v80 = v98;
        v79 = v99;
        if (v120)
        {
          (*(v99 + 8))(v98, v100);

          (*(v102 + 8))(v101, v78);
        }

        else
        {

          *&v125 = v70;
          *(&v125 + 1) = v87;
          *&v126 = v104;
          *(&v126 + 1) = v88;
          *&v127 = v97;
          *(&v127 + 1) = v89;
          *&v128 = v96;
          *(&v128 + 1) = v90;
          v129 = v77;
          swift_getWitnessTable();
          sub_1CF9E6BB8();
          (*(v79 + 8))(v80, v100);
          (*(v102 + 8))(v101, v78);

          return v115;
        }
      }
    }
  }

  return v42;
}

uint64_t sub_1CF5A7698(char a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = a1 & 1;
  *(v3 + 24) = v1;

  sub_1CF92DE44("updateSchedulingState(_:)", 25, 2u, sub_1CF045408, 0, nullsub_1, 0, sub_1CF5DFB50, v3);
}

uint64_t sub_1CF5A7760(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1CF9E6118();
  v46 = *(v8 - 8);
  v9 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v41 - v13;
  v15 = 0x64616F6C6E776F64;
  if ((a3 & 1) == 0)
  {
    v15 = 0x64616F6C7075;
  }

  v45 = v15;
  if (a3)
  {
    v16 = 0xE800000000000000;
  }

  else
  {
    v16 = 0xE600000000000000;
  }

  if (a1 <= 0)
  {
    if (!(a1 | a2))
    {
LABEL_8:
      if (a1 < 0)
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    }
  }

  else if (a2 > 0)
  {
    goto LABEL_8;
  }

  if (*(v4 + 89) == 1)
  {
    v47 = 0;
    v48 = 0xE000000000000000;
    sub_1CF9E7948();
    MEMORY[0x1D3868CC0](0x1000000000000016, 0x80000001CFA54640);
    MEMORY[0x1D3868CC0](v45, v16);
    MEMORY[0x1D3868CC0](0xD00000000000001ELL, 0x80000001CFA54690);
    v40 = sub_1CF7A5C88();
    MEMORY[0x1D3868CC0](v40);

    goto LABEL_24;
  }

  v17 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v18 = sub_1CF9E6108();
  v19 = sub_1CF9E72A8();

  v43 = v19;
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v44 = a2;
    v21 = v20;
    v41 = swift_slowAlloc();
    v47 = v41;
    *v21 = 136315394;
    *(v21 + 4) = sub_1CEFD0DF0(v45, v16, &v47);
    *(v21 + 12) = 2080;
    v22 = sub_1CF7A5C88();
    v42 = v4;
    v24 = sub_1CEFD0DF0(v22, v23, &v47);
    v4 = v42;

    *(v21 + 14) = v24;
    _os_log_impl(&dword_1CEFC7000, v18, v43, "🤯 [GlobalProgress] %s counter in unexpected state: %s", v21, 0x16u);
    v25 = v41;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v25, -1, -1);
    v26 = v21;
    a2 = v44;
    MEMORY[0x1D386CDC0](v26, -1, -1);
  }

  (*(v46 + 8))(v14, v8);
  if ((a1 & 0x8000000000000000) == 0)
  {
LABEL_15:
    if ((a2 & 0x8000000000000000) == 0)
    {
    }
  }

LABEL_17:
  if (*(v4 + 89) == 1)
  {
    v47 = 0;
    v48 = 0xE000000000000000;
    sub_1CF9E7948();
    MEMORY[0x1D3868CC0](0x1000000000000016, 0x80000001CFA54640);
    MEMORY[0x1D3868CC0](v45, v16);
    MEMORY[0x1D3868CC0](0xD000000000000029, 0x80000001CFA54660);
    v39 = sub_1CF7A5C88();
    MEMORY[0x1D3868CC0](v39);

LABEL_24:
    result = sub_1CF9E7B68();
    __break(1u);
    return result;
  }

  v28 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v29 = sub_1CF9E6108();
  v30 = sub_1CF9E72A8();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v44 = v11;
    v32 = v31;
    v33 = swift_slowAlloc();
    v47 = v33;
    *v32 = 136315394;
    v34 = v8;
    v35 = sub_1CEFD0DF0(v45, v16, &v47);

    *(v32 + 4) = v35;
    *(v32 + 12) = 2080;
    v36 = sub_1CF7A5C88();
    v38 = sub_1CEFD0DF0(v36, v37, &v47);

    *(v32 + 14) = v38;
    _os_log_impl(&dword_1CEFC7000, v29, v30, "🤯 [GlobalProgress] %s counter in unexpected negative counter: %s", v32, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v33, -1, -1);
    MEMORY[0x1D386CDC0](v32, -1, -1);

    return (*(v46 + 8))(v44, v34);
  }

  else
  {

    return (*(v46 + 8))(v11, v8);
  }
}

BOOL sub_1CF5A7CE8(uint64_t a1)
{
  v2 = *v1;
  if ((*(v1 + 82) & 8) != 0)
  {
    return 1;
  }

  v4 = v1[3];
  v10 = *(v2 + 616);
  v11 = *(v2 + 632);
  type metadata accessor for SQLJobRegistry();
  v5 = swift_dynamicCastClass();
  if (!v5)
  {
    return 1;
  }

  v6 = *(*(v5 + 32) + qword_1EDEBBB18);
  if (!v6)
  {
    return 1;
  }

  v7 = *(v6 + qword_1EDEBB7B0);
  return a1 > 0 && v7 >= a1;
}

uint64_t sub_1CF5A7DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v87 = a1;
  v83 = a4;
  v84 = a5;
  v82 = a3;
  v8 = *(*v5 + 624);
  v9 = *(*v5 + 632);
  v10 = *(*v5 + 640);
  v89 = *(*v5 + 616);
  v7 = v89;
  v90 = v8;
  v72 = v8;
  v91 = v9;
  v92 = v10;
  v71 = v10;
  v11 = type metadata accessor for ItemReconciliation();
  v12 = sub_1CF9E75D8();
  v75 = *(v12 - 8);
  v76 = v12;
  v13 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v81 = &v68 - v14;
  v77 = v11;
  v79 = *(v11 - 8);
  v15 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v78 = &v68 - v17;
  v73 = v9;
  v74 = v7;
  v18 = type metadata accessor for SnapshotItem();
  v19 = sub_1CF9E75D8();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v86 = &v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v68 - v24;
  v26 = *(v18 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v85 = &v68 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v30);
  v93 = &v68 - v32;
  v33 = *(v20 + 16);
  v35 = v34;
  v33(v25, a2, v31);
  v36 = *(v26 + 48);
  if (v36(v25, 1, v18) == 1)
  {
    return (*(v20 + 8))(v25, v35);
  }

  v70 = v20;
  v69 = *(v26 + 32);
  v69(v93, v25, v18);
  v38 = v86;
  (v33)(v86, v87, v35);
  if (v36(v38, 1, v18) == 1)
  {
    (*(v26 + 8))(v93, v18);
    return (*(v70 + 8))(v38, v35);
  }

  v39 = v85;
  v69(v85, v38, v18);
  v40 = v81;
  v41 = v80;
  v42 = *(v80 + 16);
  v43 = v93;
  v44 = v88;
  sub_1CF68DDB0(v93, v82, v83, v84, v81);
  if (v44)
  {
    goto LABEL_6;
  }

  v46 = v79;
  v47 = v77;
  if ((*(v79 + 48))(v40, 1, v77) == 1)
  {
    v48 = *(v26 + 8);
    v48(v85, v18);
    v48(v43, v18);
    return (*(v75 + 8))(v40, v76);
  }

  (*(v46 + 32))(v78, v40, v47);
  v49 = sub_1CF086A0C(v47);
  v50 = *(v18 + 48);
  v51 = &v85[v50];
  v52 = type metadata accessor for ItemMetadata();
  v53 = *(v52 + 68);
  v54 = v51[v53];
  if (v54 == 2 || (v54 & 1) == 0)
  {
    v55 = *(v93 + v50 + v53);
    if (v55 != 2 && (v55 & 1) != 0)
    {
      if (v49 == 2 || (v49 & 1) != 0)
      {
        v63 = v52;
        v43 = v93;
        v64 = (*(**(v41 + 24) + 224))(v93, v82, v83, v84);
        v67 = v64;
        v52 = v63;
        v46 = v79;
        if ((v67 & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v43 = v93;
      }

      sub_1CF5A2DA4(0, *&v51[*(v52 + 104)], 0, 1);
LABEL_18:
      (*(v46 + 8))(v78, v47);
      v45 = *(v26 + 8);
      v45(v85, v18);
      return (v45)(v43, v18);
    }
  }

  LODWORD(v87) = v49;
  v88 = 0;
  v56 = *(v52 + 104);
  v57 = *&v51[v56];
  v43 = v93;
  v58 = *(v93 + v50 + v56);
  if (v57 != v58)
  {
    v59 = type metadata accessor for ItemReconciliationHalf();
    v60 = v78;
    if ((v78[*(v59 + 76)] & 4) != 0)
    {
      v43 = v93;
    }

    else
    {
      v61 = &v78[*(v47 + 52)];
      if ((v61[*(type metadata accessor for ItemReconciliationHalf() + 76)] & 4) != 0)
      {
        v43 = v93;
        v60 = v78;
      }

      else
      {
        if (v87 == 2 || (v87 & 1) != 0)
        {
          v43 = v93;
          v65 = v88;
          v66 = (*(**(v41 + 24) + 232))(v93, v82, v83, v84);
          v88 = v65;
          v60 = v78;
          if (v65)
          {
            (*(v79 + 8))(v78, v47);
            v39 = v85;
LABEL_6:
            v45 = *(v26 + 8);
            v45(v39, v18);
            return (v45)(v43, v18);
          }

          if ((v66 & 1) == 0)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v43 = v93;
          v60 = v78;
        }

        sub_1CF5A2DA4(0, v58, 1, 1);
        sub_1CF5A2DA4(0, v57, 0, 1);
      }
    }

LABEL_29:
    (*(v79 + 8))(v60, v47);
    goto LABEL_30;
  }

  (*(v79 + 8))(v78, v47);
LABEL_30:
  v62 = *(v26 + 8);
  v62(v85, v18);
  return (v62)(v43, v18);
}

uint64_t sub_1CF5A85A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v196 = a4;
  v197 = a5;
  v195 = a3;
  v184 = a1;
  v7 = *v5;
  v8 = sub_1CF9E6118();
  v186 = *(v8 - 8);
  v187 = v8;
  v9 = *(v186 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v188 = &v149 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v176 = &v149 - v12;
  v13 = v7[77];
  v14 = v7[79];
  v15 = type metadata accessor for SnapshotItem();
  v156 = sub_1CF9E75D8();
  v155 = *(v156 - 8);
  v16 = *(v155 + 64);
  MEMORY[0x1EEE9AC00](v156);
  v163 = &v149 - v17;
  v158 = v15;
  v157 = *(v15 - 8);
  v18 = *(v157 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v154 = &v149 - v20;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v171 = sub_1CF9E75D8();
  v170 = *(v171 - 8);
  v22 = *(v170 + 64);
  MEMORY[0x1EEE9AC00](v171);
  v169 = &v149 - v23;
  v173 = AssociatedTypeWitness;
  v172 = *(AssociatedTypeWitness - 8);
  v24 = *(v172 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v162 = &v149 - v26;
  v189 = type metadata accessor for ItemMetadata();
  v27 = *(*(v189 - 8) + 64);
  MEMORY[0x1EEE9AC00](v189);
  v175 = &v149 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v7[78];
  v30 = v7[80];
  *&v198 = v29;
  *(&v198 + 1) = v13;
  *&v199 = v30;
  *(&v199 + 1) = v14;
  v191 = type metadata accessor for ItemReconciliation();
  v31 = sub_1CF9E75D8();
  v182 = *(v31 - 8);
  v183 = v31;
  v32 = *(v182 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v194 = &v149 - v33;
  v165 = v13;
  *&v34 = v13;
  *(&v34 + 1) = v29;
  v164 = v14;
  *&v35 = v14;
  *(&v35 + 1) = v30;
  v199 = v35;
  v198 = v34;
  v36 = type metadata accessor for ItemReconciliation();
  v192 = *(v36 - 8);
  v193 = v36;
  v37 = *(v192 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v161 = &v149 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v166 = &v149 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v181 = &v149 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v190 = &v149 - v44;
  v160 = v29;
  v159 = v30;
  v45 = type metadata accessor for SnapshotItem();
  v46 = sub_1CF9E75D8();
  v47 = *(v46 - 8);
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v180 = &v149 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v149 - v51;
  v53 = *(v45 - 8);
  v54 = v53[8];
  MEMORY[0x1EEE9AC00](v55);
  v168 = &v149 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v57);
  v179 = &v149 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v167 = &v149 - v60;
  v62 = MEMORY[0x1EEE9AC00](v61);
  v64 = &v149 - v63;
  v178 = *(v47 + 16);
  v178(v52, a2, v46, v62);
  v177 = v53[6];
  if (v177(v52, 1, v45) == 1)
  {
    return (*(v47 + 8))(v52, v46);
  }

  v153 = v46;
  v174 = v53;
  v66 = v53[4];
  v185 = v45;
  v66(v64, v52);
  v152 = v5;
  v67 = v5[2];
  v68 = v194;
  v69 = v200;
  sub_1CF68E230(v64, v195, v196, v197, v194);
  v200 = v69;
  if (v69)
  {
    goto LABEL_4;
  }

  v150 = v66;
  v73 = v191;
  v74 = *(v191 - 8);
  v75 = (*(v74 + 48))(v68, 1, v191);
  v151 = v64;
  if (v75 != 1)
  {
    v92 = v181;
    sub_1CF07EE34(v73, v181);
    (*(v74 + 8))(v68, v73);
    v93 = v190;
    v94 = v92;
    v64 = v151;
    (*(v192 + 32))(v190, v94, v193);
    v95 = v185;
    v194 = *&v64[*(v185 + 48) + *(v189 + 104)];
    v96 = v180;
    v97 = v153;
    (v178)(v180, v184, v153);
    if (v177(v96, 1, v95) == 1)
    {
      (*(v47 + 8))(v96, v97);
      v98 = v170;
      v99 = v169;
      v100 = v171;
      (*(v170 + 16))(v169, v93, v171);
      v101 = v172;
      v102 = v173;
      v103 = (*(v172 + 48))(v99, 1, v173);
      v104 = v152;
      if (v103 == 1)
      {
        (*(v98 + 8))(v99, v100);
        v105 = v200;
        v107 = v192;
        v106 = v193;
        v108 = v176;
LABEL_13:
        v109 = fpfs_current_or_default_log();
        sub_1CF9E6128();
        v110 = *(v107 + 16);
        v111 = v166;
        v112 = v190;
        v110(v166, v190, v106);
        v113 = sub_1CF9E6108();
        LODWORD(v197) = sub_1CF9E72A8();
        if (os_log_type_enabled(v113, v197))
        {
          v114 = swift_slowAlloc();
          v200 = v105;
          v115 = v114;
          v116 = swift_slowAlloc();
          *&v198 = v116;
          *v115 = 136315138;
          v117 = v161;
          v110(v161, v111, v106);
          v118 = *(v107 + 8);
          v118(v111, v106);
          v119 = sub_1CF082CB0(v106);
          v121 = v120;
          v118(v117, v106);
          v122 = sub_1CEFD0DF0(v119, v121, &v198);

          *(v115 + 4) = v122;
          _os_log_impl(&dword_1CEFC7000, v113, v197, "couldn't find FS snap for download job update: %s", v115, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v116);
          MEMORY[0x1D386CDC0](v116, -1, -1);
          MEMORY[0x1D386CDC0](v115, -1, -1);

          (*(v186 + 8))(v176, v187);
          v118(v190, v106);
        }

        else
        {
          v140 = *(v107 + 8);
          v140(v111, v106);

          (*(v186 + 8))(v108, v187);
          v140(v112, v106);
        }

        v71 = v174[1];
        v72 = v151;
        goto LABEL_31;
      }

      v135 = v162;
      (*(v101 + 32))(v162, v99, v102);
      v136 = v101;
      v137 = v163;
      v138 = v200;
      (*(*v104[4] + 240))(v135, 1, v195, v196, v197);
      v139 = v102;
      v105 = v138;
      v107 = v192;
      v106 = v193;
      v108 = v176;
      if (v138)
      {
        (*(v136 + 8))(v135, v139);
        (*(v107 + 8))(v190, v106);
LABEL_4:
        v70 = v185;
LABEL_5:
        v71 = v174[1];
        v72 = v64;
        return v71(v72, v70);
      }

      (*(v136 + 8))(v135, v139);
      v141 = v157;
      v142 = v158;
      v143 = (*(v157 + 48))(v137, 1, v158);
      v127 = v190;
      if (v143 == 1)
      {
        (*(v155 + 8))(v137, v156);
        goto LABEL_13;
      }

      v144 = v137;
      v124 = v64;
      v145 = v154;
      (*(v141 + 32))(v154, v144, v142);
      v146 = &v145[*(v142 + 48)];
      v147 = v142;
      v126 = v175;
      sub_1CF043498(v146, v175, type metadata accessor for ItemMetadata);
      (*(v141 + 8))(v145, v147);
    }

    else
    {
      v124 = v64;
      v125 = v167;
      v150(v167, v96, v95);
      v126 = v175;
      sub_1CF043498(&v125[*(v95 + 48)], v175, type metadata accessor for ItemMetadata);
      (v174[1])(v125, v95);
      v105 = v200;
      v107 = v192;
      v106 = v193;
      v127 = v93;
    }

    v128 = *(v126 + *(v189 + 104));
    sub_1CF043504(v126, type metadata accessor for ItemMetadata);
    v129 = v194;
    if (v128 != v194)
    {
      v130 = sub_1CF086A0C(v106);
      if ((*(v127 + *(type metadata accessor for ItemReconciliationHalf() + 76)) & 4) == 0)
      {
        v131 = v106;
        v132 = v105;
        v133 = v127 + *(v131 + 52);
        if ((*(v133 + *(type metadata accessor for ItemReconciliationHalf() + 76)) & 4) != 0)
        {
          v106 = v193;
        }

        else
        {
          v134 = v132;
          if (v130)
          {
            v106 = v193;
          }

          else
          {
            v148 = sub_1CF5D8DFC(v127, v195, v196, v197);
            v106 = v193;
            if (v134)
            {
              (*(v107 + 8))(v127, v193);
              v70 = v185;
              v64 = v124;
              goto LABEL_5;
            }

            if (!v148)
            {
              goto LABEL_30;
            }
          }

          sub_1CF5A2DA4(1, v129, 1, 0);
          sub_1CF5A2DA4(1, v128, 0, 0);
        }
      }
    }

LABEL_30:
    (*(v107 + 8))(v127, v106);
    v71 = v174[1];
    v72 = v124;
LABEL_31:
    v70 = v185;
    return v71(v72, v70);
  }

  (*(v182 + 8))(v68, v183);
  v76 = fpfs_current_or_default_log();
  v77 = v188;
  sub_1CF9E6128();
  v78 = v174;
  v79 = v174[2];
  v80 = v179;
  v81 = v185;
  v79(v179, v64, v185);
  v82 = sub_1CF9E6108();
  v83 = sub_1CF9E72A8();
  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    v197 = swift_slowAlloc();
    *&v198 = v197;
    *v84 = 136315138;
    v85 = v168;
    v79(v168, v80, v81);
    v86 = v78[1];
    v86(v80, v81);
    v87 = sub_1CF06FB20(v81);
    v89 = v88;
    v86(v85, v81);
    v90 = sub_1CEFD0DF0(v87, v89, &v198);

    *(v84 + 4) = v90;
    _os_log_impl(&dword_1CEFC7000, v82, v83, "Couldn't find RT entry in updateDownloadJob: %s", v84, 0xCu);
    v91 = v197;
    __swift_destroy_boxed_opaque_existential_1(v197);
    MEMORY[0x1D386CDC0](v91, -1, -1);
    MEMORY[0x1D386CDC0](v84, -1, -1);

    (*(v186 + 8))(v188, v187);
    return (v86)(v151, v81);
  }

  else
  {
    v123 = v78[1];
    v123(v80, v81);

    (*(v186 + 8))(v77, v187);
    return (v123)(v151, v81);
  }
}

uint64_t sub_1CF5A9774(void (*a1)(void, void, void), unint64_t a2, unint64_t a3, void (*a4)(__int128 *, id), uint64_t a5)
{
  v115 = a4;
  v116 = a5;
  v110 = a3;
  v111 = a2;
  v106 = a1;
  v6 = *(*v5 + 624);
  v7 = *(*v5 + 640);
  v8 = *(*v5 + 632);
  v104 = *(*v5 + 616);
  v103 = v8;
  *&v117 = type metadata accessor for UserRequest();
  *(&v117 + 1) = &type metadata for NSecTimestamp;
  *&v118 = sub_1CF9E6448();
  *(&v118 + 1) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0710, &unk_1CF9FE550);
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v93 = *(TupleTypeMetadata - 8);
  v9 = *(v93 + 64);
  v10 = MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v11 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v97 = v92 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v101 = v92 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v96 = v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v92 - v16;
  v107 = sub_1CF9E63D8();
  v105 = *(v107 - 8);
  v18 = *(v105 + 64);
  v19 = MEMORY[0x1EEE9AC00](v107);
  v95 = v92 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v99 = v92 - v21;
  v114 = sub_1CF9E6448();
  v108 = *(v114 - 8);
  v22 = *(v108 + 64);
  v23 = MEMORY[0x1EEE9AC00](v114);
  v94 = v92 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v98 = v92 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v27 = (v92 - v11);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v113 = *(AssociatedTypeWitness - 8);
  v29 = *(v113 + 64);
  v30 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v102 = v92 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v100 = v92 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v112 = v92 - v34;
  v35 = sub_1CF9E64A8();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v39 = (v92 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = *(v5 + 64);
  *v39 = v40;
  (*(v36 + 104))(v39, *MEMORY[0x1E69E8020], v35);
  v41 = v40;
  LOBYTE(v40) = sub_1CF9E64D8();
  result = (*(v36 + 8))(v39, v35);
  if ((v40 & 1) == 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (*(v5 + 152) == 1)
  {
    v119 = 0;
    v117 = 0u;
    v118 = 0u;
    v43 = FPDomainUnavailableError();
    v115(&v117, v43);

    return sub_1CEFCCC44(&v117, &unk_1EC4C1B30, &qword_1CFA05300);
  }

  v44 = qword_1EC4EBD70;
  swift_beginAccess();
  v92[1] = v44;
  v45 = *(v5 + v44);

  *&v117 = v6;
  *(&v117 + 1) = v104;
  *&v118 = v7;
  *(&v118 + 1) = v103;
  *&v117 = type metadata accessor for UserRequest();
  *(&v117 + 1) = &type metadata for NSecTimestamp;
  *&v118 = v114;
  *(&v118 + 1) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0718, &qword_1CFA05B28);
  v46 = swift_getTupleTypeMetadata();
  v47 = sub_1CF9E6E58();
  v48 = *(swift_getAssociatedConformanceWitness() + 40);
  v49 = v106;
  v104 = v47;
  v103 = v48;
  sub_1CF9E6728();

  if (!v120)
  {
    (*(v113 + 16))(v102, v49, AssociatedTypeWitness);
    v113 = v46;
    sub_1CF9E7FA8();
    v54 = *(v93 + 72);
    v55 = *(v93 + 80);
    swift_allocObject();
    v112 = sub_1CF9E6D68();
    v57 = v56;
    qos_class_self();
    v58 = v96;
    sub_1CF9E63B8();
    v59 = v105;
    v60 = *(v105 + 48);
    v61 = v107;
    if (v60(v58, 1, v107) == 1)
    {
      (*(v59 + 104))(v95, *MEMORY[0x1E69E7FA0], v61);
      if (v60(v58, 1, v61) != 1)
      {
        sub_1CEFCCC44(v58, &unk_1EC4BE380, &qword_1CFA01BA0);
      }
    }

    else
    {
      (*(v59 + 32))(v95, v58, v61);
    }

    v80 = v94;
    sub_1CF9E6428();
    v81 = TupleTypeMetadata;
    v82 = *(TupleTypeMetadata + 64);
    v83 = *(v108 + 32);
    v84 = v97;
    v85 = v80;
    v86 = v114;
    v83(&v97[v82], v85, v114);
    v87 = v110;
    v88 = v111;
    *v57 = v111;
    v57[1] = v87;
    v83(v57 + *(v81 + 64), &v84[v82], v86);
    v89 = (v57 + *(v81 + 80));
    v90 = swift_allocObject();
    v91 = v116;
    *(v90 + 16) = v115;
    *(v90 + 24) = v91;
    *v89 = sub_1CF5E14E4;
    v89[1] = v90;
    v120 = sub_1CF045898(v112);
    swift_beginAccess();

    sub_1CEFD09A0(v88);
    sub_1CF9E6708();
    sub_1CF9E6738();
    return swift_endAccess();
  }

  v106 = *(v113 + 16);
  v106(v112, v49, AssociatedTypeWitness);
  qos_class_self();
  sub_1CF9E63B8();
  v50 = v105;
  v51 = *(v105 + 48);
  v52 = v107;
  v53 = v51(v17, 1, v107);
  v92[0] = AssociatedTypeWitness;
  if (v53 == 1)
  {
    (*(v50 + 104))(v99, *MEMORY[0x1E69E7FA0], v52);
    if (v51(v17, 1, v52) != 1)
    {
      sub_1CEFCCC44(v17, &unk_1EC4BE380, &qword_1CFA01BA0);
    }
  }

  else
  {
    (*(v50 + 32))(v99, v17, v52);
  }

  v62 = v98;
  sub_1CF9E6428();
  v63 = TupleTypeMetadata;
  v64 = *(TupleTypeMetadata + 64);
  v65 = *(v108 + 32);
  v66 = v101;
  v67 = v62;
  v68 = v114;
  v65(&v101[v64], v67, v114);
  v69 = v110;
  v70 = v111;
  *v27 = v111;
  v27[1] = v69;
  v65(v27 + *(v63 + 64), &v66[v64], v68);
  v71 = (v27 + *(v63 + 80));
  v72 = swift_allocObject();
  v73 = v116;
  *(v72 + 16) = v115;
  *(v72 + 24) = v73;
  *v71 = sub_1CF5E14E4;
  v71[1] = v72;
  swift_beginAccess();
  v74 = v100;
  v75 = v112;
  v76 = v92[0];
  v106(v100, v112, v92[0]);

  sub_1CEFD09A0(v70);
  sub_1CF9E66E8();
  result = sub_1CF9E66F8();
  if (!*v77)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v78 = result;
  sub_1CF9E6E18();
  v78(&v117, 0);
  v79 = *(v113 + 8);
  v79(v74, v76);
  v79(v75, v76);
  return swift_endAccess();
}

uint64_t sub_1CF5AA338(void (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v375 = a5;
  v374 = a4;
  v377 = a3;
  v407 = a2;
  v7 = *v5;
  v365 = sub_1CF9E5CF8();
  v364 = *(v365 - 8);
  v8 = *(v364 + 64);
  MEMORY[0x1EEE9AC00](v365);
  v362 = &v341 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v7[77];
  v11 = v7[78];
  v12 = v7[79];
  v13 = v7[80];
  v425 = v10;
  v426 = v11;
  v427 = v12;
  v428 = v13;
  v403 = type metadata accessor for ConcreteDatabase.MaterializationRequest();
  v390 = sub_1CF9E75D8();
  v389 = *(v390 - 8);
  v14 = *(v389 + 64);
  v15 = MEMORY[0x1EEE9AC00](v390);
  v363 = &v341 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v376 = &v341 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v380 = &v341 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v372 = &v341 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v382 = (&v341 - v23);
  v387 = sub_1CF9E6118();
  v391 = *(v387 - 8);
  v24 = *(v391 + 64);
  v25 = MEMORY[0x1EEE9AC00](v387);
  v360 = &v341 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v361 = &v341 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v370 = &v341 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v369 = &v341 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v367 = &v341 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v413 = &v341 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v371 = &v341 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v373 = &v341 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v383 = &v341 - v42;
  MEMORY[0x1EEE9AC00](v41);
  v388 = &v341 - v43;
  v425 = v10;
  v426 = v11;
  v411 = v11;
  v427 = v12;
  v428 = v13;
  v414 = v13;
  v425 = type metadata accessor for UserRequest();
  v426 = &type metadata for MaterializationRequestOptions;
  v406 = sub_1CEFD57E0(255, &unk_1EDEAB630, 0x1E696AE38);
  v427 = v406;
  v395 = sub_1CF9E6448();
  v428 = v395;
  v429 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0710, &unk_1CF9FE550);
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  *&v418 = *(TupleTypeMetadata - 8);
  v45 = *(v418 + 64);
  v46 = MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v400 = &v341 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x1EEE9AC00](v46);
  v410 = &v341 - v49;
  MEMORY[0x1EEE9AC00](v48);
  v396 = (&v341 - v50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v52 = *(AssociatedTypeWitness - 8);
  v53 = *(v52 + 64);
  v54 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v358 = &v341 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = MEMORY[0x1EEE9AC00](v54);
  i = &v341 - v57;
  v58 = MEMORY[0x1EEE9AC00](v56);
  v381 = &v341 - v59;
  MEMORY[0x1EEE9AC00](v58);
  v61 = &v341 - v60;
  v421 = TupleTypeMetadata;
  v419 = sub_1CF9E75D8();
  v397 = *(v419 - 8);
  v62 = *(v397 + 64);
  v63 = MEMORY[0x1EEE9AC00](v419);
  v356 = &v341 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = MEMORY[0x1EEE9AC00](v63);
  v409 = &v341 - v66;
  v67 = MEMORY[0x1EEE9AC00](v65);
  v393 = &v341 - v68;
  v69 = MEMORY[0x1EEE9AC00](v67);
  v357 = &v341 - v70;
  v71 = MEMORY[0x1EEE9AC00](v69);
  v359 = &v341 - v72;
  v73 = MEMORY[0x1EEE9AC00](v71);
  v408 = (&v341 - v74);
  v75 = MEMORY[0x1EEE9AC00](v73);
  v399 = (&v341 - v76);
  v77 = MEMORY[0x1EEE9AC00](v75);
  v398 = (&v341 - v78);
  MEMORY[0x1EEE9AC00](v77);
  *&v401 = &v341 - v79;
  v404 = v52;
  v82 = *(v52 + 16);
  v81 = v52 + 16;
  v80 = v82;
  v394 = a1;
  v82(v61, a1, AssociatedTypeWitness);
  v386 = v5;
  v417 = sub_1CF5A5660();
  v415 = v12;
  v412 = v10;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v84 = *(AssociatedConformanceWitness + 40);
  v405 = AssociatedTypeWitness;
  v85 = v403;
  v86 = sub_1CF9E6708();
  *&v420 = v61;
  v416 = sub_1CF9E6718();
  v87 = v85;
  v88 = *(v85 - 8);
  v89 = *(v88 + 48);
  v392 = v90;
  v91 = v87;
  if ((v89)(v90, 1))
  {
    v416(v423, 0);
    (*(v404 + 8))(v420, v405);
    (v417)(v424, 0);
    v92 = v401;
    (*(v418 + 56))(v401, 1, 1, v421);
    v93 = v419;
    v94 = v397;
    return (*(v94 + 8))(v92, v93);
  }

  v355 = AssociatedConformanceWitness;
  v366 = v84;
  v351 = v88;
  v350 = v80;
  v352 = v81;
  v368 = v86;
  v353 = v89;
  v354 = v88 + 48;
  v422 = v407;
  v95 = *(v91 + 56);
  v425 = v412;
  v426 = v411;
  v427 = v415;
  v428 = v414;
  v425 = type metadata accessor for UserRequest();
  v426 = &type metadata for MaterializationRequestOptions;
  v427 = v406;
  v428 = v395;
  v429 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0720, &qword_1CFA05B30);
  v395 = swift_getTupleTypeMetadata();
  v96 = sub_1CF9E6708();
  v97 = v393;
  v346 = v96;
  sub_1CF9E6658();
  v416(v423, 0);
  v98 = v404 + 8;
  v99 = v405;
  v349 = *(v404 + 8);
  v349(v420, v405);
  (v417)(v424, 0);
  v100 = v418;
  v101 = *(v418 + 48);
  v102 = 1;
  v103 = v421;
  v417 = (v418 + 48);
  v416 = v101;
  if ((v101)(v97, 1, v421) != 1)
  {
    v104 = v98;
    v105 = *(v103 + 20);
    v406 = *(v103 + 24);
    v420 = *v97;
    v407 = *(v97 + 2);
    v106 = sub_1CF9E6448();
    v107 = *(*(v106 - 8) + 32);
    v108 = v396;
    v107(v396 + v105, &v97[v105], v106);
    v109 = swift_allocObject();
    *(v109 + 16) = *&v97[v406];
    v110 = *(v421 + 20);
    v111 = v398;
    v112 = (v398 + *(v421 + 24));
    *v398 = v420;
    *(v111 + 2) = v407;
    v113 = v108 + v105;
    v98 = v104;
    v107(v111 + v110, v113, v106);
    v99 = v405;
    v103 = v421;
    v102 = 0;
    *v112 = sub_1CF5E14AC;
    v112[1] = v109;
  }

  v114 = *(v100 + 56);
  v115 = v398;
  v407 = v100 + 56;
  v406 = v114;
  v114(v398, v102, 1, v103);
  v94 = v397;
  v116 = *(v397 + 32);
  v92 = v401;
  v117 = v115;
  v93 = v419;
  v393 = (v397 + 32);
  v392 = v116;
  v116(v401, v117, v419);
  if ((v416)(v92, 1, v103) == 1)
  {
    return (*(v94 + 8))(v92, v93);
  }

  v404 = v98;
  v119 = *v92;

  v120 = *(v103 + 20);
  v121 = (v92 + *(v103 + 24));
  v123 = *v121;
  v122 = v121[1];
  v398 = v123;
  v348 = v122;
  v124 = sub_1CF9E6448();
  v343 = *(v124 - 8);
  v125 = *(v343 + 8);
  *&v420 = v124;
  v385 = v343 + 8;
  v384 = v125;
  v125(v92 + v120);
  v126 = [objc_allocWithZone(FPLoggerScope) init];
  v127 = fpfs_current_or_default_log();
  v128 = v388;
  sub_1CF9E6128();
  v129 = v381;
  v130 = v350;
  v350(v381, v394, v99);
  sub_1CEFD09A0(v119);
  sub_1CEFD09A0(v119);
  v131 = v126;
  v132 = sub_1CF9E6108();
  v133 = sub_1CF9E7298();

  LODWORD(v401) = v133;
  v134 = os_log_type_enabled(v132, v133);
  v379 = v119;
  v347 = v131;
  if (v134)
  {
    v135 = swift_slowAlloc();
    v136 = swift_slowAlloc();
    v344 = v136;
    v345 = swift_slowAlloc();
    v425 = v345;
    *v135 = 138412802;
    v137 = [v131 enter];
    *(v135 + 4) = v137;
    *v136 = v137;
    *(v135 + 12) = 2080;
    v138 = i;
    v130(i, v129, v99);
    v139 = v349;
    v349(v129, v99);
    v140 = *(v355 + 2);
    v141 = v132;
    v142 = sub_1CF9E7F98();
    v144 = v143;
    v139(v138, v99);
    v145 = sub_1CEFD0DF0(v142, v144, &v425);

    *(v135 + 14) = v145;
    *(v135 + 22) = 2080;
    v146 = sub_1CF665B0C(v119, v412, v411, v415, v414);
    v148 = v147;
    sub_1CF5DE5B8(v119);
    sub_1CF5DE5B8(v119);
    v149 = sub_1CEFD0DF0(v146, v148, &v425);

    *(v135 + 24) = v149;
    _os_log_impl(&dword_1CEFC7000, v141, v401, "%@ 🛑  cancelling request for %s: %s", v135, 0x20u);
    v150 = v344;
    sub_1CEFCCC44(v344, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v150, -1, -1);
    v151 = v345;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v151, -1, -1);
    MEMORY[0x1D386CDC0](v135, -1, -1);

    v152 = *(v391 + 8);
    v153 = v388;
  }

  else
  {
    sub_1CF5DE5B8(v119);
    v349(v129, v99);
    sub_1CF5DE5B8(v119);

    v152 = *(v391 + 8);
    v153 = v128;
  }

  v154 = v387;
  v152(v153, v387);
  v155 = v413;
  v156 = v386;
  v157 = v383;
  v158 = *(v386 + 82);
  v345 = v152;
  if ((v158 & 0x20) != 0)
  {
    v161 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v162 = sub_1CF9E6108();
    v163 = sub_1CF9E7298();
    if (os_log_type_enabled(v162, v163))
    {
      v164 = v152;
      v165 = swift_slowAlloc();
      *v165 = 0;
      _os_log_impl(&dword_1CEFC7000, v162, v163, "CancelRequest waiting for flush", v165, 2u);
      v166 = v165;
      v152 = v164;
      v157 = v383;
      MEMORY[0x1D386CDC0](v166, -1, -1);
    }

    v152(v157, v154);
    v167 = swift_allocObject();
    v168 = v398;
    v169 = v348;
    *(v167 + 16) = v398;
    *(v167 + 24) = v169;
    v170 = swift_allocObject();
    *(v170 + 16) = v168;
    *(v170 + 24) = v169;
    v171 = *(*v156 + 456);
    swift_retain_n();
    v171("cancelRequest(for:progress:with:)", 33, 2, 0, 0, 0, sub_1CF552D44, v167, sub_1CF5DE65C, v170);
  }

  else
  {
    sub_1CF4810BC();
    v159 = swift_allocError();
    *v160 = 0;
    v398();
  }

  v172 = qword_1EDEBBC70;
  swift_beginAccess();
  v344 = v172;
  v173 = *(v156 + v172);

  v174 = v382;
  v175 = v403;
  sub_1CF9E6728();

  v176 = v353(v174, 1, v175);
  v177 = v379;
  v178 = v390;
  if (v176)
  {
    v342 = *(v389 + 8);
    v342(v174, v390);
LABEL_25:
    v194 = sub_1CF6656D8(v177);
    if (v194 && (v195 = v194, v196 = [v194 selectedForMaterialization], v195, (v196 & 1) == 0))
    {
      v261 = v154;
      v262 = fpfs_current_or_default_log();
      v263 = v373;
      sub_1CF9E6128();
      v264 = v347;
      v265 = sub_1CF9E6108();
      v266 = sub_1CF9E7298();

      if (os_log_type_enabled(v265, v266))
      {
        goto LABEL_71;
      }
    }

    else
    {
      v197 = sub_1CF6656D8(v177);
      if (!v197 || (v198 = v197, v199 = [v197 requestedExtent], v198, v199 != -1))
      {
        v180 = v415;
        v200 = sub_1CF6656D8(v177);
        if (!v200)
        {
          goto LABEL_111;
        }

        v201 = v200;
        v202 = [v200 requestedExtent];

        v203 = sub_1CF6656D8(v177);
        v204 = v380;
        v205 = v410;
        if (!v203)
        {
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          v342(v180, v390);
          goto LABEL_117;
        }

        v206 = v203;
        [v203 requestedExtent];
        v208 = v207;

        v355 = &v202[v208];
        v209 = v353;
        v180 = v351;
        if (!__OFADD__(v202, v208))
        {
          v210 = *(v344 + v386);

          v211 = v403;
          sub_1CF9E6728();

          v212 = v376;
          (*(v389 + 16))(v376, v204, v390);
          if (v209(v212, 1, v211) != 1)
          {
            v213 = *(v212 + *(v211 + 56));
            v214 = *(v180 + 1);

            v351 = v180 + 8;
            v341 = v214;
            v214(v212, v211);
            v180 = 0;
            v216 = (v213 + 64);
            v215 = *(v213 + 64);
            v366 = v213;
            v217 = 1 << *(v213 + 32);
            v218 = -1;
            if (v217 < 64)
            {
              v218 = ~(-1 << v217);
            }

            v219 = v218 & v215;
            v383 = v400 + 8;
            v220 = (v217 + 63) >> 6;
            v398 = (v418 + 16);
            v395 = (v343 + 32);
            v382 = (v418 + 8);
            v221 = v421;
            v222 = v420;
            v223 = v409;
            v381 = v216;
            for (i = v220; ; v220 = i)
            {
              if (!v219)
              {
                if (v220 <= (v180 + 1))
                {
                  v225 = v180 + 1;
                }

                else
                {
                  v225 = v220;
                }

                v226 = v225 - 1;
                while (1)
                {
                  v224 = (v180 + 1);
                  if (__OFADD__(v180, 1))
                  {
                    break;
                  }

                  if (v224 >= v220)
                  {
                    v219 = 0;
                    v228 = 1;
                    v180 = v226;
                    goto LABEL_49;
                  }

                  v219 = *&v216[8 * v224];
                  ++v180;
                  if (v219)
                  {
                    v180 = v224;
                    goto LABEL_48;
                  }
                }

                __break(1u);
                goto LABEL_96;
              }

              v224 = v180;
LABEL_48:
              v227 = __clz(__rbit64(v219));
              v219 &= v219 - 1;
              (*(v418 + 16))(v223, *(v366 + 56) + *(v418 + 72) * (v227 | (v224 << 6)), v221);
              v228 = 0;
LABEL_49:
              v229 = 1;
              (v406)(v223, v228, 1, v221);
              if ((v416)(v223, 1, v221) != 1)
              {
                v230 = *(v221 + 20);
                v231 = *(v221 + 24);
                v232 = v409;
                v401 = *v409;
                v388 = *(v409 + 2);
                v233 = *v395;
                v234 = v396;
                (*v395)(v396 + v230, &v409[v230], v222);
                v235 = swift_allocObject();
                *(v235 + 16) = *&v232[v231];
                v236 = *(v421 + 20);
                v237 = v408;
                v238 = (v408 + *(v421 + 24));
                *v408 = v401;
                *(v237 + 2) = v388;
                v221 = v421;
                v239 = v234 + v230;
                v155 = v413;
                (v233)(v237 + v236, v239, v420);
                v205 = v410;
                v229 = 0;
                *v238 = sub_1CF5E14AC;
                v238[1] = v235;
                v222 = v420;
              }

              v240 = v408;
              (v406)(v408, v229, 1, v221);
              v241 = v399;
              v392(v399, v240, v419);
              if ((v416)(v241, 1, v221) == 1)
              {
                v342(v380, v390);

                v187 = v387;
                v177 = v379;
                goto LABEL_68;
              }

              v242 = v241[1];
              v243 = v241[2];
              v244 = *(v221 + 20);
              v245 = *(v221 + 24);
              v246 = *(v241 + v245);
              v247 = *(v241 + v245 + 8);
              v248 = (v205 + v245);
              v373 = *v241;
              *v205 = v373;
              *(v205 + 8) = v242;
              v372 = v242;
              *(v205 + 16) = v243;
              v249 = *v395;
              v371 = v244;
              v367 = v249;
              (v249)(&v244[v205], &v244[v241], v222);
              v370 = v246;
              *v248 = v246;
              v248[1] = v247;
              v369 = v247;
              v250 = v400;
              v376 = *v398;
              (v376)(v400, v205, v221);
              v251 = *v250;

              *&v401 = *(v221 + 20);
              v252 = *&v383[*(v221 + 24)];

              v212 = v411;
              v253 = v250;
              v204 = v415;
              v254 = sub_1CF6656D8(v251);
              sub_1CF5DE5B8(v251);
              if (v254)
              {
                v255 = [v254 requestedExtent];
                v388 = v256;

                v384(v253 + v401, v420);
                v257 = sub_1CF6656D8(v379);
                if (!v257)
                {
                  goto LABEL_110;
                }

                v258 = v257;
                v259 = [v257 requestedExtent];

                v260 = v255 < v259;
                v155 = v413;
                v205 = v410;
                v212 = v368;
                v222 = v420;
                if (v260)
                {
                  goto LABEL_61;
                }

                if (__OFADD__(v255, v388))
                {
                  __break(1u);
                  goto LABEL_102;
                }

                if (v355 < &v388[v255])
                {
LABEL_61:
                  v425 = v412;
                  v426 = v411;
                  v427 = v415;
                  v428 = v414;
                  type metadata accessor for ConcreteJobResult();
                  v267 = sub_1CF056580();
                  v268 = v386;
                  swift_beginAccess();
                  v180 = v363;
                  v269 = v394;
                  sub_1CF9E6658();
                  swift_endAccess();
                  v270 = v403;
                  if (v353(v180, 1, v403) == 1)
                  {
                    goto LABEL_114;
                  }

                  v271 = *v180;
                  v341(v180, v270);
                  v272 = v402;
                  v273 = v375;
                  v274 = v374;
                  if (v271)
                  {
                    goto LABEL_117;
                  }

                  sub_1CF56512C(v269, v268, v267, v377, v374, *(v375 + 8));
                  v180 = v272;
                  if (v272)
                  {

                    v342(v380, v390);
                    (*v382)(v410, v421);
                    v275 = fpfs_current_or_default_log();
                    v276 = v361;
                    sub_1CF9E6128();
                    v277 = v347;
                    v278 = sub_1CF9E6108();
                    v279 = sub_1CF9E7298();

                    if (os_log_type_enabled(v278, v279))
                    {
                      v280 = swift_slowAlloc();
                      v281 = swift_slowAlloc();
                      *v280 = 138412290;
                      v282 = [v277 leave];
                      *(v280 + 4) = v282;
                      *v281 = v282;
                      _os_log_impl(&dword_1CEFC7000, v278, v279, "%@", v280, 0xCu);
                      sub_1CEFCCC44(v281, &qword_1EC4BE350, &unk_1CF9FC3B0);
                      MEMORY[0x1D386CDC0](v281, -1, -1);
                      MEMORY[0x1D386CDC0](v280, -1, -1);
                    }

                    v345(v276, v387);
                    v177 = v379;
                    goto LABEL_94;
                  }

                  v298 = v362;
                  sub_1CF9E5CE8();
                  sub_1CF9E5C98();
                  v300 = v299;
                  (*(v364 + 8))(v298, v365);
                  v301 = v300 * 1000000000.0;
                  if (COERCE__INT64(fabs(v300 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
                  {
                    goto LABEL_106;
                  }

                  if (v301 > -9.22337204e18)
                  {
                    if (v301 >= 9.22337204e18)
                    {
                      goto LABEL_108;
                    }

                    sub_1CF521850(v267, v301, v377, v274, v273);
                    v402 = 0;
                    v314 = v396;
                    v180 = v421;
                    (v376)(v396, v410, v421);
                    sub_1CF5DE5B8(*v314);
                    v315 = *(v180 + 20);
                    v316 = *(v314 + *(v180 + 24) + 8);
                    *&v418 = v314[2];

                    v384(v314 + v315, v222);
                    v222 = v358;
                    v212 = v405;
                    v350(v358, v269, v405);
                    v221 = sub_1CF5A5660();
                    v205 = sub_1CF9E6718();
                    v219 = v317;
                    v204 = v403;
                    if (v353(v317, 1, v403))
                    {
                      (v205)(v424, 0);
                      v349(v222, v212);
                      (v221)(&v425, 0);
                      v318 = v359;
                      (v406)(v359, 1, 1, v180);
                      v155 = v413;
                      v319 = v180;
                      v320 = v410;
                      v321 = v396;
                      v322 = v419;
LABEL_99:
                      (*(v397 + 8))(v318, v322);
                      v335 = sub_1CF53499C(v394, v373, v372, &v371[v320], v370, v369);
                      (v376)(v321, v320, v319);
                      sub_1CF5DE5B8(*v321);
                      v336 = v321[2];
                      v337 = *(v319 + 20);
                      v338 = *(v321 + *(v319 + 24) + 8);

                      v384(v321 + v337, v420);
                      v339 = [v336 totalUnitCount];
                      v340 = v320;
                      v180 = v402;
                      v187 = v387;
                      v177 = v379;
                      if (__OFADD__(v339, 1))
                      {
                        goto LABEL_109;
                      }

                      [v336 setTotalUnitCount_];
                      [v336 addChild:v335 withPendingUnitCount:1];

                      v342(v380, v390);
                      (*v382)(v340, v319);
                      goto LABEL_68;
                    }

LABEL_96:
                    v422 = v418;
                    v323 = v219 + *(v204 + 56);
                    v324 = v356;
                    sub_1CF9E6658();
                    (v205)(v424, 0);
                    v349(v222, v212);
                    (v221)(&v425, 0);
                    v325 = 1;
                    v326 = (v416)(v324, 1, v180);
                    v319 = v180;
                    v321 = v396;
                    v327 = v357;
                    if (v326 != 1)
                    {
                      v328 = *(v180 + 20);
                      v329 = *(v180 + 24);
                      v418 = *v324;
                      v417 = *(v324 + 2);
                      v330 = v367;
                      (v367)(v396 + v328, &v324[v328], v420);
                      v331 = swift_allocObject();
                      *(v331 + 16) = *&v324[v329];
                      v332 = *(v421 + 20);
                      v333 = &v327[*(v421 + 24)];
                      *v327 = v418;
                      *(v327 + 2) = v417;
                      v330(&v327[v332], v321 + v328, v420);
                      v325 = 0;
                      *v333 = sub_1CF5E14AC;
                      v333[1] = v331;
                      v319 = v421;
                    }

                    (v406)(v327, v325, 1, v319);
                    v318 = v359;
                    v334 = v419;
                    v392(v359, v327, v419);
                    v322 = v334;
                    v155 = v413;
                    v320 = v410;
                    goto LABEL_99;
                  }

LABEL_107:
                  __break(1u);
LABEL_108:
                  __break(1u);
LABEL_109:
                  __break(1u);
LABEL_110:
                  __break(1u);
LABEL_111:
                  __break(1u);
                  goto LABEL_112;
                }
              }

              else
              {
                v222 = v420;
                v384(v253 + v401, v420);
                v155 = v413;
                v205 = v410;
              }

              v221 = v421;
              (*v382)(v205, v421);
              v223 = v409;
              v216 = v381;
            }
          }

          goto LABEL_113;
        }

LABEL_102:
        __break(1u);
        goto LABEL_103;
      }

      v261 = v154;
      v293 = fpfs_current_or_default_log();
      v263 = v371;
      sub_1CF9E6128();
      v264 = v347;
      v265 = sub_1CF9E6108();
      v266 = sub_1CF9E7298();

      if (os_log_type_enabled(v265, v266))
      {
LABEL_71:
        v294 = v177;
        v295 = swift_slowAlloc();
        v296 = swift_slowAlloc();
        *v295 = 138412290;
        v297 = [v264 leave];
        *(v295 + 4) = v297;
        *v296 = v297;
        _os_log_impl(&dword_1CEFC7000, v265, v266, "%@", v295, 0xCu);
        sub_1CEFCCC44(v296, &qword_1EC4BE350, &unk_1CF9FC3B0);
        MEMORY[0x1D386CDC0](v296, -1, -1);
        MEMORY[0x1D386CDC0](v295, -1, -1);

        v345(v263, v261);

        return sub_1CF5DE5B8(v294);
      }
    }

    v345(v263, v261);

    return sub_1CF5DE5B8(v177);
  }

  v179 = *(v174 + *(v175 + 56));
  v180 = *(v389 + 8);

  v342 = v180;
  (v180)(v174, v178);
  v181 = MEMORY[0x1D3868960](v179, MEMORY[0x1E69E5FE0], v395, MEMORY[0x1E69E5FE8]);

  if ((v181 & 1) == 0)
  {
    goto LABEL_25;
  }

  v425 = v412;
  v426 = v411;
  v427 = v415;
  v428 = v414;
  type metadata accessor for ConcreteJobResult();
  v182 = sub_1CF056580();
  swift_beginAccess();
  v183 = v372;
  sub_1CF9E6658();
  swift_endAccess();
  if (v353(v183, 1, v175) == 1)
  {
    v342(v183, v390);
LABEL_117:
    result = sub_1CF9E7B68();
    __break(1u);
    return result;
  }

  v184 = *v183;
  (*(v351 + 1))(v183, v175);
  if (v184 > 1)
  {
    v185 = v365;
    v186 = v364;
    v187 = v387;
    if (v184 == 2)
    {
      goto LABEL_82;
    }

    if (v184 == 3)
    {
      goto LABEL_22;
    }

LABEL_79:
    v302 = v402;
    sub_1CF56512C(v394, v156, v182, v377, v374, *(v375 + 8));
    v402 = v302;
    if (v302)
    {

      v303 = fpfs_current_or_default_log();
      v190 = v367;
      sub_1CF9E6128();
      v191 = v347;
      v192 = sub_1CF9E6108();
      v193 = sub_1CF9E7298();

      if (os_log_type_enabled(v192, v193))
      {
        goto LABEL_87;
      }

      goto LABEL_93;
    }

    goto LABEL_82;
  }

  v185 = v365;
  v186 = v364;
  v187 = v387;
  if (!v184)
  {
    goto LABEL_79;
  }

LABEL_22:
  v188 = v402;
  sub_1CF56B9CC(v394, v156, v182, v377, v374, *(v375 + 8));
  v402 = v188;
  if (v188)
  {

    v189 = fpfs_current_or_default_log();
    v190 = v369;
    sub_1CF9E6128();
    v191 = v347;
    v192 = sub_1CF9E6108();
    v193 = sub_1CF9E7298();

    if (os_log_type_enabled(v192, v193))
    {
      goto LABEL_87;
    }

    goto LABEL_93;
  }

LABEL_82:
  v304 = v362;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v306 = v305;
  (*(v186 + 8))(v304, v185);
  v307 = v306 * 1000000000.0;
  if (COERCE__INT64(fabs(v306 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  v308 = v402;
  if (v307 <= -9.22337204e18)
  {
LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  if (v307 >= 9.22337204e18)
  {
    goto LABEL_105;
  }

  sub_1CF521850(v182, v307, v377, v374, v375);
  if (v308)
  {

    v309 = fpfs_current_or_default_log();
    v190 = v370;
    sub_1CF9E6128();
    v191 = v347;
    v192 = sub_1CF9E6108();
    v193 = sub_1CF9E7298();

    if (os_log_type_enabled(v192, v193))
    {
LABEL_87:
      v310 = swift_slowAlloc();
      v311 = swift_slowAlloc();
      *v310 = 138412290;
      v312 = [v191 leave];
      *(v310 + 4) = v312;
      *v311 = v312;
      _os_log_impl(&dword_1CEFC7000, v192, v193, "%@", v310, 0xCu);
      sub_1CEFCCC44(v311, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v311, -1, -1);
      v313 = v310;
      v177 = v379;
      MEMORY[0x1D386CDC0](v313, -1, -1);

      v345(v190, v387);
LABEL_94:

      return sub_1CF5DE5B8(v177);
    }

LABEL_93:

    v345(v190, v387);
    goto LABEL_94;
  }

LABEL_68:
  v283 = v347;
  v284 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v285 = v283;
  v286 = sub_1CF9E6108();
  v287 = sub_1CF9E7298();

  if (os_log_type_enabled(v286, v287))
  {
    v288 = v187;
    v289 = v177;
    v290 = swift_slowAlloc();
    v291 = swift_slowAlloc();
    *v290 = 138412290;
    v292 = [v285 leave];
    *(v290 + 4) = v292;
    *v291 = v292;
    _os_log_impl(&dword_1CEFC7000, v286, v287, "%@", v290, 0xCu);
    sub_1CEFCCC44(v291, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v291, -1, -1);
    MEMORY[0x1D386CDC0](v290, -1, -1);

    v345(v155, v288);

    return sub_1CF5DE5B8(v289);
  }

  else
  {

    v345(v155, v187);

    return sub_1CF5DE5B8(v177);
  }
}

uint64_t sub_1CF5AD73C(void (*a1)(void, void), unint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *), uint64_t a7, void (*a8)(void, void), uint64_t a9)
{
  v32 = a5;
  v27 = a8;
  v28 = a7;
  v29 = a6;
  v30 = a2;
  v31 = a3;
  v26 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v26 - v11;
  v13 = sub_1CF9E63D8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1CF9E6448();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  qos_class_self();
  sub_1CF9E63B8();
  v23 = *(v14 + 48);
  if (v23(v12, 1, v13) == 1)
  {
    (*(v14 + 104))(v17, *MEMORY[0x1E69E7FA0], v13);
    if (v23(v12, 1, v13) != 1)
    {
      sub_1CEFCCC44(v12, &unk_1EC4BE380, &qword_1CFA01BA0);
    }
  }

  else
  {
    (*(v14 + 32))(v17, v12, v13);
  }

  sub_1CF9E6428();
  v24 = sub_1CF5D2970(1, v26, v30, 0, v31, v22, 0, v32, v29, v28, v27, a9);
  (*(v19 + 8))(v22, v18);
  return v24;
}

void sub_1CF5AD9F8(void (*a1)(char *, uint64_t, uint64_t, uint64_t), void (*a2)(void, void, void), uint64_t *a3)
{
  v4 = v3;
  v185 = a2;
  v186 = a3;
  v184 = a1;
  v5 = *v3;
  v6 = sub_1CF9E6118();
  v7 = *(v6 - 8);
  v187 = v6;
  v188 = v7;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v180 = &v171 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v177 = &v171 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v179 = &v171 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v178 = &v171 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v182 = &v171 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v176 = &v171 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v183 = &v171 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v181 = &v171 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v171 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v171 - v28;
  v30 = sub_1CF9E64A8();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v171 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v4[8];
  *v34 = v35;
  (*(v31 + 104))(v34, *MEMORY[0x1E69E8020], v30);
  v36 = v35;
  LOBYTE(v35) = sub_1CF9E64D8();
  (*(v31 + 8))(v34, v30);
  if ((v35 & 1) == 0)
  {
    __break(1u);
    goto LABEL_60;
  }

  if ((v4[10] & 0x40) == 0)
  {
    if ((fp_task_tracker_is_cancelled(v4[21][2]) & 1) != 0 || *(v4 + 152) == 1)
    {
      sub_1CF2CA194();
      swift_allocError();
      swift_willThrow();
      return;
    }

    v171 = v27;
    v37 = v4 + qword_1EDEBBC20;
    os_unfair_lock_lock((v4 + qword_1EDEBBC20));
    v38 = v5[77];
    v39 = v5[78];
    v40 = v5[79];
    v41 = v5[80];
    sub_1CF5D818C((v37 + 8), v195);
    v175 = type metadata accessor for FileTreeChangeAggregator();
    swift_getAssociatedTypeWitness();
    v42 = *(swift_getAssociatedConformanceWitness() + 40);
    sub_1CF9E7068();
    sub_1CF9E6708();
    os_unfair_lock_unlock(v37);
    v34 = v4 + qword_1EDEBBC28;
    os_unfair_lock_lock((v4 + qword_1EDEBBC28));
    v43 = *(v34 + 56);
    v191 = *(v34 + 40);
    v192 = v43;
    v44 = *(v34 + 88);
    v193 = *(v34 + 72);
    v194 = v44;
    v45 = *(v34 + 24);
    v189 = *(v34 + 8);
    v190 = v45;
    sub_1CF5B543C(v206);
    v46 = v206[3];
    *(v34 + 40) = v206[2];
    *(v34 + 56) = v46;
    v47 = v206[5];
    *(v34 + 72) = v206[4];
    *(v34 + 88) = v47;
    v48 = v206[1];
    *(v34 + 8) = v206[0];
    *(v34 + 24) = v48;
    if (v207)
    {
      goto LABEL_63;
    }

    v174 = type metadata accessor for FileTreeChangeAggregator();
    os_unfair_lock_unlock(v34);
    v201 = v191;
    v202 = v192;
    v203 = v193;
    v204 = v194;
    v199 = v189;
    v200 = v190;
    v49 = [objc_allocWithZone(FPLoggerScope) init];
    v50 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v51 = v49;
    v52 = sub_1CF9E6108();
    v53 = sub_1CF9E7298();
    v172 = v51;

    v54 = os_log_type_enabled(v52, v53);
    v55 = v184;
    v56 = v171;
    if (v54)
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *v57 = 138412290;
      v59 = [v172 enter];
      *(v57 + 4) = v59;
      *v58 = v59;
      _os_log_impl(&dword_1CEFC7000, v52, v53, "%@ 👁  processing ingestion", v57, 0xCu);
      sub_1CEFCCC44(v58, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v58, -1, -1);
      MEMORY[0x1D386CDC0](v57, -1, -1);
    }

    v61 = v188 + 8;
    v60 = *(v188 + 8);
    v60(v29, v187);
    v62 = sub_1CF5A08AC(v175);
    v188 = v61;
    v173 = v60;
    if (v62)
    {
      v63 = v207;
      v64 = v186;
      v5 = v187;
      v65 = v185;
    }

    else
    {
      v66 = [objc_allocWithZone(FPLoggerScope) init];
      v67 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v68 = v66;
      v69 = sub_1CF9E6108();
      v70 = sub_1CF9E7288();

      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        *v71 = 138412290;
        v73 = [v68 enter];
        *(v71 + 4) = v73;
        *v72 = v73;
        _os_log_impl(&dword_1CEFC7000, v69, v70, "%@ 👁  processing FS tree changes", v71, 0xCu);
        sub_1CEFCCC44(v72, &qword_1EC4BE350, &unk_1CF9FC3B0);
        v74 = v72;
        v60 = v173;
        MEMORY[0x1D386CDC0](v74, -1, -1);
        MEMORY[0x1D386CDC0](v71, -1, -1);
      }

      v60(v56, v187);
      v75 = v55;
      v65 = v185;
      v64 = v186;
      v76 = v207;
      sub_1CF5B3E48(v4, v75, v175, v185, v186);
      v63 = v76;
      if (v76)
      {
        v77 = fpfs_current_or_default_log();
        v78 = v178;
        sub_1CF9E6128();
        v79 = v68;
        v80 = sub_1CF9E6108();
        v81 = sub_1CF9E7288();

        if (os_log_type_enabled(v80, v81))
        {
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          *v82 = 138412290;
          v84 = [v79 leave];
          *(v82 + 4) = v84;
          *v83 = v84;
          _os_log_impl(&dword_1CEFC7000, v80, v81, "%@", v82, 0xCu);
          sub_1CEFCCC44(v83, &qword_1EC4BE350, &unk_1CF9FC3B0);
          MEMORY[0x1D386CDC0](v83, -1, -1);
          MEMORY[0x1D386CDC0](v82, -1, -1);
        }

        v85 = v187;
        v86 = v173;
        v173(v78, v187);

        v87 = fpfs_current_or_default_log();
        v88 = v179;
        sub_1CF9E6128();
        v89 = v172;
        v90 = sub_1CF9E6108();
        v91 = sub_1CF9E7298();

        if (!os_log_type_enabled(v90, v91))
        {

          v86(v88, v85);
          goto LABEL_57;
        }

        v92 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        *v92 = 138412290;
        v94 = [v89 leave];
        *(v92 + 4) = v94;
        *v93 = v94;
        _os_log_impl(&dword_1CEFC7000, v90, v91, "%@", v92, 0xCu);
        sub_1CEFCCC44(v93, &qword_1EC4BE350, &unk_1CF9FC3B0);
        MEMORY[0x1D386CDC0](v93, -1, -1);
        MEMORY[0x1D386CDC0](v92, -1, -1);

        v95 = v88;
        v96 = v187;
LABEL_30:
        v86(v95, v96);
LABEL_57:

        (*(*(v174 - 8) + 8))(&v199);
        (*(*(v175 - 8) + 8))(v195);
        return;
      }

      v97 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v98 = v68;
      v99 = sub_1CF9E6108();
      v100 = sub_1CF9E7288();

      if (os_log_type_enabled(v99, v100))
      {
        v101 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        *v101 = 138412290;
        v103 = [v98 leave];
        *(v101 + 4) = v103;
        *v102 = v103;
        _os_log_impl(&dword_1CEFC7000, v99, v100, "%@", v101, 0xCu);
        sub_1CEFCCC44(v102, &qword_1EC4BE350, &unk_1CF9FC3B0);
        v104 = v102;
        v60 = v173;
        MEMORY[0x1D386CDC0](v104, -1, -1);
        v105 = v101;
        v64 = v186;
        MEMORY[0x1D386CDC0](v105, -1, -1);
      }

      v5 = v187;
      v60(v181, v187);
    }

    if ((sub_1CF5A08AC(v174) & 1) == 0)
    {
      v106 = [objc_allocWithZone(FPLoggerScope) init];
      v107 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v108 = v106;
      v109 = sub_1CF9E6108();
      v110 = sub_1CF9E7288();

      if (os_log_type_enabled(v109, v110))
      {
        v111 = swift_slowAlloc();
        v112 = v5;
        v113 = swift_slowAlloc();
        *v111 = 138412290;
        v114 = [v108 enter];
        *(v111 + 4) = v114;
        *v113 = v114;
        _os_log_impl(&dword_1CEFC7000, v109, v110, "%@ 👁  processing FP tree changes", v111, 0xCu);
        sub_1CEFCCC44(v113, &qword_1EC4BE350, &unk_1CF9FC3B0);
        v115 = v113;
        v5 = v112;
        v65 = v185;
        MEMORY[0x1D386CDC0](v115, -1, -1);
        MEMORY[0x1D386CDC0](v111, -1, -1);
      }

      v173(v183, v5);
      v116 = sub_1CF057B28();
      sub_1CF5B3E48(v116, v184, v174, v65, v186);
      if (v63)
      {

        v117 = fpfs_current_or_default_log();
        v118 = v177;
        sub_1CF9E6128();
        v119 = v108;
        v120 = sub_1CF9E6108();
        v121 = sub_1CF9E7288();

        if (os_log_type_enabled(v120, v121))
        {
          v122 = swift_slowAlloc();
          v123 = v5;
          v124 = swift_slowAlloc();
          *v122 = 138412290;
          v125 = [v119 leave];
          *(v122 + 4) = v125;
          *v124 = v125;
          _os_log_impl(&dword_1CEFC7000, v120, v121, "%@", v122, 0xCu);
          sub_1CEFCCC44(v124, &qword_1EC4BE350, &unk_1CF9FC3B0);
          v126 = v124;
          v5 = v123;
          MEMORY[0x1D386CDC0](v126, -1, -1);
          MEMORY[0x1D386CDC0](v122, -1, -1);
        }

        v127 = v118;
        v86 = v173;
        v173(v127, v5);

        v128 = fpfs_current_or_default_log();
        v129 = v180;
        sub_1CF9E6128();
        v89 = v172;
        v130 = sub_1CF9E6108();
        v131 = sub_1CF9E7298();

        if (!os_log_type_enabled(v130, v131))
        {

          v86(v129, v5);
          goto LABEL_57;
        }

        v132 = swift_slowAlloc();
        v133 = v5;
        v134 = swift_slowAlloc();
        *v132 = 138412290;
        v135 = [v89 leave];
        *(v132 + 4) = v135;
        *v134 = v135;
        _os_log_impl(&dword_1CEFC7000, v130, v131, "%@", v132, 0xCu);
        sub_1CEFCCC44(v134, &qword_1EC4BE350, &unk_1CF9FC3B0);
        MEMORY[0x1D386CDC0](v134, -1, -1);
        MEMORY[0x1D386CDC0](v132, -1, -1);

        v95 = v180;
        v96 = v133;
        goto LABEL_30;
      }

      v136 = fpfs_current_or_default_log();
      v137 = v176;
      sub_1CF9E6128();
      v138 = v108;
      v139 = sub_1CF9E6108();
      v140 = sub_1CF9E7288();

      if (os_log_type_enabled(v139, v140))
      {
        v141 = swift_slowAlloc();
        v142 = v5;
        v143 = swift_slowAlloc();
        *v141 = 138412290;
        v144 = [v138 leave];
        *(v141 + 4) = v144;
        *v143 = v144;
        _os_log_impl(&dword_1CEFC7000, v139, v140, "%@", v141, 0xCu);
        sub_1CEFCCC44(v143, &qword_1EC4BE350, &unk_1CF9FC3B0);
        v145 = v143;
        v5 = v142;
        v65 = v185;
        MEMORY[0x1D386CDC0](v145, -1, -1);
        v146 = v141;
        v137 = v176;
        MEMORY[0x1D386CDC0](v146, -1, -1);
      }

      v173(v137, v5);
      v64 = v186;
    }

    if ((sub_1CF5A08AC(v175) & 1) == 0 || (sub_1CF5A08AC(v174) & 1) == 0)
    {
      sub_1CF5A60D0(2, 2, 1);
    }

    if (*(v4[20] + 48) == 1)
    {
      v147 = swift_allocObject();
      *(v147 + 16) = v65;
      *(v147 + 24) = v64;
      v5 = v64;
      v148 = v195[3];
      *(v147 + 64) = v195[2];
      *(v147 + 80) = v148;
      v149 = v197;
      *(v147 + 96) = v196;
      *(v147 + 112) = v149;
      v150 = v195[1];
      *(v147 + 32) = v195[0];
      *(v147 + 48) = v150;
      *(v147 + 128) = v4;
      v151 = (*v4)[56];
      (*(*(v175 - 8) + 16))(v206, v195);

      v151("processPendingIngestion(with:)", 30, 2, 0, 1, nullsub_1, 0, sub_1CF5DF158, v147);

LABEL_46:
      if (*(v4[20] + 49) == 1)
      {
        v155 = swift_allocObject();
        *(v155 + 16) = v65;
        *(v155 + 24) = v5;
        v156 = v202;
        *(v155 + 64) = v201;
        *(v155 + 80) = v156;
        v157 = v204;
        *(v155 + 96) = v203;
        *(v155 + 112) = v157;
        v158 = v200;
        *(v155 + 32) = v199;
        *(v155 + 48) = v158;
        *(v155 + 128) = v4;
        v159 = (*v4)[56];

        (*(*(v174 - 8) + 16))(v206, &v199);
        v159("processPendingIngestion(with:)", 30, 2, 1, 1, nullsub_1, 0, sub_1CF5DF118, v155);

LABEL_54:
        v163 = v187;
        v164 = fpfs_current_or_default_log();
        v165 = v182;
        sub_1CF9E6128();
        v89 = v172;
        v166 = sub_1CF9E6108();
        v167 = sub_1CF9E7298();

        if (os_log_type_enabled(v166, v167))
        {
          v168 = swift_slowAlloc();
          v169 = swift_slowAlloc();
          *v168 = 138412290;
          v170 = [v89 leave];
          *(v168 + 4) = v170;
          *v169 = v170;
          _os_log_impl(&dword_1CEFC7000, v166, v167, "%@", v168, 0xCu);
          sub_1CEFCCC44(v169, &qword_1EC4BE350, &unk_1CF9FC3B0);
          MEMORY[0x1D386CDC0](v169, -1, -1);
          MEMORY[0x1D386CDC0](v168, -1, -1);
        }

        v173(v165, v163);
        goto LABEL_57;
      }

      v207 = v63;
      v160 = *(&v203 + 1);
      v205 = *(&v203 + 1);
      v34 = *(*(&v203 + 1) + 16);

      if (!v34)
      {
LABEL_53:
        sub_1CEFCCC44(&v205, &unk_1EC4C1B90, &unk_1CFA168F0);
        goto LABEL_54;
      }

      v161 = 0;
      while (v161 < *(v160 + 16))
      {
        v162 = swift_allocObject();
        *(v162 + 16) = *(v160 + 32 + 16 * v161);

        v5 = objc_autoreleasePoolPush();
        ((*v4)[313])(sub_1CF5E14AC, v162);
        if (v207)
        {
          goto LABEL_62;
        }

        ++v161;
        objc_autoreleasePoolPop(v5);

        if (v34 == v161)
        {
          goto LABEL_53;
        }
      }

      goto LABEL_61;
    }

    v207 = v63;
    v152 = *(&v196 + 1);
    v198 = *(&v196 + 1);
    v34 = *(*(&v196 + 1) + 16);

    if (!v34)
    {
LABEL_45:
      sub_1CEFCCC44(&v198, &unk_1EC4C1B90, &unk_1CFA168F0);
      v63 = v207;
      v65 = v185;
      v5 = v186;
      goto LABEL_46;
    }

    v153 = 0;
    while (v153 < *(v152 + 16))
    {
      v154 = swift_allocObject();
      *(v154 + 16) = *(v152 + 32 + 16 * v153);

      v5 = objc_autoreleasePoolPush();
      ((*v4)[313])(sub_1CF5E14AC, v154);
      if (v207)
      {
        goto LABEL_62;
      }

      ++v153;
      objc_autoreleasePoolPop(v5);

      if (v34 == v153)
      {
        goto LABEL_45;
      }
    }

LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    objc_autoreleasePoolPop(v5);
    __break(1u);
LABEL_63:
    os_unfair_lock_unlock(v34);
    __break(1u);
  }
}

uint64_t sub_1CF5AEFB4()
{
  sub_1CF47FADC(v0, &v5);
  result = v11;
  if (v11 > 4u)
  {
    if (v11 <= 6u)
    {
      if (v11 == 5)
      {
        sub_1CF47FB38(&v5);
        return 7;
      }

      else
      {
        sub_1CF47FB38(&v5);
        return 8;
      }
    }

    else
    {
      v2 = v5;
      if (v11 == 7)
      {

        if (v2)
        {
          return 10;
        }

        else
        {
          return 9;
        }
      }

      else if (v11 == 8)
      {
        sub_1CF47FB38(&v5);
        return 117049988;
      }

      else if (v9 | v10 | v5 | v8 | v7 | v6)
      {
        v3 = v9 | v10 | v8 | v7 | v6;
        if (v5 != 1 || v3)
        {
          if (v5 != 2 || v3)
          {
            if (v3)
            {
              v4 = 0;
            }

            else
            {
              v4 = v5 == 3;
            }

            if (v4)
            {
              return 112600553;
            }

            else
            {
              return 11;
            }
          }

          else
          {
            return 111342181;
          }
        }

        else
        {
          return 105155714;
        }
      }

      else
      {
        return 4;
      }
    }
  }

  else if (v11 <= 1u)
  {
    if (v11)
    {
      sub_1CF47FB38(&v5);
      return 1;
    }
  }

  else if (v11 == 2)
  {
    sub_1CF47FB38(&v5);
    return 2;
  }

  else if (v11 == 3)
  {
    return 3;
  }

  else
  {

    sub_1CEFCCC44(&v5, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return 5;
  }

  return result;
}

unint64_t sub_1CF5AF148()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CF9FA450;
  v2 = *MEMORY[0x1E696A578];
  *(inited + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  *(inited + 40) = v3;
  sub_1CF47FADC(v0, v18);
  v4 = sub_1CF9E6948();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  v6 = sub_1CF4E04E8(inited);
  swift_setDeallocating();
  sub_1CEFCCC44(inited + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
  sub_1CF47FADC(v0, v18);
  if (v20 - 1 > 1)
  {
    sub_1CF47FB38(v18);
  }

  else
  {
    v7 = v18[0];
    v8 = *MEMORY[0x1E696AA08];
    v9 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v11 = v10;
    swift_getErrorValue();
    v19 = v17;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v18);
    (*(*(v17 - 8) + 16))(boxed_opaque_existential_0, v16, v17);
    sub_1CEFE9EB8(v18, v15);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1CF1D154C(v15, v9, v11, isUniquelyReferenced_nonNull_native);
  }

  return v6;
}

uint64_t sub_1CF5AF324(uint64_t a1)
{
  v2 = sub_1CF5E1458();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1CF5AF360(uint64_t a1)
{
  v2 = sub_1CF5E1458();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

unint64_t sub_1CF5AF39C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1CF5DA524(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1CF5AF3C8(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  v5 = sub_1CF9E75D8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v25 - v8;
  v10 = *(v4 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v2 + *(a1 + 40));
  if (!v16)
  {
    v26 = 0;
    v27 = 0xE000000000000000;
    sub_1CF9E7948();
    MEMORY[0x1D3868CC0](0xD00000000000001ALL, 0x80000001CFA464B0);
    v20 = *(a1 + 24);
    swift_getAssociatedTypeWitness();
    v21 = *(swift_getAssociatedConformanceWitness() + 16);
    sub_1CF9E7FE8();
    return v26;
  }

  (*(v6 + 16))(v9, v2 + *(a1 + 36), v5, v13);
  if ((*(v10 + 48))(v9, 1, v4) == 1)
  {
    v17 = *(v6 + 8);

    v17(v9, v5);
    v26 = 0;
    v27 = 0xE000000000000000;
    MEMORY[0x1D3868CC0](0x616863206D657469, 0xED0000206465676ELL);
    v18 = *(a1 + 24);
    swift_getAssociatedTypeWitness();
    v19 = *(swift_getAssociatedConformanceWitness() + 16);
    sub_1CF9E7FE8();

    return v26;
  }

  (*(v10 + 32))(v15, v9, v4);
  v26 = 0;
  v27 = 0xE000000000000000;

  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x616863206D657469, 0xED0000206465676ELL);
  v23 = *(*(a1 + 24) + 8);
  sub_1CF9E7FE8();
  MEMORY[0x1D3868CC0](0x3A73656C7572202CLL, 0xE900000000000020);
  v25[1] = v16;
  type metadata accessor for JobLockAggregator();
  swift_getWitnessTable();
  sub_1CF9E7FE8();

  v24 = v26;
  (*(v10 + 8))(v15, v4);
  return v24;
}

uint64_t sub_1CF5AF7A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_1CF9E75D8();
  type metadata accessor for JobLockAggregator();
  sub_1CF9E75D8();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v11 = *(TupleTypeMetadata3 + 48);
  v12 = *(TupleTypeMetadata3 + 64);
  (*(*(AssociatedTypeWitness - 8) + 16))(a2, v3, AssociatedTypeWitness);
  (*(*(v9 - 8) + 16))(a2 + v11, v3 + *(a1 + 36), v9);
  *(a2 + v12) = *(v3 + *(a1 + 40));
  type metadata accessor for FileTreeWriter.FileTreeChange();
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_1CF5AF91C(unsigned __int8 a1)
{
  sub_1CF9E81D8();
  MEMORY[0x1D386A470](a1);
  return sub_1CF9E8228();
}

uint64_t sub_1CF5AF980()
{
  sub_1CF9E81D8();
  sub_1CF0BA820(v2, *v0);
  return sub_1CF9E8228();
}

uint64_t sub_1CF5AF9C0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *(v3 + 16);
  v7 = *(a3 + 16);
  v6 = *(a3 + 24);
  swift_getAssociatedTypeWitness();
  type metadata accessor for FileTreeChangeAggregator.Change();
  v8 = *(swift_getAssociatedConformanceWitness() + 40);
  sub_1CF9E66B8();
  v9 = *(v4 + 88);
  v10 = *(v4 + 104);

  type metadata accessor for TestingOperation();
  swift_getWitnessTable();
  v11 = sub_1CF9E6B88();

  return v11;
}

unint64_t sub_1CF5AFB4C@<X0>(char *a1@<X0>, void *a2@<X1>, void (*a3)(char *, uint64_t, uint64_t, uint64_t)@<X2>, void (*a4)(void, void, void, void)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v77 = a4;
  v78 = a5;
  v75 = a6;
  v76 = a3;
  v74 = *a2;
  v8 = v74[12];
  v73 = v74[10];
  v9 = type metadata accessor for FileTreeChangeAggregator.Change();
  v72 = *(v9 - 8);
  v10 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v62 - v14;
  v16 = sub_1CF9E6118();
  v71 = *(v16 - 1);
  v17 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v9 + 36);
  v21 = v83;
  result = sub_1CF614EB4(a1, &a1[v20], *&a1[*(v9 + 40)], a2, v76, v77, v78);
  if (!v21)
  {
    v69 = v12;
    v70 = v20;
    v26 = v72;
    v76 = v16;
    v77 = v8;
    v83 = a1;
    v78 = 0;
    if (v25 == 2)
    {
      v27 = v19;
      v28 = v24;
      v29 = v23;
      v30 = result;
      v31 = fpfs_current_or_default_log();
      v32 = v27;
      sub_1CF9E6128();
      v33 = v15;
      v34 = v15;
      v35 = v9;
      v64 = *(v26 + 16);
      v64(v34, v83, v9);

      v66 = v32;
      v36 = sub_1CF9E6108();
      v37 = sub_1CF9E7298();
      v67 = v28;
      v68 = v30;
      v70 = v29;
      sub_1CF5DFDEC(v30, v29, v28, 2u);
      v65 = v37;
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v79 = v39;
        *v38 = 136315394;
        v63 = v36;
        v40 = v69;
        v64(v69, v33, v35);
        v41 = *(v26 + 8);
        v41(v33, v35);
        v42 = sub_1CF5AF3C8(v35);
        v44 = v43;
        v41(v40, v35);
        v45 = sub_1CEFD0DF0(v42, v44, &v79);

        v46 = v38;
        *(v38 + 4) = v45;
        *(v38 + 12) = 2080;
        v47 = v68;
        v48 = v70;
        v49 = sub_1CEFD0DF0(v68, v70, &v79);
        sub_1CF5DFDEC(v47, v48, v67, 2u);
        *(v46 + 14) = v49;
        v36 = v63;
        _os_log_impl(&dword_1CEFC7000, v63, v65, "fetch metadata for pending event: %s, reason: %s", v46, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1D386CDC0](v39, -1, -1);
        MEMORY[0x1D386CDC0](v46, -1, -1);
      }

      else
      {
        (*(v26 + 8))(v33, v35);
        sub_1CF5DFDEC(v68, v70, v67, 2u);
      }

      (*(v71 + 8))(v66, v76);
      v51 = v73;
      v59 = v74;
      v50 = v77;
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v55 = v75;
      (*(*(AssociatedTypeWitness - 8) + 16))(v75, v83, AssociatedTypeWitness);
      v57 = v59[11];
      v58 = v59[13];
      v79 = v51;
      v80 = v57;
      v81 = v50;
      v82 = v58;
      type metadata accessor for DirectionalTestingOperation();
    }

    else
    {
      sub_1CF5DFDEC(result, v23, v24, v25);
      v50 = v77;
      v51 = v73;
      v52 = swift_getAssociatedTypeWitness();
      v53 = sub_1CF9E75D8();
      v54 = *(swift_getTupleTypeMetadata2() + 48);
      v55 = v75;
      v56 = v83;
      (*(*(v52 - 8) + 16))(v75, v83, v52);
      (*(*(v53 - 8) + 16))(v55 + v54, &v56[v70], v53);
      v57 = v74[11];
      v58 = v74[13];
      v79 = v51;
      v80 = v57;
      v81 = v50;
      v82 = v58;
      type metadata accessor for DirectionalTestingOperation();
    }

    swift_storeEnumTagMultiPayload();
    v79 = v51;
    v80 = v57;
    v81 = v50;
    v82 = v58;
    type metadata accessor for TestingOperation();
    swift_storeEnumTagMultiPayload();
    v79 = v51;
    v80 = v57;
    v81 = v50;
    v82 = v58;
    v61 = type metadata accessor for TestingOperation();
    return (*(*(v61 - 8) + 56))(v55, 0, 1, v61);
  }

  return result;
}

uint64_t sub_1CF5B01A0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v517 = a5;
  v520 = a4;
  v518 = a2;
  v9 = *a1;
  v10 = type metadata accessor for SyncState();
  v464 = *(v10 - 8);
  v11 = *(v464 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v458 = &v457 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v519 = a1;
  v13 = *(v9 + 88);
  v14 = v9;
  v463 = a3;
  v15 = *(a3 + 24);
  v17 = *(v14 + 104);
  v534 = *(a3 + 16);
  v16 = v534;
  v535 = v13;
  v536 = v15;
  v537 = v17;
  v467 = type metadata accessor for PersistenceTrigger();
  v466 = *(v467 - 8);
  v18 = *(v466 + 64);
  MEMORY[0x1EEE9AC00](v467);
  v465 = &v457 - v19;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v487 = sub_1CF9E75D8();
  v469 = *(v487 - 8);
  v21 = *(v469 + 64);
  v22 = MEMORY[0x1EEE9AC00](v487);
  v491 = &v457 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v486 = &v457 - v24;
  v25 = type metadata accessor for SnapshotItem();
  v474 = sub_1CF9E75D8();
  v473 = *(v474 - 8);
  v26 = *(v473 + 64);
  v27 = MEMORY[0x1EEE9AC00](v474);
  v478 = &v457 - v28;
  v476 = v25;
  v472 = *(v25 - 8);
  v29 = *(v472 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v475 = &v457 - v30;
  v534 = v16;
  v535 = v13;
  v513 = v13;
  v536 = v15;
  v537 = v17;
  v514 = v17;
  v480 = type metadata accessor for ReconciliationMutation();
  v471 = *(v480 - 8);
  v31 = *(v471 + 64);
  MEMORY[0x1EEE9AC00](v480);
  v481 = &v457 - v32;
  v477 = sub_1CF9E75D8();
  v470 = *(v477 - 8);
  v33 = *(v470 + 64);
  MEMORY[0x1EEE9AC00](v477);
  v479 = &v457 - v34;
  v524 = swift_getTupleTypeMetadata2();
  v504 = sub_1CF9E75D8();
  v522 = *(v504 - 8);
  v35 = *(v522 + 8);
  v36 = MEMORY[0x1EEE9AC00](v504);
  v511 = (&v457 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v36);
  v503 = &v457 - v38;
  v527 = sub_1CF9E5CF8();
  v525 = *(v527 - 8);
  v39 = *(v525 + 64);
  v40 = MEMORY[0x1EEE9AC00](v527);
  v526 = &v457 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v506 = *(AssociatedTypeWitness - 8);
  v42 = *(v506 + 64);
  v43 = MEMORY[0x1EEE9AC00](v40);
  v485 = &v457 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x1EEE9AC00](v43);
  v492 = &v457 - v46;
  v47 = MEMORY[0x1EEE9AC00](v45);
  v490 = &v457 - v48;
  v49 = MEMORY[0x1EEE9AC00](v47);
  v521 = &v457 - v50;
  v51 = MEMORY[0x1EEE9AC00](v49);
  v53 = (&v457 - v52);
  v54 = MEMORY[0x1EEE9AC00](v51);
  v505 = &v457 - v55;
  MEMORY[0x1EEE9AC00](v54);
  v530 = (&v457 - v56);
  v508 = sub_1CF9E6118();
  v523 = *(v508 - 8);
  v57 = *(v523 + 64);
  v58 = MEMORY[0x1EEE9AC00](v508);
  v60 = &v457 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = MEMORY[0x1EEE9AC00](v58);
  v63 = &v457 - v62;
  v64 = MEMORY[0x1EEE9AC00](v61);
  v468 = &v457 - v65;
  v66 = MEMORY[0x1EEE9AC00](v64);
  v461 = &v457 - v67;
  v68 = MEMORY[0x1EEE9AC00](v66);
  v460 = &v457 - v69;
  v70 = MEMORY[0x1EEE9AC00](v68);
  v484 = &v457 - v71;
  v72 = MEMORY[0x1EEE9AC00](v70);
  v74 = (&v457 - v73);
  MEMORY[0x1EEE9AC00](v72);
  v76 = &v457 - v75;
  v512 = v15;
  v77 = type metadata accessor for FileTreeWriter.FileTreeChange();
  v78 = *(*(v77 - 8) + 64);
  v79 = MEMORY[0x1EEE9AC00](v77);
  v496 = &v457 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = MEMORY[0x1EEE9AC00](v79);
  v83 = &v457 - v82;
  v84 = MEMORY[0x1EEE9AC00](v81);
  v88 = v483;
  v89 = &v457 - v85;
  v482 = v519[4];
  v90 = *(v483 + 32);
  v532 = AssociatedTypeWitness;
  v515 = v16;
  v497 = v84;
  v531 = v53;
  v509 = v74;
  v462 = v60;
  v459 = v63;
  if (v90 == 2)
  {
    v91 = v524;
    goto LABEL_3;
  }

  v149 = *(v483 + 40);
  v150 = *(v483 + 48);
  LODWORD(v528) = v90;
  *v89 = v90 & 1;
  v502 = v149;
  *(v89 + 1) = v149;
  LODWORD(v501) = v150;
  v89[16] = v150 & 1;
  v151 = (&v457 - v85);
  v152 = v86;
  v153 = v87;
  swift_storeEnumTagMultiPayload();
  v154 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v155 = *(v153 + 16);
  v516 = v151;
  v155(v83, v151, v152);
  v156 = sub_1CF9E6108();
  v157 = sub_1CF9E72A8();
  v158 = os_log_type_enabled(v156, v157);
  v529 = v5;
  v510 = v153;
  if (v158)
  {
    v159 = swift_slowAlloc();
    v507 = swift_slowAlloc();
    v534 = v507;
    *v159 = 136446210;
    LODWORD(v500) = v157;
    v160 = v496;
    v155(v496, v83, v152);
    v161 = *(v153 + 8);
    (v161)(v83, v152);
    v162 = sub_1CF06AB58(v152);
    v164 = v163;
    (v161)(v160, v152);
    v165 = sub_1CEFD0DF0(v162, v164, &v534);

    *(v159 + 4) = v165;
    _os_log_impl(&dword_1CEFC7000, v156, v500, "%{public}s", v159, 0xCu);
    v166 = v507;
    __swift_destroy_boxed_opaque_existential_1(v507);
    MEMORY[0x1D386CDC0](v166, -1, -1);
    MEMORY[0x1D386CDC0](v159, -1, -1);
  }

  else
  {
    v161 = *(v153 + 8);
    (v161)(v83, v152);
  }

  (*(v523 + 8))(v76, v508);
  v222 = v525;
  v507 = v161;
  if ((v528 & 1) == 0)
  {
    v534 = v515;
    v535 = v513;
    v536 = v512;
    v537 = v514;
    type metadata accessor for Ingestion.FetchItemMetadata();
    sub_1CF046AB4();
    v240 = v526;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v242 = v241;
    v243 = *(v222 + 8);
    result = v243(v240, v527);
    v244 = v242 * 1000000000.0;
    if (COERCE__INT64(fabs(v242 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_181:
      __break(1u);
      goto LABEL_182;
    }

    if (v244 <= -9.22337204e18)
    {
LABEL_182:
      __break(1u);
      goto LABEL_183;
    }

    if (v244 >= 9.22337204e18)
    {
LABEL_183:
      __break(1u);
      goto LABEL_184;
    }

    v245 = v505;
    v246 = sub_1CF656F5C(v505, 0, v244, 0x8000);
    v247 = *(v506 + 8);
    v247(v245, v532);
    v248 = v526;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v250 = v249;
    result = v243(v248, v527);
    v251 = v250 * 1000000000.0;
    if (COERCE__INT64(fabs(v250 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_184:
      __break(1u);
      goto LABEL_185;
    }

    if (v251 <= -9.22337204e18)
    {
LABEL_185:
      __break(1u);
      goto LABEL_186;
    }

    if (v251 >= 9.22337204e18)
    {
LABEL_186:
      __break(1u);
LABEL_187:
      __break(1u);
LABEL_188:
      __break(1u);
LABEL_189:
      __break(1u);
      goto LABEL_190;
    }

    v252 = v529;
    sub_1CF5215C0(v246);
    v6 = v252;
    if (v252)
    {
      goto LABEL_122;
    }

    sub_1CF685B34();
    v253 = v526;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v255 = v254;
    result = v243(v253, v527);
    v256 = v255 * 1000000000.0;
    if (COERCE__INT64(fabs(v255 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_190:
      __break(1u);
      goto LABEL_191;
    }

    if (v256 <= -9.22337204e18)
    {
LABEL_191:
      __break(1u);
      goto LABEL_192;
    }

    if (v256 >= 9.22337204e18)
    {
LABEL_192:
      __break(1u);
      goto LABEL_193;
    }

    v257 = v505;
    v258 = sub_1CF656F5C(v505, 0, v256, 0x8000);
    v247(v257, v532);
    v259 = v526;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v261 = v260;
    result = v243(v259, v527);
    v262 = v261 * 1000000000.0;
    if (COERCE__INT64(fabs(v261 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_193:
      __break(1u);
      goto LABEL_194;
    }

    v263 = v483;
    v91 = v524;
    v74 = v509;
    if (v262 <= -9.22337204e18)
    {
LABEL_194:
      __break(1u);
      goto LABEL_195;
    }

    if (v262 >= 9.22337204e18)
    {
LABEL_195:
      __break(1u);
      goto LABEL_196;
    }

    sub_1CF5215C0(v258);

    v265 = v482;
    goto LABEL_127;
  }

  v223 = v519[3];
  sub_1CF046AB4();
  v224 = v515;
  v225 = v513;
  v534 = v515;
  v535 = v513;
  v226 = v512;
  v227 = v514;
  v536 = v512;
  v537 = v514;
  type metadata accessor for ItemJob();
  MetatypeMetadata = swift_getMetatypeMetadata();
  v229 = sub_1CF656CD8(MetatypeMetadata, MetatypeMetadata);
  v230 = *(v229 + 52);
  v231 = (*(v229 + 48) + 7) & 0x1FFFFFFF8;
  swift_allocObject();
  v232 = sub_1CF9E6D68();
  v233 = v224;
  v234 = v232;
  v534 = v233;
  v535 = v225;
  v536 = v226;
  v537 = v227;
  v235 = v530;
  *v236 = type metadata accessor for Ingestion.DeferredRescan();
  v237 = sub_1CF045898(v234);
  v238 = v529;
  v239 = (*(*v223 + 312))(v235, v237, v518, v520, *(v517 + 8));
  if (v238)
  {

    (*(v506 + 8))(v235, v532);
LABEL_123:
    v219 = v516;
    v220 = v497;
    v221 = &v539;
    return (*(v221 - 32))(v219, v220);
  }

  v529 = 0;
  v316 = *(v506 + 8);
  v317 = v239;
  v316(v235, v532);

  v534 = v317;
  sub_1CF9E6E58();
  swift_getWitnessTable();
  sub_1CF9E7118();
  v318 = v533;

  if (v318)
  {
    v320 = *(v318 + 96);
    v319 = *(v318 + 104);
    v321 = *(v318 + 112);
    sub_1CF03C530(v320, v319, *(v318 + 112));

    if (v321 != 3)
    {
      v74 = v509;
      if (v321 == 4)
      {
        sub_1CF03D7A8(v320, v319, 4u);
        if (!(v320 & 0xFFFFFFFFFFFFFFFELL | v319))
        {
          goto LABEL_115;
        }
      }

      else
      {
        sub_1CF03D7A8(v320, v319, v321);
      }

      return (v507)(v516, v497);
    }

    sub_1CF03D7A8(v320, v319, 3u);
  }

  v74 = v509;
LABEL_115:
  sub_1CF046AB4();
  v354 = v526;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v356 = v355;
  v357 = *(v222 + 8);
  result = v357(v354, v527);
  v358 = v356 * 1000000000.0;
  if (COERCE__INT64(fabs(v356 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_196:
    __break(1u);
    goto LABEL_197;
  }

  if (v358 <= -9.22337204e18)
  {
LABEL_197:
    __break(1u);
    goto LABEL_198;
  }

  if (v358 >= 9.22337204e18)
  {
LABEL_198:
    __break(1u);
    goto LABEL_199;
  }

  v359 = v505;
  sub_1CF656F44(v505, 0, v358, 0x8000);
  v316(v359, v532);
  v360 = sub_1CF052548(0x20000);

  v361 = v526;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v363 = v362;
  result = v357(v361, v527);
  v364 = v363 * 1000000000.0;
  if (COERCE__INT64(fabs(v363 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_199:
    __break(1u);
    goto LABEL_200;
  }

  v365 = v529;
  v263 = v483;
  v91 = v524;
  if (v364 <= -9.22337204e18)
  {
LABEL_200:
    __break(1u);
    goto LABEL_201;
  }

  if (v364 >= 9.22337204e18)
  {
LABEL_201:
    __break(1u);
LABEL_202:
    __break(1u);
LABEL_203:
    __break(1u);
LABEL_204:
    __break(1u);
    goto LABEL_205;
  }

  sub_1CF5215C0(v360);
  v6 = v365;
  if (v365)
  {
LABEL_122:

    goto LABEL_123;
  }

  v265 = v482;
  v366 = *(**(v482 + 16) + 920);

  v366(v367);

LABEL_127:
  v368 = (*(**(v265 + 16) + 440))(v264);
  v369 = sub_1CF953FB8(v502, v501 & 1);
  sub_1CF5DD734(v368, v369, *(v265 + 32));

  v370 = v510;
  (v507)(v516, v497);
  v87 = v370;
  AssociatedTypeWitness = v532;
  v88 = v263;
LABEL_3:
  v92 = *(v88 + 56);
  v93 = *(v92 + 64);
  v489 = v92 + 64;
  v94 = 1 << *(v92 + 32);
  v95 = -1;
  if (v94 < 64)
  {
    v95 = ~(-1 << v94);
  }

  v96 = v95 & v93;
  v488 = (v94 + 63) >> 6;
  v502 = (v91 - 8);
  v516 = (v506 + 16);
  v528 = (v506 + 32);
  v501 = (v522 + 32);
  v530 = (v506 + 8);
  v507 = (v523 + 8);
  v494 = (v87 + 8);
  v525 += 8;
  v498 = v92;

  v97 = 0;
  *&v98 = 136446210;
  v493 = v98;
  v99 = v511;
  while (2)
  {
    v100 = v521;
    if (v96)
    {
      v529 = v6;
      v101 = v97;
      goto LABEL_15;
    }

    if (v488 <= v97 + 1)
    {
      v102 = v97 + 1;
    }

    else
    {
      v102 = v488;
    }

    do
    {
      v101 = v97 + 1;
      if (__OFADD__(v97, 1))
      {
        __break(1u);
LABEL_111:
        v339 = fpfs_current_or_default_log();
        v340 = v461;
        sub_1CF9E6128();
        v341 = sub_1CF9E6108();
        v342 = sub_1CF9E7298();
        v343 = os_log_type_enabled(v341, v342);
        v323 = v519;
        if (v343)
        {
          v344 = swift_slowAlloc();
          v531 = swift_slowAlloc();
          v534 = v531;
          *v344 = v493;
          v345 = v323;
          v346 = v496;
          v347 = v497;
          swift_storeEnumTagMultiPayload();
          v348 = sub_1CF06AB58(v347);
          v350 = v349;
          v351 = v346;
          v323 = v345;
          (*v494)(v351, v347);
          v352 = sub_1CEFD0DF0(v348, v350, &v534);

          *(v344 + 4) = v352;
          _os_log_impl(&dword_1CEFC7000, v341, v342, "discarded %{public}s", v344, 0xCu);
          v353 = v531;
          __swift_destroy_boxed_opaque_existential_1(v531);
          v96 = v517;
          MEMORY[0x1D386CDC0](v353, -1, -1);
          MEMORY[0x1D386CDC0](v344, -1, -1);

          (*v507)(v461, v508);
        }

        else
        {

          (*v507)(v340, v508);
        }

        v324 = v468;
        v373 = *(**(v482 + 16) + 920);

        v373(v374);

LABEL_134:
        v375 = *(v483 + 65);
        if (v375 == 2)
        {
          v389 = fpfs_current_or_default_log();
          v390 = v459;
          sub_1CF9E6128();
          v391 = sub_1CF9E6108();
          v392 = sub_1CF9E7298();
          if (os_log_type_enabled(v391, v392))
          {
            v393 = swift_slowAlloc();
            v529 = v393;
            v531 = swift_slowAlloc();
            v534 = v531;
            *v393 = v493;
            v394 = v323;
            v395 = v496;
            v396 = v497;
            swift_storeEnumTagMultiPayload();
            v397 = sub_1CF06AB58(v396);
            v399 = v398;
            v400 = v395;
            v323 = v394;
            (*v494)(v400, v396);
            v401 = sub_1CEFD0DF0(v397, v399, &v534);

            v402 = v529;
            *(v529 + 1) = v401;
            v403 = v402;
            _os_log_impl(&dword_1CEFC7000, v391, v392, "discarded %{public}s", v402, 0xCu);
            v404 = v531;
            __swift_destroy_boxed_opaque_existential_1(v531);
            v96 = v517;
            MEMORY[0x1D386CDC0](v404, -1, -1);
            MEMORY[0x1D386CDC0](v403, -1, -1);
          }

          result = (*v507)(v390, v508);
        }

        else if (v375 == 1)
        {
          v376 = fpfs_current_or_default_log();
          sub_1CF9E6128();
          v377 = sub_1CF9E6108();
          v378 = sub_1CF9E7298();
          if (os_log_type_enabled(v377, v378))
          {
            v379 = swift_slowAlloc();
            v531 = swift_slowAlloc();
            v534 = v531;
            *v379 = v493;
            v380 = v323;
            v381 = v496;
            v382 = v497;
            swift_storeEnumTagMultiPayload();
            v383 = sub_1CF06AB58(v382);
            v385 = v384;
            v386 = v381;
            v323 = v380;
            (*v494)(v386, v382);
            v387 = sub_1CEFD0DF0(v383, v385, &v534);

            *(v379 + 4) = v387;
            _os_log_impl(&dword_1CEFC7000, v377, v378, "%{public}s", v379, 0xCu);
            v388 = v531;
            __swift_destroy_boxed_opaque_existential_1(v531);
            v96 = v517;
            MEMORY[0x1D386CDC0](v388, -1, -1);
            MEMORY[0x1D386CDC0](v379, -1, -1);

            (*v507)(v468, v508);
          }

          else
          {

            (*v507)(v324, v508);
          }

          v405 = v465;
          *v465 = 0;
          v406 = v467;
          swift_storeEnumTagMultiPayload();
          (*(*v323 + 312))(v405);
          result = (*(v466 + 8))(v405, v406);
        }

        if (*(v483 + 66))
        {
          v407 = fpfs_current_or_default_log();
          v408 = v462;
          sub_1CF9E6128();
          v409 = sub_1CF9E6108();
          v410 = sub_1CF9E7298();
          if (os_log_type_enabled(v409, v410))
          {
            v411 = swift_slowAlloc();
            v531 = swift_slowAlloc();
            v534 = v531;
            *v411 = v493;
            v412 = v496;
            v413 = v497;
            swift_storeEnumTagMultiPayload();
            v414 = sub_1CF06AB58(v413);
            v416 = v415;
            v417 = v413;
            v323 = v519;
            (*v494)(v412, v417);
            v418 = v414;
            v96 = v517;
            v419 = sub_1CEFD0DF0(v418, v416, &v534);

            *(v411 + 4) = v419;
            _os_log_impl(&dword_1CEFC7000, v409, v410, "%{public}s", v411, 0xCu);
            v420 = v531;
            __swift_destroy_boxed_opaque_existential_1(v531);
            MEMORY[0x1D386CDC0](v420, -1, -1);
            MEMORY[0x1D386CDC0](v411, -1, -1);
          }

          (*v507)(v408, v508);
          v534 = v515;
          v535 = v513;
          v536 = v512;
          v537 = v514;
          type metadata accessor for Ingestion.FetchEventStream();
          sub_1CF046AB4();
          v421 = v526;
          sub_1CF9E5CE8();
          sub_1CF9E5C98();
          v423 = v422;
          v424 = *v525;
          result = (*v525)(v421, v527);
          v425 = v423 * 1000000000.0;
          if (COERCE__INT64(fabs(v423 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
          {
LABEL_205:
            __break(1u);
            goto LABEL_206;
          }

          if (v425 <= -9.22337204e18)
          {
LABEL_206:
            __break(1u);
            goto LABEL_207;
          }

          if (v425 >= 9.22337204e18)
          {
LABEL_207:
            __break(1u);
            goto LABEL_208;
          }

          v426 = v505;
          v427 = sub_1CF0523F0(v505, 0x2000000000000000, v425, 0);
          (*v530)(v426, v532);
          v428 = v526;
          sub_1CF9E5CE8();
          sub_1CF9E5C98();
          v430 = v429;
          result = v424(v428, v527);
          v431 = v430 * 1000000000.0;
          if (COERCE__INT64(fabs(v430 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
          {
LABEL_208:
            __break(1u);
            goto LABEL_209;
          }

          if (v431 <= -9.22337204e18)
          {
LABEL_209:
            __break(1u);
            goto LABEL_210;
          }

          if (v431 >= 9.22337204e18)
          {
LABEL_210:
            __break(1u);
            return result;
          }

          sub_1CF5215C0(v427);

          if (v6)
          {
            return result;
          }
        }

        v432 = *(v482 + 32);
        v433 = (*(*v323 + 192))(result);
        if (v432)
        {
          v434 = *(v433 + 49);

          if (v434)
          {
LABEL_158:
            v437 = swift_allocObject();
            *(v437 + 16) = v520;
            *(v437 + 24) = v96;
            v438 = v483;
            v439 = *(v483 + 48);
            *(v437 + 64) = *(v483 + 32);
            *(v437 + 80) = v439;
            v440 = v438[5];
            *(v437 + 96) = v438[4];
            *(v437 + 112) = v440;
            v441 = v438[1];
            *(v437 + 32) = *v438;
            *(v437 + 48) = v441;
            *(v437 + 128) = v323;
            v442 = *(*v323 + 448);
            (*(*(v463 - 8) + 16))(&v534);

            v442("processStreamEvent(db:with:)", 28, 2, v432, 1, nullsub_1, 0, sub_1CF5DF228, v437);
          }
        }

        else
        {
          v436 = *(v433 + 48);

          if (v436)
          {
            goto LABEL_158;
          }
        }

        if (((*(*v323 + 152))(v435) & 4) == 0)
        {
          goto LABEL_158;
        }

        v443 = *(v483 + 24);
        v446 = *(v443 + 64);
        v445 = v443 + 64;
        v444 = v446;
        v447 = 1 << *(*(v483 + 24) + 32);
        v448 = -1;
        if (v447 < 64)
        {
          v448 = ~(-1 << v447);
        }

        v449 = v448 & v444;
        v450 = (v447 + 63) >> 6;
        v451 = *(v483 + 24);

        v452 = 0;
        for (i = v458; v449; v452 = v453)
        {
          v453 = v452;
LABEL_166:
          sub_1CF043498(*(v451 + 56) + *(v464 + 72) * (__clz(__rbit64(v449)) | (v453 << 6)), i, type metadata accessor for SyncState);
          v454 = v519[6];
          v455 = v519[7];
          ObjectType = swift_getObjectType();
          (*(v455 + 8))(i, v518, v520, v517, ObjectType, v455);
          if (v6)
          {
            goto LABEL_177;
          }

          v449 &= v449 - 1;
          result = sub_1CF043504(i, type metadata accessor for SyncState);
        }

        while (1)
        {
          v453 = v452 + 1;
          if (__OFADD__(v452, 1))
          {
            break;
          }

          if (v453 >= v450)
          {
          }

          v449 = *(v445 + 8 * v453);
          ++v452;
          if (v449)
          {
            goto LABEL_166;
          }
        }

LABEL_180:
        __break(1u);
        goto LABEL_181;
      }

      if (v101 >= v488)
      {
        v523 = v102 - 1;
        v529 = v6;
        v96 = 0;
        v113 = 1;
        v108 = v516;
        goto LABEL_16;
      }

      v96 = *(v489 + 8 * v101);
      ++v97;
    }

    while (!v96);
    v529 = v6;
LABEL_15:
    v103 = __clz(__rbit64(v96));
    v96 &= v96 - 1;
    v104 = v103 | (v101 << 6);
    v105 = v498;
    v106 = v506;
    v107 = v505;
    v108 = v516;
    (*(v506 + 16))(v505, *(v498 + 48) + *(v506 + 72) * v104, AssociatedTypeWitness);
    v109 = *(v105 + 56) + 16 * v104;
    v110 = *v109;
    LOBYTE(v105) = *(v109 + 8);
    v111 = v511 + *(v91 + 48);
    v112 = *(v106 + 32);
    v99 = v511;
    v112(v511, v107, AssociatedTypeWitness);
    v113 = 0;
    *v111 = v110;
    v111[8] = v105;
    v91 = v524;
    v523 = v101;
    v100 = v521;
    v74 = v509;
LABEL_16:
    v114 = *(v91 - 8);
    (*(v114 + 56))(v99, v113, 1, v91);
    v115 = v503;
    (*v501)(v503, v99, v504);
    if ((*(v114 + 48))(v115, 1, v91) == 1)
    {

      v167 = *(v483 + 80);
      v168 = *(v167 + 16);
      v169 = v515;
      if (v168)
      {
        v170 = (v167 + 32);
        v522 = (v506 + 48);
        v511 = (v471 + 8);
        v504 = v472 + 48;
        v503 = (v472 + 32);
        v501 = (v472 + 8);
        v502 = (v473 + 8);
        v509 = (v470 + 8);
        v499 = xmmword_1CFA00210;
        v171 = TupleTypeMetadata2;
        v172 = v479;
        v6 = v529;
        v173 = v519;
        while (1)
        {
          v175 = *v170;
          v174 = v170 + 1;
          v534 = v169;
          v535 = v513;
          v536 = v512;
          v537 = v514;
          type metadata accessor for ConcreteJobResult();
          v531 = sub_1CF056580();
          v176 = *(v517 + 8);
          (*(*v173[2] + 568))(v175, v518, v520, v176);
          if (v6)
          {
          }

          v524 = v174;
          v177 = v532;
          if ((*v522)(v172, 1, v532) == 1)
          {

            (*v509)(v172, v477);
            goto LABEL_34;
          }

          v521 = v168;
          (*v528)(v490, v172, v177);
          v534 = v515;
          v535 = v513;
          v536 = v512;
          v537 = v514;
          v523 = type metadata accessor for JobResult();
          v529 = 0;
          v178 = swift_getAssociatedTypeWitness();
          AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
          v180 = swift_getAssociatedConformanceWitness();
          v534 = v177;
          v535 = v178;
          v536 = AssociatedConformanceWitness;
          v537 = v180;
          v181 = type metadata accessor for ReconciliationID();
          type metadata accessor for ReconciliationSideMutation();
          v182 = swift_getTupleTypeMetadata2();
          v183 = v481;
          v184 = &v481[*(v182 + 48)];
          v185 = *v516;
          (*v516)(v481, v490, v177);
          v510 = v181;
          swift_storeEnumTagMultiPayload();
          *v184 = 0;
          *(v184 + 1) = 0;
          *(v184 + 2) = 0;
          *(v184 + 3) = 0xB000000000000000;
          *(v184 + 2) = 0u;
          *(v184 + 3) = 0u;
          *(v184 + 32) = 257;
          v186 = v518;
          swift_storeEnumTagMultiPayload();
          v187 = v480;
          swift_storeEnumTagMultiPayload();
          sub_1CF06EB44(v531, v183);
          v188 = *v511;
          (*v511)(v183, v187);
          v189 = v478;
          v190 = v529;
          (*(*v482 + 240))(v490, 1, v186, v520, v176);
          v6 = v190;
          if (v190)
          {

            return (*v530)(v490, v532);
          }

          v191 = v476;
          if ((*v504)(v189, 1, v476) == 1)
          {
            (*v502)(v189, v474);
            v171 = TupleTypeMetadata2;
          }

          else
          {
            v529 = v185;
            v192 = v475;
            (*v503)(v475, v189, v191);
            WitnessTable = swift_getWitnessTable();
            v194 = sub_1CF937C7C(v191, WitnessTable);
            v171 = TupleTypeMetadata2;
            if (v194)
            {
              v500 = v188;
              v195 = (*(*v519 + 552))();
              v196 = v515;
              v197 = v513;
              if (v195)
              {
                sub_1CF06D940(v191, WitnessTable, &v534);
                if (v534 - 1 >= 2)
                {
                  v534 = v196;
                  v535 = v197;
                  v536 = v512;
                  v537 = v514;
                  type metadata accessor for RemoteVersion.CleanRemoteVersions();
                  v198 = v526;
                  sub_1CF9E5CE8();
                  sub_1CF9E5C98();
                  v200 = v199;
                  result = (*v525)(v198, v527);
                  v202 = v200 * 1000000000.0;
                  if (COERCE__INT64(fabs(v200 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
                  {
                    goto LABEL_202;
                  }

                  if (v202 <= -9.22337204e18)
                  {
                    goto LABEL_203;
                  }

                  v203 = v531;
                  if (v202 >= 9.22337204e18)
                  {
                    goto LABEL_204;
                  }

                  v204 = sub_1CF989304(v490, 0, v202, 2);
                  sub_1CF803A0C(v203, v204);
                }
              }

              type metadata accessor for ReconciliationSideMutation();
              v205 = *(swift_getTupleTypeMetadata2() + 48);
              (v529)(v481, v490, v532);
              swift_storeEnumTagMultiPayload();
              v206 = v526;
              sub_1CF9E5CE8();
              sub_1CF9E5C98();
              v208 = v207;
              result = (*v525)(v206, v527);
              v209 = v208 * 1000000000.0;
              if (COERCE__INT64(fabs(v208 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
              {
                goto LABEL_187;
              }

              if (v209 <= -9.22337204e18)
              {
                goto LABEL_188;
              }

              v210 = v475;
              if (v209 >= 9.22337204e18)
              {
                goto LABEL_189;
              }

              v211 = v481;
              v212 = &v481[v205];
              *v212 = v499;
              *(v212 + 2) = v209;
              swift_storeEnumTagMultiPayload();
              v213 = v480;
              swift_storeEnumTagMultiPayload();
              v214 = v531;
              sub_1CF06EB44(v531, v211);
              v500(v211, v213);
              (*v501)(v210, v191);
              v186 = v518;
              v168 = v521;
              goto LABEL_53;
            }

            (*v501)(v192, v191);
            v186 = v518;
          }

          v168 = v521;
          v214 = v531;
LABEL_53:
          v215 = v526;
          sub_1CF9E5CE8();
          sub_1CF9E5C98();
          v217 = v216;
          result = (*v525)(v215, v527);
          v218 = v217 * 1000000000.0;
          v172 = v479;
          if (COERCE__INT64(fabs(v217 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
          {
            __break(1u);
LABEL_178:
            __break(1u);
LABEL_179:
            __break(1u);
            goto LABEL_180;
          }

          if (v218 <= -9.22337204e18)
          {
            goto LABEL_178;
          }

          if (v218 >= 9.22337204e18)
          {
            goto LABEL_179;
          }

          sub_1CF521850(v214, v218, v186, v520, v517);
          (*v530)(v490, v532);

          v173 = v519;
LABEL_34:
          --v168;
          v169 = v515;
          v170 = v524;
          if (!v168)
          {
            goto LABEL_78;
          }
        }
      }

      v171 = TupleTypeMetadata2;
      v6 = v529;
LABEL_78:
      v266 = *(v483 + 8);
      v267 = *(v266 + 64);
      v503 = (v266 + 64);
      v268 = 1 << *(v266 + 32);
      v269 = -1;
      if (v268 < 64)
      {
        v269 = ~(-1 << v268);
      }

      v270 = v269 & v267;
      v502 = ((v268 + 63) >> 6);
      v523 = v171 - 8;
      v522 = (v469 + 32);
      v521 = (v520 - 8);
      v504 = v266;

      v271 = 0;
      v96 = v517;
      while (1)
      {
        v272 = v491;
        if (!v270)
        {
          if (v502 <= v271 + 1)
          {
            v273 = (v271 + 1);
          }

          else
          {
            v273 = v502;
          }

          v274 = v273 - 1;
          while (1)
          {
            i = v271 + 1;
            if (__OFADD__(v271, 1))
            {
              break;
            }

            if (i >= v502)
            {
              v270 = 0;
              v284 = 1;
              goto LABEL_91;
            }

            v270 = *&v503[8 * i];
            ++v271;
            if (v270)
            {
              goto LABEL_90;
            }
          }

          __break(1u);
          goto LABEL_171;
        }

        i = v271;
LABEL_90:
        v275 = __clz(__rbit64(v270));
        v270 &= v270 - 1;
        v276 = v275 | (i << 6);
        v277 = v504;
        v278 = v506;
        v279 = v505;
        v280 = v532;
        (*(v506 + 16))(v505, *(v504 + 48) + *(v506 + 72) * v276, v532);
        LOBYTE(v276) = *(*(v277 + 56) + v276);
        v281 = *(TupleTypeMetadata2 + 48);
        v282 = *(v278 + 32);
        v272 = v491;
        v283 = v279;
        v171 = TupleTypeMetadata2;
        v282(v491, v283, v280);
        v284 = 0;
        v272[v281] = v276;
        v274 = i;
LABEL_91:
        v285 = *(v171 - 8);
        (*(v285 + 56))(v272, v284, 1, v171);
        v286 = v486;
        (*v522)(v486, v272, v487);
        if ((*(v285 + 48))(v286, 1, v171) == 1)
        {
          break;
        }

        v524 = v274;
        v287 = v6;
        LODWORD(v531) = v286[*(v171 + 48)];
        v288 = v492;
        v289 = v532;
        (*v528)(v492, v286, v532);
        v290 = fpfs_current_or_default_log();
        v291 = v484;
        sub_1CF9E6128();
        v292 = *v516;
        v293 = v485;
        (*v516)(v485, v288, v289);
        v294 = sub_1CF9E6108();
        v295 = sub_1CF9E7298();
        if (os_log_type_enabled(v294, v295))
        {
          v296 = swift_slowAlloc();
          v529 = v287;
          v297 = v296;
          v510 = v296;
          v511 = swift_slowAlloc();
          v534 = v511;
          *v297 = v493;
          v298 = v293;
          v299 = *(swift_getTupleTypeMetadata2() + 48);
          LODWORD(v509) = v295;
          v300 = v496;
          v292(v496, v298, v289);
          v300[v299] = v531;
          v301 = v497;
          swift_storeEnumTagMultiPayload();
          v302 = *v530;
          (*v530)(v298, v289);
          v303 = sub_1CF06AB58(v301);
          v305 = v304;
          (*v494)(v300, v301);
          v306 = sub_1CEFD0DF0(v303, v305, &v534);
          v96 = v517;

          v307 = v510;
          *(v510 + 4) = v306;
          v308 = v307;
          _os_log_impl(&dword_1CEFC7000, v294, v509, "%{public}s", v307, 0xCu);
          v309 = v511;
          __swift_destroy_boxed_opaque_existential_1(v511);
          v310 = v309;
          v311 = v520;
          MEMORY[0x1D386CDC0](v310, -1, -1);
          v312 = v308;
          v313 = v529;
          MEMORY[0x1D386CDC0](v312, -1, -1);

          (*v507)(v291, v508);
        }

        else
        {
          v302 = *v530;
          (*v530)(v293, v289);

          (*v507)(v291, v508);
          v313 = v287;
          v96 = v517;
          v311 = v520;
        }

        LOBYTE(v533) = v531;
        v537 = v311;
        v538 = v96;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v534);
        (*(*(v311 - 8) + 16))(boxed_opaque_existential_0, v518, v311);
        v315 = v492;
        sub_1CF617584(v492, &v533, v519, &v534);
        v6 = v313;
        v171 = TupleTypeMetadata2;
        if (v313)
        {

          v302(v315, v532);
          return __swift_destroy_boxed_opaque_existential_1(&v534);
        }

        v302(v315, v532);
        __swift_destroy_boxed_opaque_existential_1(&v534);
        v271 = v524;
      }

      v322 = *(v483 + 64);
      if (v322 == 2)
      {
        goto LABEL_111;
      }

      v323 = v519;
      v324 = v468;
      if (v322 == 1)
      {
        v325 = fpfs_current_or_default_log();
        v326 = v460;
        sub_1CF9E6128();
        v327 = sub_1CF9E6108();
        v328 = sub_1CF9E7298();
        if (os_log_type_enabled(v327, v328))
        {
          v329 = swift_slowAlloc();
          v531 = swift_slowAlloc();
          v534 = v531;
          *v329 = v493;
          v330 = v323;
          v331 = v496;
          v332 = v497;
          swift_storeEnumTagMultiPayload();
          v333 = sub_1CF06AB58(v332);
          v335 = v334;
          v336 = v331;
          v323 = v330;
          (*v494)(v336, v332);
          v337 = sub_1CEFD0DF0(v333, v335, &v534);
          v324 = v468;

          *(v329 + 4) = v337;
          _os_log_impl(&dword_1CEFC7000, v327, v328, "%{public}s", v329, 0xCu);
          v338 = v531;
          __swift_destroy_boxed_opaque_existential_1(v531);
          v96 = v517;
          MEMORY[0x1D386CDC0](v338, -1, -1);
          MEMORY[0x1D386CDC0](v329, -1, -1);

          (*v507)(v460, v508);
        }

        else
        {

          (*v507)(v326, v508);
        }

        v371 = v465;
        *v465 = 0;
        v372 = v467;
        swift_storeEnumTagMultiPayload();
        (*(*v323 + 312))(v371);
        result = (*(v466 + 8))(v371, v372);
      }

      goto LABEL_134;
    }

    v116 = &v115[*(v91 + 48)];
    v522 = *v116;
    LODWORD(v510) = v116[8];
    v117 = v531;
    v118 = v532;
    (*v528)(v531, v115, v532);
    v119 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v120 = *v108;
    (*v108)(v100, v117, v118);
    v121 = v74;
    v122 = sub_1CF9E6108();
    v123 = sub_1CF9E7298();
    if (os_log_type_enabled(v122, v123))
    {
      v124 = swift_slowAlloc();
      *&v499 = v124;
      v500 = swift_slowAlloc();
      v534 = v500;
      *v124 = v493;
      v125 = swift_getTupleTypeMetadata2();
      v126 = v496;
      v127 = &v496[*(v125 + 48)];
      v120(v496, v100, v118);
      *v127 = v522;
      v127[8] = v510;
      v128 = v497;
      swift_storeEnumTagMultiPayload();
      v522 = *v530;
      v522(v100, v118);
      v129 = sub_1CF06AB58(v128);
      v131 = v130;
      (*v494)(v126, v128);
      v132 = v129;
      v99 = v511;
      v133 = sub_1CEFD0DF0(v132, v131, &v534);

      v134 = v499;
      *(v499 + 4) = v133;
      v135 = v134;
      _os_log_impl(&dword_1CEFC7000, v122, v123, "%{public}s", v134, 0xCu);
      v136 = v500;
      __swift_destroy_boxed_opaque_existential_1(v500);
      v6 = v529;
      MEMORY[0x1D386CDC0](v136, -1, -1);
      v137 = v135;
      v138 = v515;
      MEMORY[0x1D386CDC0](v137, -1, -1);

      v74 = v509;
      (*v507)(v509, v508);
    }

    else
    {
      v522 = *v530;
      v522(v100, v118);

      (*v507)(v121, v508);
      v6 = v529;
      v74 = v121;
      v138 = v515;
    }

    v534 = v138;
    v535 = v513;
    v536 = v512;
    v537 = v514;
    i = type metadata accessor for Ingestion.FetchItemMetadata();
    v140 = v526;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v142 = v141;
    v143 = *v525;
    (*v525)(v140, v527);
    v144 = v142 * 1000000000.0;
    v91 = v524;
    if (COERCE__INT64(fabs(v142 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_171:
      __break(1u);
      goto LABEL_172;
    }

    if (v144 <= -9.22337204e18)
    {
LABEL_172:
      __break(1u);
      goto LABEL_173;
    }

    if (v144 >= 9.22337204e18)
    {
LABEL_173:
      __break(1u);
      goto LABEL_174;
    }

    i = sub_1CF656F5C(v531, 0, v144, 0x8000);
    v145 = v526;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v147 = v146;
    v143(v145, v527);
    v148 = v147 * 1000000000.0;
    if (COERCE__INT64(fabs(v147 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_174:
      __break(1u);
      goto LABEL_175;
    }

    if (v148 <= -9.22337204e18)
    {
LABEL_175:
      __break(1u);
      goto LABEL_176;
    }

    if (v148 >= 9.22337204e18)
    {
LABEL_176:
      __break(1u);
LABEL_177:

      return sub_1CF043504(i, type metadata accessor for SyncState);
    }

    sub_1CF5215C0(i);
    if (!v6)
    {
      AssociatedTypeWitness = v532;
      v522(v531, v532);

      v97 = v523;
      continue;
    }

    break;
  }

  v219 = v531;
  v220 = v532;
  v221 = &v540;
  return (*(v221 - 32))(v219, v220);
}

uint64_t sub_1CF5B3C40(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v30 = a1;
  v31 = a3;
  v6 = type metadata accessor for SyncState();
  v29 = *(v6 - 8);
  v7 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v28 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 24);
  v12 = *(v9 + 64);
  v11 = v9 + 64;
  v10 = v12;
  v13 = 1 << *(*(a2 + 24) + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  v32 = *(a2 + 24);

  v18 = 0;
  v19 = v28;
  while (v15)
  {
    v34 = v4;
    v20 = v18;
LABEL_10:
    v21 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    sub_1CF043498(*(v32 + 56) + *(v29 + 72) * (v21 | (v20 << 6)), v19, type metadata accessor for SyncState);
    v22 = *(v31 + 48);
    v23 = *(v31 + 56);
    ObjectType = swift_getObjectType();
    v25 = v30[3];
    v24 = v30[4];
    v26 = __swift_project_boxed_opaque_existential_1(v30, v25);
    v27 = v34;
    (*(v23 + 8))(v19, v26, v25, v24, ObjectType, v23);
    v4 = v27;
    result = sub_1CF043504(v19, type metadata accessor for SyncState);
    if (v27)
    {
    }
  }

  while (1)
  {
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v20 >= v16)
    {
    }

    v15 = *(v11 + 8 * v20);
    ++v18;
    if (v15)
    {
      v34 = v4;
      v18 = v20;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF5B3E48(uint64_t *a1, void (*a2)(char *, uint64_t, uint64_t, uint64_t), uint64_t a3, void (*a4)(void, void, void), uint64_t *a5)
{
  v7 = v6;
  v37 = a4;
  v38 = a5;
  v35 = a1;
  v36 = a2;
  v29 = a3;
  v8 = *(a3 + 16);
  v9 = *(a3 + 24);
  v10 = type metadata accessor for FileTreeChangeAggregator.Change();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v33 = &v28 - v16;
  v30 = v5;
  v17 = *(v5 + 16);
  v18 = v17 + 64;
  v19 = 1 << *(v17 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(v17 + 64);
  v22 = (v19 + 63) >> 6;
  v31 = v11 + 32;
  v32 = v11 + 16;
  v34 = (v11 + 8);
  v39 = v17;

  v24 = 0;
  if (v21)
  {
    while (1)
    {
      v25 = v24;
LABEL_8:
      v26 = v33;
      (*(v11 + 16))(v33, *(v39 + 56) + *(v11 + 72) * (__clz(__rbit64(v21)) | (v25 << 6)), v10);
      (*(v11 + 32))(v15, v26, v10);
      v27 = objc_autoreleasePoolPush();
      sub_1CF5B40CC(v15, v35, v36, v37, v38, &v40);
      if (v7)
      {
        break;
      }

      v7 = 0;
      v21 &= v21 - 1;
      objc_autoreleasePoolPop(v27);
      result = (*v34)(v15, v10);
      v24 = v25;
      if (!v21)
      {
        goto LABEL_5;
      }
    }

    objc_autoreleasePoolPop(v27);

    return (*v34)(v15, v10);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v25 >= v22)
      {

        return sub_1CF5B01A0(v35, v36, v29, v37, v38);
      }

      v21 = *(v18 + 8 * v25);
      ++v24;
      if (v21)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1CF5B40CC(uint64_t a1, uint64_t *a2, void (*a3)(char *, uint64_t, uint64_t, uint64_t), void (*a4)(void, void, void), uint64_t *a5, void *a6)
{
  v38 = a6;
  v39 = a5;
  v43 = a3;
  v40 = a4;
  v41 = a1;
  v7 = *a2;
  v8 = *a2;
  v9 = sub_1CF9E5CF8();
  v36 = *(v9 - 8);
  v37 = v9;
  v10 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v35 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (v8 + 88);
  v13 = (v8 + 104);
  v14 = *(v7 + 80);
  v15 = *(v7 + 96);
  v16 = type metadata accessor for FileTreeWriter.FileTreeChange();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = (&v34 - v19);
  *&v21 = v14;
  *(&v21 + 1) = *v12;
  *&v22 = v15;
  *(&v22 + 1) = *v13;
  v23 = v39;
  v44 = v21;
  v45 = v22;
  type metadata accessor for ConcreteJobResult();
  v24 = sub_1CF056580();
  v25 = v40;
  v26 = type metadata accessor for FileTreeChangeAggregator.Change();
  sub_1CF5AF7A8(v26, v20);
  v27 = v42;
  sub_1CF6180A8(v20, 0, v24, a2, v43, v25, v23);
  if (v27)
  {

    result = (*(v17 + 8))(v20, v16);
    *v38 = v27;
    return result;
  }

  (*(v17 + 8))(v20, v16);
  v29 = v35;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v31 = v30;
  result = (*(v36 + 8))(v29, v37);
  v32 = v31 * 1000000000.0;
  if (COERCE__INT64(fabs(v31 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v32 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v32 < 9.22337204e18)
  {
    v33 = v43;
    sub_1CF521850(v24, v32, v43, v25, v23);
    (*(*a2 + 576))(v33, v25, v23);
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1CF5B4444(uint64_t a1, uint64_t *a2, NSObject *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v107 = a1;
  v95 = a5;
  v96 = a6;
  v93 = a3;
  v8 = *a2;
  v101 = sub_1CF9E5CF8();
  v103 = *(v101 - 8);
  v9 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v101);
  v102 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a4 + 16);
  v98 = sub_1CF9E75D8();
  v89 = *(v98 - 8);
  v12 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v98);
  v85 = &v83 - v13;
  v14 = *(a4 + 24);
  type metadata accessor for SnapshotItem();
  v84 = sub_1CF9E75D8();
  v83 = *(v84 - 8);
  v15 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v84);
  v87 = &v83 - v16;
  v17 = type metadata accessor for FileTreeChangeAggregator.Change();
  v92 = sub_1CF9E75D8();
  v91 = *(v92 - 8);
  v18 = *(v91 + 64);
  v19 = MEMORY[0x1EEE9AC00](v92);
  v97 = &v83 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v88 = &v83 - v22;
  v100 = v17;
  v99 = *(v17 - 8);
  v23 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v86 = &v83 - v24;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v104 = *(AssociatedTypeWitness - 8);
  v105 = AssociatedTypeWitness;
  v26 = *(v104 + 64);
  v27 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v29 = &v83 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v90 = &v83 - v30;
  v31 = *(v8 + 88);
  v94 = a2;
  v32 = *(v8 + 104);
  v109 = v11;
  v110 = v31;
  v111 = v14;
  v112 = v32;
  v33 = type metadata accessor for DirectionalTestingOperation();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v37 = &v83 - v36;
  v109 = v11;
  v110 = v31;
  v111 = v14;
  v112 = v32;
  type metadata accessor for ConcreteJobResult();
  v108 = sub_1CF056580();
  (*(v34 + 16))(v37, v107, v33);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 7)
  {
    if (EnumCaseMultiPayload == 6)
    {
      v39 = v105;
      v107 = *(swift_getTupleTypeMetadata2() + 48);
      v40 = v104;
      v41 = v90;
      (*(v104 + 32))(v90, v37, v39);
      v42 = *(swift_getAssociatedConformanceWitness() + 40);
      v43 = v100;
      sub_1CF9E6708();
      v44 = v88;
      sub_1CF9E6658();
      v45 = v99;
      if ((*(v99 + 48))(v44, 1, v43) == 1)
      {
        (*(v40 + 8))(v41, v39);

        (*(v91 + 8))(v44, v92);
        return (*(v89 + 8))(&v37[v107], v98);
      }

      v57 = v86;
      v55 = v101;
      (*(v45 + 32))(v86, v44, v43);
      v58 = &v57[*(v43 + 36)];
      v59 = v85;
      (*(v89 + 16))(v85, v58, v98);
      sub_1CF06B4E0(v59, v11, v14, v87);
      v60 = v102;
      sub_1CF9E5CE8();
      sub_1CF9E5C98();
      v62 = v61;
      result = (*(v103 + 8))(v60, v55);
      v63 = v62 * 1000000000.0;
      if (COERCE__INT64(fabs(v62 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_26;
      }

      v64 = v106;
      v53 = v95;
      v52 = v96;
      v54 = v93;
      v65 = v90;
      if (v63 <= -9.22337204e18)
      {
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v66 = v87;
      if (v63 >= 9.22337204e18)
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      sub_1CF611904(v87, v90, 0, 0, 1, v94, 0x2000000000000000, v63, 2048, v108, v93, v95, v96);
      if (v64)
      {

        (*(v83 + 8))(v66, v84);
        (*(v99 + 8))(v86, v100);
        (*(v104 + 8))(v65, v105);
        return (*(v89 + 8))(&v37[v107], v98);
      }

      (*(v83 + 8))(v66, v84);
      (*(v99 + 8))(v86, v100);
      (*(v104 + 8))(v65, v105);
      (*(v89 + 8))(&v37[v107], v98);
    }

    else
    {
      (*(v34 + 8))(v37, v33);
      v53 = v95;
      v52 = v96;
      v54 = v93;
      v55 = v101;
    }

    v56 = v108;
LABEL_18:
    v79 = v102;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v81 = v80;
    result = (*(v103 + 8))(v79, v55);
    v82 = v81 * 1000000000.0;
    if (COERCE__INT64(fabs(v81 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v82 > -9.22337204e18)
    {
      if (v82 < 9.22337204e18)
      {
        sub_1CF521850(v56, v82, v54, v53, v52);
      }

      goto LABEL_25;
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v107 = v32;
  v48 = v104;
  v47 = v105;
  (*(v104 + 32))(v29, v37, v105);
  v49 = *(swift_getAssociatedConformanceWitness() + 40);
  v50 = v100;
  sub_1CF9E6708();
  v51 = v97;
  sub_1CF9E6658();
  if ((*(v99 + 48))(v51, 1, v50) == 1)
  {
    (*(v48 + 8))(v29, v47);

    return (*(v91 + 8))(v97, v92);
  }

  (*(v91 + 8))(v97, v92);
  v109 = v11;
  v110 = v31;
  v67 = v107;
  v111 = v14;
  v112 = v107;
  type metadata accessor for Ingestion.FetchItemMetadata();
  v68 = v102;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v70 = v69;
  v71 = v68;
  v72 = v101;
  result = (*(v103 + 8))(v71);
  v73 = v70 * 1000000000.0;
  if (COERCE__INT64(fabs(v70 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_27;
  }

  if (v73 <= -9.22337204e18)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v73 < 9.22337204e18)
  {
    v74 = v29;
    v55 = v72;
    v75 = sub_1CF656F5C(v74, 0x2000000000000000, v73, 2048);
    v77 = *(v75 + 96);
    v76 = *(v75 + 104);
    *(v75 + 96) = 0;
    *(v75 + 104) = 0;
    v78 = *(v75 + 112);
    *(v75 + 112) = 1;

    sub_1CF03D7A8(v77, v76, v78);

    v109 = v11;
    v110 = v31;
    v111 = v14;
    v112 = v67;
    type metadata accessor for JobResult();
    v56 = v108;
    sub_1CF803A0C(v108, v75);

    (*(v104 + 8))(v74, v105);
    v53 = v95;
    v52 = v96;
    v54 = v93;
    goto LABEL_18;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1CF5B501C(void *a1, uint64_t a2)
{
  v24 = a1;
  v23 = type metadata accessor for FileTreeChangeAggregator.Change();
  v3 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  v21 = v20 - v5;
  v22 = v4;
  v6 = *(a2 + 16);
  v7 = v6 + 64;
  v8 = 1 << *(v6 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v6 + 64);
  v11 = (v8 + 63) >> 6;
  v20[2] = v4 + 8;
  v20[3] = v4 + 16;
  v25 = v6;

  v13 = 0;
  for (i = v22; v10; result = )
  {
    v15 = v13;
LABEL_9:
    v16 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v17 = v21;
    v18 = v23;
    (*(i + 16))(v21, *(v25 + 56) + *(i + 72) * (v16 | (v15 << 6)), v23);
    v19 = v24[3];
    v29 = v24[4];
    v26 = __swift_project_boxed_opaque_existential_1(v24, v19);
    v27 = 0;
    v28 = 0xE000000000000000;
    swift_getWitnessTable();
    sub_1CF9E7FE8();
    (*(i + 8))(v17, v18);
    sub_1CF4FB2BC(v27, v28, v19, v29);
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v11)
    {
    }

    v10 = *(v7 + 8 * v15);
    ++v13;
    if (v10)
    {
      v13 = v15;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF5B5250(void *a1, uint64_t a2)
{
  v26 = a1;
  v3 = type metadata accessor for SyncState();
  v25 = *(v3 - 8);
  v4 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v24 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a2 + 24);
  v9 = *(v6 + 64);
  v8 = v6 + 64;
  v7 = v9;
  v10 = 1 << *(*(a2 + 24) + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v7;
  v13 = (v10 + 63) >> 6;
  v27 = *(a2 + 24);

  for (i = 0; v12; result = )
  {
    v16 = i;
LABEL_9:
    v17 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v18 = v24;
    sub_1CF043498(*(v27 + 56) + *(v25 + 72) * (v17 | (v16 << 6)), v24, type metadata accessor for SyncState);
    v19 = v26[3];
    v28 = v26[4];
    __swift_project_boxed_opaque_existential_1(v26, v19);
    v20 = sub_1CF04CC80();
    v22 = v21;
    sub_1CF043504(v18, type metadata accessor for SyncState);
    sub_1CF4FB2BC(v20, v22, v19, v28);
  }

  while (1)
  {
    v16 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
    }

    v12 = *(v8 + 8 * v16);
    ++i;
    if (v12)
    {
      i = v16;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

double sub_1CF5B543C@<D0>(uint64_t a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(swift_getAssociatedConformanceWitness() + 40);
  v4 = sub_1CF9E7068();
  v5 = MEMORY[0x1E69E76D8];
  swift_getTupleTypeMetadata2();
  v6 = sub_1CF9E6DA8();
  v7 = sub_1CF04F294(v6, v5, v4, MEMORY[0x1E69E76E8]);

  swift_getTupleTypeMetadata2();
  v8 = sub_1CF9E6DA8();
  v9 = sub_1CF04F294(v8, AssociatedTypeWitness, &type metadata for FileItemKind, v3);

  v10 = type metadata accessor for FileTreeChangeAggregator.Change();
  swift_getTupleTypeMetadata2();
  v11 = sub_1CF9E6DA8();
  v12 = sub_1CF04F294(v11, AssociatedTypeWitness, v10, v3);

  v13 = MEMORY[0x1E69E7CC0];
  v14 = sub_1CF03AD00(MEMORY[0x1E69E7CC0]);
  swift_getTupleTypeMetadata2();
  v15 = sub_1CF9E6DA8();
  v16 = sub_1CF04F294(v15, AssociatedTypeWitness, &type metadata for StreamResetReason, v3);

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v12;
  *(a1 + 24) = v14;
  *&result = 2;
  *(a1 + 32) = xmmword_1CF9FD950;
  *(a1 + 48) = 0;
  *(a1 + 56) = v16;
  *(a1 + 64) = 0;
  *(a1 + 66) = 0;
  *(a1 + 72) = v13;
  *(a1 + 80) = v13;
  *(a1 + 88) = 0;
  return result;
}

void sub_1CF5B565C()
{
  v0 = objc_allocWithZone(MEMORY[0x1E698E490]);
  v1 = sub_1CF9E6888();
  v2 = [v0 initWithIdentifier_];

  v3 = v2;
  [v3 setPriority_];
  [v3 setInterval_];
  [v3 setRequiresExternalPower_];
  v4 = [objc_allocWithZone(FPDSharedSystemScheduler) initWithTaskRequest:v3 options:1];

  qword_1EDEBBD10 = v4;
}

uint64_t sub_1CF5B5740()
{
  v0 = objc_allocWithZone(FPDSharedSystemScheduler);
  v1 = sub_1CF9E6888();
  v5[4] = sub_1CF5B583C;
  v5[5] = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_1CF5D9124;
  v5[3] = &block_descriptor_223_1;
  v2 = _Block_copy(v5);
  v3 = [v0 initWithLabel:v1 options:2 taskRequestBuilder:v2];

  _Block_release(v2);

  qword_1EDEBBBF8 = v3;
  return result;
}

id sub_1CF5B583C()
{
  v0 = sub_1CF9E5E38();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v28 - v10;
  v12 = sub_1CF9E5CF8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = objc_allocWithZone(MEMORY[0x1E698E478]);
  v18 = sub_1CF9E6888();
  v19 = [v17 initWithIdentifier_];

  sub_1CF9E5CE8();
  sub_1CF9E5E08();
  sub_1CF5B5C00(v16, v11);
  (*(v1 + 8))(v4, v0);
  sub_1CEFCCBDC(v11, v9, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  if ((*(v13 + 48))(v9, 1, v12) == 1)
  {
    v20 = sub_1CEFCCC44(v9, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CF8DEF70(v20, 0.0, 3600.0);
    v22 = v21 + 86400.0;
  }

  else
  {
    sub_1CF9E5C28();
    v22 = v23;
    (*(v13 + 8))(v9, v12);
  }

  v24 = v19;
  [v24 setPriority_];
  [v24 setScheduleAfter_];
  [v24 setTrySchedulingBefore_];
  if (qword_1EDEAB628 != -1)
  {
    swift_once();
  }

  v26 = dword_1EDEBBA40 != 3 && dword_1EDEBBA40 != 9;
  [v24 setRequiresExternalPower_];
  [v24 setRequiresInexpensiveNetworkConnectivity_];

  sub_1CEFCCC44(v11, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  (*(v13 + 8))(v16, v12);
  return v24;
}

uint64_t sub_1CF5B5C00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a1;
  v41 = a2;
  v40 = sub_1CF9E5DD8();
  v37 = *(v40 - 8);
  v2 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v39 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1CF9E5DE8();
  v4 = *(v38 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CF9E5DC8();
  v34 = *(v8 - 8);
  v9 = v34;
  v10 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B80, &qword_1CFA0CD08);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v34 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B88, &unk_1CFA0CD10);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v34 - v19;
  v21 = sub_1CF9E5518();
  v35 = *(v21 - 8);
  v36 = v21;
  v22 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1CF9E5E38();
  (*(*(v25 - 8) + 56))(v20, 1, 1, v25);
  v26 = sub_1CF9E5E48();
  (*(*(v26 - 8) + 56))(v16, 1, 1, v26);
  sub_1CF9E5508();
  v27 = *(v9 + 104);
  v28 = v8;
  v27(v12, *MEMORY[0x1E69698D0], v8);
  v29 = v38;
  (*(v4 + 104))(v7, *MEMORY[0x1E69699C8], v38);
  v30 = v37;
  v32 = v39;
  v31 = v40;
  (*(v37 + 104))(v39, *MEMORY[0x1E6969998], v40);
  sub_1CF9E5E18();
  (*(v30 + 8))(v32, v31);
  (*(v4 + 8))(v7, v29);
  (*(v34 + 8))(v12, v28);
  return (*(v35 + 8))(v24, v36);
}

uint64_t sub_1CF5B60F8()
{
  sub_1CF9E7948();

  v5 = *v0;
  v1 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v1);

  MEMORY[0x1D3868CC0](0x6144746573657220, 0xEB000000003D6574);
  v2 = v0 + *(type metadata accessor for DBCounters() + 20);
  v3 = sub_1CF9E5C08();
  MEMORY[0x1D3868CC0](v3);

  return 0x756F436873756C66;
}

uint64_t sub_1CF5B61E4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F60, &unk_1CFA00830);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1CF9FA440;
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1CF9FA440;
  v3 = MEMORY[0x1E69E6158];
  *(v2 + 32) = 0x756F436873756C66;
  *(v2 + 40) = 0xEA0000000000746ELL;
  v4 = *v0;
  *(v2 + 88) = MEMORY[0x1E69E76D8];
  *(v2 + 56) = v3;
  *(v2 + 64) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEE20, &qword_1CFA0CD90);
  *(v1 + 56) = v5;
  *(v1 + 32) = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1CF9FA440;
  *(v6 + 56) = v3;
  *(v6 + 32) = 0x7461447465736572;
  *(v6 + 40) = 0xE900000000000065;
  v7 = *(type metadata accessor for DBCounters() + 20);
  v8 = sub_1CF9E5CF8();
  *(v6 + 88) = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v6 + 64));
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_0, &v0[v7], v8);
  *(v1 + 88) = v5;
  *(v1 + 64) = v6;
  return v1;
}

uint64_t sub_1CF5B6360(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1A88, &qword_1CFA0CC80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF5DC71C();
  sub_1CF9E82A8();
  v11 = *v3;
  v14[15] = 0;
  sub_1CF9E7F68();
  if (!v2)
  {
    v12 = *(type metadata accessor for DBCounters() + 20);
    v14[14] = 1;
    sub_1CF9E5CF8();
    sub_1CF5DFB70(&qword_1EDEAB3D0, MEMORY[0x1E6969530]);
    sub_1CF9E7F08();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1CF5B6518@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v27 = sub_1CF9E5CF8();
  v24 = *(v27 - 8);
  v4 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1A70, &qword_1CFA0CC78);
  v26 = *(v28 - 8);
  v7 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v9 = &v21 - v8;
  v10 = type metadata accessor for DBCounters();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = (&v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v13 = 0;
  v15 = *(v14 + 28);
  sub_1CF9E5CC8();
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF5DC71C();
  sub_1CF9E8298();
  if (!v2)
  {
    v23 = v15;
    v17 = v26;
    v18 = v27;
    v30 = 0;
    v19 = v28;
    *v13 = sub_1CF9E7DE8();
    v29 = 1;
    sub_1CF5DFB70(&unk_1EDEAB3A0, MEMORY[0x1E6969530]);
    v22 = v6;
    sub_1CF9E7D88();
    (*(v17 + 8))(v9, v19);
    (*(v24 + 40))(v13 + v23, v22, v18);
    sub_1CF043498(v13, v25, type metadata accessor for DBCounters);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1CF043504(v13, type metadata accessor for DBCounters);
}

uint64_t sub_1CF5B6838()
{
  if (*v0)
  {
    result = 0x7461447465736572;
  }

  else
  {
    result = 0x756F436873756C66;
  }

  *v0;
  return result;
}

uint64_t sub_1CF5B687C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x756F436873756C66 && a2 == 0xEA0000000000746ELL;
  if (v6 || (sub_1CF9E8048() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7461447465736572 && a2 == 0xE900000000000065)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1CF9E8048();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1CF5B6968(uint64_t a1)
{
  v2 = sub_1CF5DC71C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF5B69A4(uint64_t a1)
{
  v2 = sub_1CF5DC71C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CF5B6A1C(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = 0x7865646E496C6C61;
    v3 = 0x49676E6968746F6ELL;
    if (a1 != 2)
    {
      v3 = 0x7865646E49746F6ELL;
    }

    if (!a1)
    {
      v2 = 0x6E776F6E6B6E75;
    }

    if (a1 <= 1)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }

  else
  {
    v5 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v5);

    MEMORY[0x1D3868CC0](41, 0xE100000000000000);
    return 0x28726F68636E61;
  }
}

uint64_t sub_1CF5B6B34(void *a1, uint64_t a2, int a3)
{
  v45 = a2;
  v44 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B00, &qword_1CFA0CCC0);
  v42 = *(v4 - 8);
  v43 = v4;
  v5 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v41 = &v31 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B08, &qword_1CFA0CCC8);
  v39 = *(v7 - 8);
  v40 = v7;
  v8 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v38 = &v31 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B10, &qword_1CFA0CCD0);
  v36 = *(v10 - 8);
  v37 = v10;
  v11 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v35 = &v31 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B18, &qword_1CFA0CCD8);
  v33 = *(v13 - 8);
  v34 = v13;
  v14 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v32 = &v31 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B20, &qword_1CFA0CCE0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v31 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B28, &qword_1CFA0CCE8);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v31 - v24;
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF5DE324();
  sub_1CF9E82A8();
  if (v44)
  {
    if (v45 > 1)
    {
      if (v45 == 2)
      {
        v49 = 3;
        sub_1CF5DE3CC();
        v27 = v38;
        sub_1CF9E7E18();
        v29 = v39;
        v28 = v40;
      }

      else
      {
        v50 = 4;
        sub_1CF5DE378();
        v27 = v41;
        sub_1CF9E7E18();
        v29 = v42;
        v28 = v43;
      }
    }

    else if (v45)
    {
      v48 = 2;
      sub_1CF5DE420();
      v27 = v35;
      sub_1CF9E7E18();
      v29 = v36;
      v28 = v37;
    }

    else
    {
      v47 = 1;
      sub_1CF5DE474();
      v27 = v32;
      sub_1CF9E7E18();
      v29 = v33;
      v28 = v34;
    }

    (*(v29 + 8))(v27, v28);
    return (*(v22 + 8))(v25, v21);
  }

  else
  {
    v46 = 0;
    sub_1CF5DE4C8();
    sub_1CF9E7E18();
    sub_1CF9E7EE8();
    (*(v17 + 8))(v20, v16);
    return (*(v22 + 8))(v25, v21);
  }
}

uint64_t sub_1CF5B7074(uint64_t a1)
{
  v2 = sub_1CF5DE420();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF5B70B0(uint64_t a1)
{
  v2 = sub_1CF5DE420();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CF5B70F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1CF9E8048();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1CF5B7178(uint64_t a1)
{
  v2 = sub_1CF5DE4C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF5B71B4(uint64_t a1)
{
  v2 = sub_1CF5DE4C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CF5B71F0()
{
  v1 = *v0;
  v2 = 0x726F68636E61;
  v3 = 0x7865646E496C6C61;
  v4 = 0x49676E6968746F6ELL;
  if (v1 != 3)
  {
    v4 = 0x7865646E49746F6ELL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E776F6E6B6E75;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1CF5B72A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CF5DD8DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CF5B72C8(uint64_t a1)
{
  v2 = sub_1CF5DE324();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF5B7304(uint64_t a1)
{
  v2 = sub_1CF5DE324();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CF5B7340(uint64_t a1)
{
  v2 = sub_1CF5DE378();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF5B737C(uint64_t a1)
{
  v2 = sub_1CF5DE378();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CF5B73B8(uint64_t a1)
{
  v2 = sub_1CF5DE3CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF5B73F4(uint64_t a1)
{
  v2 = sub_1CF5DE3CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CF5B7430(uint64_t a1)
{
  v2 = sub_1CF5DE474();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF5B746C(uint64_t a1)
{
  v2 = sub_1CF5DE474();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CF5B74A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1CF5DDA9C(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5 & 1;
  }

  return result;
}

uint64_t sub_1CF5B74FC(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a2 == 2)
  {
    v4 = *(a2 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (v3 > 2)
  {
    v5 = *(a2 + 8);
  }

  else
  {
    v5 = 0;
  }

  if (v2 != 2)
  {
    v4 = v5;
  }

  if (v3)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(a2 + 8);
  }

  if (v3 == 1)
  {
    v7 = *(a2 + 8);
  }

  else
  {
    v7 = 0;
  }

  if (!v2)
  {
    v7 = v6;
  }

  if (v2 <= 1)
  {
    v8 = v7;
  }

  else
  {
    v8 = v4;
  }

  if (*(a1 + 8) == 1)
  {
    return v8;
  }

  else
  {
    return (*a1 == *a2) & ~*(a2 + 8);
  }
}

void sub_1CF5B7558()
{
  v1 = *(v0 + 96);
  if (v1)
  {
    v2 = *(v0 + 104);
    v3 = *(v0 + 90);

    v1(v3);

    sub_1CEFF7124(v1);
  }
}

uint64_t sub_1CF5B75CC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  v5 = a1[24];
  v7 = *(v4 + 616);
  v8 = *(v4 + 632);
  type metadata accessor for FSOrFPJob();
  sub_1CF9E66B8();

  swift_getWitnessTable();
  result = sub_1CF9E78C8();
  *a2 = result;
  return result;
}

uint64_t sub_1CF5B76D4@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  *a4 = a1;
  v7 = type metadata accessor for ConcreteDatabase.MaterializationRequest();
  v8 = *(v7 + 52);
  v9 = sub_1CF9E6448();
  result = (*(*(v9 - 8) + 32))(&a4[v8], a2, v9);
  *&a4[*(v7 + 56)] = a3;
  return result;
}

id sub_1CF5B7778()
{
  sub_1CF5DC874();

  v0 = sub_1CF9E6888();

  return v0;
}

id sub_1CF5B77D8(id result, uint64_t a2)
{
  if (result)
  {
    if (qword_1EDEADB60 != -1)
    {
      swift_once();
    }

    v3 = qword_1EDEBBD10;

    return [v3 markWatcherDone_];
  }

  return result;
}

uint64_t sub_1CF5B7854(void *a1, void *a2)
{
  v5 = *(*a2 + 624);
  v6 = *(*a2 + 632);
  v7 = *(*a2 + 640);
  v98 = *(*a2 + 616);
  v4 = v98;
  v99 = v5;
  v91 = v5;
  v100 = v6;
  v101 = v7;
  v89 = v7;
  v8 = type metadata accessor for PersistenceTrigger();
  v95 = *(v8 - 8);
  v96 = v8;
  v9 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v94 = v74 - v10;
  v88 = sub_1CF9E5CF8();
  v86 = *(v88 - 8);
  v11 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v88);
  v87 = v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1CF9E6118();
  v84 = *(v13 - 8);
  v85 = v13;
  v14 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = v6;
  v92 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v93 = *(AssociatedTypeWitness - 8);
  v18 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v20 = v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = v74 - v22;
  v25 = a1[3];
  v24 = a1[4];
  v26 = __swift_project_boxed_opaque_existential_1(a1, v25);
  v27 = a2[2];
  v28 = v97;
  result = (*(*v27 + 240))(v26, v25, *(v24 + 8));
  if (!v28)
  {
    v82 = v23;
    v79 = v16;
    v80 = v20;
    v83 = a2;
    v81 = AssociatedTypeWitness;
    v30 = v96;
    v97 = 0;
    if (result)
    {
LABEL_3:
      v32 = v94;
      v31 = v95;
      swift_storeEnumTagMultiPayload();
      sub_1CF042D98(v32);
      return (*(v31 + 8))(v32, v30);
    }

    v33 = a1;
    v35 = a1[3];
    v34 = a1[4];
    v36 = __swift_project_boxed_opaque_existential_1(a1, v35);
    v37 = v97;
    result = (*(*v27 + 248))(v36, v35, *(v34 + 8));
    if (!v37)
    {
      v97 = 0;
      if ((result & 1) == 0)
      {
        goto LABEL_3;
      }

      v78 = a1[3];
      v77 = a1[4];
      v76 = __swift_project_boxed_opaque_existential_1(a1, v78);
      v38 = v83[4];
      v75 = v83[3];
      v74[0] = v38;
      sub_1CF046AB4();
      v40 = v91;
      v39 = v92;
      v98 = v92;
      v99 = v91;
      v42 = v89;
      v41 = v90;
      v100 = v90;
      v101 = v89;
      v74[1] = type metadata accessor for ItemJob();
      MetatypeMetadata = swift_getMetatypeMetadata();
      v44 = sub_1CF656CD8(MetatypeMetadata, MetatypeMetadata);
      v45 = *(v44 + 52);
      v46 = (*(v44 + 48) + 7) & 0x1FFFFFFF8;
      swift_allocObject();
      v47 = sub_1CF9E6D68();
      v98 = v39;
      v99 = v40;
      v48 = v82;
      v100 = v41;
      v101 = v42;
      *v49 = type metadata accessor for DiskImport.ContinueDiskImport();
      v50 = sub_1CF045898(v47);
      v51 = v97;
      v52 = (*(*v75 + 312))(v48, v50, v76, v78, *(v77 + 8));
      v97 = v51;
      if (v51)
      {
        (*(v93 + 8))(v48, v81);
      }

      v53 = *(v93 + 8);
      v54 = v52;
      v53(v48, v81);

      v98 = v54;
      sub_1CF9E6E58();
      swift_getWitnessTable();
      v55 = sub_1CF9E7128();

      if ((v55 & 1) == 0)
      {
        goto LABEL_3;
      }

      v56 = fpfs_current_or_default_log();
      v57 = v79;
      sub_1CF9E6128();
      v58 = sub_1CF9E6108();
      v59 = sub_1CF9E72B8();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&dword_1CEFC7000, v58, v59, "👽  missing continue-disk-import job, adding a new one", v60, 2u);
        MEMORY[0x1D386CDC0](v60, -1, -1);
      }

      (*(v84 + 8))(v57, v85);
      v61 = v33[3];
      v93 = v33[4];
      v92 = __swift_project_boxed_opaque_existential_1(v33, v61);
      sub_1CF046AB4();
      v62 = v87;
      sub_1CF9E5CE8();
      sub_1CF9E5C98();
      v64 = v63;
      v65 = *(v86 + 8);
      result = v65(v62, v88);
      v66 = v64 * 1000000000.0;
      if (COERCE__INT64(fabs(v64 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v66 > -9.22337204e18)
      {
        v67 = v80;
        if (v66 < 9.22337204e18)
        {
          v68 = sub_1CF559420(v80, 0x2000000000000000, v66, 0x20000);
          v53(v67, v81);
          v69 = v87;
          sub_1CF9E5CE8();
          sub_1CF9E5C98();
          v71 = v70;
          result = v65(v69, v88);
          v72 = v71 * 1000000000.0;
          if (COERCE__INT64(fabs(v71 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            v73 = v97;
            if (v72 > -9.22337204e18)
            {
              if (v72 < 9.22337204e18)
              {
                sub_1CF5215C0(v68);

                if (!v73)
                {
                  v97 = 0;
                  goto LABEL_3;
                }

                return result;
              }

LABEL_25:
              __break(1u);
              return result;
            }

LABEL_24:
            __break(1u);
            goto LABEL_25;
          }

LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      __break(1u);
      goto LABEL_22;
    }
  }

  return result;
}

uint64_t sub_1CF5B805C(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 632);
  v9[0] = *(*a2 + 616);
  v9[1] = v2;
  v3 = type metadata accessor for PersistenceTrigger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v9 - v6;
  swift_storeEnumTagMultiPayload();
  sub_1CF042D98(v7);
  return (*(v4 + 8))(v7, v3);
}

id sub_1CF5B817C(void *a1, uint64_t a2)
{
  v4 = a1[3];
  v5 = a1[4];
  v6 = __swift_project_boxed_opaque_existential_1(a1, v4);
  result = (*(**(a2 + 24) + 488))(v6, v4, v5);
  if (!v2)
  {
    if (qword_1EDEAC220 != -1)
    {
      swift_once();
    }

    result = [qword_1EDEBBA80 removeWatcher_];
    *(a2 + qword_1EDEBBC40) = 0;
  }

  return result;
}

uint64_t sub_1CF5B8260(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 632);
  v9[0] = *(*a2 + 616);
  v9[1] = v2;
  v3 = type metadata accessor for PersistenceTrigger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v9 - v6;
  *(v9 - v6) = &unk_1F4BEF0B0;
  swift_storeEnumTagMultiPayload();
  sub_1CF042D98(v7);
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1CF5B838C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;

  sub_1CF5A5720(v3);
}

uint64_t sub_1CF5B83E0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, void *a3@<X8>)
{
  v6 = *a1;
  swift_beginAccess();
  v7 = a1[24];

  v10 = *(v6 + 616);
  v11 = *(v6 + 632);
  type metadata accessor for FSOrFPJob();
  sub_1CF9E6728();

  v9 = v10;
  if ((~v10 & 0xF000000000000007) == 0)
  {

    v9 = a2;
  }

  *a3 = v9;
  return result;
}

uint64_t sub_1CF5B84FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v90 = a6;
  v101 = a5;
  v98 = a3;
  v99 = a4;
  v100 = a2;
  v7 = *(*a2 + 632);
  v108[0] = *(*a2 + 616);
  v108[1] = v7;
  v8 = type metadata accessor for PersistenceTrigger();
  v95 = *(v8 - 8);
  v9 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v89 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v94 = &v86 - v12;
  v13 = sub_1CF9E6118();
  v103 = *(v13 - 8);
  v104 = v13;
  v14 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v105 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v91 = &v86 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v106 = &v86 - v19;
  v20 = sub_1CF9E6068();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v97 = &v86 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v86 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v86 - v29;
  v31 = type metadata accessor for Signpost(0);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31);
  v109 = &v86 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v34 = qword_1EDEBBE40;
  (*(v21 + 56))(v30, 1, 1, v20);
  *&v108[0] = 0;
  *(&v108[0] + 1) = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0x2072656767697274, 0xE800000000000000);
  v107 = a1;
  sub_1CF9E7FD8();
  v92 = *(&v108[0] + 1);
  v93 = *&v108[0];
  sub_1CEFCCBDC(v30, v27, &unk_1EC4BED20, &unk_1CFA00700);
  v35 = *(v21 + 48);
  v36 = v35(v27, 1, v20);
  v96 = v8;
  if (v36 == 1)
  {
    v37 = v34;
    v38 = v97;
    sub_1CF9E6048();
    v39 = v38;
    if (v35(v27, 1, v20) != 1)
    {
      sub_1CEFCCC44(v27, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v39 = v97;
    (*(v21 + 32))(v97, v27, v20);
  }

  v40 = v109;
  (*(v21 + 16))(v109, v39, v20);
  *&v40[*(v31 + 20)] = v34;
  v41 = &v40[*(v31 + 24)];
  *v41 = "SQLDB: React to trigger";
  *(v41 + 1) = 23;
  v41[16] = 2;
  v42 = v34;
  sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1CF9FA450;
  *(v43 + 56) = MEMORY[0x1E69E6158];
  *(v43 + 64) = sub_1CEFD51C4();
  v44 = v92;
  *(v43 + 32) = v93;
  *(v43 + 40) = v44;
  v97 = v42;
  sub_1CF9E6028();

  (*(v21 + 8))(v39, v20);
  sub_1CEFCCC44(v30, &unk_1EC4BED20, &unk_1CFA00700);
  v45 = [objc_allocWithZone(FPLoggerScope) init];
  v46 = fpfs_current_or_default_log();
  v47 = v106;
  sub_1CF9E6128();
  v48 = v94;
  v49 = v95;
  v50 = *(v95 + 16);
  v51 = v96;
  v50(v94, v107, v96);
  v52 = v45;
  v53 = sub_1CF9E6108();
  v54 = sub_1CF9E7288();

  v55 = os_log_type_enabled(v53, v54);
  v93 = v52;
  if (v55)
  {
    v56 = swift_slowAlloc();
    v88 = v54;
    v57 = v56;
    v87 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    *&v108[0] = v92;
    *v57 = 138412546;
    v58 = [v52 enter];
    *(v57 + 4) = v58;
    v59 = v87;
    *v87 = v58;
    *(v57 + 12) = 2082;
    v50(v89, v48, v51);
    v60 = sub_1CF9E6948();
    v62 = v61;
    (*(v49 + 8))(v48, v51);
    v63 = sub_1CEFD0DF0(v60, v62, v108);

    *(v57 + 14) = v63;
    _os_log_impl(&dword_1CEFC7000, v53, v88, "%@  💡 trigger: %{public}s", v57, 0x16u);
    sub_1CEFCCC44(v59, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v59, -1, -1);
    v64 = v92;
    __swift_destroy_boxed_opaque_existential_1(v92);
    MEMORY[0x1D386CDC0](v64, -1, -1);
    MEMORY[0x1D386CDC0](v57, -1, -1);

    v65 = *(v103 + 8);
    v66 = v106;
  }

  else
  {

    (*(v49 + 8))(v48, v51);
    v65 = *(v103 + 8);
    v66 = v47;
  }

  v67 = v104;
  v65(v66, v104);
  v68 = v102;
  (*(*v100 + 2592))(v107, v98, v99, v101);
  if (v68)
  {
    v69 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v70 = v93;
    v71 = sub_1CF9E6108();
    v72 = sub_1CF9E7288();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      *v73 = 138412290;
      v75 = [v70 leave];
      *(v73 + 4) = v75;
      *v74 = v75;
      _os_log_impl(&dword_1CEFC7000, v71, v72, "%@", v73, 0xCu);
      sub_1CEFCCC44(v74, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v74, -1, -1);
      MEMORY[0x1D386CDC0](v73, -1, -1);
    }

    v65(v105, v67);
    sub_1CF9E7458();
    v76 = v109;
    sub_1CF9E6038();
    result = sub_1CF043504(v76, type metadata accessor for Signpost);
    *v90 = v68;
  }

  else
  {
    v78 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v79 = v93;
    v80 = sub_1CF9E6108();
    v81 = sub_1CF9E7288();

    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      *v82 = 138412290;
      v84 = [v79 leave];
      *(v82 + 4) = v84;
      *v83 = v84;
      _os_log_impl(&dword_1CEFC7000, v80, v81, "%@", v82, 0xCu);
      sub_1CEFCCC44(v83, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v83, -1, -1);
      MEMORY[0x1D386CDC0](v82, -1, -1);
    }

    v65(v91, v67);
    sub_1CF9E7458();
    v85 = v109;
    sub_1CF9E6038();
    return sub_1CF043504(v85, type metadata accessor for Signpost);
  }

  return result;
}

uint64_t sub_1CF5B901C(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v56 = a3;
  v57 = a4;
  v55 = a2;
  v54 = a1;
  v59 = sub_1CF9E6118();
  v58 = *(v59 - 8);
  v7 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v52 = &v51 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v53 = &v51 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v51 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v51 - v18;
  v20 = sub_1CF9E64A8();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = (&v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = *(v6 + 64);
  *v25 = v26;
  (*(v21 + 104))(v25, *MEMORY[0x1E69E8020], v20, v23);
  v27 = v26;
  LOBYTE(v26) = sub_1CF9E64D8();
  result = (*(v21 + 8))(v25, v20);
  if (v26)
  {
    if (sub_1CF03BB04())
    {
      v29 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v30 = sub_1CF9E6108();
      v31 = sub_1CF9E7298();
      if (!os_log_type_enabled(v30, v31))
      {
LABEL_10:
        v9 = v19;
        goto LABEL_11;
      }

      v32 = swift_slowAlloc();
      *v32 = 0;
      v33 = "🚀  scheduler not stable: jobs are running";
    }

    else
    {
      v34 = *(v6 + 24);
      if ((*(*v34 + 200))())
      {
        v35 = fpfs_current_or_default_log();
        sub_1CF9E6128();
        v30 = sub_1CF9E6108();
        v36 = sub_1CF9E7298();
        if (!os_log_type_enabled(v30, v36))
        {
          v9 = v16;
          goto LABEL_11;
        }

        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_1CEFC7000, v30, v36, "🚀  scheduler not stable: some throttles are still active", v32, 2u);
        v19 = v16;
        goto LABEL_9;
      }

      v39 = v55;
      v38 = v56;
      v40 = v57;
      v41 = (*(*v34 + 192))(v54 & 1, v55, v56, v57);
      if (v5)
      {
        return v37 & 1;
      }

      if (v41)
      {
        v42 = fpfs_current_or_default_log();
        v19 = v53;
        sub_1CF9E6128();
        v30 = sub_1CF9E6108();
        v31 = sub_1CF9E7298();
        if (!os_log_type_enabled(v30, v31))
        {
          goto LABEL_10;
        }

        v32 = swift_slowAlloc();
        *v32 = 0;
        v33 = "🚀  scheduler not stable: some jobs are still pending execution";
      }

      else
      {
        v43 = (*(**(v6 + 16) + 304))(v39, v38, v40);
        if ((v43 & 1) == 0)
        {
          v45 = *(v6 + 136);

          v46 = sub_1CF529F40();

          if ((v46 & 1) == 0)
          {
            v47 = *(v6 + 144);

            v48 = sub_1CF529F40();

            if ((v48 & 1) == 0)
            {
              v37 = 1;
              return v37 & 1;
            }
          }

          v49 = fpfs_current_or_default_log();
          sub_1CF9E6128();
          v30 = sub_1CF9E6108();
          v50 = sub_1CF9E7298();
          if (!os_log_type_enabled(v30, v50))
          {
LABEL_11:

            (*(v58 + 8))(v9, v59);
            v37 = 0;
            return v37 & 1;
          }

          v32 = swift_slowAlloc();
          *v32 = 0;
          _os_log_impl(&dword_1CEFC7000, v30, v50, "🚀  scheduler not stable: some ingestions are being deferred", v32, 2u);
          v19 = v9;
          goto LABEL_9;
        }

        v44 = fpfs_current_or_default_log();
        v19 = v52;
        sub_1CF9E6128();
        v30 = sub_1CF9E6108();
        v31 = sub_1CF9E7298();
        if (!os_log_type_enabled(v30, v31))
        {
          goto LABEL_10;
        }

        v32 = swift_slowAlloc();
        *v32 = 0;
        v33 = "🚀  scheduler not stable: some reconciliations are pending scheduling";
      }
    }

    _os_log_impl(&dword_1CEFC7000, v30, v31, v33, v32, 2u);
LABEL_9:
    MEMORY[0x1D386CDC0](v32, -1, -1);
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF5B95DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v37 = a7;
  v11 = sub_1CF9E6118();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v17 = sub_1CF9E6108();
  v18 = sub_1CF9E72C8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v32 = v11;
    v20 = v19;
    *v19 = 134217984;
    v33 = a3;
    v34 = a4;
    v35 = a6;
    v36 = v37;
    v30 = type metadata accessor for UserRequest();
    type metadata accessor for FPStabilizationMode(255);
    v31 = v18;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0720, &qword_1CFA05B30);
    swift_getTupleTypeMetadata3();
    *(v20 + 1) = sub_1CF9E6DF8();

    _os_log_impl(&dword_1CEFC7000, v17, v31, "🚀  job scheduler is stable and flushed, calling %ld stabilization waiters", v20, 0xCu);
    v21 = v20;
    v11 = v32;
    MEMORY[0x1D386CDC0](v21, -1, -1);
  }

  else
  {
  }

  (*(v12 + 8))(v15, v11);
  v33 = a3;
  v34 = a4;
  v35 = a6;
  v36 = v37;
  type metadata accessor for UserRequest();
  type metadata accessor for FPStabilizationMode(255);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0720, &qword_1CFA05B30);
  swift_getTupleTypeMetadata3();
  result = sub_1CF9E6DF8();
  if (result)
  {
    v23 = 0;
    for (i = (a2 + 56); ; i += 4)
    {
      v25 = sub_1CF9E6DC8();
      result = sub_1CF9E6D78();
      if ((v25 & 1) == 0)
      {
        break;
      }

      v26 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        goto LABEL_11;
      }

      v28 = *(i - 1);
      v27 = *i;
      v29 = *(i - 3);
      v33 = 0;
      sub_1CEFD09A0(v29);

      v28(&v33);
      sub_1CF5DE5B8(v29);

      result = sub_1CF9E6DF8();
      ++v23;
      if (v26 == result)
      {
        return result;
      }
    }

    result = sub_1CF9E7998();
    __break(1u);
LABEL_11:
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF5B991C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18[0] = a4;
  v18[1] = a5;
  v18[2] = a7;
  v18[3] = a8;
  type metadata accessor for UserRequest();
  type metadata accessor for FPStabilizationMode(255);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0720, &qword_1CFA05B30);
  swift_getTupleTypeMetadata3();
  result = sub_1CF9E6DF8();
  if (result)
  {
    v11 = 0;
    for (i = (a3 + 56); ; i += 4)
    {
      v13 = sub_1CF9E6DC8();
      result = sub_1CF9E6D78();
      if ((v13 & 1) == 0)
      {
        break;
      }

      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_8;
      }

      v16 = *(i - 1);
      v15 = *i;
      v17 = *(i - 3);
      v18[0] = a2;
      sub_1CEFD09A0(v17);

      v16(v18);
      sub_1CF5DE5B8(v17);

      result = sub_1CF9E6DF8();
      ++v11;
      if (v14 == result)
      {
        return result;
      }
    }

    result = sub_1CF9E7998();
    __break(1u);
LABEL_8:
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF5B9A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v35 = a2;
  v37 = a4;
  v12 = sub_1CF9E6118();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v18 = sub_1CF9E6108();
  v19 = sub_1CF9E72C8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v34 = a5;
    v21 = a7;
    v22 = a8;
    v23 = v20;
    *v20 = 134217984;
    *(v20 + 4) = v35;
    _os_log_impl(&dword_1CEFC7000, v18, v19, "🚀  job scheduler is stable and flushed, calling %ld stabilization waiters with no noBackgroundWork", v20, 0xCu);
    v24 = v23;
    a8 = v22;
    a7 = v21;
    a5 = v34;
    MEMORY[0x1D386CDC0](v24, -1, -1);
  }

  (*(v13 + 8))(v16, v12);
  v36[0] = v37;
  v36[1] = a5;
  v36[2] = a7;
  v36[3] = a8;
  type metadata accessor for UserRequest();
  type metadata accessor for FPStabilizationMode(255);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0720, &qword_1CFA05B30);
  swift_getTupleTypeMetadata3();
  result = sub_1CF9E6DF8();
  if (result)
  {
    v26 = 0;
    for (i = (a3 + 56); ; i += 4)
    {
      v28 = sub_1CF9E6DC8();
      result = sub_1CF9E6D78();
      if ((v28 & 1) == 0)
      {
        break;
      }

      v29 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        goto LABEL_10;
      }

      v31 = *(i - 1);
      v30 = *i;
      v32 = *(i - 3);
      v36[0] = 0;
      sub_1CEFD09A0(v32);

      v31(v36);
      sub_1CF5DE5B8(v32);

      result = sub_1CF9E6DF8();
      ++v26;
      if (v29 == result)
      {
        return result;
      }
    }

    result = sub_1CF9E7998();
    __break(1u);
LABEL_10:
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF5B9D80(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 8);
  (*(*a1[2] + 528))(a2, a3, v7);
  (*(*a1[4] + 688))(a2, a3, v7);
  return (*(*a1[5] + 688))(a2, a3, v7);
}

uint64_t sub_1CF5B9E88(void *a1, uint64_t (*a2)(void))
{
  result = a2();
  if (!v2)
  {
    v5 = a1[3];
    v6 = a1[4];
    v7 = __swift_project_boxed_opaque_existential_1(a1, v5);
    return sub_1CF5A62B4(v7, v5, v6);
  }

  return result;
}

uint64_t sub_1CF5B9F38(uint64_t a1, uint64_t a2, void (*a3)(_OWORD *, uint64_t))
{
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_1CF9E7458();
  v6 = type metadata accessor for Signpost(0);
  v7 = *(v6 + 24);
  v8 = *(a2 + *(v6 + 20));
  v9 = *(a2 + v7);
  v10 = *(a2 + v7 + 8);
  v11 = *(a2 + v7 + 16);
  sub_1CF9E6038();
  a3(v13, a1);
  return sub_1CEFCCC44(v13, &unk_1EC4C1B30, &qword_1CFA05300);
}

uint64_t sub_1CF5B9FE8(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, char *a10, char *a11, uint64_t a12)
{
  v63 = a8;
  LODWORD(v70) = a7;
  v15 = sub_1CF9E6068();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v71 = v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v68 = v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v59 - v23;
  v25 = type metadata accessor for Signpost(0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25);
  v74 = v59 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF9E7458();
  v28 = *(v25 + 24);
  v29 = *(a1 + v28);
  v30 = *(a1 + v28 + 8);
  v31 = *(a1 + v28 + 16);
  v62 = *(a1 + *(v25 + 20));
  v61 = v29;
  v60 = v30;
  v59[3] = v31;
  v64 = a1;
  v32 = sub_1CF9E6038();
  v33 = a2(v32);
  v73 = a4;
  v75 = *(a4 + 80);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v72 = a9;
  v67 = qword_1EDEBBE40;
  (*(v16 + 56))(v24, 1, 1, v15);
  *&v76 = 0;
  *(&v76 + 1) = 0xE000000000000000;
  sub_1CF9E7948();

  strcpy(&v76, "async batch ");
  BYTE13(v76) = 0;
  HIWORD(v76) = -5120;
  v34 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v34);

  MEMORY[0x1D3868CC0](0x467265746661203ALL, 0xED00003D6873756CLL);
  v69 = v33;
  if (v33)
  {
    v35 = 1702195828;
  }

  else
  {
    v35 = 0x65736C6166;
  }

  if (v33)
  {
    v36 = 0xE400000000000000;
  }

  else
  {
    v36 = 0xE500000000000000;
  }

  MEMORY[0x1D3868CC0](v35, v36);

  MEMORY[0x1D3868CC0](4424054777695860000, 0xE800000000000000);
  if ((v75 & 4) != 0)
  {
    v37 = 1702195828;
  }

  else
  {
    v37 = 0x65736C6166;
  }

  if ((v75 & 4) != 0)
  {
    v38 = 0xE400000000000000;
  }

  else
  {
    v38 = 0xE500000000000000;
  }

  MEMORY[0x1D3868CC0](v37, v38);

  v65 = *(&v76 + 1);
  v66 = v76;
  v70 = v24;
  v39 = v68;
  sub_1CEFCCBDC(v24, v68, &unk_1EC4BED20, &unk_1CFA00700);
  v40 = *(v16 + 48);
  if (v40(v39, 1, v15) == 1)
  {
    v41 = v67;
    v42 = v67;
    v43 = v71;
    sub_1CF9E6048();
    v44 = v40(v39, 1, v15);
    v45 = v74;
    if (v44 != 1)
    {
      sub_1CEFCCC44(v39, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v43 = v71;
    (*(v16 + 32))(v71, v39, v15);
    v45 = v74;
    v41 = v67;
  }

  v68 = a12;
  v74 = a11;
  v71 = a10;
  v46 = (v75 & 4) == 0;
  (*(v16 + 16))(v45, v43, v15);
  *(v45 + *(v25 + 20)) = v41;
  v47 = v45 + *(v25 + 24);
  *v47 = "DB queue";
  *(v47 + 8) = 8;
  *(v47 + 16) = 2;
  v48 = v41;
  sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_1CF9FA450;
  *(v49 + 56) = MEMORY[0x1E69E6158];
  *(v49 + 64) = sub_1CEFD51C4();
  v50 = v65;
  *(v49 + 32) = v66;
  *(v49 + 40) = v50;
  v58 = v49;
  LOBYTE(v57) = 2;
  v56 = 2;
  sub_1CF9E6028();

  (*(v16 + 8))(v43, v15);
  v51 = sub_1CEFCCC44(v70, &unk_1EC4BED20, &unk_1CFA00700);
  if (v69 & v46)
  {
    (*(*v73 + 448))("asyncBatch(function:side:afterNextDurableFlush:onCancel:updateBlock:)", 69, 2, v63 & 1, 0, v72, v71, v74, v68);
  }

  else
  {
    v77 = 0;
    v52 = MEMORY[0x1EEE9AC00](v51);
    v53 = v73;
    v54 = v68;
    *&v59[-16] = v74;
    *&v59[-14] = v54;
    *&v59[-12] = v53;
    *&v59[-10] = &v77;
    v56 = v64;
    v57 = v72;
    v58 = v71;
    (*(*v53 + 2528))(&v76, sub_1CF5DFA18, v52);
  }

  sub_1CF9E7458();
  sub_1CF9E6038();
  return sub_1CF043504(v45, type metadata accessor for Signpost);
}

uint64_t sub_1CF5BA7AC(void *a1, void (*a2)(void), uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6, void (*a7)(_BYTE *, uint64_t))
{
  a2();
  if (v7)
  {
    *a5 = 1;
    sub_1CF1A91AC(a1, v22);
    sub_1CF9E7458();
    v16 = type metadata accessor for Signpost(0);
    v17 = *(v16 + 24);
    v18 = *(a6 + *(v16 + 20));
    v19 = *(a6 + v17);
    v20 = *(a6 + v17 + 8);
    v21 = *(a6 + v17 + 16);
    sub_1CF9E6038();
    a7(v22, v7);
    sub_1CEFCCC44(v22, &unk_1EC4C1B30, &qword_1CFA05300);
    return swift_willThrow();
  }

  else
  {
    v12 = a1[3];
    v13 = a1[4];
    v14 = __swift_project_boxed_opaque_existential_1(a1, v12);
    return sub_1CF5A62B4(v14, v12, v13);
  }
}

uint64_t sub_1CF5BA8CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 192) = a6;
  *(v7 + 200) = a7;
  *(v7 + 176) = a4;
  *(v7 + 184) = a5;
  v8 = *a4;
  v9 = *(*(*a4 + 96) + 96);
  v10 = *(*a4 + 96);
  v30 = v10;
  v31 = *(*a4 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v7 + 208) = AssociatedTypeWitness;
  v12 = *(v10 + 104);
  v29 = v8[11];
  v13 = swift_getAssociatedTypeWitness();
  *(v7 + 216) = v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *(v7 + 224) = AssociatedConformanceWitness;
  v15 = swift_getAssociatedConformanceWitness();
  *(v7 + 232) = v15;
  *(v7 + 80) = AssociatedTypeWitness;
  *(v7 + 88) = v13;
  *(v7 + 96) = AssociatedConformanceWitness;
  *(v7 + 104) = v15;
  v16 = type metadata accessor for CodepathTriggeringDiagnostics();
  *(v7 + 240) = v16;
  v17 = *(v16 - 8);
  *(v7 + 248) = v17;
  v18 = *(v17 + 64) + 15;
  *(v7 + 256) = swift_task_alloc();
  v19 = v8[13];
  v20 = v8[14];
  WitnessTable = swift_getWitnessTable();
  v22 = swift_getWitnessTable();
  v23 = swift_getWitnessTable();
  *&v24 = v31;
  *(&v24 + 1) = v29;
  *&v25 = v30;
  *(&v25 + 1) = v19;
  *(v7 + 32) = v25;
  *(v7 + 16) = v24;
  *(v7 + 48) = v20;
  *(v7 + 56) = WitnessTable;
  *(v7 + 64) = v22;
  *(v7 + 72) = v23;
  type metadata accessor for FPDiagnosticsManager();
  swift_getWitnessTable();
  v27 = sub_1CF9E6EC8();

  return MEMORY[0x1EEE6DFA0](sub_1CF5BAB9C, v27, v26);
}