void sub_1CF7B42D8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, void (*a5)(void, void, void, void, id), uint64_t a6, uint64_t a7)
{
  v106 = a5;
  v107 = a6;
  v104 = a3;
  v105 = a4;
  v109 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v102 = *(v9 - 8);
  v103 = v9;
  v10 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v99 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v101 = &v99 - v15;
  v16 = type metadata accessor for VFSItem(0);
  v17 = *(v16 - 1);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v100 = &v99 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v108 = &v99 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = (&v99 - v24);
  sub_1CEFCCBDC(a1, &v99 - v24, &unk_1EC4BF310, &unk_1CF9FDB30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26 = *v25;
    swift_beginAccess();
    v28 = *(a7 + 16);
    v27 = *(a7 + 24);

    v29 = v26;
    v28(v26, 0, 0, 1);
  }

  else if ((*(v17 + 48))(v25, 1, v16) == 1)
  {
    swift_beginAccess();
    v31 = *(a7 + 16);
    v30 = *(a7 + 24);
    v32 = *(v109 + OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_vfsItemID);
    v33 = *(v109 + OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_vfsItemID + 8);
    v34 = swift_allocObject();
    *(v34 + 16) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
    sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
    v35 = swift_allocError();
    v37 = v36;
    sub_1CF1B8150();
    v38 = swift_allocError();
    *v39 = v34;
    *&v129 = v32;
    BYTE8(v129) = v33;
    v130 = 0u;
    v131 = 0u;
    v132 = 0u;
    v133 = 0u;
    v134 = 0u;
    v135 = 0u;
    v136 = v38;
    sub_1CF2A8DE0(&v129);
    *v37 = v129;
    v40 = v130;
    v41 = v131;
    v42 = v133;
    *(v37 + 48) = v132;
    *(v37 + 64) = v42;
    *(v37 + 16) = v40;
    *(v37 + 32) = v41;
    v43 = v134;
    v44 = v135;
    v45 = v136;
    *(v37 + 128) = v137;
    *(v37 + 96) = v44;
    *(v37 + 112) = v45;
    *(v37 + 80) = v43;

    v31(v35, 0, 0, 1);

    sub_1CEFCCC44(v25, &unk_1EC4BEC00, &unk_1CF9FCB60);
  }

  else
  {
    v99 = type metadata accessor for VFSItem;
    v46 = v108;
    sub_1CEFDA05C(v25, v108, type metadata accessor for VFSItem);
    v47 = v46;
    v48 = v100;
    sub_1CEFDA2E4(v47, v100, type metadata accessor for VFSItem);
    v49 = v103;
    v50 = &v12[v103[13]];
    sub_1CEFE528C(&v129);
    v51 = v142;
    *(v50 + 12) = v141;
    *(v50 + 13) = v51;
    *(v50 + 14) = v143;
    *(v50 + 30) = v144;
    v52 = v138;
    *(v50 + 8) = v137;
    *(v50 + 9) = v52;
    v53 = v140;
    *(v50 + 10) = v139;
    *(v50 + 11) = v53;
    v54 = v134;
    *(v50 + 4) = v133;
    *(v50 + 5) = v54;
    v55 = v136;
    *(v50 + 6) = v135;
    *(v50 + 7) = v55;
    v56 = v130;
    *v50 = v129;
    *(v50 + 1) = v56;
    v57 = v132;
    *(v50 + 2) = v131;
    *(v50 + 3) = v57;
    v58 = &v12[v49[14]];
    *v58 = 0u;
    *(v58 + 1) = 0u;
    v58[32] = 1;
    v59 = &v12[v49[15]];
    *v59 = 0;
    *(v59 + 1) = 0;
    v59[16] = 1;
    v60 = *v48;
    v61 = *(v48 + 8);
    *v12 = *v48;
    v12[8] = v61;
    v62 = *(v48 + 16);
    v63 = *(v48 + 24);
    if (v61 == 2 && v60 < 2)
    {
      v64 = 2;
    }

    else
    {
      v60 = *(v48 + 16);
      v64 = *(v48 + 24);
    }

    *(v12 + 2) = v60;
    v12[24] = v64;
    v65 = v48 + v16[9];
    v66 = *v65;
    v67 = *(v65 + 8);
    v68 = *(v65 + 16);
    LOBYTE(v65) = *(v65 + 24);
    v69 = *(v48 + 32);
    v70 = *(v48 + 40);
    *(v12 + 4) = v66;
    *(v12 + 10) = v67;
    *(v12 + 6) = v68;
    v12[56] = v65;
    v12[80] = v63;
    *(v12 + 11) = v69;
    *(v12 + 12) = v70;
    *(v12 + 8) = 0;
    *(v12 + 9) = v62;
    *(v12 + 13) = 0;
    *(v12 + 14) = 0;
    *(v12 + 15) = 0;
    *(v12 + 16) = v69;
    *(v12 + 17) = v70;
    sub_1CEFDA2E4(v48 + v16[7], &v12[v49[12]], type metadata accessor for ItemMetadata);
    v71 = v48 + v16[8];
    v72 = *(v71 + 208);
    v123 = *(v71 + 192);
    v124 = v72;
    v125 = *(v71 + 224);
    v126 = *(v71 + 240);
    v73 = *(v71 + 144);
    v119 = *(v71 + 128);
    v120 = v73;
    v74 = *(v71 + 176);
    v121 = *(v71 + 160);
    v122 = v74;
    v75 = *(v71 + 80);
    v115 = *(v71 + 64);
    v116 = v75;
    v76 = *(v71 + 112);
    v117 = *(v71 + 96);
    v118 = v76;
    v77 = *(v71 + 48);
    v113 = *(v71 + 32);
    v114 = v77;
    v78 = *(v71 + 16);
    v111 = *v71;
    v112 = v78;
    v79 = *(v50 + 13);
    v127[12] = *(v50 + 12);
    v127[13] = v79;
    v127[14] = *(v50 + 14);
    v128 = *(v50 + 30);
    v80 = *(v50 + 9);
    v127[8] = *(v50 + 8);
    v127[9] = v80;
    v81 = *(v50 + 11);
    v127[10] = *(v50 + 10);
    v127[11] = v81;
    v82 = *(v50 + 5);
    v127[4] = *(v50 + 4);
    v127[5] = v82;
    v83 = *(v50 + 7);
    v127[6] = *(v50 + 6);
    v127[7] = v83;
    v84 = *(v50 + 1);
    v127[0] = *v50;
    v127[1] = v84;
    v85 = *(v50 + 3);
    v127[2] = *(v50 + 2);
    v127[3] = v85;
    swift_bridgeObjectRetain_n();
    sub_1CEFCCBDC(&v111, &v110, &qword_1EC4BECF0, &unk_1CF9FEEB0);
    sub_1CEFCCC44(v127, &qword_1EC4BECF0, &unk_1CF9FEEB0);
    v86 = v124;
    *(v50 + 12) = v123;
    *(v50 + 13) = v86;
    *(v50 + 14) = v125;
    *(v50 + 30) = v126;
    v87 = v120;
    *(v50 + 8) = v119;
    *(v50 + 9) = v87;
    v88 = v122;
    *(v50 + 10) = v121;
    *(v50 + 11) = v88;
    v89 = v116;
    *(v50 + 4) = v115;
    *(v50 + 5) = v89;
    v90 = v118;
    *(v50 + 6) = v117;
    *(v50 + 7) = v90;
    v91 = v112;
    *v50 = v111;
    *(v50 + 1) = v91;
    v92 = v114;
    *(v50 + 2) = v113;
    *(v50 + 3) = v92;
    *&v12[v49[16]] = 0;
    v93 = sub_1CF252CF4();
    v95 = v94;
    v96 = v99;
    sub_1CEFD52D8(v48, v99);
    v97 = &v12[v49[17]];
    *v97 = v93;
    v97[1] = v95;
    v98 = v101;
    sub_1CEFE55D0(v12, v101, &unk_1EC4BE360, &qword_1CF9FE650);
    (*(v102 + 56))(v98, 0, 1, v49);
    sub_1CF7B0EC8(v104, v98, v105, v106, v107);
    sub_1CEFCCC44(v98, &qword_1EC4C1B40, &unk_1CF9FCB70);
    sub_1CEFD52D8(v108, v96);
  }
}

