uint64_t sub_1CF814758()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v3 = (v0 + v2[13]);
  v4 = v3[13];
  v96 = v3[12];
  v97 = v4;
  v98 = v3[14];
  v99 = *(v3 + 30);
  v5 = v3[9];
  v92 = v3[8];
  v93 = v5;
  v6 = v3[11];
  v94 = v3[10];
  v95 = v6;
  v7 = v3[5];
  v88 = v3[4];
  v89 = v7;
  v8 = v3[7];
  v90 = v3[6];
  v91 = v8;
  v9 = v3[1];
  v84 = *v3;
  v85 = v9;
  v10 = v3[3];
  v86 = v3[2];
  v87 = v10;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v84) == 1)
  {
    v11 = 0;
    v12 = 0xE000000000000000;
  }

  else
  {
    v78 = v96;
    v79 = v97;
    v80 = v98;
    v81 = v99;
    v74 = v92;
    v75 = v93;
    v76 = v94;
    v77 = v95;
    v70 = v88;
    v71 = v89;
    v72 = v90;
    v73 = v91;
    v67[1] = v85;
    v68 = v86;
    v69 = v87;
    v13 = ItemNonSyncableAttributes.description.getter();
    *&v67[0] = 0x3A72747461736E20;
    *(&v67[0] + 1) = 0xE800000000000000;
    MEMORY[0x1D3868CC0](v13);

    v12 = 0xE800000000000000;
    v11 = 0x3A72747461736E20;
  }

  v14 = (v0 + v2[14]);
  if (v14[4])
  {
    v15 = 0;
    v16 = 0xE000000000000000;
  }

  else
  {
    v17 = v14[2];
    v18 = v14[3];
    v19 = *v14;
    v20 = v14[1];
    v21 = sub_1CF686424();
    *&v67[0] = 0x3A63657220;
    *(&v67[0] + 1) = 0xE500000000000000;
    MEMORY[0x1D3868CC0](v21);

    v16 = 0xE500000000000000;
    v15 = 0x3A63657220;
  }

  v22 = (v0 + v2[15]);
  if (v22[2])
  {
    v62 = 0;
    v23 = 0xE000000000000000;
  }

  else
  {
    v24 = *v22;
    v25 = v22[1];
    v26 = sub_1CF6865D8();
    *&v67[0] = 0x3A63657220;
    *(&v67[0] + 1) = 0xE500000000000000;
    MEMORY[0x1D3868CC0](v26);

    v23 = 0xE500000000000000;
    v62 = 0x3A63657220;
  }

  v27 = *(v0 + v2[16]);
  if (v27)
  {
    strcpy(v67, " unsupported:");
    HIWORD(v67[0]) = -4864;
    v28 = sub_1CF071470(v27);
    MEMORY[0x1D3868CC0](v28);

    v29 = *(&v67[0] + 1);
    v60 = *&v67[0];
  }

  else
  {
    v60 = 0;
    v29 = 0xE000000000000000;
  }

  v61 = v29;
  v30 = (v0 + v2[17]);
  v31 = *v30;
  v32 = v30[1] >> 62;
  v66 = v11;
  v64 = v15;
  v65 = v16;
  v63 = v23;
  if (!v32)
  {
    v33 = 1852270888;
    goto LABEL_17;
  }

  if (v32 == 1)
  {
    v33 = 1886221352;
LABEL_17:
    *&v67[0] = v33 & 0xFFFF0000FFFFFFFFLL | 0x3A00000000;
    *(&v67[0] + 1) = 0xE500000000000000;
    v34 = fpfs_tempfile_pattern_t.description.getter(v31);
    MEMORY[0x1D3868CC0](v34);

    MEMORY[0x1D3868CC0](41, 0xE100000000000000);
    v35 = 0xE500000000000000;
    v36 = *&v67[0];
    goto LABEL_19;
  }

  v36 = 0;
  v35 = 0xE000000000000000;
LABEL_19:
  if (*(v0 + v2[12]) == 1)
  {
    v37 = 47;
  }

  else
  {
    v37 = 0;
  }

  if (*(v0 + v2[12]) == 1)
  {
    v38 = 0xE100000000000000;
  }

  else
  {
    v38 = 0xE000000000000000;
  }

  *&v67[0] = 0;
  *(&v67[0] + 1) = 0xE000000000000000;
  sub_1CF9E7948();

  v82 = 3830588;
  v83 = 0xE300000000000000;
  v40 = *(v0 + 8);
  *&v67[0] = *v0;
  BYTE8(v67[0]) = v40;
  v42 = VFSItemID.description.getter(v39, v41);
  MEMORY[0x1D3868CC0](v42);

  v43 = MEMORY[0x1D3868CC0](3829792, 0xE300000000000000);
  v44 = *(v0 + 24);
  *&v67[0] = *(v0 + 16);
  BYTE8(v67[0]) = v44;
  v46 = VFSItemID.description.getter(v43, v45);
  MEMORY[0x1D3868CC0](v46);

  MEMORY[0x1D3868CC0](574254624, 0xE400000000000000);
  v47 = *(v0 + 128);
  v48 = *(v0 + 136);
  v49 = sub_1CF9E6888();
  v50 = [v49 fp_obfuscatedFilename];

  v51 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v53 = v52;

  MEMORY[0x1D3868CC0](v51, v53);

  MEMORY[0x1D3868CC0](v37, v38);

  MEMORY[0x1D3868CC0](34, 0xE100000000000000);
  MEMORY[0x1D3868CC0](v36, v35);

  MEMORY[0x1D3868CC0](32, 0xE100000000000000);
  v54 = sub_1CF0720C8();
  MEMORY[0x1D3868CC0](v54);

  MEMORY[0x1D3868CC0](v60, v61);

  MEMORY[0x1D3868CC0](3831328, 0xE300000000000000);
  v55 = v1[5];
  v68 = v1[4];
  v69 = v55;
  v56 = v1[7];
  v70 = v1[6];
  v71 = v56;
  v57 = v1[3];
  v67[0] = v1[2];
  v58 = sub_1CF680064();
  MEMORY[0x1D3868CC0](v58);

  MEMORY[0x1D3868CC0](v64, v65);

  MEMORY[0x1D3868CC0](v62, v63);

  MEMORY[0x1D3868CC0](62, 0xE100000000000000);

  MEMORY[0x1D3868CC0](v66, v12);

  return 3830588;
}

uint64_t sub_1CF814C94(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v61 = a2;
  v62 = a3;
  v5 = sub_1CF9E6388();
  v75 = *(v5 - 8);
  v76 = v5;
  v6 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v74 = (v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v72 = v59 - v9;
  v73 = sub_1CF9E6498();
  v71 = *(v73 - 8);
  v10 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v73);
  v70 = v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v66 = v59 - v14;
  v15 = sub_1CF9E63D8();
  v63 = *(v15 - 8);
  v64 = v15;
  v16 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v65 = v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1CF9E6448();
  v68 = *(v18 - 8);
  v69 = v18;
  v19 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v67 = v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1CF9E73D8();
  v60 = *(v21 - 8);
  v22 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1CF9E64A8();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x1EEE9AC00](v25);
  v30 = (v59 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = *(v3 + 16);
  v32 = v31[8];
  *v30 = v32;
  (*(v26 + 104))(v30, *MEMORY[0x1E69E8020], v25, v28);
  v33 = v32;
  LOBYTE(v32) = sub_1CF9E64D8();
  v34 = (*(v26 + 8))(v30, v25);
  if ((v32 & 1) == 0)
  {
    __break(1u);
LABEL_10:
    MEMORY[0x1EEE9AC00](v34);
    v59[-2] = v31;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, &v59[-4], "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  swift_beginAccess();
  sub_1CEFD09A0(a1);
  sub_1CF6EAAF0(&v78, a1);
  swift_endAccess();
  sub_1CEFD0A98(v78);
  v35 = *(v31[4] + 16);
  type metadata accessor for VFSFileTree(0);
  v36 = swift_dynamicCastClassUnconditional();

  v34 = objc_sync_enter(v31);
  if (v34)
  {
    goto LABEL_10;
  }

  v59[1] = v35;
  v37 = *(v31 + qword_1EDEADB30);
  v38 = objc_sync_exit(v31);
  if (v38)
  {
    MEMORY[0x1EEE9AC00](v38);
    v59[-2] = v31;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, &v59[-4], "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v39 = swift_allocObject();
  v39[2] = v3;
  v39[3] = a1;
  v40 = v62;
  v39[4] = v61;
  v39[5] = v40;
  sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
  v61 = v36;
  v41 = *(v36 + 216);
  v77 = MEMORY[0x1E69E7CC0];
  sub_1CEFD09A0(a1);
  sub_1CEFCCCA4(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0]);

  v42 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
  sub_1CEFCCCEC(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0);
  sub_1CF9E77B8();
  v43 = sub_1CF9E73E8();

  (*(v60 + 8))(v24, v21);
  qos_class_self();
  v44 = v66;
  sub_1CF9E63B8();
  v46 = v63;
  v45 = v64;
  v47 = *(v63 + 48);
  if (v47(v44, 1, v64) == 1)
  {
    (*(v46 + 104))(v65, *MEMORY[0x1E69E7FA0], v45);
    v48 = v47(v44, 1, v45);
    v50 = v75;
    v49 = v76;
    if (v48 != 1)
    {
      sub_1CEFCCC44(v44, &unk_1EC4BE380, &qword_1CFA01BA0);
    }
  }

  else
  {
    (*(v46 + 32))(v65, v44, v45);
    v50 = v75;
    v49 = v76;
  }

  ObjectType = swift_getObjectType();
  v52 = v67;
  sub_1CF9E6428();
  v53 = swift_allocObject();
  *(v53 + 16) = v61;
  *(v53 + 24) = 0;
  *(v53 + 32) = 2;
  *(v53 + 40) = 0u;
  *(v53 + 56) = 0u;
  *(v53 + 72) = 0u;
  *(v53 + 88) = 0u;
  *(v53 + 104) = 0u;
  *(v53 + 120) = 0u;
  *(v53 + 136) = 0u;
  *(v53 + 152) = v43;
  *(v53 + 160) = sub_1CF8FC9D4;
  *(v53 + 168) = v39;

  swift_unknownObjectRetain();

  sub_1CEFD5828(0, v52, sub_1CEFD5D08, v53);

  (*(v68 + 8))(v52, v69);
  v54 = v70;
  sub_1CF9E6478();
  v55 = v72;
  sub_1CEFD5B64(v72);
  v56 = v74;
  sub_1CEFD5BD8(v74);
  MEMORY[0x1D3869770](v54, v55, v56, ObjectType);
  v57 = *(v50 + 8);
  v57(v56, v49);
  v57(v55, v49);
  (*(v71 + 8))(v54, v73);
  sub_1CF9E7448();

  return swift_unknownObjectRelease();
}

uint64_t sub_1CF815590(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void), uint64_t a5)
{
  v49 = a4;
  v50 = a5;
  v48 = a1;
  v7 = type metadata accessor for VFSItem(0);
  v42 = *(v7 - 8);
  v43 = v7;
  v8 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v41 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  v10 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47);
  v46 = &v39 - v11;
  v12 = sub_1CF9E63A8();
  v45 = *(v12 - 8);
  v13 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1CF9E6448();
  v16 = *(v44 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *(a2 + 16);
  v20 = *(v39 + 64);
  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  *(v21 + 24) = a3;
  aBlock[4] = sub_1CF8FCA20;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEFCA444;
  aBlock[3] = &block_descriptor_3389;
  v22 = _Block_copy(aBlock);
  v23 = v20;
  v40 = a2;

  sub_1CEFD09A0(a3);
  sub_1CF9E63F8();
  v51 = MEMORY[0x1E69E7CC0];
  sub_1CEFCCCA4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CF9E77B8();
  MEMORY[0x1D3869630](0, v19, v15, v22);
  v24 = v46;
  _Block_release(v22);

  (*(v45 + 8))(v15, v12);
  (*(v16 + 8))(v19, v44);

  sub_1CEFCCBDC(v48, v24, &unk_1EC4BF310, &unk_1CF9FDB30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = sub_1CEFCCC44(v24, &unk_1EC4BF310, &unk_1CF9FDB30);
    return (v49)(v25);
  }

  v26 = v43;
  v25 = (*(v42 + 48))(v24, 1, v43);
  if (v25 == 1)
  {
    return (v49)(v25);
  }

  v28 = v41;
  sub_1CEFDA0C4(v24, v41, type metadata accessor for VFSItem);
  v29 = v28 + *(v26 + 28);
  if (*(v29 + *(type metadata accessor for ItemMetadata() + 80)))
  {
    v49();
  }

  else
  {
    v30 = *(*(v39 + 32) + 16);
    type metadata accessor for VFSFileTree(0);
    v31 = swift_dynamicCastClassUnconditional();
    v32 = swift_allocObject();
    v33 = v49;
    v34 = v50;
    v32[2] = v40;
    v32[3] = v33;
    v32[4] = v34;
    v35 = swift_allocObject();
    v35[2] = v31;
    v35[3] = sub_1CF8FCA44;
    v35[4] = v32;
    v36 = *(v31 + 216);
    v37 = swift_allocObject();
    v37[2] = v31;
    v37[3] = sub_1CF8FCA50;
    v37[4] = v35;
    swift_retain_n();

    v38 = v36;

    sub_1CF01001C(0, "eventBarrier(_:)", 16, 2, sub_1CF2AFA24, v37);
  }

  return sub_1CEFD5338(v28, type metadata accessor for VFSItem);
}

uint64_t sub_1CF815B94(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = *(a1 + 16);
  if ((*(v3 + 80) & 0x40) != 0)
  {
    v4 = *(*(v3 + 32) + 16);
    type metadata accessor for VFSFileTree(0);
    a1 = swift_dynamicCastClassUnconditional();
    v5 = *(a1 + 16);
    if (v5)
    {
      v6 = *(a1 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F70, &unk_1CF9FE710);
      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED40, &unk_1CFA00720) - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1CF9FA440;
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();

      v5(v10, MEMORY[0x1E69E7CC0], 0, 0);
      sub_1CEFF7124(v5);
    }
  }

  return a2(a1);
}

