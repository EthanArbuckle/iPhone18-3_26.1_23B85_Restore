uint64_t sub_1CF26C02C(uint64_t a1, unsigned __int8 a2, unint64_t a3, void *a4, unint64_t a5, void (*a6)(void, void), uint64_t a7)
{
  v13 = a2;
  v14 = sub_1CF9E6118();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v13)
  {
    return (a6)(0, 0);
  }

  v91 = v17;
  v75 = v19;
  v76 = v16;
  v72 = a7;
  v73 = a6;
  if (qword_1EC4BCCF8 != -1)
  {
    goto LABEL_71;
  }

LABEL_4:
  v21 = *(off_1EC4BF328 + 2);
  v22 = *MEMORY[0x1E69A07A8];
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();

  v23 = a3;
  a3 = v21;
  v24 = sub_1CF2CC52C(a1, v23);
  v81 = v21;

  v92 = MEMORY[0x1E69E7CC0];
  v93 = MEMORY[0x1E69E7CC0];
  if (v24 >> 62)
  {
    a1 = sub_1CF9E7818();
  }

  else
  {
    a1 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a1)
  {
    v89 = a5;
    v90 = a4;
    v25 = 0;
    a5 = v24 & 0xC000000000000001;
    do
    {
      if (a5)
      {
        v26 = MEMORY[0x1D3869C30](v25, v24);
      }

      else
      {
        if (v25 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_68;
        }

        v26 = *(v24 + 8 * v25 + 32);
      }

      v27 = v26;
      v28 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        goto LABEL_67;
      }

      if ([v26 isSavedConflictResolved])
      {
        a3 = &v92;
        sub_1CF9E7A18();
        a4 = v92[2];
        sub_1CF9E7A58();
        sub_1CF9E7A68();
        sub_1CF9E7A28();
      }

      else
      {
      }

      ++v25;
    }

    while (v28 != a1);
    a1 = v92;
    a5 = v89;
    a4 = v90;
  }

  else
  {
    a1 = MEMORY[0x1E69E7CC0];
  }

  v29 = a4[2];
  if (v29)
  {
    if (a1 < 0 || (a1 & 0x4000000000000000) != 0)
    {
      v30 = sub_1CF9E7818();
    }

    else
    {
      v30 = *(a1 + 16);
    }

    a3 = v91;
    v31 = objc_opt_self();
    v32 = 0;
    v79 = *(a5 + qword_1EDEAFB20);
    v80 = v31;
    v78 = a4 + 4;
    v91 = a1 & 0xC000000000000001;
    v74 = (a3 + 8);
    *&v33 = 136315138;
    v71 = v33;
    v77 = v29;
    while (1)
    {
      if (v32 == v29)
      {
        goto LABEL_69;
      }

      v34 = &v78[8 * v32];
      a4 = *v34;
      a5 = v34[1];
      v35 = v34[7];
      v82 = v34[6];
      v37 = v34[4];
      v36 = v34[5];
      v38 = v34[2];
      v39 = v34[3];
      sub_1CEFE42D4(a4, a5);
      v83 = v38;

      sub_1CEFE42D4(v39, v37);

      v85 = v36;

      sub_1CEFE42D4(a4, a5);
      sub_1CEFE42D4(v39, v37);
      v88 = a5;
      v89 = a4;
      v40 = sub_1CF9E5B48();
      v87 = v39;
      v90 = v37;
      v41 = sub_1CF9E5B48();
      v42 = v35;
      v43 = v41;
      v86 = v32;
      v84 = v42;
      if (v42)
      {
        v44 = sub_1CF9E6888();
      }

      else
      {
        v44 = 0;
      }

      v45 = [objc_allocWithZone(MEMORY[0x1E69674E8]) initWithContentVersion:v40 metadataVersion:v43 lastEditorDeviceName:v44];

      sub_1CEFE4714(v87, v90);
      sub_1CEFE4714(v89, v88);
      v82 = v45;
      v46 = [v80 etagForVersion:v45 providerDomainID:v79];
      v47 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v49 = v48;

      a3 = MEMORY[0x1E69E7CC0];
      v92 = MEMORY[0x1E69E7CC0];
      if (v30)
      {
        v50 = 0;
        while (1)
        {
          if (v91)
          {
            v51 = MEMORY[0x1D3869C30](v50, a1);
          }

          else
          {
            if (v50 >= *(a1 + 16))
            {
              goto LABEL_66;
            }

            v51 = *(a1 + 8 * v50 + 32);
          }

          v52 = v51;
          a5 = v50 + 1;
          if (__OFADD__(v50, 1))
          {
            __break(1u);
LABEL_66:
            __break(1u);
LABEL_67:
            __break(1u);
LABEL_68:
            __break(1u);
LABEL_69:
            __break(1u);
LABEL_70:
            __break(1u);
LABEL_71:
            swift_once();
            goto LABEL_4;
          }

          v53 = [v51 fp_etag];
          if (v53)
          {
            a4 = v53;
            v54 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            a3 = v55;

            if (v54 == v47 && a3 == v49)
            {

LABEL_44:
              a3 = &v92;
              sub_1CF9E7A18();
              v58 = v92[2];
              sub_1CF9E7A58();
              sub_1CF9E7A68();
              sub_1CF9E7A28();
              goto LABEL_31;
            }

            v57 = sub_1CF9E8048();

            if (v57)
            {
              goto LABEL_44;
            }
          }

LABEL_31:
          ++v50;
          if (a5 == v30)
          {
            a3 = v92;
            break;
          }
        }
      }

      if ((a3 & 0x8000000000000000) != 0 || (a3 & 0x4000000000000000) != 0)
      {
        if (sub_1CF9E7818())
        {
LABEL_50:
          if ((a3 & 0xC000000000000001) != 0)
          {
            MEMORY[0x1D3869C30](0, a3);
            swift_unknownObjectRelease();
          }

          else
          {
            v59 = *(a3 + 16);

            if (!v59)
            {
              goto LABEL_70;
            }
          }

          v60 = fpfs_current_or_default_log();
          a4 = v75;
          sub_1CF9E6128();

          v61 = sub_1CF9E6108();
          v62 = sub_1CF9E7298();

          if (os_log_type_enabled(v61, v62))
          {
            v63 = swift_slowAlloc();
            v64 = swift_slowAlloc();
            v92 = v64;
            *v63 = v71;
            v65 = sub_1CEFD0DF0(v47, v49, &v92);

            *(v63 + 4) = v65;
            _os_log_impl(&dword_1CEFC7000, v61, v62, "⚔️  marking loser %s as resolved", v63, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v64);
            MEMORY[0x1D386CDC0](v64, -1, -1);
            MEMORY[0x1D386CDC0](v63, -1, -1);
          }

          else
          {
          }

          (*v74)(a4, v76);
          v66 = v82;
          [v82 setConflictResolved_];
          goto LABEL_58;
        }
      }

      else if (*(a3 + 16))
      {
        goto LABEL_50;
      }

      v66 = v82;
LABEL_58:
      v67 = v86;
      v68 = v66;
      a3 = &v93;
      MEMORY[0x1D3868FA0]();
      if (*((v93 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v93 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v69 = *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1CF9E6D88();
      }

      v32 = v67 + 1;
      sub_1CF9E6DE8();
      sub_1CEFE4714(v89, v88);

      sub_1CEFE4714(v87, v90);

      v29 = v77;
      if (v32 == v77)
      {
        v70 = v93;

        goto LABEL_64;
      }
    }
  }

  v70 = MEMORY[0x1E69E7CC0];
LABEL_64:
  v73(v70, 0);
}

uint64_t sub_1CF26C884(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, int a5, void *a6, uint64_t a7)
{
  v107 = a7;
  v108 = a2;
  v110 = a6;
  v111 = a4;
  v109 = a3;
  v9 = *(a1 + 48);
  v119 = *(a1 + 32);
  v120 = v9;
  v10 = *(a1 + 80);
  v121 = *(a1 + 64);
  v122 = v10;
  v11 = *(a1 + 16);
  v117 = *a1;
  v118 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v97 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF320, &unk_1CFA01C10);
  v17 = *(*(v16 - 1) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = (&v97 - v18);
  v20 = sub_1CF9E5A58();
  v21 = *(v20 - 8);
  v105 = v20;
  v106 = v21;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v97 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v102 = &v97 - v26;
  v27 = type metadata accessor for VFSItem(0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v97 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v37 = *(a1 + 64);
  if (v37)
  {
    v100 = v35;
    v101 = v33;
    v99 = v36;
    v103 = &v97 - v34;
    v104 = v16;
    v38 = *(a1 + 16);
    v114[0] = *a1;
    v39 = *(a1 + 32);
    v40 = *(a1 + 48);
    v114[1] = v38;
    v114[2] = v39;
    v114[3] = v40;
    *(&v114[4] + 8) = *(a1 + 72);
    v41 = *(a1 + 88);
    v113[8] = a5;
    *(&v114[5] + 1) = v41;
    *&v114[4] = v37;
    v112 = 8;
    *v113 = v111;
    sub_1CF278908(v113, v114, &v112, v107, v31);
    v98 = a5;
    sub_1CEFD90AC(v31, v103, type metadata accessor for VFSItem);
    v55 = objc_sync_enter(v110);
    if (v55)
    {
      MEMORY[0x1EEE9AC00](v55);
      *(&v97 - 2) = v110;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v97 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
    }

    v56 = v19;
    v57 = objc_sync_exit(v110);
    if (v57)
    {
      MEMORY[0x1EEE9AC00](v57);
      *(&v97 - 2) = v110;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v97 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
    }

    sub_1CF25116C(v15);
    v58 = v105;
    v59 = v106;
    if ((*(v106 + 48))(v15, 1, v105) == 1)
    {
      sub_1CEFCCC44(v15, &unk_1EC4BE310, qword_1CF9FCBE0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
      sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
      v60 = swift_allocError();
      v62 = v61;
      sub_1CF1B8150();
      v63 = swift_allocError();
      *v64 = 0xB000000000000008;
      *&v114[0] = v111;
      BYTE8(v114[0]) = v98;
      memset(&v114[1], 0, 96);
      v115 = v63;
      sub_1CF2A8DE0(v114);
      *v62 = v114[0];
      v65 = v114[1];
      v66 = v114[2];
      v67 = v114[4];
      *(v62 + 48) = v114[3];
      *(v62 + 64) = v67;
      *(v62 + 16) = v65;
      *(v62 + 32) = v66;
      v68 = v114[5];
      v69 = v114[6];
      v70 = v115;
      *(v62 + 128) = v116;
      *(v62 + 96) = v69;
      *(v62 + 112) = v70;
      *(v62 + 80) = v68;
      *v56 = v60;
      swift_storeEnumTagMultiPayload();
      v108(v56);
      sub_1CEFCCC44(v56, &qword_1EC4BF320, &unk_1CFA01C10);
      sub_1CEFE5888(v31, type metadata accessor for VFSItem);
      v71 = v103;
    }

    else
    {
      (*(v59 + 32))(v24, v15, v58);
      v72 = v102;
      (*(v59 + 16))(v102, v24, v58);
      v73 = *(v31 + 5);
      *&v114[0] = *(v31 + 4);
      *(&v114[0] + 1) = v73;

      sub_1CEFE52D8(0x6F632D6863746566, 0xED0000746E65746ELL, v114);

      v97 = *(v59 + 8);
      v106 = v59 + 8;
      v97(v24, v58);
      sub_1CEFE5888(v31, type metadata accessor for VFSItem);
      v74 = (v103 + *(v101 + 28));
      if (*v74 == 1 || (v74[*(type metadata accessor for ItemMetadata() + 80)] & 1) != 0)
      {
        sub_1CF2B1510(v114);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
        sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
        v75 = swift_allocError();
        *v76 = v114[0];
        v77 = v114[4];
        v79 = v114[1];
        v78 = v114[2];
        *(v76 + 48) = v114[3];
        *(v76 + 64) = v77;
        *(v76 + 16) = v79;
        *(v76 + 32) = v78;
        v81 = v114[6];
        v80 = v115;
        v82 = v114[5];
        *(v76 + 128) = v116;
        *(v76 + 96) = v81;
        *(v76 + 112) = v80;
        *(v76 + 80) = v82;
        *v56 = v75;
        swift_storeEnumTagMultiPayload();
        v108(v56);
        sub_1CEFCCC44(v56, &qword_1EC4BF320, &unk_1CFA01C10);
        v83 = v72;
      }

      else
      {
        v84 = objc_opt_self();
        v85 = sub_1CF9E5928();
        v86 = [v84 readingIntentWithURL:v85 options:1];
        v104 = v86;

        v87 = v111;
        *&v114[0] = v111;
        v88 = v98;
        BYTE8(v114[0]) = v98;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC20, &qword_1CF9FE480);
        v89 = swift_allocObject();
        *(v89 + 16) = xmmword_1CFA00250;
        *(v89 + 32) = v86;
        v90 = v100;
        sub_1CEFD90AC(v103, v100, type metadata accessor for VFSItem);
        v91 = (*(v99 + 80) + 41) & ~*(v99 + 80);
        v92 = (v28 + v91 + 7) & 0xFFFFFFFFFFFFFFF8;
        v93 = swift_allocObject();
        v94 = v87;
        v95 = v109;
        *(v93 + 16) = v108;
        *(v93 + 24) = v95;
        *(v93 + 32) = v94;
        *(v93 + 40) = v88;
        sub_1CEFE4C60(v90, v93 + v91, type metadata accessor for VFSItem);
        *(v93 + v92) = v110;
        *(v93 + ((v92 + 15) & 0xFFFFFFFFFFFFFFF8)) = v107;
        v96 = v104;

        sub_1CF265B04(v114, v89, 0, sub_1CF2B144C, v93);

        v83 = v102;
      }

      v97(v83, v105);
      v71 = v103;
    }

    return sub_1CEFE5888(v71, type metadata accessor for VFSItem);
  }

  else
  {
    v42 = a5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
    sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
    v43 = swift_allocError();
    v45 = v44;
    sub_1CF1B8150();
    v46 = swift_allocError();
    *v47 = 0xB000000000000000;
    *&v113[7] = v117;
    *&v113[23] = v118;
    *&v113[39] = v119;
    *&v113[55] = v120;
    *&v113[71] = v121;
    *&v113[87] = v122;
    *&v114[0] = v111;
    BYTE8(v114[0]) = v42;
    *(&v114[2] + 9) = *&v113[32];
    *(&v114[1] + 9) = *&v113[16];
    *(v114 + 9) = *v113;
    *(&v114[6] + 1) = *(&v122 + 1);
    v115 = v46;
    *(&v114[5] + 9) = *&v113[80];
    *(&v114[4] + 9) = *&v113[64];
    *(&v114[3] + 9) = *&v113[48];
    sub_1CF2A8DE0(v114);
    *v45 = v114[0];
    v48 = v114[1];
    v49 = v114[2];
    v50 = v114[4];
    *(v45 + 48) = v114[3];
    *(v45 + 64) = v50;
    *(v45 + 16) = v48;
    *(v45 + 32) = v49;
    v51 = v114[5];
    v52 = v114[6];
    v53 = v115;
    *(v45 + 128) = v116;
    *(v45 + 96) = v52;
    *(v45 + 112) = v53;
    *(v45 + 80) = v51;
    *v19 = v43;
    swift_storeEnumTagMultiPayload();
    v108(v19);
    return sub_1CEFCCC44(v19, &qword_1EC4BF320, &unk_1CFA01C10);
  }
}

void sub_1CF26D3D4(uint64_t a1, void *a2, void (*a3)(uint64_t *), uint64_t a4, uint64_t a5, int a6, uint64_t a7, void *a8, unint64_t a9)
{
  v168 = a8;
  v169 = a3;
  v167 = a6;
  v166 = a5;
  v12 = type metadata accessor for VFSItem(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v146 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1CF9E6118();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v146 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF320, &unk_1CFA01C10);
  v21 = *(*(v170 - 8) + 64);
  MEMORY[0x1EEE9AC00](v170);
  v23 = &v146 - v22;
  if (a2)
  {
    LODWORD(v185) = sub_1CF9E5328();
    sub_1CF196978();
    if (sub_1CF9E5658())
    {
      v24 = a7;
      v25 = a7 + *(v12 + 36);
      v26 = *v25;
      v165 = a4;
      v27 = *(v25 + 8);
      v28 = *(v25 + 16);
      v29 = *(v25 + 24);
      v168 = *(v24 + 16);
      LODWORD(v164) = *(v24 + 24);
      v30 = *(v24 + 32);
      v31 = *(v24 + 40);
      v161 = v28;
      v162 = v30;
      LOBYTE(v185) = v29;
      v32 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
      sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
      v33 = swift_allocError();
      *v34 = v166;
      *(v34 + 8) = v167;
      *(v34 + 16) = v26;
      *(v34 + 24) = v27;
      *(v34 + 32) = v161;
      *(v34 + 40) = v29;
      v35 = v168;
      *(v34 + 48) = 0;
      *(v34 + 56) = v35;
      *(v34 + 64) = v164;
      *(v34 + 72) = v162;
      *(v34 + 80) = v31;
      *(v34 + 88) = 0;
      *(v34 + 96) = 0;
      *(v34 + 104) = 0;
      *(v34 + 112) = a2;
      *(v34 + 120) = 0;
      sub_1CF2A8DE0(v34);
      *v32 = v33;
      swift_storeEnumTagMultiPayload();

      v36 = a2;
      v169(v32);
      v37 = v32;
LABEL_36:
      sub_1CEFCCC44(v37, &qword_1EC4BF320, &unk_1CFA01C10);
      return;
    }

    *v23 = a2;
    swift_storeEnumTagMultiPayload();
    v46 = a2;
    v169(v23);
LABEL_9:
    v37 = v23;
    goto LABEL_36;
  }

  v158 = v15;
  v159 = v17;
  v161 = v20;
  v156 = v16;
  v164 = &v146 - v22;
  v165 = a4;
  v38 = v168[17];
  v39 = v12;
  v40 = a7 + *(v12 + 36);
  v41 = *v40;
  v42 = a7 + *(v39 + 56);
  if (*(v42 + 4))
  {
    v43 = 0;
  }

  else
  {
    v43 = *v42;
  }

  v44 = *(v40 + 8);

  v210[0] = v41;
  v210[1] = 0;
  LODWORD(v162) = v43;
  v211 = v43;
  v212 = v44;
  v213 = 0;
  v214 = 0;
  v157 = v39;
  v45 = (*(*v38 + 440))(v215, v210, a7 + *(v39 + 28), 0, 0, 1, (a9 >> 6) & 1, 0, 0);
  v163 = a7;
  v160 = v40;
  v47 = v45;
  v49 = v48;
  v155 = v50;
  v154 = v51;
  v150 = v38;

  v194 = v215[0];
  v195 = v215[1];
  v196 = v215[2];
  v197 = v215[3];
  v52 = *(v40 + 16);
  v53 = *(a7 + 16);
  v54 = *(a7 + 24);
  v56 = *(a7 + 32);
  v55 = *(a7 + 40);
  LOBYTE(v185) = *(v40 + 24);
  v152 = v52;
  v153 = v41;
  v198 = v41;
  v199 = v44;
  v200 = v52;
  v151 = v185;
  v201 = v185;
  v202 = 0;
  v203 = v53;
  v204 = v54;
  v205 = v56;
  v206 = v55;
  v208 = 0;
  v207 = 0;
  v209 = 0;

  sub_1CEFCCC44(&v198, &unk_1EC4BE330, &unk_1CF9FF010);
  v57 = v47;
  v58 = v47 == v198;
  v59 = v44;
  v60 = v49;
  v61 = v158;
  v62 = v159;
  if (v58 && v60 == v199)
  {
    v63 = v201;
    if (v155)
    {
      if ((v201 & 1) == 0)
      {
        goto LABEL_15;
      }

LABEL_23:
      v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED50, &unk_1CFA00730);
      v92 = *(v91 + 48);
      v93 = v195;
      v23 = v164;
      *v164 = v194;
      *(v23 + 1) = v93;
      v94 = v197;
      *(v23 + 2) = v196;
      *(v23 + 3) = v94;
      sub_1CEFD90AC(a7, &v23[v92], type metadata accessor for VFSItem);
      (*(*(v91 - 8) + 56))(v23, 0, 1, v91);
      swift_storeEnumTagMultiPayload();
      sub_1CF1AE1DC(&v194, &v185);
      v169(v23);
      sub_1CF1AE25C(&v194);
      goto LABEL_9;
    }

    if (v154 != v200)
    {
      v63 = 1;
    }

    if ((v63 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

LABEL_15:
  v148 = v59;
  v64 = fpfs_current_or_default_log();
  v65 = v161;
  sub_1CF9E6128();
  sub_1CEFD90AC(a7, v61, type metadata accessor for VFSItem);
  v66 = sub_1CF9E6108();
  v67 = sub_1CF9E72A8();
  v149 = v66;
  v68 = os_log_type_enabled(v66, v67);
  v147 = v57;
  if (v68)
  {
    v69 = swift_slowAlloc();
    v146 = swift_slowAlloc();
    v173 = v146;
    *v69 = 136446466;
    v70 = sub_1CF25174C(v57, v60, v154, v155 & 1);
    v72 = sub_1CEFD0DF0(v70, v71, &v173);

    *(v69 + 4) = v72;
    *(v69 + 12) = 2082;
    v73 = v61 + *(v157 + 36);
    v74 = *v73;
    v75 = *(v73 + 8);
    v76 = *(v73 + 16);
    v77 = *(v61 + 16);
    v78 = *(v61 + 24);
    v80 = *(v61 + 32);
    v79 = *(v61 + 40);
    v172 = *(v73 + 24);
    *&v185 = v74;
    DWORD2(v185) = v75;
    *&v186 = v76;
    BYTE8(v186) = v172;
    *&v187 = 0;
    *(&v187 + 1) = v77;
    LOBYTE(v188) = v78;
    *(&v188 + 1) = v80;
    v189 = v79;
    v190 = 0uLL;

    sub_1CEFCCC44(&v185, &unk_1EC4BE330, &unk_1CF9FF010);
    v81 = sub_1CF25174C(v185, SDWORD2(v185), v186, SBYTE8(v186));
    v83 = v82;
    sub_1CEFE5888(v61, type metadata accessor for VFSItem);
    v84 = sub_1CEFD0DF0(v81, v83, &v173);

    *(v69 + 14) = v84;
    v85 = v149;
    _os_log_impl(&dword_1CEFC7000, v149, v67, "Failed to capture a stable version of item: %{public}s != %{public}s", v69, 0x16u);
    v86 = v146;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v86, -1, -1);
    MEMORY[0x1D386CDC0](v69, -1, -1);

    v87 = (*(v62 + 8))(v161, v156);
  }

  else
  {

    sub_1CEFE5888(v61, type metadata accessor for VFSItem);
    v87 = (*(v62 + 8))(v65, v156);
  }

  v88 = v153;
  v89 = v150;
  if (v194)
  {
    MEMORY[0x1EEE9AC00](v87);
    *(&v146 - 4) = v89;
    *(&v146 - 6) = 0;
    v145 = v90;
    sub_1CEFE1894(sub_1CF2B9F78);
    *(v89 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_deleteBusy) = 0;
    if (*(v89 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_garbageCollectionSource))
    {
      v95 = *(v89 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_garbageCollectionSource);
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      MEMORY[0x1D3869790](1, ObjectType);
      swift_unknownObjectRelease();
    }
  }

  v161 = *(v163 + 16);
  v97 = v161;
  v98 = *(v163 + 24);
  LODWORD(v159) = v98;
  v99 = *(v163 + 40);
  v158 = *(v163 + 32);
  v100 = v158;
  v101 = v151;
  v172 = v151;
  v102 = swift_allocObject();
  *(v102 + 16) = v147;
  *(v102 + 24) = v60;
  *(v102 + 32) = v154;
  *(v102 + 40) = v155 & 1;
  v171 = v101;
  v173 = v88;
  v103 = v148;
  v174 = v148;
  v104 = v152;
  v175 = v152;
  v176 = v101;
  v177 = 0;
  v178 = v97;
  v179 = v98;
  v180 = v100;
  v181 = v99;
  v183 = 0;
  v184 = 0;
  v182 = 0;
  swift_bridgeObjectRetain_n();
  sub_1CEFCCC44(&v173, &unk_1EC4BE330, &unk_1CF9FF010);
  v105 = v174;
  v106 = v175;
  v107 = v176;
  *(v102 + 48) = v173;
  *(v102 + 56) = v105;
  *(v102 + 64) = v106;
  *(v102 + 72) = v107;
  v108 = v102 | 0x3000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
  sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
  v109 = swift_allocError();
  v111 = v110;
  sub_1CF1B8150();
  v112 = swift_allocError();
  *v113 = v108;
  v114 = v103;
  *&v185 = v166;
  BYTE8(v185) = v167;
  *&v186 = v88;
  DWORD2(v186) = v103;
  *&v187 = v104;
  v115 = v88;
  BYTE8(v187) = v101;
  *&v188 = 0;
  *(&v188 + 1) = v161;
  LOBYTE(v189) = v159;
  *(&v189 + 1) = v158;
  v190 = v99;
  v191 = 0uLL;
  v192 = v112;
  sub_1CF2A8DE0(&v185);
  *v111 = v185;
  v116 = v186;
  v117 = v187;
  v118 = v189;
  *(v111 + 48) = v188;
  *(v111 + 64) = v118;
  *(v111 + 16) = v116;
  *(v111 + 32) = v117;
  v119 = v190;
  v120 = v191;
  v121 = v192;
  *(v111 + 128) = v193;
  *(v111 + 96) = v120;
  *(v111 + 112) = v121;
  *(v111 + 80) = v119;
  swift_willThrow();
  sub_1CF1AE25C(&v194);
  v122 = v109;
  LODWORD(v185) = sub_1CF9E5338();
  sub_1CF196978();
  LOBYTE(v99) = sub_1CF9E5658();

  v123 = v168;
  if ((v99 & 1) == 0)
  {
    v128 = v109;
    LODWORD(v185) = sub_1CF9E52B8();
    v129 = sub_1CF9E5658();

    if (v129)
    {
      v130 = (v163 + *(v157 + 44));
      if ((v130[1] & 1) == 0)
      {
        v131 = *v130;

        v109 = [objc_opt_self() fp:v131 errorForDataProtectionClass:?];
        swift_willThrow();
      }
    }

    v133 = v109;
    LODWORD(v185) = sub_1CF9E5328();
    v134 = sub_1CF9E5658();

    if (v134)
    {
      v135 = *(v160 + 16);
      v136 = *(v160 + 24);
      v168 = *(v163 + 16);
      LODWORD(v162) = *(v163 + 24);
      v137 = *(v163 + 40);
      v161 = *(v163 + 32);
      LOBYTE(v185) = v136;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
      sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
      v138 = swift_allocError();
      *v139 = v166;
      *(v139 + 8) = v167;
      *(v139 + 16) = v115;
      *(v139 + 24) = v114;
      *(v139 + 32) = v135;
      *(v139 + 40) = v136;
      v140 = v168;
      *(v139 + 48) = 0;
      *(v139 + 56) = v140;
      *(v139 + 64) = v162;
      *(v139 + 72) = v161;
      *(v139 + 80) = v137;
      *(v139 + 88) = 0;
      *(v139 + 96) = 0;
      *(v139 + 104) = 0;
      *(v139 + 112) = v109;
      *(v139 + 120) = 0;
      sub_1CF2A8DE0(v139);
      v141 = v164;
      *v164 = v138;
      swift_storeEnumTagMultiPayload();
      v142 = v109;

      v169(v141);

      v37 = v141;
    }

    else
    {
      v143 = v164;
      *v164 = v109;
      swift_storeEnumTagMultiPayload();
      v144 = v109;
      v169(v143);

      v37 = v143;
    }

    goto LABEL_36;
  }

  v185 = v115;
  v186 = __PAIR64__(v103, v162);
  *&v187 = 0;
  v124 = objc_sync_enter(v123);
  if (v124)
  {
    MEMORY[0x1EEE9AC00](v124);
    v145 = v123;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v146 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v125 = v123[20];

  v126 = objc_sync_exit(v123);
  if (v126)
  {
    MEMORY[0x1EEE9AC00](v126);
    v145 = v123;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v146 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v127 = *(v125 + 16);

  v132 = sub_1CEFDADE0(&v185, v127, 2097153);

  *&v185 = v166;
  BYTE8(v185) = v167;
  sub_1CF262BC8(&v185, v132);
  if ((v132 & 0x80000000) == 0)
  {
    close(v132);
  }
}

uint64_t sub_1CF26E2E4(uint64_t *a1, __int128 *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v50 = a4;
  v49 = a3;
  v45 = sub_1CF9E63D8();
  v44 = *(v45 - 8);
  v11 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v43 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v43 - v18;
  v47 = *a1;
  v46 = *(a1 + 8);
  v20 = a2[3];
  v59 = a2[2];
  v60 = v20;
  v21 = a2[5];
  v61 = a2[4];
  v62 = v21;
  v22 = a2[1];
  v57 = *a2;
  v58 = v22;
  v23 = *(v6 + 224);
  v48 = *(v6 + 216);
  v24 = sub_1CF9E6448();
  v25 = *(v24 - 8);
  (*(v25 + 56))(v19, 1, 1, v24);
  v26 = swift_allocObject();
  *(v26 + 16) = a5;
  *(v26 + 24) = a6;
  v27 = swift_allocObject();
  v28 = v60;
  *(v27 + 72) = v59;
  *(v27 + 88) = v28;
  v29 = v62;
  *(v27 + 104) = v61;
  *(v27 + 120) = v29;
  v30 = v58;
  *(v27 + 40) = v57;
  v31 = v47;
  *(v27 + 16) = v6;
  *(v27 + 24) = v31;
  *(v27 + 32) = v46;
  *(v27 + 56) = v30;
  v32 = v50;
  *(v27 + 136) = v49;
  *(v27 + 144) = v32;
  *(v27 + 152) = a5;
  *(v27 + 160) = a6;
  v33 = swift_allocObject();
  v33[2] = sub_1CF2B1400;
  v33[3] = v26;
  v33[4] = v23;
  swift_retain_n();
  v49 = v48;

  sub_1CEFCCBDC(&v57, &aBlock, &unk_1EC4BE330, &unk_1CF9FF010);

  v34 = fpfs_current_log();
  v48 = *(v23 + 16);
  v50 = v19;
  sub_1CEFCCBDC(v19, v17, &unk_1EC4BE370, qword_1CFA01B30);
  if ((*(v25 + 48))(v17, 1, v24) == 1)
  {
    sub_1CEFCCC44(v17, &unk_1EC4BE370, qword_1CFA01B30);
    v35 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v36 = v43;
    sub_1CF9E6438();
    (*(v25 + 8))(v17, v24);
    v35 = sub_1CF9E63C8();
    (*(v44 + 8))(v36, v45);
  }

  v37 = swift_allocObject();
  v37[2] = v34;
  v37[3] = sub_1CF2B1404;
  v37[4] = v27;
  v55 = sub_1CF2BA17C;
  v56 = v37;
  aBlock = MEMORY[0x1E69E9820];
  v52 = 1107296256;
  v53 = sub_1CEFCA444;
  v54 = &block_descriptor_825;
  v38 = _Block_copy(&aBlock);
  v39 = v34;

  v55 = sub_1CF2B141C;
  v56 = v33;
  aBlock = MEMORY[0x1E69E9820];
  v52 = 1107296256;
  v53 = sub_1CEFCA444;
  v54 = &block_descriptor_828;
  v40 = _Block_copy(&aBlock);

  v41 = v49;
  fp_task_tracker_async_and_qos(v48, v49, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v35, v38, v40);
  _Block_release(v40);
  _Block_release(v38);

  return sub_1CEFCCC44(v50, &unk_1EC4BE370, qword_1CFA01B30);
}

void sub_1CF26E89C(void *a1, uint64_t a2, char a3, _OWORD *a4, uint64_t a5, off_t a6, void (*a7)(char *, uint64_t))
{
  v11 = a4[3];
  *&v39[32] = a4[2];
  v40 = v11;
  v12 = a4[5];
  v41 = a4[4];
  v42 = v12;
  v13 = a4[1];
  *v39 = *a4;
  *&v39[16] = v13;
  v43 = a2;
  v44 = a3;
  sub_1CEFCCBDC(a4, v47, &unk_1EC4BE330, &unk_1CF9FF010);
  sub_1CEFDAA48(&v43, v39, v45);
  v47[2] = *&v39[32];
  v47[3] = v40;
  v47[4] = v41;
  v47[5] = v42;
  v47[0] = *v39;
  v47[1] = *&v39[16];
  sub_1CEFCCC44(v47, &unk_1EC4BECD0, &unk_1CF9FEF80);
  *v39 = v45[0];
  *&v39[16] = v45[1];
  *&v39[32] = v46;
  v14 = objc_sync_enter(a1);
  if (v14)
  {
    MEMORY[0x1EEE9AC00](v14);
    v37 = a1;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v36, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v15 = a1[20];

  v16 = objc_sync_exit(a1);
  if (v16)
  {
    MEMORY[0x1EEE9AC00](v16);
    v37 = a1;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v36, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v17 = *(v15 + 16);

  v18 = sub_1CEFDADE0(v39, v17, 0x200000);

  v20 = lseek(v18, a5 & ~(a5 >> 63), 4);
  v38 = a7;
  if ((v20 & 0x8000000000000000) == 0)
  {
    v21 = v20;
    v22 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v23 = lseek(v18, v21, 3);
      if (v23 < 0)
      {
        v32 = MEMORY[0x1D38683F0]();
        *v39 = 26;
        memset(&v39[8], 0, 32);
        v39[40] = 19;
        v29 = sub_1CF19BBE4(v32, v39);
        sub_1CF1969CC(v39);
        swift_willThrow();
        goto LABEL_21;
      }

      v24 = v23;
      if (v23 >= a6)
      {
        break;
      }

      if (v23 < v21)
      {
        __break(1u);
        goto LABEL_34;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_1CF1F6BC4(0, *(v22 + 2) + 1, 1, v22);
      }

      v26 = *(v22 + 2);
      v25 = *(v22 + 3);
      if (v26 >= v25 >> 1)
      {
        v22 = sub_1CF1F6BC4((v25 > 1), v26 + 1, 1, v22);
      }

      *(v22 + 2) = v26 + 1;
      v27 = &v22[16 * v26];
      *(v27 + 4) = v21;
      *(v27 + 5) = v24;
      v21 = lseek(v18, v24, 4);
      a5 = v24;
      if ((v21 & 0x8000000000000000) != 0)
      {
        goto LABEL_17;
      }
    }

    a5 = v21;
    if (v21 == v23)
    {
      goto LABEL_30;
    }

LABEL_24:
    if (((a5 | v24) & 0x8000000000000000) == 0)
    {
      if (v24 < a5)
      {
LABEL_34:
        __break(1u);
      }

      else if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_27:
        v34 = *(v22 + 2);
        v33 = *(v22 + 3);
        if (v34 >= v33 >> 1)
        {
          v22 = sub_1CF1F6BC4((v33 > 1), v34 + 1, 1, v22);
        }

        *(v22 + 2) = v34 + 1;
        v35 = &v22[16 * v34];
        *(v35 + 4) = a5;
        *(v35 + 5) = v24;
        goto LABEL_30;
      }

      v22 = sub_1CF1F6BC4(0, *(v22 + 2) + 1, 1, v22);
      goto LABEL_27;
    }

LABEL_30:
    if ((v18 & 0x80000000) == 0)
    {
      close(v18);
    }

    v38(v22, 0);

    return;
  }

  v22 = MEMORY[0x1E69E7CC0];
  v24 = -1;
LABEL_17:
  v28 = MEMORY[0x1D38683F0]();
  *v39 = 26;
  memset(&v39[8], 0, 32);
  v39[40] = 19;
  v29 = sub_1CF19BBE4(v28, v39);
  sub_1CF1969CC(v39);
  swift_willThrow();
  v30 = v29;
  *v39 = sub_1CF9E52A8();
  sub_1CF196978();
  v31 = sub_1CF9E5658();

  if (v31)
  {

    if (a5 == v24)
    {
      goto LABEL_30;
    }

    goto LABEL_24;
  }

LABEL_21:

  if ((v18 & 0x80000000) == 0)
  {
    close(v18);
  }

  v19 = v29;
  v38(v29, 1);
}

uint64_t sub_1CF26ED44(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v88 = a5;
  v89 = a6;
  v86 = a4;
  v96 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v80 - v12;
  v14 = sub_1CF9E63D8();
  v95 = *(v14 - 8);
  v15 = *(v95 + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v92 = v80 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v22 = v80 - v21;
  v90 = sub_1CF9E6448();
  v87 = *(v90 - 8);
  v23 = *(v87 + 64);
  v24 = MEMORY[0x1EEE9AC00](v90);
  v26 = v80 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v28 = v80 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x1EEE9AC00](v29 - 8);
  v85 = v80 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v94 = v80 - v33;
  v83 = *v96;
  v82 = *(v96 + 8);
  v34 = a2[1];
  v109 = *a2;
  v110 = v34;
  v35 = a2[3];
  v111 = a2[2];
  v112 = v35;
  v36 = a3[3];
  v105 = a3[2];
  v106 = v36;
  v37 = a3[5];
  v107 = a3[4];
  v108 = v37;
  v38 = a3[1];
  v103 = *a3;
  v104 = v38;
  v39 = v7[27];
  v84 = v7[28];
  v91 = v7;
  v40 = v95;
  v93 = v39;
  sub_1CF9E6418();
  qos_class_self();
  sub_1CF9E63B8();
  v41 = *(v40 + 48);
  v96 = v14;
  if (v41(v13, 1, v14) == 1)
  {
    v42 = v96;
    (*(v40 + 104))(v22, *MEMORY[0x1E69E7FA0], v96);
    v43 = v41(v13, 1, v42);
    v44 = v40;
    if (v43 != 1)
    {
      sub_1CEFCCC44(v13, &unk_1EC4BE380, &qword_1CFA01BA0);
    }
  }

  else
  {
    (*(v40 + 32))(v22, v13, v96);
    v44 = v40;
  }

  sub_1CF9E6428();
  v45 = v92;
  sub_1CF9E6438();
  v46 = sub_1CF9E63C8();
  v47 = *(v44 + 8);
  v48 = v96;
  v47(v45, v96);
  sub_1CF9E6438();
  v49 = sub_1CF9E63C8();
  v81 = v47;
  v95 = v44 + 8;
  v47(v18, v48);
  v50 = v87;
  v51 = *(v87 + 8);
  if (v46 >= v49)
  {
    v52 = v26;
  }

  else
  {
    v52 = v28;
  }

  if (v46 >= v49)
  {
    v53 = v28;
  }

  else
  {
    v53 = v26;
  }

  v54 = v90;
  v80[0] = *(v87 + 8);
  v80[1] = v87 + 8;
  v51(v52, v90);
  v55 = v94;
  (*(v50 + 32))(v94, v53, v54);
  (*(v50 + 56))(v55, 0, 1, v54);
  v56 = swift_allocObject();
  v57 = v106;
  *(v56 + 48) = v105;
  *(v56 + 64) = v57;
  v58 = v108;
  *(v56 + 80) = v107;
  *(v56 + 96) = v58;
  v59 = v104;
  *(v56 + 16) = v103;
  *(v56 + 32) = v59;
  v61 = v88;
  v60 = v89;
  *(v56 + 112) = v88;
  *(v56 + 120) = v60;
  *(v56 + 128) = v83;
  *(v56 + 136) = v82;
  v62 = v86;
  *(v56 + 144) = v91;
  *(v56 + 152) = v62;
  v63 = v112;
  *(v56 + 192) = v111;
  *(v56 + 208) = v63;
  v64 = v110;
  *(v56 + 160) = v109;
  *(v56 + 176) = v64;
  v65 = swift_allocObject();
  v65[2] = v61;
  v65[3] = v60;
  v66 = v84;
  v65[4] = v84;
  swift_retain_n();
  sub_1CEFCCBDC(&v103, &v97, &unk_1EC4BECD0, &unk_1CF9FEF80);

  sub_1CEFCCBDC(&v109, &v97, &unk_1EC4BF260, &unk_1CFA01B60);

  v89 = fpfs_current_log();
  v91 = *(v66 + 16);
  v67 = *(v50 + 48);
  v68 = v67(v55, 1, v54);
  v69 = v55;
  v70 = v85;
  sub_1CEFCCBDC(v69, v85, &unk_1EC4BE370, qword_1CFA01B30);
  if (v67(v70, 1, v54) == 1)
  {
    sub_1CEFCCC44(v70, &unk_1EC4BE370, qword_1CFA01B30);
    v71 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    sub_1CF9E6438();
    (v80[0])(v70, v54);
    v71 = sub_1CF9E63C8();
    v81(v45, v96);
  }

  if (v68 == 1)
  {
    v72 = DISPATCH_BLOCK_INHERIT_QOS_CLASS;
  }

  else
  {
    v72 = DISPATCH_BLOCK_ENFORCE_QOS_CLASS;
  }

  v73 = swift_allocObject();
  v74 = v89;
  v73[2] = v89;
  v73[3] = sub_1CF2B1348;
  v73[4] = v56;
  v101 = sub_1CF2BA17C;
  v102 = v73;
  v97 = MEMORY[0x1E69E9820];
  v98 = 1107296256;
  v99 = sub_1CEFCA444;
  v100 = &block_descriptor_794;
  v75 = _Block_copy(&v97);
  v76 = v74;

  v101 = sub_1CF2B1364;
  v102 = v65;
  v97 = MEMORY[0x1E69E9820];
  v98 = 1107296256;
  v99 = sub_1CEFCA444;
  v100 = &block_descriptor_797;
  v77 = _Block_copy(&v97);

  v78 = v93;
  fp_task_tracker_async_and_qos(v91, v93, v72, v71, v75, v77);
  _Block_release(v77);
  _Block_release(v75);

  return sub_1CEFCCC44(v94, &unk_1EC4BE370, qword_1CFA01B30);
}

uint64_t sub_1CF26F520(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, _OWORD *a8)
{
  v171 = a7;
  v175 = a5;
  v173 = a2;
  v174 = a3;
  v216 = *MEMORY[0x1E69E9840];
  v11 = a8[1];
  v206 = *a8;
  v207 = v11;
  v12 = a8[2];
  v13 = a8[3];
  v167 = a8;
  v208 = v12;
  v209 = v13;
  v14 = *(a1 + 48);
  v212 = *(a1 + 32);
  v213 = v14;
  v15 = *(a1 + 80);
  v214 = *(a1 + 64);
  v215 = v15;
  v16 = *(a1 + 16);
  v210 = *a1;
  v211 = v16;
  v17 = sub_1CF9E6118();
  v169 = *(v17 - 8);
  v170 = v17;
  v18 = *(v169 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v172 = &v144 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1CF9E6388();
  v164 = *(v20 - 8);
  v165 = v20;
  v21 = *(v164 + 64);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v163 = (&v144 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v22);
  v161 = &v144 - v24;
  v162 = sub_1CF9E6498();
  v160 = *(v162 - 8);
  v25 = *(v160 + 64);
  MEMORY[0x1EEE9AC00](v162);
  v159 = &v144 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v155 = &v144 - v29;
  v30 = sub_1CF9E63D8();
  v152 = *(v30 - 8);
  v153 = v30;
  v31 = *(v152 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v154 = &v144 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1CF9E6448();
  v157 = *(v33 - 8);
  v158 = v33;
  v34 = *(v157 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v156 = &v144 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1CF9E73D8();
  v150 = *(v36 - 8);
  v151 = v36;
  v37 = *(v150 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v149 = &v144 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for ItemMetadata();
  v40 = *(*(v39 - 1) + 64);
  MEMORY[0x1EEE9AC00](v39);
  v166 = &v144 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for VFSItem(0);
  v43 = *(*(v42 - 1) + 64);
  MEMORY[0x1EEE9AC00](v42);
  v45 = &v144 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  v47 = *(*(v46 - 8) + 64);
  MEMORY[0x1EEE9AC00](v46);
  v49 = (&v144 - v48);
  v50 = *(a1 + 64);
  if (!v50)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
    sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
    v56 = swift_allocError();
    v58 = v57;
    sub_1CF1B8150();
    v59 = swift_allocError();
    *v60 = 0xB000000000000000;
    *(v183 + 7) = v210;
    *(&v183[1] + 7) = v211;
    *(&v183[2] + 7) = v212;
    *(&v183[3] + 7) = v213;
    *(&v183[4] + 7) = v214;
    *(&v183[5] + 7) = v215;
    *&v196[0] = a4;
    BYTE8(v196[0]) = v175;
    *(&v196[2] + 9) = v183[2];
    *(&v196[1] + 9) = v183[1];
    *(v196 + 9) = v183[0];
    *(&v196[6] + 1) = *(&v215 + 1);
    *(&v196[5] + 9) = v183[5];
    *(&v196[4] + 9) = v183[4];
    *(&v196[3] + 9) = v183[3];
    v197 = v59;
    sub_1CF2A8DE0(v196);
    *v58 = v196[0];
    v61 = v196[1];
    v62 = v196[2];
    v63 = v196[4];
    *(v58 + 48) = v196[3];
    *(v58 + 64) = v63;
    *(v58 + 16) = v61;
    *(v58 + 32) = v62;
    v64 = v196[5];
    v65 = v196[6];
    v66 = v197;
    *(v58 + 128) = v198;
    *(v58 + 96) = v65;
    *(v58 + 112) = v66;
    *(v58 + 80) = v64;
    *v49 = v56;
    swift_storeEnumTagMultiPayload();
    v173(v49);
    result = sub_1CEFCCC44(v49, &unk_1EC4BF310, &unk_1CF9FDB30);
    goto LABEL_10;
  }

  v51 = v49;
  v168 = v46;
  v52 = *(a1 + 16);
  v196[0] = *a1;
  v196[1] = v52;
  v53 = *(a1 + 48);
  v196[2] = *(a1 + 32);
  v196[3] = v53;
  *(&v196[4] + 8) = *(a1 + 72);
  v54 = *(a1 + 88);
  *&v183[0] = a4;
  v55 = v175;
  BYTE8(v183[0]) = v175;
  *(&v196[5] + 1) = v54;
  *&v196[4] = v50;
  *&v191 = 8;
  sub_1CF278908(v183, v196, &v191, v171 | 1, v45);
  v68 = v55;
  v148 = a6;
  v171 = a4;
  v69 = &v45[v42[7]];
  v70 = *v69;
  if (v70 == 1 || v69[v39[20]] != 1)
  {
    v81 = &v45[v42[9]];
    v167 = *v81;
    LODWORD(v166) = *(v81 + 2);
    v165 = *(v81 + 2);
    v82 = v68;
    v83 = v81[24];
    v172 = *(v45 + 2);
    LODWORD(v170) = v45[24];
    v84 = *(v45 + 5);
    v169 = *(v45 + 4);
    LOBYTE(v183[0]) = v83;
    v85 = v69;
    v86 = swift_allocObject();
    *(v86 + 16) = v70;
    *(v86 + 17) = v85[v39[20]];
    v87 = v86 | 0x5000000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
    sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
    v88 = swift_allocError();
    v90 = v89;
    sub_1CF1B8150();
    v91 = swift_allocError();
    *v92 = v87;
    *&v196[0] = v171;
    BYTE8(v196[0]) = v82;
    *&v196[1] = v167;
    DWORD2(v196[1]) = v166;
    *&v196[2] = v165;
    BYTE8(v196[2]) = v83;
    *&v196[3] = 0;
    *(&v196[3] + 1) = v172;
    LOBYTE(v196[4]) = v170;
    *(&v196[4] + 1) = v169;
    v196[5] = v84;
    v196[6] = 0uLL;
    v197 = v91;
    sub_1CF2A8DE0(v196);
    *v90 = v196[0];
    v93 = v196[1];
    v94 = v196[2];
    v95 = v196[4];
    *(v90 + 48) = v196[3];
    *(v90 + 64) = v95;
    *(v90 + 16) = v93;
    *(v90 + 32) = v94;
    v96 = v196[5];
    v97 = v196[6];
    v98 = v197;
    *(v90 + 128) = v198;
    *(v90 + 96) = v97;
    *(v90 + 112) = v98;
    *(v90 + 80) = v96;
    *v51 = v88;
    swift_storeEnumTagMultiPayload();

    goto LABEL_9;
  }

  v71 = v167;
  v72 = *(v167 + 3);
  if (v72 >> 60 == 11)
  {
    sub_1CF2B0794(v196);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
    sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
    v73 = swift_allocError();
    *v74 = v196[0];
    v75 = v196[4];
    v77 = v196[1];
    v76 = v196[2];
    *(v74 + 48) = v196[3];
    *(v74 + 64) = v75;
    *(v74 + 16) = v77;
    *(v74 + 32) = v76;
    v79 = v196[6];
    v78 = v197;
    v80 = v196[5];
    *(v74 + 128) = v198;
    *(v74 + 96) = v79;
    *(v74 + 112) = v78;
    *(v74 + 80) = v80;
    *v49 = v73;
    swift_storeEnumTagMultiPayload();
LABEL_9:
    v173(v51);
    sub_1CEFCCC44(v51, &unk_1EC4BF310, &unk_1CF9FDB30);
    result = sub_1CEFE5888(v45, type metadata accessor for VFSItem);
    goto LABEL_10;
  }

  v191 = *v167;
  v192 = *(v167 + 2);
  v193 = v72;
  v100 = v167[3];
  v194 = v167[2];
  v195 = v100;
  v146 = v69;
  v101 = v166;
  v102 = sub_1CEFD90AC(v69, v166, type metadata accessor for ItemMetadata);
  v147 = &v144;
  *(v101 + v39[20]) = 0;
  v103 = *(v148 + 136);
  v176 = 0;
  v104 = v71[1];
  v186 = *v71;
  v187 = v104;
  v105 = v71[3];
  v188 = v71[2];
  v189 = v105;
  MEMORY[0x1EEE9AC00](v102);
  *(&v144 - 2) = v103;
  *(&v144 - 1) = &v176;
  v106 = *(*v103 + 600);
  v190[0] = v206;
  v190[1] = v207;
  v190[2] = v208;
  v190[3] = v209;
  sub_1CF1AE1DC(v190, v196);
  sub_1CF1AE1DC(&v191, v196);
  v106(&v186, sub_1CF2B1370, &v144 - 4, MEMORY[0x1E69E7CA8] + 8);
  v107 = v173;
  v108 = v146;
  v145 = v103;
  v185[0] = v186;
  v185[1] = v187;
  v185[2] = v188;
  v185[3] = v189;
  sub_1CEFCCC44(v185, &unk_1EC4BF260, &unk_1CFA01B60);
  v109 = v176;
  if (v176 <= 1023)
  {
    v110 = v166;
    if (!v176)
    {
      goto LABEL_22;
    }

    if (v176 == 512)
    {
      v109 = 2;
      goto LABEL_22;
    }

LABEL_21:
    v109 = 1;
    goto LABEL_22;
  }

  v110 = v166;
  if (v176 == 1024)
  {
    v109 = 3;
    goto LABEL_22;
  }

  if (v176 == 2048)
  {
    v109 = 4;
    goto LABEL_22;
  }

  if (v176 != 0x8000)
  {
    goto LABEL_21;
  }

  v109 = 5;
LABEL_22:
  v110[v39[21]] = v109;
  v110[v39[23]] = 5;
  sub_1CF2B138C(v110, v108);
  v111 = &v45[v42[9]];
  v112 = *v111;
  v113 = &v45[v42[14]];
  if (v113[4])
  {
    v114 = 0;
  }

  else
  {
    v114 = *v113;
  }

  v115 = *(v111 + 2);

  v178[0] = v112;
  v178[1] = 0;
  v179 = v114;
  v180 = v115;
  v181 = 0;
  v182 = 0;
  sub_1CEFE528C(v183);
  v202 = v183[12];
  v203 = v183[13];
  v204 = v183[14];
  v198 = v183[8];
  v199 = v183[9];
  v200 = v183[10];
  v201 = v183[11];
  v196[4] = v183[4];
  v196[5] = v183[5];
  v196[6] = v183[6];
  v197 = v183[7];
  v196[0] = v183[0];
  v196[1] = v183[1];
  v205 = v184;
  v196[2] = v183[2];
  v196[3] = v183[3];
  sub_1CEFCCBDC(v167, &v177, &unk_1EC4BF260, &unk_1CFA01B60);
  v116 = v145;

  sub_1CF1A9D0C(v196, v110, v116, &v191, v178, v117);
  v172 = &v144;
  v118 = v45;

  v119 = swift_allocObject();
  v120 = v174;
  *(v119 + 16) = v107;
  *(v119 + 24) = v120;
  *(v119 + 32) = v171;
  v121 = v175;
  v122 = v119;
  *(v119 + 40) = v175;
  v173 = sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
  v123 = *(v148 + 216);
  *&v183[0] = MEMORY[0x1E69E7CC0];
  sub_1CF2A9448(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0]);

  v124 = v123;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
  sub_1CEFCCCEC(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0);
  v125 = v149;
  v126 = v151;
  sub_1CF9E77B8();
  v127 = sub_1CF9E73E8();

  (*(v150 + 8))(v125, v126);
  qos_class_self();
  v128 = v155;
  sub_1CF9E63B8();
  v130 = v152;
  v129 = v153;
  v131 = *(v152 + 48);
  if (v131(v128, 1, v153) == 1)
  {
    (*(v130 + 104))(v154, *MEMORY[0x1E69E7FA0], v129);
    v132 = v131(v128, 1, v129);
    v133 = v118;
    if (v132 != 1)
    {
      sub_1CEFCCC44(v128, &unk_1EC4BE380, &qword_1CFA01BA0);
    }
  }

  else
  {
    (*(v130 + 32))(v154, v128, v129);
    v133 = v118;
  }

  ObjectType = swift_getObjectType();
  v135 = v156;
  sub_1CF9E6428();
  v136 = swift_allocObject();
  v137 = v171;
  *(v136 + 16) = v148;
  *(v136 + 24) = v137;
  *(v136 + 32) = v121;
  *(v136 + 40) = 0u;
  *(v136 + 56) = 0u;
  *(v136 + 72) = 0u;
  *(v136 + 88) = 0u;
  *(v136 + 104) = 0u;
  *(v136 + 120) = 0u;
  *(v136 + 136) = 0;
  *(v136 + 144) = 1;
  *(v136 + 152) = v127;
  *(v136 + 160) = sub_1CF2B13F0;
  *(v136 + 168) = v122;

  swift_unknownObjectRetain();

  sub_1CEFD5828(0, v135, sub_1CF2B9F4C, v136);

  (*(v157 + 8))(v135, v158);
  v138 = v159;
  sub_1CF9E6478();
  v139 = v161;
  sub_1CEFD5B64(v161);
  v140 = v163;
  sub_1CEFD5BD8(v163);
  MEMORY[0x1D3869770](v138, v139, v140, ObjectType);
  v141 = *(v164 + 8);
  v142 = v140;
  v143 = v165;
  v141(v142, v165);
  v141(v139, v143);
  (*(v160 + 8))(v138, v162);
  sub_1CF9E7448();

  swift_unknownObjectRelease();
  sub_1CEFCCC44(v167, &unk_1EC4BF260, &unk_1CFA01B60);
  sub_1CEFE5888(v166, type metadata accessor for ItemMetadata);
  result = sub_1CEFE5888(v133, type metadata accessor for VFSItem);
LABEL_10:
  v99 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CF2707E4(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, int a5)
{
  v41 = a5;
  v40 = a4;
  v42 = a3;
  v43 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = (&v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v12 = (&v40 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v40 - v15;
  v17 = type metadata accessor for VFSItem(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CEFCCBDC(a1, v12, &unk_1EC4BF310, &unk_1CF9FDB30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *v12;
    *&v44 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    swift_willThrowTypedImpl();
    *v10 = v22;
    swift_storeEnumTagMultiPayload();
    v23 = v22;
    v43(v10);

    return sub_1CEFCCC44(v10, &unk_1EC4BF310, &unk_1CF9FDB30);
  }

  v24 = v43;
  sub_1CEFE55D0(v12, v16, &unk_1EC4BEC00, &unk_1CF9FCB60);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_1CEFCCC44(v16, &unk_1EC4BEC00, &unk_1CF9FCB60);
    v25 = swift_allocObject();
    v26 = swift_allocObject();
    *(v26 + 16) = 1;
    *(v25 + 16) = v26;
    v27 = v25 | 0xA000000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
    sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
    v28 = swift_allocError();
    v30 = v29;
    sub_1CF1B8150();
    v31 = swift_allocError();
    *v32 = v27;
    *&v44 = v40;
    BYTE8(v44) = v41;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = v31;
    sub_1CF2A8DE0(&v44);
    *v30 = v44;
    v33 = v45;
    v34 = v46;
    v35 = v48;
    *(v30 + 48) = v47;
    *(v30 + 64) = v35;
    *(v30 + 16) = v33;
    *(v30 + 32) = v34;
    v36 = v49;
    v37 = v50;
    v38 = v51;
    *(v30 + 128) = v52;
    *(v30 + 96) = v37;
    *(v30 + 112) = v38;
    *(v30 + 80) = v36;
    *v10 = v28;
    swift_storeEnumTagMultiPayload();
    v24(v10);
    return sub_1CEFCCC44(v10, &unk_1EC4BF310, &unk_1CF9FDB30);
  }

  sub_1CEFE4C60(v16, v21, type metadata accessor for VFSItem);
  sub_1CEFD90AC(v21, v10, type metadata accessor for VFSItem);
  (*(v18 + 56))(v10, 0, 1, v17);
  swift_storeEnumTagMultiPayload();
  v24(v10);
  sub_1CEFCCC44(v10, &unk_1EC4BF310, &unk_1CF9FDB30);
  return sub_1CEFE5888(v21, type metadata accessor for VFSItem);
}

uint64_t sub_1CF270C78(__int128 *a1, uint64_t a2, void *a3)
{
  v74 = a3;
  v73 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v66 - v7;
  v9 = sub_1CF9E63D8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v70 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v77 = &v66 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v66 - v16;
  v75 = sub_1CF9E6448();
  v18 = *(v75 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v75);
  v22 = &v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v66 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8);
  v72 = &v66 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v79 = &v66 - v29;
  v30 = a1[1];
  v86 = *a1;
  v87 = v30;
  v31 = a1[3];
  v88 = a1[2];
  v89 = v31;
  v71 = *(v3 + 224);
  v76 = v3;
  v78 = *(v3 + 216);
  sub_1CF9E6418();
  qos_class_self();
  sub_1CF9E63B8();
  v32 = *(v10 + 48);
  if (v32(v8, 1, v9) == 1)
  {
    (*(v10 + 104))(v17, *MEMORY[0x1E69E7FA0], v9);
    if (v32(v8, 1, v9) != 1)
    {
      sub_1CEFCCC44(v8, &unk_1EC4BE380, &qword_1CFA01BA0);
    }
  }

  else
  {
    (*(v10 + 32))(v17, v8, v9);
  }

  sub_1CF9E6428();
  v33 = v77;
  sub_1CF9E6438();
  v34 = sub_1CF9E63C8();
  v35 = *(v10 + 8);
  v69 = v10 + 8;
  v35(v33, v9);
  v36 = v70;
  sub_1CF9E6438();
  v37 = sub_1CF9E63C8();
  v70 = v35;
  v35(v36, v9);
  v38 = *(v18 + 8);
  if (v34 >= v37)
  {
    v39 = v22;
  }

  else
  {
    v39 = v24;
  }

  if (v34 >= v37)
  {
    v40 = v24;
  }

  else
  {
    v40 = v22;
  }

  v41 = v75;
  v68 = v18 + 8;
  v67 = v38;
  v38(v39, v75);
  v42 = *(v18 + 32);
  v66 = v9;
  v43 = v79;
  v42(v79, v40, v41);
  (*(v18 + 56))(v43, 0, 1, v41);
  v44 = v18;
  v45 = swift_allocObject();
  v46 = v73;
  v47 = v74;
  *(v45 + 16) = v73;
  *(v45 + 24) = v47;
  v48 = swift_allocObject();
  *(v48 + 16) = v76;
  v49 = v87;
  *(v48 + 24) = v86;
  *(v48 + 40) = v49;
  v50 = v89;
  *(v48 + 56) = v88;
  *(v48 + 72) = v50;
  *(v48 + 88) = v46;
  *(v48 + 96) = v47;
  v51 = swift_allocObject();
  v51[2] = sub_1CF2BA174;
  v51[3] = v45;
  v52 = v71;
  v51[4] = v71;
  swift_retain_n();

  sub_1CF1AE1DC(&v86, &aBlock);
  v76 = v45;

  v53 = fpfs_current_log();
  v74 = *(v52 + 16);
  v54 = *(v44 + 48);
  v55 = v54(v43, 1, v41);
  v56 = v43;
  v57 = v72;
  sub_1CEFCCBDC(v56, v72, &unk_1EC4BE370, qword_1CFA01B30);
  if (v54(v57, 1, v41) == 1)
  {
    sub_1CEFCCC44(v57, &unk_1EC4BE370, qword_1CFA01B30);
    v58 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    sub_1CF9E6438();
    v67(v57, v41);
    v58 = sub_1CF9E63C8();
    (v70)(v33, v66);
  }

  if (v55 == 1)
  {
    v59 = DISPATCH_BLOCK_INHERIT_QOS_CLASS;
  }

  else
  {
    v59 = DISPATCH_BLOCK_ENFORCE_QOS_CLASS;
  }

  v60 = swift_allocObject();
  v60[2] = v53;
  v60[3] = sub_1CF2B131C;
  v60[4] = v48;
  v84 = sub_1CF2BA17C;
  v85 = v60;
  aBlock = MEMORY[0x1E69E9820];
  v81 = 1107296256;
  v82 = sub_1CEFCA444;
  v83 = &block_descriptor_777;
  v61 = _Block_copy(&aBlock);
  v62 = v53;

  v84 = sub_1CF2BA180;
  v85 = v51;
  aBlock = MEMORY[0x1E69E9820];
  v81 = 1107296256;
  v82 = sub_1CEFCA444;
  v83 = &block_descriptor_780;
  v63 = _Block_copy(&aBlock);

  v64 = v78;
  fp_task_tracker_async_and_qos(v74, v78, v59, v58, v61, v63);
  _Block_release(v63);
  _Block_release(v61);

  return sub_1CEFCCC44(v79, &unk_1EC4BE370, qword_1CFA01B30);
}

uint64_t sub_1CF271488(uint64_t a1, void *a2, uint64_t (*a3)(void))
{
  if (*a2)
  {
    v4 = *(a1 + 136);
    MEMORY[0x1EEE9AC00](a1);
    sub_1CEFE1894(sub_1CF2B132C);
  }

  return a3(0);
}

uint64_t sub_1CF271798(uint64_t a1, unsigned __int8 *a2, uint64_t a3, void *a4)
{
  v87 = a3;
  v88 = a4;
  v84 = a1;
  v6 = type metadata accessor for VFSItem(0);
  v83 = *(v6 - 8);
  v7 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v82 = v8;
  v85 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v74 - v11;
  v13 = sub_1CF9E63D8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v78 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v91 = &v74 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v74 - v20;
  v86 = sub_1CF9E6448();
  v22 = *(v86 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x1EEE9AC00](v86);
  v26 = &v74 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v74 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x1EEE9AC00](v29 - 8);
  v81 = &v74 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v92 = &v74 - v33;
  v79 = *a2;
  v34 = *(v4 + 216);
  v80 = *(v4 + 224);
  v89 = v4;
  v90 = v34;
  sub_1CF9E6418();
  qos_class_self();
  sub_1CF9E63B8();
  v35 = *(v14 + 48);
  if (v35(v12, 1, v13) == 1)
  {
    (*(v14 + 104))(v21, *MEMORY[0x1E69E7FA0], v13);
    if (v35(v12, 1, v13) != 1)
    {
      sub_1CEFCCC44(v12, &unk_1EC4BE380, &qword_1CFA01BA0);
    }
  }

  else
  {
    (*(v14 + 32))(v21, v12, v13);
  }

  sub_1CF9E6428();
  v36 = v91;
  sub_1CF9E6438();
  v37 = sub_1CF9E63C8();
  v38 = *(v14 + 8);
  v77 = v14 + 8;
  v38(v36, v13);
  v39 = v78;
  sub_1CF9E6438();
  v40 = sub_1CF9E63C8();
  v78 = v38;
  v38(v39, v13);
  v41 = v22;
  v42 = *(v22 + 8);
  if (v37 >= v40)
  {
    v43 = v26;
  }

  else
  {
    v43 = v28;
  }

  if (v37 >= v40)
  {
    v44 = v28;
  }

  else
  {
    v44 = v26;
  }

  v45 = v86;
  v76 = v22 + 8;
  v75 = v42;
  v42(v43, v86);
  v46 = *(v22 + 32);
  v74 = v13;
  v47 = v92;
  v46(v92, v44, v45);
  (*(v22 + 56))(v47, 0, 1, v45);
  v48 = swift_allocObject();
  v49 = v87;
  v50 = v88;
  *(v48 + 16) = v87;
  *(v48 + 24) = v50;
  v51 = v85;
  sub_1CEFD90AC(v84, v85, type metadata accessor for VFSItem);
  v52 = (*(v83 + 80) + 16) & ~*(v83 + 80);
  v53 = (v52 + v82 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = (v52 + v82 + 23) & 0xFFFFFFFFFFFFFFF8;
  v55 = swift_allocObject();
  sub_1CEFE4C60(v51, v55 + v52, type metadata accessor for VFSItem);
  v56 = v55 + v53;
  *v56 = v89;
  *(v56 + 8) = v79;
  v85 = v55;
  v57 = (v55 + v54);
  *v57 = v49;
  v57[1] = v50;
  v58 = swift_allocObject();
  v58[2] = sub_1CF2BA174;
  v58[3] = v48;
  v59 = v80;
  v58[4] = v80;
  swift_retain_n();

  v89 = v48;

  v60 = fpfs_current_log();
  v88 = *(v59 + 16);
  v61 = *(v41 + 48);
  v62 = v92;
  v63 = v61(v92, 1, v45);
  v64 = v81;
  sub_1CEFCCBDC(v62, v81, &unk_1EC4BE370, qword_1CFA01B30);
  if (v61(v64, 1, v45) == 1)
  {
    sub_1CEFCCC44(v64, &unk_1EC4BE370, qword_1CFA01B30);
    v65 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v66 = v91;
    sub_1CF9E6438();
    v75(v64, v45);
    v65 = sub_1CF9E63C8();
    (v78)(v66, v74);
  }

  if (v63 == 1)
  {
    v67 = DISPATCH_BLOCK_INHERIT_QOS_CLASS;
  }

  else
  {
    v67 = DISPATCH_BLOCK_ENFORCE_QOS_CLASS;
  }

  v68 = swift_allocObject();
  v68[2] = v60;
  v68[3] = sub_1CF2B1220;
  v68[4] = v85;
  v97 = sub_1CF2BA17C;
  v98 = v68;
  aBlock = MEMORY[0x1E69E9820];
  v94 = 1107296256;
  v95 = sub_1CEFCA444;
  v96 = &block_descriptor_753;
  v69 = _Block_copy(&aBlock);
  v70 = v60;

  v97 = sub_1CF2BA180;
  v98 = v58;
  aBlock = MEMORY[0x1E69E9820];
  v94 = 1107296256;
  v95 = sub_1CEFCA444;
  v96 = &block_descriptor_756;
  v71 = _Block_copy(&aBlock);

  v72 = v90;
  fp_task_tracker_async_and_qos(v88, v90, v67, v65, v69, v71);
  _Block_release(v71);
  _Block_release(v69);

  return sub_1CEFCCC44(v92, &unk_1EC4BE370, qword_1CFA01B30);
}

uint64_t sub_1CF272030(uint64_t a1, void *a2, char a3, void (*a4)(void), uint64_t a5)
{
  v25[1] = a5;
  v26 = a4;
  v8 = type metadata accessor for ItemMetadata();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for VFSItem(0);
  v13 = a1 + v12[9];
  v14 = *v13;
  v15 = (a1 + v12[14]);
  if (*(v15 + 4))
  {
    v16 = 0;
  }

  else
  {
    v16 = *v15;
  }

  v17 = *(v13 + 8);

  v29[0] = v14;
  v29[1] = 0;
  v30 = v16;
  v31 = v17;
  v32 = 0;
  v33 = 0;
  v18 = objc_sync_enter(a2);
  if (v18)
  {
    MEMORY[0x1EEE9AC00](v18);
    v25[-2] = a2;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, &v25[-4], "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v19 = a2[20];

  v20 = objc_sync_exit(a2);
  if (v20)
  {
    MEMORY[0x1EEE9AC00](v20);
    v25[-2] = a2;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, &v25[-4], "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v21 = *(v19 + 16);

  v22 = sub_1CEFDADE0(v29, v21, 2129920);

  sub_1CEFD90AC(a1 + v12[7], v11, type metadata accessor for ItemMetadata);
  v11[*(v8 + 88)] = a3;
  sub_1CEFE528C(v27);
  v35 = v28;
  v34[12] = v27[12];
  v34[13] = v27[13];
  v34[14] = v27[14];
  v34[8] = v27[8];
  v34[9] = v27[9];
  v34[10] = v27[10];
  v34[11] = v27[11];
  v34[4] = v27[4];
  v34[5] = v27[5];
  v34[6] = v27[6];
  v34[7] = v27[7];
  v34[0] = v27[0];
  v34[1] = v27[1];
  v34[2] = v27[2];
  v34[3] = v27[3];
  MEMORY[0x1EEE9AC00](v23);
  LODWORD(v25[-2]) = v22;
  sub_1CF9B9578(v34, sub_1CF2B9F58, &v25[-4], v25);
  v26(0);
  result = sub_1CEFE5888(v11, type metadata accessor for ItemMetadata);
  if ((v22 & 0x80000000) == 0)
  {
    return close(v22);
  }

  return result;
}

uint64_t sub_1CF2723A8(uint64_t a1, void (*a2)(uint64_t *), int *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v244 = a7;
  v245 = a6;
  v271 = a5;
  v273 = a3;
  v10 = sub_1CF9E6068();
  v239 = *(v10 - 8);
  v240 = v10;
  v11 = *(v239 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v238 = v230 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v236 = v230 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v252 = v230 - v17;
  v237 = type metadata accessor for Signpost(0);
  v241 = *(v237 - 8);
  v18 = *(v241 + 64);
  MEMORY[0x1EEE9AC00](v237);
  v242 = v19;
  v243 = v230 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v257 = v230 - v21;
  v269 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  v22 = *(*(v269 - 1) + 64);
  MEMORY[0x1EEE9AC00](v269);
  v235 = (v230 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v24);
  v246 = (v230 - v25);
  MEMORY[0x1EEE9AC00](v26);
  v268 = (v230 - v27);
  MEMORY[0x1EEE9AC00](v28);
  v274 = (v230 - v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v254 = v230 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v263 = v230 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v233 = v230 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v40 = v230 - v39;
  v270 = type metadata accessor for VFSItem(0);
  v266 = *(v270 - 8);
  v41 = *(v266 + 64);
  MEMORY[0x1EEE9AC00](v270);
  v256 = v230 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v250 = v230 - v44;
  v255 = sub_1CF9E5A58();
  v253 = *(v255 - 8);
  v45 = *(v253 + 64);
  MEMORY[0x1EEE9AC00](v255);
  v247 = v230 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v249 = v230 - v48;
  v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED00, &unk_1CFA006E0);
  v49 = *(*(v248 - 8) + 64);
  MEMORY[0x1EEE9AC00](v248);
  v258 = v230 - v50;
  v51 = sub_1CF9E53C8();
  v52 = *(v51 - 8);
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v55 = v230 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5000, &qword_1CFA181A0);
  v57 = *(*(v56 - 8) + 64);
  MEMORY[0x1EEE9AC00](v56);
  v234 = (v230 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v59);
  v267 = (v230 - v60);
  MEMORY[0x1EEE9AC00](v61);
  v63 = (v230 - v62);
  type metadata accessor for VFSStagedContext();
  v272 = a1;
  v64 = swift_dynamicCastClass();
  if (!v64)
  {
    LODWORD(v275) = 22;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF2A9448(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
    sub_1CF9E57D8();
    v78 = sub_1CF9E53A8();
    (*(v52 + 8))(v55, v51);
    *v63 = v78;
    swift_storeEnumTagMultiPayload();
    a2(v63);
    return sub_1CEFCCC44(v63, &unk_1EC4C5000, &qword_1CFA181A0);
  }

  v65 = v64;
  v259 = v56;
  v66 = swift_allocObject();
  *(v66 + 16) = 0;
  v67 = v66 + 16;
  v68 = swift_allocObject();
  v265 = a4;
  v68[2] = a4;
  v68[3] = v65;
  v260 = a2;
  v261 = v65;
  v68[4] = a2;
  v68[5] = v273;
  v68[6] = v66;
  v262 = v68;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0);
  v264 = swift_allocBox();
  v70 = v69;
  sub_1CEFCCBDC(v271, v69, &unk_1EC4BFD90, &unk_1CFA134F0);
  if (*(v70 + 8) != 2 || *v70)
  {
    swift_retain_n();
    v74 = v265;
  }

  else
  {
    v71 = *(v70 + 16);
    v72 = *(v70 + 24);
    v73 = qword_1EDEAEE10;
    swift_retain_n();
    v74 = v265;

    if (v73 != -1)
    {
      swift_once();
    }

    v75 = sub_1CF39B038(v71, v72, xmmword_1EDEBBE48, *(&xmmword_1EDEBBE48 + 1));

    if (v75)
    {
      if (qword_1EDEA4368 != -1)
      {
        swift_once();
      }

      v76 = unk_1EDEBB6A0;
      v77 = *(v70 + 24);
      *(v70 + 16) = qword_1EDEBB698;
      *(v70 + 24) = v76;
    }
  }

  v271 = v66;
  v80 = *(v70 + 8);
  v81 = *(v70 + 16);
  v82 = *(v70 + 24);
  v284 = *v70;
  LOBYTE(v285) = v80;
  v279 = 0u;
  v280 = 0u;
  v277 = 0u;
  v278 = 0u;
  v275 = 0u;
  v276 = 0u;

  sub_1CEFDAA48(&v284, &v275, &v286);
  v83 = v286;

  sub_1CF263ADC(v83, 0, 3, v40);
  v251 = 0;
  v232 = v67;
  v231 = v82;
  v84 = v266 + 48;
  v85 = *(v266 + 48);
  if (v85(v40, 1, v270) == 1)
  {
    sub_1CEFCCC44(v40, &unk_1EC4BEC00, &unk_1CF9FCB60);
    v86 = swift_allocObject();
    *(v86 + 16) = 3;
    v87 = v86 | 0x7000000000000000;
    v88 = swift_allocObject();
    *(v88 + 16) = v87;
    v89 = v88 | 0x8000000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
    sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
    v90 = swift_allocError();
    v92 = v91;
    sub_1CF1B8150();
    v93 = swift_allocError();
    *v94 = v89;
    *&v275 = v83;
    BYTE8(v275) = 1;
    *(&v275 + 9) = v286;
    HIDWORD(v275) = *(&v286 + 3);
    v276 = 0u;
    v277 = 0u;
    v278 = 0u;
    v279 = 0u;
    v280 = 0u;
    v281 = 0u;
    v282 = v93;
    sub_1CF2A8DE0(&v275);
    *v92 = v275;
    v95 = v276;
    v96 = v277;
    v97 = v279;
    *(v92 + 48) = v278;
    *(v92 + 64) = v97;
    *(v92 + 16) = v95;
    *(v92 + 32) = v96;
    v98 = v280;
    v99 = v281;
    v100 = v282;
    *(v92 + 128) = v283;
    *(v92 + 96) = v99;
    *(v92 + 112) = v100;
    *(v92 + 80) = v98;
    swift_willThrow();

LABEL_18:
    *v274 = v90;
    v119 = swift_storeEnumTagMultiPayload();
    v120 = v74[17];
    v121 = *(v261 + 16);
    MEMORY[0x1EEE9AC00](v119);
    v226 = v120;
    LODWORD(v227) = 1;
    v228 = v122;

    v123 = v90;
    sub_1CEFE1894(sub_1CF2B9F78);
    *(v120 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_deleteBusy) = 0;
    if (*(v120 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_garbageCollectionSource))
    {
      v124 = *(v120 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_garbageCollectionSource);
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      MEMORY[0x1D3869790](1, ObjectType);
      swift_unknownObjectRelease();
    }

    v126 = v268;
    sub_1CEFCCBDC(v274, v268, &unk_1EC4BF310, &unk_1CF9FDB30);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v128 = v260;
    if (EnumCaseMultiPayload == 1)
    {
      v129 = v267;
      *v267 = *v126;
    }

    else
    {
      v130 = v263;
      sub_1CEFE55D0(v126, v263, &unk_1EC4BEC00, &unk_1CF9FCB60);
      v131 = v232;
      swift_beginAccess();
      if ((*(v266 + 48))(v130, 1, v270) == 1)
      {
        sub_1CEFCCC44(v130, &unk_1EC4BEC00, &unk_1CF9FCB60);
        v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BED18, &qword_1CFA006F8);
        v129 = v267;
        (*(*(v132 - 8) + 56))(v267, 1, 1, v132);
      }

      else
      {
        v133 = *v131;
        v134 = v130;
        v129 = v267;
        sub_1CEFE4C60(v134, v267, type metadata accessor for VFSItem);
        v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BED18, &qword_1CFA006F8);
        *(v129 + v135[9]) = v133;
        *(v129 + v135[10]) = 0;
        v136 = v129 + v135[11];
        *v136 = 0;
        *(v136 + 1) = 0;
        *(v136 + 2) = 0;
        *(v136 + 3) = 0xB000000000000000;
        *(v136 + 2) = 0u;
        *(v136 + 3) = 0u;
        (*(*(v135 - 1) + 56))(v129, 0, 1, v135);
      }

      *(v129 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BED10, &qword_1CFA006F0) + 48)) = 0;
    }

    swift_storeEnumTagMultiPayload();
    v128(v129);

    sub_1CEFCCC44(v129, &unk_1EC4C5000, &qword_1CFA181A0);
    sub_1CEFCCC44(v274, &unk_1EC4BF310, &unk_1CF9FDB30);
    goto LABEL_27;
  }

  v230[0] = v85;
  v101 = v256;
  sub_1CEFE4C60(v40, v256, type metadata accessor for VFSItem);
  v102 = objc_sync_enter(v74);
  if (v102)
  {
    MEMORY[0x1EEE9AC00](v102);
    v228 = v74;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, &v226, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v230[1] = v84;
  v103 = objc_sync_exit(v74);
  v104 = v254;
  if (v103)
  {
    MEMORY[0x1EEE9AC00](v103);
    v228 = v74;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, &v226, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  sub_1CF25116C(v254);
  v105 = v253;
  v106 = v255;
  if ((*(v253 + 48))(v104, 1, v255) == 1)
  {
    sub_1CEFCCC44(v104, &unk_1EC4BE310, qword_1CF9FCBE0);
    v107 = swift_allocObject();
    *(v107 + 16) = 0xB000000000000008;
    v108 = v107 | 0x8000000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
    sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
    v90 = swift_allocError();
    v110 = v109;
    sub_1CF1B8150();
    v111 = swift_allocError();
    *v112 = v108;
    *&v275 = v83;
    BYTE8(v275) = 1;
    *(&v275 + 9) = v286;
    HIDWORD(v275) = *(&v286 + 3);
    v276 = 0u;
    v277 = 0u;
    v278 = 0u;
    v279 = 0u;
    v280 = 0u;
    v281 = 0u;
    v282 = v111;
    sub_1CF2A8DE0(&v275);
    *v110 = v275;
    v113 = v276;
    v114 = v277;
    v115 = v279;
    *(v110 + 48) = v278;
    *(v110 + 64) = v115;
    *(v110 + 16) = v113;
    *(v110 + 32) = v114;
    v116 = v280;
    v117 = v281;
    v118 = v282;
    *(v110 + 128) = v283;
    *(v110 + 96) = v117;
    *(v110 + 112) = v118;
    *(v110 + 80) = v116;
    swift_willThrow();

    sub_1CEFE5888(v101, type metadata accessor for VFSItem);
    goto LABEL_18;
  }

  v274 = *(v105 + 32);
  v137 = v247;
  v274(v247, v104, v106);
  *&v275 = v81;
  *(&v275 + 1) = v231;
  v286 = 47;
  v287 = 0xE100000000000000;
  v284 = 58;
  v285 = 0xE100000000000000;
  v228 = sub_1CEFE4E68();
  v229 = v228;
  v226 = MEMORY[0x1E69E6158];
  v227 = v228;
  v138 = v106;
  sub_1CF9E7668();
  v139 = v249;
  sub_1CF9E5958();

  (*(v105 + 8))(v137, v106);
  v140 = v101;
  v141 = v250;
  sub_1CEFE4C60(v140, v250, type metadata accessor for VFSItem);
  v142 = v258;
  v274(v258, v139, v138);
  v143 = v142 + *(v248 + 48);
  sub_1CEFE4C60(v141, v143, type metadata accessor for VFSItem);
  v144 = (v143 + *(v270 + 28));
  v145 = type metadata accessor for ItemMetadata();
  if (*(v144 + v145[16]) & 1) == 0 && ((v164 = *(v144 + v145[17]), v164 == 2) || (v164 & 1) == 0) || (*(v144 + v145[20]))
  {
    v273 = v145;
    v274 = v144;
    v165 = *(v143 + 8);
    *v70 = *v143;
    *(v70 + 8) = v165;
    if (qword_1EDEA8528 != -1)
    {
      swift_once();
    }

    v166 = qword_1EDEBB990;
    v167 = v239;
    v168 = v240;
    v169 = v252;
    (*(v239 + 56))(v252, 1, 1, v240);
    *&v275 = 0;
    *(&v275 + 1) = 0xE000000000000000;
    sub_1CF9E7948();

    *&v275 = 0xD000000000000010;
    *(&v275 + 1) = 0x80000001CFA3D7D0;
    v170 = sub_1CF9E5A18();
    MEMORY[0x1D3868CC0](v170);

    v269 = *(&v275 + 1);
    v270 = v275;
    v171 = v169;
    v172 = v236;
    sub_1CEFCCBDC(v171, v236, &unk_1EC4BED20, &unk_1CFA00700);
    v173 = *(v167 + 48);
    v174 = v173(v172, 1, v168);
    v175 = v238;
    if (v174 == 1)
    {
      v176 = v166;
      sub_1CF9E6048();
      if (v173(v172, 1, v168) != 1)
      {
        sub_1CEFCCC44(v172, &unk_1EC4BED20, &unk_1CFA00700);
      }
    }

    else
    {
      (*(v167 + 32))(v238, v172, v168);
    }

    v177 = v257;
    (*(v167 + 16))(v257, v175, v168);
    v178 = v237;
    *(v177 + *(v237 + 20)) = v166;
    v179 = v177 + *(v178 + 24);
    *v179 = "Coordination: Acquiring for Creation";
    *(v179 + 8) = 36;
    *(v179 + 16) = 2;
    v180 = v166;
    sub_1CF9E7468();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v181 = swift_allocObject();
    *(v181 + 16) = xmmword_1CF9FA450;
    *(v181 + 56) = MEMORY[0x1E69E6158];
    *(v181 + 64) = sub_1CEFD51C4();
    v182 = v269;
    *(v181 + 32) = v270;
    *(v181 + 40) = v182;
    v228 = v181;
    LOBYTE(v227) = 2;
    v226 = 2;
    sub_1CF9E6028();

    (*(v167 + 8))(v175, v168);
    sub_1CEFCCC44(v252, &unk_1EC4BED20, &unk_1CFA00700);
    v183 = objc_opt_self();
    v184 = v258;
    v185 = sub_1CF9E5928();
    v186 = [v183 writingIntentWithURL:v185 options:8];

    MEMORY[0x1EEE9AC00](v187);
    v229 = v184;
    MEMORY[0x1EEE9AC00](v188);
    v189 = v265;
    v226 = v265;
    v227 = sub_1CF2B9EA4;
    v228 = v190;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC4C5730, &qword_1CF9FCCE0);
    sub_1CF9E59B8();
    LODWORD(v270) = v275;
    v286 = 0;
    LOBYTE(v287) = -1;
    if (*(v274 + v273[20]))
    {
      v274 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC20, &qword_1CF9FE480);
      v191 = swift_allocObject();
      *(v191 + 1) = xmmword_1CFA00250;
      v274 = v191;
      *(v191 + 4) = v186;
      v192 = v186;
    }

    v193 = v186;
    v269 = v186;
    v194 = v243;
    sub_1CEFD90AC(v257, v243, type metadata accessor for Signpost);
    v195 = (*(v241 + 80) + 64) & ~*(v241 + 80);
    v196 = (v242 + v195 + 7) & 0xFFFFFFFFFFFFFFF8;
    v197 = (v196 + 15) & 0xFFFFFFFFFFFFFFF8;
    v198 = swift_allocObject();
    v199 = v264;
    v198[2] = v189;
    v198[3] = v199;
    v200 = v262;
    v198[4] = sub_1CF2B1078;
    v198[5] = v200;
    v198[6] = v193;
    v198[7] = v271;
    sub_1CEFE4C60(v194, v198 + v195, type metadata accessor for Signpost);
    *(v198 + v196) = v261;
    v201 = v198 + v197;
    v202 = v245;
    v203 = *(v245 + 48);
    *(v201 + 2) = *(v245 + 32);
    *(v201 + 3) = v203;
    v204 = *(v202 + 16);
    *v201 = *v202;
    *(v201 + 1) = v204;
    v205 = *(v202 + 112);
    *(v201 + 6) = *(v202 + 96);
    *(v201 + 7) = v205;
    v206 = *(v202 + 80);
    *(v201 + 4) = *(v202 + 64);
    *(v201 + 5) = v206;
    v207 = *(v202 + 176);
    *(v201 + 10) = *(v202 + 160);
    *(v201 + 11) = v207;
    v208 = *(v202 + 144);
    *(v201 + 8) = *(v202 + 128);
    *(v201 + 9) = v208;
    *(v201 + 30) = *(v202 + 240);
    v209 = *(v202 + 224);
    *(v201 + 13) = *(v202 + 208);
    *(v201 + 14) = v209;
    *(v201 + 12) = *(v202 + 192);
    *(v198 + ((v197 + 255) & 0xFFFFFFFFFFFFFFF8)) = v244;

    v210 = v269;

    sub_1CEFCCBDC(v202, &v275, &qword_1EC4BECF0, &unk_1CF9FEEB0);
    sub_1CF265B04(&v286, v274, v270 & 1, sub_1CF2B10BC, v198);

    sub_1CEFE5888(v257, type metadata accessor for Signpost);
    sub_1CEFCCC44(v258, &unk_1EC4BED00, &unk_1CFA006E0);
  }

  v146 = *v70;
  v147 = *(v70 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
  sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
  v148 = swift_allocError();
  v150 = v149;
  sub_1CF1B8150();
  v151 = swift_allocError();
  *v152 = 0xB000000000000018;
  *&v275 = v146;
  BYTE8(v275) = v147;
  *(&v275 + 9) = v284;
  HIDWORD(v275) = *(&v284 + 3);
  v276 = 0u;
  v277 = 0u;
  v278 = 0u;
  v279 = 0u;
  v280 = 0u;
  v281 = 0u;
  v282 = v151;
  sub_1CF2A8DE0(&v275);
  *v150 = v275;
  v153 = v276;
  v154 = v277;
  v155 = v279;
  *(v150 + 48) = v278;
  *(v150 + 64) = v155;
  *(v150 + 16) = v153;
  *(v150 + 32) = v154;
  v156 = v280;
  v157 = v281;
  v158 = v282;
  *(v150 + 128) = v283;
  *(v150 + 96) = v157;
  *(v150 + 112) = v158;
  *(v150 + 80) = v156;
  *v246 = v148;
  v159 = swift_storeEnumTagMultiPayload();
  v160 = v265[17];
  v161 = *(v261 + 16);
  MEMORY[0x1EEE9AC00](v159);
  v226 = v160;
  LODWORD(v227) = 1;
  v228 = v162;

  v163 = v251;
  sub_1CEFE1894(sub_1CF2B9F78);
  if (v163)
  {
  }

  else
  {
    *(v160 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_deleteBusy) = 0;
    if (*(v160 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_garbageCollectionSource))
    {
      v211 = *(v160 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_garbageCollectionSource);
      v212 = swift_getObjectType();
      swift_unknownObjectRetain();
      MEMORY[0x1D3869790](1, v212);
      swift_unknownObjectRelease();
    }
  }

  v213 = v232;
  v214 = v235;
  sub_1CEFCCBDC(v246, v235, &unk_1EC4BF310, &unk_1CF9FDB30);
  v215 = swift_getEnumCaseMultiPayload();
  v216 = v260;
  if (v215 == 1)
  {
    v217 = *v214;
    v218 = v234;
    *v234 = v217;
  }

  else
  {
    v219 = v214;
    v220 = v233;
    sub_1CEFE55D0(v219, v233, &unk_1EC4BEC00, &unk_1CF9FCB60);
    swift_beginAccess();
    if ((v230[0])(v220, 1, v270) == 1)
    {
      sub_1CEFCCC44(v220, &unk_1EC4BEC00, &unk_1CF9FCB60);
      v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BED18, &qword_1CFA006F8);
      v218 = v234;
      (*(*(v221 - 8) + 56))(v234, 1, 1, v221);
    }

    else
    {
      v222 = *v213;
      v223 = v220;
      v218 = v234;
      sub_1CEFE4C60(v223, v234, type metadata accessor for VFSItem);
      v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BED18, &qword_1CFA006F8);
      *(v218 + v224[9]) = v222;
      *(v218 + v224[10]) = 0;
      v225 = v218 + v224[11];
      *v225 = 0;
      *(v225 + 1) = 0;
      *(v225 + 2) = 0;
      *(v225 + 3) = 0xB000000000000000;
      *(v225 + 2) = 0u;
      *(v225 + 3) = 0u;
      (*(*(v224 - 1) + 56))(v218, 0, 1, v224);
    }

    *(v218 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BED10, &qword_1CFA006F0) + 48)) = 0;
  }

  swift_storeEnumTagMultiPayload();
  v216(v218);

  sub_1CEFCCC44(v218, &unk_1EC4C5000, &qword_1CFA181A0);
  sub_1CEFCCC44(v246, &unk_1EC4BF310, &unk_1CF9FDB30);
  sub_1CEFCCC44(v258, &unk_1EC4BED00, &unk_1CFA006E0);
LABEL_27:
}

uint64_t sub_1CF274048(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *), uint64_t a5, uint64_t a6)
{
  v31 = a5;
  v32 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v31 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v31 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5000, &qword_1CFA181A0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = (&v31 - v20);
  v22 = *(a2 + 136);
  v23 = *(a3 + 16);
  v33 = v22;
  v34 = 1;
  v35 = v23;

  sub_1CEFE1894(sub_1CF2B9F78);
  *(v22 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_deleteBusy) = 0;
  if (*(v22 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_garbageCollectionSource))
  {
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    MEMORY[0x1D3869790](1, ObjectType);
    swift_unknownObjectRelease();
  }

  sub_1CEFCCBDC(a1, v17, &unk_1EC4BF310, &unk_1CF9FDB30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *v21 = *v17;
  }

  else
  {
    sub_1CEFE55D0(v17, v13, &unk_1EC4BEC00, &unk_1CF9FCB60);
    swift_beginAccess();
    v25 = type metadata accessor for VFSItem(0);
    if ((*(*(v25 - 8) + 48))(v13, 1, v25) == 1)
    {
      sub_1CEFCCC44(v13, &unk_1EC4BEC00, &unk_1CF9FCB60);
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BED18, &qword_1CFA006F8);
      (*(*(v26 - 8) + 56))(v21, 1, 1, v26);
    }

    else
    {
      v27 = *(a6 + 16);
      sub_1CEFE4C60(v13, v21, type metadata accessor for VFSItem);
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BED18, &qword_1CFA006F8);
      *(v21 + v28[9]) = v27;
      *(v21 + v28[10]) = 0;
      v29 = v21 + v28[11];
      *v29 = 0;
      *(v29 + 1) = 0;
      *(v29 + 2) = 0;
      *(v29 + 3) = 0xB000000000000000;
      *(v29 + 2) = 0u;
      *(v29 + 3) = 0u;
      (*(*(v28 - 1) + 56))(v21, 0, 1, v28);
    }

    *(v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BED10, &qword_1CFA006F0) + 48)) = 0;
  }

  swift_storeEnumTagMultiPayload();
  v32(v21);
  return sub_1CEFCCC44(v21, &unk_1EC4C5000, &qword_1CFA181A0);
}