void sub_1CF7B4D00(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(unint64_t, unint64_t, void, void *, void, unint64_t))
{
  v40[5] = *MEMORY[0x1E69E9840];
  v8 = *a1;
  if (*(a1 + 32))
  {
    v10 = a3;
    sub_1CEFCCBDC(a1, v40, &qword_1EC4C48D8, &qword_1CFA16E68);
    v11 = sub_1CF9E6108();
    v12 = sub_1CF9E72A8();

    sub_1CEFCCC44(a1, &qword_1EC4C48D8, &qword_1CFA16E68);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412802;
      *(v13 + 4) = v10;
      *v14 = v10;
      *(v13 + 12) = 2048;
      *(v13 + 14) = a4;
      *(v13 + 22) = 2112;
      swift_getErrorValue();
      v15 = v10;
      v16 = Error.prettyDescription.getter(v39);
      *(v13 + 24) = v16;
      v14[1] = v16;
      _os_log_impl(&dword_1CEFC7000, v11, v12, "📖  %@: enumerating from change %llu failed: %@", v13, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE350, &unk_1CF9FC3B0);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v14, -1, -1);
      MEMORY[0x1D386CDC0](v13, -1, -1);
    }

    a5(MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0], 0, 0, 0, v8);
  }

  else
  {
    v17 = *(a1 + 8);
    v18 = *(a1 + 16);
    v37 = *(a1 + 24);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v19 = a3;
    v20 = sub_1CF9E6108();
    v21 = sub_1CF9E7298();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v40[0] = v24;
      *v22 = 138413570;
      *(v22 + 4) = v19;
      *v23 = v19;
      *(v22 + 12) = 2048;
      *(v22 + 14) = a4;
      *(v22 + 22) = 2048;
      if (v8 >> 62)
      {
        v25 = sub_1CF9E7818();
      }

      else
      {
        v25 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v26 = v19;

      *(v22 + 24) = v25;

      *(v22 + 32) = 2048;
      if (v17 >> 62)
      {
        v27 = sub_1CF9E7818();
      }

      else
      {
        v27 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v22 + 34) = v27;

      *(v22 + 42) = 2080;
      if (v18)
      {
        v28 = 0x6F6D20736168202CLL;
      }

      else
      {
        v28 = 0;
      }

      if (v18)
      {
        v29 = 0xEA00000000006572;
      }

      else
      {
        v29 = 0xE000000000000000;
      }

      v30 = sub_1CEFD0DF0(v28, v29, v40);

      *(v22 + 44) = v30;
      *(v22 + 52) = 2048;
      v31 = v37;
      *(v22 + 54) = v37;
      _os_log_impl(&dword_1CEFC7000, v20, v21, "📖  %@: enumerating from change %llu done: %ld updated, %ld deleted%s, next anchor:%llu", v22, 0x3Eu);
      sub_1CEFCCC44(v23, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v23, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x1D386CDC0](v24, -1, -1);
      MEMORY[0x1D386CDC0](v22, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      v31 = v37;
    }

    v40[0] = v31;
    v32 = sub_1CF51FAD8(v40, 8);
    v34 = v33;
    v35 = sub_1CF9E5B48();
    sub_1CEFE4714(v32, v34);
    a5(v8, v17, v18 & 1, v35, 0, 0);
  }

  v36 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1CF7B5198(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5, uint64_t a6, void *a7)
{
  swift_beginAccess();
  v13 = *(a2 + 16);
  v12 = *(a2 + 24);
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = v12;
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v16[2] = sub_1CF7BA994;
  v16[3] = v14;
  v16[4] = v15;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1CF7BA38C;
  *(v17 + 24) = v16;
  swift_beginAccess();
  v18 = *(a2 + 24);
  *(a2 + 16) = sub_1CF7BA994;
  *(a2 + 24) = v17;

  v25 = ~(*(*(a1 + 16) + 80) >> 20) & 2;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1CF7BA994;
  *(v19 + 24) = v17;
  v20 = swift_allocObject();
  v20[2] = a3;
  v20[3] = a4;
  v20[4] = a5;
  v20[5] = a2;
  v20[6] = a1;
  v20[7] = a6;
  v20[8] = a7;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1CF7BA994;
  *(v21 + 24) = v19;
  sub_1CEFE42D4(a3, a4);
  v22 = a5;

  v23 = a7;

  sub_1CF7AAF88("enumerateChanges(fromToken:suggestedBatchSize:reply:)", 53, 2, v25, sub_1CF7BA384, v21, sub_1CF7BA3C8, v20);
}

uint64_t sub_1CF7B5404(void *a1, uint64_t a2, unint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8)
{
  v205 = a5;
  v197 = a7;
  v198 = a8;
  v201 = a6;
  v202 = a1;
  v273 = *MEMORY[0x1E69E9840];
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v207 = *(v203 - 8);
  v11 = *(v207 + 64);
  MEMORY[0x1EEE9AC00](v203);
  v204 = &v182[-v12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v196 = &v182[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v199 = &v182[-v17];
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v182[-v19];
  v21 = OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_previousAnchor;
  v220[0] = *&a4[OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_previousAnchor];
  v22 = sub_1CF51FAD8(v220, 8);
  v24 = v23;
  v25 = sub_1CF9E5B48();
  sub_1CEFE4714(v22, v24);
  v26 = sub_1CF9E5B88();
  v28 = v27;

  LOBYTE(a3) = sub_1CF328660(a2, a3, v26, v28);
  sub_1CEFE4714(v26, v28);
  if ((a3 & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1CF9E6298();

    *&a4[v21] = v220[0];
    sub_1CF7ACED8();
    v38 = v205;
    swift_beginAccess();
    v40 = *(v38 + 16);
    v39 = *(v38 + 24);
    type metadata accessor for NSFileProviderError(0);
    v216[0] = -1002;

    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF7B9A90(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError);
    sub_1CF9E57D8();
    v41 = v217[0];
    v271[0] = v217[0];
    memset(&v271[1], 0, 24);
    v272 = 1;
    v42 = v271;
LABEL_14:
    v40(v42);

    goto LABEL_15;
  }

  v192 = v21;
  v29 = *&a4[OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_vfsItemID];
  v200 = &a4[OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_vfsItemID];
  v30 = a4[OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_vfsItemID + 8];
  v31 = OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_changedItemsByID;
  v32 = 1;
  swift_beginAccess();
  v195 = v31;
  v33 = *&a4[v31];
  v34 = a4;
  if (*(v33 + 16))
  {
    v35 = sub_1CF7BF2C0(v29, v30);
    v36 = v207;
    if (v37)
    {
      sub_1CEFCCBDC(*(v33 + 56) + *(v207 + 72) * v35, v20, &unk_1EC4BE360, &qword_1CF9FE650);
      v32 = 0;
    }

    else
    {
      v32 = 1;
    }

    v43 = v205;
    v44 = v203;
  }

  else
  {
    v43 = v205;
    v44 = v203;
    v36 = v207;
  }

  v193 = *(v36 + 56);
  v194 = v36 + 56;
  v193(v20, v32, 1, v44);
  if ((*(v36 + 48))(v20, 1, v44))
  {
    sub_1CEFCCC44(v20, &qword_1EC4C1B40, &unk_1CF9FCB70);
    v45 = v200;
  }

  else
  {
    v46 = &v20[*(v44 + 48)];
    LOBYTE(v46) = v46[*(type metadata accessor for ItemMetadata() + 64)];
    sub_1CEFCCC44(v20, &qword_1EC4C1B40, &unk_1CF9FCB70);
    v45 = v200;
    if (v46)
    {
LABEL_13:
      swift_beginAccess();
      v40 = *(v43 + 16);
      v48 = *(v43 + 24);
      type metadata accessor for NSFileProviderError(0);
      v216[0] = -1002;

      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF7B9A90(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError);
      sub_1CF9E57D8();
      v41 = v217[0];
      v252[0] = v217[0];
      memset(&v252[1], 0, 24);
      v253 = 1;
      v42 = v252;
      goto LABEL_14;
    }
  }

  v47 = OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_deletedItemsIDs;
  swift_beginAccess();
  if (sub_1CF7DC52C(*v45, *(v45 + 8), *&v34[v47]))
  {
    goto LABEL_13;
  }

  v51 = v195;
  v52 = *&v34[v195];
  v53 = v206;
  if (*(v52 + 16) && (v54 = sub_1CF7BF2C0(*v200, *(v200 + 8)), (v55 & 1) != 0))
  {
    v56 = *(v52 + 56) + *(v36 + 72) * v54;
    v57 = v199;
    sub_1CEFCCBDC(v56, v199, &unk_1EC4BE360, &qword_1CF9FE650);
    v193(v57, 0, 1, v203);
    sub_1CEFCCC44(v57, &qword_1EC4C1B40, &unk_1CF9FCB70);
    v58 = v202[3];
    v59 = v202[4];
    v60 = __swift_project_boxed_opaque_existential_1(v202, v58);
    v61 = *(*(v201 + 16) + 16);
    v62 = *(v200 + 8);
    v218 = *v200;
    v219 = v62;

    sub_1CF68DDB0(&v218, v60, v58, v59, v220);
    if (v53)
    {
LABEL_19:

      goto LABEL_15;
    }

    memcpy(v216, v220, sizeof(v216));
    memcpy(v217, v220, sizeof(v217));
    v98 = sub_1CEFF755C(v217);
    v99 = v205;
    if (v98 == 1)
    {
      v36 = v207;
      v51 = v195;
    }

    else
    {
      sub_1CEFCCC44(v216, &unk_1EC4BFC20, &unk_1CFA0A290);
      v36 = v207;
      v51 = v195;
      if ((v217[2] & 0x10) != 0)
      {
        swift_beginAccess();
        v112 = *(v99 + 16);
        v111 = *(v99 + 24);
        type metadata accessor for NSFileProviderError(0);
        v208 = -1002;

        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF7B9A90(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError);
        sub_1CF9E57D8();
        v113 = v209;
        v269[0] = v209;
        memset(&v269[1], 0, 24);
        v270 = 1;
        v112(v269);

        goto LABEL_19;
      }
    }
  }

  else
  {
    v63 = v199;
    v193(v199, 1, 1, v203);
    sub_1CEFCCC44(v63, &qword_1EC4C1B40, &unk_1CF9FCB70);
  }

  v64 = *(*&v34[v51] + 16);
  v65 = 900;
  if (v64 < 0x384)
  {
    v65 = *(*&v34[v51] + 16);
  }

  v189 = *(*&v34[v51] + 16);
  if (v64 >= v197)
  {
    v64 = v197;
  }

  if (v197 <= 900)
  {
    v66 = v64;
  }

  else
  {
    v66 = v65;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v191 = v66;
  if (Strong)
  {
    v68 = Strong;
    v69 = [Strong indexer];

    if (v69)
    {
      v70 = [v69 needsAuthentication];

      if (v70)
      {
        v71 = 9;
      }

      else
      {
        v71 = 1;
      }
    }

    else
    {
      v71 = 1;
    }

    v66 = v191;
  }

  else
  {
    v71 = 1;
  }

  v72 = *&v34[v195];

  sub_1CF8EAE58(v66, v72, &v221);

  v73 = v34[OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_buildAndFilterAppLibraries];
  v199 = v34;
  if ((v73 & 1) == 0)
  {
    v187 = v71;
    v184 = v47;
    v79 = sub_1CF7ABB18(&v221);
    v80 = v79;
    v186 = v53;
    v206 = *(v79 + 16);
    if (v206)
    {
      v81 = 0;
      v82 = *v200;
      LODWORD(v197) = *(v200 + 8);
      v83 = v197 == 2;
      v34 = (v79 + ((*(v36 + 80) + 32) & ~*(v36 + 80)));
      v84 = v82 == 1 && v197 == 2;
      v188 = v84;
      v190 = v82;
      if (v82)
      {
        v83 = 0;
      }

      v183 = v83;
      KeyPath = &unk_1EC4BE360;
      do
      {
        if (v81 >= *(v80 + 16))
        {
          goto LABEL_156;
        }

        v86 = v204;
        sub_1CEFCCBDC(&v34[*(v36 + 72) * v81], v204, &unk_1EC4BE360, &qword_1CF9FE650);
        v87 = *v86;
        v88 = *(v86 + 8);
        sub_1CEFCCC44(v86, &unk_1EC4BE360, &qword_1CF9FE650);
        if (v88)
        {
          if (v88 == 1)
          {
            if (v197 == 1 && v87 == v190)
            {
              goto LABEL_59;
            }
          }

          else if (v87)
          {
            if (v188)
            {
              goto LABEL_59;
            }
          }

          else if (v183)
          {
            goto LABEL_59;
          }
        }

        else if (!v197 && v87 == v190)
        {
LABEL_59:
          LODWORD(v204) = 0;
          goto LABEL_61;
        }

        ++v81;
        v36 = v207;
      }

      while (v206 != v81);
    }

    v81 = 0;
    LODWORD(v204) = 1;
LABEL_61:
    v185 = v80;
    v90 = v202[3];
    v89 = v202[4];
    v206 = __swift_project_boxed_opaque_existential_1(v202, v90);
    v220[0] = v80;
    v91 = sub_1CEFE58F0(MEMORY[0x1E69E7CC0]);
    v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4890, &qword_1CFA16E38);
    v93 = sub_1CF7B9A90(qword_1EDEA8860, type metadata accessor for VFSFileTree);
    v94 = sub_1CEFCCCEC(&qword_1EDEA37E8, &unk_1EC4C4890, &qword_1CFA16E38);
    v95 = sub_1CEFCCCEC(&qword_1EDEA8550, &unk_1EC4BE360, &qword_1CF9FE650);
    v77 = v186;
    v96 = sub_1CF76CB84(v220, v187, v91, v206, v92, v90, v93, &off_1F4BF8588, v94, v89, v95);
    v80 = v77;
    if (v77)
    {
      v250 = v221;
      v251 = v222;
      sub_1CEFCCC44(&v250, &qword_1EC4C48A0, &unk_1CFA16E40);
      v248 = v223;
      v249 = v224;
      sub_1CEFCCC44(&v248, &qword_1EC4C48A0, &unk_1CFA16E40);
      v214 = v225;
      sub_1CEFCCC44(&v214, &qword_1EC4C48A8, &qword_1CFA180F0);

      goto LABEL_149;
    }

    v97 = v96;

    if (v204)
    {
      v34 = v199;
      v78 = v97;
      goto LABEL_85;
    }

    v100 = v97;
    v150 = (v97 & 0xC000000000000001) == 0;
    v34 = v199;
    KeyPath = v202;
    v190 = v100;
    if (!v150)
    {
      goto LABEL_160;
    }

    if (v81 < *((v100 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v101 = *(v100 + 8 * v81 + 32);
      goto LABEL_71;
    }

    __break(1u);
LABEL_162:
    __break(1u);
LABEL_163:
    __break(1u);
  }

  v74 = v202[3];
  v75 = v202[4];
  v76 = __swift_project_boxed_opaque_existential_1(v202, v74);
  v77 = v53;
  v78 = sub_1CF7D633C(&v221, v201, 0xB000000000000012, v76, v74, v75);
  if (v53)
  {
    v242 = v221;
    v243 = v222;
    sub_1CEFCCC44(&v242, &qword_1EC4C48A0, &unk_1CFA16E40);
    v240 = v223;
    v241 = v224;
    sub_1CEFCCC44(&v240, &qword_1EC4C48A0, &unk_1CFA16E40);
    v212 = v225;
    result = sub_1CEFCCC44(&v212, &qword_1EC4C48A8, &qword_1CFA180F0);
    goto LABEL_15;
  }

  while (2)
  {
    v190 = v78;
    v120 = v191;
    v206 = v77;
    if (v191 < v189)
    {
      v184 = v47;
      v121 = v195;
      v122 = *&v34[v195];
      v123 = -1 << *(v122 + 32);

      v124 = sub_1CF9E77C8();
      v81 = sub_1CF7B6CF4(v124, *(v122 + 36), 0, v120, v122);
      v126 = v125;
      v80 = v127;

      if (v80)
      {
        __break(1u);
LABEL_165:
        result = swift_unexpectedError();
        __break(1u);
        return result;
      }

      KeyPath = *&v34[v121];
      v128 = *(KeyPath + 9);
      if (v128 != v126)
      {
LABEL_157:
        __break(1u);
LABEL_158:
        __break(1u);
        goto LABEL_159;
      }

      v129 = 1 << *(KeyPath + 32);
      if (v129 < v81)
      {
        goto LABEL_158;
      }

      v264[0] = v81;
      v264[1] = v126;
      v265 = 0;
      v266 = v129;
      v267 = v128;
      v268 = 0;

      sub_1CF7ABFD0(v264, KeyPath, v226);
      v130 = v226[0];
      v131 = v226[1];
      v132 = v227;
      v133 = v228;
      v134 = v229;
      v135 = v230;
      v136 = v231;

      v207 = v130;
      if (sub_1CF7B868C(v130, v131, v132, v133, v134, v135, v136))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C48B0, &unk_1CFA07B70);
        v137 = sub_1CF9E7BE8();
      }

      else
      {
        v137 = MEMORY[0x1E69E7CC8];
      }

      LOBYTE(v217[0]) = v132;
      LOBYTE(v216[0]) = v135;
      v138 = v207;
      v256[0] = v207;
      v256[1] = v131;
      v257 = v132;
      v258 = v133;
      v259 = v134;
      v260 = v135;
      v261 = v136;
      v262 = sub_1CF7B6E24;
      v263 = 0;
      v220[0] = v137;
      sub_1CF0BA900(v207, v131, v132);
      sub_1CF0BA900(v133, v134, v135);

      v139 = v206;
      sub_1CF7B7BD0(v256, 1, v220);
      v206 = v139;
      if (v139)
      {
        goto LABEL_165;
      }

      sub_1CF0663D8(v138, v131, v132);
      sub_1CF0663D8(v133, v134, v135);

      v34 = v199;
      v140 = *&v199[v195];
      *&v199[v195] = v220[0];

      v120 = v191;
      v47 = v184;
    }

    v141 = *&v34[v47];
    v80 = *(v141 + 16);
    v142 = MEMORY[0x1E69E7CC0];
    if (!v80)
    {
      goto LABEL_136;
    }

    v216[0] = MEMORY[0x1E69E7CC0];

    KeyPath = v216;
    sub_1CF9E7A48();
    v143 = -1 << *(v141 + 32);
    v204 = v141 + 56;
    v144 = sub_1CF9E77C8();
    v81 = 0;
    v203 = *&v198[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_providerDomainID];
    v207 = *(v141 + 36);
    v196 = *MEMORY[0x1E6967280];
    v145 = *MEMORY[0x1E6967258];
    v197 = v141 + 64;
    v198 = v145;
    v200 = v80;
    do
    {
      if (v144 < 0 || v144 >= 1 << *(v141 + 32))
      {
        __break(1u);
LABEL_151:
        __break(1u);
LABEL_152:
        __break(1u);
LABEL_153:
        __break(1u);
LABEL_154:
        __break(1u);
LABEL_155:
        __break(1u);
LABEL_156:
        __break(1u);
        goto LABEL_157;
      }

      v146 = v144 >> 6;
      if ((*(v204 + 8 * (v144 >> 6)) & (1 << v144)) == 0)
      {
        goto LABEL_151;
      }

      if (v207 != *(v141 + 36))
      {
        goto LABEL_152;
      }

      v147 = *(v141 + 48) + 16 * v144;
      v148 = *v147;
      v149 = *(v147 + 8);
      v150 = v149 == 2 && v148 == 0;
      if (v150)
      {
        v152 = v198;
LABEL_116:
        v153 = v152;
        goto LABEL_126;
      }

      if (v149 == 2 && v148 == 1)
      {
        v152 = v196;
        goto LABEL_116;
      }

      v220[0] = 0x2F73662F70665F5FLL;
      v220[1] = 0xE800000000000000;
      if (v149)
      {
        if (v149 != 1)
        {
          if (v148)
          {
            v155 = 0x6873617274;
          }

          else
          {
            v155 = 1953460082;
          }

          if (v148)
          {
            v156 = 0xE500000000000000;
          }

          else
          {
            v156 = 0xE400000000000000;
          }

          goto LABEL_125;
        }

        v217[0] = 0x284449656C6966;
        v217[1] = 0xE700000000000000;
        v215 = v148;
      }

      else
      {
        v217[0] = 0x284449636F64;
        v217[1] = 0xE600000000000000;
        LODWORD(v215) = v148;
      }

      v154 = sub_1CF9E7F98();
      MEMORY[0x1D3868CC0](v154);

      MEMORY[0x1D3868CC0](41, 0xE100000000000000);
      v155 = v217[0];
      v156 = v217[1];
LABEL_125:
      MEMORY[0x1D3868CC0](v155, v156);

      v153 = sub_1CF9E6888();

LABEL_126:
      v157 = objc_allocWithZone(MEMORY[0x1E69673A0]);
      v80 = [v157 initWithProviderDomainID:v203 itemIdentifier:v153];

      sub_1CF9E7A18();
      v34 = *(v216[0] + 16);
      sub_1CF9E7A58();
      sub_1CF9E7A68();
      sub_1CF9E7A28();
      KeyPath = (1 << *(v141 + 32));
      if (v144 >= KeyPath)
      {
        goto LABEL_153;
      }

      v158 = *(v204 + 8 * v146);
      if ((v158 & (1 << v144)) == 0)
      {
        goto LABEL_154;
      }

      if (v207 != *(v141 + 36))
      {
        goto LABEL_155;
      }

      v159 = v158 & (-2 << (v144 & 0x3F));
      if (v159)
      {
        KeyPath = (__clz(__rbit64(v159)) | v144 & 0x7FFFFFFFFFFFFFC0);
        v34 = v199;
      }

      else
      {
        v80 = v146 << 6;
        v160 = v146 + 1;
        v161 = (v197 + 8 * v146);
        v34 = v199;
        while (v160 < (KeyPath + 63) >> 6)
        {
          v163 = *v161++;
          v162 = v163;
          v80 += 64;
          ++v160;
          if (v163)
          {
            sub_1CF0663D8(v144, v207, 0);
            KeyPath = (__clz(__rbit64(v162)) + v80);
            goto LABEL_98;
          }
        }

        sub_1CF0663D8(v144, v207, 0);
      }

LABEL_98:
      ++v81;
      v144 = KeyPath;
    }

    while (v81 != v200);

    v142 = v216[0];
    v120 = v191;
LABEL_136:
    v164 = v206;
    if (v120 >= v189)
    {
      goto LABEL_144;
    }

    v80 = *&v34[v192];
    KeyPath = swift_getKeyPath();
    v81 = swift_getKeyPath();
    sub_1CF9E6298();

    if (!v220[0])
    {
LABEL_159:
      __break(1u);
LABEL_160:
      v101 = MEMORY[0x1D3869C30](v81);
LABEL_71:
      v206 = v101;
      v102 = KeyPath[3];
      v103 = KeyPath[4];
      v104 = __swift_project_boxed_opaque_existential_1(KeyPath, v102);
      v105 = *&v34[v195];
      if (*(v105 + 16) && (v106 = sub_1CF7BF2C0(*v200, *(v200 + 8)), (v107 & 1) != 0))
      {
        v108 = *(v105 + 56) + *(v207 + 72) * v106;
        v109 = v196;
        sub_1CEFCCBDC(v108, v196, &unk_1EC4BE360, &qword_1CF9FE650);
        v110 = 0;
      }

      else
      {
        v110 = 1;
        v109 = v196;
      }

      v193(v109, v110, 1, v203);
      v114 = v206;
      v77 = v80;
      sub_1CF7D5E20(v206, v109, v201, v104, v102, v103);
      v116 = v109;
      if (v80)
      {
        sub_1CEFCCC44(v109, &qword_1EC4C1B40, &unk_1CF9FCB70);

        v246 = v221;
        v247 = v222;
        sub_1CEFCCC44(&v246, &qword_1EC4C48A0, &unk_1CFA16E40);
        v244 = v223;
        v245 = v224;
        sub_1CEFCCC44(&v244, &qword_1EC4C48A0, &unk_1CFA16E40);
        v213 = v225;
        sub_1CEFCCC44(&v213, &qword_1EC4C48A8, &qword_1CFA180F0);

        goto LABEL_15;
      }

      v117 = v115;
      sub_1CEFCCC44(v116, &qword_1EC4C1B40, &unk_1CF9FCB70);
      v118 = v190;
      if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v118 & 0x8000000000000000) != 0 || (v118 & 0x4000000000000000) != 0)
      {
        v118 = sub_1CF067780(v118);
      }

      if (v81 >= *((v118 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_163;
      }

      v119 = *((v118 & 0xFFFFFFFFFFFFFF8) + 8 * v81 + 0x20);
      *((v118 & 0xFFFFFFFFFFFFFF8) + 8 * v81 + 0x20) = v117;

      v78 = v118;
LABEL_85:
      v47 = v184;
      continue;
    }

    break;
  }

  if (v80 != v220[0] - 1)
  {
    goto LABEL_141;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v165 = sub_1CF9E6288();
  if (*v166 == -1)
  {
    goto LABEL_162;
  }

  ++*v166;
  v165(v220, 0);

LABEL_141:
  v167 = v192;
  v168 = *&v34[v192];
  v169 = __CFADD__(v168, 1);
  v170 = v168 + 1;
  if (v169)
  {
    __break(1u);
LABEL_144:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1CF9E6298();

    v170 = v220[0];
    v167 = v192;
  }

  *&v34[v167] = v170;
  sub_1CF7ACED8();
  v171 = v202[3];
  v172 = v202[4];
  v173 = __swift_project_boxed_opaque_existential_1(v202, v171);
  v174 = sub_1CF7B9A90(qword_1EDEA8860, type metadata accessor for VFSFileTree);
  v175 = v190;
  sub_1CF764128(v190, v173, v171, v174, &off_1F4BF8588, v172);
  if (v164)
  {

    v238 = v221;
    v239 = v222;
    sub_1CEFCCC44(&v238, &qword_1EC4C48A0, &unk_1CFA16E40);
    v236 = v223;
    v237 = v224;
    sub_1CEFCCC44(&v236, &qword_1EC4C48A0, &unk_1CFA16E40);
    v211 = v225;
    v176 = &v211;
  }

  else
  {
    v177 = v191 < v189;
    v178 = v205;
    swift_beginAccess();
    v179 = *&v34[v192];
    v181 = *(v178 + 16);
    v180 = *(v178 + 24);
    v254[0] = v175;
    v254[1] = v142;
    v254[2] = v177;
    v254[3] = v179;
    v255 = 0;

    v181(v254);

    v234 = v221;
    v235 = v222;
    sub_1CEFCCC44(&v234, &qword_1EC4C48A0, &unk_1CFA16E40);
    v232 = v223;
    v233 = v224;
    sub_1CEFCCC44(&v232, &qword_1EC4C48A0, &unk_1CFA16E40);
    v210 = v225;
    v176 = &v210;
  }

  sub_1CEFCCC44(v176, &qword_1EC4C48A8, &qword_1CFA180F0);
LABEL_149:

LABEL_15:
  v50 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t sub_1CF7B6BBC(unint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a4 < 0)
  {
LABEL_22:
    __break(1u);
  }

  else
  {
    if (!a4)
    {
      v16 = result;
      sub_1CF0BA900(result, a2, a3 & 1);
      return v16;
    }

    v5 = 0;
    while ((a3 & 1) == 0)
    {
      if ((result & 0x8000000000000000) != 0 || (v7 = 1 << *(a5 + 32), result >= v7))
      {
        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v8 = result >> 6;
      v9 = *(a5 + 56 + 8 * (result >> 6));
      if (((v9 >> result) & 1) == 0)
      {
        goto LABEL_20;
      }

      if (*(a5 + 36) != a2)
      {
        goto LABEL_21;
      }

      v10 = v9 & (-2 << (result & 0x3F));
      if (v10)
      {
        result = __clz(__rbit64(v10)) | result & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v11 = v8 << 6;
        v12 = v8 + 1;
        v13 = (a5 + 64 + 8 * v8);
        while (v12 < (v7 + 63) >> 6)
        {
          v15 = *v13++;
          v14 = v15;
          v11 += 64;
          ++v12;
          if (v15)
          {
            result = __clz(__rbit64(v14)) + v11;
            goto LABEL_5;
          }
        }

        result = 1 << *(a5 + 32);
      }

LABEL_5:
      a3 = 0;
      if (v5++ == a4 - 1)
      {
        return result;
      }
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1CF7B6CF4(unint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if ((a4 & 0x8000000000000000) == 0)
  {
    if (!a4)
    {
      v17 = result;
      sub_1CF0BA900(result, a2, a3 & 1);
      return v17;
    }

    v5 = 0;
    v6 = 1 << *(a5 + 32);
    while ((result & 0x8000000000000000) == 0 && result < v6)
    {
      if (a2 != *(a5 + 36))
      {
        goto LABEL_19;
      }

      v8 = result >> 6;
      v9 = *(a5 + 64 + 8 * (result >> 6));
      if ((v9 & (1 << result)) == 0)
      {
        goto LABEL_19;
      }

      v10 = v9 & (-2 << (result & 0x3F));
      if (v10)
      {
        result = __clz(__rbit64(v10)) | result & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v11 = v8 << 6;
        v12 = v8 + 1;
        v13 = (a5 + 72 + 8 * v8);
        while (v12 < (v6 + 63) >> 6)
        {
          v15 = *v13++;
          v14 = v15;
          v11 += 64;
          ++v12;
          if (v15)
          {
            result = __clz(__rbit64(v14)) + v11;
            goto LABEL_5;
          }
        }

        result = 1 << *(a5 + 32);
      }

LABEL_5:
      LODWORD(a2) = *(a5 + 36);
      if (v5++ == a4 - 1)
      {
        v16 = *(a5 + 36);
        return result;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF7B6E24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C48B8, &unk_1CFA180E0);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - v10;
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0CD0, &qword_1CFA16E60) + 48);
  sub_1CEFCCBDC(a1, v11, &qword_1EC4C48B8, &unk_1CFA180E0);
  v13 = v11[8];
  v14 = *(v5 + 56);
  *a2 = *v11;
  *(a2 + 8) = v13;
  sub_1CEFCCBDC(a1, v8, &qword_1EC4C48B8, &unk_1CFA180E0);
  sub_1CEFE55D0(&v8[*(v5 + 56)], a2 + v12, &unk_1EC4BE360, &qword_1CF9FE650);
  return sub_1CEFCCC44(&v11[v14], &unk_1EC4BE360, &qword_1CF9FE650);
}

void sub_1CF7B70D4(uint64_t a1)
{
  v3 = sub_1CF9E64A8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = (&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a1 + 16);
  if ((*(v8 + 82) & 0x20) != 0 && (v9 = *(v8 + qword_1EC4EBCD8)) != 0)
  {
    v10 = *(v8 + qword_1EC4EBCD8 + 8);
    sub_1CF1FD6B8(*(v8 + qword_1EC4EBCD8), v10);
    v11 = v10;
    sub_1CF1FD6F8(v9, v10);
  }

  else
  {
    v11 = *(v8 + 64);
  }

  *v7 = v11;
  (*(v4 + 104))(v7, *MEMORY[0x1E69E8020], v3);
  v12 = v11;
  v13 = sub_1CF9E64D8();
  (*(v4 + 8))(v7, v3);
  if (v13)
  {
    v14 = v1;
    v15 = sub_1CF9E6108();
    v16 = sub_1CF9E7298();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      *(v17 + 4) = v14;
      *v18 = v14;
      v19 = v14;
      _os_log_impl(&dword_1CEFC7000, v15, v16, "📖  reset stream for %@", v17, 0xCu);
      sub_1CEFCCC44(v18, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v18, -1, -1);
      MEMORY[0x1D386CDC0](v17, -1, -1);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1CF9E6298();

    if (v24 != -1)
    {
      v20 = OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_previousAnchor;
      *&v14[OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_previousAnchor] = v24 + 1;
      sub_1CF7ACED8();
      v21 = *&v14[v20];
      swift_getKeyPath();
      swift_getKeyPath();
      v24 = v21;
      v22 = v14;
      sub_1CF9E62A8();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1CF7B73C0(uint64_t a1, void *a2)
{
  v4 = sub_1CF9E6108();
  v5 = sub_1CF9E7298();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1CEFC7000, v4, v5, "📖  requested to reset stream", v6, 2u);
    MEMORY[0x1D386CDC0](v6, -1, -1);
  }

  v7 = ~(*(*(a1 + 16) + 80) >> 20) & 2;
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a1;
  v9 = a2;

  sub_1CF7AAF88("reset()", 7, 2, v7, nullsub_1, 0, sub_1CF7B7984, v8);
}

uint64_t sub_1CF7B7568()
{
  sub_1CF9E7948();

  v8 = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_vfsItemID);
  LOBYTE(v9) = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_vfsItemID + 8);
  v3 = VFSItemID.description.getter(v1, v2);
  MEMORY[0x1D3868CC0](v3);

  MEMORY[0x1D3868CC0](0x7473657571657220, 0xED00003A79426465);
  [*(v0 + OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_lifetimeExtender) requestEffectivePID];
  v4 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v4);

  MEMORY[0x1D3868CC0](0x7365725073616820, 0xEE003A7265746E65);
  if (*(v0 + OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_presenterEnumerator))
  {
    v5 = 7562617;
  }

  else
  {
    v5 = 28526;
  }

  if (*(v0 + OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_presenterEnumerator))
  {
    v6 = 0xE300000000000000;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  MEMORY[0x1D3868CC0](v5, v6);

  MEMORY[0x1D3868CC0](62, 0xE100000000000000);
  return 0x3A736670663CLL;
}

void sub_1CF7B771C()
{
  v0 = sub_1CF9E6118();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1CF7B7850();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1CF7B7850()
{
  if (!qword_1EDEAEDF8)
  {
    v0 = sub_1CF9E62B8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEAEDF8);
    }
  }
}

uint64_t sub_1CF7B78B0()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = swift_allocObject();
    *(v3 + 16) = v0;
    v4 = v0;
    sub_1CEFD4024("reset()", 7, 2, nullsub_1, 0, sub_1CF7B797C, v3);
  }

  return result;
}

void sub_1CF7B7984()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  sub_1CF7B70D4(v1);
}

uint64_t sub_1CF7B79B4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1CF9E6298();

  *a2 = v5;
  return result;
}

uint64_t sub_1CF7B7A34(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return sub_1CF9E62A8();
}

uint64_t sub_1CF7B7ABC()
{
  v1 = *(type metadata accessor for Signpost(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = (v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v3 + 31) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v3 + 55) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v3 + 71) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v0 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v8;
  v11 = v8[1];
  return sub_1CF7AC0B4(v0 + v2, *(v0 + v4), *(v0 + v4 + 8), *(v0 + v4 + 16), *(v0 + v5), *(v0 + v5 + 8), *(v0 + v5 + 16), *(v0 + v6), *(v0 + v6 + 8), *(v0 + v7), *(v0 + v7 + 8));
}

uint64_t sub_1CF7B7BA0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void sub_1CF7B7BD0(uint64_t a1, char a2, uint64_t *a3)
{
  v100 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v96 = *(v5 - 8);
  v6 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v84 = &v77 - v7;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C48B8, &unk_1CFA180E0);
  v8 = *(v91 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v91);
  v87 = (&v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v78 = (&v77 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C48C0, &qword_1CFA16E50);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v97 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v77 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C48C8, &qword_1CFA16E58);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v90 = &v77 - v21;
  v22 = *(a1 + 8);
  v24 = *(a1 + 24);
  v23 = *(a1 + 32);
  v25 = *(a1 + 40);
  v110[0] = *a1;
  v110[1] = v22;
  v26 = *(a1 + 16);
  v111 = v26;
  v93 = v24;
  v108[0] = v24;
  v108[1] = v23;
  v94 = v23;
  v109 = v25;
  v27 = *(a1 + 48);
  v79 = *(a1 + 56);
  v112 = v27;
  v28 = *(a1 + 64);
  v107 = v26;
  v92 = v25;
  v106 = v25;
  v83 = v110[0];
  v82 = v22;
  sub_1CF0BA900(v110[0], v22, v26 & 1);
  sub_1CEFCCBDC(v110, v104, &qword_1EC4C48A0, &unk_1CFA16E40);
  v29 = v27;
  sub_1CEFCCBDC(v108, v104, &qword_1EC4C48A0, &unk_1CFA16E40);
  sub_1CEFCCBDC(&v112, v104, &qword_1EC4C48A8, &qword_1CFA180F0);
  v81 = v28;

  if ((v26 & 1) == 0 && (v92 & 1) == 0)
  {
    v86 = v27 + 64;
    v89 = (v8 + 56);
    v88 = (v8 + 48);
    v30 = &qword_1CF9FE650;
    v31 = v83;
    v80 = v83;
    v98 = v82;
    v95 = v18;
    v85 = v27;
    do
    {
      if (v98 != v94)
      {
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
        break;
      }

      v32 = v93;
      if (v31 == v93)
      {
        v33 = v91;
        (*v89)(v18, 1, 1, v91);
        v99 = v32;
      }

      else
      {
        v33 = v91;
        if (v31 < v83)
        {
          goto LABEL_36;
        }

        if (v94 != v82)
        {
          goto LABEL_37;
        }

        if (v31 >= v93)
        {
          goto LABEL_38;
        }

        if (v31 < 0 || v31 >= -(-1 << *(v29 + 32)))
        {
          goto LABEL_39;
        }

        if (((*(v86 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
        {
          goto LABEL_40;
        }

        if (*(v29 + 36) != v94)
        {
          goto LABEL_41;
        }

        v34 = *(v91 + 48);
        v35 = *(v29 + 56);
        v36 = *(v29 + 48) + 16 * v31;
        v37 = *v36;
        LOBYTE(v36) = *(v36 + 8);
        v38 = a2;
        v39 = v87;
        *v87 = v37;
        *(v39 + 8) = v36;
        v40 = v30;
        sub_1CEFCCBDC(v35 + *(v96 + 72) * v31, v39 + v34, &unk_1EC4BE360, v30);
        v41 = *(v39 + 8);
        v42 = v78;
        *v78 = *v39;
        *(v42 + 8) = v41;
        v43 = v39 + v34;
        a2 = v38;
        v18 = v95;
        sub_1CEFE55D0(v43, v42 + *(v33 + 48), &unk_1EC4BE360, v30);
        sub_1CEFE55D0(v42, v18, &qword_1EC4C48B8, &unk_1CFA180E0);
        v44 = sub_1CF9E77E8();
        v98 = *(v85 + 36);
        (*v89)(v18, 0, 1, v33);
        v80 = v44;
        v99 = v44;
        v30 = v40;
        v29 = v85;
      }

      v45 = v97;
      sub_1CEFE55D0(v18, v97, &qword_1EC4C48C0, &qword_1CFA16E50);
      v46 = 1;
      v47 = (*v88)(v45, 1, v33);
      v48 = v90;
      if (v47 != 1)
      {
        v49 = v87;
        sub_1CEFE55D0(v97, v87, &qword_1EC4C48B8, &unk_1CFA180E0);
        v79(v49);
        sub_1CEFCCC44(v49, &qword_1EC4C48B8, &unk_1CFA180E0);
        v46 = 0;
      }

      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0CD0, &qword_1CFA16E60);
      (*(*(v50 - 8) + 56))(v48, v46, 1, v50);
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0CD0, &qword_1CFA16E60);
      if ((*(*(v51 - 8) + 48))(v48, 1, v51) == 1)
      {
        sub_1CF0663D8(v83, v82, 0);
        sub_1CF0663D8(v93, v94, 0);

        sub_1CF0663D8(v80, v98, 0);

        sub_1CEFCCC44(v110, &qword_1EC4C48A0, &unk_1CFA16E40);
        sub_1CEFCCC44(&v112, &qword_1EC4C48A8, &qword_1CFA180F0);

        return;
      }

      v52 = v29;
      v53 = *(v51 + 48);
      v55 = v48[8];
      v102 = *v48;
      v54 = v102;
      v103 = v55;
      v56 = v84;
      sub_1CEFE55D0(&v48[v53], v84, &unk_1EC4BE360, v30);
      v57 = *v100;
      v59 = sub_1CF7BF2C0(v54, v55);
      v60 = *(v57 + 16);
      v61 = (v58 & 1) == 0;
      v62 = v60 + v61;
      if (__OFADD__(v60, v61))
      {
        goto LABEL_34;
      }

      v63 = v58;
      if (*(v57 + 24) >= v62)
      {
        if (a2)
        {
          if (v58)
          {
            goto LABEL_29;
          }
        }

        else
        {
          sub_1CF7D2BF0();
          if (v63)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
        v64 = v100;
        sub_1CF7CAEE8(v62, a2 & 1);
        v65 = *v64;
        v66 = sub_1CF7BF2C0(v54, v55);
        if ((v63 & 1) != (v67 & 1))
        {
          goto LABEL_43;
        }

        v59 = v66;
        if (v63)
        {
LABEL_29:
          v105 = 0;
          v73 = swift_allocError();
          swift_willThrow();
          sub_1CEFCCC44(v110, &qword_1EC4C48A0, &unk_1CFA16E40);
          sub_1CEFCCC44(&v112, &qword_1EC4C48A8, &qword_1CFA180F0);

          v101 = v73;
          v74 = v73;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
          if (swift_dynamicCast())
          {
            goto LABEL_44;
          }

          sub_1CEFCCC44(v56, &unk_1EC4BE360, &qword_1CF9FE650);
          v75 = v106;
          v76 = v105;
          sub_1CF0663D8(v83, v82, v107);
          sub_1CF0663D8(v93, v94, v75);

          sub_1CF0663D8(v80, v98, v76);

          return;
        }
      }

      v68 = *v100;
      *(*v100 + 8 * (v59 >> 6) + 64) |= 1 << v59;
      v69 = v68[6] + 16 * v59;
      *v69 = v54;
      *(v69 + 8) = v55;
      sub_1CEFE55D0(v56, v68[7] + *(v96 + 72) * v59, &unk_1EC4BE360, v30);
      v70 = v68[2];
      v71 = __OFADD__(v70, 1);
      v72 = v70 + 1;
      if (v71)
      {
        goto LABEL_35;
      }

      v68[2] = v72;
      a2 = 1;
      v29 = v52;
      v18 = v95;
      v31 = v99;
    }

    while ((v92 & 1) == 0);
  }

  __break(1u);
LABEL_43:
  sub_1CF9E8108();
  __break(1u);
LABEL_44:
  v104[0] = 0;
  v104[1] = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA3DF20);
  sub_1CF9E7B58();
  MEMORY[0x1D3868CC0](39, 0xE100000000000000);
  sub_1CF9E7B68();
  __break(1u);
}

uint64_t sub_1CF7B868C(uint64_t result, int a2, char a3, uint64_t a4, int a5, char a6, uint64_t a7)
{
  if (a6 & 1) != 0 || (a3)
  {
    goto LABEL_30;
  }

  v7 = result;
  if (a4 < result)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (a5 != a2)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (result != a4)
  {
    if (*(a7 + 36) != a5)
    {
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      return result;
    }

    v8 = 1 << *(a7 + 32);
    result = 1;
    while ((v7 & 0x8000000000000000) == 0 && v7 < v8)
    {
      if (a5 != a2)
      {
        goto LABEL_26;
      }

      v9 = v7 >> 6;
      v10 = *(a7 + 64 + 8 * (v7 >> 6));
      if ((v10 & (1 << v7)) == 0)
      {
        goto LABEL_26;
      }

      v11 = v10 & (-2 << (v7 & 0x3F));
      if (v11)
      {
        v7 = __clz(__rbit64(v11)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v12 = v9 << 6;
        v13 = v9 + 1;
        v14 = (a7 + 72 + 8 * v9);
        while (v13 < (v8 + 63) >> 6)
        {
          v16 = *v14++;
          v15 = v16;
          v12 += 64;
          ++v13;
          if (v16)
          {
            v7 = __clz(__rbit64(v15)) + v12;
            goto LABEL_21;
          }
        }

        v7 = 1 << *(a7 + 32);
      }

LABEL_21:
      if (v7 == a4)
      {
        return result;
      }

      a2 = a5;
      if (__OFADD__(result++, 1))
      {
        __break(1u);
        break;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  return 0;
}

uint64_t sub_1CF7B87B0()
{
  v11[1] = *MEMORY[0x1E69E9840];
  v0 = sub_1CF9E5B88();
  v2 = v1 >> 62;
  if ((v1 >> 62) > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_11;
    }

    v4 = *(v0 + 16);
    v3 = *(v0 + 24);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      if (v6 == 8)
      {
        goto LABEL_8;
      }

LABEL_11:
      sub_1CEFE4714(v0, v1);
      result = 0;
      goto LABEL_12;
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  if (v2)
  {
    if (!__OFSUB__(HIDWORD(v0), v0))
    {
      if (HIDWORD(v0) - v0 == 8)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }

    goto LABEL_14;
  }

  if (BYTE6(v1) != 8)
  {
    goto LABEL_11;
  }

LABEL_8:
  v11[0] = 0;
  v7 = v0;
  v8 = v1;
  sub_1CF7ACD74(v11, 1, 0, 0, 1, v0, v1);
  sub_1CEFE4714(v7, v8);
  result = v11[0];
LABEL_12:
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1CF7B88B0(void *a1, void (**a2)(void, void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_invalidated;
  _Block_copy(a2);
  if ((*(a1 + v5) & 1) != 0 || (Strong = swift_unknownObjectWeakLoadStrong()) == 0)
  {
    type metadata accessor for NSFileProviderError(0);
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF7B9A90(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError);
    sub_1CF9E57D8();
    v12 = sub_1CF9E57E8();
    (a2)[2](a2, 0, v12);
  }

  else
  {
    v7 = Strong;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_1CEFFA830;
    *(v8 + 24) = v4;
    v9 = swift_allocObject();
    v9[2] = sub_1CEFFA830;
    v9[3] = v4;
    v9[4] = a1;
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1CF7BA918;
    *(v10 + 24) = v8;
    swift_retain_n();
    v11 = a1;

    sub_1CEFD4024("currentSyncAnchor(completion:)", 30, 2, sub_1CF7BA950, v10, sub_1CF7BA944, v9);
  }
}

uint64_t sub_1CF7B8B00(void *a1, unint64_t a2, uint64_t a3, char *a4, const void *a5)
{
  v109 = a2;
  v110 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  v107 = *(v8 - 8);
  v108 = *(v107 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v112 = (&v103 - v9);
  v10 = sub_1CF9E6118();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v105 = v13;
  v106 = (&v103 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v118 = &v103 - v15;
  v16 = swift_allocObject();
  *(v16 + 16) = a5;
  v113 = a5;
  _Block_copy(a5);
  if (qword_1EDEAB5F0 != -1)
  {
    swift_once();
  }

  v17 = sub_1CF9E5B88();
  v19 = v18;
  v20 = sub_1CF9E5B88();
  v22 = v21;
  v23 = sub_1CF328660(v17, v19, v20, v21);
  sub_1CEFE4714(v20, v22);
  sub_1CEFE4714(v17, v19);
  if (v23)
  {
    goto LABEL_7;
  }

  if (qword_1EDEAB5E8 != -1)
  {
    swift_once();
  }

  v24 = sub_1CF9E5B88();
  v26 = v25;
  v27 = sub_1CF9E5B88();
  v29 = v28;
  v30 = sub_1CF328660(v24, v26, v27, v28);
  sub_1CEFE4714(v27, v29);
  sub_1CEFE4714(v24, v26);
  if (v30)
  {
LABEL_7:
    v31 = 0;
  }

  else
  {
    v43 = sub_1CF9E5688();
    v44 = *(v43 + 48);
    v45 = *(v43 + 52);
    swift_allocObject();
    sub_1CF9E5678();
    type metadata accessor for PaginatedContinuation();
    v46 = sub_1CF9E5B88();
    v48 = v47;
    sub_1CF7B9A90(&unk_1EC4C4810, type metadata accessor for PaginatedContinuation);
    sub_1CF9E5668();

    sub_1CEFE4714(v46, v48);
    v31 = v120;
  }

  v115 = v11;
  v104 = *(v11 + 16);
  v104(v118, &a4[OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_logger], v10);

  v32 = a4;
  v33 = sub_1CF9E6108();
  v34 = sub_1CF9E7298();

  v35 = os_log_type_enabled(v33, v34);
  v116 = v16;
  v117 = v10;
  v114 = v31;
  if (v35)
  {
    v111 = a1;
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v122[0] = v38;
    *v36 = 138412546;
    *(v36 + 4) = v32;
    *v37 = v32;
    *(v36 + 12) = 2080;
    if (v31)
    {
      v120 = 979789423;
      v121 = 0xE400000000000000;
      v119 = *(v31 + 16);
      v39 = v32;
      v40 = sub_1CF9E7F98();
      MEMORY[0x1D3868CC0](v40);

      v41 = v120;
      v42 = v121;
    }

    else
    {
      v41 = 0x6C616974696E693CLL;
      v49 = v32;
      v42 = 0xE90000000000003ELL;
    }

    v50 = sub_1CEFD0DF0(v41, v42, v122);

    *(v36 + 14) = v50;
    _os_log_impl(&dword_1CEFC7000, v33, v34, "📖  %@: enumerating page %s", v36, 0x16u);
    sub_1CEFCCC44(v37, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v37, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1D386CDC0](v38, -1, -1);
    MEMORY[0x1D386CDC0](v36, -1, -1);

    v10 = v117;
    v31 = v114;
    a1 = v111;
  }

  else
  {
  }

  if ((v32[OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_invalidated] & 1) != 0 || (Strong = swift_unknownObjectWeakLoadStrong()) == 0)
  {
    type metadata accessor for NSFileProviderError(0);
    v122[0] = -1002;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF7B9A90(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError);
    sub_1CF9E57D8();
    v79 = v120;
    v80 = v32;

    v81 = v79;
    v82 = sub_1CF9E6108();
    v83 = sub_1CF9E72A8();

    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      v122[0] = v112;
      *v84 = 138412802;
      *(v84 + 4) = v80;
      *v85 = v80;
      *(v84 + 12) = 2080;
      if (v31)
      {
        v120 = 979789423;
        v121 = 0xE400000000000000;
        v119 = *(v31 + 16);
        v86 = v80;
        v87 = sub_1CF9E7F98();
        MEMORY[0x1D3868CC0](v87);

        v88 = v120;
        v89 = v121;
      }

      else
      {
        v88 = 0x6C616974696E693CLL;
        v90 = v80;
        v89 = 0xE90000000000003ELL;
      }

      v91 = sub_1CEFD0DF0(v88, v89, v122);

      *(v84 + 14) = v91;
      *(v84 + 22) = 2112;
      v120 = v81;
      sub_1CF7B9A90(&qword_1EDEAB6A0, type metadata accessor for NSFileProviderError);
      v92 = v81;
      v93 = sub_1CF9E7FB8();
      if (v93)
      {
        v94 = v93;
      }

      else
      {
        v94 = swift_allocError();
        *v95 = v92;
      }

      v10 = v117;
      v96 = sub_1CF9E57E8();

      v97 = [v96 fp_prettyDescription];
      *(v84 + 24) = v97;
      v85[1] = v97;
      _os_log_impl(&dword_1CEFC7000, v82, v83, "📖  %@: enumerating page %s failed: %@", v84, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE350, &unk_1CF9FC3B0);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v85, -1, -1);
      v98 = v112;
      __swift_destroy_boxed_opaque_existential_1(v112);
      MEMORY[0x1D386CDC0](v98, -1, -1);
      MEMORY[0x1D386CDC0](v84, -1, -1);
    }

    else
    {
    }

    sub_1CEFD57E0(0, &qword_1EDEAB520, 0x1E6967388);
    v99 = v81;
    v100 = sub_1CF9E6D28();
    v101 = sub_1CF9E57E8();
    (*(v113 + 16))(v113, v100, 0, 0, 0, v101);

    (*(v115 + 8))(v118, v10);
  }

  else
  {
    v52 = v10;
    v53 = Strong;
    v103 = Strong;
    v113 = swift_allocObject();
    v54 = v106;
    v104(v106, v118, v52);
    v55 = v115;
    v56 = (*(v115 + 80) + 24) & ~*(v115 + 80);
    v57 = (v105 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
    v111 = a1;
    v58 = (v57 + 15) & 0xFFFFFFFFFFFFFFF8;
    v59 = swift_allocObject();
    *(v59 + 16) = v53;
    (*(v55 + 32))(v59 + v56, v54, v117);
    *(v59 + v57) = v32;
    *(v59 + v58) = v31;
    v60 = (v59 + ((v58 + 15) & 0xFFFFFFFFFFFFFFF8));
    v105 = sub_1CF7BA3F0;
    v61 = v116;
    *v60 = sub_1CF7BA3F0;
    v60[1] = v61;
    v106 = sub_1CF7BA990;
    v62 = v112;
    v63 = v113;
    *(v113 + 16) = sub_1CF7BA990;
    *(v63 + 24) = v59;
    sub_1CEFCCBDC(v109, v62, &qword_1EC4C1B40, &unk_1CF9FCB70);
    v64 = (*(v107 + 80) + 32) & ~*(v107 + 80);
    v109 = (v108 + v64 + 7) & 0xFFFFFFFFFFFFFFF8;
    v65 = (v109 + 15) & 0xFFFFFFFFFFFFFFF8;
    v66 = (v65 + 15) & 0xFFFFFFFFFFFFFFF8;
    v67 = (v66 + 15) & 0xFFFFFFFFFFFFFFF8;
    v68 = swift_allocObject();
    *(v68 + 16) = v113;
    *(v68 + 24) = v31;
    sub_1CEFE55D0(v112, v68 + v64, &qword_1EC4C1B40, &unk_1CF9FCB70);
    v69 = v110;
    *(v68 + v109) = v32;
    v70 = v111;
    *(v68 + v65) = v111;
    *(v68 + v66) = v69;
    v71 = (v68 + v67);
    v72 = v116;
    *v71 = v105;
    v71[1] = v72;
    v73 = v103;
    *(v68 + ((v67 + 23) & 0xFFFFFFFFFFFFFFF8)) = v103;
    v74 = v32;
    swift_retain_n();
    swift_retain_n();
    v75 = v73;
    swift_retain_n();
    v76 = v74;
    v77 = v75;

    v78 = v70;
    sub_1CF8E9FF4("enumerateItems(fromPage:selfItem:suggestedPageSize:reply:)", 58, 2, sub_1CF7BA9C4, v68, v77, v106, v59);

    (*(v115 + 8))(v118, v117);
  }
}

uint64_t sub_1CF7B9764(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v8[0] = a1;
  v8[1] = a2;
  v8[2] = a3;
  v9 = a4 & 1;
  return v5(v8);
}

uint64_t sub_1CF7B97A8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24));
}

void sub_1CF7B97E0(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_1CF7B2A4C(a1, *(v1 + 16), *(v1 + 24), v1 + v4, *(v1 + v5), *(v1 + v6), *(v1 + v7), *(v1 + v8), *(v1 + v9), *(v1 + v9 + 8), *(v1 + ((v9 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v9 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_1CF7B9940(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
  }
}

void sub_1CF7B998C()
{
  v1 = *(sub_1CF9E6118() - 8);
  v2 = (*(v1 + 80) + 41) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + v5 + 8);
  sub_1CF7B1ED0(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), v0 + v2, *(v0 + v3), *(v0 + v4), *(v0 + v5));
}

id sub_1CF7B9A40(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {

    return a1;
  }

  else
  {
  }
}

uint64_t sub_1CF7B9A90(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CF7B9AD8(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1CF7AEB0C(a1);
}

uint64_t sub_1CF7B9B18(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for Signpost(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];

  return a2(a1, v2 + v5, v7, v8);
}

void sub_1CF7B9C10(uint64_t a1, unint64_t a2, uint64_t a3, char *a4, void (**a5)(void, void, void, void, void, void, void))
{
  v57 = a3;
  v9 = sub_1CF9E6118();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v55 - v14;
  v16 = swift_allocObject();
  *(v16 + 16) = a5;
  _Block_copy(a5);
  v58 = a1;
  v59 = a2;
  v17 = sub_1CF9E5B48();
  v62 = sub_1CF7B87B0();
  LOBYTE(a1) = v18;

  if (a1)
  {
    type metadata accessor for NSFileProviderError(0);
    v63 = -1002;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF7B9A90(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError);
    sub_1CF9E57D8();
    v19 = v64[0];
    sub_1CEFD57E0(0, &qword_1EDEAB520, 0x1E6967388);
    v20 = sub_1CF9E6D28();
    sub_1CEFD57E0(0, &unk_1EDEA3430, 0x1E69673A0);
    v21 = sub_1CF9E6D28();
    v22 = sub_1CF9E57E8();
    (a5)[2](a5, v20, v21, 0, 0, 0, v22);
  }

  else
  {
    v60 = v10;
    v61 = v16;
    v23 = *(v10 + 16);
    v56 = v9;
    v23(v15, &a4[OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_logger], v9);
    v24 = a4;
    v25 = sub_1CF9E6108();
    v26 = sub_1CF9E7298();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = v23;
      v29 = swift_slowAlloc();
      *v27 = 138412546;
      *(v27 + 4) = v24;
      *v29 = v24;
      *(v27 + 12) = 2048;
      *(v27 + 14) = v62;
      v30 = v24;
      _os_log_impl(&dword_1CEFC7000, v25, v26, "📖  %@: enumerating from change %llu", v27, 0x16u);
      sub_1CEFCCC44(v29, &qword_1EC4BE350, &unk_1CF9FC3B0);
      v31 = v29;
      v23 = v28;
      MEMORY[0x1D386CDC0](v31, -1, -1);
      MEMORY[0x1D386CDC0](v27, -1, -1);
    }

    v32 = swift_allocObject();
    v55 = v15;
    v33 = v56;
    v23(v12, v15, v56);
    v34 = v60;
    v35 = (*(v60 + 80) + 16) & ~*(v60 + 80);
    v36 = (v11 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
    v37 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
    v38 = swift_allocObject();
    (*(v34 + 32))(v38 + v35, v12, v33);
    *(v38 + v36) = v24;
    v39 = v61;
    *(v38 + v37) = v62;
    v40 = (v38 + ((v37 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v40 = sub_1CF7BA270;
    v40[1] = v39;
    v41 = sub_1CF7BA278;
    *(v32 + 16) = sub_1CF7BA278;
    *(v32 + 24) = v38;
    LOBYTE(v35) = v24[OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_invalidated];
    v42 = v24;

    if ((v35 & 1) != 0 || (Strong = swift_unknownObjectWeakLoadStrong(), v41 = *(v32 + 16), v44 = *(v32 + 24), !Strong))
    {
      type metadata accessor for NSFileProviderError(0);
      v64[0] = -1002;

      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF7B9A90(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError);
      sub_1CF9E57D8();
      v54 = v63;
      v64[0] = v63;
      memset(&v64[1], 0, 24);
      v65 = 1;
      v41(v64);

      (*(v60 + 8))(v55, v33);
    }

    else
    {
      v45 = Strong;
      v46 = swift_allocObject();
      *(v46 + 16) = v41;
      *(v46 + 24) = v44;
      v47 = swift_allocObject();
      v49 = v58;
      v48 = v59;
      v47[2] = v32;
      v47[3] = v49;
      v47[4] = v48;
      v47[5] = v42;
      v47[6] = v57;
      v47[7] = v45;
      v50 = v33;
      v51 = swift_allocObject();
      *(v51 + 16) = sub_1CF7BA330;
      *(v51 + 24) = v46;
      v52 = v42;

      sub_1CEFE42D4(v49, v48);
      v53 = v45;

      sub_1CEFD4024("enumerateChanges(fromToken:suggestedBatchSize:reply:)", 53, 2, sub_1CF7BA384, v51, sub_1CF7BA374, v47);

      (*(v60 + 8))(v55, v50);
    }
  }
}

void sub_1CF7BA278(uint64_t a1)
{
  v3 = *(sub_1CF9E6118() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + v6);
  v9 = v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = *(v9 + 8);

  sub_1CF7B4D00(a1, v1 + v4, v7, v8, v10);
}

uint64_t sub_1CF7BA330(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  v7 = *(a1 + 32);
  return v2(v6);
}

void sub_1CF7BA38C(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v5;
  v7 = *(a1 + 32);
  sub_1CF9189D8(v6, v2, v3);
}

uint64_t sub_1CF7BA3F8(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = *(sub_1CF9E6118() - 8);
  v10 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1CF7B1A7C(a1, a2, a3, a4 & 1, *(v4 + 16), v4 + v10, *(v4 + v11), *(v4 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v4 + ((((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v4 + ((((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t objectdestroy_77Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);

  v6 = *(v0 + 24);

  v7 = (v0 + v3);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  if (!(*(*(v8 - 1) + 48))(v0 + v3, 1, v8))
  {
    v45 = (v2 + 32) & ~v2;
    v9 = v7[8];

    v10 = v7[12];

    v11 = v7[13];

    v12 = v7[15];

    v13 = v7[17];

    v14 = v7 + v8[12];
    v15 = type metadata accessor for ItemMetadata();
    v16 = v15[7];
    v17 = sub_1CF9E5CF8();
    v18 = *(v17 - 8);
    v19 = *(v18 + 8);
    v19(&v14[v16], v17);
    v19(&v14[v15[8]], v17);
    v20 = *&v14[v15[14] + 8];

    v21 = v15[30];
    if (!(*(v18 + 48))(&v14[v21], 1, v17))
    {
      v19(&v14[v21], v17);
    }

    v22 = *&v14[v15[31]];

    v23 = *&v14[v15[33]];

    v24 = &v14[v15[34]];
    v25 = v24[1];
    if (v25 >> 60 != 15)
    {
      sub_1CEFE4714(*v24, v25);
    }

    v26 = *&v14[v15[38] + 8];

    v27 = v7 + v8[13];
    v28 = *(v27 + 2);
    if (v28 != 1)
    {

      v29 = *(v27 + 6);

      v30 = *(v27 + 8);

      v31 = *(v27 + 11);

      v32 = *(v27 + 15);

      v33 = *(v27 + 17);

      v34 = *(v27 + 19);

      v35 = *(v27 + 21);

      v36 = *(v27 + 23);

      if (*(v27 + 24))
      {

        v37 = *(v27 + 25);
      }

      v38 = *(v27 + 28);

      v39 = *(v27 + 30);
    }

    sub_1CF07638C(*(v7 + v8[17]), *(v7 + v8[17] + 8));
    v3 = v45;
  }

  v40 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = (v40 + 15) & 0xFFFFFFFFFFFFFFF8;
  v42 = (((v41 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  v43 = *(v0 + v42 + 8);

  return swift_deallocObject();
}

uint64_t sub_1CF7BA838(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_1CF7B2618(a1, *(v1 + 16), *(v1 + 24), v1 + v4, *(v1 + v5), *(v1 + v6), *(v1 + v7), *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1CF7BA918(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

void sub_1CF7BA958(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  sub_1CF7ADE98(a1, *(v1 + 16));
}

uint64_t sub_1CF7BA9CC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0B98, &unk_1CFA07A30);
    v2 = sub_1CF9E7BE8();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1CEFD1104(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_1CEFE9EB8(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_1CEFE9EB8(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_1CEFE9EB8(v32, v33);
    v17 = *(v2 + 40);
    result = sub_1CF9E7878();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_1CEFE9EB8(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1CF7BAC94(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0CF0, &qword_1CFA17250);
    v1 = sub_1CF9E7BE8();
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC8];
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v8 = 0;
  while (v4)
  {
LABEL_15:
    v11 = __clz(__rbit64(v4)) | (v8 << 6);
    v12 = *(*(a1 + 48) + 8 * v11);
    v13 = (*(a1 + 56) + 16 * v11);
    v14 = v13[1];
    v27 = *v13;
    v28 = v14;
    v15 = v12;

    swift_dynamicCast();
    sub_1CEFE9EB8((v29 + 8), v26);
    sub_1CEFE9EB8(v26, v29);
    v16 = *(v1 + 40);
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    sub_1CF9E81D8();
    sub_1CF9E69C8();
    v17 = sub_1CF9E8228();

    v18 = -1 << *(v1 + 32);
    v19 = v17 & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v6 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v6 + 8 * v20);
        if (v24 != -1)
        {
          v9 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v19) & ~*(v6 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v6 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v4 &= v4 - 1;
    *(*(v1 + 48) + 8 * v9) = v15;
    result = sub_1CEFE9EB8(v29, (*(v1 + 56) + 32 * v9));
    ++*(v1 + 16);
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v4)
    {
      v8 = v10;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_1CF7BAF4C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFA30, &unk_1CFA079A0);
    v2 = sub_1CF9E7BE8();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = *(*(a1 + 56) + 8 * v15);
        sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);

        v20 = v19;
        swift_dynamicCast();
        sub_1CEFE9EB8(&v26, v28);
        sub_1CEFE9EB8(v28, v29);
        sub_1CEFE9EB8(v29, &v27);
        result = sub_1CEFE4328(v18, v17);
        if (v21)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_1(v12);
          result = sub_1CEFE9EB8(&v27, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v22 = (v2[6] + 16 * result);
          *v22 = v18;
          v22[1] = v17;
          result = sub_1CEFE9EB8(&v27, (v2[7] + 32 * result));
          v23 = v2[2];
          v24 = __OFADD__(v23, 1);
          v25 = v23 + 1;
          if (v24)
          {
            goto LABEL_21;
          }

          v2[2] = v25;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1CF7BB1B8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0B98, &unk_1CFA07A30);
    v2 = sub_1CF9E7BE8();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (v9 << 10) | (16 * __clz(__rbit64(v5)));
    v14 = (*(a1 + 48) + v13);
    v15 = v14[1];
    v16 = (*(a1 + 56) + v13);
    v18 = *v16;
    v17 = v16[1];
    *&v35[0] = *v14;
    *(&v35[0] + 1) = v15;

    swift_dynamicCast();
    swift_dynamicCast();
    v31 = v27;
    v32 = v28;
    v33 = v29;
    sub_1CEFE9EB8(&v30, v34);
    v27 = v31;
    v28 = v32;
    v29 = v33;
    sub_1CEFE9EB8(v34, v35);
    v19 = *(v2 + 40);
    result = sub_1CF9E7878();
    v20 = -1 << *(v2 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v7 + 8 * (v21 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v20) >> 6;
      while (++v22 != v24 || (v23 & 1) == 0)
      {
        v25 = v22 == v24;
        if (v22 == v24)
        {
          v22 = 0;
        }

        v23 |= v25;
        v26 = *(v7 + 8 * v22);
        if (v26 != -1)
        {
          v10 = __clz(__rbit64(~v26)) + (v22 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v21) & ~*(v7 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v27;
    *(v11 + 16) = v28;
    *(v11 + 32) = v29;
    result = sub_1CEFE9EB8(v35, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_1CF7BB480(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4990, &qword_1CFA17220);
    v2 = sub_1CF9E7BE8();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5)) | (v13 << 6);
        v15 = (*(a1 + 48) + 16 * v14);
        v16 = *(*(a1 + 56) + 8 * v14);
        v18 = *v15;
        v17 = v15[1];
        v5 &= v5 - 1;
        v26 = MEMORY[0x1E69E6538];
        v25 = MEMORY[0x1E69E6530];
        *&v24 = v16;
        sub_1CF054EA0(&v24, v28);
        sub_1CF054EA0(v28, v29);
        sub_1CF054EA0(v29, &v27);

        result = sub_1CEFE4328(v18, v17);
        if (v19)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 40 * v11);
          __swift_destroy_boxed_opaque_existential_1(v12);
          result = sub_1CF054EA0(&v27, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v20 = (v2[6] + 16 * result);
          *v20 = v18;
          v20[1] = v17;
          result = sub_1CF054EA0(&v27, v2[7] + 40 * result);
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_1CF7BB6C4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFA30, &unk_1CFA079A0);
    v2 = sub_1CF9E7BE8();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v17 = *v16;
        v18 = v16[1];
        sub_1CF1A91AC(*(a1 + 56) + 40 * v15, v32);
        *&v31 = v17;
        *(&v31 + 1) = v18;
        v28[2] = v31;
        v29[0] = v32[0];
        v29[1] = v32[1];
        v30 = v33;
        v19 = v31;
        sub_1CF054EA0(v29, v24);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4998, &qword_1CFA17228);
        swift_dynamicCast();
        sub_1CEFE9EB8(&v25, v27);
        sub_1CEFE9EB8(v27, v28);
        sub_1CEFE9EB8(v28, &v26);
        result = sub_1CEFE4328(v19, *(&v19 + 1));
        if (v20)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v19;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_1(v12);
          result = sub_1CEFE9EB8(&v26, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v19;
          result = sub_1CEFE9EB8(&v26, (v2[7] + 32 * result));
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1CF7BB964(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0B50, &unk_1CFA171B0);
    v1 = sub_1CF9E7BE8();
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC8];
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v8 = 0;
  while (v4)
  {
LABEL_15:
    v12 = __clz(__rbit64(v4)) | (v8 << 6);
    v13 = *(a1 + 48) + 16 * v12;
    v14 = *(*(a1 + 56) + 8 * v12);
    v26 = *v13;
    v27 = *(v13 + 8);
    type metadata accessor for NSFileProviderItemIdentifier(0);
    v15 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9B8, &qword_1CF9FEF70);
    swift_dynamicCast();
    v16 = *(v1 + 40);
    sub_1CF9E81D8();
    if (v27)
    {
      if (v27 == 1)
      {
        MEMORY[0x1D386A470](1);
        MEMORY[0x1D386A4A0](v26);
      }

      else
      {
        if (v26)
        {
          v17 = 3;
        }

        else
        {
          v17 = 2;
        }

        MEMORY[0x1D386A470](v17);
      }
    }

    else
    {
      MEMORY[0x1D386A470](0);
      sub_1CF9E8208();
    }

    result = sub_1CF9E8228();
    v18 = -1 << *(v1 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v6 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v6 + 8 * v20);
        if (v24 != -1)
        {
          v9 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_34;
    }

    v9 = __clz(__rbit64((-1 << v19) & ~*(v6 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v4 &= v4 - 1;
    *(v6 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = *(v1 + 48) + 16 * v9;
    *v10 = v26;
    *(v10 + 8) = v27;
    *(*(v1 + 56) + 8 * v9) = v28;
    ++*(v1 + 16);
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v4)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_1CF7BBC30(uint64_t a1)
{
  v44 = sub_1CF9E5CF8();
  v45 = *(v44 - 8);
  v2 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v43 = v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C49B8, &unk_1CFA17258);
  v4 = *(*(v42 - 8) + 64);
  MEMORY[0x1EEE9AC00](v42);
  v41 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v40 = v38 - v7;
  v46 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0B98, &unk_1CFA07A30);
    v8 = sub_1CF9E7BE8();
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC8];
  }

  v9 = v46 + 64;
  v10 = 1 << *(v46 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v46 + 64);
  v13 = (v10 + 63) >> 6;
  v38[1] = v45 + 16;
  v38[0] = v45 + 32;
  v14 = v8 + 64;

  v16 = 0;
  v39 = v8;
  v17 = v45;
  while (v12)
  {
LABEL_15:
    v21 = __clz(__rbit64(v12)) | (v16 << 6);
    v22 = v46;
    v23 = v40;
    v24 = v44;
    (*(v17 + 16))(v40, *(v46 + 48) + *(v17 + 72) * v21, v44);
    v25 = *(*(v22 + 56) + 4 * v21);
    v26 = v42;
    *&v23[*(v42 + 48)] = v25;
    v27 = v23;
    v28 = v41;
    sub_1CEFE55D0(v27, v41, &qword_1EC4C49B8, &unk_1CFA17258);
    v29 = *(v26 + 48);
    (*(v17 + 32))(v43, v28, v24);
    swift_dynamicCast();
    LODWORD(v55) = *(v28 + v29);
    swift_dynamicCast();
    v51 = v47;
    v52 = v48;
    v53 = v49;
    sub_1CEFE9EB8(&v50, v54);
    v47 = v51;
    v48 = v52;
    v49 = v53;
    sub_1CEFE9EB8(v54, &v55);
    v8 = v39;
    v30 = *(v39 + 40);
    result = sub_1CF9E7878();
    v31 = -1 << *(v8 + 32);
    v32 = result & ~v31;
    v33 = v32 >> 6;
    if (((-1 << v32) & ~*(v14 + 8 * (v32 >> 6))) == 0)
    {
      v34 = 0;
      v35 = (63 - v31) >> 6;
      while (++v33 != v35 || (v34 & 1) == 0)
      {
        v36 = v33 == v35;
        if (v33 == v35)
        {
          v33 = 0;
        }

        v34 |= v36;
        v37 = *(v14 + 8 * v33);
        if (v37 != -1)
        {
          v18 = __clz(__rbit64(~v37)) + (v33 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v18 = __clz(__rbit64((-1 << v32) & ~*(v14 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v12 &= v12 - 1;
    *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    v19 = *(v8 + 48) + 40 * v18;
    *v19 = v47;
    *(v19 + 16) = v48;
    *(v19 + 32) = v49;
    result = sub_1CEFE9EB8(&v55, (*(v8 + 56) + 32 * v18));
    ++*(v8 + 16);
  }

  while (1)
  {
    v20 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v20 >= v13)
    {

      return v8;
    }

    v12 = *(v9 + 8 * v20);
    ++v16;
    if (v12)
    {
      v16 = v20;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_1CF7BC108(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4930, &unk_1CFA17120);
    v4 = sub_1CF9E7BE8();
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC8];
  }

  v5 = sub_1CEFD57E0(0, &unk_1EDEA3430, 0x1E69673A0);
  v6 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = v7 + 63;
  if (v5 == MEMORY[0x1E69E6158])
  {
    v27 = v10 >> 6;

    v28 = 0;
    if (v9)
    {
      goto LABEL_28;
    }

LABEL_29:
    while (1)
    {
      v34 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v34 >= v27)
      {
LABEL_36:

        return v4;
      }

      v9 = *(v6 + 8 * v34);
      ++v28;
      if (v9)
      {
        while (1)
        {
          v35 = __clz(__rbit64(v9));
          v9 &= v9 - 1;
          v36 = (v34 << 9) | (8 * v35);
          v43 = *(*(a1 + 56) + v36);
          v37 = *(*(a1 + 48) + v36);

          __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEE20, &qword_1CFA0CD90);
          swift_dynamicCast();
          result = sub_1CF7BF8D8(v37);
          if (v38)
          {
            v29 = *(v4 + 48);
            v30 = *(v29 + 8 * result);
            *(v29 + 8 * result) = v37;
            v31 = result;

            v32 = *(v4 + 56);
            v33 = *(v32 + 8 * v31);
            *(v32 + 8 * v31) = v44;

            v28 = v34;
            if (!v9)
            {
              goto LABEL_29;
            }
          }

          else
          {
            v39 = *(v4 + 16);
            if (v39 >= *(v4 + 24))
            {
              goto LABEL_40;
            }

            *(v4 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
            *(*(v4 + 48) + 8 * result) = v37;
            *(*(v4 + 56) + 8 * result) = v44;
            *(v4 + 16) = v39 + 1;
            v28 = v34;
            if (!v9)
            {
              goto LABEL_29;
            }
          }

LABEL_28:
          v34 = v28;
        }
      }
    }
  }

  else
  {
    v11 = v10 >> 6;
    v12 = v4 + 64;

    v14 = 0;
    while (v9)
    {
LABEL_16:
      v17 = (v14 << 9) | (8 * __clz(__rbit64(v9)));
      v42 = *(*(a1 + 56) + v17);
      v18 = *(*(a1 + 48) + v17);

      __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEE20, &qword_1CFA0CD90);
      swift_dynamicCast();
      v19 = *(v4 + 40);
      result = sub_1CF9E7558();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v12 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_38;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      v9 &= v9 - 1;
      *(v12 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v4 + 48) + 8 * v15) = v18;
      *(*(v4 + 56) + 8 * v15) = v44;
      ++*(v4 + 16);
    }

    while (1)
    {
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v16 >= v11)
      {
        goto LABEL_36;
      }

      v9 = *(v6 + 8 * v16);
      ++v14;
      if (v9)
      {
        v14 = v16;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1CF7BC4CC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0B98, &unk_1CFA07A30);
    v2 = sub_1CF9E7BE8();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (v9 << 9) | (8 * __clz(__rbit64(v5)));
    v15 = *(*(a1 + 56) + v13);
    *&v33[0] = *(*(a1 + 48) + v13);
    v14 = *&v33[0];
    type metadata accessor for NSFileProviderItemIdentifier(0);
    v16 = v14;
    v15;
    swift_dynamicCast();
    swift_dynamicCast();
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_1CEFE9EB8(&v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_1CEFE9EB8(v32, v33);
    v17 = *(v2 + 40);
    result = sub_1CF9E7878();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_1CEFE9EB8(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1CF7BC790(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  if ((a2 & 0x100) == 0)
  {
    if ((a4 & 0x100) != 0)
    {
      goto LABEL_7;
    }

    if (a2)
    {
      if (a2 == 1)
      {
        if (a4 != 1 || a1 != a3)
        {
LABEL_28:
          sub_1CEFD0988(a1, a2, 0);
          sub_1CEFD0988(a3, a4, 0);
          v12 = a1;
          v13 = a2;
          LOBYTE(v14) = 0;
          goto LABEL_8;
        }
      }

      else if (a1)
      {
        if (a4 != 2 || a3 != 1)
        {
          goto LABEL_28;
        }
      }

      else if (a4 != 2 || a3)
      {
        goto LABEL_28;
      }
    }

    else if (a4 || a1 != a3)
    {
      goto LABEL_28;
    }

    sub_1CEFD0988(a1, a2, 0);
    sub_1CEFD0988(a3, a4, 0);
    v17 = a1;
    v18 = a2;
    v19 = 0;
    goto LABEL_27;
  }

  if ((a4 & 0x100) == 0)
  {
LABEL_7:
    sub_1CEFD0988(a1, a2, BYTE1(a2) & 1);
    sub_1CEFD0988(a3, a4, BYTE1(a4) & 1);
    sub_1CEFD0994(a1, a2, BYTE1(a2) & 1);
    v12 = a3;
    v13 = a4;
    v14 = (a4 >> 8) & 1;
    goto LABEL_8;
  }

  v8 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v10 = v9;
  if (v8 != _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() || v10 != v11)
  {
    v16 = sub_1CF9E8048();
    sub_1CEFD0988(a1, a2, 1);
    sub_1CEFD0988(a3, a4, 1);

    sub_1CEFD0994(a3, a4, 1);
    if (v16)
    {
      goto LABEL_15;
    }

    v12 = a1;
    v13 = a2;
    LOBYTE(v14) = 1;
LABEL_8:
    sub_1CEFD0994(v12, v13, v14);
    return 0;
  }

  sub_1CEFD0988(a1, a2, 1);
  sub_1CEFD0988(a3, a4, 1);

  sub_1CEFD0994(a3, a4, 1);
LABEL_15:
  v17 = a1;
  v18 = a2;
  v19 = 1;
LABEL_27:
  sub_1CEFD0994(v17, v18, v19);
  return 1;
}

uint64_t sub_1CF7BC9E4(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  if ((a2 & 0x100) == 0)
  {
    if ((a4 & 0x100) == 0)
    {
      v12 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v14 = v13;
      if (v12 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v14 == v15)
      {
        sub_1CF48034C(a1, a2, 0);
        sub_1CF48034C(a3, a4, 0);

        sub_1CF1E53F8(a3, a4, 0);
      }

      else
      {
        v16 = sub_1CF9E8048();
        sub_1CF48034C(a1, a2, 0);
        sub_1CF48034C(a3, a4, 0);

        sub_1CF1E53F8(a3, a4, 0);
        if ((v16 & 1) == 0)
        {
          v8 = a1;
          v9 = a2;
          LOBYTE(v10) = 0;
          goto LABEL_10;
        }
      }

      v17 = a1;
      v18 = a2;
      v19 = 0;
      goto LABEL_27;
    }

LABEL_9:
    sub_1CF48034C(a1, a2, BYTE1(a2) & 1);
    sub_1CF48034C(a3, a4, BYTE1(a4) & 1);
    sub_1CF1E53F8(a1, a2, BYTE1(a2) & 1);
    v8 = a3;
    v9 = a4;
    v10 = (a4 >> 8) & 1;
LABEL_10:
    sub_1CF1E53F8(v8, v9, v10);
    return 0;
  }

  if ((a4 & 0x100) == 0)
  {
    goto LABEL_9;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      if (a4 != 1 || a1 != a3)
      {
LABEL_28:
        sub_1CF48034C(a1, a2, 1);
        sub_1CF48034C(a3, a4, 1);
        v8 = a1;
        v9 = a2;
        LOBYTE(v10) = 1;
        goto LABEL_10;
      }
    }

    else if (a1)
    {
      if (a4 != 2 || a3 != 1)
      {
        goto LABEL_28;
      }
    }

    else if (a4 != 2 || a3)
    {
      goto LABEL_28;
    }
  }

  else if (a4 || a1 != a3)
  {
    goto LABEL_28;
  }

  sub_1CF48034C(a1, a2, 1);
  sub_1CF48034C(a3, a4, 1);
  v17 = a1;
  v18 = a2;
  v19 = 1;
LABEL_27:
  sub_1CF1E53F8(v17, v18, v19);
  return 1;
}

BOOL sub_1CF7BCC38(void *a1, void *a2, void *a3, unsigned __int8 a4, unint64_t a5, unint64_t a6, unint64_t a7, unsigned __int8 a8)
{
  if (a4 <= 3u)
  {
    if (a4 <= 1u)
    {
      if (!a4)
      {
        if (!a8)
        {
          v14 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v16 = v15;
          if (v14 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v16 == v17)
          {
            sub_1CF1FB2C0(a5, a6, a7, 0);
            v18 = a1;
            v19 = a1;
            v20 = a2;
            v21 = a3;
            v22 = 0;
LABEL_32:
            sub_1CF1FB2C0(v19, v20, v21, v22);

LABEL_64:

            return 1;
          }

          v75 = sub_1CF9E8048();
          sub_1CF1FB2C0(a5, a6, a7, 0);
          v76 = a1;
          v77 = a1;
          v78 = a2;
          v79 = a3;
          v80 = 0;
LABEL_59:
          sub_1CF1FB2C0(v77, v78, v79, v80);

LABEL_68:

          return v75 & 1;
        }

        return 0;
      }

      if (a8 == 1)
      {
        v41 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v43 = v42;
        if (v41 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v43 == v44)
        {
          sub_1CF1FB2C0(a5, a6, a7, 1u);
          sub_1CF1FB2C0(a1, a2, a3, 1u);
        }

        else
        {
          v70 = sub_1CF9E8048();
          sub_1CF1FB2C0(a5, a6, a7, 1u);
          sub_1CF1FB2C0(a1, a2, a3, 1u);

          if ((v70 & 1) == 0)
          {
            goto LABEL_66;
          }
        }

        v71 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v73 = v72;
        if (v71 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v73 == v74)
        {

          goto LABEL_61;
        }

        v83 = sub_1CF9E8048();

        if (v83)
        {
LABEL_61:
          v84 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v86 = v85;
          if (v84 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v86 == v87)
          {

            goto LABEL_64;
          }

          v75 = sub_1CF9E8048();

          goto LABEL_68;
        }

LABEL_66:

        return 0;
      }

      v56 = a1;
      v57 = a8;
      sub_1CF1FB2C0(a5, a6, a7, a8);
      sub_1CF1FB2C0(v56, a2, a3, 1u);

LABEL_42:
      sub_1CF484340(a5, a6, a7, v57);
      return 0;
    }

    if (a4 == 2)
    {
      if (a8 != 2)
      {
        v56 = a1;
        v57 = a8;
        sub_1CF1FB2C0(a5, a6, a7, a8);
        sub_1CF1FB2C0(v56, a2, a3, 2u);
        goto LABEL_42;
      }

      v30 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v32 = v31;
      if (v30 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v32 == v33)
      {
        sub_1CF1FB2C0(a5, a6, a7, 2u);
        sub_1CF1FB2C0(a1, a2, a3, 2u);
      }

      else
      {
        v64 = sub_1CF9E8048();
        sub_1CF1FB2C0(a5, a6, a7, 2u);
        sub_1CF1FB2C0(a1, a2, a3, 2u);

        if ((v64 & 1) == 0)
        {

LABEL_73:
          return 0;
        }
      }

      if (a2)
      {
        if (a6)
        {
          v65 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v67 = v66;
          if (v65 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v67 == v68)
          {

            goto LABEL_64;
          }

          v88 = sub_1CF9E8048();

          return (v88 & 1) != 0;
        }
      }

      else
      {

        if (!a6)
        {
          return 1;
        }

        a2 = a6;
      }

      goto LABEL_73;
    }

    if (a8 != 3)
    {
      return 0;
    }

    v51 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v53 = v52;
    if (v51 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v53 == v54)
    {
      v55 = a5;

      sub_1CF484340(a5, a6, a7, 3u);
      return 1;
    }

    v58 = sub_1CF9E8048();
    v81 = a5;

    v60 = a5;
    v61 = a6;
    v62 = a7;
    v63 = 3;
LABEL_57:
    sub_1CF484340(v60, v61, v62, v63);
    return v58 & 1;
  }

  if (a4 > 5u)
  {
    if (a4 != 6)
    {
      return a8 == 7 && !(a6 | a5 | a7);
    }

    if (a8 == 6)
    {
      v34 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v36 = v35;
      if (v34 != _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() || v36 != v37)
      {
        v58 = sub_1CF9E8048();
        v69 = a5;

        v60 = a5;
        v61 = a6;
        v62 = a7;
        v63 = 6;
        goto LABEL_57;
      }

      v38 = a5;

      sub_1CF484340(a5, a6, a7, 6u);
      return 1;
    }
  }

  else
  {
    if (a4 == 4)
    {
      if (a8 != 4)
      {
        return 0;
      }

      v23 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v25 = v24;
      if (v23 != _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() || v25 != v26)
      {
        v58 = sub_1CF9E8048();
        v59 = a5;

        v60 = a5;
        v61 = a6;
        v62 = a7;
        v63 = 4;
        goto LABEL_57;
      }

      v27 = a5;

      sub_1CF484340(a5, a6, a7, 4u);
      return 1;
    }

    if (a8 == 5)
    {
      v47 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v49 = v48;
      if (v47 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v49 == v50)
      {
        sub_1CF1FB2C0(a5, a6, a7, 5u);
        v18 = a1;
        v19 = a1;
        v20 = a2;
        v21 = a3;
        v22 = 5;
        goto LABEL_32;
      }

      v75 = sub_1CF9E8048();
      sub_1CF1FB2C0(a5, a6, a7, 5u);
      v76 = a1;
      v77 = a1;
      v78 = a2;
      v79 = a3;
      v80 = 5;
      goto LABEL_59;
    }
  }

  return 0;
}

uint64_t sub_1CF7BD478(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 41);
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[4];
  v9 = *(a2 + 40);
  v10 = *(a2 + 41);
  if (v4 > 3)
  {
    if (*(a1 + 41) <= 5u)
    {
      if (v4 == 4)
      {
        if (v10 == 4)
        {
          goto LABEL_29;
        }
      }

      else if (v10 == 5)
      {
        goto LABEL_29;
      }

      return 0;
    }

    if (v4 == 6)
    {
      if (v10 == 6)
      {
        goto LABEL_29;
      }

      return 0;
    }

    if (v10 != 7)
    {
      return 0;
    }

    return !(a2[1] | v5 | v7 | a2[3] | v8) && v9 == 0;
  }

  v11 = a1[2];
  v12 = a1[3];
  v13 = a2[3];
  if (*(a1 + 41) > 1u)
  {
    if (v4 != 2)
    {
      if (v10 == 3)
      {
        goto LABEL_29;
      }

      return 0;
    }

    if (v10 != 2)
    {
      return 0;
    }

    if (a1[1])
    {
      if (a1[1] == 1)
      {
        result = 0;
        if (v6 != 1 || v3 != v5)
        {
          return result;
        }
      }

      else
      {
        result = 0;
        if (v3)
        {
          if (v6 != 2 || v5 != 1)
          {
            return result;
          }
        }

        else if (v6 != 2 || v5)
        {
          return result;
        }
      }
    }

    else
    {
      result = 0;
      if (a2[1] || v3 != v5)
      {
        return result;
      }
    }

    if (v12 == 255)
    {
      if (v13 != 255)
      {
        return 0;
      }
    }

    else
    {
      if (v13 == 255)
      {
        return 0;
      }

      if (v12)
      {
        if (v12 == 1)
        {
          if (v13 != 1 || v11 != v7)
          {
            return 0;
          }
        }

        else if (v11)
        {
          if (v13 != 2 || v7 != 1)
          {
            return 0;
          }
        }

        else if (v13 != 2 || v7)
        {
          return 0;
        }
      }

      else if (a2[3] || v11 != v7)
      {
        return 0;
      }
    }

    return 1;
  }

  if (!*(a1 + 41))
  {
    if (!*(a2 + 41))
    {
LABEL_29:
      if (a1[1])
      {
        if (a1[1] == 1)
        {
          if (v6 != 1 || v3 != v5)
          {
            return 0;
          }
        }

        else if (v3)
        {
          if (v6 != 2 || v5 != 1)
          {
            return 0;
          }
        }

        else if (v6 != 2 || v5)
        {
          return 0;
        }
      }

      else if (a2[1] || v3 != v5)
      {
        return 0;
      }

      return 1;
    }

    return 0;
  }

  if (v10 != 1)
  {
    return 0;
  }

  v15 = a1[4];
  v16 = *(a1 + 40);
  result = a1[1];
  if (v2)
  {
    if (result == 1)
    {
      result = 0;
      if (v6 != 1 || v3 != v5)
      {
        return result;
      }

      goto LABEL_78;
    }

    result = 0;
    if (v3)
    {
      if (v6 != 2 || v5 != 1)
      {
        return result;
      }

LABEL_78:
      if (v12)
      {
        if (v12 == 1)
        {
          result = 0;
          if (v13 != 1 || v11 != v7)
          {
            return result;
          }
        }

        else
        {
          result = 0;
          if (v11)
          {
            if (v13 != 2 || v7 != 1)
            {
              return result;
            }
          }

          else if (v13 != 2 || v7)
          {
            return result;
          }
        }
      }

      else
      {
        result = 0;
        if (v13 || v11 != v7)
        {
          return result;
        }
      }

      if (v16)
      {
        if (v16 == 1)
        {
          if (v9 != 1 || v15 != v8)
          {
            return 0;
          }
        }

        else if (v15)
        {
          if (v9 != 2 || v8 != 1)
          {
            return 0;
          }
        }

        else if (v9 != 2 || v8)
        {
          return 0;
        }
      }

      else if (v9 || v15 != v8)
      {
        return 0;
      }

      return 1;
    }

    if (v6 == 2 && !v5)
    {
      goto LABEL_78;
    }
  }

  else if (!v6 && v3 == v5)
  {
    goto LABEL_78;
  }

  return result;
}

void sub_1CF7BD790(uint64_t a1, void *a2, void *a3, void *a4, unsigned __int8 a5)
{
  if (a5 > 3u)
  {
    if (a5 > 5u)
    {
      if (a5 != 6)
      {
        MEMORY[0x1D386A470](4);
        return;
      }

      MEMORY[0x1D386A470](7);
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v15 = a2;
      sub_1CF9E69C8();

      v10 = a2;
      v11 = a3;
      v12 = a4;
      v13 = 6;
    }

    else
    {
      if (a5 != 4)
      {
        v8 = 6;
        goto LABEL_15;
      }

      MEMORY[0x1D386A470](5);
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v9 = a2;
      sub_1CF9E69C8();

      v10 = a2;
      v11 = a3;
      v12 = a4;
      v13 = 4;
    }
  }

  else
  {
    if (a5 <= 1u)
    {
      if (a5)
      {
        MEMORY[0x1D386A470](1);
        _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v16 = a2;
        v17 = a3;
        v18 = a4;
        sub_1CF9E69C8();

        _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        sub_1CF9E69C8();

        _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        sub_1CF9E69C8();

LABEL_16:

        return;
      }

      v8 = 0;
LABEL_15:
      MEMORY[0x1D386A470](v8);
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v19 = a2;
      sub_1CF9E69C8();

      goto LABEL_16;
    }

    if (a5 == 2)
    {
      MEMORY[0x1D386A470](2);
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v21 = a3;
      v22 = a2;
      sub_1CF9E69C8();

      sub_1CF9E81F8();
      if (a3)
      {
        _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        sub_1CF9E69C8();

        v14 = v21;
      }

      else
      {
        v14 = v22;
      }

      return;
    }

    MEMORY[0x1D386A470](3);
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v20 = a2;
    sub_1CF9E69C8();

    v10 = a2;
    v11 = a3;
    v12 = a4;
    v13 = 3;
  }

  sub_1CF484340(v10, v11, v12, v13);
}

uint64_t sub_1CF7BDAE8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 41);
  if (v3 > 3)
  {
    if (*(v0 + 41) > 5u)
    {
      if (v3 != 6)
      {
        v10 = 4;
        return MEMORY[0x1D386A470](v10);
      }

      v6 = 7;
    }

    else if (v3 == 4)
    {
      v6 = 5;
    }

    else
    {
      v6 = 6;
    }

    goto LABEL_24;
  }

  v4 = v0[2];
  v5 = *(v0 + 24);
  if (*(v0 + 41) > 1u)
  {
    if (v3 == 2)
    {
      MEMORY[0x1D386A470](2);
      if (v2)
      {
        if (v2 == 1)
        {
          MEMORY[0x1D386A470](1);
          MEMORY[0x1D386A4A0](v1);
          if (v5 == 255)
          {
            return sub_1CF9E81F8();
          }
        }

        else
        {
          if (v1)
          {
            v11 = 3;
          }

          else
          {
            v11 = 2;
          }

          MEMORY[0x1D386A470](v11);
          if (v5 == 255)
          {
            return sub_1CF9E81F8();
          }
        }
      }

      else
      {
        MEMORY[0x1D386A470](0);
        sub_1CF9E8208();
        if (v5 == 255)
        {
          return sub_1CF9E81F8();
        }
      }

      sub_1CF9E81F8();
      if (v5)
      {
        if (v5 == 1)
        {
          MEMORY[0x1D386A470](1);
          return MEMORY[0x1D386A4A0](v4);
        }

        if (v4)
        {
          goto LABEL_29;
        }

        goto LABEL_47;
      }

LABEL_27:
      MEMORY[0x1D386A470](0);
      return sub_1CF9E8208();
    }

    v6 = 3;
LABEL_24:
    MEMORY[0x1D386A470](v6);
    if (v2)
    {
      if (v2 == 1)
      {
        MEMORY[0x1D386A470](1);
        return MEMORY[0x1D386A4A0](v1);
      }

      if (v1)
      {
        goto LABEL_29;
      }

LABEL_47:
      v10 = 2;
      return MEMORY[0x1D386A470](v10);
    }

    goto LABEL_27;
  }

  if (!*(v0 + 41))
  {
    v6 = 0;
    goto LABEL_24;
  }

  v8 = v0[4];
  v9 = *(v0 + 40);
  MEMORY[0x1D386A470](1);
  if (v2)
  {
    if (v2 == 1)
    {
      MEMORY[0x1D386A470](1);
      MEMORY[0x1D386A4A0](v1);
      if (v5)
      {
        goto LABEL_18;
      }

LABEL_36:
      MEMORY[0x1D386A470](0);
      sub_1CF9E8208();
      if (!v9)
      {
        goto LABEL_27;
      }

      goto LABEL_20;
    }

    if (v1)
    {
      MEMORY[0x1D386A470](3);
      if (!v5)
      {
        goto LABEL_36;
      }
    }

    else
    {
      MEMORY[0x1D386A470](2);
      if (!v5)
      {
        goto LABEL_36;
      }
    }
  }

  else
  {
    MEMORY[0x1D386A470](0);
    sub_1CF9E8208();
    if (!v5)
    {
      goto LABEL_36;
    }
  }

LABEL_18:
  if (v5 == 1)
  {
    MEMORY[0x1D386A470](1);
    MEMORY[0x1D386A4A0](v4);
    if (!v9)
    {
      goto LABEL_27;
    }
  }

  else if (v4)
  {
    MEMORY[0x1D386A470](3);
    if (!v9)
    {
      goto LABEL_27;
    }
  }

  else
  {
    MEMORY[0x1D386A470](2);
    if (!v9)
    {
      goto LABEL_27;
    }
  }

LABEL_20:
  if (v9 == 1)
  {
    MEMORY[0x1D386A470](1);
    return MEMORY[0x1D386A4A0](v8);
  }

  if (!v8)
  {
    goto LABEL_47;
  }

LABEL_29:
  v10 = 3;
  return MEMORY[0x1D386A470](v10);
}

uint64_t sub_1CF7BDD8C(uint64_t a1, uint64_t a2, __int16 a3)
{
  if ((a3 & 0x100) != 0)
  {
    v5 = a3;
    MEMORY[0x1D386A470](1);
    if (v5)
    {
      if (v5 == 1)
      {
        MEMORY[0x1D386A470](1);
        return MEMORY[0x1D386A4A0](a2);
      }

      else
      {
        if (a2)
        {
          v6 = 3;
        }

        else
        {
          v6 = 2;
        }

        return MEMORY[0x1D386A470](v6);
      }
    }

    else
    {
      MEMORY[0x1D386A470](0);
      return sub_1CF9E8208();
    }
  }

  else
  {
    MEMORY[0x1D386A470](0);
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    sub_1CF9E69C8();
  }
}

uint64_t sub_1CF7BDE60()
{
  sub_1CF9E81D8();
  sub_1CF9E69C8();
  return sub_1CF9E8228();
}

uint64_t sub_1CF7BDEDC()
{
  sub_1CF9E81D8();
  sub_1CF9E69C8();
  return sub_1CF9E8228();
}

uint64_t sub_1CF7BDF34@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1CF9E7C78();

  *a2 = v5 != 0;
  return result;
}

void sub_1CF7BDF88(uint64_t a1@<X8>)
{
  strcpy(a1, "hourlyValues");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

uint64_t sub_1CF7BDFCC@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1CF9E7C78();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1CF7BE024(uint64_t a1)
{
  v2 = sub_1CF7BE644();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF7BE060(uint64_t a1)
{
  v2 = sub_1CF7BE644();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FPDDailyTelemetryCounter.init(from:)(uint64_t *a1)
{
  v65 = sub_1CF9E5CF8();
  v62 = *(v65 - 8);
  v2 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v4 = v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v51 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C48F0, &qword_1CFA16E70);
  v63 = *(v8 - 8);
  v9 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v51 - v10;
  v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF7BE644();
  v14 = v64;
  sub_1CF9E8298();
  if (v14)
  {

    __swift_destroy_boxed_opaque_existential_1(a1);
    return v12;
  }

  else
  {
    v60 = v7;
    v64 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C48F8, &unk_1CFA16E78);
    sub_1CF7D50B8(&qword_1EDEA3828);
    sub_1CF9E7D88();
    v51[1] = 0;
    v52 = v12;
    v53 = v8;
    v54 = a1;
    v16 = v66;
    v17 = sub_1CF4E3BA0(MEMORY[0x1E69E7CC0]);
    v18 = 0;
    v19 = v16 + 8;
    v20 = 1 << *(v16 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & v16[8];
    v23 = (v20 + 63) >> 6;
    v58 = v16;
    v59 = (v62 + 16);
    v56 = v11;
    v57 = (v62 + 8);
    v24 = v64;
    v25 = v60;
    v55 = v16 + 8;
    while (v22)
    {
      v28 = v18;
LABEL_15:
      v29 = __clz(__rbit64(v22)) | (v28 << 6);
      v30 = *(v58[6] + 8 * v29);
      v61 = *(v58[7] + 4 * v29);
      sub_1CF9E5BE8();
      v31 = *v59;
      (*v59)(v24, v25, v65);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v66 = v17;
      v34 = sub_1CF7BFDB0(v24);
      v35 = v17[2];
      v36 = (v33 & 1) == 0;
      v37 = v35 + v36;
      if (__OFADD__(v35, v36))
      {
        goto LABEL_26;
      }

      v38 = v33;
      if (v17[3] >= v37)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1CF7D2FD0();
        }
      }

      else
      {
        sub_1CF7CB578(v37, isUniquelyReferenced_nonNull_native);
        v39 = sub_1CF7BFDB0(v64);
        if ((v38 & 1) != (v40 & 1))
        {
          goto LABEL_28;
        }

        v34 = v39;
      }

      v22 &= v22 - 1;
      v17 = v66;
      if (v38)
      {
        *(v66[7] + 4 * v34) = v61;
        v26 = *v57;
        v24 = v64;
        v27 = v65;
        (*v57)(v64, v65);
        v25 = v60;
        v26(v60, v27);
      }

      else
      {
        v66[(v34 >> 6) + 8] |= 1 << v34;
        v41 = v62;
        v43 = v64;
        v42 = v65;
        v31(v17[6] + *(v62 + 72) * v34, v64, v65);
        *(v17[7] + 4 * v34) = v61;
        v24 = v43;
        v44 = *(v41 + 8);
        v44(v43, v42);
        v25 = v60;
        v44(v60, v42);
        v45 = v17[2];
        v46 = __OFADD__(v45, 1);
        v47 = v45 + 1;
        if (v46)
        {
          goto LABEL_27;
        }

        v17[2] = v47;
      }

      v18 = v28;
      v19 = v55;
      v11 = v56;
    }

    while (1)
    {
      v28 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v28 >= v23)
      {

        sub_1CF7BBC30(v17);

        v48 = objc_allocWithZone(MEMORY[0x1E695DF90]);
        v49 = sub_1CF9E6618();

        v50 = [v48 initWithDictionary_];

        v12 = v52;
        [v52 setHourlyValues_];

        (*(v63 + 8))(v11, v53);
        __swift_destroy_boxed_opaque_existential_1(v54);
        return v12;
      }

      v22 = v19[v28];
      ++v18;
      if (v22)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    result = sub_1CF9E8108();
    __break(1u);
  }

  return result;
}

unint64_t sub_1CF7BE644()
{
  result = qword_1EDEA3580;
  if (!qword_1EDEA3580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA3580);
  }

  return result;
}

uint64_t FPDDailyTelemetryCounter.encode(to:)(void *a1)
{
  v43 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v36 - v5;
  v7 = sub_1CF9E5CF8();
  v41 = *(v7 - 8);
  v8 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4900, qword_1CFA16E88);
  v42 = *(v11 - 8);
  v12 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v44 = &v36 - v13;
  v14 = objc_sync_enter(v1);
  if (v14)
  {
    goto LABEL_28;
  }

  v15 = [v1 hourlyValues];
  if (!v15 || (v16 = v15, [v15 copy], v16, sub_1CF9E7728(), swift_unknownObjectRelease(), sub_1CEFD57E0(0, &qword_1EDEA3708, 0x1E695DF20), (swift_dynamicCast() & 1) == 0))
  {
    *&v47 = 0;
  }

  result = objc_sync_exit(v1);
  if (result)
  {
    MEMORY[0x1EEE9AC00](result);
    *(&v36 - 2) = v1;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5290, (&v36 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v18 = v47;
  if (v47)
  {
    v39 = v11;
    v40 = v2;
    v19 = v43[4];
    __swift_project_boxed_opaque_existential_1(v43, v43[3]);
    sub_1CF7BE644();
    sub_1CF9E82A8();
    v43 = sub_1CF4E3D88(MEMORY[0x1E69E7CC0]);
    v38 = v18;
    sub_1CF9E7208();
    sub_1CF9E7218();
    v51 = v47;
    v52 = v48;
    v53 = v49;
    v54 = v50;
    if (*(&v48 + 1))
    {
      v20 = (v41 + 56);
      v21 = (v41 + 32);
      v22 = (v41 + 8);
      do
      {
        sub_1CEFE9EB8(&v53, &v47);
        sub_1CEFE9EB8(&v51, v46);
        if (swift_dynamicCast())
        {
          (*v20)(v6, 0, 1, v7);
          (*v21)(v10, v6, v7);
          sub_1CEFD1104(&v47, v46);
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_13;
          }

          LODWORD(v41) = v45;
          sub_1CF9E5BF8();
          v24 = v23;
          v1 = v43;
          LODWORD(v37) = swift_isUniquelyReferenced_nonNull_native();
          *&v46[0] = v1;
          v26 = sub_1CF7BFE84(v24);
          v27 = v1[2];
          v28 = (v25 & 1) == 0;
          v14 = v27 + v28;
          if (__OFADD__(v27, v28))
          {
            __break(1u);
LABEL_27:
            __break(1u);
LABEL_28:
            MEMORY[0x1EEE9AC00](v14);
            *(&v36 - 2) = v1;
            fp_preconditionFailure(_:file:line:)(sub_1CF1C5288, (&v36 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
          }

          if (v1[3] >= v14)
          {
            if ((v37 & 1) == 0)
            {
              LODWORD(v43) = v25;
              v37 = v26;
              sub_1CF7D3240();
              v26 = v37;
              LOBYTE(v25) = v43;
            }
          }

          else
          {
            LODWORD(v43) = v25;
            sub_1CF7CB938(v14, v37);
            v29 = sub_1CF7BFE84(v24);
            v30 = v25 & 1;
            LOBYTE(v25) = v43;
            if ((v43 & 1) != v30)
            {
              result = sub_1CF9E8108();
              __break(1u);
              return result;
            }

            v26 = v29;
          }

          v1 = *&v46[0];
          v43 = *&v46[0];
          if (v25)
          {
            *(*(*&v46[0] + 56) + 4 * v26) = v41;
LABEL_13:
            (*v22)(v10, v7);
            __swift_destroy_boxed_opaque_existential_1(&v47);
            goto LABEL_10;
          }

          *(*&v46[0] + 8 * (v26 >> 6) + 64) |= 1 << v26;
          *(v1[6] + 8 * v26) = v24;
          *(v1[7] + 4 * v26) = v41;
          (*v22)(v10, v7);
          v14 = __swift_destroy_boxed_opaque_existential_1(&v47);
          v31 = v1[2];
          v32 = __OFADD__(v31, 1);
          v33 = v31 + 1;
          if (v32)
          {
            goto LABEL_27;
          }

          v1[2] = v33;
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1(&v47);
          (*v20)(v6, 1, 1, v7);
          sub_1CEFCCC44(v6, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
        }

LABEL_10:
        sub_1CF9E7218();
        v51 = v47;
        v52 = v48;
        v53 = v49;
        v54 = v50;
      }

      while (*(&v48 + 1));
    }

    *&v51 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C48F8, &unk_1CFA16E78);
    sub_1CF7D50B8(&qword_1EDEA3830);
    v34 = v39;
    v35 = v44;
    sub_1CF9E7F08();

    return (*(v42 + 8))(v35, v34);
  }

  return result;
}

uint64_t sub_1CF7BEDC4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = FPDDailyTelemetryCounter.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1CF7BEE14(unint64_t a1)
{
  v2 = v1;
  v4 = sub_1CF9E5CF8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_sync_enter(v2);
  if (v9)
  {
LABEL_8:
    MEMORY[0x1EEE9AC00](v9);
    *(&v15 - 2) = v2;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v15 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  sub_1CF9E5CE8();
  v10 = sub_1CF9E5C48();
  v11 = [v2 getValueAt_];

  v12 = v11 | a1;
  if (v12 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v12 > 0x7FFFFFFF)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v13 = sub_1CF9E5C48();
  [v2 replaceValue:v12 at:v13];

  (*(v5 + 8))(v8, v4);
  result = objc_sync_exit(v2);
  if (result)
  {
    MEMORY[0x1EEE9AC00](result);
    *(&v15 - 2) = v2;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v15 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  return result;
}

id sub_1CF7BF05C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SpeculativeDownloadsPreventReasonsTelem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1CF7BF090(int a1)
{
  v3 = *(v1 + 40);
  sub_1CF9E81D8();
  sub_1CF9E8208();
  v4 = sub_1CF9E8228();
  return sub_1CF7C11DC(a1, v4);
}

unint64_t sub_1CF7BF0F8(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  v4 = sub_1CF486054();

  return sub_1CF7BFF98(a1, v4);
}

unint64_t sub_1CF7BF13C(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 26);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 24);
  sub_1CF9E81D8();
  sub_1CF1A0B24(v13, v4, v5, v6, v10 | (v7 << 16));
  sub_1CF9E69C8();
  v11 = sub_1CF9E8228();

  return sub_1CF7C0244(a1, v11);
}

unint64_t sub_1CF7BF1F0(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1CF9E81D8();
  sub_1CF9E81F8();
  if (a1)
  {
    type metadata accessor for CFString(0);
    sub_1CF7D5264(&qword_1EC4C49A0, type metadata accessor for CFString);
    sub_1CF9E5E78();
  }

  v4 = sub_1CF9E8228();

  return sub_1CF7C0408(a1, v4);
}

unint64_t sub_1CF7BF2C0(uint64_t a1, char a2)
{
  v5 = *(v2 + 40);
  sub_1CF9E81D8();
  if (a2)
  {
    if (a2 == 1)
    {
      MEMORY[0x1D386A470](1);
      MEMORY[0x1D386A4A0](a1);
    }

    else
    {
      if (a1)
      {
        v6 = 3;
      }

      else
      {
        v6 = 2;
      }

      MEMORY[0x1D386A470](v6);
    }
  }

  else
  {
    MEMORY[0x1D386A470](0);
    sub_1CF9E8208();
  }

  v7 = sub_1CF9E8228();

  return sub_1CF7C0528(a1, a2, v7);
}

unint64_t sub_1CF7BF380(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_1CF9E81C8();
  return sub_1CF7C1B34(a1, v4);
}

unint64_t sub_1CF7BF3BC(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_1CF9E81D8();
  if (a1 <= 0x1Eu)
  {
    switch(a1)
    {
      case 0x1Cu:
        v4 = 0;
        goto LABEL_18;
      case 0x1Du:
        v4 = 1;
        goto LABEL_18;
      case 0x1Eu:
        v4 = 2;
        goto LABEL_18;
    }

LABEL_14:
    MEMORY[0x1D386A470](3);
    sub_1CF07FC44(a1);
    sub_1CF9E69C8();

    goto LABEL_19;
  }

  if (a1 > 0x20u)
  {
    if (a1 == 33)
    {
      v4 = 6;
      goto LABEL_18;
    }

    if (a1 == 34)
    {
      v4 = 7;
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  if (a1 == 31)
  {
    v4 = 4;
    goto LABEL_18;
  }

  if (a1 != 32)
  {
    goto LABEL_14;
  }

  v4 = 5;
LABEL_18:
  MEMORY[0x1D386A470](v4);
LABEL_19:
  v5 = sub_1CF9E8228();

  return sub_1CF7C05F8(a1, v5);
}

unint64_t sub_1CF7BF520(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD70, &qword_1CFA12AC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCC0, &unk_1CF9FCB50);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - v14;
  v16 = *(v2 + 40);
  sub_1CF9E81D8();
  sub_1CEFCCBDC(a1, v15, &unk_1EC4BF650, &unk_1CF9FCB40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = &qword_1CFA12AC0;
    sub_1CEFE55D0(v15, v7, &unk_1EC4BFD70, &qword_1CFA12AC0);
    MEMORY[0x1D386A470](1);
    sub_1CF1CE0C8();
    v18 = v7;
    v19 = &unk_1EC4BFD70;
  }

  else
  {
    v17 = &unk_1CF9FCB50;
    sub_1CEFE55D0(v15, v11, &unk_1EC4BFCC0, &unk_1CF9FCB50);
    MEMORY[0x1D386A470](0);
    sub_1CF1CDC08();
    v18 = v11;
    v19 = &unk_1EC4BFCC0;
  }

  sub_1CEFCCC44(v18, v19, v17);
  v20 = sub_1CF9E8228();
  return sub_1CF7C1248(a1, v20);
}

unint64_t sub_1CF7BF73C(void *a1, void *a2, void *a3, unsigned __int8 a4)
{
  v9 = *(v4 + 40);
  sub_1CF9E81D8();
  sub_1CF7BD790(v12, a1, a2, a3, a4);
  v10 = sub_1CF9E8228();

  return sub_1CF7C1710(a1, a2, a3, a4, v10);
}

unint64_t sub_1CF7BF7D4(uint64_t *a1)
{
  v3 = *(v1 + 40);
  sub_1CF9E81D8();
  sub_1CF7BDAE8();
  v4 = sub_1CF9E8228();

  return sub_1CF7C181C(a1, v4);
}

unint64_t sub_1CF7BF840(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v9 = *(v4 + 40);
  sub_1CF9E81D8();
  sub_1CF1A0B24(v12, a1, a2, a3, a4 & 0xFFFFFF);
  v10 = sub_1CF9E8228();

  return sub_1CF7C18D8(a1, a2, a3, a4 & 0xFFFFFF, v10);
}

unint64_t sub_1CF7BF8D8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1CF9E7558();
  return sub_1CF7C1A68(a1, v5, &unk_1EDEA3430, 0x1E69673A0);
}

unint64_t sub_1CF7BF928(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1CF9E7558();
  return sub_1CF7C1A68(a1, v5, &unk_1EDEAB5A0, 0x1E69674E8);
}

unint64_t sub_1CF7BF978(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1CF9E5EE8();
  v5 = MEMORY[0x1E69E83D8];
  sub_1CF7D5264(&unk_1EDEA3990, MEMORY[0x1E69E83D8]);
  v6 = sub_1CF9E6748();
  return sub_1CF7C295C(a1, v6, MEMORY[0x1E69E83D8], &qword_1EDEA3988, v5, MEMORY[0x1E69E83E8]);
}

unint64_t sub_1CF7BFA4C(uint64_t a1, void (*a2)(uint64_t))
{
  v5 = *(v2 + 40);
  sub_1CF9E81D8();
  a2(a1);
  v6 = sub_1CF9E8228();
  return sub_1CF7C1B34(a1, v6);
}

unint64_t sub_1CF7BFABC(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_1CF9E81D8();
  v4 = a1 >> 2;
  if (v4 == 55)
  {
    MEMORY[0x1D386A470](1);
  }

  else if (v4 == 63)
  {
    MEMORY[0x1D386A470](0);
  }

  else
  {
    MEMORY[0x1D386A470](2);
    sub_1CF1D88B0(v7, a1);
  }

  v5 = sub_1CF9E8228();

  return sub_1CF7C1BA0(a1, v5);
}

unint64_t sub_1CF7BFB8C(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_1CF9E81D8();
  sub_1CF9E69C8();

  v4 = sub_1CF9E8228();
  return sub_1CF7C2364(a1, v4);
}

unint64_t sub_1CF7BFC48(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1CF9E81D8();
  sub_1CEFF47E0(v6, *a1, *(a1 + 8) | (*(a1 + 9) << 8));
  sub_1CF1A0B24(v6, *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40) | (*(a1 + 42) << 16));
  v4 = sub_1CF9E8228();

  return sub_1CF7C24E4(a1, v4);
}

unint64_t sub_1CF7BFCDC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1CF9E5A58();
  v5 = MEMORY[0x1E6968FB0];
  sub_1CF7D5264(&qword_1EDEAB418, MEMORY[0x1E6968FB0]);
  v6 = sub_1CF9E6748();
  return sub_1CF7C295C(a1, v6, MEMORY[0x1E6968FB0], &qword_1EDEAB410, v5, MEMORY[0x1E6968FC8]);
}

unint64_t sub_1CF7BFDB0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1CF9E5CF8();
  v5 = MEMORY[0x1E6969530];
  sub_1CF7D5264(&unk_1EDEAB3C0, MEMORY[0x1E6969530]);
  v6 = sub_1CF9E6748();
  return sub_1CF7C295C(a1, v6, MEMORY[0x1E6969530], &qword_1EDEAB3B0, v5, MEMORY[0x1E6969550]);
}

unint64_t sub_1CF7BFE84(double a1)
{
  v3 = *(v1 + 40);
  v4 = sub_1CF9E81C8();

  return sub_1CF7C2AFC(v4, a1);
}

unint64_t sub_1CF7BFED0(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1CF9E81D8();
  sub_1CEFF47E0(v6, *(a1 + 16), *(a1 + 24) | (*(a1 + 25) << 8));
  v4 = sub_1CF9E8228();

  return sub_1CF7C2B64(a1, v4);
}

unint64_t sub_1CF7BFF48(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1CF9E7558();
  return sub_1CF7C1A68(a1, v5, &qword_1EC4C49B0, 0x1E6967478);
}

unint64_t sub_1CF7BFF98(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v25 = ~v3;
    v5 = 0xE500000000000000;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v27 + 48) + v4);
      v28 = v4;
      if (v7 > 3)
      {
        if (*(*(v27 + 48) + v4) > 5u)
        {
          if (v7 == 6)
          {
            v12 = 0xD000000000000011;
            v13 = 0x80000001CFA2C070;
          }

          else
          {
            v12 = 0xD00000000000001ALL;
            v13 = 0x80000001CFA2C090;
          }
        }

        else
        {
          v12 = v7 == 4 ? 0x7272655F7473616CLL : 0x797469726F697270;
          v13 = v7 == 4 ? 0xEA0000000000726FLL : 0xE800000000000000;
        }
      }

      else
      {
        v8 = 0xEF657461645F7972;
        if (v7 == 2)
        {
          v9 = 0x7465725F7478656ELL;
        }

        else
        {
          v9 = 0x7272655F7473616CLL;
        }

        if (v7 != 2)
        {
          v8 = 0xEF657461645F726FLL;
        }

        v10 = *(*(v27 + 48) + v4) ? 0x6F635F7972746572 : 0x6574617473;
        v11 = v7 ? 0xEB00000000746E75 : 0xE500000000000000;
        v12 = v7 <= 1 ? v10 : v9;
        v13 = v7 <= 1 ? v11 : v8;
      }

      v14 = 0xD00000000000001ALL;
      if (v6 == 6)
      {
        v14 = 0xD000000000000011;
      }

      v15 = 0x80000001CFA2C090;
      if (v6 == 6)
      {
        v15 = 0x80000001CFA2C070;
      }

      v16 = 0x797469726F697270;
      if (v6 == 4)
      {
        v16 = 0x7272655F7473616CLL;
      }

      v17 = 0xEA0000000000726FLL;
      if (v6 != 4)
      {
        v17 = 0xE800000000000000;
      }

      if (v6 <= 5)
      {
        v14 = v16;
        v15 = v17;
      }

      v18 = 0xEF657461645F7972;
      if (v6 == 2)
      {
        v19 = 0x7465725F7478656ELL;
      }

      else
      {
        v19 = 0x7272655F7473616CLL;
      }

      if (v6 != 2)
      {
        v18 = 0xEF657461645F726FLL;
      }

      if (v6)
      {
        v20 = 0x6F635F7972746572;
      }

      else
      {
        v20 = 0x6574617473;
      }

      if (v6)
      {
        v5 = 0xEB00000000746E75;
      }

      if (v6 <= 1)
      {
        v19 = v20;
        v18 = v5;
      }

      v21 = v6 <= 3 ? v19 : v14;
      v22 = v6 <= 3 ? v18 : v15;
      if (v12 == v21 && v13 == v22)
      {
        break;
      }

      v23 = sub_1CF9E8048();

      if (v23)
      {
        return v28;
      }

      v4 = (v28 + 1) & v25;
      v5 = 0xE500000000000000;
      if (((*(v26 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
      {
        return v4;
      }
    }

    return v28;
  }

  return v4;
}

unint64_t sub_1CF7C0244(uint64_t *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  v26 = v2 + 64;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v25 = ~v3;
    v6 = *a1;
    v5 = a1[1];
    v24 = a1[2];
    v23 = *(a1 + 24);
    v22 = *(a1 + 25);
    v21 = *(a1 + 26);
    v19 = a1[5];
    v20 = a1[4];
    v7 = *(v2 + 48);
    do
    {
      v8 = v7 + 48 * v4;
      v9 = *(v8 + 16);
      v10 = *(v8 + 24);
      v11 = *(v8 + 25);
      v12 = *(v8 + 26);
      v13 = *(v8 + 32);
      v14 = *(v8 + 40);
      v15 = *v8 == v6 && *(v8 + 8) == v5;
      if (!v15 && (sub_1CF9E8048() & 1) == 0)
      {
        goto LABEL_3;
      }

      if (v9 != v24 || v10 != v23)
      {
        goto LABEL_3;
      }

      if (v11 == 89)
      {
        if (v22 != 89)
        {
          goto LABEL_3;
        }
      }

      else if (v22 == 89 || qword_1CFA172B8[v11] != qword_1CFA172B8[v22])
      {
        goto LABEL_3;
      }

      if (v12 == 2)
      {
        if (v21 != 2)
        {
          goto LABEL_3;
        }
      }

      else if (v21 == 2 || ((v12 ^ v21) & 1) != 0)
      {
        goto LABEL_3;
      }

      v17 = v13 == v20 && v14 == v19;
      if (v17 || (sub_1CF9E8048() & 1) != 0)
      {
        return v4;
      }

LABEL_3:
      v4 = (v4 + 1) & v25;
    }

    while (((*(v26 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1CF7C0408(uint64_t a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = v2;
    v8 = ~v4;
    do
    {
      v9 = *(*(v6 + 48) + 8 * v5);
      if (v9)
      {
        if (a1)
        {
          type metadata accessor for CFString(0);
          sub_1CF7D5264(&qword_1EC4C49A0, type metadata accessor for CFString);
          v10 = v9;
          v11 = sub_1CF9E5E68();

          if (v11)
          {
            return v5;
          }
        }
      }

      else if (!a1)
      {
        return v5;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1CF7C0528(uint64_t a1, char a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    v8 = a2 == 2;
    v9 = a1 == 1 && a2 == 2;
    if (a1)
    {
      v8 = 0;
    }

    do
    {
      v10 = *(v3 + 48) + 16 * result;
      v11 = *v10;
      v12 = *(v10 + 8);
      if (v12)
      {
        if (v12 == 1)
        {
          if (a2 == 1 && v11 == a1)
          {
            return result;
          }
        }

        else if (v11)
        {
          if (v9)
          {
            return result;
          }
        }

        else if (v8)
        {
          return result;
        }
      }

      else if (!a2 && v11 == a1)
      {
        return result;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1CF7C05F8(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = a1;
    v6 = ~v3;
    v7 = a1 - 28;
    do
    {
      v8 = *(*(v2 + 48) + v4);
      if (v8 <= 0x1E)
      {
        if (v8 == 29)
        {
          if (v5 == 29)
          {
            return v4;
          }

          goto LABEL_3;
        }

        if (v8 == 30)
        {
          if (v5 == 30)
          {
            return v4;
          }

          goto LABEL_3;
        }
      }

      else
      {
        if (*(*(v2 + 48) + v4) <= 0x20u)
        {
          if (v8 == 31)
          {
            if (v5 == 31)
            {
              return v4;
            }
          }

          else if (v5 == 32)
          {
            return v4;
          }

          goto LABEL_3;
        }

        if (v8 == 33)
        {
          if (v5 == 33)
          {
            return v4;
          }

          goto LABEL_3;
        }

        if (v8 == 34)
        {
          if (v5 == 34)
          {
            return v4;
          }

          goto LABEL_3;
        }
      }

      if (v7 >= 7)
      {
        v9 = 0xE400000000000000;
        v10 = 1684957547;
        switch(*(*(v2 + 48) + v4))
        {
          case 0:
            break;
          case 1:
            v10 = 0x6C617461645F7369;
            v9 = 0xEB00000000737365;
            break;
          case 2:
            v10 = 1702521203;
            break;
          case 3:
            v10 = 0x656B636F6C5F7369;
            goto LABEL_40;
          case 4:
            v10 = 0xD000000000000011;
            v9 = 0x80000001CFA2C0E0;
            break;
          case 5:
            v10 = 0x6E6F697461657263;
            v11 = 1952539743;
            goto LABEL_43;
          case 6:
            v10 = 0xD000000000000019;
            v9 = 0x80000001CFA2C100;
            break;
          case 7:
            v10 = 0x6573755F7473616CLL;
            v9 = 0xEE00657461645F64;
            break;
          case 8:
            v9 = 0xE800000000000000;
            v10 = 0x617461645F676174;
            break;
          case 9:
            v10 = 0x657469726F766166;
            v9 = 0xED00006B6E61725FLL;
            break;
          case 0xA:
            v10 = 0x616B6361705F7369;
            v9 = 0xEA00000000006567;
            break;
          case 0xB:
            v10 = 0x65646469685F7369;
            v9 = 0xE90000000000006ELL;
            break;
          case 0xC:
            v10 = 0xD000000000000010;
            v9 = 0x80000001CFA2C160;
            break;
          case 0xD:
            v10 = 0xD000000000000010;
            v9 = 0x80000001CFA2C180;
            break;
          case 0xE:
            v10 = 0xD000000000000013;
            v9 = 0x80000001CFA2C1A0;
            break;
          case 0xF:
            v10 = 0x6C61636973796870;
            v11 = 2053731167;
LABEL_43:
            v9 = v11 | 0xED00006500000000;
            break;
          case 0x10:
            v10 = 0x74636976655F7369;
            v9 = 0xEC000000656C6261;
            break;
          case 0x11:
            v10 = 0x656E6E69705F7369;
LABEL_40:
            v9 = 0xE900000000000064;
            break;
          case 0x12:
            v10 = 0xD000000000000013;
            v9 = 0x80000001CFA2C1E0;
            break;
          case 0x13:
            v10 = 0xD000000000000016;
            v9 = 0x80000001CFA2C200;
            break;
          case 0x14:
            v10 = 0x69746E6172617571;
            v9 = 0xEF626F6C625F656ELL;
            break;
          case 0x15:
            v10 = 0x72636E79735F7369;
            v9 = 0xEB00000000746F6FLL;
            break;
          case 0x16:
            v10 = 0x726F6E67695F7369;
            v9 = 0xED0000746F6F7265;
            break;
          case 0x17:
            v10 = 0xD000000000000010;
            v9 = 0x80000001CFA2C250;
            break;
          case 0x18:
            v9 = 0xE700000000000000;
            v10 = 0x657079745F736FLL;
            break;
          case 0x19:
            v10 = 0x756F635F6B6E696CLL;
            v9 = 0xEA0000000000746ELL;
            break;
          case 0x1A:
            v10 = 0xD000000000000018;
            v9 = 0x80000001CFA2C280;
            break;
          case 0x1B:
            v10 = 0xD000000000000010;
            v9 = 0x80000001CFA2C2A0;
            break;
          default:
            goto LABEL_3;
        }

        v12 = 0xE400000000000000;
        v13 = 1684957547;
        switch(v5)
        {
          case 0:
            goto LABEL_105;
          case 1:
            v14 = 0x6C617461645F7369;
            v15 = 7566181;
            goto LABEL_87;
          case 2:
            if (v10 != 1702521203)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          case 3:
            v19 = 0x656B636F6C5F7369;
            goto LABEL_80;
          case 4:
            v12 = 0x80000001CFA2C0E0;
            if (v10 != 0xD000000000000011)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          case 5:
            v16 = 0x6E6F697461657263;
            v18 = 1952539743;
            goto LABEL_85;
          case 6:
            v12 = 0x80000001CFA2C100;
            if (v10 != 0xD000000000000019)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          case 7:
            v12 = 0xEE00657461645F64;
            if (v10 != 0x6573755F7473616CLL)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          case 8:
            v12 = 0xE800000000000000;
            if (v10 != 0x617461645F676174)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          case 9:
            v16 = 0x657469726F766166;
            v17 = 0x6B6E61725FLL;
            goto LABEL_100;
          case 10:
            v12 = 0xEA00000000006567;
            if (v10 != 0x616B6361705F7369)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          case 11:
            v12 = 0xE90000000000006ELL;
            if (v10 != 0x65646469685F7369)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          case 12:
            v12 = 0x80000001CFA2C160;
            if (v10 != 0xD000000000000010)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          case 13:
            v12 = 0x80000001CFA2C180;
            if (v10 != 0xD000000000000010)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          case 14:
            v12 = 0x80000001CFA2C1A0;
            if (v10 != 0xD000000000000013)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          case 15:
            v16 = 0x6C61636973796870;
            v18 = 2053731167;
LABEL_85:
            v17 = v18 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
            goto LABEL_100;
          case 16:
            v12 = 0xEC000000656C6261;
            if (v10 != 0x74636976655F7369)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          case 17:
            v19 = 0x656E6E69705F7369;
LABEL_80:
            v12 = 0xE900000000000064;
            if (v10 != v19)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          case 18:
            v12 = 0x80000001CFA2C1E0;
            if (v10 != 0xD000000000000013)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          case 19:
            v12 = 0x80000001CFA2C200;
            if (v10 != 0xD000000000000016)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          case 20:
            v12 = 0xEF626F6C625F656ELL;
            if (v10 != 0x69746E6172617571)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          case 21:
            v14 = 0x72636E79735F7369;
            v15 = 7630703;
LABEL_87:
            v12 = v15 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
            if (v10 != v14)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          case 22:
            v16 = 0x726F6E67695F7369;
            v17 = 0x746F6F7265;
LABEL_100:
            v12 = v17 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
            if (v10 != v16)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          case 23:
            v13 = 0xD000000000000010;
            v12 = 0x80000001CFA2C250;
LABEL_105:
            if (v10 == v13)
            {
              goto LABEL_106;
            }

            goto LABEL_107;
          case 24:
            v12 = 0xE700000000000000;
            if (v10 != 0x657079745F736FLL)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          case 25:
            v12 = 0xEA0000000000746ELL;
            if (v10 != 0x756F635F6B6E696CLL)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          case 26:
            v12 = 0x80000001CFA2C280;
            if (v10 != 0xD000000000000018)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          case 27:
            v12 = 0x80000001CFA2C2A0;
            if (v10 != 0xD000000000000010)
            {
              goto LABEL_107;
            }

LABEL_106:
            if (v9 == v12)
            {

              return v4;
            }

LABEL_107:
            v20 = sub_1CF9E8048();

            if (v20)
            {
              return v4;
            }

            break;
          default:
            return v4;
        }
      }

LABEL_3:
      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1CF7C0EA8(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v23 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v25 + 48) + v4);
      if (v6 <= 3)
      {
        if (v6 == 2)
        {
          v9 = 0xEC00000044495555;
        }

        else
        {
          v9 = 0xEF4449746E657645;
        }

        if (*(*(v25 + 48) + v4))
        {
          v10 = 0xD000000000000010;
        }

        else
        {
          v10 = 0x444955556264;
        }

        if (*(*(v25 + 48) + v4))
        {
          v11 = 0x80000001CFA2C2C0;
        }

        else
        {
          v11 = 0xE600000000000000;
        }

        if (*(*(v25 + 48) + v4) <= 1u)
        {
          v7 = v10;
        }

        else
        {
          v7 = 0x6D61657274537366;
        }

        if (*(*(v25 + 48) + v4) <= 1u)
        {
          v8 = v11;
        }

        else
        {
          v8 = v9;
        }
      }

      else if (*(*(v25 + 48) + v4) <= 5u)
      {
        if (v6 == 4)
        {
          v7 = 0xD000000000000011;
        }

        else
        {
          v7 = 0x65566E69616D6F64;
        }

        if (v6 == 4)
        {
          v8 = 0x80000001CFA2C2F0;
        }

        else
        {
          v8 = 0xED00006E6F697372;
        }
      }

      else if (v6 == 6)
      {
        v7 = 0x4665727574616566;
        v8 = 0xEC0000007367616CLL;
      }

      else if (v6 == 7)
      {
        v7 = 0x696C756465686373;
        v8 = 0xEF6574617453676ELL;
      }

      else
      {
        v7 = 0x6E6547726F727265;
        v8 = 0xEF6E6F6974617265;
      }

      v12 = 0x6E6547726F727265;
      if (v5 == 7)
      {
        v12 = 0x696C756465686373;
      }

      v13 = 0xEF6E6F6974617265;
      if (v5 == 7)
      {
        v13 = 0xEF6574617453676ELL;
      }

      if (v5 == 6)
      {
        v12 = 0x4665727574616566;
        v13 = 0xEC0000007367616CLL;
      }

      v14 = 0x65566E69616D6F64;
      if (v5 == 4)
      {
        v14 = 0xD000000000000011;
      }

      v15 = 0xED00006E6F697372;
      if (v5 == 4)
      {
        v15 = 0x80000001CFA2C2F0;
      }

      if (v5 <= 5)
      {
        v12 = v14;
        v13 = v15;
      }

      v16 = v5 == 2 ? 0xEC00000044495555 : 0xEF4449746E657645;
      v17 = v5 ? 0xD000000000000010 : 0x444955556264;
      v18 = v5 ? 0x80000001CFA2C2C0 : 0xE600000000000000;
      if (v5 <= 1)
      {
        v16 = v18;
      }

      else
      {
        v17 = 0x6D61657274537366;
      }

      v19 = v5 <= 3 ? v17 : v12;
      v20 = v5 <= 3 ? v16 : v13;
      if (v7 == v19 && v8 == v20)
      {
        break;
      }

      v21 = sub_1CF9E8048();

      if ((v21 & 1) == 0)
      {
        v4 = (v4 + 1) & v23;
        if ((*(v24 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1CF7C11DC(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1CF7C1248(uint64_t a1, uint64_t a2)
{
  v46 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD70, &qword_1CFA12AC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v39 = v37 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCC0, &unk_1CF9FCB50);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v38 = v37 - v9;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4FB0, &unk_1CFA17180);
  v10 = *(*(v45 - 8) + 64);
  MEMORY[0x1EEE9AC00](v45);
  v12 = v37 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v44 = v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v43 = v37 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = v37 - v20;
  v47 = v2;
  v22 = -1 << *(v2 + 32);
  v23 = a2 & ~v22;
  v42 = v2 + 64;
  if ((*(v2 + 64 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23))
  {
    v24 = ~v22;
    v25 = *(v19 + 72);
    v40 = ~v22;
    v41 = v25;
    v37[1] = v13;
    do
    {
      sub_1CEFCCBDC(*(v47 + 48) + v41 * v23, v21, &unk_1EC4BF650, &unk_1CF9FCB40);
      v29 = *(v45 + 48);
      sub_1CEFCCBDC(v21, v12, &unk_1EC4BF650, &unk_1CF9FCB40);
      sub_1CEFCCBDC(v46, &v12[v29], &unk_1EC4BF650, &unk_1CF9FCB40);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1CEFCCBDC(v12, v44, &unk_1EC4BF650, &unk_1CF9FCB40);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v30 = v39;
          v31 = v44;
          sub_1CEFE55D0(&v12[v29], v39, &unk_1EC4BFD70, &qword_1CFA12AC0);
          v32 = sub_1CF469E78(v31, v30);
          sub_1CEFCCC44(v30, &unk_1EC4BFD70, &qword_1CFA12AC0);
          sub_1CEFCCC44(v21, &unk_1EC4BF650, &unk_1CF9FCB40);
          sub_1CEFCCC44(v31, &unk_1EC4BFD70, &qword_1CFA12AC0);
          if (v32)
          {
            goto LABEL_15;
          }

LABEL_12:
          sub_1CEFCCC44(v12, &unk_1EC4BF650, &unk_1CF9FCB40);
          v24 = v40;
          goto LABEL_5;
        }

        sub_1CEFCCC44(v21, &unk_1EC4BF650, &unk_1CF9FCB40);
        v26 = v44;
        v27 = &unk_1EC4BFD70;
        v28 = &qword_1CFA12AC0;
      }

      else
      {
        sub_1CEFCCBDC(v12, v43, &unk_1EC4BF650, &unk_1CF9FCB40);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          v33 = v38;
          sub_1CEFE55D0(&v12[v29], v38, &unk_1EC4BFCC0, &unk_1CF9FCB50);
          v34 = v43;
          v35 = sub_1CF4692CC(v43, v33);
          sub_1CEFCCC44(v33, &unk_1EC4BFCC0, &unk_1CF9FCB50);
          sub_1CEFCCC44(v21, &unk_1EC4BF650, &unk_1CF9FCB40);
          sub_1CEFCCC44(v34, &unk_1EC4BFCC0, &unk_1CF9FCB50);
          if (v35)
          {
LABEL_15:
            sub_1CEFCCC44(v12, &unk_1EC4BF650, &unk_1CF9FCB40);
            return v23;
          }

          goto LABEL_12;
        }

        sub_1CEFCCC44(v21, &unk_1EC4BF650, &unk_1CF9FCB40);
        v26 = v43;
        v27 = &unk_1EC4BFCC0;
        v28 = &unk_1CF9FCB50;
      }

      sub_1CEFCCC44(v26, v27, v28);
      sub_1CEFCCC44(v12, &qword_1EC4C4FB0, &unk_1CFA17180);
LABEL_5:
      v23 = (v23 + 1) & v24;
    }

    while (((*(v42 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) != 0);
  }

  return v23;
}

unint64_t sub_1CF7C1710(unint64_t a1, unint64_t a2, unint64_t a3, unsigned __int8 a4, uint64_t a5)
{
  v6 = -1 << *(v5 + 32);
  v7 = a5 & ~v6;
  if ((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    do
    {
      v10 = *(v5 + 48) + 32 * v7;
      v11 = *v10;
      v12 = *(v10 + 8);
      v13 = *(v10 + 16);
      v14 = *(v10 + 24);
      sub_1CF1FB2C0(*v10, v12, v13, v14);
      v15 = sub_1CF7BCC38(v11, v12, v13, v14, a1, a2, a3, a4);
      sub_1CF484340(v11, v12, v13, v14);
      if (v15)
      {
        break;
      }

      v7 = (v7 + 1) & v9;
    }

    while (((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t sub_1CF7C181C(uint64_t *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      v7 = (*(v2 + 48) + 48 * v4);
      v8 = v7[1];
      v10 = *v7;
      v11[0] = v8;
      *(v11 + 10) = *(v7 + 26);
      if (sub_1CF7BD478(&v10, a1))
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1CF7C18D8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v11 = ~v7;
    v12 = *(v5 + 48);
    v23 = a4 & 0xFF0000;
    v22 = SBYTE1(a4);
    v24 = BYTE1(a4);
    v25 = a4;
    do
    {
      v13 = v12 + 32 * v8;
      v14 = *(v13 + 16);
      v15 = *(v13 + 24);
      v16 = *(v13 + 25);
      v17 = *(v13 + 26);
      v18 = *v13 == a1 && *(v13 + 8) == a2;
      if (!v18 && (sub_1CF9E8048() & 1) == 0)
      {
        goto LABEL_4;
      }

      if (v14 != a3 || v15 != v25)
      {
        goto LABEL_4;
      }

      if (v16 == 89)
      {
        if (v24 != 89)
        {
          goto LABEL_4;
        }
      }

      else if (v24 == 89 || qword_1CFA172B8[v16] != qword_1CFA172B8[v22])
      {
        goto LABEL_4;
      }

      if (v17 == 2)
      {
        if (v23 == 0x20000)
        {
          return v8;
        }
      }

      else if (v23 != 0x20000 && ((v17 ^ ((a4 & 0x10000u) >> 16)) & 1) == 0)
      {
        return v8;
      }

LABEL_4:
      v8 = (v8 + 1) & v11;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

unint64_t sub_1CF7C1A68(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_1CEFD57E0(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = sub_1CF9E7568();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_1CF7C1B34(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1CF7C1BA0(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    if (a1)
    {
      v7 = 0x6D617473656D6974;
    }

    else
    {
      v7 = 0x797469726F697270;
    }

    if (a1)
    {
      v8 = 0xE900000000000070;
    }

    else
    {
      v8 = 0xE800000000000000;
    }

    v9 = 0x80000001CFA2C410;
    v10 = 0x80000001CFA2C3F0;
    v11 = 0x6574617473;
    v12 = a1 & 0xE0;
    while (1)
    {
      v13 = *(*(v2 + 48) + result);
      if (v13 >> 2 == 55)
      {
        if ((a1 & 0xFC) == 0xDC)
        {
          return result;
        }

        goto LABEL_10;
      }

      if (v13 >> 2 == 63)
      {
        if (a1 > 0xFBu)
        {
          return result;
        }

        goto LABEL_10;
      }

      if ((((a1 & 0xFC) >> 2) | 8) == 0x3F)
      {
        goto LABEL_10;
      }

      v14 = v13 >> 5;
      if (v13 >> 5 > 1)
      {
        if (v14 == 4)
        {
          if (v13 == 128)
          {
            if (a1 == 128)
            {
              return result;
            }
          }

          else if (a1 == 129)
          {
            return result;
          }
        }

        else if (v14 == 3)
        {
          if (*(*(v2 + 48) + result) > 0x61u)
          {
            if (v13 == 98)
            {
              if (a1 == 98)
              {
                return result;
              }
            }

            else if (a1 == 99)
            {
              return result;
            }
          }

          else if (v13 == 96)
          {
            if (a1 == 96)
            {
              return result;
            }
          }

          else if (a1 == 97)
          {
            return result;
          }
        }

        else if (*(*(v2 + 48) + result) > 0x41u)
        {
          if (v13 == 66)
          {
            if (a1 == 66)
            {
              return result;
            }
          }

          else if (a1 == 67)
          {
            return result;
          }
        }

        else if (v13 == 64)
        {
          if (a1 == 64)
          {
            return result;
          }
        }

        else if (a1 == 65)
        {
          return result;
        }

        goto LABEL_10;
      }

      if (!v14)
      {
        break;
      }

      if (v12 == 32)
      {
        v19 = result;
        if (v13)
        {
          v20 = 0x6D617473656D6974;
        }

        else
        {
          v20 = 0x797469726F697270;
        }

        if (v13)
        {
          v21 = 0xE900000000000070;
        }

        else
        {
          v21 = 0xE800000000000000;
        }

        if (v20 == v7 && v21 == v8)
        {

          return v19;
        }

        v23 = v8;
        v33 = v7;
        v28 = v10;
        v30 = v9;
        v24 = sub_1CF9E8048();

        v12 = 32;
        v11 = 0x6574617473;
        v10 = v28;
        v9 = v30;
        v7 = v33;
        v8 = v23;
        result = v19;
        if (v24)
        {
          return result;
        }
      }

LABEL_10:
      result = (result + 1) & v6;
      if (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) == 0)
      {
        return result;
      }
    }

    if (a1 >= 0x20u)
    {
      goto LABEL_10;
    }

    if (*(*(v2 + 48) + result))
    {
      if (v13 == 1)
      {
        v15 = 0xD000000000000010;
        v16 = v10;
        v17 = a1;
        if (a1)
        {
LABEL_28:
          if (v17 == 1)
          {
            v11 = 0xD000000000000010;
          }

          else
          {
            v11 = 0xD000000000000012;
          }

          if (v17 == 1)
          {
            v18 = v10;
          }

          else
          {
            v18 = v9;
          }

          goto LABEL_72;
        }
      }

      else
      {
        v15 = 0xD000000000000012;
        v16 = v9;
        v17 = a1;
        if (a1)
        {
          goto LABEL_28;
        }
      }
    }

    else
    {
      v16 = 0xE500000000000000;
      v15 = 0x6574617473;
      v17 = a1;
      if (a1)
      {
        goto LABEL_28;
      }
    }

    v18 = 0xE500000000000000;
LABEL_72:
    v31 = result;
    if (v15 == v11 && v16 == v18)
    {

      return v31;
    }

    v32 = v12;
    v29 = v8;
    v34 = v7;
    v25 = v9;
    v26 = v10;
    v27 = sub_1CF9E8048();

    v12 = v32;
    v11 = 0x6574617473;
    v10 = v26;
    v9 = v25;
    v7 = v34;
    v8 = v29;
    result = v31;
    if (v27)
    {
      return result;
    }

    goto LABEL_10;
  }

  return result;
}

unint64_t sub_1CF7C1FEC(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    v7 = 0x797469726F697270;
    if (a1)
    {
      v7 = 0x6D617473656D6974;
    }

    v23 = v7;
    if (a1)
    {
      v8 = 0xE900000000000070;
    }

    else
    {
      v8 = 0xE800000000000000;
    }

    v9 = a1 & 0xE0;
    while (1)
    {
      v10 = *(*(v2 + 48) + v4);
      v11 = v10 >> 5;
      if (v10 >> 5 > 1)
      {
        if (v11 == 4)
        {
          if (v10 == 128)
          {
            if (a1 == 128)
            {
              return v4;
            }
          }

          else if (a1 == 129)
          {
            return v4;
          }
        }

        else if (v11 == 3)
        {
          if (*(*(v2 + 48) + v4) > 0x61u)
          {
            if (v10 == 98)
            {
              if (a1 == 98)
              {
                return v4;
              }
            }

            else if (a1 == 99)
            {
              return v4;
            }
          }

          else if (v10 == 96)
          {
            if (a1 == 96)
            {
              return v4;
            }
          }

          else if (a1 == 97)
          {
            return v4;
          }
        }

        else if (*(*(v2 + 48) + v4) > 0x41u)
        {
          if (v10 == 66)
          {
            if (a1 == 66)
            {
              return v4;
            }
          }

          else if (a1 == 67)
          {
            return v4;
          }
        }

        else if (v10 == 64)
        {
          if (a1 == 64)
          {
            return v4;
          }
        }

        else if (a1 == 65)
        {
          return v4;
        }

        goto LABEL_9;
      }

      if (!v11)
      {
        break;
      }

      if (v9 == 32)
      {
        if (v10)
        {
          v17 = 0x6D617473656D6974;
        }

        else
        {
          v17 = 0x797469726F697270;
        }

        if (v10)
        {
          v18 = 0xE900000000000070;
        }

        else
        {
          v18 = 0xE800000000000000;
        }

        if (v17 == v23 && v18 == v8)
        {
LABEL_72:

          return v4;
        }

        v20 = sub_1CF9E8048();

        if (v20)
        {
          return v4;
        }
      }

LABEL_9:
      v4 = (v4 + 1) & v6;
      if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
      {
        return v4;
      }
    }

    if (a1 >= 0x20u)
    {
      goto LABEL_9;
    }

    if (*(*(v2 + 48) + v4))
    {
      if (v10 == 1)
      {
        v12 = 0xD000000000000010;
        v13 = 0x80000001CFA2C3F0;
        v14 = a1;
        if (a1)
        {
          goto LABEL_22;
        }

LABEL_65:
        v16 = 0xE500000000000000;
        if (v12 != 0x6574617473)
        {
          goto LABEL_67;
        }

        goto LABEL_66;
      }

      v12 = 0xD000000000000012;
      v13 = 0x80000001CFA2C410;
      v14 = a1;
      if (!a1)
      {
        goto LABEL_65;
      }
    }

    else
    {
      v13 = 0xE500000000000000;
      v12 = 0x6574617473;
      v14 = a1;
      if (!a1)
      {
        goto LABEL_65;
      }
    }

LABEL_22:
    if (v14 == 1)
    {
      v15 = 0xD000000000000010;
    }

    else
    {
      v15 = 0xD000000000000012;
    }

    if (v14 == 1)
    {
      v16 = 0x80000001CFA2C3F0;
    }

    else
    {
      v16 = 0x80000001CFA2C410;
    }

    if (v12 != v15)
    {
LABEL_67:
      v21 = sub_1CF9E8048();

      if (v21)
      {
        return v4;
      }

      goto LABEL_9;
    }

LABEL_66:
    if (v13 == v16)
    {
      goto LABEL_72;
    }

    goto LABEL_67;
  }

  return v4;
}

unint64_t sub_1CF7C2364(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v7 = 0xE700000000000000;
          v8 = 0x64695F6D657469;
          v9 = a1;
          if (!a1)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v7 = 0xE800000000000000;
          v8 = 0x657079745F626F6ALL;
          v9 = a1;
          if (!a1)
          {
LABEL_17:
            v11 = 0xE400000000000000;
            if (v8 != 1684957547)
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }
        }
      }

      else
      {
        v7 = 0xE400000000000000;
        v8 = 1684957547;
        v9 = a1;
        if (!a1)
        {
          goto LABEL_17;
        }
      }

      if (v9 == 1)
      {
        v10 = 0x64695F6D657469;
      }

      else
      {
        v10 = 0x657079745F626F6ALL;
      }

      if (v9 == 1)
      {
        v11 = 0xE700000000000000;
      }

      else
      {
        v11 = 0xE800000000000000;
      }

      if (v8 != v10)
      {
        goto LABEL_19;
      }

LABEL_18:
      if (v7 == v11)
      {

        return v4;
      }

LABEL_19:
      v12 = sub_1CF9E8048();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1CF7C24E4(uint64_t a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v39 = ~v4;
    v44 = *a1;
    v45 = *(a1 + 8);
    v37 = v2 + 64;
    do
    {
      v7 = (*(v2 + 48) + 48 * v5);
      v8 = *(v7 + 27);
      v9 = v7[1];
      v42 = *v7;
      *v43 = v9;
      *&v43[11] = v8;
      v10 = v42;
      v11 = BYTE8(v42);
      v12 = BYTE9(v42);
      v41 = BYTE9(v42);
      v13 = v44;
      v14 = v45;
      v15 = HIBYTE(v45);
      if (BYTE9(v42))
      {
        if ((v45 & 0x100) == 0)
        {
          goto LABEL_12;
        }

        v16 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v18 = v17;
        if (v16 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v18 == v19)
        {
          sub_1CEFCCBDC(&v42, v40, &qword_1EC4BE1A0, &unk_1CFA17130);
          sub_1CEFD0988(v10, v11, 1);
          sub_1CEFCCBDC(&v44, v40, &unk_1EC4BFC10, &qword_1CF9FE510);

          sub_1CEFD0994(v13, v14, 1);
        }

        else
        {
          v23 = sub_1CF9E8048();
          sub_1CEFCCBDC(&v42, v40, &qword_1EC4BE1A0, &unk_1CFA17130);
          sub_1CEFD0988(v10, v11, 1);
          sub_1CEFCCBDC(&v44, v40, &unk_1EC4BFC10, &qword_1CF9FE510);

          sub_1CEFD0994(v13, v14, 1);
          if ((v23 & 1) == 0)
          {
            sub_1CEFD0994(v10, v11, v41);
LABEL_4:
            sub_1CEFCCC44(&v42, &qword_1EC4BE1A0, &unk_1CFA17130);
            v3 = v37;
            v2 = v38;
            goto LABEL_5;
          }
        }

        v24 = v41;
      }

      else
      {
        if ((v45 & 0x100) != 0)
        {
LABEL_12:
          sub_1CEFD0988(v42, BYTE8(v42), SBYTE9(v42));
          sub_1CEFCCBDC(&v44, v40, &unk_1EC4BFC10, &qword_1CF9FE510);
          sub_1CEFD0994(v10, v11, v12);
          v20 = v15 & 1;
          v21 = v13;
          v22 = v14;
LABEL_13:
          sub_1CEFD0994(v21, v22, v20);
          goto LABEL_5;
        }

        if (BYTE8(v42))
        {
          if (BYTE8(v42) == 1)
          {
            if (v45 != 1 || v42 != v44)
            {
              goto LABEL_38;
            }
          }

          else if (v42)
          {
            if (v45 != 2 || v44 != 1)
            {
              goto LABEL_38;
            }
          }

          else if (v45 != 2 || v44)
          {
            goto LABEL_38;
          }
        }

        else if (v45 || v42 != v44)
        {
LABEL_38:
          sub_1CEFD0988(v42, BYTE8(v42), 0);
          sub_1CEFCCBDC(&v44, v40, &unk_1EC4BFC10, &qword_1CF9FE510);
          v21 = v10;
          v22 = v11;
          v20 = 0;
          goto LABEL_13;
        }

        sub_1CEFCCBDC(&v42, v40, &qword_1EC4BE1A0, &unk_1CFA17130);
        sub_1CEFD0988(v10, v11, 0);
        sub_1CEFCCBDC(&v44, v40, &unk_1EC4BFC10, &qword_1CF9FE510);
        v24 = 0;
      }

      sub_1CEFD0994(v10, v11, v24);
      v25 = *&v43[16];
      v26 = v43[24];
      v27 = v43[25];
      v28 = v43[26];
      v29 = *(a1 + 32);
      v30 = *(a1 + 40);
      v31 = *(a1 + 41);
      v32 = *(a1 + 42);
      if (*v43 != *(a1 + 16) && (sub_1CF9E8048() & 1) == 0 || v25 != v29 || v26 != v30)
      {
        goto LABEL_4;
      }

      if (v27 == 89)
      {
        v33 = v28;
        sub_1CEFCCC44(&v42, &qword_1EC4BE1A0, &unk_1CFA17130);
        v3 = v37;
        v2 = v38;
        if (v31 != 89)
        {
          goto LABEL_5;
        }
      }

      else
      {
        if (v31 == 89)
        {
          goto LABEL_4;
        }

        v33 = v28;
        v34 = qword_1CFA172B8[v27];
        v35 = qword_1CFA172B8[v31];
        sub_1CEFCCC44(&v42, &qword_1EC4BE1A0, &unk_1CFA17130);
        v3 = v37;
        v2 = v38;
        if (v34 != v35)
        {
          goto LABEL_5;
        }
      }

      if (v33 == 2)
      {
        if (v32 == 2)
        {
          return v5;
        }
      }

      else if (v32 != 2 && ((v32 ^ v33) & 1) == 0)
      {
        return v5;
      }

LABEL_5:
      v5 = (v5 + 1) & v39;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1CF7C295C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v26 = a5;
  v27 = a6;
  v25 = a4;
  v23[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = v23 - v12;
  v24 = v6;
  v14 = -1 << *(v6 + 32);
  v15 = a2 & ~v14;
  v23[0] = v6 + 64;
  if ((*(v6 + 64 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    v19 = *(v9 + 16);
    v18 = v9 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v13, *(v24 + 48) + v20 * v15, v8, v11);
      sub_1CF7D5264(v25, v26);
      v21 = sub_1CF9E6868();
      (*(v18 - 8))(v13, v8);
      if (v21)
      {
        break;
      }

      v15 = (v15 + 1) & v16;
    }

    while (((*(v23[0] + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) != 0);
  }

  return v15;
}

unint64_t sub_1CF7C2AFC(uint64_t a1, double a2)
{
  v3 = -1 << *(v2 + 32);
  result = a1 & ~v3;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v5 = ~v3;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a2)
      {
        break;
      }

      result = (result + 1) & v5;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1CF7C2B64(uint64_t a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if (((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
  {
    return v5;
  }

  v6 = ~v4;
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = v8 == 2;
  v10 = *(a1 + 25);
  v11 = v7 == 1 && v8 == 2;
  if (v7)
  {
    v9 = 0;
  }

  v31 = v9;
  v32 = v11;
  v34 = *(a1 + 25);
  v33 = v6;
  while (1)
  {
    v18 = *(*(v2 + 48) + 8 * v5);
    v19 = *(v18 + 16);
    v20 = *(v18 + 24);
    v21 = *(v18 + 25);
    if ((v21 & 1) == 0)
    {
      break;
    }

    if ((v10 & 1) == 0)
    {
      goto LABEL_8;
    }

    v22 = *(v18 + 16);
    v23 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v24 = v7;
    v26 = v25;
    if (v23 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v26 == v27)
    {
      sub_1CEFD0988(v19, v20, 1);
      sub_1CEFD0988(v24, v8, 1);

      sub_1CEFD0994(v24, v8, 1);
LABEL_35:
      sub_1CEFD0994(v19, v20, 1);

      return v5;
    }

    v29 = sub_1CF9E8048();
    sub_1CEFD0988(v19, v20, 1);
    sub_1CEFD0988(v24, v8, 1);

    sub_1CEFD0994(v24, v8, 1);
    if (v29)
    {
      goto LABEL_35;
    }

    v7 = v24;
    sub_1CEFD0994(v19, v20, 1);

    v6 = v33;
    v3 = v2 + 64;
LABEL_10:
    v5 = (v5 + 1) & v6;
    v10 = v34;
    if (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
    {
      return v5;
    }
  }

  if (v10)
  {
LABEL_8:
    v12 = *(v18 + 16);
    v13 = *(v18 + 24);
    v14 = v10;
    sub_1CEFD0988(v12, v13, v21);
    sub_1CEFD0988(v7, v8, v14);
    sub_1CEFD0994(v19, v20, v21);
    v15 = v7;
    v16 = v8;
    v17 = v14;
LABEL_9:
    sub_1CEFD0994(v15, v16, v17);
    goto LABEL_10;
  }

  if (!*(v18 + 24))
  {
    if (!v8 && v19 == v7)
    {
      goto LABEL_37;
    }

    goto LABEL_32;
  }

  if (v20 == 1)
  {
    if (v8 == 1 && v19 == v7)
    {
      v19 = v7;
      goto LABEL_37;
    }

    goto LABEL_32;
  }

  if (v19)
  {
    if (v32)
    {
      goto LABEL_37;
    }

    goto LABEL_32;
  }

  if (!v31)
  {
LABEL_32:
    sub_1CEFD0988(*(v18 + 16), *(v18 + 24), 0);
    sub_1CEFD0988(v7, v8, 0);
    v15 = v19;
    v16 = v20;
    v17 = 0;
    goto LABEL_9;
  }

  v19 = 0;
LABEL_37:
  sub_1CEFD0988(v19, *(v18 + 24), 0);
  sub_1CEFD0988(v7, v8, 0);
  sub_1CEFD0994(v19, v20, 0);
  return v5;
}

uint64_t sub_1CF7C2ED0(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v37 = a2;
  result = sub_1CF9E7BD8();
  v10 = result;
  if (*(v7 + 16))
  {
    v36 = v5;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = *(*(v7 + 48) + 4 * v23);
      v25 = *(v7 + 56) + 32 * v23;
      v39 = *v25;
      v26 = *(v25 + 24);
      v38 = *(v25 + 16);
      if ((v37 & 1) == 0)
      {
      }

      v27 = *(v10 + 40);
      sub_1CF9E81D8();
      sub_1CF9E8208();
      result = sub_1CF9E8228();
      v28 = -1 << *(v10 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v17 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v17 + 8 * v30);
          if (v34 != -1)
          {
            v18 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v29) & ~*(v17 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 4 * v18) = v24;
      v19 = *(v10 + 56) + 32 * v18;
      *v19 = v39;
      *(v19 + 16) = v38;
      *(v19 + 24) = v26;
      ++*(v10 + 16);
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v5 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v7 + 32);
    v5 = v36;
    if (v35 >= 64)
    {
      bzero((v7 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v35;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_1CF7C3178(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFA30, &unk_1CFA079A0);
  v36 = a2;
  result = sub_1CF9E7BD8();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_1CEFE9EB8(v25, v37);
      }

      else
      {
        sub_1CEFD1104(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_1CF9E81D8();
      sub_1CF9E69C8();
      result = sub_1CF9E8228();
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
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_1CEFE9EB8(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
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
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_1CF7C3430(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4968, &qword_1CFA171D0);
  result = sub_1CF9E7BD8();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_19:
      v23 = v20 | (v9 << 6);
      v24 = *(*(v5 + 48) + v23);
      v25 = (*(v5 + 56) + 32 * v23);
      if (a2)
      {
        sub_1CEFE9EB8(v25, v33);
      }

      else
      {
        sub_1CEFD1104(v25, v33);
      }

      v26 = *(v8 + 40);
      sub_1CF9E81D8();
      sub_1CF9E69C8();

      result = sub_1CF9E8228();
      v16 = -1 << *(v8 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v15 + 8 * (v17 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v16) >> 6;
        while (++v18 != v28 || (v27 & 1) == 0)
        {
          v29 = v18 == v28;
          if (v18 == v28)
          {
            v18 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v18);
          if (v30 != -1)
          {
            v19 = __clz(__rbit64(~v30)) + (v18 << 6);
            goto LABEL_11;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v17) & ~*(v15 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_11:
      *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v8 + 48) + v19) = v24;
      result = sub_1CEFE9EB8(v33, (*(v8 + 56) + 32 * v19));
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_19;
      }
    }

    if (a2)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1CF7C37F4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4D60, &qword_1CFA079B0);
  v50 = a2;
  result = sub_1CF9E7BD8();
  v54 = result;
  if (*(v5 + 16))
  {
    v8 = result;
    v48 = v2;
    v49 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v21 = (v13 - 1) & v13;
LABEL_17:
      v24 = v20 | (v9 << 6);
      v52 = v21;
      v25 = *(v5 + 56);
      v26 = *(v5 + 48) + 48 * v24;
      if (v50)
      {
        v27 = *v26;
        v28 = *(v26 + 8);
        v29 = *(v26 + 16);
        v30 = *(v26 + 24);
        v31 = *(v26 + 25);
        v32 = *(v26 + 26);
        v55 = *(v26 + 40);
        v56 = *(v26 + 32);
        v33 = *(v25 + 8 * v24);
      }

      else
      {
        v35 = *(v26 + 16);
        v34 = *(v26 + 32);
        v57[0] = *v26;
        v57[1] = v35;
        v57[2] = v34;
        v28 = *(&v57[0] + 1);
        v27 = *&v57[0];
        v29 = v35;
        v30 = BYTE8(v35);
        v31 = BYTE9(v35);
        v32 = BYTE10(v35);
        v33 = *(v25 + 8 * v24);
        v55 = *(&v34 + 1);
        v56 = v34;
        sub_1CF1A8F60(v57, v58);
        v8 = v54;
      }

      v51 = v30;
      v36 = *(v8 + 40);
      sub_1CF9E81D8();
      v53 = v28;
      sub_1CF9E69C8();
      MEMORY[0x1D386A470](v29);
      MEMORY[0x1D386A470](v30);
      v37 = v29;
      if (v31 == 89)
      {
        v38 = 89;
        sub_1CF9E81F8();
      }

      else
      {
        sub_1CF9E81F8();
        v38 = v31;
        MEMORY[0x1D386A470](qword_1CFA172B8[v31]);
      }

      v39 = v32;
      if (v32 != 2)
      {
        sub_1CF9E81F8();
      }

      sub_1CF9E81F8();
      sub_1CF9E69C8();
      result = sub_1CF9E8228();
      v8 = v54;
      v40 = -1 << *(v54 + 32);
      v41 = result & ~v40;
      v42 = v41 >> 6;
      if (((-1 << v41) & ~*(v15 + 8 * (v41 >> 6))) == 0)
      {
        v43 = 0;
        v44 = (63 - v40) >> 6;
        v18 = v53;
        v17 = v27;
        while (++v42 != v44 || (v43 & 1) == 0)
        {
          v45 = v42 == v44;
          if (v42 == v44)
          {
            v42 = 0;
          }

          v43 |= v45;
          v46 = *(v15 + 8 * v42);
          if (v46 != -1)
          {
            v16 = __clz(__rbit64(~v46)) + (v42 << 6);
            goto LABEL_9;
          }
        }

LABEL_43:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v41) & ~*(v15 + 8 * (v41 >> 6)))) | v41 & 0x7FFFFFFFFFFFFFC0;
      v18 = v53;
      v17 = v27;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v19 = *(v54 + 48) + 48 * v16;
      *v19 = v17;
      *(v19 + 8) = v18;
      *(v19 + 16) = v37;
      *(v19 + 24) = v51;
      *(v19 + 25) = v38;
      *(v19 + 26) = v39;
      *(v19 + 32) = v56;
      *(v19 + 40) = v55;
      *(*(v54 + 56) + 8 * v16) = v33;
      ++*(v54 + 16);
      v5 = v49;
      v13 = v52;
    }

    v22 = v9;
    while (1)
    {
      v9 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_43;
      }

      if (v9 >= v14)
      {
        break;
      }

      v23 = v10[v9];
      ++v22;
      if (v23)
      {
        v20 = __clz(__rbit64(v23));
        v21 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v50 & 1) == 0)
    {

      v3 = v48;
      goto LABEL_41;
    }

    v47 = 1 << *(v5 + 32);
    v3 = v48;
    if (v47 >= 64)
    {
      bzero(v10, ((v47 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v47;
    }

    *(v5 + 16) = 0;
  }

LABEL_41:
  *v3 = v54;
  return result;
}

uint64_t sub_1CF7C3BDC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0BE8, &qword_1CFA07A90);
  v38 = a2;
  result = sub_1CF9E7BD8();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_1CF9E81D8();
      sub_1CF9E69C8();
      result = sub_1CF9E8228();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1CF7C3EA4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4950, &unk_1CFA171A0);
  result = sub_1CF9E7BD8();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (1)
    {
      if (!v13)
      {
        v18 = v9;
        while (1)
        {
          v9 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            __break(1u);
            goto LABEL_55;
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
            goto LABEL_17;
          }
        }

        if ((a2 & 1) == 0)
        {

          v3 = v33;
          goto LABEL_53;
        }

        v32 = 1 << *(v5 + 32);
        v3 = v33;
        if (v32 >= 64)
        {
          bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v10 = -1 << v32;
        }

        *(v5 + 16) = 0;
        break;
      }

      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = (*(v5 + 56) + 32 * v20);
      if (a2)
      {
        sub_1CEFE9EB8(v22, v34);
      }

      else
      {
        sub_1CEFD1104(v22, v34);
      }

      v23 = *(v8 + 40);
      sub_1CF9E81D8();
      if (v21 <= 30)
      {
        switch(v21)
        {
          case 28:
            v24 = 0;
            break;
          case 29:
            v24 = 1;
            break;
          case 30:
            v24 = 2;
            break;
          default:
            goto LABEL_32;
        }
      }

      else if (v21 > 32)
      {
        if (v21 == 33)
        {
          v24 = 6;
        }

        else
        {
          if (v21 != 34)
          {
LABEL_32:
            MEMORY[0x1D386A470](3);
            sub_1CF07FC44(v21);
            sub_1CF9E69C8();

            goto LABEL_37;
          }

          v24 = 7;
        }
      }

      else if (v21 == 31)
      {
        v24 = 4;
      }

      else
      {
        v24 = 5;
      }

      MEMORY[0x1D386A470](v24);
LABEL_37:
      result = sub_1CF9E8228();
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
            goto LABEL_9;
          }
        }

LABEL_55:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      result = sub_1CEFE9EB8(v34, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }
  }

LABEL_53:
  *v3 = v8;
  return result;
}

uint64_t sub_1CF7C4200(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0B48, &unk_1CFA079E0);
  v40 = a2;
  result = sub_1CF9E7BD8();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_1CF9E81D8();
      sub_1CF9E69C8();
      result = sub_1CF9E8228();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}