uint64_t sub_1CF815D18(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1CF9E64A8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v23[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *(v4 + 16);
  v15 = *(v14 + 64);
  *v13 = v15;
  (*(v9 + 104))(v13, *MEMORY[0x1E69E8020], v8, v11);
  v16 = v15;
  LOBYTE(v15) = sub_1CF9E64D8();
  result = (*(v9 + 8))(v13, v8);
  if (v15)
  {
    swift_beginAccess();
    sub_1CEFD09A0(a1);
    sub_1CF6EAAF0(&v24, a1);
    swift_endAccess();
    sub_1CEFD0A98(v24);
    v18 = *(*(v14 + 40) + 16);
    type metadata accessor for FPFileTree();
    v19 = swift_dynamicCastClassUnconditional();
    v20 = swift_allocObject();
    v20[2] = v4;
    v20[3] = a1;
    v20[4] = a2;
    v20[5] = a3;
    v21 = *(v19 + 160);
    v22 = swift_allocObject();
    v22[2] = v19;
    v22[3] = sub_1CF8FC990;
    v22[4] = v20;

    sub_1CEFD09A0(a1);

    sub_1CF01001C(0, "eventBarrier(_:)", 16, 2, sub_1CF2F46C4, v22);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF815F88(uint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v23 = a4;
  v24 = a3;
  v6 = sub_1CF9E63A8();
  v22 = *(v6 - 8);
  v7 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1CF9E6448();
  v10 = *(v21 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(*(a1 + 16) + 64);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  aBlock[4] = sub_1CF8FC99C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEFCA444;
  aBlock[3] = &block_descriptor_3375;
  v16 = _Block_copy(aBlock);
  v17 = v14;

  sub_1CEFD09A0(a2);
  sub_1CF9E63F8();
  v25 = MEMORY[0x1E69E7CC0];
  sub_1CEFCCCA4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CF9E77B8();
  MEMORY[0x1D3869630](0, v13, v9, v16);
  _Block_release(v16);

  (*(v22 + 8))(v9, v6);
  (*(v10 + 8))(v13, v21);

  return v24(v18);
}

unint64_t sub_1CF816284(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v4 = *(a1 + 16);
  v5 = *a3;
  swift_beginAccess();
  v6 = sub_1CF8DD744(a2);
  swift_endAccess();
  return sub_1CF8FC9C0(v6);
}

void sub_1CF8162F0(unint64_t a1, id a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v60 = a3;
  v9 = sub_1CF9E63A8();
  v65 = *(v9 - 8);
  v66 = v9;
  v10 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v64 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1CF9E6448();
  v62 = *(v12 - 8);
  v63 = v12;
  v13 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v61 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1CF9E6118();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = dispatch_group_create();
  v21 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  sub_1CEFD09A0(a1);
  v22 = sub_1CF9E6108();
  v23 = sub_1CF9E72C8();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v57 = v20;
    v25 = v24;
    v26 = swift_slowAlloc();
    v58 = a2;
    v27 = v26;
    aBlock = v26;
    *v25 = 136315138;
    v28 = sub_1CEFD11AC(a1);
    v59 = v5;
    v29 = a4;
    v30 = v28;
    v56 = v15;
    v32 = v31;
    sub_1CEFD0A98(a1);
    v33 = sub_1CEFD0DF0(v30, v32, &aBlock);

    *(v25 + 4) = v33;
    a4 = v29;
    v5 = v59;
    _os_log_impl(&dword_1CEFC7000, v22, v23, "🚀  waiting for stabilization of FS and FP trees for %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    v34 = v27;
    a2 = v58;
    MEMORY[0x1D386CDC0](v34, -1, -1);
    v35 = v25;
    v20 = v57;
    MEMORY[0x1D386CDC0](v35, -1, -1);

    (*(v16 + 8))(v19, v56);
  }

  else
  {
    sub_1CEFD0A98(a1);

    (*(v16 + 8))(v19, v15);
  }

  dispatch_group_enter(v20);
  v36 = swift_allocObject();
  *(v36 + 16) = a1;
  *(v36 + 24) = v20;
  sub_1CEFD09A0(a1);
  v37 = v20;
  sub_1CF814C94(a1, sub_1CF8FC818, v36);

  dispatch_group_enter(v37);
  v38 = swift_allocObject();
  *(v38 + 16) = a1;
  *(v38 + 24) = v37;
  sub_1CEFD09A0(a1);
  v59 = v37;
  sub_1CF815D18(a1, sub_1CF8FC87C, v38);

  v39 = *(v5[2].isa + 8);
  v40 = swift_allocObject();
  v40[2] = a1;
  v40[3] = v5;
  v40[4] = v60;
  v40[5] = a4;
  v40[6] = a2;
  sub_1CEFD09A0(a1);
  v41 = v39;

  v42 = fpfs_current_log();
  v60 = fpfs_adopt_log();
  v43 = swift_allocObject();
  aBlock = sub_1CF9E73C8();
  v69 = v44;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v45 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v45);

  sub_1CF9E6978();

  v46 = __fp_log_fork();

  *(v43 + 16) = v46;
  v47 = swift_allocObject();
  *(v47 + 16) = v42;
  *(v47 + 24) = v43;
  *(v47 + 32) = v41;
  *(v47 + 40) = "waitForSyncEngineStabilization(request:mode:_:)";
  *(v47 + 48) = 47;
  *(v47 + 56) = 2;
  *(v47 + 64) = sub_1CF8FC8A0;
  *(v47 + 72) = v40;
  v72 = sub_1CF2B9F54;
  v73 = v47;
  aBlock = MEMORY[0x1E69E9820];
  v69 = 1107296256;
  v70 = sub_1CEFCA444;
  v71 = &block_descriptor_3300;
  v48 = _Block_copy(&aBlock);
  v49 = v41;
  v58 = v42;

  v50 = v61;
  sub_1CF9E63F8();
  v67 = MEMORY[0x1E69E7CC0];
  sub_1CEFCCCA4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
  v51 = v64;
  v52 = v66;
  sub_1CF9E77B8();
  v53 = v59;
  sub_1CF9E7308();
  _Block_release(v48);
  (*(v65 + 8))(v51, v52);
  (*(v62 + 8))(v50, v63);

  v54 = v60;
  v55 = fpfs_adopt_log();
}

void sub_1CF8169E0(unint64_t a1, NSObject *a2, const char *a3)
{
  v6 = sub_1CF9E6118();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  sub_1CEFD09A0(a1);
  v12 = sub_1CF9E6108();
  v13 = sub_1CF9E72C8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v23 = a3;
    v15 = v14;
    v16 = swift_slowAlloc();
    v25 = v16;
    *v15 = 136315138;
    sub_1CEFD09A0(a1);
    v17 = sub_1CEFD11AC(a1);
    v24 = v6;
    v18 = a2;
    v20 = v19;
    sub_1CEFD0A98(a1);
    sub_1CEFD0A98(a1);
    v21 = sub_1CEFD0DF0(v17, v20, &v25);
    a2 = v18;

    *(v15 + 4) = v21;
    _os_log_impl(&dword_1CEFC7000, v12, v13, v23, v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x1D386CDC0](v16, -1, -1);
    MEMORY[0x1D386CDC0](v15, -1, -1);

    (*(v7 + 8))(v10, v24);
  }

  else
  {
    sub_1CEFD0A98(a1);

    (*(v7 + 8))(v10, v6);
  }

  dispatch_group_leave(a2);
}

void sub_1CF816BF4(unint64_t a1, uint64_t a2, uint64_t a3, id a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v141 = a5;
  v145 = a2;
  v128 = sub_1CF9E63D8();
  v127 = *(v128 - 8);
  v8 = *(v127 + 64);
  MEMORY[0x1EEE9AC00](v128);
  v126 = &v125 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v125 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v146 = &v125 - v15;
  v16 = sub_1CF9E6068();
  v136 = *(v16 - 8);
  v137 = v16;
  v17 = *(v136 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v125 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v130 = &v125 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v143 = &v125 - v24;
  v131 = type metadata accessor for Signpost(0);
  v133 = *(v131 - 8);
  v25 = *(v133 + 64);
  MEMORY[0x1EEE9AC00](v131);
  v138 = &v125 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v135 = &v125 - v28;
  v134 = v29;
  MEMORY[0x1EEE9AC00](v30);
  v144 = &v125 - v31;
  v32 = sub_1CF9E6118();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v140 = &v125 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v125 - v37;
  v39 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  sub_1CEFD09A0(a1);
  v40 = sub_1CF9E6108();
  v41 = sub_1CF9E72C8();
  v42 = os_log_type_enabled(v40, v41);
  v139 = v13;
  v132 = v19;
  if (v42)
  {
    v43 = swift_slowAlloc();
    v129 = a3;
    v142 = a4;
    v44 = v43;
    v45 = v32;
    v46 = swift_slowAlloc();
    *&aBlock = v46;
    *v44 = 136315138;
    v47 = sub_1CEFD11AC(a1);
    v49 = v48;
    sub_1CEFD0A98(a1);
    v50 = sub_1CEFD0DF0(v47, v49, &aBlock);

    *(v44 + 4) = v50;
    _os_log_impl(&dword_1CEFC7000, v40, v41, "🚀  processing pending ingestions for %s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v46);
    v51 = v46;
    v32 = v45;
    MEMORY[0x1D386CDC0](v51, -1, -1);
    v52 = v44;
    a4 = v142;
    a3 = v129;
    MEMORY[0x1D386CDC0](v52, -1, -1);
  }

  else
  {
    sub_1CEFD0A98(a1);
  }

  v53 = *(v33 + 8);
  v53(v38, v32);
  v54 = *(v145 + 16);
  sub_1CF7FC814("waitForSyncEngineStabilization(request:mode:_:)", 0x2FuLL, 2, sub_1CF8FC8B8, v145);
  v142 = a4;
  v55 = fpfs_current_or_default_log();
  v56 = v140;
  sub_1CF9E6128();
  sub_1CEFD09A0(a1);
  v57 = sub_1CF9E6108();
  v58 = sub_1CF9E72C8();
  v59 = os_log_type_enabled(v57, v58);
  v129 = v54;
  if (v59)
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    *&aBlock = v61;
    *v60 = 136315394;
    v62 = sub_1CEFD11AC(a1);
    v145 = v32;
    v64 = v63;
    sub_1CEFD0A98(a1);
    v65 = sub_1CEFD0DF0(v62, v64, &aBlock);

    *(v60 + 4) = v65;
    *(v60 + 12) = 2048;
    *(v60 + 14) = v141;
    _os_log_impl(&dword_1CEFC7000, v57, v58, "🚀  waiting for db stabilization for %s - mode %lu", v60, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v61);
    v66 = v61;
    v54 = v129;
    MEMORY[0x1D386CDC0](v66, -1, -1);
    MEMORY[0x1D386CDC0](v60, -1, -1);

    v67 = v140;
    v68 = v145;
  }

  else
  {
    sub_1CEFD0A98(a1);

    v67 = v56;
    v68 = v32;
  }

  v53(v67, v68);
  v69 = v137;
  v70 = v132;
  v71 = v141;
  v72 = v141 != 1;
  v73 = swift_allocObject();
  *(v73 + 16) = v54;
  *(v73 + 24) = v72;
  v74 = v142;
  *(v73 + 32) = a3;
  *(v73 + 40) = v74;
  *(v73 + 48) = a1;
  *(v73 + 56) = v71;
  v140 = v73;
  v75 = swift_allocObject();
  *(v75 + 16) = a3;
  *(v75 + 24) = v74;
  v145 = v75;
  v76 = *(v54 + qword_1EDEBBC38);

  sub_1CEFD09A0(a1);

  v142 = fpfs_adopt_log();
  v77 = v136;
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v78 = qword_1EDEBBE40;
  v79 = v143;
  (*(v77 + 56))(v143, 1, 1, v69);
  strcpy(&aBlock, "async batch ");
  BYTE13(aBlock) = 0;
  HIWORD(aBlock) = -5120;
  v80 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v80);

  v81 = aBlock;
  v82 = v79;
  v83 = v130;
  sub_1CEFCCBDC(v82, v130, &unk_1EC4BED20, &unk_1CFA00700);
  v84 = *(v77 + 48);
  if (v84(v83, 1, v69) == 1)
  {
    v85 = v78;
    sub_1CF9E6048();
    if (v84(v83, 1, v69) != 1)
    {
      sub_1CEFCCC44(v83, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v77 + 32))(v70, v83, v69);
  }

  v86 = v144;
  (*(v77 + 16))(v144, v70, v69);
  v87 = v131;
  *(v86 + *(v131 + 20)) = v78;
  v88 = v86 + *(v87 + 24);
  *v88 = "DB queue wait";
  *(v88 + 8) = 13;
  *(v88 + 16) = 2;
  v89 = v78;
  sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v90 = swift_allocObject();
  *(v90 + 16) = xmmword_1CF9FA450;
  *(v90 + 56) = MEMORY[0x1E69E6158];
  *(v90 + 64) = sub_1CEFD51C4();
  *(v90 + 32) = v81;
  sub_1CF9E6028();

  (*(v77 + 8))(v70, v69);
  sub_1CEFCCC44(v143, &unk_1EC4BED20, &unk_1CFA00700);
  v137 = *(v129 + 168);
  v143 = *(v129 + 64);
  v132 = sub_1CF9E6448();
  v136 = *(v132 - 8);
  (*(v136 + 56))(v146, 1, 1, v132);
  v91 = v135;
  sub_1CEFDA34C(v86, v135, type metadata accessor for Signpost);
  v92 = (*(v133 + 80) + 16) & ~*(v133 + 80);
  v93 = (v134 + v92 + 7) & 0xFFFFFFFFFFFFFFF8;
  v94 = swift_allocObject();
  sub_1CEFDA0C4(v91, v94 + v92, type metadata accessor for Signpost);
  v95 = (v94 + v93);
  v141 = sub_1CF5543A4;
  v96 = v145;
  *v95 = sub_1CF5543A4;
  v95[1] = v96;
  v97 = v138;
  sub_1CEFDA34C(v86, v138, type metadata accessor for Signpost);
  v98 = (v93 + 23) & 0xFFFFFFFFFFFFFFF8;
  v99 = (v98 + 15) & 0xFFFFFFFFFFFFFFF8;
  v100 = (v99 + 25) & 0xFFFFFFFFFFFFFFF8;
  v101 = (v100 + 23) & 0xFFFFFFFFFFFFFFF8;
  v102 = swift_allocObject();
  v103 = v102 + v92;
  v104 = v132;
  sub_1CEFDA0C4(v97, v103, type metadata accessor for Signpost);
  v105 = (v102 + v93);
  *v105 = sub_1CF045408;
  v105[1] = 0;
  *(v102 + v98) = v129;
  v106 = v136;
  v107 = v102 + v99;
  *v107 = "waitForStabilization(request:mode:_:)";
  *(v107 + 8) = 37;
  *(v107 + 16) = 2;
  v108 = (v102 + v100);
  v109 = v140;
  v110 = v145;
  *v108 = v141;
  v108[1] = v110;
  v111 = (v102 + v101);
  *v111 = sub_1CF8FC900;
  v111[1] = v109;
  v112 = swift_allocObject();
  v112[2] = sub_1CF903308;
  v112[3] = v94;
  v113 = v137;
  v112[4] = v137;
  swift_retain_n();

  v141 = v94;

  v114 = fpfs_current_log();
  v115 = *(v113 + 16);
  v116 = v139;
  sub_1CEFCCBDC(v146, v139, &unk_1EC4BE370, qword_1CFA01B30);
  if ((*(v106 + 48))(v116, 1, v104) == 1)
  {
    sub_1CEFCCC44(v116, &unk_1EC4BE370, qword_1CFA01B30);
    v117 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v118 = v126;
    sub_1CF9E6438();
    (*(v106 + 8))(v116, v104);
    v117 = sub_1CF9E63C8();
    (*(v127 + 8))(v118, v128);
  }

  v119 = swift_allocObject();
  v119[2] = v114;
  v119[3] = sub_1CF4858EC;
  v119[4] = v102;
  v150 = sub_1CF2BA17C;
  v151 = v119;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v148 = sub_1CEFCA444;
  v149 = &block_descriptor_3326;
  v120 = _Block_copy(&aBlock);
  v121 = v114;

  v150 = sub_1CF2BA180;
  v151 = v112;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v148 = sub_1CEFCA444;
  v149 = &block_descriptor_3329;
  v122 = _Block_copy(&aBlock);

  fp_task_tracker_async_and_qos(v115, v143, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v117, v120, v122);
  _Block_release(v122);
  _Block_release(v120);

  sub_1CEFCCC44(v146, &unk_1EC4BE370, qword_1CFA01B30);
  sub_1CEFD5338(v144, type metadata accessor for Signpost);
  v123 = v142;
  v124 = fpfs_adopt_log();
}

uint64_t sub_1CF817AD0(uint64_t a1, uint64_t (*a2)(__n128), uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  v14 = sub_1CF9E64A8();
  v15 = *(v14 - 8);
  v16 = v15[8];
  v17 = MEMORY[0x1EEE9AC00](a1);
  v19 = (&v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v20)
  {
    return a2(v17);
  }

  v40 = a2;
  v36 = a6;
  v37 = a7;
  v38 = a4;
  v22 = *(a4 + 16);
  v23 = *(v22 + 64);
  *v19 = v23;
  v24 = *MEMORY[0x1E69E8020];
  v39 = v15[13];
  v39(v19, v24, v14, v17);
  v25 = v23;
  v26 = sub_1CF9E64D8();
  v27 = v15[1];
  result = v27(v19, v14);
  if ((v26 & 1) == 0)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  v28 = *(v22 + qword_1EDEBBCB0);
  if (v28 == a5)
  {
    return (v40)(0);
  }

  v29 = *(v22 + 64);
  *v19 = v29;
  (v39)(v19, v24, v14);
  v30 = v29;
  v31 = sub_1CF9E64D8();
  result = v27(v19, v14);
  if ((v31 & 1) == 0)
  {
    goto LABEL_10;
  }

  v32 = swift_allocObject();
  v32[2] = v40;
  v32[3] = a3;
  v33 = v37;
  v32[4] = v38;
  v32[5] = v28;
  v34 = v36;
  v32[6] = v36;
  v32[7] = v33;

  sub_1CEFD09A0(v34);
  sub_1CF8162F0(v34, v33, sub_1CF902E3C, v32);
}

uint64_t sub_1CF817D2C(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v23 = a5;
  v10 = sub_1CF9E64A8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = (&v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(a2 + 16);
  v17 = *(v16 + qword_1EDEBBCB0);
  v18 = *(v16 + 64);
  *v15 = v18;
  (*(v11 + 104))(v15, *MEMORY[0x1E69E8020], v10, v13);
  v19 = v18;
  LOBYTE(v18) = sub_1CF9E64D8();
  result = (*(v11 + 8))(v15, v10);
  if (v18)
  {
    v21 = swift_allocObject();
    v21[2] = v23;
    v21[3] = a6;
    v21[4] = a2;
    v21[5] = v17;
    v21[6] = a3;
    v21[7] = a4;

    sub_1CEFD09A0(a3);
    sub_1CF8162F0(a3, a4, sub_1CF8FC800, v21);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF817EE4(void *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  v11 = *(v4 + 16);
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1CF901AB8;
  *(v12 + 24) = v10;
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = v5;
  v13[4] = a1;
  v13[5] = a3;
  v13[6] = a4;
  v13[7] = sub_1CF901AB8;
  v13[8] = v10;
  swift_retain_n();
  swift_retain_n();
  sub_1CEFD09A0(a2);

  v14 = a1;
  sub_1CF7AAF88("waitForSyncEngineChanges(below:request:completionHandler:)", 58, 2, 2, sub_1CF90324C, v12, sub_1CF901AC0, v13);
}

uint64_t sub_1CF818044(void *a1, unint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v69 = a1;
  v65 = a8;
  v66 = a5;
  v62 = a7;
  v67 = a6;
  v11 = sub_1CF9E6118();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v68 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v59 - v16;
  v64 = a4;
  v74 = a4;
  v18 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  sub_1CEFD09A0(a2);
  v19 = sub_1CF9E6108();
  v20 = sub_1CF9E72C8();
  v21 = os_log_type_enabled(v19, v20);
  v63 = a2;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v60 = v12;
    v23 = v22;
    v24 = swift_slowAlloc();
    v61 = a3;
    v25 = v24;
    v73[0] = v24;
    *v23 = 136315138;
    v26 = sub_1CEFD11AC(a2);
    v27 = a2;
    v29 = v28;
    sub_1CEFD0A98(v27);
    v30 = sub_1CEFD0DF0(v26, v29, v73);

    *(v23 + 4) = v30;
    _os_log_impl(&dword_1CEFC7000, v19, v20, "🚧  processing barrier request %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    v31 = v25;
    a3 = v61;
    MEMORY[0x1D386CDC0](v31, -1, -1);
    MEMORY[0x1D386CDC0](v23, -1, -1);

    v32 = v60;
  }

  else
  {
    sub_1CEFD0A98(a2);

    v32 = v12;
  }

  v33 = *(v32 + 8);
  v33(v17, v11);
  v34 = v11;
  v35 = v69[3];
  v36 = v69[4];
  v37 = __swift_project_boxed_opaque_existential_1(v69, v35);
  v38 = a3;
  v39 = *(a3 + 16);
  v40 = *(v39 + 16);

  v41 = v37;
  v42 = v70;
  sub_1CF68E230(&v74, v41, v35, v36, v73);
  if (v42)
  {
  }

  memcpy(v72, v73, sizeof(v72));
  if (sub_1CF08B99C(v72) == 1)
  {
    memcpy(v71, v73, sizeof(v71));
  }

  else
  {
    memcpy(v71, v73, sizeof(v71));
    if (LOBYTE(v71[57]) <= 1u)
    {
      if (LOBYTE(v71[57]))
      {
        v44 = v71[27];
        if (LOBYTE(v71[27]) != 255)
        {
          v45 = v71[26];
          v69 = *(*(v39 + 32) + 16);
          type metadata accessor for VFSFileTree(0);
          v46 = swift_dynamicCastClassUnconditional();
          v47 = swift_allocObject();
          v48 = v63;
          *(v47 + 16) = v63;
          *(v47 + 24) = v38;
          v49 = v67;
          *(v47 + 32) = v66;
          *(v47 + 40) = v49;
          *(v47 + 48) = v45;
          *(v47 + 56) = v44;
          v50 = v64;
          v51 = v62;
          *(v47 + 64) = v64;
          *(v47 + 72) = v51;
          *(v47 + 80) = v65;
          v70 = *(v46 + 216);
          v52 = swift_allocObject();
          v52[2] = v46;
          v52[3] = sub_1CF901AE8;
          v52[4] = v47;

          sub_1CEFD09A0(v48);

          v53 = v50;

          v54 = v70;

          sub_1CF01001C(0, "eventBarrier(_:)", 16, 2, sub_1CF9034D4, v52);

          sub_1CEFCCC44(v71, &unk_1EC4BFD80, &unk_1CFA0A2A0);
        }
      }
    }
  }

  sub_1CEFCCC44(v71, &unk_1EC4BFD80, &unk_1CFA0A2A0);
  v55 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v56 = sub_1CF9E6108();
  v57 = sub_1CF9E72C8();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    *v58 = 0;
    _os_log_impl(&dword_1CEFC7000, v56, v57, "🚧  item is not a live directory", v58, 2u);
    MEMORY[0x1D386CDC0](v58, -1, -1);
  }

  v33(v68, v34);
  return v66(0, 0);
}

void sub_1CF818588(unint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, int a6, void *a7, uint64_t a8, uint64_t a9)
{
  v123 = a7;
  LODWORD(v10) = a6;
  v143 = a5;
  v136 = a4;
  v130 = a2;
  v122 = a9;
  v121 = sub_1CF9E63D8();
  v120 = *(v121 - 8);
  v13 = *(v120 + 64);
  MEMORY[0x1EEE9AC00](v121);
  v119 = &v118 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v118 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v144 = &v118 - v20;
  v21 = sub_1CF9E6068();
  v141 = *(v21 - 1);
  v142 = v21;
  v22 = v141[8];
  MEMORY[0x1EEE9AC00](v21);
  v126 = (&v118 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v124 = &v118 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v138 = &v118 - v28;
  v125 = type metadata accessor for Signpost(0);
  v127 = *(v125 - 8);
  v29 = *(v127 + 64);
  MEMORY[0x1EEE9AC00](v125);
  v131 = &v118 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v129 = (&v118 - v32);
  v128 = v33;
  MEMORY[0x1EEE9AC00](v34);
  v140 = &v118 - v35;
  v36 = sub_1CF9E6118();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v40 = &v118 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  sub_1CEFD09A0(a1);
  v42 = sub_1CF9E6108();
  v43 = sub_1CF9E72C8();
  v44 = os_log_type_enabled(v42, v43);
  v134 = a1;
  v135 = v18;
  if (v44)
  {
    v45 = swift_slowAlloc();
    v137 = a3;
    v46 = v45;
    v47 = swift_slowAlloc();
    *&aBlock = v47;
    *v46 = 136315138;
    sub_1CEFD09A0(a1);
    v48 = sub_1CEFD11AC(a1);
    LODWORD(v139) = v10;
    v10 = a8;
    v49 = v48;
    v133 = v36;
    v51 = v50;
    sub_1CEFD0A98(a1);
    sub_1CEFD0A98(a1);
    v52 = sub_1CEFD0DF0(v49, v51, &aBlock);

    *(v46 + 4) = v52;
    a8 = v10;
    LOBYTE(v10) = v139;
    _os_log_impl(&dword_1CEFC7000, v42, v43, "🚧  FS barrier observed for %s", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v47);
    MEMORY[0x1D386CDC0](v47, -1, -1);
    v53 = v46;
    a3 = v137;
    MEMORY[0x1D386CDC0](v53, -1, -1);

    (*(v37 + 8))(v40, v133);
  }

  else
  {
    sub_1CEFD0A98(a1);

    (*(v37 + 8))(v40, v36);
  }

  v54 = v130;
  v55 = v130[2];
  v56 = *(*(*(v55 + 40) + 16) + 80);
  v57 = swift_allocObject();
  *(v57 + 16) = 0;
  v58 = swift_allocObject();
  v59 = v136;
  v58[2] = a3;
  v58[3] = v59;
  v58[4] = v57;
  v58[5] = v56;
  v60 = swift_allocObject();
  *(v60 + 16) = sub_1CF901B7C;
  *(v60 + 24) = v58;
  *(v60 + 32) = v54;
  *(v60 + 40) = v56;
  v61 = v134;
  *(v60 + 48) = v57;
  *(v60 + 56) = v61;
  *(v60 + 64) = v143;
  *(v60 + 72) = v10;
  v62 = v123;
  *(v60 + 80) = v123;
  *(v60 + 88) = a8;
  *(v60 + 96) = v122;
  v63 = swift_allocObject();
  *(v63 + 2) = v55;
  *(v63 + 3) = v61;
  *(v63 + 4) = sub_1CF901B88;
  *(v63 + 5) = v60;
  v139 = v63;
  v64 = swift_allocObject();
  *(v64 + 16) = sub_1CF901B88;
  *(v64 + 24) = v60;
  v143 = v64;
  v65 = *(v55 + qword_1EDEBBC38);

  sub_1CEFD09A0(v61);

  sub_1CEFD09A0(v61);
  v134 = v56;

  v133 = v57;

  v132 = v60;

  v136 = v58;

  v66 = v62;

  v137 = v55;

  v130 = fpfs_adopt_log();
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v67 = qword_1EDEBBE40;
  v68 = v141;
  v69 = v142;
  v70 = v138;
  (v141[7])(v138, 1, 1, v142);
  strcpy(&aBlock, "async batch ");
  BYTE13(aBlock) = 0;
  HIWORD(aBlock) = -5120;
  v71 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v71);

  v72 = aBlock;
  v73 = v70;
  v74 = v124;
  sub_1CEFCCBDC(v73, v124, &unk_1EC4BED20, &unk_1CFA00700);
  v75 = v68[6];
  v76 = v75(v74, 1, v69);
  v77 = v126;
  if (v76 == 1)
  {
    v78 = v67;
    sub_1CF9E6048();
    if (v75(v74, 1, v142) != 1)
    {
      sub_1CEFCCC44(v74, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (v141[4])(v126, v74, v142);
  }

  v79 = v140;
  v80 = v141;
  v81 = v142;
  (v141[2])(v140, v77, v142);
  v82 = v125;
  *(v79 + *(v125 + 20)) = v67;
  v83 = v79 + *(v82 + 24);
  *v83 = "DB queue wait";
  *(v83 + 8) = 13;
  *(v83 + 16) = 2;
  v84 = v67;
  sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v85 = swift_allocObject();
  *(v85 + 16) = xmmword_1CF9FA450;
  *(v85 + 56) = MEMORY[0x1E69E6158];
  *(v85 + 64) = sub_1CEFD51C4();
  *(v85 + 32) = v72;
  sub_1CF9E6028();

  (v80[1])(v77, v81);
  sub_1CEFCCC44(v138, &unk_1EC4BED20, &unk_1CFA00700);
  v86 = *(v137 + 64);
  v141 = *(v137 + 168);
  v142 = v86;
  v138 = sub_1CF9E6448();
  v126 = *(v138 - 8);
  v126[7](v144, 1, 1, v138);
  v87 = v129;
  sub_1CEFDA34C(v79, v129, type metadata accessor for Signpost);
  v88 = (*(v127 + 80) + 16) & ~*(v127 + 80);
  v89 = (v128 + v88 + 7) & 0xFFFFFFFFFFFFFFF8;
  v90 = swift_allocObject();
  sub_1CEFDA0C4(v87, v90 + v88, type metadata accessor for Signpost);
  v91 = (v90 + v89);
  v129 = sub_1CF5543A4;
  v92 = v143;
  *v91 = sub_1CF5543A4;
  v91[1] = v92;
  v93 = v131;
  sub_1CEFDA34C(v79, v131, type metadata accessor for Signpost);
  v94 = (v89 + 23) & 0xFFFFFFFFFFFFFFF8;
  v95 = (v94 + 15) & 0xFFFFFFFFFFFFFFF8;
  v96 = (v95 + 25) & 0xFFFFFFFFFFFFFFF8;
  v97 = swift_allocObject();
  sub_1CEFDA0C4(v93, v97 + v88, type metadata accessor for Signpost);
  v98 = (v97 + v89);
  v99 = v126;
  *v98 = sub_1CF045408;
  v98[1] = 0;
  *(v97 + v94) = v137;
  v100 = v97 + v95;
  *v100 = "waitForRescan(request:_:)";
  *(v100 + 8) = 25;
  *(v100 + 16) = 2;
  v101 = (v97 + v96);
  v102 = v143;
  *v101 = v129;
  v101[1] = v102;
  v103 = (v97 + ((v96 + 23) & 0xFFFFFFFFFFFFFFF8));
  v105 = v138;
  v104 = v139;
  *v103 = sub_1CF901C18;
  v103[1] = v104;
  v106 = swift_allocObject();
  v106[2] = sub_1CF903308;
  v106[3] = v90;
  v107 = v141;
  v106[4] = v141;
  swift_retain_n();

  v108 = fpfs_current_log();
  v141 = v107[2];
  v109 = v135;
  sub_1CEFCCBDC(v144, v135, &unk_1EC4BE370, qword_1CFA01B30);
  if ((v99[6])(v109, 1, v105) == 1)
  {
    sub_1CEFCCC44(v109, &unk_1EC4BE370, qword_1CFA01B30);
    v110 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v111 = v119;
    sub_1CF9E6438();
    (v99[1])(v109, v105);
    v110 = sub_1CF9E63C8();
    (*(v120 + 8))(v111, v121);
  }

  v112 = swift_allocObject();
  v112[2] = v108;
  v112[3] = sub_1CF4858EC;
  v112[4] = v97;
  v148 = sub_1CF2BA17C;
  v149 = v112;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v146 = sub_1CEFCA444;
  v147 = &block_descriptor_5793;
  v113 = _Block_copy(&aBlock);
  v114 = v108;

  v148 = sub_1CF2BA180;
  v149 = v106;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v146 = sub_1CEFCA444;
  v147 = &block_descriptor_5796;
  v115 = _Block_copy(&aBlock);

  fp_task_tracker_async_and_qos(v141, v142, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v110, v113, v115);
  _Block_release(v115);
  _Block_release(v113);

  sub_1CEFCCC44(v144, &unk_1EC4BE370, qword_1CFA01B30);
  sub_1CEFD5338(v140, type metadata accessor for Signpost);
  v116 = v130;
  v117 = fpfs_adopt_log();
}

void sub_1CF819400(void *a1, void (*a2)(void, void *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, unsigned __int8 a9, void *a10, uint64_t (*a11)(uint64_t, uint64_t), void *a12)
{
  v129 = a8;
  v130 = a4;
  v131 = a5;
  v132 = a6;
  v137 = a2;
  v138 = a3;
  v134 = a7;
  v135 = a12;
  v128 = a11;
  v133 = a10;
  v127 = a9;
  v13 = sub_1CF9E63D8();
  v126 = *(v13 - 8);
  v14 = *(v126 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v110 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v110 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v110 - v22;
  v24 = sub_1CF9E6068();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v110 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v32 = &v110 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v110 - v34;
  v36 = type metadata accessor for Signpost(0);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36);
  MEMORY[0x1EEE9AC00](v38);
  MEMORY[0x1EEE9AC00](v39);
  if (a1)
  {
    v46 = a1;
    v137(0, a1);
  }

  else
  {
    v114 = v41;
    v115 = v32;
    v116 = v40;
    v124 = v35;
    v117 = v28;
    v118 = v45;
    v119 = v44;
    v120 = v25;
    v113 = v24;
    v121 = v43;
    v122 = v20;
    v111 = v16;
    v112 = v13;
    v125 = &v110 - v42;
    v136 = v23;
    v47 = swift_allocObject();
    v48 = v137;
    v49 = v138;
    *(v47 + 16) = v137;
    *(v47 + 24) = v49;
    v50 = v130;
    v51 = *(v130 + 16);
    v52 = swift_allocObject();
    v54 = v131;
    v53 = v132;
    *(v52 + 16) = v50;
    *(v52 + 24) = v54;
    v56 = v133;
    v55 = v134;
    *(v52 + 32) = v53;
    *(v52 + 40) = v55;
    *(v52 + 48) = v129;
    *(v52 + 56) = v127;
    v57 = v128;
    *(v52 + 64) = v56;
    *(v52 + 72) = v57;
    *(v52 + 80) = v135;
    *(v52 + 88) = v48;
    v137 = v52;
    *(v52 + 96) = v49;
    v58 = swift_allocObject();
    *(v58 + 16) = sub_1CF901AB8;
    *(v58 + 24) = v47;
    v129 = v58;
    v123 = v51;
    v59 = *(v51 + qword_1EDEBBC38);
    swift_retain_n();

    sub_1CEFD09A0(v55);
    v60 = v56;

    v138 = v47;

    v135 = fpfs_adopt_log();
    if (qword_1EDEAE980 != -1)
    {
      swift_once();
    }

    v61 = qword_1EDEBBE40;
    v62 = v120;
    v63 = v124;
    v64 = v113;
    (*(v120 + 56))(v124, 1, 1, v113);
    strcpy(&aBlock, "async batch ");
    BYTE13(aBlock) = 0;
    HIWORD(aBlock) = -5120;
    v65 = sub_1CF9E7988();
    MEMORY[0x1D3868CC0](v65);

    v66 = aBlock;
    v67 = v63;
    v68 = v115;
    sub_1CEFCCBDC(v67, v115, &unk_1EC4BED20, &unk_1CFA00700);
    v69 = *(v62 + 48);
    if (v69(v68, 1, v64) == 1)
    {
      v70 = v61;
      v71 = v117;
      sub_1CF9E6048();
      if (v69(v68, 1, v64) != 1)
      {
        sub_1CEFCCC44(v68, &unk_1EC4BED20, &unk_1CFA00700);
      }
    }

    else
    {
      v71 = v117;
      (*(v62 + 32))(v117, v68, v64);
    }

    v72 = v125;
    (*(v62 + 16))(v125, v71, v64);
    v73 = v116;
    *(v72 + *(v116 + 20)) = v61;
    v74 = v72 + *(v73 + 24);
    *v74 = "DB queue wait";
    *(v74 + 8) = 13;
    *(v74 + 16) = 2;
    v75 = v61;
    sub_1CF9E7468();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v76 = swift_allocObject();
    *(v76 + 16) = xmmword_1CF9FA450;
    *(v76 + 56) = MEMORY[0x1E69E6158];
    *(v76 + 64) = sub_1CEFD51C4();
    *(v76 + 32) = v66;
    sub_1CF9E6028();

    (*(v62 + 8))(v71, v64);
    sub_1CEFCCC44(v124, &unk_1EC4BED20, &unk_1CFA00700);
    v77 = *(v123 + 64);
    v133 = *(v123 + 168);
    v134 = v77;
    v78 = sub_1CF9E6448();
    v131 = *(v78 - 8);
    v132 = v78;
    (*(v131 + 56))(v136, 1, 1, v78);
    v79 = v119;
    sub_1CEFDA34C(v72, v119, type metadata accessor for Signpost);
    v80 = (*(v118 + 80) + 16) & ~*(v118 + 80);
    v81 = (v114 + v80 + 7) & 0xFFFFFFFFFFFFFFF8;
    v82 = swift_allocObject();
    v130 = v82;
    sub_1CEFDA0C4(v79, v82 + v80, type metadata accessor for Signpost);
    v83 = (v82 + v81);
    v128 = sub_1CF5543A4;
    v84 = v129;
    *v83 = sub_1CF5543A4;
    v83[1] = v84;
    v85 = v121;
    sub_1CEFDA34C(v72, v121, type metadata accessor for Signpost);
    v86 = (v81 + 23) & 0xFFFFFFFFFFFFFFF8;
    v87 = (v86 + 15) & 0xFFFFFFFFFFFFFFF8;
    v88 = (v87 + 25) & 0xFFFFFFFFFFFFFFF8;
    v89 = swift_allocObject();
    v90 = v131;
    sub_1CEFDA0C4(v85, v89 + v80, type metadata accessor for Signpost);
    v91 = (v89 + v81);
    *v91 = sub_1CF045408;
    v91[1] = 0;
    *(v89 + v86) = v123;
    v92 = v89 + v87;
    *v92 = "waitForSyncEngineChanges(below:request:completionHandler:)";
    *(v92 + 8) = 58;
    *(v92 + 16) = 2;
    v93 = (v89 + v88);
    *v93 = v128;
    v93[1] = v84;
    v94 = (v89 + ((v88 + 23) & 0xFFFFFFFFFFFFFFF8));
    v95 = v137;
    *v94 = sub_1CF901C68;
    v94[1] = v95;
    v96 = swift_allocObject();
    v97 = v130;
    v96[2] = sub_1CF903308;
    v96[3] = v97;
    v98 = v133;
    v96[4] = v133;
    swift_retain_n();

    v99 = fpfs_current_log();
    v133 = v98[2];
    v100 = v132;
    v101 = v122;
    sub_1CEFCCBDC(v136, v122, &unk_1EC4BE370, qword_1CFA01B30);
    if ((*(v90 + 48))(v101, 1, v100) == 1)
    {
      sub_1CEFCCC44(v101, &unk_1EC4BE370, qword_1CFA01B30);
      v102 = QOS_CLASS_UNSPECIFIED;
    }

    else
    {
      v103 = v111;
      sub_1CF9E6438();
      (*(v90 + 8))(v101, v100);
      v102 = sub_1CF9E63C8();
      (*(v126 + 8))(v103, v112);
    }

    v104 = swift_allocObject();
    v104[2] = v99;
    v104[3] = sub_1CF4858EC;
    v104[4] = v89;
    v142 = sub_1CF2BA17C;
    v143 = v104;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v140 = sub_1CEFCA444;
    v141 = &block_descriptor_5836;
    v105 = _Block_copy(&aBlock);
    v106 = v99;

    v142 = sub_1CF2BA180;
    v143 = v96;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v140 = sub_1CEFCA444;
    v141 = &block_descriptor_5839;
    v107 = _Block_copy(&aBlock);

    fp_task_tracker_async_and_qos(v133, v134, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v102, v105, v107);
    _Block_release(v107);
    _Block_release(v105);

    sub_1CEFCCC44(v136, &unk_1EC4BE370, qword_1CFA01B30);
    sub_1CEFD5338(v125, type metadata accessor for Signpost);
    v108 = v135;
    v109 = fpfs_adopt_log();
  }
}

void sub_1CF81A080(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, unint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v39 = a4;
  v40 = a5;
  v41 = a3;
  v18 = sub_1CF9E5CF8();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a8;
  v43 = a6;
  v44 = a7;
  v23 = a1[3];
  v24 = a1[4];
  v25 = __swift_project_boxed_opaque_existential_1(a1, v23);
  v26 = *(a2 + 16);
  sub_1CF5AD9F8(v25, v23, v24);
  if (v12)
  {
    return;
  }

  v27 = v41;
  v38[1] = a2;
  v38[2] = 0;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v29 = v28;
  (*(v19 + 8))(v22, v18);
  v30 = v29 * 1000000000.0;
  if (COERCE__INT64(fabs(v29 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v30 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v30 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v38[0] = a11;
  v31 = v30;
  v32 = v27[3];
  if (v32 < v27[5] && v27[2] >= 1)
  {
    v27[3] = v32 + 1;
    v33 = v39;
    swift_beginAccess();
    *(v33 + 16) = 1;
    sub_1CF7FC438();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C50D0, &qword_1CFA18270);
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  *(v34 + 24) = 0;
  v36 = a1[3];
  v35 = a1[4];
  v37 = __swift_project_boxed_opaque_existential_1(a1, v36);
  sub_1CF65A300(v40, v31, &v43, &v42, a9, a10, v34, v37, v38[0], a12, v36, *(v35 + 8));
}

void sub_1CF81A30C(void *a1, void (*a2)(void *, uint64_t), uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v7 = a1;
    a2(a1, 1);
  }

  else
  {
    v8 = *(a4 + 16);
    v10 = swift_allocObject();
    *(v10 + 16) = a2;
    *(v10 + 24) = a3;
    v11 = swift_allocObject();
    v11[2] = a2;
    v11[3] = a3;
    v11[4] = a4;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_1CEFF9D98;
    *(v12 + 24) = v10;
    swift_retain_n();

    sub_1CF7AAF88("testingOperations(request:completionHandler:)", 45, 2, 2, sub_1CF8FC294, v12, sub_1CF8FCABC, v11);
  }
}

void sub_1CF81A480(void *a1, void (*a2)(void *, BOOL), uint64_t a3, uint64_t a4)
{
  v7 = a1[3];
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, v7);
  v10 = *(a4 + 16);
  v11 = sub_1CF5D8544(v9, v7, v8);
  if (v4)
  {
    v12 = v4;
  }

  else
  {
    v12 = sub_1CF8E49EC(v11);
  }

  a2(v12, v4 != 0);
  sub_1CF481340(v12, v4 != 0);
}

uint64_t sub_1CF81A534(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = v5;
  v10[5] = a1;
  v11 = swift_allocObject();
  v11[2] = sub_1CF8FC798;
  v11[3] = v10;
  v11[4] = v5;
  v12 = *(v5 + 16);
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1CF8FC7C8;
  *(v13 + 24) = v11;
  v14 = swift_allocObject();
  v14[2] = v5;
  v14[3] = a2;
  v14[4] = 0;
  v14[5] = sub_1CF8FC7C8;
  v14[6] = v11;
  swift_retain_n();
  swift_retain_n();

  sub_1CEFD09A0(a2);
  sub_1CF7AAF88("waitForStabilization(request:mode:_:)", 37, 2, 2, sub_1CF90324C, v13, sub_1CF8FC7D4, v14);
}

void sub_1CF81A6D8(void *a1, char a2, void (*a3)(void *, uint64_t, __n128), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v102 = a6;
  v11 = sub_1CF9E63D8();
  v100 = *(v11 - 8);
  v101 = v11;
  v12 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v99 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v105 = &v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v110 = &v92 - v18;
  v19 = sub_1CF9E6068();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v103 = &v92 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = &v92 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v107 = &v92 - v28;
  v29 = type metadata accessor for Signpost(0);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29);
  MEMORY[0x1EEE9AC00](v31);
  v37 = MEMORY[0x1EEE9AC00](v32);
  v109 = &v92 - v38;
  if (a2)
  {
    a3(a1, 1, v37);
  }

  else
  {
    v93 = v33;
    v94 = v36;
    v95 = v35;
    v96 = v20;
    v97 = v34;
    v39 = *(a5 + 16);
    v40 = swift_allocObject();
    *(v40 + 16) = a3;
    *(v40 + 24) = a4;
    v41 = swift_allocObject();
    v42 = v102;
    *(v41 + 2) = a1;
    *(v41 + 3) = v42;
    *(v41 + 4) = a5;
    *(v41 + 5) = a3;
    v106 = v41;
    *(v41 + 6) = a4;
    v43 = swift_allocObject();
    *(v43 + 16) = sub_1CF2B1400;
    *(v43 + 24) = v40;
    v108 = v43;
    v104 = v39;
    v44 = *(v39 + qword_1EDEBBC38);
    swift_retain_n();
    sub_1CEFCF530(a1, 0);

    v102 = v40;

    v98 = fpfs_adopt_log();
    if (qword_1EDEAE980 != -1)
    {
      swift_once();
    }

    v45 = qword_1EDEBBE40;
    v46 = v96;
    v47 = v107;
    (*(v96 + 56))(v107, 1, 1, v19);
    strcpy(&aBlock, "async batch ");
    BYTE13(aBlock) = 0;
    HIWORD(aBlock) = -5120;
    v48 = sub_1CF9E7988();
    MEMORY[0x1D3868CC0](v48);

    v49 = *(&aBlock + 1);
    v92 = aBlock;
    sub_1CEFCCBDC(v47, v26, &unk_1EC4BED20, &unk_1CFA00700);
    v50 = *(v46 + 48);
    if (v50(v26, 1, v19) == 1)
    {
      v51 = v45;
      v52 = v103;
      sub_1CF9E6048();
      if (v50(v26, 1, v19) != 1)
      {
        sub_1CEFCCC44(v26, &unk_1EC4BED20, &unk_1CFA00700);
      }
    }

    else
    {
      v52 = v103;
      (*(v46 + 32))(v103, v26, v19);
    }

    v53 = v109;
    (*(v46 + 16))(v109, v52, v19);
    v54 = v93;
    *(v53 + *(v93 + 20)) = v45;
    v55 = v53 + *(v54 + 24);
    *v55 = "DB queue wait";
    *(v55 + 8) = 13;
    *(v55 + 16) = 2;
    v56 = v45;
    sub_1CF9E7468();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_1CF9FA450;
    *(v57 + 56) = MEMORY[0x1E69E6158];
    *(v57 + 64) = sub_1CEFD51C4();
    *(v57 + 32) = v92;
    *(v57 + 40) = v49;
    sub_1CF9E6028();

    (*(v46 + 8))(v52, v19);
    sub_1CEFCCC44(v107, &unk_1EC4BED20, &unk_1CFA00700);
    v103 = *(v104 + 168);
    v107 = *(v104 + 64);
    v96 = sub_1CF9E6448();
    v93 = *(v96 - 8);
    (*(v93 + 56))(v110, 1, 1, v96);
    v58 = v95;
    sub_1CEFDA34C(v53, v95, type metadata accessor for Signpost);
    v59 = (*(v94 + 80) + 16) & ~*(v94 + 80);
    v60 = (v30 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
    v61 = swift_allocObject();
    sub_1CEFDA0C4(v58, v61 + v59, type metadata accessor for Signpost);
    v62 = (v61 + v60);
    v95 = sub_1CF8FCB08;
    v63 = v108;
    *v62 = sub_1CF8FCB08;
    v62[1] = v63;
    v64 = v97;
    sub_1CEFDA34C(v53, v97, type metadata accessor for Signpost);
    v65 = (v60 + 23) & 0xFFFFFFFFFFFFFFF8;
    v66 = (v65 + 15) & 0xFFFFFFFFFFFFFFF8;
    v67 = (v66 + 25) & 0xFFFFFFFFFFFFFFF8;
    v68 = (v67 + 23) & 0xFFFFFFFFFFFFFFF8;
    v69 = swift_allocObject();
    sub_1CEFDA0C4(v64, v69 + v59, type metadata accessor for Signpost);
    v70 = (v69 + v60);
    v71 = v93;
    *v70 = sub_1CF045408;
    v70[1] = 0;
    *(v69 + v65) = v104;
    v72 = v69 + v66;
    *v72 = "runTestingOperations(_:request:completionHandler:)";
    *(v72 + 8) = 50;
    *(v72 + 16) = 2;
    v73 = (v69 + v67);
    v74 = v108;
    *v73 = v95;
    v73[1] = v74;
    v75 = v69;
    v76 = (v69 + v68);
    v77 = v106;
    *v76 = sub_1CF8FCADC;
    v76[1] = v77;
    v78 = swift_allocObject();
    v78[2] = sub_1CF903308;
    v78[3] = v61;
    v79 = v103;
    v78[4] = v103;
    swift_retain_n();

    v104 = v61;
    v80 = v96;

    v81 = fpfs_current_log();
    v82 = *(v79 + 2);
    v83 = v105;
    sub_1CEFCCBDC(v110, v105, &unk_1EC4BE370, qword_1CFA01B30);
    if ((*(v71 + 48))(v83, 1, v80) == 1)
    {
      sub_1CEFCCC44(v83, &unk_1EC4BE370, qword_1CFA01B30);
      v84 = QOS_CLASS_UNSPECIFIED;
    }

    else
    {
      v85 = v99;
      sub_1CF9E6438();
      (*(v71 + 8))(v83, v80);
      v84 = sub_1CF9E63C8();
      (*(v100 + 8))(v85, v101);
    }

    v86 = swift_allocObject();
    v86[2] = v81;
    v86[3] = sub_1CF4858EC;
    v86[4] = v75;
    v114 = sub_1CF2BA17C;
    v115 = v86;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v112 = sub_1CEFCA444;
    v113 = &block_descriptor_3439;
    v87 = _Block_copy(&aBlock);
    v88 = v81;

    v114 = sub_1CF2BA180;
    v115 = v78;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v112 = sub_1CEFCA444;
    v113 = &block_descriptor_3442;
    v89 = _Block_copy(&aBlock);

    fp_task_tracker_async_and_qos(v82, v107, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v84, v87, v89);
    _Block_release(v89);
    _Block_release(v87);

    sub_1CEFCCC44(v110, &unk_1EC4BE370, qword_1CFA01B30);
    sub_1CEFD5338(v109, type metadata accessor for Signpost);
    v90 = v98;
    v91 = fpfs_adopt_log();
  }
}

void sub_1CF81B278(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v89 = a6;
  v88 = a5;
  v105 = a4;
  v109 = a2;
  v8 = sub_1CF9E5248();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v104 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_1CF9E5268();
  v108 = *(v103 - 8);
  v11 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v103);
  v102 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40);
  v13 = *(v86 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v86);
  v111 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v100 = &v85 - v17;
  v101 = v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v85 - v20;
  v22 = sub_1CF9E63A8();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v85 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1CF9E6448();
  v91 = *(v27 - 8);
  v28 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v90 = &v85 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = dispatch_group_create();
  v30 = swift_allocObject();
  v31 = sub_1CF4E4724(MEMORY[0x1E69E7CC0]);
  v107 = v30;
  *(v30 + 16) = v31;
  v32 = (v30 + 16);
  aBlock = a3;

  sub_1CF8DF904(&aBlock);
  if (v6)
  {
    goto LABEL_23;
  }

  v92 = v26;
  v93 = 0;
  v94 = v27;
  v95 = v23;
  v96 = v22;
  v33 = aBlock[2];
  if (!v33)
  {
LABEL_19:

    v67 = *(*(v105 + 16) + 64);
    v68 = swift_allocObject();
    v69 = v89;
    v68[2] = v88;
    v68[3] = v69;
    v68[4] = v107;
    v70 = v67;

    v71 = fpfs_current_log();
    v111 = fpfs_adopt_log();
    v72 = swift_allocObject();
    aBlock = sub_1CF9E73C8();
    v113 = v73;
    MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
    v74 = sub_1CF9E7988();
    MEMORY[0x1D3868CC0](v74);

    sub_1CF9E6978();

    v75 = __fp_log_fork();

    *(v72 + 16) = v75;
    v76 = swift_allocObject();
    *(v76 + 16) = v71;
    *(v76 + 24) = v72;
    *(v76 + 32) = v70;
    *(v76 + 40) = "runTestingOperations(_:request:completionHandler:)";
    *(v76 + 48) = 50;
    *(v76 + 56) = 2;
    *(v76 + 64) = sub_1CF8FCB10;
    *(v76 + 72) = v68;
    v116 = sub_1CF2B9F54;
    v117 = v76;
    aBlock = MEMORY[0x1E69E9820];
    v113 = 1107296256;
    v114 = sub_1CEFCA444;
    v115 = &block_descriptor_3456;
    v77 = _Block_copy(&aBlock);
    v78 = v70;
    v110 = v71;

    v79 = v90;
    sub_1CF9E63F8();
    v118 = MEMORY[0x1E69E7CC0];
    sub_1CEFCCCA4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
    sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
    v80 = v92;
    v81 = v96;
    sub_1CF9E77B8();
    v82 = v106;
    sub_1CF9E7308();
    _Block_release(v77);
    (*(v95 + 8))(v80, v81);
    (*(v91 + 8))(v79, v94);

    v83 = v111;
    v84 = fpfs_adopt_log();

    return;
  }

  v99 = *(v13 + 80);
  v87 = aBlock;
  v98 = (v99 + 32) & ~v99;
  v34 = aBlock + v98;
  v110 = *(v13 + 72);
  v97 = (v108 + 8);
  while (1)
  {
    sub_1CEFCCBDC(v34, v21, &unk_1EC4BF650, &unk_1CF9FCB40);
    if ((sub_1CF7DC800(v21, v109) & 1) == 0)
    {
      break;
    }

    v35 = v106;
    dispatch_group_enter(v106);
    v108 = *(v105 + 16);
    v36 = v100;
    sub_1CEFCCBDC(v21, v100, &unk_1EC4BF650, &unk_1CF9FCB40);
    v37 = v34;
    v38 = v33;
    v39 = v21;
    v40 = v32;
    v41 = v98;
    v42 = swift_allocObject();
    v43 = v107;
    *(v42 + 16) = v35;
    *(v42 + 24) = v43;
    v44 = v42 + v41;
    v32 = v40;
    v21 = v39;
    v33 = v38;
    v34 = v37;
    sub_1CEFE55D0(v36, v44, &unk_1EC4BF650, &unk_1CF9FCB40);

    v45 = v35;
    sub_1CF813C50(v21, sub_1CF8FCB1C, v42);

LABEL_5:
    sub_1CEFCCC44(v21, &unk_1EC4BF650, &unk_1CF9FCB40);
    v34 = v110 + v34;
    if (!--v33)
    {
      goto LABEL_19;
    }
  }

  v46 = v111;
  sub_1CEFCCBDC(v21, v111, &unk_1EC4BF650, &unk_1CF9FCB40);
  sub_1CF9E50F8();
  sub_1CEFCCCA4(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
  v48 = v102;
  v47 = v103;
  sub_1CF9E57D8();
  v49 = sub_1CF9E50D8();
  (*v97)(v48, v47);
  swift_beginAccess();
  v50 = *v32;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v118 = *v32;
  v52 = v118;
  *v32 = 0x8000000000000000;
  v54 = sub_1CF7BF520(v46);
  v55 = v52[2];
  v56 = (v53 & 1) == 0;
  v57 = v55 + v56;
  if (!__OFADD__(v55, v56))
  {
    v58 = v53;
    if (v52[3] < v57)
    {
      sub_1CF7CD440(v57, isUniquelyReferenced_nonNull_native);
      v59 = sub_1CF7BF520(v111);
      if ((v58 & 1) != (v60 & 1))
      {
        goto LABEL_22;
      }

      v54 = v59;
      v61 = v118;
      if ((v58 & 1) == 0)
      {
        goto LABEL_16;
      }

LABEL_14:
      v62 = v61[7];
      v63 = *(v62 + 8 * v54);
      *(v62 + 8 * v54) = v49;

LABEL_18:
      sub_1CEFCCC44(v111, &unk_1EC4BF650, &unk_1CF9FCB40);
      *v32 = v61;
      swift_endAccess();
      goto LABEL_5;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v61 = v118;
      if (v53)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_1CF7D3FDC();
      v61 = v118;
      if (v58)
      {
        goto LABEL_14;
      }
    }

LABEL_16:
    v61[(v54 >> 6) + 8] |= 1 << v54;
    sub_1CEFCCBDC(v111, v61[6] + v54 * v110, &unk_1EC4BF650, &unk_1CF9FCB40);
    *(v61[7] + 8 * v54) = v49;
    v64 = v61[2];
    v65 = __OFADD__(v64, 1);
    v66 = v64 + 1;
    if (v65)
    {
      goto LABEL_21;
    }

    v61[2] = v66;
    goto LABEL_18;
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  sub_1CF9E8108();
  __break(1u);
LABEL_23:

  __break(1u);
}

uint64_t sub_1CF81BCDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v82 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v81 = (&v80 - v8);
  MEMORY[0x1EEE9AC00](v9);
  v83 = (&v80 - v10);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v80 - v12);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v80 - v15);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v80 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4FB0, &unk_1CFA17180);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v80 - v22;
  v25 = *(v24 + 56);
  v26 = a1;
  v27 = v25;
  sub_1CEFCCBDC(v26, v23, &unk_1EC4BF650, &unk_1CF9FCB40);
  sub_1CEFCCBDC(a2, &v23[v27], &unk_1EC4BF650, &unk_1CF9FCB40);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1CEFCCBDC(v23, v19, &unk_1EC4BF650, &unk_1CF9FCB40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCC0, &unk_1CF9FCB50);
    if (swift_getEnumCaseMultiPayload() != 6)
    {
      v38 = &unk_1EC4BFCC0;
      v39 = &unk_1CF9FCB50;
      v40 = v19;
      goto LABEL_37;
    }

    v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFEC0, &unk_1CFA05590) + 48);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v13 = v83;
      sub_1CEFCCBDC(&v23[v27], v83, &unk_1EC4BF650, &unk_1CF9FCB40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD70, &qword_1CFA12AC0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (!EnumCaseMultiPayload)
      {
        v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFDC0, &qword_1CF9FCBA0);
        v36 = *(v67 + 48);

        goto LABEL_23;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFDA0, &qword_1CF9FCB98);
        v36 = v35[12];
        v37 = (v13 + v35[20]);

        v77 = v37[10];
        v79 = v37[11];
        sub_1CF1D5750(*v37, v37[1], v37[2], v37[3], v37[4], v37[5], v37[6], v37[7], v37[8]);
LABEL_23:
        sub_1CEFCCC44(v13 + v36, &unk_1EC4BFBB0, &qword_1CF9FCB90);

LABEL_29:
        sub_1CEFCCC44(&v19[v33], &unk_1EC4BEC00, &unk_1CF9FCB60);
        goto LABEL_30;
      }

      v74 = &unk_1EC4BFD70;
      v75 = &qword_1CFA12AC0;
LABEL_36:
      sub_1CEFCCC44(v13, v74, v75);
      v38 = &unk_1EC4BEC00;
      v39 = &unk_1CF9FCB60;
      v40 = &v19[v33];
      goto LABEL_37;
    }

    sub_1CEFCCBDC(&v23[v27], v13, &unk_1EC4BF650, &unk_1CF9FCB40);
    v51 = swift_getEnumCaseMultiPayload();
    if (v51)
    {
      if (v51 != 1)
      {
        v74 = &unk_1EC4BFCC0;
        v75 = &unk_1CF9FCB50;
        goto LABEL_36;
      }

      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCE0, &unk_1CFA05400);
      v53 = v52[12];
      v54 = v52[16];
      v55 = v27;
      v56 = (v13 + v52[20]);

      v57 = *v56;
      v58 = v56[1];
      v59 = v56[2];
      v60 = v56[3];
      v61 = v56[4];
      v62 = v56[5];
      v63 = v56[6];
      v64 = v56[7];
      v27 = v55;
      sub_1CF1D56D0(v57, v58, v59, v60, v61);
      v65 = *(v13 + v54);
    }

    else
    {
      v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F90, &unk_1CF9FCB80);
      v53 = *(v69 + 48);
      v65 = *(v13 + *(v69 + 80));
    }

    sub_1CEFCCC44(v13 + v53, &qword_1EC4C1B40, &unk_1CF9FCB70);
    goto LABEL_29;
  }

  sub_1CEFCCBDC(v23, v16, &unk_1EC4BF650, &unk_1CF9FCB40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD70, &qword_1CFA12AC0);
  if (swift_getEnumCaseMultiPayload() != 6)
  {
    v38 = &unk_1EC4BFD70;
    v39 = &qword_1CFA12AC0;
    v40 = v16;
LABEL_37:
    sub_1CEFCCC44(v40, v38, v39);
    goto LABEL_38;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = v81;
    sub_1CEFCCBDC(&v23[v27], v81, &unk_1EC4BF650, &unk_1CF9FCB40);
    v29 = swift_getEnumCaseMultiPayload();
    if (!v29)
    {
      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFDC0, &qword_1CF9FCBA0);
      v31 = *(v66 + 48);

      goto LABEL_21;
    }

    if (v29 == 1)
    {
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFDA0, &qword_1CF9FCB98);
      v31 = v30[12];
      v32 = (v28 + v30[20]);

      v76 = v32[10];
      v78 = v32[11];
      sub_1CF1D5750(*v32, v32[1], v32[2], v32[3], v32[4], v32[5], v32[6], v32[7], v32[8]);