uint64_t sub_1CF274434(uint64_t a1, void *a2, char *a3, uint64_t a4, void (*a5)(uint64_t *), uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, char a12)
{
  v323 = a8;
  v342 = a7;
  v355 = a6;
  v356 = a5;
  v337 = a2;
  v374[8] = *MEMORY[0x1E69E9840];
  v333 = type metadata accessor for ItemMetadata();
  v13 = *(*(v333 - 8) + 64);
  MEMORY[0x1EEE9AC00](v333);
  v318 = &v301 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v320 = sub_1CF9E53C8();
  v311 = *(v320 - 8);
  v15 = *(v311 + 64);
  MEMORY[0x1EEE9AC00](v320);
  v317 = &v301 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v314 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE000, &unk_1CFA006A0);
  v17 = *(*(v314 - 8) + 64);
  MEMORY[0x1EEE9AC00](v314);
  v313 = (&v301 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v19);
  v312 = (&v301 - v20);
  MEMORY[0x1EEE9AC00](v21);
  v321 = (&v301 - v22);
  v319 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE2F0, qword_1CFA04220);
  v23 = *(*(v319 - 8) + 64);
  MEMORY[0x1EEE9AC00](v319);
  v316 = &v301 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v322 = (&v301 - v26);
  v27 = sub_1CF9E64A8();
  v325 = *(v27 - 8);
  v326 = v27;
  v28 = *(v325 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v324 = (&v301 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = sub_1CF9E6068();
  v330 = *(v30 - 8);
  v331 = v30;
  v31 = *(v330 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v329 = &v301 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v328 = &v301 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v336 = &v301 - v37;
  v335 = type metadata accessor for Signpost(0);
  v38 = *(*(v335 - 8) + 64);
  MEMORY[0x1EEE9AC00](v335);
  v334 = &v301 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v353 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  v40 = *(*(v353 - 8) + 64);
  MEMORY[0x1EEE9AC00](v353);
  v354 = (&v301 - v41);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x1EEE9AC00](v42 - 8);
  v345 = &v301 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v46 = *(*(v45 - 8) + 64);
  MEMORY[0x1EEE9AC00](v45 - 8);
  v315 = &v301 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v327 = &v301 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v301 - v51;
  v53 = type metadata accessor for VFSItem(0);
  v348 = *(v53 - 8);
  v349 = v53;
  v54 = *(v348 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v310 = &v301 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v56);
  v351 = (&v301 - v57);
  MEMORY[0x1EEE9AC00](v58);
  v341 = (&v301 - v59);
  v346 = sub_1CF9E5A58();
  v350 = *(v346 - 8);
  v60 = v350[8];
  MEMORY[0x1EEE9AC00](v346);
  v343 = &v301 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v62);
  v338 = &v301 - v63;
  MEMORY[0x1EEE9AC00](v64);
  v340 = &v301 - v65;
  v339 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED00, &unk_1CFA006E0);
  v66 = *(*(v339 - 8) + 64);
  MEMORY[0x1EEE9AC00](v339);
  v68 = &v301 - v67;
  v332 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0);
  v69 = swift_projectBox();
  swift_beginAccess();
  v70 = *v69;
  v71 = *(v69 + 8);
  v344 = *(v69 + 16);
  v72 = *(v69 + 24);
  v363 = v70;
  LOBYTE(v364) = v71;
  v369 = 0u;
  v370 = 0u;
  v367 = 0u;
  v368 = 0u;
  v365 = 0u;
  v366 = 0u;

  sub_1CEFDAA48(&v363, &v365, v374);
  v73 = v374[0];

  v347 = v52;
  sub_1CF263ADC(v73, 0, 1, v52);
  v352 = 0;
  v308 = v73;
  v309 = v72;
  v75 = v350;
  v74 = v351;
  v305 = v69;
  v306 = a3;
  v302 = (v69 + 24);
  v303 = (v69 + 8);
  v304 = (v69 + 16);
  v307 = v68;
  v76 = v347;
  v77 = (v348 + 48);
  v78 = *(v348 + 48);
  if (v78(v347, 1, v349) != 1)
  {
    v94 = v74;
    sub_1CEFE4C60(v76, v74, type metadata accessor for VFSItem);
    v95 = v306;
    v96 = objc_sync_enter(v306);
    if (v96)
    {
      MEMORY[0x1EEE9AC00](v96);
      v299 = v95;
      goto LABEL_68;
    }

    v97 = objc_sync_exit(v95);
    v99 = v344;
    v98 = v345;
    if (v97)
    {
      MEMORY[0x1EEE9AC00](v97);
      v299 = v95;
      goto LABEL_70;
    }

    sub_1CF25116C(v345);
    v100 = v346;
    if ((v75[6])(v98, 1, v346) == 1)
    {
      sub_1CEFCCC44(v98, &unk_1EC4BE310, qword_1CF9FCBE0);
      v101 = swift_allocObject();
      *(v101 + 16) = 0xB000000000000008;
      v102 = v101 | 0x9000000000000000;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
      sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
      v83 = swift_allocError();
      v104 = v103;
      sub_1CF1B8150();
      v105 = swift_allocError();
      *v106 = v102;
      *&v365 = v308;
      BYTE8(v365) = 1;
      *(&v365 + 9) = v374[0];
      HIDWORD(v365) = *(v374 + 3);
      v366 = 0u;
      v367 = 0u;
      v368 = 0u;
      v369 = 0u;
      v370 = 0u;
      v371 = 0u;
      v372 = v105;
      sub_1CF2A8DE0(&v365);
      *v104 = v365;
      v107 = v366;
      v108 = v367;
      v109 = v369;
      *(v104 + 48) = v368;
      *(v104 + 64) = v109;
      *(v104 + 16) = v107;
      *(v104 + 32) = v108;
      v110 = v370;
      v111 = v371;
      v112 = v372;
      *(v104 + 128) = v373;
      *(v104 + 96) = v111;
      *(v104 + 112) = v112;
      *(v104 + 80) = v110;
      swift_willThrow();

      sub_1CEFE5888(v94, type metadata accessor for VFSItem);
      goto LABEL_7;
    }

    v308 = v78;
    v347 = v77;
    v120 = v75[4];
    v121 = v338;
    (v120)(v338, v98, v100);
    *&v365 = v99;
    *(&v365 + 1) = v309;
    v374[0] = 47;
    v374[1] = 0xE100000000000000;
    v363 = 58;
    v364 = 0xE100000000000000;
    v299 = sub_1CEFE4E68();
    v300 = v299;
    *&v298 = MEMORY[0x1E69E6158];
    *(&v298 + 1) = v299;
    sub_1CF9E7668();
    sub_1CF9E5958();

    v122 = v75 + 1;
    v123 = v75[1];
    (v123)(v121, v100);
    v124 = v341;
    sub_1CEFE4C60(v351, v341, type metadata accessor for VFSItem);
    v125 = v307;
    v120();
    v351 = &v125[*(v339 + 48)];
    sub_1CEFE4C60(v124, v351, type metadata accessor for VFSItem);
    v126 = v342;
    v127 = [v342 URL];
    v128 = v343;
    sub_1CF9E59D8();

    sub_1CF2A9448(&qword_1EDEAB410, MEMORY[0x1E6968FB0]);
    LOBYTE(v127) = sub_1CF9E6868();
    (v123)(v128, v100);
    if ((v127 & 1) == 0)
    {
      v133 = v305;
      swift_beginAccess();
      v352 = *v133;
      LODWORD(v351) = *(v133 + 8);
      v134 = swift_allocObject();
      v135 = [v126 URL];
      sub_1CF9E59D8();

      v136 = sub_1CF9E5928();
      v137 = [v136 fp_shortDescription];

      v138 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v140 = v139;

      (v123)(v128, v100);
      *(v134 + 16) = v138;
      *(v134 + 24) = v140;
      v141 = v307;
      v142 = sub_1CF9E5928();
      v143 = [v142 fp_shortDescription];

      v144 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v146 = v145;

      *(v134 + 32) = v144;
      *(v134 + 40) = v146;
      v147 = v134 | 0x2000000000000000;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
      sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
      v148 = swift_allocError();
      v150 = v149;
      sub_1CF1B8150();
      v151 = swift_allocError();
      *v152 = v147;
      *&v365 = v352;
      BYTE8(v365) = v351;
      *(&v365 + 9) = v363;
      HIDWORD(v365) = *(&v363 + 3);
      v366 = 0u;
      v367 = 0u;
      v368 = 0u;
      v369 = 0u;
      v370 = 0u;
      v371 = 0u;
      v372 = v151;
      sub_1CF2A8DE0(&v365);
      *v150 = v365;
      v153 = v366;
      v154 = v367;
      v155 = v369;
      *(v150 + 48) = v368;
      *(v150 + 64) = v155;
      *(v150 + 16) = v153;
      *(v150 + 32) = v154;
      v156 = v370;
      v157 = v371;
      v158 = v372;
      *(v150 + 128) = v373;
      *(v150 + 96) = v157;
      *(v150 + 112) = v158;
      *(v150 + 80) = v156;
      v159 = v354;
      *v354 = v148;
      swift_storeEnumTagMultiPayload();
      v356(v159);
      sub_1CEFCCC44(v159, &unk_1EC4BF310, &unk_1CF9FDB30);
      v115 = &unk_1EC4BED00;
      v116 = &unk_1CFA006E0;
      v117 = v141;
      goto LABEL_8;
    }

    v129 = v307;
    v345 = v123;
    v350 = v122;
    v130 = v337;
    if (v337)
    {
      v131 = v354;
      *v354 = v337;
      swift_storeEnumTagMultiPayload();
      v132 = v130;
      v356(v131);
      sub_1CEFCCC44(v131, &unk_1EC4BF310, &unk_1CF9FDB30);
      v115 = &unk_1EC4BED00;
      v116 = &unk_1CFA006E0;
      v117 = v129;
      goto LABEL_8;
    }

    if (qword_1EDEA8528 != -1)
    {
      swift_once();
    }

    v160 = qword_1EDEBB990;
    v161 = v330;
    v162 = v331;
    v163 = v336;
    (*(v330 + 56))(v336, 1, 1, v331);
    v164 = sub_1CF9E5A18();
    v344 = v165;
    v166 = v328;
    sub_1CEFCCBDC(v163, v328, &unk_1EC4BED20, &unk_1CFA00700);
    v167 = *(v161 + 48);
    if (v167(v166, 1, v162) == 1)
    {
      v168 = v160;
      v169 = v329;
      sub_1CF9E6048();
      v170 = v167(v166, 1, v162);
      v171 = v335;
      if (v170 != 1)
      {
        sub_1CEFCCC44(v166, &unk_1EC4BED20, &unk_1CFA00700);
      }
    }

    else
    {
      v169 = v329;
      (*(v161 + 32))(v329, v166, v162);
      v171 = v335;
    }

    v172 = *(v161 + 16);
    v173 = v161;
    v174 = v334;
    v172(v334, v169, v162);
    *&v174[*(v171 + 20)] = v160;
    v175 = &v174[*(v171 + 24)];
    *v175 = "FS creation [under coordination]";
    *(v175 + 1) = 32;
    v175[16] = 2;
    v176 = v160;
    sub_1CF9E7468();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v177 = swift_allocObject();
    *(v177 + 16) = xmmword_1CF9FA450;
    *(v177 + 56) = MEMORY[0x1E69E6158];
    *(v177 + 64) = sub_1CEFD51C4();
    v178 = v344;
    *(v177 + 32) = v164;
    *(v177 + 40) = v178;
    v299 = v177;
    BYTE8(v298) = 2;
    *&v298 = 2;
    v344 = v176;
    sub_1CF9E6028();

    (*(v173 + 8))(v169, v162);
    sub_1CEFCCC44(v336, &unk_1EC4BED20, &unk_1CFA00700);
    v179 = v305;
    swift_beginAccess();
    v181 = v332;
    v180 = v333;
    v182 = v307;
    v183 = v345;
    if (*(v179 + *(v332 + 40) + *(v333 + 84)))
    {
      v184 = v306;
      v185 = *(v306 + 27);
      v186 = v324;
      v187 = v325;
      *v324 = v185;
      v188 = v326;
      (*(v187 + 104))(v186, *MEMORY[0x1E69E8020], v326);
      v189 = v185;
      LOBYTE(v185) = sub_1CF9E64D8();
      (*(v187 + 8))(v186, v188);
      if ((v185 & 1) == 0)
      {
        __break(1u);
        goto LABEL_65;
      }

      v190 = &v184[qword_1EDEAFAF8];
      os_unfair_lock_lock(&v184[qword_1EDEAFAF8]);
      v191 = *(*(v190 + 1) + 16);
      os_unfair_lock_unlock(v190);
      v182 = v307;
      if (v191)
      {
        v192 = v323;
        swift_beginAccess();
        v193 = *(v192 + 16);
        if ((v193 & 0x10000) == 0)
        {
          *(v192 + 16) = v193 | 0x10000;
        }

        swift_beginAccess();
        *(v179 + *(v181 + 40) + *(v180 + 84)) = 0;
      }
    }

    sub_1CF9E7458();
    v194 = *(a9 + *(v335 + 20));
    v195 = (a9 + *(v335 + 24));
    v196 = *v195;
    v197 = v195[1];
    v198 = *(v195 + 16);
    v199 = sub_1CF9E6038();
    if ((*(&v351->_os_unfair_lock_opaque + *(v349 + 28) + *(v180 + 80)) & 1) == 0)
    {
      v200 = v343;
      sub_1CF9E5988();
      v199 = (v183)(v200, v346);
    }

    v201 = v306;
    v202 = *(v306 + 17);
    MEMORY[0x1EEE9AC00](v199);
    *(&v301 - 6) = v201;
    *(&v301 - 5) = v179;
    *&v298 = a10;
    *(&v298 + 1) = v182;
    v299 = a11;
    v203 = v327;
    v204 = v352;
    sub_1CF2EE300(a10, 0x200000, sub_1CF2B11F0, (&v301 - 8), v327);
    if (!v204)
    {
      v246 = v354;
      sub_1CEFCCBDC(v203, v354, &unk_1EC4BEC00, &unk_1CF9FCB60);
      swift_storeEnumTagMultiPayload();
      v356(v246);
      sub_1CEFCCC44(v246, &unk_1EC4BF310, &unk_1CF9FDB30);
      v247 = v203;
      v248 = &unk_1EC4BEC00;
      v249 = &unk_1CF9FCB60;
LABEL_62:
      sub_1CEFCCC44(v247, v248, v249);
      sub_1CF9E7458();
      goto LABEL_63;
    }

    v205 = v204;
    v206 = v204;
    LODWORD(v365) = sub_1CF9E52E8();
    v207 = sub_1CF196978();
    v208 = sub_1CF9E5658();

    if ((v208 & 1) == 0)
    {
LABEL_61:
      v294 = v356;
      v295 = v354;
      *v354 = v205;
      swift_storeEnumTagMultiPayload();
      v296 = v205;
      v294(v295);

      v248 = &unk_1EC4BF310;
      v249 = &unk_1CF9FDB30;
      v247 = v295;
      goto LABEL_62;
    }

    sub_1CF9E5A18();
    v209 = qword_1EDEBBE70;
    swift_beginAccess();
    v210 = *(v201 + v209);
    v211 = __CFADD__(v210, 1);
    v212 = v210 + 1;
    if (!v211)
    {
      *(v201 + v209) = v212;
      v213 = objc_sync_enter(v201);
      if (!v213)
      {
        v346 = v207;
        v351 = v201[20];

        v214 = objc_sync_exit(v201);
        if (!v214)
        {
          v350 = v204;
          v215 = type metadata accessor for VFSFileTree(0);
          Strong = swift_unknownObjectWeakLoadStrong();
          v217 = v201[36];
          fpfs_openflags(0x208000u);
          sub_1CF9E6978();
          v218 = openat_s();

          LODWORD(v352) = v218;
          if (v218 < 0)
          {
            v250 = MEMORY[0x1D38683F0](v219);
            *&v367 = 0;
            v365 = 0u;
            v366 = 0u;
            BYTE8(v367) = 19;
            v205 = sub_1CF19BBE4(v250, &v365);
            sub_1CF1969CC(&v365);
            swift_willThrow();

            v182 = v307;
            v251 = v333;
            v252 = v320;
            goto LABEL_44;
          }

          v220 = v351;
          os_unfair_lock_lock(v351 + 14);
          v221 = *&v220[16]._os_unfair_lock_opaque;
          v222 = *&v220[18]._os_unfair_lock_opaque;
          os_unfair_lock_opaque = v220[22]._os_unfair_lock_opaque;
          LODWORD(v345) = BYTE1(v220[22]._os_unfair_lock_opaque);
          LODWORD(v343) = BYTE2(v220[22]._os_unfair_lock_opaque);

          v224 = *&v220[20]._os_unfair_lock_opaque;
          os_unfair_lock_unlock(v220 + 14);
          v341 = &v301;
          MEMORY[0x1EEE9AC00](v225);
          *(&v301 - 10) = v215;
          *(&v301 - 18) = v352;
          *(&v301 - 8) = v220;
          *(&v301 - 7) = Strong;
          v342 = Strong;
          *(&v301 - 6) = v217;
          *(&v301 - 40) = 2;
          v298 = xmmword_1CF9FD920;
          LOBYTE(v299) = -1;
          v300 = 0;
          *&v367 = v221;
          *(&v367 + 1) = v222;
          *&v365 = MEMORY[0x1E69E9820];
          *(&v365 + 1) = 1107296256;
          *&v366 = sub_1CEFDB088;
          *(&v366 + 1) = &block_descriptor_717;
          v226 = _Block_copy(&v365);

          v340 = v226;
          v358 = v226;
          v359 = v224;
          v360 = os_unfair_lock_opaque;
          v361 = v345;
          v362 = v343;
          sub_1CEFDB034();
          v227 = swift_allocError();
          *v228 = 6;
          *(v228 + 8) = 0u;
          *(v228 + 24) = 0u;
          *(v228 + 40) = 19;
          v229 = v321;
          *v321 = v227;
          swift_storeEnumTagMultiPayload();
          v230 = swift_allocObject();
          v230[2] = v229;
          v230[3] = sub_1CF2B9F90;
          v230[4] = &v301 - 12;
          v231 = swift_allocObject();
          *(v231 + 16) = sub_1CF1DBD3C;
          *(v231 + 24) = v230;
          *&v367 = sub_1CF1DBD5C;
          *(&v367 + 1) = v231;
          *&v365 = MEMORY[0x1E69E9820];
          *(&v365 + 1) = 1107296256;
          *&v366 = sub_1CEFDB270;
          *(&v366 + 1) = &block_descriptor_728;
          v232 = _Block_copy(&v365);

          v233 = fpfs_fgetfileattrs_detailed();
          _Block_release(v232);
          LOBYTE(v232) = swift_isEscapingClosureAtFileLocation();

          if ((v232 & 1) == 0)
          {
            if (v233)
            {
              swift_getErrorValue();
              v234 = v357;
              v235 = swift_allocError();
              *v236 = 6;
              *(v236 + 8) = 0u;
              *(v236 + 24) = 0u;
              *(v236 + 40) = 19;
              v237 = v233;
              v238 = sub_1CF199074(v235, v234);

              v239 = v312;
              *v312 = v238;
              v229 = v321;
              swift_storeEnumTagMultiPayload();
              sub_1CEFDA9E0(v239, v229, &qword_1EC4BE000, &unk_1CFA006A0);
            }

            v240 = v313;
            sub_1CEFCCBDC(v229, v313, &qword_1EC4BE000, &unk_1CFA006A0);
            if (swift_getEnumCaseMultiPayload() != 1)
            {

              sub_1CEFE55D0(v240, v322, &unk_1EC4BE2F0, qword_1CFA04220);
              sub_1CEFCCC44(v229, &qword_1EC4BE000, &unk_1CFA006A0);

              _Block_release(v340);

              v182 = v307;
              v245 = v333;
              v243 = v320;
              goto LABEL_42;
            }

            *&v365 = *v240;
            v205 = v365;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
            swift_willThrowTypedImpl();

            sub_1CEFCCC44(v229, &qword_1EC4BE000, &unk_1CFA006A0);

            _Block_release(v340);

            v241 = v205;
            LODWORD(v365) = sub_1CF9E52A8();
            v242 = sub_1CF9E5658();

            v182 = v307;
            v243 = v320;
            if (v242)
            {

              v244 = v322;
              *v322 = xmmword_1CF9FD940;
              *(v244 + 16) = 2;
              swift_storeEnumTagMultiPayload();
              v245 = v333;
LABEL_42:
              close(v352);

              swift_unknownObjectRelease();
              v254 = v317;
              v253 = v318;
              v255 = v316;
              v256 = v322;
              goto LABEL_46;
            }

            v252 = v320;
            close(v352);
            v251 = v333;
LABEL_44:
            v257 = v205;
            LODWORD(v365) = sub_1CF9E5328();
            v258 = sub_1CF9E5658();

            swift_unknownObjectRelease();

            if ((v258 & 1) == 0)
            {
LABEL_51:

              goto LABEL_61;
            }

            v259 = v322;
            *v322 = xmmword_1CF9FD930;
            *(v259 + 16) = 2;
            swift_storeEnumTagMultiPayload();
            v256 = v259;
            v254 = v317;
            v253 = v318;
            v255 = v316;
            v260 = v251;
            v243 = v252;
            v245 = v260;
LABEL_46:
            sub_1CEFE55D0(v256, v255, &unk_1EC4BE2F0, qword_1CFA04220);
            EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
            v262 = (v348 + 56);
            if (EnumCaseMultiPayload == 1)
            {
              sub_1CEFCCC44(v255, &unk_1EC4BE2F0, qword_1CFA04220);
              v263 = 1;
              v264 = v315;
            }

            else
            {
              v264 = v315;
              sub_1CEFE4C60(v255, v315, type metadata accessor for VFSItem);
              v263 = 0;
            }

            v265 = *v262;
            v266 = v349;
            (*v262)(v264, v263, 1, v349);
            if (v308(v264, 1, v266) == 1)
            {
              sub_1CEFCCC44(v264, &unk_1EC4BEC00, &unk_1CF9FCB60);
              LODWORD(v365) = 17;
              sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
              sub_1CF2A9448(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
              sub_1CF9E57D8();
              v267 = sub_1CF9E53A8();
              v268 = v254;
              v205 = v267;
              (*(v311 + 8))(v268, v243);
              swift_willThrow();
              goto LABEL_51;
            }

            v269 = v310;
            sub_1CEFE4C60(v264, v310, type metadata accessor for VFSItem);
            if ((a12 & 2) != 0)
            {
              v270 = *(v349 + 28);
              v271 = v305;
              swift_beginAccess();
              sub_1CEFD90AC(v271 + *(v332 + 40), v253, type metadata accessor for ItemMetadata);
              LOBYTE(v270) = sub_1CF677434(v253);
              sub_1CEFE5888(v253, type metadata accessor for ItemMetadata);
              if (v270)
              {
                v272 = v354;
                sub_1CEFD90AC(v269, v354, type metadata accessor for VFSItem);
                v265(v272, 0, 1, v349);
                swift_storeEnumTagMultiPayload();
                v356(v272);

                sub_1CEFCCC44(v272, &unk_1EC4BF310, &unk_1CF9FDB30);
                sub_1CEFE5888(v269, type metadata accessor for VFSItem);
                sub_1CF9E7458();
LABEL_63:
                v297 = v334;
                sub_1CF9E6038();
                sub_1CEFE5888(v297, type metadata accessor for Signpost);
                v115 = &unk_1EC4BED00;
                v116 = &unk_1CFA006E0;
                v117 = v182;
                goto LABEL_8;
              }
            }

            v273 = v269 + *(v349 + 28) + *(v245 + 148);
            if (*(v273 + 4) == 1)
            {
              v274 = *v269;
              v275 = *(v269 + 8);
            }

            else
            {
              v274 = *v269;
              v275 = *(v269 + 8);
              if (*v273 >= 2u)
              {
                v276 = v305;
                swift_beginAccess();
                v278 = v303;
                v277 = v304;
                v279 = v302;
LABEL_60:
                v280 = *v279;
                v281 = *v277;
                v282 = *v278;
                v283 = *v276;

                v284 = sub_1CF252CF4();
                *&v365 = v274;
                BYTE8(v365) = v275;
                *&v366 = v281;
                *(&v366 + 1) = v280;
                *&v367 = v283;
                BYTE8(v367) = v282;
                *&v368 = v284;
                *(&v368 + 1) = v285;
                *&v369 = v350;
                sub_1CF2B0E80(&v365);
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
                sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
                v286 = v269;
                v205 = swift_allocError();
                *v287 = v365;
                v288 = v369;
                v290 = v366;
                v289 = v367;
                *(v287 + 48) = v368;
                *(v287 + 64) = v288;
                *(v287 + 16) = v290;
                *(v287 + 32) = v289;
                v292 = v371;
                v291 = v372;
                v293 = v370;
                *(v287 + 128) = v373;
                *(v287 + 96) = v292;
                *(v287 + 112) = v291;
                *(v287 + 80) = v293;
                swift_willThrow();
                sub_1CEFE5888(v286, type metadata accessor for VFSItem);
                goto LABEL_61;
              }
            }

            v277 = (v269 + 32);
            v279 = (v269 + 40);
            v276 = (v269 + 16);
            v278 = (v269 + 24);
            goto LABEL_60;
          }

LABEL_66:
          __break(1u);
        }

        MEMORY[0x1EEE9AC00](v214);
        v299 = v201;
LABEL_70:
        fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, &v298, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
      }

      MEMORY[0x1EEE9AC00](v213);
      v299 = v201;
LABEL_68:
      fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, &v298, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
    }

LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  sub_1CEFCCC44(v76, &unk_1EC4BEC00, &unk_1CF9FCB60);
  v79 = swift_allocObject();
  *(v79 + 16) = 1;
  v80 = v79 | 0x7000000000000000;
  v81 = swift_allocObject();
  *(v81 + 16) = v80;
  v82 = v81 | 0x9000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
  sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
  v83 = swift_allocError();
  v85 = v84;
  sub_1CF1B8150();
  v86 = swift_allocError();
  *v87 = v82;
  *&v365 = v308;
  BYTE8(v365) = 1;
  *(&v365 + 9) = v374[0];
  HIDWORD(v365) = *(v374 + 3);
  v366 = 0u;
  v367 = 0u;
  v368 = 0u;
  v369 = 0u;
  v370 = 0u;
  v371 = 0u;
  v372 = v86;
  sub_1CF2A8DE0(&v365);
  *v85 = v365;
  v88 = v366;
  v89 = v367;
  v90 = v369;
  *(v85 + 48) = v368;
  *(v85 + 64) = v90;
  *(v85 + 16) = v88;
  *(v85 + 32) = v89;
  v91 = v370;
  v92 = v371;
  v93 = v372;
  *(v85 + 128) = v373;
  *(v85 + 96) = v92;
  *(v85 + 112) = v93;
  *(v85 + 80) = v91;
  swift_willThrow();

LABEL_7:
  v113 = v354;
  *v354 = v83;
  swift_storeEnumTagMultiPayload();
  v114 = v83;
  v356(v113);

  v115 = &unk_1EC4BF310;
  v116 = &unk_1CF9FDB30;
  v117 = v113;
LABEL_8:
  result = sub_1CEFCCC44(v117, v115, v116);
  v119 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CF2766DC@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X3>, void *a4@<X4>, uint64_t *a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, __int128 *a9)
{
  v167 = a5;
  v168 = a7;
  v166 = a6;
  LODWORD(v161) = a1;
  v163 = type metadata accessor for VFSItem(0);
  v157 = *(v163 - 8);
  v13 = *(v157 + 64);
  MEMORY[0x1EEE9AC00](v163);
  v170 = (&v147 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED00, &unk_1CFA006E0);
  v15 = *(*(v160 - 8) + 64);
  MEMORY[0x1EEE9AC00](v160);
  v17 = &v147 - v16;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v172 = *(v162 - 8);
  v18 = *(v172 + 64);
  MEMORY[0x1EEE9AC00](v162);
  v165 = &v147 - v19;
  v20 = sub_1CF9E53C8();
  v158 = *(v20 - 8);
  v21 = *(v158 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v147 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = type metadata accessor for ItemMetadata();
  v24 = *(*(v198 - 8) + 64);
  MEMORY[0x1EEE9AC00](v198);
  MEMORY[0x1EEE9AC00](v25);
  v171 = &v147 - v26;
  MEMORY[0x1EEE9AC00](v27);
  MEMORY[0x1EEE9AC00](v28);
  v164 = &v147 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v147 - v33;
  if (!a3)
  {
    sub_1CF2B0794(&v182);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
    sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
    swift_allocError();
    *v54 = v182;
    v55 = v186;
    v57 = v183;
    v56 = v184;
    *(v54 + 48) = v185;
    *(v54 + 64) = v55;
    *(v54 + 16) = v57;
    *(v54 + 32) = v56;
    v59 = v188;
    v58 = v189;
    v60 = v187;
    *(v54 + 128) = v190;
    *(v54 + 96) = v59;
    *(v54 + 112) = v58;
    *(v54 + 80) = v60;
    return swift_willThrow();
  }

  v155 = v32;
  v156 = v31;
  v154 = a8;
  v159 = v17;
  v35 = a4[17];
  v169 = a2;
  v36 = *(a2 + 8);
  v37 = v35 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_wharfHandle;
  swift_beginAccess();
  if (v36 != *(v37 + 32))
  {
    v42 = objc_sync_enter(a4);
    if (v42)
    {
      goto LABEL_86;
    }

    v61 = a4[20];

    v44 = objc_sync_exit(a4);
    v62 = v169;
    if (v44)
    {
      goto LABEL_87;
    }

    v63 = *(v61 + 32);

    v64 = sub_1CF9C46A4(v62, v63);

    v40 = v198;
    if (v64)
    {
      goto LABEL_17;
    }

    LODWORD(v182) = 2;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF2A9448(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
    sub_1CF9E57D8();
    sub_1CF9E53A8();
    (*(v158 + 8))(v23, v20);
    return swift_willThrow();
  }

  v38 = v167;
  swift_beginAccess();
  v39 = v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0) + 40);
  v40 = v198;
  if (*(v39 + *(v198 + 60)))
  {
    v41 = 0x1FBF18F07;
  }

  else
  {
    v41 = 0x1EBF18F07;
  }

  sub_1CEFD90AC(v39, v34, type metadata accessor for ItemMetadata);
  v42 = objc_sync_enter(a4);
  if (v42)
  {
    goto LABEL_86;
  }

  v43 = a4[20];

  v44 = objc_sync_exit(a4);
  if (v44)
  {
LABEL_87:
    MEMORY[0x1EEE9AC00](v44);
    v145 = a4;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v144, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v197 = *(a9 + 30);
  v45 = a9[13];
  v194 = a9[12];
  v195 = v45;
  v196 = a9[14];
  v46 = a9[9];
  v190 = a9[8];
  v191 = v46;
  v47 = a9[11];
  v192 = a9[10];
  v193 = v47;
  v48 = a9[5];
  v186 = a9[4];
  v187 = v48;
  v49 = a9[7];
  v188 = a9[6];
  v189 = v49;
  v50 = a9[1];
  v182 = *a9;
  v183 = v50;
  v51 = a9[3];
  v184 = a9[2];
  v185 = v51;
  v52 = v173;
  (*(*v35 + 496))(&v174, v166, v161, v169, v168, v34, v41, v43, &v182);
  if (v52)
  {
    sub_1CEFE5888(v34, type metadata accessor for ItemMetadata);
  }

  v173 = 0;

  sub_1CEFE5888(v34, type metadata accessor for ItemMetadata);

LABEL_17:
  v65 = v167;
  swift_beginAccess();
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0);
  v67 = v65 + *(v66 + 40);
  v68 = v164;
  sub_1CEFD90AC(v67, v164, type metadata accessor for ItemMetadata);
  v69 = v40[28];
  if ((*(v67 + v69) & 1) != 0 || (v70 = *(v169 + 40), v70 == 3))
  {
    *(v68 + v69) = 1;
    v71 = v166;
LABEL_20:
    v72 = v169;
    *(v68 + v40[26]) = *(v169 + 56);
    *(v68 + v40[27]) = *(v72 + 168);
    goto LABEL_21;
  }

  swift_beginAccess();
  v71 = v166;
  if (*(v65 + *(v66 + 40)))
  {
    *(v68 + v40[28]) = 0;
  }

  else
  {
    *(v68 + v40[28]) = v70 == 2;
    if (v70 == 2)
    {
      goto LABEL_20;
    }
  }

LABEL_21:
  swift_beginAccess();
  v73 = *(v71 + 16);
  if (*(v65 + *(v66 + 40)) - 1 > 1)
  {
    v74 = *(v71 + 32);
    LODWORD(v158) = *(v71 + 32) == 0;
    if (!v74)
    {
      v74 = v73;
    }

    v153 = v74;
  }

  else
  {
    LODWORD(v158) = 1;
    v153 = v73;
  }

  swift_beginAccess();
  v150 = *v65;
  v149 = *(v65 + 8);
  v75 = *(v71 + 36);
  v76 = v155;
  sub_1CEFD90AC(v68, v155, type metadata accessor for ItemMetadata);
  v77 = *v76;
  if (v77 == 1)
  {
    v78 = 0;
    v79 = 0;
    v80 = 1;
  }

  else
  {
    v79 = 0;
    v78 = 0;
    v80 = 1;
    if (v77 != 2 && !v76[v40[20]])
    {
      if (v76[v40[28]])
      {
        v78 = 0;
      }

      else
      {
        v80 = 0;
        v78 = *&v76[v40[26]];
      }

      v79 = v75;
    }
  }

  v151 = v79;
  v152 = v80;
  sub_1CEFE5888(v76, type metadata accessor for ItemMetadata);
  swift_beginAccess();
  v81 = v65[3];
  v166 = v65[2];
  sub_1CEFD90AC(v68, v171, type metadata accessor for ItemMetadata);
  v82 = v159;
  sub_1CEFCCBDC(v168, v159, &unk_1EC4BED00, &unk_1CFA006E0);
  v83 = sub_1CF9E5A58();
  v84 = *(v83 - 8);
  v85 = v165;
  (*(v84 + 32))(v165, v82, v83);
  (*(v84 + 56))(v85, 0, 1, v83);

  v42 = objc_sync_enter(a4);
  if (v42)
  {
LABEL_86:
    MEMORY[0x1EEE9AC00](v42);
    v145 = a4;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v144, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v155 = v78;
  v161 = v73;
  v169 = a4[20];

  v44 = objc_sync_exit(a4);
  v86 = v170;
  v88 = v162;
  v87 = v163;
  v89 = v172;
  if (v44)
  {
    goto LABEL_87;
  }

  v168 = *(v160 + 48);
  v90 = sub_1CEFE528C(&v182);
  v91 = *(v87 + 48);
  v92 = *(v89 + 56);
  v172 = v89 + 56;
  v167 = v91;
  v160 = v92;
  v92(v91 + v86, 1, 1, v88, v90);
  v93 = v166;
  v174 = v166;
  v175 = v81;
  v178 = 58;
  v179 = 0xE100000000000000;
  v180 = 47;
  v181 = 0xE100000000000000;
  v94 = sub_1CEFE4E68();
  v95 = MEMORY[0x1E69E6158];
  v96 = sub_1CF9E7668();
  v98 = v97;
  v174 = v93;
  v175 = v81;
  v178 = 58;
  v179 = 0xE100000000000000;
  v180 = 47;
  v181 = 0xE100000000000000;
  v145 = v94;
  v146 = v94;
  v144[0] = v95;
  v144[1] = v94;
  v174 = sub_1CF9E7668();
  v175 = v99;
  v100 = v173;
  sub_1CEFE52D8(0x70756B6F6F6CLL, 0xE600000000000000, &v174);
  if (v100)
  {

    sub_1CEFCCC44(v165, &unk_1EC4BE310, qword_1CF9FCBE0);
    sub_1CEFE5888(v171, type metadata accessor for ItemMetadata);
    sub_1CEFE5888(v164, type metadata accessor for ItemMetadata);

    sub_1CEFCCC44(v167 + v170, &unk_1EC4BED30, &unk_1CFA00710);
    return sub_1CEFE5888(&v159[v168], type metadata accessor for VFSItem);
  }

  v148 = v81;
  v173 = v96;

  sub_1CEFD90AC(v171, v156, type metadata accessor for ItemMetadata);
  v101 = v169;
  v102 = v161;
  if (v161 == *(v169 + 24))
  {
    v103 = v170;
    v104 = v154;
    if (!v158 || v153 != v161)
    {
      sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/tree/VFSItem.swift", 119, 2, 290);
    }

    *v170 = 0;
    v105 = 2;
    *(v103 + 8) = 2;
    *(v103 + 16) = 0;
    v106 = 24;
    goto LABEL_46;
  }

  swift_beginAccess();
  v107 = *(v101 + 96);
  v103 = v170;
  v104 = v154;
  if (*(v107 + 16))
  {
    v108 = sub_1CF7BF2C0(v153, v158);
    if (v109)
    {
      v110 = v108;

      v111 = *(v107 + 56) + 32 * v110;
      v112 = *v111;
      v113 = *(v111 + 8);
      v98 = *(v111 + 24);
      v173 = *(v111 + 16);

      *v103 = v153;
      *(v103 + 8) = v158;
      v106 = 24;
      v105 = v113;
      v104 = v154;
      *(v103 + 16) = v112;
LABEL_46:
      v114 = v156;
      goto LABEL_61;
    }
  }

  v115 = v149;
  v114 = v156;
  v105 = v158;
  v116 = v150;
  if (v149 != 1)
  {
LABEL_60:
    *v103 = v153;
    *(v103 + 8) = v105;
    v106 = 24;
    v105 = v115;
    *(v103 + 16) = v116;
    goto LABEL_61;
  }

  v117 = v166;
  if (*(v101 + 24) != v150)
  {
    if ((*(v101 + 48) & 1) == 0 && *(v101 + 40) == v150)
    {
      *v103 = v153;
      *(v103 + 8) = v105;
      *(v103 + 16) = 1;
      v105 = 2;
      v106 = 24;
      goto LABEL_61;
    }

    goto LABEL_60;
  }

  if (qword_1EDEAEE10 != -1)
  {
    v143 = v166;
    swift_once();
    v117 = v143;
    v114 = v156;
  }

  if (__PAIR128__(v148, v117) == xmmword_1EDEBBE48 || (v118 = sub_1CF9E8048(), v114 = v156, (v118 & 1) != 0))
  {
    *v103 = 1;
    v105 = 2;
    *(v103 + 8) = 2;
    *(v103 + 16) = 1;
    v106 = 24;
  }

  else
  {
    *(v103 + 16) = 0;
    *(v103 + 24) = 2;
    *v103 = v153;
    v106 = 8;
  }

LABEL_61:
  *(v103 + v106) = v105;
  v119 = (v114 + *(v198 + 56));
  if (v119[1])
  {
    v198 = v98;
    v120 = *v119;
    sub_1CF51B588(&v174);
    v121 = v174;
    v122 = v175;
    v123 = v177;
    v166 = v176;

    sub_1CF51B588(&v174);
    v125 = v176;
    v124 = v177;
    if (v121 == v174 && v122 == v175)
    {
    }

    else
    {
      v126 = sub_1CF9E8048();

      if ((v126 & 1) == 0)
      {

        sub_1CEFE5888(v171, type metadata accessor for ItemMetadata);
        sub_1CEFE5888(v164, type metadata accessor for ItemMetadata);
        v103 = v170;
        v104 = v154;
        v102 = v161;
        goto LABEL_76;
      }
    }

    v103 = v170;
    v102 = v161;
    if (!v123)
    {
      sub_1CEFE5888(v171, type metadata accessor for ItemMetadata);
      sub_1CEFE5888(v164, type metadata accessor for ItemMetadata);
      v104 = v154;
      v98 = v198;
      if (!v124)
      {
        goto LABEL_78;
      }

      goto LABEL_77;
    }

    v104 = v154;
    if (v124)
    {
      if (v166 == v125 && v123 == v124)
      {

        sub_1CEFE5888(v171, type metadata accessor for ItemMetadata);
        sub_1CEFE5888(v164, type metadata accessor for ItemMetadata);
        v98 = v198;
        goto LABEL_78;
      }

      v142 = sub_1CF9E8048();

      sub_1CEFE5888(v171, type metadata accessor for ItemMetadata);
      sub_1CEFE5888(v164, type metadata accessor for ItemMetadata);
      v98 = v198;
      if (v142)
      {
        goto LABEL_78;
      }

LABEL_77:
      v127 = v119[1];

      *v119 = 0;
      v119[1] = 0;
      goto LABEL_78;
    }

    sub_1CEFE5888(v171, type metadata accessor for ItemMetadata);
    sub_1CEFE5888(v164, type metadata accessor for ItemMetadata);
LABEL_76:
    v98 = v198;
    goto LABEL_77;
  }

  sub_1CEFE5888(v171, type metadata accessor for ItemMetadata);
  sub_1CEFE5888(v164, type metadata accessor for ItemMetadata);
LABEL_78:
  *(v103 + 32) = v173;
  *(v103 + 40) = v98;
  v128 = v163;
  v129 = v103 + *(v163 + 36);
  *v129 = v102;
  *(v129 + 8) = v151;
  v130 = v156;
  *(v129 + 16) = v155;
  *(v129 + 24) = v152;
  sub_1CEFD90AC(v130, v103 + v128[7], type metadata accessor for ItemMetadata);
  v131 = v167;
  sub_1CEFCCC44(v167 + v103, &unk_1EC4BED30, &unk_1CFA00710);
  sub_1CEFE55D0(v165, v131 + v103, &unk_1EC4BE310, qword_1CF9FCBE0);
  (v160)(v131 + v103, 0, 1, v162);
  LODWORD(v131) = *(v169 + 16);

  *(v103 + v128[13]) = v131;
  v132 = v103 + v128[14];
  *v132 = 0;
  *(v132 + 4) = 1;
  v133 = v103 + v128[11];
  *v133 = 0;
  *(v133 + 4) = 1;
  v134 = v103 + v128[8];
  v135 = v195;
  *(v134 + 192) = v194;
  *(v134 + 208) = v135;
  *(v134 + 224) = v196;
  *(v134 + 240) = v197;
  v136 = v191;
  *(v134 + 128) = v190;
  *(v134 + 144) = v136;
  v137 = v193;
  *(v134 + 160) = v192;
  *(v134 + 176) = v137;
  v138 = v187;
  *(v134 + 64) = v186;
  *(v134 + 80) = v138;
  v139 = v189;
  *(v134 + 96) = v188;
  *(v134 + 112) = v139;
  v140 = v183;
  *v134 = v182;
  *(v134 + 16) = v140;
  v141 = v185;
  *(v134 + 32) = v184;
  *(v134 + 48) = v141;
  *(v103 + v128[10]) = 0;
  sub_1CEFE5888(v130, type metadata accessor for ItemMetadata);
  sub_1CEFE4C60(v103, v104, type metadata accessor for VFSItem);
  sub_1CEFE5888(&v159[v168], type metadata accessor for VFSItem);
  return (*(v157 + 56))(v104, 0, 1, v128);
}

uint64_t sub_1CF277AB8(__int128 *a1, char *a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  v78 = a2;
  v79 = a5;
  v72 = a4;
  v9 = sub_1CF9E63D8();
  v69 = *(v9 - 8);
  v70 = v9;
  v10 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v68 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0);
  v73 = *(v12 - 8);
  v13 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v68 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v76 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v68 - v20;
  v80 = &v68 - v20;
  v22 = a1[1];
  v87 = *a1;
  v88 = v22;
  v23 = a1[3];
  v89 = a1[2];
  v90 = v23;
  v24 = a3[13];
  v103 = a3[12];
  v104 = v24;
  v105 = a3[14];
  v106 = *(a3 + 30);
  v25 = a3[9];
  v99 = a3[8];
  v100 = v25;
  v26 = a3[11];
  v101 = a3[10];
  v102 = v26;
  v27 = a3[5];
  v95 = a3[4];
  v96 = v27;
  v28 = a3[7];
  v97 = a3[6];
  v98 = v28;
  v29 = a3[1];
  v91 = *a3;
  v92 = v29;
  v30 = a3[3];
  v93 = a3[2];
  v94 = v30;
  v71 = v5;
  v31 = *(v5 + 216);
  v75 = *(v5 + 224);
  v77 = v31;
  v32 = sub_1CF9E6448();
  v74 = *(v32 - 8);
  (*(v74 + 56))(v21, 1, 1, v32);
  v33 = swift_allocObject();
  v34 = v79;
  *(v33 + 16) = a4;
  *(v33 + 24) = v34;
  sub_1CEFCCBDC(v78, v15, &unk_1EC4BFD90, &unk_1CFA134F0);
  v35 = (*(v73 + 80) + 16) & ~*(v73 + 80);
  v36 = (v13 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
  v38 = (v37 + 71) & 0xFFFFFFFFFFFFFFF8;
  v78 = ((v38 + 255) & 0xFFFFFFFFFFFFFFF8);
  v39 = swift_allocObject();
  sub_1CEFE55D0(v15, v39 + v35, &unk_1EC4BFD90, &unk_1CFA134F0);
  *(v39 + v36) = v71;
  v40 = (v39 + v37);
  v41 = v90;
  v40[2] = v89;
  v40[3] = v41;
  v42 = v88;
  *v40 = v87;
  v40[1] = v42;
  v43 = v39 + v38;
  v44 = v32;
  v45 = v76;
  v46 = v94;
  *(v43 + 32) = v93;
  *(v43 + 48) = v46;
  v47 = v92;
  *v43 = v91;
  *(v43 + 16) = v47;
  v48 = v98;
  *(v43 + 96) = v97;
  *(v43 + 112) = v48;
  v49 = v96;
  *(v43 + 64) = v95;
  *(v43 + 80) = v49;
  v50 = v102;
  *(v43 + 160) = v101;
  *(v43 + 176) = v50;
  v51 = v100;
  *(v43 + 128) = v99;
  *(v43 + 144) = v51;
  *(v43 + 240) = v106;
  v52 = v105;
  *(v43 + 208) = v104;
  *(v43 + 224) = v52;
  *(v43 + 192) = v103;
  v53 = v79;
  v54 = &v78[v39];
  *v54 = v72;
  *(v54 + 1) = v53;
  v55 = swift_allocObject();
  v55[2] = sub_1CF2BA178;
  v55[3] = v33;
  v56 = v75;
  v55[4] = v75;
  swift_retain_n();
  v78 = v77;

  sub_1CEFCCBDC(&v87, &v81, &unk_1EC4BF260, &unk_1CFA01B60);
  sub_1CEFCCBDC(&v91, &v81, &qword_1EC4BECF0, &unk_1CF9FEEB0);
  v79 = v33;

  v57 = fpfs_current_log();
  v58 = *(v56 + 16);
  sub_1CEFCCBDC(v80, v45, &unk_1EC4BE370, qword_1CFA01B30);
  v59 = v74;
  if ((*(v74 + 48))(v45, 1, v44) == 1)
  {
    sub_1CEFCCC44(v45, &unk_1EC4BE370, qword_1CFA01B30);
    v60 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v61 = v68;
    sub_1CF9E6438();
    (*(v59 + 8))(v45, v44);
    v60 = sub_1CF9E63C8();
    (*(v69 + 8))(v61, v70);
  }

  v62 = swift_allocObject();
  v62[2] = v57;
  v62[3] = sub_1CF2B0F0C;
  v62[4] = v39;
  v85 = sub_1CF2BA17C;
  v86 = v62;
  v81 = MEMORY[0x1E69E9820];
  v82 = 1107296256;
  v83 = sub_1CEFCA444;
  v84 = &block_descriptor_667;
  v63 = _Block_copy(&v81);
  v64 = v57;

  v85 = sub_1CF2BA184;
  v86 = v55;
  v81 = MEMORY[0x1E69E9820];
  v82 = 1107296256;
  v83 = sub_1CEFCA444;
  v84 = &block_descriptor_670;
  v65 = _Block_copy(&v81);

  v66 = v78;
  fp_task_tracker_async_and_qos(v58, v78, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v60, v63, v65);
  _Block_release(v65);
  _Block_release(v63);

  return sub_1CEFCCC44(v80, &unk_1EC4BE370, qword_1CFA01B30);
}

uint64_t sub_1CF278154(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, void (*a5)(uint64_t, void), uint64_t a6)
{
  v60 = a6;
  v61 = a5;
  v55 = a2;
  v56 = a3;
  v57 = a1;
  v68 = *MEMORY[0x1E69E9840];
  v54 = type metadata accessor for ItemMetadata();
  v7 = *(*(v54 - 8) + 64);
  MEMORY[0x1EEE9AC00](v54);
  v59 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1CF9E6068();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v52 - v19;
  v21 = type metadata accessor for Signpost(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v58 = &v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEA8528 != -1)
  {
    swift_once();
  }

  v24 = qword_1EDEBB990;
  (*(v10 + 56))(v20, 1, 1, v9);
  v53 = v20;
  sub_1CEFCCBDC(v20, v18, &unk_1EC4BED20, &unk_1CFA00700);
  v25 = *(v10 + 48);
  if (v25(v18, 1, v9) == 1)
  {
    v26 = v24;
    sub_1CF9E6048();
    if (v25(v18, 1, v9) != 1)
    {
      sub_1CEFCCC44(v18, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v10 + 32))(v13, v18, v9);
  }

  v27 = v58;
  (*(v10 + 16))(v58, v13, v9);
  *(v27 + *(v21 + 20)) = v24;
  v28 = v27 + *(v21 + 24);
  *v28 = "FS stage creation";
  *(v28 + 8) = 17;
  *(v28 + 16) = 2;
  v29 = v24;
  sub_1CF9E7468();
  sub_1CF9E6038();
  (*(v10 + 8))(v13, v9);
  sub_1CEFCCC44(v53, &unk_1EC4BED20, &unk_1CFA00700);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0);
  v31 = v57;
  v32 = (v57 + *(v30 + 40));
  v33 = v59;
  sub_1CEFD90AC(v32, v59, type metadata accessor for ItemMetadata);
  v34 = v54;
  v64 = v32[*(v54 + 112)];
  if (v64)
  {
    v35 = 1;
  }

  else if (*v32 == 1)
  {
    v36 = *(v31 + 24);
    *&v65[0] = *(v31 + 16);
    *(&v65[0] + 1) = v36;
    *&v67[0] = 47;
    *(&v67[0] + 1) = 0xE100000000000000;
    v62 = 58;
    v63 = 0xE100000000000000;
    sub_1CEFE4E68();
    sub_1CF9E7668();
    sub_1CF9E6978();

    fpfs_pkg_system_lookup();

    v35 = v64;
  }

  else
  {
    v35 = 0;
  }

  *(v33 + *(v34 + 116)) = v35;
  v37 = *(v55 + 136);
  v38 = v56[1];
  v67[0] = *v56;
  v67[1] = v38;
  v39 = v56[3];
  v67[2] = v56[2];
  v67[3] = v39;
  v40 = *(a4 + 208);
  v65[12] = *(a4 + 192);
  v65[13] = v40;
  v65[14] = *(a4 + 224);
  v66 = *(a4 + 240);
  v41 = *(a4 + 144);
  v65[8] = *(a4 + 128);
  v65[9] = v41;
  v42 = *(a4 + 176);
  v65[10] = *(a4 + 160);
  v65[11] = v42;
  v43 = *(a4 + 80);
  v65[4] = *(a4 + 64);
  v65[5] = v43;
  v44 = *(a4 + 112);
  v65[6] = *(a4 + 96);
  v65[7] = v44;
  v45 = *(a4 + 16);
  v65[0] = *a4;
  v65[1] = v45;
  v46 = *(a4 + 48);
  v65[2] = *(a4 + 32);
  v65[3] = v46;
  v47 = *(v31 + 24);
  v62 = *(v31 + 16);
  v63 = v47;
  v48 = *(*v37 + 448);

  v48(v67, v33, v65, &v62, 1, 0);

  v61(v49, 0);

  sub_1CEFE5888(v33, type metadata accessor for ItemMetadata);
  sub_1CF9E7458();
  sub_1CF9E6038();
  result = sub_1CEFE5888(v27, type metadata accessor for Signpost);
  v51 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1CF278908(uint64_t *a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v236 = a3;
  v230 = a5;
  v257 = *MEMORY[0x1E69E9840];
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE000, &unk_1CFA006A0);
  v8 = *(*(v221 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v221);
  v215 = (&v205 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x1EEE9AC00](v9);
  v214 = (&v205 - v12);
  MEMORY[0x1EEE9AC00](v11);
  v220 = (&v205 - v13);
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE2F0, qword_1CFA04220);
  v14 = *(*(v216 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v216);
  v217 = &v205 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v219 = &v205 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v223 = &v205 - v20;
  v21 = type metadata accessor for VFSItem(0);
  v233 = *(v21 - 8);
  v234 = v21;
  v22 = *(v233 + 64);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v228 = &v205 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v227 = &v205 - v25;
  v26 = sub_1CF9E5A58();
  v27 = *(v26 - 8);
  v225 = v26;
  v226 = v27;
  v28 = *(v27 + 64);
  v29 = MEMORY[0x1EEE9AC00](v26);
  v224 = &v205 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v222 = &v205 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x1EEE9AC00](v32 - 8);
  v231 = &v205 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1EEE9AC00](v34);
  v218 = &v205 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  Strong = &v205 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v42 = (&v205 - v41);
  v43 = MEMORY[0x1EEE9AC00](v40);
  v45 = &v205 - v44;
  v46 = MEMORY[0x1EEE9AC00](v43);
  v48 = &v205 - v47;
  MEMORY[0x1EEE9AC00](v46);
  v232 = *a1;
  v235 = *(a1 + 8);
  v50 = &v205 - v49;
  v51 = a2[3];
  v253 = a2[2];
  v254 = v51;
  v52 = a2[5];
  v255 = a2[4];
  v256 = v52;
  v53 = a2[1];
  v251 = *a2;
  v252 = v53;
  v54 = v237;
  v55 = *v236;
  v56 = v251;
  sub_1CF263ADC(v251, 0, a4, &v205 - v49);
  if (!v54)
  {
    v209 = v56;
    v210 = v55;
    v211 = v42;
    v212 = a4;
    v57 = v233;
    v58 = v234;
    v59 = *(v233 + 48);
    v236 = 0;
    v237 = v233 + 48;
    if (v59(v50, 1, v234) || (v60 = v50[8], v60 == 255))
    {
      v61 = v235;
      v62 = v48;
      if (v235 == 255)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }

    v61 = v235;
    v62 = v48;
    if (v235 != 255)
    {
      v100 = *v50;
      if (v50[8])
      {
        if (v60 == 1)
        {
          if (v235 != 1 || v100 != v232)
          {
            goto LABEL_5;
          }
        }

        else if (v100)
        {
          if (v235 != 2 || v232 != 1)
          {
            goto LABEL_5;
          }
        }

        else if (v235 != 2 || v232)
        {
          goto LABEL_5;
        }
      }

      else if (v235 || v100 != v232)
      {
        goto LABEL_5;
      }

LABEL_6:
      v208 = v45;
      v213 = v50;
      sub_1CEFCCBDC(v50, v62, &unk_1EC4BEC00, &unk_1CF9FCB60);
      v63 = v58;
      v64 = v59(v62, 1, v58);
      sub_1CEFCCC44(v62, &unk_1EC4BEC00, &unk_1CF9FCB60);
      if (v64 == 1)
      {
        v65 = v213;
        if (v61 == 2)
        {
          v66 = v211;
          if (v232 == 1)
          {
            v67 = v238;
            v68 = objc_sync_enter(v238);
            if (v68)
            {
              goto LABEL_105;
            }

            v69 = v67[20];

            v70 = objc_sync_exit(v67);
            if (v70)
            {
              MEMORY[0x1EEE9AC00](v70);
              v203 = v67;
              goto LABEL_114;
            }

            v71 = v236;
            sub_1CF367450(1);
            if (v71)
            {
            }

            v236 = 0;

            v68 = objc_sync_enter(v67);
            if (v68)
            {
LABEL_105:
              MEMORY[0x1EEE9AC00](v68);
              v203 = v67;
              goto LABEL_112;
            }

            v114 = v67[20];

            v115 = objc_sync_exit(v67);
            if (v115)
            {
              goto LABEL_108;
            }

            v116 = *(v114 + 40);
            v117 = *(v114 + 48);

            if ((v117 & 1) != 0 || v116 == v209)
            {
              v65 = v213;
            }

            else
            {
              v118 = v208;
              v119 = v236;
              sub_1CF263ADC(v116, 0, v212, v208);
              v236 = v119;
              v65 = v213;
              if (v119)
              {
                goto LABEL_48;
              }

              sub_1CEFDA9E0(v118, v213, &unk_1EC4BEC00, &unk_1CF9FCB60);
            }
          }

LABEL_15:
          sub_1CEFCCBDC(v65, v66, &unk_1EC4BEC00, &unk_1CF9FCB60);
          v211 = v59;
          v72 = v59(v66, 1, v63);
          sub_1CEFCCC44(v66, &unk_1EC4BEC00, &unk_1CF9FCB60);
          if (v72 != 1)
          {
            v80 = v212;
            v81 = v231;
            goto LABEL_19;
          }

          v73 = *(&v254 + 1);
          v74 = v255;
          *&v241 = *(&v253 + 1);
          BYTE8(v241) = v254;
          memset(v248, 0, 96);

          sub_1CEFDAA48(&v241, v248, v247);
          v75 = *v247;

          v76 = Strong;
          v77 = v75;
          v78 = v212;
          v79 = v236;
          sub_1CF263ADC(v77, 0, v212, Strong);
          v236 = v79;
          if (v79)
          {

LABEL_48:
            sub_1CEFCCC44(v65, &unk_1EC4BEC00, &unk_1CF9FCB60);
            goto LABEL_49;
          }

          v209 = v74;
          if (v211(v76, 1, v63) == 1)
          {
            sub_1CEFCCC44(v76, &unk_1EC4BEC00, &unk_1CF9FCB60);
            v101 = swift_allocObject();
            *(v101 + 16) = v78;
            v102 = v101 | 0x7000000000000000;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
            sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
            v103 = swift_allocError();
            v105 = v104;
            sub_1CF1B8150();
            v106 = swift_allocError();
            *v107 = v102;
            *&v248[0] = v232;
            BYTE8(v248[0]) = v235;
            *(v248 + 9) = *v247;
            HIDWORD(v248[0]) = *&v247[3];
            memset(&v248[1], 0, 96);
            v249 = v106;
            sub_1CF2A8DE0(v248);
            *v105 = v248[0];
            v108 = v248[1];
            v109 = v248[2];
            v110 = v248[4];
            *(v105 + 48) = v248[3];
            *(v105 + 64) = v110;
            *(v105 + 16) = v108;
            *(v105 + 32) = v109;
            v111 = v248[5];
            v112 = v248[6];
            v113 = v249;
            *(v105 + 128) = v250;
            *(v105 + 96) = v112;
            *(v105 + 112) = v113;
            *(v105 + 80) = v111;
            v236 = v103;
            swift_willThrow();

            goto LABEL_48;
          }

          v120 = v227;
          sub_1CEFE4C60(v76, v227, type metadata accessor for VFSItem);
          if ((v78 & 1) == 0)
          {
            v121 = v120 + *(v63 + 28);
            if (*(v121 + *(type metadata accessor for ItemMetadata() + 64)))
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
              sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
              v122 = swift_allocError();
              v124 = v123;
              sub_1CF1B8150();
              v125 = swift_allocError();
              *v126 = 0xB000000000000028;
              *&v248[0] = v232;
              BYTE8(v248[0]) = v235;
              *(v248 + 9) = *v247;
              HIDWORD(v248[0]) = *&v247[3];
              memset(&v248[1], 0, 96);
              v249 = v125;
              sub_1CF2A8DE0(v248);
              *v124 = v248[0];
              v127 = v248[1];
              v128 = v248[2];
              v129 = v248[4];
              *(v124 + 48) = v248[3];
              *(v124 + 64) = v129;
              *(v124 + 16) = v127;
              *(v124 + 32) = v128;
              v130 = v248[5];
              v131 = v248[6];
              v132 = v249;
              *(v124 + 128) = v250;
              *(v124 + 96) = v131;
              *(v124 + 112) = v132;
              *(v124 + 80) = v130;
              v236 = v122;
              swift_willThrow();

              v133 = v120;
LABEL_47:
              sub_1CEFE5888(v133, type metadata accessor for VFSItem);
              goto LABEL_48;
            }
          }

          v134 = v238;
          v135 = objc_sync_enter(v238);
          if (v135)
          {
LABEL_111:
            MEMORY[0x1EEE9AC00](v135);
            v203 = v134;
LABEL_112:
            fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, &v201, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
          }

          v115 = objc_sync_exit(v134);
          v137 = v225;
          v136 = v226;
          v138 = v224;
          if (!v115)
          {
            v139 = v223;
            sub_1CF25116C(v223);
            if ((*(v136 + 48))(v139, 1, v137) == 1)
            {
              sub_1CEFCCC44(v139, &unk_1EC4BE310, qword_1CF9FCBE0);
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
              sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
              v140 = swift_allocError();
              v142 = v141;
              sub_1CF1B8150();
              v143 = swift_allocError();
              *v144 = 0xB000000000000008;
              *&v248[0] = v232;
              BYTE8(v248[0]) = v235;
              *(v248 + 9) = *v247;
              HIDWORD(v248[0]) = *&v247[3];
              memset(&v248[1], 0, 96);
              v249 = v143;
              sub_1CF2A8DE0(v248);
              *v142 = v248[0];
              v145 = v248[1];
              v146 = v248[2];
              v147 = v248[4];
              *(v142 + 48) = v248[3];
              *(v142 + 64) = v147;
              *(v142 + 16) = v145;
              *(v142 + 32) = v146;
              v148 = v248[5];
              v149 = v248[6];
              v150 = v249;
              *(v142 + 128) = v250;
              *(v142 + 96) = v149;
              *(v142 + 112) = v150;
              *(v142 + 80) = v148;
              v236 = v140;
              swift_willThrow();

              v133 = v227;
              goto LABEL_47;
            }

            (*(v136 + 32))(v138, v139, v137);
            *&v248[0] = v73;
            *(&v248[0] + 1) = v209;
            *v247 = 47;
            *&v247[8] = 0xE100000000000000;
            *&v241 = 58;
            *(&v241 + 1) = 0xE100000000000000;
            v203 = sub_1CEFE4E68();
            v204 = v203;
            v201 = MEMORY[0x1E69E6158];
            v202 = v203;
            sub_1CF9E7668();
            sub_1CF9E5958();

            v153 = *(v136 + 8);
            v152 = v136 + 8;
            v224 = v153;
            (v153)(v138, v137);
            sub_1CEFE5888(v227, type metadata accessor for VFSItem);
            sub_1CF9E5A18();
            v154 = qword_1EDEBBE70;
            v134 = v238;
            swift_beginAccess();
            v155 = *(v134 + v154);
            v156 = __CFADD__(v155, 1);
            v157 = v155 + 1;
            if (v156)
            {
              __break(1u);
              goto LABEL_104;
            }

            *(v134 + v154) = v157;
            v135 = objc_sync_enter(v134);
            if (!v135)
            {
              v226 = v152;
              v158 = v134[20];

              v159 = objc_sync_exit(v134);
              if (!v159)
              {
                v160 = type metadata accessor for VFSFileTree(0);
                Strong = swift_unknownObjectWeakLoadStrong();
                v161 = v134[36];
                fpfs_openflags(0x208000u);
                sub_1CF9E6978();
                v162 = openat_s();

                LODWORD(v238) = v162;
                if (v162 < 0)
                {
                  v164 = MEMORY[0x1D38683F0](v163);
                  memset(v248, 0, 40);
                  BYTE8(v248[2]) = 19;
                  v165 = sub_1CF19BBE4(v164, v248);
                  sub_1CF1969CC(v248);
                  swift_willThrow();

                  v236 = 0;
                  v80 = v212;
                  v81 = v231;
                  v166 = v219;
                  goto LABEL_77;
                }

                if (v212)
                {
                  v227 = 0;
                }

                else
                {
                  v227 = *(v158 + 24);
                }

                os_unfair_lock_lock((v158 + 56));
                v167 = *(v158 + 64);
                v168 = *(v158 + 72);
                v169 = *(v158 + 88);
                LODWORD(v223) = *(v158 + 89);
                LODWORD(v209) = *(v158 + 90);

                v170 = *(v158 + 80);
                os_unfair_lock_unlock((v158 + 56));
                v207 = &v205;
                MEMORY[0x1EEE9AC00](v171);
                *(&v205 - 10) = v160;
                *(&v205 - 18) = v238;
                v172 = Strong;
                *(&v205 - 8) = v158;
                *(&v205 - 7) = v172;
                *(&v205 - 6) = v161;
                *(&v205 - 40) = 2;
                v201 = v212;
                v202 = 0;
                LOBYTE(v203) = -1;
                v204 = 0;
                *&v248[2] = v167;
                *(&v248[2] + 1) = v168;
                *&v248[0] = MEMORY[0x1E69E9820];
                *(&v248[0] + 1) = 1107296256;
                *&v248[1] = sub_1CEFDB088;
                *(&v248[1] + 1) = &block_descriptor_1289;
                v173 = _Block_copy(v248);
                v208 = v168;

                v206 = v173;
                *v247 = v173;
                *&v247[8] = v170;
                v247[16] = v169;
                v247[17] = v223;
                v247[18] = v209;
                v209 = sub_1CEFDB034();
                v174 = swift_allocError();
                *v175 = 6;
                *(v175 + 8) = 0u;
                *(v175 + 24) = 0u;
                *(v175 + 40) = 19;
                v176 = v220;
                *v220 = v174;
                swift_storeEnumTagMultiPayload();
                v177 = swift_allocObject();
                *(v177 + 16) = v176;
                *(v177 + 24) = sub_1CF2B9F90;
                *(v177 + 32) = &v205 - 12;
                v178 = swift_allocObject();
                *(v178 + 16) = sub_1CF1DBD3C;
                *(v178 + 24) = v177;
                v223 = v177;
                *&v248[2] = sub_1CF1DBD5C;
                *(&v248[2] + 1) = v178;
                *&v248[0] = MEMORY[0x1E69E9820];
                *(&v248[0] + 1) = 1107296256;
                *&v248[1] = sub_1CEFDB270;
                *(&v248[1] + 1) = &block_descriptor_1300;
                v179 = _Block_copy(v248);

                v180 = fpfs_fgetfileattrs_detailed();
                _Block_release(v179);
                LOBYTE(v179) = swift_isEscapingClosureAtFileLocation();

                if ((v179 & 1) == 0)
                {
                  if (v180)
                  {
                    swift_getErrorValue();
                    v181 = v239;
                    v182 = swift_allocError();
                    *v183 = 6;
                    *(v183 + 8) = 0u;
                    *(v183 + 24) = 0u;
                    *(v183 + 40) = 19;
                    v184 = v180;
                    v176 = v220;
                    v185 = sub_1CF199074(v182, v181);

                    v186 = v214;
                    *v214 = v185;
                    swift_storeEnumTagMultiPayload();
                    sub_1CEFDA9E0(v186, v176, &qword_1EC4BE000, &unk_1CFA006A0);
                  }

                  v187 = v215;
                  sub_1CEFCCBDC(v176, v215, &qword_1EC4BE000, &unk_1CFA006A0);
                  if (swift_getEnumCaseMultiPayload() != 1)
                  {

                    v166 = v219;
                    sub_1CEFE55D0(v187, v219, &unk_1EC4BE2F0, qword_1CFA04220);
                    sub_1CEFCCC44(v176, &qword_1EC4BE000, &unk_1CFA006A0);

                    _Block_release(v206);

                    v80 = v212;
                    v65 = v213;
                    v81 = v231;
                    goto LABEL_75;
                  }

                  *&v248[0] = *v187;
                  v165 = *&v248[0];
                  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
                  swift_willThrowTypedImpl();

                  sub_1CEFCCC44(v176, &qword_1EC4BE000, &unk_1CFA006A0);

                  _Block_release(v206);

                  v188 = v165;
                  LODWORD(v248[0]) = sub_1CF9E52A8();
                  sub_1CF196978();
                  v189 = sub_1CF9E5658();

                  v65 = v213;
                  v166 = v219;
                  if (v189)
                  {

                    *v166 = xmmword_1CF9FD940;
                    *(v166 + 16) = 2;
                    swift_storeEnumTagMultiPayload();
                    v80 = v212;
                    v81 = v231;
LABEL_75:
                    close(v238);

                    swift_unknownObjectRelease();
                    (v224)(v222, v225);
LABEL_79:
                    v192 = v217;
                    sub_1CEFE55D0(v166, v217, &unk_1EC4BE2F0, qword_1CFA04220);
                    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
                    v63 = v234;
                    v194 = (v233 + 56);
                    if (EnumCaseMultiPayload == 1)
                    {
                      sub_1CEFCCC44(v192, &unk_1EC4BE2F0, qword_1CFA04220);
                      v195 = 1;
                      v196 = v218;
                    }

                    else
                    {
                      v197 = v192;
                      v196 = v218;
                      sub_1CEFE4C60(v197, v218, type metadata accessor for VFSItem);
                      v195 = 0;
                    }

                    v198 = *v194;
                    (*v194)(v196, v195, 1, v63);
                    sub_1CEFDA9E0(v196, v65, &unk_1EC4BEC00, &unk_1CF9FCB60);
                    if (!v211(v65, 1, v63))
                    {
                      v199 = *(v65 + 8);
                      if (v199 != 255)
                      {
                        if (v235 != 255)
                        {
                          v200 = *v65;
                          if (*(v65 + 8))
                          {
                            if (v199 == 1)
                            {
                              if (v235 == 1 && v200 == v232)
                              {
                                goto LABEL_19;
                              }
                            }

                            else if (v200)
                            {
                              if (v235 == 2 && v232 == 1)
                              {
                                goto LABEL_19;
                              }
                            }

                            else if (v235 == 2 && !v232)
                            {
                              goto LABEL_19;
                            }
                          }

                          else if (!v235 && v200 == v232)
                          {
                            goto LABEL_19;
                          }
                        }

                        goto LABEL_85;
                      }
                    }

                    if (v235 != 255)
                    {
LABEL_85:
                      sub_1CEFCCC44(v65, &unk_1EC4BEC00, &unk_1CF9FCB60);
                      v198(v65, 1, 1, v63);
                    }

LABEL_19:
                    sub_1CEFCCBDC(v65, v81, &unk_1EC4BEC00, &unk_1CF9FCB60);
                    v82 = v211(v81, 1, v63);
                    v83 = v230;
                    v84 = v210;
                    if (v82 == 1)
                    {
                      sub_1CEFCCC44(v81, &unk_1EC4BEC00, &unk_1CF9FCB60);
                      v243 = v253;
                      v244 = v254;
                      v245 = v255;
                      v246 = v256;
                      v241 = v251;
                      v242 = v252;
                      v85 = v65;
                      v86 = swift_allocObject();
                      *(v86 + 16) = v80;
                      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
                      sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
                      swift_allocError();
                      v88 = v87;
                      sub_1CF1B8150();
                      v89 = swift_allocError();
                      *v90 = v86;
                      *&v247[7] = v241;
                      *&v247[23] = v242;
                      *&v247[39] = v243;
                      *&v247[55] = v244;
                      *&v247[71] = v245;
                      *&v247[87] = v246;
                      *&v248[0] = v232;
                      BYTE8(v248[0]) = v235;
                      *(&v248[2] + 9) = *&v247[32];
                      *(&v248[1] + 9) = *&v247[16];
                      *(v248 + 9) = *v247;
                      *(&v248[6] + 1) = *(&v246 + 1);
                      *(&v248[5] + 9) = *&v247[80];
                      *(&v248[4] + 9) = *&v247[64];
                      *(&v248[3] + 9) = *&v247[48];
                      v249 = v89;
                      sub_1CF2A8DE0(v248);
                      *v88 = v248[0];
                      v91 = v248[1];
                      v92 = v248[2];
                      v93 = v248[4];
                      *(v88 + 48) = v248[3];
                      *(v88 + 64) = v93;
                      *(v88 + 16) = v91;
                      *(v88 + 32) = v92;
                      v94 = v248[5];
                      v95 = v248[6];
                      v96 = v249;
                      *(v88 + 128) = v250;
                      *(v88 + 96) = v95;
                      *(v88 + 112) = v96;
                      *(v88 + 80) = v94;
                      swift_willThrow();
                      sub_1CEFCCBDC(&v251, &v240, &unk_1EC4BE330, &unk_1CF9FF010);
                      sub_1CEFCCC44(v85, &unk_1EC4BEC00, &unk_1CF9FCB60);
                      goto LABEL_49;
                    }

                    v97 = v81;
                    v98 = v228;
                    sub_1CEFE4C60(v97, v228, type metadata accessor for VFSItem);
                    v248[2] = v253;
                    v248[3] = v254;
                    v248[4] = v255;
                    v248[5] = v256;
                    v248[0] = v251;
                    v248[1] = v252;
                    *&v241 = v84;
                    sub_1CEFCCBDC(&v251, v247, &unk_1EC4BE330, &unk_1CF9FF010);
                    v99 = v236;
                    sub_1CF2ABFCC(v248, v98, &v241, v80);
                    *&v247[32] = v248[2];
                    *&v247[48] = v248[3];
                    *&v247[64] = v248[4];
                    *&v247[80] = v248[5];
                    *v247 = v248[0];
                    *&v247[16] = v248[1];
                    sub_1CEFCCC44(v247, &unk_1EC4BECD0, &unk_1CF9FEF80);
                    if (v99)
                    {
                      sub_1CEFE5888(v98, type metadata accessor for VFSItem);
                    }

                    else
                    {
                      sub_1CEFE4C60(v98, v83, type metadata accessor for VFSItem);
                    }

LABEL_39:
                    sub_1CEFCCC44(v65, &unk_1EC4BEC00, &unk_1CF9FCB60);
                    goto LABEL_49;
                  }

                  close(v238);
                  v80 = v212;
                  v81 = v231;
LABEL_77:
                  v190 = v165;
                  LODWORD(v248[0]) = sub_1CF9E5328();
                  sub_1CF196978();
                  v191 = sub_1CF9E5658();

                  swift_unknownObjectRelease();
                  (v224)(v222, v225);
                  if ((v191 & 1) == 0)
                  {
                    goto LABEL_39;
                  }

                  *v166 = xmmword_1CF9FD930;
                  *(v166 + 16) = 2;
                  swift_storeEnumTagMultiPayload();
                  goto LABEL_79;
                }

LABEL_104:
                __break(1u);
              }

              MEMORY[0x1EEE9AC00](v159);
              v203 = v134;
LABEL_114:
              fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, &v201, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
            }

            goto LABEL_111;
          }

LABEL_108:
          MEMORY[0x1EEE9AC00](v115);
          v203 = v238;
          goto LABEL_114;
        }
      }

      else
      {
        v65 = v213;
      }

      v66 = v211;
      goto LABEL_15;
    }

LABEL_5:
    sub_1CEFCCC44(v50, &unk_1EC4BEC00, &unk_1CF9FCB60);
    (*(v57 + 56))(v50, 1, 1, v58);
    goto LABEL_6;
  }

