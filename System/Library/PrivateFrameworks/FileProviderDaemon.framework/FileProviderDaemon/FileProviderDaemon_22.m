void *sub_1CF283F94@<X0>(void **a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = sub_1CF9E5A58();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = *a1;
  if (*a1)
  {
    v10 = [result URL];
    sub_1CF9E59D8();

    sub_1CF9E5A18();
    (*(v5 + 8))(v8, v4);
    sub_1CF9E5A18();
    v11 = sub_1CF9E6978();

    v12 = sub_1CF9E6978();

    v13 = MEMORY[0x1D386BA20](4294967294, v11 + 32, 4294967294, v12 + 32, 4);

    *a2 = v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1CF284134()
{
  sub_1CF9E7948();

  v0 = sub_1CF2A86DC();
  MEMORY[0x1D3868CC0](v0);

  return 0xD000000000000030;
}

uint64_t sub_1CF2841B4(int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t *a13, uint64_t a14, uint64_t a15, uint64_t *a16)
{
  v104 = a8;
  v124 = a7;
  v101 = a6;
  v103 = a2;
  LODWORD(v100) = a1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5000, &qword_1CFA181A0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v89 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v96 = &v89 - v24;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0);
  v25 = *(*(v94 - 8) + 64);
  MEMORY[0x1EEE9AC00](v94);
  v95 = &v89 - v26;
  v27 = type metadata accessor for VFSItem(0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v98 = &v89 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v97 = &v89 - v31;
  v93 = type metadata accessor for ItemMetadata();
  v32 = *(*(v93 - 8) + 64);
  MEMORY[0x1EEE9AC00](v93);
  v99 = &v89 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v89 - v35;
  v37 = sub_1CF9E53C8();
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v41 = &v89 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    v90 = v18;
    v91 = v21;
    v42 = a5[17];
    sub_1CEFD90AC(v104, v36, type metadata accessor for ItemMetadata);
    swift_beginAccess();
    v43 = *a9;
    v44 = *(a9 + 2);
    v45 = a9[2];
    v46 = *(a9 + 24);
    v47 = objc_sync_enter(a5);
    if (v47)
    {
      MEMORY[0x1EEE9AC00](v47);
      v88 = a5;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, &v87, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
    }

    v48 = a5[20];

    v92 = a5;
    v49 = objc_sync_exit(a5);
    if (v49)
    {
      MEMORY[0x1EEE9AC00](v49);
      v88 = v92;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, &v87, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
    }

    v121 = *(a10 + 240);
    v50 = *(a10 + 208);
    v118 = *(a10 + 192);
    v119 = v50;
    v120 = *(a10 + 224);
    v51 = *(a10 + 144);
    v114 = *(a10 + 128);
    v115 = v51;
    v52 = *(a10 + 176);
    v116 = *(a10 + 160);
    v117 = v52;
    v53 = *(a10 + 80);
    v110 = *(a10 + 64);
    v111 = v53;
    v54 = *(a10 + 112);
    v112 = *(a10 + 96);
    v113 = v54;
    v55 = *(a10 + 16);
    v106 = *a10;
    v107 = v55;
    v56 = *(a10 + 48);
    v108 = *(a10 + 32);
    v109 = v56;
    v57 = *(*v42 + 512);
    LOWORD(v87) = v46;
    v58 = v102;
    v59 = v103;
    v57(v122, v101, v100, v103, v124, v36, v43, v44, v45, v87, v48, &v106);
    sub_1CEFE5888(v36, type metadata accessor for ItemMetadata);

    if (!v58)
    {
      v102 = a14;
      v101 = a13;
      v89 = v122[1];
      v100 = v122[0];
      v61 = v123;
      v62 = v104;
      v63 = v99;
      sub_1CEFD90AC(v104, v99, type metadata accessor for ItemMetadata);
      v64 = v93;
      v65 = *(v93 + 112);
      if ((*(v62 + v65) & 1) != 0 || (v66 = *(v59 + 40), v66 == 3))
      {
        *(v63 + v65) = 1;
        v67 = v94;
      }

      else
      {
        v67 = v94;
        if (*(a11 + *(v94 + 40)))
        {
          *(v63 + v65) = 0;
          goto LABEL_9;
        }

        *(v63 + v65) = v66 == 2;
        if (v66 != 2)
        {
          goto LABEL_9;
        }
      }

      *(v63 + *(v64 + 104)) = *(v59 + 56);
      *(v63 + *(v64 + 108)) = *(v59 + 168);
LABEL_9:
      sub_1CEFD90AC(a12, v98, type metadata accessor for VFSItem);
      v68 = *a11;
      v69 = *(a11 + 8);
      v70 = v63;
      v71 = a11[2];
      v72 = a11[3];
      v73 = *(v67 + 40);
      v74 = v95;
      sub_1CEFD90AC(v70, &v95[v73], type metadata accessor for ItemMetadata);
      *v74 = v68;
      *(v74 + 8) = v69;
      *(v74 + 16) = v71;
      *(v74 + 24) = v72;
      v106 = v100;
      v107 = v89;
      *&v108 = v61;
      v75 = sub_1CF9E5A58();
      v76 = *(v75 - 8);
      v77 = v96;
      (*(v76 + 16))(v96, v124, v75);
      (*(v76 + 56))(v77, 0, 1, v75);
      v105 = *v101;

      v79 = v97;
      v78 = v98;
      sub_1CF27A500(v98, v74, &v106, v77, &v105, v102, v97);
      sub_1CEFCCC44(v77, &unk_1EC4BE310, qword_1CF9FCBE0);
      sub_1CF1E6520(v106, *(&v106 + 1), v107, *(&v107 + 1), v108);
      sub_1CEFCCC44(v74, &unk_1EC4BFD90, &unk_1CFA134F0);
      sub_1CEFE5888(v78, type metadata accessor for VFSItem);
      swift_beginAccess();
      v81 = *a15;
      v80 = *(a15 + 8);
      v82 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BED10, &qword_1CFA006F0) + 48);
      v83 = v91;
      sub_1CEFD90AC(v79, v91, type metadata accessor for VFSItem);
      v84 = *a16;
      v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BED18, &qword_1CFA006F8);
      *(v83 + v85[9]) = v84;
      *(v83 + v85[10]) = 0;
      v86 = v83 + v85[11];
      *v86 = 0;
      *(v86 + 8) = 0;
      *(v86 + 16) = 0;
      *(v86 + 24) = 0xB000000000000000;
      *(v86 + 32) = 0u;
      *(v86 + 48) = 0u;
      (*(*(v85 - 1) + 56))(v83, 0, 1, v85);
      *(v83 + v82) = 0;
      swift_storeEnumTagMultiPayload();

      v81(v83);

      sub_1CEFCCC44(v83, &unk_1EC4C5000, &qword_1CFA181A0);
      sub_1CEFE5888(v79, type metadata accessor for VFSItem);
      return sub_1CEFE5888(v99, type metadata accessor for ItemMetadata);
    }
  }

  else
  {
    LODWORD(v106) = 2;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF2A9448(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
    sub_1CF9E57D8();
    sub_1CF9E53A8();
    (*(v38 + 8))(v41, v37);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1CF284AB8(int a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, uint64_t a12, char a13, void *a14)
{
  v86 = a8;
  v85 = a7;
  v89 = a5;
  LODWORD(v87) = a1;
  v109 = *MEMORY[0x1E69E9840];
  v16 = type metadata accessor for VFSItem(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1CF9E53C8();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v81 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for ItemMetadata();
  v26 = *(*(v25 - 1) + 64);
  MEMORY[0x1EEE9AC00](v25);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v81 - v28;
  if (!a4)
  {
    v87 = v21;
    v49 = v85;
    v50 = v29;
    v88 = v19;
    v51 = v86;
    LOBYTE(v90) = 0;
    if ((fpfs_is_dataless_fault() & 0x80000000) != 0)
    {
      v57 = MEMORY[0x1D38683F0]();
      *v102 = 18;
      memset(&v102[8], 0, 32);
      v102[40] = 19;
      sub_1CF19BBE4(v57, v102);
      sub_1CF1969CC(v102);
    }

    else
    {
      if (v90)
      {
        v89 = a10;
        v87 = a9;
        v84 = *(a6 + 16);
        v52 = *(a6 + 36);
        v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0);
        sub_1CEFD90AC(v49 + *(v53 + 40), v50, type metadata accessor for ItemMetadata);
        v54 = v50;
        v55 = *v50;
        if (v55 == 1)
        {
          v85 = 0;
          v82 = 0;
          v83 = 1;
          v56 = v88;
        }

        else
        {
          v58 = v55 != 2 && v50[v25[20]] == 0;
          v56 = v88;
          if (v58)
          {
            v59 = *(v54 + v25[28]);
            v82 = v52;
            if ((v59 & 1) == 0)
            {
              v83 = 0;
              v85 = *(v54 + v25[26]);
              goto LABEL_26;
            }

            v85 = 0;
          }

          else
          {
            v85 = 0;
            v82 = 0;
          }

          v83 = 1;
        }

LABEL_26:
        sub_1CEFE5888(v54, type metadata accessor for ItemMetadata);
        sub_1CEFD90AC(v51, v56, type metadata accessor for VFSItem);
        v60 = v56 + *(v16 + 36);
        v61 = *v60;
        v62 = *(v60 + 8);
        v63 = *(v60 + 16);
        v64 = *(v60 + 24);
        v65 = *(v56 + 16);
        v66 = *(v56 + 24);
        v67 = v56;
        v69 = *(v56 + 32);
        v68 = *(v56 + 40);

        sub_1CEFE5888(v67, type metadata accessor for VFSItem);
        v102[0] = v64;
        v90 = v61;
        v91 = v62;
        v92 = v63;
        v93 = v64;
        v94 = 0;
        v95 = v65;
        v96 = v66;
        v97 = v69;
        v98 = v68;
        v100 = 0;
        v101 = 0;
        v99 = 0;

        sub_1CEFCCC44(&v90, &unk_1EC4BE330, &unk_1CF9FF010);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
        sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
        swift_allocError();
        v71 = v70;
        sub_1CF1B8150();
        v72 = swift_allocError();
        *v73 = 0xB000000000000010;
        *v102 = v87;
        v102[8] = v89;
        *&v102[16] = v84;
        *&v102[24] = v82;
        *&v102[32] = v85;
        v102[40] = v83;
        *&v103 = 0;
        *(&v103 + 1) = v65;
        LOBYTE(v104) = v66;
        *(&v104 + 1) = v69;
        v105 = v68;
        v106 = 0uLL;
        v107 = v72;
        sub_1CF2A8DE0(v102);
        *v71 = *v102;
        v74 = *&v102[16];
        v75 = *&v102[32];
        v76 = v104;
        *(v71 + 48) = v103;
        *(v71 + 64) = v76;
        *(v71 + 16) = v74;
        *(v71 + 32) = v75;
        v77 = v105;
        v78 = v106;
        v79 = v107;
        *(v71 + 128) = v108;
        *(v71 + 96) = v78;
        *(v71 + 112) = v79;
        *(v71 + 80) = v77;
        goto LABEL_27;
      }

      *v102 = 37;
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF2A9448(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
      sub_1CF9E57D8();
      sub_1CF9E53A8();
      (*(v87 + 8))(v24, v20);
    }

LABEL_27:
    result = swift_willThrow();
    goto LABEL_28;
  }

  v31 = *(a6 + 88);
  v32 = *(a6 + 64);
  v33 = *(a6 + 72);
  v34 = *(a6 + 80);
  if (*(a6 + 80))
  {
    v35 = -1;
  }

  else
  {
    v35 = *(a6 + 64);
  }

  if (v34)
  {
    v36 = -1;
  }

  else
  {
    v36 = v33;
  }

  sub_1CEFD90AC(a11, &v81 - v28, type metadata accessor for ItemMetadata);
  v37 = objc_sync_enter(a14);
  if (v37)
  {
    MEMORY[0x1EEE9AC00](v37);
    *(&v81 - 2) = a14;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v81 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v85 = v36;
  v86 = v35;
  v38 = a14[20];

  v39 = objc_sync_exit(a14);
  if (v39)
  {
    MEMORY[0x1EEE9AC00](v39);
    *(&v81 - 2) = a14;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v81 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v84 = a12;
  os_unfair_lock_lock((v38 + 56));
  v41 = *(v38 + 64);
  v40 = *(v38 + 72);
  v42 = *(v38 + 88);
  v43 = *(v38 + 89);
  v44 = *(v38 + 90);

  v45 = *(v38 + 80);
  os_unfair_lock_unlock((v38 + 56));

  MEMORY[0x1EEE9AC00](v46);
  *(&v81 - 20) = v89;
  *(&v81 - 9) = 0x1E9F18F07;
  *(&v81 - 16) = v87;
  v47 = v85;
  *(&v81 - 7) = v86;
  *(&v81 - 6) = v47;
  *(&v81 - 40) = v31 & 1;
  *(&v81 - 39) = a13 & 1;
  *(&v81 - 4) = v41;
  *(&v81 - 3) = v40;
  *(&v81 - 2) = v45;
  *(&v81 - 8) = v42;
  *(&v81 - 7) = v43;
  *(&v81 - 6) = v44;
  sub_1CF9B9F4C(v84, sub_1CF2B9EEC, (&v81 - 12), v102);
  sub_1CEFE5888(v30, type metadata accessor for ItemMetadata);

LABEL_28:
  v80 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CF285330(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, _OWORD *a7)
{
  v58 = a6;
  v59 = a7;
  v57 = a5;
  v61 = a4;
  v60 = a3;
  v63 = a1;
  v62 = type metadata accessor for VFSItem(0);
  v8 = *(v62 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v56 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v64 = &v56 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = (&v56 - v19);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5000, &qword_1CFA181A0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = (&v56 - v23);
  swift_beginAccess();
  v25 = *(a2 + 16);
  v26 = *(a2 + 24);
  v65 = v25;
  sub_1CEFCCBDC(v63, v20, &unk_1EC4BF310, &unk_1CF9FDB30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *v24 = *v20;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v27 = v20;
    v28 = v64;
    sub_1CEFE55D0(v27, v64, &unk_1EC4BEC00, &unk_1CF9FCB60);
    sub_1CEFCCBDC(v28, v14, &unk_1EC4BEC00, &unk_1CF9FCB60);
    if ((*(v8 + 48))(v14, 1, v62) == 1)
    {

      sub_1CEFCCC44(v14, &unk_1EC4BEC00, &unk_1CF9FCB60);
      v29 = swift_allocObject();
      v30 = swift_allocObject();
      v31 = v57;
      swift_beginAccess();
      *(v30 + 16) = *(v31 + 16);
      *(v29 + 16) = v30;
      v32 = v29 | 0xA000000000000000;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
      sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
      v33 = swift_allocError();
      v35 = v34;
      sub_1CF1B8150();
      v36 = swift_allocError();
      *v37 = v32;
      *&v67 = v60;
      BYTE8(v67) = v61;
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      v71 = 0u;
      v72 = 0u;
      v73 = 0u;
      v74 = v36;
      sub_1CF2A8DE0(&v67);
      *v35 = v67;
      v38 = v68;
      v39 = v69;
      v40 = v71;
      *(v35 + 48) = v70;
      *(v35 + 64) = v40;
      *(v35 + 16) = v38;
      *(v35 + 32) = v39;
      v41 = v72;
      v42 = v73;
      v43 = v74;
      *(v35 + 128) = v75;
      *(v35 + 96) = v42;
      *(v35 + 112) = v43;
      *(v35 + 80) = v41;
      sub_1CEFCCC44(v64, &unk_1EC4BEC00, &unk_1CF9FCB60);
      *v24 = v33;
      swift_storeEnumTagMultiPayload();
    }

    else
    {

      sub_1CEFCCC44(v64, &unk_1EC4BEC00, &unk_1CF9FCB60);
      v44 = v56;
      sub_1CEFE4C60(v14, v56, type metadata accessor for VFSItem);
      v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BED10, &qword_1CFA006F0) + 48);
      sub_1CEFE4C60(v44, v24, type metadata accessor for VFSItem);
      v46 = v58;
      swift_beginAccess();
      v47 = *(v46 + 16);
      v48 = v59;
      swift_beginAccess();
      v49 = v48[2];
      v67 = v48[1];
      v68 = v49;
      v50 = v48[4];
      v69 = v48[3];
      v70 = v50;
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BED18, &qword_1CFA006F8);
      *(v24 + v51[9]) = v47;
      *(v24 + v51[10]) = 0;
      v52 = (v24 + v51[11]);
      v53 = v48[2];
      *v52 = v48[1];
      v52[1] = v53;
      v54 = v48[4];
      v52[2] = v48[3];
      v52[3] = v54;
      (*(*(v51 - 1) + 56))(v24, 0, 1, v51);
      *(v24 + v45) = 0;
      swift_storeEnumTagMultiPayload();
      sub_1CEFCCBDC(&v67, &v66, &unk_1EC4BF260, &unk_1CFA01B60);
    }
  }

  v65(v24);

  return sub_1CEFCCC44(v24, &unk_1EC4C5000, &qword_1CFA181A0);
}

uint64_t sub_1CF285904@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, unsigned __int8 a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t *a14, uint64_t a15, uint64_t a16)
{
  v158 = a3;
  v155 = a7;
  v161 = a5;
  v162 = a6;
  v196 = a2;
  v153 = a1;
  v151 = a8;
  v154 = a9;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v150 = &v141 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v152 = &v141 - v22;
  v23 = sub_1CF9E53C8();
  v146 = *(v23 - 8);
  v147 = v23;
  v24 = *(v146 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v145 = &v141 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for VFSItem(0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26);
  v149 = &v141 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v141 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v141 - v33;
  v160 = type metadata accessor for ItemMetadata();
  v35 = *(*(v160 - 1) + 64);
  MEMORY[0x1EEE9AC00](v160);
  v156 = &v141 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v141 - v38;
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v141 - v41;
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v141 - v44;
  if (v158)
  {
    v158 = a4;
    v142 = v26;
    v46 = *(v26 + 28);
    v47 = v162;
    sub_1CEFD90AC(v162 + v46, v39, type metadata accessor for ItemMetadata);
    v157 = a10;
    v48 = *a10;
    v143 = v20;
    v49 = v161 + *(v20 + 40);
    sub_1CEFD90AC(v39, v42, type metadata accessor for ItemMetadata);
    *&v179 = v48;
    sub_1CF677700(&v179, v49);
    sub_1CEFE5888(v39, type metadata accessor for ItemMetadata);
    sub_1CEFD90AC(v47, v31, type metadata accessor for VFSItem);
    if (*(a12 + 2))
    {
      v52 = 0;
      v50 = v160;
      v53 = v49;
    }

    else
    {
      v50 = v160;
      v51 = v160[21];
      v52 = *(v49 + v51);
      v53 = v49;
      if (*(v49 + v51))
      {
        if (*v157 & 8) != 0 && (v54 = v160[20], v31[v142[7] + v54] == 1) && (*(v49 + v54))
        {
          v52 = 0;
        }

        else if ((*v157 & 0x10010) == 0)
        {
          v52 = v31[v142[7] + v51];
        }
      }
    }

    sub_1CEFE5888(v31, type metadata accessor for VFSItem);
    v42[v50[21]] = v52;
    v85 = v50[20];
    v86 = v158;
    if ((v42[v85] & 1) == 0 && v52)
    {
      v87 = v50[23];
      if (v42[v87] == 6)
      {
        v42[v87] = v53[v87];
      }

      else
      {
        LOBYTE(v179) = v53[v87];
        ResidencyReason.convert(to:)(&v179);
      }
    }

    v148 = a13;
    if ((*(v157 + 5) & 1) != 0 && *v53 == 2)
    {
      v42[v85] = 0;
    }

    v141 = v53;
    v88 = a11[17];
    v89 = *(v196 + 8);
    v90 = v88 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_wharfHandle;
    swift_beginAccess();
    v91 = *(v90 + 32);
    v144 = a11;
    if (v89 == v91)
    {
      v92 = v42;
      sub_1CEFD90AC(v42, v156, type metadata accessor for ItemMetadata);
      swift_beginAccess();
      v93 = *a14;
      v147 = *(a14 + 2);
      v94 = a14[2];
      v95 = *(a14 + 24);
      v96 = objc_sync_enter(a11);
      if (!v96)
      {
        v97 = a11[20];

        v98 = objc_sync_exit(a11);
        if (v98)
        {
          goto LABEL_64;
        }

        sub_1CEFE528C(&v179);
        v175 = v191;
        v176 = v192;
        v177 = v193;
        v178 = v194;
        v171 = v187;
        v172 = v188;
        v173 = v189;
        v174 = v190;
        v167 = v183;
        v168 = v184;
        v169 = v185;
        v170 = v186;
        v163 = v179;
        v164 = v180;
        v165 = v181;
        v166 = v182;
        v99 = *(*v88 + 512);
        LOWORD(v139) = v95;
        v100 = v159;
        v101 = v156;
        v99(v195, v158, v153, v196, v148, v156, v93, v147, v94, v139, v97, &v163);
        v102 = v100;
        if (!v100)
        {

          sub_1CEFE5888(v101, type metadata accessor for ItemMetadata);

          v86 = v158;
          v42 = v92;
          v50 = v160;
          goto LABEL_44;
        }

        sub_1CEFE5888(v101, type metadata accessor for ItemMetadata);

        v103 = v100;
        LODWORD(v163) = sub_1CF9E5338();
        sub_1CF196978();
        v104 = sub_1CF9E5658();

        v42 = v92;
        if (v104)
        {

          v105 = (a15 + v142[9]);
          v106 = *v105;
          v107 = (a15 + v142[14]);
          if (*(v107 + 4))
          {
            v108 = 0;
          }

          else
          {
            v108 = *v107;
          }

          v109 = *(v105 + 2);

          v163 = v106;
          v164 = __PAIR64__(v109, v108);
          *&v165 = 0;
          v110 = v144;
          v111 = objc_sync_enter(v144);
          if (!v111)
          {
            v112 = v110[20];

            v98 = objc_sync_exit(v110);
            v86 = v158;
            v50 = v160;
            if (!v98)
            {
              v113 = *(v112 + 16);

              v102 = 0;
              v138 = sub_1CEFDADE0(&v163, v113, 2097153);

              *&v163 = v155;
              BYTE8(v163) = v154;
              sub_1CF262BC8(&v163, v138);
              if ((v138 & 0x80000000) == 0)
              {
                close(v138);
              }

LABEL_44:
              v158 = a16;
              v159 = v102;
              v120 = v50[28];
              if ((v42[v120] & 1) != 0 || (v121 = *(v196 + 40), v121 == 3))
              {
                v42[v120] = 1;
                v122 = v149;
                v123 = v143;
              }

              else
              {
                v122 = v149;
                v123 = v143;
                if (*v141)
                {
                  v42[v120] = 0;
                  goto LABEL_48;
                }

                v42[v120] = v121 == 2;
                if (v121 != 2)
                {
                  goto LABEL_48;
                }
              }

              v124 = v196;
              v125 = v160;
              *&v42[v160[26]] = *(v196 + 56);
              *&v42[v125[27]] = *(v124 + 168);
LABEL_48:
              sub_1CEFD90AC(v162, v122, type metadata accessor for VFSItem);
              v126 = *v161;
              v127 = *(v161 + 8);
              v128 = v42;
              v130 = v161[2];
              v129 = v161[3];
              v131 = *(v123 + 40);
              v132 = v152;
              v196 = v128;
              sub_1CEFD90AC(v128, &v152[v131], type metadata accessor for ItemMetadata);
              *v132 = v126;
              *(v132 + 8) = v127;
              *(v132 + 16) = v130;
              *(v132 + 24) = v129;
              v133 = *(v86 + 48);
              v134 = *(v86 + 32);
              v179 = *(v86 + 16);
              v180 = v134;
              *&v181 = v133;
              v135 = sub_1CF9E5A58();
              v136 = *(v135 - 8);
              v137 = v150;
              (*(v136 + 16))(v150, v148, v135);
              (*(v136 + 56))(v137, 0, 1, v135);
              *&v163 = *v157;

              sub_1CF27A500(v122, v132, &v179, v137, &v163, v158, v151);
              sub_1CEFCCC44(v137, &unk_1EC4BE310, qword_1CF9FCBE0);
              sub_1CF1E6520(v179, *(&v179 + 1), v180, *(&v180 + 1), v181);
              sub_1CEFCCC44(v132, &unk_1EC4BFD90, &unk_1CFA134F0);
              sub_1CEFE5888(v122, type metadata accessor for VFSItem);
              v119 = v196;
              return sub_1CEFE5888(v119, type metadata accessor for ItemMetadata);
            }

LABEL_64:
            MEMORY[0x1EEE9AC00](v98);
            v140 = v144;
            fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, &v139, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
          }

          MEMORY[0x1EEE9AC00](v111);
          v140 = v110;
LABEL_63:
          fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, &v139, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
        }

LABEL_42:
        v119 = v42;
        return sub_1CEFE5888(v119, type metadata accessor for ItemMetadata);
      }
    }

    else
    {
      v96 = objc_sync_enter(a11);
      if (!v96)
      {
        v114 = a11[20];

        v98 = objc_sync_exit(a11);
        if (v98)
        {
          goto LABEL_64;
        }

        v115 = *(v114 + 32);

        v116 = sub_1CF9C46A4(v196, v115);

        v102 = v159;
        if (v116)
        {
          goto LABEL_44;
        }

        LODWORD(v179) = 2;
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF2A9448(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
        v117 = v145;
        v118 = v147;
        sub_1CF9E57D8();
        sub_1CF9E53A8();
        (*(v146 + 8))(v117, v118);
        swift_willThrow();
        goto LABEL_42;
      }
    }

    MEMORY[0x1EEE9AC00](v96);
    v140 = a11;
    goto LABEL_63;
  }

  v55 = v26;
  v56 = v162;
  v196 = *(a4 + 16);
  v57 = *(a4 + 36);
  sub_1CEFD90AC(v161 + *(v20 + 40), &v141 - v44, type metadata accessor for ItemMetadata);
  v58 = *v45;
  if (v58 == 1)
  {
    v59 = 0;
    v60 = 0;
    v61 = 1;
    v62 = v56;
    v63 = v55;
  }

  else
  {
    v60 = 0;
    v59 = 0;
    v62 = v56;
    v63 = v55;
    if (v58 == 2)
    {
      v61 = 1;
    }

    else
    {
      v61 = 1;
      if (!v45[v160[20]])
      {
        if (v45[v160[28]])
        {
          v59 = 0;
        }

        else
        {
          v61 = 0;
          v59 = *&v45[v160[26]];
        }

        v60 = v57;
      }
    }
  }

  LODWORD(v160) = v60;
  v161 = v59;
  LODWORD(v162) = v61;
  sub_1CEFE5888(v45, type metadata accessor for ItemMetadata);
  sub_1CEFD90AC(v62, v34, type metadata accessor for VFSItem);
  v64 = &v34[*(v63 + 36)];
  v65 = *v64;
  v66 = *(v64 + 2);
  v67 = *(v64 + 2);
  v68 = v64[24];
  v69 = *(v34 + 2);
  v70 = v34[24];
  v71 = *(v34 + 5);
  v159 = *(v34 + 4);

  sub_1CEFE5888(v34, type metadata accessor for VFSItem);
  LOBYTE(v179) = v68;
  *&v163 = v65;
  DWORD2(v163) = v66;
  *&v164 = v67;
  BYTE8(v164) = v68;
  *&v165 = 0;
  *(&v165 + 1) = v69;
  LOBYTE(v166) = v70;
  v72 = v70;
  v73 = v159;
  *(&v166 + 1) = v159;
  v167 = v71;
  v168 = 0uLL;

  sub_1CEFCCC44(&v163, &unk_1EC4BE330, &unk_1CF9FF010);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
  sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
  swift_allocError();
  v75 = v74;
  sub_1CF1B8150();
  v76 = swift_allocError();
  *v77 = 0xB000000000000010;
  *&v179 = v155;
  BYTE8(v179) = v154;
  *&v180 = v196;
  DWORD2(v180) = v160;
  *&v181 = v161;
  BYTE8(v181) = v162;
  *&v182 = 0;
  *(&v182 + 1) = v69;
  LOBYTE(v183) = v72;
  *(&v183 + 1) = v73;
  v184 = v71;
  v185 = 0uLL;
  v186 = v76;
  sub_1CF2A8DE0(&v179);
  *v75 = v179;
  v78 = v180;
  v79 = v181;
  v80 = v183;
  *(v75 + 48) = v182;
  *(v75 + 64) = v80;
  *(v75 + 16) = v78;
  *(v75 + 32) = v79;
  v81 = v184;
  v82 = v185;
  v83 = v186;
  *(v75 + 128) = v187;
  *(v75 + 96) = v82;
  *(v75 + 112) = v83;
  *(v75 + 80) = v81;
  return swift_willThrow();
}

uint64_t sub_1CF286890(uint64_t *a1, __int128 *a2, unint64_t a3, uint64_t *a4, __int128 *a5, uint64_t a6, __int128 *a7, uint64_t *a8, void (*a9)(void, void), uint64_t a10)
{
  v134 = a4;
  v136 = a3;
  v141 = a10;
  v135 = a9;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0);
  v128 = *(v125 - 1);
  v129 = *(v128 + 64);
  MEMORY[0x1EEE9AC00](v125);
  v130 = &v118 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v118 - v18;
  v133 = sub_1CF9E63D8();
  v140 = *(v133 - 8);
  v20 = *(v140 + 8);
  v21 = MEMORY[0x1EEE9AC00](v133);
  v127 = &v118 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v132 = &v118 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v126 = &v118 - v25;
  v26 = sub_1CF9E6448();
  v137 = *(v26 - 8);
  v138 = v26;
  v27 = v137[8];
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = &v118 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v118 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x1EEE9AC00](v33 - 8);
  v131 = &v118 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v142 = &v118 - v37;
  v38 = *a1;
  v39 = *(a1 + 8);
  v40 = a2[1];
  v155 = *a2;
  v156 = v40;
  v41 = a2[3];
  v157 = a2[2];
  v158 = v41;
  v42 = *v134;
  v43 = a5[3];
  v151 = a5[2];
  v152 = v43;
  v44 = a5[5];
  v153 = a5[4];
  v154 = v44;
  v45 = a5[1];
  v149 = *a5;
  v150 = v45;
  v46 = a7[13];
  v171 = a7[12];
  v172 = v46;
  v173 = a7[14];
  v174 = *(a7 + 30);
  v47 = a7[9];
  v167 = a7[8];
  v168 = v47;
  v48 = a7[11];
  v169 = a7[10];
  v170 = v48;
  v49 = a7[5];
  v163 = a7[4];
  v164 = v49;
  v50 = a7[7];
  v165 = a7[6];
  v166 = v50;
  v51 = a7[1];
  v159 = *a7;
  v160 = v51;
  v52 = a7[2];
  v53 = a7[3];
  v54 = v42 & 0x18;
  v134 = a8;
  v161 = v52;
  v162 = v53;
  if (v54 | a8 & 0x100)
  {
    v121 = v39;
    v122 = v38;
    v123 = v42;
    v55 = v139[27];
    v124 = v139[28];
    v56 = *(v136 + v125[10]);
    v125 = v55;
    if (!v54 || v56 == 1)
    {
      sub_1CF9E6408();
    }

    else
    {
      sub_1CF9E6418();
    }

    v59 = v133;
    v60 = v140;
    qos_class_self();
    sub_1CF9E63B8();
    v61 = *(v60 + 48);
    if (v61(v19, 1, v59) == 1)
    {
      (*(v60 + 104))(v126, *MEMORY[0x1E69E7FA0], v59);
      v62 = v19;
      v140 = v19;
      v63 = v59;
      if (v61(v62, 1, v59) != 1)
      {
        sub_1CEFCCC44(v140, &unk_1EC4BE380, &qword_1CFA01BA0);
      }
    }

    else
    {
      v64 = v19;
      v63 = v59;
      (*(v60 + 32))(v126, v64, v59);
    }

    sub_1CF9E6428();
    v65 = v132;
    v66 = v30;
    sub_1CF9E6438();
    v67 = sub_1CF9E63C8();
    v68 = *(v60 + 8);
    v140 = (v60 + 8);
    v68(v65, v63);
    v69 = v127;
    sub_1CF9E6438();
    v70 = sub_1CF9E63C8();
    v126 = v68;
    v68(v69, v63);
    v71 = v137;
    v72 = v137[1];
    if (v67 >= v70)
    {
      v73 = v66;
    }

    else
    {
      v73 = v32;
    }

    if (v67 >= v70)
    {
      v74 = v32;
    }

    else
    {
      v74 = v66;
    }

    v75 = v138;
    v119 = v137[1];
    v120 = v137 + 1;
    v72(v73, v138);
    v76 = v142;
    (v71[4])(v142, v74, v75);
    (v71[7])(v76, 0, 1, v75);
    v77 = swift_allocObject();
    v78 = v135;
    v79 = v141;
    *(v77 + 16) = v135;
    *(v77 + 24) = v79;
    v80 = v130;
    sub_1CEFCCBDC(v136, v130, &unk_1EC4BFD90, &unk_1CFA134F0);
    v81 = (*(v128 + 80) + 32) & ~*(v128 + 80);
    v82 = (v129 + v81 + 7) & 0xFFFFFFFFFFFFFFF8;
    v83 = (v82 + 15) & 0xFFFFFFFFFFFFFFF8;
    v84 = (v83 + 31) & 0xFFFFFFFFFFFFFFF8;
    v129 = (v84 + 103) & 0xFFFFFFFFFFFFFFF8;
    v127 = ((v83 + 15) & 0xFFFFFFFFFFFFFFF8);
    v128 = (v129 + 15) & 0xFFFFFFFFFFFFFFF8;
    v136 = (v128 + 71) & 0xFFFFFFFFFFFFFFF8;
    v85 = swift_allocObject();
    *(v85 + 16) = v78;
    *(v85 + 24) = v141;
    sub_1CEFE55D0(v80, v85 + v81, &unk_1EC4BFD90, &unk_1CFA134F0);
    *(v85 + v82) = v139;
    *(v85 + v83) = v134;
    v86 = v138;
    v87 = &v127[v85];
    *v87 = v122;
    v87[8] = v121;
    v88 = (v85 + v84);
    v89 = v150;
    *v88 = v149;
    v88[1] = v89;
    v90 = v154;
    v88[4] = v153;
    v88[5] = v90;
    v91 = v152;
    v88[2] = v151;
    v88[3] = v91;
    *(v85 + v129) = v123;
    v92 = (v85 + v128);
    v93 = v156;
    *v92 = v155;
    v92[1] = v93;
    v94 = v158;
    v92[2] = v157;
    v92[3] = v94;
    v95 = v85;
    v96 = v85 + v136;
    v97 = v160;
    *v96 = v159;
    *(v96 + 16) = v97;
    v98 = v162;
    *(v96 + 32) = v161;
    *(v96 + 48) = v98;
    v99 = v164;
    *(v96 + 64) = v163;
    *(v96 + 80) = v99;
    v100 = v166;
    *(v96 + 96) = v165;
    *(v96 + 112) = v100;
    v101 = v168;
    *(v96 + 128) = v167;
    *(v96 + 144) = v101;
    v102 = v170;
    *(v96 + 160) = v169;
    *(v96 + 176) = v102;
    v103 = v172;
    *(v96 + 192) = v171;
    *(v96 + 208) = v103;
    *(v96 + 224) = v173;
    *(v96 + 240) = v174;
    v104 = swift_allocObject();
    v104[2] = sub_1CEFF9D90;
    v104[3] = v77;
    v105 = v124;
    v104[4] = v124;
    swift_retain_n();

    sub_1CEFCCBDC(&v149, &v143, &unk_1EC4BE330, &unk_1CF9FF010);
    sub_1CEFCCBDC(&v155, &v143, &unk_1EC4BF260, &unk_1CFA01B60);
    sub_1CEFCCBDC(&v159, &v143, &qword_1EC4BECF0, &unk_1CF9FEEB0);
    v141 = v77;

    v106 = fpfs_current_log();
    v139 = *(v105 + 16);
    v107 = v137[6];
    v108 = v142;
    if (v107(v142, 1, v86) == 1)
    {
      v109 = DISPATCH_BLOCK_INHERIT_QOS_CLASS;
    }

    else
    {
      v109 = DISPATCH_BLOCK_ENFORCE_QOS_CLASS;
    }

    v110 = v131;
    sub_1CEFCCBDC(v108, v131, &unk_1EC4BE370, qword_1CFA01B30);
    if (v107(v110, 1, v86) == 1)
    {
      sub_1CEFCCC44(v110, &unk_1EC4BE370, qword_1CFA01B30);
      v111 = QOS_CLASS_UNSPECIFIED;
    }

    else
    {
      v112 = v132;
      sub_1CF9E6438();
      v119(v110, v86);
      v111 = sub_1CF9E63C8();
      (v126)(v112, v133);
    }

    v113 = swift_allocObject();
    v113[2] = v106;
    v113[3] = sub_1CF2B0698;
    v113[4] = v95;
    v147 = sub_1CF2BA17C;
    v148 = v113;
    v143 = MEMORY[0x1E69E9820];
    v144 = 1107296256;
    v145 = sub_1CEFCA444;
    v146 = &block_descriptor_524;
    v114 = _Block_copy(&v143);
    v115 = v106;

    v147 = sub_1CF2B0788;
    v148 = v104;
    v143 = MEMORY[0x1E69E9820];
    v144 = 1107296256;
    v145 = sub_1CEFCA444;
    v146 = &block_descriptor_527;
    v116 = _Block_copy(&v143);

    v117 = v125;
    fp_task_tracker_async_and_qos(v139, v125, v109, v111, v114, v116);
    _Block_release(v116);
    _Block_release(v114);

    return sub_1CEFCCC44(v142, &unk_1EC4BE370, qword_1CFA01B30);
  }

  else
  {
    type metadata accessor for StagedContext();
    v57 = swift_allocObject();
    v135(v57, 0);
  }
}

uint64_t sub_1CF2873A4(void (*a1)(uint64_t, void), uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, int a7, __int128 *a8, uint64_t a9, __int128 *a10, uint64_t a11)
{
  LODWORD(v92) = a7;
  v91 = a6;
  v93 = a2;
  v94 = a1;
  v127 = *MEMORY[0x1E69E9840];
  v15 = a8[3];
  v123 = a8[2];
  v124 = v15;
  v16 = a8[5];
  v125 = a8[4];
  v126 = v16;
  v17 = a8[1];
  v121 = *a8;
  v122 = v17;
  v18 = type metadata accessor for ItemMetadata();
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v86 = &v82 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v89 = &v82 - v22;
  v23 = type metadata accessor for VFSItem(0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v82 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = 0;
  v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0) + 40);
  v87 = a5;
  v88 = a3;
  v28 = a3 + v27;
  v90 = *(a3 + v27 + *(v18 + 112));
  *&v114 = v91;
  BYTE8(v114) = v92;
  v29 = a8[3];
  v100 = a8[2];
  v101 = v29;
  v30 = a8[5];
  v102 = a8[4];
  v103 = v30;
  v31 = a8[1];
  v98 = *a8;
  v99 = v31;
  v92 = a9;
  v96 = a9 & 0xFFFFFFFFFFFFFFEFLL;
  sub_1CF278908(&v114, &v98, &v96, (a5 << 6) & 0x1000, v26);
  v84 = a4;
  v85 = v18;
  v82 = a8;
  v83 = a5 << 6;
  v91 = v28;
  v33 = &v26[*(v23 + 28)];
  v34 = v92;
  if ((v92 & 8) != 0)
  {
    v35 = v91;
    v36 = v85;
    v37 = v89;
    v38 = v90;
    if (*v91 != 1)
    {
      goto LABEL_6;
    }

LABEL_9:
    v44 = 0;
    if ((v92 & 0x10) != 0)
    {
      goto LABEL_22;
    }

LABEL_10:
    v45 = v94;
    if (v44)
    {
      v46 = v44;
    }

    else
    {
      type metadata accessor for StagedContext();
      v46 = swift_allocObject();
    }

    v45(v46, 0);

    v48 = v26;
LABEL_50:
    sub_1CEFE5888(v48, type metadata accessor for VFSItem);
    goto LABEL_51;
  }

  v35 = v91;
  v36 = v85;
  if ((v92 & 0x10) == 0)
  {
    goto LABEL_9;
  }

  v37 = v89;
  v38 = v90;
  if (v90 == *(v33 + v85[28]) && (*v91 == 1 || (*(v91 + v85[20]) & 1) != 0))
  {
    goto LABEL_9;
  }

LABEL_6:
  v39 = v33;
  v89 = v26;
  sub_1CEFD90AC(v35, v37, type metadata accessor for ItemMetadata);
  LOBYTE(v95[0]) = v38;
  if (v38)
  {
    v40 = 1;
    v41 = v84;
    v42 = v87;
    v43 = v88;
  }

  else
  {
    v43 = v88;
    if (*v35 == 1)
    {
      v47 = *(v88 + 24);
      *&v98 = *(v88 + 16);
      *(&v98 + 1) = v47;
      *&v114 = 47;
      *(&v114 + 1) = 0xE100000000000000;
      v96 = 58;
      v97 = 0xE100000000000000;
      sub_1CEFE4E68();
      sub_1CF9E7668();
      sub_1CF9E6978();
      v35 = v91;

      fpfs_pkg_system_lookup();

      v43 = v88;
      v40 = v95[0];
    }

    else
    {
      v40 = 0;
    }

    v41 = v84;
    v42 = v87;
  }

  *(v37 + v36[29]) = v40;
  v49 = v36[20];
  if (*(v33 + v49) == 1 && v35[v49] == 1)
  {
    *(v37 + v36[22]) = *(v33 + v36[22]);
  }

  v50 = *(v41 + 136);
  v51 = a10[1];
  v114 = *a10;
  v115 = v51;
  v52 = a10[3];
  v116 = a10[2];
  v117 = v52;
  v53 = *(a11 + 208);
  v110 = *(a11 + 192);
  v111 = v53;
  v112 = *(a11 + 224);
  v113 = *(a11 + 240);
  v54 = *(a11 + 144);
  v106 = *(a11 + 128);
  v107 = v54;
  v55 = *(a11 + 176);
  v108 = *(a11 + 160);
  v109 = v55;
  v56 = *(a11 + 80);
  v102 = *(a11 + 64);
  v103 = v56;
  v57 = *(a11 + 112);
  v104 = *(a11 + 96);
  v105 = v57;
  v58 = *(a11 + 16);
  v98 = *a11;
  v99 = v58;
  v59 = *(a11 + 48);
  v100 = *(a11 + 32);
  v101 = v59;
  v60 = *(v43 + 24);
  v96 = *(v43 + 16);
  v97 = v60;
  v61 = (v42 >> 8) & 1;
  v62 = *(*v50 + 448);

  v44 = v62(&v114, v37, &v98, &v96, 0, v61);

  sub_1CEFE5888(v37, type metadata accessor for ItemMetadata);
  v32 = swift_beginAccess();
  v120 = v44;
  v90 = *(v44 + 56);
  v26 = v89;
  v35 = v91;
  v34 = v92;
  v36 = v85;
  v33 = v39;
  if ((v92 & 0x10) == 0)
  {
    goto LABEL_10;
  }

LABEL_22:
  v63 = v36[20];
  v64 = v36;
  v65 = *(v33 + v63);
  v66 = v35[v63];
  if (v65 != v66)
  {
    v89 = v26;
    sub_1CEFD90AC(v33, v86, type metadata accessor for ItemMetadata);
    *&v98 = v34;
    sub_1CF677700(&v98, v35);
    if (v90 == *(v33 + v64[28]))
    {
      v69 = v83;
      if (v66)
      {
        if (v65)
        {
          v100 = v123;
          v101 = v124;
          v102 = v125;
          v103 = v126;
          v98 = v121;
          v99 = v122;
          v95[0] = v34;
          sub_1CEFCCBDC(v82, &v114, &unk_1EC4BE330, &unk_1CF9FF010);
          sub_1CF2ABFCC(&v98, v89, v95, v69 & 0x1000);
          v116 = v100;
          v117 = v101;
          v118 = v102;
          v119 = v103;
          v114 = v98;
          v115 = v99;
          sub_1CEFCCC44(&v114, &unk_1EC4BECD0, &unk_1CF9FEF80);
        }

        v70 = v86;
        if ((*(v86 + 8) & 1) == 0)
        {
          v71 = *(v91 + 8);
          *(v86 + 4) = *(v91 + 4);
          *(v70 + 8) = v71;
        }
      }

      else
      {
        if ((v65 & 1) == 0)
        {
          v100 = v123;
          v101 = v124;
          v102 = v125;
          v103 = v126;
          v98 = v121;
          v99 = v122;
          v95[0] = v34;
          sub_1CEFCCBDC(v82, &v114, &unk_1EC4BE330, &unk_1CF9FF010);
          sub_1CF2ABFCC(&v98, v89, v95, v69 & 0x1000);
          v116 = v100;
          v117 = v101;
          v118 = v102;
          v119 = v103;
          v114 = v98;
          v115 = v99;
          sub_1CEFCCC44(&v114, &unk_1EC4BECD0, &unk_1CF9FEF80);
        }

        v70 = v86;
      }

      sub_1CEFE5888(v70, type metadata accessor for ItemMetadata);
      v73 = v94;
      v74 = v89;
      if (v44)
      {
        v75 = v44;
      }

      else
      {
        type metadata accessor for StagedContext();
        v75 = swift_allocObject();
      }

      v73(v75, 0);
    }

    else
    {
      v100 = v123;
      v101 = v124;
      v102 = v125;
      v103 = v126;
      v98 = v121;
      v99 = v122;
      v95[0] = v34;
      sub_1CEFCCBDC(v82, &v114, &unk_1EC4BE330, &unk_1CF9FF010);
      sub_1CF2ABFCC(&v98, v89, v95, v83 & 0x1000);
      v116 = v100;
      v117 = v101;
      v118 = v102;
      v119 = v103;
      v114 = v98;
      v115 = v99;
      sub_1CEFCCC44(&v114, &unk_1EC4BECD0, &unk_1CF9FEF80);
      if (v44)
      {
        v78 = v44;
      }

      else
      {
        type metadata accessor for StagedContext();
        v78 = swift_allocObject();
      }

      v79 = v94;
      v74 = v89;

      v79(v78, 0);

      sub_1CEFE5888(v86, type metadata accessor for ItemMetadata);
    }

    v48 = v74;
    goto LABEL_50;
  }

  if (v44)
  {
    v67 = *(v84 + 136);
    v68 = *(v44 + 16);
    MEMORY[0x1EEE9AC00](v32);
    swift_retain_n();
    sub_1CEFE1894(sub_1CF2B9F78);
    *(v67 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_deleteBusy) = 0;
    if (*(v67 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_garbageCollectionSource))
    {
      v76 = *(v67 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_garbageCollectionSource);
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      MEMORY[0x1D3869790](1, ObjectType);
      swift_unknownObjectRelease();
    }

    v94(v44, 0);
  }

  else
  {
    type metadata accessor for StagedContext();
    v72 = swift_allocObject();
    v94(v72, 0);
  }

  sub_1CEFE5888(v26, type metadata accessor for VFSItem);
LABEL_51:

  v81 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CF28836C(uint64_t a1, uint64_t (*a2)(void), void *a3)
{
  v7 = sub_1CF9E63D8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v35 - v17;
  type metadata accessor for VFSStagedContext();
  v19 = swift_dynamicCastClass();
  if (!v19)
  {
    return a2();
  }

  v20 = v19;
  v36 = v11;
  v37 = v8;
  v38 = v7;
  v21 = *(v3 + 216);
  v42 = *(v3 + 224);
  v22 = sub_1CF9E6448();
  v23 = *(v22 - 8);
  (*(v23 + 56))(v18, 1, 1, v22);
  v24 = swift_allocObject();
  v24[2] = v3;
  v24[3] = v20;
  v41 = a2;
  v24[4] = a2;
  v24[5] = a3;
  v25 = v24;
  v44 = a1;
  swift_retain_n();
  v40 = v21;

  v43 = a3;

  v26 = fpfs_current_log();
  v39 = *(v42 + 2);
  v42 = v18;
  sub_1CEFCCBDC(v18, v16, &unk_1EC4BE370, qword_1CFA01B30);
  if ((*(v23 + 48))(v16, 1, v22) == 1)
  {
    sub_1CEFCCC44(v16, &unk_1EC4BE370, qword_1CFA01B30);
    v27 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v29 = v36;
    sub_1CF9E6438();
    (*(v23 + 8))(v16, v22);
    v27 = sub_1CF9E63C8();
    (*(v37 + 8))(v29, v38);
  }

  v30 = swift_allocObject();
  v30[2] = v26;
  v30[3] = sub_1CF2B068C;
  v30[4] = v25;
  v49 = sub_1CF2BA17C;
  v50 = v30;
  aBlock = MEMORY[0x1E69E9820];
  v46 = 1107296256;
  v47 = sub_1CEFCA444;
  v48 = &block_descriptor_504;
  v31 = _Block_copy(&aBlock);
  v32 = v26;

  v49 = v41;
  v50 = v43;
  aBlock = MEMORY[0x1E69E9820];
  v46 = 1107296256;
  v47 = sub_1CEFCA444;
  v48 = &block_descriptor_507;
  v33 = _Block_copy(&aBlock);

  v34 = v40;
  fp_task_tracker_async_and_qos(v39, v40, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v27, v31, v33);
  _Block_release(v33);
  _Block_release(v31);

  return sub_1CEFCCC44(v42, &unk_1EC4BE370, qword_1CFA01B30);
}

uint64_t sub_1CF2887E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = *(a1 + 136);
  v8 = *(a2 + 16);

  sub_1CEFE1894(sub_1CF2B9F78);
  *(v4 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_deleteBusy) = 0;
  if (*(v4 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_garbageCollectionSource))
  {
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    MEMORY[0x1D3869790](1, ObjectType);
    swift_unknownObjectRelease();
  }

  return a3(v6);
}

uint64_t sub_1CF2888D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v47 = a2;
  v53 = a1;
  v6 = sub_1CF9E63D8();
  v45 = *(v6 - 8);
  v46 = v6;
  v7 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v44 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1CF9E5A58();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v51 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v44 - v16;
  v54 = &v44 - v16;
  v18 = *(v3 + 216);
  v19 = *(v3 + 224);
  v48 = v3;
  v49 = v19;
  v52 = v18;
  v20 = sub_1CF9E6448();
  v50 = *(v20 - 8);
  (*(v50 + 56))(v17, 1, 1, v20);
  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  *(v21 + 24) = a3;
  v22 = v9;
  (*(v10 + 16))(&v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v53, v9);
  v23 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v24 = (v11 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 16) = v48;
  v26 = v25 + v23;
  v27 = v20;
  (*(v10 + 32))(v26, &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v22);
  v28 = v25;
  v29 = (v25 + v24);
  *v29 = v47;
  v29[1] = a3;
  v30 = swift_allocObject();
  v30[2] = sub_1CF2BA174;
  v30[3] = v21;
  v31 = v49;
  v30[4] = v49;
  swift_retain_n();
  v52 = v52;

  v53 = v21;

  v32 = fpfs_current_log();
  v33 = *(v31 + 16);
  v35 = v50;
  v34 = v51;
  sub_1CEFCCBDC(v54, v51, &unk_1EC4BE370, qword_1CFA01B30);
  if ((*(v35 + 48))(v34, 1, v27) == 1)
  {
    sub_1CEFCCC44(v34, &unk_1EC4BE370, qword_1CFA01B30);
    v36 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v37 = v44;
    sub_1CF9E6438();
    (*(v35 + 8))(v34, v27);
    v36 = sub_1CF9E63C8();
    (*(v45 + 8))(v37, v46);
  }

  v38 = swift_allocObject();
  v38[2] = v32;
  v38[3] = sub_1CF2B1BA0;
  v38[4] = v28;
  v59 = sub_1CF2BA17C;
  v60 = v38;
  aBlock = MEMORY[0x1E69E9820];
  v56 = 1107296256;
  v57 = sub_1CEFCA444;
  v58 = &block_descriptor_1273;
  v39 = _Block_copy(&aBlock);
  v40 = v32;

  v59 = sub_1CF2BA180;
  v60 = v30;
  aBlock = MEMORY[0x1E69E9820];
  v56 = 1107296256;
  v57 = sub_1CEFCA444;
  v58 = &block_descriptor_1276;
  v41 = _Block_copy(&aBlock);

  v42 = v52;
  fp_task_tracker_async_and_qos(v33, v52, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v36, v39, v41);
  _Block_release(v41);
  _Block_release(v39);

  return sub_1CEFCCC44(v54, &unk_1EC4BE370, qword_1CFA01B30);
}

uint64_t sub_1CF288E58(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = a1[17];
  v7 = objc_sync_enter(a1);
  if (v7)
  {
    MEMORY[0x1EEE9AC00](v7);
    v12 = a1;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v11, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v8 = a1[20];

  v9 = objc_sync_exit(a1);
  if (v9)
  {
    MEMORY[0x1EEE9AC00](v9);
    v12 = a1;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v11, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  (*(*v6 + 592))(a2, v8);

  return a3(0);
}

uint64_t sub_1CF289008(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v63 = a7;
  v64 = a8;
  v69 = a4;
  v77 = a3;
  v78 = a1;
  v11 = sub_1CF9E6388();
  v75 = *(v11 - 8);
  v76 = v11;
  v12 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v74 = (&v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v73 = &v59 - v15;
  v16 = sub_1CF9E6498();
  v71 = *(v16 - 8);
  v72 = v16;
  v17 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v70 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v62 = &v59 - v21;
  v22 = sub_1CF9E63D8();
  v60 = *(v22 - 8);
  v61 = v22;
  v23 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v65 = &v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1CF9E6448();
  v67 = *(v25 - 8);
  v68 = v25;
  v26 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v66 = &v59 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1CF9E73D8();
  v59 = *(v28 - 8);
  v29 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v59 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1CF9E5A58();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  v35 = MEMORY[0x1EEE9AC00](v32);
  (*(v33 + 16))(&v59 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0), a6, v32, v35);
  v36 = (*(v33 + 80) + 41) & ~*(v33 + 80);
  v37 = swift_allocObject();
  *(v37 + 16) = v69;
  *(v37 + 24) = a5;
  v69 = a2;
  *(v37 + 32) = a2;
  *(v37 + 40) = v77;
  (*(v33 + 32))(v37 + v36, &v59 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0), v32);
  v38 = (v37 + ((v34 + v36 + 7) & 0xFFFFFFFFFFFFFFF8));
  v39 = v64;
  *v38 = v63;
  v38[1] = v39;
  sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
  v40 = *(v78 + 216);
  v79 = MEMORY[0x1E69E7CC0];
  sub_1CF2A9448(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0]);

  v41 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
  sub_1CEFCCCEC(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0);
  sub_1CF9E77B8();
  v42 = v60;
  v43 = sub_1CF9E73E8();

  v44 = v31;
  v46 = v61;
  v45 = v62;
  (*(v59 + 8))(v44, v28);
  qos_class_self();
  sub_1CF9E63B8();
  v47 = *(v42 + 48);
  if (v47(v45, 1, v46) == 1)
  {
    (*(v42 + 104))(v65, *MEMORY[0x1E69E7FA0], v46);
    if (v47(v45, 1, v46) != 1)
    {
      sub_1CEFCCC44(v45, &unk_1EC4BE380, &qword_1CFA01BA0);
    }
  }

  else
  {
    (*(v42 + 32))(v65, v45, v46);
  }

  ObjectType = swift_getObjectType();
  v49 = v66;
  sub_1CF9E6428();
  v50 = swift_allocObject();
  v51 = v69;
  *(v50 + 16) = v78;
  *(v50 + 24) = v51;
  *(v50 + 32) = v77;
  *(v50 + 40) = 0u;
  *(v50 + 56) = 0u;
  *(v50 + 72) = 0u;
  *(v50 + 88) = 0u;
  *(v50 + 104) = 0u;
  *(v50 + 120) = 0u;
  *(v50 + 136) = 0u;
  *(v50 + 152) = v43;
  *(v50 + 160) = sub_1CF2B9910;
  *(v50 + 168) = v37;

  swift_unknownObjectRetain();

  sub_1CEFD5828(0, v49, sub_1CF2B9F4C, v50);

  (*(v67 + 8))(v49, v68);
  v52 = v70;
  sub_1CF9E6478();
  v53 = v73;
  sub_1CEFD5B64(v73);
  v54 = v74;
  sub_1CEFD5BD8(v74);
  MEMORY[0x1D3869770](v52, v53, v54, ObjectType);
  v55 = *(v75 + 8);
  v56 = v54;
  v57 = v76;
  v55(v56, v76);
  v55(v53, v57);
  (*(v71 + 8))(v52, v72);
  sub_1CF9E7448();

  return swift_unknownObjectRelease();
}

void sub_1CF28979C(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v55 = a8;
  v54 = a7;
  v58 = a6;
  v60 = a5;
  v59 = a4;
  v61 = a3;
  v62 = a2;
  v71 = *MEMORY[0x1E69E9840];
  v57 = sub_1CF9E53C8();
  v56 = *(v57 - 8);
  v9 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v53 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v53 - v18;
  v20 = type metadata accessor for VFSItem(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CEFCCBDC(a1, v15, &unk_1EC4BF310, &unk_1CF9FDB30);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1CEFE55D0(v15, v19, &unk_1EC4BEC00, &unk_1CF9FCB60);
    if ((*(v21 + 48))(v19, 1, v20) == 1)
    {
      sub_1CEFCCC44(v19, &unk_1EC4BEC00, &unk_1CF9FCB60);
      v27 = swift_allocObject();
      *(v27 + 16) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
      sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
      v28 = swift_allocError();
      v30 = v29;
      sub_1CF1B8150();
      v31 = swift_allocError();
      *v32 = v27;
      *v64 = v59;
      v64[8] = v60;
      memset(&v64[16], 0, 32);
      v65 = 0u;
      v66 = 0u;
      v67 = 0u;
      v68 = 0u;
      v69 = v31;
      sub_1CF2A8DE0(v64);
      *v30 = *v64;
      v33 = *&v64[16];
      v34 = *&v64[32];
      v35 = v66;
      *(v30 + 48) = v65;
      *(v30 + 64) = v35;
      *(v30 + 16) = v33;
      *(v30 + 32) = v34;
      v36 = v67;
      v37 = v68;
      v38 = v69;
      *(v30 + 128) = v70;
      *(v30 + 96) = v37;
      *(v30 + 112) = v38;
      *(v30 + 80) = v36;
      v62(v28);

      goto LABEL_9;
    }

    sub_1CEFE4C60(v19, v24, type metadata accessor for VFSItem);
    if (v24[*(v20 + 28)] == 1)
    {
      *v64 = 21;
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF2A9448(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
      v39 = v57;
      sub_1CF9E57D8();
      v40 = sub_1CF9E53A8();
      (*(v56 + 8))(v11, v39);
      v62(v40);

LABEL_8:
      sub_1CEFE5888(v24, type metadata accessor for VFSItem);
      goto LABEL_9;
    }

    sub_1CF9E5A18();
    fpfs_openflags(0x200000u);
    sub_1CF9E6978();
    v42 = openat_s();

    if (v42 < 0)
    {
      v46 = MEMORY[0x1D38683F0](v43);
      memset(v64, 0, 40);
      v64[40] = 19;
      v25 = sub_1CF19BBE4(v46, v64);
      sub_1CF1969CC(v64);
      swift_willThrow();
      sub_1CEFE5888(v24, type metadata accessor for VFSItem);

      goto LABEL_3;
    }

    v63 = 0;
    if ((fpfs_get_is_sync_paused() & 0x80000000) != 0)
    {
      v47 = MEMORY[0x1D38683F0]();
      *v64 = 9;
      memset(&v64[8], 0, 32);
      v64[40] = 19;
    }

    else
    {
      if (v63 == 1)
      {
        v44 = sub_1CF9E5928();
        v45 = FPFileIsAlreadyPausedError();

        v62(v45);
        sub_1CEFE5888(v24, type metadata accessor for VFSItem);
        close(v42);
        goto LABEL_9;
      }

      v48 = v54;
      v49 = v55;
      sub_1CF9E6978();
      v50 = fpfs_fset_pause_sync_bundleID();

      if ((v50 & 0x80000000) == 0)
      {
        close(v42);
        v62(0);
        goto LABEL_8;
      }

      v52 = MEMORY[0x1D38683F0](v51);
      *v64 = v48;
      *&v64[8] = v49;
      v64[40] = 5;

      v47 = v52;
    }

    v25 = sub_1CF19BBE4(v47, v64);
    sub_1CF1969CC(v64);
    swift_willThrow();
    sub_1CEFE5888(v24, type metadata accessor for VFSItem);
    close(v42);
    goto LABEL_3;
  }

  v25 = *v15;
  *v64 = *v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  swift_willThrowTypedImpl();
LABEL_3:
  v26 = v25;
  v62(v25);

LABEL_9:
  v41 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1CF289F34(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v57 = a4;
  v58 = a2;
  v8 = sub_1CF9E63D8();
  v49 = *(v8 - 8);
  v50 = v8;
  v9 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v48 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1CF9E5A58();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v56 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v47 - v19;
  v59 = &v47 - v19;
  v21 = *a1;
  v51 = *(a1 + 8);
  v22 = *(v4 + 216);
  v23 = *(v4 + 224);
  v52 = v21;
  v53 = v23;
  v55 = v22;
  v24 = sub_1CF9E6448();
  v54 = *(v24 - 8);
  (*(v54 + 56))(v20, 1, 1, v24);
  v25 = swift_allocObject();
  v27 = v57;
  v26 = v58;
  *(v25 + 16) = a3;
  *(v25 + 24) = v27;
  (*(v12 + 16))(v14, v26, v11);
  v28 = (*(v12 + 80) + 56) & ~*(v12 + 80);
  v29 = swift_allocObject();
  v30 = v52;
  *(v29 + 16) = v5;
  *(v29 + 24) = v30;
  *(v29 + 32) = v51;
  *(v29 + 40) = a3;
  *(v29 + 48) = v27;
  v31 = v29 + v28;
  v32 = v24;
  (*(v12 + 32))(v31, v14, v11);
  v33 = swift_allocObject();
  v33[2] = sub_1CF2BA174;
  v33[3] = v25;
  v34 = v53;
  v33[4] = v53;
  swift_retain_n();
  v57 = v55;

  v58 = v25;
  v35 = v54;

  v36 = fpfs_current_log();
  v37 = *(v34 + 16);
  v38 = v56;
  sub_1CEFCCBDC(v59, v56, &unk_1EC4BE370, qword_1CFA01B30);
  if ((*(v35 + 48))(v38, 1, v32) == 1)
  {
    sub_1CEFCCC44(v38, &unk_1EC4BE370, qword_1CFA01B30);
    v39 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v40 = v48;
    sub_1CF9E6438();
    (*(v35 + 8))(v38, v32);
    v39 = sub_1CF9E63C8();
    (*(v49 + 8))(v40, v50);
  }

  v41 = swift_allocObject();
  v41[2] = v36;
  v41[3] = sub_1CF2B1A08;
  v41[4] = v29;
  v64 = sub_1CF2BA17C;
  v65 = v41;
  aBlock = MEMORY[0x1E69E9820];
  v61 = 1107296256;
  v62 = sub_1CEFCA444;
  v63 = &block_descriptor_1224;
  v42 = _Block_copy(&aBlock);
  v43 = v36;

  v64 = sub_1CF2BA180;
  v65 = v33;
  aBlock = MEMORY[0x1E69E9820];
  v61 = 1107296256;
  v62 = sub_1CEFCA444;
  v63 = &block_descriptor_1227;
  v44 = _Block_copy(&aBlock);

  v45 = v57;
  fp_task_tracker_async_and_qos(v37, v57, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v39, v42, v44);
  _Block_release(v44);
  _Block_release(v42);

  return sub_1CEFCCC44(v59, &unk_1EC4BE370, qword_1CFA01B30);
}

uint64_t sub_1CF28A4A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v63 = a4;
  v72 = a3;
  v71 = a2;
  v9 = sub_1CF9E6388();
  v69 = *(v9 - 8);
  v70 = v9;
  v10 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v68 = (&v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v67 = &v55 - v13;
  v14 = sub_1CF9E6498();
  v65 = *(v14 - 8);
  v66 = v14;
  v15 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v64 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v58 = &v55 - v19;
  v20 = sub_1CF9E63D8();
  v56 = *(v20 - 8);
  v57 = v20;
  v21 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v59 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1CF9E6448();
  v61 = *(v23 - 8);
  v62 = v23;
  v24 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v60 = &v55 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1CF9E73D8();
  v55 = *(v26 - 8);
  v27 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v55 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1CF9E5A58();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  v33 = MEMORY[0x1EEE9AC00](v30);
  (*(v31 + 16))(&v55 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0), a6, v30, v33);
  v34 = (*(v31 + 80) + 41) & ~*(v31 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = v63;
  *(v35 + 24) = a5;
  *(v35 + 32) = v71;
  *(v35 + 40) = v72;
  (*(v31 + 32))(v35 + v34, &v55 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0), v30);
  *(v35 + ((v32 + v34 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
  sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
  v36 = *(a1 + 216);
  v73 = MEMORY[0x1E69E7CC0];
  sub_1CF2A9448(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0]);

  v63 = a1;

  v37 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
  sub_1CEFCCCEC(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0);
  sub_1CF9E77B8();
  v38 = v56;
  v39 = sub_1CF9E73E8();

  v40 = v29;
  v42 = v57;
  v41 = v58;
  (*(v55 + 8))(v40, v26);
  qos_class_self();
  sub_1CF9E63B8();
  v43 = *(v38 + 48);
  if (v43(v41, 1, v42) == 1)
  {
    (*(v38 + 104))(v59, *MEMORY[0x1E69E7FA0], v42);
    if (v43(v41, 1, v42) != 1)
    {
      sub_1CEFCCC44(v41, &unk_1EC4BE380, &qword_1CFA01BA0);
    }
  }

  else
  {
    (*(v38 + 32))(v59, v41, v42);
  }

  ObjectType = swift_getObjectType();
  v45 = v60;
  sub_1CF9E6428();
  v46 = swift_allocObject();
  v47 = v71;
  *(v46 + 16) = v63;
  *(v46 + 24) = v47;
  *(v46 + 32) = v72;
  *(v46 + 40) = 0u;
  *(v46 + 56) = 0u;
  *(v46 + 72) = 0u;
  *(v46 + 88) = 0u;
  *(v46 + 104) = 0u;
  *(v46 + 120) = 0u;
  *(v46 + 136) = 0u;
  *(v46 + 152) = v39;
  *(v46 + 160) = sub_1CF2B1A74;
  *(v46 + 168) = v35;

  swift_unknownObjectRetain();

  sub_1CEFD5828(0, v45, sub_1CF2B9F4C, v46);

  (*(v61 + 8))(v45, v62);
  v48 = v64;
  sub_1CF9E6478();
  v49 = v67;
  sub_1CEFD5B64(v67);
  v50 = v68;
  sub_1CEFD5BD8(v68);
  MEMORY[0x1D3869770](v48, v49, v50, ObjectType);
  v51 = *(v69 + 8);
  v52 = v50;
  v53 = v70;
  v51(v52, v70);
  v51(v49, v53);
  (*(v65 + 8))(v48, v66);
  sub_1CF9E7448();

  return swift_unknownObjectRelease();
}

void sub_1CF28AC30(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t **a7)
{
  v70 = a7;
  v75 = a6;
  LODWORD(v78) = a5;
  v77 = a4;
  v80 = a2;
  v81 = a3;
  v74 = sub_1CF9E53C8();
  v72 = *(v74 - 8);
  v8 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v71 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_1CF9E5A58();
  v68 = *(v69 - 8);
  v10 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v73 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v76 = &v66 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v66 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v66 - v20;
  v22 = type metadata accessor for VFSItem(0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v67 = &v66 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v79 = &v66 - v26;
  sub_1CEFCCBDC(a1, v17, &unk_1EC4BF310, &unk_1CF9FDB30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *&v82 = *v17;
    v27 = v82;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    swift_willThrowTypedImpl();
    v28 = v27;
    v80(v27);

    return;
  }

  v29 = v80;
  sub_1CEFE55D0(v17, v21, &unk_1EC4BEC00, &unk_1CF9FCB60);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_1CEFCCC44(v21, &unk_1EC4BEC00, &unk_1CF9FCB60);
    v30 = swift_allocObject();
    *(v30 + 16) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
    sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
    v31 = swift_allocError();
    v33 = v32;
    sub_1CF1B8150();
    v34 = swift_allocError();
    *v35 = v30;
    *&v82 = v77;
    BYTE8(v82) = v78;
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = v34;
    sub_1CF2A8DE0(&v82);
    *v33 = v82;
    v36 = v83;
    v37 = v84;
    v38 = v86;
    *(v33 + 48) = v85;
    *(v33 + 64) = v38;
    *(v33 + 16) = v36;
    *(v33 + 32) = v37;
    v39 = v87;
    v40 = v88;
    v41 = v89;
    *(v33 + 128) = v90;
    *(v33 + 96) = v40;
    *(v33 + 112) = v41;
    *(v33 + 80) = v39;
    v29(v31);

    return;
  }

  v42 = v79;
  sub_1CEFE4C60(v21, v79, type metadata accessor for VFSItem);
  v43 = (v42 + *(v22 + 28));
  if (*v43 == 1)
  {
    LODWORD(v82) = 21;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF2A9448(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
    v44 = v71;
    v45 = v74;
    sub_1CF9E57D8();
    v46 = sub_1CF9E53A8();
    (*(v72 + 8))(v44, v45);
    v29(v46);
  }

  else
  {
    if (v43[*(type metadata accessor for ItemMetadata() + 96)] == 1)
    {
      v47 = v68;
      v74 = v23;
      v48 = *(v68 + 16);
      v49 = v76;
      v50 = v75;
      v51 = v69;
      v48(v76, v75, v69);
      (*(v47 + 56))(v49, 0, 1, v51);
      v78 = *v42;
      LODWORD(v77) = *(v42 + 8);
      v48(v73, v50, v51);
      v52 = v67;
      sub_1CEFD90AC(v42, v67, type metadata accessor for VFSItem);
      v53 = (*(v47 + 80) + 32) & ~*(v47 + 80);
      v54 = (v10 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
      v55 = (*(v74 + 80) + v54 + 8) & ~*(v74 + 80);
      v56 = swift_allocObject();
      v57 = v81;
      *(v56 + 16) = v29;
      *(v56 + 24) = v57;
      (*(v47 + 32))(v56 + v53, v73, v51);
      v58 = v70;
      *(v56 + v54) = v70;
      sub_1CEFE4C60(v52, v56 + v55, type metadata accessor for VFSItem);

      v59 = sub_1CF2ADAF4(v76);
      v60 = v59;
      *&v82 = v78;
      BYTE8(v82) = v77;
      if (v59 >> 62)
      {
        v61 = sub_1CF9E7818();
      }

      else
      {
        v61 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v62 = v61 == 0;

      sub_1CF2AAEA4(&v82, v60, v62, v58, sub_1CF2B1A8C, v56);

      sub_1CEFCCC44(v76, &unk_1EC4BE310, qword_1CF9FCBE0);
      v63 = v79;
      goto LABEL_13;
    }

    v64 = sub_1CF9E5928();
    v65 = FPFileNotPausedError();

    v29(v65);
  }

  v63 = v42;
LABEL_13:
  sub_1CEFE5888(v63, type metadata accessor for VFSItem);
}

void sub_1CF28B4EC(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v94 = *MEMORY[0x1E69E9840];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v56 - v14;
  if (!a1)
  {
    sub_1CF9E5A18();
    fpfs_openflags(0x200000u);
    sub_1CF9E6978();
    v16 = openat_s();

    v65 = v16;
    if ((v16 & 0x80000000) != 0)
    {
      v49 = MEMORY[0x1D38683F0](v17);
      *&v78 = 0;
      v76 = 0u;
      v77 = 0u;
      BYTE8(v78) = 19;
      v47 = sub_1CF19BBE4(v49, &v76);
      sub_1CF1969CC(&v76);
      swift_willThrow();

      goto LABEL_15;
    }

    v18 = objc_sync_enter(a5);
    if (!v18)
    {
      v19 = a5[20];

      v20 = objc_sync_exit(a5);
      if (v20)
      {
        MEMORY[0x1EEE9AC00](v20);
        v55 = &v56 - 4;
        *(&v56 - 2) = a5;
        goto LABEL_22;
      }

      v21 = *(v19 + 24);

      v18 = objc_sync_enter(a5);
      if (!v18)
      {
        v59 = v15;
        v63 = a2;
        v64 = v21;
        v57 = a6;
        v62 = a3;
        v22 = a5[20];

        v58 = a5;
        v23 = objc_sync_exit(a5);
        if (!v23)
        {
          os_unfair_lock_lock((v22 + 56));
          v25 = *(v22 + 64);
          v24 = *(v22 + 72);
          v26 = *(v22 + 88);
          v27 = *(v22 + 89);
          v28 = *(v22 + 90);

          v29 = *(v22 + 80);
          os_unfair_lock_unlock((v22 + 56));

          v61 = &v56;
          MEMORY[0x1EEE9AC00](v30);
          *(&v56 - 16) = 4;
          *(&v56 - 3) = v65;
          *&v78 = v25;
          *(&v78 + 1) = v24;
          *&v76 = MEMORY[0x1E69E9820];
          *(&v76 + 1) = 1107296256;
          *&v77 = sub_1CEFDB088;
          *(&v77 + 1) = &block_descriptor_1245;
          v31 = _Block_copy(&v76);
          v60 = v24;
          v32 = v31;

          v69 = v32;
          v70 = v29;
          v71 = v26;
          v72 = v27;
          v73 = v28;
          sub_1CEFDB034();
          v33 = swift_allocError();
          *v34 = 6;
          *(v34 + 8) = 0u;
          *(v34 + 24) = 0u;
          *(v34 + 40) = 19;
          v92 = v33;
          v93 = 1;
          v35 = swift_allocObject();
          v35[2] = &v92;
          v35[3] = sub_1CF2B1B74;
          v35[4] = &v56 - 4;
          v36 = swift_allocObject();
          *(v36 + 16) = sub_1CF2B1B94;
          *(v36 + 24) = v35;
          *&v78 = sub_1CF1DBD5C;
          *(&v78 + 1) = v36;
          *&v76 = MEMORY[0x1E69E9820];
          *(&v76 + 1) = 1107296256;
          *&v77 = sub_1CEFDB270;
          *(&v77 + 1) = &block_descriptor_1255;
          v37 = _Block_copy(&v76);

          v38 = fpfs_fgetfileattrs_detailed();
          _Block_release(v37);
          LOBYTE(v37) = swift_isEscapingClosureAtFileLocation();

          if (v37)
          {
            __break(1u);
          }

          v39 = v59;
          if (v38)
          {
            swift_getErrorValue();
            v40 = v66;
            v41 = swift_allocError();
            *v42 = 6;
            *(v42 + 8) = 0u;
            *(v42 + 24) = 0u;
            *(v42 + 40) = 19;
            v43 = v38;
            v44 = sub_1CF199074(v41, v40);

            v45 = v92;
            v46 = v93;
            v92 = v44;
            v93 = 1;
            sub_1CF0BA6EC(v45, v46);
          }

          if ((v93 & 1) == 0)
          {

            sub_1CF0BA6EC(v92, v93);

            _Block_release(v32);

            v50 = *(type metadata accessor for VFSItem(0) + 28);
            v68 = 4;
            v51 = sub_1CF9E5A58();
            (*(*(v51 - 8) + 56))(v39, 1, 1, v51);
            sub_1CEFE528C(&v76);
            v74[12] = v88;
            v74[13] = v89;
            v74[14] = v90;
            v75 = v91;
            v74[8] = v84;
            v74[9] = v85;
            v74[10] = v86;
            v74[11] = v87;
            v74[4] = v80;
            v74[5] = v81;
            v74[6] = v82;
            v74[7] = v83;
            v74[0] = v76;
            v74[1] = v77;
            v74[2] = v78;
            v74[3] = v79;
            v52 = v65;
            sub_1CF298D34(v65, (v57 + v50), 0, 0, &v68, 0, v39, v74);
            sub_1CEFCCC44(v39, &unk_1EC4BE310, qword_1CF9FCBE0);
            close(v52);
            v63(0);
            goto LABEL_16;
          }

          v47 = v92;
          v67 = v92;
          v48 = v92;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
          swift_willThrowTypedImpl();

          sub_1CF0BA6EC(v92, v93);

          _Block_release(v32);

          close(v65);
          a2 = v63;
LABEL_15:
          v53 = v47;
          a2(v47);

          goto LABEL_16;
        }

        MEMORY[0x1EEE9AC00](v23);
        v55 = &v56 - 4;
        *(&v56 - 2) = v58;
LABEL_22:
        fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v55, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
      }
    }

    MEMORY[0x1EEE9AC00](v18);
    *(&v56 - 2) = a5;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v56 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  (a2)(a1, v13);
LABEL_16:
  v54 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1CF28BD04(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v60 = a7;
  v65 = a4;
  v73 = a3;
  v74 = a1;
  v10 = sub_1CF9E6388();
  v71 = *(v10 - 8);
  v72 = v10;
  v11 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v70 = (&v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v69 = &v55 - v14;
  v15 = sub_1CF9E6498();
  v67 = *(v15 - 8);
  v68 = v15;
  v16 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v66 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v59 = &v55 - v20;
  v21 = sub_1CF9E63D8();
  v57 = *(v21 - 8);
  v58 = v21;
  v22 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v61 = &v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1CF9E6448();
  v63 = *(v24 - 8);
  v64 = v24;
  v25 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v62 = &v55 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1CF9E73D8();
  v56 = *(v27 - 8);
  v28 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v55 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1CF9E5A58();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v34 = MEMORY[0x1EEE9AC00](v31);
  (*(v32 + 16))(&v55 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0), a6, v31, v34);
  v35 = (*(v32 + 80) + 41) & ~*(v32 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = v65;
  *(v36 + 24) = a5;
  v65 = a2;
  *(v36 + 32) = a2;
  *(v36 + 40) = v73;
  (*(v32 + 32))(v36 + v35, &v55 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0), v31);
  *(v36 + ((v33 + v35 + 7) & 0xFFFFFFFFFFFFFFF8)) = v60;
  sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
  v37 = *(v74 + 216);
  v75 = MEMORY[0x1E69E7CC0];
  sub_1CF2A9448(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0]);

  v38 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
  sub_1CEFCCCEC(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0);
  sub_1CF9E77B8();
  v39 = v57;
  v40 = v59;
  v41 = sub_1CF9E73E8();

  v42 = v58;
  (*(v56 + 8))(v30, v27);
  qos_class_self();
  sub_1CF9E63B8();
  v43 = *(v39 + 48);
  if (v43(v40, 1, v42) == 1)
  {
    (*(v39 + 104))(v61, *MEMORY[0x1E69E7FA0], v42);
    if (v43(v40, 1, v42) != 1)
    {
      sub_1CEFCCC44(v40, &unk_1EC4BE380, &qword_1CFA01BA0);
    }
  }

  else
  {
    (*(v39 + 32))(v61, v40, v42);
  }

  ObjectType = swift_getObjectType();
  v45 = v62;
  sub_1CF9E6428();
  v46 = swift_allocObject();
  v47 = v65;
  *(v46 + 16) = v74;
  *(v46 + 24) = v47;
  *(v46 + 32) = v73;
  *(v46 + 40) = 0u;
  *(v46 + 56) = 0u;
  *(v46 + 72) = 0u;
  *(v46 + 88) = 0u;
  *(v46 + 104) = 0u;
  *(v46 + 120) = 0u;
  *(v46 + 136) = 0u;
  *(v46 + 152) = v41;
  *(v46 + 160) = sub_1CF2B983C;
  *(v46 + 168) = v36;

  swift_unknownObjectRetain();

  sub_1CEFD5828(0, v45, sub_1CF2B9F4C, v46);

  (*(v63 + 8))(v45, v64);
  v48 = v66;
  sub_1CF9E6478();
  v49 = v69;
  sub_1CEFD5B64(v69);
  v50 = v70;
  sub_1CEFD5BD8(v70);
  MEMORY[0x1D3869770](v48, v49, v50, ObjectType);
  v51 = *(v71 + 8);
  v52 = v50;
  v53 = v72;
  v51(v52, v72);
  v51(v49, v53);
  (*(v67 + 8))(v48, v68);
  sub_1CF9E7448();

  return swift_unknownObjectRelease();
}

void sub_1CF28C490(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v49 = a7;
  v50 = a6;
  v54 = a5;
  v53 = a4;
  v55 = a3;
  v56 = a2;
  v52 = sub_1CF9E53C8();
  v51 = *(v52 - 8);
  v8 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v48 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v48 - v17;
  v19 = type metadata accessor for VFSItem(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CEFCCBDC(a1, v14, &unk_1EC4BF310, &unk_1CF9FDB30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = *v14;
    *v57 = *v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    swift_willThrowTypedImpl();
LABEL_3:
    v25 = v24;
    v56(v24);

    return;
  }

  sub_1CEFE55D0(v14, v18, &unk_1EC4BEC00, &unk_1CF9FCB60);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_1CEFCCC44(v18, &unk_1EC4BEC00, &unk_1CF9FCB60);
    v26 = swift_allocObject();
    *(v26 + 16) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
    sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
    v27 = swift_allocError();
    v29 = v28;
    sub_1CF1B8150();
    v30 = swift_allocError();
    *v31 = v26;
    *v57 = v53;
    v57[8] = v54;
    memset(&v57[16], 0, 32);
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = v30;
    sub_1CF2A8DE0(v57);
    *v29 = *v57;
    v32 = *&v57[16];
    v33 = *&v57[32];
    v34 = v59;
    *(v29 + 48) = v58;
    *(v29 + 64) = v34;
    *(v29 + 16) = v32;
    *(v29 + 32) = v33;
    v35 = v60;
    v36 = v61;
    v37 = v62;
    *(v29 + 128) = v63;
    *(v29 + 96) = v36;
    *(v29 + 112) = v37;
    *(v29 + 80) = v35;
    v56(v27);

    return;
  }

  sub_1CEFE4C60(v18, v23, type metadata accessor for VFSItem);
  v38 = &v23[*(v19 + 28)];
  if (*v38 != 1)
  {
    if (v38[*(type metadata accessor for ItemMetadata() + 96)] != 1)
    {
      v45 = sub_1CF9E5928();
      v46 = FPFileNotPausedError();

      v56(v46);
      goto LABEL_17;
    }

    sub_1CF9E5A18();
    fpfs_openflags(0x200000u);
    sub_1CF9E6978();
    v41 = openat_s();

    if (v41 < 0)
    {
      v47 = MEMORY[0x1D38683F0](v42);
      memset(v57, 0, 40);
      v57[40] = 19;
      v24 = sub_1CF19BBE4(v47, v57);
      sub_1CF1969CC(v57);
      swift_willThrow();
      sub_1CEFE5888(v23, type metadata accessor for VFSItem);

      goto LABEL_3;
    }

    if (v49 == 1)
    {
      if ((fpfs_fset_resuming_sync_with_drop_local_changes() & 0x80000000) != 0)
      {
        v43 = MEMORY[0x1D38683F0]();
        v44 = 10;
LABEL_20:
        *v57 = v44;
        memset(&v57[8], 0, 32);
        v57[40] = 19;
        v24 = sub_1CF19BBE4(v43, v57);
        sub_1CF1969CC(v57);
        swift_willThrow();
        sub_1CEFE5888(v23, type metadata accessor for VFSItem);
        close(v41);
        goto LABEL_3;
      }
    }

    else if ((fpfs_funset_pause_sync_bundleID() & 0x80000000) != 0)
    {
      v43 = MEMORY[0x1D38683F0]();
      v44 = 12;
      goto LABEL_20;
    }

    close(v41);
    v56(0);
    goto LABEL_17;
  }

  *v57 = 21;
  sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
  sub_1CF2A9448(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
  v39 = v52;
  sub_1CF9E57D8();
  v40 = sub_1CF9E53A8();
  (*(v51 + 8))(v10, v39);
  v56(v40);

LABEL_17:
  sub_1CEFE5888(v23, type metadata accessor for VFSItem);
}

void sub_1CF28CB50(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, __int128 *a6@<X5>, uint64_t a7@<X8>)
{
  v184 = a5;
  v186 = a4;
  v183 = a7;
  v228 = *MEMORY[0x1E69E9840];
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE000, &unk_1CFA006A0);
  v11 = *(*(v199 - 8) + 64);
  v12 = (MEMORY[0x1EEE9AC00])(v199);
  v194 = (v172 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (MEMORY[0x1EEE9AC00])(v12);
  v190 = (v172 - v15);
  MEMORY[0x1EEE9AC00](v14);
  v200 = (v172 - v16);
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE2F0, qword_1CFA04220);
  v17 = *(*(v196 - 8) + 64);
  v18 = (MEMORY[0x1EEE9AC00])(v196);
  v197 = v172 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v203 = v172 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v22 = *(*(v21 - 8) + 64);
  v23 = (MEMORY[0x1EEE9AC00])(v21 - 8);
  v181 = v172 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = (MEMORY[0x1EEE9AC00])(v23);
  v182 = v172 - v26;
  v27 = (MEMORY[0x1EEE9AC00])(v25);
  v185 = v172 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v198 = v172 - v29;
  v30 = type metadata accessor for VFSItem(0);
  v195 = *(v30 - 8);
  v31 = *(v195 + 64);
  v32 = (MEMORY[0x1EEE9AC00])(v30);
  v34 = v172 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1EEE9AC00](v32);
  v37 = v172 - v36;
  v193 = *a2;
  v192 = *(a2 + 8);
  v201 = *a3;
  v35.n128_u64[0] = a3[1];
  v188 = v35;
  v189 = a3[2];
  v38 = *(a3 + 41);
  v222 = *(a3 + 25);
  v223[0] = v38;
  v39 = a3[7];
  v191 = a3[8];
  *(v223 + 15) = v39;
  v187 = *(a3 + 24);
  v220 = *(a3 + 9);
  v221 = a3[11];
  v40 = *a6;
  v41 = a6[1];
  v42 = a6[3];
  v226 = a6[2];
  v227 = v42;
  v224 = v40;
  v225 = v41;
  v202 = a1;
  *&v213 = sub_1CF9E58E8();
  *(&v213 + 1) = v43;
  v218 = 58;
  v219 = 0xE100000000000000;
  v208 = 47;
  v209 = 0xE100000000000000;
  v170 = sub_1CEFE4E68();
  v171 = v170;
  v168 = MEMORY[0x1E69E6158];
  v169 = v170;
  v44 = sub_1CF9E7668();
  v46 = v45;

  *&v213 = v44;
  *(&v213 + 1) = v46;
  v47 = v205;
  sub_1CEFE52D8(0x6574656C6564, 0xE600000000000000, &v213);
  if (!v47)
  {
    v172[0] = v34;
    v179 = v30;

    sub_1CF9E5A18();
    v49 = qword_1EDEBBE70;
    v50 = v204;
    swift_beginAccess();
    v51 = *(v50 + v49);
    v52 = __CFADD__(v51, 1);
    v53 = v51 + 1;
    if (v52)
    {
      __break(1u);
    }

    else
    {
      *(v50 + v49) = v53;
      v54 = objc_sync_enter(v50);
      if (v54)
      {
        MEMORY[0x1EEE9AC00](v54);
        v170 = v50;
        goto LABEL_62;
      }

      v205 = v37;
      v55 = v50[20];

      v56 = objc_sync_exit(v50);
      if (v56)
      {
        MEMORY[0x1EEE9AC00](v56);
        v170 = v50;
        goto LABEL_64;
      }

      v57 = type metadata accessor for VFSFileTree(0);
      Strong = swift_unknownObjectWeakLoadStrong();
      v59 = v50[36];
      fpfs_openflags(0x208000u);
      sub_1CF9E6978();
      v60 = openat_s();

      if (v60 < 0)
      {
        v91 = MEMORY[0x1D38683F0](v61);
        v213 = 0u;
        memset(v214, 0, 24);
        BYTE8(v214[1]) = 19;
        v84 = sub_1CF19BBE4(v91, &v213);
        sub_1CF1969CC(&v213);
        swift_willThrow();

        v178 = 0;
        v87 = v205;
        v90 = v197;
        v89 = v198;
        goto LABEL_18;
      }

      v178 = 0;

      v177 = *(v55 + 24);
      os_unfair_lock_lock((v55 + 56));
      v62 = *(v55 + 64);
      v63 = *(v55 + 72);
      v64 = *(v55 + 88);
      v174 = *(v55 + 89);
      LODWORD(v175) = v64;
      v180 = v60;
      v173 = *(v55 + 90);

      v65 = *(v55 + 80);
      os_unfair_lock_unlock((v55 + 56));
      v172[1] = v172;
      MEMORY[0x1EEE9AC00](v66);
      v176 = &v172[-12];
      v172[-10] = v57;
      LODWORD(v172[-9]) = v60;
      v172[-8] = v55;
      v172[-7] = Strong;
      v172[3] = Strong;
      v172[-6] = v59;
      LOBYTE(v172[-5]) = 2;
      v168 = 0;
      v169 = 0;
      LOBYTE(v170) = -1;
      v171 = 0;
      *&v214[1] = v62;
      *(&v214[1] + 1) = v63;
      *&v213 = MEMORY[0x1E69E9820];
      *(&v213 + 1) = 1107296256;
      *&v214[0] = sub_1CEFDB088;
      *(&v214[0] + 1) = &block_descriptor_1192;
      v67 = _Block_copy(&v213);
      v172[2] = v63;

      v208 = v67;
      v209 = v65;
      v210 = v175;
      v211 = v174;
      v212 = v173;
      v175 = sub_1CEFDB034();
      v68 = swift_allocError();
      *v69 = 6;
      *(v69 + 8) = 0u;
      *(v69 + 24) = 0u;
      *(v69 + 40) = 19;
      v70 = v200;
      *v200 = v68;
      swift_storeEnumTagMultiPayload();
      v71 = swift_allocObject();
      v71[2] = v70;
      v71[3] = sub_1CF2B9F90;
      v71[4] = v176;
      v72 = swift_allocObject();
      *(v72 + 16) = sub_1CF1DBD3C;
      *(v72 + 24) = v71;
      *&v214[1] = sub_1CF1DBD5C;
      *(&v214[1] + 1) = v72;
      *&v213 = MEMORY[0x1E69E9820];
      *(&v213 + 1) = 1107296256;
      *&v214[0] = sub_1CEFDB270;
      *(&v214[0] + 1) = &block_descriptor_1203;
      v73 = _Block_copy(&v213);

      v74 = fpfs_fgetfileattrs_detailed();
      _Block_release(v73);
      LOBYTE(v73) = swift_isEscapingClosureAtFileLocation();

      if ((v73 & 1) == 0)
      {
        if (v74)
        {
          swift_getErrorValue();
          v75 = v207;
          v177 = v206;
          v76 = swift_allocError();
          *v77 = 6;
          *(v77 + 8) = 0u;
          *(v77 + 24) = 0u;
          *(v77 + 40) = 19;
          v78 = v67;
          v79 = v74;
          v80 = sub_1CF199074(v76, v75);

          v67 = v78;
          v81 = v76;
          v70 = v200;

          v82 = v190;
          *v190 = v80;
          swift_storeEnumTagMultiPayload();
          sub_1CEFDA9E0(v82, v70, &qword_1EC4BE000, &unk_1CFA006A0);
        }

        v83 = v194;
        sub_1CEFCCBDC(v70, v194, &qword_1EC4BE000, &unk_1CFA006A0);
        if (swift_getEnumCaseMultiPayload() != 1)
        {

          sub_1CEFE55D0(v83, v203, &unk_1EC4BE2F0, qword_1CFA04220);
          sub_1CEFCCC44(v70, &qword_1EC4BE000, &unk_1CFA006A0);

          _Block_release(v67);

          v87 = v205;
          v90 = v197;
          v89 = v198;
          goto LABEL_16;
        }

        *&v213 = *v83;
        v84 = v213;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
        swift_willThrowTypedImpl();

        sub_1CEFCCC44(v70, &qword_1EC4BE000, &unk_1CFA006A0);

        _Block_release(v67);

        v85 = v84;
        LODWORD(v213) = sub_1CF9E52A8();
        sub_1CF196978();
        v86 = sub_1CF9E5658();

        v87 = v205;
        if (v86)
        {

          v88 = v203;
          *v203 = xmmword_1CF9FD940;
          *(v88 + 16) = 2;
          swift_storeEnumTagMultiPayload();
          v90 = v197;
          v89 = v198;
LABEL_16:
          close(v180);

          swift_unknownObjectRelease();
          v92 = v179;
          v93 = v195;
          v94 = v203;
LABEL_20:
          sub_1CEFE55D0(v94, v90, &unk_1EC4BE2F0, qword_1CFA04220);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          v99 = (v93 + 56);
          v100 = v201;
          if (EnumCaseMultiPayload == 1)
          {
            sub_1CEFCCC44(v90, &unk_1EC4BE2F0, qword_1CFA04220);
            v101 = 1;
          }

          else
          {
            sub_1CEFE4C60(v90, v89, type metadata accessor for VFSItem);
            v101 = 0;
          }

          v102 = *(v93 + 56);
          v102(v89, v101, 1, v92);
          v105 = *(v93 + 48);
          v103 = v93 + 48;
          v104 = v105;
          if (v105(v89, 1, v92) == 1)
          {
            sub_1CEFCCC44(v89, &unk_1EC4BEC00, &unk_1CF9FCB60);
            v106 = swift_allocObject();
            *(v106 + 16) = 0;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
            sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
            swift_allocError();
            v108 = v107;
            sub_1CF1B8150();
            v109 = swift_allocError();
            *v110 = v106;
            *&v213 = v193;
            BYTE8(v213) = v192;
            memset(v214, 0, sizeof(v214));
            v215 = 0u;
            v216 = v109;
            sub_1CF2A8DE0(&v213);
            *v108 = v213;
            v111 = v214[0];
            v112 = v214[1];
            v113 = v214[3];
            *(v108 + 48) = v214[2];
            *(v108 + 64) = v113;
            *(v108 + 16) = v111;
            *(v108 + 32) = v112;
            v114 = v214[4];
            v115 = v215;
            v116 = v216;
            *(v108 + 128) = v217;
            *(v108 + 96) = v115;
            *(v108 + 112) = v116;
            *(v108 + 80) = v114;
            swift_willThrow();
            goto LABEL_3;
          }

          v200 = v99;
          sub_1CEFE4C60(v89, v87, type metadata accessor for VFSItem);
          v117 = (v87 + *(v92 + 28));
          v118 = type metadata accessor for ItemMetadata();
          if ((v117[*(v118 + 80)] & 1) == 0)
          {
            *(v214 + 9) = v222;
            *&v213 = v100;
            *(&v213 + 1) = v188.n128_u64[0];
            *&v214[0] = v189;
            BYTE8(v214[0]) = v187;
            *(&v214[1] + 9) = v223[0];
            *(&v214[2] + 1) = *(v223 + 15);
            *&v214[3] = v191;
            *(&v214[3] + 8) = v220;
            *(&v214[4] + 1) = v221;
            v208 = 8;
            v119 = v178;
            sub_1CF2ABFCC(&v213, v87, &v208, 0);
            v178 = v119;
            if (v119)
            {
LABEL_27:
              sub_1CEFE5888(v87, type metadata accessor for VFSItem);
              goto LABEL_3;
            }
          }

          if (*v117 == 1 && v117[*(v118 + 72)] == 1)
          {
            *&v213 = v193;
            BYTE8(v213) = v192;
            sub_1CF2B19FC(&v213);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
            sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
            swift_allocError();
            *v120 = v213;
            v121 = v214[3];
            v123 = v214[0];
            v122 = v214[1];
            *(v120 + 48) = v214[2];
            *(v120 + 64) = v121;
            *(v120 + 16) = v123;
            *(v120 + 32) = v122;
            v125 = v215;
            v124 = v216;
            v126 = v214[4];
            *(v120 + 128) = v217;
            *(v120 + 96) = v125;
            *(v120 + 112) = v124;
            *(v120 + 80) = v126;
            swift_willThrow();
            goto LABEL_27;
          }

          v203 = v118;
          v127 = v185;
          sub_1CEFCCBDC(v186, v185, &unk_1EC4BEC00, &unk_1CF9FCB60);
          if (v104(v127, 1, v92) == 1)
          {
            sub_1CEFCCC44(v127, &unk_1EC4BEC00, &unk_1CF9FCB60);
          }

          else
          {
            v128 = v127;
            v129 = v172[0];
            sub_1CEFE4C60(v128, v172[0], type metadata accessor for VFSItem);
            v130 = *(v92 + 28) + *(v203 + 32);
            sub_1CF9E5CF8();
            sub_1CF2A9448(&qword_1EDEAB3B0, MEMORY[0x1E6969530]);
            v100 = v201;
            v131 = sub_1CF9E6868();
            sub_1CEFE5888(v129, type metadata accessor for VFSItem);
            if ((v131 & 1) == 0)
            {
              v152 = v183;
              sub_1CEFE4C60(v205, v183, type metadata accessor for VFSItem);
              v153 = 0;
              goto LABEL_50;
            }
          }

          v132 = v204[17];
          v133 = sub_1CF9E5A18();
          v195 = v103;
          v202 = v134;
          v199 = v133;
          if (v191)
          {
            v198 = v188.n128_u32[0];
            v135 = v187 & 1;
          }

          else
          {
            v100 = 0;
            v198 = 0;
            v189 = 0;
            v135 = 0;
          }

          v136 = v203;
          v137 = v204;
          v201 = v100;
          v138 = objc_sync_enter(v204);
          if (!v138)
          {
            v139 = v137[20];

            v140 = objc_sync_exit(v137);
            if (!v140)
            {
              v141 = v117[*(v136 + 112)] | v184;
              v213 = v224;
              v214[0] = v225;
              v214[1] = v226;
              v214[2] = v227;
              v142 = *(*v132 + 536);
              HIDWORD(v170) = 1;
              LOBYTE(v170) = 1;
              v143 = v178;
              v142(v199, v202, v201, v198, v189, v135 | ((v191 == 0) << 8), v139, v141 & 1, v170, &v213);
              if (v143)
              {

                v144 = v143;
                LODWORD(v213) = sub_1CF9E53B8();
                sub_1CF196978();
                v145 = sub_1CF9E5658();
                v87 = v205;
                if ((v145 & 1) == 0)
                {
                  sub_1CEFE5888(v205, type metadata accessor for VFSItem);

                  goto LABEL_3;
                }

                v146 = v143;
                sub_1CF19947C(v143, &v213);
                if (BYTE8(v214[1]) == 18)
                {
                  v154 = v182;
                  sub_1CF263ADC(v213, 0, 0, v182);
                  v147 = v143;
                  v166 = v181;
                  sub_1CEFE55D0(v154, v181, &unk_1EC4BEC00, &unk_1CF9FCB60);
                  v167 = v104(v166, 1, v179);
                  if (v167 == 1)
                  {
                    sub_1CEFCCC44(v166, &unk_1EC4BEC00, &unk_1CF9FCB60);
                    v156 = 0;
                    v157 = -1;
                  }

                  else
                  {
                    v156 = *v166;
                    v157 = *(v166 + 8);
                    sub_1CEFE5888(v166, type metadata accessor for VFSItem);
                  }

                  v158 = v143;
                  v155 = v192;
                }

                else
                {
                  v147 = v143;
                  if (BYTE8(v214[1]) == 255)
                  {
                    sub_1CEFCCC44(&v213, &qword_1EC4BD918, &unk_1CF9FA550);
                  }

                  else
                  {
                    sub_1CF1969CC(&v213);
                  }

                  v155 = v192;
                  v156 = 0;
                  v157 = -1;
                  v158 = v143;
                }

                *&v213 = v193;
                BYTE8(v213) = v155;
                *&v214[0] = v156;
                BYTE8(v214[0]) = v157;
                *&v214[1] = v158;
                sub_1CF2B19F0(&v213);
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
                sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
                swift_allocError();
                *v159 = v213;
                v160 = v214[3];
                v162 = v214[0];
                v161 = v214[1];
                *(v159 + 48) = v214[2];
                *(v159 + 64) = v160;
                *(v159 + 16) = v162;
                *(v159 + 32) = v161;
                v164 = v215;
                v163 = v216;
                v165 = v214[4];
                *(v159 + 128) = v217;
                *(v159 + 96) = v164;
                *(v159 + 112) = v163;
                *(v159 + 80) = v165;
                swift_willThrow();

                goto LABEL_27;
              }

              v148 = v204[32];
              sub_1CF4D463C();
              v149 = &v117[*(v203 + 148)];
              if ((v149[4] & 1) == 0 && *v149 >= 2u)
              {
                v150 = *&v205[*(v179 + 36)];
                v151 = v205;
                swift_bridgeObjectRelease_n();
                sub_1CF263ADC(v150, 0, 0, v183);
                sub_1CEFE5888(v151, type metadata accessor for VFSItem);
                goto LABEL_3;
              }

              sub_1CEFE5888(v205, type metadata accessor for VFSItem);
              v153 = 1;
              v152 = v183;
LABEL_50:
              v102(v152, v153, 1, v179);
              goto LABEL_3;
            }

            MEMORY[0x1EEE9AC00](v140);
            v170 = v204;
LABEL_64:
            fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, &v168, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
          }

          MEMORY[0x1EEE9AC00](v138);
          v170 = v137;
LABEL_62:
          fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, &v168, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
        }

        close(v180);
        v90 = v197;
        v89 = v198;
LABEL_18:
        v95 = v84;
        LODWORD(v213) = sub_1CF9E5328();
        sub_1CF196978();
        v96 = sub_1CF9E5658();

        swift_unknownObjectRelease();

        if ((v96 & 1) == 0)
        {
          goto LABEL_3;
        }

        v97 = v203;
        *v203 = xmmword_1CF9FD930;
        *(v97 + 16) = 2;
        swift_storeEnumTagMultiPayload();
        v94 = v97;
        v92 = v179;
        v93 = v195;
        goto LABEL_20;
      }
    }

    __break(1u);
  }

LABEL_3:
  v48 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1CF28E100(unint64_t a1, uint64_t a2, int a3, void *a4, void (*a5)(uint64_t), uint64_t a6, void *a7, int a8, __int128 *a9)
{
  v116 = a8;
  v133 = a6;
  v132 = a5;
  v135 = a4;
  v134 = a1;
  v11 = a7[1];
  *&v118 = *a7;
  *(&v118 + 1) = v11;
  v12 = a7[3];
  v119 = a7[2];
  v121 = v12;
  v128 = a3;
  v13 = a3;
  v14 = a7[5];
  v120 = a7[4];
  v122 = v14;
  v15 = a7[7];
  *&v123 = a7[6];
  *(&v123 + 1) = v15;
  v16 = a7[9];
  *&v124 = a7[8];
  *(&v124 + 1) = v16;
  v17 = a7[11];
  *&v125 = a7[10];
  *(&v125 + 1) = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v113 = *(v18 - 8);
  v19 = *(v113 + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v115 = &v110[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v114 = v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v110[-v22];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v117 = &v110[-v26];
  v27 = sub_1CF9E5A58();
  v28 = *(v27 - 1);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v127 = &v110[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = type metadata accessor for VFSItem(0);
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v131 = &v110[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC10, &unk_1CFA00660);
  v35 = *(*(v129 - 8) + 64);
  MEMORY[0x1EEE9AC00](v129);
  v130 = &v110[-v36];
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37);
  v40 = &v110[-v39];
  if (v13 == 2 && a2 == 1)
  {
    v126 = v32;
    a2 = v135;
    v41 = objc_sync_enter(v135);
    if (v41)
    {
LABEL_21:
      MEMORY[0x1EEE9AC00](v41);
      v108 = &v110[-32];
      *&v110[-16] = a2;
      goto LABEL_24;
    }

    v42 = *(a2 + 160);

    v43 = objc_sync_exit(a2);
    if (v43)
    {
      MEMORY[0x1EEE9AC00](v43);
      v109 = &v110[-32];
      *&v110[-16] = v135;
      goto LABEL_26;
    }

    *(v42 + 49) = 1;

    a2 = 1;
    v32 = v126;
  }

  sub_1CEFCCBDC(v134, v40, &unk_1EC4BF310, &unk_1CF9FDB30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v44 = *v40;
    v45 = v130;
    *v130 = *v40;
    swift_storeEnumTagMultiPayload();
    v46 = v44;
    v132(v45);

    return sub_1CEFCCC44(v45, &unk_1EC4BEC10, &unk_1CFA00660);
  }

  if ((*(v32 + 48))(v40, 1, v31) == 1)
  {
    v47 = swift_allocObject();
    *(v47 + 16) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
    sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
    v48 = swift_allocError();
    v50 = v49;
    sub_1CF1B8150();
    v51 = swift_allocError();
    *v52 = v47;
    *&v139 = a2;
    BYTE8(v139) = v128;
    *(&v139 + 9) = v138[0];
    HIDWORD(v139) = *(v138 + 3);
    v140 = v118;
    *&v141 = v119;
    *(&v141 + 1) = v121;
    *&v142 = v120;
    *(&v142 + 1) = v122;
    v143 = v123;
    v144 = v124;
    v145 = v125;
    v146 = v51;
    sub_1CF2A8DE0(&v139);
    *v50 = v139;
    v53 = v140;
    v54 = v141;
    v55 = v143;
    *(v50 + 48) = v142;
    *(v50 + 64) = v55;
    *(v50 + 16) = v53;
    *(v50 + 32) = v54;
    v56 = v144;
    v57 = v145;
    v58 = v146;
    *(v50 + 128) = v147;
    *(v50 + 96) = v57;
    *(v50 + 112) = v58;
    *(v50 + 80) = v56;
    v45 = v130;
    *v130 = v48;
    swift_storeEnumTagMultiPayload();
    sub_1CEFCCBDC(a7, &v136, &unk_1EC4BE330, &unk_1CF9FF010);
    v132(v45);
    return sub_1CEFCCC44(v45, &unk_1EC4BEC10, &unk_1CFA00660);
  }

  v60 = v31;
  v61 = v131;
  sub_1CEFE4C60(v40, v131, type metadata accessor for VFSItem);
  v134 = v60;
  v62 = &v61[*(v60 + 28)];
  v63 = type metadata accessor for ItemMetadata();
  v64 = 0;
  v65 = 0;
  v66 = 0;
  v67 = 0;
  v68 = 0;
  v69 = 0;
  v70 = 0;
  v71 = 0;
  v72 = 0;
  v73 = 0;
  v74 = 0;
  v75 = 0;
  if ((v62[*(v63 + 96)] & 1) == 0)
  {
    sub_1CEFCCBDC(a7, &v139, &unk_1EC4BE330, &unk_1CF9FF010);
    v65 = *(&v118 + 1);
    v64 = v118;
    v66 = v119;
    v67 = v121;
    v68 = v120;
    v69 = v122;
    v71 = *(&v123 + 1);
    v70 = v123;
    v73 = *(&v124 + 1);
    v72 = v124;
    v75 = *(&v125 + 1);
    v74 = v125;
  }

  v119 = v75;
  v120 = v74;
  v121 = v73;
  v122 = v72;
  *&v123 = v71;
  *(&v123 + 1) = v70;
  *&v124 = v69;
  *(&v124 + 1) = v68;
  *&v125 = v67;
  *(&v125 + 1) = v66;
  v129 = v65;
  v76 = v135;
  v77 = objc_sync_enter(v135);
  v78 = v127;
  if (v77)
  {
    MEMORY[0x1EEE9AC00](v77);
    v108 = &v110[-32];
    *&v110[-16] = v76;
LABEL_24:
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v108, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v79 = objc_sync_exit(v76);
  if (v79)
  {
    MEMORY[0x1EEE9AC00](v79);
    v109 = &v110[-32];
    *&v110[-16] = v76;
LABEL_26:
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v109, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  *(&v118 + 1) = v62;
  v130 = v64;
  v126 = v32;
  v80 = v117;
  sub_1CF25116C(v117);
  v41 = (*(v28 + 48))(v80, 1, v27);
  if (v41 == 1)
  {
    __break(1u);
    goto LABEL_21;
  }

  v112 = a9;
  (*(v28 + 32))(v78, v80, v27);
  v81 = objc_opt_self();
  v82 = sub_1CF9E5928();
  *&v118 = v28;
  v83 = 1;
  v84 = [v81 writingIntentWithURL:v82 options:1];

  MEMORY[0x1EEE9AC00](v85);
  v110[-16] = 0;
  *&v110[-8] = v78;
  MEMORY[0x1EEE9AC00](v86);
  *&v110[-32] = v135;
  *&v110[-24] = sub_1CF2A94E4;
  *&v110[-16] = v87;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC4C5730, &qword_1CF9FCCE0);
  v117 = v27;
  sub_1CF9E59B8();
  v111 = v139;
  if (!**(&v118 + 1))
  {
    sub_1CEFD90AC(v131, v23, type metadata accessor for VFSItem);
    v83 = 0;
  }

  (*(v126 + 7))(v23, v83, 1, v134);
  v136 = a2;
  v88 = v128;
  v137 = v128;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC20, &qword_1CF9FE480);
  v89 = swift_allocObject();
  v134 = v89;
  *(v89 + 16) = xmmword_1CFA00250;
  *(v89 + 32) = v84;
  v90 = v115;
  sub_1CEFCCBDC(v23, v115, &unk_1EC4BEC00, &unk_1CF9FCB60);
  v91 = (*(v113 + 80) + 160) & ~*(v113 + 80);
  v92 = v91 + v114;
  v93 = (v91 + v114) & 0xFFFFFFFFFFFFFFF8;
  v94 = swift_allocObject();
  v126 = v23;
  v95 = v94;
  v96 = v133;
  *(v94 + 16) = v132;
  *(v94 + 24) = v96;
  *(v94 + 32) = v135;
  *(v94 + 40) = v84;
  *(v94 + 48) = a2;
  *(v94 + 56) = v88;
  v97 = v129;
  *(v94 + 64) = v130;
  *(v94 + 72) = v97;
  v98 = v125;
  *(v94 + 80) = *(&v125 + 1);
  *(v94 + 88) = v98;
  v99 = v124;
  *(v94 + 96) = *(&v124 + 1);
  *(v94 + 104) = v99;
  v100 = v123;
  *(v94 + 112) = *(&v123 + 1);
  *(v94 + 120) = v100;
  v101 = v121;
  *(v94 + 128) = v122;
  *(v94 + 136) = v101;
  v102 = v119;
  *(v94 + 144) = v120;
  *(v94 + 152) = v102;
  sub_1CEFE55D0(v90, v94 + v91, &unk_1EC4BEC00, &unk_1CF9FCB60);
  *(v95 + v92) = v116 & 1;
  v103 = v95 + v93;
  v104 = v112;
  v105 = v112[2];
  *(v103 + 56) = v112[3];
  *(v103 + 40) = v105;
  v106 = *v104;
  *(v103 + 24) = v104[1];
  *(v103 + 8) = v106;
  v107 = v84;

  sub_1CEFCCBDC(v104, &v139, &unk_1EC4BF260, &unk_1CFA01B60);
  sub_1CF265B04(&v136, v134, v111 & 1, sub_1CF2A951C, v95);

  sub_1CEFCCC44(v126, &unk_1EC4BEC00, &unk_1CF9FCB60);
  sub_1CEFE5888(v131, type metadata accessor for VFSItem);
  return (*(v118 + 8))(v127, v117);
}

uint64_t sub_1CF28EF20(uint64_t a1, void *a2, void (*a3)(void *), uint64_t a4, uint64_t a5, void *a6, uint64_t a7, int a8, uint64_t *a9, uint64_t a10, unsigned __int8 a11, __int128 *a12)
{
  v54 = a8;
  v52 = a6;
  v53 = a7;
  v55 = a5;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC10, &unk_1CFA00660);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v45[-v17];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v56 = &v45[-v21];
  v22 = sub_1CF9E5A58();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v45[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v45[-v28];
  *&v31 = MEMORY[0x1EEE9AC00](v30).n128_u64[0];
  v33 = &v45[-v32];
  if (a2)
  {
    *v18 = a2;
    swift_storeEnumTagMultiPayload();
    v34 = a2;
    a3(v18);
    v40 = &unk_1EC4BEC10;
    v41 = &unk_1CFA00660;
    v42 = v18;
  }

  else
  {
    v49 = v15;
    v50 = a4;
    v51 = a3;
    v46 = a11;
    v47 = a9;
    v48 = a10;
    v35 = v52;
    v36 = [v52 URL];
    sub_1CF9E59D8();

    sub_1CF9E5988();
    v37 = *(v23 + 8);
    v37(v29, v22);
    v37(v33, v22);
    v38 = [v35 URL];
    sub_1CF9E59D8();

    v57 = v53;
    v58 = v54;
    v39 = v56;
    sub_1CF28CB50(v26, &v57, v47, v48, v46 & 1, a12, v56);
    v37(v26, v22);
    v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEC38, &unk_1CFA00670) + 48);
    sub_1CEFCCBDC(v39, v18, &unk_1EC4BEC00, &unk_1CF9FCB60);
    *(v18 + v44) = 0;
    swift_storeEnumTagMultiPayload();
    v51(v18);
    sub_1CEFCCC44(v18, &unk_1EC4BEC10, &unk_1CFA00660);
    v42 = v39;
    v40 = &unk_1EC4BEC00;
    v41 = &unk_1CF9FCB60;
  }

  return sub_1CEFCCC44(v42, v40, v41);
}

void sub_1CF28F2E0(uint64_t *a1, uint64_t *a2, void (*a3)(void *), uint64_t a4)
{
  v9 = sub_1CF9E63D8();
  v59 = *(v9 - 8);
  v10 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = *a1;
  v20 = *(a1 + 8);
  if (v20 != 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
    sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
    v34 = swift_allocError();
    v36 = v35;
    sub_1CF1B8150();
    v37 = swift_allocError();
    *v38 = 0xB000000000000020;
    *&aBlock = v19;
    BYTE8(aBlock) = v20;
LABEL_7:
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = v37;
    sub_1CF2A8DE0(&aBlock);
    *v36 = aBlock;
    v41 = v61;
    v42 = v62;
    v43 = v64;
    *(v36 + 48) = v63;
    *(v36 + 64) = v43;
    *(v36 + 16) = v41;
    *(v36 + 32) = v42;
    v44 = v65;
    v45 = v66;
    v46 = v67;
    *(v36 + 128) = v68;
    *(v36 + 96) = v45;
    *(v36 + 112) = v46;
    *(v36 + 80) = v44;
    a3(v34);

    return;
  }

  v21 = *a2;
  v22 = *(a2 + 8);
  if (v22 != 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
    sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
    v34 = swift_allocError();
    v36 = v39;
    sub_1CF1B8150();
    v37 = swift_allocError();
    *v40 = 0xB000000000000020;
    *&aBlock = v21;
    BYTE8(aBlock) = v22;
    goto LABEL_7;
  }

  v53 = v9;
  v23 = *(v4 + 216);
  v55 = *(v4 + 224);
  v57 = v23;
  v24 = &v52 - v18;
  v58 = &v52 - v18;
  v25 = sub_1CF9E6448();
  v54 = *(v25 - 8);
  (*(v54 + 56))(v24, 1, 1, v25);
  v26 = swift_allocObject();
  v26[2] = a3;
  v26[3] = a4;
  v27 = swift_allocObject();
  *(v27 + 16) = v4;
  *(v27 + 24) = v19;
  *(v27 + 32) = a3;
  *(v27 + 40) = a4;
  *(v27 + 48) = v19;
  *(v27 + 56) = 1;
  *(v27 + 64) = v21;
  *(v27 + 72) = v21;
  *(v27 + 80) = 1;
  v28 = swift_allocObject();
  v28[2] = sub_1CF2BA174;
  v28[3] = v26;
  v29 = v55;
  v28[4] = v55;
  swift_retain_n();
  v56 = v57;

  v57 = v26;
  v30 = v54;

  v31 = v29;

  v32 = fpfs_current_log();
  v55 = v31[2];
  sub_1CEFCCBDC(v58, v16, &unk_1EC4BE370, qword_1CFA01B30);
  if ((*(v30 + 48))(v16, 1, v25) == 1)
  {
    sub_1CEFCCC44(v16, &unk_1EC4BE370, qword_1CFA01B30);
    v33 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    sub_1CF9E6438();
    (*(v30 + 8))(v16, v25);
    v33 = sub_1CF9E63C8();
    (*(v59 + 8))(v12, v53);
  }

  v47 = swift_allocObject();
  v47[2] = v32;
  v47[3] = sub_1CF2B052C;
  v47[4] = v27;
  *&v62 = sub_1CF2BA17C;
  *(&v62 + 1) = v47;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v61 = sub_1CEFCA444;
  *(&v61 + 1) = &block_descriptor_468;
  v48 = _Block_copy(&aBlock);
  v49 = v32;

  *&v62 = sub_1CF2BA180;
  *(&v62 + 1) = v28;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v61 = sub_1CEFCA444;
  *(&v61 + 1) = &block_descriptor_471;
  v50 = _Block_copy(&aBlock);

  v51 = v56;
  fp_task_tracker_async_and_qos(v55, v56, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v33, v48, v50);
  _Block_release(v50);
  _Block_release(v48);

  sub_1CEFCCC44(v58, &unk_1EC4BE370, qword_1CFA01B30);
}

void sub_1CF28F99C(void *a1, uint64_t a2, void (*a3)(id), uint64_t a4, uint64_t a5, int a6, void *a7, uint64_t a8, char a9)
{
  v194 = a8;
  v195 = a7;
  v200 = a6;
  v199 = a5;
  v201 = a3;
  v202 = a4;
  v190 = sub_1CF9E64A8();
  v189 = *(v190 - 8);
  v11 = *(v189 + 64);
  MEMORY[0x1EEE9AC00](v190);
  v188 = (v176 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v192 = v176 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v196 = v176 - v17;
  v198 = sub_1CF9E5A58();
  v197 = *(v198 - 8);
  v18 = *(v197 + 64);
  MEMORY[0x1EEE9AC00](v198);
  v191 = v176 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v187 = v176 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v193 = v176 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = v176 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v29 = v176 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = v176 - v31;
  v33 = type metadata accessor for VFSItem(0);
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v37 = v176 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v40 = v176 - v39;
  sub_1CF263ADC(a2, 0, 0, v32);
  v183 = v29;
  v185 = a1;
  v182 = v37;
  v184 = v25;
  v186 = v40;
  v43 = *(v34 + 48);
  v42 = v34 + 48;
  v41 = v43;
  if (v43(v32, 1, v33) == 1)
  {
    sub_1CEFCCC44(v32, &unk_1EC4BEC00, &unk_1CF9FCB60);
    v44 = swift_allocObject();
    *(v44 + 16) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
    sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
    v45 = swift_allocError();
    v47 = v46;
    sub_1CF1B8150();
    v48 = swift_allocError();
    *v49 = v44;
    *&aBlock = v199;
    BYTE8(aBlock) = v200;
    v205 = 0u;
    v206 = 0u;
    v207 = 0u;
    v208 = 0u;
    v209 = 0u;
    v210 = 0u;
    v211 = v48;
    sub_1CF2A8DE0(&aBlock);
    *v47 = aBlock;
    v50 = v205;
    v51 = v206;
    v52 = v208;
    *(v47 + 48) = v207;
    *(v47 + 64) = v52;
    *(v47 + 16) = v50;
    *(v47 + 32) = v51;
    v53 = v209;
    v54 = v210;
    v55 = v211;
    *(v47 + 128) = v212;
    *(v47 + 96) = v54;
    *(v47 + 112) = v55;
    *(v47 + 80) = v53;
    v201(v45);

    return;
  }

  v56 = v32;
  v57 = v186;
  sub_1CEFE4C60(v56, v186, type metadata accessor for VFSItem);
  v58 = v200;
  v59 = v199;
  if (*(v57 + *(v33 + 28)) != 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
    sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
    v77 = swift_allocError();
    v79 = v78;
    sub_1CF1B8150();
    v80 = swift_allocError();
    *v81 = 0xB000000000000020;
    *&aBlock = v59;
    BYTE8(aBlock) = v58;
    v205 = 0u;
    v206 = 0u;
    v207 = 0u;
    v208 = 0u;
    v209 = 0u;
    v210 = 0u;
    v211 = v80;
    sub_1CF2A8DE0(&aBlock);
    *v79 = aBlock;
    v82 = v205;
    v83 = v206;
    v84 = v208;
    *(v79 + 48) = v207;
    *(v79 + 64) = v84;
    *(v79 + 16) = v82;
    *(v79 + 32) = v83;
    v85 = v209;
    v86 = v210;
    v87 = v211;
    *(v79 + 128) = v212;
    *(v79 + 96) = v86;
    *(v79 + 112) = v87;
    *(v79 + 80) = v85;
    v201(v77);

    v88 = v57;
LABEL_10:
    sub_1CEFE5888(v88, type metadata accessor for VFSItem);
    return;
  }

  v60 = v185;
  v61 = objc_sync_enter(v185);
  if (v61)
  {
    goto LABEL_27;
  }

  v180 = v42;
  v181 = v33;
  v62 = objc_sync_exit(v60);
  v63 = v196;
  if (v62)
  {
    MEMORY[0x1EEE9AC00](v62);
    v175 = &v176[-4];
    v176[-2] = v60;
    goto LABEL_29;
  }

  sub_1CF25116C(v196);
  v64 = v197;
  v65 = v198;
  v179 = *(v197 + 48);
  if (v179(v63, 1, v198) == 1)
  {
    sub_1CEFCCC44(v63, &unk_1EC4BE310, qword_1CF9FCBE0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
    sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
    v66 = swift_allocError();
    v68 = v67;
    sub_1CF1B8150();
    v69 = swift_allocError();
    *v70 = 0xB000000000000008;
    *&aBlock = v59;
    BYTE8(aBlock) = v58;
    v205 = 0u;
    v206 = 0u;
    v207 = 0u;
    v208 = 0u;
    v209 = 0u;
    v210 = 0u;
    v211 = v69;
    sub_1CF2A8DE0(&aBlock);
    *v68 = aBlock;
    v71 = v205;
    v72 = v206;
    v73 = v208;
    *(v68 + 48) = v207;
    *(v68 + 64) = v73;
    *(v68 + 16) = v71;
    *(v68 + 32) = v72;
    v74 = v209;
    v75 = v210;
    v76 = v211;
    *(v68 + 128) = v212;
    *(v68 + 96) = v75;
    *(v68 + 112) = v76;
    *(v68 + 80) = v74;
    v201(v66);

LABEL_9:
    v88 = v186;
    goto LABEL_10;
  }

  v178 = v18;
  v90 = v64 + 32;
  v89 = *(v64 + 32);
  v89(v184, v63, v65);
  v91 = v183;
  sub_1CF263ADC(v195, 0, 0, v183);
  v92 = v89;
  v93 = v181;
  if (v41(v91, 1, v181) == 1)
  {
    sub_1CEFCCC44(v91, &unk_1EC4BEC00, &unk_1CF9FCB60);
    v94 = swift_allocObject();
    *(v94 + 16) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
    sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
    v95 = swift_allocError();
    v97 = v96;
    sub_1CF1B8150();
    v98 = swift_allocError();
    *v99 = v94;
    *&aBlock = v194;
    BYTE8(aBlock) = a9;
    v205 = 0u;
    v206 = 0u;
    v207 = 0u;
    v208 = 0u;
    v209 = 0u;
    v210 = 0u;
    v211 = v98;
    sub_1CF2A8DE0(&aBlock);
    *v97 = aBlock;
    v100 = v205;
    v101 = v206;
    v102 = v208;
    *(v97 + 48) = v207;
    *(v97 + 64) = v102;
    *(v97 + 16) = v100;
    *(v97 + 32) = v101;
    v103 = v209;
    v104 = v210;
    v105 = v211;
    *(v97 + 128) = v212;
    *(v97 + 96) = v104;
    *(v97 + 112) = v105;
    *(v97 + 80) = v103;
    v201(v95);

    (*(v197 + 8))(v184, v198);
    goto LABEL_9;
  }

  v106 = v182;
  sub_1CEFE4C60(v91, v182, type metadata accessor for VFSItem);
  v107 = *(v106 + *(v93 + 28)) == 1;
  v108 = v197;
  v109 = v184;
  if (!v107)
  {
    v126 = v197;
    v127 = v186;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
    sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
    v128 = swift_allocError();
    v130 = v129;
    sub_1CF1B8150();
    v131 = swift_allocError();
    *v132 = 0xB000000000000020;
    *&aBlock = v194;
    BYTE8(aBlock) = a9;
    v205 = 0u;
    v206 = 0u;
    v207 = 0u;
    v208 = 0u;
    v209 = 0u;
    v210 = 0u;
    v211 = v131;
    sub_1CF2A8DE0(&aBlock);
    *v130 = aBlock;
    v133 = v205;
    v134 = v206;
    v135 = v208;
    *(v130 + 48) = v207;
    *(v130 + 64) = v135;
    *(v130 + 16) = v133;
    *(v130 + 32) = v134;
    v136 = v209;
    v137 = v210;
    v138 = v211;
    *(v130 + 128) = v212;
    *(v130 + 96) = v137;
    *(v130 + 112) = v138;
    *(v130 + 80) = v136;
    v201(v128);

    sub_1CEFE5888(v106, type metadata accessor for VFSItem);
    (*(v126 + 8))(v109, v198);
    v88 = v127;
    goto LABEL_10;
  }

  v61 = objc_sync_enter(v60);
  if (v61)
  {
LABEL_27:
    MEMORY[0x1EEE9AC00](v61);
    v176[-2] = v60;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, &v176[-4], "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v110 = objc_sync_exit(v60);
  v111 = v193;
  v112 = v192;
  if (v110)
  {
    MEMORY[0x1EEE9AC00](v110);
    v175 = &v176[-4];
    v176[-2] = v185;
LABEL_29:
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v175, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  sub_1CF25116C(v192);
  v113 = v198;
  if (v179(v112, 1, v198) == 1)
  {
    sub_1CEFCCC44(v112, &unk_1EC4BE310, qword_1CF9FCBE0);
    v114 = v108;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
    sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
    v115 = swift_allocError();
    v117 = v116;
    sub_1CF1B8150();
    v118 = swift_allocError();
    *v119 = 0xB000000000000008;
    *&aBlock = v194;
    BYTE8(aBlock) = a9;
    v205 = 0u;
    v206 = 0u;
    v207 = 0u;
    v208 = 0u;
    v209 = 0u;
    v210 = 0u;
    v211 = v118;
    sub_1CF2A8DE0(&aBlock);
    *v117 = aBlock;
    v120 = v205;
    v121 = v206;
    v122 = v208;
    *(v117 + 48) = v207;
    *(v117 + 64) = v122;
    *(v117 + 16) = v120;
    *(v117 + 32) = v121;
    v123 = v209;
    v124 = v210;
    v125 = v211;
    *(v117 + 128) = v212;
    *(v117 + 96) = v124;
    *(v117 + 112) = v125;
    *(v117 + 80) = v123;
    v201(v115);

    sub_1CEFE5888(v106, type metadata accessor for VFSItem);
    (*(v114 + 8))(v184, v113);
    v88 = v186;
    goto LABEL_10;
  }

  v176[1] = v90;
  v177 = v92;
  v92(v111, v112, v113);
  v139 = objc_opt_self();
  v140 = sub_1CF9E5928();
  v141 = [v139 writingIntentWithURL:v140 options:4];
  v196 = v141;

  v142 = sub_1CF9E5928();
  v143 = [v139 writingIntentWithURL:v142 options:2];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC20, &qword_1CF9FE480);
  v144 = swift_allocObject();
  *(v144 + 16) = xmmword_1CFA00380;
  *(v144 + 32) = v141;
  *(v144 + 40) = v143;
  v145 = *(v108 + 16);
  v146 = v187;
  v145(v187, v111, v113);
  v145(v191, v146, v113);
  v147 = (*(v108 + 80) + 24) & ~*(v108 + 80);
  v148 = (v178 + v147 + 7) & 0xFFFFFFFFFFFFFFF8;
  v149 = swift_allocObject();
  *(v149 + 16) = v143;
  v177(v149 + v147, v146, v113);
  v60 = v185;
  *(v149 + v148) = v185;
  v150 = v149 + ((v148 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v150 = v199;
  *(v150 + 8) = v200;
  v151 = (v149 + ((v148 + 31) & 0xFFFFFFFFFFFFFFF8));
  v153 = v201;
  v152 = v202;
  *v151 = v201;
  v151[1] = v152;
  v154 = v60[27];
  v155 = v188;
  *v188 = v154;
  v156 = v189;
  v157 = v190;
  (*(v189 + 104))(v155, *MEMORY[0x1E69E8020], v190);
  v195 = v143;
  v196 = v196;

  v158 = v154;
  LOBYTE(v143) = sub_1CF9E64D8();
  v61 = (*(v156 + 8))(v155, v157);
  if ((v143 & 1) == 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  if (*((v144 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v159 = [objc_allocWithZone(MEMORY[0x1E696ABF8]) init];
    if (v60[23])
    {
      v160 = v60[22];
      v161 = sub_1CF9E6888();
      [v159 setPurposeIdentifier_];
    }

    swift_beginAccess();
    v162 = v159;
    sub_1CF6E96F4(&v203, v162);
    swift_endAccess();

    v163 = fpfs_current_log();
    sub_1CEFD57E0(0, &qword_1EDEA3630, 0x1E696ABF0);
    v164 = sub_1CF9E6D28();

    v165 = v60[26];
    v166 = swift_allocObject();
    *(v166 + 16) = v163;
    *(v166 + 24) = v60;
    *(v166 + 32) = v162;
    *(v166 + 40) = 0;
    *(v166 + 48) = -1;
    *(v166 + 56) = sub_1CF2B0568;
    *(v166 + 64) = v149;
    *&v206 = sub_1CF2BA138;
    *(&v206 + 1) = v166;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v205 = sub_1CF00A468;
    *(&v205 + 1) = &block_descriptor_487;
    v167 = _Block_copy(&aBlock);

    v168 = v162;
    v169 = v165;
    v170 = v163;

    [v168 coordinateAccessWithIntents:v164 queue:v169 byAccessor:v167];
    _Block_release(v167);

    v171 = v191;
  }

  else
  {

    v172 = v195;
    v171 = v191;
    sub_1CF2AE4E8(0, v195, v191, v60, v199, v200, v153, v202);
  }

  v173 = *(v197 + 8);
  v174 = v198;
  v173(v193, v198);
  sub_1CEFE5888(v182, type metadata accessor for VFSItem);
  v173(v184, v174);
  sub_1CEFE5888(v186, type metadata accessor for VFSItem);
  v173(v171, v174);
}

uint64_t sub_1CF290EB8(uint64_t a1, void *a2)
{
  v4 = sub_1CF9E5A58();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1CF9E6118();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  (*(v5 + 16))(v8, a1, v4);
  v15 = a2;
  v16 = sub_1CF9E6108();
  v17 = sub_1CF9E72A8();
  v36 = a2;

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v35 = v9;
    v19 = v18;
    v32 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v38 = v34;
    *v19 = 136315394;
    v20 = sub_1CF9E5928();
    v21 = [v20 fp_shortDescription];
    v33 = v10;
    v22 = v21;

    v23 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v24 = v17;
    v26 = v25;

    (*(v5 + 8))(v8, v4);
    v27 = sub_1CEFD0DF0(v23, v26, &v38);

    *(v19 + 4) = v27;
    *(v19 + 12) = 2112;
    swift_getErrorValue();
    v28 = Error.prettyDescription.getter(v37);
    *(v19 + 14) = v28;
    v29 = v32;
    *v32 = v28;
    _os_log_impl(&dword_1CEFC7000, v16, v24, "Can't enumerate: %s: %@", v19, 0x16u);
    sub_1CEFCCC44(v29, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v29, -1, -1);
    v30 = v34;
    __swift_destroy_boxed_opaque_existential_1(v34);
    MEMORY[0x1D386CDC0](v30, -1, -1);
    MEMORY[0x1D386CDC0](v19, -1, -1);

    (*(v33 + 8))(v13, v35);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
    (*(v10 + 8))(v13, v9);
  }

  return 1;
}

uint64_t sub_1CF291224(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1CF9E5A58();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF9E5968();
  sub_1CF9E5A18();
  (*(v5 + 8))(v8, v4);
  v9 = sub_1CF9E6888();

  LODWORD(a3) = [a3 fileExistsAtPath_];

  return a3 ^ 1;
}

uint64_t sub_1CF29135C(uint64_t a1, __int128 *a2, uint64_t *a3, __int128 *a4, uint64_t a5, uint64_t a6)
{
  v63 = a6;
  v12 = sub_1CF9E63D8();
  v55 = *(v12 - 8);
  v56 = v12;
  v13 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v54 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v61 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v54 - v19;
  v62 = *a1;
  LODWORD(v60) = *(a1 + 8);
  v21 = a2[3];
  v72 = a2[2];
  v73 = v21;
  v22 = a2[5];
  v74 = a2[4];
  v75 = v22;
  v23 = a2[1];
  v70 = *a2;
  v71 = v23;
  v24 = *a3;
  v57 = *(a3 + 8);
  v25 = a4[1];
  v76 = *a4;
  v77 = v25;
  v26 = a4[2];
  v27 = a4[3];
  v28 = a4[5];
  v80 = a4[4];
  v81 = v28;
  v78 = v26;
  v79 = v27;
  v29 = *(v6 + 216);
  v30 = *(v6 + 224);
  v58 = v24;
  v59 = v29;
  v31 = sub_1CF9E6448();
  v32 = *(v31 - 8);
  (*(v32 + 56))(v20, 1, 1, v31);
  v33 = swift_allocObject();
  v34 = v63;
  *(v33 + 16) = a5;
  *(v33 + 24) = v34;
  v35 = swift_allocObject();
  v36 = v73;
  *(v35 + 72) = v72;
  *(v35 + 88) = v36;
  v37 = v75;
  *(v35 + 104) = v74;
  *(v35 + 120) = v37;
  v38 = v71;
  *(v35 + 40) = v70;
  *(v35 + 56) = v38;
  v39 = v79;
  *(v35 + 200) = v78;
  *(v35 + 216) = v39;
  v40 = v81;
  *(v35 + 232) = v80;
  *(v35 + 248) = v40;
  v41 = v77;
  *(v35 + 168) = v76;
  v42 = v62;
  *(v35 + 16) = v6;
  *(v35 + 24) = v42;
  *(v35 + 32) = v60;
  *(v35 + 136) = a5;
  *(v35 + 144) = v34;
  *(v35 + 152) = v58;
  *(v35 + 160) = v57;
  *(v35 + 184) = v41;
  v43 = swift_allocObject();
  v43[2] = sub_1CF2BA174;
  v43[3] = v33;
  v43[4] = v30;
  swift_retain_n();
  v62 = v59;

  sub_1CEFCCBDC(&v70, &v64, &unk_1EC4BE330, &unk_1CF9FF010);
  sub_1CEFCCBDC(&v76, &v64, &unk_1EC4BE330, &unk_1CF9FF010);

  v44 = fpfs_current_log();
  v60 = *(v30 + 16);
  v63 = v20;
  v45 = v61;
  sub_1CEFCCBDC(v20, v61, &unk_1EC4BE370, qword_1CFA01B30);
  if ((*(v32 + 48))(v45, 1, v31) == 1)
  {
    sub_1CEFCCC44(v45, &unk_1EC4BE370, qword_1CFA01B30);
    v46 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v47 = v54;
    sub_1CF9E6438();
    (*(v32 + 8))(v45, v31);
    v46 = sub_1CF9E63C8();
    (*(v55 + 8))(v47, v56);
  }

  v48 = swift_allocObject();
  v48[2] = v44;
  v48[3] = sub_1CF2B0454;
  v48[4] = v35;
  v68 = sub_1CF2BA17C;
  v69 = v48;
  v64 = MEMORY[0x1E69E9820];
  v65 = 1107296256;
  v66 = sub_1CEFCA444;
  v67 = &block_descriptor_434;
  v49 = _Block_copy(&v64);
  v50 = v44;

  v68 = sub_1CF2BA180;
  v69 = v43;
  v64 = MEMORY[0x1E69E9820];
  v65 = 1107296256;
  v66 = sub_1CEFCA444;
  v67 = &block_descriptor_437;
  v51 = _Block_copy(&v64);

  v52 = v62;
  fp_task_tracker_async_and_qos(v60, v62, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v46, v49, v51);
  _Block_release(v51);
  _Block_release(v49);

  return sub_1CEFCCC44(v63, &unk_1EC4BE370, qword_1CFA01B30);
}

void sub_1CF2918E0(void *a1, uint64_t a2, int a3, __int128 *a4, void (*a5)(void *), uint64_t a6, void *a7, int a8, __int128 *a9)
{
  v194 = a8;
  v198 = a7;
  v200 = a5;
  v201 = a6;
  v13 = a9[3];
  v238 = a9[2];
  v239 = v13;
  v14 = a9[5];
  v240 = a9[4];
  v241 = v14;
  v15 = a9[1];
  v236 = *a9;
  v237 = v15;
  v16 = a4[3];
  v244 = a4[2];
  v245 = v16;
  v17 = a4[5];
  v246 = a4[4];
  v247 = v17;
  v18 = a4[1];
  v242 = *a4;
  v243 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v186 = &v173 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v183 = &v173 - v23;
  v191 = sub_1CF9E64A8();
  v188 = *(v191 - 8);
  v24 = *(v188 + 64);
  MEMORY[0x1EEE9AC00](v191);
  v187 = (&v173 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v190 = &v173 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v196 = &v173 - v30;
  v199 = sub_1CF9E5A58();
  v197 = *(v199 - 8);
  v31 = *(v197 + 64);
  MEMORY[0x1EEE9AC00](v199);
  v185 = &v173 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v189 = &v173 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v195 = &v173 - v36;
  v184 = type metadata accessor for VFSItem(0);
  v182 = *(v184 - 8);
  v37 = *(v182 + 64);
  MEMORY[0x1EEE9AC00](v184);
  v39 = &v173 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v173 - v41;
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v173 - v44;
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v173 - v47;
  v192 = a2;
  *v232 = a2;
  v193 = a3;
  v232[8] = a3;
  v49 = a4[3];
  v233[2] = a4[2];
  v233[3] = v49;
  v50 = a4[5];
  v233[4] = a4[4];
  v233[5] = v50;
  v51 = a4[1];
  v233[0] = *a4;
  v233[1] = v51;
  *&v226 = 8;
  v52 = a1;
  sub_1CF278908(v232, v233, &v226, 0, &v173 - v47);
  v177 = v42;
  v178 = 0;
  v54 = v196;
  v180 = v45;
  v181 = a9;
  v176 = v39;
  v179 = a4;
  v55 = objc_sync_enter(a1);
  if (v55)
  {
    goto LABEL_24;
  }

  v56 = objc_sync_exit(a1);
  v57 = v197;
  v58 = v198;
  if (v56)
  {
    goto LABEL_25;
  }

  v59 = v48;
  sub_1CF25116C(v54);
  v60 = v54;
  v61 = *(v57 + 48);
  v62 = v199;
  if (v61(v60, 1, v199) != 1)
  {
    v174 = v61;
    v175 = v59;
    v75 = v195;
    v196 = *(v57 + 32);
    (v196)(v195, v60, v62);
    *v232 = v58;
    v232[8] = v194;
    v76 = v180;
    v77 = v181[3];
    v233[2] = v181[2];
    v233[3] = v77;
    v78 = v181[5];
    v233[4] = v181[4];
    v233[5] = v78;
    v79 = v181[1];
    v233[0] = *v181;
    v233[1] = v79;
    *&v226 = 0;
    v80 = v178;
    sub_1CF278908(v232, v233, &v226, 0, v180);
    if (v80)
    {
      (*(v57 + 8))(v75, v62);
      sub_1CEFE5888(v175, type metadata accessor for VFSItem);
      v53 = v80;
      v200(v80);

      return;
    }

    v81 = v196;
    v55 = objc_sync_enter(v52);
    if (v55)
    {
      goto LABEL_24;
    }

    v56 = objc_sync_exit(v52);
    v82 = v194;
    v83 = v190;
    if (!v56)
    {
      v84 = v76;
      sub_1CF25116C(v190);
      v85 = v199;
      if ((v174)(v83, 1, v199) == 1)
      {
        sub_1CEFCCC44(v83, &unk_1EC4BE310, qword_1CF9FCBE0);
        v228 = v238;
        v229 = v239;
        v230 = v240;
        v231 = v241;
        v226 = v236;
        v227 = v237;
        v86 = v84;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
        sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
        v87 = swift_allocError();
        v89 = v88;
        sub_1CF1B8150();
        v90 = swift_allocError();
        *v91 = 0xB000000000000008;
        *&v232[7] = v226;
        *&v232[23] = v227;
        *&v232[39] = v228;
        *&v232[55] = v229;
        *&v232[71] = v230;
        *&v232[87] = v231;
        *&v233[0] = v198;
        BYTE8(v233[0]) = v82;
        *(&v233[2] + 9) = *&v232[32];
        *(&v233[1] + 9) = *&v232[16];
        *(v233 + 9) = *v232;
        *(&v233[6] + 1) = *(&v231 + 1);
        *(&v233[5] + 9) = *&v232[80];
        *(&v233[4] + 9) = *&v232[64];
        *(&v233[3] + 9) = *&v232[48];
        v234 = v90;
        sub_1CF2A8DE0(v233);
        *v89 = v233[0];
        v92 = v233[1];
        v93 = v233[2];
        v94 = v233[4];
        *(v89 + 48) = v233[3];
        *(v89 + 64) = v94;
        *(v89 + 16) = v92;
        *(v89 + 32) = v93;
        v95 = v233[5];
        v96 = v233[6];
        v97 = v234;
        *(v89 + 128) = v235;
        *(v89 + 96) = v96;
        *(v89 + 112) = v97;
        *(v89 + 80) = v95;
        sub_1CEFCCBDC(v181, &v220, &unk_1EC4BE330, &unk_1CF9FF010);
        v200(v87);

        sub_1CEFE5888(v86, type metadata accessor for VFSItem);
        (*(v197 + 8))(v195, v85);
LABEL_16:
        v74 = v175;
        goto LABEL_17;
      }

      (v81)(v189, v83, v85);
      v98 = objc_opt_self();
      v99 = sub_1CF9E5928();
      v100 = [v98 writingIntentWithURL:v99 options:4];
      v196 = v100;

      v101 = sub_1CF9E5928();
      v102 = [v98 writingIntentWithURL:v101 options:2];

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC20, &qword_1CF9FE480);
      v103 = swift_allocObject();
      *(v103 + 16) = xmmword_1CFA00380;
      *(v103 + 32) = v100;
      *(v103 + 40) = v102;
      v174 = v103;
      v104 = swift_allocObject();
      v105 = v198;
      *(v104 + 16) = v52;
      *(v104 + 24) = v105;
      *(v104 + 32) = v82;
      v106 = v181;
      v107 = v181[3];
      *(v104 + 72) = v181[2];
      *(v104 + 88) = v107;
      v108 = v106[5];
      *(v104 + 104) = v106[4];
      *(v104 + 120) = v108;
      v109 = v106[1];
      *(v104 + 40) = *v106;
      *(v104 + 56) = v109;
      v110 = v192;
      *(v104 + 136) = v102;
      *(v104 + 144) = v110;
      *(v104 + 152) = v193;
      v111 = v52;
      v112 = v179;
      v113 = v179[3];
      *(v104 + 192) = v179[2];
      *(v104 + 208) = v113;
      v114 = v112[5];
      *(v104 + 224) = v112[4];
      *(v104 + 240) = v114;
      v115 = v112[1];
      *(v104 + 160) = *v112;
      *(v104 + 176) = v115;
      v116 = v201;
      *(v104 + 256) = v200;
      *(v104 + 264) = v116;
      v178 = v104;
      v190 = v52[27];
      v52 = v187;
      v117 = v188;
      *v187 = v190;
      (*(v117 + 104))(v52, *MEMORY[0x1E69E8020], v191);
      v118 = v102;
      sub_1CEFCCBDC(v112, v233, &unk_1EC4BE330, &unk_1CF9FF010);
      sub_1CEFCCBDC(v106, v233, &unk_1EC4BE330, &unk_1CF9FF010);
      v119 = v118;
      v196 = v196;

      v120 = v111;

      v121 = v190;
      LOBYTE(v118) = sub_1CF9E64D8();
      v55 = (*(v117 + 8))(v52, v191);
      if (v118)
      {
        v122 = v180;
        v124 = v185;
        v123 = v186;
        v125 = v177;
        if (!*((v174 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {

          v218 = v198;
          v219 = v194;
          v142 = v181[3];
          v228 = v181[2];
          v229 = v142;
          v143 = v181[5];
          v230 = v181[4];
          v231 = v143;
          v144 = v181[1];
          v226 = *v181;
          v227 = v144;
          v217 = 0;
          sub_1CF278908(&v218, &v226, &v217, 0, v125);
          sub_1CEFE5888(v125, type metadata accessor for VFSItem);
          v198 = v119;
          v146 = [v119 URL];
          sub_1CF9E59D8();

          v215 = v192;
          v216 = v193;
          v222 = v244;
          v223 = v245;
          v224 = v246;
          v225 = v247;
          v220 = v242;
          v221 = v243;
          v211 = v244;
          v212 = v245;
          v213 = v246;
          v214 = v247;
          v209 = v242;
          v210 = v243;
          v147 = v182;
          (*(v182 + 56))(v123, 1, 1, v184);
          v204 = 0uLL;
          v205 = 0;
          v206 = 0xB000000000000000;
          v207 = 0u;
          v208 = 0u;
          sub_1CEFCCBDC(v179, v233, &unk_1EC4BE330, &unk_1CF9FF010);
          v148 = v183;
          sub_1CF28CB50(v124, &v215, &v209, v123, 1, &v204, v183);
          v149 = v124;
          v150 = v175;
          v151 = v123;
          v152 = v199;
          sub_1CEFCCC44(v151, &unk_1EC4BEC00, &unk_1CF9FCB60);
          v203[2] = v211;
          v203[3] = v212;
          v203[4] = v213;
          v203[5] = v214;
          v203[0] = v209;
          v203[1] = v210;
          sub_1CEFCCC44(v203, &unk_1EC4BECD0, &unk_1CF9FEF80);
          v154 = *(v197 + 8);
          v154(v149, v152);
          if ((*(v147 + 48))(v148, 1, v184) == 1)
          {
            sub_1CEFCCC44(v148, &unk_1EC4BEC00, &unk_1CF9FCB60);
            v200(0);

            v155 = v199;
          }

          else
          {
            v156 = v148;
            v157 = v176;
            sub_1CEFE4C60(v156, v176, type metadata accessor for VFSItem);
            v158 = swift_allocBox();
            sub_1CEFD90AC(v157, v159, type metadata accessor for VFSItem);
            v160 = v158 | 0x6000000000000000;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
            sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
            v161 = swift_allocError();
            v163 = v162;
            sub_1CF1B8150();
            v164 = swift_allocError();
            *v165 = v160;
            v150 = v175;
            *&v232[7] = v220;
            *&v232[23] = v221;
            *&v232[39] = v222;
            *&v232[55] = v223;
            *&v232[71] = v224;
            *&v232[87] = v225;
            *&v233[0] = v192;
            BYTE8(v233[0]) = v193;
            *(&v233[2] + 9) = *&v232[32];
            *(&v233[1] + 9) = *&v232[16];
            *(v233 + 9) = *v232;
            *(&v233[6] + 1) = *(&v225 + 1);
            *(&v233[5] + 9) = *&v232[80];
            *(&v233[4] + 9) = *&v232[64];
            *(&v233[3] + 9) = *&v232[48];
            v234 = v164;
            sub_1CF2A8DE0(v233);
            *v163 = v233[0];
            v166 = v233[1];
            v167 = v233[2];
            v168 = v233[4];
            *(v163 + 48) = v233[3];
            *(v163 + 64) = v168;
            *(v163 + 16) = v166;
            *(v163 + 32) = v167;
            v169 = v233[5];
            v170 = v233[6];
            v171 = v234;
            *(v163 + 128) = v235;
            *(v163 + 96) = v170;
            *(v163 + 112) = v171;
            *(v163 + 80) = v169;
            swift_willThrow();
            sub_1CEFCCBDC(v179, &v202, &unk_1EC4BE330, &unk_1CF9FF010);
            sub_1CEFE5888(v157, type metadata accessor for VFSItem);
            v172 = v198;
            v155 = v199;
            v145 = v200;
            v153 = v161;
            v145(v161);

            v154 = *(v197 + 8);
          }

          v154(v189, v155);
          sub_1CEFE5888(v122, type metadata accessor for VFSItem);
          v154(v195, v155);
          v74 = v150;
          goto LABEL_17;
        }

        v126 = v119;
        v127 = [objc_allocWithZone(MEMORY[0x1E696ABF8]) init];
        if (v120[23])
        {
          v128 = v120[22];
          v129 = sub_1CF9E6888();
          [v127 setPurposeIdentifier_];
        }

        swift_beginAccess();
        v130 = v127;
        sub_1CF6E96F4(v232, v130);
        swift_endAccess();

        v131 = fpfs_current_log();
        sub_1CEFD57E0(0, &qword_1EDEA3630, 0x1E696ABF0);
        v132 = sub_1CF9E6D28();

        v133 = v120[26];
        v134 = swift_allocObject();
        *(v134 + 16) = v131;
        *(v134 + 24) = v120;
        *(v134 + 32) = v130;
        *(v134 + 40) = 0;
        *(v134 + 48) = -1;
        v135 = v178;
        *(v134 + 56) = sub_1CF2B0494;
        *(v134 + 64) = v135;
        *&v233[2] = sub_1CF2B04DC;
        *(&v233[2] + 1) = v134;
        *&v233[0] = MEMORY[0x1E69E9820];
        *(&v233[0] + 1) = 1107296256;
        *&v233[1] = sub_1CF00A468;
        *(&v233[1] + 1) = &block_descriptor_450;
        v136 = _Block_copy(v233);

        v137 = v130;
        v138 = v133;
        v139 = v131;

        [v137 coordinateAccessWithIntents:v132 queue:v138 byAccessor:v136];
        _Block_release(v136);

        v140 = *(v197 + 8);
        v141 = v199;
        v140(v189, v199);
        sub_1CEFE5888(v180, type metadata accessor for VFSItem);
        v140(v195, v141);
        goto LABEL_16;
      }

      __break(1u);
LABEL_24:
      MEMORY[0x1EEE9AC00](v55);
      *(&v173 - 2) = v52;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v173 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
    }

LABEL_25:
    MEMORY[0x1EEE9AC00](v56);
    *(&v173 - 2) = v52;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v173 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  sub_1CEFCCC44(v60, &unk_1EC4BE310, qword_1CF9FCBE0);
  v228 = v244;
  v229 = v245;
  v230 = v246;
  v231 = v247;
  v226 = v242;
  v227 = v243;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
  sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
  v63 = swift_allocError();
  v65 = v64;
  sub_1CF1B8150();
  v66 = swift_allocError();
  *v67 = 0xB000000000000008;
  *&v232[7] = v226;
  *&v232[23] = v227;
  *&v232[39] = v228;
  *&v232[55] = v229;
  *&v232[71] = v230;
  *&v232[87] = v231;
  *&v233[0] = v192;
  BYTE8(v233[0]) = v193;
  *(&v233[2] + 9) = *&v232[32];
  *(&v233[1] + 9) = *&v232[16];
  *(v233 + 9) = *v232;
  *(&v233[6] + 1) = *(&v231 + 1);
  *(&v233[5] + 9) = *&v232[80];
  *(&v233[4] + 9) = *&v232[64];
  *(&v233[3] + 9) = *&v232[48];
  v234 = v66;
  sub_1CF2A8DE0(v233);
  *v65 = v233[0];
  v68 = v233[1];
  v69 = v233[2];
  v70 = v233[4];
  *(v65 + 48) = v233[3];
  *(v65 + 64) = v70;
  *(v65 + 16) = v68;
  *(v65 + 32) = v69;
  v71 = v233[5];
  v72 = v233[6];
  v73 = v234;
  *(v65 + 128) = v235;
  *(v65 + 96) = v72;
  *(v65 + 112) = v73;
  *(v65 + 80) = v71;
  sub_1CEFCCBDC(v179, &v220, &unk_1EC4BE330, &unk_1CF9FF010);
  v200(v63);

  v74 = v59;
LABEL_17:
  sub_1CEFE5888(v74, type metadata accessor for VFSItem);
}

void sub_1CF292CCC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5, __int128 *a6, void *a7, uint64_t a8, unsigned __int8 a9, __int128 *a10, void (*a11)(void *), uint64_t a12)
{
  v69 = a4;
  v70 = a8;
  v68 = a7;
  v72 = a6;
  v73 = a3;
  v71 = a5;
  v74 = a12;
  v75 = a11;
  v13 = a10[3];
  v106 = a10[2];
  v107 = v13;
  v14 = a10[5];
  v108 = a10[4];
  v109 = v14;
  v15 = a10[1];
  v104 = *a10;
  v105 = v15;
  v16 = sub_1CF9E5A58();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v59 - v26;
  v28 = type metadata accessor for VFSItem(0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28);
  MEMORY[0x1EEE9AC00](v30);
  v35 = &v59 - v32;
  if (a2)
  {
    swift_willThrow();
    v36 = a2;
    v37 = a2;
  }

  else
  {
    v61 = v34;
    v62 = v27;
    v65 = v31;
    v66 = v20;
    v63 = v17;
    v64 = v16;
    v60 = v33;
    v38 = v70;
    v67 = 0;
    v101 = 0;
    v102 = v69;
    v103 = v71;
    sub_1CF278908(&v102, v72, &v101, 0, &v59 - v32);
    sub_1CEFE5888(v35, type metadata accessor for VFSItem);
    v39 = [v68 URL];
    v40 = v66;
    sub_1CF9E59D8();

    v93 = v38;
    LODWORD(v72) = a9;
    v94 = a9;
    v97 = v106;
    v98 = v107;
    v99 = v108;
    v100 = v109;
    v95 = v104;
    v96 = v105;
    v89 = v106;
    v90 = v107;
    v91 = v108;
    v92 = v109;
    v87 = v104;
    v88 = v105;
    v41 = v61;
    (*(v61 + 56))(v24, 1, 1, v65);
    v82 = 0uLL;
    v83 = 0;
    v84 = 0xB000000000000000;
    v85 = 0u;
    v86 = 0u;
    sub_1CEFCCBDC(a10, v78, &unk_1EC4BE330, &unk_1CF9FF010);
    v42 = v62;
    sub_1CF28CB50(v40, &v93, &v87, v24, 1, &v82, v62);
    sub_1CEFCCC44(v24, &unk_1EC4BEC00, &unk_1CF9FCB60);
    v81[2] = v89;
    v81[3] = v90;
    v81[4] = v91;
    v81[5] = v92;
    v81[0] = v87;
    v81[1] = v88;
    sub_1CEFCCC44(v81, &unk_1EC4BECD0, &unk_1CF9FEF80);
    (*(v63 + 8))(v66, v64);
    if ((*(v41 + 48))(v42, 1, v65) == 1)
    {
      sub_1CEFCCC44(v42, &unk_1EC4BEC00, &unk_1CF9FCB60);
      v75(0);
      return;
    }

    v43 = v60;
    sub_1CEFE4C60(v42, v60, type metadata accessor for VFSItem);
    v44 = swift_allocBox();
    sub_1CEFD90AC(v43, v45, type metadata accessor for VFSItem);
    v46 = v44 | 0x6000000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
    sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
    v36 = swift_allocError();
    v48 = v47;
    sub_1CF1B8150();
    v49 = swift_allocError();
    *v50 = v46;
    *&v77[7] = v95;
    *&v77[23] = v96;
    *&v77[39] = v97;
    *&v77[55] = v98;
    *&v77[71] = v99;
    *&v77[87] = v100;
    *&v78[0] = v38;
    BYTE8(v78[0]) = v72;
    *(&v78[2] + 9) = *&v77[32];
    *(&v78[1] + 9) = *&v77[16];
    *(v78 + 9) = *v77;
    *(&v78[6] + 1) = *(&v100 + 1);
    v79 = v49;
    *(&v78[5] + 9) = *&v77[80];
    *(&v78[4] + 9) = *&v77[64];
    *(&v78[3] + 9) = *&v77[48];
    sub_1CF2A8DE0(v78);
    *v48 = v78[0];
    v51 = v78[1];
    v52 = v78[2];
    v53 = v78[4];
    *(v48 + 48) = v78[3];
    *(v48 + 64) = v53;
    *(v48 + 16) = v51;
    *(v48 + 32) = v52;
    v54 = v78[5];
    v55 = v78[6];
    v56 = v79;
    *(v48 + 128) = v80;
    *(v48 + 96) = v55;
    *(v48 + 112) = v56;
    *(v48 + 80) = v54;
    swift_willThrow();
    sub_1CEFCCBDC(a10, &v76, &unk_1EC4BE330, &unk_1CF9FF010);
    sub_1CEFE5888(v43, type metadata accessor for VFSItem);
    v37 = v67;
  }

  v57 = v37;
  v58 = v36;
  v75(v36);
}

uint64_t sub_1CF293374(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1CF9E6388();
  v67 = *(v7 - 8);
  v68 = v7;
  v8 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v66 = (&v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v65 = &v51 - v11;
  v12 = sub_1CF9E6498();
  v63 = *(v12 - 8);
  v64 = v12;
  v13 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v62 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v54 = &v51 - v17;
  v18 = sub_1CF9E63D8();
  v19 = *(v18 - 8);
  v52 = v18;
  v53 = v19;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v57 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1CF9E6448();
  v59 = *(v22 - 8);
  v60 = v22;
  v23 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v58 = &v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1CF9E73D8();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v51 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *a1;
  v31 = *(a1 + 8);
  v32 = swift_allocObject();
  v56 = v30;
  *(v32 + 16) = v30;
  v55 = v31;
  *(v32 + 24) = v31;
  *(v32 + 32) = a2;
  *(v32 + 40) = a3;
  v51 = sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
  v61 = v3;
  v33 = *(v3 + 216);
  v69 = MEMORY[0x1E69E7CC0];
  sub_1CF2A9448(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0]);

  v34 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
  sub_1CEFCCCEC(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0);
  v35 = v52;
  sub_1CF9E77B8();
  v36 = v53;
  v37 = sub_1CF9E73E8();

  (*(v26 + 8))(v29, v25);
  v38 = v54;
  qos_class_self();
  sub_1CF9E63B8();
  v39 = *(v36 + 48);
  if (v39(v38, 1, v35) == 1)
  {
    (*(v36 + 104))(v57, *MEMORY[0x1E69E7FA0], v35);
    if (v39(v38, 1, v35) != 1)
    {
      sub_1CEFCCC44(v38, &unk_1EC4BE380, &qword_1CFA01BA0);
    }
  }

  else
  {
    (*(v36 + 32))(v57, v38, v35);
  }

  ObjectType = swift_getObjectType();
  v41 = v58;
  sub_1CF9E6428();
  v42 = swift_allocObject();
  v43 = v56;
  *(v42 + 16) = v61;
  *(v42 + 24) = v43;
  *(v42 + 32) = v55;
  *(v42 + 40) = 0u;
  *(v42 + 56) = 0u;
  *(v42 + 72) = 0u;
  *(v42 + 88) = 0u;
  *(v42 + 104) = 0u;
  *(v42 + 120) = 0u;
  *(v42 + 136) = 0u;
  *(v42 + 152) = v37;
  *(v42 + 160) = sub_1CF2B0424;
  *(v42 + 168) = v32;

  swift_unknownObjectRetain();

  sub_1CEFD5828(0, v41, sub_1CF2B9F4C, v42);

  (*(v59 + 8))(v41, v60);
  v44 = v62;
  sub_1CF9E6478();
  v45 = v65;
  sub_1CEFD5B64(v65);
  v46 = v66;
  sub_1CEFD5BD8(v66);
  MEMORY[0x1D3869770](v44, v45, v46, ObjectType);
  v47 = *(v67 + 8);
  v48 = v46;
  v49 = v68;
  v47(v48, v68);
  v47(v45, v49);
  (*(v63 + 8))(v44, v64);
  sub_1CF9E7448();

  return swift_unknownObjectRelease();
}

void sub_1CF293A1C(uint64_t a1, uint64_t a2, int a3, void (*a4)(void *), uint64_t a5)
{
  v63 = a5;
  v64 = a4;
  v62 = a3;
  v61 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v58 - v8;
  v60 = sub_1CF9E5A58();
  v59 = *(v60 - 8);
  v10 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v58 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v58 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v58 - v18;
  v20 = type metadata accessor for VFSItem(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CEFCCBDC(a1, v15, &unk_1EC4BF310, &unk_1CF9FDB30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v15;
    *v65 = *v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    swift_willThrowTypedImpl();
    goto LABEL_12;
  }

  sub_1CEFE55D0(v15, v19, &unk_1EC4BEC00, &unk_1CF9FCB60);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_1CEFCCC44(v19, &unk_1EC4BEC00, &unk_1CF9FCB60);
    v26 = swift_allocObject();
    v27 = swift_allocObject();
    *(v27 + 16) = 0;
    *(v26 + 16) = v27;
    v28 = v26 | 0x8000000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
    sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
    v25 = swift_allocError();
    v30 = v29;
    sub_1CF1B8150();
    v31 = swift_allocError();
    *v32 = v28;
    *v65 = v61;
    v65[8] = v62;
    memset(&v65[16], 0, 32);
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = v31;
    sub_1CF2A8DE0(v65);
    *v30 = *v65;
    v33 = *&v65[16];
    v34 = *&v65[32];
    v35 = v67;
    *(v30 + 48) = v66;
    *(v30 + 64) = v35;
    *(v30 + 16) = v33;
    *(v30 + 32) = v34;
    v36 = v68;
    v37 = v69;
    v38 = v70;
    *(v30 + 128) = v71;
    *(v30 + 96) = v37;
    *(v30 + 112) = v38;
    *(v30 + 80) = v36;
    swift_willThrow();
    goto LABEL_12;
  }

  v39 = v24;
  sub_1CEFE4C60(v19, v24, type metadata accessor for VFSItem);
  sub_1CF25116C(v9);
  v40 = v59;
  v41 = v60;
  if ((*(v59 + 48))(v9, 1, v60) == 1)
  {
    sub_1CEFCCC44(v9, &unk_1EC4BE310, qword_1CF9FCBE0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
    sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
    v25 = swift_allocError();
    v43 = v42;
    sub_1CF1B8150();
    v44 = swift_allocError();
    *v45 = 0xB000000000000008;
    *v65 = v61;
    v65[8] = v62;
    memset(&v65[16], 0, 32);
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = v44;
    sub_1CF2A8DE0(v65);
    *v43 = *v65;
    v46 = *&v65[16];
    v47 = *&v65[32];
    v48 = v67;
    *(v43 + 48) = v66;
    *(v43 + 64) = v48;
    *(v43 + 16) = v46;
    *(v43 + 32) = v47;
    v49 = v68;
    v50 = v69;
    v51 = v70;
    *(v43 + 128) = v71;
    *(v43 + 96) = v50;
    *(v43 + 112) = v51;
    *(v43 + 80) = v49;
    swift_willThrow();
LABEL_11:
    sub_1CEFE5888(v39, type metadata accessor for VFSItem);
    goto LABEL_12;
  }

  v52 = v58;
  (*(v40 + 32))(v58, v9, v41);
  sub_1CF9E5A18();
  fpfs_openflags(0x200000u);
  sub_1CF9E6978();
  v53 = openat_s();

  if (v53 < 0)
  {
    v55 = MEMORY[0x1D38683F0](v54);
    memset(v65, 0, 40);
    v65[40] = 19;
    v25 = sub_1CF19BBE4(v55, v65);
    sub_1CF1969CC(v65);
    swift_willThrow();

    (*(v40 + 8))(v52, v41);
    goto LABEL_11;
  }

  if ((fpfs_remove_resurrected() & 0x80000000) == 0)
  {
    close(v53);
    v64(0);
    (*(v40 + 8))(v52, v41);
    sub_1CEFE5888(v39, type metadata accessor for VFSItem);
    return;
  }

  v57 = MEMORY[0x1D38683F0]();
  *v65 = 17;
  memset(&v65[8], 0, 32);
  v65[40] = 19;
  v25 = sub_1CF19BBE4(v57, v65);
  sub_1CF1969CC(v65);
  swift_willThrow();
  (*(v40 + 8))(v52, v41);
  sub_1CEFE5888(v39, type metadata accessor for VFSItem);
  close(v53);
LABEL_12:
  v56 = v25;
  v64(v25);
}

uint64_t sub_1CF2941EC(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, int a5, void *a6)
{
  v188 = a6;
  v191 = a5;
  v190 = a4;
  v192 = a3;
  v193 = a2;
  v194 = a1;
  v234 = *MEMORY[0x1E69E9840];
  v6 = sub_1CF9E6118();
  v185 = *(v6 - 8);
  v186 = v6;
  v7 = *(v185 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v187 = v160 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE000, &unk_1CFA006A0);
  v9 = *(*(v183 - 8) + 64);
  MEMORY[0x1EEE9AC00](v183);
  v180 = (v160 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v175 = (v160 - v12);
  MEMORY[0x1EEE9AC00](v13);
  v182 = (v160 - v14);
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE2F0, qword_1CFA04220);
  v15 = *(*(v177 - 8) + 64);
  MEMORY[0x1EEE9AC00](v177);
  v178 = v160 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v176 = (v160 - v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v179 = v160 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v181 = v160 - v23;
  v24 = type metadata accessor for ItemMetadata();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24);
  v184 = v160 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for VFSItem(0);
  v28 = *(v27 - 1);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v174 = v160 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v189 = v160 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF300, &unk_1CFA006B0);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33);
  v36 = (v160 - v35);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37);
  v40 = (v160 - v39);
  sub_1CEFCCBDC(v194, v160 - v39, &unk_1EC4BF310, &unk_1CF9FDB30);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v173 = v36;
    v194 = v33;
    v44 = *(v28 + 48);
    if (v44(v40, 1, v27) == 1)
    {
      v45 = swift_allocObject();
      v46 = swift_allocObject();
      *(v46 + 16) = 0;
      *(v45 + 16) = v46;
      v47 = v45 | 0x8000000000000000;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
      sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
      v48 = swift_allocError();
      v50 = v49;
      sub_1CF1B8150();
      v51 = swift_allocError();
      *v52 = v47;
      *&v218 = v190;
      BYTE8(v218) = v191;
      v219 = 0u;
      v220 = 0u;
      v221 = 0u;
      v222 = 0u;
      v223 = 0u;
      v224 = 0u;
      v225 = v51;
      sub_1CF2A8DE0(&v218);
      *v50 = v218;
      v53 = v219;
      v54 = v220;
      v55 = v222;
      *(v50 + 48) = v221;
      *(v50 + 64) = v55;
      *(v50 + 16) = v53;
      *(v50 + 32) = v54;
      v56 = v223;
      v57 = v224;
      v58 = v225;
      *(v50 + 128) = v226;
      *(v50 + 96) = v57;
      *(v50 + 112) = v58;
      *(v50 + 80) = v56;
      v59 = v173;
      *v173 = v48;
      swift_storeEnumTagMultiPayload();
      v193(v59);
      result = sub_1CEFCCC44(v59, &unk_1EC4BF300, &unk_1CFA006B0);
      goto LABEL_11;
    }

    v60 = v189;
    sub_1CEFE4C60(v40, v189, type metadata accessor for VFSItem);
    v61 = (v60 + v27[7]);
    if ((v61[*(v24 + 80)] & 1) != 0 || *v61 != 1 || v61[*(v24 + 64)] == 1)
    {
      v62 = v173;
      sub_1CEFD90AC(v60, v173, type metadata accessor for VFSItem);
      swift_storeEnumTagMultiPayload();
      v193(v62);
      v63 = v62;
LABEL_9:
      sub_1CEFCCC44(v63, &unk_1EC4BF300, &unk_1CFA006B0);
      v64 = v60;
LABEL_10:
      result = sub_1CEFE5888(v64, type metadata accessor for VFSItem);
      goto LABEL_11;
    }

    v171 = v44;
    v172 = v28;
    v66 = v60 + v27[9];
    v67 = *v66;
    v68 = v60 + v27[14];
    if (*(v68 + 4))
    {
      v69 = 0;
    }

    else
    {
      v69 = *v68;
    }

    v70 = *(v66 + 8);

    v213[0] = v67;
    v213[1] = 0;
    v214 = v69;
    v215 = v70;
    v217 = 0;
    v216 = 0;
    v71 = v188;
    v72 = objc_sync_enter(v188);
    if (v72)
    {
      MEMORY[0x1EEE9AC00](v72);
      v158 = &v160[-4];
      v160[-2] = v71;
    }

    else
    {
      v73 = v71[20];

      v74 = objc_sync_exit(v71);
      if (v74)
      {
        MEMORY[0x1EEE9AC00](v74);
        v159 = &v160[-4];
        v160[-2] = v188;
        goto LABEL_45;
      }

      v75 = *(v73 + 16);

      v93 = sub_1CEFDADE0(v213, v75, 0x200000);
      v169 = v27;

      v94 = v184;
      sub_1CEFD90AC(v61, v184, type metadata accessor for ItemMetadata);
      *(v94 + *(v24 + 80)) = 1;
      sub_1CEFE528C(v211);
      v233 = v212;
      v230 = v211[12];
      v231 = v211[13];
      v232 = v211[14];
      v226 = v211[8];
      v227 = v211[9];
      v228 = v211[10];
      v229 = v211[11];
      v222 = v211[4];
      v223 = v211[5];
      v224 = v211[6];
      v225 = v211[7];
      v218 = v211[0];
      v219 = v211[1];
      v220 = v211[2];
      v221 = v211[3];
      MEMORY[0x1EEE9AC00](v95);
      LODWORD(v160[-2]) = v93;
      sub_1CF9B9578(&v218, sub_1CF2B0408, &v160[-4], v160);
      v170 = v93;
      v96 = v188;
      v97 = objc_sync_enter(v188);
      if (!v97)
      {
        v98 = v96[20];

        v99 = objc_sync_exit(v96);
        if (!v99)
        {
          v100 = type metadata accessor for VFSFileTree(0);
          Strong = swift_unknownObjectWeakLoadStrong();
          v102 = v96[36];
          v188 = *(v98 + 24);
          os_unfair_lock_lock((v98 + 56));
          v104 = *(v98 + 64);
          v103 = *(v98 + 72);
          v105 = *(v98 + 88);
          v166 = *(v98 + 89);
          v167 = v105;
          v165 = *(v98 + 90);

          v106 = *(v98 + 80);
          os_unfair_lock_unlock((v98 + 56));
          v163 = v160;
          MEMORY[0x1EEE9AC00](v107);
          v168 = &v160[-12];
          v160[-10] = v100;
          LODWORD(v160[-9]) = v170;
          v164 = v98;
          v160[-8] = v98;
          v160[-7] = Strong;
          v162 = Strong;
          v160[-6] = v102;
          LOBYTE(v160[-5]) = 2;
          v108 = v190;
          v160[-4] = 0;
          v160[-3] = v108;
          LOBYTE(v160[-2]) = v191;
          v160[-1] = 0;
          *&v204 = v104;
          *(&v204 + 1) = v103;
          *&v202 = MEMORY[0x1E69E9820];
          *(&v202 + 1) = 1107296256;
          *&v203 = sub_1CEFDB088;
          *(&v203 + 1) = &block_descriptor_392;
          v109 = _Block_copy(&v202);
          v160[1] = v103;

          v161 = v109;
          v197 = v109;
          v198 = v106;
          v199 = v167;
          v200 = v166;
          v201 = v165;
          sub_1CEFDB034();
          v110 = swift_allocError();
          *v111 = 6;
          *(v111 + 8) = 0u;
          *(v111 + 24) = 0u;
          *(v111 + 40) = 19;
          v112 = v182;
          *v182 = v110;
          swift_storeEnumTagMultiPayload();
          v113 = swift_allocObject();
          v114 = v112;
          *(v113 + 16) = v112;
          *(v113 + 24) = sub_1CF2B9F90;
          *(v113 + 32) = v168;
          v115 = swift_allocObject();
          *(v115 + 16) = sub_1CF1DBD3C;
          *(v115 + 24) = v113;
          v168 = v113;
          *&v204 = sub_1CF1DBD5C;
          *(&v204 + 1) = v115;
          *&v202 = MEMORY[0x1E69E9820];
          *(&v202 + 1) = 1107296256;
          *&v203 = sub_1CEFDB270;
          *(&v203 + 1) = &block_descriptor_403;
          v116 = _Block_copy(&v202);

          v117 = fpfs_fgetfileattrs_detailed();
          _Block_release(v116);
          LOBYTE(v113) = swift_isEscapingClosureAtFileLocation();

          if (v113)
          {
            __break(1u);
          }

          if (v117)
          {
            swift_getErrorValue();
            v118 = v196;
            v188 = v195;
            v119 = swift_allocError();
            *v120 = 6;
            *(v120 + 8) = 0u;
            *(v120 + 24) = 0u;
            *(v120 + 40) = 19;
            v121 = v117;
            v122 = sub_1CF199074(v119, v118);

            v123 = v175;
            *v175 = v122;
            swift_storeEnumTagMultiPayload();
            sub_1CEFDA9E0(v123, v114, &qword_1EC4BE000, &unk_1CFA006A0);
          }

          v124 = v180;
          sub_1CEFCCBDC(v114, v180, &qword_1EC4BE000, &unk_1CFA006A0);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            *&v202 = *v124;
            v125 = v202;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
            swift_willThrowTypedImpl();

            sub_1CEFCCC44(v114, &qword_1EC4BE000, &unk_1CFA006A0);

            _Block_release(v161);

            v126 = v125;
            LODWORD(v202) = sub_1CF9E52A8();
            sub_1CF196978();
            v127 = sub_1CF9E5658();

            swift_unknownObjectRelease();

            v128 = v184;
            v129 = v181;
            v130 = v170;
            if ((v127 & 1) == 0)
            {
              sub_1CEFE5888(v184, type metadata accessor for ItemMetadata);
              if ((v130 & 0x80000000) == 0)
              {
                close(v130);
              }

              v157 = v187;
              v76 = fpfs_current_or_default_log();
              sub_1CF9E6128();
              v77 = v125;
              v78 = sub_1CF9E6108();
              v79 = sub_1CF9E72A8();

              if (os_log_type_enabled(v78, v79))
              {
                v80 = swift_slowAlloc();
                v81 = swift_slowAlloc();
                v82 = swift_slowAlloc();
                *&v202 = v82;
                *v80 = 136446466;
                *&v211[0] = v190;
                BYTE8(v211[0]) = v191;
                v84 = VFSItemID.description.getter(v82, v83);
                v86 = sub_1CEFD0DF0(v84, v85, &v202);

                *(v80 + 4) = v86;
                *(v80 + 12) = 2112;
                v87 = v125;
                v88 = _swift_stdlib_bridgeErrorToNSError();
                *(v80 + 14) = v88;
                *v81 = v88;
                _os_log_impl(&dword_1CEFC7000, v78, v79, "failed to open directory at %{public}s, error: %@", v80, 0x16u);
                sub_1CEFCCC44(v81, &qword_1EC4BE350, &unk_1CF9FC3B0);
                MEMORY[0x1D386CDC0](v81, -1, -1);
                __swift_destroy_boxed_opaque_existential_1(v82);
                MEMORY[0x1D386CDC0](v82, -1, -1);
                v89 = v80;
                v60 = v189;
                MEMORY[0x1D386CDC0](v89, -1, -1);
              }

              (*(v185 + 8))(v157, v186);
              v90 = v193;
              v91 = v173;
              *v173 = v125;
              swift_storeEnumTagMultiPayload();
              v92 = v125;
              v90(v91);

              v63 = v91;
              goto LABEL_9;
            }

            v131 = v176;
            *v176 = xmmword_1CF9FD940;
            *(v131 + 16) = 2;
            swift_storeEnumTagMultiPayload();
          }

          else
          {

            v131 = v176;
            sub_1CEFE55D0(v124, v176, &unk_1EC4BE2F0, qword_1CFA04220);
            sub_1CEFCCC44(v114, &qword_1EC4BE000, &unk_1CFA006A0);

            _Block_release(v161);

            swift_unknownObjectRelease();
            v128 = v184;
            v129 = v181;
            v130 = v170;
          }

          v132 = v131;
          v133 = v178;
          sub_1CEFE55D0(v132, v178, &unk_1EC4BE2F0, qword_1CFA04220);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          v135 = (v172 + 56);
          if (EnumCaseMultiPayload == 1)
          {
            sub_1CEFCCC44(v133, &unk_1EC4BE2F0, qword_1CFA04220);
            v136 = 1;
          }

          else
          {
            sub_1CEFE4C60(v133, v129, type metadata accessor for VFSItem);
            v136 = 0;
          }

          v137 = v169;
          (*v135)(v129, v136, 1, v169);
          if ((v130 & 0x80000000) == 0)
          {
            close(v130);
          }

          v138 = v179;
          sub_1CEFCCBDC(v129, v179, &unk_1EC4BEC00, &unk_1CF9FCB60);
          if (v171(v138, 1, v137) == 1)
          {
            sub_1CEFCCC44(v138, &unk_1EC4BEC00, &unk_1CF9FCB60);
            v139 = swift_allocObject();
            v140 = swift_allocObject();
            *(v140 + 16) = 0;
            *(v139 + 16) = v140;
            v141 = v139 | 0xA000000000000000;
            v142 = v60;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
            sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
            v143 = swift_allocError();
            v145 = v144;
            sub_1CF1B8150();
            v146 = swift_allocError();
            *v147 = v141;
            *&v202 = v190;
            BYTE8(v202) = v191;
            v203 = 0u;
            v204 = 0u;
            v205 = 0u;
            v206 = 0u;
            v207 = 0u;
            v208 = 0u;
            v209 = v146;
            sub_1CF2A8DE0(&v202);
            *v145 = v202;
            v148 = v203;
            v149 = v204;
            v150 = v206;
            *(v145 + 48) = v205;
            *(v145 + 64) = v150;
            *(v145 + 16) = v148;
            *(v145 + 32) = v149;
            v151 = v207;
            v152 = v208;
            v153 = v209;
            *(v145 + 128) = v210;
            *(v145 + 96) = v152;
            *(v145 + 112) = v153;
            *(v145 + 80) = v151;
            v154 = v173;
            *v173 = v143;
            swift_storeEnumTagMultiPayload();
            v193(v154);
            sub_1CEFCCC44(v154, &unk_1EC4BF300, &unk_1CFA006B0);
            sub_1CEFCCC44(v129, &unk_1EC4BEC00, &unk_1CF9FCB60);
            sub_1CEFE5888(v128, type metadata accessor for ItemMetadata);
            v64 = v142;
          }

          else
          {
            v155 = v174;
            sub_1CEFE4C60(v138, v174, type metadata accessor for VFSItem);
            v156 = v173;
            sub_1CEFD90AC(v155, v173, type metadata accessor for VFSItem);
            swift_storeEnumTagMultiPayload();
            v193(v156);
            sub_1CEFCCC44(v156, &unk_1EC4BF300, &unk_1CFA006B0);
            sub_1CEFE5888(v155, type metadata accessor for VFSItem);
            sub_1CEFCCC44(v129, &unk_1EC4BEC00, &unk_1CF9FCB60);
            sub_1CEFE5888(v128, type metadata accessor for ItemMetadata);
            v64 = v60;
          }

          goto LABEL_10;
        }

        MEMORY[0x1EEE9AC00](v99);
        v159 = &v160[-4];
        v160[-2] = v96;
LABEL_45:
        fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v159, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
      }

      MEMORY[0x1EEE9AC00](v97);
      v158 = &v160[-4];
      v160[-2] = v96;
    }

    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v158, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v41 = *v40;
  *v36 = *v40;
  swift_storeEnumTagMultiPayload();
  v42 = v41;
  v193(v36);

  result = sub_1CEFCCC44(v36, &unk_1EC4BF300, &unk_1CFA006B0);
LABEL_11:
  v65 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CF295764(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v71 = a7;
  v67 = a5;
  v68 = a6;
  v8 = v7;
  v12 = sub_1CF9E6388();
  v76 = *(v12 - 8);
  v77 = v12;
  v13 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v75 = (v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v74 = v57 - v16;
  v17 = sub_1CF9E6498();
  v72 = *(v17 - 8);
  v73 = v17;
  v18 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v70 = v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v60 = v57 - v22;
  v23 = sub_1CF9E63D8();
  v58 = *(v23 - 8);
  v59 = v23;
  v24 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v63 = v57 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1CF9E6448();
  v65 = *(v26 - 8);
  v66 = v26;
  v27 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v64 = v57 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1CF9E73D8();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v33 = v57 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *a1;
  v35 = *(a1 + 8);
  v36 = swift_allocObject();
  *(v36 + 16) = a2;
  *(v36 + 24) = a3;
  v62 = v34;
  *(v36 + 32) = v34;
  v61 = v35;
  *(v36 + 40) = v35;
  *(v36 + 48) = v8;
  v57[1] = sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
  v37 = *(v8 + 216);
  v78 = MEMORY[0x1E69E7CC0];
  sub_1CF2A9448(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0]);

  v69 = v8;

  v38 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
  v39 = v58;
  sub_1CEFCCCEC(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0);
  v40 = v59;
  sub_1CF9E77B8();
  v41 = sub_1CF9E73E8();

  v42 = v33;
  v43 = v60;
  (*(v30 + 8))(v42, v29);
  qos_class_self();
  sub_1CF9E63B8();
  v44 = *(v39 + 48);
  if (v44(v43, 1, v40) == 1)
  {
    (*(v39 + 104))(v63, *MEMORY[0x1E69E7FA0], v40);
    if (v44(v43, 1, v40) != 1)
    {
      sub_1CEFCCC44(v43, &unk_1EC4BE380, &qword_1CFA01BA0);
    }
  }

  else
  {
    (*(v39 + 32))(v63, v43, v40);
  }

  ObjectType = swift_getObjectType();
  v46 = v64;
  sub_1CF9E6428();
  v47 = swift_allocObject();
  v48 = v62;
  *(v47 + 16) = v69;
  *(v47 + 24) = v48;
  *(v47 + 32) = v61;
  *(v47 + 40) = 0u;
  *(v47 + 56) = 0u;
  *(v47 + 72) = 0u;
  *(v47 + 88) = 0u;
  *(v47 + 104) = 0u;
  *(v47 + 120) = 0u;
  *(v47 + 136) = 0u;
  v49 = v68;
  *(v47 + 152) = v41;
  *(v47 + 160) = v49;
  *(v47 + 168) = v36;

  swift_unknownObjectRetain();

  sub_1CEFD5828(0, v46, v71, v47);

  (*(v65 + 8))(v46, v66);
  v50 = v70;
  sub_1CF9E6478();
  v51 = v74;
  sub_1CEFD5B64(v74);
  v52 = v75;
  sub_1CEFD5BD8(v75);
  MEMORY[0x1D3869770](v50, v51, v52, ObjectType);
  v53 = *(v76 + 8);
  v54 = v52;
  v55 = v77;
  v53(v54, v77);
  v53(v51, v55);
  (*(v72 + 8))(v50, v73);
  sub_1CF9E7448();

  return swift_unknownObjectRelease();
}

uint64_t sub_1CF295E0C(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, int a5, void *a6)
{
  v168 = a6;
  v169 = a4;
  v170 = a5;
  v172 = a3;
  v173 = a1;
  v174 = a2;
  v214 = *MEMORY[0x1E69E9840];
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE000, &unk_1CFA006A0);
  v6 = *(*(v166 - 8) + 64);
  MEMORY[0x1EEE9AC00](v166);
  v163 = (&v143 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v158 = (&v143 - v9);
  MEMORY[0x1EEE9AC00](v10);
  v165 = (&v143 - v11);
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE2F0, qword_1CFA04220);
  v12 = *(*(v162 - 8) + 64);
  MEMORY[0x1EEE9AC00](v162);
  v164 = &v143 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v161 = (&v143 - v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v159 = &v143 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v160 = &v143 - v20;
  v171 = type metadata accessor for ItemMetadata();
  v21 = *(*(v171 - 8) + 64);
  MEMORY[0x1EEE9AC00](v171);
  v167 = &v143 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for VFSItem(0);
  v24 = *(v23 - 1);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v157 = &v143 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v143 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF300, &unk_1CFA006B0);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30);
  v33 = (&v143 - v32);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34);
  v37 = (&v143 - v36);
  sub_1CEFCCBDC(v173, &v143 - v36, &unk_1EC4BF310, &unk_1CF9FDB30);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v173 = v30;
    v41 = v33;
    v42 = v174;
    v43 = *(v24 + 48);
    if (v43(v37, 1, v23) == 1)
    {
      v44 = swift_allocObject();
      v45 = swift_allocObject();
      *(v45 + 16) = 0;
      *(v44 + 16) = v45;
      v46 = v44 | 0x8000000000000000;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
      sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
      v47 = swift_allocError();
      v49 = v48;
      sub_1CF1B8150();
      v50 = swift_allocError();
      *v51 = v46;
      *&v198 = v169;
      BYTE8(v198) = v170;
      v199 = 0u;
      v200 = 0u;
      v201 = 0u;
      v202 = 0u;
      v203 = 0u;
      v204 = 0u;
      v205 = v50;
      sub_1CF2A8DE0(&v198);
      *v49 = v198;
      v52 = v199;
      v53 = v200;
      v54 = v202;
      *(v49 + 48) = v201;
      *(v49 + 64) = v54;
      *(v49 + 16) = v52;
      *(v49 + 32) = v53;
      v55 = v203;
      v56 = v204;
      v57 = v205;
      *(v49 + 128) = v206;
      *(v49 + 96) = v56;
      *(v49 + 112) = v57;
      *(v49 + 80) = v55;
      *v41 = v47;
      swift_storeEnumTagMultiPayload();
      v42(v41);
      result = sub_1CEFCCC44(v41, &unk_1EC4BF300, &unk_1CFA006B0);
      goto LABEL_17;
    }

    v156 = v43;
    sub_1CEFE4C60(v37, v29, type metadata accessor for VFSItem);
    v58 = &v29[v23[7]];
    v59 = v41;
    if (v58[*(v171 + 80)] != 1 || *v58 != 1)
    {
      sub_1CEFD90AC(v29, v41, type metadata accessor for VFSItem);
      swift_storeEnumTagMultiPayload();
      v42(v41);
      goto LABEL_14;
    }

    v153 = v24 + 48;
    v154 = v24;
    v60 = &v29[v23[9]];
    v61 = *v60;
    v155 = v23;
    v62 = &v29[v23[14]];
    if (v62[4])
    {
      v63 = 0;
    }

    else
    {
      v63 = *v62;
    }

    v64 = *(v60 + 2);

    v193[0] = v61;
    v193[1] = 0;
    v194 = v63;
    v195 = v64;
    v197 = 0;
    v196 = 0;
    v65 = v168;
    v66 = objc_sync_enter(v168);
    if (!v66)
    {
      v67 = v65[20];

      v68 = objc_sync_exit(v65);
      if (v68)
      {
        MEMORY[0x1EEE9AC00](v68);
        v142 = &v143 - 4;
        *(&v143 - 2) = v65;
        goto LABEL_41;
      }

      v69 = *(v67 + 16);

      v73 = sub_1CEFDADE0(v193, v69, 0x200000);

      v74 = v167;
      sub_1CEFD90AC(v58, v167, type metadata accessor for ItemMetadata);
      *(v74 + *(v171 + 80)) = 0;
      sub_1CEFE528C(v191);
      v171 = &v143;
      v210 = v191[12];
      v211 = v191[13];
      v212 = v191[14];
      v213 = v192;
      v206 = v191[8];
      v207 = v191[9];
      v208 = v191[10];
      v209 = v191[11];
      v202 = v191[4];
      v203 = v191[5];
      v204 = v191[6];
      v205 = v191[7];
      v198 = v191[0];
      v199 = v191[1];
      v200 = v191[2];
      v201 = v191[3];
      v75 = v65;
      v76 = v65[17] + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_ioContext;
      v77 = *v76;
      v78 = *(v76 + 8);
      v79 = *(v76 + 24);
      v80 = *(v76 + 25);
      v81 = *(v76 + 16);
      v82 = *(v76 + 26);
      v84 = MEMORY[0x1EEE9AC00](v83).n128_u64[0];
      *(&v143 - 12) = v73;
      *(&v143 - 11) = 0;
      *(&v143 - 5) = 0x20000;
      *(&v143 - 4) = v85;
      *(&v143 - 3) = v78;
      *(&v143 - 2) = v84;
      *(&v143 - 8) = v86;
      *(&v143 - 7) = v87;
      *(&v143 - 6) = v88;
      *(&v143 - 5) = 0;

      sub_1CF9B8B08(&v198, sub_1CF2B9EBC, &v143 - 8);

      v66 = objc_sync_enter(v65);
      if (!v66)
      {
        LODWORD(v171) = v73;
        v89 = v65[20];

        v90 = objc_sync_exit(v75);
        if (!v90)
        {
          v148 = type metadata accessor for VFSFileTree(0);
          Strong = swift_unknownObjectWeakLoadStrong();
          v92 = v75[36];
          v168 = *(v89 + 24);
          os_unfair_lock_lock((v89 + 56));
          v93 = *(v89 + 64);
          v94 = *(v89 + 72);
          v95 = *(v89 + 88);
          v150 = *(v89 + 89);
          v151 = v95;
          v149 = *(v89 + 90);

          v96 = *(v89 + 80);
          os_unfair_lock_unlock((v89 + 56));
          v145 = &v143;
          MEMORY[0x1EEE9AC00](v97);
          v152 = &v143 - 12;
          *(&v143 - 10) = v148;
          *(&v143 - 18) = v171;
          v147 = Strong;
          v148 = v89;
          *(&v143 - 8) = v89;
          *(&v143 - 7) = Strong;
          *(&v143 - 6) = v92;
          *(&v143 - 40) = 2;
          v98 = v169;
          *(&v143 - 4) = 0;
          *(&v143 - 3) = v98;
          *(&v143 - 16) = v170;
          *(&v143 - 1) = 0;
          *&v184 = v93;
          *(&v184 + 1) = v94;
          *&v182 = MEMORY[0x1E69E9820];
          *(&v182 + 1) = 1107296256;
          *&v183 = sub_1CEFDB088;
          *(&v183 + 1) = &block_descriptor_360;
          v99 = _Block_copy(&v182);
          v146 = v94;

          v144 = v99;
          v177 = v99;
          v178 = v96;
          v179 = v151;
          v180 = v150;
          v181 = v149;
          sub_1CEFDB034();
          v100 = swift_allocError();
          *v101 = 6;
          *(v101 + 8) = 0u;
          *(v101 + 24) = 0u;
          *(v101 + 40) = 19;
          v102 = v165;
          *v165 = v100;
          swift_storeEnumTagMultiPayload();
          v103 = swift_allocObject();
          *(v103 + 16) = v102;
          *(v103 + 24) = sub_1CF2B9F90;
          *(v103 + 32) = v152;
          v104 = swift_allocObject();
          *(v104 + 16) = sub_1CF1DBD3C;
          *(v104 + 24) = v103;
          v152 = v103;
          *&v184 = sub_1CF1DBD5C;
          *(&v184 + 1) = v104;
          *&v182 = MEMORY[0x1E69E9820];
          *(&v182 + 1) = 1107296256;
          *&v183 = sub_1CEFDB270;
          *(&v183 + 1) = &block_descriptor_371;
          v105 = _Block_copy(&v182);

          v106 = fpfs_fgetfileattrs_detailed();
          _Block_release(v105);
          LOBYTE(v103) = swift_isEscapingClosureAtFileLocation();

          if (v103)
          {
            __break(1u);
          }

          v107 = v106;
          if (v106)
          {
            swift_getErrorValue();
            v108 = v176;
            v168 = v175;
            v109 = swift_allocError();
            *v110 = 6;
            *(v110 + 8) = 0u;
            *(v110 + 24) = 0u;
            *(v110 + 40) = 19;
            v111 = v107;
            v112 = v107;
            v113 = sub_1CF199074(v109, v108);

            v107 = v111;
            v114 = v158;
            *v158 = v113;
            swift_storeEnumTagMultiPayload();
            sub_1CEFDA9E0(v114, v102, &qword_1EC4BE000, &unk_1CFA006A0);
          }

          v115 = v163;
          sub_1CEFCCBDC(v102, v163, &qword_1EC4BE000, &unk_1CFA006A0);
          if (swift_getEnumCaseMultiPayload() != 1)
          {

            v120 = v161;
            sub_1CEFE55D0(v115, v161, &unk_1EC4BE2F0, qword_1CFA04220);
            sub_1CEFCCC44(v102, &qword_1EC4BE000, &unk_1CFA006A0);

            _Block_release(v144);

            swift_unknownObjectRelease();
            v119 = v164;
            goto LABEL_27;
          }

          *&v182 = *v115;
          v116 = v182;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
          swift_willThrowTypedImpl();

          sub_1CEFCCC44(v102, &qword_1EC4BE000, &unk_1CFA006A0);

          _Block_release(v144);

          v117 = v116;
          LODWORD(v182) = sub_1CF9E52A8();
          sub_1CF196978();
          v118 = sub_1CF9E5658();

          swift_unknownObjectRelease();

          v119 = v164;
          if (v118)
          {

            v120 = v161;
            *v161 = xmmword_1CF9FD940;
            *(v120 + 16) = 2;
            swift_storeEnumTagMultiPayload();
LABEL_27:
            v121 = v171;
            sub_1CEFE55D0(v120, v119, &unk_1EC4BE2F0, qword_1CFA04220);
            EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
            v123 = (v154 + 56);
            v124 = v160;
            if (EnumCaseMultiPayload == 1)
            {
              sub_1CEFCCC44(v119, &unk_1EC4BE2F0, qword_1CFA04220);
              v125 = 1;
            }

            else
            {
              sub_1CEFE4C60(v119, v160, type metadata accessor for VFSItem);
              v125 = 0;
            }

            (*v123)(v124, v125, 1, v155);
            if ((v121 & 0x80000000) == 0)
            {
              close(v121);
            }

            v126 = v159;
            sub_1CEFCCBDC(v124, v159, &unk_1EC4BEC00, &unk_1CF9FCB60);
            if (v156(v126, 1, v155) != 1)
            {
              v141 = v157;
              sub_1CEFE4C60(v126, v157, type metadata accessor for VFSItem);
              sub_1CEFD90AC(v141, v59, type metadata accessor for VFSItem);
              swift_storeEnumTagMultiPayload();
              v42(v59);
              sub_1CEFCCC44(v59, &unk_1EC4BF300, &unk_1CFA006B0);
              sub_1CEFE5888(v141, type metadata accessor for VFSItem);
              sub_1CEFCCC44(v124, &unk_1EC4BEC00, &unk_1CF9FCB60);
              sub_1CEFE5888(v167, type metadata accessor for ItemMetadata);
              v71 = v29;
              goto LABEL_16;
            }

            sub_1CEFCCC44(v126, &unk_1EC4BEC00, &unk_1CF9FCB60);
            v127 = swift_allocObject();
            v128 = swift_allocObject();
            *(v128 + 16) = 0;
            *(v127 + 16) = v128;
            v129 = v127 | 0xA000000000000000;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
            sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
            v130 = swift_allocError();
            v132 = v131;
            sub_1CF1B8150();
            v133 = swift_allocError();
            *v134 = v129;
            *&v182 = v169;
            BYTE8(v182) = v170;
            v183 = 0u;
            v184 = 0u;
            v185 = 0u;
            v186 = 0u;
            v187 = 0u;
            v188 = 0u;
            v189 = v133;
            sub_1CF2A8DE0(&v182);
            *v132 = v182;
            v135 = v183;
            v136 = v184;
            v137 = v186;
            *(v132 + 48) = v185;
            *(v132 + 64) = v137;
            *(v132 + 16) = v135;
            *(v132 + 32) = v136;
            v138 = v187;
            v139 = v188;
            v140 = v189;
            *(v132 + 128) = v190;
            *(v132 + 96) = v139;
            *(v132 + 112) = v140;
            *(v132 + 80) = v138;
            *v59 = v130;
            swift_storeEnumTagMultiPayload();
            v42(v59);
            sub_1CEFCCC44(v59, &unk_1EC4BF300, &unk_1CFA006B0);
            sub_1CEFCCC44(v124, &unk_1EC4BEC00, &unk_1CF9FCB60);
            sub_1CEFE5888(v167, type metadata accessor for ItemMetadata);
LABEL_15:
            v71 = v29;
LABEL_16:
            result = sub_1CEFE5888(v71, type metadata accessor for VFSItem);
            goto LABEL_17;
          }

          sub_1CEFE5888(v167, type metadata accessor for ItemMetadata);
          if ((v171 & 0x80000000) == 0)
          {
            close(v171);
          }

          *v59 = v116;
          swift_storeEnumTagMultiPayload();
          v70 = v116;
          v42(v59);

LABEL_14:
          sub_1CEFCCC44(v59, &unk_1EC4BF300, &unk_1CFA006B0);
          goto LABEL_15;
        }

        MEMORY[0x1EEE9AC00](v90);
        v142 = &v143 - 4;
        *(&v143 - 2) = v75;
LABEL_41:
        fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v142, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
      }
    }

    MEMORY[0x1EEE9AC00](v66);
    *(&v143 - 2) = v65;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v143 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v38 = *v37;
  *v33 = *v37;
  swift_storeEnumTagMultiPayload();
  v39 = v38;
  v174(v33);

  result = sub_1CEFCCC44(v33, &unk_1EC4BF300, &unk_1CFA006B0);
LABEL_17:
  v72 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CF297184(uint64_t *a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_1CF9E6388();
  v71 = *(v10 - 8);
  v72 = v10;
  v11 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v70 = (&v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v69 = &v55 - v14;
  v15 = sub_1CF9E6498();
  v67 = *(v15 - 8);
  v68 = v15;
  v16 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v66 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v58 = &v55 - v20;
  v21 = sub_1CF9E63D8();
  v22 = *(v21 - 8);
  v56 = v21;
  v57 = v22;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v61 = &v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1CF9E6448();
  v63 = *(v25 - 8);
  v64 = v25;
  v26 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v62 = &v55 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1CF9E73D8();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v55 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *a1;
  v34 = *(a1 + 8);
  LOBYTE(a2) = *a2;
  v35 = swift_allocObject();
  *(v35 + 16) = a3;
  *(v35 + 24) = a4;
  v60 = v33;
  *(v35 + 32) = v33;
  v59 = v34;
  *(v35 + 40) = v34;
  *(v35 + 41) = a2;
  *(v35 + 48) = v5;
  v55 = sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
  v36 = *(v5 + 216);
  v73 = MEMORY[0x1E69E7CC0];
  sub_1CF2A9448(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0]);

  v65 = v5;

  v37 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
  sub_1CEFCCCEC(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0);
  v38 = v56;
  sub_1CF9E77B8();
  v39 = sub_1CF9E73E8();

  v40 = v32;
  v41 = v58;
  (*(v29 + 8))(v40, v28);
  v42 = v57;
  qos_class_self();
  sub_1CF9E63B8();
  v43 = *(v42 + 48);
  if (v43(v41, 1, v38) == 1)
  {
    (*(v42 + 104))(v61, *MEMORY[0x1E69E7FA0], v38);
    if (v43(v41, 1, v38) != 1)
    {
      sub_1CEFCCC44(v41, &unk_1EC4BE380, &qword_1CFA01BA0);
    }
  }

  else
  {
    (*(v42 + 32))(v61, v41, v38);
  }

  ObjectType = swift_getObjectType();
  v45 = v62;
  sub_1CF9E6428();
  v46 = swift_allocObject();
  v47 = v60;
  *(v46 + 16) = v65;
  *(v46 + 24) = v47;
  *(v46 + 32) = v59;
  *(v46 + 40) = 0u;
  *(v46 + 56) = 0u;
  *(v46 + 72) = 0u;
  *(v46 + 88) = 0u;
  *(v46 + 104) = 0u;
  *(v46 + 120) = 0u;
  *(v46 + 136) = 0;
  *(v46 + 144) = 2048;
  *(v46 + 152) = v39;
  *(v46 + 160) = sub_1CF2B02C8;
  *(v46 + 168) = v35;

  swift_unknownObjectRetain();

  sub_1CEFD5828(0, v45, sub_1CF2B9F4C, v46);

  (*(v63 + 8))(v45, v64);
  v48 = v66;
  sub_1CF9E6478();
  v49 = v69;
  sub_1CEFD5B64(v69);
  v50 = v70;
  sub_1CEFD5BD8(v70);
  MEMORY[0x1D3869770](v48, v49, v50, ObjectType);
  v51 = *(v71 + 8);
  v52 = v50;
  v53 = v72;
  v51(v52, v72);
  v51(v49, v53);
  (*(v67 + 8))(v48, v68);
  sub_1CF9E7448();

  return swift_unknownObjectRelease();
}

void sub_1CF29784C(uint64_t a1, void (*a2)(id), uint64_t a3, uint64_t a4, int a5, int a6, void *a7)
{
  v64 = a7;
  v65 = a4;
  v68 = a6;
  v66 = a5;
  v67 = type metadata accessor for ItemMetadata();
  v9 = *(*(v67 - 8) + 64);
  MEMORY[0x1EEE9AC00](v67);
  v63 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for VFSItem(0);
  v12 = *(v11 - 1);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v69 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = (&v63 - v17);
  sub_1CEFCCBDC(a1, &v63 - v17, &unk_1EC4BF310, &unk_1CF9FDB30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = *v18;
    v20 = *v18;
    a2(v19);
  }

  else if ((*(v12 + 48))(v18, 1, v11) == 1)
  {
    v21 = swift_allocObject();
    *(v21 + 16) = 2048;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
    sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
    v22 = swift_allocError();
    v24 = v23;
    sub_1CF1B8150();
    v25 = swift_allocError();
    *v26 = v21;
    *&v77 = v65;
    BYTE8(v77) = v66;
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v84 = v25;
    sub_1CF2A8DE0(&v77);
    *v24 = v77;
    v27 = v78;
    v28 = v79;
    v29 = v81;
    *(v24 + 48) = v80;
    *(v24 + 64) = v29;
    *(v24 + 16) = v27;
    *(v24 + 32) = v28;
    v30 = v82;
    v31 = v83;
    v32 = v84;
    *(v24 + 128) = v85;
    *(v24 + 96) = v31;
    *(v24 + 112) = v32;
    *(v24 + 80) = v30;
    a2(v22);
  }

  else
  {
    v33 = v69;
    sub_1CEFE4C60(v18, v69, type metadata accessor for VFSItem);
    v34 = v33 + v11[7];
    if (*(v34 + *(v67 + 88)) == v68)
    {
      a2(0);
      v45 = v33;
    }

    else
    {
      v35 = v33 + v11[9];
      v36 = *v35;
      v37 = v33 + v11[14];
      if (*(v37 + 4))
      {
        v38 = 0;
      }

      else
      {
        v38 = *v37;
      }

      v39 = *(v35 + 8);

      v72[0] = v36;
      v72[1] = 0;
      v73 = v38;
      v74 = v39;
      v75 = 0;
      v76 = 0;
      v40 = v64;
      v41 = objc_sync_enter(v64);
      if (v41)
      {
        MEMORY[0x1EEE9AC00](v41);
        *(&v63 - 2) = v40;
        fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v63 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
      }

      v42 = v40[20];

      v43 = objc_sync_exit(v40);
      if (v43)
      {
        MEMORY[0x1EEE9AC00](v43);
        *(&v63 - 2) = v40;
        fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v63 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
      }

      v44 = *(v42 + 16);

      v46 = sub_1CEFDADE0(v72, v44, 2129920);

      v47 = v34;
      v48 = v63;
      sub_1CEFD90AC(v47, v63, type metadata accessor for ItemMetadata);
      *(v48 + *(v67 + 88)) = v68;
      sub_1CEFE528C(v70);
      v89 = v70[12];
      v90 = v70[13];
      v91 = v70[14];
      v92 = v71;
      v85 = v70[8];
      v86 = v70[9];
      v87 = v70[10];
      v88 = v70[11];
      v81 = v70[4];
      v82 = v70[5];
      v83 = v70[6];
      v84 = v70[7];
      v77 = v70[0];
      v78 = v70[1];
      v79 = v70[2];
      v80 = v70[3];
      v49 = v40[17] + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_ioContext;
      v50 = *v49;
      v51 = *(v49 + 8);
      v52 = *(v49 + 24);
      v53 = *(v49 + 25);
      v54 = *(v49 + 16);
      v55 = *(v49 + 26);
      v57 = MEMORY[0x1EEE9AC00](v56).n128_u64[0];
      *(&v63 - 12) = v46;
      *(&v63 - 11) = 0;
      *(&v63 - 5) = 0x20000;
      *(&v63 - 4) = v58;
      *(&v63 - 3) = v51;
      *(&v63 - 2) = v57;
      *(&v63 - 8) = v59;
      *(&v63 - 7) = v60;
      *(&v63 - 6) = v61;
      *(&v63 - 5) = 0;

      sub_1CF9B8B08(&v77, sub_1CF2B02E0, &v63 - 8);

      v62 = v69;
      if ((v46 & 0x80000000) == 0)
      {
        close(v46);
      }

      a2(0);
      sub_1CEFE5888(v48, type metadata accessor for ItemMetadata);
      v45 = v62;
    }

    sub_1CEFE5888(v45, type metadata accessor for VFSItem);
  }
}

uint64_t sub_1CF297F3C(uint64_t *a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_1CF9E6388();
  v71 = *(v10 - 8);
  v72 = v10;
  v11 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v70 = (&v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v69 = &v55 - v14;
  v15 = sub_1CF9E6498();
  v67 = *(v15 - 8);
  v68 = v15;
  v16 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v66 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v58 = &v55 - v20;
  v21 = sub_1CF9E63D8();
  v22 = *(v21 - 8);
  v56 = v21;
  v57 = v22;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v61 = &v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1CF9E6448();
  v63 = *(v25 - 8);
  v64 = v25;
  v26 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v62 = &v55 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1CF9E73D8();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v55 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *a1;
  v34 = *(a1 + 8);
  v35 = swift_allocObject();
  *(v35 + 16) = a3;
  *(v35 + 24) = a4;
  v60 = v33;
  *(v35 + 32) = v33;
  v59 = v34;
  *(v35 + 40) = v34;
  *(v35 + 41) = a2;
  *(v35 + 48) = v5;
  v55 = sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
  v36 = *(v5 + 216);
  v73 = MEMORY[0x1E69E7CC0];
  sub_1CF2A9448(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0]);

  v65 = v5;

  v37 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
  sub_1CEFCCCEC(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0);
  v38 = v56;
  sub_1CF9E77B8();
  v39 = sub_1CF9E73E8();

  v40 = v32;
  v41 = v58;
  (*(v29 + 8))(v40, v28);
  v42 = v57;
  qos_class_self();
  sub_1CF9E63B8();
  v43 = *(v42 + 48);
  if (v43(v41, 1, v38) == 1)
  {
    (*(v42 + 104))(v61, *MEMORY[0x1E69E7FA0], v38);
    if (v43(v41, 1, v38) != 1)
    {
      sub_1CEFCCC44(v41, &unk_1EC4BE380, &qword_1CFA01BA0);
    }
  }

  else
  {
    (*(v42 + 32))(v61, v41, v38);
  }

  ObjectType = swift_getObjectType();
  v45 = v62;
  sub_1CF9E6428();
  v46 = swift_allocObject();
  v47 = v60;
  *(v46 + 16) = v65;
  *(v46 + 24) = v47;
  *(v46 + 32) = v59;
  *(v46 + 40) = 0u;
  *(v46 + 56) = 0u;
  *(v46 + 72) = 0u;
  *(v46 + 88) = 0u;
  *(v46 + 104) = 0u;
  *(v46 + 120) = 0u;
  *(v46 + 136) = 0;
  *(v46 + 144) = 2048;
  *(v46 + 152) = v39;
  *(v46 + 160) = sub_1CF2B02B0;
  *(v46 + 168) = v35;

  swift_unknownObjectRetain();

  sub_1CEFD5828(0, v45, sub_1CF2B9F4C, v46);

  (*(v63 + 8))(v45, v64);
  v48 = v66;
  sub_1CF9E6478();
  v49 = v69;
  sub_1CEFD5B64(v69);
  v50 = v70;
  sub_1CEFD5BD8(v70);
  MEMORY[0x1D3869770](v48, v49, v50, ObjectType);
  v51 = *(v71 + 8);
  v52 = v50;
  v53 = v72;
  v51(v52, v72);
  v51(v49, v53);
  (*(v67 + 8))(v48, v68);
  sub_1CF9E7448();

  return swift_unknownObjectRelease();
}

uint64_t sub_1CF298600(uint64_t a1, void (*a2)(uint64_t *), void *a3, uint64_t a4, int a5, int a6, void *a7)
{
  v67 = a7;
  v68 = a6;
  v70 = a5;
  v69 = a4;
  v72 = a2;
  v73 = a3;
  v8 = type metadata accessor for VFSItem(0);
  v9 = *(v8 - 1);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v71 = v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF300, &unk_1CFA006B0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v18 = (v66 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = (v66 - v21);
  sub_1CEFCCBDC(a1, v66 - v21, &unk_1EC4BF310, &unk_1CF9FDB30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = *v22;
    *v18 = *v22;
    swift_storeEnumTagMultiPayload();
    v24 = v23;
    v72(v18);

    return sub_1CEFCCC44(v18, &unk_1EC4BF300, &unk_1CFA006B0);
  }

  v66[1] = v12;
  v25 = v72;
  if ((*(v9 + 48))(v22, 1, v8) == 1)
  {
    v26 = swift_allocObject();
    *(v26 + 16) = 2048;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
    sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
    v27 = swift_allocError();
    v29 = v28;
    sub_1CF1B8150();
    v30 = swift_allocError();
    *v31 = v26;
    *&v74 = v69;
    BYTE8(v74) = v70;
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v81 = v30;
    sub_1CF2A8DE0(&v74);
    *v29 = v74;
    v32 = v75;
    v33 = v76;
    v34 = v78;
    *(v29 + 48) = v77;
    *(v29 + 64) = v34;
    *(v29 + 16) = v32;
    *(v29 + 32) = v33;
    v35 = v79;
    v36 = v80;
    v37 = v81;
    *(v29 + 128) = v82;
    *(v29 + 96) = v36;
    *(v29 + 112) = v37;
    *(v29 + 80) = v35;
    *v18 = v27;
    swift_storeEnumTagMultiPayload();
    v25(v18);
    return sub_1CEFCCC44(v18, &unk_1EC4BF300, &unk_1CFA006B0);
  }

  v39 = v71;
  sub_1CEFE4C60(v22, v71, type metadata accessor for VFSItem);
  v40 = *v39;
  v41 = *(v39 + 16);
  v42 = *(v39 + 24);
  if (*(v39 + 8))
  {
    if (*(v39 + 8) == 1)
    {
      if (v42 != 1 || v40 != v41)
      {
LABEL_12:
        v44 = v39 + v8[7];
        v45 = *(type metadata accessor for ItemMetadata() + 44);
        if (*(v44 + v45) == (v68 & 1))
        {
LABEL_44:
          sub_1CEFD90AC(v39, v18, type metadata accessor for VFSItem);
          swift_storeEnumTagMultiPayload();
          v25(v18);
          v58 = v18;
          goto LABEL_45;
        }

        v46 = v39 + v8[9];
        v47 = *v46;
        v48 = v39 + v8[14];
        if (*(v48 + 4))
        {
          v49 = 0;
        }

        else
        {
          v49 = *v48;
        }

        v50 = *(v46 + 8);

        v74 = v47;
        v75 = __PAIR64__(v50, v49);
        *&v76 = 0;
        v51 = v67;
        v52 = objc_sync_enter(v67);
        if (!v52)
        {
          v53 = v51[20];

          v54 = objc_sync_exit(v51);
          if (v54)
          {
            MEMORY[0x1EEE9AC00](v54);
            v66[-2] = v51;
            fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, &v66[-4], "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
          }

          v55 = *(v53 + 16);

          v56 = sub_1CEFDADE0(&v74, v55, 2129920);

          v62 = v68 & 1;
          is_pinned = fpfs_set_is_pinned();
          if (is_pinned < 0)
          {
            v64 = MEMORY[0x1D38683F0]();
            LOBYTE(v74) = v62;
            BYTE8(v76) = 8;
            v65 = sub_1CF19BBE4(v64, &v74);
            sub_1CF1969CC(&v74);
            swift_willThrow();
            if ((v56 & 0x80000000) == 0)
            {
              close(v56);
            }

            *v18 = v65;
            swift_storeEnumTagMultiPayload();
            v57 = v65;
            v25(v18);

            v58 = v18;
            goto LABEL_45;
          }

          if ((v56 & 0x80000000) == 0)
          {
            close(v56);
          }

          *(v44 + v45) = v68 & 1;
          goto LABEL_44;
        }

LABEL_50:
        MEMORY[0x1EEE9AC00](v52);
        v66[-2] = v51;
        fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, &v66[-4], "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
      }
    }

    else if (v40)
    {
      if (v42 != 2 || v41 != 1)
      {
        goto LABEL_12;
      }
    }

    else if (v42 != 2 || v41 != 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (*(v39 + 24))
    {
      v59 = 0;
    }

    else
    {
      v59 = v40 == v41;
    }

    if (!v59)
    {
      goto LABEL_12;
    }
  }

  v52 = FPNotSupportedError();
  v51 = v73;
  if (!v52)
  {
    __break(1u);
    goto LABEL_50;
  }

  *v15 = v52;
  swift_storeEnumTagMultiPayload();
  v25(v15);
  v58 = v15;
LABEL_45:
  sub_1CEFCCC44(v58, &unk_1EC4BF300, &unk_1CFA006B0);
  return sub_1CEFE5888(v39, type metadata accessor for VFSItem);
}

void sub_1CF298D34(unsigned int a1, unsigned __int8 *a2, int a3, uint64_t a4, unsigned __int8 *a5, int a6, uint64_t a7, uint64_t a8)
{
  v147 = a7;
  v141 = a6;
  v143 = a4;
  v144 = a3;
  v150 = a2;
  v146 = a1;
  v160 = *MEMORY[0x1E69E9840];
  v11 = sub_1CF9E53C8();
  v139 = *(v11 - 8);
  v12 = *(v139 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v134 = &v125[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v138 = &v125[-v15];
  MEMORY[0x1EEE9AC00](v16);
  v137 = &v125[-v17];
  v151 = type metadata accessor for ItemMetadata();
  v18 = *(*(v151 - 1) + 64);
  MEMORY[0x1EEE9AC00](v151);
  v142 = &v125[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v125[-v21];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v129 = &v125[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v26);
  v133 = &v125[-v27];
  MEMORY[0x1EEE9AC00](v28);
  v135 = &v125[-v29];
  MEMORY[0x1EEE9AC00](v30);
  v136 = &v125[-v31];
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v125[-v33];
  v35 = sub_1CF9E5A58();
  v148 = *(v35 - 8);
  v149 = v35;
  v36 = *(v148 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v128 = &v125[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v38);
  v130 = &v125[-v39];
  MEMORY[0x1EEE9AC00](v40);
  v131 = &v125[-v41];
  MEMORY[0x1EEE9AC00](v42);
  v132 = &v125[-v43];
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v125[-v45];
  v47 = *a5;
  v48 = *(a8 + 208);
  v158[12] = *(a8 + 192);
  v158[13] = v48;
  v158[14] = *(a8 + 224);
  v159 = *(a8 + 240);
  v49 = *(a8 + 144);
  v158[8] = *(a8 + 128);
  v158[9] = v49;
  v50 = *(a8 + 176);
  v158[10] = *(a8 + 160);
  v158[11] = v50;
  v51 = *(a8 + 80);
  v158[4] = *(a8 + 64);
  v158[5] = v51;
  v52 = *(a8 + 112);
  v158[6] = *(a8 + 96);
  v158[7] = v52;
  v53 = *(a8 + 16);
  v158[0] = *a8;
  v158[1] = v53;
  v54 = *(a8 + 48);
  v158[2] = *(a8 + 32);
  v158[3] = v54;
  v55 = objc_sync_enter(v8);
  if (v55)
  {
    goto LABEL_71;
  }

  v140 = v11;
  v56 = v8[20];

  v57 = objc_sync_exit(v8);
  if (v57)
  {
    goto LABEL_72;
  }

  v58 = *(v56 + 40);
  v59 = *(v56 + 48);

  if (v59)
  {
    v58 = 0;
  }

  v60 = v151;
  if ((v150[v151[18]] & 1) == 0)
  {
    sub_1CEFD90AC(v150, v22, type metadata accessor for ItemMetadata);
    if (v47 == 6)
    {
      v63 = 0;
    }

    else
    {
      v63 = v47;
    }

    v22[v60[22]] = v63;
    v55 = objc_sync_enter(v8);
    if (v55)
    {
      goto LABEL_71;
    }

    v127 = v58;
    v64 = v8[20];

    v57 = objc_sync_exit(v8);
    if (!v57)
    {
      os_unfair_lock_lock((v64 + 56));
      v65 = *(v64 + 64);
      v66 = *(v64 + 72);
      v126 = *(v64 + 88);
      v67 = *(v64 + 89);
      v68 = *(v64 + 90);

      v69 = v141 & 1;
      v70 = *(v64 + 80);
      os_unfair_lock_unlock((v64 + 56));

      v71 = v142;
      v72 = sub_1CEFD90AC(v22, v142, type metadata accessor for ItemMetadata);
      v71[v151[20]] = 1;
      MEMORY[0x1EEE9AC00](v72);
      *&v125[-64] = v146;
      v73 = v143;
      *&v125[-56] = v127;
      *&v125[-48] = v73;
      *&v125[-40] = v144;
      v125[-36] = v69;
      *&v125[-32] = v65;
      *&v125[-24] = v66;
      *&v125[-16] = v70;
      v125[-8] = v126;
      v125[-7] = v67;
      v125[-6] = v68;
      v74 = v145;
      sub_1CF9B9578(v158, sub_1CF2B1984, &v125[-80], v125);
      if (!v74)
      {

        sub_1CEFE5888(v71, type metadata accessor for ItemMetadata);
        sub_1CEFE5888(v22, type metadata accessor for ItemMetadata);
        goto LABEL_63;
      }

      sub_1CEFE5888(v71, type metadata accessor for ItemMetadata);
      sub_1CEFE5888(v22, type metadata accessor for ItemMetadata);
      v75 = v74;
      v157.st_dev = sub_1CF9E52F8();
      sub_1CF196978();
      v76 = sub_1CF9E5658();

      if ((v76 & 1) != 0 && *v150 - 1 >= 2)
      {
        v101 = v136;
        sub_1CEFCCBDC(v147, v136, &unk_1EC4BE310, qword_1CF9FCBE0);
        v103 = v148;
        v102 = v149;
        v104 = (*(v148 + 48))(v101, 1, v149);
        v105 = v140;
        if (v104 == 1)
        {

          sub_1CEFCCC44(v101, &unk_1EC4BE310, qword_1CF9FCBE0);
          v157.st_dev = 22;
          sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
          sub_1CF2A9448(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
          v106 = v137;
          sub_1CF9E57D8();
          sub_1CF9E53A8();
          (*(v139 + 8))(v106, v105);
          goto LABEL_40;
        }

        v111 = v132;
        (*(v103 + 32))(v132, v101, v102);
        v112 = sub_1CF9E5928();
        v8 = FPMissingAllowsEvictingCapabilitiesError();

        if (v8)
        {

          swift_willThrow();
          (*(v103 + 8))(v111, v102);
          goto LABEL_63;
        }

        __break(1u);
      }

      else
      {
        v77 = v74;
        v157.st_dev = sub_1CF9E5298();
        v78 = sub_1CF9E5658();

        v79 = v140;
        v81 = v148;
        v80 = v149;
        if ((v78 & 1) != 0 && *v150 - 1 >= 2)
        {
          v107 = v135;
          sub_1CEFCCBDC(v147, v135, &unk_1EC4BE310, qword_1CF9FCBE0);
          if ((*(v81 + 6))(v107, 1, v80) != 1)
          {
            v79 = v131;
            (*(v81 + 4))(v131, v107, v80);
            v113 = sub_1CF9E5928();
            v114 = FPEvictionOnBusyItemError();

            if (!v114)
            {
              __break(1u);
              goto LABEL_45;
            }

            goto LABEL_47;
          }

          sub_1CEFCCC44(v107, &unk_1EC4BE310, qword_1CF9FCBE0);
          v108 = 16;
LABEL_39:
          v157.st_dev = v108;
          sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
          sub_1CF2A9448(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
          v110 = v137;
          sub_1CF9E57D8();
          sub_1CF9E53A8();
          (*(v139 + 8))(v110, v79);
          goto LABEL_40;
        }

        v82 = v74;
        v157.st_dev = sub_1CF9E5318();
        v83 = sub_1CF9E5658();

        if ((v83 & 1) == 0 || *v150 - 1 < 2)
        {
          v84 = v74;
          v157.st_dev = sub_1CF9E5328();
          v85 = sub_1CF9E5658();

          if (v85 & 1) == 0 || *v150 - 1 < 2 || (v150[v151[28]])
          {
            v153 = v74;
            v86 = v74;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
            v87 = v138;
            if (!swift_dynamicCast())
            {
              goto LABEL_62;
            }

            v80 = v139;
            v81 = v134;
            (*(v139 + 32))(v134, v87, v79);
            sub_1CF2A9448(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
            sub_1CF9E57A8();
            if (sub_1CF384284(v157.st_dev, &unk_1F4BED4C0))
            {

              v88 = *v150;
              v89 = sub_1CF9E53A8();
              if (v88 == 1)
              {
                v90 = sub_1CF9E57E8();

                v91 = [v90 underlyingErrors];
                v92 = sub_1CF9E6D48();

                if (*(v92 + 16))
                {
                  v93 = *(v92 + 32);
                  v94 = v93;

                  v152 = v93;
                  if (swift_dynamicCast())
                  {
                    v95 = v139;
                    if (LOBYTE(v157.st_atimespec.tv_nsec) == 11)
                    {
                      if (LOBYTE(v157.st_ino) != 1)
                      {
                        v96 = [objc_opt_self() fp:v146 nonEvictableChildrenErrorWithFD:v127 trashIno:*&v157.st_dev busyIno:?];
LABEL_61:
                        swift_willThrow();
                        (v95)[1](v81, v79);
                        goto LABEL_62;
                      }

LABEL_60:
                      sub_1CF9E53A8();
                      goto LABEL_61;
                    }

LABEL_66:
                    sub_1CF1969CC(&v157);
                    goto LABEL_60;
                  }

                  memset(&v157, 0, 40);
                  LOBYTE(v157.st_atimespec.tv_nsec) = -1;
                  sub_1CEFCCC44(&v157, &qword_1EC4BD918, &unk_1CF9FA550);
                }

                else
                {
                }

                v95 = v139;
                goto LABEL_60;
              }

              swift_willThrow();
              (*(v139 + 8))(v81, v79);
LABEL_62:

              goto LABEL_63;
            }

LABEL_45:
            (*(v80 + 8))(v81, v79);
            goto LABEL_62;
          }

          memset(&v157, 0, sizeof(v157));
          v116 = fstat(v146, &v157);
          v117 = v139;
          if (v116 < 0)
          {

            v119 = MEMORY[0x1D38683F0]();
            v153 = 3;
            v154 = 0u;
            v155 = 0u;
            v156 = 19;
            v120 = sub_1CF19BBE4(v119, &v153);
            sub_1CF1969CC(&v153);
            swift_willThrow();
            v121 = v120;
          }

          else
          {
            if (v157.st_nlink >= 2u)
            {
              v118 = v129;
              sub_1CEFCCBDC(v147, v129, &unk_1EC4BE310, qword_1CF9FCBE0);
              if ((*(v81 + 6))(v118, 1, v80) == 1)
              {

                sub_1CEFCCC44(v118, &unk_1EC4BE310, qword_1CF9FCBE0);
LABEL_57:
                v157.st_dev = 2;
                sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
                sub_1CF2A9448(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
                v122 = v137;
                sub_1CF9E57D8();
                sub_1CF9E53A8();
                (*(v117 + 8))(v122, v79);
                goto LABEL_40;
              }

              v79 = v128;
              (*(v81 + 4))(v128, v118, v80);
              v95 = sub_1CF9E5928();
              v124 = FPEvictionOnItemWithHardlinkError();

              if (!v124)
              {
                __break(1u);
                goto LABEL_66;
              }

LABEL_47:

              swift_willThrow();
              (*(v81 + 1))(v79, v80);
              goto LABEL_63;
            }

            v121 = v74;
          }

          goto LABEL_57;
        }

        v109 = v133;
        sub_1CEFCCBDC(v147, v133, &unk_1EC4BE310, qword_1CF9FCBE0);
        if ((*(v81 + 6))(v109, 1, v80) == 1)
        {

          sub_1CEFCCC44(v109, &unk_1EC4BE310, qword_1CF9FCBE0);
          v108 = 31;
          goto LABEL_39;
        }

        v79 = v130;
        (*(v81 + 4))(v130, v109, v80);
        v115 = sub_1CF9E5928();
        v8 = FPEvictionOnItemWithHardlinkError();

        if (v8)
        {
          goto LABEL_47;
        }
      }

      __break(1u);
LABEL_71:
      MEMORY[0x1EEE9AC00](v55);
      *&v125[-16] = v8;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, &v125[-32], "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
    }

LABEL_72:
    MEMORY[0x1EEE9AC00](v57);
    *&v125[-16] = v8;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, &v125[-32], "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  sub_1CEFCCBDC(v147, v34, &unk_1EC4BE310, qword_1CF9FCBE0);
  v62 = v148;
  v61 = v149;
  if ((*(v148 + 48))(v34, 1, v149) == 1)
  {
    sub_1CEFCCC44(v34, &unk_1EC4BE310, qword_1CF9FCBE0);
    type metadata accessor for NSFileProviderError(0);
    v153 = -2008;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF2A9448(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError);
    sub_1CF9E57D8();
LABEL_40:
    swift_willThrow();
    goto LABEL_63;
  }

  (*(v62 + 32))(v46, v34, v61);
  type metadata accessor for NSFileProviderError(0);
  v153 = -2008;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CF9FA450;
  v98 = *MEMORY[0x1E696A998];
  *(inited + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  *(inited + 40) = v99;
  *(inited + 72) = v61;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 48));
  (*(v62 + 16))(boxed_opaque_existential_0, v46, v61);
  sub_1CF4E04E8(inited);
  swift_setDeallocating();
  sub_1CEFCCC44(inited + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
  sub_1CF2A9448(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError);
  sub_1CF9E57D8();
  swift_willThrow();
  (*(v62 + 8))(v46, v61);
LABEL_63:
  v123 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1CF29A018(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v38 = a4;
  v37 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v36 = *(v6 - 8);
  v7 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v33[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v33[-v10];
  v12 = type metadata accessor for VFSItem(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v33[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v33[-v17];
  v19 = *a2;
  sub_1CEFD90AC(a1, &v33[-v17], type metadata accessor for VFSItem);
  sub_1CF25116C(v11);
  v35 = *a1;
  v34 = *(a1 + 8);
  sub_1CEFD90AC(a1, v15, type metadata accessor for VFSItem);
  sub_1CEFCCBDC(v11, v8, &unk_1EC4BE310, qword_1CF9FCBE0);
  v20 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v21 = (v14 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = (*(v36 + 80) + v21 + 9) & ~*(v36 + 80);
  v23 = swift_allocObject();
  v24 = v38;
  *(v23 + 16) = v37;
  *(v23 + 24) = v24;
  sub_1CEFE4C60(v15, v23 + v20, type metadata accessor for VFSItem);
  v25 = v23 + v21;
  v26 = v39;
  *v25 = v39;
  *(v25 + 8) = v19;
  v27 = v26;
  sub_1CEFE55D0(v8, v23 + v22, &unk_1EC4BE310, qword_1CF9FCBE0);

  v28 = sub_1CF2ADAF4(v11);
  v29 = v28;
  v40 = v35;
  v41 = v34;
  if (v28 >> 62)
  {
    v30 = sub_1CF9E7818();
  }

  else
  {
    v30 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v31 = v30 == 0;

  sub_1CF2AAEA4(&v40, v29, v31, v27, sub_1CF2B187C, v23);

  sub_1CEFCCC44(v11, &unk_1EC4BE310, qword_1CF9FCBE0);
  return sub_1CEFE5888(v18, type metadata accessor for VFSItem);
}

uint64_t sub_1CF29A378(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, void *a5, unsigned __int8 a6, uint64_t a7)
{
  if (a1)
  {
    return a2();
  }

  v26 = a7;
  v12 = type metadata accessor for VFSItem(0);
  v13 = a4 + v12[9];
  v14 = *v13;
  v15 = (a4 + v12[14]);
  if (*(v15 + 4))
  {
    v16 = 0;
  }

  else
  {
    v16 = *v15;
  }

  v17 = *(v13 + 8);

  v32[0] = v14;
  v32[1] = 0;
  v33 = v16;
  v34 = v17;
  v35 = 0;
  v36 = 0;
  v18 = objc_sync_enter(a5);
  if (v18)
  {
    MEMORY[0x1EEE9AC00](v18);
    v25 = a5;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v24, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v19 = a5[20];

  v20 = objc_sync_exit(a5);
  if (v20)
  {
    MEMORY[0x1EEE9AC00](v20);
    v25 = a5;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v24, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v21 = *(v19 + 16);

  v22 = sub_1CEFDADE0(v32, v21, 2129920);

  v23 = v12[7];
  v29 = a6;
  sub_1CEFE528C(v30);
  v27[12] = v30[12];
  v27[13] = v30[13];
  v27[14] = v30[14];
  v28 = v31;
  v27[8] = v30[8];
  v27[9] = v30[9];
  v27[10] = v30[10];
  v27[11] = v30[11];
  v27[4] = v30[4];
  v27[5] = v30[5];
  v27[6] = v30[6];
  v27[7] = v30[7];
  v27[0] = v30[0];
  v27[1] = v30[1];
  v27[2] = v30[2];
  v27[3] = v30[3];
  sub_1CF298D34(v22, (a4 + v23), 0, 0, &v29, 0, v26, v27);
  if ((v22 & 0x80000000) == 0)
  {
    close(v22);
  }

  return (a2)(0);
}

void sub_1CF29A614(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1CF9E63A8();
  v93 = *(v8 - 8);
  v94 = v8;
  v9 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1CF9E6448();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1CF9E63D8();
  v90 = *(v17 - 8);
  v91 = v17;
  v18 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v89 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v96 = &v77 - v25;
  v26 = *a2;
  if (*(a1 + *(type metadata accessor for VFSItem(0) + 28)) == 1)
  {
    v95 = v12;
    v85 = a3;
    v86 = a4;
    v87 = v16;
    v88 = v11;
    v27 = dispatch_group_create();
    v28 = swift_allocObject();
    v29 = v97;
    *(v28 + 16) = v27;
    *(v28 + 24) = v29;
    *(v28 + 32) = v26;
    v30 = swift_allocObject();
    *(v30 + 16) = 0;
    v31 = v27;

    dispatch_group_enter(v31);
    v32 = *a1;
    v33 = *(a1 + 8);
    v34 = swift_allocObject();
    *(v34 + 16) = v30;
    *(v34 + 24) = v31;
    v35 = swift_allocObject();
    *(v35 + 16) = sub_1CF2B174C;
    *(v35 + 24) = v34;
    *(v35 + 32) = v29;
    *(v35 + 40) = v32;
    v84 = v32;
    LODWORD(v83) = v33;
    *(v35 + 48) = v33;
    *(v35 + 56) = 0;
    *(v35 + 64) = 0;
    *(v35 + 72) = sub_1CF2B1740;
    *(v35 + 80) = v28;
    v36 = v29 + qword_1EDEBBE70;
    swift_beginAccess();
    v37 = *(v36 + 1);
    v38 = __CFADD__(v37, 1);
    v39 = v37 + 1;
    if (v38)
    {
      __break(1u);
    }

    else
    {
      *(v36 + 1) = v39;
      v40 = v97;
      v41 = v97[28];
      v79 = v97[27];
      v42 = v30;
      v43 = v13;
      (*(v13 + 56))(v96, 1, 1, v95);
      v44 = swift_allocObject();
      v80 = v23;
      v45 = v44;
      v78 = v31;
      *(v44 + 16) = sub_1CF2B1754;
      *(v44 + 24) = v35;
      v46 = swift_allocObject();
      v47 = v84;
      *(v46 + 16) = v40;
      *(v46 + 24) = v47;
      *(v46 + 32) = v83;
      *(v46 + 40) = sub_1CF2B1754;
      *(v46 + 48) = v35;
      *(v46 + 56) = 0;
      *(v46 + 64) = sub_1CF2B1740;
      *(v46 + 72) = v28;
      v48 = swift_allocObject();
      v48[2] = sub_1CF2BA178;
      v48[3] = v45;
      v48[4] = v41;
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      v84 = v78;
      v92 = v42;

      v79 = v79;
      v83 = v45;
      v49 = v80;

      v50 = fpfs_current_log();
      v78 = *(v41 + 16);
      v51 = v95;
      sub_1CEFCCBDC(v96, v49, &unk_1EC4BE370, qword_1CFA01B30);
      v52 = (*(v43 + 48))(v49, 1, v51);
      v77 = v34;
      v82 = v28;
      v81 = v43;
      if (v52 == 1)
      {
        sub_1CEFCCC44(v49, &unk_1EC4BE370, qword_1CFA01B30);
        LODWORD(v80) = 0;
      }

      else
      {
        v53 = v89;
        sub_1CF9E6438();
        (*(v43 + 8))(v49, v51);
        LODWORD(v80) = sub_1CF9E63C8();
        (*(v90 + 8))(v53, v91);
      }

      v54 = swift_allocObject();
      v54[2] = v50;
      v54[3] = sub_1CF2B9F50;
      v54[4] = v46;
      v103 = sub_1CF2BA17C;
      v104 = v54;
      aBlock = MEMORY[0x1E69E9820];
      v100 = 1107296256;
      v101 = sub_1CEFCA444;
      v102 = &block_descriptor_1123;
      v55 = _Block_copy(&aBlock);
      v56 = v50;

      v103 = sub_1CF2BA184;
      v104 = v48;
      aBlock = MEMORY[0x1E69E9820];
      v100 = 1107296256;
      v101 = sub_1CEFCA444;
      v102 = &block_descriptor_1126;
      v57 = _Block_copy(&aBlock);

      v58 = v79;
      fp_task_tracker_async_and_qos(v78, v79, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v80, v55, v57);

      _Block_release(v57);
      _Block_release(v55);

      sub_1CEFCCC44(v96, &unk_1EC4BE370, qword_1CFA01B30);
      v59 = v97[27];
      v60 = swift_allocObject();
      v61 = v86;
      v60[2] = v85;
      v60[3] = v61;
      v60[4] = v92;

      v62 = v59;

      v63 = fpfs_current_log();
      v97 = fpfs_adopt_log();
      v64 = swift_allocObject();
      aBlock = sub_1CF9E73C8();
      v100 = v65;
      MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
      v66 = sub_1CF9E7988();
      MEMORY[0x1D3868CC0](v66);

      sub_1CF9E6978();

      v67 = __fp_log_fork();

      *(v64 + 16) = v67;
      v68 = swift_allocObject();
      *(v68 + 16) = v63;
      *(v68 + 24) = v64;
      *(v68 + 32) = v62;
      *(v68 + 40) = "_evict(_:evictionReason:completion:)";
      *(v68 + 48) = 36;
      *(v68 + 56) = 2;
      *(v68 + 64) = sub_1CF2B1758;
      *(v68 + 72) = v60;
      v103 = sub_1CF2B9F54;
      v104 = v68;
      aBlock = MEMORY[0x1E69E9820];
      v100 = 1107296256;
      v101 = sub_1CEFCA444;
      v102 = &block_descriptor_1137;
      v69 = _Block_copy(&aBlock);
      v70 = v62;
      v96 = v63;

      v71 = v87;
      sub_1CF9E63F8();
      v98 = MEMORY[0x1E69E7CC0];
      sub_1CF2A9448(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
      sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
      v72 = v88;
      v73 = v94;
      sub_1CF9E77B8();
      v74 = v84;
      sub_1CF9E7308();
      _Block_release(v69);
      (*(v93 + 8))(v72, v73);
      (*(v81 + 8))(v71, v95);

      v75 = v97;
      v76 = fpfs_adopt_log();
    }
  }

  else
  {
    LOBYTE(aBlock) = v26;
    sub_1CF29A018(a1, &aBlock, a3, a4);
  }
}

uint64_t sub_1CF29B0FC(uint64_t a1, NSObject *a2, uint64_t a3, char a4)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v8 = *(type metadata accessor for VFSItem(0) - 8);
    v9 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v10 = *(v8 + 72);
    do
    {
      dispatch_group_enter(a2);
      v14 = a4;
      v11 = swift_allocObject();
      *(v11 + 16) = a2;
      v12 = a2;
      sub_1CF29A614(v9, &v14, sub_1CF2B1874, v11);

      v9 += v10;
      --v4;
    }

    while (v4);
  }

  return 0;
}

void sub_1CF29B214(void *a1, uint64_t a2, NSObject *a3)
{
  swift_beginAccess();
  v6 = *(a2 + 16);
  *(a2 + 16) = a1;
  v7 = a1;

  dispatch_group_leave(a3);
}

void sub_1CF29B280(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a3 + 16);
  v6 = v5;
  a1(v5);
}

id sub_1CF29B2EC(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v54 = a1;
  v9 = sub_1CF9E63D8();
  v46 = *(v9 - 8);
  v47 = v9;
  v10 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v45 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for VFSItem(0);
  v52 = *(v12 - 8);
  v13 = v52[8];
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v53 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v44 - v18;
  v56 = &v44 - v18;
  v50 = *a2;
  v55 = [objc_opt_self() discreteProgressWithTotalUnitCount_];
  [v55 setCancellable_];
  v20 = *(v4 + 216);
  v48 = *(v4 + 224);
  v49 = v20;
  v21 = sub_1CF9E6448();
  v51 = *(v21 - 8);
  (*(v51 + 56))(v19, 1, 1, v21);
  v22 = swift_allocObject();
  v23 = a3;
  *(v22 + 16) = a3;
  *(v22 + 24) = a4;
  v24 = a4;
  v25 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CEFD90AC(v54, v25, type metadata accessor for VFSItem);
  v26 = (*(v52 + 80) + 24) & ~*(v52 + 80);
  v27 = v26 + v13;
  v28 = (v26 + v13) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  *(v29 + 16) = v5;
  sub_1CEFE4C60(v25, v29 + v26, type metadata accessor for VFSItem);
  *(v29 + v27) = v50;
  v30 = v29 + v28;
  *(v30 + 8) = v23;
  *(v30 + 16) = v24;
  v31 = swift_allocObject();
  v31[2] = sub_1CF2BA174;
  v31[3] = v22;
  v32 = v48;
  v31[4] = v48;
  swift_retain_n();
  v33 = v49;

  v54 = v22;

  v34 = fpfs_current_log();
  v35 = v51;
  v52 = *(v32 + 16);
  v36 = v53;
  sub_1CEFCCBDC(v56, v53, &unk_1EC4BE370, qword_1CFA01B30);
  if ((*(v35 + 48))(v36, 1, v21) == 1)
  {
    sub_1CEFCCC44(v36, &unk_1EC4BE370, qword_1CFA01B30);
    v37 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v38 = v45;
    sub_1CF9E6438();
    (*(v35 + 8))(v36, v21);
    v37 = sub_1CF9E63C8();
    (*(v46 + 8))(v38, v47);
  }

  v39 = swift_allocObject();
  v39[2] = v34;
  v39[3] = sub_1CF2B017C;
  v39[4] = v29;
  v61 = sub_1CF2BA17C;
  v62 = v39;
  aBlock = MEMORY[0x1E69E9820];
  v58 = 1107296256;
  v59 = sub_1CEFCA444;
  v60 = &block_descriptor_318;
  v40 = _Block_copy(&aBlock);
  v41 = v34;

  v61 = sub_1CF2BA180;
  v62 = v31;
  aBlock = MEMORY[0x1E69E9820];
  v58 = 1107296256;
  v59 = sub_1CEFCA444;
  v60 = &block_descriptor_321;
  v42 = _Block_copy(&aBlock);

  fp_task_tracker_async_and_qos(v52, v33, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v37, v40, v42);
  _Block_release(v42);
  _Block_release(v40);

  sub_1CEFCCC44(v56, &unk_1EC4BE370, qword_1CFA01B30);
  return v55;
}

uint64_t sub_1CF29B8A8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for VFSItem(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v17 = a3;
  sub_1CEFD90AC(a2, &v16[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for VFSItem);
  v12 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v13 = swift_allocObject();
  sub_1CEFE4C60(&v16[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)], v13 + v12, type metadata accessor for VFSItem);
  v14 = (v13 + ((v11 + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v14 = a4;
  v14[1] = a5;

  sub_1CF29A614(a2, &v17, sub_1CF2B0210, v13);
}

uint64_t sub_1CF29BA18(void *a1, uint64_t a2, uint64_t (*a3)(void, __n128), uint64_t a4)
{
  v8 = type metadata accessor for VFSItem(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1CF9E6118();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x1EEE9AC00](v12);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v42 = v15;
    v19 = a1;
    v20 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    sub_1CEFD90AC(a2, v11, type metadata accessor for VFSItem);
    v21 = a1;
    v22 = sub_1CF9E6108();
    v23 = sub_1CF9E72A8();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v41 = a4;
      v25 = v24;
      v39 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v40 = v26;
      v46 = v26;
      *v25 = 136446466;
      v27 = v11[8];
      v44 = *v11;
      v45 = v27;
      v29 = VFSItemID.description.getter(v26, v28);
      v30 = a3;
      v32 = v31;
      sub_1CEFE5888(v11, type metadata accessor for VFSItem);
      v33 = sub_1CEFD0DF0(v29, v32, &v46);
      a3 = v30;

      *(v25 + 4) = v33;
      *(v25 + 12) = 2112;
      swift_getErrorValue();
      v34 = Error.prettyDescription.getter(v43);
      *(v25 + 14) = v34;
      v35 = v39;
      *v39 = v34;
      _os_log_impl(&dword_1CEFC7000, v22, v23, "Eviction of %{public}s failed with %@", v25, 0x16u);
      sub_1CEFCCC44(v35, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v35, -1, -1);
      v36 = v40;
      __swift_destroy_boxed_opaque_existential_1(v40);
      MEMORY[0x1D386CDC0](v36, -1, -1);
      MEMORY[0x1D386CDC0](v25, -1, -1);
    }

    else
    {

      sub_1CEFE5888(v11, type metadata accessor for VFSItem);
    }

    (*(v13 + 8))(v18, v42);
  }

  return a3(a1, v16);
}

uint64_t sub_1CF29BD50(void *a1, char a2, uint64_t (*a3)(void *, __n128), uint64_t a4, uint64_t a5, uint64_t a6, char a7, void *a8, void *a9, uint64_t a10, uint64_t a11)
{
  v69 = a8;
  v68 = sub_1CF9E63D8();
  v18 = *(v68 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v67 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v58 - v26;
  if (a2)
  {
    v28 = a1;
    return a3(v28, v25);
  }

  if (!a1)
  {
    v28 = 0;
    return a3(v28, v25);
  }

  v58 = v18;
  v62 = v24;
  v65 = a1;
  v29 = swift_allocObject();
  *(v29 + 16) = a3;
  *(v29 + 24) = a4;
  v63 = a9;
  v64 = a4;
  *(v29 + 32) = a5;
  *(v29 + 40) = a6;
  *(v29 + 48) = a7;
  *(v29 + 56) = v69;
  *(v29 + 64) = a9;
  v61 = a10;
  *(v29 + 72) = a10;
  *(v29 + 80) = a11;
  v30 = a5 + qword_1EDEBBE70;
  result = swift_beginAccess();
  v32 = *(v30 + 8);
  v33 = __CFADD__(v32, 1);
  v34 = v32 + 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(v30 + 8) = v34;
    v35 = *(a5 + 216);
    v59 = *(a5 + 224);
    v60 = v35;
    v36 = sub_1CF9E6448();
    v37 = *(v36 - 8);
    (*(v37 + 56))(v27, 1, 1, v36);
    v38 = swift_allocObject();
    v38[2] = sub_1CF2BA154;
    v38[3] = v29;
    v39 = swift_allocObject();
    v66 = v27;
    v40 = v39;
    *(v39 + 16) = a5;
    *(v39 + 24) = a6;
    *(v39 + 32) = a7;
    *(v39 + 40) = sub_1CF2BA154;
    *(v39 + 48) = v29;
    v41 = v65;
    v42 = v61;
    *(v39 + 56) = v65;
    *(v39 + 64) = v42;
    *(v39 + 72) = a11;
    v43 = swift_allocObject();
    v43[2] = sub_1CF2BA178;
    v43[3] = v38;
    v44 = v59;
    v43[4] = v59;
    v45 = v63;
    v63 = v60;
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();

    v46 = v69;
    v47 = v36;
    sub_1CF2B1868(v41, 0);
    v69 = v38;

    v48 = v44;

    v49 = fpfs_current_log();
    v65 = *(v48 + 16);
    v50 = v62;
    sub_1CEFCCBDC(v66, v62, &unk_1EC4BE370, qword_1CFA01B30);
    if ((*(v37 + 48))(v50, 1, v36) == 1)
    {
      sub_1CEFCCC44(v50, &unk_1EC4BE370, qword_1CFA01B30);
      v51 = QOS_CLASS_UNSPECIFIED;
    }

    else
    {
      v52 = v67;
      sub_1CF9E6438();
      (*(v37 + 8))(v50, v47);
      v51 = sub_1CF9E63C8();
      (*(v58 + 8))(v52, v68);
    }

    v53 = swift_allocObject();
    v53[2] = v49;
    v53[3] = sub_1CF2B9F50;
    v53[4] = v40;
    v74 = sub_1CF2BA17C;
    v75 = v53;
    aBlock = MEMORY[0x1E69E9820];
    v71 = 1107296256;
    v72 = sub_1CEFCA444;
    v73 = &block_descriptor_1160;
    v54 = _Block_copy(&aBlock);
    v55 = v49;

    v74 = sub_1CF2BA184;
    v75 = v43;
    aBlock = MEMORY[0x1E69E9820];
    v71 = 1107296256;
    v72 = sub_1CEFCA444;
    v73 = &block_descriptor_1163;
    v56 = _Block_copy(&aBlock);

    v57 = v63;
    fp_task_tracker_async_and_qos(v65, v63, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v51, v54, v56);

    _Block_release(v56);
    _Block_release(v54);

    return sub_1CEFCCC44(v66, &unk_1EC4BE370, qword_1CFA01B30);
  }

  return result;
}

void sub_1CF29C328(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (**a6)()@<X8>)
{
  v15 = VFSItemID.description.getter(a1, a2);
  v16 = v11;
  MEMORY[0x1D3868CC0](8250, 0xE200000000000000);
  MEMORY[0x1D3868CC0](a3, a4);
  v12 = (a5 + qword_1EDEAFAF8);
  os_unfair_lock_lock((a5 + qword_1EDEAFAF8));
  sub_1CF29C444(&v12[2], v15, v16);
  os_unfair_lock_unlock(v12);
  if (v6)
  {
    __break(1u);
  }

  else
  {
    v13 = swift_allocObject();
    swift_weakInit();
    v14 = swift_allocObject();
    *(v14 + 2) = v13;
    *(v14 + 3) = v15;
    *(v14 + 4) = v16;
    *a6 = sub_1CF2B9A44;
    a6[1] = v14;
  }
}

unint64_t sub_1CF29C444(unint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = *result;
  v7 = *(*result + 16);
  if (v7)
  {
    result = sub_1CEFE4328(a2, a3);
    if (v8)
    {
      v7 = *(*(v6 + 56) + 8 * result);
    }

    else
    {
      v7 = 0;
    }
  }

  v9 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
  }

  else
  {
    v10 = *v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v5;
    result = sub_1CF1D20F4(v9, a2, a3, isUniquelyReferenced_nonNull_native);
    *v5 = v12;
  }

  return result;
}

uint64_t sub_1CF29C4F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1CF9E63A8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CF9E6448();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v24 = v6;
    v16 = *(result + 216);
    v17 = result;
    v18 = swift_allocObject();
    v18[2] = v17;
    v18[3] = a2;
    v22[1] = v17;
    v18[4] = a3;
    aBlock[4] = sub_1CF2B9AA0;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CEFCA444;
    aBlock[3] = &block_descriptor_1492;
    v19 = _Block_copy(aBlock);
    v23 = v10;
    v20 = v19;
    v21 = v16;

    sub_1CF9E63F8();
    v25 = MEMORY[0x1E69E7CC0];
    sub_1CF2A9448(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
    sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
    sub_1CF9E77B8();
    MEMORY[0x1D3869630](0, v14, v9, v20);
    _Block_release(v20);

    (*(v24 + 8))(v9, v5);
    (*(v11 + 8))(v14, v23);
  }

  return result;
}

void sub_1CF29C820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1 + qword_1EDEAFAF8;
  os_unfair_lock_lock((a1 + qword_1EDEAFAF8));
  sub_1CF29C8E0((v6 + 8), a2, a3, &v10);
  os_unfair_lock_unlock(v6);
  if (v10)
  {
    v7 = *(a1 + 64);
    if (v7)
    {
      v8 = *(a1 + 72);

      v7(v9);

      sub_1CEFF7124(v7);
    }
  }
}

unint64_t sub_1CF29C8E0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, BOOL *a4@<X8>)
{
  v7 = *a1;
  if (!*(*a1 + 16))
  {
    goto LABEL_9;
  }

  v9 = sub_1CEFE4328(a2, a3);
  if ((v10 & 1) == 0)
  {
    goto LABEL_9;
  }

  v11 = *(*(v7 + 56) + 8 * v9);
  v12 = v11 - 1;
  if (v11 != 1)
  {
    if (!__OFSUB__(v11, 1))
    {
      v15 = *a1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *a1;
      result = sub_1CF1D20F4(v12, a2, a3, isUniquelyReferenced_nonNull_native);
      v14 = v17;
      *a1 = v17;
      goto LABEL_7;
    }

    __break(1u);
LABEL_9:

    sub_1CF5114B8("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/tree/VFSFileTree.swift", 123, 2, 3827, a2, a3);
  }

  result = sub_1CF1C8E7C(0, 1, a2, a3);
  v14 = *a1;
LABEL_7:
  *a4 = *(v14 + 16) == 0;
  return result;
}

BOOL sub_1CF29C9F4()
{
  v1 = v0 + qword_1EDEAFAF8;
  os_unfair_lock_lock((v0 + qword_1EDEAFAF8));
  v2 = *(*(v1 + 8) + 16) != 0;
  os_unfair_lock_unlock(v1);
  return v2;
}

void sub_1CF29CA40(void *a1)
{
  v3 = v1 + qword_1EDEAFAF8;
  os_unfair_lock_lock(v3);
  sub_1CF29CAA8((v3 + 8), a1);

  os_unfair_lock_unlock(v3);
}

uint64_t sub_1CF29CAA8(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = v2 + 64;
  v4 = 1 << *(v2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v2 + 64);
  v7 = (v4 + 63) >> 6;
  v20 = v2;

  for (i = 0; v6; result = )
  {
    v10 = i;
LABEL_9:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (v10 << 6);
    v13 = (*(v20 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v20 + 56) + 8 * v12);
    v17 = a2[3];
    v21 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v17);

    sub_1CF9E7948();

    MEMORY[0x1D3868CC0](v14, v15);

    MEMORY[0x1D3868CC0](10272, 0xE200000000000000);
    v18 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v18);

    MEMORY[0x1D3868CC0](0x2973656D697420, 0xE700000000000000);
    sub_1CF4FB2BC(0xD00000000000001DLL, 0x80000001CFA3D670, v17, v21);
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v7)
    {
    }

    v6 = *(v3 + 8 * v10);
    ++i;
    if (v6)
    {
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF29CC88(uint64_t *a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_1CF9E6388();
  v71 = *(v10 - 8);
  v72 = v10;
  v11 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v70 = (&v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v69 = &v55 - v14;
  v15 = sub_1CF9E6498();
  v67 = *(v15 - 8);
  v68 = v15;
  v16 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v66 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v58 = &v55 - v20;
  v21 = sub_1CF9E63D8();
  v22 = *(v21 - 8);
  v56 = v21;
  v57 = v22;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v61 = &v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1CF9E6448();
  v63 = *(v25 - 8);
  v64 = v25;
  v26 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v62 = &v55 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1CF9E73D8();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v55 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *a1;
  v34 = *(a1 + 8);
  v35 = swift_allocObject();
  *(v35 + 16) = a3;
  *(v35 + 24) = a4;
  *(v35 + 32) = a2;
  *(v35 + 40) = v5;
  *(v35 + 48) = v33;
  v60 = v33;
  v59 = v34;
  *(v35 + 56) = v34;
  v55 = sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
  v36 = *(v5 + 216);
  v73 = MEMORY[0x1E69E7CC0];
  sub_1CF2A9448(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0]);

  v65 = v5;

  v37 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
  sub_1CEFCCCEC(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0);
  v38 = v56;
  sub_1CF9E77B8();
  v39 = sub_1CF9E73E8();

  v40 = v32;
  v41 = v58;
  (*(v29 + 8))(v40, v28);
  v42 = v57;
  qos_class_self();
  sub_1CF9E63B8();
  v43 = *(v42 + 48);
  if (v43(v41, 1, v38) == 1)
  {
    (*(v42 + 104))(v61, *MEMORY[0x1E69E7FA0], v38);
    if (v43(v41, 1, v38) != 1)
    {
      sub_1CEFCCC44(v41, &unk_1EC4BE380, &qword_1CFA01BA0);
    }
  }

  else
  {
    (*(v42 + 32))(v61, v41, v38);
  }

  ObjectType = swift_getObjectType();
  v45 = v62;
  sub_1CF9E6428();
  v46 = swift_allocObject();
  v47 = v60;
  *(v46 + 16) = v65;
  *(v46 + 24) = v47;
  *(v46 + 32) = v59;
  *(v46 + 40) = 0u;
  *(v46 + 56) = 0u;
  *(v46 + 72) = 0u;
  *(v46 + 88) = 0u;
  *(v46 + 104) = 0u;
  *(v46 + 120) = 0u;
  *(v46 + 136) = 0;
  *(v46 + 144) = 1;
  *(v46 + 152) = v39;
  *(v46 + 160) = sub_1CF2B0168;
  *(v46 + 168) = v35;

  swift_unknownObjectRetain();

  sub_1CEFD5828(0, v45, sub_1CEFD5D08, v46);

  (*(v63 + 8))(v45, v64);
  v48 = v66;
  sub_1CF9E6478();
  v49 = v69;
  sub_1CEFD5B64(v69);
  v50 = v70;
  sub_1CEFD5BD8(v70);
  MEMORY[0x1D3869770](v48, v49, v50, ObjectType);
  v51 = *(v71 + 8);
  v52 = v50;
  v53 = v72;
  v51(v52, v72);
  v51(v49, v53);
  (*(v67 + 8))(v48, v68);
  sub_1CF9E7448();

  return swift_unknownObjectRelease();
}

void sub_1CF29D348(uint64_t a1, void (*a2)(id), uint64_t a3, int a4, void *a5, uint64_t a6, int a7)
{
  v61 = a7;
  v60 = a6;
  v66 = a5;
  v65 = a4;
  v9 = sub_1CF9E6118();
  v62 = *(v9 - 8);
  v63 = v9;
  v10 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v64 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for VFSItem(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v67 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = (&v59 - v18);
  sub_1CEFCCBDC(a1, &v59 - v18, &unk_1EC4BF310, &unk_1CF9FDB30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = *v19;
    v21 = *v19;
    a2(v20);

    return;
  }

  if ((*(v13 + 48))(v19, 1, v12) == 1)
  {
    a2(0);
    return;
  }

  v22 = v67;
  sub_1CEFE4C60(v19, v67, type metadata accessor for VFSItem);
  v23 = (v22 + *(v12 + 28));
  v24 = type metadata accessor for ItemMetadata();
  if (!v23[*(v24 + 84)] && ((v65 & 1) == 0 || v23[*(v24 + 60)] == 1))
  {
    goto LABEL_26;
  }

  v25 = *(v22 + 8);
  v73 = *v22;
  v74 = v25;
  v26 = v22 + *(v12 + 36);
  v27 = *v26;
  v28 = *(v26 + 8);
  v29 = *(v26 + 16);
  v30 = *(v22 + 16);
  v31 = *(v22 + 24);
  v33 = *(v22 + 32);
  v32 = *(v22 + 40);
  v72 = *(v26 + 24);
  *&v68[0] = v27;
  DWORD2(v68[0]) = v28;
  *&v68[1] = v29;
  BYTE8(v68[1]) = v72;
  *&v68[2] = 0;
  *(&v68[2] + 1) = v30;
  LOBYTE(v69) = v31;
  *(&v69 + 1) = v33;
  v70 = v32;
  v71 = 0uLL;

  v34 = v66;
  sub_1CEFDAA48(&v73, v68, v75);
  v77[2] = v68[2];
  v77[3] = v69;
  v77[4] = v70;
  v77[5] = v71;
  v77[0] = v68[0];
  v77[1] = v68[1];
  sub_1CEFCCC44(v77, &unk_1EC4BECD0, &unk_1CF9FEF80);
  v68[0] = v75[0];
  v68[1] = v75[1];
  *&v68[2] = v76;
  v35 = objc_sync_enter(v34);
  if (v35)
  {
    MEMORY[0x1EEE9AC00](v35);
    *(&v59 - 2) = v34;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v59 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v36 = v34[20];

  v37 = objc_sync_exit(v34);
  if (v37)
  {
    MEMORY[0x1EEE9AC00](v37);
    *(&v59 - 2) = v34;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v59 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v38 = *(v36 + 16);

  v39 = sub_1CEFDADE0(v68, v38, 0x200000);

  if ((v65 & 1) == 0 || *v23 != 1)
  {
    goto LABEL_23;
  }

  LODWORD(v66) = v39;
  v44 = fpfs_current_or_default_log();
  v45 = v64;
  sub_1CF9E6128();
  v46 = sub_1CF9E6108();
  v47 = sub_1CF9E7288();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *&v75[0] = v49;
    *v48 = 136446210;
    *&v68[0] = v60;
    BYTE8(v68[0]) = v61;
    v51 = VFSItemID.description.getter(v49, v50);
    v53 = sub_1CEFD0DF0(v51, v52, v75);

    *(v48 + 4) = v53;
    _os_log_impl(&dword_1CEFC7000, v46, v47, "marking sync root bit for folder %{public}s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v49);
    MEMORY[0x1D386CDC0](v49, -1, -1);
    MEMORY[0x1D386CDC0](v48, -1, -1);

    (*(v62 + 8))(v64, v63);
  }

  else
  {

    (*(v62 + 8))(v45, v63);
  }

  v39 = v66;
  if ((fpfs_fset_syncroot() & 0x80000000) == 0)
  {
    if ((fpfs_make_fsevent() & 0x80000000) != 0)
    {
      v55 = MEMORY[0x1D38683F0]();
      v56 = 16;
LABEL_30:
      *&v68[0] = v56;
      *(v68 + 8) = 0u;
      *(&v68[1] + 8) = 0u;
      v57 = 19;
      goto LABEL_31;
    }

LABEL_23:
    if ((fpfs_unset_evictable() & 0x80000000) == 0)
    {
      if ((v39 & 0x80000000) == 0)
      {
        close(v39);
      }

      goto LABEL_26;
    }

    v55 = MEMORY[0x1D38683F0]();
    v56 = 20;
    goto LABEL_30;
  }

  v55 = MEMORY[0x1D38683F0]();
  LODWORD(v68[0]) = 1;
  v57 = 6;
LABEL_31:
  BYTE8(v68[2]) = v57;
  v58 = sub_1CF19BBE4(v55, v68);
  sub_1CF1969CC(v68);
  swift_willThrow();
  if ((v39 & 0x80000000) == 0)
  {
    close(v39);
  }

  v40 = v58;
  LODWORD(v68[0]) = sub_1CF9E5328();
  sub_1CF196978();
  v41 = sub_1CF9E5658();

  if (v41 & 1) != 0 || (v42 = v58, LODWORD(v68[0]) = sub_1CF9E5378(), v43 = sub_1CF9E5658(), v58, (v43))
  {

LABEL_26:
    a2(0);
    goto LABEL_27;
  }

  v54 = v58;
  a2(v58);

LABEL_27:
  sub_1CEFE5888(v22, type metadata accessor for VFSItem);
}

uint64_t sub_1CF29DA68(uint64_t *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v45 = a3;
  v43 = sub_1CF9E63D8();
  v42 = *(v43 - 8);
  v9 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v41 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v40 - v16;
  v18 = *a1;
  LOBYTE(a1) = *(a1 + 8);
  v19 = a2[3];
  v54 = a2[2];
  v55 = v19;
  v20 = a2[5];
  v56 = a2[4];
  v57 = v20;
  v21 = a2[1];
  v52 = *a2;
  v53 = v21;
  v22 = *(v5 + 224);
  v44 = *(v5 + 216);
  v23 = sub_1CF9E6448();
  v24 = *(v23 - 8);
  (*(v24 + 56))(v17, 1, 1, v23);
  v25 = swift_allocObject();
  v26 = v55;
  *(v25 + 72) = v54;
  *(v25 + 88) = v26;
  v27 = v57;
  *(v25 + 104) = v56;
  *(v25 + 120) = v27;
  v28 = v53;
  *(v25 + 40) = v52;
  *(v25 + 16) = v5;
  *(v25 + 24) = v18;
  *(v25 + 32) = a1;
  *(v25 + 56) = v28;
  v29 = v45;
  *(v25 + 136) = v45;
  *(v25 + 144) = a4;
  v30 = swift_allocObject();
  v30[2] = v29;
  v30[3] = a4;
  v30[4] = v22;
  swift_retain_n();
  v31 = v44;

  sub_1CEFCCBDC(&v52, &aBlock, &unk_1EC4BE330, &unk_1CF9FF010);

  v32 = fpfs_current_log();
  v44 = *(v22 + 16);
  v45 = v17;
  sub_1CEFCCBDC(v17, v14, &unk_1EC4BE370, qword_1CFA01B30);
  if ((*(v24 + 48))(v14, 1, v23) == 1)
  {
    sub_1CEFCCC44(v14, &unk_1EC4BE370, qword_1CFA01B30);
    v33 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v34 = v41;
    sub_1CF9E6438();
    (*(v24 + 8))(v14, v23);
    v33 = sub_1CF9E63C8();
    (*(v42 + 8))(v34, v43);
  }

  v35 = swift_allocObject();
  v35[2] = v32;
  v35[3] = sub_1CF2B0104;
  v35[4] = v25;
  v50 = sub_1CF2BA17C;
  v51 = v35;
  aBlock = MEMORY[0x1E69E9820];
  v47 = 1107296256;
  v48 = sub_1CEFCA444;
  v49 = &block_descriptor_283;
  v36 = _Block_copy(&aBlock);
  v37 = v32;

  v50 = sub_1CF2B0118;
  v51 = v30;
  aBlock = MEMORY[0x1E69E9820];
  v47 = 1107296256;
  v48 = sub_1CEFCA444;
  v49 = &block_descriptor_286;
  v38 = _Block_copy(&aBlock);

  fp_task_tracker_async_and_qos(v44, v31, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v33, v36, v38);
  _Block_release(v38);
  _Block_release(v36);

  return sub_1CEFCCC44(v45, &unk_1EC4BE370, qword_1CFA01B30);
}

uint64_t sub_1CF29DFA0(void *a1, uint64_t a2, int a3, __int128 *a4, void (*a5)(uint64_t *), uint64_t a6)
{
  v128 = a6;
  v129 = a5;
  v10 = sub_1CF9E5CF8();
  v123 = *(v10 - 8);
  v124 = v10;
  v11 = *(v123 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v122 = &v111 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF300, &unk_1CFA006B0);
  v13 = *(*(v130 - 8) + 64);
  MEMORY[0x1EEE9AC00](v130);
  v121 = &v111 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v111 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v125 = &v111 - v20;
  v21 = sub_1CF9E5A58();
  v22 = *(v21 - 8);
  v126 = v21;
  v127 = v22;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v111 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v111 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v111 - v30;
  v32 = type metadata accessor for VFSItem(0);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v35 = &v111 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = a2;
  *&v144 = a2;
  BYTE8(v144) = a3;
  v36 = a4[3];
  v158 = a4[2];
  v159 = v36;
  v37 = a4[5];
  *v160 = a4[4];
  *&v160[16] = v37;
  v38 = a4[1];
  v156 = *a4;
  v157 = v38;
  *&v132[0] = 0;
  sub_1CF278908(&v144, &v156, v132, 0, v35);
  v116 = v25;
  v117 = v28;
  v118 = 0;
  v119 = v31;
  v114 = a4;
  v115 = a3;
  v40 = v17;
  v41 = v127;
  if (v35[24] >= 2u && *(v35 + 2))
  {
    sub_1CEFD90AC(v35, v40, type metadata accessor for VFSItem);
    swift_storeEnumTagMultiPayload();
    v129(v40);
    sub_1CEFCCC44(v40, &unk_1EC4BF300, &unk_1CFA006B0);
    v42 = v35;
    return sub_1CEFE5888(v42, type metadata accessor for VFSItem);
  }

  v43 = a1;
  v44 = objc_sync_enter(a1);
  if (v44)
  {
    goto LABEL_24;
  }

  v45 = objc_sync_exit(a1);
  v46 = v125;
  v47 = v126;
  if (v45)
  {
    goto LABEL_25;
  }

  v48 = v41;
  v49 = v35;
  sub_1CF25116C(v125);
  v50 = v40;
  if ((*(v48 + 48))(v46, 1, v47) == 1)
  {
    sub_1CEFCCC44(v46, &unk_1EC4BE310, qword_1CF9FCBE0);
    sub_1CF2B0124(&v156);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
    sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
    v51 = swift_allocError();
    *v52 = v156;
    v53 = *v160;
    v55 = v157;
    v54 = v158;
    *(v52 + 48) = v159;
    *(v52 + 64) = v53;
    *(v52 + 16) = v55;
    *(v52 + 32) = v54;
    v57 = v161;
    v56 = v162;
    v58 = *&v160[16];
    *(v52 + 128) = v163;
    *(v52 + 96) = v57;
    *(v52 + 112) = v56;
    *(v52 + 80) = v58;
    *v40 = v51;
    swift_storeEnumTagMultiPayload();
    v129(v40);
    sub_1CEFCCC44(v40, &unk_1EC4BF300, &unk_1CFA006B0);
    v42 = v49;
    return sub_1CEFE5888(v42, type metadata accessor for VFSItem);
  }

  v113 = v49;
  v60 = v119;
  (*(v48 + 32))(v119, v46, v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF290, &unk_1CFA006C0);
  v61 = *(v48 + 72);
  v62 = (*(v48 + 80) + 32) & ~*(v48 + 80);
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_1CF9FA450;
  v44 = objc_sync_enter(a1);
  if (v44)
  {
    goto LABEL_24;
  }

  v64 = a1[20];

  v45 = objc_sync_exit(v43);
  if (v45)
  {
LABEL_25:
    MEMORY[0x1EEE9AC00](v45);
    v109 = v43;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v108, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v65 = *(v48 + 16);
  v125 = (v48 + 16);
  v112 = v65;
  v65((v63 + v62), v64 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_trashURL, v47);

  v66 = sub_1CF7E208C(v63);
  swift_setDeallocating();
  v69 = *(v48 + 8);
  v67 = v48 + 8;
  v68 = v69;
  v69((v63 + v62), v47);
  swift_deallocClassInstance();
  if (!v66)
  {
    sub_1CF2B0124(&v156);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
    sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
    v85 = swift_allocError();
    *v86 = v156;
    v87 = *v160;
    v89 = v157;
    v88 = v158;
    *(v86 + 48) = v159;
    *(v86 + 64) = v87;
    *(v86 + 16) = v89;
    *(v86 + 32) = v88;
    v91 = v161;
    v90 = v162;
    v92 = *&v160[16];
    *(v86 + 128) = v163;
    *(v86 + 96) = v91;
    *(v86 + 112) = v90;
    *(v86 + 80) = v92;
    *v50 = v85;
    swift_storeEnumTagMultiPayload();
    v129(v50);
    sub_1CEFCCC44(v50, &unk_1EC4BF300, &unk_1CFA006B0);
    sub_1CEFE5888(v113, type metadata accessor for VFSItem);
    return v68(v60, v47);
  }

  v111 = v68;
  v70 = v113;
  v71 = *(v113 + 40);
  *&v144 = *(v113 + 32);
  *(&v144 + 1) = v71;

  v72 = v122;
  sub_1CF9E5CE8();
  v73 = v118;
  sub_1CF661EA4(v72, &v144, v43, &v156);
  (*(v123 + 8))(v72, v124);

  v127 = v67;
  if (!*(&v156 + 1))
  {
    v93 = *(v70 + 40);
    v94 = v129;
    *&v156 = *(v70 + 32);
    *(&v156 + 1) = v93;
    *&v157 = 1;
    BYTE8(v157) = 2;
    sub_1CF2B015C(&v156);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
    sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
    v95 = swift_allocError();
    *v96 = v156;
    v97 = *v160;
    v99 = v157;
    v98 = v158;
    *(v96 + 48) = v159;
    *(v96 + 64) = v97;
    *(v96 + 16) = v99;
    *(v96 + 32) = v98;
    v101 = v161;
    v100 = v162;
    v102 = *&v160[16];
    *(v96 + 128) = v163;
    *(v96 + 96) = v101;
    *(v96 + 112) = v100;
    *(v96 + 80) = v102;
    *v50 = v95;
    swift_storeEnumTagMultiPayload();

    v94(v50);
    sub_1CEFCCC44(v50, &unk_1EC4BF300, &unk_1CFA006B0);
    sub_1CEFE5888(v70, type metadata accessor for VFSItem);
    return v111(v119, v47);
  }

  v124 = v73;
  v74 = *(&v156 + 1);
  v75 = v156;
  v44 = objc_sync_enter(v43);
  if (v44)
  {
LABEL_24:
    MEMORY[0x1EEE9AC00](v44);
    v109 = v43;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v108, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v76 = v43[20];

  v45 = objc_sync_exit(v43);
  v77 = v117;
  if (v45)
  {
    goto LABEL_25;
  }

  v78 = v116;
  v112(v116, v76 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_trashURL, v47);

  v123 = v75;
  *&v156 = v75;
  *(&v156 + 1) = v74;
  v125 = v74;
  *&v144 = 47;
  *(&v144 + 1) = 0xE100000000000000;
  *&v132[0] = 58;
  *(&v132[0] + 1) = 0xE100000000000000;
  v79 = sub_1CEFE4E68();
  v108[0] = MEMORY[0x1E69E6158];
  v108[1] = v79;
  sub_1CF9E7668();
  sub_1CF9E5958();

  v80 = v77;
  v81 = v111;
  v82 = v111(v78, v47);
  MEMORY[0x1EEE9AC00](v82);
  v83 = v119;
  v109 = v119;
  v110 = v77;
  v84 = v124;
  sub_1CEFE1894(sub_1CF1B7D84);
  if (v84)
  {
    sub_1CEFE5888(v113, type metadata accessor for VFSItem);

    v81(v80, v47);
    v81(v83, v47);
    *v50 = v84;
    swift_storeEnumTagMultiPayload();
    v39 = v84;
    v129(v50);

    return sub_1CEFCCC44(v50, &unk_1EC4BF300, &unk_1CFA006B0);
  }

  else
  {
    v103 = v114[1];
    v153 = *v114;
    v154 = v103;
    v155 = *(v114 + 4);
    v152[0] = *(v114 + 49);
    *(v152 + 3) = *(v114 + 13);
    v104 = *(v114 + 8);
    v150 = *(v114 + 72);
    v151 = *(v114 + 11);
    sub_1CEFCCBDC(v114, &v144, &unk_1EC4BE330, &unk_1CF9FF010);

    v142 = v120;
    v143 = v115;
    v156 = v153;
    v157 = v154;
    *&v158 = v155;
    *(&v158 + 1) = 1;
    LOBYTE(v159) = 2;
    *(&v159 + 1) = v152[0];
    DWORD1(v159) = *(v152 + 3);
    *(&v159 + 1) = v123;
    *v160 = v125;
    *&v160[24] = v151;
    *&v160[8] = v150;
    v146 = v158;
    v147 = v159;
    v148 = *v160;
    v149 = *&v160[16];
    v144 = v153;
    v145 = v154;
    v141 = 0;
    sub_1CEFCCBDC(&v156, v132, &unk_1EC4BE330, &unk_1CF9FF010);
    v105 = v121;
    sub_1CF278908(&v142, &v144, &v141, 0, v121);
    v131[2] = v146;
    v131[3] = v147;
    v131[4] = v148;
    v131[5] = v149;
    v131[0] = v144;
    v131[1] = v145;
    sub_1CEFCCC44(v131, &unk_1EC4BE330, &unk_1CF9FF010);
    swift_storeEnumTagMultiPayload();
    v129(v105);
    sub_1CEFCCC44(v105, &unk_1EC4BF300, &unk_1CFA006B0);
    sub_1CEFE5888(v113, type metadata accessor for VFSItem);
    v132[0] = v153;
    v132[1] = v154;
    v133 = v155;
    v134 = 1;
    v135 = 2;
    *v136 = v152[0];
    *&v136[3] = *(v152 + 3);
    v137 = v123;
    v138 = v125;
    v140 = v151;
    v139 = v150;
    sub_1CEFCCC44(v132, &unk_1EC4BE330, &unk_1CF9FF010);
    v106 = v126;
    v107 = v111;
    v111(v117, v126);
    return v107(v119, v106);
  }
}