LABEL_21:
      sub_1CEFCCC44(v28 + v31, &unk_1EC4BFBB0, &qword_1CF9FCB90);

LABEL_26:
LABEL_30:
      sub_1CEFCCC44(&v23[v27], &unk_1EC4BF650, &unk_1CF9FCB40);
      sub_1CEFCCC44(v23, &unk_1EC4BF650, &unk_1CF9FCB40);
      return 1;
    }

    v71 = &unk_1EC4BFD70;
    v72 = &qword_1CFA12AC0;
    v73 = v28;
    goto LABEL_34;
  }

  v41 = v82;
  sub_1CEFCCBDC(&v23[v27], v82, &unk_1EC4BF650, &unk_1CF9FCB40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCC0, &unk_1CF9FCB50);
  v42 = swift_getEnumCaseMultiPayload();
  if (!v42)
  {
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F90, &unk_1CF9FCB80);
    v44 = *(v68 + 48);
    v50 = *(v41 + *(v68 + 80));
    goto LABEL_25;
  }

  if (v42 == 1)
  {
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCE0, &unk_1CFA05400);
    v44 = v43[12];
    v45 = v43[16];
    v46 = (v41 + v43[20]);

    v47 = v46[5];
    v48 = v46[6];
    v49 = v46[7];
    sub_1CF1D56D0(*v46, v46[1], v46[2], v46[3], v46[4]);
    v50 = *(v41 + v45);
LABEL_25:

    sub_1CEFCCC44(v41 + v44, &qword_1EC4C1B40, &unk_1CF9FCB70);
    goto LABEL_26;
  }

  v71 = &unk_1EC4BFCC0;
  v72 = &unk_1CF9FCB50;
  v73 = v41;
LABEL_34:
  sub_1CEFCCC44(v73, v71, v72);

LABEL_38:
  sub_1CEFCCC44(v23, &qword_1EC4C4FB0, &unk_1CFA17180);
  return 0;
}

void sub_1CF81C408(uint64_t a1, dispatch_group_t group)
{
  if (a1)
  {
    MEMORY[0x1EEE9AC00](a1);
    v4 = v3;
    v5 = v3;
    sub_1CF052DA4(group, sub_1CF8FCB9C);
  }

  dispatch_group_leave(group);
}

uint64_t sub_1CF81C4B4(uint64_t *a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  v6 = a3;
  v7 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *a1;
  *a1 = 0x8000000000000000;
  sub_1CF1D421C(a3, a2, isUniquelyReferenced_nonNull_native);
  *a1 = v10;
  return swift_endAccess();
}

uint64_t sub_1CF81C550(void (*a1)(uint64_t, void), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a3 + 16);

  a1(v6, 0);
}

uint64_t sub_1CF81C5BC(unint64_t a1, unint64_t a2)
{
  v328 = a2;
  v3 = sub_1CF9E5A58();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v5);
  MEMORY[0x1EEE9AC00](v6);
  MEMORY[0x1EEE9AC00](v7);
  MEMORY[0x1EEE9AC00](v8);
  MEMORY[0x1EEE9AC00](v9);
  MEMORY[0x1EEE9AC00](v10);
  v327 = &v319 - v11;
  MEMORY[0x1EEE9AC00](v12);
  MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  v326 = &v319 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v325 = &v319 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v322 = &v319 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v324 = &v319 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v323 = &v319 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v321 = &v319 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v319 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v320 = &v319 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v319 = &v319 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v319 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v319 - v38;
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v319 - v41;
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v319 - v44;
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v319 - v47;
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v319 - v50;
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v319 - v53;
  MEMORY[0x1EEE9AC00](v55);
  v57 = &v319 - v56;
  MEMORY[0x1EEE9AC00](v58);
  v70 = a1;
  v72 = &v319 - v71;
  switch((v70 >> 58) & 0x3C | (v70 >> 1) & 3)
  {
    case 1uLL:
      v117 = v328;
      if (((v117 >> 58) & 0x3C | (v117 >> 1) & 3) == 1)
      {
        goto LABEL_105;
      }

      goto LABEL_171;
    case 2uLL:
      v326 = v67;
      v327 = v59;
      v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F40, qword_1CFA0F4C0);
      v147 = swift_projectBox();
      if (((v328 >> 58) & 0x3C | (v328 >> 1) & 3) != 2)
      {
        goto LABEL_171;
      }

      v148 = *v147;
      v149 = v147[1];
      v150 = v146[16];
      v322 = *(v147 + v150);
      v151 = v146[20];
      v324 = *(v147 + v151);
      v325 = v148;
      v152 = v146[12];
      v153 = v147;
      v154 = swift_projectBox();
      v328 = *(v154 + v150);
      v155 = *v154;
      v156 = v154[1];
      v323 = *(v154 + v151);
      v157 = *(v326 + 2);
      v158 = v153 + v152;
      v159 = v327;
      v157(v72, v158, v327);
      v157(v57, v154 + v152, v159);
      if ((v325 != v155 || v149 != v156) && (sub_1CF9E8048() & 1) == 0)
      {
        goto LABEL_168;
      }

      v160 = v328;
      if (sub_1CF9E59A8())
      {
        sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
        v161 = sub_1CF9E7568();

        v162 = v327;
        v163 = *(v326 + 1);
        v163(v57, v327);
        v163(v72, v162);
        v137 = v161 & (v324 == v323);
        return v137 & 1;
      }

LABEL_168:
      v316 = v327;
      v317 = *(v326 + 1);
      v317(v57, v327);
      v317(v72, v316);
      goto LABEL_171;
    case 3uLL:
      v117 = v328;
      if (((v117 >> 58) & 0x3C | (v117 >> 1) & 3) != 3)
      {
        goto LABEL_171;
      }

      goto LABEL_105;
    case 4uLL:
      v139 = v328;
      if (((v139 >> 58) & 0x3C | (v139 >> 1) & 3) == 4)
      {
        goto LABEL_75;
      }

      goto LABEL_171;
    case 5uLL:
      v139 = v328;
      if (((v139 >> 58) & 0x3C | (v139 >> 1) & 3) != 5)
      {
        goto LABEL_171;
      }