LABEL_49:
  v151 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1CF27A500@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v134 = a4;
  v125 = a7;
  v136 = type metadata accessor for VFSItem(0);
  v12 = *(*(v136 - 8) + 64);
  MEMORY[0x1EEE9AC00](v136);
  v140 = (v112 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v138 = *(v135 - 8);
  v14 = *(v138 + 64);
  MEMORY[0x1EEE9AC00](v135);
  v139 = v112 - v15;
  v129 = type metadata accessor for ItemMetadata();
  v16 = *(*(v129 - 8) + 64);
  MEMORY[0x1EEE9AC00](v129);
  v127 = v112 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v141 = v112 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v22 = a3[1];
  v152 = *a3;
  v153 = v22;
  v154 = *(a3 + 4);
  v23 = *a5;
  v155 = v112 - v24;
  v25 = sub_1CEFCCBDC(a2, v112 - v24, &unk_1EC4BFD90, &unk_1CFA134F0);
  v26 = (a1 + 16);
  v27 = (a1 + 24);
  if ((v23 & 2) != 0)
  {
    v26 = a2;
    v27 = (a2 + 8);
  }

  v28 = *v27;
  v113 = *v26;
  if ((v23 & 1) != 0 && (a6 & 8) == 0)
  {
    v29 = (v155 + *(v20 + 40) + *(v129 + 56));
    v30 = v29[1];

    *v29 = 0;
    v29[1] = 0;
  }

  if (v154 == 1)
  {
    v31 = 0;
  }

  else
  {
    v31 = v153;
  }

  if (v153)
  {
    v32 = v154 == 1;
  }

  else
  {
    v32 = 1;
  }

  v33 = v136;
  v34 = *(a1 + *(v136 + 28));
  v123 = v32;
  v114 = v28;
  if (v34 == 2 && (v23 & 8) != 0 && v154 != 1)
  {
    v115 = 1;
    v35 = &v152;
  }

  else
  {
    v115 = *(a1 + 8);
    v35 = a1;
  }

  v36 = v137;
  v126 = *v35;
  MEMORY[0x1EEE9AC00](v25);
  v110 = a2;
  v37 = sub_1CF25A3A4(sub_1CF2B1BF8);
  v130 = v36;
  if ((v40 & 0x100) != 0)
  {
    v41 = a1 + v33[9];
    v128 = *v41;
    v121 = *(v41 + 8);
    v120 = *(v41 + 16);
    v119 = *(v41 + 24);
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v119 = v40;
    v120 = v39;
    v121 = v38;
    v128 = v37;
  }

  v42 = (a2 + 16);
  v43 = (a2 + 24);
  if ((v23 & 1) == 0)
  {
    v43 = (a1 + 40);
    v42 = (a1 + 32);
  }

  v137 = *v42;
  v133 = *v43;

  sub_1CEFD90AC(v155 + *(v20 + 40), v141, type metadata accessor for ItemMetadata);
  v44 = (a1 + v33[11]);
  v45 = *v44;
  v46 = *(v44 + 4);
  v47 = *(a1 + v33[10]);
  sub_1CEFCCBDC(v134, v139, &unk_1EC4BE310, qword_1CF9FCBE0);
  v48 = v132;
  v49 = objc_sync_enter(v132);
  if (v49)
  {
    MEMORY[0x1EEE9AC00](v49);
    v110 = v48;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v109, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v117 = v46;
  v118 = v45;
  v122 = v47;
  v124 = v31;
  v134 = v48[20];

  v50 = objc_sync_exit(v48);
  v51 = v140;
  if (v50)
  {
    MEMORY[0x1EEE9AC00](v50);
    v110 = v48;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v109, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v52 = sub_1CEFE528C(v150);
  v54 = v138 + 56;
  v53 = *(v138 + 56);
  v131 = v33[12];
  v116 = v53;
  (v53)(v51 + v131, 1, 1, v135, v52);
  v55 = v137;
  v56 = v133;
  v142 = v137;
  v143 = v133;
  v146 = 58;
  v147 = 0xE100000000000000;
  v148 = 47;
  v149 = 0xE100000000000000;
  v57 = sub_1CEFE4E68();
  v58 = MEMORY[0x1E69E6158];
  v132 = sub_1CF9E7668();
  v60 = v59;
  v142 = v55;
  v143 = v56;
  v146 = 58;
  v147 = 0xE100000000000000;
  v148 = 47;
  v149 = 0xE100000000000000;
  v110 = v57;
  v111 = v57;
  v109[0] = v58;
  v109[1] = v57;
  v142 = sub_1CF9E7668();
  v143 = v61;
  v62 = v130;
  sub_1CEFE52D8(0x70756B6F6F6CLL, 0xE600000000000000, &v142);
  if (v62)
  {

    sub_1CEFCCC44(v139, &unk_1EC4BE310, qword_1CF9FCBE0);
    sub_1CEFE5888(v141, type metadata accessor for ItemMetadata);

    sub_1CEFCCC44(v140 + v131, &unk_1EC4BED30, &unk_1CFA00710);
    return sub_1CEFCCC44(v155, &unk_1EC4BFD90, &unk_1CFA134F0);
  }

  v64 = v132;
  v130 = v60;
  v138 = v54;

  v65 = v127;
  sub_1CEFD90AC(v141, v127, type metadata accessor for ItemMetadata);
  v66 = v134;
  v67 = *(v134 + 24);
  v112[1] = 0;
  if (v128 == v67)
  {
    v68 = v140;
    if (v115 == 1)
    {
      if (v126 != v128)
      {
        goto LABEL_69;
      }
    }

    else if (v115 != 2 || v126)
    {
LABEL_69:
      sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/tree/VFSItem.swift", 119, 2, 290);
    }

    *v140 = 0;
    v70 = 2;
    *(v68 + 8) = 2;
    *(v68 + 16) = 0;
    goto LABEL_43;
  }

  swift_beginAccess();
  v69 = *(v66 + 96);
  v68 = v140;
  v70 = v115;
  v71 = v133;
  if (*(v69 + 16))
  {
    v72 = sub_1CF7BF2C0(v126, v115);
    if (v73)
    {
      v74 = v72;

      v75 = *(v69 + 56) + 32 * v74;
      v76 = *v75;
      LOBYTE(v74) = *(v75 + 8);
      v64 = *(v75 + 16);
      v130 = *(v75 + 24);

      *v68 = v126;
      *(v68 + 8) = v70;
      v77 = 24;
      v70 = v74;
      *(v68 + 16) = v76;
      goto LABEL_48;
    }
  }

  v78 = v114;
  v79 = v137;
  v80 = v113;
  if (v114 != 1)
  {
    goto LABEL_47;
  }

  if (*(v66 + 24) != v113)
  {
    if ((*(v66 + 48) & 1) == 0 && *(v66 + 40) == v113)
    {
      *v68 = v126;
      *(v68 + 8) = v70;
      *(v68 + 16) = 1;
      v70 = 2;
LABEL_43:
      v77 = 24;
      goto LABEL_48;
    }

LABEL_47:
    *v68 = v126;
    *(v68 + 8) = v70;
    v77 = 24;
    v70 = v78;
    *(v68 + 16) = v80;
    goto LABEL_48;
  }

  if (qword_1EDEAEE10 != -1)
  {
    swift_once();
    v79 = v137;
  }

  if (__PAIR128__(v71, v79) == xmmword_1EDEBBE48 || (sub_1CF9E8048() & 1) != 0)
  {
    *v68 = 1;
    v70 = 2;
    *(v68 + 8) = 2;
    *(v68 + 16) = 1;
    v77 = 24;
  }

  else
  {
    *(v68 + 16) = 0;
    *(v68 + 24) = 2;
    *v68 = v126;
    v77 = 8;
  }

LABEL_48:
  v132 = v64;
  *(v68 + v77) = v70;
  v81 = (v65 + *(v129 + 56));
  if (v81[1])
  {
    v82 = *v81;
    sub_1CF51B588(&v142);
    v83 = v142;
    v84 = v143;
    v133 = v144;
    v137 = v145;

    sub_1CF51B588(&v142);
    v85 = v145;
    v129 = v144;
    if (v83 == v142 && v84 == v143)
    {
    }

    else
    {
      v87 = sub_1CF9E8048();

      if ((v87 & 1) == 0)
      {
        sub_1CEFE5888(v141, type metadata accessor for ItemMetadata);

        v65 = v127;
        v86 = v135;
        goto LABEL_64;
      }
    }

    v65 = v127;
    v86 = v135;
    if (v137)
    {
      if (v85)
      {
        if (v133 == v129 && v137 == v85)
        {

          sub_1CEFE5888(v141, type metadata accessor for ItemMetadata);
          goto LABEL_65;
        }

        LODWORD(v133) = sub_1CF9E8048();

        sub_1CEFE5888(v141, type metadata accessor for ItemMetadata);
        if (v133)
        {
          goto LABEL_65;
        }
      }

      else
      {

        sub_1CEFE5888(v141, type metadata accessor for ItemMetadata);
      }
    }

    else
    {
      sub_1CEFE5888(v141, type metadata accessor for ItemMetadata);
      if (!v85)
      {
        goto LABEL_65;
      }
    }

LABEL_64:
    v88 = v81[1];

    *v81 = 0;
    v81[1] = 0;
    goto LABEL_65;
  }

  sub_1CEFE5888(v141, type metadata accessor for ItemMetadata);

  v86 = v135;
LABEL_65:
  v89 = v130;
  *(v68 + 32) = v132;
  *(v68 + 40) = v89;
  v90 = v136;
  v91 = v68 + *(v136 + 36);
  *v91 = v128;
  v92 = v120;
  *(v91 + 8) = v121;
  *(v91 + 16) = v92;
  *(v91 + 24) = v119 & 1;
  sub_1CEFD90AC(v65, v68 + v90[7], type metadata accessor for ItemMetadata);
  v93 = v131;
  sub_1CEFCCC44(v68 + v131, &unk_1EC4BED30, &unk_1CFA00710);
  sub_1CEFE55D0(v139, v68 + v93, &unk_1EC4BE310, qword_1CF9FCBE0);
  v116(v68 + v93, 0, 1, v86);
  LODWORD(v93) = *(v134 + 16);

  *(v68 + v90[13]) = v93;
  v94 = v68 + v90[14];
  v95 = v123;
  *v94 = v124;
  *(v94 + 4) = v95;
  v96 = v68 + v90[11];
  v97 = v117;
  *v96 = v118;
  *(v96 + 4) = v97;
  v98 = v68 + v90[8];
  v99 = v150[13];
  v100 = v150[14];
  v101 = v150[11];
  *(v98 + 192) = v150[12];
  *(v98 + 208) = v99;
  *(v98 + 224) = v100;
  v102 = v150[9];
  v103 = v150[10];
  v104 = v150[7];
  *(v98 + 128) = v150[8];
  *(v98 + 144) = v102;
  *(v98 + 160) = v103;
  *(v98 + 176) = v101;
  v105 = v150[5];
  v106 = v150[6];
  v107 = v150[3];
  *(v98 + 64) = v150[4];
  *(v98 + 80) = v105;
  *(v98 + 240) = v151;
  *(v98 + 96) = v106;
  *(v98 + 112) = v104;
  v108 = v150[1];
  *v98 = v150[0];
  *(v98 + 16) = v108;
  *(v98 + 32) = v150[2];
  *(v98 + 48) = v107;
  *(v68 + v90[10]) = v122;
  sub_1CEFE5888(v65, type metadata accessor for ItemMetadata);
  sub_1CEFE4C60(v68, v125, type metadata accessor for VFSItem);
  return sub_1CEFCCC44(v155, &unk_1EC4BFD90, &unk_1CFA134F0);
}

uint64_t sub_1CF27B1E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ItemMetadata();
  v7 = *(*(v6 - 1) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = *(a1 + 5);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0);
  sub_1CEFD90AC(a2 + *(v12 + 40), v9, type metadata accessor for ItemMetadata);
  v13 = *v9;
  if (v13 != 1 && (v13 != 2 ? (v14 = v9[v6[20]] == 0) : (v14 = 0), v14))
  {
    if ((v9[v6[28]] & 1) == 0)
    {
      v16 = 0;
      v15 = *&v9[v6[26]];
      goto LABEL_8;
    }

    v15 = 0;
  }

  else
  {
    v15 = 0;
    v11 = 0;
  }

  v16 = 1;
LABEL_8:
  result = sub_1CEFE5888(v9, type metadata accessor for ItemMetadata);
  *a3 = v10;
  *(a3 + 8) = v11;
  *(a3 + 16) = v15;
  *(a3 + 24) = v16;
  return result;
}

int8x8_t sub_1CF27B338@<D0>(unint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v2 = vdupq_n_s64(a1);
  v3.i64[0] = vshlq_u64(v2, xmmword_1CFA00280).u64[0];
  v4.i64[0] = vshlq_u64(v2, xmmword_1CFA00290).u64[0];
  v4.i64[1] = vshlq_u64(v2, xmmword_1CFA002F0).i64[1];
  v3.i64[1] = vshlq_u64(v2, xmmword_1CFA002E0).i64[1];
  v5 = vorrq_s8(vorrq_s8(vorrq_s8(vandq_s8(vshlq_u64(v2, xmmword_1CFA00260), xmmword_1CFA00340), vandq_s8(vshlq_u64(v2, xmmword_1CFA002D0), xmmword_1CFA00330)), vorrq_s8(vandq_s8(v3, xmmword_1CFA00300), vandq_s8(vshlq_u64(v2, xmmword_1CFA00270), xmmword_1CFA00320))), vorrq_s8(vorrq_s8(vandq_s8(vshlq_u64(v2, xmmword_1CFA002A0), xmmword_1CFA00370), vandq_s8(vshlq_u64(v2, xmmword_1CFA002B0), xmmword_1CFA00360)), vorrq_s8(vandq_s8(vshlq_u64(v2, xmmword_1CFA002C0), xmmword_1CFA00350), vandq_s8(v4, xmmword_1CFA00310))));
  result = vorr_s8(*v5.i8, *&vextq_s8(v5, v5, 8uLL));
  *a2 = *&result | (a1 >> 4) & 0x8000000;
  return result;
}

uint64_t sub_1CF27B458(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void), _OWORD *a6, uint64_t a7, unsigned int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v647 = a7;
  v649 = a5;
  v645 = a4;
  v641 = a2;
  v646 = a9;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0);
  v17 = v16 - 8;
  v607 = *(v16 - 8);
  v610 = *(v607 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v614 = &v574 - v18;
  v596 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED00, &unk_1CFA006E0);
  v19 = *(*(v596 - 8) + 64);
  MEMORY[0x1EEE9AC00](v596);
  v592 = &v574 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v574 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v600 = &v574 - v25;
  v26 = sub_1CF9E5CF8();
  v593 = *(v26 - 8);
  v594 = v26;
  v27 = *(v593 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v616 = &v574 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v608 = *(v29 - 8);
  v30 = *(v608 + 64);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v613 = &v574 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v612 = &v574 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v618 = &v574 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v599 = &v574 - v37;
  v609 = v38;
  MEMORY[0x1EEE9AC00](v39);
  v620 = (&v574 - v40);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v597 = &v574 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v602 = &v574 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v619 = &v574 - v47;
  v48 = sub_1CF9E5A58();
  v629 = *(v48 - 8);
  v49 = *(v629 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v601 = &v574 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51);
  v603 = &v574 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v604 = &v574 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v606 = &v574 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v589 = &v574 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v590 = &v574 - v60;
  MEMORY[0x1EEE9AC00](v61);
  v598 = &v574 - v62;
  MEMORY[0x1EEE9AC00](v63);
  v615 = &v574 - v64;
  MEMORY[0x1EEE9AC00](v65);
  v621 = &v574 - v66;
  v67 = sub_1CF9E6118();
  v624 = *(v67 - 8);
  v625 = v67;
  v68 = *(v624 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v595 = &v574 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v70);
  v623 = &v574 - v71;
  v638 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5000, &qword_1CFA181A0);
  v72 = *(*(v638 - 1) + 64);
  MEMORY[0x1EEE9AC00](v638);
  v639 = &v574 - v73;
  v637 = type metadata accessor for VFSItem(0);
  v635 = *(v637 - 8);
  v74 = *(v635 + 64);
  MEMORY[0x1EEE9AC00](v637);
  v605 = &v574 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v76);
  v588 = &v574 - v77;
  MEMORY[0x1EEE9AC00](v78);
  v587 = &v574 - v79;
  MEMORY[0x1EEE9AC00](v80);
  v611 = &v574 - v81;
  MEMORY[0x1EEE9AC00](v82);
  v626 = &v574 - v83;
  MEMORY[0x1EEE9AC00](v84);
  v622 = &v574 - v85;
  MEMORY[0x1EEE9AC00](v86);
  v634 = &v574 - v87;
  MEMORY[0x1EEE9AC00](v88);
  v90 = &v574 - v89;
  v633 = v91;
  MEMORY[0x1EEE9AC00](v92);
  v94 = &v574 - v93;
  v95 = *(v17 + 48);
  v631 = a1;
  v96 = (a1 + v95);
  v632 = type metadata accessor for ItemMetadata();
  v97 = v632[28];
  v630 = v96;
  v617 = v96[v97];
  type metadata accessor for VFSStagedContext();
  v98 = swift_dynamicCastClass();
  v591 = v23;
  if (v98)
  {
  }

  v642 = v94;
  v648 = a11;
  v99 = swift_allocObject();
  v100 = swift_allocObject();
  v100[2] = v98;
  v100[3] = a3;
  v644 = a3;
  v101 = v649;
  v100[4] = v645;
  v100[5] = v101;
  *(v99 + 16) = sub_1CF2B0930;
  *(v99 + 24) = v100;
  v102 = swift_allocObject();
  v103 = a6[3];
  v102[3] = a6[2];
  v102[4] = v103;
  v104 = a6[5];
  v102[5] = a6[4];
  v102[6] = v104;
  v105 = a6[1];
  v102[1] = *a6;
  v102[2] = v105;
  if ((v646 & 0x40) != 0)
  {
    swift_beginAccess();
    v106 = *(a10 + 16);
    if ((v106 & 0x1000) == 0)
    {
      *(a10 + 16) = v106 | 0x1000;
    }
  }

  v107 = swift_allocBox();
  v627 = v108;
  v628 = v48;
  v640 = v107;
  v109 = v102[4];
  v110 = v102[2];
  v682 = v102[3];
  v683 = v109;
  v111 = v102[4];
  v112 = v102[6];
  v684 = v102[5];
  v685 = v112;
  v113 = v102[2];
  v681[0] = v102[1];
  v681[1] = v113;
  v675 = v682;
  v676 = v111;
  v114 = v102[6];
  v677 = v684;
  v678 = v114;
  v679 = v647;
  v680 = a8;
  v673 = v681[0];
  v674 = v110;
  v672 = v648 & 0xFFFFFFFFFFFFFFEFLL;
  swift_beginAccess();
  v115 = *(a10 + 16);

  v636 = a8;
  v116 = v644;

  v643 = v98;
  sub_1CEFCCBDC(a6, &v661, &unk_1EC4BE330, &unk_1CF9FF010);
  sub_1CEFCCBDC(v681, &v661, &unk_1EC4BE330, &unk_1CF9FF010);
  sub_1CF278908(&v679, &v673, &v672, v115, v90);
  v584 = 0;
  v582 = a10;
  v671[2] = v675;
  v671[3] = v676;
  v671[4] = v677;
  v671[5] = v678;
  v671[0] = v673;
  v671[1] = v674;
  sub_1CEFCCC44(v671, &unk_1EC4BE330, &unk_1CF9FF010);
  v117 = v642;
  sub_1CEFE4C60(v90, v642, type metadata accessor for VFSItem);
  v118 = v102;
  v119 = v634;
  sub_1CEFD90AC(v117, v634, type metadata accessor for VFSItem);
  v120 = *(v635 + 80);
  v121 = (v120 + 40) & ~v120;
  v583 = (v121 + v633 + 7) & 0xFFFFFFFFFFFFFFF8;
  v585 = v99;
  v122 = (v121 + v633 + 23) & 0xFFFFFFFFFFFFFFF8;
  v123 = (v122 + 15) & 0xFFFFFFFFFFFFFFF8;
  v581 = v120;
  v124 = swift_allocObject();
  v124[2] = v643;
  v124[3] = v116;
  v124[4] = v646;
  sub_1CEFE4C60(v119, v124 + v121, type metadata accessor for VFSItem);
  v125 = v124 + v583;
  *v125 = v647;
  v125[8] = v636;
  *(v124 + v122) = v118;
  v126 = v585;
  v127 = (v124 + v123);
  v128 = v649;
  *v127 = v645;
  v127[1] = v128;
  v129 = *(v126 + 24);
  *(v126 + 16) = sub_1CF2B093C;
  *(v126 + 24) = v124;

  v586 = v118;

  v130 = v116;
  v131 = v648;
  if (v648)
  {
    v152 = *(v631 + 3);
    *&v661 = *(v631 + 2);
    *(&v661 + 1) = v152;

    v134 = v584;
    sub_1CEFE52D8(0x742D657461647075, 0xED00007465677261, &v661);
    if (v134)
    {

      v132 = v642;
      v133 = v586;
      v153 = v637;
      if ((v131 & 0x10) == 0)
      {
        goto LABEL_19;
      }

LABEL_18:
      if (*(v132 + *(v153 + 28) + v632[20]) == v630[v632[20]])
      {
        v649 = 0;

        v160 = v132 + *(v153 + 36);
        v161 = *v160;
        v162 = *(v160 + 8);
        v163 = *(v160 + 16);
        v165 = *(v132 + 16);
        v166 = v642[24];
        v167 = *(v642 + 4);
        v168 = *(v642 + 5);
        LOBYTE(v651) = *(v160 + 24);
        v164 = v651;
        swift_beginAccess();
        v169 = v133[3];
        v664 = v133[4];
        v170 = v133[6];
        v665 = v133[5];
        v666 = v170;
        v171 = v133[2];
        v661 = v133[1];
        v662 = v171;
        v663 = v169;
        *(v133 + 2) = v161;
        *(v133 + 6) = v162;
        v130 = v644;
        *(v133 + 4) = v163;
        *(v133 + 40) = v164;
        *(v133 + 6) = 0;
        *(v133 + 7) = v165;
        v131 = v648;
        *(v133 + 64) = v166;
        v132 = v642;
        *(v133 + 9) = v167;
        *(v133 + 10) = v168;
        v126 = v585;
        *(v133 + 11) = 0;
        *(v133 + 12) = 0;
        *(v133 + 13) = 0;
        v172 = v637;

        sub_1CEFCCC44(&v661, &unk_1EC4BE330, &unk_1CF9FF010);
        goto LABEL_21;
      }

LABEL_19:
      v156 = *(v126 + 16);
      v155 = *(v126 + 24);
      v157 = v639;
      *v639 = v134;
      swift_storeEnumTagMultiPayload();

      v158 = v134;
      v156(v157);

      v159 = v157;
LABEL_64:
      sub_1CEFCCC44(v159, &unk_1EC4C5000, &qword_1CFA181A0);
      sub_1CEFE5888(v132, type metadata accessor for VFSItem);
      swift_deallocBox();
LABEL_65:
    }

    v132 = v642;
    v154 = *(v642 + 5);
    *&v661 = *(v642 + 4);
    *(&v661 + 1) = v154;

    sub_1CEFE52D8(0x732D657461647075, 0xED0000656372756FLL, &v661);
    v133 = v586;
  }

  else
  {
    v132 = v642;
    v133 = v586;
    v134 = v584;
  }

  v135 = *(v132 + 40);
  *&v661 = *(v132 + 32);
  *(&v661 + 1) = v135;

  sub_1CEFE52D8(0x657461647075, 0xE600000000000000, &v661);
  if (v134)
  {

    v153 = v637;
    if ((v131 & 0x10) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if ((v131 & 0x10) != 0)
  {
    v136 = v132 + *(v637 + 36);
    v137 = *v136;
    v138 = *(v136 + 8);
    v139 = *(v136 + 16);
    v140 = *(v132 + 16);
    v141 = *(v132 + 24);
    v143 = *(v132 + 32);
    v142 = *(v132 + 40);
    LOBYTE(v651) = *(v136 + 24);
    *&v661 = v137;
    DWORD2(v661) = v138;
    *&v662 = v139;
    BYTE8(v662) = v651;
    *&v663 = 0;
    *(&v663 + 1) = v140;
    LOBYTE(v664) = v141;
    *(&v664 + 1) = v143;
    v665 = v142;
    v666 = 0uLL;

    sub_1CEFCCC44(&v661, &unk_1EC4BE330, &unk_1CF9FF010);
    if (!DWORD2(v661))
    {
      swift_beginAccess();
      *(v133 + 6) = 0;
      *(v133 + 4) = 0;
      *(v133 + 40) = 1;
    }
  }

  swift_beginAccess();
  v144 = v133[3];
  v145 = v133[2];
  v664 = v133[4];
  v146 = v133[4];
  v147 = v133[6];
  v665 = v133[5];
  v666 = v147;
  v148 = v133[2];
  v661 = v133[1];
  v662 = v148;
  v663 = v144;
  v653 = v144;
  v654 = v146;
  v149 = v133[6];
  v655 = v665;
  v656 = v149;
  v651 = v661;
  v652 = v145;
  v659 = v131;
  v150 = v582;
  swift_beginAccess();
  v151 = *(v150 + 16);
  sub_1CEFCCBDC(&v661, v650, &unk_1EC4BE330, &unk_1CF9FF010);
  sub_1CF2ABFCC(&v651, v132, &v659, v151);
  v649 = 0;
  v650[2] = v653;
  v650[3] = v654;
  v650[4] = v655;
  v650[5] = v656;
  v650[0] = v651;
  v650[1] = v652;
  sub_1CEFCCC44(v650, &unk_1EC4BECD0, &unk_1CF9FEF80);
  v172 = v637;
LABEL_21:
  v173 = *(v172 + 28);
  v174 = v629;
  if ((v131 & 0x10000000000) != 0 && qword_1CFA00A30[*(v132 + v173)] != qword_1CFA00A30[*v630])
  {
    if (*(v132 + v173) == 3)
    {
      if (!*v630)
      {
        goto LABEL_23;
      }
    }

    else if (!*(v132 + v173) && *v630 == 3)
    {
      goto LABEL_23;
    }

    v202 = *(v126 + 16);
    v222 = *(v126 + 24);
    sub_1CF2B0C60(&v661);
LABEL_63:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
    sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
    v223 = swift_allocError();
    *v224 = v661;
    v225 = v665;
    v227 = v662;
    v226 = v663;
    *(v224 + 48) = v664;
    *(v224 + 64) = v225;
    *(v224 + 16) = v227;
    *(v224 + 32) = v226;
    v228 = v668;
    v229 = v667;
    v230 = v666;
    *(v224 + 128) = v669;
    *(v224 + 96) = v229;
    *(v224 + 112) = v228;
    *(v224 + 80) = v230;
    v231 = v639;
    *v639 = v223;
    swift_storeEnumTagMultiPayload();

    v202(v231);

    v159 = v231;
    goto LABEL_64;
  }

LABEL_23:
  v175 = (v132 + v173);
  v176 = v132 + v173 + v632[7];
  sub_1CF9E5C98();
  if ((*&v177 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_252;
  }

  v176 = v636;
  if (v177 <= -9.22337204e18)
  {
LABEL_252:
    __break(1u);
    goto LABEL_253;
  }

  if (v177 >= 9.22337204e18)
  {
LABEL_253:
    __break(1u);
    goto LABEL_254;
  }

  if (fpfs_is_busy_date())
  {
    v178 = fpfs_current_or_default_log();
    v179 = v623;
    sub_1CF9E6128();
    v180 = v622;
    sub_1CEFD90AC(v132, v622, type metadata accessor for VFSItem);
    v181 = sub_1CF9E6108();
    v182 = sub_1CF9E7298();
    if (os_log_type_enabled(v181, v182))
    {
      v183 = swift_slowAlloc();
      v184 = swift_slowAlloc();
      *&v661 = v184;
      *v183 = 136446210;
      v185 = sub_1CF255338();
      v186 = v180;
      v188 = v187;
      sub_1CEFE5888(v186, type metadata accessor for VFSItem);
      v189 = sub_1CEFD0DF0(v185, v188, &v661);

      *(v183 + 4) = v189;
      _os_log_impl(&dword_1CEFC7000, v181, v182, "🏗 denying update on busy file %{public}s", v183, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v184);
      MEMORY[0x1D386CDC0](v184, -1, -1);
      MEMORY[0x1D386CDC0](v183, -1, -1);
    }

    else
    {

      sub_1CEFE5888(v180, type metadata accessor for VFSItem);
    }

    (*(v624 + 8))(v179, v625);
    v202 = *(v126 + 16);
    v201 = *(v126 + 24);
    sub_1CF2B0C28(&v661);
    goto LABEL_63;
  }

  sub_1CEFD90AC(v132, v626, type metadata accessor for VFSItem);
  v191 = v176 == 2 && v647 == 0;
  v192 = objc_sync_enter(v130);
  v622 = v175;
  v577 = v191;
  if (v191)
  {
    v193 = v621;
    if (v192)
    {
LABEL_259:
      MEMORY[0x1EEE9AC00](v192);
      v572 = v644;
      goto LABEL_275;
    }

    v194 = v132;
    v195 = v644;
    v196 = v644[20];

    v197 = objc_sync_exit(v195);
    if (v197)
    {
      goto LABEL_276;
    }

    sub_1CEFE5888(v626, type metadata accessor for VFSItem);
    v198 = v628;
    (*(v174 + 16))(v193, v196 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_mainRootURL, v628);

    v199 = *(v174 + 32);
    v200 = ((v174 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000);
  }

  else
  {
    if (v192)
    {
      goto LABEL_259;
    }

    v203 = v174;
    v194 = v132;
    v197 = objc_sync_exit(v644);
    v204 = v619;
    v205 = v626;
    if (v197)
    {
      goto LABEL_276;
    }

    sub_1CF25116C(v619);
    v198 = v628;
    v192 = (*(v203 + 48))(v204, 1, v628);
    if (v192 == 1)
    {
      __break(1u);
      goto LABEL_256;
    }

    sub_1CEFE5888(v205, type metadata accessor for VFSItem);
    v199 = *(v203 + 32);
    v200 = ((v203 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000);
    v193 = v621;
    v199(v621, v204, v198);
    v174 = v203;
  }

  v621 = v199;
  v619 = v200;
  v199(v627, v193, v198);
  if (v643)
  {
    v206 = *(v643 + 56);
  }

  else
  {
    v206 = v617;
  }

  LODWORD(v584) = v206;
  v207 = v582;
  v208 = v194;
  v209 = v628;
  v623 = swift_allocBox();
  v210 = *(v174 + 16);
  v579 = v211;
  v580 = v210;
  v583 = v174 + 16;
  v210(v211, v627, v209);
  v670 = MEMORY[0x1E69E7CC0];
  v626 = swift_allocObject();
  *(v626 + 16) = 0;
  v645 = swift_allocObject();
  *(v645 + 16) = 0;
  type metadata accessor for BouncingStagedContext();
  v212 = swift_dynamicCastClass();
  v213 = v644;
  if (!v212)
  {
    goto LABEL_103;
  }

  v214 = *v631;
  v215 = v631[8];
  if (v215 == 1)
  {

    v216 = v649;
    goto LABEL_71;
  }

  v216 = v649;
  if (v215 != 2)
  {
    swift_retain_n();
    sub_1CF5111B0("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/tree/VFSFileTree.swift", 123, 2, 2154, v212);
  }

  v217 = objc_sync_enter(v213);
  if (!v214)
  {
    if (v217)
    {
      goto LABEL_268;
    }

    v218 = v212;
    v233 = v213[20];

    v197 = objc_sync_exit(v213);
    if (v197)
    {
      goto LABEL_276;
    }

    v214 = *(v233 + 24);

    goto LABEL_70;
  }

  if (v217)
  {
    goto LABEL_268;
  }

  v218 = v212;
  v219 = v213[20];

  v220 = objc_sync_exit(v213);
  if (v220)
  {
    MEMORY[0x1EEE9AC00](v220);
    v572 = v213;
    goto LABEL_277;
  }

  v214 = *(v219 + 40);
  v221 = *(v219 + 48);

  if (v221)
  {
LABEL_256:
    __break(1u);
LABEL_257:
    __break(1u);
LABEL_258:
    __break(1u);
    goto LABEL_259;
  }

  v207 = v582;
LABEL_70:
  v212 = v218;
LABEL_71:
  v234 = *(v212 + 24);
  v576 = *(v212 + 16);
  swift_beginAccess();
  v235 = *(v207 + 16);
  v659 = v214;
  LOBYTE(v660) = 1;
  v666 = 0u;
  v665 = 0u;
  v664 = 0u;
  v662 = 0u;
  v663 = 0u;
  v661 = 0u;

  sub_1CEFDAA48(&v659, &v661, &v651);
  v236 = v651;

  v237 = v620;
  sub_1CF263ADC(v236, 0, v235, v620);
  if (!v216)
  {
    v239 = v576;
    v575 = v214;
    v578 = v212;
    v649 = 0;
    v240 = *(v635 + 48);
    if ((v240)(v237, 1, v637) == 1)
    {
      sub_1CEFCCC44(v237, &unk_1EC4BEC00, &unk_1CF9FCB60);
      v241 = swift_allocObject();
      *(v241 + 16) = v235;
      v242 = v241 | 0x7000000000000000;
      v243 = swift_allocObject();
      *(v243 + 16) = v242;
      v244 = v243 | 0x8000000000000000;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
      sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
      v238 = swift_allocError();
      v246 = v245;
      sub_1CF1B8150();
      v247 = swift_allocError();
      *v248 = v244;
      *&v661 = v647;
      BYTE8(v661) = v636;
      *(&v661 + 9) = v651;
      HIDWORD(v661) = *(&v651 + 3);
      v662 = 0u;
      v663 = 0u;
      v664 = 0u;
      v665 = 0u;
      v666 = 0u;
      v667 = 0u;
      v668 = v247;
      sub_1CF2A8DE0(&v661);
      *v246 = v661;
      v249 = v662;
      v250 = v663;
      v251 = v665;
      *(v246 + 48) = v664;
      *(v246 + 64) = v251;
      *(v246 + 16) = v249;
      *(v246 + 32) = v250;
      v252 = v666;
      v253 = v667;
      v254 = v668;
      *(v246 + 128) = v669;
      *(v246 + 96) = v253;
      *(v246 + 112) = v254;
      *(v246 + 80) = v252;
      swift_willThrow();

      goto LABEL_75;
    }

    v261 = v237;
    v262 = v611;
    sub_1CEFE4C60(v261, v611, type metadata accessor for VFSItem);
    v263 = v234;
    if (v235 & 1) == 0 && (*(v262 + *(v637 + 28) + v632[16]))
    {
      v264 = swift_allocObject();
      *(v264 + 16) = 0xB000000000000028;
      v265 = v262;
      v266 = v264 | 0x8000000000000000;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
      sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
      v238 = swift_allocError();
      v268 = v267;
      sub_1CF1B8150();
      v269 = swift_allocError();
      *v270 = v266;
      *&v661 = v647;
      BYTE8(v661) = v636;
      *(&v661 + 9) = v651;
      HIDWORD(v661) = *(&v651 + 3);
      v662 = 0u;
      v663 = 0u;
      v664 = 0u;
      v665 = 0u;
      v666 = 0u;
      v667 = 0u;
      v668 = v269;
      sub_1CF2A8DE0(&v661);
      *v268 = v661;
      v271 = v662;
      v272 = v663;
      v273 = v665;
      *(v268 + 48) = v664;
      *(v268 + 64) = v273;
      *(v268 + 16) = v271;
      *(v268 + 32) = v272;
      v274 = v666;
      v275 = v667;
      v276 = v668;
      *(v268 + 128) = v669;
      *(v268 + 96) = v275;
      *(v268 + 112) = v276;
      *(v268 + 80) = v274;
      swift_willThrow();

      sub_1CEFE5888(v265, type metadata accessor for VFSItem);
      goto LABEL_75;
    }

    v620 = v240;
    v277 = v644;
    v278 = objc_sync_enter(v644);
    v256 = v642;
    if (v278)
    {
      goto LABEL_270;
    }

    v197 = objc_sync_exit(v277);
    v279 = v629;
    if (v197)
    {
      goto LABEL_276;
    }

    v280 = v602;
    sub_1CF25116C(v602);
    v281 = v280;
    v282 = v280;
    v283 = v628;
    if ((*(v279 + 48))(v282, 1, v628) == 1)
    {
      sub_1CEFCCC44(v281, &unk_1EC4BE310, qword_1CF9FCBE0);
      v284 = swift_allocObject();
      *(v284 + 16) = 0xB000000000000008;
      v285 = v284 | 0x8000000000000000;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
      sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
      v238 = swift_allocError();
      v287 = v286;
      sub_1CF1B8150();
      v288 = swift_allocError();
      *v289 = v285;
      *&v661 = v647;
      BYTE8(v661) = v636;
      *(&v661 + 9) = v651;
      HIDWORD(v661) = *(&v651 + 3);
      v662 = 0u;
      v663 = 0u;
      v664 = 0u;
      v665 = 0u;
      v666 = 0u;
      v667 = 0u;
      v668 = v288;
      sub_1CF2A8DE0(&v661);
      *v287 = v661;
      v290 = v662;
      v291 = v663;
      v292 = v665;
      *(v287 + 48) = v664;
      *(v287 + 64) = v292;
      *(v287 + 16) = v290;
      *(v287 + 32) = v291;
      v293 = v666;
      v294 = v667;
      v295 = v668;
      *(v287 + 128) = v669;
      *(v287 + 96) = v294;
      *(v287 + 112) = v295;
      *(v287 + 80) = v293;
      swift_willThrow();

      sub_1CEFE5888(v611, type metadata accessor for VFSItem);
      v255 = 0;
      goto LABEL_77;
    }

    v296 = v263;
    v297 = v598;
    (v621)(v598, v281, v283);
    *&v661 = v239;
    *(&v661 + 1) = v296;
    *&v651 = 47;
    *(&v651 + 1) = 0xE100000000000000;
    v659 = 58;
    v660 = 0xE100000000000000;
    v572 = sub_1CEFE4E68();
    v573 = v572;
    v570 = MEMORY[0x1E69E6158];
    v571 = v572;
    sub_1CF9E7668();
    v298 = v279;
    sub_1CF9E5958();

    v299 = v297;
    v300 = *(v279 + 8);
    v300(v299, v283);
    sub_1CEFE5888(v611, type metadata accessor for VFSItem);
    sub_1CF9E5A18();
    v301 = v582;
    swift_beginAccess();
    v302 = *(v301 + 16);
    v303 = v599;
    v304 = v649;
    sub_1CF26452C(2, v302, 0x208000u, v599);
    v649 = v304;
    if (v304)
    {

      v255 = 1;
      v238 = v649;
      goto LABEL_76;
    }

    v611 = v298 + 8;

    v305 = (v620)(v303, 1, v637);
    v208 = v642;
    if (v305 == 1)
    {
      sub_1CEFCCC44(v303, &unk_1EC4BEC00, &unk_1CF9FCB60);
      v306 = v208;
      v308 = *(v126 + 16);
      v307 = *(v126 + 24);
      v309 = swift_allocObject();
      v310 = v582;
      swift_beginAccess();
      *(v309 + 16) = *(v310 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
      sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
      v311 = swift_allocError();
      v313 = v312;
      sub_1CF1B8150();
      v314 = swift_allocError();
      *v315 = v309;
      *&v661 = v575;
      BYTE8(v661) = 1;
      *(&v661 + 9) = v659;
      HIDWORD(v661) = *(&v659 + 3);
      v662 = 0u;
      v663 = 0u;
      v664 = 0u;
      v665 = 0u;
      v666 = 0u;
      v667 = 0u;
      v668 = v314;
      sub_1CF2A8DE0(&v661);
      *v313 = v661;
      v316 = v662;
      v317 = v663;
      v318 = v665;
      *(v313 + 48) = v664;
      *(v313 + 64) = v318;
      *(v313 + 16) = v316;
      *(v313 + 32) = v317;
      v319 = v666;
      v320 = v667;
      v321 = v668;
      *(v313 + 128) = v669;
      *(v313 + 96) = v320;
      *(v313 + 112) = v321;
      *(v313 + 80) = v319;
      v322 = v639;
      *v639 = v311;
      swift_storeEnumTagMultiPayload();

      v308(v322);

      sub_1CEFCCC44(v322, &unk_1EC4C5000, &qword_1CFA181A0);
      v300(v615, v628);
      v323 = v306;
LABEL_250:
      sub_1CEFE5888(v323, type metadata accessor for VFSItem);
    }

    v620 = v300;
    v324 = v587;
    sub_1CEFE4C60(v303, v587, type metadata accessor for VFSItem);
    v325 = *v324;
    v326 = *(v324 + 8);
    v327 = v575;
    if (*(v324 + 8))
    {
      v328 = v636;
      v329 = v647;
      v174 = v629;
      v212 = v578;
      if (v326 == 1)
      {
        if (v636 != 1 || v325 != v647)
        {
          goto LABEL_249;
        }
      }

      else if (v325)
      {
        if (v636 != 2 || v647 != 1)
        {
          goto LABEL_249;
        }
      }

      else if (!v577)
      {
LABEL_249:
        v553 = *(v126 + 24);
        v649 = *(v126 + 16);
        v554 = v328;
        v555 = swift_allocObject();
        *(v555 + 16) = v325;
        *(v555 + 24) = v326;
        *(v555 + 32) = v329;
        *(v555 + 40) = v554;
        v556 = v208;
        v557 = v555 | 0x1000000000000000;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
        sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
        v558 = swift_allocError();
        v560 = v559;
        sub_1CF1B8150();
        v561 = swift_allocError();
        *v562 = v557;
        *&v661 = v327;
        BYTE8(v661) = 1;
        *(&v661 + 9) = v651;
        HIDWORD(v661) = *(&v651 + 3);
        v662 = 0u;
        v663 = 0u;
        v664 = 0u;
        v665 = 0u;
        v666 = 0u;
        v667 = 0u;
        v668 = v561;
        sub_1CF2A8DE0(&v661);
        *v560 = v661;
        v563 = v662;
        v564 = v663;
        v565 = v665;
        *(v560 + 48) = v664;
        *(v560 + 64) = v565;
        *(v560 + 16) = v563;
        *(v560 + 32) = v564;
        v566 = v666;
        v567 = v667;
        v568 = v668;
        *(v560 + 128) = v669;
        *(v560 + 96) = v567;
        *(v560 + 112) = v568;
        *(v560 + 80) = v566;
        v569 = v639;
        *v639 = v558;
        swift_storeEnumTagMultiPayload();

        v649(v569);

        sub_1CEFCCC44(v569, &unk_1EC4C5000, &qword_1CFA181A0);
        sub_1CEFE5888(v324, type metadata accessor for VFSItem);
        v620(v615, v628);
        v323 = v556;
        goto LABEL_250;
      }
    }

    else
    {
      v328 = v636;
      v329 = v647;
      v174 = v629;
      v212 = v578;
      if (v636 || v325 != v647)
      {
        goto LABEL_249;
      }
    }

    sub_1CEFE5888(v324, type metadata accessor for VFSItem);

    (*(v174 + 40))(v627, v615, v628);
    v213 = v644;
    LOBYTE(v131) = v648;
LABEL_103:
    v330 = *(v208 + 8);
    v331 = v622;
    v578 = v212;
    if (v330 > 1 || (v622[v632[18]] & 1) != 0)
    {
LABEL_122:
      v343 = swift_allocObject();
      if (!v212)
      {
        goto LABEL_137;
      }

      LODWORD(v611) = 0;
      v347 = v631;
      v348 = *v631;
      v349 = v631[8];
      v344 = v649;
      if (v131)
      {
LABEL_157:
        v350 = (v347 + 16);
        v351 = (v347 + 24);
        goto LABEL_158;
      }

LABEL_124:
      v350 = (v208 + 32);
      v351 = (v208 + 40);
LABEL_158:
      v176 = *v351;
      v174 = *v350;
      *(v343 + 16) = *v350;
      v602 = (v343 + 16);
      *(v343 + 24) = v176;
      LODWORD(v615) = v349;
      v641 = v343;
      v368 = v616;
      v620 = v348;
      if (v349 != 2 || v348)
      {

        goto LABEL_183;
      }

      v369 = qword_1EDEAEE10;
      swift_bridgeObjectRetain_n();
      if (v369 == -1)
      {
LABEL_161:
        v370 = *(&xmmword_1EDEBBE48 + 1);
        v371 = xmmword_1EDEBBE48;
        v372 = sub_1CEFE7394(v174, v176);
        if (v373)
        {
          if (v372 == 12565487 && v373 == 0xA300000000000000)
          {

LABEL_167:
            v375 = sub_1CF9E69E8();
            v376 = sub_1CF025150(v375, v174, v176);
            v174 = MEMORY[0x1D3868C10](v376);
            v378 = v377;

            goto LABEL_169;
          }

          v374 = sub_1CF9E8048();

          if (v374)
          {
            goto LABEL_167;
          }
        }

        v378 = v176;
LABEL_169:
        v379 = sub_1CEFE7394(v371, v370);
        if (v380)
        {
          if (v379 == 12565487 && v380 == 0xA300000000000000)
          {

LABEL_174:
            v382 = sub_1CF9E69E8();
            v383 = sub_1CF025150(v382, v371, v370);
            v371 = MEMORY[0x1D3868C10](v383);
            v370 = v384;

            goto LABEL_176;
          }

          v381 = sub_1CF9E8048();

          if (v381)
          {
            goto LABEL_174;
          }
        }

LABEL_176:
        v344 = v649;
        v368 = v616;
        if (v174 == v371 && v378 == v370)
        {

          v213 = v644;
          v343 = v641;
          v208 = v642;
LABEL_180:
          if (qword_1EDEA4368 != -1)
          {
            swift_once();
          }

          v386 = unk_1EDEBB6A0;
          v387 = *(v343 + 24);
          *(v343 + 16) = qword_1EDEBB698;
          *(v343 + 24) = v386;

          goto LABEL_183;
        }

        v385 = sub_1CF9E8048();

        v213 = v644;
        v343 = v641;
        v208 = v642;
        if (v385)
        {
          goto LABEL_180;
        }

LABEL_183:
        if (!v578)
        {
          goto LABEL_188;
        }

        v659 = v620;
        LOBYTE(v660) = v615;
        v666 = 0u;
        v665 = 0u;
        v664 = 0u;
        v662 = 0u;
        v663 = 0u;
        v661 = 0u;
        sub_1CEFDAA48(&v659, &v661, &v651);
        v661 = v651;
        v662 = v652;
        *&v663 = v653;
        v217 = objc_sync_enter(v213);
        if (!v217)
        {
          v388 = v213[20];

          v197 = objc_sync_exit(v213);
          if (v197)
          {
            goto LABEL_276;
          }

          v389 = *(v388 + 16);

          v390 = sub_1CEFDADE0(&v661, v389, 0x100000);
          if (!v344)
          {
            v412 = v390;

            v413 = *(v343 + 24);
            *&v661 = *(v343 + 16);
            *(&v661 + 1) = v413;
            *&v651 = 47;
            *(&v651 + 1) = 0xE100000000000000;
            v659 = 58;
            v660 = 0xE100000000000000;
            v572 = sub_1CEFE4E68();
            v573 = v572;
            v570 = MEMORY[0x1E69E6158];
            v571 = v572;
            sub_1CF9E7668();
            v414 = sub_1CF9E6978();

            v415 = faccessat(v412, (v414 + 32), 0, 32);

            if (v415)
            {
              v391 = v582;
            }

            else
            {
              v438 = *(v343 + 24);
              *&v651 = *(v343 + 16);
              *(&v651 + 1) = v438;
              MEMORY[0x1EEE9AC00](v438);
              v572 = v602;
              LODWORD(v573) = v412;

              sub_1CF9E5CE8();
              sub_1CF662980(sub_1CF2B0C04, &v661);
              (*(v593 + 8))(v368, v594);

              v439 = *(&v661 + 1);
              v391 = v582;
              if (*(&v661 + 1))
              {
                v440 = v661;
                v343 = v641;
                v441 = *(v641 + 24);
              }

              else
              {
                v343 = v641;
                v440 = *(v641 + 16);
                v486 = *(v641 + 24);
              }

              *(v343 + 16) = v440;
              *(v343 + 24) = v439;
            }

            if ((v412 & 0x80000000) == 0)
            {
              close(v412);
            }

LABEL_189:
            v393 = *(v343 + 16);
            v392 = *(v343 + 24);
            swift_beginAccess();
            v394 = *(v391 + 16);
            v657 = v620;
            LOBYTE(v658) = v615;
            v666 = 0u;
            v665 = 0u;
            v664 = 0u;
            v662 = 0u;
            v663 = 0u;
            v661 = 0u;

            sub_1CEFDAA48(&v657, &v661, &v651);
            v395 = v651;

            v396 = v612;
            sub_1CF263ADC(v395, 0, v394, v612);
            v649 = v344;
            if (v344)
            {

              v397 = v649;
LABEL_203:
              v435 = *(v126 + 16);
              v434 = *(v126 + 24);
              v436 = v639;
              *v639 = v397;
              swift_storeEnumTagMultiPayload();

              v437 = v397;
              v435(v436);

              sub_1CEFCCC44(v436, &unk_1EC4C5000, &qword_1CFA181A0);
              sub_1CEFE5888(v208, type metadata accessor for VFSItem);

              goto LABEL_65;
            }

            if ((*(v635 + 48))(v396, 1, v637) == 1)
            {
              sub_1CEFCCC44(v396, &unk_1EC4BEC00, &unk_1CF9FCB60);
              v398 = swift_allocObject();
              *(v398 + 16) = v394;
              v399 = v398 | 0x7000000000000000;
              v400 = swift_allocObject();
              *(v400 + 16) = v399;
              v401 = v400 | 0x8000000000000000;
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
              sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
              v397 = swift_allocError();
              v403 = v402;
              sub_1CF1B8150();
              v404 = swift_allocError();
              *v405 = v401;
              *&v661 = v395;
              BYTE8(v661) = 1;
              *(&v661 + 9) = v651;
              HIDWORD(v661) = *(&v651 + 3);
              v662 = 0u;
              v663 = 0u;
              v664 = 0u;
              v665 = 0u;
              v666 = 0u;
              v667 = 0u;
              v668 = v404;
              sub_1CF2A8DE0(&v661);
              *v403 = v661;
              v406 = v662;
              v407 = v663;
              v408 = v665;
              *(v403 + 48) = v664;
              *(v403 + 64) = v408;
              *(v403 + 16) = v406;
              *(v403 + 32) = v407;
              v409 = v666;
              v410 = v667;
              v411 = v668;
              *(v403 + 128) = v669;
              *(v403 + 96) = v410;
              *(v403 + 112) = v411;
              *(v403 + 80) = v409;
              swift_willThrow();

              goto LABEL_203;
            }

            v416 = v605;
            sub_1CEFE4C60(v396, v605, type metadata accessor for VFSItem);
            if (v394 & 1) == 0 && (*(v416 + *(v637 + 28) + v632[16]))
            {
              v417 = swift_allocObject();
              v418 = 0xB000000000000028;
LABEL_202:
              *(v417 + 16) = v418;
              v423 = v417 | 0x8000000000000000;
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
              sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
              v397 = swift_allocError();
              v425 = v424;
              sub_1CF1B8150();
              v426 = swift_allocError();
              *v427 = v423;
              *&v661 = v395;
              BYTE8(v661) = 1;
              *(&v661 + 9) = v651;
              HIDWORD(v661) = *(&v651 + 3);
              v662 = 0u;
              v663 = 0u;
              v664 = 0u;
              v665 = 0u;
              v666 = 0u;
              v667 = 0u;
              v668 = v426;
              sub_1CF2A8DE0(&v661);
              *v425 = v661;
              v428 = v662;
              v429 = v663;
              v430 = v665;
              *(v425 + 48) = v664;
              *(v425 + 64) = v430;
              *(v425 + 16) = v428;
              *(v425 + 32) = v429;
              v431 = v666;
              v432 = v667;
              v433 = v668;
              *(v425 + 128) = v669;
              *(v425 + 96) = v432;
              *(v425 + 112) = v433;
              *(v425 + 80) = v431;
              swift_willThrow();

              sub_1CEFE5888(v605, type metadata accessor for VFSItem);
              goto LABEL_203;
            }

            v277 = v644;
            v278 = objc_sync_enter(v644);
            if (!v278)
            {
              v197 = objc_sync_exit(v277);
              if (!v197)
              {
                v419 = v597;
                sub_1CF25116C(v597);
                v420 = v419;
                v421 = v419;
                v422 = v628;
                if ((*(v629 + 48))(v421, 1, v628) == 1)
                {
                  sub_1CEFCCC44(v420, &unk_1EC4BE310, qword_1CF9FCBE0);
                  v417 = swift_allocObject();
                  v418 = 0xB000000000000008;
                  goto LABEL_202;
                }

                v442 = v589;
                (v621)(v589, v420, v422);
                *&v661 = v393;
                *(&v661 + 1) = v392;
                *&v651 = 47;
                *(&v651 + 1) = 0xE100000000000000;
                v657 = 58;
                v658 = 0xE100000000000000;
                v572 = sub_1CEFE4E68();
                v573 = v572;
                v570 = MEMORY[0x1E69E6158];
                v571 = v572;
                sub_1CF9E7668();
                v443 = v590;
                sub_1CF9E5958();

                v444 = *(v629 + 8);
                v639 = v629 + 8;
                v638 = v444;
                v444(v442, v422);
                v445 = v588;
                sub_1CEFE4C60(v605, v588, type metadata accessor for VFSItem);
                v446 = v600;
                (v621)(v600, v443, v422);
                sub_1CEFE4C60(v445, v446 + *(v596 + 48), type metadata accessor for VFSItem);
                v447 = fpfs_current_or_default_log();
                v448 = v595;
                sub_1CF9E6128();
                v449 = v591;
                sub_1CEFCCBDC(v446, v591, &unk_1EC4BED00, &unk_1CFA006E0);
                v450 = v592;
                sub_1CEFCCBDC(v446, v592, &unk_1EC4BED00, &unk_1CFA006E0);
                v451 = sub_1CF9E6108();
                v452 = sub_1CF9E7298();
                if (os_log_type_enabled(v451, v452))
                {
                  v453 = swift_slowAlloc();
                  v616 = swift_slowAlloc();
                  *&v661 = v616;
                  *v453 = 136315394;
                  v454 = sub_1CF9E5928();
                  v455 = v449;
                  v456 = [v454 fp_shortDescription];

                  v457 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                  v459 = v458;

                  sub_1CEFCCC44(v455, &unk_1EC4BED00, &unk_1CFA006E0);
                  v460 = sub_1CEFD0DF0(v457, v459, &v661);

                  *(v453 + 4) = v460;
                  *(v453 + 12) = 2080;
                  v461 = v450 + *(v596 + 48);
                  v462 = sub_1CF255338();
                  v464 = v463;
                  sub_1CEFCCC44(v450, &unk_1EC4BED00, &unk_1CFA006E0);
                  v465 = sub_1CEFD0DF0(v462, v464, &v661);

                  *(v453 + 14) = v465;
                  _os_log_impl(&dword_1CEFC7000, v451, v452, "FSTree update to new url %s new parent %s", v453, 0x16u);
                  v466 = v616;
                  swift_arrayDestroy();
                  MEMORY[0x1D386CDC0](v466, -1, -1);
                  MEMORY[0x1D386CDC0](v453, -1, -1);

                  (*(v624 + 8))(v595, v625);
                }

                else
                {

                  sub_1CEFCCC44(v450, &unk_1EC4BED00, &unk_1CFA006E0);
                  sub_1CEFCCC44(v449, &unk_1EC4BED00, &unk_1CFA006E0);
                  (*(v624 + 8))(v448, v625);
                }

                (*(v629 + 24))(v579, v600, v628);
                v467 = sub_1CF9E5A18();
                v469 = v468;
                v470 = v644;
                v471 = objc_sync_enter(v644);
                if (!v471)
                {
                  v624 = v467;
                  v625 = v469;
                  v472 = v470[20];

                  v197 = objc_sync_exit(v470);
                  if (!v197)
                  {
                    v473 = v606;
                    v474 = v628;
                    v475 = v580;
                    v580(v606, v472 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_trashURL, v628);

                    sub_1CF9E5A18();
                    v476 = v638;
                    v638(v473, v474);
                    LODWORD(v624) = sub_1CF9E6AE8();

                    v477 = objc_opt_self();
                    v475(v473, v627, v474);
                    v478 = sub_1CF9E5928();
                    v476(v473, v474);
                    if (v624)
                    {
                      v479 = [v477 writingIntentWithURL:v478 options:3];

                      v480 = *(v626 + 16);
                      *(v626 + 16) = v479;

                      v343 = v641;
                      v355 = v611;
                      if (*v622)
                      {
                        v481 = 1;
                      }

                      else
                      {
                        sub_1CEFD90AC(v208, v618, type metadata accessor for VFSItem);
                        v481 = 0;
                      }

                      v174 = v629;
                      v483 = v626;
                      v485 = v637;
                    }

                    else
                    {
                      v482 = [v477 writingIntentWithURL:v478 options:2];

                      v483 = v626;
                      v484 = *(v626 + 16);
                      *(v626 + 16) = v482;

                      v481 = 1;
                      v174 = v629;
                      v485 = v637;
                      v343 = v641;
                      v355 = v611;
                    }

                    v354 = v647;
                    (*(v635 + 56))(v618, v481, 1, v485);
                    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC20, &qword_1CF9FE480);
                    v192 = swift_allocObject();
                    *(v192 + 16) = xmmword_1CFA00250;
                    v487 = *(v483 + 16);
                    if (!v487)
                    {
                      goto LABEL_258;
                    }

                    *(v192 + 32) = v487;
                    v488 = v192;
                    v489 = v487;
                    sub_1CF1E8CE0(v488);
                    sub_1CEFCCC44(v600, &unk_1EC4BED00, &unk_1CFA006E0);
                    if ((v648 & 0x10) == 0)
                    {
                      if ((v648 & 8) == 0)
                      {
                        goto LABEL_228;
                      }

LABEL_232:
                      while (*v630 == 1)
                      {
LABEL_228:
                        if (!v578 && !v355)
                        {
                          goto LABEL_235;
                        }

                        v490 = objc_opt_self();
                        v491 = v606;
                        v492 = v174;
                        v174 = v628;
                        v580(v606, v579, v628);
                        v493 = sub_1CF9E5928();
                        (*(v492 + 8))(v491, v174);
                        v494 = [v490 writingIntentWithURL:v493 options:16];

                        v495 = v645;
                        v496 = *(v645 + 16);
                        *(v645 + 16) = v494;

                        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC20, &qword_1CF9FE480);
                        v192 = swift_allocObject();
                        *(v192 + 16) = xmmword_1CFA00250;
                        v364 = *(v495 + 16);
                        if (v364)
                        {
                          goto LABEL_234;
                        }

                        __break(1u);
                      }

LABEL_233:
                      v497 = objc_opt_self();
                      v498 = v606;
                      v499 = v174;
                      v500 = v628;
                      v580(v606, v579, v628);
                      v501 = sub_1CF9E5928();
                      (*(v499 + 8))(v498, v500);
                      v502 = [v497 writingIntentWithURL:v501 options:4];

                      v503 = v645;
                      v504 = *(v645 + 16);
                      *(v645 + 16) = v502;

                      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC20, &qword_1CF9FE480);
                      v192 = swift_allocObject();
                      *(v192 + 16) = xmmword_1CFA00250;
                      v364 = *(v503 + 16);
                      if (v364)
                      {
                        goto LABEL_234;
                      }

                      goto LABEL_257;
                    }

                    if (v630[v632[20]])
                    {
                      if ((v648 & 8) != 0)
                      {
                        goto LABEL_232;
                      }

                      if (v617 == v622[v632[28]])
                      {
                        goto LABEL_228;
                      }

                      goto LABEL_233;
                    }

                    v357 = v174;
                    goto LABEL_145;
                  }

                  goto LABEL_276;
                }

                MEMORY[0x1EEE9AC00](v471);
                v572 = v470;
LABEL_275:
                fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, &v570, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
              }

LABEL_276:
              MEMORY[0x1EEE9AC00](v197);
              v572 = v644;
LABEL_277:
              fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, &v570, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
            }

LABEL_270:
            MEMORY[0x1EEE9AC00](v278);
            v572 = v277;
            goto LABEL_275;
          }

          v344 = 0;
LABEL_188:
          v391 = v582;
          goto LABEL_189;
        }

LABEL_268:
        MEMORY[0x1EEE9AC00](v217);
        v572 = v213;
        goto LABEL_275;
      }

LABEL_254:
      swift_once();
      goto LABEL_161;
    }

    if ((v131 & 2) == 0)
    {
LABEL_106:
      if (v131)
      {
        v332 = *(v631 + 3);
        v333 = *(v208 + 32);
        v334 = *(v208 + 40);
        *&v661 = *(v631 + 2);
        *(&v661 + 1) = v332;
        v335 = sub_1CF662E90();
        v337 = v336;
        *&v651 = v333;
        *(&v651 + 1) = v334;
        if (v335 != sub_1CF662E90())
        {
          goto LABEL_115;
        }

        if (v337 == v338)
        {
        }

        else
        {
LABEL_115:
          v342 = sub_1CF9E8048();

          if ((v342 & 1) == 0)
          {
            v352 = swift_allocObject();
            if ((v131 & 2) != 0)
            {
              v345 = v631;
              v346 = v631 + 8;
              LODWORD(v611) = 1;
              v213 = v644;
              v344 = v649;
            }

            else
            {
              v213 = v644;
              v344 = v649;
              if (v578)
              {
                v345 = v631;
                v346 = v631 + 8;
              }

              else
              {
                v345 = (v208 + 16);
                v346 = (v208 + 24);
              }

              LODWORD(v611) = 1;
            }

            v343 = v352;
            goto LABEL_156;
          }
        }

        v331 = v622;
        v213 = v644;
        v174 = v629;
        v212 = v578;
        if (*&v622[v632[14] + 8])
        {
          v343 = swift_allocObject();
          if ((v646 & 8) == 0)
          {
            v344 = v649;
            if ((v131 & 2) != 0 || v212)
            {
              v345 = v631;
              v346 = v631 + 8;
            }

            else
            {
              v345 = (v208 + 16);
              v346 = (v208 + 24);
            }

            LODWORD(v611) = 1;
            goto LABEL_156;
          }

          if (v212)
          {
            LODWORD(v611) = 0;
            v345 = v631;
            v346 = v631 + 8;
            v344 = v649;
LABEL_156:
            v348 = *v345;
            v349 = *v346;
            v347 = v631;
            goto LABEL_157;
          }

LABEL_137:
          v620 = *(v208 + 16);
          LODWORD(v615) = *(v208 + 24);
          v353 = *(v208 + 40);
          *(v343 + 16) = *(v208 + 32);
          *(v343 + 24) = v353;
          (*(v635 + 56))(v618, 1, 1, v637);
          v354 = v647;
          if ((v131 & 0x10) == 0)
          {

            v355 = 0;
            if ((v131 & 8) != 0)
            {
              goto LABEL_232;
            }

LABEL_235:
            v641 = v343;
            v507 = ~v581;
            v508 = *(v645 + 16);
            LODWORD(v611) = v355;
            if (v508)
            {
              v639 = ~v581;
              v509 = [v508 URL];
              v510 = v603;
              sub_1CF9E59D8();

              v511 = v604;
              v512 = v628;
              v513 = (v621)(v604, v510, v628);
              MEMORY[0x1EEE9AC00](v513);
              v573 = v511;
              MEMORY[0x1EEE9AC00](v514);
              v570 = v644;
              v571 = sub_1CF2B9EA4;
              v572 = v515;
              __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC4C5730, &qword_1CF9FCCE0);
              v516 = v649;
              sub_1CF9E59B8();
              v649 = v516;
              v517 = v661;
              (*(v629 + 8))(v511, v512);
              v518 = v626;
              v519 = *(v626 + 16);
              v520 = v607;
              if (v519)
              {
                v208 = v642;
                v354 = v647;
                if (v517)
                {
                  v517 = 1;
                  v521 = v609;
                  v522 = v610;
                  v523 = v608;
                  v507 = v639;
LABEL_245:
                  LODWORD(v637) = v578 != 0;
                  LODWORD(v649) = v517 | (v646 >> 2);
                  *&v651 = v354;
                  BYTE8(v651) = v636;
                  v639 = v670;
                  sub_1CEFCCBDC(v618, v613, &unk_1EC4BEC00, &unk_1CF9FCB60);
                  sub_1CEFCCBDC(v631, v614, &unk_1EC4BFD90, &unk_1CFA134F0);
                  sub_1CEFD90AC(v208, v634, type metadata accessor for VFSItem);
                  v531 = (*(v523 + 80) + 112) & ~*(v523 + 80);
                  v532 = v531 + v521;
                  v533 = (v531 + v521) & 0xFFFFFFFFFFFFFFF8;
                  v534 = (v533 + 39) & 0xFFFFFFFFFFFFFFF8;
                  v535 = *(v520 + 80);
                  v536 = v354;
                  v537 = (v535 + v534 + 8) & ~v535;
                  v538 = v537 + v522;
                  v635 = v538 & 0xFFFFFFFFFFFFFFF8;
                  v632 = (((v538 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
                  v638 = ((v632 + v581 + 248) & v507);
                  v539 = swift_allocObject();
                  v540 = v645;
                  *(v539 + 16) = v585;
                  *(v539 + 24) = v540;
                  v541 = v648;
                  *(v539 + 32) = v623;
                  *(v539 + 40) = v541;
                  v542 = v644;
                  *(v539 + 48) = v646;
                  *(v539 + 56) = v542;
                  *(v539 + 64) = v611;
                  v543 = v582;
                  *(v539 + 72) = v640;
                  *(v539 + 80) = v543;
                  *(v539 + 88) = v536;
                  *(v539 + 96) = v636;
                  *(v539 + 104) = v586;
                  sub_1CEFE55D0(v613, v539 + v531, &unk_1EC4BEC00, &unk_1CF9FCB60);
                  *(v539 + v532) = v637;
                  v544 = v539 + v533;
                  *(v544 + 8) = v620;
                  *(v544 + 16) = v615;
                  *(v544 + 24) = v641;
                  *(v539 + v534) = v626;
                  sub_1CEFE55D0(v614, v539 + v537, &unk_1EC4BFD90, &unk_1CFA134F0);
                  *(v539 + v538) = v584;
                  *(v539 + v635 + 8) = v643;
                  v545 = v632 + v539;
                  v546 = *(a12 + 208);
                  *(v545 + 12) = *(a12 + 192);
                  *(v545 + 13) = v546;
                  *(v545 + 14) = *(a12 + 224);
                  *(v545 + 30) = *(a12 + 240);
                  v547 = *(a12 + 144);
                  *(v545 + 8) = *(a12 + 128);
                  *(v545 + 9) = v547;
                  v548 = *(a12 + 176);
                  *(v545 + 10) = *(a12 + 160);
                  *(v545 + 11) = v548;
                  v549 = *(a12 + 80);
                  *(v545 + 4) = *(a12 + 64);
                  *(v545 + 5) = v549;
                  v550 = *(a12 + 112);
                  *(v545 + 6) = *(a12 + 96);
                  *(v545 + 7) = v550;
                  v551 = *(a12 + 16);
                  *v545 = *a12;
                  *(v545 + 1) = v551;
                  v552 = *(a12 + 48);
                  *(v545 + 2) = *(a12 + 32);
                  *(v545 + 3) = v552;
                  sub_1CEFE4C60(v634, v638 + v539, type metadata accessor for VFSItem);

                  sub_1CEFCCBDC(a12, &v661, &qword_1EC4BECF0, &unk_1CF9FEEB0);
                  sub_1CF265B04(&v651, v639, v649 & 1, sub_1CF2B0A04, v539);

                  sub_1CEFCCC44(v618, &unk_1EC4BEC00, &unk_1CF9FCB60);
                  sub_1CEFE5888(v642, type metadata accessor for VFSItem);
                }

                v507 = v639;
LABEL_244:
                v526 = [v519 URL];
                v527 = v601;
                sub_1CF9E59D8();

                MEMORY[0x1EEE9AC00](v528);
                v573 = v527;
                MEMORY[0x1EEE9AC00](v529);
                v570 = v644;
                v571 = sub_1CF2B9EA4;
                v572 = v530;
                __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC4C5730, &qword_1CF9FCCE0);
                sub_1CF9E59B8();
                v354 = v647;
                v517 = v661;
                (*(v629 + 8))(v527, v628);
                v521 = v609;
                v522 = v610;
                v523 = v608;
                goto LABEL_245;
              }

              v524 = *(v645 + 16);
              v208 = v642;
              v354 = v647;
              v521 = v609;
              v522 = v610;
              v523 = v608;
              v507 = v639;
            }

            else
            {
              v518 = v626;
              v519 = *(v626 + 16);
              v520 = v607;
              if (v519)
              {
                goto LABEL_244;
              }

              v524 = 0;
              v517 = 0;
              v521 = v609;
              v522 = v610;
              v523 = v608;
            }

            *(v518 + 16) = v524;
            v525 = v524;
            goto LABEL_245;
          }

          if (v630[v632[20]])
          {
            if ((v131 & 8) == 0)
            {
              v356 = v331[v632[28]];

              v355 = 0;
              if (v617 == v356)
              {
                goto LABEL_228;
              }

              goto LABEL_233;
            }

LABEL_147:

            v355 = 0;
            goto LABEL_232;
          }

          v357 = v174;

          v355 = 0;
LABEL_145:
          v358 = objc_opt_self();
          v359 = v606;
          v174 = v628;
          v580(v606, v579, v628);
          v360 = sub_1CF9E5928();
          (*(v357 + 8))(v359, v174);
          v361 = [v358 writingIntentWithURL:v360 options:0x80000000];

          v362 = v645;
          v363 = *(v645 + 16);
          *(v645 + 16) = v361;

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC20, &qword_1CF9FE480);
          v192 = swift_allocObject();
          *(v192 + 16) = xmmword_1CFA00250;
          v364 = *(v362 + 16);
          if (v364)
          {
LABEL_234:
            *(v192 + 32) = v364;
            v505 = v192;
            v506 = v364;
            sub_1CF1E8CE0(v505);
            goto LABEL_235;
          }

          __break(1u);
          goto LABEL_147;
        }
      }

      goto LABEL_122;
    }

    v339 = *v631;
    v340 = *(v208 + 16);
    v341 = *(v208 + 24);
    if (v631[8])
    {
      if (v631[8] == 1)
      {
        if (v341 == 1 && v339 == v340)
        {
          goto LABEL_106;
        }
      }

      else if (v339)
      {
        if (v341 == 2 && v340 == 1)
        {
          goto LABEL_106;
        }
      }

      else if (v341 == 2 && !v340)
      {
        goto LABEL_106;
      }
    }

    else if (!*(v208 + 24) && v339 == v340)
    {
      goto LABEL_106;
    }

    v365 = *v631;
    v366 = v631[8];
    v367 = swift_allocObject();
    v349 = v366;
    v348 = v365;
    v343 = v367;
    LODWORD(v611) = 1;
    v347 = v631;
    v344 = v649;
    if (v131)
    {
      goto LABEL_157;
    }

    goto LABEL_124;
  }

  v238 = v216;
LABEL_75:
  v255 = 0;
LABEL_76:
  v256 = v642;
LABEL_77:
  v258 = *(v126 + 16);
  v257 = *(v126 + 24);
  v259 = v639;
  *v639 = v238;
  swift_storeEnumTagMultiPayload();

  v260 = v238;
  v258(v259);

  sub_1CEFCCC44(v259, &unk_1EC4C5000, &qword_1CFA181A0);
  sub_1CEFE5888(v256, type metadata accessor for VFSItem);
  if (v255)
  {
    (*(v629 + 8))(v615, v628);
  }
}

uint64_t sub_1CF27F95C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a2)
  {
    v5 = *(a3 + 136);
    v6 = *(a2 + 16);
    MEMORY[0x1EEE9AC00](a1);
    swift_retain_n();
    sub_1CEFE1894(sub_1CF2B9F78);
    *(v5 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_deleteBusy) = 0;
    if (*(v5 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_garbageCollectionSource))
    {
      v7 = *(v5 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_garbageCollectionSource);
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      MEMORY[0x1D3869790](1, ObjectType);
      swift_unknownObjectRelease();
    }
  }

  return a4();
}

uint64_t sub_1CF27FAA0(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5, uint64_t a6, int a7, _OWORD *a8, uint64_t (*a9)(uint64_t, __n128))
{
  v54 = a7;
  v53 = a6;
  v15 = a9;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5000, &qword_1CFA181A0);
  v16 = *(*(v56 - 8) + 64);
  MEMORY[0x1EEE9AC00](v56);
  v52 = (&v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = MEMORY[0x1EEE9AC00](v18);
  v51 = &v50 - v21;
  v55 = a3;
  if (a2)
  {
    v57 = a5;
    v58 = a1;
    v22 = a3[17];
    v23 = *(a2 + 16);
    MEMORY[0x1EEE9AC00](v19);
    *(&v50 - 4) = v22;
    *(&v50 - 6) = 1;
    *(&v50 - 2) = v24;
    swift_retain_n();
    sub_1CEFE1894(sub_1CF2B9F78);
    *(v22 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_deleteBusy) = 0;
    if (*(v22 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_garbageCollectionSource))
    {
      v25 = *(v22 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_garbageCollectionSource);
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      MEMORY[0x1D3869790](1, ObjectType);
      swift_unknownObjectRelease();
    }

    v15 = a9;
    a5 = v57;
    a1 = v58;
  }

  if ((a4 & 0x40) == 0)
  {
    return v15(a1, v20);
  }

  v27 = a5 + *(type metadata accessor for VFSItem(0) + 28);
  v28 = type metadata accessor for ItemMetadata();
  if (*(v27 + *(v28 + 96)) != 1 || *(v27 + *(v28 + 100)) != 1)
  {
    return v15(a1, v20);
  }

  v65 = v53;
  v66 = v54;
  swift_beginAccess();
  v29 = a8[4];
  v30 = a8[2];
  v68 = a8[3];
  v69 = v29;
  v31 = a8[4];
  v32 = a8[6];
  v70 = a8[5];
  v71 = v32;
  v33 = a8[2];
  v67[0] = a8[1];
  v67[1] = v33;
  v61[2] = v68;
  v62 = v31;
  v34 = a8[6];
  v63 = v70;
  v64 = v34;
  v61[0] = v67[0];
  v61[1] = v30;
  sub_1CEFCCBDC(v67, v59, &unk_1EC4BE330, &unk_1CF9FF010);
  v35 = v55;
  sub_1CEFDAA48(&v65, v61, v59);
  v72[2] = v61[2];
  v72[3] = v62;
  v72[4] = v63;
  v72[5] = v64;
  v72[0] = v61[0];
  v72[1] = v61[1];
  sub_1CEFCCC44(v72, &unk_1EC4BECD0, &unk_1CF9FEF80);
  v61[0] = v59[0];
  v61[1] = v59[1];
  *&v61[2] = v60;
  v36 = objc_sync_enter(v35);
  if (v36)
  {
    MEMORY[0x1EEE9AC00](v36);
    *(&v50 - 2) = v35;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v50 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v58 = a1;
  v37 = v35[20];

  v38 = objc_sync_exit(v35);
  if (v38)
  {
    MEMORY[0x1EEE9AC00](v38);
    *(&v50 - 2) = v35;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v50 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v39 = *(v37 + 16);

  v40 = sub_1CEFDADE0(v61, v39, 0x200000);

  v44 = fpfs_funset_resuming_sync_with_drop_local_changes();
  if (v44 < 0)
  {
    v47 = MEMORY[0x1D38683F0]();
    v48 = 11;
  }

  else
  {
    v45 = v51;
    sub_1CEFCCBDC(v58, v51, &unk_1EC4C5000, &qword_1CFA181A0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_1CEFCCC44(v45, &unk_1EC4C5000, &qword_1CFA181A0);
    if (EnumCaseMultiPayload == 1 || (fpfs_funset_pause_sync_bundleID() & 0x80000000) == 0)
    {
      if ((v40 & 0x80000000) == 0)
      {
        close(v40);
      }

      a1 = v58;
      return v15(a1, v20);
    }

    v47 = MEMORY[0x1D38683F0]();
    v48 = 12;
  }

  *&v61[0] = v48;
  *(v61 + 8) = 0u;
  *(&v61[1] + 8) = 0u;
  BYTE8(v61[2]) = 19;
  v49 = sub_1CF19BBE4(v47, v61);
  sub_1CF1969CC(v61);
  swift_willThrow();
  if ((v40 & 0x80000000) == 0)
  {
    close(v40);
  }

  v41 = v52;
  *v52 = v49;
  swift_storeEnumTagMultiPayload();
  v42 = v49;
  (v15)(v41);

  return sub_1CEFCCC44(v41, &unk_1EC4C5000, &qword_1CFA181A0);
}

BOOL sub_1CF27FFD8(uint64_t *a1, uint64_t *a2, int a3)
{
  v3 = *a1;
  v4 = a1[1];
  v6 = *a2;
  v5 = a2[1];

  v7 = sub_1CEFE7394(v3, v4);
  if (!v8)
  {
    goto LABEL_7;
  }

  if (v7 == 12565487 && v8 == 0xA300000000000000)
  {
  }

  else
  {
    v10 = sub_1CF9E8048();

    if ((v10 & 1) == 0)
    {
LABEL_7:

      v11 = v3;
      v12 = v4;
      goto LABEL_10;
    }
  }

  v13 = sub_1CF9E69E8();
  v14 = sub_1CF025150(v13, v3, v4);
  v11 = MEMORY[0x1D3868C10](v14);
  v12 = v15;

LABEL_10:
  v16 = sub_1CEFE7394(v6, v5);
  if (v17)
  {
    if (v16 == 12565487 && v17 == 0xA300000000000000)
    {

      goto LABEL_15;
    }

    v18 = sub_1CF9E8048();

    if (v18)
    {
LABEL_15:
      v19 = sub_1CF9E69E8();
      v20 = sub_1CF025150(v19, v6, v5);
      v21 = MEMORY[0x1D3868C10](v20);
      v23 = v22;

      if (v11 != v21)
      {
        goto LABEL_20;
      }

      goto LABEL_18;
    }
  }

  v23 = v5;
  if (v11 != v6)
  {
    goto LABEL_20;
  }

LABEL_18:
  if (v12 == v23)
  {

    return 0;
  }

LABEL_20:
  v25 = sub_1CF9E8048();

  result = 0;
  if ((v25 & 1) == 0)
  {
    sub_1CEFE4E68();
    sub_1CF9E7668();
    v26 = sub_1CF9E6978();

    v27 = faccessat(a3, (v26 + 32), 0, 32);

    return v27 != 0;
  }

  return result;
}

uint64_t sub_1CF280274(_OWORD *a1, void *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, unint64_t a7, void *a8, unsigned __int8 a9, uint64_t *a10, uint64_t a11, uint64_t a12, unsigned __int8 a13, _OWORD *a14, uint64_t a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, _OWORD *a24, char *a25)
{
  v532 = a8;
  v530 = a7;
  v535 = a6;
  v527 = a4;
  v538 = a2;
  v521 = a1;
  v537 = a10;
  v523 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0);
  v26 = *(*(v523 - 8) + 64);
  MEMORY[0x1EEE9AC00](v523);
  v504 = &v475 - v27;
  v28 = sub_1CF9E6388();
  v500 = *(v28 - 8);
  v501 = v28;
  v29 = *(v500 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v499 = (&v475 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v31);
  v497 = &v475 - v32;
  v498 = sub_1CF9E6498();
  v496 = *(v498 - 8);
  v33 = *(v496 + 64);
  MEMORY[0x1EEE9AC00](v498);
  v495 = &v475 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v491 = &v475 - v37;
  v38 = sub_1CF9E63D8();
  v488 = *(v38 - 8);
  v489 = v38;
  v39 = *(v488 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v490 = &v475 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1CF9E6448();
  v493 = *(v41 - 8);
  v494 = v41;
  v42 = *(v493 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v492 = &v475 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1CF9E73D8();
  v486 = *(v44 - 8);
  v487 = v44;
  v45 = *(v486 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v485 = &v475 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v48 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47 - 8);
  v503 = &v475 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v484 = &v475 - v51;
  v52 = sub_1CF9E53C8();
  v53 = *(v52 - 8);
  v509 = v52;
  v510 = v53;
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v482 = &v475 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v56);
  v505 = &v475 - v57;
  MEMORY[0x1EEE9AC00](v58);
  v508 = &v475 - v59;
  v529 = type metadata accessor for ItemMetadata();
  v60 = *(*(v529 - 1) + 64);
  MEMORY[0x1EEE9AC00](v529);
  v483 = &v475 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v62);
  v517 = &v475 - v63;
  MEMORY[0x1EEE9AC00](v64);
  v511 = &v475 - v65;
  MEMORY[0x1EEE9AC00](v66);
  v516 = &v475 - v67;
  v524 = sub_1CF9E64A8();
  v519 = *(v524 - 8);
  v68 = *(v519 + 8);
  MEMORY[0x1EEE9AC00](v524);
  v518 = (&v475 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0));
  v70 = sub_1CF9E5248();
  v513 = *(v70 - 8);
  v514 = v70;
  v71 = *(v513 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v512 = &v475 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v74 = *(*(v73 - 8) + 64);
  MEMORY[0x1EEE9AC00](v73 - 8);
  v515 = &v475 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v76);
  v522 = (&v475 - v77);
  v78 = type metadata accessor for VFSItem(0);
  v79 = *(v78 - 1);
  v525 = v78;
  v526 = v79;
  v80 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v78);
  v502 = &v475 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v82);
  v507 = &v475 - v83;
  MEMORY[0x1EEE9AC00](v84);
  v506 = &v475 - v85;
  MEMORY[0x1EEE9AC00](v86);
  v520 = (&v475 - v87);
  MEMORY[0x1EEE9AC00](v88);
  v531 = &v475 - v89;
  v90 = sub_1CF9E5A58();
  v533 = *(v90 - 8);
  v534 = v90;
  v91 = *(v533 + 64);
  MEMORY[0x1EEE9AC00](v90);
  v93 = &v475 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v94);
  v96 = &v475 - v95;
  MEMORY[0x1EEE9AC00](v97);
  v99 = &v475 - v98;
  MEMORY[0x1EEE9AC00](v100);
  v102 = &v475 - v101;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5000, &qword_1CFA181A0);
  v104 = *(*(v103 - 8) + 64);
  MEMORY[0x1EEE9AC00](v103);
  v106 = (&v475 - v105);
  v536 = a3;
  v107 = (a3 + 16);
  v108 = swift_projectBox();
  v109 = swift_projectBox();
  if (v538)
  {
    v110 = v538;
    swift_beginAccess();
    v112 = *(v536 + 16);
    v111 = *(v536 + 24);
    *v106 = v110;
    swift_storeEnumTagMultiPayload();
    v113 = v110;

    v112(v106);

    return sub_1CEFCCC44(v106, &unk_1EC4C5000, &qword_1CFA181A0);
  }

  v479 = v93;
  v480 = v96;
  v537 = v106;
  v538 = v107;
  v481 = v103;
  v528 = v102;
  v115 = v109;
  v116 = v527;
  swift_beginAccess();
  v117 = *(v116 + 2);
  if (v117)
  {
    v118 = [v117 URL];
    sub_1CF9E59D8();

    (*(v533 + 32))(v528, v99, v534);
  }

  else
  {
    swift_beginAccess();
    (*(v533 + 16))(v528, v108, v534);
  }

  v119 = v530;
  v478 = a14;
  v120 = a14 + 1;
  LODWORD(v527) = a9;
  if ((~v535 & 0x100000000010000) != 0 && (v535 != 16 || (v530 & 0x200) != 0))
  {
    v121 = v480;
    sub_1CF9E5988();
    v122 = *(v533 + 8);
    v123 = v121;
    v124 = v479;
    v122(v123, v534);
    if (v527)
    {
      swift_beginAccess();
      v125 = v534;
      (*(v533 + 16))(v124, v115, v534);
      v126 = v480;
      sub_1CF9E5988();
      v122(v124, v125);
      v122(v126, v125);
    }
  }

  if ((v119 & 0x40) != 0)
  {
    swift_beginAccess();
    v127 = *(a11 + 16);
    if ((v127 & 0x1000) == 0)
    {
      *(a11 + 16) = v127 | 0x1000;
    }
  }

  v574 = a12;
  v575 = a13;
  swift_beginAccess();
  v128 = a14[4];
  v129 = a14[2];
  v577 = a14[3];
  v578 = v128;
  v130 = a14[4];
  v131 = a14[6];
  v579 = a14[5];
  v580 = v131;
  v132 = a14[2];
  v576[0] = *v120;
  v576[1] = v132;
  v570 = v577;
  v571 = v130;
  v133 = a14[6];
  v572 = v579;
  v573 = v133;
  v568 = v576[0];
  v569 = v129;
  v567 = v535;
  swift_beginAccess();
  v134 = *(a11 + 16);
  sub_1CEFCCBDC(v576, &v581, &unk_1EC4BE330, &unk_1CF9FF010);
  v135 = v531;
  v136 = 0;
  sub_1CF278908(&v574, &v568, &v567, v134, v531);
  v475 = a11;
  v477 = a13;
  v479 = a21;
  v566[2] = v570;
  v566[3] = v571;
  v566[4] = v572;
  v566[5] = v573;
  v566[0] = v568;
  v566[1] = v569;
  sub_1CEFCCC44(v566, &unk_1EC4BE330, &unk_1CF9FF010);
  v142 = v522;
  sub_1CEFCCBDC(a15, v522, &unk_1EC4BEC00, &unk_1CF9FCB60);
  v143 = v525;
  v144 = *(v526 + 48);
  v526 += 48;
  v145 = v144(v142, 1, v525);
  v476 = a12;
  if (v145 == 1)
  {
    v146 = sub_1CEFCCC44(v142, &unk_1EC4BEC00, &unk_1CF9FCB60);
    v147 = v524;
LABEL_21:
    v151 = v528;
    if ((v527 & 1) == 0 && (a16 & 1) == 0)
    {
      goto LABEL_23;
    }

LABEL_25:
    v154 = *(v135 + 16);
    if (*(v135 + 24))
    {
      if (*(v135 + 24) == 1)
      {
        if (a18 != 1 || v154 != a17)
        {
          goto LABEL_43;
        }
      }

      else if (v154)
      {
        if (a18 != 2 || a17 != 1)
        {
          goto LABEL_43;
        }
      }

      else if (a18 != 2 || a17)
      {
        goto LABEL_43;
      }
    }

    else if (a18 || v154 != a17)
    {
      goto LABEL_43;
    }

    v155 = v135;
    v156 = *(v135 + 32);
    v157 = *(v155 + 40);
    swift_beginAccess();
    v159 = *(a19 + 16);
    v158 = *(a19 + 24);
    *&v581 = v156;
    *(&v581 + 1) = v157;

    v160 = sub_1CF662E90();
    v162 = v161;
    *&v559 = v159;
    *(&v559 + 1) = v158;
    if (v160 == sub_1CF662E90() && v162 == v163)
    {

      v151 = v528;
      v135 = v531;
    }

    else
    {
      v164 = sub_1CF9E8048();

      v151 = v528;
      v135 = v531;
      if ((v164 & 1) == 0)
      {
LABEL_43:
        v165 = (a20 + 16);
        v166 = v480;
        if (v521)
        {
          swift_beginAccess();
          v146 = *v165;
          if (!*v165)
          {
LABEL_219:
            __break(1u);
            goto LABEL_220;
          }

          v167 = [v146 URL];
          sub_1CF9E59D8();

          v168 = sub_1CF9E5928();
          (*(v533 + 8))(v166, v534);
          v169 = sub_1CF9E5928();
          [v521 itemAtURL:v168 willMoveToURL:v169];

          v135 = v531;
        }

        MEMORY[0x1EEE9AC00](v146);
        v473 = a20 + 16;
        v474 = v151;
        v146 = sub_1CEFE1894(sub_1CF2B0E64);
        v170 = v521;
        if (v521)
        {
          swift_beginAccess();
          v146 = *v165;
          if (!*v165)
          {
LABEL_220:
            __break(1u);
LABEL_221:
            MEMORY[0x1EEE9AC00](v146);
            v473 = v479;
            fp_preconditionFailure(_:file:line:)(sub_1CF2B0E8C, &v471, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/tree/VFSFileTree.swift", 123, 2, 2363);
          }

          v171 = [v146 URL];
          sub_1CF9E59D8();

          v172 = sub_1CF9E5928();
          (*(v533 + 8))(v166, v534);
          v173 = sub_1CF9E5928();
          [v170 itemAtURL:v172 didMoveToURL:v173];
        }
      }
    }

    v152 = v532;
    v153 = v523;
    if ((v530 & 8) != 0)
    {
      v177 = (v479 + v529[14] + *(v523 + 40));
      v178 = v177[1];
      if (!v178)
      {
        goto LABEL_221;
      }

      v179 = *v177;
      v180 = sub_1CF9E5928();
      v527 = [v180 fileSystemRepresentation];
      v181 = v180;
      *&v581 = v179;
      *(&v581 + 1) = v178;
      *&v559 = 47;
      *(&v559 + 1) = 0xE100000000000000;
      *&v553 = 58;
      *(&v553 + 1) = 0xE100000000000000;
      v182 = sub_1CEFE4E68();
      v183 = MEMORY[0x1E69E6158];
      v526 = sub_1CF9E7668();
      *&v581 = v179;
      *(&v581 + 1) = v178;
      *&v559 = 47;
      *(&v559 + 1) = 0xE100000000000000;
      *&v553 = 58;
      *(&v553 + 1) = 0xE100000000000000;
      v473 = v182;
      v474 = v182;
      v471 = v183;
      v472 = v182;
      sub_1CF9E7668();
      v184 = sub_1CF9E6978();

      v185 = strlen((v184 + 32));

      v186 = __OFADD__(v185, 1);
      v187 = v185 + 1;
      if (v186)
      {
        goto LABEL_218;
      }

      v188 = sub_1CF9E6978();

      setxattr(v527, "com.apple.fileprovider.before-bounce#PX", (v188 + 32), v187, 0, 3);

      v151 = v528;
      v135 = v531;
      v152 = v532;
      v153 = v523;
    }

    else
    {
      v174 = sub_1CF9E5928();
      v175 = [v174 fileSystemRepresentation];
      v176 = v174;
      removexattr(v175, "com.apple.fileprovider.before-bounce#PX", 1);
    }

    v147 = v524;
    v189 = v152[32];
    sub_1CF4D463C();
    goto LABEL_55;
  }

  v148 = v520;
  sub_1CEFE4C60(v142, v520, type metadata accessor for VFSItem);
  v149 = v143[7] + v529[8];
  sub_1CF9E5CF8();
  sub_1CF2A9448(&qword_1EDEAB3B0, MEMORY[0x1E6969530]);
  v150 = sub_1CF9E6868();
  v146 = sub_1CEFE5888(v148, type metadata accessor for VFSItem);
  v147 = v524;
  if (v150)
  {
    goto LABEL_21;
  }

  v151 = v528;
  if (a16)
  {
    goto LABEL_25;
  }

LABEL_23:
  v152 = v532;
  v153 = v523;
LABEL_55:
  v565 = v535;
  v190 = swift_allocObject();
  *(v190 + 16) = 0;
  v191 = (v190 + 16);
  v192 = (v479 + *(v153 + 40));
  v526 = v529[21];
  v527 = v190;
  if (sub_1CF3842EC(*(v192 + v526), &unk_1F4BED4F0))
  {
    v193 = v529;
    v194 = v535;
    v195 = v525;
    goto LABEL_72;
  }

  v524 = 0;
  v196 = v192;
  v197 = v191;
  v198 = v152[27];
  v199 = v518;
  v200 = v519;
  *v518 = v198;
  (*(v200 + 13))(v199, *MEMORY[0x1E69E8020], v147);
  v201 = v198;
  LOBYTE(v198) = sub_1CF9E64D8();
  v146 = (*(v200 + 1))(v199, v147);
  if ((v198 & 1) == 0)
  {
    __break(1u);
LABEL_218:
    __break(1u);
    goto LABEL_219;
  }

  v202 = v152 + qword_1EDEAFAF8;
  os_unfair_lock_lock((v152 + qword_1EDEAFAF8));
  v203 = *(*(v202 + 1) + 16);
  os_unfair_lock_unlock(v202);
  v193 = v529;
  v195 = v525;
  if (!v203 && *(v135 + v525[7] + v529[16]) != 1)
  {
    v194 = v535;
    v151 = v528;
    v191 = v197;
    v192 = v196;
    v136 = v524;
    goto LABEL_72;
  }

  v194 = v535;
  v191 = v197;
  v192 = v196;
  if ((v535 & 0x10) != 0)
  {
    v151 = v528;
    v136 = v524;
    if (*(v196 + v529[20]) != 1 || (v535 & 0x10000) != 0)
    {
      goto LABEL_67;
    }

LABEL_65:
    if (v535 & 8) == 0 || (*(v135 + v525[7] + v529[20]))
    {
      goto LABEL_72;
    }

    goto LABEL_67;
  }

  v151 = v528;
  v136 = v524;
  if ((v535 & 0x10000) == 0)
  {
    goto LABEL_65;
  }

LABEL_67:
  if ((*v191 & 0x10000) == 0)
  {
    *v191 |= 0x10000uLL;
  }

  if ((v194 & 0x10000) != 0)
  {
    v194 &= ~0x10000uLL;
    v565 = v194;
  }

LABEL_72:
  v204 = (v135 + v195[7]);
  v205 = &v204[v193[37]];
  if ((v205[4] & 1) == 0 && *v205 >= 2u && (v194 & 0x10000) != 0)
  {
    if (!*(v192 + v526))
    {
      goto LABEL_78;
    }

    v194 &= ~0x10000uLL;
    v565 = v194;
  }

  if (!v194)
  {
    swift_beginAccess();
    v218 = *(v536 + 16);
    v217 = *(v536 + 24);
    v219 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BED10, &qword_1CFA006F0) + 48);
    v220 = v531;
    v221 = v537;
    sub_1CEFD90AC(v531, v537, type metadata accessor for VFSItem);
    v222 = *(v527 + 2);
    v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BED18, &qword_1CFA006F8);
    *(v221 + v223[9]) = v222;
    *(v221 + v223[10]) = 0;
    v224 = v221 + v223[11];
    *v224 = 0;
    *(v224 + 1) = 0;
    *(v224 + 2) = 0;
    *(v224 + 3) = 0xB000000000000000;
    *(v224 + 2) = 0u;
    *(v224 + 3) = 0u;
    (*(*(v223 - 1) + 56))(v221, 0, 1, v223);
    *(v221 + v219) = 0;
    swift_storeEnumTagMultiPayload();

    v218(v221);

    sub_1CEFCCC44(v221, &unk_1EC4C5000, &qword_1CFA181A0);

    v225 = v220;