LABEL_75:
      v197 = *((v70 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v199 = *((v139 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v198 = *((v139 & 0xFFFFFFFFFFFFFF9) + 0x18);
      if (!*((v70 & 0xFFFFFFFFFFFFFF9) + 0x10))
      {
        if (v199)
        {
          goto LABEL_171;
        }

        v305 = v198;
        goto LABEL_166;
      }

      if (!v199)
      {
        goto LABEL_171;
      }

      v200 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v202 = v201;
      if (v200 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v202 == v203)
      {
        v204 = v198;

LABEL_166:
        sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
        v137 = sub_1CF9E7568();

        return v137 & 1;
      }

      v314 = sub_1CF9E8048();
      v315 = v198;

      if (v314)
      {
        goto LABEL_166;
      }

      goto LABEL_171;
    case 6uLL:
      v184 = v59;
      v214 = v67;
      v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
      v216 = swift_projectBox();
      if (((v328 >> 58) & 0x3C | (v328 >> 1) & 3) != 6)
      {
        goto LABEL_171;
      }

      v217 = *(v215 + 48);
      v218 = *(v216 + v217);
      v219 = v216;
      v220 = swift_projectBox();
      v221 = *(v220 + v217);
      v222 = *(v214 + 2);
      v222(v54, v219, v184);
      v222(v51, v220, v184);
      v223 = v221;
      if (sub_1CF9E59A8())
      {
        sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
        v137 = sub_1CF9E7568();

        v195 = *(v214 + 1);
        v195(v51, v184);
        v196 = v54;
        goto LABEL_88;
      }

      v310 = *(v214 + 1);
      v310(v51, v184);
      v311 = v54;
      goto LABEL_163;
    case 7uLL:
      v166 = v59;
      v167 = v67;
      v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
      v169 = swift_projectBox();
      if (((v328 >> 58) & 0x3C | (v328 >> 1) & 3) != 7)
      {
        goto LABEL_171;
      }

      v170 = *(v168 + 48);
      v171 = *(v169 + v170);
      v172 = v169;
      v173 = swift_projectBox();
      v174 = *(v173 + v170);
      v175 = *(v167 + 2);
      v175(v48, v172, v166);
      v175(v45, v173, v166);
      v176 = v174;
      if (sub_1CF9E59A8())
      {
        sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
        v137 = sub_1CF9E7568();

        v177 = *(v167 + 1);
        v177(v45, v166);
        v177(v48, v166);
        return v137 & 1;
      }

      v309 = *(v167 + 1);
      v309(v45, v166);
      v309(v48, v166);
      goto LABEL_171;
    case 8uLL:
      v117 = v328;
      if (((v117 >> 58) & 0x3C | (v117 >> 1) & 3) != 8)
      {
        goto LABEL_171;
      }

      goto LABEL_105;
    case 9uLL:
      v117 = v328;
      if (((v117 >> 58) & 0x3C | (v117 >> 1) & 3) != 9)
      {
        goto LABEL_171;
      }

      goto LABEL_105;
    case 0xAuLL:
      v117 = v328;
      if (((v117 >> 58) & 0x3C | (v117 >> 1) & 3) != 0xA)
      {
        goto LABEL_171;
      }

      goto LABEL_105;
    case 0xBuLL:
      v118 = v328;
      if (((v118 >> 58) & 0x3C | (v118 >> 1) & 3) != 0xB)
      {
        goto LABEL_171;
      }

      goto LABEL_124;
    case 0xCuLL:
      v117 = v328;
      if (((v117 >> 58) & 0x3C | (v117 >> 1) & 3) != 0xC)
      {
        goto LABEL_171;
      }

      goto LABEL_105;
    case 0xDuLL:
      v117 = v328;
      if (((v117 >> 58) & 0x3C | (v117 >> 1) & 3) != 0xD)
      {
        goto LABEL_171;
      }

      goto LABEL_105;
    case 0xEuLL:
      if (((v328 >> 58) & 0x3C | (v328 >> 1) & 3) != 0xE)
      {
        goto LABEL_171;
      }

      v123 = *((v70 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v124 = *((v328 & 0xFFFFFFFFFFFFFF9) + 0x18);
      if ((sub_1CF6BEDC4(*((v70 & 0xFFFFFFFFFFFFFF9) + 0x10), *((v328 & 0xFFFFFFFFFFFFFF9) + 0x10)) & 1) == 0)
      {
        goto LABEL_171;
      }

      goto LABEL_122;
    case 0xFuLL:
      if (((v328 >> 58) & 0x3C | (v328 >> 1) & 3) != 0xF)
      {
        goto LABEL_171;
      }

      v164 = *((v70 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v165 = *((v328 & 0xFFFFFFFFFFFFFF9) + 0x18);
      if ((sub_1CF6BF014(*((v70 & 0xFFFFFFFFFFFFFF9) + 0x10), *((v328 & 0xFFFFFFFFFFFFFF9) + 0x10)) & 1) == 0)
      {
        goto LABEL_171;
      }

      goto LABEL_122;
    case 0x10uLL:
      v120 = v328;
      if (((v120 >> 58) & 0x3C | (v120 >> 1) & 3) != 0x10)
      {
        goto LABEL_171;
      }

      goto LABEL_113;
    case 0x11uLL:
      v120 = v328;
      if (((v120 >> 58) & 0x3C | (v120 >> 1) & 3) != 0x11)
      {
        goto LABEL_171;
      }

      goto LABEL_113;
    case 0x12uLL:
      v120 = v328;
      if (((v120 >> 58) & 0x3C | (v120 >> 1) & 3) != 0x12)
      {
        goto LABEL_171;
      }

      goto LABEL_113;
    case 0x13uLL:
      v120 = v328;
      if (((v120 >> 58) & 0x3C | (v120 >> 1) & 3) != 0x13)
      {
        goto LABEL_171;
      }

LABEL_113:
      v254 = *((v70 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v255 = *((v70 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v256 = *((v70 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v257 = *((v70 & 0xFFFFFFFFFFFFFF9) + 0x19);
      v258 = *((v120 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v259 = *((v120 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v260 = *((v120 & 0xFFFFFFFFFFFFFF9) + 0x19);
      v261 = *((v120 & 0xFFFFFFFFFFFFFF9) + 0x20);
      sub_1CEFD0988(v255, v256, v257);
      sub_1CEFD0988(v258, v259, v260);
      if (sub_1CF7BC790(v255, v256 | (v257 << 8), v258, v259 | (v260 << 8)))
      {
        sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
        v137 = sub_1CF9E7568();

        sub_1CEFD0994(v258, v259, v260);
        sub_1CEFD0994(v255, v256, v257);
        return v137 & 1;
      }

      sub_1CEFD0994(v258, v259, v260);
      sub_1CEFD0994(v255, v256, v257);
      goto LABEL_171;
    case 0x14uLL:
      v184 = v59;
      v185 = v67;
      v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
      v187 = swift_projectBox();
      if (((v328 >> 58) & 0x3C | (v328 >> 1) & 3) != 0x14)
      {
        goto LABEL_171;
      }

      v188 = *(v186 + 48);
      v189 = *(v187 + v188);
      v190 = v187;
      v191 = swift_projectBox();
      v192 = *(v191 + v188);
      v193 = *(v185 + 2);
      v193(v42, v190, v184);
      v193(v39, v191, v184);
      v194 = v192;
      if (sub_1CF9E59A8())
      {
        sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
        v137 = sub_1CF9E7568();

        v195 = *(v185 + 1);
        v195(v39, v184);
        v196 = v42;
LABEL_88:
        v195(v196, v184);
        return v137 & 1;
      }

      v310 = *(v185 + 1);
      v310(v39, v184);
      v311 = v42;
LABEL_163:
      v310(v311, v184);
      goto LABEL_171;
    case 0x15uLL:
      v119 = v328;
      if (((v119 >> 58) & 0x3C | (v119 >> 1) & 3) == 0x15)
      {
        goto LABEL_81;
      }

      goto LABEL_171;
    case 0x16uLL:
      v117 = v328;
      if (((v117 >> 58) & 0x3C | (v117 >> 1) & 3) == 0x16)
      {
        goto LABEL_105;
      }

      goto LABEL_171;
    case 0x17uLL:
      v145 = v328;
      if (((v145 >> 58) & 0x3C | (v145 >> 1) & 3) == 0x17)
      {
        goto LABEL_121;
      }

      goto LABEL_171;
    case 0x18uLL:
      v145 = v328;
      if (((v145 >> 58) & 0x3C | (v145 >> 1) & 3) != 0x18)
      {
        goto LABEL_171;
      }

      goto LABEL_121;
    case 0x19uLL:
      v145 = v328;
      if (((v145 >> 58) & 0x3C | (v145 >> 1) & 3) != 0x19)
      {
        goto LABEL_171;
      }

LABEL_121:
      v276 = *((v70 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v277 = *((v145 & 0xFFFFFFFFFFFFFF9) + 0x10);
LABEL_122:
      sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
      return sub_1CF9E7568() & 1;
    case 0x1AuLL:
      if (((v328 >> 58) & 0x3C | (v328 >> 1) & 3) != 0x1A)
      {
        goto LABEL_171;
      }

      v295 = *((v70 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v296 = *((v70 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v297 = *((v328 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v298 = *((v328 & 0xFFFFFFFFFFFFFF9) + 0x18);
      if (!v295)
      {
        if (v297)
        {
          goto LABEL_171;
        }

        goto LABEL_174;
      }

      if (v297)
      {
        sub_1CEFD57E0(0, &qword_1EDEA3730, off_1E83BC670);
        v299 = v297;
        v300 = v295;
        v301 = sub_1CF9E7568();

        if (v301)
        {
LABEL_174:
          v137 = v296 == v298;
          return v137 & 1;
        }
      }

      goto LABEL_171;
    case 0x1BuLL:
      v118 = v328;
      if (((v118 >> 58) & 0x3C | (v118 >> 1) & 3) != 0x1B)
      {
        goto LABEL_171;
      }

      goto LABEL_124;
    case 0x1CuLL:
      v118 = v328;
      if (((v118 >> 58) & 0x3C | (v118 >> 1) & 3) == 0x1C)
      {
        goto LABEL_124;
      }

      goto LABEL_171;
    case 0x1DuLL:
      if (((v328 >> 58) & 0x3C | (v328 >> 1) & 3) != 0x1D)
      {
        goto LABEL_171;
      }

      v278 = *((v70 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v279 = *((v328 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v280 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v282 = v281;
      if (v280 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v282 == v283)
      {
        goto LABEL_128;
      }

      goto LABEL_139;
    case 0x1EuLL:
      if (((v328 >> 58) & 0x3C | (v328 >> 1) & 3) != 0x1E)
      {
        goto LABEL_171;
      }

      v224 = *((v70 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v225 = *((v328 & 0xFFFFFFFFFFFFFF9) + 0x10);
      sub_1CEFD09A0(v225);
      LOBYTE(v224) = sub_1CF81E3B8(v224, v225);
      sub_1CEFD0A98(v225);
      return v224 & 1;
    case 0x1FuLL:
      v118 = v328;
      if (((v118 >> 58) & 0x3C | (v118 >> 1) & 3) != 0x1F)
      {
        goto LABEL_171;
      }

LABEL_124:
      v137 = *((v70 & 0xFFFFFFFFFFFFFF9) + 0x10) == *((v118 & 0xFFFFFFFFFFFFFF9) + 0x10);
      return v137 & 1;
    case 0x20uLL:
      v99 = v59;
      v100 = v67;
      v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5210, &unk_1CFA0F4B0);
      v228 = swift_projectBox();
      if (((v328 >> 58) & 0x3C | (v328 >> 1) & 3) != 0x20)
      {
        goto LABEL_171;
      }

      v229 = *(v227 + 48);
      LODWORD(v327) = *(v228 + v229);
      v230 = *(v227 + 64);
      v326 = *(v228 + v230);
      v231 = v228;
      v232 = swift_projectBox();
      LODWORD(v328) = *(v232 + v229);
      v233 = *(v232 + v230);
      v109 = v100;
      v234 = *(v100 + 2);
      v111 = v36;
      v235 = v36;
      v112 = v99;
      v234(v235, v231, v99);
      v236 = v319;
      v234(v319, v232, v99);
      v237 = v233;
      v115 = v236;
      v116 = v237;
      if ((sub_1CF9E59A8() & 1) == 0)
      {
        goto LABEL_138;
      }

      if (v327 == v328)
      {
        goto LABEL_132;
      }

      goto LABEL_143;
    case 0x21uLL:
      v125 = v59;
      v126 = v67;
      v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
      v128 = swift_projectBox();
      if (((v328 >> 58) & 0x3C | (v328 >> 1) & 3) != 0x21)
      {
        goto LABEL_171;
      }

      v129 = *(v127 + 48);
      v130 = *(v128 + v129);
      v131 = v128;
      v132 = swift_projectBox();
      v133 = *(v132 + v129);
      v134 = *(v126 + 2);
      v135 = v320;
      v134(v320, v131, v125);
      v134(v29, v132, v125);
      v136 = v133;
      if (sub_1CF9E59A8())
      {
        sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
        v137 = sub_1CF9E7568();

        v138 = *(v126 + 1);
        v138(v29, v125);
        v138(v135, v125);
        return v137 & 1;
      }

      v308 = *(v126 + 1);
      v308(v29, v125);
      v308(v135, v125);
      goto LABEL_171;
    case 0x22uLL:
      v119 = v328;
      if (((v119 >> 58) & 0x3C | (v119 >> 1) & 3) != 0x22)
      {
        goto LABEL_171;
      }

LABEL_81:
      v205 = *((v70 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v206 = *((v119 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v207 = *((v70 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v208 = *((v70 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v209 = *((v70 & 0xFFFFFFFFFFFFFF9) + 0x19);
      v210 = *((v119 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v211 = *((v119 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v212 = *((v119 & 0xFFFFFFFFFFFFFF9) + 0x19);
      sub_1CEFD0988(v207, v208, *((v70 & 0xFFFFFFFFFFFFFF9) + 0x19));
      sub_1CEFD0988(v210, v211, v212);
      v213 = sub_1CF7BC790(v207, v208 | (v209 << 8), v210, v211 | (v212 << 8));
      sub_1CEFD0994(v210, v211, v212);
      sub_1CEFD0994(v207, v208, v209);
      if ((v213 & 1) == 0)
      {
        goto LABEL_171;
      }

      v137 = v205 == v206;
      return v137 & 1;
    case 0x23uLL:
      v99 = v59;
      v100 = v67;
      v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5200, "hx\t");
      v102 = swift_projectBox();
      if (((v328 >> 58) & 0x3C | (v328 >> 1) & 3) != 0x23)
      {
        goto LABEL_171;
      }

      v103 = *(v101 + 48);
      v104 = *(v102 + v103);
      v105 = *(v101 + 64);
      v326 = *(v102 + v105);
      v327 = v104;
      v106 = v102;
      v107 = swift_projectBox();
      v328 = *(v107 + v103);
      v108 = *(v107 + v105);
      v109 = v100;
      v110 = *(v100 + 2);
      v111 = v321;
      v112 = v99;
      v110(v321, v106, v99);
      v113 = v323;
      v110(v323, v107, v99);
      v114 = v108;
      v115 = v113;
      v116 = v114;
      if ((sub_1CF9E59A8() & 1) == 0)
      {
        goto LABEL_138;
      }

      if (v327 != v328)
      {
        goto LABEL_143;
      }

      goto LABEL_132;
    case 0x24uLL:
      v117 = v328;
      if (((v117 >> 58) & 0x3C | (v117 >> 1) & 3) != 0x24)
      {
        goto LABEL_171;
      }

LABEL_105:
      v73 = *((v70 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v239 = *((v70 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v76 = *((v117 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v75 = *((v117 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v240 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v242 = v241;
      if (v240 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v242 == v243)
      {
        goto LABEL_107;
      }

      v247 = sub_1CF9E8048();
      v248 = v75;
      v249 = v73;
      v250 = v76;

      if (v247)
      {
        goto LABEL_109;
      }

      goto LABEL_170;
    case 0x25uLL:
      v87 = v59;
      v88 = v67;
      v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
      v90 = swift_projectBox();
      if (((v328 >> 58) & 0x3C | (v328 >> 1) & 3) != 0x25)
      {
        goto LABEL_171;
      }

      v91 = *(v89 + 48);
      v92 = *(v90 + v91);
      v93 = v90;
      v94 = swift_projectBox();
      v95 = *(v94 + v91);
      v96 = *(v88 + 2);
      v97 = v324;
      v96(v324, v93, v87);
      v98 = v322;
      goto LABEL_68;
    case 0x26uLL:
      v99 = v59;
      v100 = v67;
      v284 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20F0, &unk_1CFA0F4A0);
      v285 = swift_projectBox();
      if (((v328 >> 58) & 0x3C | (v328 >> 1) & 3) != 0x26)
      {
        goto LABEL_171;
      }

      v286 = *(v284 + 48);
      v327 = *(v285 + v286);
      v287 = *(v284 + 64);
      v324 = *(v285 + v287);
      v288 = v285;
      v289 = swift_projectBox();
      v328 = *(v289 + v286);
      v290 = *(v289 + v287);
      v109 = v100;
      v291 = *(v100 + 2);
      v111 = v325;
      v112 = v99;
      v291(v325, v288, v99);
      v292 = v326;
      v291(v326, v289, v99);
      v293 = v290;
      v115 = v292;
      v116 = v293;
      if ((sub_1CF9E59A8() & 1) == 0)
      {
LABEL_138:

        v302 = *(v109 + 1);
        v302(v115, v112);
        v303 = v111;
        goto LABEL_142;
      }

      if (v327 == v328)
      {
LABEL_132:
        sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
        v137 = sub_1CF9E7568();

        v294 = *(v100 + 1);
        v294(v115, v99);
        v294(v111, v99);
        return v137 & 1;
      }

LABEL_143:

      v304 = *(v100 + 1);
      v304(v115, v99);
      v304(v111, v99);
      goto LABEL_171;
    case 0x27uLL:
      v325 = v66;
      v326 = v64;
      v327 = v59;
      v251 = v67;
      v252 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4AF0, "pN\t");
      v253 = swift_projectBox();
      if (((v328 >> 58) & 0x3C | (v328 >> 1) & 3) != 0x27)
      {
        goto LABEL_171;
      }

      goto LABEL_117;
    case 0x28uLL:
      v97 = v65;
      v87 = v59;
      v88 = v67;
      v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C51F0, qword_1CFA17B30);
      v141 = swift_projectBox();
      if (((v328 >> 58) & 0x3C | (v328 >> 1) & 3) != 0x28)
      {
        goto LABEL_171;
      }

      v142 = *(v140 + 48);
      v143 = *(v141 + v142);
      v144 = v141;
      v94 = swift_projectBox();
      v95 = *(v94 + v142);
      v96 = *(v88 + 2);
      v96(v97, v144, v87);
      v98 = v327;
      goto LABEL_68;
    case 0x29uLL:
      v98 = v63;
      v97 = v62;
      v87 = v59;
      v88 = v67;
      v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C51F0, qword_1CFA17B30);
      v122 = swift_projectBox();
      if (((v328 >> 58) & 0x3C | (v328 >> 1) & 3) == 0x29)
      {
        goto LABEL_67;
      }

      goto LABEL_171;
    case 0x2AuLL:
      v325 = v60;
      v326 = v68;
      v327 = v59;
      v251 = v67;
      v252 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4B00, &unk_1CFA0F490);
      v253 = swift_projectBox();
      if (((v328 >> 58) & 0x3C | (v328 >> 1) & 3) != 0x2A)
      {
        goto LABEL_171;
      }

LABEL_117:
      v262 = *(v252 + 48);
      v263 = *(v253 + v262);
      v264 = *(v252 + 64);
      v323 = *(v253 + v264);
      v324 = v263;
      v265 = v253;
      v266 = swift_projectBox();
      v267 = *(v266 + v262);
      v268 = *(v266 + v264);
      v269 = *(v251 + 2);
      v270 = v326;
      v271 = v265;
      v112 = v327;
      v269(v326, v271, v327);
      v272 = v325;
      v269(v325, v266, v112);
      v273 = v268;
      if (sub_1CF9E59A8())
      {
        if (v324 == v267)
        {
          sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
          v137 = sub_1CF9E7568();

          v274 = *(v251 + 1);
          v275 = v327;
          v274(v325, v327);
          v274(v326, v275);
          return v137 & 1;
        }

        v312 = *(v251 + 1);
        v313 = v327;
        v312(v325, v327);
        v312(v326, v313);
      }

      else
      {

        v302 = *(v251 + 1);
        v302(v272, v112);
        v303 = v270;
LABEL_142:
        v302(v303, v112);
      }

      goto LABEL_171;
    case 0x2BuLL:
      if (((v328 >> 58) & 0x3C | (v328 >> 1) & 3) != 0x2B)
      {
        goto LABEL_171;
      }

      v81 = *((v70 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v82 = *((v328 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v83 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v85 = v84;
      if (v83 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v85 == v86)
      {
LABEL_128:
        v137 = 1;
      }

      else
      {
LABEL_139:
        v137 = sub_1CF9E8048();
      }

      return v137 & 1;
    case 0x2CuLL:
      v98 = v61;
      v97 = v69;
      v87 = v59;
      v88 = v67;
      v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
      v122 = swift_projectBox();
      if (((v328 >> 58) & 0x3C | (v328 >> 1) & 3) != 0x2C)
      {
        goto LABEL_171;
      }

LABEL_67:
      v178 = *(v121 + 48);
      v179 = *(v122 + v178);
      v180 = v122;
      v94 = swift_projectBox();
      v95 = *(v94 + v178);
      v96 = *(v88 + 2);
      v96(v97, v180, v87);
LABEL_68:
      v96(v98, v94, v87);
      v181 = v95;
      if (sub_1CF9E59A8())
      {
        sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
        v137 = sub_1CF9E7568();

        v182 = *(v88 + 1);
        v182(v98, v87);
        v182(v97, v87);
        return v137 & 1;
      }

      v183 = *(v88 + 1);
      v183(v98, v87);
      v183(v97, v87);
      goto LABEL_171;
    case 0x2DuLL:
      if (v70 == 0xB000000000000002)
      {
        v137 = ((v328 >> 58) & 0x3C | (v328 >> 1) & 3) == 0x2D && v328 == 0xB000000000000002;
      }

      else
      {
        if (v70 == 0xB00000000000000ALL)
        {
          v238 = 0xB00000000000000ALL;
        }

        else
        {
          v238 = 0xB000000000000012;
        }

        v137 = ((v328 >> 58) & 0x3C | (v328 >> 1) & 3) == 0x2D && v328 == v238;
      }

      return v137 & 1;
    default:
      if ((v328 >> 58) & 0x3C | (v328 >> 1) & 3)
      {
        goto LABEL_171;
      }

      v73 = *(v70 + 16);
      v74 = *(v70 + 24);
      v76 = *(v328 + 16);
      v75 = *(v328 + 24);
      v77 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v79 = v78;
      if (v77 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v79 == v80)
      {
LABEL_107:
        v244 = v75;
        v245 = v73;
        v246 = v76;

LABEL_109:
        sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
        v137 = sub_1CF9E7568();

        return v137 & 1;
      }

      v318 = sub_1CF9E8048();
      v248 = v75;
      v249 = v73;
      v250 = v76;

      if (v318)
      {
        goto LABEL_109;
      }

LABEL_170:

LABEL_171:
      v137 = 0;
      return v137 & 1;
  }
}

uint64_t sub_1CF81E3B8(unint64_t a1, unint64_t a2)
{
  v313 = a2;
  v3 = sub_1CF9E5A58();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v5);
  MEMORY[0x1EEE9AC00](v6);
  MEMORY[0x1EEE9AC00](v7);
  MEMORY[0x1EEE9AC00](v8);
  MEMORY[0x1EEE9AC00](v9);
  MEMORY[0x1EEE9AC00](v10);
  v312 = &v304 - v11;
  MEMORY[0x1EEE9AC00](v12);
  MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  v311 = &v304 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v310 = &v304 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v307 = &v304 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v309 = &v304 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v308 = &v304 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v306 = &v304 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v304 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v305 = &v304 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v304 = &v304 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v304 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v304 - v38;
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v304 - v41;
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v304 - v44;
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v304 - v47;
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v304 - v50;
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v304 - v53;
  MEMORY[0x1EEE9AC00](v55);
  v57 = &v304 - v56;
  MEMORY[0x1EEE9AC00](v58);
  v70 = a1;
  v72 = &v304 - v71;
  switch((v70 >> 58) & 0x3C | (v70 >> 1) & 3)
  {
    case 1uLL:
      v114 = v313;
      if (((v114 >> 58) & 0x3C | (v114 >> 1) & 3) != 1)
      {
        return 0;
      }

      goto LABEL_112;
    case 2uLL:
      v311 = v67;
      v312 = v59;
      v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F40, qword_1CFA0F4C0);
      v149 = swift_projectBox();
      if (((v313 >> 58) & 0x3C | (v313 >> 1) & 3) != 2)
      {
        return 0;
      }

      v150 = *v149;
      v151 = v149[1];
      v152 = v148[16];
      v307 = *(v149 + v152);
      v153 = v148[20];
      v309 = *(v149 + v153);
      v310 = v150;
      v154 = v148[12];
      v155 = v149;
      v156 = swift_projectBox();
      v313 = *(v156 + v152);
      v157 = *v156;
      v158 = v156[1];
      v308 = *(v156 + v153);
      v159 = *(v311 + 2);
      v160 = v155 + v154;
      v161 = v312;
      v159(v72, v160, v312);
      v159(v57, v156 + v154, v161);
      if ((v310 != v157 || v151 != v158) && (sub_1CF9E8048() & 1) == 0)
      {
        goto LABEL_187;
      }

      v162 = v313;
      if (sub_1CF9E59A8())
      {
        sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
        v163 = sub_1CF9E7568();

        v164 = v312;
        v165 = *(v311 + 1);
        v165(v57, v312);
        v165(v72, v164);
        return v163 & (v309 == v308);
      }

      else
      {

LABEL_187:
        v301 = v312;
        v302 = *(v311 + 1);
        v302(v57, v312);
        v302(v72, v301);
        return 0;
      }

    case 3uLL:
      v114 = v313;
      if (((v114 >> 58) & 0x3C | (v114 >> 1) & 3) == 3)
      {
        goto LABEL_112;
      }

      return 0;
    case 4uLL:
      if (((v313 >> 58) & 0x3C | (v313 >> 1) & 3) != 4)
      {
        return 0;
      }

      v137 = v70 & 0xFFFFFFFFFFFFFF9;
      v138 = *((v70 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v74 = *((v313 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v139 = *((v70 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v140 = *((v313 & 0xFFFFFFFFFFFFFF9) + 0x18);
      if (v139 == 255)
      {
        goto LABEL_85;
      }

      if (v140 == 255)
      {
        return 0;
      }

      v141 = *(v137 + 16);
      v77 = *((v313 & 0xFFFFFFFFFFFFFF9) + 0x10);
      if (!v139)
      {
        goto LABEL_198;
      }

      if (v139 == 1)
      {
        goto LABEL_42;
      }

      goto LABEL_176;
    case 5uLL:
      if (((v313 >> 58) & 0x3C | (v313 >> 1) & 3) != 5)
      {
        return 0;
      }

      v202 = v70 & 0xFFFFFFFFFFFFFF9;
      v203 = *((v70 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v74 = *((v313 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v204 = *((v70 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v140 = *((v313 & 0xFFFFFFFFFFFFFF9) + 0x18);
      if (v204 == 255)
      {
LABEL_85:
        if (v140 != 255)
        {
          return 0;
        }

        goto LABEL_180;
      }

      if (v140 == 255)
      {
        return 0;
      }

      v141 = *(v202 + 16);
      v77 = *((v313 & 0xFFFFFFFFFFFFFF9) + 0x10);
      if (v204)
      {
        if (v204 != 1)
        {
LABEL_176:
          v79 = 0;
          v242 = v140 == 2;
          if (v141)
          {
            goto LABEL_118;
          }

          goto LABEL_177;
        }

LABEL_42:
        v79 = 0;
        if (v140 == 1 && v141 == v77)
        {
          goto LABEL_180;
        }
      }

      else
      {
LABEL_198:
        v79 = 0;
        if (!v140 && v141 == v77)
        {
          goto LABEL_180;
        }
      }

      return v79;
    case 6uLL:
      v188 = v59;
      v215 = v67;
      v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
      v217 = swift_projectBox();
      if (((v313 >> 58) & 0x3C | (v313 >> 1) & 3) != 6)
      {
        return 0;
      }

      v218 = *(v216 + 48);
      v219 = *(v217 + v218);
      v220 = v217;
      v221 = swift_projectBox();
      v222 = *(v221 + v218);
      v223 = *(v215 + 2);
      v223(v54, v220, v188);
      v223(v51, v221, v188);
      v224 = v222;
      if (sub_1CF9E59A8())
      {
        sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
        v199 = sub_1CF9E7568();

        v200 = *(v215 + 1);
        v200(v51, v188);
        v201 = v54;
        goto LABEL_95;
      }

      v293 = *(v215 + 1);
      v293(v51, v188);
      v294 = v54;
      goto LABEL_183;
    case 7uLL:
      v168 = v59;
      v169 = v67;
      v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
      v171 = swift_projectBox();
      if (((v313 >> 58) & 0x3C | (v313 >> 1) & 3) != 7)
      {
        return 0;
      }

      v172 = *(v170 + 48);
      v173 = *(v171 + v172);
      v174 = v171;
      v175 = swift_projectBox();
      v176 = *(v175 + v172);
      v177 = *(v169 + 2);
      v177(v48, v174, v168);
      v177(v45, v175, v168);
      v178 = v176;
      if (sub_1CF9E59A8())
      {
        sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
        v179 = sub_1CF9E7568();

        v180 = *(v169 + 1);
        v180(v45, v168);
        v180(v48, v168);
        return v179 & 1;
      }

      else
      {

        v298 = *(v169 + 1);
        v298(v45, v168);
        v298(v48, v168);
        return 0;
      }

    case 8uLL:
      v114 = v313;
      if (((v114 >> 58) & 0x3C | (v114 >> 1) & 3) == 8)
      {
        goto LABEL_112;
      }

      return 0;
    case 9uLL:
      v114 = v313;
      if (((v114 >> 58) & 0x3C | (v114 >> 1) & 3) == 9)
      {
        goto LABEL_112;
      }

      return 0;
    case 0xAuLL:
      v114 = v313;
      if (((v114 >> 58) & 0x3C | (v114 >> 1) & 3) == 0xA)
      {
        goto LABEL_112;
      }

      return 0;
    case 0xBuLL:
      v115 = v313;
      if (((v115 >> 58) & 0x3C | (v115 >> 1) & 3) == 0xB)
      {
        goto LABEL_136;
      }

      return 0;
    case 0xCuLL:
      v114 = v313;
      if (((v114 >> 58) & 0x3C | (v114 >> 1) & 3) == 0xC)
      {
        goto LABEL_112;
      }

      return 0;
    case 0xDuLL:
      v114 = v313;
      if (((v114 >> 58) & 0x3C | (v114 >> 1) & 3) == 0xD)
      {
        goto LABEL_112;
      }

      return 0;
    case 0xEuLL:
      if (((v313 >> 58) & 0x3C | (v313 >> 1) & 3) == 0xE)
      {
        v120 = *((v70 & 0xFFFFFFFFFFFFFF9) + 0x18);
        v121 = *((v313 & 0xFFFFFFFFFFFFFF9) + 0x18);
        if (sub_1CF6BEDC4(*((v70 & 0xFFFFFFFFFFFFFF9) + 0x10), *((v313 & 0xFFFFFFFFFFFFFF9) + 0x10)))
        {
          goto LABEL_134;
        }
      }

      return 0;
    case 0xFuLL:
      if (((v313 >> 58) & 0x3C | (v313 >> 1) & 3) == 0xF)
      {
        v166 = *((v70 & 0xFFFFFFFFFFFFFF9) + 0x18);
        v167 = *((v313 & 0xFFFFFFFFFFFFFF9) + 0x18);
        if (sub_1CF6BF014(*((v70 & 0xFFFFFFFFFFFFFF9) + 0x10), *((v313 & 0xFFFFFFFFFFFFFF9) + 0x10)))
        {
          goto LABEL_134;
        }
      }

      return 0;
    case 0x10uLL:
      v117 = v313;
      if (((v117 >> 58) & 0x3C | (v117 >> 1) & 3) == 0x10)
      {
        goto LABEL_125;
      }

      return 0;
    case 0x11uLL:
      v117 = v313;
      if (((v117 >> 58) & 0x3C | (v117 >> 1) & 3) == 0x11)
      {
        goto LABEL_125;
      }

      return 0;
    case 0x12uLL:
      v117 = v313;
      if (((v117 >> 58) & 0x3C | (v117 >> 1) & 3) == 0x12)
      {
        goto LABEL_125;
      }

      return 0;
    case 0x13uLL:
      v117 = v313;
      if (((v117 >> 58) & 0x3C | (v117 >> 1) & 3) != 0x13)
      {
        return 0;
      }

LABEL_125:
      v246 = *((v70 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v247 = *((v70 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v248 = *((v70 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v249 = *((v70 & 0xFFFFFFFFFFFFFF9) + 0x19);
      v250 = *((v117 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v251 = *((v117 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v252 = *((v117 & 0xFFFFFFFFFFFFFF9) + 0x19);
      v253 = *((v117 & 0xFFFFFFFFFFFFFF9) + 0x20);
      sub_1CF48034C(v247, v248, v249);
      sub_1CF48034C(v250, v251, v252);
      if (sub_1CF7BC9E4(v247, v248 | (v249 << 8), v250, v251 | (v252 << 8)))
      {
        sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
        v254 = sub_1CF9E7568();

        sub_1CF1E53F8(v250, v251, v252);
        sub_1CF1E53F8(v247, v248, v249);
        return v254 & 1;
      }

      else
      {

        sub_1CF1E53F8(v250, v251, v252);
        sub_1CF1E53F8(v247, v248, v249);
        return 0;
      }

    case 0x14uLL:
      v188 = v59;
      v189 = v67;
      v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
      v191 = swift_projectBox();
      if (((v313 >> 58) & 0x3C | (v313 >> 1) & 3) != 0x14)
      {
        return 0;
      }

      v192 = *(v190 + 48);
      v193 = *(v191 + v192);
      v194 = v191;
      v195 = swift_projectBox();
      v196 = *(v195 + v192);
      v197 = *(v189 + 2);
      v197(v42, v194, v188);
      v197(v39, v195, v188);
      v198 = v196;
      if (sub_1CF9E59A8())
      {
        sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
        v199 = sub_1CF9E7568();

        v200 = *(v189 + 1);
        v200(v39, v188);
        v201 = v42;
LABEL_95:
        v200(v201, v188);
        return v199 & 1;
      }

      v293 = *(v189 + 1);
      v293(v39, v188);
      v294 = v42;
LABEL_183:
      v295 = v188;
      goto LABEL_185;
    case 0x15uLL:
      v116 = v313;
      if (((v116 >> 58) & 0x3C | (v116 >> 1) & 3) == 0x15)
      {
        goto LABEL_88;
      }

      return 0;
    case 0x16uLL:
      v114 = v313;
      if (((v114 >> 58) & 0x3C | (v114 >> 1) & 3) == 0x16)
      {
        goto LABEL_112;
      }

      return 0;
    case 0x17uLL:
      v147 = v313;
      if (((v147 >> 58) & 0x3C | (v147 >> 1) & 3) == 0x17)
      {
        goto LABEL_133;
      }

      return 0;
    case 0x18uLL:
      v147 = v313;
      if (((v147 >> 58) & 0x3C | (v147 >> 1) & 3) == 0x18)
      {
        goto LABEL_133;
      }

      return 0;
    case 0x19uLL:
      v147 = v313;
      if (((v147 >> 58) & 0x3C | (v147 >> 1) & 3) != 0x19)
      {
        return 0;
      }

LABEL_133:
      v273 = *((v70 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v274 = *((v147 & 0xFFFFFFFFFFFFFF9) + 0x10);
LABEL_134:
      sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
      return sub_1CF9E7568() & 1;
    case 0x1AuLL:
      if (((v313 >> 58) & 0x3C | (v313 >> 1) & 3) != 0x1A)
      {
        return 0;
      }

      v286 = *((v70 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v287 = *((v70 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v288 = *((v313 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v289 = *((v313 & 0xFFFFFFFFFFFFFF9) + 0x18);
      if (!v286)
      {
        if (v288)
        {
          return 0;
        }

        goto LABEL_189;
      }

      if (v288)
      {
        sub_1CEFD57E0(0, &qword_1EDEA3730, off_1E83BC670);
        v290 = v288;
        v291 = v286;
        v292 = sub_1CF9E7568();

        if (v292)
        {
LABEL_189:
          v214 = v287 == v289;
          goto LABEL_190;
        }
      }

      return 0;
    case 0x1BuLL:
      v115 = v313;
      if (((v115 >> 58) & 0x3C | (v115 >> 1) & 3) == 0x1B)
      {
        goto LABEL_136;
      }

      return 0;
    case 0x1CuLL:
      v115 = v313;
      if (((v115 >> 58) & 0x3C | (v115 >> 1) & 3) == 0x1C)
      {
        goto LABEL_136;
      }

      return 0;
    case 0x1DuLL:
      if (((v313 >> 58) & 0x3C | (v313 >> 1) & 3) != 0x1D)
      {
        return 0;
      }

      v80 = *((v70 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v275 = *((v70 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v82 = *((v313 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v83 = *((v313 & 0xFFFFFFFFFFFFFF9) + 0x18);
      if (!v275)
      {
        goto LABEL_157;
      }

      if (v275 != 1)
      {
        goto LABEL_140;
      }

      goto LABEL_10;
    case 0x1EuLL:
      if (((v313 >> 58) & 0x3C | (v313 >> 1) & 3) != 0x1E)
      {
        return 0;
      }

      v225 = *((v70 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v226 = *((v313 & 0xFFFFFFFFFFFFFF9) + 0x10);
      sub_1CEFD09A0(v226);
      v227 = sub_1CF81C5BC(v225, v226);
      sub_1CEFD0A98(v226);
      return v227 & 1;
    case 0x1FuLL:
      v115 = v313;
      if (((v115 >> 58) & 0x3C | (v115 >> 1) & 3) != 0x1F)
      {
        return 0;
      }

LABEL_136:
      v214 = *((v70 & 0xFFFFFFFFFFFFFF9) + 0x10) == *((v115 & 0xFFFFFFFFFFFFFF9) + 0x10);
      goto LABEL_190;
    case 0x20uLL:
      v96 = v59;
      v97 = v67;
      v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5210, &unk_1CFA0F4B0);
      v229 = swift_projectBox();
      if (((v313 >> 58) & 0x3C | (v313 >> 1) & 3) != 0x20)
      {
        return 0;
      }

      v230 = *(v228 + 48);
      LODWORD(v312) = *(v229 + v230);
      v231 = *(v228 + 64);
      v311 = *(v229 + v231);
      v232 = v229;
      v233 = swift_projectBox();
      LODWORD(v313) = *(v233 + v230);
      v234 = *(v233 + v231);
      v106 = v97;
      v235 = *(v97 + 2);
      v108 = v36;
      v236 = v36;
      v109 = v96;
      v235(v236, v232, v96);
      v237 = v304;
      v235(v304, v233, v96);
      v238 = v234;
      v112 = v237;
      v113 = v238;
      if ((sub_1CF9E59A8() & 1) == 0)
      {
        goto LABEL_154;
      }

      if (v312 == v313)
      {
        goto LABEL_147;
      }

      goto LABEL_156;
    case 0x21uLL:
      v122 = v59;
      v123 = v67;
      v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
      v125 = swift_projectBox();
      if (((v313 >> 58) & 0x3C | (v313 >> 1) & 3) != 0x21)
      {
        return 0;
      }

      v126 = *(v124 + 48);
      v127 = *(v125 + v126);
      v128 = v125;
      v129 = swift_projectBox();
      v130 = *(v129 + v126);
      v131 = *(v123 + 2);
      v132 = v305;
      v131(v305, v128, v122);
      v131(v29, v129, v122);
      v133 = v130;
      if (sub_1CF9E59A8())
      {
        sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
        v134 = sub_1CF9E7568();

        v135 = *(v123 + 1);
        v135(v29, v122);
        v135(v132, v122);
        return v134 & 1;
      }

      else
      {

        v297 = *(v123 + 1);
        v297(v29, v122);
        v297(v132, v122);
        return 0;
      }

    case 0x22uLL:
      v116 = v313;
      if (((v116 >> 58) & 0x3C | (v116 >> 1) & 3) != 0x22)
      {
        return 0;
      }

LABEL_88:
      v205 = *((v70 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v206 = *((v116 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v207 = *((v70 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v208 = *((v70 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v209 = *((v70 & 0xFFFFFFFFFFFFFF9) + 0x19);
      v210 = *((v116 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v211 = *((v116 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v212 = *((v116 & 0xFFFFFFFFFFFFFF9) + 0x19);
      sub_1CF48034C(v207, v208, *((v70 & 0xFFFFFFFFFFFFFF9) + 0x19));
      sub_1CF48034C(v210, v211, v212);
      v213 = sub_1CF7BC9E4(v207, v208 | (v209 << 8), v210, v211 | (v212 << 8));
      sub_1CF1E53F8(v210, v211, v212);
      sub_1CF1E53F8(v207, v208, v209);
      if ((v213 & 1) == 0)
      {
        return 0;
      }

      v214 = v205 == v206;
      goto LABEL_190;
    case 0x23uLL:
      v96 = v59;
      v97 = v67;
      v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5200, "hx\t");
      v99 = swift_projectBox();
      if (((v313 >> 58) & 0x3C | (v313 >> 1) & 3) != 0x23)
      {
        return 0;
      }

      v100 = *(v98 + 48);
      v101 = *(v99 + v100);
      v102 = *(v98 + 64);
      v311 = *(v99 + v102);
      v312 = v101;
      v103 = v99;
      v104 = swift_projectBox();
      v313 = *(v104 + v100);
      v105 = *(v104 + v102);
      v106 = v97;
      v107 = *(v97 + 2);
      v108 = v306;
      v109 = v96;
      v107(v306, v103, v96);
      v110 = v308;
      v107(v308, v104, v96);
      v111 = v105;
      v112 = v110;
      v113 = v111;
      if ((sub_1CF9E59A8() & 1) == 0)
      {
        goto LABEL_154;
      }

      if (v312 != v313)
      {
        goto LABEL_156;
      }

      goto LABEL_147;
    case 0x24uLL:
      v114 = v313;
      if (((v114 >> 58) & 0x3C | (v114 >> 1) & 3) != 0x24)
      {
        return 0;
      }

LABEL_112:
      v240 = *((v70 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v241 = v114 & 0xFFFFFFFFFFFFFF9;
      v74 = *((v114 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v75 = *((v70 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v76 = *((v70 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v77 = *(v241 + 16);
      v78 = *(v241 + 24);
      if (v76)
      {
        goto LABEL_113;
      }

      goto LABEL_4;
    case 0x25uLL:
      v84 = v59;
      v85 = v67;
      v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
      v87 = swift_projectBox();
      if (((v313 >> 58) & 0x3C | (v313 >> 1) & 3) != 0x25)
      {
        return 0;
      }

      v88 = *(v86 + 48);
      v89 = *(v87 + v88);
      v90 = v87;
      v91 = swift_projectBox();
      v92 = *(v91 + v88);
      v93 = *(v85 + 2);
      v94 = v309;
      v93(v309, v90, v84);
      v95 = v307;
      goto LABEL_77;
    case 0x26uLL:
      v96 = v59;
      v97 = v67;
      v276 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20F0, &unk_1CFA0F4A0);
      v277 = swift_projectBox();
      if (((v313 >> 58) & 0x3C | (v313 >> 1) & 3) != 0x26)
      {
        return 0;
      }

      v278 = *(v276 + 48);
      v312 = *(v277 + v278);
      v279 = *(v276 + 64);
      v309 = *(v277 + v279);
      v280 = v277;
      v281 = swift_projectBox();
      v313 = *(v281 + v278);
      v282 = *(v281 + v279);
      v106 = v97;
      v283 = *(v97 + 2);
      v108 = v310;
      v109 = v96;
      v283(v310, v280, v96);
      v284 = v311;
      v283(v311, v281, v96);
      v285 = v282;
      v112 = v284;
      v113 = v285;
      if (sub_1CF9E59A8())
      {
        if (v312 == v313)
        {
LABEL_147:
          sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
          v268 = sub_1CF9E7568();

          v269 = *(v97 + 1);
          v269(v112, v96);
          v271 = v108;
          v272 = v96;
          goto LABEL_148;
        }

LABEL_156:

        v293 = *(v97 + 1);
        v293(v112, v96);
        v294 = v108;
        v295 = v96;
      }

      else
      {
LABEL_154:

        v293 = *(v106 + 1);
        v293(v112, v109);
        v294 = v108;
        v295 = v109;
      }

      goto LABEL_185;
    case 0x27uLL:
      v310 = v66;
      v311 = v64;
      v312 = v59;
      v243 = v67;
      v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4AF0, "pN\t");
      v245 = swift_projectBox();
      if (((v313 >> 58) & 0x3C | (v313 >> 1) & 3) == 0x27)
      {
        goto LABEL_129;
      }

      return 0;
    case 0x28uLL:
      v94 = v65;
      v84 = v59;
      v85 = v67;
      v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C51F0, qword_1CFA17B30);
      v143 = swift_projectBox();
      if (((v313 >> 58) & 0x3C | (v313 >> 1) & 3) != 0x28)
      {
        return 0;
      }

      v144 = *(v142 + 48);
      v145 = *(v143 + v144);
      v146 = v143;
      v91 = swift_projectBox();
      v92 = *(v91 + v144);
      v93 = *(v85 + 2);
      v93(v94, v146, v84);
      v95 = v312;
      goto LABEL_77;
    case 0x29uLL:
      v95 = v63;
      v94 = v62;
      v84 = v59;
      v85 = v67;
      v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C51F0, qword_1CFA17B30);
      v119 = swift_projectBox();
      if (((v313 >> 58) & 0x3C | (v313 >> 1) & 3) == 0x29)
      {
        goto LABEL_76;
      }

      return 0;
    case 0x2AuLL:
      v310 = v60;
      v311 = v68;
      v312 = v59;
      v243 = v67;
      v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4B00, &unk_1CFA0F490);
      v245 = swift_projectBox();
      if (((v313 >> 58) & 0x3C | (v313 >> 1) & 3) != 0x2A)
      {
        return 0;
      }

LABEL_129:
      v255 = *(v244 + 48);
      v256 = *(v245 + v255);
      v257 = *(v244 + 64);
      v308 = *(v245 + v257);
      v309 = v256;
      v258 = v245;
      v259 = swift_projectBox();
      v260 = *(v259 + v255);
      v261 = *(v259 + v257);
      v262 = *(v243 + 2);
      v263 = v311;
      v264 = v258;
      v265 = v312;
      v262(v311, v264, v312);
      v266 = v310;
      v262(v310, v259, v265);
      v267 = v261;
      if ((sub_1CF9E59A8() & 1) == 0)
      {

        v293 = *(v243 + 1);
        v293(v266, v265);
        v294 = v263;
        v295 = v265;
LABEL_185:
        v293(v294, v295);
        return 0;
      }

      if (v309 != v260)
      {

        v293 = *(v243 + 1);
        v300 = v312;
        v293(v310, v312);
        v294 = v311;
        v295 = v300;
        goto LABEL_185;
      }

      sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
      v268 = sub_1CF9E7568();

      v269 = *(v243 + 1);
      v270 = v312;
      v269(v310, v312);
      v271 = v311;
      v272 = v270;
LABEL_148:
      v269(v271, v272);
      return v268 & 1;
    case 0x2BuLL:
      if (((v313 >> 58) & 0x3C | (v313 >> 1) & 3) != 0x2B)
      {
        return 0;
      }

      v80 = *((v70 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v81 = *((v70 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v82 = *((v313 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v83 = *((v313 & 0xFFFFFFFFFFFFFF9) + 0x18);
      if (v81)
      {
        if (v81 != 1)
        {
LABEL_140:
          if (v80)
          {
            if (v83 == 2 && v82 == 1)
            {
              return 1;
            }
          }

          else if (v83 == 2 && !v82)
          {
            return 1;
          }

          return 0;
        }

LABEL_10:
        if (v83 != 1 || v80 != v82)
        {
          return 0;
        }
      }

      else
      {
LABEL_157:
        if (v83 || v80 != v82)
        {
          return 0;
        }
      }

      return 1;
    case 0x2CuLL:
      v95 = v61;
      v94 = v69;
      v84 = v59;
      v85 = v67;
      v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
      v119 = swift_projectBox();
      if (((v313 >> 58) & 0x3C | (v313 >> 1) & 3) != 0x2C)
      {
        return 0;
      }

LABEL_76:
      v181 = *(v118 + 48);
      v182 = *(v119 + v181);
      v183 = v119;
      v91 = swift_projectBox();
      v92 = *(v91 + v181);
      v93 = *(v85 + 2);
      v93(v94, v183, v84);
LABEL_77:
      v93(v95, v91, v84);
      v184 = v92;
      if (sub_1CF9E59A8())
      {
        sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
        v185 = sub_1CF9E7568();

        v186 = *(v85 + 1);
        v186(v95, v84);
        v186(v94, v84);
        return v185 & 1;
      }

      else
      {

        v187 = *(v85 + 1);
        v187(v95, v84);
        v187(v94, v84);
        return 0;
      }

    case 0x2DuLL:
      if (v70 == 0xB000000000000002)
      {
        return ((v313 >> 58) & 0x3C | (v313 >> 1) & 3) == 0x2D && v313 == 0xB000000000000002;
      }

      if (v70 == 0xB00000000000000ALL)
      {
        v239 = 0xB00000000000000ALL;
      }

      else
      {
        v239 = 0xB000000000000012;
      }

      v214 = ((v313 >> 58) & 0x3C | (v313 >> 1) & 3) == 0x2D && v313 == v239;
LABEL_190:
      v303 = v214;
      return v303 & 1;
    default:
      if ((v313 >> 58) & 0x3C | (v313 >> 1) & 3)
      {
        return 0;
      }

      v73 = *(v70 + 32);
      v74 = *(v313 + 32);
      v75 = *(v70 + 16);
      v76 = *(v70 + 24);
      v77 = *(v313 + 16);
      v78 = *(v313 + 24);
      if (!v76)
      {
LABEL_4:
        v79 = 0;
        if (v78 || v75 != v77)
        {
          return v79;
        }

LABEL_180:
        sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
        v299 = v74;
        v227 = sub_1CF9E7568();

        return v227 & 1;
      }

LABEL_113:
      if (v76 == 1)
      {
        v79 = 0;
        if (v78 == 1 && v75 == v77)
        {
          goto LABEL_180;
        }
      }

      else
      {
        v79 = 0;
        v242 = v78 == 2;
        if (v75)
        {
LABEL_118:
          if (v242 && v77 == 1)
          {
            goto LABEL_180;
          }
        }

        else
        {
LABEL_177:
          if (v242 && !v77)
          {
            goto LABEL_180;
          }
        }
      }

      return v79;
  }
}

void sub_1CF82009C(uint64_t a1, unint64_t a2)
{
  v4 = sub_1CF9E5A58();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v102 - v10;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = v102 - v14;
  switch((a2 >> 58) & 0x3C | (a2 >> 1) & 3)
  {
    case 1uLL:
      v17 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v16 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v18 = 1;
      goto LABEL_53;
    case 2uLL:
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F40, qword_1CFA0F4C0);
      v57 = swift_projectBox();
      v58 = *v57;
      v59 = *(v57 + 1);
      v60 = v56[12];
      v61 = *&v57[v56[16]];
      v62 = *&v57[v56[20]];
      (*(v5 + 16))(v15, &v57[v60], v4);
      MEMORY[0x1D386A470](2);

      v63 = v61;
      sub_1CF9E69C8();

      sub_1CEFCCCA4(&qword_1EDEAB418, MEMORY[0x1E6968FB0]);
      sub_1CF9E6758();
      sub_1CF9E7578();
      MEMORY[0x1D386A470](v62);

      (*(v5 + 8))(v15, v4);
      return;
    case 3uLL:
      v17 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v16 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v18 = 3;
      goto LABEL_53;
    case 4uLL:
      v49 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v48 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v50 = 4;
      goto LABEL_33;
    case 5uLL:
      v49 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v48 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v50 = 5;
LABEL_33:
      MEMORY[0x1D386A470](v50, v13);
      sub_1CF9E81F8();
      if (v49)
      {
        _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v77 = v48;
        v102[0] = v49;
        sub_1CF9E69C8();
      }

      else
      {
        v100 = v48;
        v102[0] = 0;
      }

      sub_1CF9E7578();

      goto LABEL_74;
    case 6uLL:
      v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
      v79 = swift_projectBox();
      v23 = *(v79 + *(v78 + 48));
      (*(v5 + 16))(v15, v79, v4);
      v24 = 6;
      goto LABEL_41;
    case 7uLL:
      v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
      v72 = swift_projectBox();
      v23 = *(v72 + *(v71 + 48));
      (*(v5 + 16))(v15, v72, v4);
      v24 = 7;
      goto LABEL_41;
    case 8uLL:
      v17 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v16 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v18 = 8;
      goto LABEL_53;
    case 9uLL:
      v17 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v16 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v18 = 9;
      goto LABEL_53;
    case 0xAuLL:
      v17 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v16 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v18 = 10;
      goto LABEL_53;
    case 0xBuLL:
      v30 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v31 = 11;
      goto LABEL_61;
    case 0xCuLL:
      v17 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v16 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v18 = 12;
      goto LABEL_53;
    case 0xDuLL:
      v17 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v16 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v18 = 13;
      goto LABEL_53;
    case 0xEuLL:
      v44 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v45 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x18);
      MEMORY[0x1D386A470](14, v13);
      sub_1CF6655E8(a1, v44);
      sub_1CF9E7578();
      return;
    case 0xFuLL:
      v64 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v102[0] = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x18);
      MEMORY[0x1D386A470](15, v13);
      MEMORY[0x1D386A470](*(v64 + 16));
      v65 = *(v64 + 16);
      if (v65)
      {
        v68 = *(v5 + 16);
        v66 = v5 + 16;
        v67 = v68;
        v69 = v64 + ((*(v66 + 64) + 32) & ~*(v66 + 64));
        v70 = *(v66 + 56);
        do
        {
          v67(v11, v69, v4);
          sub_1CEFCCCA4(&qword_1EDEAB418, MEMORY[0x1E6968FB0]);
          sub_1CF9E6758();
          (*(v66 - 8))(v11, v4);
          v69 += v70;
          --v65;
        }

        while (v65);
      }

      sub_1CF9E7578();
      return;
    case 0x10uLL:
      v37 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v38 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v39 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v40 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x19);
      v41 = 16;
      goto LABEL_56;
    case 0x11uLL:
      v37 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v38 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v39 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v40 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x19);
      v41 = 17;
      goto LABEL_56;
    case 0x12uLL:
      v37 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v38 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v39 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v40 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x19);
      v41 = 18;
      goto LABEL_56;
    case 0x13uLL:
      v37 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v38 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v39 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v40 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x19);
      v41 = 19;
LABEL_56:
      MEMORY[0x1D386A470](v41, v13);
      v102[0] = v37;
      sub_1CEFD0988(v38, v39, v40);
      sub_1CEFF47E0(a1, v38, v39 | (v40 << 8));
      sub_1CF9E7578();
      sub_1CEFD0994(v38, v39, v40);
      goto LABEL_74;
    case 0x14uLL:
      v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
      v76 = swift_projectBox();
      v23 = *(v76 + *(v75 + 48));
      (*(v5 + 16))(v15, v76, v4);
      v24 = 20;
      goto LABEL_41;
    case 0x15uLL:
      v32 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v33 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v34 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v35 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x19);
      v36 = 21;
      goto LABEL_36;
    case 0x16uLL:
      v17 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v16 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v18 = 22;
      goto LABEL_53;
    case 0x17uLL:
      v93 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v54 = 23;
      goto LABEL_59;
    case 0x18uLL:
      v55 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v54 = 24;
      goto LABEL_59;
    case 0x19uLL:
      v53 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v54 = 25;
LABEL_59:
      MEMORY[0x1D386A470](v54, v13);
      sub_1CF9E7578();
      return;
    case 0x1AuLL:
      v97 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v98 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x18);
      MEMORY[0x1D386A470](26, v13);
      sub_1CF9E81F8();
      if (v97)
      {
        v99 = v97;
        sub_1CF9E7578();
      }

      v87 = v98;
      goto LABEL_80;
    case 0x1BuLL:
      v30 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v31 = 27;
      goto LABEL_61;
    case 0x1CuLL:
      v30 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v31 = 28;
      goto LABEL_61;
    case 0x1DuLL:
      v19 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v20 = 30;
      goto LABEL_63;
    case 0x1EuLL:
      v81 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      MEMORY[0x1D386A470](32, v13);
      sub_1CEFD09A0(v81);
      sub_1CF820F68(a1, v81);

      sub_1CEFD0A98(v81);
      return;
    case 0x1FuLL:
      v30 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v31 = 33;
LABEL_61:
      MEMORY[0x1D386A470](v31, v13);
      v87 = v30;
      goto LABEL_80;
    case 0x20uLL:
      v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5210, &unk_1CFA0F4B0);
      v83 = swift_projectBox();
      v84 = *(v83 + *(v82 + 48));
      v85 = *(v83 + *(v82 + 64));
      (*(v5 + 16))(v8, v83, v4);
      MEMORY[0x1D386A470](35);
      sub_1CEFCCCA4(&qword_1EDEAB418, MEMORY[0x1E6968FB0]);
      v86 = v85;
      sub_1CF9E6758();
      sub_1CF9E81F8();
      sub_1CF9E7578();
      (*(v5 + 8))(v8, v4);
      goto LABEL_68;
    case 0x21uLL:
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
      v47 = swift_projectBox();
      v23 = *(v47 + *(v46 + 48));
      (*(v5 + 16))(v15, v47, v4);
      v24 = 36;
      goto LABEL_41;
    case 0x22uLL:
      v32 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v33 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v34 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v35 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x19);
      v36 = 37;
LABEL_36:
      MEMORY[0x1D386A470](v36, v13);
      sub_1CEFD0988(v33, v34, v35);
      sub_1CEFF47E0(a1, v33, v34 | (v35 << 8));
      MEMORY[0x1D386A470](v32);

      sub_1CEFD0994(v33, v34, v35);
      return;
    case 0x23uLL:
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5200, "hx\t");
      v26 = swift_projectBox();
      v27 = *(v26 + *(v25 + 48));
      v28 = *(v26 + *(v25 + 64));
      (*(v5 + 16))(v15, v26, v4);
      v29 = 38;
      goto LABEL_67;
    case 0x24uLL:
      v17 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v16 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v18 = 39;
      goto LABEL_53;
    case 0x25uLL:
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
      v22 = swift_projectBox();
      v23 = *(v22 + *(v21 + 48));
      (*(v5 + 16))(v15, v22, v4);
      v24 = 40;
      goto LABEL_41;
    case 0x26uLL:
      v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20F0, &unk_1CFA0F4A0);
      v96 = swift_projectBox();
      v27 = *(v96 + *(v95 + 48));
      v28 = *(v96 + *(v95 + 64));
      (*(v5 + 16))(v15, v96, v4);
      v29 = 41;
      goto LABEL_67;
    case 0x27uLL:
      v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4AF0, "pN\t");
      v90 = swift_projectBox();
      v27 = *(v90 + *(v89 + 48));
      v28 = *(v90 + *(v89 + 64));
      (*(v5 + 16))(v15, v90, v4);
      v29 = 42;
      goto LABEL_67;
    case 0x28uLL:
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C51F0, qword_1CFA17B30);
      v52 = swift_projectBox();
      v23 = *(v52 + *(v51 + 48));
      (*(v5 + 16))(v15, v52, v4);
      v24 = 43;
      goto LABEL_41;
    case 0x29uLL:
      v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C51F0, qword_1CFA17B30);
      v74 = swift_projectBox();
      v23 = *(v74 + *(v73 + 48));
      (*(v5 + 16))(v15, v74, v4);
      v24 = 44;
      goto LABEL_41;
    case 0x2AuLL:
      v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4B00, &unk_1CFA0F490);
      v92 = swift_projectBox();
      v27 = *(v92 + *(v91 + 48));
      v28 = *(v92 + *(v91 + 64));
      (*(v5 + 16))(v15, v92, v4);
      v29 = 45;
LABEL_67:
      MEMORY[0x1D386A470](v29);
      sub_1CEFCCCA4(&qword_1EDEAB418, MEMORY[0x1E6968FB0]);
      v86 = v28;
      sub_1CF9E6758();
      MEMORY[0x1D386A470](v27);
      sub_1CF9E7578();
      (*(v5 + 8))(v15, v4);
LABEL_68:

      break;
    case 0x2BuLL:
      v19 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v20 = 46;
LABEL_63:
      MEMORY[0x1D386A470](v20, v13);
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v94 = v19;
      sub_1CF9E69C8();

      break;
    case 0x2CuLL:
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
      v43 = swift_projectBox();
      v23 = *(v43 + *(v42 + 48));
      (*(v5 + 16))(v15, v43, v4);
      v24 = 47;
LABEL_41:
      MEMORY[0x1D386A470](v24);
      sub_1CEFCCCA4(&qword_1EDEAB418, MEMORY[0x1E6968FB0]);
      v80 = v23;
      sub_1CF9E6758();
      sub_1CF9E7578();
      (*(v5 + 8))(v15, v4);

      break;
    case 0x2DuLL:
      if (a2 == 0xB000000000000002)
      {
        v87 = 29;
      }

      else if (a2 == 0xB00000000000000ALL)
      {
        v87 = 31;
      }

      else
      {
        v87 = 34;
      }

LABEL_80:
      MEMORY[0x1D386A470](v87);
      break;
    default:
      v17 = *(a2 + 16);
      v16 = *(a2 + 24);
      v18 = 0;
LABEL_53:
      MEMORY[0x1D386A470](v18, v13);
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v88 = v16;
      v102[0] = v17;
      sub_1CF9E69C8();

      sub_1CF9E7578();

LABEL_74:
      v101 = v102[0];

      break;
  }
}

void sub_1CF820F68(uint64_t a1, unint64_t a2)
{
  v4 = sub_1CF9E5A58();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v99 - v10;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = v99 - v14;
  switch((a2 >> 58) & 0x3C | (a2 >> 1) & 3)
  {
    case 1uLL:
      v16 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v17 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v18 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v19 = 1;
      goto LABEL_57;
    case 2uLL:
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F40, qword_1CFA0F4C0);
      v56 = swift_projectBox();
      v57 = *v56;
      v58 = *(v56 + 1);
      v59 = v55[12];
      v60 = *&v56[v55[16]];
      v61 = *&v56[v55[20]];
      (*(v5 + 16))(v15, &v56[v59], v4);
      MEMORY[0x1D386A470](2);

      v62 = v60;
      sub_1CF9E69C8();

      sub_1CEFCCCA4(&qword_1EDEAB418, MEMORY[0x1E6968FB0]);
      sub_1CF9E6758();
      sub_1CF9E7578();
      MEMORY[0x1D386A470](v61);

      (*(v5 + 8))(v15, v4);
      return;
    case 3uLL:
      v16 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v17 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v18 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v19 = 3;
      goto LABEL_57;
    case 4uLL:
      v16 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v17 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v18 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v49 = 4;
      goto LABEL_35;
    case 5uLL:
      v16 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v17 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v18 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v49 = 5;
LABEL_35:
      MEMORY[0x1D386A470](v49, v13);
      if (v18 == 255)
      {
        sub_1CF9E81F8();
      }

      else
      {
        sub_1CF9E81F8();
        if (v18)
        {
LABEL_58:
          if (v18 == 1)
          {
            MEMORY[0x1D386A470](1);
            MEMORY[0x1D386A4A0](v17);
          }

          else
          {
            if (v17)
            {
              v86 = 3;
            }

            else
            {
              v86 = 2;
            }

            MEMORY[0x1D386A470](v86);
          }
        }

        else
        {
LABEL_38:
          MEMORY[0x1D386A470](0);
          sub_1CF9E8208();
        }
      }

      v99[0] = v16;
      sub_1CF9E7578();
LABEL_68:
      v89 = v99[0];

      break;
    case 6uLL:
      v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
      v77 = swift_projectBox();
      v24 = *(v77 + *(v76 + 48));
      (*(v5 + 16))(v15, v77, v4);
      v25 = 6;
      goto LABEL_45;
    case 7uLL:
      v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
      v71 = swift_projectBox();
      v24 = *(v71 + *(v70 + 48));
      (*(v5 + 16))(v15, v71, v4);
      v25 = 7;
      goto LABEL_45;
    case 8uLL:
      v16 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v17 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v18 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v19 = 8;
      goto LABEL_57;
    case 9uLL:
      v16 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v17 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v18 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v19 = 9;
      goto LABEL_57;
    case 0xAuLL:
      v16 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v17 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v18 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v19 = 10;
      goto LABEL_57;
    case 0xBuLL:
      v31 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v32 = 11;
      goto LABEL_75;
    case 0xCuLL:
      v16 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v17 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v18 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v19 = 12;
      goto LABEL_57;
    case 0xDuLL:
      v16 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v17 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v18 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v19 = 13;
      goto LABEL_57;
    case 0xEuLL:
      v45 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v46 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x18);
      MEMORY[0x1D386A470](14, v13);
      sub_1CF6655E8(a1, v45);
      sub_1CF9E7578();
      return;
    case 0xFuLL:
      v63 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v99[0] = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x18);
      MEMORY[0x1D386A470](15, v13);
      MEMORY[0x1D386A470](*(v63 + 16));
      v64 = *(v63 + 16);
      if (v64)
      {
        v67 = *(v5 + 16);
        v65 = v5 + 16;
        v66 = v67;
        v68 = v63 + ((*(v65 + 64) + 32) & ~*(v65 + 64));
        v69 = *(v65 + 56);
        do
        {
          v66(v11, v68, v4);
          sub_1CEFCCCA4(&qword_1EDEAB418, MEMORY[0x1E6968FB0]);
          sub_1CF9E6758();
          (*(v65 - 8))(v11, v4);
          v68 += v69;
          --v64;
        }

        while (v64);
      }

      sub_1CF9E7578();
      return;
    case 0x10uLL:
      v38 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v39 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v40 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v41 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x19);
      v42 = 16;
      goto LABEL_67;
    case 0x11uLL:
      v38 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v39 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v40 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v41 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x19);
      v42 = 17;
      goto LABEL_67;
    case 0x12uLL:
      v38 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v39 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v40 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v41 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x19);
      v42 = 18;
      goto LABEL_67;
    case 0x13uLL:
      v38 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v39 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v40 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v41 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x19);
      v42 = 19;
LABEL_67:
      MEMORY[0x1D386A470](v42, v13);
      v99[0] = v38;
      sub_1CF48034C(v39, v40, v41);
      sub_1CF7BDD8C(a1, v39, v40 | (v41 << 8));
      sub_1CF9E7578();
      sub_1CF1E53F8(v39, v40, v41);
      goto LABEL_68;
    case 0x14uLL:
      v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
      v75 = swift_projectBox();
      v24 = *(v75 + *(v74 + 48));
      (*(v5 + 16))(v15, v75, v4);
      v25 = 20;
      goto LABEL_45;
    case 0x15uLL:
      v33 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v34 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v35 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v36 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x19);
      v37 = 21;
      goto LABEL_40;
    case 0x16uLL:
      v16 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v17 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v18 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v19 = 22;
      goto LABEL_57;
    case 0x17uLL:
      v92 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v53 = 23;
      goto LABEL_73;
    case 0x18uLL:
      v54 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v53 = 24;
      goto LABEL_73;
    case 0x19uLL:
      v52 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v53 = 25;
LABEL_73:
      MEMORY[0x1D386A470](v53, v13);
      sub_1CF9E7578();
      return;
    case 0x1AuLL:
      v96 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v97 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x18);
      MEMORY[0x1D386A470](26, v13);
      sub_1CF9E81F8();
      if (v96)
      {
        v98 = v96;
        sub_1CF9E7578();
      }

      v85 = v97;
      goto LABEL_91;
    case 0x1BuLL:
      v31 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v32 = 27;
      goto LABEL_75;
    case 0x1CuLL:
      v31 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v32 = 28;
      goto LABEL_75;
    case 0x1DuLL:
      v20 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v93 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x18);
      MEMORY[0x1D386A470](30, v13);
      if (!v93)
      {
        goto LABEL_86;
      }

      if (v93 != 1)
      {
        goto LABEL_78;
      }

      goto LABEL_5;
    case 0x1EuLL:
      v79 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      MEMORY[0x1D386A470](32, v13);
      sub_1CEFD09A0(v79);
      sub_1CF82009C(a1, v79);

      sub_1CEFD0A98(v79);
      return;
    case 0x1FuLL:
      v31 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v32 = 33;
LABEL_75:
      MEMORY[0x1D386A470](v32, v13);
      v85 = v31;
      goto LABEL_91;
    case 0x20uLL:
      v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5210, &unk_1CFA0F4B0);
      v81 = swift_projectBox();
      v82 = *(v81 + *(v80 + 48));
      v83 = *(v81 + *(v80 + 64));
      (*(v5 + 16))(v8, v81, v4);
      MEMORY[0x1D386A470](35);
      sub_1CEFCCCA4(&qword_1EDEAB418, MEMORY[0x1E6968FB0]);
      v84 = v83;
      sub_1CF9E6758();
      sub_1CF9E81F8();
      sub_1CF9E7578();
      (*(v5 + 8))(v8, v4);
      goto LABEL_82;
    case 0x21uLL:
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
      v48 = swift_projectBox();
      v24 = *(v48 + *(v47 + 48));
      (*(v5 + 16))(v15, v48, v4);
      v25 = 36;
      goto LABEL_45;
    case 0x22uLL:
      v33 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v34 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v35 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v36 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x19);
      v37 = 37;
LABEL_40:
      MEMORY[0x1D386A470](v37, v13);
      sub_1CF48034C(v34, v35, v36);
      sub_1CF7BDD8C(a1, v34, v35 | (v36 << 8));
      MEMORY[0x1D386A470](v33);

      sub_1CF1E53F8(v34, v35, v36);
      return;
    case 0x23uLL:
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5200, "hx\t");
      v27 = swift_projectBox();
      v28 = *(v27 + *(v26 + 48));
      v29 = *(v27 + *(v26 + 64));
      (*(v5 + 16))(v15, v27, v4);
      v30 = 38;
      goto LABEL_81;
    case 0x24uLL:
      v16 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v17 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v18 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v19 = 39;
      goto LABEL_57;
    case 0x25uLL:
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
      v23 = swift_projectBox();
      v24 = *(v23 + *(v22 + 48));
      (*(v5 + 16))(v15, v23, v4);
      v25 = 40;
      goto LABEL_45;
    case 0x26uLL:
      v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20F0, &unk_1CFA0F4A0);
      v95 = swift_projectBox();
      v28 = *(v95 + *(v94 + 48));
      v29 = *(v95 + *(v94 + 64));
      (*(v5 + 16))(v15, v95, v4);
      v30 = 41;
      goto LABEL_81;
    case 0x27uLL:
      v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4AF0, "pN\t");
      v88 = swift_projectBox();
      v28 = *(v88 + *(v87 + 48));
      v29 = *(v88 + *(v87 + 64));
      (*(v5 + 16))(v15, v88, v4);
      v30 = 42;
      goto LABEL_81;
    case 0x28uLL:
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C51F0, qword_1CFA17B30);
      v51 = swift_projectBox();
      v24 = *(v51 + *(v50 + 48));
      (*(v5 + 16))(v15, v51, v4);
      v25 = 43;
      goto LABEL_45;
    case 0x29uLL:
      v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C51F0, qword_1CFA17B30);
      v73 = swift_projectBox();
      v24 = *(v73 + *(v72 + 48));
      (*(v5 + 16))(v15, v73, v4);
      v25 = 44;
      goto LABEL_45;
    case 0x2AuLL:
      v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4B00, &unk_1CFA0F490);
      v91 = swift_projectBox();
      v28 = *(v91 + *(v90 + 48));
      v29 = *(v91 + *(v90 + 64));
      (*(v5 + 16))(v15, v91, v4);
      v30 = 45;
LABEL_81:
      MEMORY[0x1D386A470](v30);
      sub_1CEFCCCA4(&qword_1EDEAB418, MEMORY[0x1E6968FB0]);
      v84 = v29;
      sub_1CF9E6758();
      MEMORY[0x1D386A470](v28);
      sub_1CF9E7578();
      (*(v5 + 8))(v15, v4);
LABEL_82:

      return;
    case 0x2BuLL:
      v20 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v21 = *((a2 & 0xFFFFFFFFFFFFFF9) + 0x18);
      MEMORY[0x1D386A470](46, v13);
      if (v21)
      {
        if (v21 == 1)
        {
LABEL_5:
          MEMORY[0x1D386A470](1);
          MEMORY[0x1D386A4A0](v20);
        }

        else
        {
LABEL_78:
          if (v20)
          {
            v85 = 3;
          }

          else
          {
            v85 = 2;
          }

LABEL_91:
          MEMORY[0x1D386A470](v85);
        }
      }

      else
      {
LABEL_86:
        MEMORY[0x1D386A470](0);
        sub_1CF9E8208();
      }

      break;
    case 0x2CuLL:
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
      v44 = swift_projectBox();
      v24 = *(v44 + *(v43 + 48));
      (*(v5 + 16))(v15, v44, v4);
      v25 = 47;
LABEL_45:
      MEMORY[0x1D386A470](v25);
      sub_1CEFCCCA4(&qword_1EDEAB418, MEMORY[0x1E6968FB0]);
      v78 = v24;
      sub_1CF9E6758();
      sub_1CF9E7578();
      (*(v5 + 8))(v15, v4);

      return;
    case 0x2DuLL:
      if (a2 == 0xB000000000000002)
      {
        v85 = 29;
      }

      else if (a2 == 0xB00000000000000ALL)
      {
        v85 = 31;
      }

      else
      {
        v85 = 34;
      }

      goto LABEL_91;
    default:
      v16 = *(a2 + 32);
      v17 = *(a2 + 16);
      v18 = *(a2 + 24);
      v19 = 0;
LABEL_57:
      MEMORY[0x1D386A470](v19, v13);
      if (v18)
      {
        goto LABEL_58;
      }

      goto LABEL_38;
  }
}

uint64_t sub_1CF821E78(uint64_t a1, uint64_t a2, char a3)
{
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE710, &qword_1CF9FE5A8);
  v6 = *(*(v97 - 8) + 64);
  MEMORY[0x1EEE9AC00](v97);
  v98 = (&v93 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v104 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v99 = &v93 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFC88, &qword_1CFA053D8);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v93 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v93 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v100 = &v93 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v93 - v26;
  v28 = sub_1CF9E6118();
  v101 = *(v28 - 8);
  v102 = v28;
  v29 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v109 = a2;
  v31 = &v93 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = a3;
  v32 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  sub_1CEFCCBDC(a1, v27, &qword_1EC4BFC88, &qword_1CFA053D8);
  v103 = v13;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    sub_1CEFCCBDC(v27, v23, &qword_1EC4BFC88, &qword_1CFA053D8);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0530, &unk_1CFA05900);
    v37 = a1;
    v38 = v17;
    v39 = v31;
    v40 = v36[12];
    v96 = *&v23[v36[16]];
    v41 = *&v23[v36[20] + 8];

    v42 = &v23[v40];
    v31 = v39;
    v17 = v38;
    a1 = v37;
    sub_1CEFCCC44(v42, &unk_1EC4BE360, &qword_1CF9FE650);
    sub_1CEFCCC44(v23, &unk_1EC4BE360, &qword_1CF9FE650);
    if (!v96)
    {
      goto LABEL_6;
    }

LABEL_5:
    v43 = sub_1CF9E72C8();
    sub_1CEFCCC44(v27, &qword_1EC4BFC88, &qword_1CFA053D8);
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload != 5)
  {
    goto LABEL_5;
  }

  v34 = v100;
  sub_1CEFCCBDC(v27, v100, &qword_1EC4BFC88, &qword_1CFA053D8);
  v35 = *(v34 + 24);

LABEL_6:
  sub_1CEFCCC44(v27, &qword_1EC4BFC88, &qword_1CFA053D8);
  v43 = sub_1CF9E7298();
LABEL_7:
  sub_1CEFCCBDC(a1, v20, &qword_1EC4BFC88, &qword_1CFA053D8);

  v44 = sub_1CF9E6108();
  if (os_log_type_enabled(v44, v43))
  {
    v45 = swift_slowAlloc();
    v95 = v43;
    v46 = v45;
    v96 = swift_slowAlloc();
    v105 = v96;
    *v46 = 136446466;
    v47 = v111[32];

    if (v47)
    {
      v48 = 20550;
    }

    else
    {
      v48 = 21318;
    }

    v49 = sub_1CEFD0DF0(v48, 0xE200000000000000, &v105);

    *(v46 + 4) = v49;
    *(v46 + 12) = 2082;
    v50 = a1;
    v51 = v17;
    v94 = v31;
    v52 = v100;
    sub_1CEFCCBDC(v20, v100, &qword_1EC4BFC88, &qword_1CFA053D8);
    sub_1CEFCCC44(v20, &qword_1EC4BFC88, &qword_1CFA053D8);
    v53 = sub_1CF8DBC58();
    v55 = v54;
    v56 = v52;
    v17 = v51;
    a1 = v50;
    sub_1CEFCCC44(v56, &qword_1EC4BFC88, &qword_1CFA053D8);
    v57 = sub_1CEFD0DF0(v53, v55, &v105);

    *(v46 + 14) = v57;
    _os_log_impl(&dword_1CEFC7000, v44, v95, " ✍️  %{public}s snapshot mutation: %{public}s", v46, 0x16u);
    v58 = v96;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v58, -1, -1);
    MEMORY[0x1D386CDC0](v46, -1, -1);

    (*(v101 + 8))(v94, v102);
  }

  else
  {
    sub_1CEFCCC44(v20, &qword_1EC4BFC88, &qword_1CFA053D8);

    (*(v101 + 8))(v31, v102);
  }

  v59 = v104;
  sub_1CEFCCBDC(a1, v17, &qword_1EC4BFC88, &qword_1CFA053D8);
  v60 = swift_getEnumCaseMultiPayload();
  if (v60 <= 2)
  {
    if (v60)
    {
      if (v60 != 1)
      {
        v83 = *(v17 + 3);

        v84 = v17[8];
        v107 = *v17;
        v108 = v84;
        v85 = &v111[qword_1EDEBBA48];
        result = swift_beginAccess();
        v86 = *(v85 + 2);
        v68 = __CFADD__(v86, 1);
        v87 = v86 + 1;
        if (!v68)
        {
          *(v85 + 2) = v87;
          return (*(*v111 + 520))(&v107, &v109, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17938);
        }

        goto LABEL_32;
      }

      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0530, &unk_1CFA05900);
      v62 = v61[12];
      v63 = *&v17[v61[16]];
      v64 = *&v17[v61[20] + 8];

      sub_1CEFE55D0(&v17[v62], v59, &unk_1EC4BE360, &qword_1CF9FE650);
      v65 = &v111[qword_1EDEBBA48];
      result = swift_beginAccess();
      v67 = *(v65 + 1);
      v68 = __CFADD__(v67, 1);
      v69 = v67 + 1;
      if (!v68)
      {
        *(v65 + 1) = v69;
        v107 = v63;
        (*(*v111 + 512))(v59, &v107, &v109, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17938);
        sub_1CEFCCC44(v59, &unk_1EC4BE360, &qword_1CF9FE650);
        v70 = v17;
        return sub_1CEFCCC44(v70, &unk_1EC4BE360, &qword_1CF9FE650);
      }
    }

    else
    {
      v74 = *&v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4E10, &unk_1CFA05920) + 48) + 8];

      v75 = v99;
      sub_1CEFE55D0(v17, v99, &unk_1EC4BE360, &qword_1CF9FE650);
      v76 = qword_1EDEBBA48;
      v77 = v111;
      result = swift_beginAccess();
      v78 = *&v77[v76];
      v68 = __CFADD__(v78, 1);
      v79 = v78 + 1;
      if (!v68)
      {
        v80 = v111;
        *&v111[v76] = v79;
        (*(*v80 + 504))(v75, &v109, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17938);
        v70 = v75;
        return sub_1CEFCCC44(v70, &unk_1EC4BE360, &qword_1CF9FE650);
      }

      __break(1u);
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    return result;
  }

  if (v60 == 3)
  {
    v81 = *(v17 + 3);

    v82 = v17[8];
    v105 = *v17;
    v106 = v82;
    return (*(*v111 + 528))(&v105, &v109, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17938);
  }

  if (v60 == 4)
  {
    v71 = v17[9];
    v72 = *(v17 + 3);

    v73 = v17[8];
    v105 = *v17;
    v106 = v73;
    return (*(*v111 + 536))(&v105, v71, &v109, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17938);
  }

  v88 = *(v17 + 3);

  v89 = *v17;
  v90 = v17[8];
  result = swift_weakLoadStrong();
  if (!result)
  {
    goto LABEL_33;
  }

  v91 = result;
  v92 = v98;
  *v98 = v89;
  *(v92 + 8) = v90;
  *(v92 + 9) = 0;
  swift_storeEnumTagMultiPayload();
  (*(*v91 + 312))(v92);

  return sub_1CEFCCC44(v92, &qword_1EC4BE710, &qword_1CF9FE5A8);
}

void sub_1CF8228C8(uint64_t a1, uint64_t a2, char a3)
{
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4E20, &unk_1CFA05350);
  v6 = *(*(v90 - 8) + 64);
  MEMORY[0x1EEE9AC00](v90);
  v91 = (&v89 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v96 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v92 = &v89 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFC80, &qword_1CFA053D0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v97 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v89 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v89 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v89 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v89 - v26;
  v28 = sub_1CF9E6118();
  v93 = *(v28 - 8);
  v94 = v28;
  v29 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v89 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = a2;
  v103 = a3;
  v32 = fpfs_current_or_default_log();
  v98 = v31;
  sub_1CF9E6128();
  v99 = a1;
  sub_1CEFCCBDC(a1, v27, &qword_1EC4BFC80, &qword_1CFA053D0);
  v95 = v13;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    sub_1CEFCCBDC(v27, v22, &qword_1EC4BFC80, &qword_1CFA053D0);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4E00, &qword_1CFA18000);
    v36 = v35[12];
    v37 = *&v22[v35[16]];
    v38 = *&v22[v35[20] + 8];

    sub_1CEFCCC44(&v22[v36], &unk_1EC4BFBD0, &unk_1CF9FCBC0);
    sub_1CEFCCC44(v22, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
    if (!v37)
    {
      goto LABEL_6;
    }

LABEL_5:
    v39 = sub_1CF9E72C8();
    sub_1CEFCCC44(v27, &qword_1EC4BFC80, &qword_1CFA053D0);
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload != 5)
  {
    goto LABEL_5;
  }

  sub_1CEFCCBDC(v27, v25, &qword_1EC4BFC80, &qword_1CFA053D0);
  v34 = *(v25 + 2);

LABEL_6:
  sub_1CEFCCC44(v27, &qword_1EC4BFC80, &qword_1CFA053D0);
  v39 = sub_1CF9E7298();
LABEL_7:
  v41 = v99;
  v40 = v100;
  v42 = v98;
  sub_1CEFCCBDC(v99, v19, &qword_1EC4BFC80, &qword_1CFA053D0);

  v43 = sub_1CF9E6108();
  if (os_log_type_enabled(v43, v39))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v101[0] = v45;
    *v44 = 136446466;
    v46 = v40[32];

    if (v46)
    {
      v47 = 20550;
    }

    else
    {
      v47 = 21318;
    }

    v48 = sub_1CEFD0DF0(v47, 0xE200000000000000, v101);

    *(v44 + 4) = v48;
    *(v44 + 12) = 2082;
    sub_1CEFCCBDC(v19, v25, &qword_1EC4BFC80, &qword_1CFA053D0);
    sub_1CEFCCC44(v19, &qword_1EC4BFC80, &qword_1CFA053D0);
    v49 = sub_1CF8DB784();
    v51 = v50;
    v40 = v100;
    sub_1CEFCCC44(v25, &qword_1EC4BFC80, &qword_1CFA053D0);
    v52 = sub_1CEFD0DF0(v49, v51, v101);

    *(v44 + 14) = v52;
    _os_log_impl(&dword_1CEFC7000, v43, v39, " ✍️  %{public}s snapshot mutation: %{public}s", v44, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v45, -1, -1);
    v41 = v99;
    MEMORY[0x1D386CDC0](v44, -1, -1);

    (*(v93 + 8))(v98, v94);
  }

  else
  {
    sub_1CEFCCC44(v19, &qword_1EC4BFC80, &qword_1CFA053D0);

    (*(v93 + 8))(v42, v94);
  }

  v54 = v96;
  v53 = v97;
  sub_1CEFCCBDC(v41, v97, &qword_1EC4BFC80, &qword_1CFA053D0);
  v55 = swift_getEnumCaseMultiPayload();
  if (v55 > 2)
  {
    if (v55 == 3)
    {
      v76 = *(v53 + 16);

      v101[0] = *v53;
      v77 = v101[0];
      (*(*v40 + 528))(v101, &v102, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17938);

      return;
    }

    if (v55 != 4)
    {
      v82 = *(v53 + 16);

      v83 = *v53;
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v85 = Strong;
        v86 = v91;
        *v91 = v83;
        *(v86 + 4) = 0;
        swift_storeEnumTagMultiPayload();
        v87 = *(*v85 + 312);
        v88 = v83;
        v87(v86);

        v65 = &unk_1EC4C4E20;
        v66 = &unk_1CFA05350;
        v64 = v86;
        goto LABEL_29;
      }

LABEL_34:
      __break(1u);
      return;
    }

    v67 = *(v53 + 8);
    v68 = *(v53 + 24);

    v69 = *v53;
    v101[0] = v69;
    (*(*v40 + 536))(v101, v67, &v102, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17938);
    goto LABEL_26;
  }

  if (!v55)
  {
    v70 = *(v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C05B0, &qword_1CFA05980) + 48) + 8);

    v71 = v53;
    v72 = v92;
    sub_1CEFE55D0(v71, v92, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
    v73 = qword_1EDEBBA48;
    swift_beginAccess();
    v74 = *&v40[v73];
    v62 = __CFADD__(v74, 1);
    v75 = v74 + 1;
    if (!v62)
    {
      *&v40[v73] = v75;
      (*(*v40 + 504))(v72, &v102, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17938);
      v65 = &unk_1EC4BFBD0;
      v66 = &unk_1CF9FCBC0;
      v64 = v72;
      goto LABEL_29;
    }

    __break(1u);
    goto LABEL_32;
  }

  if (v55 != 1)
  {
    v78 = *(v53 + 24);

    v69 = *v53;
    v104 = v69;
    v79 = &v40[qword_1EDEBBA48];
    swift_beginAccess();
    v80 = *(v79 + 2);
    v62 = __CFADD__(v80, 1);
    v81 = v80 + 1;
    if (v62)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    *(v79 + 2) = v81;
    (*(*v40 + 520))(&v104, &v102, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17938);
LABEL_26:

    return;
  }

  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4E00, &qword_1CFA18000);
  v57 = v56[12];
  v58 = *(v53 + v56[16]);
  v59 = *(v53 + v56[20] + 8);

  sub_1CEFE55D0(v53 + v57, v54, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v60 = &v40[qword_1EDEBBA48];
  swift_beginAccess();
  v61 = *(v60 + 1);
  v62 = __CFADD__(v61, 1);
  v63 = v61 + 1;
  if (v62)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  *(v60 + 1) = v63;
  v104 = v58;
  (*(*v40 + 512))(v54, &v104, &v102, &type metadata for SQLDatabaseReadWriteAccessor, &off_1F4C17938);
  sub_1CEFCCC44(v54, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v64 = v53;
  v65 = &unk_1EC4BFBD0;
  v66 = &unk_1CF9FCBC0;
LABEL_29:
  sub_1CEFCCC44(v64, v65, v66);
}

uint64_t sub_1CF8232D0(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t (*a5)(unint64_t))
{
  v9 = a1[3];
  v10 = a1[4];
  v11 = __swift_project_boxed_opaque_existential_1(a1, v9);
  v12 = sub_1CEFCCCA4(qword_1EDEA8860, type metadata accessor for VFSFileTree);
  sub_1CF769068(a3, a4, v11, v9, v12, &off_1F4BF8588, v10);
  if (v5)
  {
  }

  return a5(a3);
}

uint64_t sub_1CF8233BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, void, __n128), uint64_t a8)
{
  v33 = a8;
  v34 = a7;
  v43 = a5;
  v41 = a1;
  v42 = a4;
  v40 = sub_1CF9E5CF8();
  v12 = *(*(v40 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v40);
  v39 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a2 + 16);
  v32 = v16;
  if (!v16)
  {
    return v34(v32, 0, v14);
  }

  v17 = (v13 + 8);
  v18 = 270592;
  v35 = *(a3 + 16);
  if ((a6 & 0x8000) != 0)
  {
    v18 = 2367744;
  }

  v36 = v18;
  v37 = v17;
  v19 = (a2 + 40);
  v38 = a6;
  while (1)
  {
    v20 = *v19;
    v21 = *(v19 - 1);
    v22 = v41[4];
    __swift_project_boxed_opaque_existential_1(v41, v41[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1C10, &unk_1CFA0CD80);
    v23 = swift_allocObject();
    *(v23 + 152) = v20;
    *(v23 + 16) = 0u;
    *(v23 + 32) = 0u;
    *(v23 + 48) = 1;
    *(v23 + 56) = 0u;
    *(v23 + 72) = 0u;
    v24 = v43;
    *(v23 + 120) = v42;
    *(v23 + 128) = v24;
    *(v23 + 144) = v21;
    v25 = v39;
    *(v23 + 136) = v38;
    v26 = v36;
    *(v23 + 88) = 0;
    *(v23 + 96) = v26;
    *(v23 + 104) = 0;
    *(v23 + 112) = 0;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v28 = v27;
    result = (*v37)(v25, v40);
    v30 = v28 * 1000000000.0;
    if (COERCE__INT64(fabs(v28 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      break;
    }

    if (v30 <= -9.22337204e18)
    {
      goto LABEL_13;
    }

    if (v30 >= 9.22337204e18)
    {
      goto LABEL_14;
    }

    sub_1CF5215C0(v23);

    if (v8)
    {
      return result;
    }

    v19 += 16;
    if (!--v16)
    {
      return v34(v32, 0, v14);
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

void sub_1CF823630(void *a1, uint64_t a2, void *a3, void (*a4)(void **, uint64_t *, id), uint64_t a5)
{
  v15 = a2;
  v16 = a1;
  if (a3)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v10 = swift_allocObject();
      *(v10 + 2) = a4;
      *(v10 + 3) = a5;
      *(v10 + 4) = a1;
      *(v10 + 5) = a2;
      v11 = a3;

      v12 = a1;
      sub_1CF915D74(a3, 0, sub_1CF903320, v10);
    }

    else
    {
      v13 = a3;
      v14 = FPDomainUnavailableError();
      a4(&v16, &v15, v14);
    }
  }

  else
  {
    (a4)(&v16, &v15);
  }
}

void sub_1CF82377C(uint64_t a1, uint64_t a2, void *a3, void *a4, void (*a5)(void *, void **, id), uint64_t a6)
{
  v18[0] = a1;
  v18[1] = a2;
  v17 = a3;
  if (a4)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v12 = swift_allocObject();
      *(v12 + 2) = a5;
      *(v12 + 3) = a6;
      *(v12 + 4) = a1;
      *(v12 + 5) = a2;
      *(v12 + 6) = a3;
      v13 = a4;
      v14 = a3;

      sub_1CF915D74(a4, 0, sub_1CF8FAD64, v12);
    }

    else
    {
      v15 = a4;
      v16 = FPDomainUnavailableError();
      a5(v18, &v17, v16);
    }
  }

  else
  {
    a5(v18, &v17, 0);
  }
}

void sub_1CF8238D8(void *a1, void *a2, void *a3, void (*a4)(void), uint64_t a5)
{
  v16 = a3;
  v17 = a2;
  if (a1)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v10 = swift_allocObject();
      *(v10 + 2) = a4;
      *(v10 + 3) = a5;
      *(v10 + 4) = a2;
      *(v10 + 5) = a3;
      v11 = a1;
      v12 = a3;

      v13 = a2;
      sub_1CF915D74(a1, 0, sub_1CF90019C, v10);
    }

    else
    {
      v14 = a1;
      v15 = FPDomainUnavailableError();
      a4();
    }
  }

  else
  {
    (a4)(0, &v17, &v16);
  }
}

uint64_t sub_1CF823A1C(void *a1, uint64_t a2, void (*a3)(uint64_t *, void), uint64_t a4)
{
  if ((*(*(a2 + 16) + 82) & 0x20) != 0)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = a3;
    *(v12 + 24) = a4;
    v13 = swift_allocObject();
    v13[2] = a2;
    v13[3] = a3;
    v13[4] = a4;
    swift_retain_n();

    sub_1CF3C3FC0("completeAfterNextFlush(completionHandler:)", 42, 2, 0, 1, 0, sub_1CF8FE350, v12, sub_1CF8FE358, v13);
  }

  else
  {
    v6 = a1[3];
    v7 = a1[4];
    v8 = __swift_project_boxed_opaque_existential_1(a1, v6);
    v14[3] = v6;
    v14[4] = *(v7 + 8);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v14);
    (*(*(v6 - 8) + 16))(boxed_opaque_existential_0, v8, v6);
    a3(v14, 0);
    return sub_1CEFCCC44(v14, &qword_1EC4C0700, &qword_1CFA05B10);
  }
}

uint64_t sub_1CF823BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 16);
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  swift_retain_n();
  sub_1CF7AAF88("completeAfterNextFlush(completionHandler:)", 42, 2, 0, sub_1CF8FE378, v7, sub_1CF8FE380, v8);
}

void sub_1CF823CB0(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(void, void *), uint64_t a6, int a7)
{
  v8 = v7;
  v55 = a7;
  v66 = a6;
  v62 = a5;
  v56 = a3;
  v12 = sub_1CF9E5248();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v59 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1CF9E5268();
  v60 = *(v15 - 8);
  v61 = v15;
  v16 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1CF9E6118();
  v57 = *(v19 - 8);
  v58 = v19;
  v20 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v23 = *(a2 + 32);
  v24 = *(a2 + 40);
  if (*(a2 + 41) == 1)
  {
    v53 = a4;
    v54 = v7;
    v25 = qword_1EDEA34B0;
    v26 = v23;
    if (v25 != -1)
    {
      swift_once();
    }

    v27 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v29 = v28;
    if (v27 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v29 == v30)
    {

      sub_1CEFD0994(v23, v24, 1);
      a4 = v53;
      goto LABEL_14;
    }

    v31 = sub_1CF9E8048();

    sub_1CEFD0994(v23, v24, 1);
    a4 = v53;
    v8 = v54;
    if (v31)
    {
      goto LABEL_14;
    }
  }

  else if (!v23 && v24 == 2)
  {
    goto LABEL_14;
  }

  v32 = a4;
  v33 = a1[3];
  v34 = a1[4];
  v35 = __swift_project_boxed_opaque_existential_1(a1, v33);
  v36 = v56;
  v37 = *(v56 + 16);
  sub_1CF554678(v37, 0, v35, v33, v34, &v63);
  if (v8)
  {
    return;
  }

  if ((v65 & 1) == 0)
  {
    v47 = *(*(v37 + 32) + 16);
    v48 = swift_allocObject();
    v48[2] = v32;
    v48[3] = v36;
    v49 = v66;
    v48[4] = v62;
    v48[5] = v49;
    v50 = *(*v47 + 776);
    v51 = v32;

    v50(&v63, v55 & 1, sub_1CF8FE22C, v48);

    return;
  }

  sub_1CEFD0994(v63, v64, 1);
  a4 = v32;
LABEL_14:
  v38 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v39 = a4;
  v40 = sub_1CF9E6108();
  v41 = sub_1CF9E7298();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *v42 = 138543362;
    *(v42 + 4) = v39;
    *v43 = v39;
    v44 = v39;
    _os_log_impl(&dword_1CEFC7000, v40, v41, "[Pin] Item %{public}@ can't be pinned.", v42, 0xCu);
    sub_1CEFCCC44(v43, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v43, -1, -1);
    MEMORY[0x1D386CDC0](v42, -1, -1);
  }

  (*(v57 + 8))(v22, v58);
  sub_1CF9E5108();
  sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
  sub_1CEFCCCA4(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
  v45 = v61;
  sub_1CF9E57D8();
  v46 = sub_1CF9E50D8();
  (*(v60 + 8))(v18, v45);
  v62(0, v46);
}

void sub_1CF824228(uint64_t a1, void *a2, uint64_t a3, void (*a4)(void, void *), uint64_t a5)
{
  v55 = a4;
  v56 = a5;
  v51 = a3;
  v52 = a2;
  v6 = sub_1CF9E6118();
  v53 = *(v6 - 8);
  v54 = v6;
  v7 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v49 - v11;
  v13 = type metadata accessor for VFSItem(0);
  v50 = *(v13 - 8);
  v14 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v49 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF300, &unk_1CFA006B0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = (&v49 - v21);
  sub_1CEFCCBDC(a1, &v49 - v21, &unk_1EC4BF300, &unk_1CFA006B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = *v22;
    v24 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v25 = v52;
    v26 = v23;
    v27 = sub_1CF9E6108();
    v28 = sub_1CF9E72A8();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138543618;
      *(v29 + 4) = v25;
      *v30 = v25;
      *(v29 + 12) = 2114;
      v31 = v25;
      v32 = v23;
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 14) = v33;
      v30[1] = v33;
      _os_log_impl(&dword_1CEFC7000, v27, v28, "[Pin] Request failed for item %{public}@ with error %{public}@.", v29, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE350, &unk_1CF9FC3B0);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v30, -1, -1);
      MEMORY[0x1D386CDC0](v29, -1, -1);
    }

    (*(v53 + 8))(v9, v54);
    v34 = v23;
    v55(0, v23);
  }

  else
  {
    sub_1CEFDA0C4(v22, v18, type metadata accessor for VFSItem);
    v35 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v36 = v52;
    v37 = sub_1CF9E6108();
    v38 = sub_1CF9E7298();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v39 = 138543362;
      *(v39 + 4) = v36;
      *v40 = v36;
      v41 = v36;
      _os_log_impl(&dword_1CEFC7000, v37, v38, "[Pin] Request Completed for item %{public}@.", v39, 0xCu);
      sub_1CEFCCC44(v40, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v40, -1, -1);
      MEMORY[0x1D386CDC0](v39, -1, -1);
    }

    (*(v53 + 8))(v12, v54);
    v42 = v51;
    v43 = *(*(*(v51 + 16) + 32) + 16);
    sub_1CEFDA34C(v18, v15, type metadata accessor for VFSItem);
    v44 = (*(v50 + 80) + 40) & ~*(v50 + 80);
    v45 = swift_allocObject();
    v46 = v55;
    v47 = v56;
    v45[2] = v42;
    v45[3] = v46;
    v45[4] = v47;
    sub_1CEFDA0C4(v15, v45 + v44, type metadata accessor for VFSItem);
    v48 = *(*v43 + 704);

    v48(sub_1CF8FE238, v45);

    sub_1CEFD5338(v18, type metadata accessor for VFSItem);
  }
}

void sub_1CF8247B4(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v99 = a3;
  v103 = a2;
  v89 = sub_1CF9E63D8();
  v88 = *(v89 - 8);
  v6 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v89);
  v87 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v100 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v105 = &v87 - v12;
  v13 = sub_1CF9E6068();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v94 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v87 - v22;
  v92 = type metadata accessor for Signpost(0);
  v95 = *(v92 - 8);
  v24 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v92);
  v98 = &v87 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v96 = v28;
  v97 = (&v87 - v27);
  MEMORY[0x1EEE9AC00](v29);
  v104 = &v87 - v30;
  v31 = type metadata accessor for VFSItem(0);
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v34 = &v87 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CEFDA34C(a4, v34, type metadata accessor for VFSItem);
  v35 = (*(v32 + 80) + 40) & ~*(v32 + 80);
  v36 = swift_allocObject();
  v37 = v99;
  v36[2] = v103;
  v36[3] = v37;
  v36[4] = a1;
  sub_1CEFDA0C4(v34, v36 + v35, type metadata accessor for VFSItem);
  v38 = *(a1 + 16);
  v39 = swift_allocObject();
  v39[2] = a1;
  v39[3] = sub_1CF8FE2A0;
  v103 = v39;
  v39[4] = v36;
  v40 = swift_allocObject();
  *(v40 + 16) = sub_1CF8FE2A0;
  *(v40 + 24) = v36;
  v102 = v40;
  v41 = *(v38 + qword_1EDEBBC38);
  swift_retain_n();
  v101 = v36;
  swift_retain_n();

  v99 = fpfs_adopt_log();
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v42 = qword_1EDEBBE40;
  (*(v14 + 56))(v23, 1, 1, v13);
  strcpy(&aBlock, "async batch ");
  BYTE13(aBlock) = 0;
  HIWORD(aBlock) = -5120;
  v43 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v43);

  v90 = *(&aBlock + 1);
  v91 = aBlock;
  sub_1CEFCCBDC(v23, v20, &unk_1EC4BED20, &unk_1CFA00700);
  v44 = *(v14 + 48);
  v45 = v44(v20, 1, v13);
  v93 = v23;
  if (v45 == 1)
  {
    v46 = v42;
    v47 = v94;
    sub_1CF9E6048();
    if (v44(v20, 1, v13) != 1)
    {
      sub_1CEFCCC44(v20, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v47 = v94;
    (*(v14 + 32))(v94, v20, v13);
  }

  v48 = v104;
  (*(v14 + 16))(v104, v47, v13);
  v49 = v92;
  *(v48 + *(v92 + 20)) = v42;
  v50 = v48 + *(v49 + 24);
  *v50 = "DB queue wait";
  *(v50 + 8) = 13;
  *(v50 + 16) = 2;
  v51 = v42;
  sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_1CF9FA450;
  *(v52 + 56) = MEMORY[0x1E69E6158];
  *(v52 + 64) = sub_1CEFD51C4();
  v53 = v90;
  *(v52 + 32) = v91;
  *(v52 + 40) = v53;
  sub_1CF9E6028();

  (*(v14 + 8))(v47, v13);
  sub_1CEFCCC44(v93, &unk_1EC4BED20, &unk_1CFA00700);
  v54 = *(v38 + 64);
  v93 = *(v38 + 168);
  v94 = v54;
  v92 = sub_1CF9E6448();
  v91 = *(v92 - 8);
  (*(v91 + 56))(v105, 1, 1, v92);
  v55 = v97;
  sub_1CEFDA34C(v48, v97, type metadata accessor for Signpost);
  v56 = *(v95 + 80);
  v95 = v38;
  v57 = (v56 + 16) & ~v56;
  v58 = (v96 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
  v59 = swift_allocObject();
  v96 = type metadata accessor for Signpost;
  sub_1CEFDA0C4(v55, v59 + v57, type metadata accessor for Signpost);
  v60 = (v59 + v58);
  v97 = sub_1CF8FE348;
  v61 = v102;
  *v60 = sub_1CF8FE348;
  v60[1] = v61;
  v62 = v98;
  sub_1CEFDA34C(v48, v98, type metadata accessor for Signpost);
  v63 = (v58 + 23) & 0xFFFFFFFFFFFFFFF8;
  v64 = (v63 + 15) & 0xFFFFFFFFFFFFFFF8;
  v65 = (v64 + 25) & 0xFFFFFFFFFFFFFFF8;
  v66 = swift_allocObject();
  sub_1CEFDA0C4(v62, v66 + v57, v96);
  v67 = (v66 + v58);
  *v67 = sub_1CF045408;
  v67[1] = 0;
  *(v66 + v63) = v95;
  v68 = v66 + v64;
  v69 = v91;
  *v68 = "completeAfterNextFlush(completionHandler:)";
  *(v68 + 8) = 42;
  *(v68 + 16) = 2;
  v70 = (v66 + v65);
  *v70 = v97;
  v70[1] = v61;
  v71 = (v66 + ((v65 + 23) & 0xFFFFFFFFFFFFFFF8));
  v72 = v92;
  v73 = v103;
  *v71 = sub_1CF8FE328;
  v71[1] = v73;
  v74 = swift_allocObject();
  v74[2] = sub_1CF903308;
  v74[3] = v59;
  v75 = v93;
  v74[4] = v93;
  swift_retain_n();

  v98 = v59;

  v76 = fpfs_current_log();
  v77 = *(v75 + 16);
  v78 = v100;
  sub_1CEFCCBDC(v105, v100, &unk_1EC4BE370, qword_1CFA01B30);
  if ((*(v69 + 48))(v78, 1, v72) == 1)
  {
    sub_1CEFCCC44(v78, &unk_1EC4BE370, qword_1CFA01B30);
    v79 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v80 = v87;
    sub_1CF9E6438();
    (*(v69 + 8))(v78, v72);
    v79 = sub_1CF9E63C8();
    (*(v88 + 8))(v80, v89);
  }

  v81 = swift_allocObject();
  v81[2] = v76;
  v81[3] = sub_1CF4858EC;
  v81[4] = v66;
  v109 = sub_1CF2BA17C;
  v110 = v81;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v107 = sub_1CEFCA444;
  v108 = &block_descriptor_4242;
  v82 = _Block_copy(&aBlock);
  v83 = v76;

  v109 = sub_1CF2BA180;
  v110 = v74;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v107 = sub_1CEFCA444;
  v108 = &block_descriptor_4245;
  v84 = _Block_copy(&aBlock);

  fp_task_tracker_async_and_qos(v77, v94, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v79, v82, v84);
  _Block_release(v84);
  _Block_release(v82);

  sub_1CEFCCC44(v105, &unk_1EC4BE370, qword_1CFA01B30);
  sub_1CEFD5338(v104, type metadata accessor for Signpost);
  v85 = v99;
  v86 = fpfs_adopt_log();
}

uint64_t sub_1CF8253D0(uint64_t a1, uint64_t a2, void (*a3)(void *, void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1CEFCCBDC(a1, &v18, &qword_1EC4C0700, &qword_1CFA05B10);
  if (v19)
  {
    sub_1CF054EA0(&v18, v20);
    v9 = v21;
    v10 = v22;
    v11 = __swift_project_boxed_opaque_existential_1(v20, v21);
    v12 = sub_1CEFE58F0(MEMORY[0x1E69E7CC0]);
    v13 = type metadata accessor for VFSItem(0);
    v14 = sub_1CEFCCCA4(qword_1EDEA8860, type metadata accessor for VFSFileTree);
    v15 = sub_1CEFCCCA4(qword_1EDEABC30, type metadata accessor for VFSItem);
    v16 = sub_1CF76BB00(a6, 64, 0, v12, v11, v13, v9, v14, &off_1F4BF8588, v15, v10);

    a3(v16, 0);

    return __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    sub_1CEFCCC44(&v18, &qword_1EC4C0700, &qword_1CFA05B10);
    return (a3)(0, a2);
  }
}

uint64_t sub_1CF825580(uint64_t result, uint64_t a2, __int16 a3)
{
  v3 = *(result + 16);
  if ((*(v3 + 152) & 1) == 0)
  {
    result = fp_task_tracker_is_cancelled(*(*(v3 + 168) + 16));
    if ((result & 1) == 0 && *(v3 + 152) != 1)
    {
      return sub_1CF80378C(a2, a3 & 0x1FF);
    }
  }

  return result;
}

uint64_t sub_1CF8255E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = 1;
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  v9 = swift_allocObject();
  v10 = a2;
  v11 = v9;
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  if (v10)
  {
    v12 = sub_1CF9E6888();
  }

  else
  {
    v12 = 0;
  }

  v13 = swift_allocObject();
  v13[2] = v7;
  v13[3] = sub_1CF901D9C;
  v13[4] = v11;
  v13[5] = v8;
  aBlock[4] = sub_1CF901DC4;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CF00A468;
  aBlock[3] = &block_descriptor_5865;
  v14 = _Block_copy(aBlock);

  FPPerformWithPersona();
  _Block_release(v14);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  swift_beginAccess();
  v17 = *(v8 + 16);
  if (v17)
  {
    swift_willThrow();
    v18 = v17;
  }

  result = swift_beginAccess();
  if (*(v7 + 16))
  {
    goto LABEL_11;
  }
}

uint64_t sub_1CF825834@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v30 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v34 = &v29 - v9;
  v10 = swift_allocBox();
  v12 = v11;
  v13 = sub_1CF9E5A58();
  v14 = *(v13 - 8);
  v31 = v12;
  v32 = v14;
  (*(v14 + 56))(v12, 1, 1, v13);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  v16 = (v15 + 16);
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  if (a1)
  {
    a1 = sub_1CF9E6888();
  }

  v18 = swift_allocObject();
  v18[2] = v10;
  v18[3] = sub_1CF902CE0;
  v18[4] = v17;
  v18[5] = v15;
  aBlock[4] = sub_1CF9022A4;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CF00A468;
  aBlock[3] = &block_descriptor_6094;
  v19 = _Block_copy(aBlock);

  FPPerformWithPersona();
  _Block_release(v19);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  swift_beginAccess();
  v22 = *v16;
  if (*v16)
  {
    v23 = *v16;
    swift_willThrow();
    v24 = v22;
  }

  v25 = v31;
  swift_beginAccess();
  v26 = v25;
  v27 = v34;
  sub_1CEFCCBDC(v26, v34, &unk_1EC4BE310, qword_1CF9FCBE0);
  v28 = v32;
  result = (*(v32 + 48))(v27, 1, v13);
  if (result == 1)
  {
    goto LABEL_10;
  }

  (*(v28 + 32))(v30, v27, v13);
}

uint64_t sub_1CF825B70@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v28 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED30, &unk_1CFA00710);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v32 = &v27 - v9;
  v10 = swift_allocBox();
  v12 = v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v29 = *(v13 - 8);
  v30 = v12;
  (*(v29 + 56))(v12, 1, 1, v13);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  v15 = (v14 + 16);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  if (a1)
  {
    a1 = sub_1CF9E6888();
  }

  v17 = swift_allocObject();
  v17[2] = v10;
  v17[3] = sub_1CF901D9C;
  v17[4] = v16;
  v17[5] = v14;
  aBlock[4] = sub_1CF901DEC;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CF00A468;
  aBlock[3] = &block_descriptor_5875;
  v18 = _Block_copy(aBlock);

  FPPerformWithPersona();
  _Block_release(v18);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  swift_beginAccess();
  v21 = *v15;
  if (*v15)
  {
    v22 = *v15;
    swift_willThrow();
    v23 = v21;
  }

  v24 = v30;
  swift_beginAccess();
  v25 = v24;
  v26 = v32;
  sub_1CEFCCBDC(v25, v32, &unk_1EC4BED30, &unk_1CFA00710);
  result = (*(v29 + 48))(v26, 1, v13);
  if (result == 1)
  {
    goto LABEL_10;
  }

  sub_1CEFE55D0(v26, v28, &unk_1EC4BE310, qword_1CF9FCBE0);
}

void sub_1CF825EB4(void *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr), uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    swift_willThrow();
    swift_beginAccess();
    v8 = *(a5 + 16);
    *(a5 + 16) = a1;
    v9 = a1;
  }

  else
  {
    a3(&v10);
    swift_beginAccess();
    *(a2 + 16) = 0;
  }
}

void sub_1CF825F68(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v17[-v10];
  v12 = swift_projectBox();
  if (a1)
  {
    swift_willThrow();
    swift_beginAccess();
    v14 = *(a5 + 16);
    *(a5 + 16) = a1;
    v15 = a1;
  }

  else
  {
    v13 = v12;
    a3();
    v16 = sub_1CF9E5A58();
    (*(*(v16 - 8) + 56))(v11, 0, 1, v16);
    swift_beginAccess();
    sub_1CEFDA9E0(v11, v13, &unk_1EC4BE310, qword_1CF9FCBE0);
  }
}

void sub_1CF8260D8(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED30, &unk_1CFA00710);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v17[-v10];
  v12 = swift_projectBox();
  if (a1)
  {
    swift_willThrow();
    swift_beginAccess();
    v14 = *(a5 + 16);
    *(a5 + 16) = a1;
    v15 = a1;
  }

  else
  {
    v13 = v12;
    a3();
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
    (*(*(v16 - 8) + 56))(v11, 0, 1, v16);
    swift_beginAccess();
    sub_1CEFDA9E0(v11, v13, &unk_1EC4BED30, &unk_1CFA00710);
  }
}

uint64_t sub_1CF826254@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v6 = result;
  v8 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v10 = *(a2 + 16);
      v9 = *(a2 + 24);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }
  }

  else
  {
    if (v8)
    {
      v9 = a2 >> 32;
    }

    else
    {
      v9 = BYTE6(a3);
    }

    if (v8)
    {
      v10 = a2;
    }

    else
    {
      v10 = 0;
    }
  }

  v11 = sub_1CF8E3B30(v10, v9, a2, a3);
  if (v6 && v11 < v6)
  {
    if (v8 <= 1)
    {
      if (!v8)
      {
        goto LABEL_28;
      }

      v12 = a2 >> 32;
      goto LABEL_26;
    }

    if (v8 != 2)
    {
      goto LABEL_28;
    }

    v12 = *(a2 + 24);
LABEL_24:
    result = *(a2 + 16);
    goto LABEL_27;
  }

  v12 = sub_1CF8E3BE4(v10, v6, a2, a3);
  result = 0;
  if (v8 > 1)
  {
    if (v8 != 3)
    {
      goto LABEL_24;
    }
  }

  else if (v8)
  {
LABEL_26:
    result = a2;
  }

LABEL_27:
  if (v12 >= result)
  {
LABEL_28:
    v13 = sub_1CF9E5B18();
    v15 = v14;
    result = sub_1CEFE4714(a2, a3);
    *a4 = v13;
    a4[1] = v15;
    return result;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1CF82639C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v6 = 0;
  for (i = (a3 + 40); ; i += 2)
  {
    v8 = *i;
    v11[0] = *(i - 1);
    v11[1] = v8;

    v9 = a1(v11);

    if (v3 || (v9 & 1) != 0)
    {
      break;
    }

    if (v4 == ++v6)
    {
      return 0;
    }
  }

  return v6;
}

uint64_t sub_1CF82645C(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v6 = 0;
  for (i = a3 + 32; ; i += 40)
  {
    v8 = a1(i);
    if (v3 || (v8 & 1) != 0)
    {
      break;
    }

    if (v4 == ++v6)
    {
      return 0;
    }
  }

  return v6;
}

uint64_t sub_1CF8264E0(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v6 = 0;
  for (i = (a3 + 41); ; i += 16)
  {
    v8 = *i;
    v9 = *(i - 1);
    v12 = *(i - 9);
    v13 = v9;
    v14 = v8;
    sub_1CEFD0988(v12, v9, v8);
    v10 = a1(&v12);
    sub_1CEFD0994(v12, v13, v14);
    if (v3 || (v10 & 1) != 0)
    {
      break;
    }

    if (v4 == ++v6)
    {
      return 0;
    }
  }

  return v6;
}

uint64_t sub_1CF8265B4()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_1CF826D4C;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_1CF8266D0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1CF8266D0()
{
  v87 = v0;
  v1 = v0[3];
  if (!v1)
  {
    v11 = v0[10];
    v13 = v0[4];
    v12 = v0[5];
    v14 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v15 = v13;
    sub_1CEFD09A0(v12);
    v16 = sub_1CF9E6108();
    v17 = sub_1CF9E7298();

    sub_1CEFD0A98(v12);
    v18 = os_log_type_enabled(v16, v17);
    v19 = v0[10];
    v21 = v0[6];
    v20 = v0[7];
    if (v18)
    {
      v23 = v0[4];
      v22 = v0[5];
      v83 = v0[10];
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v86 = v26;
      *v24 = 138412546;
      *(v24 + 4) = v23;
      *v25 = v23;
      *(v24 + 12) = 2082;
      v27 = v23;
      v28 = sub_1CEFD11AC(v22);
      v30 = sub_1CEFD0DF0(v28, v29, &v86);

      *(v24 + 14) = v30;
      _os_log_impl(&dword_1CEFC7000, v16, v17, "[patchAppLibrary] No error and no container for: %@ (request: %{public}s)", v24, 0x16u);
      sub_1CEFCCC44(v25, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v25, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x1D386CDC0](v26, -1, -1);
      MEMORY[0x1D386CDC0](v24, -1, -1);

      (*(v20 + 8))(v83, v21);
    }

    else
    {

      (*(v20 + 8))(v19, v21);
    }

    goto LABEL_15;
  }

  v2 = v0[3];
  v3 = sub_1CF0689E4();
  v4 = *MEMORY[0x1E6967258];
  v5 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v7 = v6;
  if (v5 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v7 == v8)
  {
  }

  else
  {
    v10 = sub_1CF9E8048();

    if ((v10 & 1) == 0)
    {

      goto LABEL_15;
    }
  }

  v31 = [objc_opt_self() appLibraryFromContainerItem:v1 documentsItem:v0[4]];
  if (v31)
  {
    v32 = v31;
    if ([v31 isValidAppLibrary])
    {

      goto LABEL_16;
    }

    v58 = v0[8];
    v60 = v0[4];
    v59 = v0[5];
    v61 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v62 = v60;
    sub_1CEFD09A0(v59);
    v63 = v32;
    v64 = sub_1CF9E6108();
    v65 = sub_1CF9E72A8();

    sub_1CEFD0A98(v59);
    v66 = os_log_type_enabled(v64, v65);
    v67 = v0[7];
    v68 = v0[8];
    v69 = v0[6];
    if (v66)
    {
      v79 = v0[5];
      v85 = v0[6];
      v70 = v0[4];
      log = v64;
      v71 = swift_slowAlloc();
      v82 = v68;
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v86 = v73;
      *v71 = 138412802;
      *(v71 + 4) = v63;
      *(v71 + 12) = 2112;
      *(v71 + 14) = v70;
      *v72 = v32;
      v72[1] = v70;
      *(v71 + 22) = 2082;
      v74 = v70;
      v75 = v63;
      v76 = sub_1CEFD11AC(v79);
      v78 = sub_1CEFD0DF0(v76, v77, &v86);

      *(v71 + 24) = v78;
      _os_log_impl(&dword_1CEFC7000, log, v65, "[patchAppLibrary] App library: %@ for: %@ is not valid (request: %{public}s)", v71, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE350, &unk_1CF9FC3B0);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v72, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v73);
      MEMORY[0x1D386CDC0](v73, -1, -1);
      MEMORY[0x1D386CDC0](v71, -1, -1);

      (*(v67 + 8))(v82, v85);
    }

    else
    {

      (*(v67 + 8))(v68, v69);
    }
  }

  else
  {
    v38 = v0[9];
    v40 = v0[4];
    v39 = v0[5];
    v41 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v42 = v40;
    sub_1CEFD09A0(v39);
    v43 = sub_1CF9E6108();
    v44 = sub_1CF9E7298();

    sub_1CEFD0A98(v39);
    v45 = os_log_type_enabled(v43, v44);
    v46 = v0[9];
    v48 = v0[6];
    v47 = v0[7];
    if (v45)
    {
      v84 = v0[9];
      v49 = v0[4];
      v50 = v0[5];
      v81 = v0[6];
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v86 = v53;
      *v51 = 138412546;
      *(v51 + 4) = v49;
      *v52 = v49;
      *(v51 + 12) = 2082;
      v54 = v49;
      v55 = sub_1CEFD11AC(v50);
      v57 = sub_1CEFD0DF0(v55, v56, &v86);

      *(v51 + 14) = v57;
      _os_log_impl(&dword_1CEFC7000, v43, v44, "[patchAppLibrary] App library: cannot build app Library for %@ (request: %{public}s)", v51, 0x16u);
      sub_1CEFCCC44(v52, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v52, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v53);
      MEMORY[0x1D386CDC0](v53, -1, -1);
      MEMORY[0x1D386CDC0](v51, -1, -1);

      (*(v47 + 8))(v84, v81);
    }

    else
    {

      (*(v47 + 8))(v46, v48);
    }
  }

LABEL_15:
  v32 = 0;
LABEL_16:
  v34 = v0[9];
  v33 = v0[10];
  v35 = v0[8];

  v36 = v0[1];

  return v36(v32);
}

uint64_t sub_1CF826D4C()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];

  v5 = v0[1];
  v6 = v0[13];

  return v5();
}

uint64_t sub_1CF826DD4(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v40 = a1;
  v41 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5030, qword_1CFA177B0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v37 - v9;
  v11 = sub_1CF9E6118();
  v43 = *(v11 - 8);
  v44 = v11;
  v12 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v16 = a2;
  sub_1CEFD09A0(a3);
  v42 = v14;
  v17 = sub_1CF9E6108();
  v18 = sub_1CF9E7298();

  v45 = a3;
  sub_1CEFD0A98(a3);
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v38 = v17;
    v20 = v19;
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v46 = v22;
    *v20 = 138543618;
    *(v20 + 4) = v16;
    *v21 = v16;
    *(v20 + 12) = 2082;
    v23 = v16;
    v24 = sub_1CEFD11AC(v45);
    v39 = v10;
    v26 = v7;
    v27 = v6;
    v28 = sub_1CEFD0DF0(v24, v25, &v46);
    v10 = v39;

    *(v20 + 14) = v28;
    v6 = v27;
    v7 = v26;
    v29 = v38;
    _os_log_impl(&dword_1CEFC7000, v38, v18, "[pathAppLibrary] resolving container item for %{public}@ (request: %{public}s", v20, 0x16u);
    sub_1CEFCCC44(v21, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v21, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x1D386CDC0](v22, -1, -1);
    MEMORY[0x1D386CDC0](v20, -1, -1);
  }

  else
  {
  }

  (*(v43 + 8))(v42, v44);
  v30 = [v16 parentItemID];
  (*(v7 + 16))(v10, v40, v6);
  v31 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v32 = swift_allocObject();
  v33 = v45;
  *(v32 + 16) = v16;
  *(v32 + 24) = v33;
  (*(v7 + 32))(v32 + v31, v10, v6);
  v34 = v16;
  sub_1CEFD09A0(v33);
  v35 = sub_1CEFD4E9C([v30 identifier]);
  sub_1CEFD0300(v35, 0, 0, v33, sub_1CF8FE49C, v32);
}

uint64_t sub_1CF82719C()
{
  v1 = v0[7];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v1;
  v3(v1, 1);

  v5 = v0[1];

  return v5();
}

void sub_1CF82722C()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1CF9E6888();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    qword_1EDEA36F0 = v2;
  }

  else
  {
    sub_1CF9E7B68();
    __break(1u);
  }
}

id static NSUserDefaults.fpdUserDefaults.getter()
{
  if (qword_1EDEA36E0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDEA36F0;

  return v1;
}

id sub_1CF82735C(void *a1)
{
  v1 = a1;
  v2 = sub_1CF9E6888();
  v3 = [v1 stringArrayForKey_];

  if (v3)
  {
    sub_1CF9E6D48();

    v1 = v3;
  }

  v4 = sub_1CF9E6D28();

  return v4;
}

uint64_t NSUserDefaults.iCDPackageExtensions.getter()
{
  v1 = sub_1CF9E6888();
  v2 = [v0 stringArrayForKey_];

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_1CF9E6D48();

  return v3;
}

Swift::Double __swiftcall NSUserDefaults.Float64(for:min:max:defaultVal:)(Swift::String a1, Swift::Double min, Swift::Double max, Swift::Double defaultVal)
{
  if (qword_1EDEA36E0 != -1)
  {
    swift_once();
  }

  v7 = qword_1EDEA36F0;
  v8 = sub_1CF9E6888();
  v9 = [v7 integerForKey_];

  result = v9;
  if (v9 > max || result < min || v9 == 0)
  {
    return defaultVal;
  }

  return result;
}

id sub_1CF827580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_1EDEA36E0 != -1)
  {
    swift_once();
  }

  v8 = qword_1EDEA36F0;
  v9 = sub_1CF9E6888();
  v10 = [v8 integerForKey_];

  if (v10 > a4 || v10 < a3 || v10 == 0)
  {
    return a5;
  }

  else
  {
    return v10;
  }
}

uint64_t FPDomainRemovalMode.description.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      return 0x5565766968637261;
    }

    if (a1 == 3)
    {
      return 0xD000000000000015;
    }
  }

  else
  {
    if (!a1)
    {
      return 0x6C4165766F6D6572;
    }

    if (a1 == 1)
    {
      return 0xD000000000000010;
    }
  }

  type metadata accessor for FPDomainRemovalMode(0);
  result = sub_1CF9E80C8();
  __break(1u);
  return result;
}

uint64_t sub_1CF827720()
{
  v1 = [v0 userInfo];
  if (!v1)
  {
    goto LABEL_10;
  }

  v2 = v1;
  v3 = sub_1CF9E6638();

  v4 = *MEMORY[0x1E6967288];
  type metadata accessor for NSFileProviderUserInfoKey(0);
  sub_1CEFCCCA4(&qword_1EDEA3508, type metadata accessor for NSFileProviderUserInfoKey);
  v5 = v4;
  sub_1CF9E7898();
  if (!*(v3 + 16) || (v6 = sub_1CF0271B0(v11), (v7 & 1) == 0))
  {

    sub_1CF027318(v11);
LABEL_10:
    v12 = 0u;
    v13 = 0u;
    goto LABEL_11;
  }

  sub_1CEFD1104(*(v3 + 56) + 32 * v6, &v12);
  sub_1CF027318(v11);

  if (!*(&v13 + 1))
  {
LABEL_11:
    sub_1CEFCCC44(&v12, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    goto LABEL_12;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    v9 = 0;
    v8 = 1;
    return v9 | (v8 << 8);
  }

  v8 = v11[0] > 0xFFuLL;
  if (v11[0] <= 0xFFuLL)
  {
    v9 = v11[0];
  }

  else
  {
    v9 = 0;
  }

  return v9 | (v8 << 8);
}

uint64_t sub_1CF827980()
{
  v1 = v0 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_backingStoreIdentity;
  swift_beginAccess();
  v2 = *v1;
  sub_1CEFF05F4(*v1, *(v1 + 8));
  return v2;
}

uint64_t sub_1CF827A70(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_backingStoreIdentity);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_1CEFE48D8(v6, v7);
}

uint64_t sub_1CF827AD0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_backingStoreIdentity);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *a2 = *v3;
  a2[1] = v5;
  return sub_1CEFF05F4(v4, v5);
}

uint64_t sub_1CF827B28(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_backingStoreIdentity);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  *v4 = v2;
  v4[1] = v3;
  sub_1CEFF05F4(v2, v3);
  return sub_1CEFE48D8(v5, v6);
}

uint64_t sub_1CF827C04()
{
  v1 = sub_1CF9E5CF8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4CE0, &qword_1CFA0FA70);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v27 - v15;
  v17 = type metadata accessor for FPDDomainFPFSBackend.PendingSetState(0);
  v18 = v17[13];
  v19 = v17[5];
  if (sub_1CF9E5CA8())
  {
    goto LABEL_2;
  }

  v28 = v5;
  (*(v2 + 16))(v16, v0 + v18, v1);
  (*(v2 + 56))(v16, 0, 1, v1);
  v21 = v17[6];
  v22 = *(v6 + 48);
  sub_1CEFCCBDC(v16, v9, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  sub_1CEFCCBDC(v0 + v21, &v9[v22], &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v23 = *(v2 + 48);
  if (v23(v9, 1, v1) != 1)
  {
    sub_1CEFCCBDC(v9, v13, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    if (v23(&v9[v22], 1, v1) != 1)
    {
      v24 = v28;
      (*(v2 + 32))(v28, &v9[v22], v1);
      sub_1CEFCCCA4(&qword_1EDEAB3B0, MEMORY[0x1E6969530]);
      v20 = sub_1CF9E6868();
      v25 = *(v2 + 8);
      v25(v24, v1);
      sub_1CEFCCC44(v16, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      v25(v13, v1);
      sub_1CEFCCC44(v9, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      return v20 & 1;
    }

    sub_1CEFCCC44(v16, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    (*(v2 + 8))(v13, v1);
    goto LABEL_8;
  }

  sub_1CEFCCC44(v16, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  if (v23(&v9[v22], 1, v1) != 1)
  {
LABEL_8:
    sub_1CEFCCC44(v9, &qword_1EC4C4CE0, &qword_1CFA0FA70);
    v20 = 0;
    return v20 & 1;
  }

  sub_1CEFCCC44(v9, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
LABEL_2:
  v20 = 1;
  return v20 & 1;
}

uint64_t sub_1CF828074()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1CF9E6298();

  return v1;
}

uint64_t sub_1CF8280E8()
{
  v1 = v0;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x756F437366762020, 0xEF203A737265746ELL);
  v2 = sub_1CF25BB70();
  MEMORY[0x1D3868CC0](v2);

  MEMORY[0x1D3868CC0](0x756F43626420200ALL, 0xEF203A737265746ELL);
  v3 = type metadata accessor for FPDDomainFPFSBackend.Counters(0);
  v4 = v0 + v3[5];
  v5 = sub_1CF5B60F8();
  MEMORY[0x1D3868CC0](v5);

  MEMORY[0x1D3868CC0](0xD000000000000017, 0x80000001CFA5F1C0);
  v6 = v1 + v3[6];
  v7 = sub_1CF6866E8();
  MEMORY[0x1D3868CC0](v7);

  MEMORY[0x1D3868CC0](0xD000000000000017, 0x80000001CFA5F1E0);
  v8 = v1 + v3[7];
  v9 = sub_1CF6866E8();
  MEMORY[0x1D3868CC0](v9);

  return 0;
}

uint64_t sub_1CF828248()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F60, &unk_1CFA00830);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1CF9FC330;
  v3 = swift_allocObject();
  v4 = MEMORY[0x1E69E6158];
  *(v3 + 16) = xmmword_1CF9FA440;
  *(v3 + 56) = v4;
  *(v3 + 32) = 0x746E756F43736676;
  *(v3 + 40) = 0xEB00000000737265;
  v5 = sub_1CF25BD0C();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEE20, &qword_1CFA0CD90);
  *(v3 + 88) = v6;
  *(v3 + 64) = v5;
  *(v2 + 56) = v6;
  *(v2 + 32) = v3;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1CF9FA440;
  *(v7 + 56) = v4;
  *(v7 + 32) = 0xD000000000000012;
  *(v7 + 40) = 0x80000001CFA5DAE0;
  v8 = type metadata accessor for FPDDomainFPFSBackend.Counters(0);
  v9 = v1 + v8[6];
  v10 = sub_1CF68688C();
  *(v7 + 88) = v6;
  *(v7 + 64) = v10;
  *(v2 + 88) = v6;
  *(v2 + 64) = v7;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1CF9FA440;
  *(v11 + 56) = v4;
  *(v11 + 32) = 0xD000000000000012;
  *(v11 + 40) = 0x80000001CFA5DB00;
  v12 = v1 + v8[7];
  v13 = sub_1CF68688C();
  *(v11 + 88) = v6;
  *(v11 + 64) = v13;
  *(v2 + 120) = v6;
  *(v2 + 96) = v11;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1CF9FA440;
  *(v14 + 56) = v4;
  *(v14 + 32) = 0x65746E756F436264;
  *(v14 + 40) = 0xEA00000000007372;
  v15 = v1 + v8[5];
  v16 = sub_1CF5B61E4();
  *(v14 + 88) = v6;
  *(v14 + 64) = v16;
  *(v2 + 152) = v6;
  *(v2 + 128) = v14;
  return v2;
}

uint64_t sub_1CF828454(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5138, &qword_1CFA18340);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v14 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF902760();
  sub_1CF9E82A8();
  v18 = 0;
  type metadata accessor for VFSCounters(0);
  sub_1CEFCCCA4(&qword_1EC4C5140, type metadata accessor for VFSCounters);
  sub_1CF9E7F08();
  if (!v1)
  {
    v9 = type metadata accessor for FPDDomainFPFSBackend.Counters(0);
    v10 = v9[5];
    v17 = 1;
    type metadata accessor for DBCounters();
    sub_1CEFCCCA4(&qword_1EC4C5148, type metadata accessor for DBCounters);
    sub_1CF9E7F08();
    v11 = v9[6];
    v16 = 2;
    type metadata accessor for SnapshotCounters();
    sub_1CEFCCCA4(&qword_1EC4C5150, type metadata accessor for SnapshotCounters);
    sub_1CF9E7F08();
    v12 = v9[7];
    v15 = 3;
    sub_1CF9E7F08();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1CF828708@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v32 = type metadata accessor for SnapshotCounters();
  v3 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32);
  v30 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v31 = &v29 - v6;
  v33 = type metadata accessor for DBCounters();
  v7 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for VFSCounters(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v34 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5110, &qword_1CFA18338);
  v35 = *(v37 - 8);
  v13 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v15 = &v29 - v14;
  v16 = type metadata accessor for FPDDomainFPFSBackend.Counters(0);
  v17 = *(*(v16 - 1) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF902760();
  v36 = v15;
  v21 = v38;
  sub_1CF9E8298();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = v19;
  v42 = 0;
  sub_1CEFCCCA4(&qword_1EC4C5120, type metadata accessor for VFSCounters);
  v23 = v34;
  sub_1CF9E7D88();
  sub_1CEFDA0C4(v23, v22, type metadata accessor for VFSCounters);
  v41 = 1;
  sub_1CEFCCCA4(&qword_1EC4C5128, type metadata accessor for DBCounters);
  sub_1CF9E7D88();
  sub_1CEFDA0C4(v9, v22 + v16[5], type metadata accessor for DBCounters);
  v40 = 2;
  v24 = sub_1CEFCCCA4(&qword_1EC4C5130, type metadata accessor for SnapshotCounters);
  v25 = v31;
  v38 = v24;
  sub_1CF9E7D88();
  sub_1CEFDA0C4(v25, v22 + v16[6], type metadata accessor for SnapshotCounters);
  v39 = 3;
  v27 = v30;
  v28 = v36;
  sub_1CF9E7D88();
  (*(v35 + 8))(v28, v37);
  sub_1CEFDA0C4(v27, v22 + v16[7], type metadata accessor for SnapshotCounters);
  sub_1CEFDA34C(v22, v29, type metadata accessor for FPDDomainFPFSBackend.Counters);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1CEFD5338(v22, type metadata accessor for FPDDomainFPFSBackend.Counters);
}

unint64_t sub_1CF828CE8()
{
  v1 = 0x746E756F43736676;
  *v0;
  if (*v0)
  {
    v1 = 0x65746E756F436264;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_1CF828D78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CF8EAF78(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CF828DA0(uint64_t a1)
{
  v2 = sub_1CF902760();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF828DDC(uint64_t a1)
{
  v2 = sub_1CF902760();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CF828E4C()
{
  if (os_variant_has_internal_content())
  {
    v1 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v2 = sub_1CF9E6888();
    v3 = [v1 initWithSuiteName_];

    if (v3)
    {
      v4 = sub_1CF9E6888();
      v5 = [v3 BOOLForKey_];

      if (v5)
      {
        goto LABEL_8;
      }
    }
  }

  if (FPFeatureFlagEbihilIsEnabled() && ((Strong = swift_unknownObjectWeakLoadStrong()) == 0 || (v7 = Strong, v8 = [Strong volume], v7, LOBYTE(v7) = objc_msgSend(v8, sel_isDefaultVolumeForCurrentPersona), v8, (v7 & 1) == 0)))
  {
LABEL_8:
    v9 = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_userAllowedDBDrop) ^ 1;
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

char *FPDDomainFPFSBackend.init(domain:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C49F8, &qword_1CFA17AF8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v134 = &v124 - v5;
  v137 = sub_1CF9E7318();
  v159 = *(v137 - 8);
  v6 = *(v159 + 64);
  MEMORY[0x1EEE9AC00](v137);
  v158 = &v124 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v138 = &v124 - v9;
  v136 = sub_1CF9E6448();
  v157 = *(v136 - 8);
  v10 = *(v157 + 64);
  MEMORY[0x1EEE9AC00](v136);
  v156 = &v124 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v135 = &v124 - v13;
  v14 = sub_1CF9E7388();
  v154 = *(v14 - 8);
  v155 = v14;
  v15 = *(v154 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v153 = &v124 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = sub_1CF9E7488();
  v17 = *(*(v152 - 8) + 64);
  MEMORY[0x1EEE9AC00](v152);
  v150 = (&v124 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_unknownObjectWeakInit();
  v19 = &v1[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend___cachedURLs];
  *v19 = 0;
  v19[8] = -1;
  *&v1[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend___fpfs] = 0;
  *&v1[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_backingStoreIdentity] = xmmword_1CF9F4E20;
  *&v1[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_startStatus] = 0xF000000000000007;
  *&v1[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_itemsChangedSource] = 0;
  *&v1[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_enumerationAnchorChangedSource] = 0;
  v20 = OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_runningEnumerator;
  *&v1[v20] = sub_1CF4E3E68(MEMORY[0x1E69E7CC0]);
  *&v1[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_pendingSetSource] = 0;
  v21 = OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_initializationGroup;
  *&v1[v21] = dispatch_group_create();
  v1[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_started] = 0;
  v160 = v1;
  v1[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_invalidated] = 0;
  v22 = OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_observedDefaults;
  if (qword_1EDEA36E0 != -1)
  {
    swift_once();
  }

  v23 = qword_1EDEA36F0;
  v24 = v160;
  *&v160[v22] = qword_1EDEA36F0;
  *&v24[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_observation] = 0;
  *&v24[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_periodicFPCKRunner] = 0;
  v25 = v23;
  IsEnabled = FPFeatureFlagSpaceAttributionIsEnabled();
  v27 = 0;
  if (IsEnabled)
  {
    v27 = [objc_allocWithZone(MEMORY[0x1E69D3980]) init];
  }

  v28 = v160;
  *&v160[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_saPathManager] = v27;
  v29 = &v28[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_pendingSetState];
  v30 = type metadata accessor for FPDDomainFPFSBackend.PendingSetState(0);
  v31 = *(v30 - 8);
  v32 = *(v31 + 56);
  v131 = v29;
  v129 = v30;
  v128 = v32;
  v127 = v31 + 56;
  (v32)(v29, 1, 1);
  *&v28[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_onActivatePendingSetNotification] = 0;
  v33 = OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_pendingSetStateURL;
  v34 = sub_1CF9E5A58();
  v35 = *(*(v34 - 8) + 56);
  v35(&v28[v33], 1, 1, v34);
  v28[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_userAllowedDBDrop] = 0;
  *&v28[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_fpDiagnosticsManager] = 0;
  v28[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_urlsAreInTransientState] = 0;
  v36 = [objc_opt_self() defaultStore];
  v37 = [v36 userPackageExtensions];

  if (!v37)
  {
    sub_1CF9E6D48();
    v37 = sub_1CF9E6D28();
  }

  fpfs_user_package_extension_list_init();

  v38 = v160;
  swift_unknownObjectWeakAssign();
  v39 = [a1 purposeIdentifier];
  v40 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v42 = v41;

  v43 = &v38[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_purposeIdentifier];
  *v43 = v40;
  v43[1] = v42;
  v44 = [a1 log];
  *&v38[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_log] = v44;
  v45 = [a1 providerDomainID];
  *&v38[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_providerDomainID] = v45;
  v46 = v45;
  v47 = [a1 nsDomain];
  *&v38[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_nsDomain] = v47;
  v48 = [a1 provider];
  v49 = [v48 manager];

  v50 = sub_1CF82A840(a1);
  *&v38[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_rtcReporter] = v50;
  v51 = v50;
  v52 = [a1 nsDomain];
  v53 = [v52 personaIdentifier];

  if (v53)
  {
    v151 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v149 = v54;
  }

  else
  {
    v151 = 0;
    v149 = 0;
  }

  v133 = v49;
  v55 = [a1 volume];
  v56 = type metadata accessor for InternalPathsManager();
  v57 = objc_allocWithZone(v56);
  v126 = a1;
  v58 = v57;
  v35(&v57[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_appSupportURL], 1, 1, v34);
  v35(&v58[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_wharfDirectoryURL], 1, 1, v34);
  v35(&v58[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_dbDirectoryURL], 1, 1, v34);
  v35(&v58[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_dbURL], 1, 1, v34);
  v35(&v58[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_temporaryDirectoryURL], 1, 1, v34);
  v35(&v58[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_stateDirectoryURL], 1, 1, v34);
  v35(&v58[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_diagnosticsDirectoryURL], 1, 1, v34);
  *&v58[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_providerDomainID] = v46;
  v59 = &v58[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_personaIdentifier];
  v60 = v149;
  *v59 = v151;
  *(v59 + 1) = v60;
  *&v58[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_extensionManager] = v49;
  *&v58[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_volume] = v55;
  *&v58[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_rtcReporter] = v50;
  v165.receiver = v58;
  v165.super_class = v56;
  v61 = v46;
  v132 = v51;
  v62 = objc_msgSendSuper2(&v165, sel_init);
  *&v160[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_pathsManager] = v62;
  v130 = v61;
  v63 = [v61 fp_obfuscatedProviderDomainID];
  v64 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v66 = v65;

  v163 = v64;
  v164 = v66;
  MEMORY[0x1D3868CC0](8250, 0xE200000000000000);
  v68 = v163;
  v67 = v164;
  v149 = sub_1CEFD57E0(0, &unk_1EDEAB5C0, 0x1E69E9638);
  v163 = 0;
  v164 = 0xE000000000000000;
  sub_1CF9E7948();

  v163 = v68;
  v164 = v67;
  v139 = v68;
  MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA5B480);
  v163 = MEMORY[0x1E69E7CC0];
  sub_1CEFCCCA4(&unk_1EDEAB5D0, MEMORY[0x1E69E8110]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEE60, &qword_1CFA00870);
  v147 = MEMORY[0x1E69E6328];
  sub_1CEFCCCEC(&unk_1EDEAB640, &qword_1EC4BEE60, &qword_1CFA00870);
  sub_1CF9E77B8();
  LODWORD(v152) = *MEMORY[0x1E69E8098];
  v69 = v154 + 104;
  v151 = *(v154 + 104);
  v151(v153);
  v154 = v69;
  *&v160[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_queue] = sub_1CF9E7498();
  v144 = sub_1CEFD57E0(0, &qword_1EDEAED70, 0x1E69E9610);
  v163 = v68;
  v164 = v67;
  v142 = v67;

  MEMORY[0x1D3868CC0](0x70757472617473, 0xE700000000000000);
  v149 = v163;
  v145 = v164;
  v70 = v135;
  sub_1CF9E63F8();
  v163 = MEMORY[0x1E69E7CC0];
  v148 = sub_1CEFCCCA4(&qword_1EDEAED80, MEMORY[0x1E69E8030]);
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF500, &unk_1CF9FE770);
  v143 = sub_1CEFCCCEC(&qword_1EDEAEDA0, &unk_1EC4BF500, &unk_1CF9FE770);
  v71 = v138;
  v72 = v137;
  sub_1CF9E77B8();
  v73 = v157;
  v140 = *(v157 + 16);
  v147 = v157 + 16;
  v74 = v136;
  v140(v156, v70, v136);
  v75 = v159;
  v150 = *(v159 + 16);
  v146 = v159 + 16;
  v76 = v71;
  v150(v158, v71, v72);
  (v151)(v153, v152, v155);
  v77 = sub_1CF9E73B8();
  v78 = *(v75 + 8);
  v159 = v75 + 8;
  v149 = v78;
  v78(v71, v72);
  v79 = *(v73 + 8);
  v157 = v73 + 8;
  v145 = v79;
  v80 = v70;
  v79(v70, v74);
  v81 = v160;
  *&v160[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_startupQueue] = v77;
  v163 = 0;
  v164 = 0xE000000000000000;
  sub_1CF9E7948();
  v82 = v142;

  v83 = v139;
  v163 = v139;
  v164 = v82;
  MEMORY[0x1D3868CC0](0xD000000000000013, 0x80000001CFA5B4A0);
  v125 = v163;
  v124 = v164;
  sub_1CF9E63F8();
  v163 = MEMORY[0x1E69E7CC0];
  sub_1CF9E77B8();
  v140(v156, v80, v74);
  v150(v158, v76, v72);
  (v151)(v153, v152, v155);
  v84 = sub_1CF9E73B8();
  v149(v76, v72);
  v145(v80, v74);
  *&v81[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_workingSetChangedQueue] = v84;
  v163 = v83;
  v164 = v142;

  MEMORY[0x1D3868CC0](0x6168632D6D657469, 0xEC0000006465676ELL);
  v125 = v163;
  v124 = v164;
  sub_1CF9E63F8();
  v163 = MEMORY[0x1E69E7CC0];
  sub_1CF9E77B8();
  v85 = v74;
  v86 = v140;
  v140(v156, v80, v74);
  v87 = v76;
  v150(v158, v76, v72);
  (v151)(v153, v152, v155);
  v88 = sub_1CF9E73B8();
  v149(v76, v72);
  v145(v80, v85);
  *&v160[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_itemChangedQueue] = v88;
  v163 = 0;
  v164 = 0xE000000000000000;
  sub_1CF9E7948();
  v89 = v142;

  v90 = v139;
  v163 = v139;
  v164 = v89;
  MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA5B4C0);
  v125 = v163;
  v124 = v164;
  sub_1CF9E63F8();
  v163 = MEMORY[0x1E69E7CC0];
  sub_1CF9E77B8();
  v86(v156, v80, v85);
  v150(v158, v87, v72);
  v91 = v155;
  (v151)(v153, v152, v155);
  v92 = sub_1CF9E73B8();
  v149(v87, v72);
  v145(v80, v85);
  *&v160[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_pendingSetWatchingQueue] = v92;
  v163 = v90;
  v164 = v142;

  MEMORY[0x1D3868CC0](1886221668, 0xE400000000000000);
  v125 = v163;
  v124 = v164;
  sub_1CF9E63F8();
  v163 = MEMORY[0x1E69E7CC0];
  sub_1CF9E77B8();
  v93 = v85;
  v140(v156, v80, v85);
  v150(v158, v87, v72);
  v94 = v153;
  (v151)(v153, v152, v91);
  v95 = v94;
  v96 = sub_1CF9E73B8();
  v149(v87, v72);
  v145(v80, v85);
  *&v160[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_dumpQueue] = v96;
  v97 = v134;
  v128(v134, 1, 1, v129);
  v98 = v131;
  swift_beginAccess();
  sub_1CEFDA9E0(v97, v98, &qword_1EC4C49F8, &qword_1CFA17AF8);
  swift_endAccess();
  v163 = 0;
  v164 = 0xE000000000000000;
  sub_1CF9E7948();

  v163 = v139;
  v164 = v142;
  MEMORY[0x1D3868CC0](0xD00000000000001CLL, 0x80000001CFA5B4E0);
  sub_1CF9E63F8();
  v163 = MEMORY[0x1E69E7CC0];
  sub_1CF9E77B8();
  v140(v156, v80, v93);
  v150(v158, v87, v72);
  (v151)(v95, v152, v155);
  v99 = sub_1CF9E73B8();
  v149(v87, v72);
  v145(v80, v93);
  v100 = v160;
  v101 = &v160[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_errorGenerationRecord];
  *v101 = xmmword_1CFA17AB0;
  *(v101 + 2) = v99;
  swift_beginAccess();
  v162 = 0;
  sub_1CF9E6268();
  swift_endAccess();
  if (qword_1EDEA6EF0 != -1)
  {
    swift_once();
  }

  v102 = type metadata accessor for FPDDomainFPFSBackend(0);
  v161.receiver = v100;
  v161.super_class = v102;
  v103 = objc_msgSendSuper2(&v161, sel_init);
  v104 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v105 = *&v103[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_providerDomainID];
  v106 = v103;
  v160 = v105;
  v107 = v126;
  v108 = [v126 nsDomain];
  v109 = [v108 personaIdentifier];

  if (v109)
  {
    v110 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v112 = v111;
  }

  else
  {
    v110 = 0;
    v112 = 0;
  }

  v113 = [v107 nsDomain];
  v114 = [v113 userInfo];

  v115 = v107;
  if (v114)
  {
    v116 = sub_1CF9E6638();
  }

  else
  {
    v116 = 0;
  }

  v117 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v118 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v119 = swift_allocObject();
  swift_unknownObjectWeakInit();

  type metadata accessor for PeriodicFPCK();
  v120 = swift_allocObject();
  *(v120 + 80) = xmmword_1CFA17AC0;
  *(v120 + 104) = 2;
  *(v120 + 112) = sub_1CF045408;
  *(v120 + 64) = v110;
  *(v120 + 72) = v112;
  v121 = v160;
  *(v120 + 16) = 0;
  *(v120 + 24) = v121;
  *(v120 + 32) = v116;
  *(v120 + 40) = 1;
  *(v120 + 144) = sub_1CF8E4E58;
  *(v120 + 152) = v117;
  *(v120 + 96) = 0;
  *(v120 + 48) = sub_1CF8E4E60;
  *(v120 + 56) = v118;
  *(v120 + 120) = 0;
  *(v120 + 128) = sub_1CF8E4E50;
  *(v120 + 136) = v104;
  *(v120 + 160) = sub_1CF8E4E68;
  *(v120 + 168) = v119;

  v122 = *&v106[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_periodicFPCKRunner];
  *&v106[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_periodicFPCKRunner] = v120;

  sub_1CF82C388();
  sub_1CF82CDEC();
  dispatch_group_enter(*&v106[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_initializationGroup]);

  return v106;
}

id sub_1CF82A840(void *a1)
{
  v2 = [a1 provider];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = [objc_opt_self() defaultManager];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4CD0, &unk_1CFA17EB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CF9FC3C0;
  v6 = *MEMORY[0x1E699C720];
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v7 = MEMORY[0x1E69E6158];
  sub_1CF9E7898();
  v8 = [v3 identifier];
  v9 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v11 = v10;

  *(inited + 96) = v7;
  *(inited + 72) = v9;
  *(inited + 80) = v11;
  v12 = *MEMORY[0x1E699C728];
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  sub_1CF9E7898();
  v13 = [v3 bundleVersion];
  v14 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v16 = v15;

  *(inited + 168) = v7;
  *(inited + 144) = v14;
  *(inited + 152) = v16;
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  sub_1CF9E7898();
  v17 = [a1 volume];
  LODWORD(v7) = [v17 role];

  *(inited + 240) = MEMORY[0x1E69E7668];
  *(inited + 216) = v7;
  sub_1CF4E0E00(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0600, &unk_1CF9FE790);
  swift_arrayDestroy();
  v18 = sub_1CF9E6618();

  v19 = [v4 sessionWithCommonProperties_];

  return v19;
}

uint64_t sub_1CF82AAC4(void *a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = swift_allocObject();
    *(v4 + 16) = a1;
    v5 = a1;
    sub_1CEFD4024("init(domain:)", 13, 2, nullsub_1, 0, sub_1CF9034D0, v4);
  }

  return result;
}

uint64_t sub_1CF82AB8C()
{
  v0 = sub_1CF9E6118();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v6 = *(Strong + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_fpDiagnosticsManager), v7 = Strong, , v7, (result = v6) == 0))
  {
    v9 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v10 = sub_1CF9E6108();
    v11 = sub_1CF9E7288();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1CEFC7000, v10, v11, "Unable to return DiagnosticsManager for FPCK, was nil", v12, 2u);
      MEMORY[0x1D386CDC0](v12, -1, -1);
    }

    (*(v1 + 8))(v4, v0);
    return 0;
  }

  return result;
}

uint64_t sub_1CF82AD1C(uint64_t a1)
{
  v2 = sub_1CF9E5A58();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v6 = Strong;
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v19 = v7;
  v20 = (v7 + 16);
  v8 = *&v6[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_providerDomainID];
  v9 = dispatch_group_create();
  dispatch_group_enter(v9);
  v10 = swift_allocObject();
  *(v10 + 2) = v8;
  *(v10 + 3) = v7;
  *(v10 + 4) = v9;
  (*(v3 + 16))(&v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v12 = swift_allocObject();
  (*(v3 + 32))(v12 + v11, &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  v13 = (v12 + ((v4 + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v13 = sub_1CF902558;
  v13[1] = v10;
  v14 = v8;

  v15 = v9;
  sub_1CF8EB0F8("copyDatabase(to:completionHandler:)", 35, 2, sub_1CF903304, v12, v6, sub_1CF902558, v10);

  sub_1CF9E72F8();

  v16 = v20;
  swift_beginAccess();
  v17 = *v16;

  return v17;
}

void sub_1CF82AFA0(void *a1, void *a2, uint64_t a3, NSObject *a4)
{
  v8 = sub_1CF9E6118();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v13 = a1;
    v14 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v15 = a1;
    v16 = a2;
    v17 = sub_1CF9E6108();
    v18 = sub_1CF9E72A8();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v34 = v8;
      v20 = v19;
      v21 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v35 = v32;
      *v20 = 136315394;
      v22 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v24 = sub_1CEFD0DF0(v22, v23, &v35);
      v33 = v9;
      v25 = a3;
      v26 = a4;
      v27 = v24;

      *(v20 + 4) = v27;
      a4 = v26;
      a3 = v25;
      *(v20 + 12) = 2112;
      v28 = a1;
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 14) = v29;
      *v21 = v29;
      _os_log_impl(&dword_1CEFC7000, v17, v18, "Unable to capture database for Periodic FPCK on %s: %@", v20, 0x16u);
      sub_1CEFCCC44(v21, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v21, -1, -1);
      v30 = v32;
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x1D386CDC0](v30, -1, -1);
      MEMORY[0x1D386CDC0](v20, -1, -1);

      (*(v33 + 8))(v12, v34);
    }

    else
    {

      (*(v9 + 8))(v12, v8);
    }

    v31 = 0;
  }

  else
  {
    v31 = 1;
  }

  swift_beginAccess();
  *(a3 + 16) = v31;
  dispatch_group_leave(a4);
}

uint64_t sub_1CF82B254(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = swift_allocObject();
    *(v4 + 16) = a1;

    sub_1CEFD4024("init(domain:)", 13, 2, nullsub_1, 0, sub_1CF90233C, v4);
  }

  return result;
}

void sub_1CF82B320(uint64_t a1, uint64_t a2)
{
  v98 = sub_1CF9E63D8();
  v97 = *(v98 - 8);
  v4 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v98);
  v96 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v108 = &v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v115 = &v95 - v10;
  v11 = sub_1CF9E6068();
  v106 = *(v11 - 8);
  v12 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v102 = (&v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v112 = &v95 - v19;
  v101 = type metadata accessor for Signpost(0);
  v103 = *(v101 - 8);
  v20 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v101);
  v107 = &v95 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v104 = v24;
  v105 = (&v95 - v23);
  MEMORY[0x1EEE9AC00](v25);
  v114 = &v95 - v26;
  v27 = sub_1CF9E5CF8();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v95 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = swift_allocObject();
  v33 = MEMORY[0x1E69E7CD0];
  v113 = v32;
  *(v32 + 16) = MEMORY[0x1E69E7CD0];
  v34 = (v32 + 16);
  v35 = *(a2 + 16);
  if (v35)
  {
    v36 = (a2 + 41);
    do
    {
      if ((*v36 & 1) == 0)
      {
        sub_1CF6E9500(&aBlock, *(v36 - 9), *(v36 - 1));
      }

      v36 += 16;
      --v35;
    }

    while (v35);
    v33 = *v34;
  }

  v37 = *(v33 + 16);
  if (v37)
  {
    v99 = v27;
    v100 = a1;
    v109 = v17;
    v110 = v11;
    v111 = sub_1CF1F8A70(v37, 0);
    v38 = sub_1CF1FA4E8(&aBlock, v111 + 32, v37, v33);

    sub_1CEFCB59C();
    if (v38 != v37)
    {
      __break(1u);
      return;
    }

    v17 = v109;
    v11 = v110;
    a1 = v100;
    v27 = v99;
  }

  else
  {
    v111 = MEMORY[0x1E69E7CC0];
  }

  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v40 = v39;
  (*(v28 + 8))(v31, v27);
  v41 = v40 * 1000000000.0;
  if (COERCE__INT64(fabs(v40 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v41 <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v41 >= 9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v42 = v41;
  v43 = *(a1 + 16);
  v44 = swift_allocObject();
  v45 = v113;
  *(v44 + 16) = sub_1CF902344;
  *(v44 + 24) = v45;
  v46 = swift_allocObject();
  *(v46 + 2) = v111;
  *(v46 + 3) = a1;
  *(v46 + 4) = 0;
  *(v46 + 5) = v42;
  *(v46 + 6) = 0x2000000000000;
  *(v46 + 7) = sub_1CF902344;
  v111 = v46;
  *(v46 + 8) = v45;
  v47 = swift_allocObject();
  *(v47 + 16) = sub_1CEFF9D98;
  *(v47 + 24) = v44;
  v110 = v47;
  v109 = v43;
  v48 = *&v43[qword_1EDEBBC38];
  swift_retain_n();

  v100 = v44;

  v99 = fpfs_adopt_log();
  if (qword_1EDEAE980 != -1)
  {
LABEL_26:
    swift_once();
  }

  v49 = qword_1EDEBBE40;
  v50 = v106;
  v51 = v112;
  (*(v106 + 56))(v112, 1, 1, v11);
  strcpy(&aBlock, "async batch ");
  BYTE13(aBlock) = 0;
  HIWORD(aBlock) = -5120;
  v52 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v52);

  v53 = aBlock;
  sub_1CEFCCBDC(v51, v17, &unk_1EC4BED20, &unk_1CFA00700);
  v54 = *(v50 + 48);
  v55 = v54(v17, 1, v11);
  v56 = v102;
  if (v55 == 1)
  {
    v57 = v49;
    sub_1CF9E6048();
    if (v54(v17, 1, v11) != 1)
    {
      sub_1CEFCCC44(v17, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v50 + 32))(v102, v17, v11);
  }

  v58 = v114;
  (*(v50 + 16))(v114, v56, v11);
  v59 = v101;
  *(v58 + *(v101 + 20)) = v49;
  v60 = v58 + *(v59 + 24);
  *v60 = "DB queue wait";
  *(v60 + 8) = 13;
  *(v60 + 16) = 2;
  v61 = v49;
  sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_1CF9FA450;
  *(v62 + 56) = MEMORY[0x1E69E6158];
  *(v62 + 64) = sub_1CEFD51C4();
  *(v62 + 32) = v53;
  sub_1CF9E6028();

  (*(v50 + 8))(v56, v11);
  sub_1CEFCCC44(v112, &unk_1EC4BED20, &unk_1CFA00700);
  v106 = *(v109 + 21);
  v112 = *(v109 + 8);
  v101 = sub_1CF9E6448();
  v102 = *(v101 - 8);
  v102[7](v115, 1, 1, v101);
  v63 = v105;
  sub_1CEFDA34C(v58, v105, type metadata accessor for Signpost);
  v64 = (*(v103 + 80) + 16) & ~*(v103 + 80);
  v65 = (v104 + v64 + 7) & 0xFFFFFFFFFFFFFFF8;
  v66 = swift_allocObject();
  v104 = type metadata accessor for Signpost;
  sub_1CEFDA0C4(v63, v66 + v64, type metadata accessor for Signpost);
  v67 = (v66 + v65);
  v105 = sub_1CF8FCB08;
  v68 = v110;
  *v67 = sub_1CF8FCB08;
  v67[1] = v68;
  v69 = v107;
  sub_1CEFDA34C(v58, v107, type metadata accessor for Signpost);
  v70 = (v65 + 23) & 0xFFFFFFFFFFFFFFF8;
  v71 = (v70 + 15) & 0xFFFFFFFFFFFFFFF8;
  v72 = (v71 + 25) & 0xFFFFFFFFFFFFFFF8;
  v73 = (v72 + 23) & 0xFFFFFFFFFFFFFFF8;
  v74 = swift_allocObject();
  sub_1CEFDA0C4(v69, v74 + v64, v104);
  v75 = (v74 + v65);
  *v75 = sub_1CF045408;
  v75[1] = 0;
  *(v74 + v70) = v109;
  v76 = v74 + v71;
  v77 = v101;
  *v76 = "reingestItems(vfsItemsIDs:order:reason:_:)";
  *(v76 + 8) = 42;
  *(v76 + 16) = 2;
  v78 = (v74 + v72);
  v79 = v102;
  *v78 = v105;
  v78[1] = v68;
  v80 = (v74 + v73);
  v81 = v111;
  *v80 = sub_1CF902350;
  v80[1] = v81;
  v82 = swift_allocObject();
  v82[2] = sub_1CF903308;
  v82[3] = v66;
  v83 = v106;
  v82[4] = v106;
  swift_retain_n();

  v109 = v66;

  v84 = fpfs_current_log();
  v85 = *(v83 + 16);
  v86 = v108;
  sub_1CEFCCBDC(v115, v108, &unk_1EC4BE370, qword_1CFA01B30);
  if ((v79[6])(v86, 1, v77) == 1)
  {
    sub_1CEFCCC44(v86, &unk_1EC4BE370, qword_1CFA01B30);
    v87 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v88 = v96;
    sub_1CF9E6438();
    (v79[1])(v86, v77);
    v87 = sub_1CF9E63C8();
    (*(v97 + 8))(v88, v98);
  }

  v89 = swift_allocObject();
  v89[2] = v84;
  v89[3] = sub_1CF4858EC;
  v89[4] = v74;
  v119 = sub_1CF2BA17C;
  v120 = v89;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v117 = sub_1CEFCA444;
  v118 = &block_descriptor_6172;
  v90 = _Block_copy(&aBlock);
  v91 = v84;

  v119 = sub_1CF2BA180;
  v120 = v82;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v117 = sub_1CEFCA444;
  v118 = &block_descriptor_6175;
  v92 = _Block_copy(&aBlock);

  fp_task_tracker_async_and_qos(v85, v112, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v87, v90, v92);
  _Block_release(v92);
  _Block_release(v90);

  sub_1CEFCCC44(v115, &unk_1EC4BE370, qword_1CFA01B30);
  sub_1CEFD5338(v114, type metadata accessor for Signpost);
  v93 = v99;
  v94 = fpfs_adopt_log();
}

uint64_t sub_1CF82C0A0(void *a1, char a2, uint64_t a3)
{
  v6 = sub_1CF9E6118();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27 - v12;
  if (a2)
  {
    v14 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v15 = a1;
    v16 = sub_1CF9E6108();
    v17 = sub_1CF9E72A8();
    sub_1CF0BA6EC(a1, 1);
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      v20 = sub_1CF9E57E8();
      v21 = [v20 fp_prettyDescription];

      *(v18 + 4) = v21;
      *v19 = v21;
      _os_log_impl(&dword_1CEFC7000, v16, v17, "Encountered %@ while ingesting items from FPCK", v18, 0xCu);
      sub_1CEFCCC44(v19, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v19, -1, -1);
      MEMORY[0x1D386CDC0](v18, -1, -1);
    }
  }

  else
  {
    v22 = fpfs_current_or_default_log();
    sub_1CF9E6128();

    v23 = sub_1CF9E6108();
    v24 = sub_1CF9E7288();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 134218240;
      *(v25 + 4) = a1;
      *(v25 + 12) = 2048;
      swift_beginAccess();
      *(v25 + 14) = *(*(a3 + 16) + 16);

      _os_log_impl(&dword_1CEFC7000, v23, v24, "Reingested %ld items (expected: %ld)", v25, 0x16u);
      MEMORY[0x1D386CDC0](v25, -1, -1);
    }

    else
    {
    }

    v13 = v10;
  }

  return (*(v7 + 8))(v13, v6);
}

void sub_1CF82C388()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong nsDomain];

    sub_1CF827720();
  }

  v5 = objc_sync_enter(v1);
  if (v5)
  {
    MEMORY[0x1EEE9AC00](v5);
    v25 = v1;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v24, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v6 = *&v1[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend___fpfs];

  v7 = objc_sync_exit(v1);
  if (v7)
  {
    MEMORY[0x1EEE9AC00](v7);
    v25 = v1;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v24, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  if (v6 || (v8 = *&v1[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_startupQueue], MEMORY[0x1EEE9AC00](v7), v25 = v1, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4C28, &qword_1CFA17E60), sub_1CF9E7398(), (v6 = aBlock[0]) != 0))
  {
    v9 = *(*(*(v6 + 16) + 32) + 16);
    type metadata accessor for VFSFileTree(0);
    swift_dynamicCastClassUnconditional();

    v10 = sub_1CF25F010();
    if (v10)
    {
      v11 = v10;
      sub_1CF25F0C0(v10, 0, 1);
    }

    v12 = *(*(*(v6 + 16) + 40) + 16);
    type metadata accessor for FPFileTree();
    swift_dynamicCastClassUnconditional();

    v13 = sub_1CF2D08E4();
    if (v13)
    {
      v14 = v13;
      sub_1CF2D0978(v13, 0, 1);
    }
  }

  v15 = *&v1[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_rtcReporter];
  if (v15)
  {
    v16 = swift_unknownObjectWeakLoadStrong();
    if (v16)
    {
      v17 = v16;
      v18 = v15;
      v19 = [v17 provider];

      if (v19)
      {
        v20 = [v19 identifier];
        v21 = swift_allocObject();
        *(v21 + 16) = v20;
        *(v21 + 24) = 0;
        *(v21 + 32) = 1;
        aBlock[4] = sub_1CF902330;
        aBlock[5] = v21;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1CF2D00A0;
        aBlock[3] = &block_descriptor_6138;
        v22 = _Block_copy(aBlock);
        v23 = v20;

        [v18 setModifyDecoratedPayloadHook:v22 forCategory:1];
        _Block_release(v22);

        v18 = v23;
      }
    }
  }
}

uint64_t sub_1CF82C834()
{
  v2 = sub_1CEFCE64C();
  sub_1CF5170A8(*&v0[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_pathsManager], v0, &v2);
  return v2;
}

uint64_t sub_1CF82C8A8(uint64_t a1, size_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v25 - v6;
  v8 = sub_1CF9E5A58();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v25 - v14;
  v16 = *(a1 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_pathsManager);
  v17 = OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_wharfDirectoryURL;
  swift_beginAccess();
  sub_1CEFCCBDC(v16 + v17, v7, &unk_1EC4BE310, qword_1CF9FCBE0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1CEFCCC44(v7, &unk_1EC4BE310, qword_1CF9FCBE0);
  }

  v25 = *(v9 + 32);
  v25(v15, v7, v8);
  sub_1CF9E5968();
  v19 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v19;
  if (isUniquelyReferenced_nonNull_native)
  {
    v21 = a2;
  }

  else
  {
    v19 = sub_1CF1F68F8(0, v19[2] + 1, 1, v19);
    v21 = a2;
    *a2 = v19;
  }

  v23 = v19[2];
  v22 = v19[3];
  if (v23 >= v22 >> 1)
  {
    *v21 = sub_1CF1F68F8(v22 > 1, v23 + 1, 1, v19);
  }

  (*(v9 + 8))(v15, v8);
  v24 = *v21;
  *(v24 + 16) = v23 + 1;
  return (v25)(v24 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v23, v12, v8);
}

void *sub_1CF82CC30()
{
  v1 = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend___fpfs);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 16);

  v4 = objc_sync_enter(v3);
  if (v4)
  {
    MEMORY[0x1EEE9AC00](v4);
    v10 = v2;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v9, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v5 = *&v2[qword_1EDEADB30];
  v6 = v5;
  v7 = objc_sync_exit(v2);
  if (v7)
  {
    MEMORY[0x1EEE9AC00](v7);
    v10 = v2;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v9, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  return v5;
}

uint64_t sub_1CF82CD4C()
{
  v1 = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_errorGenerationRecord + 16);
  sub_1CF9E7398();

  return v3;
}

uint64_t sub_1CF82CDC8()
{
  v1 = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend___fpfs);
  if (v1)
  {
    return *(*(v1 + 16) + 90);
  }

  else
  {
    return 0;
  }
}