LABEL_136:
    sub_1CEFE5888(v225, type metadata accessor for VFSItem);
    return (*(v533 + 8))(v151, v534);
  }

LABEL_78:
  if ((v194 & 0x10) != 0)
  {
    v524 = a23;
    v535 = v191;
    v226 = swift_allocObject();
    *(v226 + 16) = 0;
    v520 = (v226 + 16);
    *(v226 + 24) = 0;
    *(v226 + 32) = 0;
    *(v226 + 40) = 0xB000000000000000;
    *(v226 + 48) = 0u;
    *(v226 + 64) = 0u;
    v523 = v226;
    v549 = v476;
    v550 = v477;
    swift_beginAccess();
    v227 = a14[4];
    v228 = a14[2];
    v555 = a14[3];
    v556 = v227;
    v229 = a14[4];
    v230 = a14[6];
    v557 = a14[5];
    v558 = v230;
    v231 = a14[2];
    v553 = *v120;
    v554 = v231;
    v583 = v555;
    v584 = v229;
    v232 = a14[6];
    v585 = v557;
    v586 = v232;
    v581 = v553;
    v582 = v228;
    sub_1CEFCCBDC(&v553, &v543, &unk_1EC4BE330, &unk_1CF9FF010);
    sub_1CEFDAA48(&v549, &v581, &v543);
    v561 = v583;
    v562 = v584;
    v563 = v585;
    v564 = v586;
    v559 = v581;
    v560 = v582;
    sub_1CEFCCC44(&v559, &unk_1EC4BECD0, &unk_1CF9FEF80);
    v233 = v529[28];
    if (v204[v233] != (a22 & 1))
    {

      if (!v524)
      {
        swift_beginAccess();
        v284 = *(v536 + 16);
        v283 = *(v536 + 24);
        LODWORD(v543) = 22;

        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF2A9448(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
        v286 = v508;
        v285 = v509;
        sub_1CF9E57D8();
        v287 = sub_1CF9E53A8();
        (*(v510 + 8))(v286, v285);
        v288 = v537;
        *v537 = v287;
        swift_storeEnumTagMultiPayload();
        v284(v288);

        sub_1CEFCCC44(v288, &unk_1EC4C5000, &qword_1CFA181A0);

LABEL_115:

        v225 = v531;
        goto LABEL_136;
      }

      v234 = v565;
      sub_1CEFD90AC(v204, v516, type metadata accessor for ItemMetadata);
      *&v581 = v234;

      sub_1CF677700(&v581, v192);
      v235 = fpfs_supports_parent_mtime_iopolicy();
      v236 = v529;
      if ((v235 & 1) == 0)
      {
        v237 = v529[8];
        v238 = sub_1CF9E5CF8();
        v235 = (*(*(v238 - 8) + 24))(v516 + v237, v192 + v237, v238);
      }

      v239 = v532;
      if (*(v535 + 2))
      {
        v240 = 0;
      }

      else
      {
        v240 = *(v192 + v526);
        if (v240)
        {
          v241 = v192;
          v216 = v533;
          if (v234 & 8) != 0 && (v242 = v236[20], v204[v242] == 1) && (*(v241 + v242))
          {
            v240 = 0;
          }

          else if ((v234 & 0x10010) == 0)
          {
            v240 = v204[v236[21]];
          }

          goto LABEL_128;
        }
      }

      v216 = v533;
LABEL_128:
      v299 = v236[21];
      v300 = v516;
      *(v516 + v299) = v240;
      v301 = v239[17];
      MEMORY[0x1EEE9AC00](v235);
      v302 = v524;
      *(&v475 - 12) = v303;
      *(&v475 - 11) = v302;
      *(&v475 - 10) = v151;
      *(&v475 - 9) = v300;
      *(&v475 - 8) = v120;
      *(&v475 - 7) = a24;
      v304 = v531;
      *(&v475 - 6) = v479;
      *(&v475 - 5) = v304;
      v471 = &v565;
      v472 = v305;
      v473 = v538;
      v474 = v535;
      sub_1CF2EF290(v302, 0x200000, sub_1CF2B0D9C, (&v475 - 14), &v475);
      if (!v136)
      {

        sub_1CEFE5888(v300, type metadata accessor for ItemMetadata);

        sub_1CEFE5888(v304, type metadata accessor for VFSItem);
        return (*(v216 + 8))(v151, v534);
      }

      v268 = v136;

      sub_1CEFE5888(v300, type metadata accessor for ItemMetadata);

      v306 = v304;
      goto LABEL_216;
    }

    v269 = &a25[v525[7]];
    v270 = 0x100000;
    if (*v269 != 1)
    {
      if (v269[v233])
      {
        v270 = 0x100000;
      }

      else
      {
        v270 = 2097153;
      }
    }

    v519 = &a25[v525[7]];
    v581 = v543;
    v582 = v544;
    *&v583 = v545;
    v271 = v532;
    v272 = objc_sync_enter(v532);
    if (v272)
    {
      MEMORY[0x1EEE9AC00](v272);
      v473 = v271;
      goto LABEL_225;
    }

    v521 = a24;
    v273 = v271[20];

    v274 = objc_sync_exit(v271);
    if (!v274)
    {
      v275 = *(v273 + 16);

      v276 = sub_1CEFDADE0(&v581, v275, v270);
      v268 = v136;
      if (v136)
      {

        goto LABEL_112;
      }

      v289 = v276;

      v290 = v565;
      v291 = v511;
      sub_1CEFD90AC(v204, v511, type metadata accessor for ItemMetadata);
      *&v581 = v290;
      sub_1CF677700(&v581, v192);
      v151 = v528;
      if (*v204 == 1)
      {
        v292 = *(v192 + 8);
        *(v291 + 1) = v192[1];
        v291[8] = v292;
      }

      v293 = fpfs_supports_parent_mtime_iopolicy();
      if ((v293 & 1) == 0)
      {
        v294 = v529[8];
        v295 = sub_1CF9E5CF8();
        v293 = (*(*(v295 - 8) + 24))(&v291[v294], v192 + v294, v295);
      }

      v522 = 0;
      if (*(v535 + 2))
      {
        v296 = 0;
        v297 = v505;
      }

      else
      {
        v296 = *(v192 + v526);
        v297 = v505;
        if (v296)
        {
          if (v290 & 8) != 0 && (v298 = v529[20], v204[v298] == 1) && (*(v192 + v298))
          {
            v296 = 0;
          }

          else if ((v290 & 0x10010) == 0)
          {
            v296 = v204[v529[21]];
          }
        }
      }

      v343 = v529;
      v291[v529[21]] = v296;
      v344 = *(v192 + v343[20]);
      LODWORD(v518) = v289;
      if (v344)
      {
        if (*v291 == 1)
        {
          v345 = 0;
        }

        else
        {
          v345 = 5;
        }

        if (*v291 - 1 >= 2)
        {
          v346 = 0x1E9F38F07;
        }

        else
        {
          v346 = 0;
        }

        if ((v530 & 0x80) != 0)
        {
          v347 = 4;
        }

        else
        {
          v347 = v345;
        }

        if ((v530 & 0x100) != 0)
        {
          v348 = v531;
          if (!sub_1CF252F6C())
          {
            v535 = v346;
            v401 = v532[17];
            v402 = v348 + v525[9];
            v403 = *v402;
            v404 = v348 + v525[14];
            if (*(v404 + 4))
            {
              v405 = 0;
            }

            else
            {
              v405 = *v404;
            }

            v406 = *(v402 + 8);

            v543 = v403;
            v544 = __PAIR64__(v406, v405);
            *&v545 = 0;
            v407 = v522;
            (*(*v401 + 440))(v539, &v543, v204, 0, 0, 1, 0, 1, 0);
            if (v407)
            {

              *&v581 = v476;
              BYTE8(v581) = v477;
              *&v582 = v407;
              sub_1CF2B0E58(&v581);
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
              sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50);
              v408 = swift_allocError();
              *v409 = v581;
              v410 = v585;
              v411 = v583;
              v412 = v582;
              *(v409 + 48) = v584;
              *(v409 + 64) = v410;
              *(v409 + 16) = v412;
              *(v409 + 32) = v411;
              v413 = v588;
              v414 = v587;
              v415 = v586;
              *(v409 + 128) = v589;
              *(v409 + 96) = v414;
              *(v409 + 112) = v413;
              *(v409 + 80) = v415;
              v366 = v408;
              swift_willThrow();
              v364 = v532;
              v362 = v511;
              v297 = v505;
LABEL_160:
              v367 = v531;
              v369 = v509;
              v368 = v510;
              if (*v519 - 1 >= 2 && v519[v529[20]] == 1)
              {
                v370 = v366;
LABEL_204:

                goto LABEL_205;
              }

              v551 = v366;
              v381 = v366;
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
              if (swift_dynamicCast())
              {

                v382 = *(v368 + 32);
                v383 = v482;
                v384 = v382(v482, v297, v369);
                v385 = v520[1];
                v581 = *v520;
                v582 = v385;
                v386 = v520[3];
                v583 = v520[2];
                v584 = v386;
                if (*(&v582 + 1) >> 60 != 11 && v581)
                {
                  v387 = v364[17];
                  MEMORY[0x1EEE9AC00](v384);
                  v471 = v387;
                  LODWORD(v472) = 3;
                  v473 = v388;
                  sub_1CEFCCBDC(&v581, &v543, &unk_1EC4BF260, &unk_1CFA01B60);
                  sub_1CEFE1894(sub_1CF2B9F78);
                  v387[OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_deleteBusy] = 0;
                  if (*&v387[OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_garbageCollectionSource])
                  {
                    v441 = *&v387[OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_garbageCollectionSource];
                    ObjectType = swift_getObjectType();
                    swift_unknownObjectRetain();
                    MEMORY[0x1D3869790](1, ObjectType);
                    swift_unknownObjectRelease();
                  }

                  sub_1CEFCCC44(&v581, &unk_1EC4BF260, &unk_1CFA01B60);
                  v362 = v511;
                  v369 = v509;
                  v383 = v482;
                }

                v268 = sub_1CF9E53A8();
                swift_willThrow();
                (*(v510 + 8))(v383, v369);
              }

              else
              {

                v268 = v366;
              }

LABEL_202:
              v443 = v268;
              LODWORD(v581) = sub_1CF9E5398();
              sub_1CF196978();
              v444 = sub_1CF9E5658();

              if ((v444 & 1) == 0)
              {
                sub_1CEFE5888(v362, type metadata accessor for ItemMetadata);
                v216 = v533;
                if ((v518 & 0x80000000) == 0)
                {
                  close(v518);
                }

                v306 = v367;
LABEL_216:
                sub_1CEFE5888(v306, type metadata accessor for VFSItem);
                goto LABEL_15;
              }

              v370 = v268;
              goto LABEL_204;
            }

            v522 = 0;

            v436 = v520;
            v437 = v520[1];
            v581 = *v520;
            v582 = v437;
            v438 = v520[3];
            v583 = v520[2];
            v584 = v438;
            v439 = v539[1];
            *v520 = v539[0];
            v436[1] = v439;
            v440 = v539[3];
            v436[2] = v539[2];
            v436[3] = v440;
            sub_1CEFCCC44(&v581, &unk_1EC4BF260, &unk_1CFA01B60);
            v349 = 0;
            v297 = v505;
            v289 = v518;
            v346 = v535;
            goto LABEL_158;
          }
        }

        v349 = v347 == 5;
LABEL_158:
        swift_beginAccess();
        v350 = *(v478 + 6);
        LOBYTE(v543) = v347;
        v351 = v533;
        v352 = v534;
        v353 = v484;
        (*(v533 + 16))(v484, v151, v534);
        (*(v351 + 56))(v353, 0, 1, v352);
        v354 = v521[13];
        v593 = v521[12];
        v594 = v354;
        v595 = v521[14];
        v596 = *(v521 + 30);
        v355 = v521[9];
        v589 = v521[8];
        v590 = v355;
        v356 = v521[11];
        v591 = v521[10];
        v592 = v356;
        v357 = v521[5];
        v585 = v521[4];
        v586 = v357;
        v358 = v521[7];
        v587 = v521[6];
        v588 = v358;
        v359 = v521[1];
        v581 = *v521;
        v582 = v359;
        v360 = v521[3];
        v583 = v521[2];
        v584 = v360;
        v361 = v289;
        v362 = v511;
        v363 = v350;
        v364 = v532;
        v365 = v522;
        sub_1CF298D34(v361, v511, v363, v346, &v543, v349, v353, &v581);
        if (v365)
        {
          v366 = v365;
          sub_1CEFCCC44(v353, &unk_1EC4BE310, qword_1CF9FCBE0);
          goto LABEL_160;
        }

        sub_1CEFCCC44(v353, &unk_1EC4BE310, qword_1CF9FCBE0);
LABEL_205:
        v392 = v476;
        goto LABEL_206;
      }

      v371 = v530 & 0x200;
      v372 = v524;
      if (v524)
      {
        v373 = v532[17];
        MEMORY[0x1EEE9AC00](v293);
        *(&v475 - 20) = v289;
        v364 = v374;
        v375 = v479;
        *(&v475 - 9) = v372;
        *(&v475 - 8) = v375;
        v367 = v531;
        v376 = v476;
        *(&v475 - 7) = v531;
        *(&v475 - 6) = v376;
        *(&v475 - 40) = v377;
        v471 = v511;
        v472 = v521;
        LOBYTE(v473) = v371 >> 9;
        v474 = v374;

        v379 = v522;
        sub_1CF2EF290(v378, 0x200000, sub_1CF2B0E08, (&v475 - 12), v380);
        if (v379)
        {
          v268 = v379;

          v362 = v511;
          goto LABEL_202;
        }

        goto LABEL_205;
      }

      v389 = v532;
      v390 = objc_sync_enter(v532);
      if (v390)
      {
        MEMORY[0x1EEE9AC00](v390);
        v473 = v389;
        goto LABEL_225;
      }

      v391 = v389[20];

      v274 = objc_sync_exit(v389);
      v392 = v476;
      if (!v274)
      {
        os_unfair_lock_lock((v391 + 56));
        v393 = *(v391 + 64);
        v394 = *(v391 + 72);
        v395 = *(v391 + 88);
        v396 = *(v391 + 89);
        v397 = *(v391 + 90);

        v398 = *(v391 + 80);
        os_unfair_lock_unlock((v391 + 56));

        MEMORY[0x1EEE9AC00](v399);
        *(&v475 - 20) = v518;
        *(&v475 - 9) = 0x1E9F18F07;
        *(&v475 - 16) = -1;
        *(&v475 - 7) = -1;
        *(&v475 - 6) = -1;
        *(&v475 - 40) = 0;
        *(&v475 - 39) = v371 >> 9;
        v471 = v393;
        v472 = v394;
        v473 = v398;
        LOBYTE(v474) = v395;
        BYTE1(v474) = v396;
        BYTE2(v474) = v397;
        v400 = v522;
        sub_1CF9B9F4C(v521, sub_1CF2B0DDC, (&v475 - 12), &v581);
        if (!v400)
        {

          v364 = v532;
LABEL_206:
          v445 = v475;
          swift_beginAccess();
          v538 = *(v445 + 16);
          v446 = swift_allocObject();
          *(v446 + 16) = v536;
          *(v446 + 24) = v392;
          *(v446 + 32) = v477;
          v447 = v527;
          *(v446 + 40) = v445;
          *(v446 + 48) = v447;
          *(v446 + 56) = v523;
          sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
          v448 = v364[27];
          *&v543 = MEMORY[0x1E69E7CC0];
          sub_1CF2A9448(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0]);

          v449 = v448;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
          sub_1CEFCCCEC(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0);
          v450 = v485;
          v451 = v487;
          sub_1CF9E77B8();
          v452 = sub_1CF9E73E8();

          (*(v486 + 8))(v450, v451);
          qos_class_self();
          v453 = v491;
          sub_1CF9E63B8();
          v455 = v488;
          v454 = v489;
          v456 = *(v488 + 48);
          if (v456(v453, 1, v489) == 1)
          {
            (*(v455 + 104))(v490, *MEMORY[0x1E69E7FA0], v454);
            v457 = v456(v453, 1, v454);
            v459 = v500;
            v458 = v501;
            v460 = v494;
            v461 = v495;
            if (v457 != 1)
            {
              sub_1CEFCCC44(v453, &unk_1EC4BE380, &qword_1CFA01BA0);
            }
          }

          else
          {
            (*(v455 + 32))(v490, v453, v454);
            v459 = v500;
            v458 = v501;
            v460 = v494;
            v461 = v495;
          }

          v462 = swift_getObjectType();
          v463 = v492;
          sub_1CF9E6428();
          v464 = swift_allocObject();
          v465 = v476;
          *(v464 + 16) = v532;
          *(v464 + 24) = v465;
          *(v464 + 32) = v477;
          *(v464 + 40) = 0u;
          *(v464 + 56) = 0u;
          *(v464 + 72) = 0u;
          *(v464 + 88) = 0u;
          *(v464 + 104) = 0u;
          *(v464 + 120) = 0u;
          v466 = v538;
          *(v464 + 136) = 0;
          *(v464 + 144) = v466;
          *(v464 + 152) = v452;
          *(v464 + 160) = sub_1CF2B0DF4;
          *(v464 + 168) = v446;

          swift_unknownObjectRetain();

          sub_1CEFD5828(0, v463, sub_1CF2B9F4C, v464);

          (*(v493 + 8))(v463, v460);
          sub_1CF9E6478();
          v467 = v461;
          v468 = v497;
          sub_1CEFD5B64(v497);
          v469 = v499;
          sub_1CEFD5BD8(v499);
          MEMORY[0x1D3869770](v467, v468, v469, v462);
          v470 = *(v459 + 8);
          v470(v469, v458);
          v470(v468, v458);
          (*(v496 + 8))(v467, v498);
          sub_1CF9E7448();

          swift_unknownObjectRelease();
          sub_1CEFE5888(v511, type metadata accessor for ItemMetadata);
          if ((v518 & 0x80000000) == 0)
          {
            close(v518);
          }

          sub_1CEFE5888(v531, type metadata accessor for VFSItem);
          return (*(v533 + 8))(v528, v534);
        }

        v268 = v400;

        v151 = v528;
        v367 = v531;
        v364 = v532;
        v362 = v511;
        goto LABEL_202;
      }
    }

    MEMORY[0x1EEE9AC00](v274);
    v473 = v532;
    goto LABEL_227;
  }

  *&v581 = v565;
  v206 = sub_1CF2ADA38(&v581, v479, v204);
  if (v206)
  {
    if (a23)
    {
      v207 = v532[17];
      MEMORY[0x1EEE9AC00](v206);
      v208 = v479;
      *(&v475 - 12) = a23;
      *(&v475 - 11) = v208;
      v209 = v531;
      v210 = v476;
      *(&v475 - 10) = v531;
      *(&v475 - 9) = v210;
      *(&v475 - 64) = v477;
      *(&v475 - 7) = &v565;
      *(&v475 - 6) = v211;
      *(&v475 - 5) = v212;
      v471 = v151;
      v472 = a14 + 1;
      v473 = a25;
      v474 = v530;

      v214 = v507;
      sub_1CF2F005C(v213, 0x200000, sub_1CF2B0D4C, (&v475 - 14), v507);
      if (v136)
      {
        v215 = v136;

        sub_1CEFE5888(v209, type metadata accessor for VFSItem);
        v216 = v533;
LABEL_194:
        v137 = v536;
        v138 = v537;
        v268 = v215;
        goto LABEL_16;
      }

      v524 = a23;
      *(v207 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_deleteBusy) = 0;
      if (*(v207 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_garbageCollectionSource))
      {
        v322 = swift_getObjectType();
        swift_unknownObjectRetain();
        MEMORY[0x1D3869790](1, v322);
        swift_unknownObjectRelease();
      }

      swift_beginAccess();
      v324 = *(v536 + 16);
      v323 = *(v536 + 24);
      v325 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BED10, &qword_1CFA006F0) + 48);
      v326 = v537;
      sub_1CEFD90AC(v214, v537, type metadata accessor for VFSItem);
      v327 = v214;
      v328 = *(v527 + 2);
      v329 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BED18, &qword_1CFA006F8);
      *(v326 + v329[9]) = v328;
      *(v326 + v329[10]) = 0;
      v330 = v326 + v329[11];
      *v330 = 0;
      *(v330 + 1) = 0;
      *(v330 + 2) = 0;
      *(v330 + 3) = 0xB000000000000000;
      *(v330 + 2) = 0u;
      *(v330 + 3) = 0u;
      (*(*(v329 - 1) + 56))(v326, 0, 1, v329);
      *(v326 + v325) = 0;
      swift_storeEnumTagMultiPayload();

      v324(v326);

      sub_1CEFCCC44(v326, &unk_1EC4C5000, &qword_1CFA181A0);
      sub_1CEFE5888(v327, type metadata accessor for VFSItem);

      v225 = v531;
      goto LABEL_136;
    }

    swift_beginAccess();
    v278 = *(v536 + 16);
    v277 = *(v536 + 24);
    LODWORD(v559) = 22;

    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF2A9448(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
    v280 = v508;
    v279 = v509;
    sub_1CF9E57D8();
    v281 = sub_1CF9E53A8();
    (*(v510 + 8))(v280, v279);
    v282 = v537;
    *v537 = v281;
    swift_storeEnumTagMultiPayload();
    v278(v282);

    sub_1CEFCCC44(v282, &unk_1EC4C5000, &qword_1CFA181A0);
    goto LABEL_115;
  }

  v535 = v191;
  v243 = v565;
  v244 = v517;
  sub_1CEFD90AC(v204, v517, type metadata accessor for ItemMetadata);
  *&v581 = v243;
  sub_1CF677700(&v581, v192);
  v245 = v529[20];
  LODWORD(v526) = v204[v245];
  if ((v526 & 1) != 0 && v244[v245] == 1)
  {
    v244[v529[22]] = v204[v529[22]];
  }

  v246 = sub_1CF67A7E4(v244, v204);
  v247 = v532;
  if (!v246)
  {
    goto LABEL_100;
  }

  if ((v243 & 0x10000) != 0)
  {
    goto LABEL_100;
  }

  v248 = a24[13];
  v593 = a24[12];
  v594 = v248;
  v595 = a24[14];
  v596 = *(a24 + 30);
  v249 = a24[9];
  v589 = a24[8];
  v590 = v249;
  v250 = a24[11];
  v591 = a24[10];
  v592 = v250;
  v251 = a24[5];
  v585 = a24[4];
  v586 = v251;
  v252 = a24[7];
  v587 = a24[6];
  v588 = v252;
  v253 = a24[1];
  v581 = *a24;
  v582 = v253;
  v254 = a24[3];
  v583 = a24[2];
  v584 = v254;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v581) != 1)
  {
LABEL_100:
    v524 = v565;
    v525 = v192;
    *&v543 = v565;
    v255 = sub_1CF2ACEBC(&v543);
    v551 = v476;
    v552 = v477;
    swift_beginAccess();
    v256 = a14[4];
    v257 = a14[2];
    v555 = a14[3];
    v556 = v256;
    v258 = a14[4];
    v259 = a14[6];
    v557 = a14[5];
    v558 = v259;
    v260 = a14[2];
    v553 = *v120;
    v554 = v260;
    v545 = v555;
    v546 = v258;
    v261 = a14[6];
    v547 = v557;
    v548 = v261;
    v543 = v553;
    v544 = v257;
    sub_1CEFCCBDC(&v553, &v540, &unk_1EC4BE330, &unk_1CF9FF010);
    sub_1CEFDAA48(&v551, &v543, &v540);
    v561 = v545;
    v562 = v546;
    v563 = v547;
    v564 = v548;
    v559 = v543;
    v560 = v544;
    sub_1CEFCCC44(&v559, &unk_1EC4BECD0, &unk_1CF9FEF80);
    v262 = DWORD1(v541);
    v543 = v540;
    v544 = v541;
    *&v545 = v542;
    v263 = objc_sync_enter(v247);
    if (!v263)
    {
      v521 = a24;
      v264 = v247[20];

      v265 = objc_sync_exit(v247);
      if (!v265)
      {
        v266 = *(v264 + 16);

        v267 = sub_1CEFDADE0(&v543, v266, 2129920);
        v268 = v136;
        if (v136)
        {
          sub_1CEFE5888(v517, type metadata accessor for ItemMetadata);

LABEL_112:

          sub_1CEFE5888(v531, type metadata accessor for VFSItem);
          v216 = v533;
          v151 = v528;
LABEL_15:
          v137 = v536;
          v138 = v537;
LABEL_16:
          swift_beginAccess();
          v140 = *(v137 + 16);
          v139 = *(v137 + 24);
          *v138 = v268;
          swift_storeEnumTagMultiPayload();

          v141 = v268;
          v140(v138);

          sub_1CEFCCC44(v138, &unk_1EC4C5000, &qword_1CFA181A0);
          return (*(v216 + 8))(v151, v534);
        }

        v307 = v267;
        if ((v526 & 1) != 0 && v517[v529[20]] == 1)
        {

          v522 = &v475;
          v309 = v247[17] + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_ioContext;
          v310 = *v309;
          v311 = *(v309 + 8);
          v312 = *(v309 + 24);
          v313 = *(v309 + 25);
          v314 = *(v309 + 26);
          v315 = *(v309 + 16);
          v316 = MEMORY[0x1EEE9AC00](v308).n128_u64[0];
          *(&v475 - 12) = v307;
          *(&v475 - 5) = v255;
          v471 = v317;
          v472 = v311;
          v473 = v316;
          LOBYTE(v474) = v318;
          BYTE1(v474) = v319;
          BYTE2(v474) = v320;
          BYTE3(v474) = 1;

          v321 = v517;
          v416 = sub_1CF9B8B08(v521, sub_1CF2B0CF8, &v475 - 8);
        }

        else
        {
          v522 = &v475;
          v331 = v247[17] + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_ioContext;
          v332 = *v331;
          v333 = *(v331 + 8);
          v334 = *(v331 + 24);
          v335 = *(v331 + 25);
          v336 = *(v331 + 26);
          v337 = *(v331 + 16);
          v338 = MEMORY[0x1EEE9AC00](v267).n128_u64[0];
          *(&v475 - 12) = v307;
          *(&v475 - 11) = v262;
          *(&v475 - 5) = v255;
          v471 = v339;
          v472 = v333;
          v473 = v338;
          LOBYTE(v474) = v340;
          BYTE1(v474) = v341;
          BYTE2(v474) = v342;
          BYTE3(v474) = 1;

          v321 = v517;
          v416 = sub_1CF9B8B08(v521, sub_1CF2B9EBC, &v475 - 8);
        }

        type metadata accessor for VFSFileTree(0);
        sub_1CF27B338(v416, &v543);
        v417 = v543 & 0xFFFFFFFFFFFFFFFELL;
        v418 = v529;
        v419 = v483;
        if ((v543 & 0xFFFFFFFFFFFFFFFELL) != 0)
        {
          if ((v417 & v524) != 0)
          {
            v565 = v524 & ~v417;
          }

          if ((v417 & ~*v535) != 0)
          {
            *v535 |= v417;
          }

          v420 = v565;
          sub_1CEFD90AC(v204, v419, type metadata accessor for ItemMetadata);
          *&v543 = v420;
          sub_1CF677700(&v543, v525);
          sub_1CEFE5888(v321, type metadata accessor for ItemMetadata);
          sub_1CEFE4C60(v419, v321, type metadata accessor for ItemMetadata);
          if (v526 && *(v321 + v418[20]) == 1)
          {
            *(v321 + v418[22]) = v204[v418[22]];
          }
        }

        if ((v307 & 0x80000000) == 0)
        {
          close(v307);
        }

        goto LABEL_192;
      }

      MEMORY[0x1EEE9AC00](v265);
      v473 = v247;
LABEL_227:
      fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, &v471, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
    }

    MEMORY[0x1EEE9AC00](v263);
    v473 = v247;
LABEL_225:
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, &v471, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

LABEL_192:
  v151 = v528;
  v421 = v504;
  v422 = *v479;
  v423 = *(v479 + 8);
  v425 = v479[2];
  v424 = v479[3];
  sub_1CEFD90AC(v517, &v504[*(v523 + 40)], type metadata accessor for ItemMetadata);
  *v421 = v422;
  *(v421 + 8) = v423;
  *(v421 + 16) = v425;
  *(v421 + 24) = v424;
  v560 = 0u;
  v559 = 0u;
  *&v561 = 1;
  v216 = v533;
  v426 = v534;
  v427 = v503;
  (*(v533 + 16))(v503, v151, v534);
  (*(v216 + 56))(v427, 0, 1, v426);
  *&v543 = v565;

  v428 = v506;
  sub_1CF27A500(v531, v421, &v559, v427, &v543, v530, v506);
  if (v136)
  {
    v215 = v136;
    sub_1CEFCCC44(v427, &unk_1EC4BE310, qword_1CF9FCBE0);
    sub_1CEFCCC44(v421, &unk_1EC4BFD90, &unk_1CFA134F0);
    sub_1CEFE5888(v517, type metadata accessor for ItemMetadata);

    sub_1CEFE5888(v531, type metadata accessor for VFSItem);
    goto LABEL_194;
  }

  sub_1CEFCCC44(v427, &unk_1EC4BE310, qword_1CF9FCBE0);
  sub_1CEFCCC44(v421, &unk_1EC4BFD90, &unk_1CFA134F0);
  swift_beginAccess();
  v430 = *(v536 + 16);
  v429 = *(v536 + 24);
  v431 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BED10, &qword_1CFA006F0) + 48);
  v432 = v537;
  sub_1CEFD90AC(v428, v537, type metadata accessor for VFSItem);
  v433 = *(v527 + 2);
  v434 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BED18, &qword_1CFA006F8);
  *(v432 + v434[9]) = v433;
  *(v432 + v434[10]) = 0;
  v435 = v432 + v434[11];
  *v435 = 0;
  *(v435 + 1) = 0;
  *(v435 + 2) = 0;
  *(v435 + 3) = 0xB000000000000000;
  *(v435 + 2) = 0u;
  *(v435 + 3) = 0u;
  (*(*(v434 - 1) + 56))(v432, 0, 1, v434);
  *(v432 + v431) = 0;
  swift_storeEnumTagMultiPayload();

  v430(v432);

  sub_1CEFCCC44(v432, &unk_1EC4C5000, &qword_1CFA181A0);
  sub_1CEFE5888(v506, type metadata accessor for VFSItem);
  sub_1CEFE5888(v517, type metadata accessor for ItemMetadata);

  sub_1CEFE5888(v531, type metadata accessor for VFSItem);
  return (*(v216 + 8))(v151, v426);
}